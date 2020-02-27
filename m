Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F7A17242C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 17:59:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526536E950;
	Thu, 27 Feb 2020 16:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80A256E94B;
 Thu, 27 Feb 2020 16:59:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A25FA00FD;
 Thu, 27 Feb 2020 16:59:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 27 Feb 2020 16:59:25 -0000
Message-ID: <158282276547.29656.13883790142937830118@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227135839.12912-1-jani.nikula@intel.com>
In-Reply-To: <20200227135839.12912-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_split_intel=5Fmo?=
 =?utf-8?q?deset=5Finit=28=29_pre/post_gem_init?=
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

Series: series starting with [1/3] drm/i915: split intel_modeset_init() pre/post gem init
URL   : https://patchwork.freedesktop.org/series/74021/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1f41c9f2b641 drm/i915: split intel_modeset_init() pre/post gem init
fadf0879c983 drm/i915: move more display related probe/remove stuff to display
b7f49adab789 drm/i915: remove the now redundant i915_driver_modeset_* call layer
-:96: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#96: FILE: drivers/gpu/drm/i915/i915_drv.c:891:
+	 * working irqs for e.g. gmbus and dp aux transfers. */

total: 0 errors, 1 warnings, 0 checks, 111 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
