Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F125B47E431
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Dec 2021 14:42:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CD610E39A;
	Thu, 23 Dec 2021 13:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A413910E39A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Dec 2021 13:42:40 +0000 (UTC)
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com
 [188.165.51.139])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-41103.protonmail.ch (Postfix) with ESMTPS id 4JKWbM0CTsz4x9N8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Dec 2021 13:42:39 +0000 (UTC)
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="P1Q1DQgl"
Date: Thu, 23 Dec 2021 13:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1640266953;
 bh=KcpuETzMNMdxDT2q0V4AwCRe4eDh3KXENxpCUjqyk4Q=;
 h=Date:To:From:Cc:Reply-To:Subject:Message-ID:In-Reply-To:
 References:From:To:Cc;
 b=P1Q1DQglL3/H+NbZPwD5FQ5BU9Uxk6pxEJUlWRgkAN0OLEHRoQXT9P6vmQVgI4Shq
 qswBkVMsLvmRRHD/3SjdYOuBD/GGsV6atIzIAPtvsIcihzg+XQOhNKJ4S5zw4d90GD
 yw00fU5YY0aXBm/7z9QW1y6keFUYtpbhm6KU5cycwBKvr1TY5EinTkhSnF0bxps/kb
 vJWQQ7wnICVOxl/imolN69xOrpDSgPFAomrww24G1XS9mkDEk/KWt9aiTZ7c6IFz9B
 aSiRxt4r6e7O5KrjN0k2a+YJ9Dp9EVAP0/Mu3FzFpyLIEkg43paDmTiPHdA5LXgzCF
 ZLdjYyzNmAUHg==
To: =?utf-8?Q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <PIq2EEI7giz2rOuv2cfySbdxwht8AaCye140X5C7NejjXT6kD67E3E28uvg4Ebhob12EJUBtAxGPFNOgZwSWLYEfMtdhRNt3mR8bBGBJmU4=@emersion.fr>
In-Reply-To: <YcRkB7uWyt4EbcZm@intel.com>
References: <20211222090552.25972-1-jose.exposito89@gmail.com>
 <20211222090552.25972-2-jose.exposito89@gmail.com>
 <YcRkB7uWyt4EbcZm@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] 
 =?utf-8?q?=5BPATCH_v2_1/6=5D_drm/plane=3A_Make_forma?=
 =?utf-8?q?t=5Fmod=5Fsupported_truly=C2=A0optional?=
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: marex@denx.de, mcoquelin.stm32@gmail.com, kernel@pengutronix.de,
 s.hauer@pengutronix.de, tzimmermann@suse.de, airlied@linux.ie,
 intel-gfx@lists.freedesktop.org, alexandre.torgue@foss.st.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 yannick.fertre@foss.st.com, linux-imx@nxp.com, benjamin.gaignard@linaro.org,
 dmitry.baryshkov@linaro.org,
 =?utf-8?Q?Jos=C3=A9_Exp=C3=B3sito?= <jose.exposito89@gmail.com>,
 shawnguo@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, philippe.cornu@foss.st.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thursday, December 23rd, 2021 at 12:56, Ville Syrj=C3=A4l=C3=A4 <ville.s=
yrjala@linux.intel.com> wrote:

> > -=09/* If we can't determine support, just bail */
> > -=09if (!plane->funcs->format_mod_supported)
> > -=09=09goto done;
> > -
> >  =09mod =3D modifiers_ptr(blob_data);
> >  =09for (i =3D 0; i < plane->modifier_count; i++) {
> >  =09=09for (j =3D 0; j < plane->format_count; j++) {
> > -=09=09=09if (plane->funcs->format_mod_supported(plane,
> > +=09=09=09if (!plane->funcs->format_mod_supported ||
> > +=09=09=09    plane->funcs->format_mod_supported(plane,
> >  =09=09=09=09=09=09=09       plane->format_types[j],
> >  =09=09=09=09=09=09=09       plane->modifiers[i])) {
>
> So instead of skipping the whole loop you just skip doing anything
> inside the loop? Can't see how that achieves anything at all.

No, the check is skipped when the function isn't populated by the driver.
