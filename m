Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KUyFhXsjmkCGAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 10:17:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D711345C9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 10:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3698F10E096;
	Fri, 13 Feb 2026 09:17:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bA7jw7nD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E29A10E096;
 Fri, 13 Feb 2026 09:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770974226; x=1802510226;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tWRUeyGxt+4EOnEWioaXcwyHgvAthovTsHSgUCfw2xU=;
 b=bA7jw7nDe452Tcy2CWerEES7t73Iszzfb231Ll4M3J+MPRouf4oKP9iJ
 oWz/gqKtsIXSBASXaBlZ93HN+olNw0XjH09rnGrliKqUghg1PM0MFrOVm
 n40BmKcdVWA3Y9eD/TtdT7Gr2KLOlA8rXMbx6BfOZ04Km+oLbjaD+U92V
 N9hVpopwbzHkG01nV4o/1mSqVRvTETu+SoHtTQ0W5lRnBsyZPX9xy/5bG
 07iwHke5pgVnoRnZoRiMk4/PhlXBpCBqjJfC79Yvb7qVOcnmGql9mYSAb
 I4SItuTdv/nzkJICbHHnPpjVVYyj1XQwbGv2EQtp4ydZSFlI3GuMKT/cy g==;
X-CSE-ConnectionGUID: Rd1+H02EST277Bax/HLFTQ==
X-CSE-MsgGUID: nCkrH3mYRRS67uvs04VSuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72146672"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72146672"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 01:17:05 -0800
X-CSE-ConnectionGUID: nfwn/bx7Sz6PnuSsR5NO2Q==
X-CSE-MsgGUID: ISuoNX3KRDaHXeLS7obU3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="211778825"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 13 Feb 2026 01:17:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/8] Fixes and updates when using AUX backlight using
 Luminance 
Date: Fri, 13 Feb 2026 14:46:45 +0530
Message-Id: <20260213091653.2250887-1-suraj.kandpal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	SUBJECT_ENDS_SPACES(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: E1D711345C9
X-Rspamd-Action: no action

This series aims to fix/update some code with respect to AUX backlight
via luminance values for both VESA and INTEL HDR codepaths.
The below are the major changes made in this series.
- Do not allow 0 brightness which makes the screen go blank leaving
user with no way to see the screen and increase brightness.
- Take into account luminance_set variable when we decide which funcs
need to be enabled
- Update debug logs to make them more concise and help debug which
code path was taken

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (8):
  drm/i915/backlight: Avoid 0 brightness for VESA AUX backlight
  drm/i915/backlight: Use intel_panel variable instead of
    intel_connector
  drm/i915/backlight: Take luminance_set into account for VESA backlight
  drm/i915/backlight: Check luminance_set when disabling PWM via AUX
    VESA backlight
  drm/i915/backlight: Short circuit intel_dp_aux_supports_hdr_backlight
  drm/i915/backlight: Update debug log during backlight setup
  drm/i915/backlight: Provide clear description on how backlight level
    is controlled
  drm/i915/backlight: Avoid 0 brightness for INTEL AUX HDR backlight

 .../drm/i915/display/intel_dp_aux_backlight.c | 60 +++++++++++++------
 1 file changed, 43 insertions(+), 17 deletions(-)

-- 
2.34.1

