Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF22F3DD721
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 15:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CB76E161;
	Mon,  2 Aug 2021 13:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA0996E183;
 Mon,  2 Aug 2021 13:32:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2D36AA915;
 Mon,  2 Aug 2021 13:32:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Aug 2021 13:32:37 -0000
Message-ID: <162791115783.3899.10965470164376119278@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210802105957.77692-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210802105957.77692-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?locking/lockdep=2C_drm=3A_apply_new_lockdep_assert_in_drm=5Faut?=
 =?utf-8?b?aC5j?=
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

Series: locking/lockdep, drm: apply new lockdep assert in drm_auth.c
URL   : https://patchwork.freedesktop.org/series/93304/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/amd/amdgpu/amdgpu_ioc32.c:37:6: warning: symbol 'amdgpu_kms_compat_ioctl' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1137:38: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1139:51: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1145:53: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1147:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1153:51: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1154:51: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1155:50: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1156:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1157:48: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1273:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1802:9: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1811:31: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1812:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1816:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1818:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1820:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1822:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1824:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1826:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1828:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1838:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1842:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1846:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1849:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:1858:33: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2017:9: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2026:31: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2027:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2031:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2041:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2045:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2049:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2052:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2061:33: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2128:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2130:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2132:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2144:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2146:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2148:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2177:9: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2186:31: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2187:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2191:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2201:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2205:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2209:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2212:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2221:33: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2228:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2230:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2232:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2244:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2246:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:2248:9: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:370:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:378:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:412:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:460:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:518:27: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:540:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:549:36: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1037:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1060:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1062:35: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1064:36: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1132:23: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1152:35: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1237:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1240:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1246:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1249:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1255:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1257:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1259:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1261:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1263:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1289:30: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1355:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1358:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1364:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1367:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1373:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1375:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1377:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1379:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1381:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1512:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:154:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1658:23: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:167:19: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1715:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1751:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1797:27: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1803:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1811:36: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:183:14: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1847:27: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1854:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1867:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1869:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1871:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1873:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1875:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1877:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1879:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1881:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1958:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1962:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1966:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1972:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:1988:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2005:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2238:38: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2239:34: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2240:35: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2245:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2248:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2252:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2254:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2264:31: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2265:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2267:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2269:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2273:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2276:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2279:47: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2280:47: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2282:28: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2284:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2286:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c:2287:34: warning: too many warnings
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
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c:205:34:    expected unsigned short [usertype] usPixelClock
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c:205:34:    got restricted __le16 [usertype]
+drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c:205:34: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:739:14: warning: symbol 'get_highest_allowed_voltage_level' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn10/rv1_clk_mgr.c:37:6: warning: symbol 'rv1_init_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn10/rv1_clk_mgr_vbios_smu.c:102:5: warning: symbol 'rv1_vbios_smu_send_msg_with_param' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn10/rv1_clk_mgr_vbios_smu.c:123:5: warning: symbol 'rv1_vbios_smu_set_dispclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn10/rv1_clk_mgr_vbios_smu.c:146:5: warning: symbol 'rv1_vbios_smu_set_dprefclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn20/dcn20_clk_mgr.c:402:6: warning: symbol 'dcn2_enable_pme_wa' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:124:6: warning: symbol 'rn_update_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:431:6: warning: symbol 'rn_get_clk_states' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:441:6: warning: symbol 'rn_enable_pme_wa' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:448:6: warning: symbol 'rn_init_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:58:5: warning: symbol 'rn_get_active_display_cnt_wa' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr.c:90:6: warning: symbol 'rn_set_low_power_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:110:5: warning: symbol 'rn_vbios_smu_get_smu_version' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:119:5: warning: symbol 'rn_vbios_smu_set_dispclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:146:5: warning: symbol 'rn_vbios_smu_set_dprefclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:160:5: warning: symbol 'rn_vbios_smu_set_hard_min_dcfclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:175:5: warning: symbol 'rn_vbios_smu_set_min_deep_sleep_dcfclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:190:6: warning: symbol 'rn_vbios_smu_set_phyclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:198:5: warning: symbol 'rn_vbios_smu_set_dppclk' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:214:6: warning: symbol 'rn_vbios_smu_set_dcn_low_power_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:229:6: warning: symbol 'rn_vbios_smu_enable_48mhz_tmdp_refclk_pwrdwn' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:237:6: warning: symbol 'rn_vbios_smu_enable_pme_wa' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:245:5: warning: symbol 'rn_vbios_smu_is_periodic_retraining_disabled' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn21/rn_clk_mgr_vbios_smu.c:89:5: warning: symbol 'rn_vbios_smu_send_msg_with_param' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/dcn301_smu.c:91:5: warning: symbol 'dcn301_smu_send_msg_with_param' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:371:6: warning: symbol 'vg_get_clk_states' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:389:6: warning: symbol 'vg_init_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:756:43: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:92:6: warning: symbol 'vg_update_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:522:22: warning: symbol 'dcn3_fpga_funcs' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_clk_mgr.c:531:6: warning: symbol 'dcn31_clk_mgr_helper_populate_bw_params' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_clk_mgr.c:643:43: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_clk_mgr.c:69:5: warning: symbol 'dcn31_get_active_display_cnt_wa' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_smu.c:98:5: warning: symbol 'dcn31_smu_send_msg_with_param' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:1365:16: warning: symbol 'configure_lttpr_mode_transparent' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:1376:16: warning: symbol 'configure_lttpr_mode_non_transparent' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:1627:16: warning: symbol 'dpcd_configure_channel_coding' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c:1736:16: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:1156:6: warning: symbol 'dce110_disable_stream' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:1182:6: warning: symbol 'dce110_unblank_stream' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:1529:84: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:1808:6: warning: symbol 'dce110_set_safe_displaymarks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2589:6: warning: symbol 'dce110_prepare_bandwidth' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2603:6: warning: symbol 'dce110_optimize_bandwidth' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2659:84: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2886:6: warning: symbol 'dce110_set_backlight_level' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2920:6: warning: symbol 'dce110_set_abm_immediate_disable' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2933:6: warning: symbol 'dce110_set_pipe' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2999:6: warning: symbol 'dce110_hw_sequencer_construct' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:661:6: warning: symbol 'dce110_enable_stream' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c:865:16: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_i2c_hw.c:547:62: warning: dubious: x | !y
+drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_i2c_sw.c:460:62: warning: dubious: x | !y
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_dpp.c:123:6: warning: symbol 'dpp_set_gamut_remap_bypass' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_dpp_dscl.c:546:6: warning: symbol 'dpp1_dscl_set_scaler_auto_scale' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hubp.c:758:10: warning: symbol 'aperture_default_system' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hubp.c:759:10: warning: symbol 'context0_default_system' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:135:6: warning: symbol 'dcn10_log_hubbub_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1902:10: warning: symbol 'reduceSizeAndFraction' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1953:6: warning: symbol 'is_low_refresh_rate' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1962:9: warning: symbol 'get_clock_divider' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1982:5: warning: symbol 'dcn10_align_pixel_clocks' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:2274:6: warning: symbol 'dcn10_program_pte_vm' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:80:6: warning: symbol 'print_microsec' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_opp.c:351:6: warning: symbol 'opp1_program_oppbuf' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_optc.c:139:6: warning: symbol 'optc1_set_vupdate_keepout' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_optc.c:879:6: warning: symbol 'optc1_setup_manual_trigger' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_optc.c:897:6: warning: symbol 'optc1_program_manual_trigger' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:1131:16: warning: symbol 'dcn10_add_stream_to_ctx' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:113:43: warning: symbol 'dcn1_0_soc' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:319:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:319:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:320:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:320:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:321:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:321:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:322:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:322:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:346:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:346:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:350:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:350:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:414:9:   also defined here
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:414:9: warning: Initializer entry defined twice
+drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_resource.c:415:9:


