Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F483F5020
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 20:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2034E89ABA;
	Mon, 23 Aug 2021 18:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BC7489ABA;
 Mon, 23 Aug 2021 18:10:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73A71A73C7;
 Mon, 23 Aug 2021 18:10:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Aug 2021 18:10:30 -0000
Message-ID: <162974223045.1911.16858171803808183209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210823171437.829404-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210823171437.829404-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm=3A_update_locking_for_modesetting_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: update locking for modesetting (rev2)
URL   : https://patchwork.freedesktop.org/series/93864/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:1365:16: warning: symbol 'configure_lttpr_mode_transparent' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:1376:16: warning: symbol 'configure_lttpr_mode_non_transparent' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:1627:16: warning: symbol 'dpcd_configure_channel_coding' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c:1741:16: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:135:6: warning: symbol 'dcn10_log_hubbub_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1902:10: warning: symbol 'reduceSizeAndFraction' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1953:6: warning: symbol 'is_low_refresh_rate' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1962:9: warning: symbol 'get_clock_divider' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1982:5: warning: symbol 'dcn10_align_pixel_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:2274:6: warning: symbol 'dcn10_program_pte_vm' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:80:6: warning: symbol 'print_microsec' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_dsc.c:49:24: warning: symbol 'dcn20_dsc_funcs' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_hwseq.c:1080:6: warning: symbol 'dcn20_enable_plane' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:1391:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:1391:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:678:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:678:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:679:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:679:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:680:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:680:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:681:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:681:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:682:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:682:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:683:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:683:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:687:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:687:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:692:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:692:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:776:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:776:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:777:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:777:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:778:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:778:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:779:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:779:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:780:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:780:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:781:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:781:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:785:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:785:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:790:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:790:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:859:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:859:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:860:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:860:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:861:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:861:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:862:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:862:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:863:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:863:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:864:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:864:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:868:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:868:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:872:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:872:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:890:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:890:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:894:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:894:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:942:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:942:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:94:30: warning: symbol 'dcn2_0_ip' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:946:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:946:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:992:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:992:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:996:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:996:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1096:6: warning: symbol 'dcn21_calculate_wm' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1393:6: warning: symbol 'dcn21_validate_bandwidth' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1483:31: warning: symbol 'dcn21_opp_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1499:25: warning: symbol 'dcn21_timing_generator_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1521:12: warning: symbol 'dcn21_mpc_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1548:34: warning: symbol 'dcn21_dsc_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:166:37: warning: symbol 'dcn2_1_soc' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1686:23: warning: symbol 'dcn21_stream_encoder_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1704:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1704:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1767:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1767:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1768:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1768:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1769:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1769:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1770:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1770:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1771:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1771:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1813:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1813:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1818:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1818:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1920:16: warning: symbol 'dcn21_patch_unknown_plane_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:487:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:487:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:488:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:488:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:489:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:489:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:490:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:490:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:494:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:494:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:498:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:498:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:538:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:538:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:542:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:542:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:605:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:605:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:609:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:609:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:661:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:661:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:662:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:662:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:663:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:663:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:664:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:664:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:668:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:668:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:673:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:673:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:691:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:691:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:695:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:695:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:787:19: warning: symbol 'dcn21_i2c_hw_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:95:30: warning: symbol 'dcn2_1_ip' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1009:15: warning: symbol 'dcn301_hubbub_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1040:25: warning: symbol 'dcn301_timing_generator_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1074:21: warning: symbol 'dcn301_link_encoder_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1095:19: warning: symbol 'dcn301_panel_cntl_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1177:23: warning: symbol 'dcn301_stream_encoder_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1209:18: warning: symbol 'dcn301_hwseq_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1358:13: warning: symbol 'dcn301_hubp_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1377:6: warning: symbol 'dcn301_dwbc_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1402:6: warning: symbol 'dcn301_mmhubbub_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:168:37: warning: symbol 'dcn3_01_soc' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:484:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:484:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:485:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:485:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:486:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:486:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:487:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:487:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:533:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:533:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:537:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:537:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:541:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:541:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:542:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:542:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:543:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:543:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:544:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:544:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:548:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:548:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:553:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:553:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:581:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:581:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:582:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:582:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:583:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:583:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:584:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:584:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:588:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:588:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:592:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:592:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:676:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:676:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:680:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:680:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:688:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:689:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:711:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:711:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:712:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:712:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:713:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:713:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:714:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:714:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:738:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:738:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:742:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:742:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:746:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:746:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:770:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:770:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:897:6: warning: symbol 'dcn301_dpp_destroy' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:903:12: warning: symbol 'dcn301_dpp_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:921:31: warning: symbol 'dcn301_opp_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:937:16: warning: symbol 'dcn301_aux_engine_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:94:30: warning: symbol 'dcn3_01_ip' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:973:19: warning: symbol 'dcn301_i2c_hw_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:153:37: warning: symbol 'dcn3_02_soc' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:511:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:511:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:512:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:512:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:513:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:513:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:514:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:514:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:515:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:515:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:591:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:591:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:627:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:627:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:631:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:631:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:653:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:653:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:654:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:654:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:655:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:655:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:656:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:656:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:657:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:657:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:661:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:661:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:665:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:665:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:719:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:719:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:720:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:720:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:721:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:721:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:722:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:722:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:723:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:723:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:74:30: warning: symbol 'dcn3_02_ip' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:759:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:760:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:803:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:803:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:807:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:807:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:910:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:910:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:914:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:914:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:981:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:981:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn302/dcn302_resource.c:982:17:   also defined here
+d


