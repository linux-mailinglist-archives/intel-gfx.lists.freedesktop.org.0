Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0L3JEcUn/mm9nQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 20:13:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7A24FA70F
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 20:13:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BBCC10F59C;
	Fri,  8 May 2026 18:13:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jvFTUOlD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9DAD10F59C;
 Fri,  8 May 2026 18:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778264001; x=1809800001;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Np0mnHcjd5WfQgsi3Petr7NjT2ttji6ooPDgahRnhAk=;
 b=jvFTUOlDcogJMdbS7BnRJ612wm7ULdyBNmQdAj1mLiLhJ9uGYU5CNS+K
 aYIH5fw1K2CwyG60kii1bqyFHgwy/4gFGPvNCEMWNbXf/tFcNpy5qKKFL
 Ddh24u8vkSNwo9uYTu+tXeOqr9QrVUb/rcj7kTzAi8BXy00DIvVttd5rn
 NYMKZBZHuytw57kluOqCBcyi3wJpRw61MvnnLLEgT9H6aoRf1C4bSGqKJ
 11UsiXEDhK6fokCi2l4uQt4FfXmvWn4jOzy7Whh16z00yaZjwh3plnvTp
 VF28enD5f9GMVp+8FH2WwtZCJ/YTfuy2/8wWuL9l9XmhjB1kxv2JdxB3z Q==;
X-CSE-ConnectionGUID: 1YEHxbCYQpWWC1a8zbDkzw==
X-CSE-MsgGUID: jjxUghiJTRyyxw/6v5Ab0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="78265984"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="78265984"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 11:13:21 -0700
X-CSE-ConnectionGUID: blSLoaTpQymNtZvzMbY8sg==
X-CSE-MsgGUID: 3IZv1J2RTpOxC1fcVqmrRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="232481497"
Received: from nex-dev-jx.fm.intel.com ([10.105.128.1])
 by fmviesa010.fm.intel.com with ESMTP; 08 May 2026 11:13:20 -0700
From: James Xiong <james.xiong@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gustavo.sousa@intel.com, jani.nikula@linux.intel.com,
 James Xiong <james.xiong@intel.com>
Subject: [PATCH v3] drm/i915/dmc: fix assert_dmc_loaded WARN during async
 firmware load
Date: Fri,  8 May 2026 11:13:29 -0700
Message-Id: <20260508181329.666762-1-james.xiong@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: CA7A24FA70F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[james.xiong@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

During driver probe, DMC firmware is loaded asynchronously via a
workqueue. There is a race between parse_dmc_fw() setting the payload
pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
writing the firmware to hardware registers. If the probe thread calls
intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.

v2: Fix by calling intel_dmc_wait_fw_load() in
    intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
    Sousa).

v3: Move intel_dmc_wait_fw_load() into intel_dmc_enable_pipe() itself
    so the function is self-contained (Jani Nikula, Gustavo Sousa).

Signed-off-by: James Xiong <james.xiong@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 0df4f42ba3e3..4151eae92744 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -786,7 +786,12 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
 
-	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
+	if (!is_valid_dmc_id(dmc_id))
+		return;
+
+	intel_dmc_wait_fw_load(display);
+
+	if (!has_dmc_id_fw(display, dmc_id))
 		return;
 
 	if (!can_enable_pipedmc(crtc_state)) {
-- 
2.34.1

