Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F8gjG4BhJmqrVgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:30:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA92065321C
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:30:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hEqMl7aT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B3A10ED74;
	Mon,  8 Jun 2026 06:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E5A810ED74;
 Mon,  8 Jun 2026 06:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780900221; x=1812436221;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fowjj0KLtFEBDohmb8i4ym/D7ypkc91SdYzeoDlOYzc=;
 b=hEqMl7aTBxiynZk1IHHWmgDRBi9YpDLnpkO2Rz4u036WFgFUhl+BezYI
 1Cv9OKAKYGlLKZyoEQWIWtDgPUzkV41QyOwKycJyItgfjaO3mqZU7DYh2
 0/qWurXBu0lcudMZVe0g9VoDXEXD4/+cPIVFbp39Ha/Qyvkwvwu8YTEIJ
 XYdsFs6LYIr0cz79vEbPHlw96JpHPHhR3j36Gj3qpSFBg+IPQDc8vtcuT
 KtkpKnxM6ovJZZtfAr611oqiVrAb0NuVvCpa3hYAzC9KUC4bYcV4uvP27
 ktqrqMXwaDEZTuE20NIiecooRhdwo49mEDgUaa57qxiKeKELnKo/Zvg7s Q==;
X-CSE-ConnectionGUID: fODzdTCvThCoc3RlA5KnRQ==
X-CSE-MsgGUID: X4o8dmZvSjKW3+SqQ4riEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="85482614"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85482614"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 23:30:21 -0700
X-CSE-ConnectionGUID: +foNFU3YTNG8The/1A6n0Q==
X-CSE-MsgGUID: Nh2DIdRxRmWKOM2p4CUk0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="269158507"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 07 Jun 2026 23:30:20 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/6]  Enable joiner cursor fast updates
Date: Mon,  8 Jun 2026 11:56:23 +0530
Message-Id: <20260608062629.820477-1-nemesa.garg@intel.com>
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA92065321C

     This series enables the cursor fast path for joiner mode
and adds the missing secondary-plane handling to keep updates
correct and synchronized.

Nemesa Garg (6):
  drm/i915/cursor: Check joiner cursor commit status
  drm/i915/cursor: Add helper to update cursor plane
  drm/i915/cursor: Handle secondary cursor state
  drm/i915/cursor: Sync joiner secondary cursor state
  drm/i915/cursor: Program secondary cursor planes
  drm/i915/cursor: Allow joiner cursor fast path update

 drivers/gpu/drm/i915/display/intel_cursor.c | 281 ++++++++++++++++----
 1 file changed, 235 insertions(+), 46 deletions(-)

-- 
2.25.1

