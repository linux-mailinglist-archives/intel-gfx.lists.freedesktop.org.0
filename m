Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5966D5A8D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 10:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229D310E611;
	Tue,  4 Apr 2023 08:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8508E10E611;
 Tue,  4 Apr 2023 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680596155; x=1712132155;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DT1NhLLFa3XglX09CH2DPBTa+Kl3i+R5VfeAGkEkpv0=;
 b=Q7f2hKTrBaYjaRDajagAK024KX5RaNsh5y9C76jdh9Bsi6tPalhaWfsM
 j8mFmLrf8+QtqKkO/yJ9AGcGl086g/ReEghc6t2DmGhn3nX/TC2cN17Ai
 Tik1MIggc3x8A3Dubl9n1ZN6FWVBda/KViC5jTlzkufmVmK963wCuXAud
 Y2Vlm/kH3lAeWwHr/j0+/5LehidDeH8CZe5Vh4vBn2/vvbffklqhyntyv
 D465kMIktZKlMsklyakGK80fxSrMh1zingC+HDFNPnuYdYRVI4KV5aqwD
 LeOkty7L7og9H0V9QQb6tX8dE1pAD3M9NzmeXg5mTF3LnJWfejTiiyhpL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="407181277"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="407181277"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 01:15:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="932366880"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="932366880"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.43.58])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 01:15:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, "Souza, Jose" <jose.souza@intel.com>
In-Reply-To: <ZCscKrjtYBanN1tU@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230403164615.131633-1-jose.souza@intel.com>
 <ZCsG32XI7XLljXGP@intel.com>
 <bc6c151c44b46ce04da7760b7ce359f2bf1764fd.camel@intel.com>
 <ZCscKrjtYBanN1tU@intel.com>
Date: Tue, 04 Apr 2023 11:15:50 +0300
Message-ID: <87bkk412rt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 1/5] drm/i915: Split display
 locks init from i915_driver_early_probe()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 03 Apr 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Apr 03, 2023 at 02:10:26PM -0400, Souza, Jose wrote:
>> On Mon, 2023-04-03 at 13:03 -0400, Rodrigo Vivi wrote:
>> > On Mon, Apr 03, 2023 at 09:46:11AM -0700, Jos=C3=A9 Roberto de Souza w=
rote:
>> > > No behavior changes here, just adding a function to make clear
>> > > what locks initialized here are display related or not.
>> > >=20
>> > > Cc: intel-gfx@lists.freedesktop.org
>> > > Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/i915_driver.c | 23 +++++++++++++++--------
>> > >  1 file changed, 15 insertions(+), 8 deletions(-)
>> > >=20
>> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i9=
15/i915_driver.c
>> > > index 066d79c2069c4..224cb4cb43335 100644
>> > > --- a/drivers/gpu/drm/i915/i915_driver.c
>> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
>> > > @@ -188,6 +188,20 @@ static void sanitize_gpu(struct drm_i915_privat=
e *i915)
>> > >  	}
>> > >  }
>> > >=20=20
>> > > +static void
>> > > +i915_driver_display_early_probe(struct drm_i915_private *dev_priv)
>> > > +{
>> > > +	spin_lock_init(&dev_priv->display.fb_tracking.lock);
>> > > +	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
>> > > +	mutex_init(&dev_priv->display.backlight.lock);
>> > > +
>> > > +	mutex_init(&dev_priv->display.audio.mutex);
>> > > +	mutex_init(&dev_priv->display.wm.wm_mutex);
>> > > +	mutex_init(&dev_priv->display.pps.mutex);
>> > > +	mutex_init(&dev_priv->display.hdcp.comp_mutex);
>> > > +	spin_lock_init(&dev_priv->display.dkl.phy_lock);
>> > > +}
>> > > +
>> >=20
>> > hmmm... I like that, however Jani had indicated in another series [1]
>> > that he would prefer the wm mutex inside the wm code for instance...
>> >=20
>> > So, should we move all of these to their own components instead of this
>> > move?
>> >=20
>> > [1] https://patchwork.freedesktop.org/series/115675/
>> >=20
>> > I checked and for a few components it is simple to move them to their
>> > own init functions. However for a few we would need to create new init
>> > functions and call them here.
>> >=20
>> > Jani, more thoughts?
>>=20
>> Forgot to CC you two in the new version: https://patchwork.freedesktop.o=
rg/series/116039/
>>=20
>> display.wm.dsparb_lock is not used anywhere.
>
> it currently doesn't exist on drm-intel. Not sure how it appeared in drm-=
xe...
> Probably a !fixup needed on initial display patches.
>
> Please notice that my series on the link I sent earlier re-introduce it w=
ith a proper
> usage. Ville had already reviewed the code, but I hold the push because J=
ani
> asked about a better placement.
>
> What I tried to say earlier here is that this patch is probably not follo=
wing
> Jani's vision on how to organize the initialization of these many
> locks.

That's right.

Audio init should initialize audio.mutex.

Watermark init should initialize wm.wm_mutex.

PPS init should initialize pps.mutex.

Etc.

Moreover, display.audio should only be accessed by intel_audio.c. Etc.

BR,
Jani.






>
>> Moved display.dkl.phy_lock, will leave the rest to someone to take over.
>>=20
>>=20
>> >=20
>> > >  /**
>> > >   * i915_driver_early_probe - setup state not requiring device access
>> > >   * @dev_priv: device private
>> > > @@ -213,18 +227,11 @@ static int i915_driver_early_probe(struct drm_=
i915_private *dev_priv)
>> > >=20=20
>> > >  	spin_lock_init(&dev_priv->irq_lock);
>> > >  	spin_lock_init(&dev_priv->gpu_error.lock);
>> > > -	spin_lock_init(&dev_priv->display.fb_tracking.lock);
>> > > -	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
>> > > -	mutex_init(&dev_priv->display.backlight.lock);
>> > >=20=20
>> > >  	mutex_init(&dev_priv->sb_lock);
>> > >  	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALU=
E);
>> > >=20=20
>> > > -	mutex_init(&dev_priv->display.audio.mutex);
>> > > -	mutex_init(&dev_priv->display.wm.wm_mutex);
>> > > -	mutex_init(&dev_priv->display.pps.mutex);
>> > > -	mutex_init(&dev_priv->display.hdcp.comp_mutex);
>> > > -	spin_lock_init(&dev_priv->display.dkl.phy_lock);
>> > > +	i915_driver_display_early_probe(dev_priv);
>> > >=20=20
>> > >  	i915_memcpy_init_early(dev_priv);
>> > >  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
>> > > --=20
>> > > 2.40.0
>> > >=20
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
