Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3C9199CAC
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 19:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD3C6E864;
	Tue, 31 Mar 2020 17:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FCBA6E86E
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 17:17:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20755477-1500050 for multiple; Tue, 31 Mar 2020 18:16:25 +0100
MIME-Version: 1.0
In-Reply-To: <20200331171309.GC26946@jack.zhora.eu>
References: <20200331164508.51514-1-andi@etezian.org>
 <158567361246.5852.4972436644557691162@build.alporthouse.com>
 <20200331171309.GC26946@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158567498450.5852.18236529592450998208@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 31 Mar 2020 18:16:24 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: move remaining debugfs
 interfaces into gt
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-03-31 18:13:09)
> Hi Chris,
> 
> On Tue, Mar 31, 2020 at 05:53:32PM +0100, Chris Wilson wrote:
> > Quoting Andi Shyti (2020-03-31 17:45:08)
> > > +static void intel_sseu_copy_subslices(const struct sseu_dev_info *sseu,
> > > +                                     int slice, u8 *to_mask)
> > > +{
> > > +       int offset = slice * sseu->ss_stride;
> > > +
> > > +       memcpy(&to_mask[offset], &sseu->subslice_mask[offset], sseu->ss_stride);
> > > +}
> > 
> > Worth moving all the sseu into their file? There's quite a few of them
> > and each quite chunky.
> > 
> > > +static int interrupt_info_show(struct seq_file *m, void *data)
> > 
> > And if we start there, we might end up with debugfs_gt_irq.c as well?
> > (Not that I see any use for this debugfs info :)
> 
> add a debufs_gt_sseu.c and debugfs_gt_irq.c, isn't it a bit
> excessive? I also do agree that everything in one file looks a
> bit stuffed.

I think debugfs_gt_sseu.c is reasonably justified. (There's also an rcs
topology apparently!) That's a good chunk of 250+ lines of code that no
one wants to ever to have to read.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
