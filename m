Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3730012DC65
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 01:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC036E26C;
	Wed,  1 Jan 2020 00:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B26496E26C;
 Wed,  1 Jan 2020 00:17:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2224A432F;
 Wed,  1 Jan 2020 00:17:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 01 Jan 2020 00:17:48 -0000
Message-ID: <157783786864.5188.7074538548556207999@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231233756.18753-1-imre.deak@intel.com>
In-Reply-To: <20191231233756.18753-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl=3A_Media_decompression_support?=
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

Series: drm/i915/tgl: Media decompression support
URL   : https://patchwork.freedesktop.org/series/71535/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
33c7be81f878 drm/i915: Add support for non-power-of-2 FB plane alignment
fdf7e1ca3344 drm/i915/tgl: Make sure a semiplanar UV plane is tile row size aligned
cdc1c53c61f4 drm/i915: Add debug message for FB plane[0].offset!=0 error
877d8123db86 drm/i915: Make sure plane dims are correct for UV CCS planes
3224c01082d0 drm/framebuffer: Format modifier for Intel Gen-12 media compression
e101ef87bf8a drm/fb: Extend format_info member arrays to handle four planes
046f9d49ca43 drm/i915/tgl: Gen-12 display can decompress surfaces compressed by the media engine
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
compressed buffers. Unlike render decompression, plane 6 and  plane 7 do not

-:128: WARNING:MISSING_BREAK: Possible switch case/default not preceded by break or fallthrough comment
#128: FILE: drivers/gpu/drm/i915/display/intel_display.c:2685:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:

total: 0 errors, 2 warnings, 0 checks, 458 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
