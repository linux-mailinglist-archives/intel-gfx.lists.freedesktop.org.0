Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D739C681681
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 17:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F0A10E0F8;
	Mon, 30 Jan 2023 16:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03C0910E27C;
 Mon, 30 Jan 2023 16:35:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0B46AADE1;
 Mon, 30 Jan 2023 16:35:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 30 Jan 2023 16:35:19 -0000
Message-ID: <167509651995.3666.9603894239831362303@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230130120636.63765-1-matthew.auld@intel.com>
In-Reply-To: <20230130120636.63765-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/6=5D_drm/i915/ttm=3A_fix_spa?=
 =?utf-8?q?rse_warning?=
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

Series: series starting with [v2,1/6] drm/i915/ttm: fix sparse warning
URL   : https://patchwork.freedesktop.org/series/113484/
State : warning

== Summary ==

Error: dim checkpatch failed
b61deae6cd53 drm/i915/ttm: fix sparse warning
-:4: WARNING:EMAIL_SUBJECT: A patch subject line should describe the change not the tool that found it
#4: 
Subject: [PATCH] drm/i915/ttm: fix sparse warning

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
b01ce1ac0799 drm/i915/ttm: audit remaining bo->resource
-:18: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 516198d317d8 ("drm/i915: audit bo->resource usage v3")'
#18: 
References: 516198d317d8 ("drm/i915: audit bo->resource usage v3")

total: 1 errors, 0 warnings, 0 checks, 59 lines checked
40dfa7888d44 drm/ttm: clear the ttm_tt when bo->resource is NULL
613ca8d70136 drm/ttm: stop allocating dummy resources during BO creation
652f0970e275 drm/ttm: stop allocating a dummy resource for pipelined gutting
e257da7a88a8 drm/ttm: prevent moving of pinned BOs


