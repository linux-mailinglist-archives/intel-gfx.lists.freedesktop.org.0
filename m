Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D632130B4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 02:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E9FF6E19B;
	Fri,  3 Jul 2020 00:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 10801 seconds by postgrey-1.36 at gabe;
 Fri, 03 Jul 2020 00:54:27 UTC
Received: from 7.mo4.mail-out.ovh.net (7.mo4.mail-out.ovh.net [178.33.253.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C506E19B
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 00:54:27 +0000 (UTC)
Received: from player737.ha.ovh.net (unknown [10.108.42.82])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id E44DD241328
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 23:15:18 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player737.ha.ovh.net (Postfix) with ESMTPSA id EF439A89D2D4;
 Thu,  2 Jul 2020 21:15:15 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-106R006d9394081-6ce4-426a-9017-d6615d2d9935,FB3D8E5C650F7CFAB96446367E683FB3BA96C23C)
 smtp.auth=andi@etezian.org
Date: Fri, 3 Jul 2020 00:15:14 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200702211514.GC1969@jack.zhora.eu>
References: <20200702211015.29604-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702211015.29604-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 5649202785312162313
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrtdeggdduheefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfeejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Also drop vm.ref along error
 paths for vma construction
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Thu, Jul 02, 2020 at 10:10:15PM +0100, Chris Wilson wrote:
> Not only do we need to release the vm.ref we acquired for the vma on the
> duplicate insert branch, but also for the normal error paths, so roll
> them all into one.
> 
> Reported-by: Andi Shyti <andi.shyti@intel.com>
> Suggested-by: Andi Shyti <andi.shyti@intel.com>
> Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: <stable@vger.kernel.org> # v5.5+

I've never been mentioned this much before, not even at school.
But that's not enough and I'll give myself another mention:

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
