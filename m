Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B87006F720B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 20:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101A110E50D;
	Thu,  4 May 2023 18:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D825210E50D;
 Thu,  4 May 2023 18:43:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0C70AA01E;
 Thu,  4 May 2023 18:43:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Thu, 04 May 2023 18:43:11 -0000
Message-ID: <168322579185.11434.4129727530908769791@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/mtl=3A_Drop_FLAT_CC?=
 =?utf-8?q?S_check?=
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

Series: series starting with [1/4] drm/i915/mtl: Drop FLAT CCS check
URL   : https://patchwork.freedesktop.org/series/117272/
State : warning

== Summary ==

Error: dim checkpatch failed
ba3e9fcba540 drm/i915/mtl: Drop FLAT CCS check
04d76f28c9fd drm/i915/mtl: Add MTL for remapping CCS FBs
332613fe637d drm/fourcc: define Intel Meteorlake related ccs modifiers
0304dff378ec drm/i915/mtl: Add handling for MTL ccs modifiers
-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/display/intel_fb.c:404:
+	if (intel_fb_is_ccs_modifier(md->modifier) &&
+	   HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)

total: 0 errors, 0 warnings, 1 checks, 116 lines checked


