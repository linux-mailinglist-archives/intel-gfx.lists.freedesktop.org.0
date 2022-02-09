Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7734AF5A8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 16:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A4410E210;
	Wed,  9 Feb 2022 15:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4B5110E140;
 Wed,  9 Feb 2022 15:46:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D04A7AA0EB;
 Wed,  9 Feb 2022 15:46:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 09 Feb 2022 15:46:10 -0000
Message-ID: <164442157082.23763.13937182660944878891@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220209131143.3365230-1-jani.nikula@intel.com>
In-Reply-To: <20220209131143.3365230-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_move_intel=5Fhws=5Fcsb=5Fwrite=5Findex=28=29_ou?=
 =?utf-8?q?t_of_i915=5Fdrv=2Eh_=28rev2=29?=
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

Series: drm/i915: move intel_hws_csb_write_index() out of i915_drv.h (rev2)
URL   : https://patchwork.freedesktop.org/series/99853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
365790a1da63 drm/i915: move intel_hws_csb_write_index() out of i915_drv.h
-:50: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/gvt/execlist.c:166:
+					       hwsp_gpa + INTEL_HWS_CSB_WRITE_INDEX(execlist->engine->i915) * 4,

total: 0 errors, 1 warnings, 0 checks, 38 lines checked


