Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEAC145892
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 16:25:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C027C6F589;
	Wed, 22 Jan 2020 15:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0EA7E89CB2;
 Wed, 22 Jan 2020 15:25:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3DEBA0087;
 Wed, 22 Jan 2020 15:25:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Jan 2020 15:25:11 -0000
Message-ID: <157970671199.22392.16011739177363097019@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122140243.495621-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200122140243.495621-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915/execlists=3A_T?=
 =?utf-8?q?ake_a_reference_while_capturing_the_guilty_request?=
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

Series: series starting with [CI,1/3] drm/i915/execlists: Take a reference while capturing the guilty request
URL   : https://patchwork.freedesktop.org/series/72400/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8f0868652c32 drm/i915/execlists: Take a reference while capturing the guilty request
-:28: WARNING:BAD_SIGN_OFF: Non-standard signature: Reviewd-by:
#28: 
Reviewd-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

total: 0 errors, 1 warnings, 0 checks, 119 lines checked
472e1c4d5efe drm/i915/execlists: Reclaim the hanging virtual request
84eecabf77f0 drm/i915: Mark the removal of the i915_request from the sched.link

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
