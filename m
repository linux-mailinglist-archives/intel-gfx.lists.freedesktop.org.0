Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y/rXDPgnVmoR0QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 14:13:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A683B7545CB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 14:13:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HjwekEge;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F4710E013;
	Tue, 14 Jul 2026 12:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E5F10E013;
 Tue, 14 Jul 2026 12:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784031221; x=1815567221;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vG3zV5yBOegJ/brgONR/GRjZG/dWgDGsVAaeJ1NFmbk=;
 b=HjwekEgehK8X+WJHYJdOEArFIQao4pk41t6jYt96RIvo2HgsR7+zlUKH
 ZrIc7f7Z7MqAro1X7y9i+SDetgp87rAIRAAAtNTvIEpbXJhu+M/yS5nj/
 3Ye/g3CI4kvsMam3CaHXXgrQCnTHL9qNbLgARNR8YR8l+CTTG3L3V1W7o
 uEZzGkuTmA6ZITrb/s5Ims0bUjdte6vrHh2JeaQylktTzHRB+JIYxCTaS
 y845KtJOkCvX0Q02l78RUoNHj1vEhMLafY8RCpGvIZZiJsTLCEo+frDnN
 GVh/w49bEN57Uzc4PaUKvdZNW0ZslFWY+nmxpR4XKbSMxdbiqrZKrneWa Q==;
X-CSE-ConnectionGUID: wEjUpUJSQUCLuLQkD6ooWw==
X-CSE-MsgGUID: n0/k1FmiSqqiJQrdhrA22A==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88472467"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88472467"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 05:13:40 -0700
X-CSE-ConnectionGUID: V8J3Z/FETd+Rt/bK664e+A==
X-CSE-MsgGUID: Y7SnqLeRQ72ojkxzi4wesA==
X-ExtLoop1: 1
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 05:13:39 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com,
	jani.nikula@linux.intel.com
Subject: [PATCH 0/2] Add validation for DMC firmware header parsing
Date: Tue, 14 Jul 2026 17:41:44 +0530
Message-ID: <20260714121146.1415532-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A683B7545CB

The DMC firmware parser does not validate the firmware load address
stored in version 3 headers before it is used by dmc_load_program().

The firmware size conversion from dwords to bytes can overflow while
calculating the payload size.

Fix both by validating the firmware load address against the expected
range and using check_mul_overflow() for the firmware size conversion.

Dibin Moolakadan Subrahmanian (2):
  drm/i915/dmc: Add sanity check for DMC load address
  drm/i915/dmc: Prevent fw_size multiplication overflow

 drivers/gpu/drm/i915/display/intel_dmc.c      | 84 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 12 +++
 2 files changed, 85 insertions(+), 11 deletions(-)

-- 
2.43.0

