Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3D228CBFA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 12:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D0A6E112;
	Tue, 13 Oct 2020 10:50:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932B46E112
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 10:50:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22700539-1500050 for multiple; Tue, 13 Oct 2020 11:49:53 +0100
MIME-Version: 1.0
In-Reply-To: <20201012165503.r4ythhqyxorpkyoa@ldmartin-desk1>
References: <20200729102539.134731-1-ayaz.siddiqui@intel.com>
 <20200729102539.134731-2-ayaz.siddiqui@intel.com>
 <6464923397924b9ab6a9e0926d61a672@intel.com>
 <20201012165503.r4ythhqyxorpkyoa@ldmartin-desk1>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Date: Tue, 13 Oct 2020 11:49:52 +0100
Message-ID: <160258619207.2946.18075227539133925442@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/gt: Initialize reserved and
 unspecified MOCS indices
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
Cc: "Spruit, Neil R" <neil.r.spruit@intel.com>, "Mathew,
 Alwin" <alwin.mathew@intel.com>, "Zhou, Cheng" <cheng.zhou@intel.com>,
 intel-gfx@lists.freedesktop.org, "Benemelis,
 Mike G" <mike.g.benemelis@intel.com>, "Mcguire,
 Russell W" <russell.w.mcguire@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2020-10-12 17:55:03)
> On Fri, Jul 31, 2020 at 12:23:57AM -0700, Siddiqui, Ayaz A wrote:
> >
> >
> >> -----Original Message-----
> >> From: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> >> Sent: Wednesday, July 29, 2020 3:56 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>; Chris Wilson <chris@chris-
> >> wilson.co.uk>; De Marchi, Lucas <lucas.demarchi@intel.com>; Lis, Tomasz
> >> <tomasz.lis@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>;
> >> Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Francisco Jerez
> >> <currojerez@riseup.net>; Mathew, Alwin <alwin.mathew@intel.com>; Mcguire,
> >> Russell W <russell.w.mcguire@intel.com>; Spruit, Neil R
> >> <neil.r.spruit@intel.com>; Zhou, Cheng <cheng.zhou@intel.com>; Benemelis,
> >> Mike G <mike.g.benemelis@intel.com>
> >> Subject: [PATCH v4 1/1] drm/i915/gt: Initialize reserved and unspecified MOCS
> >> indices
> >>
> >> In order to avoid functional breakage of mis-programmed applications that have
> >> grown to depend on unused MOCS entries, we are programming those entries to
> >> be equal to fully cached ("L3 + LLC") entry.
> >>
> >> These reserved and unspecified entries should not be used as they may be
> >> changed to less performant variants with better coherency in the future if more
> >> entries are needed.
> >>
> >> V2: As suggested by Lucas De Marchi to utilise __init_mocs_table for
> >> programming default value, setting I915_MOCS_PTE index of tgl_mocs_table
> >> with desired value.
> >>
> >> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> >> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> Cc: Tomasz Lis <tomasz.lis@intel.com>
> >> Cc: Matt Roper <matthew.d.roper@intel.com>
> >> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> >> Cc: Francisco Jerez <currojerez@riseup.net>
> >> Cc: Mathew Alwin <alwin.mathew@intel.com>
> >> Cc: Mcguire Russell W <russell.w.mcguire@intel.com>
> >> Cc: Spruit Neil R <neil.r.spruit@intel.com>
> >> Cc: Zhou Cheng <cheng.zhou@intel.com>
> >> Cc: Benemelis Mike G <mike.g.benemelis@intel.com>
> >>
> >> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> >> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/gt/intel_mocs.c | 15 +++++++++++----
> >>  1 file changed, 11 insertions(+), 4 deletions(-)
> >>
> >
> >I'm getting a false failure with this patch , which I tested locally and its passing
> >with this patch. I think that this failure is blocking merge of this patch.
> >Can Someone please let me know how to proceed in this case for merging?
> 
> If it's a false failure, you can go ahead and merge it. Better to reply
> to the CI email how is it unrelated.

I would say the kms_frontbuffer_tracking is genuine fail as that is very
cache sensitive. And I've just pushed this to upstream, oops, so now the
problem is a little more urgent.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
