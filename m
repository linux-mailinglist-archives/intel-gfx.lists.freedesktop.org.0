Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3812A3520B5
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 22:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4336ED42;
	Thu,  1 Apr 2021 20:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FDA16ED42;
 Thu,  1 Apr 2021 20:45:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1972A8831;
 Thu,  1 Apr 2021 20:45:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Thu, 01 Apr 2021 20:45:07 -0000
Message-ID: <161730990796.12179.9707824859449603972@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210401170511.40870-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210401170511.40870-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display/psr=3A_Configure_and_Program_IO_buffer_Wak?=
 =?utf-8?q?e_and_Fast_Wake?=
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

Series: drm/i915/display/psr: Configure and Program IO buffer Wake and Fast Wake
URL   : https://patchwork.freedesktop.org/series/88673/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
35268f22aac5 drm/i915/display/psr: Configure and Program IO buffer Wake and Fast Wake
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
 IO buffer wake lines = ROUNDUP(PSR2 IO wake time / total line time in microseconds)

-:147: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#147: FILE: drivers/gpu/drm/i915/display/intel_psr.c:822:
+		io_buffer_wake < EDP_PSR2_IO_BUFFER_WAKE_DEFAULT ? EDP_PSR2_IO_BUFFER_WAKE_DEFAULT : io_buffer_wake;

total: 0 errors, 2 warnings, 0 checks, 129 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
