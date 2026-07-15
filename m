Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZDBEM2hpV2qZMwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:05:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF1475D472
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:05:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=HfkH6af7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF92610EFC1;
	Wed, 15 Jul 2026 11:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D1610E19B;
 Wed, 15 Jul 2026 11:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1784113507;
 bh=0XmykIoDlGO0cilyqQjbKGE1v3oCBauZ9OEONLr2KUA=;
 h=From:To:Cc:Subject:Date:From;
 b=HfkH6af7/9SXa783pbp4mEKfxHqgLbyBRvcXoNx6AVYBOu1LUb3u6WPoIsuVbYVun
 VMhKpsW0v5DWSLBxti5tVpQokXIYD5NJBDSR4O+kuLpnKerFF/kIhi4YQAzdOtJiNp
 vxSfWmKhwDZehmDDi9wP5Aj9BDgowRO8uJPw4zza16Jw7q61JiSFSN2v2D1tzivhSC
 VlJ8mJ3GwQpk+xm/s2fV1RD83TYDg4crPLIvrI0iKxsRqvYac8+XRTWtJhFZOuoO27
 WAWcjP2PjrCADrLRomLmAu/EXrv2OSrgyCYiu0cW7OSYNsQELmC1SkHT20oSAyr1Ld
 XB1bDmTDCGPjQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 0/6] drm/xe: More BIOS FB takeover fixes
Date: Wed, 15 Jul 2026 13:05:51 +0200
Message-ID: <20260715110557.2172095-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:from_mime,lankhorst.se:dkim,lankhorst.se:mid];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4FF1475D472

Small change since previous version, marking the entire GGTT as allocated
was causing regressions. So instead truncate to the allowed GGTT range.

This series separates the GGTT offset with the physical offset, and allows
us to fix a bug with MTL, where those are different.

Maarten Lankhorst (6):
  drm/xe/ggtt: Add xe_ggtt_insert_node_at
  drm/xe/ggtt: Add xe_ggtt_node_remove_noclear
  drm/xe/display: Reserve the original GGTT space before creating a bo
  drm/xe/display: Use the correct calculation for phys_base on
    integrated
  drm/xe/display: Remove duplicated code
  drm/xe/ggtt: Remove xe_ggtt_insert_bo_at

 drivers/gpu/drm/xe/display/xe_initial_plane.c | 62 ++++++++------
 drivers/gpu/drm/xe/xe_bo.c                    |  8 +-
 drivers/gpu/drm/xe/xe_ggtt.c                  | 81 ++++++++++++-------
 drivers/gpu/drm/xe/xe_ggtt.h                  |  5 +-
 4 files changed, 96 insertions(+), 60 deletions(-)

-- 
2.53.0

