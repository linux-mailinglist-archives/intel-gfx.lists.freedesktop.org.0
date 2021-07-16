Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D99F3CB860
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 16:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A40FF6E98C;
	Fri, 16 Jul 2021 14:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 543A66E98C;
 Fri, 16 Jul 2021 14:03:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DB49A8836;
 Fri, 16 Jul 2021 14:03:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lu Baolu" <baolu.lu@linux.intel.com>
Date: Fri, 16 Jul 2021 14:03:50 -0000
Message-ID: <162644423031.12779.10270503125065655676@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210714131837.8978-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210714131837.8978-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_iommu/vt-d=3A_Disable_igfx_iommu_superpage_on_bxt/skl/glk_?=
 =?utf-8?b?KHJldjQp?=
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

Series: iommu/vt-d: Disable igfx iommu superpage on bxt/skl/glk (rev4)
URL   : https://patchwork.freedesktop.org/series/92374/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3787d58e063c iommu/vt-d: Disable superpage for Geminilake igfx
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
 DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault addr 7fa8a78000 [fault reason 05] PTE Write access is not set

total: 0 errors, 1 warnings, 0 checks, 58 lines checked
bc14bdaeb12c iommu/vt-d: Disable superpage for Broxton igfx
5ce9ceeeb766 iommu/vt-d: Disable superpage for Skylake igfx
1e0a0cb6420a drm/i915/fbc: Allow FBC + VT-d on SKL/BXT


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
