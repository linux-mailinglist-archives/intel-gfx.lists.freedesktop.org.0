Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D30D845B93C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C166E8AB;
	Wed, 24 Nov 2021 11:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C84F6E895
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235207547"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235207547"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="597638866"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 24 Nov 2021 03:37:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:46 +0200
Message-Id: <20211124113652.22090-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/20] drm/i915/fbc: Move stuff from
 intel_fbc_can_enable() into intel_fbc_check_plane()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Don't really see a good reason why we can't just do the vgpu and
modparam checks already in intel_fbc_check_plane().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1daf4f7b5d80..616ab95766b2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -996,18 +996,6 @@ static bool intel_fbc_cfb_size_changed(struct intel_fbc *fbc)
 
 static bool intel_fbc_can_enable(struct intel_fbc *fbc)
 {
-	struct drm_i915_private *i915 = fbc->i915;
-
-	if (intel_vgpu_active(i915)) {
-		fbc->no_fbc_reason = "VGPU is active";
-		return false;
-	}
-
-	if (!i915->params.enable_fbc) {
-		fbc->no_fbc_reason = "disabled per module param or by default";
-		return false;
-	}
-
 	if (fbc->underrun_detected) {
 		fbc->no_fbc_reason = "underrun detected";
 		return false;
@@ -1030,6 +1018,16 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	if (!fbc)
 		return 0;
 
+	if (intel_vgpu_active(i915)) {
+		plane_state->no_fbc_reason = "VGPU active";
+		return 0;
+	}
+
+	if (!i915->params.enable_fbc) {
+		plane_state->no_fbc_reason = "disabled per module param or by default";
+		return 0;
+	}
+
 	if (!plane_state->uapi.visible) {
 		plane_state->no_fbc_reason = "plane not visible";
 		return 0;
-- 
2.32.0

