Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5AF8AA071
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 18:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A9C113E03;
	Thu, 18 Apr 2024 16:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D88041127C2;
 Thu, 18 Apr 2024 16:55:08 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 0/5] drm/xe: More fb pinning optimizations.
Date: Thu, 18 Apr 2024 18:55:14 +0200
Message-ID: <20240418165520.88961-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

This reduces the latency of pinning framebuffers by
re-using the previous mapping, if available.

Additionally, DPT is preallocated when creating the FB, instead
of performing a bo allocation on every pin.

Maarten Lankhorst (5):
  drm/xe/display: Preparations for preallocating dpt bo
  drm/xe: Use simple xchg to cache DPT
  drm/xe: Remove safety check from __xe_ttm_stolen_io_mem_reserve_stolen
  drm/xe/display: Prevent overwriting original GGTT when taking over
    initial FB.
  drm/xe/display: Re-use display vmas when possible

 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.h   |   3 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   5 +
 drivers/gpu/drm/i915/display/intel_fbdev.h    |   9 +
 .../gpu/drm/xe/compat-i915-headers/i915_vma.h |   3 +
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 246 ++++++++++++++----
 drivers/gpu/drm/xe/display/xe_fb_pin.h        |  20 ++
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  15 +-
 drivers/gpu/drm/xe/xe_ggtt.c                  |   9 +-
 drivers/gpu/drm/xe/xe_ggtt.h                  |   3 +-
 drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c        |   4 -
 13 files changed, 254 insertions(+), 70 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h

-- 
2.43.0

