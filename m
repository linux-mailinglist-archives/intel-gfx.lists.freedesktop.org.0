Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6108E20F2F0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 12:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0B9892FB;
	Tue, 30 Jun 2020 10:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6667892FB;
 Tue, 30 Jun 2020 10:46:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0961A00FD;
 Tue, 30 Jun 2020 10:46:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 30 Jun 2020 10:46:37 -0000
Message-ID: <159351399772.22701.3444573552724823694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200629185848.20550-1-imre.deak@intel.com>
In-Reply-To: <20200629185848.20550-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/tgl+=3A_Fix_TBT_DPL?=
 =?utf-8?q?L_fractional_divider_for_38=2E4MHz_ref_clock?=
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

Series: series starting with [1/2] drm/i915/tgl+: Fix TBT DPLL fractional divider for 38.4MHz ref clock
URL   : https://patchwork.freedesktop.org/series/78909/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ebc7448f0db7 drm/i915/tgl+: Fix TBT DPLL fractional divider for 38.4MHz ref clock
-:33: CHECK:CAMELCASE: Avoid CamelCase: <tgl_tbt_pll_38_4MHz_values>
#33: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2940:
+static const struct skl_wrpll_params tgl_tbt_pll_38_4MHz_values = {

total: 0 errors, 0 warnings, 1 checks, 27 lines checked
06139c9eefa6 drm/i915/icl+: Simplify combo/TBT PLL calculation call-chain

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
