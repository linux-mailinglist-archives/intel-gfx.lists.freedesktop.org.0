Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBD148BEE5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 08:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A9110F755;
	Wed, 12 Jan 2022 07:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24FC110F74D;
 Wed, 12 Jan 2022 07:16:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 205BAAA0ED;
 Wed, 12 Jan 2022 07:16:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 12 Jan 2022 07:16:50 -0000
Message-ID: <164197181009.21759.13937212575140987322@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Pass_plane_to_wa?=
 =?utf-8?q?termark_calculation_functions_=28rev5=29?=
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

Series: series starting with [1/4] drm/i915: Pass plane to watermark calculation functions (rev5)
URL   : https://patchwork.freedesktop.org/series/97652/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
218c1699f616 drm/i915: Pass plane to watermark calculation functions
2a170a9b0778 drm/i915: Introduce do_async_flip flag to intel_plane_state
ca9b6c28d0a3 drm/i915: Use wm0 only during async flips for DG2
-:9: WARNING:TYPO_SPELLING: 'perfomance' may be misspelled - perhaps 'performance'?
#9: 
This optimization allows to achieve higher perfomance
                                           ^^^^^^^^^^

-:26: WARNING:BAD_SIGN_OFF: Duplicate signature
#26: 
Reported-by: kernel test robot <lkp@intel.com>

-:27: WARNING:BAD_SIGN_OFF: Duplicate signature
#27: 
Reported-by: kernel test robot <lkp@intel.com>

-:28: WARNING:BAD_SIGN_OFF: Duplicate signature
#28: 
Reported-by: kernel test robot <lkp@intel.com>

total: 0 errors, 4 warnings, 0 checks, 48 lines checked
7b0b3f9a9e89 drm/i915: Don't allocate extra ddb during async flip for DG2


