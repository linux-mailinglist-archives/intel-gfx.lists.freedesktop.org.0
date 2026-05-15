Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJ8EHFjQBmqKoAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 09:50:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0264354AD20
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 09:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A7B10F439;
	Fri, 15 May 2026 07:50:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5HdbLtK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C21B10E425;
 Fri, 15 May 2026 07:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778831445; x=1810367445;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=weYV1RuR5aCnAd7Uapv0hfkbMK68BD8np/CZE5rlEkk=;
 b=M5HdbLtKu/ldynGa+Kdu52jzaj+F/DtDMXVOkfgUpq/FMVGpZ5WirJHN
 0GpIW/b7//uPncRSIB+ZTCeeuT7qvPoucAVY+JH3Ce2tJTsN/sqvnGuBk
 zQh52ZcJEwuG1ymnFeC6MgnVNqD5KeU7PF1dgg74fxGrQExzZCQ3C6XTc
 0YXT5nYbi/6zd6liqwR6I7DyC3cFtpn8fosWR2ooqBfkSOPWrCWUd7ruJ
 V6MgjTJIx/cM08aWtKarMgBVIdTDiWpYlS7yocyel+7Z8FRy3ubPlImTT
 jZW4y8u/jTKmzybK0GVp/8ocpwOgVsNOyYN528Fsvw/DCKLAMJcKnNvd9 Q==;
X-CSE-ConnectionGUID: M4PdjafHRkOV3Yk7Q2Z8Ow==
X-CSE-MsgGUID: f78npH9qQeSCfuVF56G4Lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="90480654"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="90480654"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 00:50:44 -0700
X-CSE-ConnectionGUID: p5l8zBw/SWy6X3rv2kEqoQ==
X-CSE-MsgGUID: IpMbHwf9SauogJS/Sf+Xjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="243604211"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 00:50:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] drm/i915/psr: Refactor and extend SCL handling for VRRTG
Date: Fri, 15 May 2026 13:06:14 +0530
Message-ID: <20260515073616.2794146-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 0264354AD20
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Simplify the PSR SCL (Set Context Latency) condition logic, then extend it
to support always-on VRR timing generator where SCL can be 0.

Ankit Nautiyal (2):
  drm/i915/psr: Simplify the conditions for SCL computation
  drm/i915/psr: Allow SCL=0 on platforms with always-on VRR TG

 drivers/gpu/drm/i915/display/intel_psr.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

-- 
2.45.2

