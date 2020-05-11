Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD43E1CD913
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 13:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182F76E445;
	Mon, 11 May 2020 11:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E25D6E445;
 Mon, 11 May 2020 11:56:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 88D32A0091;
 Mon, 11 May 2020 11:56:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 11 May 2020 11:56:47 -0000
Message-ID: <158919820755.13116.1299306644551783187@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2ht?=
 =?utf-8?q?em_helper_untangling?=
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

Series: shmem helper untangling
URL   : https://patchwork.freedesktop.org/series/77146/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8462 -> Patchwork_17623
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17623/index.html


Changes
-------

  No changes found


Participating hosts (47 -> 43)
------------------------------

  Additional (2): fi-skl-guc fi-kbl-7560u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8462 -> Patchwork_17623

  CI-20190529: 20190529
  CI_DRM_8462: f15508df0c2c0ab81c181457603f83ccc4ddf866 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5644: 16f067ae42a6a93b8f0c5835210e2575a883001b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17623: fa97485c10800c7a650aaa69c7f754b8e4b162c1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fa97485c1080 drm/shmem-helpers: Simplify dma-buf importing
1ba534889eed drm/shmem-helpers: Ensure get_pages is not called on imported dma-buf
ea34b12d5b36 drm/shmem-helpers: Redirect mmap for imported dma-buf
9fb258f570b0 drm/shmem-helpers: Don't call get/put_pages on imported dma-buf in vmap
11556760a00c drm/udl: Don't call get/put_pages on imported dma-buf
e6bf106a5bea drm/virtio: Call the right shmem helpers
7697f211fde7 drm/doc: Some polish for shmem helpers
939923110257 drm/gem: WARN if drm_gem_get_pages is called on a private obj
28f8f1b12090 drm/msm: Don't call dma_buf_vunmap without _vmap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17623/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
