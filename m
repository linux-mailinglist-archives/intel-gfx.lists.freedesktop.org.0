Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 519309BE5B9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 12:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804EB10E6BC;
	Wed,  6 Nov 2024 11:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79C8B10E6BA;
 Wed,  6 Nov 2024 11:38:47 +0000 (UTC)
Received: from 37-33-128-53.bb.dnainternet.fi ([37.33.128.53]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t8eN1-00000001UJj-3GtC; Wed, 06 Nov 2024 13:38:45 +0200
Message-ID: <f6de991ddb50e048244a1b666511ed7749790d26.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Wed, 06 Nov 2024 13:37:11 +0200
In-Reply-To: <173081069857.2525.5073945892247170977@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-5-gustavo.sousa@intel.com>
 <ac29b67d7e6db0f2900edf0e0cd40b1c5befb895.camel@coelho.fi>
 <173081069857.2525.5073945892247170977@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 04/13] drm/i915/dmc_wl: Get wakelock when disabling
 dynamic DC states
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

On Tue, 2024-11-05 at 09:44 -0300, Gustavo Sousa wrote:
> Quoting Luca Coelho (2024-11-01 09:24:08-03:00)
> > On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
> > > Bspec says that disabling dynamic DC states require taking the DMC
> > > wakelock to cause an DC exit before writing to DC_STATE_EN. Implement
> > > that.
> > >=20
> > > In fact, testing on PTL revealed we end up failing to exit DC5/6 with=
out
> > > this step.
> > >=20
> > > Bspec: 71583
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_power_well.c    | 10 +++++++---
> > >  drivers/gpu/drm/i915/display/intel_dmc_wl.c        | 14 ++++++++++++=
--
> > >  drivers/gpu/drm/i915/display/intel_dmc_wl.h        |  2 ++
> > >  3 files changed, 21 insertions(+), 5 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c =
b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > index adaf7cf3a33b..e8946ce86aaa 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > @@ -987,10 +987,14 @@ void gen9_disable_dc_states(struct intel_displa=
y *display)
> > >                  return;
> > >          }
> > > =20
> > > -        gen9_set_dc_state(display, DC_STATE_DISABLE);
> > > -
> > > -        if (!HAS_DISPLAY(display))
> > > +        if (HAS_DISPLAY(display)) {
> > > +                intel_dmc_wl_get_noreg(display);
> > > +                gen9_set_dc_state(display, DC_STATE_DISABLE);
> > > +                intel_dmc_wl_put_noreg(display);
> > > +        } else {
> > > +                gen9_set_dc_state(display, DC_STATE_DISABLE);
> > >                  return;
> > > +        }
> >=20
> > I think intel_dmc_get/put() already protect indirectly on
> > HAS_DISPLAY(), doesn't it? If that's the case, then the if here is
> > unnecessary.
>=20
> Actually, intel_dmc_wl_init() gets called only when HAS_DISPLAY() is
> true, so I think using intel_dmc_wl_{get,put}_noreg() for the
> !HAS_DISPLAY() case would not be right, at least not with the current
> state of the code.

Okay, fair enough.

--
Cheers,
Luca.
