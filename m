Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50742B38082
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 13:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 236EC10E0A8;
	Wed, 27 Aug 2025 11:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16A210E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 11:06:27 +0000 (UTC)
Received: from 91-155-254-88.elisa-laajakaista.fi ([91.155.254.88]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1urDyw-00000000LNa-0aF2; Wed, 27 Aug 2025 14:06:23 +0300
Message-ID: <faf11ac52a034579f4d5993b61792d5d8d13cc65.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 27 Aug 2025 14:06:20 +0300
In-Reply-To: <508d5fccab10abc88fc896f895ede1edb098b0e2@intel.com>
References: <20250827102522.398646-1-luciano.coelho@intel.com>
 <508d5fccab10abc88fc896f895ede1edb098b0e2@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH] drm/i915: make FW_BLC_SELF_* macros type-safe
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

On Wed, 2025-08-27 at 13:57 +0300, Jani Nikula wrote:
> On Wed, 27 Aug 2025, Luca Coelho <luciano.coelho@intel.com> wrote:
> > Add the unsigned suffix to FW_BLC_SELF_* macro definitions to avoid
> > potentially typing them as 'int'.
> >=20
> > For example, this happens when we pass them to _MASKED_BIT_ENABLE(),
> > because of the typeof() construct there.  When we pass 1 << 15 (the
> > FW_BLC_SELF_EN macro), we get typeof(1 << 15), which is 'int'.  Then
> > the value becomes negative (-2147450880) and we try to assign it to a
> > 'u32'.
> >=20
> > In practice this is not a problem though, because when we try to
> > assign -2147450880 to the u32, that becomes 0x80008000, which was the
> > intended result.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index b283b25d8368..8c8e32b6c662 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -412,9 +412,9 @@
> >  #define FW_BLC		_MMIO(0x20d8)
> >  #define FW_BLC2		_MMIO(0x20dc)
> >  #define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
> > -#define   FW_BLC_SELF_EN_MASK      (1 << 31)
> > -#define   FW_BLC_SELF_FIFO_MASK    (1 << 16) /* 945 only */
> > -#define   FW_BLC_SELF_EN           (1 << 15) /* 945 only */
> > +#define   FW_BLC_SELF_EN_MASK      (1U << 31)
> > +#define   FW_BLC_SELF_FIFO_MASK    (1U << 16) /* 945 only */
> > +#define   FW_BLC_SELF_EN           (1U << 15) /* 945 only */
>=20
> We have the REG_GENMASK* and REG_BIT* macros for exactly this purpose.

TBH, I saw them, but I was not entirely sure why they're needed.  And
since the entire file is a mixed bag of styles related to this, my idea
was not to change it.

But thanks for pointing out! I'll use them instead and send v2.

--
Cheers,
Luca.
