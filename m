Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDwXK+alcWmjKwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 05:21:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9ED61AF5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 05:21:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1756110E8E9;
	Thu, 22 Jan 2026 04:21:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T03Ec/M3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82D310E06F;
 Thu, 22 Jan 2026 04:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769055714; x=1800591714;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VO9fbcC2J2ZwVeozHnLJtPzwkJMrNVRB74vsm8f1l/8=;
 b=T03Ec/M39fH2Ln495l2/vjNN1FlFQD9g9God/YKeI/LyJgNm/hUUO4wm
 KeEEOyaisBG2sDDhFOKBVr0pDQ/sD+H69mLAf7ialHaF71fdIjlvjlYUJ
 pxxAazdATvv9YcwcSqckMU8hKUEkCoe4h9ztZU4sQyuj88tbkGKcUiPJO
 /nsfSc1Xje64uqerfu5ZRIAh6jiIyLSe5qp36/vqDVWFaKFTfVlGxiff5
 hejB+/yV7IeKdQST8R5d0lLDHSRw/xOe/Bcg2JWl86ymAVa1vV6Jef8+1
 gd876Wbhi/c/ddHzB8TMhrsTTQNzapbSvuPc12f5NNKH9PWRNjsZeZGYZ A==;
X-CSE-ConnectionGUID: gOG1OEA8R9qzmNQYsoQS4w==
X-CSE-MsgGUID: KbWOlvtWQgyecFKnbM0m3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81402265"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="81402265"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 20:21:51 -0800
X-CSE-ConnectionGUID: pOwyEPitSmyRn8/F4WqZXw==
X-CSE-MsgGUID: 33l0yDgpSvuz5M2GJmgvQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="206230522"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 21 Jan 2026 20:21:50 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH v1 0/1] Implement Wa_16024710867
Date: Thu, 22 Jan 2026 09:41:32 +0530
Message-ID: <20260122041133.757072-1-mitulkumar.ajitkumar.golani@intel.com>
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
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7E9ED61AF5
X-Rspamd-Action: no action

Reject PTL+ platforms in intel_ddi_port_sync_transcoders,
As port sync feature is deprecated from PTL onwards.

Mitul Golani (1):
  drm/i915/display: Implement Wa_16024710867

 drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

-- 
2.48.1

