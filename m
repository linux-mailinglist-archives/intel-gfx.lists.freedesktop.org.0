Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D83935D34E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 00:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 688DF6E09A;
	Mon, 12 Apr 2021 22:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697526E09E
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 22:43:37 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Apr 2021 00:43:28 +0200
Message-Id: <20210412224330.515926-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: Fix for BSW and BXT vt-d.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's a lockdep splat that currently prevents booting on CI, fix it.

Maarten Lankhorst (2):
  drm/i915: Remove asynchronous vma binding
  drm/i915: Use trylock in shrinker for ggtt on bsw vt-d and bxt.

 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c |  13 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c   |   3 -
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c         |   1 -
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c         |   1 -
 drivers/gpu/drm/i915/gt/intel_ggtt.c         |  12 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c          |   5 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h          |   2 -
 drivers/gpu/drm/i915/i915_drv.h              |  11 +-
 drivers/gpu/drm/i915/i915_gem.c              |  21 ++-
 drivers/gpu/drm/i915/i915_vma.c              | 174 +++----------------
 drivers/gpu/drm/i915/i915_vma.h              |   5 +-
 drivers/gpu/drm/i915/i915_vma_types.h        |   3 -
 12 files changed, 61 insertions(+), 190 deletions(-)

-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
