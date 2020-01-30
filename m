Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B1814DD9E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 16:11:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E8CD892A9;
	Thu, 30 Jan 2020 15:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 769FD892A9;
 Thu, 30 Jan 2020 15:11:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E76CA0093;
 Thu, 30 Jan 2020 15:11:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 30 Jan 2020 15:11:18 -0000
Message-ID: <158039707840.21034.18171322695540326070@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/9=5D_drm/i915/dsb=3A_Replace_HAS?=
 =?utf-8?q?=5FDSB_check_with_dsb-=3Ecmd=5Fbuf_check_=28rev2=29?=
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

Series: series starting with [1/9] drm/i915/dsb: Replace HAS_DSB check with dsb->cmd_buf check (rev2)
URL   : https://patchwork.freedesktop.org/series/72737/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
770bb0a72167 drm/i915/dsb: Replace HAS_DSB check with dsb->cmd_buf check
2bb3151e5050 drm/i915/dsb: Disable DSB until fixed
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
[drm:intel_dsb_commit [i915]] DSB execution started - head 0xa8c000, tail 0x10c0

total: 0 errors, 1 warnings, 0 checks, 12 lines checked
cbb3cfcc3bae drm/i915/dsb: Turn the "DSB is busy" into an error
46a21d424063 drm/i915/dsb: Stop with the RMW
84a01d2ee8dc drm/i915/dsb: Unwind on map error
53fed04914b3 drm/i915/dsb: Inline DSB_CTRL writes into intel_dsb_commit()
28b429e1447d drm/i915/dsb: Wait for DSB to idle after disabling it
46032e921202 drm/i915/dsb: Introduce intel_dsb_align_tail()
1406264377b6 drm/i915/dsb: Nuke the 'dev' variables

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
