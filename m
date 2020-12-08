Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 845732D305C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 17:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD9C16E029;
	Tue,  8 Dec 2020 16:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC2C66E029;
 Tue,  8 Dec 2020 16:58:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B529DA00E6;
 Tue,  8 Dec 2020 16:58:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 08 Dec 2020 16:58:38 -0000
Message-ID: <160744671873.9599.12503912067670078400@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1607429866.git.jani.nikula@intel.com>
In-Reply-To: <cover.1607429866.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/dsc=2C_drm/dp=2C_and_/drm/i915=3A_rc_model_size_updates?=
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

Series: drm/dsc, drm/dp, and /drm/i915: rc model size updates
URL   : https://patchwork.freedesktop.org/series/84685/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_dsc.c:49:24: warning: symbol 'dcn20_dsc_funcs' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_hwseq.c:1074:6: warning: symbol 'dcn20_enable_plane' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_hwseq.c:2236:6: warning: symbol 'dcn20_get_mpctree_visual_confirm_color' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_hwseq.c:2572:1: warning: no newline at end of file
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:1389:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:1389:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3620:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3622:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3624:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3626:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3628:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3630:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3632:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3634:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3636:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3638:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3640:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3642:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3644:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3646:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3648:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3650:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3652:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3654:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3656:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3658:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3660:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3662:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3664:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3666:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3668:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3670:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3672:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3674:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3676:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3678:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3680:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3684:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3686:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3688:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3690:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3692:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3694:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3696:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3700:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3702:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3704:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3706:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3708:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3710:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3712:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3714:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:3716:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:676:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:676:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:677:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:677:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:678:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:678:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:679:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:679:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:680:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:680:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:681:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:681:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:685:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:685:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:690:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:690:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:774:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:774:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:775:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:775:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:776:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:776:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:777:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:777:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:778:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:778:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:779:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:779:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:783:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:783:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:788:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:788:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:857:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:857:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:858:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:858:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:859:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:859:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:860:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:860:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:861:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:861:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:862:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:862:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:866:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:866:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:870:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:870:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:888:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:888:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:892:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:892:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:92:30: warning: symbol 'dcn2_0_ip' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:940:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:940:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:944:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:944:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:990:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:990:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:994:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:994:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1091:6: warning: symbol 'dcn21_calculate_wm' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1308:6: warning: symbol 'dcn21_validate_bandwidth' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1442:31: warning: symbol 'dcn21_opp_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1458:25: warning: symbol 'dcn21_timing_generator_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1480:12: warning: symbol 'dcn21_mpc_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1507:34: warning: symbol 'dcn21_dsc_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1640:23: warning: symbol 'dcn21_stream_encoder_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:164:37: warning: symbol 'dcn2_1_soc' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1658:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1658:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1721:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1721:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1722:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1722:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1723:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1723:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1724:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1724:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1725:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1725:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1767:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1767:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1772:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1772:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:1871:16: warning: symbol 'dcn21_patch_unknown_plane_state' was not declared. Should it be static?
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
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:784:19: warning: symbol 'dcn21_i2c_hw_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:94:30: warning: symbol 'dcn2_1_ip' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1030:21: warning: symbol 'dcn301_link_encoder_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1051:19: warning: symbol 'dcn301_panel_cntl_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1133:23: warning: symbol 'dcn301_stream_encoder_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1165:18: warning: symbol 'dcn301_hwseq_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1319:13: warning: symbol 'dcn301_hubp_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1338:6: warning: symbol 'dcn301_dwbc_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1363:6: warning: symbol 'dcn301_mmhubbub_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1471:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1473:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1475:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1477:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1479:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1481:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1483:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1485:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1487:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1489:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1491:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1493:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1495:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1497:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1499:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1501:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1503:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1505:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1507:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1509:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1511:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1513:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1515:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1517:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1519:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1521:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1523:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1525:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1527:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1529:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1531:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1533:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1535:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1537:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1539:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1541:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1543:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1545:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1549:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1551:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1553:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1555:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1557:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1559:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1561:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1563:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1565:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:165:37: warning: symbol 'dcn3_01_soc' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:447:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:447:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:448:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:448:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:449:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:449:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:450:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:450:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:493:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:493:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:497:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:497:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:508:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:508:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:512:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:512:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:539:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:539:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:540:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:540:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:541:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:541:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:542:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:542:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:546:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:546:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:550:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:550:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:634:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:634:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:638:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:638:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:646:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:647:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:669:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:669:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:670:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:670:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:671:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:671:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
