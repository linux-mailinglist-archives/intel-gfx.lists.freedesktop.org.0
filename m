Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C93E7EA297
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 19:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E00910E3E9;
	Mon, 13 Nov 2023 18:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EB6410E3E8;
 Mon, 13 Nov 2023 18:12:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46F2DAADF4;
 Mon, 13 Nov 2023 18:12:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Somalapuram Amaranath" <amaranath.somalapuram@amd.com>
Date: Mon, 13 Nov 2023 18:12:03 -0000
Message-ID: <169989912324.24211.1538488946791531455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231113110016.462621-1-Amaranath.Somalapuram@amd.com>
In-Reply-To: <20231113110016.462621-1-Amaranath.Somalapuram@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/ttm=3A_replace_busy_placement_with_flags_v3?=
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

Series: drm/ttm: replace busy placement with flags v3
URL   : https://patchwork.freedesktop.org/series/126330/
State : warning

== Summary ==

Error: dim checkpatch failed
ecd11ffa98ca drm/ttm: replace busy placement with flags v3
-:296: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int *' to bare use of 'unsigned *'
#296: FILE: drivers/gpu/drm/nouveau/nouveau_bo.c:434:
+	unsigned *n = &nvbo->placement.num_placement;

-:628: CHECK:LINE_SPACING: Please don't use multiple blank lines
#628: FILE: drivers/gpu/drm/vmwgfx/vmwgfx_bo.c:182:
 
+

-:831: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>'

total: 1 errors, 1 warnings, 1 checks, 698 lines checked


