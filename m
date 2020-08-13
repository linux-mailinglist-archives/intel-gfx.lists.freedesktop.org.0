Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0694E24340B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 08:37:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 284C56E1D7;
	Thu, 13 Aug 2020 06:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB4776E0CF;
 Thu, 13 Aug 2020 06:37:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E530BA73C9;
 Thu, 13 Aug 2020 06:37:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Oleksandr Andrushchenko" <andr2000@gmail.com>
Date: Thu, 13 Aug 2020 06:37:15 -0000
Message-ID: <159730063591.14258.7333461453189641742@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200813062113.11030-1-andr2000@gmail.com>
In-Reply-To: <20200813062113.11030-1-andr2000@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_and_improvements_for_Xen_pvdrm_=28rev2=29?=
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

Series: Fixes and improvements for Xen pvdrm (rev2)
URL   : https://patchwork.freedesktop.org/series/80141/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
18bd08b8bf52 xen/gntdev: Fix dmabuf import with non-zero sgt offset
edc113ee2576 drm/xen-front: Fix misused IS_ERR_OR_NULL checks
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
   133  struct drm_gem_object *xen_drm_front_gem_create(struct drm_device *dev,

total: 0 errors, 1 warnings, 0 checks, 50 lines checked
8ba79afe8343 drm/xen-front: Add YUYV to supported formats
76f71f3be317 xen: Sync up with the canonical protocol definition in Xen
-:109: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#109: FILE: include/xen/interface/io/displif.h:522:
+	uint32_t data_ofs;

-:151: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#151: FILE: include/xen/interface/io/displif.h:782:
+	uint32_t buffer_sz;

-:187: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#187: FILE: include/xen/interface/io/displif.h:833:
+	uint32_t edid_sz;

-:209: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#209: FILE: include/xen/interface/io/displif.h:900:
+		uint8_t reserved1[56];

total: 0 errors, 0 warnings, 4 checks, 157 lines checked
62487e5fb7ce drm/xen-front: Pass dumb buffer data offset to the backend


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
