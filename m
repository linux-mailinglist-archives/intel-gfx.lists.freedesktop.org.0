Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FA76E6F8D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 00:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9763210E14F;
	Tue, 18 Apr 2023 22:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com
 [IPv6:2607:f8b0:4864:20::e34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED79610E14F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 22:42:30 +0000 (UTC)
Received: by mail-vs1-xe34.google.com with SMTP id cu36so2043996vsb.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 15:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1681857749; x=1684449749;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=f0uzdbR+MdUoUV2kXkUl0gsHMVuIqns3h86invsvwfw=;
 b=cMgjJ2sI0KRlAuH9m6fDaQgI6nlhQuwxZHzwhuaL7ieenSALyttAu964lWD00mkZ8J
 frGQZufIAOj1x9pM36BxMlCb2S6eBovzvIjbMcxqBQUZiIv0RcovFJPU42osZ450rije
 K4hPIvDwDUZ+3J0blW4k256cP7gAeBpUYEkqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681857749; x=1684449749;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f0uzdbR+MdUoUV2kXkUl0gsHMVuIqns3h86invsvwfw=;
 b=AmsL/nGlsWnOk2LO55Z7KjrTIZu0rt7Yy+S08NlNC8phGnmmv+WjpfaqqU/OTd+nJe
 Ih8i/x9xi2mWs7eGmCbTr6cFk7tL05MobMk/HCAc901b9P53S0x9WoOz7WrWyjSq87co
 i73yld3c+CUiyL/1PkfSbRhxm+BKGclAXGgoGW5NcHAKVTLvAQ6VpB01CsRiJIPO+o1L
 ERW8FORYKVgrRick1b9UI5l9t1gPoFkdZ04moxX7b7f3JwvtQVAez7cVNJJ3N8mos7/c
 4w2Fm5BWqkNqzs96aB3xuWi+3pMVToW0th533FalqqGg+yZpwGmlq3tmgPWzp1U/UFTM
 GTew==
X-Gm-Message-State: AAQBX9crZrXyAojjHfpomodyQDnY2XwZtzP/7h9YhGXgu6mMfoiM5rbr
 1M5oxmOZx0BwBMD+onoAFnHRblXKklrnrUKZcWOwjcUz0sM1yXWb
X-Google-Smtp-Source: AKy350aSaT8B6mZLB0mO2o6OpzM9boOQDIfQqaGxRzd0Ep6PVEea1P/PLYKuRY6bRVzkXpcfPr69WKOdi/+bYNGi8eM=
X-Received: by 2002:a05:6102:1d1:b0:42e:65bf:3e5e with SMTP id
 s17-20020a05610201d100b0042e65bf3e5emr4117997vsq.30.1681857749569; Tue, 18
 Apr 2023 15:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
 <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
 <ZDZAHj4PPaDD9HHj@intel.com>
 <CAE72mNmd2wAdLFQFLgKeDazyn+Qogd1h4N75hfJrtBsOndB2Vg@mail.gmail.com>
 <CAE72mNmy9Lm2vZz9S1q18-yAGWXsBkjhFkYDzoHZFQY6LqvOyw@mail.gmail.com>
 <ZD6RKS972byO+Fpa@intel.com> <fc47b7d8-0a93-716d-337b-405c601f2a6d@intel.com>
 <ZD6vHkhvyqzHra2X@intel.com>
In-Reply-To: <ZD6vHkhvyqzHra2X@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 18 Apr 2023 15:42:18 -0700
Message-ID: <CAE72mNmHzOthzY_EURJW6BQYXAFmqmKyYes=ccTefuo1Y0VJ7Q@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code
 for bpc < 0
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville and Ankit,

I actually do not think this is a problem with the DSC logic, but it
is a problem with the intel_dp_link_compute_config() where we should
do something if max_bpp is 0 instead of just returning a -EINVAL
directly.
My question here:
- In case of PCON, yuv format, is it a valid case to have max bpp set to 0?
- This is where I am seeing it as set to 0
- If it isnt then the problem is probably where it computes max bpp
for hdmi case for yuv format

Manasi

On Tue, Apr 18, 2023 at 7:54=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Tue, Apr 18, 2023 at 08:09:16PM +0530, Nautiyal, Ankit K wrote:
> >
> > On 4/18/2023 6:16 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
> > > On Mon, Apr 17, 2023 at 03:48:12PM -0700, Manasi Navare wrote:
> > >> Hi Ville,
> > >>
> > >> Could you suggest how to handle the intel_dp_link_compute_config()
> > >> when the max_bpp is returned as 0, currently
> > >> it just exits the loop and returns a -EINVAL and this triggers the D=
SC path.
> > >> While we should be completely failing the modeset and encoder_config
> > >> in this case instead of trying DSC, correct?
> > > The DSC path needs to handle the bpp limits correctly:
> > > 1. Take the baseline limits already computed
> > > 2. Further restrict them based on sink/source DSC capabilities/etc.
> > > 3. Make sure the uncompressed bpp value chosen is between the min/max
> >
> > I have some older patch to try similar thing [1]. We try to iterate ove=
r
> > bpc to find pipe_bpp in the limits, then try to find out compressed_bpp=
.
> >
> > But if intel_dp_max_bpp returns 0, limits.max_bpp is set to 0, so we
> > discard this for dsc case and re-calculate the limits.max_bpp?
>
> You shouldn't discard anything. DSC should take the already computed
> limits and potentially just shrink them further based on DSC specific
> constraints.
>
> Or is there some weird case where DSC would allow lower/higher bpp
> than what our uncompressed bpp limits declare?
>
> >
> >
> > [1] https://patchwork.freedesktop.org/patch/519346/?series=3D111391&rev=
=3D3
> >
> > >
> > >> Manasi
> > >>
> > >> On Thu, Apr 13, 2023 at 8:23=E2=80=AFAM Manasi Navare <navaremanasi@=
chromium.org> wrote:
> > >>> On Tue, Apr 11, 2023 at 10:22=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
> > >>> <ville.syrjala@linux.intel.com> wrote:
> > >>>> On Tue, Apr 11, 2023 at 05:07:01PM -0700, Manasi Navare wrote:
> > >>>>> On Tue, Apr 11, 2023 at 10:42=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
> > >>>>> <ville.syrjala@linux.intel.com> wrote:
> > >>>>>> On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
> > >>>>>>> In the function intel_dp_max_bpp(), currently if bpc < 0 in cas=
e of error,
> > >>>>>>> we return 0 instead of returning an err code of -EINVAL.
> > >>>>>>> This throws off the logic in the calling function.
> > >>>>>> What logic? The caller doesn't expect to get an error.
> > >>>>> If this returns a 0, we end up using limits.max_bpp =3D 0 and in
> > >>>>> intel_dp_compute_link_config_wide(),
> > >>>>> since max_bpp is 0, it exits this for loop:
> > >>>>>
> > >>>>> for (bpp =3D limits->max_bpp; bpp >=3D limits->min_bpp; bpp -=3D =
2 * 3) and returns
> > >>>>> -EINVAL which then wrongly goes to enable DSC even when link BW i=
s
> > >>>>> sufficient without DSC.
> > >>>> And how woud max_bpp<0 prevent that?
> > >>>>
> > >>>> The real problem seems to be that the DSC code totally
> > >>>> ignores bpp limits.
> > >>> Hi Ville,
> > >>>
> > >>> So I see a few concerns/questions:
> > >>> - Why is the Max bpp value 0 in intel_dp_max_bpp, is that a valid c=
ase
> > >>> and how should our link configurations handle that case when max_bp=
p
> > >>> is 0?
> > >>> - This is happening in a bug I am looking at with HDMI PCON, @Ankit
> > >>> Nautiyal  have we ever seen something similar where max_bpp for HDM=
i
> > >>> PCON
> > >>> is returned 0?
> > >>> - I dont think its a problem with DSC code, but rather
> > >>> intel_dp_compute_link_config() outer for loop where we vary
> > >>> from max_bpp to min_bpp and see if any bpp works with available lin=
k
> > >>> bw, how should we handle this when max_bpp =3D 0 if you are saying =
thats
> > >>> a valid case?
> > >>> - In this patch if I return -EINVAL instead of 0, then atleast the
> > >>> entire encoder_config will fail and that will fail the modeset, sin=
ce
> > >>> it assumes max_bpp cannot be 0
> > >>>
> > >>> Could you please help answer above concerns and how to handle max b=
pp
> > >>> =3D 0 case if that is valid? This patch is simply making that inval=
id
> > >>> resulting into modeset failure
> > >>>
> > >>> Manasi
> > >>>> --
> > >>>> Ville Syrj=C3=A4l=C3=A4
> > >>>> Intel
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
