Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 610C51E3D92
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 11:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DC089AAE;
	Wed, 27 May 2020 09:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA0A689AAE;
 Wed, 27 May 2020 09:29:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E22E0A432F;
 Wed, 27 May 2020 09:29:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 27 May 2020 09:29:04 -0000
Message-ID: <159057174489.342.5989264155898631368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Special_handling_for_bonded_requests?=
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

Series: drm/i915: Special handling for bonded requests
URL   : https://patchwork.freedesktop.org/series/77688/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
10e39c0f7a03 drm/i915: Special handling for bonded requests
-:20: WARNING:TYPO_SPELLING: 'preemptable' may be misspelled - perhaps 'preemptible'?
#20: 
is that both of the aligned pairs will be marked as non-preemptable and

-:23: WARNING:TYPO_SPELLING: 'preemptable' may be misspelled - perhaps 'preemptible'?
#23: 
Non-preemptable property will ensure that once the start has been aligned

-:75: WARNING:TYPO_SPELLING: 'preemptable' may be misspelled - perhaps 'preemptible'?
#75: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:4938:
+	 * They should be non-preemptable and have all ELSP ports to themselves

total: 0 errors, 3 warnings, 0 checks, 87 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
