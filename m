Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A32D5205762
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 18:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D199E6EA07;
	Tue, 23 Jun 2020 16:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA4E26EA07;
 Tue, 23 Jun 2020 16:39:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2A4BA0BD0;
 Tue, 23 Jun 2020 16:39:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Tue, 23 Jun 2020 16:39:45 -0000
Message-ID: <159293038590.4210.7896603796650202127@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623155907.22961-1-sean@poorly.run>
In-Reply-To: <20200623155907.22961-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_Add_support_for_HDCP_1=2E4_over_MST?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST
URL   : https://patchwork.freedesktop.org/series/78749/
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
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:140:26:    got void [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:140:26: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:141:41:    expected void const [noderef] __user *from
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:141:41:    got unsigned long long [usertype] *chunk_array_user
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:141:41: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:160:27:    expected struct drm_amdgpu_cs_chunk [noderef] __user **chunk_ptr
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:160:27:    got void [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:160:27: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1613:21:    expected struct drm_amdgpu_fence *fences_user
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1613:21:    got void [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1613:21: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1614:36:    expected void const [noderef] __user *from
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1614:36:    got struct drm_amdgpu_fence *fences_user
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1614:36: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:161:49:    expected void const [noderef] __user *from
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:161:49:    got struct drm_amdgpu_cs_chunk [noderef] __user **chunk_ptr
+drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:161:49: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1256:25: error: incompatible types in comparison expression (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1257:17: error: incompatible types in comparison expression (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1313:17: error: incompatible types in comparison expression (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:138:17:    expected restricted __poll_t ( *poll )( ... )
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:138:17:    got unsigned int ( * )( ... )
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:138:17: warning: incorrect type in initializer (different base types)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:257:29: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:259:29: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:346:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:400:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:457:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:511:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:568:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:622:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:719:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:719:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:719:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:719:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:719:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:719:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:719:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:719:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:719:21: warning: too many warnings
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1618:65: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1625:55: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1626:50: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1627:50: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1628:56: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1630:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1631:45: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1632:51: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1633:55: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1634:57: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1636:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1637:53: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1639:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1641:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1642:46: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1646:73: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1648:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1650:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1661:73: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:260:16: error: incompatible types in comparison expression (different type sizes)
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:507:39: warning: cast removes address space '__iomem' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:527:31: warning: cast removes address space '__iomem' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c:184:13: warning: cast to restricted __le32

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
