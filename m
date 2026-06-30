Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gt/2MdOFQ2o+aAoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:01:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A116E1DD8
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:01:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VKjN+Kmi;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED4510E034;
	Tue, 30 Jun 2026 09:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B16310E034;
 Tue, 30 Jun 2026 09:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782810058; x=1814346058;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+avYM/wWsH4PsZI2x1ZN4CN8H3NQqi0IAmdPOdmpaXA=;
 b=VKjN+KmigDvy5GNlLwxCOnFiZjO02StBjaQpDymuBybZDZUgrV7lWWQL
 EilI5bsd8qRc5HBuKb+GTy/Ud3Rdce+g82bQdwRzzpZcZoF6lkFeijyLM
 WteJuFQC+z1RdYtxScJFTSnZyWKP48m/UX8g7IJsUQF6TsCd9pVzHnK86
 8YPDUdxQHHZ5zYokBs5IJR753p3Q4X/wPVoGuMQNCQIECBa0xHKq+6EAf
 JxvUh77KfkobszT0X3Bf/p3kCmkyP3TYin5guhFXoeTwQQ6PiHa2yarKI
 MDpNUx+5pp4z5+XC/rr42YtKsdGRr5YFHHgZWOIdyQ4L3+08l9YX/iMAr A==;
X-CSE-ConnectionGUID: u4awICd/TIyYS+YQEbqGpQ==
X-CSE-MsgGUID: /uh03dlSQJCw7uuk30nwyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="94667699"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="94667699"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:00:57 -0700
X-CSE-ConnectionGUID: BEG6fspZTkmy5xUxBvvDmQ==
X-CSE-MsgGUID: NektcDJQSripIYP7YeAPbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="256603853"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:00:56 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
	uma.shankar@intel.com
Subject: [PATCH 0/1] drm/i915/display/psr: PSR2 DC3CO fix
Date: Tue, 30 Jun 2026 14:29:27 +0530
Message-ID: <20260630085928.1317279-1-dibin.moolakadan.subrahmanian@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58A116E1DD8

On Xe3P, DC3CO entry during an active frame can leave the pipe in a
bad state and does not recover well.

Set CHICKEN_DCPR_4 bit 24 to inform DMC to block DC3CO entry.

Dibin Moolakadan Subrahmanian (1):
  drm/i915/display/psr: Block DC3CO entry during active frame

 .../gpu/drm/i915/display/intel_display_regs.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++++++++++
 2 files changed, 19 insertions(+)

-- 
2.43.0

