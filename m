Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9351CB10FA6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 18:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C076B10E3FB;
	Thu, 24 Jul 2025 16:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=aol.com header.i=@aol.com header.b="KK+TW3M1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sonic308-55.consmr.mail.gq1.yahoo.com
 (sonic308-55.consmr.mail.gq1.yahoo.com [98.137.68.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B0AD10E3FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jul 2025 16:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1753374691; bh=BrVn83uUwdOU7S3+PKhRCCW5wfE8gY91dIZRiBFh3lQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From:Subject:Reply-To;
 b=KK+TW3M1dCcA1MEwfpW0AwNoi6tscWKlKRemxT5mF8f6uafFuKxn0sWDWnntH95Etvn3+un8fPZzItCFc+S/DcDQ1lewdqjd1KEETrNM1u8/iIwse5V1w5yCyRcFOBtx2CFqfrrepu6mSZ/Ut/oyYMSUOZI6W8WGKtdO2CAbn0pwqf1Yrqm0V6P6QtpMgzPLKIEv1bG+1W3TVT2c3TBOWhVmnyZu7QzyRRnpNjhG2uAOjxmIjlnSkZp/Z8m2+WxvHVrWpCJkVXAGlM4fzYbGrMCsW1ZAd52lZrHED0ADo951evclAH/x2KjYcGJ1ORCYw3H1pbTbBpr8TFKwxki+hw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1753374691; bh=iZNXHdR0NV3kqCCNyEymMb+WqQSGwS6me4OEKV+Nls5=;
 h=X-Sonic-MF:Subject:From:To:Date:From:Subject;
 b=I7x8TUrRWxqE7Nxzq6VTPWB4e+mfBjvaAGpG9Fz0e7aQfpIBnJQSueS8z0bs80AvPBXI/27ju8b2yykrexetf4wa5x13tY5g+WPTvtmxEeZe5wEo35YFMiHYzyJSP1vS//cPdGMhJ24aFSq/phiRuTh/c60as+gpcBjn1e3o5AoeRaGmY+ZypuEmjpTNdoiwLYm1lADCejia2AQM8tvQfBlca4K8VBjvxv3YBSUDbduGvQAX1TStCLI9gZLEefI7zLGF3X/Zcw2Nmrxm1wbXJrBr6wXuHs9nnVg+wYRaNu1SD8O5ssdO2sQTkyOcB/73LwrH2oV0Z2FECFWnKqqsDA==
X-YMail-OSG: OA9NdIcVM1n8ubUDxE0.tSqJW7rMhcOPBEMnDkSvqWdSCcpjtBjx6PZWF2jz8iP
 Yat0WlcsdGJo1XMgmy.H_ggGRreCRsbWARVC4.oGVT82YhZKJ.7njcG0JspJxESk9dd_uJevA3Ly
 rWg45MLaZLpDPkTGvdsIoKSxOVEisXX6y5Zj6MwZm0Yx_W5eaN2HVxDmAP8VlW61cqm0nCSM82zc
 1WCS8aUFPZugjt3XJsHfof.EYs9mxCVY0cyECXwgx.2Xxu3j1UAQLM31l2wveEtrxnvPhq_F1RRx
 OILMqwPR1_QvdMvUb_Harg98AYUUqIrWG2asXZlUW6ZvuJJ8KSlNoz7L29_nQjQk7wayWMfKEAJb
 99MYswQnDTxjCBicVgTeN.ROGtUF30sSU6gsO7FGi91J3MLdY5Dh8LzJ8YIOawpdY1WH0janawvU
 tI0u1yascJJMsdVbX1FY2Fi89qlZfNXOuvu9J6j5hP8CHS8G23_W4qx46.Sx.m.RKRuG2Rcdkdmg
 z.MFAPPx4Yl.R8CiSWO7vEeoOUnMDxDZPj16tYrYXhdaTFW3Xt3BTVZ9shtUo.nlK9tN5zAfn2AR
 VUtuL0GIwaKU4UAg8Y0mN8JcR9f26QWNEPhNUphSLN5xE.Yq9HWyEfxvNeS.Nxhck.aGSg0cgWaL
 akFf1Es4v3F8Uqrn.NDkZTDki6JV7aNKcy6xCK.r6EvtgfxPznTl8bC7HNl50b.5UqrDlBnqO1Zs
 Z.DedxlQH88R_MYv3jp8uSrCAslKIL.YU1dTA2LZkYuPu4bJaEgwUok0XGi4xLVdhaZ8WzpjNMWq
 pfP9zOvOCz0_Hx1yE2u0_Qe_YkB.Y1LUZDk9iUcxpa0OiZ97Byo2q_9.0wkg2WBku9VtfoFGxwsm
 bOgkCGrWDWMtealXLpjKTP9Utgtexh36ux67IZkU6_4bkeiRh78IGI53U3MlScpMEKj_7d8IsEfn
 TUUQQQo8RNGC3TE5Os0WCEjTXo6PSlFzyBJhhUGW2PHYXEiDVZMbqWUfi6mtsTjVGBW7JZh25D_m
 3X7wRv10HX9mB9Huk76QW4roYRndq00FaL.IaXK6eBKjGLhzhvH170GX18kNVtJTClsemoYyxt9T
 _gruhZ9vw.2twdkhk_VpUWHeUslLw8GbMyG57LUSnoyhszoK9dxaMDfmMikIIYS8XL7N5k9mDO40
 9KPiYTJc51pE0L2Ksuc_c_s9FJO5ADN_n_OzkZPoS04GiQgB61ASJSXlpwq91b4TMAmBWjgwd87r
 E9dD61RvjHHCMX7d20th9Hpby7XLauKuuGs.FBOKj9ulqRoPg__JOzBH2kcgBwPvyfCDK4FgzZdX
 ypxuNe726ZmOzHa3NhP8PNHB_T3smjwsDOh9w63bAceJzFmyLN0HJQ5gAW.FzUmpiBach9UPjh7p
 r3I77FXAJst0hPt6yovaJcGXSCQCTxBkiLYqEAb_iuI_VlnhiGT0Ohe_mPr.17J.Du43cb.m9fWg
 Kqmxo..yl1wH06gCJeF6JyUXshGteNtnzvdzyG2snxfz9cSyVT5tYSCq8se70sjUI7gj6FqGM7mJ
 K2pw5iSpZTLvAQA1WrE9ni8XD.UbUoE9abZXDBUSxMLCi9okkQFne6ESC2uLvqRPmuweGZQXiwwa
 oyutrwhhiMevllAP5CdXpDV7O0crrWxLe9MAWkjfJrduwi7kMOqnzLqcZzxc7z88Vvto2U3KThwe
 OvZ20dy8lRzprvGOYGCQREXjVWDrdAUMDLCKqetwdit95n8JuAiMBv_BDnN9dH6hLPQVCkXDltp3
 LOKNhaMr3xhUQIsW3XrxnkkI0EvH0MMtGtJQTcxQKd6p7PSnlBMUfJxZDkP9Euk7B0iHoOTFWThW
 V0k5AdlTC.91PKZpXHW5p1R8W9bdS6j0ppoVkZXnsgpNg7PZZBmeQBrRWKtZGV7GKhWG0sec9kdT
 U9pnc2SrF41C9c5vEDgKUyC78jo4AW20saCYK2Ig8_I5VBRXZQa.y1bJ4g1AO1QfGnCuQDmlOMa5
 oIteMJ4ukKw_EdKjO8xtg5wxCKM.Fbcanplq6ZlZ5cOD5.TmeNpsD7mrG2E98aWh8ygO1Axw3el0
 KB0N6nuw1HDkPQhnxJWLsHRoJLM3Gh1mDSuMH2MReuVWUKM6f5JRfUOyrg5ZmTn_sBSt9hm6U79E
 7Y1NxwjoAnHyRlZ8i2FjzPyu9DJnqhwPnul0gYZc7Px0IErYtjGqutUwVheBRk2pY8eNXgmObw2N
 VsRu2uxmy1N5ihrmNVV_jq1zSDcbxTxFwOa6dbSNKBKTHwjFUuTHDzQ--
X-Sonic-MF: <rubenru09@aol.com>
X-Sonic-ID: e48ee6d9-68b5-46f9-aaca-87b9233652c9
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.gq1.yahoo.com with HTTP; Thu, 24 Jul 2025 16:31:31 +0000
Received: by hermes--production-ir2-858bd4ff7b-rtzhj (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID c4c60925c9609695c823e4ca0fff611b; 
 Thu, 24 Jul 2025 16:31:30 +0000 (UTC)
Message-ID: <954507fb83b5f83c7b8fb609fa84d0c7d8455fff.camel@aol.com>
Subject: Re: [PATCH] drm/i915: Fix selecting CONFIG_DRM_KUNIT_TEST in debug
 builds
From: Ruben Wauters <rubenru09@aol.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Jul 2025 17:31:28 +0100
In-Reply-To: <aIJey5rLh_lBaEtu@intel.com>
References: <20250724090237.92040-1-imre.deak@intel.com>
 <aIJey5rLh_lBaEtu@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 
MIME-Version: 1.0
X-Mailer: WebService/1.1.24187
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
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

On Thu, 2025-07-24 at 12:26 -0400, Rodrigo Vivi wrote:
> On Thu, Jul 24, 2025 at 12:02:37PM +0300, Imre Deak wrote:
> > Selecting an option which depends on other options only works if
> > the
> > dependencies are guaranteed to be selected (as these dependencies
> > will
> > not be automatically selected). CONFIG_DRM_KUNIT_TEST depends on
> > DRM,
> > MMU and KUNIT the first two of which are guaranteed to be selected
> > for
> > i915, but the last one is not. Hence, selecting
> > CONFIG_DRM_KUNIT_TEST in
> > i915 debug builds may result in CONFIG_DRM_KUNIT_TEST being
> > selected
> > without the CONFIG_KUNIT dependency being selected. This causes at
> > least
> > the following compile error:
> >=20
my bad, I guess I fundamentally misunderstood how the Kconfig system
worked, and assumed that if you selected one all the dependencies were
automatically selected. I guess this passed me by in testing cause I
already had CONFIG_KUNIT selected and didn't think to de-select it,
apologies.

> > drivers/gpu/drm/tests/drm_bridge_test.c: In function
> > =E2=80=98drm_test_bridge_alloc_init=E2=80=99:
> > drivers/gpu/drm/tests/drm_bridge_test.c:449:21: error: implicit
> > declaration of function =E2=80=98kunit_device_register=E2=80=99; did yo=
u mean
> > =E2=80=98root_device_register=E2=80=99? [-Werror=3Dimplicit-function-de=
claration]
> > =C2=A0 449 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 priv->dev =
=3D kunit_device_register(test, "drm-
> > bridge-dev");
> >=20
> > Fix the above by selecting CONFIG_DRM_KUNIT_TEST only if
> > CONFIG_KUNIT is
> > also selected.
>=20
> Perhaps DRM_KUNIT_TEST should select CONFIG_KUNIT ?!

This was how I thoguht it already functioned, I guess not? I'm not sure
if that's intentional or not but I guess it is a problem regardless
>=20
> But well, let's fix our own mess on our side. I'm sorry for missing
> this detail. :/
>=20
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>=20
> >=20
> > Fixes: 17133255a322 ("drm/i915: replace DRM_DEBUG_SELFTEST with
> > DRM_KUNIT_TEST")
> > Cc: Ruben Wauters <rubenru09@aol.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > =C2=A0drivers/gpu/drm/i915/Kconfig.debug | 2 +-
> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/Kconfig.debug
> > b/drivers/gpu/drm/i915/Kconfig.debug
> > index b15b1cecb3aad..3562a02ef7adc 100644
> > --- a/drivers/gpu/drm/i915/Kconfig.debug
> > +++ b/drivers/gpu/drm/i915/Kconfig.debug
> > @@ -50,7 +50,7 @@ config DRM_I915_DEBUG
> > =C2=A0	select DRM_VGEM # used by igt/prime_vgem (dmabuf interop
> > checks)
> > =C2=A0	select DRM_DEBUG_MM if DRM=3Dy
> > =C2=A0	select DRM_EXPORT_FOR_TESTS if m
> > -	select DRM_KUNIT_TEST
> > +	select DRM_KUNIT_TEST if KUNIT
> > =C2=A0	select DMABUF_SELFTESTS
> > =C2=A0	select SW_SYNC # signaling validation framework
> > (igt/syncobj*)
> > =C2=A0	select DRM_I915_WERROR
> > --=20
> > 2.49.1

Ruben Wauters
