Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A62E5A7C524
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 22:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC5910E335;
	Fri,  4 Apr 2025 20:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DE610E295;
 Fri,  4 Apr 2025 20:50:37 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 0/9] drm/xe: Cleanup GGTT usage outside of xe_ggtt.c
Date: Fri,  4 Apr 2025 22:50:19 +0200
Message-ID: <20250404205028.620300-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.45.2
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

This should be non-controversial. I'm changing the GGTT signature of
pte_encode_bo to pte_encode_flags, and removing the old callback after
converting the display user. This is preparation of making struct xe_ggtt
private in the future.

Hopefully passes CI now.

Maarten Lankhorst (9):
  drm/xe: Use xe_ggtt_map_bo_unlocked for resume
  drm/xe: Add xe_ggtt_might_lock
  drm/xe: Add xe_ggtt_alloc
  drm/xe/display: Remove dereferences of ggtt for tile id
  drm/xe/ggtt: Seperate flags and address in PTE encoding
  drm/xe/display: Dont poke into GGTT internals to fill a DPT
  drm/xe/display: Convert GGTT mapping to use pte_encode_flags
  drm/xe: Remove pte_encode_bo callback
  drm/xe: Implement a helper for reading out a GGTT PTE at a specified
    offset

 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  50 +++----
 drivers/gpu/drm/xe/display/xe_plane_initial.c |   6 +-
 drivers/gpu/drm/xe/xe_bo.c                    |   2 +-
 drivers/gpu/drm/xe/xe_bo_evict.c              |   4 +-
 drivers/gpu/drm/xe/xe_ggtt.c                  | 140 ++++++++++++++----
 drivers/gpu/drm/xe/xe_ggtt.h                  |  16 +-
 drivers/gpu/drm/xe/xe_ggtt_types.h            |   4 +-
 drivers/gpu/drm/xe/xe_tile.c                  |   6 +-
 8 files changed, 157 insertions(+), 71 deletions(-)

-- 
2.45.2

