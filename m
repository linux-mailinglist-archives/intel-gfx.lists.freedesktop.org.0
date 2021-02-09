Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 439743159E0
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 00:11:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E6F26EC00;
	Tue,  9 Feb 2021 23:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8287F6EC00
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 23:11:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23827327-1500050 for multiple; Tue, 09 Feb 2021 23:07:34 +0000
MIME-Version: 1.0
In-Reply-To: <f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.com>
References: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
 <161282685855.9448.10484374241892252440@build.alporthouse.com>
 <f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
Date: Tue, 09 Feb 2021 23:07:36 +0000
Message-ID: <161291205642.6673.10994709665368036431@build.alporthouse.com>
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

There have been 3 crashes uploaded related to v5.10.9, and in all 3
cases the ACTHD has been in the first page. This strongly suggests that
the w/a is scribbling over address 0. And there's then a very good
chance that

commit 29d35b73ead4e41aa0d1a954c9bfbdce659ec5d6
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Mon Jan 25 12:50:33 2021 +0000

    drm/i915/gt: Always try to reserve GGTT address 0x0
    
    commit 489140b5ba2e7cc4b853c29e0591895ddb462a82 upstream.

in v5.10.14 is sufficient to hide the issue.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
