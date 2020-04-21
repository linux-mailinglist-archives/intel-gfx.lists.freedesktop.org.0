Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 206291B2396
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 12:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719F86E07B;
	Tue, 21 Apr 2020 10:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE56F6E07B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 10:05:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20968939-1500050 for multiple; Tue, 21 Apr 2020 11:05:27 +0100
MIME-Version: 1.0
In-Reply-To: <c151481d-ac3f-4bd5-af8c-201dc6123f49@windriver.com>
References: <20200421084128.36839-1-liwei.song@windriver.com>
 <158746135414.19285.11110388744126468886@build.alporthouse.com>
 <c151481d-ac3f-4bd5-af8c-201dc6123f49@windriver.com>
To: Liwei Song <liwei.song@windriver.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158746352592.19285.8577398421387650483@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 21 Apr 2020 11:05:25 +0100
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel v4] Sync i915_pciids upto
 8717c6b7414f
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

Quoting Liwei Song (2020-04-21 10:59:04)
> 
> 
> On 4/21/20 17:29, Chris Wilson wrote:
> > Quoting Liwei Song (2020-04-21 09:41:28)
> >> +static const struct intel_device_info intel_cannonlake_info = {
> >> +       .gen = 0115,
> > .gen = 0120 /* 10 */
> > 
> >> +};
> >> +
> >> +static const struct intel_device_info intel_icelake_info = {
> >> +       .gen = 0116,
> > .gen = 0130 /* 11 */
> > 
> >> +};
> >> +
> >> +static const struct intel_device_info intel_elkhartlake_info = {
> >> +       .gen = 0117,
> > .gen = 0131
> > 
> >> +};
> >> +
> >> +static const struct intel_device_info intel_tigerlake_info = {
> >> +       .gen = 0120,
> > .gen = 0140 /* 12 */
> > 
> > You definitely do not want to feed them through the gen9 assembler.
> 
> Thanks, will modify it in v5, but could you explain more here how we
> decide the gen number, I really do not have too much knowledge here,
> I use to think it is an increasing number like some other definition.

It's octal, with the low octet being a revision number (so we can
quickly tell big from little core mostly, but whatever else makes sense
for that gen).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
