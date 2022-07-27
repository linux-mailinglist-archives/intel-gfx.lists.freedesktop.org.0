Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7981C5831D0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 20:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF80710F647;
	Wed, 27 Jul 2022 18:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB8912AF19;
 Wed, 27 Jul 2022 18:17:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFDA9A00CC;
 Wed, 27 Jul 2022 18:17:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 27 Jul 2022 18:17:42 -0000
Message-ID: <165894586288.21597.17993680789793256876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220727164523.1621361-1-imre.deak@intel.com>
In-Reply-To: <20220727164523.1621361-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHNl?=
 =?utf-8?q?ries_starting_with_=5B1/2=5D_drm/i915/d12+=3A_Disable_DMC_handl?=
 =?utf-8?q?ers_during_loading/disabling_the_firmware?=
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

Series: series starting with [1/2] drm/i915/d12+: Disable DMC handlers during loading/disabling the firmware
URL   : https://patchwork.freedesktop.org/series/106767/
State : warning

== Summary ==

Error: make htmldocs had i915 warnings
./drivers/gpu/drm/i915/display/intel_dmc.c:441: warning: Excess function parameter 'dev_priv' description in 'intel_dmc_disable_program'
./drivers/gpu/drm/i915/display/intel_dmc.c:441: warning: Function parameter or member 'i915' not described in 'intel_dmc_disable_program'
./drivers/gpu/drm/i915/display/intel_dmc.c:441: warning: Excess function parameter 'dev_priv' description in 'intel_dmc_disable_program'


