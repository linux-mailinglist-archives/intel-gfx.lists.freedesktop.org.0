Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E4F4927E6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 15:00:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981B610E444;
	Tue, 18 Jan 2022 14:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F36A10E504;
 Tue, 18 Jan 2022 14:00:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BF0BA47DF;
 Tue, 18 Jan 2022 14:00:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 18 Jan 2022 14:00:36 -0000
Message-ID: <164251443634.25099.14750490298111661468@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Async_flip_optimization_for_DG2_=28rev2=29?=
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

Series: Async flip optimization for DG2 (rev2)
URL   : https://patchwork.freedesktop.org/series/98981/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
af673ae37d0c drm/i915: Pass plane to watermark calculation functions
69a7c958433d drm/i915: Introduce do_async_flip flag to intel_plane_state
288d6ef2c274 drm/i915: Use wm0 only during async flips for DG2
-:9: WARNING:TYPO_SPELLING: 'perfomance' may be misspelled - perhaps 'performance'?
#9: 
This optimization allows to achieve higher perfomance
                                           ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
52ba575ac8c7 drm/i915: Don't allocate extra ddb during async flip for DG2


