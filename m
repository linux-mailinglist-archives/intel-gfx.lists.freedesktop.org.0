Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B61666867D3
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 15:00:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E8210E404;
	Wed,  1 Feb 2023 14:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE07310E40C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 14:00:33 +0000 (UTC)
Received: from 91-155-255-60.elisa-laajakaista.fi ([91.155.255.60]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1pNDf2-0062Qb-CA;
 Wed, 01 Feb 2023 16:00:30 +0200
Message-ID: <ccd859f01f337a06cf37da6aa4e19e39d7346f6b.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 01 Feb 2023 16:00:27 +0200
In-Reply-To: <20230201135329.514677-1-luciano.coelho@intel.com>
References: <20230201135329.514677-1-luciano.coelho@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [RFC] drm/i915: make dev_priv usage explitic in
 some macros
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
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2023-02-01 at 15:53 +0200, Luca Coelho wrote:
> There are a few macros (e.g. DPLL()) that implicitly use dev_priv, by
> using other macros that implcitily use dev_priv.
>=20
> In an effort to align all definitions of struct drm_i915_private to be
> declared as i915 instead of arbitrarily using either i915 or dev_priv,
> we need to make these macros explicitly use dev_priv, so that we can
> change them later to be defined as i915.
>=20
> In order to find and change all occurrences, the following semantic
> patch rules were used:
>=20
> @macros_noargs@
> identifier m;
> expression e =3D~ "dev_priv";
> @@
>=20
> @nested_macros@
> identifier macros_noargs.m;
> identifier nm;
> identifier list il;
> @@
>=20
> @@
> identifier nested_macros.nm;
> identifier dev_priv, f;
> expression list el;
> @@
> f(...) {
> 	...
> 	struct drm_i915_private *dev_priv =3D ...;
>=20
> 	<+...
> 	nm(
> +	dev_priv,
> 	el)
> 	...+>
> }
>=20
> @@
> identifier nested_macros.nm;
> identifier dev_priv, f;
> expression list el;
> @@
> f(..., struct drm_i915_private *dev_priv, ...) {
> 	<+...
> 	nm(
> +	dev_priv,
> 	el)
> 	...+>
> }
>=20
> @@
> identifier nested_macros.nm;
> identifier list il;
> expression e;
> @@
> -#define nm(il) e
> +#define nm(dev_priv,il) e
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---

Running this rules require --recursive-includes as argument to cocci
and takes a looong time, so I had to run some rules and files
separately.  Additionally, I had to use the latest git head of cocci
from github, where some bugs related to finding which files to include
were fixed.

This patch may still need some manual trimming.  But before I spend
more time on this, I would like to know what you all thing about it, so
comments are very welcome.

If this is the right way to go, I can create more rules to change the
inner macros to also receive dev_priv as a parameter and, later, to
change all dev_priv's to i915. :)

--
Cheers,
Luca.
