Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C786E7FA890
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 19:06:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2996F10E3BE;
	Mon, 27 Nov 2023 18:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 88C1B10E3BE;
 Mon, 27 Nov 2023 18:06:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 829C5A0093;
 Mon, 27 Nov 2023 18:06:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 27 Nov 2023 18:06:27 -0000
Message-ID: <170110838750.3004.2325355333632339582@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231127145437.15060-1-christian.koenig@amd.com>
In-Reply-To: <20231127145437.15060-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/ttm=3A_replace_busy_plac?=
 =?utf-8?q?ement_with_flags_v3?=
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

Series: series starting with [1/2] drm/ttm: replace busy placement with flags v3
URL   : https://patchwork.freedesktop.org/series/126927/
State : warning

== Summary ==

Error: dim checkpatch failed
85c35bbb3061 drm/ttm: replace busy placement with flags v3
-:297: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int *' to bare use of 'unsigned *'
#297: FILE: drivers/gpu/drm/nouveau/nouveau_bo.c:441:
+	unsigned *n = &nvbo->placement.num_placement;

-:629: CHECK:LINE_SPACING: Please don't use multiple blank lines
#629: FILE: drivers/gpu/drm/vmwgfx/vmwgfx_bo.c:182:
 
+

total: 0 errors, 1 warnings, 1 checks, 698 lines checked
46284afefa39 drm/amdgpu: use GTT only as fallback for VRAM|GTT
-:32: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 12 lines checked


