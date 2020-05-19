Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3951D8C94
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 02:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082A66E2B6;
	Tue, 19 May 2020 00:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B10E6E2B6;
 Tue, 19 May 2020 00:52:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43639A47E1;
 Tue, 19 May 2020 00:52:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Hubbard" <jhubbard@nvidia.com>
Date: Tue, 19 May 2020 00:52:38 -0000
Message-ID: <158984955824.31236.8720001926641140651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519002124.2025955-1-jhubbard@nvidia.com>
In-Reply-To: <20200519002124.2025955-1-jhubbard@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?mm/gup=2C_drm/i915=3A_refactor_gup=5Ffast=2C_convert_to_pin=5Fu?=
 =?utf-8?b?c2VyX3BhZ2VzKCk=?=
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

Series: mm/gup, drm/i915: refactor gup_fast, convert to pin_user_pages()
URL   : https://patchwork.freedesktop.org/series/77381/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.0
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1019:47:    expected unsigned int [addressable] [usertype] ulClockParams
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1019:47:    got restricted __le32 [usertype]
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1019:47: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1028:50: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1029:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1037:47: warning: too many warnings
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:184:44: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:283:14: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:320:14: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:323:14: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:326:14: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:329:18: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:330:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:338:30: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:340:38: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:342:30: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:346:30: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:348:30: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:353:33: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:367:43: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:369:38: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:374:67: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:375:53: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:378:66: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:389:80: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:395:57: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:402:69: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:403:53: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:406:66: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:414:66: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:423:69: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:424:69: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:473:30: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:476:45: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:477:45: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:484:54: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:52:28: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:531:35: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:53:29: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:533:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:54:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:55:27: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:56:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:57:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:577:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:581:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:58:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:583:21: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:586:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:590:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:59:26: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:598:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:600:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:617:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:621:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:623:21: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:630:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:632:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:644:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:648:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:650:21: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:657:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:659:21: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:662:21: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:664:21: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:676:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:688:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:691:47: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:697:25: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:796:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:797:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:800:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:801:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:804:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:805:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:812:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:813:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:816:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:817:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:820:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:821:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:828:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:829:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:832:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:833:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:836:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:837:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:844:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:845:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:848:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:849:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:852:46: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:853:40: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:916:47: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:918:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:920:52: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:934:47: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:936:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:938:52: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:956:47: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:958:49: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:960:52: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:296:34: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:330:34: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:360:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:362:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:369:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:383:40: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:406:40: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:44:21: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:447:53: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:451:33: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:454:61: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:455:64: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:457:54: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:483:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:486:21: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:64:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:80:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:80:17: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:80:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:85:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:86:24: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:98:39: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:222:29: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:226:37: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:226:37: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:226:37: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:227:37: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:233:43: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:236:44: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:239:51: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:458:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:458:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:458:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:464:39: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:465:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:466:39: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:468:24: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:140:26:    expected unsigned long long [usertype] *chunk_array_user
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:140:26:    got void [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:140:26: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:141:41:    expected void const [noderef] <asn:1> *from
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:141:41:    got unsigned long long [usertype] *chunk_array_user
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:141:41: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:160:27:    expected struct drm_amdgpu_cs_chunk [noderef] <asn:1> **chunk_ptr
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:160:27:    got void [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:160:27: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1613:21:    expected struct drm_amdgpu_fence *fences_user
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1613:21:    got void [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1613:21: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1614:36:    expected void const [noderef] <asn:1> *from
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1614:36:    got struct drm_amdgpu_fence *fences_user
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1614:36: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:161:49:    expected void const [noderef] <asn:1> *from
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:161:49:    got struct drm_amdgpu_cs_chunk [noderef] <asn:1> **chunk_ptr
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:161:49: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1182:25: error: incompatible types in comparison expression (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1183:17: error: incompatible types in comparison expression (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1239:17: error: incompatible types in comparison expression (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29:    expected void const volatile [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:183:29: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29:    expected void const volatile [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:185:29: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21:    expected void const volatile [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:272:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21:    expected void const volatile [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:326:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21:    expected void const volatile [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:383:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21:    expected void const volatile [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:437:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21:    expected void const volatile [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:494:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21:    expected void const volatile [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:548:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21:    expected void const volatile [noderef] <asn:1> *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21: warning: cast removes address space '<asn:1>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:645:21: warning: too many warnings
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1618:65: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1623:55: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1624:50: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1625:50: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1626:56: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1628:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1629:45: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1630:51: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1631:55: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1632:57: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1634:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1635:53: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1637:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1639:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1640:46: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1644:73: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1646:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1648:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1659:73: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:260:16: error: incompatible types in comparison expression (different type sizes)
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:507:39: warning: cast removes address space '<asn:2>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:527:31: warning: cast removes address space '<asn:2>' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c:184:13: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c:203:18: warning: cast to restricted _

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
