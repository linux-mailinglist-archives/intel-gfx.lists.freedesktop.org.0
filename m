Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9928189DA4
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 230C66E8E4;
	Wed, 18 Mar 2020 14:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 3.mo179.mail-out.ovh.net (3.mo179.mail-out.ovh.net
 [178.33.251.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAEA36E8E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:13:27 +0000 (UTC)
Received: from player728.ha.ovh.net (unknown [10.110.208.131])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id D3C2B15F8B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 15:13:25 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player728.ha.ovh.net (Postfix) with ESMTPSA id 764F510786D6D;
 Wed, 18 Mar 2020 14:13:14 +0000 (UTC)
Date: Wed, 18 Mar 2020 16:13:13 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200318141313.GF27848@jack.zhora.eu>
References: <20200318135837.79467-1-andi@etezian.org>
 <158454036744.6873.6457313387180453751@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158454036744.6873.6457313387180453751@build.alporthouse.com>
X-Ovh-Tracer-Id: 3207970312660107785
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudefjedgiedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejvdekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: move files more files into
 debugfs
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

Hi Chris,

On Wed, Mar 18, 2020 at 02:06:07PM +0000, Chris Wilson wrote:
> Quoting Andi Shyti (2020-03-18 13:58:37)
> > From: Andi Shyti <andi.shyti@intel.com>
> > 
> > The following interfaces:
> > 
> > i915_wedged
> > i915_forcewake_user
> 
> Ok.
> 
> > i915_gem_interrupt
> 
> More display really, not actually the primary info dump for GEM or GT.
> s/gem/ or just delete it, if we're not using, and display isn't, it's
> pretty pointless.

The original is left in the main directory, I isolated the engine
related information and printed just them withot any display
information.

> > i915_gem_drop_caches
> 
> This is definitely an outer layer only debug iface. I don't think we
> really want this to proliferate.

true, there were a few pm operations that's why I thought that it
might fit, we can remove it

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
