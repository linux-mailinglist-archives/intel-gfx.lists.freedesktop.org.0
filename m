Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AUMAEKHaRGqu2AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 11:15:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B54B06EB840
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 11:15:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BnhqPJIr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ECE710E333;
	Wed,  1 Jul 2026 09:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051DB10E333;
 Wed,  1 Jul 2026 09:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782897310; x=1814433310;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tg9ixTP/Z/t+D/V+nvG7wFmVr4YnPYfApJYX8uqoqsM=;
 b=BnhqPJIrQ5N8QDI17VROD06Lp8PU4S6SIqNCkNRwUDVTEb9YC1RRIoyp
 nGxxNYTFl5ePGY5FhhQaNbxhFP7O8enjOg9pNA8EIGC+qVtDOZm+NrQCL
 HWSydzQ6YUPx2PCRJCqFNXnk879Y0q3ws/9unzfAJK3yk3x6FMG9iLt/7
 eY9kxXGyjOYur39nPPAhZz1WqvdAwKe+PuOC3Cr7i6/6dxSiwoTvQbb50
 aa60Rv3kQSqWd0quvvfSE6FtRyQCuJVQ7ZCraDjo2+aRoq1YdpcGLFeI8
 r2RuT6dFLyhfm53QSY38NL7sLSqfSNSKPNApMnEO1c/ylymxqTmq8zd50 g==;
X-CSE-ConnectionGUID: Lk/wEDHVTUObjVayEc2hKg==
X-CSE-MsgGUID: tN+H/pTPRcaEeCd821Axcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83679050"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="83679050"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 02:15:09 -0700
X-CSE-ConnectionGUID: 6N72IKUKTtqwErI784943A==
X-CSE-MsgGUID: E3issZjpRjePwI41JXx8jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="275735714"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 01 Jul 2026 02:15:08 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 0/2] Fix LT PHY related SSC writes
Date: Wed,  1 Jul 2026 14:45:01 +0530
Message-Id: <20260701091503.1302226-1-suraj.kandpal@intel.com>
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B54B06EB840

Xe3P onwards we only write on SSC Enable PLLA on PORT
CLOCK CTL. Fix this register write. Along with that add
ssc_enabled readout.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/ltphy: Readout ssc_enabled for LT PHY
  drm/i915/ltphy: Fix SSC Enablement bit in PORT_CLOCK_CTL

 drivers/gpu/drm/i915/display/intel_lt_phy.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

-- 
2.34.1

