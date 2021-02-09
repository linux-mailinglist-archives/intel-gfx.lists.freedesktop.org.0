Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EF8314E7D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 12:58:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0678F6EAC5;
	Tue,  9 Feb 2021 11:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5CE16EAC5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 11:58:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23821190-1500050 for multiple; Tue, 09 Feb 2021 11:55:16 +0000
MIME-Version: 1.0
In-Reply-To: <f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.com>
References: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
 <161282685855.9448.10484374241892252440@build.alporthouse.com>
 <f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
Date: Tue, 09 Feb 2021 11:55:17 +0000
Message-ID: <161287171749.16732.2362289545256428747@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [5.10.y regression] i915 clear-residuals mitigation
 is causing gfx issues
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

Quoting Hans de Goede (2021-02-09 11:46:46)
> Hi,
> 
> On 2/9/21 12:27 AM, Chris Wilson wrote:
> > Quoting Hans de Goede (2021-02-08 20:38:58)
> >> Hi All,
> >>
> >> We (Fedora) have been receiving reports from multiple users about gfx issues / glitches
> >> stating with 5.10.9. All reporters are users of Ivy Bridge / Haswell iGPUs and all
> >> reporters report that adding i915.mitigations=off to the cmdline fixes things, see:
> > 
> > I tried to reproduce this on the w/e on hsw-gt1, to no avail; and piglit
> > did not report any differences with and without mitigations. I have yet
> > to test other platforms. So I don't yet have an alternative.
> 
> Note the original / first reporter of:
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1925346
> 
> Is using hsw-gt2, so it seems that the problem is not just the enabling of
> the mitigations on ivy-bridge / bay-trail but that there actually is
> a regression on devices where the WA worked fine before...
> 
> If you have access to a hsw-gt2 device then testing there might help?

The current one is headless, I'm trying to get a laptop with gt2 setup
again so that I can do more than test with piglit.

> Also note that this reproduces more easily on 5.10.10, which does not have:
> 
> 520d05a77b2866eb ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
> 
> Not sure if that helps though.

It gives a clue that it's still a problem with the pipe state. (Which is
believable as there can't be much else!)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
