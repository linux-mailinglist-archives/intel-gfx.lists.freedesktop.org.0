Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 341BC8A2E40
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 14:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE7F10E41C;
	Fri, 12 Apr 2024 12:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44BD10E687;
 Fri, 12 Apr 2024 12:28:46 +0000 (UTC)
Received: from 87-95-9-152.bb.dnainternet.fi ([87.95.9.152]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1rvG1K-00000000FLo-0IyM; Fri, 12 Apr 2024 15:28:43 +0300
Message-ID: <7c2a11df009a90646d39783c01f722b96717966c.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Date: Fri, 12 Apr 2024 15:27:10 +0300
In-Reply-To: <DM4PR11MB63600F7F0EE905B24FED01B2F4042@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240412094148.808179-1-luciano.coelho@intel.com>
 <20240412094148.808179-2-luciano.coelho@intel.com>
 <DM4PR11MB63600F7F0EE905B24FED01B2F4042@DM4PR11MB6360.namprd11.prod.outlook.com>
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

On Fri, 2024-04-12 at 10:30 +0000, Shankar, Uma wrote:
>=20
> > -----Original Message-----
> > From: Coelho, Luciano <luciano.coelho@intel.com>
> > Sent: Friday, April 12, 2024 3:12 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com=
>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> > Subject: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
> >=20
> > In order to reduce the DC5->DC2 restore time, wakelocks have been intro=
duced
> > in DMC so the driver can tell it when registers and other memory areas =
are going
> > to be accessed and keep their respective blocks awake.
> >=20
> > Implement this in the driver by adding the concept of DMC wakelocks.
> > When the driver needs to access memory which lies inside pre-defined ra=
nges, it
> > will tell DMC to set the wakelock, access the memory, then wait for a w=
hile and
> > clear the wakelock.
> >=20
> > The wakelock state is protected in the driver with spinlocks to prevent
> > concurrency issues.
>=20
> Hi Luca,
> Seems you missed to add the version history.

I've been sending the version history in the cover letter, because I
don't think it adds any information after it gets to the mainline
kernel.  The history is lost anyway, so the mailing list is a better
place to store it (it's unique and meaningful there).

Bur as I said to someone else before, I can add it to the commit
message if you think that it's needed.

>=20
> Anyways, changes look good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Thanks a lot!

Though you didn't review patch 3/4, the one about the module parameter.
Was that intentional or did you just miss it?

--
Cheers,
Luca.
