Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B12D8C97425
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 13:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDD310E3C8;
	Mon,  1 Dec 2025 12:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4950810E3C8;
 Mon,  1 Dec 2025 12:28:39 +0000 (UTC)
Received: from mobile-access-d98cd5-49.dhcp.inet.fi ([217.140.213.49]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vQ318-00000000VZF-1VIr; Mon, 01 Dec 2025 14:28:37 +0200
Message-ID: <cbddae082c6c67ee58cb9195709d28ece9d5aa4a.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 01 Dec 2025 14:28:25 +0200
In-Reply-To: <df42724a6e39eec45cf126f175866e88b0b33f0d@intel.com>
References: <cover.1764076995.git.jani.nikula@intel.com>
 <f182bd26d5f9a00e843246d4aac8b25ff7531c51.1764076995.git.jani.nikula@intel.com>
 <20d6e9910f0a7faf3ed14e37db0ff0860a17e017.camel@coelho.fi>
 <df42724a6e39eec45cf126f175866e88b0b33f0d@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v2 4/5] drm/i915/power: convert intel_wakeref_t to
 struct ref_tracker *
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

On Mon, 2025-12-01 at 14:25 +0200, Jani Nikula wrote:
> On Mon, 01 Dec 2025, Luca Coelho <luca@coelho.fi> wrote:
> > On Tue, 2025-11-25 at 15:24 +0200, Jani Nikula wrote:
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gp=
u/drm/xe/display/xe_display_rpm.c
> > > index 340f65884812..9416ec784e39 100644
> > > --- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
> > > +++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
> > > @@ -5,6 +5,7 @@
> > > =20
> > >  #include "intel_display_core.h"
> > >  #include "intel_display_rpm.h"
> > > +#include "intel_wakeref.h"
> >=20
> > Just to be sure this is not a stray change, why did you add it here?
>=20
> I was pretty sure it was required, maybe depending on some kconfig,
> because the include is being removed in some other places, but I can't
> reproduce the fail now.
>=20
> I'd say not a huge problem because it's being removed in the next patch
> no matter what.

Makes sense.  Thanks for the clarification. :)

--
Cheers,
Luca.
