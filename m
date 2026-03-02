Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Zc+PL8cMpWn60QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 05:06:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 394351D2DD7
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 05:06:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02DE110E350;
	Mon,  2 Mar 2026 04:06:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gzQT+NQH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3C010E350;
 Mon,  2 Mar 2026 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772424385; x=1803960385;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WD0sSj6ItF8usOSlNlmfE6zIVM0FEauJUHDs4tpZBp4=;
 b=gzQT+NQHz4R2OWkTQbZkTAx9YYhzrzKn970i4pc0wsBvK/xXfFB2czOv
 4kYKQ5W00Y5kMxmHtOCRXiM4JAP1sqnLso7aBsTo70gthG0Yh50Sho2hy
 YgU/QbCbLi8CS4qs51K+NwHLegVKccpkBXvzSlbwi9YtJN6Cil8FK2UTi
 NVcr37y04QuZW5sgmkPxgJ0TIBl3FgYL6Ag9xvchIvKAKdEYu4IYy3XfL
 qafk4pQ7mwwOhK1qTkZ7O8A/DPKDioxQBWxp/FhULeWC3QBV+/+hns//U
 89IxrQavULZxxABNUpzpaCPy/4FA70yaQSNGJVaFUZo3Me3VC3pi/jzDr A==;
X-CSE-ConnectionGUID: ldMk6KZtR7WTlAiiIoBYNA==
X-CSE-MsgGUID: pNOhrzCFTyKQchEx8lOqlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="77294427"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="77294427"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 20:06:18 -0800
X-CSE-ConnectionGUID: GFGmqVtbTuatnUodGCHACQ==
X-CSE-MsgGUID: zmGOGwlfTU2GZ/Wdn0pzxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="217540990"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 01 Mar 2026 20:06:17 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [RESEND 0/8] Fixes and updates when using AUX backlight using
 Luminance 
Date: Mon,  2 Mar 2026 09:36:05 +0530
Message-Id: <20260302040613.3324049-1-suraj.kandpal@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 394351D2DD7
X-Rspamd-Action: no action

This series aims to fix/update some code with respect to AUX backlight
via luminance values for both VESA and INTEL HDR codepaths.
The below are the major changes made in this series.
- Do not allow 0 brightness  by default which makes the screen go blank
leaving user with no way to see the screen and increase brightness.
- Take into account luminance_set variable when we decide which funcs
need to be enabled
- Update debug logs to make them more concise and help debug which
code path was taken

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (8):
  drm/i915/backlight: Use default/max brightness for VESA AUX backlight
    init
  drm/i915/backlight: Use intel_panel variable instead of
    intel_connector
  drm/i915/backlight: Take luminance_set into account for VESA backlight
  drm/i915/backlight: Check luminance_set when disabling PWM via AUX
    VESA backlight
  drm/i915/backlight: Short circuit intel_dp_aux_supports_hdr_backlight
  drm/i915/backlight: Update debug log during backlight setup
  drm/i915/backlight: Provide clear description on how backlight level
    is controlled
  drm/i915/backlight: Use default/max brightness for INTEL AUX HDR
    backlight init

 .../drm/i915/display/intel_dp_aux_backlight.c | 40 ++++++++++++++-----
 1 file changed, 29 insertions(+), 11 deletions(-)

-- 
2.34.1

