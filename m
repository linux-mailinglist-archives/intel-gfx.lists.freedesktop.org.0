Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C8020F8F6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 17:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F986E43B;
	Tue, 30 Jun 2020 15:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E75A6E43C;
 Tue, 30 Jun 2020 15:56:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28455A47EB;
 Tue, 30 Jun 2020 15:56:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 30 Jun 2020 15:56:44 -0000
Message-ID: <159353260416.22704.15974363712976543717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200630112609.9998-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200630112609.9998-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Clamp_min=5Fcdclk_to_max=5Fcdclk=5Ffreq_to_unbl?=
 =?utf-8?q?ock_8K?=
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

Series: drm/i915: Clamp min_cdclk to max_cdclk_freq to unblock 8K
URL   : https://patchwork.freedesktop.org/series/78940/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
abfcf6db3529 drm/i915: Clamp min_cdclk to max_cdclk_freq to unblock 8K
-:29: WARNING:MINMAX: min() should probably be min_t(int, min_cdclk, dev_priv->max_cdclk_freq)
#29: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2090:
+		min_cdclk = min(min_cdclk, (int)dev_priv->max_cdclk_freq);

total: 0 errors, 1 warnings, 0 checks, 22 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
