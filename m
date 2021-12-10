Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E80046FF45
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 12:00:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9938010E707;
	Fri, 10 Dec 2021 11:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DADC010E707;
 Fri, 10 Dec 2021 11:00:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2B30A66C8;
 Fri, 10 Dec 2021 11:00:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: dong.yang@intel.com
Date: Fri, 10 Dec 2021 11:00:21 -0000
Message-ID: <163913402183.3445.2324088709507079923@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211210013147.2256699-1-dong.yang@intel.com>
In-Reply-To: <20211210013147.2256699-1-dong.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Do_not_add_same_i915=5Frequest_to_intel=5Fco?=
 =?utf-8?q?ntext_twice?=
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

Series: drm/i915/gt: Do not add same i915_request to intel_context twice
URL   : https://patchwork.freedesktop.org/series/97843/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
94b2a1bdd53a drm/i915/gt: Do not add same i915_request to intel_context twice
-:7: WARNING:TYPO_SPELLING: 'unknow' may be misspelled - perhaps 'unknown'?
#7: 
With unknow race condition, the i915_request will be added
     ^^^^^^

-:10: WARNING:TYPO_SPELLING: 'alreay' may be misspelled - perhaps 'already'?
#10: 
If node alreay exist then do not add it again.
        ^^^^^^

total: 0 errors, 2 warnings, 0 checks, 9 lines checked


