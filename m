Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VtATMxvnRGpi2woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:08:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F38816EBE87
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:08:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=b8KJNMp4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B12010EE96;
	Wed,  1 Jul 2026 10:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB6C10E347;
 Wed,  1 Jul 2026 10:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782900505; x=1814436505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qjNIa7U/DXfZpbOozs1P5eSaxzt6Yfzd23M+deEXRTY=;
 b=b8KJNMp4HlyU92VVWlmNtxo5EOXTu9I9As25ukyMhVMJofWcu2JT9xTl
 OOCURCkZAKvifJTW5O1mQ8iIShjZHRxA/aGr1TRJ6Bd0G1AJy/uXZaq/8
 vh246I5Y555f13gfdxZfe3sR6ZvvibgDkLPXKaVGKfDL7ZFMZS4MyOBVA
 QAzzCcUn/eSUnzUTfMEN9FvDza49VySN2Z7YQhMW1vzTmgmEbfbY6h04H
 eJkj3VX4jeMnUcRYT2dkTtwcM7jW6/n7CbhDPrpL5PsN1y5NlnlrnR+ER
 3u48+zwRCuyU83oPI4XZ6WOj2ZwEO+QX28bR2voMDuZY+G8BU10Y/gYJo w==;
X-CSE-ConnectionGUID: /Kmr6PBEQ+Gtl6kqMqx+dA==
X-CSE-MsgGUID: FpRjCiAVSGqHdHJ1NAi0zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83827731"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="83827731"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:08:24 -0700
X-CSE-ConnectionGUID: cd+pWPGHTXyRgm9GcrnA2A==
X-CSE-MsgGUID: WCkTeUj4RI+Qs3v5d1Ijlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="248064822"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:08:21 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
	uma.shankar@intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH v2 0/1] drm/i915/display/psr: PSR2 DC3CO fix
Date: Wed,  1 Jul 2026 15:36:49 +0530
Message-ID: <20260701100650.1689665-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F38816EBE87

On Xe3P, DC3CO entry during an active frame can leave the pipe in a
bad state and does not recover well.

Set CHICKEN_DCPR_4 bit 24 to inform DMC to block DC3CO entry.

v2:
- Add HSD number to intel_display_wa framework.

Dibin Moolakadan Subrahmanian (1):
  drm/i915/psr: Block DC3CO entry during active frame

 .../gpu/drm/i915/display/intel_display_regs.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_display_wa.c  |  2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h  |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++++++++++
 4 files changed, 22 insertions(+)

-- 
2.43.0

