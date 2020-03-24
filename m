Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FF61913E6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 16:10:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B67236E051;
	Tue, 24 Mar 2020 15:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 7.mo2.mail-out.ovh.net (7.mo2.mail-out.ovh.net [188.165.48.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84BCB6E051
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 15:10:25 +0000 (UTC)
Received: from player763.ha.ovh.net (unknown [10.108.42.145])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id D45E61C3638
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:03:43 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player763.ha.ovh.net (Postfix) with ESMTPSA id 8AE4A10BB8641;
 Tue, 24 Mar 2020 15:03:40 +0000 (UTC)
Date: Tue, 24 Mar 2020 17:03:31 +0200
From: Andi Shyti <andi@etezian.org>
To: Andi Shyti <andi.shyti@intel.com>
Message-ID: <20200324150331.GC131880@jack.zhora.eu>
References: <20200324134232.8773-1-chris@chris-wilson.co.uk>
 <20200324145351.GA1682@intel.intel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324145351.GA1682@intel.intel>
X-Ovh-Tracer-Id: 2400137130049585700
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudehuddggeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejieefrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Select the deepest available
 parking mode for rc6
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

Hi again, Chris,

> > @@ -622,7 +623,14 @@ void intel_rc6_park(struct intel_rc6 *rc6)
> >  
> >  	/* Turn off the HW timers and go directly to rc6 */
> >  	set(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
> > -	set(uncore, GEN6_RC_STATE, 0x4 << RC_SW_TARGET_STATE_SHIFT);
> > +
> > +	if (HAS_RC6pp(rc6_to_i915(rc6)))
> > +		target = 0x6; /* deepest rc6 */
> > +	else if (HAS_RC6p(rc6_to_i915(rc6)))
> > +		target = 0x5; /* deep rc6 */
> > +	else
> > +		target = 0x4; /* normal rc6 */
> 
> can we put names to these values?

actually, you are using these only here and there is a comment to
them... givinb those values a meaningful define is a bit of a
formality, I'd say. It's up to you.

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
