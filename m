Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1Xm9CjTUUGqH5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD6973A078
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:14:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=Us+f5d5j;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A419010F874;
	Fri, 10 Jul 2026 11:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95EEC10F86C;
 Fri, 10 Jul 2026 11:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783682095;
 bh=eVO2Dssv4lilRzs4kxcyOFA5Pth+OoAw3SkARZig7WY=;
 h=From:To:Cc:Subject:Date:From;
 b=Us+f5d5jbIcnvyZSZEdJY9pOpSclw4lM0k1nhkMnQQYaCJKouEffJhtobqovOTdlC
 45ybPFchWk8SqXGrNEfhqsQMIXFd5D73LME/CU8C4Lc3Jonu17w23z/rDCN/Pl61gJ
 1/LICfJseUAX5ywjtJfcu57PeCAwuS+0u+mCIfqu928KDErKy1eFRx2xTbbG4TqrOX
 ckjoAZjnFHLQpNWmVHEv9zmHTumdc8LKZgyrroFDvie09T+UEgv/UKdiepLTS9l1rM
 exT0isR13+7XRWs1z+xu1gTj5cVWu8WPBp6El3rroKr70dsfNcsEIgxhcBtJisRnX5
 QcLMl4ZCikoeA==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 00/11] drm/{i915,xe}: some BIOS FB takeover fixes
Date: Fri, 10 Jul 2026 13:15:27 +0200
Message-ID: <20260710111539.1274555-1-dev@lankhorst.se>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:from_mime,lankhorst.se:dkim,lankhorst.se:mid];
	RCPT_COUNT_THREE(0.00)[3]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7BD6973A078

There are some bugs related to BIOS fb takeover, and some cleanups and fixes.

All the patches here were previously posted by Ville under a similar series name,
but I've taken out 3 patches I want to rework, and my motivation for each patch:
"drm/i915: Introduce intel_bo_fbdev_bios_fb_ok()"
- It's clear that using stolen memory on integrated platforms with media gt
  is causing issues, I will modify it to copy the entire framebuffer bo into
  system memory on xe.
"drm/xe/ggtt: Decouple lmem/stolen physcial offset from GGTT offset"
- Intermingling of 2 different goals. There was a workaround in xe_bo.c
  to avoid trampling over the previously reserved GGTT area, but a better
  way to solve it is by reserving GGTT explicitly here, and allocating the
  BO  without the GGTT or map flags set initially.
"drm/xe: Use the correct stolen offset in initial FB readout"
- Depends on the previous changes to xe/ggtt

Ville Syrjälä (11):
  drm/i915: Disable the plane if initial plane config readout failed
  drm/i915/fbdev: Extract bios_fb_ok()
  drm/i915: Throw away the BIOS fb if has the wrong depth/bpp
  drm/i915: Use drm_dbg_kms() for initial FB debugs
  drm/xe: Do the initial FB size alignment earlier
  drm/xe: Print a debug message if we have no stolen for the initial FB
  drm/xe: Abstract the initial FB PTE checks a bit
  drm/xe: Check the PTE local memory bit for initial FB in stolen
  drm/xe: s/bar2/lmembar/
  drm/i915: Fix BIOS FB memory region name debug prints
  drm/i915: Print the phys_base in addition to the dma_addr for the BIOS
    FB

 drivers/gpu/drm/i915/display/intel_fbdev.c    | 35 ++++++++---
 .../drm/i915/display/intel_initial_plane.c    |  6 +-
 drivers/gpu/drm/i915/i915_initial_plane.c     | 12 ++--
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 58 ++++++++++++++-----
 drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c        | 16 ++---
 5 files changed, 87 insertions(+), 40 deletions(-)

-- 
2.53.0

