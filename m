Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DD098F2E0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 17:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2140210E885;
	Thu,  3 Oct 2024 15:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260D810E170;
 Thu,  3 Oct 2024 15:44:15 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v3 00/12] drm/xe: Reduce flickering when inheriting BIOS fb.
Date: Thu,  3 Oct 2024 17:44:09 +0200
Message-ID: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
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

It turns out that xe is performing all kinds of allocations before
inheriting the BIOS fb. This is problematic as it completely overwrites
the initial FB on discrete, and on integrated causes flickering until
the original FB is restored (preserved in stolen memory).

The complete fix requires reshuffling the entire init sequence. I want to
do that, but first add some preparations. This way I don't need to resubmit
all these patches that are ready to commit each time.

Maarten Lankhorst (12):
  drm/xe/display: Handle stolen bar readout in the same way as lmem
  drm/xe: Remove double pageflip
  drm/i915/display: Use async flip when available for initial plane
    config
  drm/xe/display: Remove single wait for vblank
  drm/xe: Move suballocator init to after display init
  drm/xe: Use xe_ggtt_map_bo_unlocked for resume
  drm/xe: Add xe_ggtt_might_lock
  drm/xe: Add xe_ggtt_alloc
  drm/xe: Abstract read/write functions for GGTT PTEs
  drm/xe: Make xe_ggtt_pt_ops private
  drm/xe/display: Stop dereferencing ggtt in xe_fb_pin
  drm/xe: Move struct xe_ggtt to xe_ggtt.c

 .../drm/i915/display/skl_universal_plane.c    |  13 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  36 ++---
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  27 +---
 drivers/gpu/drm/xe/xe_bo.c                    |   2 +-
 drivers/gpu/drm/xe/xe_bo_evict.c              |   9 +-
 drivers/gpu/drm/xe/xe_device.c                |   6 +
 drivers/gpu/drm/xe/xe_ggtt.c                  | 141 +++++++++++++++++-
 drivers/gpu/drm/xe/xe_ggtt.h                  |  22 ++-
 drivers/gpu/drm/xe/xe_ggtt_types.h            |  50 +------
 drivers/gpu/drm/xe/xe_tile.c                  |  16 +-
 drivers/gpu/drm/xe/xe_tile.h                  |   1 +
 11 files changed, 218 insertions(+), 105 deletions(-)

-- 
2.45.2

