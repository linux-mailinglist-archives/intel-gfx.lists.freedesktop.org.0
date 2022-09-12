Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF305B5E95
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F6210E2EA;
	Mon, 12 Sep 2022 16:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0668810E2EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001685; x=1694537685;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Ba0r973n+MUyyMmnOeixfNEJRlsyaXR/7/jByZ09uc=;
 b=j5/sMLkl90VZRYrV8FwuXqHZMN2MF9J1TlkvDhD4m5YkOkk4uJUhA/Xf
 jmG0KfwwR17F7iP+xvo/KhpXAIRFMr7caAj5DhcXOW9zwhb9nkSgL+IBr
 906nbF5Uj8aJsIA8ghswDuEoXJIE/Jjw2rKLbzGp20A28hiakxTrUExyS
 cLINgz2zDg71xMdB9y4yjNaKixMnmXROGZvomeavZLOFXQ1u68CGjqSh2
 KxeDKJVKQyULOqIzuO2LWoQBYLDHhI9hCcDdQ5Q4wqO7akaOyGkD+Ao+x
 Tc4J21ouSZPD2eFBQ6K+6RksPL+nts/sCcZSOvEwH1uDCx6c9CbhHmIG9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="324152733"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="324152733"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678174216"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:22 +0300
Message-Id: <cover.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/15] drm/i915: header cleanups
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some header cleanups to reduce our interdependencies.

Here are some stats for i915, and part of the reason I keep doing this
and nagging about casual addition of includes, especially in headers.

We currently have 348 .c files and 353 .h files. 28% (98/353) of the
header files, when modified, cause the rebuild of at least 83%
(289+/348) .c files, virtually the entire driver.

For reference, a random data point v5.10, we had 282 .c files, 240 .h
files, and 33% (80/240) of the header files, when modified, caused the
rebuild of at least 81% (228+/282) .c files.

We have more files, but proportionally fewer headers cause the rebuild
of the entire driver.

The cutoff above for 83% (and 81% for v5.10) is clear by looking at the
list below; there's a steep drop in dependencies at that point.

Basically all roads lead to and from i915_drv.h. Reducing the amount of
stuff in i915_drv.h, and especially the headers it includes recursively,
help incremental builds the most.

"If you modify this header, how many .c files get rebuilt?"

drivers/gpu/drm/i915/selftests/i915_perf_selftests.h: 324
drivers/gpu/drm/i915/selftests/i915_mock_selftests.h: 324
drivers/gpu/drm/i915/selftests/i915_live_selftests.h: 324
drivers/gpu/drm/i915/i915_utils.h: 324
drivers/gpu/drm/i915/i915_selftest.h: 324
drivers/gpu/drm/i915/i915_gem.h: 319
drivers/gpu/drm/i915/i915_sw_fence.h: 315
drivers/gpu/drm/i915/i915_reg_defs.h: 314
drivers/gpu/drm/i915/intel_wakeref.h: 313
drivers/gpu/drm/i915/intel_runtime_pm.h: 313
drivers/gpu/drm/i915/i915_scatterlist.h: 313
drivers/gpu/drm/i915/i915_gem_ww.h: 313
drivers/gpu/drm/i915/intel_uncore.h: 312
drivers/gpu/drm/i915/i915_vma_resource.h: 312
drivers/gpu/drm/i915/i915_tasklet.h: 312
drivers/gpu/drm/i915/i915_scheduler_types.h: 312
drivers/gpu/drm/i915/i915_scheduler.h: 312
drivers/gpu/drm/i915/i915_request.h: 312
drivers/gpu/drm/i915/i915_priolist_types.h: 312
drivers/gpu/drm/i915/i915_pmu.h: 312
drivers/gpu/drm/i915/i915_active_types.h: 312
drivers/gpu/drm/i915/i915_active.h: 312
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h: 312
drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h: 312
drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h: 312
drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h: 312
drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h: 312
drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h: 312
drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h: 312
drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h: 312
drivers/gpu/drm/i915/gt/intel_workarounds_types.h: 312
drivers/gpu/drm/i915/gt/intel_timeline_types.h: 312
drivers/gpu/drm/i915/gt/intel_sseu.h: 312
drivers/gpu/drm/i915/gt/intel_engine_types.h: 312
drivers/gpu/drm/i915/gt/intel_context_types.h: 312
drivers/gpu/drm/i915/gem/i915_gem_context_types.h: 312
drivers/gpu/drm/i915/gem/i915_gem_object_types.h: 311
drivers/gpu/drm/i915/intel_memory_region.h: 310
drivers/gpu/drm/i915/i915_vma_types.h: 309
drivers/gpu/drm/i915/i915_params.h: 309
drivers/gpu/drm/i915/i915_gem_gtt.h: 309
drivers/gpu/drm/i915/gt/intel_reset_types.h: 309
drivers/gpu/drm/i915/gt/intel_reset.h: 309
drivers/gpu/drm/i915/gt/intel_gtt.h: 309
drivers/gpu/drm/i915/gem/i915_gem_object.h: 309
drivers/gpu/drm/i915/display/intel_frontbuffer.h: 309
drivers/gpu/drm/i915/i915_vma.h: 307
drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h: 307
drivers/gpu/drm/i915/display/intel_display.h: 307
drivers/gpu/drm/i915/intel_step.h: 302
drivers/gpu/drm/i915/intel_device_info.h: 302
drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h: 302
drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h: 302
drivers/gpu/drm/i915/gt/uc/intel_huc.h: 301
drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h: 301
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h: 301
drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h: 301
drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h: 301
drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h: 301
drivers/gpu/drm/i915/gt/uc/intel_guc_log.h: 301
drivers/gpu/drm/i915/gt/uc/intel_guc.h: 301
drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h: 301
drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h: 301
drivers/gpu/drm/i915/gt/uc/intel_uc.h: 300
drivers/gpu/drm/i915/gt/uc/intel_guc_rc.h: 300
drivers/gpu/drm/i915/gt/intel_rps_types.h: 299
drivers/gpu/drm/i915/pxp/intel_pxp_types.h: 298
drivers/gpu/drm/i915/gt/intel_rc6_types.h: 298
drivers/gpu/drm/i915/gt/intel_migrate_types.h: 298
drivers/gpu/drm/i915/gt/intel_llc_types.h: 298
drivers/gpu/drm/i915/gt/intel_hwconfig.h: 298
drivers/gpu/drm/i915/gt/intel_gt_types.h: 298
drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h: 298
drivers/gpu/drm/i915/gt/intel_gsc.h: 298
drivers/gpu/drm/i915/i915_syncmap.h: 296
drivers/gpu/drm/i915/gt/intel_timeline.h: 295
drivers/gpu/drm/i915/intel_pm_types.h: 294
drivers/gpu/drm/i915/gt/intel_workarounds.h: 294
drivers/gpu/drm/i915/gt/intel_engine.h: 294
drivers/gpu/drm/i915/display/intel_dpll_mgr.h: 294
drivers/gpu/drm/i915/display/intel_display_power.h: 294
drivers/gpu/drm/i915/gem/i915_gem_lmem.h: 290
drivers/gpu/drm/i915/intel_wopcm.h: 289
drivers/gpu/drm/i915/intel_pch.h: 289
drivers/gpu/drm/i915/i915_perf_types.h: 289
drivers/gpu/drm/i915/i915_gpu_error.h: 289
drivers/gpu/drm/i915/i915_drv.h: 289
drivers/gpu/drm/i915/i915_drm_client.h: 289
drivers/gpu/drm/i915/gt/intel_region_lmem.h: 289
drivers/gpu/drm/i915/gem/i915_gem_stolen.h: 289
drivers/gpu/drm/i915/gem/i915_gem_shrinker.h: 289
drivers/gpu/drm/i915/display/intel_opregion.h: 289
drivers/gpu/drm/i915/display/intel_gmbus.h: 289
drivers/gpu/drm/i915/display/intel_global_state.h: 289
drivers/gpu/drm/i915/display/intel_fbc.h: 289
drivers/gpu/drm/i915/display/intel_dmc.h: 289
drivers/gpu/drm/i915/display/intel_display_core.h: 289
drivers/gpu/drm/i915/display/intel_cdclk.h: 289
drivers/gpu/drm/i915/i915_reg.h: 190
drivers/gpu/drm/i915/i915_irq.h: 154
drivers/gpu/drm/i915/i915_trace.h: 145
drivers/gpu/drm/i915/gt/intel_gt.h: 94
drivers/gpu/drm/i915/display/intel_bios.h: 92
drivers/gpu/drm/i915/display/intel_display_types.h: 91
drivers/gpu/drm/i915/gt/intel_ring_types.h: 74
drivers/gpu/drm/i915/gt/intel_context.h: 69
drivers/gpu/drm/i915/display/intel_de.h: 61
drivers/gpu/drm/i915/gt/intel_engine_regs.h: 58
drivers/gpu/drm/i915/gt/intel_gt_pm.h: 55
drivers/gpu/drm/i915/gt/intel_gt_regs.h: 53
drivers/gpu/drm/i915/gem/i915_gem_context.h: 48
drivers/gpu/drm/i915/gt/intel_gpu_commands.h: 47
drivers/gpu/drm/i915/selftests/igt_flush_test.h: 44
drivers/gpu/drm/i915/gem/i915_gem_internal.h: 44
drivers/gpu/drm/i915/gt/intel_engine_pm.h: 43
drivers/gpu/drm/i915/gt/intel_ring.h: 35
drivers/gpu/drm/i915/gem/selftests/mock_context.h: 33
drivers/gpu/drm/i915/selftests/i915_random.h: 29
drivers/gpu/drm/i915/gt/intel_gt_requests.h: 29
drivers/gpu/drm/i915/gt/intel_lrc_reg.h: 28
drivers/gpu/drm/i915/display/intel_crtc.h: 28
drivers/gpu/drm/i915/selftests/igt_spinner.h: 26
drivers/gpu/drm/i915/gt/intel_engine_heartbeat.h: 25
drivers/gpu/drm/i915/gem/i915_gem_pm.h: 25
drivers/gpu/drm/i915/intel_gvt.h: 24
drivers/gpu/drm/i915/gem/i915_gem_region.h: 24
drivers/gpu/drm/i915/selftests/mock_gem_device.h: 23
drivers/gpu/drm/i915/gvt/trace.h: 23
drivers/gpu/drm/i915/display/intel_atomic.h: 23
drivers/gpu/drm/i915/selftests/mock_drm.h: 22
drivers/gpu/drm/i915/gvt/scheduler.h: 22
drivers/gpu/drm/i915/gvt/sched_policy.h: 22
drivers/gpu/drm/i915/gvt/reg.h: 22
drivers/gpu/drm/i915/gvt/page_track.h: 22
drivers/gpu/drm/i915/gvt/mmio.h: 22
drivers/gpu/drm/i915/gvt/mmio_context.h: 22
drivers/gpu/drm/i915/gvt/interrupt.h: 22
drivers/gpu/drm/i915/gvt/gvt.h: 22
drivers/gpu/drm/i915/gvt/gtt.h: 22
drivers/gpu/drm/i915/gvt/fb_decoder.h: 22
drivers/gpu/drm/i915/gvt/execlist.h: 22
drivers/gpu/drm/i915/gvt/edid.h: 22
drivers/gpu/drm/i915/gvt/dmabuf.h: 22
drivers/gpu/drm/i915/gvt/display.h: 22
drivers/gpu/drm/i915/gvt/debug.h: 22
drivers/gpu/drm/i915/gvt/cmd_parser.h: 22
drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h: 22
drivers/gpu/drm/i915/gt/intel_rps.h: 19
drivers/gpu/drm/i915/intel_pm.h: 18
drivers/gpu/drm/i915/selftests/igt_reset.h: 17
drivers/gpu/drm/i915/display/intel_dp.h: 17
drivers/gpu/drm/i915/display/intel_connector.h: 17
drivers/gpu/drm/i915/vlv_sideband_reg.h: 16
drivers/gpu/drm/i915/selftests/lib_sw_fence.h: 16
drivers/gpu/drm/i915/intel_pcode.h: 16
drivers/gpu/drm/i915/i915_vgpu.h: 16
drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.h: 16
drivers/gpu/drm/i915/display/intel_panel.h: 16
drivers/gpu/drm/i915/vlv_sideband.h: 15
drivers/gpu/drm/i915/intel_mchbar_regs.h: 15
drivers/gpu/drm/i915/gt/intel_engine_user.h: 15
drivers/gpu/drm/i915/intel_pci_config.h: 14
drivers/gpu/drm/i915/gt/intel_gt_clock_utils.h: 14
drivers/gpu/drm/i915/pxp/intel_pxp.h: 13
drivers/gpu/drm/i915/gt/intel_rc6.h: 13
drivers/gpu/drm/i915/display/skl_watermark.h: 13
drivers/gpu/drm/i915/display/intel_hotplug.h: 13
drivers/gpu/drm/i915/display/intel_fb.h: 13
drivers/gpu/drm/i915/display/intel_ddi.h: 13
drivers/gpu/drm/i915/i915_memcpy.h: 12
drivers/gpu/drm/i915/display/intel_psr.h: 12
drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.h: 11
drivers/gpu/drm/i915/i915_driver.h: 11
drivers/gpu/drm/i915/gt/intel_lrc.h: 11
drivers/gpu/drm/i915/gt/intel_gt_irq.h: 11
drivers/gpu/drm/i915/gt/intel_gt_debugfs.h: 11
drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h: 11
drivers/gpu/drm/i915/gt/intel_breadcrumbs.h: 11
drivers/gpu/drm/i915/gem/i915_gem_ioctls.h: 11
drivers/gpu/drm/i915/display/intel_pps.h: 11
drivers/gpu/drm/i915/display/intel_hdmi.h: 11
drivers/gpu/drm/i915/display/intel_backlight.h: 11
drivers/gpu/drm/i915/selftests/mock_gtt.h: 10
drivers/gpu/drm/i915/intel_region_ttm.h: 10
drivers/gpu/drm/i915/i915_pvinfo.h: 10
drivers/gpu/drm/i915/i915_file_private.h: 10
drivers/gpu/drm/i915/gt/shmem_utils.h: 10
drivers/gpu/drm/i915/gt/intel_gt_mcr.h: 10
drivers/gpu/drm/i915/gem/i915_gem_ttm.h: 10
drivers/gpu/drm/i915/display/intel_sprite.h: 10
drivers/gpu/drm/i915/display/intel_hdcp.h: 10
drivers/gpu/drm/i915/display/intel_fifo_underrun.h: 10
drivers/gpu/drm/i915/display/intel_dsi.h: 10
drivers/gpu/drm/i915/display/intel_atomic_plane.h: 10
drivers/gpu/drm/i915/selftests/igt_live_test.h: 9
drivers/gpu/drm/i915/gt/intel_migrate.h: 9
drivers/gpu/drm/i915/gem/i915_gem_mman.h: 9
drivers/gpu/drm/i915/i915_ttm_buddy_manager.h: 8
drivers/gpu/drm/i915/gem/selftests/huge_gem_object.h: 8
drivers/gpu/drm/i915/display/skl_universal_plane.h: 8
drivers/gpu/drm/i915/display/skl_scaler.h: 8
drivers/gpu/drm/i915/display/intel_snps_phy.h: 8
drivers/gpu/drm/i915/display/intel_dpll.h: 8
drivers/gpu/drm/i915/display/intel_dpio_phy.h: 8
drivers/gpu/drm/i915/display/intel_display_trace.h: 8
drivers/gpu/drm/i915/display/intel_audio.h: 8
drivers/gpu/drm/i915/selftests/mock_region.h: 7
drivers/gpu/drm/i915/i915_gem_evict.h: 7
drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h: 7
drivers/gpu/drm/i915/display/intel_vrr.h: 7
drivers/gpu/drm/i915/display/intel_tc.h: 7
drivers/gpu/drm/i915/display/intel_pch_refclk.h: 7
drivers/gpu/drm/i915/display/intel_fdi.h: 7
drivers/gpu/drm/i915/display/intel_dvo_dev.h: 7
drivers/gpu/drm/i915/display/intel_display_power_well.h: 7
drivers/gpu/drm/i915/selftests/mock_request.h: 6
drivers/gpu/drm/i915/selftests/igt_atomic.h: 6
drivers/gpu/drm/i915/pxp/intel_pxp_session.h: 6
drivers/gpu/drm/i915/i915_perf.h: 6
drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h: 6
drivers/gpu/drm/i915/gt/mock_engine.h: 6
drivers/gpu/drm/i915/gt/intel_renderstate.h: 6
drivers/gpu/drm/i915/display/vlv_dsi_regs.h: 6
drivers/gpu/drm/i915/display/intel_quirks.h: 6
drivers/gpu/drm/i915/display/intel_pch_display.h: 6
drivers/gpu/drm/i915/display/intel_lvds.h: 6
drivers/gpu/drm/i915/display/intel_drrs.h: 6
drivers/gpu/drm/i915/display/intel_dp_mst.h: 6
drivers/gpu/drm/i915/display/intel_bw.h: 6
drivers/gpu/drm/i915/selftests/librapl.h: 5
drivers/gpu/drm/i915/pxp/intel_pxp_irq.h: 5
drivers/gpu/drm/i915/i915_user_extensions.h: 5
drivers/gpu/drm/i915/i915_pci.h: 5
drivers/gpu/drm/i915/i915_deps.h: 5
drivers/gpu/drm/i915/i915_debugfs.h: 5
drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h: 5
drivers/gpu/drm/i915/gt/intel_gt_pm_irq.h: 5
drivers/gpu/drm/i915/gt/intel_execlists_submission.h: 5
drivers/gpu/drm/i915/gt/gen8_ppgtt.h: 5
drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h: 5
drivers/gpu/drm/i915/gem/i915_gem_clflush.h: 5
drivers/gpu/drm/i915/display/intel_vga.h: 5
drivers/gpu/drm/i915/display/intel_vdsc.h: 5
drivers/gpu/drm/i915/display/intel_overlay.h: 5
drivers/gpu/drm/i915/display/intel_dpt.h: 5
drivers/gpu/drm/i915/display/intel_dp_link_training.h: 5
drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h: 5
drivers/gpu/drm/i915/display/intel_combo_phy_regs.h: 5
drivers/gpu/drm/i915/display/intel_combo_phy.h: 5
drivers/gpu/drm/i915/display/intel_backlight_regs.h: 5
drivers/gpu/drm/i915/display/g4x_dp.h: 5
drivers/gpu/drm/i915/selftests/mock_uncore.h: 4
drivers/gpu/drm/i915/i915_sysfs.h: 4
drivers/gpu/drm/i915/i915_cmd_parser.h: 4
drivers/gpu/drm/i915/gt/selftest_rps.h: 4
drivers/gpu/drm/i915/gt/selftest_rc6.h: 4
drivers/gpu/drm/i915/gt/selftest_llc.h: 4
drivers/gpu/drm/i915/gt/selftest_engine.h: 4
drivers/gpu/drm/i915/gt/intel_mocs.h: 4
drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h: 4
drivers/gpu/drm/i915/gt/gen8_engine_cs.h: 4
drivers/gpu/drm/i915/gt/gen6_ppgtt.h: 4
drivers/gpu/drm/i915/gem/i915_gem_tiling.h: 4
drivers/gpu/drm/i915/display/vlv_dsi_pll.h: 4
drivers/gpu/drm/i915/display/intel_sdvo.h: 4
drivers/gpu/drm/i915/display/intel_pipe_crc.h: 4
drivers/gpu/drm/i915/display/intel_lspcon.h: 4
drivers/gpu/drm/i915/display/intel_fb_pin.h: 4
drivers/gpu/drm/i915/display/intel_fbdev.h: 4
drivers/gpu/drm/i915/display/intel_display_debugfs.h: 4
drivers/gpu/drm/i915/display/intel_crt.h: 4
drivers/gpu/drm/i915/display/intel_crtc_state_dump.h: 4
drivers/gpu/drm/i915/display/intel_color.h: 4
drivers/gpu/drm/i915/display/intel_acpi.h: 4
drivers/gpu/drm/i915/display/i9xx_plane.h: 4
drivers/gpu/drm/i915/selftests/igt_mmap.h: 3
drivers/gpu/drm/i915/pxp/intel_pxp_tee.h: 3
drivers/gpu/drm/i915/pxp/intel_pxp_pm.h: 3
drivers/gpu/drm/i915/i915_sw_fence_work.h: 3
drivers/gpu/drm/i915/i915_perf_oa_regs.h: 3
drivers/gpu/drm/i915/i915_getparam.h: 3
drivers/gpu/drm/i915/gt/selftests/mock_timeline.h: 3
drivers/gpu/drm/i915/gt/intel_sseu_debugfs.h: 3
drivers/gpu/drm/i915/gt/intel_sa_media.h: 3
drivers/gpu/drm/i915/gt/intel_llc.h: 3
drivers/gpu/drm/i915/gt/intel_gt_sysfs.h: 3
drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h: 3
drivers/gpu/drm/i915/gt/intel_ggtt_gmch.h: 3
drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.h: 3
drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.h: 3
drivers/gpu/drm/i915/gem/i915_gem_domain.h: 3
drivers/gpu/drm/i915/display/vlv_dsi_pll_regs.h: 3
drivers/gpu/drm/i915/display/vlv_dsi.h: 3
drivers/gpu/drm/i915/display/intel_tc_phy_regs.h: 3
drivers/gpu/drm/i915/display/intel_lpe_audio.h: 3
drivers/gpu/drm/i915/display/intel_hdcp_regs.h: 3
drivers/gpu/drm/i915/display/intel_dsi_vbt.h: 3
drivers/gpu/drm/i915/display/intel_dsb.h: 3
drivers/gpu/drm/i915/display/intel_dp_hdcp.h: 3
drivers/gpu/drm/i915/display/intel_dp_aux.h: 3
drivers/gpu/drm/i915/display/intel_dmc_regs.h: 3
drivers/gpu/drm/i915/display/intel_display_power_map.h: 3
drivers/gpu/drm/i915/display/intel_audio_regs.h: 3
drivers/gpu/drm/i915/display/icl_dsi.h: 3
drivers/gpu/drm/i915/display/hsw_ips.h: 3
drivers/gpu/drm/i915/vlv_suspend.h: 2
drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h: 2
drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h: 2
drivers/gpu/drm/i915/intel_sbi.h: 2
drivers/gpu/drm/i915/intel_dram.h: 2
drivers/gpu/drm/i915/i915_switcheroo.h: 2
drivers/gpu/drm/i915/i915_suspend.h: 2
drivers/gpu/drm/i915/i915_query.h: 2
drivers/gpu/drm/i915/i915_mm.h: 2
drivers/gpu/drm/i915/i915_mitigations.h: 2
drivers/gpu/drm/i915/i915_iosf_mbi.h: 2
drivers/gpu/drm/i915/i915_ioctl.h: 2
drivers/gpu/drm/i915/i915_ioc32.h: 2
drivers/gpu/drm/i915/i915_debugfs_params.h: 2
drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.h: 2
drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.h: 2
drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.h: 2
drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.h: 2
drivers/gpu/drm/i915/gt/sysfs_engines.h: 2
drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.h: 2
drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.h: 2
drivers/gpu/drm/i915/gt/gen7_renderclear.h: 2
drivers/gpu/drm/i915/gt/gen6_engine_cs.h: 2
drivers/gpu/drm/i915/gt/gen2_engine_cs.h: 2
drivers/gpu/drm/i915/gem/selftests/mock_gem_object.h: 2
drivers/gpu/drm/i915/gem/i915_gem_userptr.h: 2
drivers/gpu/drm/i915/gem/i915_gemfs.h: 2
drivers/gpu/drm/i915/gem/i915_gem_create.h: 2
drivers/gpu/drm/i915/display/intel_vbt_defs.h: 2
drivers/gpu/drm/i915/display/intel_tv.h: 2
drivers/gpu/drm/i915/display/intel_qp_tables.h: 2
drivers/gpu/drm/i915/display/intel_plane_initial.h: 2
drivers/gpu/drm/i915/display/intel_modeset_verify.h: 2
drivers/gpu/drm/i915/display/intel_modeset_setup.h: 2
drivers/gpu/drm/i915/display/intel_gmbus_regs.h: 2
drivers/gpu/drm/i915/display/intel_dvo.h: 2
drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.h: 2
drivers/gpu/drm/i915/display/intel_dp_aux_backlight.h: 2
drivers/gpu/drm/i915/display/intel_cursor.h: 2
drivers/gpu/drm/i915/display/icl_dsi_regs.h: 2
drivers/gpu/drm/i915/display/g4x_hdmi.h: 2
drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h: 1
drivers/gpu/drm/i915/i915_fixed.h: 1
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h: 1
drivers/gpu/drm/i915/gt/intel_engine_stats.h: 1
drivers/gpu/drm/i915/gt/intel_context_param.h: 1
drivers/gpu/drm/i915/display/intel_snps_phy_regs.h: 1
drivers/gpu/drm/i915/display/intel_sdvo_regs.h: 1


Jani Nikula (15):
  drm/i915/gmbus: move GPIO enum to gmbus
  drm/i915: reduce includes in intel_connector.h
  drm/i915: reduce includes in intel_fifo_underrun.h
  drm/i915: un-inline icl_hdr_plane_mask() to simplify includes
  drm/i915/dpio: un-inline the vlv phy/channel mapping functions
  drm/i915/dpio: move dpio_channel and dpio_phy enums to
    intel_dpio_phy.h
  drm/i915: reduce includes in intel_display_power.h
  drm/i915/display: reduce the includes in intel_dvo_dev.h
  drm/i915/display: reduce includes in intel_hdmi.h
  drm/i915/display: reduce includes in g4x_dp.h includes
  drm/i915/irq: make gen2_irq_init()/gen2_irq_reset() static
  drm/i915/reg: move masked field helpers to i915_reg_defs.h
  drm/i915/reg: move pick even and pick to reg defs
  drm/i915: split out intel_display_reg_defs.h
  drm/i915: stop including i915_irq.h from i915_trace.h

 drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
 drivers/gpu/drm/i915/display/g4x_dp.h         |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
 drivers/gpu/drm/i915/display/icl_dsi_regs.h   |  2 +-
 .../gpu/drm/i915/display/intel_audio_regs.h   |  2 +-
 .../gpu/drm/i915/display/intel_backlight.c    |  1 +
 .../drm/i915/display/intel_backlight_regs.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  1 +
 drivers/gpu/drm/i915/display/intel_color.c    |  1 +
 .../gpu/drm/i915/display/intel_combo_phy.c    |  1 +
 .../gpu/drm/i915/display/intel_connector.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +
 drivers/gpu/drm/i915/display/intel_display.h  | 29 --------
 .../drm/i915/display/intel_display_debugfs.c  |  2 +
 .../drm/i915/display/intel_display_power.h    |  3 +-
 .../i915/display/intel_display_power_well.h   |  2 +-
 .../drm/i915/display/intel_display_reg_defs.h | 53 ++++++++++++++
 .../drm/i915/display/intel_display_types.h    | 45 ------------
 drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 43 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dpio_phy.h | 19 ++++-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  1 +
 drivers/gpu/drm/i915/display/intel_drrs.c     |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dvo_dev.h  |  8 +--
 drivers/gpu/drm/i915/display/intel_fdi.c      |  1 +
 .../drm/i915/display/intel_fifo_underrun.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 22 +++++-
 .../gpu/drm/i915/display/intel_hdcp_regs.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  1 +
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  8 +--
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  2 +
 drivers/gpu/drm/i915/display/intel_lspcon.c   |  1 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 .../drm/i915/display/intel_modeset_setup.c    |  1 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
 .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
 .../drm/i915/display/intel_snps_phy_regs.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  1 +
 drivers/gpu/drm/i915/display/intel_sprite.h   |  9 +--
 .../gpu/drm/i915/display/intel_tc_phy_regs.h  |  2 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |  2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  1 +
 drivers/gpu/drm/i915/display/intel_vga.c      |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  1 +
 drivers/gpu/drm/i915/display/skl_scaler.c     |  2 +
 .../drm/i915/display/skl_universal_plane.c    |  7 ++
 .../drm/i915/display/skl_universal_plane.h    |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h   |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +
 .../drm/i915/gt/intel_execlists_submission.c  |  1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
 drivers/gpu/drm/i915/gvt/display.c            |  2 +
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/gvt/mmio.c               |  1 +
 drivers/gpu/drm/i915/gvt/mmio_context.c       |  1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  1 +
 drivers/gpu/drm/i915/i915_irq.c               | 10 +--
 drivers/gpu/drm/i915/i915_irq.h               |  9 ---
 drivers/gpu/drm/i915/i915_perf.c              |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 70 +------------------
 drivers/gpu/drm/i915/i915_reg_defs.h          | 30 +++++++-
 drivers/gpu/drm/i915/i915_trace.h             |  1 -
 drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 drivers/gpu/drm/i915/intel_uncore.c           |  1 +
 drivers/gpu/drm/i915/vlv_sideband.c           |  2 +
 93 files changed, 280 insertions(+), 195 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reg_defs.h

-- 
2.34.1

