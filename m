Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3F349BC2F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 20:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF90410E3ED;
	Tue, 25 Jan 2022 19:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2C210E395;
 Tue, 25 Jan 2022 19:35:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id 4BF891F44551
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1643139351;
 bh=FtuCqIsFoMj2qZ4nRVu4HkGwgf/Wrtc2QtgAH7Zk0yQ=;
 h=From:To:Cc:Subject:Date:From;
 b=GyNNymdSGwlH+SYF4kpRdVKaePqwWuNVF+ar/oUM4ZPRQF0VDux/PgATdtydVcq9R
 5nK44B2r7pwzeGhqyFTSpF1YsvYqCDsIZBVjYUyaJNeUKovw0YZwl7WZPazZHyxT0y
 +Rxuw+3wftWVKXbpkOIaozcqgjXcYpobNvxLOBPGNJ0XGv8FKX5V6EAbD8mM0x0090
 4UHkN3DCQSFK8Z50P/ooSAQ1doAM3tZGIv20mjxIBywMD8ym4jDOA+hfRcoAGyM/KY
 3FzEAyCUnTcUk+PteaSAaVM83JcGmCtQ5Qkx2fOoVMN7jRRHxUmGJCi+xqL2NLZCnj
 W91GkkeUHwNxw==
From: Robert Beckett <bob.beckett@collabora.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Date: Tue, 25 Jan 2022 19:35:25 +0000
Message-Id: <20220125193530.3272386-1-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/5] discrete card 64K page support
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
Cc: Matthew Auld <matthew.auld@intel.com>, thomas.hellstrom@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series continues support for 64K pages for discrete cards.
It supersedes the 64K patches from https://patchwork.freedesktop.org/series/95686/#rev4
Changes since that series:

- set min alignment for DG2 to 2MB in i915_address_space_init
- replace coloring with simpler 2MB VA alignment for lmem buffers
        - enforce alignment to 2MB for lmem objects on DG2 in i915_vma_insert
        - expand vma reservation to round up to 2MB on DG2 in i915_vma_insert
- add alignment test

v2: rebase and fix for async vma that landed
v3:
	* fix uapi doc typos
	* add needs_compact_pt flag patch
	* cleanup vma expansion to use vm->min_alignment instead of hard coding
v4:
	* fix err return in igt_ppgtt_compact test
	* placate ci robot with explicit enum conversion in misaligned_pin
	* remove some blank lines
v5:
	* fix obj alignment requirements querying for internal buffers that
	  have no memory region associated. (fixes v3 bug)

Matthew Auld (3):
  drm/i915: enforce min GTT alignment for discrete cards
  drm/i915: support 64K GTT pages for discrete cards
  drm/i915/uapi: document behaviour for DG2 64K support

Ramalingam C (1):
  drm/i915: add needs_compact_pt flag

Robert Beckett (1):
  drm/i915: add gtt misalignment test

 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  60 +++++
 .../i915/gem/selftests/i915_gem_client_blt.c  |  23 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 108 ++++++++-
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  12 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  21 ++
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   1 +
 drivers/gpu/drm/i915/i915_drv.h               |  10 +-
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_vma.c               |   9 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 224 +++++++++++++++---
 include/uapi/drm/i915_drm.h                   |  44 +++-
 12 files changed, 463 insertions(+), 52 deletions(-)

-- 
2.25.1

