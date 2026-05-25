Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJHyF5IWFGqFJgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 11:29:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E6E5C8998
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 11:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF0A10E023;
	Mon, 25 May 2026 09:29:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KbYvjMW9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 949A610E023
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 09:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779701391; x=1811237391;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PBH302dUkKyj55V66cyV5vBK1lkAjUHtzR/ZBApYPpc=;
 b=KbYvjMW9vtja6eFeH5BTVcyMnf2NXfE6QsaPliRSx0W55tCaGmvW+QAR
 Cn5MZB0jfHmHUcqXM0abqI71qInOst5AG3WinNY0ukKLGV6zL8ICWwDLR
 Rdb/1JLSLKneMwq8mljscy0vpAmPtwissEwZtsb3KnT4c7Pg6ygNeY10s
 luTTH5+bBBfiybIoxHJYaKiZkip9AjL8nPqdiPw3hfcCGX1ob6A3raQaC
 vIFLEkb0kYN6ajSm35beVme+WgieAdnKB1Dj/Y5t9YuHO7V8R2AzWbyxk
 pPDBa+BybnIafeaG6wMDuNkyhJ1RzKow890HSX7H5et3bENJF6YmBgCyW g==;
X-CSE-ConnectionGUID: uL3o1lAaTf6+x4dHaqwo/w==
X-CSE-MsgGUID: Ie2nUoR/QxSN0uKuZAclwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="84373776"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="84373776"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 02:29:50 -0700
X-CSE-ConnectionGUID: ncsAYmQNSbWaTPoBycntCw==
X-CSE-MsgGUID: VryN28/KQg+mHwfJaBdJ7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="241418187"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 02:29:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] Extend VRR safe window wait for VRR TG
Date: Mon, 25 May 2026 14:41:57 +0530
Message-ID: <20260525091159.564066-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: E2E6E5C8998
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently VRR safe window wait is only used for case where VRR is
active. This can be extended for platforms that always run with VRR
timing generator.

Ankit Nautiyal (2):
  drm/i915/dsb: wait one scanline before delayed-vblank DSL wait
  drm/i915/dsb: handle always_use_vrr_tg in pre_commit_is_vrr_active()

 drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

-- 
2.45.2

