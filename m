Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 181867E629B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 04:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A384310E0E0;
	Thu,  9 Nov 2023 03:26:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9E7C10E1B6;
 Thu,  9 Nov 2023 03:26:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8BCDEAADF1;
 Thu,  9 Nov 2023 03:26:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Somalapuram Amaranath" <amaranath.somalapuram@amd.com>
Date: Thu, 09 Nov 2023 03:26:45 -0000
Message-ID: <169950040553.26591.2543050835882151406@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231109023843.32326-1-Amaranath.Somalapuram@amd.com>
In-Reply-To: <20231109023843.32326-1-Amaranath.Somalapuram@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/ttm=3A_replace_busy_placement_with_flags_v2?=
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

Series: drm/ttm: replace busy placement with flags v2
URL   : https://patchwork.freedesktop.org/series/126164/
State : warning

== Summary ==

Error: dim checkpatch failed
c56bdb99b8b9 drm/ttm: replace busy placement with flags v2
-:275: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int *' to bare use of 'unsigned *'
#275: FILE: drivers/gpu/drm/nouveau/nouveau_bo.c:434:
+	unsigned *n = &nvbo->placement.num_placement;

-:607: CHECK:LINE_SPACING: Please don't use multiple blank lines
#607: FILE: drivers/gpu/drm/vmwgfx/vmwgfx_bo.c:182:
 
+

-:810: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>'

total: 1 errors, 1 warnings, 1 checks, 684 lines checked


