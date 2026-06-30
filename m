Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PZdBEJ6HQ2pTaQoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:08:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B622B6E1EEC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:08:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NSZApVts;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC7E110E1C5;
	Tue, 30 Jun 2026 09:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFB110E1C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2026 09:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782810522; x=1814346522;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mVwEe0dkwiq7T1/nlc8BnWGflh3dEtY14BdVm58Zq7A=;
 b=NSZApVtsDeu27iq18LIlUdPCCRu4OV6SMhRE+8TkkSlhIRZQcB/xo/Wb
 sAO/ZQ9mo6F7TzGz7EMHLDYFGF5XYQ/6wFOboQFvRFYSq0qWDuPEQtxrU
 L5UsofhKgXq0NoO4kJT66STxKQ1KvVvmctWxrQPUfgSd5bTKEs1ed3+mn
 C+yT37DAVs4I6cp9UD73MY/9mb8YopMG07db2YJaEmAkAEr+shvWEXOFY
 c6wVcX6rbpqLyeAk8E97A1lTAD9l2FYIaUUXkZ1Lck01Cg+C/83MpJcbY
 zCJ8fCRPifTPxdLj1KahBR5U3GACJN8vlfiMABNxEJssZSokzQzEWOq/n g==;
X-CSE-ConnectionGUID: i5Cu95o3SaCrQOJtYoQr6w==
X-CSE-MsgGUID: I4+22e+HRLi5w3k5qYiEuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="94900333"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="94900333"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:08:41 -0700
X-CSE-ConnectionGUID: CBsQh9SNQ1SiMjDXxCVhHQ==
X-CSE-MsgGUID: UqDuLJKEQMWg7k3L+zITOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="256605012"
Received: from amilburn-desk.amilburn-desk (HELO hazy.intel.com)
 ([10.245.245.155])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:08:40 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/2] drm/i915/display: reduce clock_gating interface between
 core and display
Date: Tue, 30 Jun 2026 12:03:25 +0300
Message-ID: <20260630090829.2778879-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B622B6E1EEC

Hi,

As a follow up to my previous clock-gating patches, this series
reduces the interface between core and display by combining all the
platform-specific exported functions and letting the display code
decide what to do for each platform.

To do that I created an _init_early(), to hold functions that are
called at the beginning of the clock gating initialization and another
one to call the later functions, namely _init_late().

Please review.

Cheers,
Luca.


Luca Coelho (2):
  drm/i915/display: combine clock_gating init functions called early
    into one
  drm/i915/display: combine clock_gating init functions called late into
    one

 .../i915/display/intel_display_clock_gating.c | 71 +++++++++++++++----
 .../i915/display/intel_display_clock_gating.h | 17 +----
 drivers/gpu/drm/i915/intel_clock_gating.c     | 38 +++++-----
 3 files changed, 74 insertions(+), 52 deletions(-)

-- 
2.53.0

