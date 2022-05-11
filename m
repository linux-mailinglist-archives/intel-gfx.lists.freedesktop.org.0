Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A582523C37
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 20:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA2A10FB9A;
	Wed, 11 May 2022 18:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61AA010F882;
 Wed, 11 May 2022 18:08:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5962EAADD6;
 Wed, 11 May 2022 18:08:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Wed, 11 May 2022 18:08:49 -0000
Message-ID: <165229252934.2697.8388631481020529649@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220511153746.14142-1-nirmoy.das@intel.com>
In-Reply-To: <20220511153746.14142-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_return_-EIO_on_l?=
 =?utf-8?q?mem_setup_failure?=
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

Series: series starting with [1/3] drm/i915: return -EIO on lmem setup failure
URL   : https://patchwork.freedesktop.org/series/103883/
State : warning

== Summary ==

Error: dim checkpatch failed
9b39fe5f81cd drm/i915: return -EIO on lmem setup failure
ceaf7af17c75 drm/i915: determine lmem_size properly
1c88029128b1 drm/i915: error out on platform with small-bar and CCS
-:25: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#25: FILE: drivers/gpu/drm/i915/gt/intel_region_lmem.c:119:
+
+		}

total: 0 errors, 0 warnings, 1 checks, 13 lines checked


