Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E216A9E7866
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 19:59:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790F710F171;
	Fri,  6 Dec 2024 18:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD92710F171;
 Fri,  6 Dec 2024 18:59:22 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 0/5] drm/xe/display: Rework display init for reducing
 flickering.
Date: Fri,  6 Dec 2024 19:59:51 +0100
Message-ID: <20241206185956.3290-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.45.2
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

I have rebased the previous series and took out the GuC parts. This makes it a lot easier to review missing parts,
and not be dependent on GuC loading changes for merging.

Maarten Lankhorst (5):
  drm/xe/display: Add intel_plane_initial_vblank_wait
  drm/xe: Remove double pageflip
  drm/xe: Move suballocator init to after display init
  drm/xe: Defer irq init until after xe_display_init_noaccel
  drm/xe/display: Use a single early init call for display

 drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
 .../drm/i915/display/intel_plane_initial.c    |  7 +-
 .../drm/i915/display/intel_plane_initial.h    |  2 +
 drivers/gpu/drm/xe/display/xe_display.c       | 71 +++++--------------
 drivers/gpu/drm/xe/display/xe_display.h       |  8 +--
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 29 +++++---
 drivers/gpu/drm/xe/xe_device.c                | 28 +++-----
 drivers/gpu/drm/xe/xe_tile.c                  | 19 +++--
 drivers/gpu/drm/xe/xe_tile.h                  |  1 +
 9 files changed, 77 insertions(+), 94 deletions(-)

-- 
2.45.2

