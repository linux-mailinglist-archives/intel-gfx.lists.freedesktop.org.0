Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIDvHD9ahGl92gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 09:52:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C31F00D8
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 09:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 481DF10E7FD;
	Thu,  5 Feb 2026 08:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="idhVhAPv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D47010E7F9;
 Thu,  5 Feb 2026 08:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770281533; x=1801817533;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5fp98ky7bJSBDlhHRcq0/D3yDXOCT5pcHOM/VEvLXLg=;
 b=idhVhAPv3eBHFLZu2NsJDWnKu18fHCX+OYHSDg9r93tRHWA4KmNfnYKi
 mLdqGD8BuVKpH5Kg/99HrLn3JG2zSI3LbBY93LL9CYUe5srJWH+qd2qpC
 SoKg4mM893+lTwRLwBhXWTu0nX/M3K7hbRLtwoYD7stE+NgRKczwrk4Kb
 yXq+JbGyWu4qFQZN2TFlJO0/xdMQK/sVTwy/1djXgooZ2bp80PYO6Tq9B
 73+vE2YRVw8uNRYi+ykfFt/baPlNuSUPm9YSYRvEEOk4uhaVOKrycrB/p
 pw8r2WSZK4ucaTItInC9XXDsVPHWF2KscfkUhtD+adDP2qbtKmOaf5cSH Q==;
X-CSE-ConnectionGUID: JTVMtn+iTeiZe375ZYX8dA==
X-CSE-MsgGUID: wNSvyNi8ST+bHkfsspHfxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71377278"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71377278"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:52:10 -0800
X-CSE-ConnectionGUID: dNiobhbrSaywouX/Lh6fuw==
X-CSE-MsgGUID: fXJKh5ScQu6nIqaUM5d8hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="233380036"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:52:04 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] drm/i915/dp: Joiner cleanups and fix
Date: Thu,  5 Feb 2026 14:06:21 +0530
Message-ID: <20260205083623.793902-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 00C31F00D8
X-Rspamd-Action: no action

Two small DP joiner updates:
 - make intel_dp_can_join() static and
 - restore the lost intel_dp_has_joiner() check dropped from ad121a62d566

Ankit Nautiyal (2):
  drm/i915/dp: Make intel_dp_can_join() static
  drm/i915/dp: Restore the missing check for intel_dp_has_joiner

 drivers/gpu/drm/i915/display/intel_dp.c     | 17 ++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h     |  9 ++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++--
 3 files changed, 18 insertions(+), 12 deletions(-)

-- 
2.45.2

