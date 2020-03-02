Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52679175DB3
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:58:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61AD6E2BE;
	Mon,  2 Mar 2020 14:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1255E89135;
 Mon,  2 Mar 2020 14:58:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B179A00EF;
 Mon,  2 Mar 2020 14:58:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 02 Mar 2020 14:58:31 -0000
Message-ID: <158316111101.30646.8201014264025413027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915=3A_Nuke_pointless_d?=
 =?utf-8?q?iv_by_64bit?=
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

Series: series starting with [1/6] drm/i915: Nuke pointless div by 64bit
URL   : https://patchwork.freedesktop.org/series/74145/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6cf1345486f2 drm/i915: Nuke pointless div by 64bit
03152bdf42be drm/i915: Store CS timestamp frequency in Hz
bf4eb53970e1 drm/i915: Fix cs_timestamp_frequency_hz for ctg/elk/ilk
3a7310b7ff08 drm/i915: Fix cs_timestamp_frequency_hz for cl/bw
13e9499b1424 drm/i915: Extract i915_cs_timestamp_{ns_to_ticks, tick_to_ns}()
-:72: WARNING:LONG_LINE: line over 100 characters
#72: FILE: drivers/gpu/drm/i915/i915_perf.c:1670:
+		i915_cs_timestamp_ns_to_ticks(i915, atomic64_read(&stream->perf->noa_programming_delay));

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
a49c4e236c8f drm/i915/selftests: Make the CS timestamp tests work on gen4-snb (sort of)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
