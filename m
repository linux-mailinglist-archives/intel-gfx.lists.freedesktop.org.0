Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EDA857622
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:53:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C6A110E158;
	Fri, 16 Feb 2024 06:53:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="IjWnbXDi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8A2610E158
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:53:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B0DE661EB1;
 Fri, 16 Feb 2024 06:53:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18853C433F1;
 Fri, 16 Feb 2024 06:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066412;
 bh=0ouwPAOvp37tNU9HOy900jC8g2eiBovoWT/VvmXWWew=;
 h=From:To:Cc:Subject:Date:From;
 b=IjWnbXDiQdMeLIOL7ePxjxfS1PtPIsT9yTKbOxuzfl5UDqJFOyqoBlVo35021+TCP
 JIBZEp2WAMoib0goWBRNCYJS0NP7aEzZUf1WyRW16hn8K2m4lgK9eLTZpzNEuPv7yr
 KvkcH+TvpIg0bhc1dZqoEuFwitxs0XKVJKjVZcS9aye6RmbaJfpygA5Wl12V2ukn+k
 llt+hk9C7yz0NvX5W1uXcXhlw8twPetGz8VX2D2kUhY6sUgwH85nB6JurogjkgGFvl
 XbhsUzzBQvZsG/+SUiBpPmOVDGsMmuG6+arqRE8wWMLPUxnq5U7ZJZExSmaYbQkaKv
 jAjNxwWg0RNrg==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH 00/21] drm/i915: remove unused structure members
Date: Fri, 16 Feb 2024 07:53:05 +0100
Message-ID: <20240216065326.6910-1-jirislaby@kernel.org>
X-Mailer: git-send-email 2.43.1
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

Hi,

this series removes unused i915 structure members as found by
clang-struct (and manually checked by me).

Cc: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>

Jiri Slaby (SUSE) (21):
  drm/i915: remove unused intel_dvo_dev_ops hooks
  drm/i915: remove structs intel_vgpu_pipe_format and
    intel_vgpu_fb_format
  drm/i915: remove intel_dsi::{port_bits,hs}
  drm/i915: remove
    intel_gvt_gtt::{mm_alloc_page_table,mm_free_page_table}
  drm/i915: remove intel_gvt_mmio_info::{device,addr_range}
  drm/i915: remove intel_vgpu_workload::{ring_context,restore_inhibit}
  drm/i915: remove intel_vbt_panel_data::edp::initialized
  drm/i915: remove intel_guc::ads_engine_usage_size
  drm/i915: remove i915_drm_client::id
  drm/i915: remove i915_perf_stream::size_exponent
  drm/i915: remove intel_vgpu_gtt::active_ppgtt_mm_bitmap
  drm/i915: remove intel_vgpu_fence::base
  drm/i915: remove intel_vgpu_opregion::mapped
  drm/i915: remove intel_vgpu::intx_trigger
  drm/i915: remove gvt_mmio_block::device
  drm/i915: remove intel_gvt_irq_info::warned
  drm/i915: remove intel_gvt_event_info::policy
  drm/i915: remove intel_gvt_irq::pending_events
  drm/i915: remove execute_cb::signal
  drm/i915: remove i915_vma::obj_hash
  drm/i915: remove intel_memory_region_ops::flags

 .../drm/i915/display/intel_display_types.h    |  1 -
 drivers/gpu/drm/i915/display/intel_dsi.h      |  4 ---
 drivers/gpu/drm/i915/display/intel_dvo_dev.h  | 25 -------------------
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 --
 drivers/gpu/drm/i915/gvt/fb_decoder.h         | 11 --------
 drivers/gpu/drm/i915/gvt/gtt.h                |  3 ---
 drivers/gpu/drm/i915/gvt/gvt.h                |  5 ----
 drivers/gpu/drm/i915/gvt/interrupt.c          |  1 -
 drivers/gpu/drm/i915/gvt/interrupt.h          |  2 --
 drivers/gpu/drm/i915/gvt/mmio.h               |  2 --
 drivers/gpu/drm/i915/gvt/scheduler.h          |  2 --
 drivers/gpu/drm/i915/i915_drm_client.h        |  2 --
 drivers/gpu/drm/i915/i915_perf_types.h        |  1 -
 drivers/gpu/drm/i915/i915_request.c           |  1 -
 drivers/gpu/drm/i915/i915_vma_types.h         |  1 -
 drivers/gpu/drm/i915/intel_memory_region.h    |  2 --
 16 files changed, 65 deletions(-)

-- 
2.43.1

