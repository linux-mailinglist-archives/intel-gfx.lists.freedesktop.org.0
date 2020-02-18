Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA8B162EA0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 19:34:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E3C6E3BC;
	Tue, 18 Feb 2020 18:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C12976E3BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 18:34:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20267548-1500050 for multiple; Tue, 18 Feb 2020 18:33:48 +0000
MIME-Version: 1.0
To: Brian Welty <brian.welty@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <65a3f403-383b-9e07-e6d2-c32ac1874dc8@intel.com>
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
 <20200218162150.1300405-10-chris@chris-wilson.co.uk>
 <65a3f403-383b-9e07-e6d2-c32ac1874dc8@intel.com>
Message-ID: <158205082671.8112.6628508648513022899@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Feb 2020 18:33:46 +0000
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915/gt: Refactor l3cc/mocs
 availability
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

Quoting Brian Welty (2020-02-18 18:26:40)
> 
> On 2/18/2020 8:21 AM, Chris Wilson wrote:
> > @@ -223,9 +235,9 @@ static int check_mocs_engine(struct live_mocs *arg,
> >       /* Read the mocs tables back using SRM */
> >       offset = i915_ggtt_offset(vma);
> >       if (!err)
> > -             err = read_mocs_table(rq, &arg->table, &offset);
> > +             err = read_mocs_table(rq, &arg->mocs, &offset);
> >       if (!err && ce->engine->class == RENDER_CLASS)
> > -             err = read_l3cc_table(rq, &arg->table, &offset);
> > +             err = read_l3cc_table(rq, &arg->l3cc, &offset);
> 
> 
> Above functions will call read_regs().

And do nothing.

Perhaps using the flags for read_mocs_table() would be nice to eliminate
the HAS_GLOBAL_MOCS_REGISTERS(). Or creating global_mocs, engine_mocs,
render_l3cc. That might be overkill.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
