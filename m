Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F693C28E1
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 20:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CDC6E9C2;
	Fri,  9 Jul 2021 18:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3F566E97F;
 Fri,  9 Jul 2021 18:12:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D027A47DF;
 Fri,  9 Jul 2021 18:12:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 09 Jul 2021 18:12:03 -0000
Message-ID: <162585432361.9810.4716446729314009391@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210709164750.9465-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210709164750.9465-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_iommu/vt-d=3A_Disable_igfx_iommu_superpage_on_bxt/skl/glk?=
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

Series: iommu/vt-d: Disable igfx iommu superpage on bxt/skl/glk
URL   : https://patchwork.freedesktop.org/series/92374/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7da685194fc4 iommu/vt-d: Disable superpage for Geminilake igfx
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
 DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault addr 7fa8a78000 [fault reason 05] PTE Write access is not set

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
54ea2020b79a iommu/vt-d: Disable superpage for Broxton igfx
7e8975387280 iommu/vt-d: Disable superpage for Skylake igfx
4f652b23e277 drm/i915/fbc: Allow FBC + VT-d on SKL/BXT


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
