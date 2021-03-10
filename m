Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A00D2333ABE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 11:55:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA086E165;
	Wed, 10 Mar 2021 10:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D2F6E165
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 10:54:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24059805-1500050 for multiple; Wed, 10 Mar 2021 10:55:01 +0000
MIME-Version: 1.0
In-Reply-To: <928454d4-8ae6-9b02-747f-fecdcc1e6ac4@linux.intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <161484956454.28586.15932692857365863465@build.alporthouse.com>
 <161485897632.28586.2630377954645968923@build.alporthouse.com>
 <161490560153.13701.1838349946598091390@build.alporthouse.com>
 <40dd702b-c71c-0b99-93e6-0e120ef7715d@linux.intel.com>
 <161494684568.15221.13792200139079395463@build.alporthouse.com>
 <SA2PR11MB49696180125900E3CCB090049D969@SA2PR11MB4969.namprd11.prod.outlook.com>
 <194e43a3-2425-f5de-a8db-ad86bac19a66@linux.intel.com>
 <SA2PR11MB496960ABA0D7C5E2A53A2C099D939@SA2PR11MB4969.namprd11.prod.outlook.com>
 <928454d4-8ae6-9b02-747f-fecdcc1e6ac4@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Chiou, Cooper" <cooper.chiou@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 10 Mar 2021 10:54:55 +0000
Message-ID: <161537369562.31101.16331696744154267554@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Tseng,
 William" <william.tseng@intel.com>, "Chen, Rong A" <rong.a.chen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-03-10 10:19:12)
> 
> Hi,
> 
> On 08/03/2021 17:32, Chiou, Cooper wrote:
> > I've tested on GLK, KBL, CFL Intel NUC devices and got the following performance results, there is no performance regression per my testing.
> > 
> > Patch: [v5] drm/i915: Enable WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
> > Test suite: phoronix-test-suite.supertuxkart.1024x768.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second
> > Kernel version: 5.12.0-rc1 (drm-tip)
> > 
> > a. Device: Intel NUC kit NUC7JY Gemini Lake Celeron J4005 @2.7GHz (2 Cores)
> >      Without patch, fps=57.45
> >      With patch, fps=57.49
> > b. Device: Intel NUC kit NUC8BEH Coffee Lake Core i3-8109U @3.6GHz(4 Cores)
> >      Without patch, fps=117.23
> >      With patch, fps=117.27
> > c. Device: Intel NUC kit NUC7i3BNH Kaby Lake Core i3-7100U @2.4GHz(4 Cores)
> >      Without patch, fps=114.05
> >      With patch, fps=114.34
> > 
> > Meanwhile, Intel lkp team has validated performance on lkp-kbl-nuc1 and no regression.
> > f69d02e37a85645a  d912096c40cdc3bc9364966971 testcase/testparams/testbox
> > ----------------  -------------------------- ---------------------------
> >            %stddev      change         %stddev
> >                \          |                \
> >        29.79                       29.67
> > phoronix-test-suite/performance-true-Fullscreen-Ultimate-1-Gran_Paradiso_Island__Approxima-supertuxkart-1.5.2-ucode=0xde/lkp-kbl-nuc1
> >        29.79                       29.67        GEO-MEAN phoronix-test-suite.supertuxkart.1280x1024.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second
> > 
> 
> CI results are green so that is good.
> 
> Do the machines used for performance testing include unusual fusing? 
> Worrying thing is that we were never able to reproduce the reported 
> regression in house due lack of identical machine, right? Although I 
> guess avoiding hangs trumps performance.

The issue is that if the regression is reproducible it means that the
broadcast mask is no longer correct (or never was, one or the other ;)
And another w/a is going astray because it depends on the previous
undefined value of the mcr.

Which raises the question as to whether the hang prevention seen here is
also because some other w/a (or other mmio) is not being applied to the
relevant units. Or vice versa.

Either way there remains an underlying issue in that some register
writes for gen9 require mcr being set that were are not handling
correctly. Changing the mask here changing results elsewhere indicate
that the issues are fully addressed, and the fear that undoing some
other mmio is going to introduce other subtle hangs. And we are all
blindly poking at the issue as no one has access to the affected skus.

What would be useful is if we print the value before changing it so that
we can see if we have any machines in CI where we are making significant
changes to the broadcast mask.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
