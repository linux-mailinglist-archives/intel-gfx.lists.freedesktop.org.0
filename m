Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IcxfLjIrNWpUnwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 13:42:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6866A577A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 13:42:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gHvnMtBd;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B41310E098;
	Fri, 19 Jun 2026 11:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A1F10E08D;
 Fri, 19 Jun 2026 11:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781869352; x=1813405352;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4SW8WibIK+hvKSU6PpNjMqwSCXy/WbRMpPZ1gAYI/Ls=;
 b=gHvnMtBdKBaOnRr8Nqx+Aif8hu94eHZN1i7bktWdUaY/DUe/2VG1Szs6
 KhCpedIcZ/jHHy+WNRPW+ZyFAkNXNfHpu7DZp+Jka1/+GT3Vh2XbCwPeM
 41p1LIvHuyoCBJkpsSiqrZDcZArJcC8OOIvGPY+cXLBXJnAsTFJaxXXao
 ixwqvNf7hhz5CwUpBQqEZrC2W63DjdWkSHaXTLPNXiFosW7W4hJgXbA6E
 Rog13y1KruH4/IDg0sUiOttemNy5hQ6+OnMGLT8nwk8pQbII4iq6TE4Im
 T3zLfobR0m5bY6cel1j0U15Jr0oYOu7QfSHuJpqMAz/N/S3JVGodOVtVs g==;
X-CSE-ConnectionGUID: f5vIXTK+SDKNbsYxvvAEqg==
X-CSE-MsgGUID: IzNqSUexRJG6UaliNg1fZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="70229410"
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; d="scan'208";a="70229410"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2026 04:42:32 -0700
X-CSE-ConnectionGUID: qmv0y5mNTeePrSqn06+kKg==
X-CSE-MsgGUID: zh4VmOz6Qg2iZvubu2WW7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; d="scan'208";a="286738202"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa001.jf.intel.com with ESMTP; 19 Jun 2026 04:42:30 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/4]  DSC max delta bpp support
Date: Fri, 19 Jun 2026 17:09:01 +0530
Message-Id: <20260619113905.1413453-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE6866A577A

    Some sinks exposes DSC max bpp through delta based
DPCD fields. To support those sinks, add DP DPCD field
field and logic to decode the delta value in bppx16
format.

Nemesa Garg (4):
  drm/dp: Add DP_DSC_MAX_BPP_DELTA register
  drm/dp: Rename YCbCr420 bpp delta mask to native
  drm/dp: Add max bpp delta computation constants
  drm/i915/dp: Decode dsc max delta bpp from sink dpcd

 drivers/gpu/drm/i915/display/intel_dp.c | 43 +++++++++++++++++++++++--
 include/drm/display/drm_dp.h            | 13 ++++++--
 2 files changed, 52 insertions(+), 4 deletions(-)

-- 
2.25.1

