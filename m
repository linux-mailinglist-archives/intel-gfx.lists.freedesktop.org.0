Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF16C2C490C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 21:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4736EA89;
	Wed, 25 Nov 2020 20:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FBA36EA88;
 Wed, 25 Nov 2020 20:28:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6667CA47E2;
 Wed, 25 Nov 2020 20:28:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Nov 2020 20:28:14 -0000
Message-ID: <160633609441.8879.11089356824785132231@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201125193032.29282-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201125193032.29282-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Defer_initial_modeset_until_after_GGTT_?=
 =?utf-8?q?is_initialised?=
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

Series: drm/i915/display: Defer initial modeset until after GGTT is initialised
URL   : https://patchwork.freedesktop.org/series/84276/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fc71ea523140 drm/i915/display: Defer initial modeset until after GGTT is initialised
-:87: WARNING:REPEATED_WORD: Possible repeated word: 'ff'
#87: 
[   53.451875] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 53 f7 0c 00 f7 d8 64 89 01 48

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:148: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#148: 
[   53.453944]  ffff88811b1e7f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:149: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#149: 
[   53.454011]  ffff88811b1e7f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fc'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:150: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#150: 
[   53.454079] >ffff88811b1e8000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:152: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#152: 
[   53.454211]  ffff88811b1e8080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:153: WARNING:REPEATED_WORD: Possible repeated word: 'fb'
#153: 
[   53.454279]  ffff88811b1e8100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb

-:159: WARNING:REPEATED_WORD: Possible repeated word: 'ff'
#159: 
[   53.454602] Code: 89 8d 48 ff ff ff 4c 8d 60 d0 49 39 c7 0f 84 37 02 00 00 4c 89 b5 40 ff ff ff 4d 8d bc 24 90 00 00 00 4c 89 ff e8 c1 97 f8 e0 <49> 83 bc 24 90 00 00 00 00 0f 84 0f 02 00 00 49 8d 7c 24 08 e8 a8

-:159: WARNING:REPEATED_WORD: Possible repeated word: 'ff'
#159: 
[   53.454602] Code: 89 8d 48 ff ff ff 4c 8d 60 d0 49 39 c7 0f 84 37 02 00 00 4c 89 b5 40 ff ff ff 4d 8d bc 24 90 00 00 00 4c 89 ff e8 c1 97 f8 e0 <49> 83 bc 24 90 00 00 00 00 0f 84 0f 02 00 00 49 8d 7c 24 08 e8 a8

-:159: WARNING:REPEATED_WORD: Possible repeated word: 'ff'
#159: 
[   53.454602] Code: 89 8d 48 ff ff ff 4c 8d 60 d0 49 39 c7 0f 84 37 02 00 00 4c 89 b5 40 ff ff ff 4d 8d bc 24 90 00 00 00 4c 89 ff e8 c1 97 f8 e0 <49> 83 bc 24 90 00 00 00 00 0f 84 0f 02 00 00 49 8d 7c 24 08 e8 a8

-:159: WARNING:REPEATED_WORD: Possible repeated word: 'ff'
#159: 
[   53.454602] Code: 89 8d 48 ff ff ff 4c 8d 60 d0 49 39 c7 0f 84 37 02 00 00 4c 89 b5 40 ff ff ff 4d 8d bc 24 90 00 00 00 4c 89 ff e8 c1 97 f8 e0 <49> 83 bc 24 90 00 00 00 00 0f 84 0f 02 00 00 49 8d 7c 24 08 e8 a8

total: 0 errors, 78 warnings, 0 checks, 32 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
