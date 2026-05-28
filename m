Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAjFCrkLGGpzbAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 11:32:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F035EFA67
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 11:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6080810EEF3;
	Thu, 28 May 2026 09:32:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HcGhU43D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C8110EEED;
 Thu, 28 May 2026 09:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779960758; x=1811496758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z4Vb4V5EyL/qxxktchWRVT7su3ZsOyjXefUWXWibul0=;
 b=HcGhU43DRvjX712ZacJO/PpDwaFqmpGYv6Vi3DpoF4/wkE/+ptYqNm5P
 L8yhPonrrBbeIfCJ9c+BDsXLYlb2ErEo+4p3Ov/89V5RaZKIlPudT4EW0
 jfqlAdPAUKKm+ZXmHeVZ3zAdYU1npSjoWY7lgGuk8SaE0lcUJ8qI6ODcN
 /3B+Dvtp3tw6AlGRKLaYq+NyFF7cvmf8N9eJj8rU0AlWXlrpGakj5vfSr
 YdK5rM2Vh5H8nJ7u8DfiUYHRTHCknmhDBVnoligsa7wMseixsfXrIBkul
 pSLMB6ncZ3foDl5mtBHr0qUxMx/Bq+ELpZEobiE3EjcCkP+2p0hqOHxU9 g==;
X-CSE-ConnectionGUID: ZzqSdnvmQz+uW4mYIxPzsA==
X-CSE-MsgGUID: YTxeoPA8QE6ArIlPnItqzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="84426942"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="84426942"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 02:32:38 -0700
X-CSE-ConnectionGUID: PBvmJlpuR0+DdT93FfvsbA==
X-CSE-MsgGUID: SQ/wN9BTTByYamqctZD7xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="242352071"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO hazy) ([10.245.245.229])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 02:32:36 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v2 3/4] drm/i915/display: harden shift in
 intel_ddi_compute_config_late()
Date: Thu, 28 May 2026 12:30:27 +0300
Message-ID: <20260528093222.2758007-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260528093222.2758007-1-luciano.coelho@intel.com>
References: <20260528093222.2758007-1-luciano.coelho@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: F2F035EFA67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

BIT() takes a non-negative shift amount, but cpu_transcoder is of type
enum transcoder, which can in theory be INVALID_TRANSCODER (-1).

This is not a problem with the current implementation, because
cpu_transcoder is always valid when this code is reached, but it's
more robust to cast to unsigned so the shift is always well-defined.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 86520848892e..47e4999425ea 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4637,8 +4637,8 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 
 	if (crtc_state->master_transcoder == crtc_state->cpu_transcoder) {
 		crtc_state->master_transcoder = INVALID_TRANSCODER;
-		crtc_state->sync_mode_slaves_mask =
-			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
+		crtc_state->sync_mode_slaves_mask = port_sync_transcoders &
+			~REG_BIT(crtc_state->cpu_transcoder);
 	}
 
 	return 0;
-- 
2.53.0

