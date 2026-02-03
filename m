Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLi5Nga5gWm7JAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:59:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 616EED67F6
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:59:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C2410E586;
	Tue,  3 Feb 2026 08:59:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOJCnKpk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B3010E269;
 Tue,  3 Feb 2026 08:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770109187; x=1801645187;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CY78GE0cjj8Zc441jMMsOWNr61bmW2dHImvP2RQMXXE=;
 b=AOJCnKpk3/oDaEaQUCvCJS+grdN6b04tYp6DSV1RE7vJT8cO+bzV1AgJ
 4xev0vPrAlX1YDdbya62l5lAux0nKsDzpTpbJcfUc3PtZXaeFUskD6CQe
 BK5wf+X0GZDpHwumKbC1f3ujTpAiVZracvHokYE/nAP1RME7PffFIYzW8
 XuScRXDTmmMElB9OMr16zA34rH8EgXTY98Fk5RMlGIi73JY4zMYBcOvc1
 a9g1j+L0jr3JKoWkmm2LuaExtRshWfyzf+zP2KjHACcBGW1h6v6Tgmfu+
 JfUfTQKpPSjECOknKjjLQ9wl8rxz3QIXS8EPZgKWK8HDYKhO1RTzY0yYf g==;
X-CSE-ConnectionGUID: WAOASdwaSLu4WMor8poICQ==
X-CSE-MsgGUID: CkwLj/3dSveuAauSLtwTlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="88695986"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="88695986"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 00:59:47 -0800
X-CSE-ConnectionGUID: zkOTCwvAQD6uUeQm1MLZNw==
X-CSE-MsgGUID: yaMGLZwzQ+qvlYEx5dlc7g==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 03 Feb 2026 00:59:45 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com
Subject: [PATCH v3 0/1] drm/i915/display: Implement Wa_16024710867
Date: Tue,  3 Feb 2026 14:19:36 +0530
Message-ID: <20260203084937.1447834-1-mitulkumar.ajitkumar.golani@intel.com>
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
X-Rspamd-Queue-Id: 616EED67F6
X-Rspamd-Action: no action

Defeature port sync feature for xe3lpd onwards.

Mitul Golani (1):
  drm/i915/display: Implement Wa_16024710867

 drivers/gpu/drm/i915/display/intel_ddi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.48.1

