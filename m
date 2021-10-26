Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ADB43B192
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 13:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7816F6E429;
	Tue, 26 Oct 2021 11:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 732816E429;
 Tue, 26 Oct 2021 11:53:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69EE4A0169;
 Tue, 26 Oct 2021 11:53:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Oct 2021 11:53:08 -0000
Message-ID: <163524918842.9776.15208602666964016778@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211026084208.2574-1-jani.nikula@intel.com>
In-Reply-To: <20211026084208.2574-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=3A_fix_integer_overflow_in_128b/132b_data_rate_?=
 =?utf-8?q?calculation_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dp: fix integer overflow in 128b/132b data rate calculation (rev3)
URL   : https://patchwork.freedesktop.org/series/96289/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4759ea7118a7 drm/i915/dp: fix integer overflow in 128b/132b data rate calculation
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
[drm:intel_dp_compute_config [i915]] DP link rate required 3657063 available -580783288

-:34: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_dp.c:355:
+		max_link_rate_kbps = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(max_link_rate_kbps, 9671), 10000);

total: 0 errors, 2 warnings, 0 checks, 8 lines checked


