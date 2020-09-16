Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5339326C43B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 17:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 332466EA33;
	Wed, 16 Sep 2020 15:32:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ECB6EA2D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 15:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600270359;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3/efu16wz2bAmmly2Sbi/vrfR4bsazT4NhD8SO/s8aY=;
 b=L5ApdYfW5w6r4V0T9tvu9D6J3OWAPc1+WAno4uLrUrGwIgvirCuAi6UF9zs0C4jqvyRYAS
 Z6miq/JLbrdaoThw6rUZMayyWO7Z8uObo09ZsJAnBlkAU5kZdhIeSBY3Y4kN7EnEb4Zl7p
 DoteMDhILRTYAa2tGK0mhYsJ5QsX8A0=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-Oz_9UucjOlaD-xp7G12EYQ-1; Wed, 16 Sep 2020 11:32:33 -0400
X-MC-Unique: Oz_9UucjOlaD-xp7G12EYQ-1
Received: by mail-qt1-f197.google.com with SMTP id a26so6267885qtb.16
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 08:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=3/efu16wz2bAmmly2Sbi/vrfR4bsazT4NhD8SO/s8aY=;
 b=Xtx7PhFK7whteXAVOh4zevFF3IWUMatE0uE2HwT8bEXqVVXT81LXl+sqVYiHgdMWXv
 9+8tXL7iM8mnRGtbQMSgm+n5dsIEaosZDEbvKjFU6G0SlZIzE3DYoXqHHbaDXFqn+EuB
 k1iJ+SLGSxg2kD5sWJzlACp/WvUz3dA64cpSIX27k0cYaJQDr776auxuTOCt/QtWQ0Ff
 nSW4db3IWaCsfdzRV3lhh/UTy/g59MHSa7JtGUYPS5EI+pAuIfxYWHTgNoK0Erjlplt9
 HfOHLz3AuMrCGKJUaXmayS+lVlGTj7p/cTpuiQMfjY45QkQnCt9Pf57/c7unlA7f9JjY
 N8Zg==
X-Gm-Message-State: AOAM5305K+6R+NLGNNXgMTag97tPaj+/Kl1uVLfkhxeHT8e7u8fHqI8K
 ZYnnIRcmIsPS1QCJCo/OsVS0KrfcX6Uu4us31B5lJx0h7MGSg/ybQV/j6M0d6yietMyuJJcO6sd
 Zx761CMZFJjw3xZey68wTd+PKqNY4
X-Received: by 2002:a37:990:: with SMTP id 138mr23112355qkj.53.1600270352157; 
 Wed, 16 Sep 2020 08:32:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwklSE00+B71ao1DI+TFBaPxvUWeVVqcFDwZEZx4oZR70imhVCYMHO7ieRanYzzJ4TNVdGqhg==
X-Received: by 2002:a37:990:: with SMTP id 138mr23112334qkj.53.1600270351881; 
 Wed, 16 Sep 2020 08:32:31 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id n144sm20153331qkn.69.2020.09.16.08.32.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 08:32:31 -0700 (PDT)
Message-ID: <1a13028b0080bc050ab6ad172d05de06a78d73b1.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Wed, 16 Sep 2020 11:32:29 -0400
In-Reply-To: <87mu1qw4ig.fsf@intel.com>
References: <20200915172939.2810538-1-lyude@redhat.com>
 <20200915172939.2810538-2-lyude@redhat.com>
 <20200915190639.GC503362@intel.com> <87mu1qw4ig.fsf@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [RFC 1/5] drm/i915/dp: Program source OUI on eDP
 panels
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
Reply-To: lyude@redhat.com
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Vasily Khoruzhick <anarsoul@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-09-16 at 10:43 +0300, Jani Nikula wrote:
> On Tue, 15 Sep 2020, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Tue, Sep 15, 2020 at 01:29:35PM -0400, Lyude Paul wrote:
> > > Since we're about to start adding support for Intel's magic HDR
> > > backlight interface over DPCD, we need to ensure we're properly
> > > programming this field so that Intel specific sink services are exposed.
> > > Otherwise, 0x300-0x3ff will just read zeroes.
> > > 
> > > We also take care not to reprogram the source OUI if it already matches
> > > what we expect. This is just to be careful so that we don't accidentally
> > > take the panel out of any backlight control modes we found it in.
> 
> (For whatever reason I didn't receive the original message.)
> 
> > > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > > Cc: thaytan@noraisin.net
> > > Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++++++++++++++++
> > >  1 file changed, 32 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 4bd10456ad188..b591672ec4eab 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -3428,6 +3428,7 @@ void intel_dp_sink_set_decompression_state(struct
> > > intel_dp *intel_dp,
> > >  void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
> > >  {
> > >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > +	u8 edp_oui[] = { 0x00, 0xaa, 0x01 };
> > 
> > what are these values?
> 
> An OUI lookup confirms these are Intel OUI.

Thanks for the confirmation!

> 
> > >  	int ret, i;
> > >  
> > >  	/* Should have a valid DPCD by this point */
> > > @@ -3443,6 +3444,14 @@ void intel_dp_sink_dpms(struct intel_dp *intel_dp,
> > > int mode)
> > >  	} else {
> > >  		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
> > >  
> > > +		/* Write the source OUI as early as possible */
> > > +		if (intel_dp_is_edp(intel_dp)) {
> > > +			ret = drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI,
> > > edp_oui,
> > > +						sizeof(edp_oui));
> > > +			if (ret < 0)
> > > +				drm_err(&i915->drm, "Failed to write eDP source
> > > OUI\n");
> > > +		}
> > > +
> > >  		/*
> > >  		 * When turning on, we need to retry for 1ms to give the sink
> > >  		 * time to wake up.
> > > @@ -4530,6 +4539,23 @@ static void intel_dp_get_dsc_sink_cap(struct
> > > intel_dp *intel_dp)
> > >  	}
> > >  }
> > >  
> > > +static void
> > > +intel_edp_init_source_oui(struct intel_dp *intel_dp)
> > > +{
> > > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > +	u8 oui[] = { 0x00, 0xaa, 0x01 };
> > > +	u8 buf[3] = { 0 };
> > > +
> > > +	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) <
> > > 0)
> > > +		drm_err(&i915->drm, "Failed to read source OUI\n");
> > > +
> > > +	if (memcmp(oui, buf, sizeof(oui)) == 0)
> > > +		return;
> > > +
> > > +	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) <
> > > 0)
> > > +		drm_err(&i915->drm, "Failed to write source OUI\n");
> > > +}
> 
> Maybe add this function with a parameter to force write or write only if
> necessary, and call from both places that set source OUI?
> 
> > > +
> > >  static bool
> > >  intel_edp_init_dpcd(struct intel_dp *intel_dp)
> > >  {
> > > @@ -4607,6 +4633,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
> > >  	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> > >  		intel_dp_get_dsc_sink_cap(intel_dp);
> > >  
> > > +	/*
> > > +	 * Program our source OUI so we can make various Intel-specific AUX
> > > +	 * services available (such as HDR backlight controls)
> > > +	 */
> > > +	intel_edp_init_source_oui(intel_dp);
> > 
> > I believe we should restrict this to the supported platforms: cfl, whl, cml,
> > icl, tgl
> > no?
> 
> Mmh, this just exposes sink behaviour that I think can be supported by
> any platform. I don't understand the notion of "supported platforms"
> here.

Probably because the spec sheets that we have on this seem to suggest that this
is new for particular platforms, and Intel seems to also additionally move a bit
away from some of the interfaces exposed here onto actual VESA standards
starting with icl and tgl.

I would be fine with adding this, but I'm not really sure it's needed here
either unless we want to stop using Intel backlight control interfaces for later
hardware generations at some point in the future.

> 
> > > +
> > >  	return true;
> > >  }
> > >  
> > > -- 
> > > 2.26.2
> > > 
> > > _______________________________________________
> > > dri-devel mailing list
> > > dri-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
