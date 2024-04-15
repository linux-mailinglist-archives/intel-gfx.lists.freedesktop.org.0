Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7588A48A6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 09:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4472A112238;
	Mon, 15 Apr 2024 07:05:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6EFC112236;
 Mon, 15 Apr 2024 07:05:26 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1rwGP2-00000000Hg3-2n1K; Mon, 15 Apr 2024 10:05:22 +0300
Message-ID: <2fe5226a281ad1db416d26969e5edf07b60dd349.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Date: Mon, 15 Apr 2024 10:05:19 +0300
In-Reply-To: <DM4PR11MB6360FFEA82155778AD9B9778F4092@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240412094148.808179-1-luciano.coelho@intel.com>
 <20240412094148.808179-2-luciano.coelho@intel.com>
 <DM4PR11MB63600F7F0EE905B24FED01B2F4042@DM4PR11MB6360.namprd11.prod.outlook.com>
 <7c2a11df009a90646d39783c01f722b96717966c.camel@coelho.fi>
 <DM4PR11MB6360FFEA82155778AD9B9778F4092@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2024-04-15 at 05:05 +0000, Shankar, Uma wrote:
>=20
> > -----Original Message-----
> > From: Luca Coelho <luca@coelho.fi>
> > Sent: Friday, April 12, 2024 5:57 PM
> > To: Shankar, Uma <uma.shankar@intel.com>; Coelho, Luciano
> > <luciano.coelho@intel.com>; intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; ville.syrjala@linux.intel.com; Niku=
la, Jani
> > <jani.nikula@intel.com>
> > Subject: Re: [PATCH v5 1/4] drm/i915/display: add support for DMC wakel=
ocks
> >=20
> > On Fri, 2024-04-12 at 10:30 +0000, Shankar, Uma wrote:
> > >=20
> > > > -----Original Message-----
> > > > From: Coelho, Luciano <luciano.coelho@intel.com>
> > > > Sent: Friday, April 12, 2024 3:12 PM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: intel-xe@lists.freedesktop.org; Shankar, Uma
> > > > <uma.shankar@intel.com>; ville.syrjala@linux.intel.com; Nikula, Jan=
i
> > > > <jani.nikula@intel.com>
> > > > Subject: [PATCH v5 1/4] drm/i915/display: add support for DMC
> > > > wakelocks
> > > >=20
> > > > In order to reduce the DC5->DC2 restore time, wakelocks have been
> > > > introduced in DMC so the driver can tell it when registers and othe=
r
> > > > memory areas are going to be accessed and keep their respective blo=
cks
> > awake.
> > > >=20
> > > > Implement this in the driver by adding the concept of DMC wakelocks=
.
> > > > When the driver needs to access memory which lies inside pre-define=
d
> > > > ranges, it will tell DMC to set the wakelock, access the memory,
> > > > then wait for a while and clear the wakelock.
> > > >=20
> > > > The wakelock state is protected in the driver with spinlocks to
> > > > prevent concurrency issues.
> > >=20
> > > Hi Luca,
> > > Seems you missed to add the version history.
> >=20
> > I've been sending the version history in the cover letter, because I do=
n't think it
> > adds any information after it gets to the mainline kernel.  The history=
 is lost
> > anyway, so the mailing list is a better place to store it (it's unique =
and meaningful
> > there).
>=20
> Its matter of preference, but being part of the patch's commit message it=
 stays with it
> and can be checked with a git show. Cover letter details gets lost though=
 as it doesn't
> end up in the tree.

Yes, but the change history in the commit message doesn't tell the full
story.  If I write, for instance, "In v2: refactor intel_foo_bar()",
there's no way to know what it looked like before.  That's why I think
that, if we want to keep the version history accessible from the git
tree, we should have a link to the mailing list discussions, as
apparently we do in most cases anyway.


> > Bur as I said to someone else before, I can add it to the commit messag=
e if you
> > think that it's needed.
>=20
> Not needed Luca, it was a simple nitpick =F0=9F=98=8A. You can skip that.

Thanks for pointing out, anyway! =F0=9F=98=89 I don't want to keep flaming =
about
this, so I'll just try to remember to add it next time, so it doesn't
come up again.


> > >=20
> > > Anyways, changes look good to me.
> > > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >=20
> > Thanks a lot!
> >=20
> > Though you didn't review patch 3/4, the one about the module parameter.
> > Was that intentional or did you just miss it?
>=20
> I think I have reviewed and RB'ed it. The entire series is RB'ed now.

Oh, right.  "Someone" was not paying attention.  I even already had the
r-b in the commit message itself.  Silly me.

Thanks a lot for your reviews! Now I just need to get someone to merge
this series, since I don't have commit rights to the repo yet.

--
Cheers,
Luca.
