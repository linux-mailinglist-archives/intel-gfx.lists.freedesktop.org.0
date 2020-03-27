Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88493194DE8
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 01:15:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D196E96A;
	Fri, 27 Mar 2020 00:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0536E6E03D;
 Fri, 27 Mar 2020 00:15:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E81F7A011B;
 Fri, 27 Mar 2020 00:15:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 27 Mar 2020 00:15:07 -0000
Message-ID: <158526810791.17235.3028959465900202612@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326231810.16852-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200326231810.16852-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Preven?=
 =?utf-8?q?t_GPU_death_on_ELSP=5B1=5D_promotion_to_idle_context?=
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

Series: series starting with [1/2] drm/i915/execlists: Prevent GPU death on ELSP[1] promotion to idle context
URL   : https://patchwork.freedesktop.org/series/75138/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d6626ef65d6d drm/i915/execlists: Prevent GPU death on ELSP[1] promotion to idle context
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
  process_csb: vecs0: ring:{start:0x00021000, head:03f8, tail:03f8, ctl:00000000, mode:00000200}

total: 0 errors, 1 warnings, 0 checks, 126 lines checked
185b85c7368a drm/i915/execlists: Explicitly reset both reg and context runtime

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
