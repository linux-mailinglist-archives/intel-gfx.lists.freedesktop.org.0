Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B6C4AEB02
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 08:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67CF410E1D2;
	Wed,  9 Feb 2022 07:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBC3C10E1D2;
 Wed,  9 Feb 2022 07:28:09 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 10BB668AFE; Wed,  9 Feb 2022 08:28:06 +0100 (CET)
Date: Wed, 9 Feb 2022 08:28:05 +0100
From: Christoph Hellwig <hch@lst.de>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220209072805.GA9050@lst.de>
References: <20220208111151.13115-1-zhi.a.wang@intel.com>
 <871r0dqtjf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871r0dqtjf.fsf@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v6 1/3] i915/gvt: Introduce the mmio table
 to support VFIO new mdev API
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
Cc: Zhi Wang <zhi.wang.linux@gmail.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Terrence Xu <terrence.xu@intel.com>, jgg@nvidia.com,
 intel-gvt-dev@lists.freedesktop.org, hch@lst.de
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 08, 2022 at 05:15:00PM +0200, Jani Nikula wrote:
> >  #ifdef CONFIG_DRM_I915_GVT
> > +
> > +#define D_BDW   (1 << 0)
> > +#define D_SKL	(1 << 1)
> > +#define D_KBL	(1 << 2)
> > +#define D_BXT	(1 << 3)
> > +#define D_CFL	(1 << 4)
> > +
> > +#define D_GEN9PLUS	(D_SKL | D_KBL | D_BXT | D_CFL)
> > +#define D_GEN8PLUS	(D_BDW | D_SKL | D_KBL | D_BXT | D_CFL)
> > +
> > +#define D_SKL_PLUS	(D_SKL | D_KBL | D_BXT | D_CFL)
> > +#define D_BDW_PLUS	(D_BDW | D_SKL | D_KBL | D_BXT | D_CFL)
> > +
> > +#define D_PRE_SKL	(D_BDW)
> > +#define D_ALL		(D_BDW | D_SKL | D_KBL | D_BXT | D_CFL)
> 
> If these really need to be in a header in i915/, I think they need to be
> longer with some namespacing or something. I do wish these could be
> hidden though.

I think we could actually kill them off entirely.  They are used as
arguments to the macros that setup the mmio table.

Thefunctions to build these tabls are already organized by families,
so we'd need relatively few conditions to just build them the right
way.  There also are some runtime checks in the callbacks, but they
seem entirely superflous as far as I can tell.

Only the cmd parser is a bit messy.  So maybe we could keep these
constants just for the cmd parser inside of gvt for now (and clean
that up later) and remove them entirely from the mmio table.
