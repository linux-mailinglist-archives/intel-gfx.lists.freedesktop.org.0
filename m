Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1502E6FCAF1
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 18:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A20A10E033;
	Tue,  9 May 2023 16:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0EE2010E033;
 Tue,  9 May 2023 16:14:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA55AAADE4;
 Tue,  9 May 2023 16:14:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Tue, 09 May 2023 16:14:55 -0000
Message-ID: <168364889595.14157.7958703793250801129@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230509154808.3035-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20230509154808.3035-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/fourcc=3A_define_Intel_M?=
 =?utf-8?q?eteorlake_related_ccs_modifiers?=
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

Series: series starting with [1/2] drm/fourcc: define Intel Meteorlake related ccs modifiers
URL   : https://patchwork.freedesktop.org/series/117522/
State : warning

== Summary ==

Error: dim checkpatch failed
a5f7e473fdd1 drm/fourcc: define Intel Meteorlake related ccs modifiers
43619dc33a48 drm/i915/mtl: Add handling for MTL ccs modifiers
-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/display/intel_fb.c:404:
+	if (intel_fb_is_ccs_modifier(md->modifier) &&
+	   HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)

total: 0 errors, 0 warnings, 1 checks, 116 lines checked


