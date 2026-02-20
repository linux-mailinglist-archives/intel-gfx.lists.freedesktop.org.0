Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHDgNOTql2lz+AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 06:02:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67381164B70
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 06:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC3E910E14E;
	Fri, 20 Feb 2026 05:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XdZTuYQX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EAD410E14E;
 Fri, 20 Feb 2026 05:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771563746; x=1803099746;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BtEagZKU+QXXci5oy2dHo8Jz9pJZQ74RqwTjnS7RCrk=;
 b=XdZTuYQXJ0/QVuonODnNTIySr5NenUYhcVkycOJB/F7v6vG65kyBAOmS
 1d2rAczn/liuMjiXCLIAuRiihenXDj/eJLhetDyZ0Ie7t4/5xSjBMablo
 CNhu3b15Y3WQqkLdNQII0GeGJYs3tLV3Xgzhjo5I59E347Sooo0K6dnDC
 9fG3Sm6+OsGk1W51vhzCpnfUTxSerJU5LnJPQmlkfIWHuwc9mIOrIrl4F
 +nOAE3ahSfIeCFKX8f9ZiAbOvsFjTtlBzS8WXJzafpAsENW4jGB1BTyvT
 Hsa8YbRjOa5/YNmm2LVBraH9Dsi0KINdwmRMBKhsLHv0yuPkKvt4YqnoF g==;
X-CSE-ConnectionGUID: KRhIYnyRTni6iNzpj8rflg==
X-CSE-MsgGUID: df4joTQpT76qYENgMBUu8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72758217"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="72758217"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 21:02:26 -0800
X-CSE-ConnectionGUID: MAwfHomFRv+XyZNS0S9EFA==
X-CSE-MsgGUID: zLyPBES4R8WyLeF9MfFxxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="218894625"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 19 Feb 2026 21:02:24 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/8] Fixes and updates when using AUX backlight using
 Luminance 
Date: Fri, 20 Feb 2026 10:32:09 +0530
Message-Id: <20260220050217.2453681-1-suraj.kandpal@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 67381164B70
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
  drm/i915/backlight: Avoid 0 brightness for VESA AUX backlight by
    default
  drm/i915/backlight: Use intel_panel variable instead of
    intel_connector
  drm/i915/backlight: Take luminance_set into account for VESA backlight
  drm/i915/backlight: Check luminance_set when disabling PWM via AUX
    VESA backlight
  drm/i915/backlight: Short circuit intel_dp_aux_supports_hdr_backlight
  drm/i915/backlight: Update debug log during backlight setup
  drm/i915/backlight: Provide clear description on how backlight level
    is controlled
  drm/i915/backlight: Avoid 0 brightness for INTEL AUX HDR backlight by
    default

 .../drm/i915/display/intel_dp_aux_backlight.c | 40 ++++++++++++++-----
 1 file changed, 29 insertions(+), 11 deletions(-)

-- 
2.34.1

