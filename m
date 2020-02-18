Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E10C1635A9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:03:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73C36EA9A;
	Tue, 18 Feb 2020 22:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E86E6EA93
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:03:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20269353-1500050 for multiple; Tue, 18 Feb 2020 22:03:26 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200216161746.500258-1-chris@chris-wilson.co.uk>
 <0dd74573-4567-aadc-9df1-4e33758d04ec@intel.com>
In-Reply-To: <0dd74573-4567-aadc-9df1-4e33758d04ec@intel.com>
Message-ID: <158206340547.8112.9973471876783677315@skylake-alporthouse-com>
Date: Tue, 18 Feb 2020 22:03:25 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid potential division-by-zero
 in computing CS timestamp period
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lionel Landwerlin (2020-02-18 21:54:03)
> On 16/02/2020 18:17, Chris Wilson wrote:
> > Since we use a HW readback or estimation of the CS timestamp frequency,
> > sometimes it may result in 0. Avoid the division-by-zero in computing
> > its reciprocal, the timestamp period.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/intel_device_info.c | 18 +++++++++++-------
> >   1 file changed, 11 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index a97437fac884..18d9de488593 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -1044,13 +1044,17 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> >       }
> >   
> >       /* Initialize command stream timestamp frequency */
> > -     runtime->cs_timestamp_frequency_khz = read_timestamp_frequency(dev_priv);
> > -     runtime->cs_timestamp_period_ns =
> > -             div_u64(1e6, runtime->cs_timestamp_frequency_khz);
> > -     drm_dbg(&dev_priv->drm,
> > -             "CS timestamp wraparound in %lldms\n",
> > -             div_u64(mul_u32_u32(runtime->cs_timestamp_period_ns, S32_MAX),
> > -                     USEC_PER_SEC));
> > +     runtime->cs_timestamp_frequency_khz =
> > +             read_timestamp_frequency(dev_priv);
> > +     if (runtime->cs_timestamp_frequency_khz) {
> > +             runtime->cs_timestamp_period_ns =
> > +                     div_u64(1e6, runtime->cs_timestamp_frequency_khz);
> > +             drm_dbg(&dev_priv->drm,
> > +                     "CS timestamp wraparound in %lldms\n",
> > +                     div_u64(mul_u32_u32(runtime->cs_timestamp_period_ns,
> > +                                         S32_MAX),
> > +                             USEC_PER_SEC));
> > +     }
> 
> Arg this is used in i915-perf in at least one place as denominator too...

This was a quick fix for BAT. See
https://patchwork.freedesktop.org/patch/353455/?series=73507&rev=1
then there are only a handful of platforms for which we don't know the
frequency, none of which matter for i915-perf.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
