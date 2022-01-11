Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A46A48B2A6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 17:53:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06BD10E86F;
	Tue, 11 Jan 2022 16:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7564E10E482;
 Tue, 11 Jan 2022 16:53:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70D7CA882E;
 Tue, 11 Jan 2022 16:53:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 11 Jan 2022 16:53:54 -0000
Message-ID: <164192003443.24977.10997882467706138594@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Pass_plane_to_wa?=
 =?utf-8?q?termark_calculation_functions_=28rev4=29?=
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

Series: series starting with [1/4] drm/i915: Pass plane to watermark calculation functions (rev4)
URL   : https://patchwork.freedesktop.org/series/97652/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
66961725973e drm/i915: Pass plane to watermark calculation functions
3d75a7392800 drm/i915: Introduce do_async_flip flag to intel_plane_state
c3e749b07c10 drm/i915: Use wm0 only during async flips for DG2
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
463128a98258 drm/i915: Don't allocate extra ddb during async flip for DG2


