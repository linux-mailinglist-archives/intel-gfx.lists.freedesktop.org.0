Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 21VQEnaywWkYUwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 22:36:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DC42FDCFD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 22:36:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A69D10E534;
	Mon, 23 Mar 2026 21:36:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5d9kkHn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A92AE10E505;
 Mon, 23 Mar 2026 21:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774301810; x=1805837810;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GbmEJ3gAnA39ULBCT39vLN2O22v/jcs7w6rCjokfoBk=;
 b=K5d9kkHnCkv5lVH2g4+iSfs/TPzYeNg3eTlWhYgkJXjdpdMDR9RzboRa
 Rn/wYzAJmseUSCZOLpR/NfmXIC9gTg8ABA9gsbSu/4+Js+aPLg03XY5qQ
 f0rTgH4+/De51jhgH+6eupEAW+sKqrhaJf1ePNQimlsxdrnIyZu8zJ7PH
 BlgjsRE/tIDCRl+IFou+YdnJ/w8fhNqTxr0fwLznUzxiOLBkIsF7NEwIK
 YkXrM9hON7Q1Au6N7n+fcKCdZ7m0Zn/UgNsergfeJOuyz3j29EcFDoRdi
 /Keo0nzZgiFYMrSUpCf4UlGBKttDGHHLMBpSp3Pcd9g+34yv0A7fV3RWF w==;
X-CSE-ConnectionGUID: kgYJbjebRSCeHT5TeJPklg==
X-CSE-MsgGUID: g4JdNu2+QMiZ1Sl8cgal6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75429659"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75429659"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 14:36:49 -0700
X-CSE-ConnectionGUID: Kj+ZacWnT8q5Xo/KLQP1+Q==
X-CSE-MsgGUID: swwu6+xJTreu+/dLLd6GTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="247194940"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.55])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 14:36:48 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/vblank: Extract get_vblank_counter_and_timestamp()
Date: Mon, 23 Mar 2026 23:36:45 +0200
Message-ID: <20260323213645.10965-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 20DC42FDCFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have three copies of the "read vblank counter and timestamp
in a loop" code. Consolidate to a single a function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 36 +++++++++++++++++++++---------------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index f78bf37f1e0a..f90fb2d13e42 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -236,6 +236,21 @@ static u32 __get_vblank_counter(struct drm_device *dev, unsigned int pipe)
 	return drm_vblank_no_hw_counter(dev, pipe);
 }
 
+static bool get_vblank_counter_and_timestamp(struct drm_device *dev, unsigned int pipe,
+					     u32 *cur_vblank, ktime_t *t_vblank,
+					     bool in_vblank_irq)
+{
+	int count = DRM_TIMESTAMP_MAXRETRIES;
+	bool rc;
+
+	do {
+		*cur_vblank = __get_vblank_counter(dev, pipe);
+		rc = drm_get_last_vbltimestamp(dev, pipe, t_vblank, in_vblank_irq);
+	} while (*cur_vblank != __get_vblank_counter(dev, pipe) && --count > 0);
+
+	return rc;
+}
+
 /*
  * Reset the stored timestamp for the current vblank count to correspond
  * to the last vblank occurred.
@@ -250,7 +265,6 @@ static void drm_reset_vblank_timestamp(struct drm_device *dev, unsigned int pipe
 	u32 cur_vblank;
 	bool rc;
 	ktime_t t_vblank;
-	int count = DRM_TIMESTAMP_MAXRETRIES;
 
 	spin_lock(&dev->vblank_time_lock);
 
@@ -258,10 +272,8 @@ static void drm_reset_vblank_timestamp(struct drm_device *dev, unsigned int pipe
 	 * sample the current counter to avoid random jumps
 	 * when drm_vblank_enable() applies the diff
 	 */
-	do {
-		cur_vblank = __get_vblank_counter(dev, pipe);
-		rc = drm_get_last_vbltimestamp(dev, pipe, &t_vblank, false);
-	} while (cur_vblank != __get_vblank_counter(dev, pipe) && --count > 0);
+	rc = get_vblank_counter_and_timestamp(dev, pipe, &cur_vblank,
+					      &t_vblank, false);
 
 	/*
 	 * Only reinitialize corresponding vblank timestamp if high-precision query
@@ -299,7 +311,6 @@ static void drm_update_vblank_count(struct drm_device *dev, unsigned int pipe,
 	u32 cur_vblank, diff;
 	bool rc;
 	ktime_t t_vblank;
-	int count = DRM_TIMESTAMP_MAXRETRIES;
 	int framedur_ns = vblank->framedur_ns;
 	u32 max_vblank_count = drm_max_vblank_count(dev, pipe);
 
@@ -315,10 +326,8 @@ static void drm_update_vblank_count(struct drm_device *dev, unsigned int pipe,
 	 * updating its hardware counter while we are retrieving the
 	 * corresponding vblank timestamp.
 	 */
-	do {
-		cur_vblank = __get_vblank_counter(dev, pipe);
-		rc = drm_get_last_vbltimestamp(dev, pipe, &t_vblank, in_vblank_irq);
-	} while (cur_vblank != __get_vblank_counter(dev, pipe) && --count > 0);
+	rc = get_vblank_counter_and_timestamp(dev, pipe, &cur_vblank,
+					      &t_vblank, in_vblank_irq);
 
 	if (max_vblank_count) {
 		/* trust the hw counter when it's around */
@@ -1543,7 +1552,6 @@ static void drm_vblank_restore(struct drm_device *dev, unsigned int pipe)
 	int framedur_ns;
 	u64 diff_ns;
 	u32 cur_vblank, diff = 1;
-	int count = DRM_TIMESTAMP_MAXRETRIES;
 	u32 max_vblank_count = drm_max_vblank_count(dev, pipe);
 
 	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
@@ -1558,10 +1566,8 @@ static void drm_vblank_restore(struct drm_device *dev, unsigned int pipe)
 		      "Cannot compute missed vblanks without frame duration\n");
 	framedur_ns = vblank->framedur_ns;
 
-	do {
-		cur_vblank = __get_vblank_counter(dev, pipe);
-		drm_get_last_vbltimestamp(dev, pipe, &t_vblank, false);
-	} while (cur_vblank != __get_vblank_counter(dev, pipe) && --count > 0);
+	get_vblank_counter_and_timestamp(dev, pipe, &cur_vblank,
+					 &t_vblank, false);
 
 	diff_ns = ktime_to_ns(ktime_sub(t_vblank, vblank->time));
 	if (framedur_ns)
-- 
2.52.0

