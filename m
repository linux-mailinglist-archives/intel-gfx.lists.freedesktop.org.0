Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CIIJC64gWm7JAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:56:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C8FD6783
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:56:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2317E10E147;
	Tue,  3 Feb 2026 08:56:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CHXQgAaj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC3110E147;
 Tue,  3 Feb 2026 08:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770108970; x=1801644970;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kcut6guFr00zsxykUjDT8Mj0PjupNBwTMjpR79v/ePQ=;
 b=CHXQgAajKCviw5evzMTri5gnvQbkLVYdZmSznToBDSzdYzO1pESdh2Xi
 i3+5/u0gOOLHe/VgEb14mnDzl2FWjdEFUQ3GUkmz8b2MoXJZGd/42Aypf
 KnI5PrkmU6JntimT4I9zFOdBtEPm4d26+fJNlWH4AP6+li/Livkz0YNHF
 PK5Erc4KMALVFtQk5pLJIA2ldI0dchTtiSG3ZfZTVSaOddcKJUzKYQTMJ
 f3OWfxNCkzYa2s856S1fKIHQhd2UfK/PSyukrb3UqtLh2cs8X60R/2auU
 2NIjLqbB0quFu1GFpgNMEdxHkgcxUxpF/gslQCqxiYHT9LQo6auY6ZUPH w==;
X-CSE-ConnectionGUID: x/pPXwfXSby/tbjqMOFFJQ==
X-CSE-MsgGUID: WkC4JcZRSfKXpaUg2GV0rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75131566"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75131566"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 00:56:07 -0800
X-CSE-ConnectionGUID: b/lWsNdbRbefnk+h8FV96w==
X-CSE-MsgGUID: 3R+kbWvFRkagYQpkpUTH2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208888152"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 00:56:07 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com
Subject: [PATCH v3 0/1] drm/i915/display: Implement Wa_16024710867
Date: Tue,  3 Feb 2026 14:15:56 +0530
Message-ID: <20260203084557.1447691-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 21C8FD6783
X-Rspamd-Action: no action

Defeature port sync feature for xe3lpd onwards.

Mitul Golani (1):
  drm/i915/display: Implement Wa_16024710867

 drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

-- 
2.48.1

