Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BEC4A9A0F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 14:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485E110E749;
	Fri,  4 Feb 2022 13:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6802210E593;
 Fri,  4 Feb 2022 13:36:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 656D8A882E;
 Fri,  4 Feb 2022 13:36:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Fri, 04 Feb 2022 13:36:32 -0000
Message-ID: <164398179239.12042.16791478579275276997@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220204100429.2049-1-christian.koenig@amd.com>
In-Reply-To: <20220204100429.2049-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_dma-buf=3A_consolidate_dma?=
 =?utf-8?q?=5Ffence_subclass_checking?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/6] dma-buf: consolidate dma_fence subclass checking
URL   : https://patchwork.freedesktop.org/series/99700/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
45d3d4ee83aa dma-buf: consolidate dma_fence subclass checking
-:117: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 84 lines checked
942f0dd6ef1f dma-buf: warn about dma_fence_array container rules v2
-:44: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
3bb498287ec8 dma-buf: Warn about dma_fence_chain container rules v2
-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
df4941cd23d4 dma-buf: warn about containers in dma_resv object
-:31: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
0dc0287ffbd9 dma-buf: add dma_fence_chain_contained helper
-:63: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
ecce7db0b390 drm/amdgpu: use dma_fence_chain_contained
-:29: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 12 lines checked


