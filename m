Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A89B4ED4FB
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 09:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA3C10FCFB;
	Thu, 31 Mar 2022 07:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E307110FCFA;
 Thu, 31 Mar 2022 07:46:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC742AADD5;
 Thu, 31 Mar 2022 07:46:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Thu, 31 Mar 2022 07:46:56 -0000
Message-ID: <164871281686.14474.6772162235811327093@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325175251.167164-1-zhi.a.wang@intel.com>
In-Reply-To: <20220325175251.167164-1-zhi.a.wang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv7=2C1/3=5D_i915/gvt=3A_Separate_the_MMI?=
 =?utf-8?q?O_tracking_table_from_GVT-g_=28rev2=29?=
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

Series: series starting with [v7,1/3] i915/gvt: Separate the MMIO tracking table from GVT-g (rev2)
URL   : https://patchwork.freedesktop.org/series/101803/
State : failure

== Summary ==

Applying: i915/gvt: Separate the MMIO tracking table from GVT-g
Using index info to reconstruct a base tree...
A	drivers/gpu/drm/i915/intel_gvt_mmio_table.c
Falling back to patching base and 3-way merge...
CONFLICT (modify/delete): drivers/gpu/drm/i915/intel_gvt_mmio_table.c deleted in HEAD and modified in i915/gvt: Separate the MMIO tracking table from GVT-g. Version i915/gvt: Separate the MMIO tracking table from GVT-g of drivers/gpu/drm/i915/intel_gvt_mmio_table.c left in tree.
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 i915/gvt: Separate the MMIO tracking table from GVT-g
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


