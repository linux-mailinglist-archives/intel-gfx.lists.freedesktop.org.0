Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9F075B163
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 16:39:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED7F10E5CA;
	Thu, 20 Jul 2023 14:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D203510E5CA;
 Thu, 20 Jul 2023 14:39:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC60CAADE0;
 Thu, 20 Jul 2023 14:39:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Thu, 20 Jul 2023 14:39:38 -0000
Message-ID: <168986397883.20753.2102925882092539011@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230720091411.347654-1-luciano.coelho@intel.com>
In-Reply-To: <20230720091411.347654-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_some_clean-ups_in_max_lane_count_handling_co?=
 =?utf-8?b?ZGUgKHJldjIp?=
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

Series: drm/i915/tc: some clean-ups in max lane count handling code (rev2)
URL   : https://patchwork.freedesktop.org/series/120980/
State : warning

== Summary ==

Error: dim checkpatch failed
5fc8008c4eed drm/i915/tc: rename mtl_tc_port_get_pin_assignment_mask()
-:6: WARNING:TYPO_SPELLING: 'assigment' may be misspelled - perhaps 'assignment'?
#6: 
This function doesn't really return the pin assigment mask, but the
                                            ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
376b39b1236b drm/i915/tc: make intel_tc_port_get_lane_mask() static
e81351544b4b drm/i915/tc: move legacy code out of the main _max_lane_count() func
b1e3a475153c drm/i915/tc: remove "fia" from intel_tc_port_fia_max_lane_count()


