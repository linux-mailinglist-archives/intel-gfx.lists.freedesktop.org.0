Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PSnMqBK1mkFDQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:31:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8564A3BC17B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0957610E632;
	Wed,  8 Apr 2026 12:31:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TmJi8H1B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F18C10E631;
 Wed,  8 Apr 2026 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775651485; x=1807187485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UJNui/wnRqEgKC+BX5CzuzZBmLOQYwCwpOIiofJl/qw=;
 b=TmJi8H1BVPj+AS3aJbqnM19OK0fK3RTqm0nzf7slz/8BzUbwEWAVYSW0
 zClyzz6E3VzD8TA0ph+klxRSENmjaV+dhe187z65bBHCTFUY0mDQSbgbR
 OayoPtaLY/FUMRezSUzWX3TeLdaeK4nQyaXwcachYm1JicQKEdXVO/J6g
 ujpZvNaIxWDlCY1PDgHSw+6ka4shwTPFn2jNdxE3R7sWXKJs6xajx9bnI
 mxer/ZGucJzM5ulWTQmAhQIxyCiKR4bBDSYEj/rJv7YYfgtIA2cS6WD78
 IH66d6m81f3K9qfEunsvNlk6WWZ/hDtUOKlWUZoGe80BQfP5F3putksvp w==;
X-CSE-ConnectionGUID: RpnphIyNRD+N1eYugxgRkw==
X-CSE-MsgGUID: nQmjuC2QRnuZcUreANyKiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80519057"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80519057"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:25 -0700
X-CSE-ConnectionGUID: Kji5EfU4R/2lN53R6L16lA==
X-CSE-MsgGUID: K0mmsaFGReismHXvHfuZ5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251781975"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:22 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH v3 1/9] drm/i915/scaler: Don't clobber plane scaler scale
 factors with pfit scale factors
Date: Wed,  8 Apr 2026 15:31:06 +0300
Message-ID: <20260408123115.15716-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
References: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 8564A3BC17B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

When intel_atomic_setup_scaler() is called for a plane scaler
it first computes the scale factors correctly, and then (if
pfit is enabled on the pipe) it overwrites them with the pfit
scale factors.

Skip the pfit scaler stuff when intel_atomic_setup_scaler()
is called for a plane scaler (plane_state != NULL).

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Fixes: 9217f9aaef62 ("drm/i915/scaler: Compute scaling factors for pipe scaler")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 308b8d363bba..54507adc3073 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -482,7 +482,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	if (crtc_state->pch_pfit.enabled) {
+	if (!plane_state && crtc_state->pch_pfit.enabled) {
 		struct drm_rect src;
 		int max_hscale, max_vscale;
 
-- 
2.52.0

