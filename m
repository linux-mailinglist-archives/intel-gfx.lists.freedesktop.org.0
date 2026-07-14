Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Yg00OH9jVmp34gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 18:27:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F9A756EC9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 18:27:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=DNrQzLyS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A6A810E0B8;
	Tue, 14 Jul 2026 16:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBC8A10E089;
 Tue, 14 Jul 2026 16:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1784046457;
 bh=5ml4d6XGny5RC2V3Mlc9xfjbYPkJboY77LOEMiaYerM=;
 h=From:To:Cc:Subject:Date:From;
 b=DNrQzLySi9QgKtMaZNX1WaTUOYYNHFZyif7YL8X8H17i9TsBYGo2q2jjIe+5eeKtw
 zHg0NzvG2iRgtpBvYwOI1pRhLlq7rP6YzDUpEhH49doubOKsBHu9jKKx//XzvKkCpA
 jT6surtNo7ASvn+8Heyxuqo5cDR539hqrtSncovw7Pz+Mgg9vJYkf4/GsFuNUoi47X
 76BJ/0DSWdyRsyEY7nZ2fnS6x06AK51WApgXY0c9dicscN88EsdRqIqVy3y75Ni7K9
 ThBhRIHJtGF6uh05q6OhaijPh5Hy9++F7oPXdksgqsm2g5tgZXnvp0tCEuN0WcNlqL
 oMDa4dleJ2TDQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 0/7] drm/xe: More BIOS FB takeover fixes
Date: Tue, 14 Jul 2026 18:28:17 +0200
Message-ID: <20260714162824.2063637-1-dev@lankhorst.se>
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
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	RCPT_COUNT_THREE(0.00)[3]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 59F9A756EC9

Add some fixes for GGTT. First we allow GGTT allocations above
GUC_GGTT_TOP, but not use that area by default.

This will allow us to fully reserve the area of GGTT that is used by
the firmware allocation if it's not before ggtt->start.
This will allow us to safely perform our own allocation at the correct
place, and free the firmware allocation. Any remainder of firwmare
GGTT entries are then cleared later in xe_ggtt_init().

This separates the GGTT offset with the physical offset, and allows us
to fix a bug with MTL, where those are different.

Maarten Lankhorst (7):
  drm/xe/ggtt: Allocate the area of GGTT above GUC_GGTT_TOP.
  drm/xe/ggtt: Add xe_ggtt_insert_node_at
  drm/xe/ggtt: Add xe_ggtt_node_remove_noclear
  drm/xe/display: Reserve the original GGTT space before creating a bo
  drm/xe/display: Use the correct calculation for phys_base on
    integrated
  drm/xe/display: Remove duplicated code
  drm/xe/ggtt: Remove xe_ggtt_insert_bo_at

 drivers/gpu/drm/xe/display/xe_initial_plane.c |  49 ++++-----
 drivers/gpu/drm/xe/xe_bo.c                    |   8 +-
 drivers/gpu/drm/xe/xe_ggtt.c                  | 101 ++++++++++++------
 drivers/gpu/drm/xe/xe_ggtt.h                  |   5 +-
 4 files changed, 95 insertions(+), 68 deletions(-)

-- 
2.53.0

