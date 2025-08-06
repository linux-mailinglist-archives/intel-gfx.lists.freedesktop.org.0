Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CA6B1C6AB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 15:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58A310E079;
	Wed,  6 Aug 2025 13:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992A210E079;
 Wed,  6 Aug 2025 13:16:37 +0000 (UTC)
Received: from 91-155-254-205.elisa-laajakaista.fi ([91.155.254.205]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uje0P-00000009Va6-2H64; Wed, 06 Aug 2025 16:16:35 +0300
Message-ID: <52c79b8181d30a58dfa3969c7cb5f0bca4ce86fd.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Charlton Lin <charlton.lin@intel.com>, Khaled Almahallawy
 <khaled.almahallawy@intel.com>
Date: Wed, 06 Aug 2025 16:16:32 +0300
In-Reply-To: <aJNU0W_bJOFRflwF@ideak-desk>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <7920b8ed0ae141aecae8d40177f35e642cb1ca16.camel@coelho.fi>
 <aJNCicpwIY2YtAun@ideak-desk>
 <c87c116fac9f588c177f0c957567844a36748274.camel@coelho.fi>
 <aJNU0W_bJOFRflwF@ideak-desk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 00/19] drm/i915/tc: Fix enabled/disconnected DP-alt sink
 handling
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

On Wed, 2025-08-06 at 16:12 +0300, Imre Deak wrote:
> On Wed, Aug 06, 2025 at 03:54:00PM +0300, Luca Coelho wrote:
> > On Wed, 2025-08-06 at 14:54 +0300, Imre Deak wrote:
> > > On Wed, Aug 06, 2025 at 02:44:41PM +0300, Luca Coelho wrote:
> > > > On Tue, 2025-08-05 at 10:36 +0300, Imre Deak wrote:
> > > > > This patchset fixes an issue on LNL+, where the TypeC PHY's mode/=
state
> > > > > is detected incorrectly during HW readout for a DP-alt sink that =
got
> > > > > enabled by BIOS/GOP, but later the sink got disconnected by the u=
ser
> > > > > before the driver got loaded.
> > > > >=20
> > > > > The issue in the driver is due to overlooking a change on LNL+ in=
 the
> > > > > way the PHY ready flag and pin assignment is set/cleared in the P=
HY
> > > > > registers by the HW/FW wrt. how this works on all the earlier (IC=
L-MTL)
> > > > > TypeC platforms.
> > > > >=20
> > > > > The first 5 patches fix the issue, the rest refactor the PHY's ma=
x lane
> > > > > count and pin assignment query functions, sanitizing the code, re=
moving
> > > > > duplications and validating the register values read out from the=
 HW.
> > > >=20
> > > > If you have 5 fix patches and the rest is refactoring, wouldn't it =
be
> > > > better to split the series in two?
> > >=20
> > > The refactoring part depends on the changes in the fixes part, so I
> > > couldn't send the refactoring part separately.
> >=20
> > Okay, fair enough.  I'd usually send the second part _after_ sending
> > the first one, of course, but you'd have to somehow mark the dependency
> > for CI and such.  Is that possible with our infra?
>=20
> Not aware of such. (There was a way to specify an IGT patchset to test
> the kernel changes with, but that's a different thing.)
>=20
> I agree it's better to have a separate CI run for the fixes part and
> also merge it separately. I think the reviewing could still happen for
> the current patchset and I could resend the fixes part only for CI. Are
> you ok with that?

Of course, totally okay and I'll review them in a bit.  Resending the
fixes part only, for CI, would indeed be a good idea, so we'll know if
there are any issues if they're taken without the refactoring (as what
would happen for stable or other cherry-picks).

--
Cheers,
Luca.
