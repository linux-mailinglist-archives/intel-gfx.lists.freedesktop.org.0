Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB571C45BE
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 20:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A14E6E452;
	Mon,  4 May 2020 18:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFCDB6E446;
 Mon,  4 May 2020 18:24:16 +0000 (UTC)
IronPort-SDR: rp+5uN+aUVm8TsZqQAL+PA3auzeBN1rAWvpLVM3j/si6KKL4/FXXplkC49TY+hgsISZIwYfdC5
 vxHBnch5PGKA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 11:24:16 -0700
IronPort-SDR: qt0RTYQCOFj12K5GkkTULG7nAGtysMaJk+P93oxvKrR0SYXNZ7uUveCzTsliwAlRFDn9MIFamJ
 3PnzYn/Ht0GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="369172091"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga001.fm.intel.com with ESMTP; 04 May 2020 11:24:10 -0700
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Mon,  4 May 2020 23:45:53 +0530
Message-Id: <20200504181600.18503-3-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200504181600.18503-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200504181600.18503-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915/display/dp: Prefer drm_WARN*
 over WARN*
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

struct drm_device specific drm_WARN* macros include device information
in the backtrace, so we know what device the warnings originate from.

Prefer drm_WARN* over WARN* at places where struct intel_dp or struct
drm_i915_private pointer is available.

Conversion is done with below sementic patch:

@rule1@
identifier func, T;
@@
func(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

@rule2@
identifier func, T;
@@
func(struct drm_i915_private *T,...) {
<+...
(
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

@rule3@
identifier func, T;
@@
func(struct intel_dp *T,...) {
+ struct drm_i915_private *i915 = dp_to_i915(T);
<+...
(
-WARN_ON(
+drm_WARN_ON(&i915->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&i915->drm,
...)
)
...+>

}

@rule4@
identifier func, T;
@@
func(...) {
...
struct intel_dp *T = ...;
+ struct drm_i915_private *i915 = dp_to_i915(T);
<+...
(
-WARN_ON(
+drm_WARN_ON(&i915->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&i915->drm,
...)
)
...+>

}

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6952b0295096..ac44fc242879 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -409,7 +409,10 @@ static int intel_dp_rate_index(const int *rates, int len, int rate)
 
 static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 {
-	WARN_ON(!intel_dp->num_source_rates || !intel_dp->num_sink_rates);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	drm_WARN_ON(&i915->drm,
+		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
 
 	intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
 						     intel_dp->num_source_rates,
@@ -418,7 +421,7 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 						     intel_dp->common_rates);
 
 	/* Paranoia, there should always be something in common. */
-	if (WARN_ON(intel_dp->num_common_rates == 0)) {
+	if (drm_WARN_ON(&i915->drm, intel_dp->num_common_rates == 0)) {
 		intel_dp->common_rates[0] = 162000;
 		intel_dp->num_common_rates = 1;
 	}
@@ -1554,6 +1557,7 @@ static ssize_t
 intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 {
 	struct intel_dp *intel_dp = container_of(aux, struct intel_dp, aux);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 txbuf[20], rxbuf[20];
 	size_t txsize, rxsize;
 	int ret;
@@ -1567,10 +1571,10 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		txsize = msg->size ? HEADER_SIZE + msg->size : BARE_ADDRESS_SIZE;
 		rxsize = 2; /* 0 or 1 data bytes */
 
-		if (WARN_ON(txsize > 20))
+		if (drm_WARN_ON(&i915->drm, txsize > 20))
 			return -E2BIG;
 
-		WARN_ON(!msg->buffer != !msg->size);
+		drm_WARN_ON(&i915->drm, !msg->buffer != !msg->size);
 
 		if (msg->buffer)
 			memcpy(txbuf + HEADER_SIZE, msg->buffer, msg->size);
@@ -1595,7 +1599,7 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		txsize = msg->size ? HEADER_SIZE : BARE_ADDRESS_SIZE;
 		rxsize = msg->size + 1;
 
-		if (WARN_ON(rxsize > 20))
+		if (drm_WARN_ON(&i915->drm, rxsize > 20))
 			return -E2BIG;
 
 		ret = intel_dp_aux_xfer(intel_dp, txbuf, txsize,
@@ -1870,10 +1874,11 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int len;
 
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->max_link_rate);
-	if (WARN_ON(len <= 0))
+	if (drm_WARN_ON(&i915->drm, len <= 0))
 		return 162000;
 
 	return intel_dp->common_rates[len - 1];
@@ -1881,10 +1886,11 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i = intel_dp_rate_index(intel_dp->sink_rates,
 				    intel_dp->num_sink_rates, rate);
 
-	if (WARN_ON(i < 0))
+	if (drm_WARN_ON(&i915->drm, i < 0))
 		i = 0;
 
 	return i;
@@ -5580,7 +5586,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 	if (!intel_dp->is_mst)
 		return -EINVAL;
 
-	WARN_ON_ONCE(intel_dp->active_mst_links < 0);
+	drm_WARN_ON_ONCE(&i915->drm, intel_dp->active_mst_links < 0);
 
 	for (;;) {
 		u8 esi[DP_DPRX_ESI_LEN] = {};
@@ -5942,7 +5948,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	u8 *dpcd = intel_dp->dpcd;
 	u8 type;
 
-	if (WARN_ON(intel_dp_is_edp(intel_dp)))
+	if (drm_WARN_ON(&i915->drm, intel_dp_is_edp(intel_dp)))
 		return connector_status_connected;
 
 	if (lspcon->active)
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
