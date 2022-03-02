Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B6E4C9AB8
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 02:51:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC2B610E1A6;
	Wed,  2 Mar 2022 01:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B86B410E1A6;
 Wed,  2 Mar 2022 01:51:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5C67A00FD;
 Wed,  2 Mar 2022 01:51:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Wed, 02 Mar 2022 01:51:30 -0000
Message-ID: <164618589072.11316.9871227653032863839@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220301215334.20543-1-ramalingam.c@intel.com>
In-Reply-To: <20220301215334.20543-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ttm=3A_Evict_and_store_of_compressed_object_=28rev?=
 =?utf-8?q?2=29?=
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

Series: drm/i915/ttm: Evict and store of compressed object (rev2)
URL   : https://patchwork.freedesktop.org/series/99759/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9108a19bd675 drm/i915/gt: Clear compress metadata for Xe_HP platforms
03b09cc7472c drm/ttm: parameter to add extra pages into ttm_tt
-:88: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#88: FILE: drivers/gpu/drm/ttm/ttm_tt.c:150:
+		uint32_t page_flags, enum ttm_caching caching,

-:135: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#135: FILE: include/drm/ttm/ttm_tt.h:151:
+		uint32_t page_flags, enum ttm_caching caching,

total: 0 errors, 0 warnings, 2 checks, 88 lines checked
6ff06596f9c2 drm/i915/gem: Extra pages in ttm_tt for ccs data
6b1bfebe31ca drm/i915/migrate: Evict and restore the flatccs capable lmem obj


