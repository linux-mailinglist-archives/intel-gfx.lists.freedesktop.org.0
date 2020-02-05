Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7AE1539F5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 22:08:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38556F958;
	Wed,  5 Feb 2020 21:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 7802 seconds by postgrey-1.36 at gabe;
 Wed, 05 Feb 2020 21:08:20 UTC
Received: from 4.mo173.mail-out.ovh.net (4.mo173.mail-out.ovh.net
 [46.105.34.219])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21B346F958
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 21:08:20 +0000 (UTC)
Received: from player737.ha.ovh.net (unknown [10.110.103.168])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 8724812EBBD
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 19:41:00 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player737.ha.ovh.net (Postfix) with ESMTPSA id A1C4A5983CC3;
 Wed,  5 Feb 2020 18:40:56 +0000 (UTC)
Date: Wed, 5 Feb 2020 20:40:55 +0200
From: Andi Shyti <andi@etezian.org>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Message-ID: <20200205184055.GA3088@jack.zhora.eu>
References: <20200205105749.1769982-1-chris@chris-wilson.co.uk>
 <87v9ol9kcl.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9ol9kcl.fsf@gaia.fi.intel.com>
X-Ovh-Tracer-Id: 881579628275810836
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrhedugdduudduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfeejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: add basic selftests for
 rc6
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

Hi Mika,

> > +static bool test_rc6(struct intel_rc6 *rc6, bool enabled)
> > +{
> > +	struct intel_uncore *uncore = rc6_to_uncore(rc6);
> > +	intel_wakeref_t wakeref;
> > +	u32 ec1, ec2;
> > +	u32 interval;
> > +
> > +	wakeref = intel_runtime_pm_get(uncore->rpm);
> > +
> > +	interval = intel_uncore_read(uncore, GEN6_RC_EVALUATION_INTERVAL);
> > +
> > +	/*
> > +	 * the interval is stored in steps of 1.28us
> > +	 */
> > +	interval = div_u64(mul_u32_u32(interval, 128),
> > +			   100 * 1000); /* => miliseconds */
> > +
> 
> s/miliseconds/milliseconds.

thanks!

> I have a faint memory that the interval was not always 1.28us
> but gen dependant.

1.28 is the incremental step and I haven't seen any different
value in the docs. Have you?

> > +	pr_info("interval:%x [%dms], threshold:%x, rc6:%x, enabled?:%s\n",
> > +		intel_uncore_read(uncore, GEN6_RC_EVALUATION_INTERVAL),
> > +		interval,
> > +		intel_uncore_read(uncore, GEN6_RC6_THRESHOLD),
> > +	       	ec2 - ec1,
> > +	       	yesno(enabled));
> > +
> > +	intel_runtime_pm_put(uncore->rpm, wakeref);
> > +
> > +	return enabled != (ec1 >= ec2);
> 
> Wrap?

actually here I forgot a couple of things that went forgotten in
my git repo.

Anyway, do you mean with "wrap" to add parenthesis?

> > +	intel_rc6_unpark(rc6);
> > +
> > +	/* interval < threshold */
> > +	if (!test_rc6(rc6, false)) {
> 
> consider removing the assertion of 'activeness' in parameter
> and just if (!rc6_active(rc6)). Or am I missing something in here?

yes, you are right, it's misleading. I will make it more clear.

The basic idea is:

 1. disable rc6
 2. check whether it's disabled test_rc6(rc6, false)

or

 1. enable rc6
 2. check if it's enabled test_rc6(rc6, true)

Chris was skeptical about the naming as well.

Thanks!

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
