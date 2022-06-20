Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4F95522BE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116FE10EB94;
	Mon, 20 Jun 2022 17:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com
 [IPv6:2001:4860:4864:20::2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9110D10EB94
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:28:40 +0000 (UTC)
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-fe023ab520so15252437fac.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 10:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=raf+3lxhnyY32v/N4Is/S0vUlCPN2qQOKR/3+Csi694=;
 b=FhGZPzd0Sbe+HWyhVOSQGsV0kIDq71SDjzl1OA5+rsF6+D6WsNcBWYTHv8WaZqD2yW
 9Wru03Ca/N5Hdx53MqkKKwwaydmSnvFHM5P3MK9UUkMe68mI1GhlwJLS5WP/n7JAk79a
 8YZVtQR/c9sByX49GxO3r8MGyTOqXYTUe/kG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=raf+3lxhnyY32v/N4Is/S0vUlCPN2qQOKR/3+Csi694=;
 b=Yr0A0cCJmFxPRI1g2yrSUy+q36tJATQ8k1pBFi+3su+yxlr/VymzU+3GUV9QDUMJlj
 WfoRfCX28PTBolAbnWfQxHIEdXvi3nNGufSUubrHZM5aYZOwbccbBmPJwVYqjK2MkL6K
 bAu+YueMIeXlXQSraTABNm/70te6S5XBhKqxzvtbuxvbNu/t7MrbC+9d5oO2EuWqUSuD
 1pjarLsMFqgysN0wsGc6IFZ9HSdIcn/fCpvhHQPzBu7TksK2X4+RFVxZ2iDCM5uWfx8r
 LBQ5o9TpFpBYOqT0j3ef9ymI2+TLsATvdRwehjSH2qdSodkq7XunFRRD+ULsMyTplAFJ
 7+aQ==
X-Gm-Message-State: AJIora8UzUOV/J9Lhlpy9eKlvWh+L2IXfXyYsCjiyCvRbT3/XRoIu+67
 0h13//lg4L8kiuhL5r53NNgoolXZcu8LlKoQfmBN2A==
X-Google-Smtp-Source: AGRyM1v288g60C06DcmS5JBw6+Y0w0TQc78+qVGISyv5d+89MTaHi4FifbUByZfIymMJNh5m8u1PsOs1rg5HcldJcSc=
X-Received: by 2002:a05:6870:3053:b0:f3:2997:659a with SMTP id
 u19-20020a056870305300b000f32997659amr13607020oau.7.1655746119831; Mon, 20
 Jun 2022 10:28:39 -0700 (PDT)
MIME-Version: 1.0
References: <0249066a-2e95-c21d-d16a-fba08c633c0b@lio96.de>
 <f1a52ddc-5aad-cc76-282e-93206ae43477@amd.com>
 <70395b22-1857-2a25-1472-17ce3df22607@lio96.de>
 <6cd161d2-5caa-65c8-6b86-5992cc15d1af@amd.com>
 <957926e6-2462-4c42-b57f-9cfbd9fe7024@lio96.de>
 <27e6f4ec-0906-0d57-af9b-ebde534b68b3@amd.com>
In-Reply-To: <27e6f4ec-0906-0d57-af9b-ebde534b68b3@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 20 Jun 2022 19:28:28 +0200
Message-ID: <CAKMK7uECjGw2K3S=Rwtz7rq-pV+eqbD8rc5GAPiemXJN1ybTsA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] Performance drop using deinterlace_vaapi on 5.19-rcX
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
Cc: Thomas Voegtle <tv@lio96.de>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 20 Jun 2022 at 17:28, Christian K=C3=B6nig <christian.koenig@amd.co=
m> wrote:
>
> Hi Thomas,
>
> Am 20.06.22 um 16:31 schrieb Thomas Voegtle:
> > On Mon, 20 Jun 2022, Christian K=C3=B6nig wrote:
> >
> >> Am 20.06.22 um 13:40 schrieb Thomas Voegtle:
> >>>  On Mon, 20 Jun 2022, Christian K=C3=B6nig wrote:
> >>>
> >>>>  Hi Thomas,
> >>>>
> >>>>  [moving vger to bcc]
> >>>>
> >>>>  mhm, sounds like something isn't running in parallel any more.
> >>>>
> >>>>  We usually don't test the multimedia engines for this but we do tes=
t
> >>>>  gfx+compute, so I'm really wondering what goes wrong here.
> >>>>
> >>>>  Could you run some tests for me? Additional to that I'm going to
> >>>> raise
> >>>>  that issue with our multimedia guys later today.
> >>>
> >>>  Yes, I can run some tests for you. Which tests?
> >>
> >> Try this as root:
> >>
> >> echo 1 >
> >> /sys/kernel/debug/tracing/events/dma_fence/dma_fence_init/enable
> >> echo 1 >
> >> /sys/kernel/debug/tracing/events/dma_fence/dma_fence_signaled/enable
> >> cat /sys/kernel/debug/tracing/trace_pipe > trace.log
> >>
> >> Then start the encoding in another shell, after it completed cancel
> >> the cat with cntr+c and save the log file.
> >>
> >> Do this one with the old kernel and once with the new one.
> >
> >
> > https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2F32h=
.de%2Ftv%2F5.18.0-i5-trace.log.bz2&amp;data=3D05%7C01%7Cchristian.koenig%40=
amd.com%7C41a052960a4d4f7dd38e08da52c99097%7C3dd8961fe4884e608e11a82d994e18=
3d%7C0%7C0%7C637913323382588469%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDA=
iLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=
=3Dxv8vLUuBq37sBFcGxdua%2FnNQ51BiN1USn30ehP8bys0%3D&amp;reserved=3D0
> > https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2F32h=
.de%2Ftv%2F5.19.0-rc3-i5-trace.log.bz2&amp;data=3D05%7C01%7Cchristian.koeni=
g%40amd.com%7C41a052960a4d4f7dd38e08da52c99097%7C3dd8961fe4884e608e11a82d99=
4e183d%7C0%7C0%7C637913323382588469%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjA=
wMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sda=
ta=3DxuBVrQMQ%2FDK3Gv1qN%2FntJ9NjXOZxD6XVkmDCWfG4K44%3D&amp;reserved=3D0
> >
> >
> > I hope I have done this correctly.
> > All necessary tracing things switched on?
>
> Yeah, that looks like what I wanted to see.
>
> >
> > I want to add that this is a headless machine. No monitor connected.
> >
>
> I've just realized that you aren't even using any AMD GPU for
> transcoding, so I have no idea why removing the AMD specific workaround
> can cause a performance problem for i915.
>
> It must be somehow related to i915 now adding some additional
> synchronization in between submissions.
>
> Adding the Intel mailing list, maybe somebody has a better idea.

Only thing I can spot is that we now pile up USAGE_WRITE fences, but
beforehand they got replaced. Also the deinterlace stuff means libva
uses render engine, so this kinda fits - without using the render
engine it's just a single engine, and hence you should never have
multiple write fences (not logically, but hsw is a ringbuffer and i915
doesn't have a ringbuffer scheduler, so it's all in-order anyway and
hence not possible to change something).

This would mean that i915 is doing something silly (well not obeying
the old dma_resv rules that any new exclusive fence must be a strict
superset of all currently attached fences), which it totally is doing
with the EXEC_OBJECT_ASYNC flag. But libva doesn't use that.

So tbh I have no idea, but maybe a quick hack that tosses any old
USAGE_WRITE fence like the old dma_resv_add_excl_fence did would sched
some light?
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
