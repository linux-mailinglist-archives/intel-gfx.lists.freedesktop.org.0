Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F61425381
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 14:55:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6548B6F45B;
	Thu,  7 Oct 2021 12:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 793E66F45B;
 Thu,  7 Oct 2021 12:55:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70A71A00C9;
 Thu,  7 Oct 2021 12:55:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 12:55:27 -0000
Message-ID: <163361132745.5188.3867968436142284623@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211006123609.2026-1-christian.koenig@amd.com>
In-Reply-To: <20211006123609.2026-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/2=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence_v3?=
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

Series: series starting with [1/2] dma-buf: add dma_resv_for_each_fence v3
URL   : https://patchwork.freedesktop.org/series/95560/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT  0x0A3
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT 0x0a3 /* 2.0 */
+ #define DP_DFP_CAPABILIT


