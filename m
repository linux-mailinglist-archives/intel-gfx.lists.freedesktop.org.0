Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EA1340DD7
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 20:07:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3816E959;
	Thu, 18 Mar 2021 19:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FC576E959;
 Thu, 18 Mar 2021 19:07:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68D9BA3ECB;
 Thu, 18 Mar 2021 19:07:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 18 Mar 2021 19:07:05 -0000
Message-ID: <161609442540.12740.12998023409793676734@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210318170419.2107512-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210318170419.2107512-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Default_request/fence_expiry_+_watchdog_=28rev3=29?=
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

Series: Default request/fence expiry + watchdog (rev3)
URL   : https://patchwork.freedesktop.org/series/87930/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d8733af339ce drm/i915: Individual request cancellation
80086346fcaf drm/i915: Restrict sentinel requests further
7fa9b24cf91f drm/i915: Handle async cancellation in sentinel assert
ab49cf00b55d drm/i915: Request watchdog infrastructure
b3ae72befaf0 drm/i915: Fail too long user submissions by default
-:18: WARNING:TYPO_SPELLING: 'becuase' may be misspelled - perhaps 'because'?
#18: 
And becuase of lack of agreement on usefulness and safety of fence error
    ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 102 lines checked
e814cfb2632d drm/i915: Allow configuring default request expiry via modparam


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
