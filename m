Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19792180CE9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 01:40:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5526E3E5;
	Wed, 11 Mar 2020 00:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 769C16E3D8;
 Wed, 11 Mar 2020 00:40:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58257A0094;
 Wed, 11 Mar 2020 00:40:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 00:40:28 -0000
Message-ID: <158388722834.13949.15690974537122053345@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310150001.8627-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200310150001.8627-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Pull_checking_rps-=3Epm=5Fevents_under_the_i?=
 =?utf-8?q?rq=5Flock_=28rev2=29?=
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

Series: drm/i915/gt: Pull checking rps->pm_events under the irq_lock (rev2)
URL   : https://patchwork.freedesktop.org/series/74510/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
76ddbcfdb7a0 drm/i915/gt: Pull checking rps->pm_events under the irq_lock
-:7: WARNING:TYPO_SPELLING: 'diable' may be misspelled - perhaps 'disable'?
#7: 
write in rps_diable_interrupts.

-:31: WARNING:TYPO_SPELLING: 'interrrupt' may be misspelled - perhaps 'interrupt'?
#31: 
interrrupt generation are also strongly ordered -- just this may not be

total: 0 errors, 2 warnings, 0 checks, 72 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
