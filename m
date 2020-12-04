Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 473312CF1CB
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 17:22:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AF76E1B2;
	Fri,  4 Dec 2020 16:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0AAEA6E1B1;
 Fri,  4 Dec 2020 16:22:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00943A8835;
 Fri,  4 Dec 2020 16:22:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 04 Dec 2020 16:22:53 -0000
Message-ID: <160709897397.27539.11830790603821058785@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201204151234.19729-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201204151234.19729-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915/gt=3A_Ignore_r?=
 =?utf-8?q?epeated_attempts_to_suspend_request_flow_across_reset?=
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

Series: series starting with [CI,1/4] drm/i915/gt: Ignore repeated attempts to suspend request flow across reset
URL   : https://patchwork.freedesktop.org/series/84582/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6784cc924e25 drm/i915/gt: Ignore repeated attempts to suspend request flow across reset
-:7: WARNING:TYPO_SPELLING: 'reseting' may be misspelled - perhaps 'resetting'?
#7: 
Before reseting the engine, we suspend the execution of the guilty

-:17: WARNING:BAD_SIGN_OFF: email address '<stable@vger.kernel.org> # v5.7+' might be better as 'stable@vger.kernel.org# v5.7+'
#17: 
Cc: <stable@vger.kernel.org> # v5.7+

total: 0 errors, 2 warnings, 0 checks, 9 lines checked
5f2a756cbc91 drm/i915/gt: Cancel the preemption timeout on responding to it
-:17: WARNING:BAD_SIGN_OFF: email address '<stable@vger.kernel.org> # v5.5+' might be better as 'stable@vger.kernel.org# v5.5+'
#17: 
Cc: <stable@vger.kernel.org> # v5.5+

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
87c6bc8c0e91 drm/i915/gt: Include reset failures in the trace
1ba31db544df drm/i915/gt: Clear the execlists timers upon reset


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
