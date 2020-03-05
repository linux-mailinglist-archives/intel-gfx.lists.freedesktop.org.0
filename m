Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C7217A609
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56A56E2F8;
	Thu,  5 Mar 2020 13:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 351E86E2F8;
 Thu,  5 Mar 2020 13:08:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B3B4A00E7;
 Thu,  5 Mar 2020 13:08:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Caz Yokoyama" <Caz.Yokoyama@intel.com>
Date: Thu, 05 Mar 2020 13:08:17 -0000
Message-ID: <158341369716.17237.3209568894959421151@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1c751032ce79c80c5485cae315f1a9904ce07cac.1583359940.git.caz.yokoyama@intel.com>
In-Reply-To: <1c751032ce79c80c5485cae315f1a9904ce07cac.1583359940.git.caz.yokoyama@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHNl?=
 =?utf-8?q?ries_starting_with_=5B1/1=5D_Revert_=22drm/i915/tgl=3A_Add_extr?=
 =?utf-8?q?a_hdc_flush_workaround=22?=
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

Series: series starting with [1/1] Revert "drm/i915/tgl: Add extra hdc flush workaround"
URL   : https://patchwork.freedesktop.org/series/74293/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/display/intel_dpll_mgr.h:285: warning: Function parameter or member 'get_freq' not described in 'intel_shared_dpll_funcs'

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
