Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AB82537E6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 21:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28E526EAAF;
	Wed, 26 Aug 2020 19:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC4086EA99;
 Wed, 26 Aug 2020 19:09:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8756A41FB;
 Wed, 26 Aug 2020 19:09:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 26 Aug 2020 19:09:29 -0000
Message-ID: <159846896988.21253.4524420427281045244@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200826182456.322681-1-lyude@redhat.com>
In-Reply-To: <20200826182456.322681-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/dp=2C_i915=2C_nouveau=3A_Cleanup_nouveau_HPD_and_add_DP_fea?=
 =?utf-8?q?tures_from_i915_=28rev7=29?=
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

Series: drm/dp, i915, nouveau: Cleanup nouveau HPD and add DP features from i915 (rev7)
URL   : https://patchwork.freedesktop.org/series/80542/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
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
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:328:34: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:365:34: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:395:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:397:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:404:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:418:40: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:441:40: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:44:21: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:482:53: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:486:33: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:489:61: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:490:64: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:492:54: warning: cast to restricted __le16
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:518:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:521:21: warning: cast to restricted __le32
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
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1357:25: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1357:25:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1357:25:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1358:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1358:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1358:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:138:17:    expected restricted __poll_t ( *poll )( ... )
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:138:17:    got unsigned int ( * )( ... )
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:138:17: warning: incorrect type in initializer (different base types)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1417:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1417:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1417:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21:    expected void const volatile [noderef] __user *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21:    got unsigned int [usertype] *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes address space '__user' of expression
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: too many warnings
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1666:65: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1674:55: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1675:50: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1676:50: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1677:56: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1679:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1680:45: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1681:51: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1682:55: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1683:57: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1685:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1686:53: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1688:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1690:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1691:46: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1695:73: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1697:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1699:33: warning: cast to restricted __le32
+drivers/gpu/drm/amd/


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
