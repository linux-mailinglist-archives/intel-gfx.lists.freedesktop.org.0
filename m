Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 100705FA20C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 18:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D521F10E67A;
	Mon, 10 Oct 2022 16:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 591F110E67A;
 Mon, 10 Oct 2022 16:37:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37A7CAADD2;
 Mon, 10 Oct 2022 16:37:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Date: Mon, 10 Oct 2022 16:37:30 -0000
Message-ID: <166541985019.29670.7914540399893352356@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221010155427.15735-1-animesh.manna@intel.com>
In-Reply-To: <20221010155427.15735-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/pps=3A_Add_get=5Fpp?=
 =?utf-8?q?s=5Fidx=28=29_hook_as_part_of_pps=5Fget=5Fregister=28=29_cleanu?=
 =?utf-8?q?p?=
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

Series: series starting with [1/2] drm/i915/pps: Add get_pps_idx() hook as part of pps_get_register() cleanup
URL   : https://patchwork.freedesktop.org/series/109547/
State : warning

== Summary ==

Error: dim checkpatch failed
25167c11f19e drm/i915/pps: Add get_pps_idx() hook as part of pps_get_register() cleanup
f59d1e59c801 drm/i915/pps: Enable 2nd pps for dual EDP scenario
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
for a specific panel. Currently dual PPS support is broken. This patch fixes

total: 0 errors, 1 warnings, 0 checks, 99 lines checked


