Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6498D30E918
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 02:02:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDFF6EC5E;
	Thu,  4 Feb 2021 01:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5AC9D6EC5D;
 Thu,  4 Feb 2021 01:02:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 551C1A00E6;
 Thu,  4 Feb 2021 01:02:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Feb 2021 01:02:02 -0000
Message-ID: <161240052232.4502.11252770103208463316@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203210644.10163-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203210644.10163-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Ratelimit_heartbeat_completion_probing_=28re?=
 =?utf-8?b?djIp?=
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

Series: drm/i915/gt: Ratelimit heartbeat completion probing (rev2)
URL   : https://patchwork.freedesktop.org/series/86665/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8272367db0e5 drm/i915/gt: Ratelimit heartbeat completion probing
-:86: ERROR:CODE_INDENT: code indent should use tabs where possible
#86: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:86:
+^I       ^Icontainer_of(cb, typeof(*engine), heartbeat.cb);$

-:86: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#86: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:86:
+^I       ^Icontainer_of(cb, typeof(*engine), heartbeat.cb);$

total: 1 errors, 1 warnings, 0 checks, 88 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
