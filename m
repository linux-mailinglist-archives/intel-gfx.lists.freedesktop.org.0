Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C45C140177
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 02:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D7B6EF3B;
	Fri, 17 Jan 2020 01:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80E456EF3A;
 Fri, 17 Jan 2020 01:33:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77860A0019;
 Fri, 17 Jan 2020 01:33:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: cpaul@redhat.com
Date: Fri, 17 Jan 2020 01:33:20 -0000
Message-ID: <157922480046.26754.3673562424441108174@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20160106072743.GV8076@phenom.ffwll.local>
In-Reply-To: <20160106072743.GV8076@phenom.ffwll.local>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_intel=5Fhpd=5Finit=28=29=3A_Fix_suspend/resume_reprobi?=
 =?utf-8?q?ng?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: intel_hpd_init(): Fix suspend/resume reprobing
URL   : https://patchwork.freedesktop.org/series/2263/
State : failure

== Summary ==

CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_hubp.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_dpp_cm.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_mpc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_opp.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_hubbub.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_mmhubbub.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_stream_encoder.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_link_encoder.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_dccg.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_vmid.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_dwb.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_dwb_scl.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_dsc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dsc/dc_dsc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dsc/rc_calc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dsc/rc_calc_dpi.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_init.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_ipp.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer_debug.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_dpp.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_opp.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_optc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hubp.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_mpc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_dpp_dscl.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_dpp_cm.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_cm_common.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hubbub.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_stream_encoder.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_link_encoder.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/display_mode_lib.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/display_rq_dlg_helpers.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_calc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml_common_defs.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/display_mode_vba.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_rq_dlg_calc_20.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_rq_dlg_calc_20v2.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v2.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_rq_dlg_calc_21.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_init.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_hubp.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_hubbub.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_hwseq.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_link_encoder.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_timing_generator.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_hw_sequencer.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_compressor.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_hw_sequencer.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_regamma_v.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_csc_v.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_timing_generator_v.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_v.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_hw_sequencer.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_timing_generator.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_hw_sequencer.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_hw_sequencer.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_sink.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_surface.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_vm_helper.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dc_dmub_srv.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/modules/freesync/freesync.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_gamma.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/modules/info_packet/info_packet.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_reg.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn20.o
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn21.o
  LD [M]  drivers/gpu/drm/amd/amdgpu/amdgpu.o
scripts/Makefile.build:503: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:503: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1693: recipe for target 'drivers' failed
make: *** [drivers] Error 2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
