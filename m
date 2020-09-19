Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE661270CCC
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Sep 2020 12:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F3F6E20A;
	Sat, 19 Sep 2020 10:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A84F6E200;
 Sat, 19 Sep 2020 10:05:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B3F4A41FB;
 Sat, 19 Sep 2020 10:05:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Gleixner" <tglx@linutronix.de>
Date: Sat, 19 Sep 2020 10:05:36 -0000
Message-ID: <160050993653.25659.4909503094803284863@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200919091751.011116649@linutronix.de>
In-Reply-To: <20200919091751.011116649@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?mm/highmem=3A_Provide_a_preemptible_variant_of_kmap=5Fatomic_?=
 =?utf-8?q?=26_friends?=
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

Series: mm/highmem: Provide a preemptible variant of kmap_atomic & friends
URL   : https://patchwork.freedesktop.org/series/81869/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/amd/amdgpu/amdgpu_ioc32.c:37:6: warning: symbol 'amdgpu_kms_compat_ioctl' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/basics/conversion.c:34:10: warning: symbol 'fixed_point_to_int_frac' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/basics/conversion.c:81:6: warning: symbol 'convert_float_matrix' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/basics/vector.c:55:6: warning: symbol 'dal_vector_presized_costruct' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1010:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1478:9: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1487:31: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1488:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1492:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1494:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1496:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1498:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1500:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1502:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1504:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1514:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1518:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1522:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1525:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1534:33: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:370:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:378:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:412:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:460:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:517:27: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:539:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:548:36: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:875:38: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:877:51: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:883:53: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:885:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:891:51: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:892:51: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:893:50: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:894:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:895:48: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1036:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1059:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1061:35: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1063:36: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1130:23: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1150:35: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1234:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1237:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1243:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1246:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1252:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1254:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1256:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1258:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1260:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1286:30: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1352:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1355:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1361:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1364:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1370:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1372:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1374:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1376:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1378:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1516:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:154:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1661:23: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:167:19: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1716:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1751:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1796:27: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1802:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1810:36: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:183:14: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1846:27: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1853:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1866:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1868:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1870:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1872:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1874:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1876:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1878:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1880:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1957:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1961:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1965:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1971:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1987:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2004:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2240:38: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2241:34: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2242:35: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2247:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2250:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2254:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2256:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2266:31: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2267:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2269:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2271:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2275:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2278:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2281:47: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2282:47: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2284:28: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2286:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2288:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2289:34: warning: too many warnings
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:235:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:298:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:358:29: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:360:44: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:438:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:440:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:442:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:444:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:446:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:489:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:491:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:493:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:495:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:497:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:499:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:501:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:575:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:577:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:579:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:581:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:583:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:585:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:587:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:642:37: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:668:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:715:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:717:43: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:719:44: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:862:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:876:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c:209:34:    expected unsigned short [usertype] usPixelClock
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c:209:34:    got restricted __le16 [usertype]
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c:209:34: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:739:14: warning: symbol 'get_highest_allowed_voltage_level' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn10/rv1_clk_mgr.c:37:6: warning: symbol 'rv1_init_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn10/rv1_clk_mgr_vbios_smu.c:102:5: warning: symbol 'rv1_vbios_smu_send_msg_with_param' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn10/rv1_clk_mgr_vbios_smu.c:123:5: warning: symbol 'rv1_vbios_smu_set_dispclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn10/rv1_clk_mgr_vbios_smu.c:146:5: warning: symbol 'rv1_vbios_smu_set_dprefclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn20/dcn20_clk_mgr.c:339:6: warning: symbol 'dcn2_enable_pme_wa' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:106:6: warning: symbol 'rn_update_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:388:6: warning: symbol 'rn_get_clk_states' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:398:6: warning: symbol 'rn_enable_pme_wa' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:405:6: warning: symbol 'rn_init_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:58:5: warning: symbol 'rn_get_active_display_cnt_wa' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:97:6: warning: symbol 'rn_set_low_power_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:110:5: warning: symbol 'rn_vbios_smu_get_smu_version' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:119:5: warning: symbol 'rn_vbios_smu_set_dispclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:142:5: warning: symbol 'rn_vbios_smu_set_dprefclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:156:5: warning: symbol 'rn_vbios_smu_set_hard_min_dcfclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:171:5: warning: symbol 'rn_vbios_smu_set_min_deep_sleep_dcfclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:186:6: warning: symbol 'rn_vbios_smu_set_phyclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:194:5: warning: symbol 'rn_vbios_smu_set_dppclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:206:6: warning: symbol 'rn_vbios_smu_set_dcn_low_power_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:221:6: warning: symbol 'rn_vbios_smu_enable_48mhz_tmdp_refclk_pwrdwn' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:229:6: warning: symbol 'rn_vbios_smu_enable_pme_wa' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:237:5: warning: symbol 'rn_vbios_smu_is_periodic_retraining_disabled' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:89:5: warning: symbol 'rn_vbios_smu_send_msg_with_param' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:719:31:    int enum dce_version
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:719:31:    unsigned int enum dce_environment
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:719:31: warning: mixing different enum types:
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:777:6: warning: symbol 'apply_ctx_interdependent_lock' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_hw_sequencer.c:180:26: warning: symbol 'get_color_space_type' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:3663:19: warning: symbol 'linkRateInKHzToLinkRateMultiplier' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:4209:54:    int enum dc_status
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:4209:54:    unsigned int enum ddc_result
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:4209:54: warning: mixing different enum types:
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c:1099:5: warning: symbol 'shift_border_left_to_dst' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c:1110:6: warning: symbol 'restore_border_left_from_dst' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c:1804:16: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:1161:22: warning: symbol 'dce100_create_resource_pool' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:280:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:280:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:284:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:284:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:544:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:544:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:549:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:549:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:554:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:554:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:558:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:558:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:621:21: warning: symbol 'dce100_link_encoder_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:660:31: warning: symbol 'dce100_opp_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:675:16: warning: symbol 'dce100_aux_engine_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:713:19: warning: symbol 'dce100_i2c_hw_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:728:21: warning: symbol 'dce100_clock_source_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:752:6: warning: symbol 'dce100_clock_source_destroy' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:841:6: warning: symbol 'dce100_validate_bandwidth' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:886:16: warning: symbol 'dce100_validate_global' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:896:16: warning: symbol 'dce100_add_stream_to_ctx' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:923:16: warning: symbol 'dce100_validate_plane' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce100/dce100_resource.c:932:23: warning: symbol 'dce100_find_first_free_match_stream_enc_for_link' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c:415:6: warning: symbol 'dce110_get_required_compressed_surfacesize' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_compressor.c:459:14: warning: symbol 'controller_id_to_index' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:1454:84: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2538:84: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2700:6: warning: symbol 'dce110_set_cursor_position' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2745:6: warning: symbol 'dce110_set_cursor_attribute' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c:1008:6: warning: symbol 'dce110_free_mem_input_v' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c:1034:6: warning: symbol 'dce110_mem_input_v_construct' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c:471:6: warning: symbol 'dce_mem_input_v_is_surface_pending' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c:486:6: warning: symbol 'dce_mem_input_v_program_surface_flip_and_addr' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c:563:6: warning: symbol 'dce_mem_input_v_program_pte_vm' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c:636:6: warning: symbol 'dce_mem_input_v_program_surface_config' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c:922:6: warning: symbol 'dce_mem_input_v_program_display_marks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c:945:6: warning: symbol 'dce_mem_input_program_chroma_display_marks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.c:966:6: warning: symbol 'dce110_allocate_mem_input_v' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:1044:16: warning: symbol 'dce110_validate_plane' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:1099:16: warning: symbol 'dce110_validate_global' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:1343:28: warning: symbol 'dce110_resource_cap' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:266:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:266:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:267:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:267:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:268:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:268:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:272:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:272:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:276:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:276:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:292:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:292:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:296:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:296:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:314:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:314:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:318:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:318:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:560:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:560:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:564:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:564:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:601:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:601:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:606:17:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:606:17: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:725:16: warning: symbol 'dce110_aux_engine_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:763:19: warning: symbol 'dce110_i2c_hw_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:778:21: warning: symbol 'dce110_clock_source_create' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c:802:6: warning: symbol 'dce110_clock_source_destroy' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c:1015:16: warning: symbol 'dce112_add_stream_to_ctx' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c:1034:16:


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
