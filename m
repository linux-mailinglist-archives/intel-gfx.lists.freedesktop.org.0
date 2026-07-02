Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gNDpH0kbRmpdKAsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:03:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A47476F489F
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:03:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=QQ6+Xbo0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D0BA10F1D7;
	Thu,  2 Jul 2026 08:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C92910F1A6;
 Thu,  2 Jul 2026 08:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782979393;
 bh=p8vFu5ZO38DeWmtmHerWiYppbZkyxOD03KdKcavkyNM=;
 h=From:To:Cc:Subject:Date:From;
 b=QQ6+Xbo0aUUlsMTub56+hRJGWUiGHIZjDYZc70h0qXenRG0W+EWPcOB5Z3WtVLH03
 VUI266B0M2yjx5/W72QjIOpmq3NhVu966pZ3PbV12gdva+rLevwTYay/QVxUij2PNT
 iAD1NfG4+JdXmbf0WNRW5eIz3HvKg2YBnJ3lGgW4reJ+A4LSIp5aGaB0tKwaTF7uA3
 7ElsHmGSP+wKEX08s0mvAPSWuc5j6yMxqwa76b9IicyccnyI457KA/dGg5dAef8ems
 hMCSprRPyNVHTqeOLRVA4W+NwCUIXxQM/kBo+PCYz3LD3Zf80YJahd2BeCF52rsZ4p
 Od837zuYD7M0g==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 0/4] drm/intel/display: Remove forcewake during pipe updates.
Date: Thu,  2 Jul 2026 10:03:41 +0200
Message-ID: <20260702080346.431508-1-dev@lankhorst.se>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A47476F489F

Change all calls that use the normal intel_de_read/write variants to use 
the _fw variants. This prevents taking the DMC wakelock unnecessarily
during vblank evasion. If the DMC lock would be needed there, we should
instead take it in advance when needed.

Maarten Lankhorst (4):
  drm/i915/display: Make icl_dsi_frame_update use _fw too
  drm/i915/display: Use intel_de_read/write_fw in colorops
  drm/i915/display: Use intel_de_write_fw in intel_pipe_fastset
  drm/i915/display: Make set_pipeconf use the fw variants

 drivers/gpu/drm/i915/display/icl_dsi.c       |  4 +-
 drivers/gpu/drm/i915/display/intel_cmtg.c    |  6 +--
 drivers/gpu/drm/i915/display/intel_color.c   |  6 +--
 drivers/gpu/drm/i915/display/intel_display.c | 52 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_vrr.c     | 18 +++----
 5 files changed, 44 insertions(+), 42 deletions(-)

-- 
2.53.0

