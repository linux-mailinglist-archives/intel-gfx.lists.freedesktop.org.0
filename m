Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QD3RBoaOy2kuIwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:06:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72498366B4F
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1D010E9AB;
	Tue, 31 Mar 2026 09:06:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Poz+Jxo8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A25E410E9AB;
 Tue, 31 Mar 2026 09:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774947971; x=1806483971;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=FTztgEHeYR/nOA6dzEOVynamACiXL4WEVVr3TVEwx4g=;
 b=Poz+Jxo8h8AdDCDPJ0C5Cg3Yi3Lli0eYC8RmrfDuV7QRpzBVCnrXIpkZ
 DCNMSiDbGBjOjsQHKZYMGFE1zyZ8Jn//MF+FfN3y1VL/j/t2XatIo1r83
 90hcNi27E2hV1A7p/OMyzm0MY17G6gCF+o15wKiZt1iLX+CaCH3M5hL/4
 AOTSc7u2fuM2mYX2z3oVMGHgnV1lqdvFPlz8rRAvKBBb+Ap5ftLsY8Yoi
 P2T6GzZwZ1BpSGAa7TW8NgHqkIBnVfdPqRFS4t26nsz5sRxptuC+5Ym4M
 4FSYP/BpNoGzgKBrFsnrtEL205i1bwJ2BAXwA92gjLe10AB4b0SWisUXQ Q==;
X-CSE-ConnectionGUID: HKPYZo5jSj2YR52jLMGOAA==
X-CSE-MsgGUID: F7QoqyhbSxGjl+6oTbMitw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87420627"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87420627"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:06:10 -0700
X-CSE-ConnectionGUID: dxir2xCQQyWy811Jzw8SXA==
X-CSE-MsgGUID: 0HWVGgq6S72AYgSKmE8fwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="226559653"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa007.jf.intel.com with ESMTP; 31 Mar 2026 02:06:05 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Tue, 31 Mar 2026 14:33:54 +0530
Subject: [PATCH v11 2/7] drm/atomic: Add error_code element in atomic_state
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260331-atomic-v11-2-6a1df7ec5af8@intel.com>
References: <20260331-atomic-v11-0-6a1df7ec5af8@intel.com>
In-Reply-To: <20260331-atomic-v11-0-6a1df7ec5af8@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, xaver.hugl@kde.org, 
 harry.wentland@amd.com, uma.shankar@intel.com, louis.chauvet@bootlin.com, 
 naveen1.kumar@intel.com, ramya.krishna.yella@intel.com
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Arun R Murthy <arun.r.murthy@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
X-Mailer: b4 0.15-dev
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,kde.org,amd.com,bootlin.com];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 72498366B4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that a proper error code will be returned to the user on any failure
in atomic_ioctl() via struct drm_mode_atomic, add a new element
error_code in the struct drm_atomic_state so as to hold the error code
during the atomic_check() and atomic_commit() phases.
New function added to print the error message and fill the struct
err_code with proper error message and error code.

v5: Add a function for printing the error message and filling err_code
    struct
v6: Replace drm_err with drm_dbg_atomic print
v6: Add keyword "commit failed" in dbg msg (Suraj)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/drm_atomic.c | 31 +++++++++++++++++++++++++++++++
 include/drm/drm_atomic.h     | 10 ++++++++++
 2 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 41c57063f3b4d6d6e61a274d818844fa9bd582bf..647b31a432bf55852aeac47ce29f9bfb3fcb6830 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -2118,6 +2118,37 @@ void drm_state_dump(struct drm_device *dev, struct drm_printer *p)
 }
 EXPORT_SYMBOL(drm_state_dump);
 
+/**
+ * drm_mode_atomic_add_error_msg - function to add error code and error string
+ *
+ * @err_code: pointer to struct drm_mode_atomic_err_code that stores the failure
+ *	      reason
+ * @failure_code: failure code in enum drm_mode_atomic_failure_codes
+ * @failure_string: failure reason string message
+ *
+ * Returns: void
+ */
+void drm_mode_atomic_add_error_msg(struct drm_mode_atomic_err_code *err_code,
+				   __u64 failure_code, const char *format, ...)
+{
+	struct drm_atomic_state *state = container_of(err_code,
+						      struct drm_atomic_state,
+						      error_code);
+	va_list varg;
+	char *failure_string;
+
+	err_code->failure_code = failure_code;
+
+	va_start(varg, format);
+	failure_string = kvasprintf(GFP_ATOMIC, format, varg);
+
+	drm_dbg_atomic(state->dev, "Commit failed: %s\n", failure_string);
+	strscpy_pad(err_code->failure_string, failure_string,
+		    sizeof(err_code->failure_string));
+	va_end(varg);
+}
+EXPORT_SYMBOL(drm_mode_atomic_add_error_msg);
+
 #ifdef CONFIG_DEBUG_FS
 static int drm_state_info(struct seq_file *m, void *data)
 {
diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
index f03cd199aee73fa8e15b2d9e16a53d134fc7de7d..6fd43b31e8482550cc93273437cb46b8d44c800a 100644
--- a/include/drm/drm_atomic.h
+++ b/include/drm/drm_atomic.h
@@ -646,6 +646,13 @@ struct drm_atomic_state {
 	 * commit without blocking.
 	 */
 	struct work_struct commit_work;
+
+	/* @error_code: pointer to struct holding failure reason and string
+	 *
+	 * struct to convey user readable error to the user.
+	 * Error codes defined in enum drm_mode_atomic_failure_flags
+	 */
+	struct drm_mode_atomic_err_code error_code;
 };
 
 void __drm_crtc_commit_free(struct kref *kref);
@@ -1372,5 +1379,8 @@ drm_atomic_get_old_bridge_state(const struct drm_atomic_state *state,
 struct drm_bridge_state *
 drm_atomic_get_new_bridge_state(const struct drm_atomic_state *state,
 				struct drm_bridge *bridge);
+__printf(3, 4)
+void drm_mode_atomic_add_error_msg(struct drm_mode_atomic_err_code *err_code,
+				   __u64 failure_code, const char *format, ...);
 
 #endif /* DRM_ATOMIC_H_ */

-- 
2.25.1

