Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B4B191B8C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 21:56:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C8F6E17F;
	Tue, 24 Mar 2020 20:56:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B476E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 20:56:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20680454-1500050 for multiple; Tue, 24 Mar 2020 20:56:02 +0000
MIME-Version: 1.0
In-Reply-To: <20200324204455.2988-1-chris@chris-wilson.co.uk>
References: <20200324201526.16571-1-chris@chris-wilson.co.uk>
 <20200324204455.2988-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158508336282.27678.728284541964495431@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 24 Mar 2020 20:56:02 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Measure the energy
 consumed while in RC6
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

Quoting Chris Wilson (2020-03-24 20:44:55)
> +       dt = ktime_get();
> +       rc0_power = energy_uJ(rc6);
>         res[0] = rc6_residency(rc6);
>         msleep(250);
>         res[1] = rc6_residency(rc6);
> +       rc0_power = div64_u64(energy_uJ(rc6) - rc0_power,
> +                             ktime_to_ns(ktime_sub(ktime_get(), dt)));

Did you forget this was in ns? You did!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
