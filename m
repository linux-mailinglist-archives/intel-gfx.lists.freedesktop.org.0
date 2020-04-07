Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA361A12C5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 19:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9483A6E8C0;
	Tue,  7 Apr 2020 17:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E57C26E8BB
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 17:35:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20831038-1500050 for multiple; Tue, 07 Apr 2020 18:35:00 +0100
MIME-Version: 1.0
In-Reply-To: <34c9768d-bb55-7834-c232-37b1751f4e84@lwfinger.net>
References: <34c9768d-bb55-7834-c232-37b1751f4e84@lwfinger.net>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Message-ID: <158628090169.8918.6452907123323208335@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 07 Apr 2020 18:35:01 +0100
Subject: Re: [Intel-gfx] Regression in i915
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Larry Finger (2020-04-07 18:27:52)
> Chris,
> 
> With a recent pull of kernel head, my Toshiba laptop with an i915 graphics card 
> fails to boot. It hangs at the point where it should switch to a graphics 
> screen. I bisected the problem to
> 
> commit 7dc8f1143778a35b190f9413f228b3cf28f67f8d
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Wed Mar 11 16:03:10 2020 +0000
> 
>      drm/i915/gem: Drop relocation slowpath
> 
> The lspci command reports my card as
> 00:02.0 VGA compatible controller [0300]: Intel Corporation 4th Gen Core 
> Processor Integrated Graphics Controller [8086:0416] (rev 06)
> 
> Has this problem been reported, and is there a fix?

2 possible causes for 2 very different symptoms are in flight.
But neither would strictly be a hang; the most blatant one would be the
display server triggering an EFAULT. The patches are currently sitting
in the drm-intel-next-fixes queue; a quick test of drm-tip would confirm
how worried one needs to be.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
