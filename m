Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6C44E65C4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 16:02:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8651D10E8DD;
	Thu, 24 Mar 2022 15:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF40A10E8DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 15:02:44 +0000 (UTC)
Received: from ip4d144895.dynamic.kabel-deutschland.de ([77.20.72.149]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1nXOz3-0006fy-QD; Thu, 24 Mar 2022 16:02:41 +0100
Message-ID: <ec2eeead-6f4f-a851-be21-0b9db8f4c22e@leemhuis.info>
Date: Thu, 24 Mar 2022 16:02:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Thorsten Leemhuis <regressions@leemhuis.info>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1648134164;
 2b1e3e31; 
X-HE-SMSGID: 1nXOz3-0006fy-QD
Subject: [Intel-gfx] Backlight Regression in i915 that isn't handled
 appropriately afaics
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Filippo Falezza <filippo.falezza@outlook.it>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi i915 maintainers, this is your Linux kernel regression tracker!
What's up with the following regression?

https://gitlab.freedesktop.org/drm/intel/-/issues/5284

That report it more than two weeks old now, but seems nothing of
substance happened. And the thing is: the report is older, as the issue
in fact was reported on 2022-01-31 already here:

https://bugzilla.kernel.org/show_bug.cgi?id=215553

After that there was a different ticket about it later here:
https://gitlab.freedesktop.org/drm/intel/-/issues/5027

But it got confusing, so the reporter created the ticket the first link
in this message points to. I fully understand some of the reasons why
this was not handled appropriately, but it looks like even the latest
ticket is mostly ignored, apart from some bug triaging.

So could anybody please take a look into this at at least tell the
reporter what to do to (bisection maybe?) get this solved?

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)

P.S.: As the Linux kernel's regression tracker I'm getting a lot of
reports on my table. I can only look briefly into most of them and lack
knowledge about most of the areas they concern. I thus unfortunately
will sometimes get things wrong or miss something important. I hope
that's not the case here; if you think it is, don't hesitate to tell me
in a public reply, it's in everyone's interest to set the public record
straight.

P.S.S.: for rezgbot:

Link:
https://lore.kernel.org/regressions/74ee2216-a295-c2b6-328b-3e6d0cc1847e@leemhuis.info/


