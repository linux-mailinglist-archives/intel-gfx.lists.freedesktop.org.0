Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EB3892381
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 19:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 893E611282A;
	Fri, 29 Mar 2024 18:40:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="gOsyoHue";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1AFD10F8F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 18:40:53 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-515c50dc2afso2382164e87.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 11:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1711737591; x=1712342391;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wCB9TLcQ1MPdr8zOwhtS0EJjWn9CT0pFfT2/AYCXLXU=;
 b=gOsyoHueXN7NHGSdQzZXETKpslJDiaCSlVQ3f+ZDiVzbvc7in9cB3qvcltlCTt0aKE
 ekNf53xi67bXSmjYgvVFkmGMxNTyCg1BF4dmbsmInxCZEnYuScEuI5IqxeY7RQpDqK++
 nspop8fv5B4DbnPLw//C+4yYRmO7yPtTsHrzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711737591; x=1712342391;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wCB9TLcQ1MPdr8zOwhtS0EJjWn9CT0pFfT2/AYCXLXU=;
 b=ap6NWA0jPPvd/Xg4C4PxJDoNYcixgrrycY0BK841aS2jumytH3KB3+cFWyNRwOcCFm
 gKW6bBijQR68+2l5zjwub1YZwvfVKYkL674nReh7Buv4tSldN8VENkvvQ16rF9JCSMeF
 Xh5mR/9GixNM6IO4nrXLP17n3oXI3HtPM8sywSTkyzMRAPNFY4hLYCjXpoYygEHeij24
 2WAaPyplFff+eb7ouI85SZuXRdBptyzJd6l/ezMQ/8JHhYxrSpeVmRtvBrMFWe7qCBGt
 GN1vS19/MMW6xiQqOriRr0iVVIQqVWYCeal11hpVPxIHlco5HQxxWE4AzNIEiNkvOYEJ
 jzLA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWJT+TfkkOC1+5DKKmWjCRpg3CGpU6g4oobTisKKj+vg0Zk+kkUnFsN2Wh9mgTZAEwPQOCk/jMsI1N6GN+tVVvGW8ifHhkdDwCaYSM2LmQo
X-Gm-Message-State: AOJu0YyIodpT/v+k7am/ZgOBIx0RamJyfV/k13+brcSi098wjwPDFZjf
 080mbgIXF2pA8htf4Lhg1+rQ8taOM1UXcaxfpmfnyPldwmtAeWqX1wUXBcFoKTF4opQjX3QYEEF
 r1qY0CzzH/I5WXmdFpohQysOb93OENLmpm3Bs
X-Google-Smtp-Source: AGHT+IHQBX8gSJoh9KSqSbHVmbhpTrR7jMPVME1fqsprOwgr5L4eBOrbxM0XKqZxq7mS/mj7qYurn85JbBQY1thFs5M=
X-Received: by 2002:a05:6512:68:b0:515:aae5:6c11 with SMTP id
 i8-20020a056512006800b00515aae56c11mr1901257lfo.34.1711737591047; Fri, 29 Mar
 2024 11:39:51 -0700 (PDT)
MIME-Version: 1.0
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-6-imre.deak@intel.com>
 <32c89f1b-852b-4d49-8439-45fddc80c5db@intel.com>
 <ZgK7YZnmwJBGcKsF@ideak-desk.fi.intel.com>
 <9b4dc2d9-f110-4585-8968-87eb8d605af4@intel.com>
In-Reply-To: <9b4dc2d9-f110-4585-8968-87eb8d605af4@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Fri, 29 Mar 2024 11:39:39 -0700
Message-ID: <CAE72mNmnKc84dCZtNJWEoQXMq4j+m-0ohOdfiBZea4aqb9kWWA@mail.gmail.com>
Subject: Re: [PATCH 05/11] drm/i915/dp_mst: Account with the DSC DPT bpp limit
 on MTL
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: imre.deak@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi Imre,

While we are adding these checks here for DSC for MST, I see that in
intel_dp_mst_mode_valid_ctx() we still check against DISPLAY_VER() >
10 for checking for DSC where as in all other places we rely on
runtime has_dsc and check for HAS_DSC(), can we fix that and use
HAS_DSC() in this function as well as part of this series that in
general fixes some DSC issues?

Manasi

On Tue, Mar 26, 2024 at 5:59=E2=80=AFAM Nautiyal, Ankit K
<ankit.k.nautiyal@intel.com> wrote:
>
>
> On 3/26/2024 5:41 PM, Imre Deak wrote:
> > On Tue, Mar 26, 2024 at 03:47:05PM +0530, Nautiyal, Ankit K wrote:
> >> On 3/21/2024 1:41 AM, Imre Deak wrote:
> >>> The DPT/DSC bpp limit should be accounted for on MTL platforms as wel=
l,
> >>> do so.
> >>>
> >>> Bspec: 49259
> >>>
> >>> Signed-off-by: Imre Deak <imre.deak@intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
> >>>    1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gp=
u/drm/i915/display/intel_dp_mst.c
> >>> index 79f34be5c89da..40660dc5edb45 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >>> @@ -56,7 +56,7 @@ static int intel_dp_mst_check_constraints(struct dr=
m_i915_private *i915, int bpp
> >>>                                       struct intel_crtc_state *crtc_s=
tate,
> >>>                                       bool dsc)
> >>>    {
> >>> -   if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc=
) {
> >> Should this be DISPLAY_VER() <=3D 14 to include MTL?
> > The actual change is the DISPLAY_VER() < 20 below, which is the usual
> > way in the driver (AFAIU) to check for an upper bound.
>
> Makes sense.
>
> >
> >> For DISPLAY_VER 20, is there another check?
> >>
> >> in Bspec:68912 it mentions output bpp * pixel clock < DDICLK * 144 bit=
s
> > Yes LNL is different, but there this DPT limit should never be a
> > bottleneck. Ville has an idea to abstract this more, but this patchset
> > keeps things as-is, skipping the check on LNL+.
>
> Agreed. Bspec indeed mentions the same thing, and its mentioned
> appropriately in the next patch.
>
> Regards,
>
> Ankit
>
> >
> >> Regards,
> >>
> >> Ankit
> >>
> >>> +   if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc=
) {
> >>>             int output_bpp =3D bpp;
> >>>             int symbol_clock =3D intel_dp_link_symbol_clock(crtc_stat=
e->port_clock);
> >>>             int available_bw =3D mul_u32_u32(symbol_clock * 72,
