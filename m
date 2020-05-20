Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDA11DB2B7
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 14:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CB2788310;
	Wed, 20 May 2020 12:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47D1688310;
 Wed, 20 May 2020 12:08:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21240219-1500050 for multiple; Wed, 20 May 2020 13:08:01 +0100
MIME-Version: 1.0
In-Reply-To: <158997609575.8153.10522585692912987684@build.alporthouse.com>
References: <20200520103853.2484519-1-chris@chris-wilson.co.uk>
 <0b2857c3-25aa-775c-b559-3de68b9ec032@linux.intel.com>
 <158997609575.8153.10522585692912987684@build.alporthouse.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158997647985.8153.12187123507086139445@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 20 May 2020 13:07:59 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tools/intel_gpu_top:
 Include total package power
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-05-20 13:01:35)
> Quoting Tvrtko Ursulin (2020-05-20 12:54:19)
> > 
> > On 20/05/2020 11:38, Chris Wilson wrote:
> > > @@ -1083,10 +1154,10 @@ print_header(struct engines *engines, double t,
> > >               printf("\033[H\033[J");
> > >   
> > >               if (lines++ < con_h)
> > > -                     printf("intel-gpu-top - %s/%s MHz;  %s%% RC6; %s %s; %s irqs/s\n",
> > > +                     printf("intel-gpu-top - %s/%s MHz;  %s%% RC6; %s/%s W; %s irqs/s\n",
> > 
> > Detecting the unit was also a good thing to have so why drop it?
> 
> Because I'm lazy and reused some packaged code rather than try and
> repackage the code here. Even too lazy to add libigt_rapl.la.

Also, we would only ever report W or mW as the SI unit, the choose is
ours and whatever we choose requires adjusting of the reported rapl
scalefactor. Since we measure in seconds, the rapl scalefactor itself
would have to convert from horsepower into J for the results to make
sense, and defined that way.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
