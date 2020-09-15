Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C1F26ADF2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 21:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DBC96E8FB;
	Tue, 15 Sep 2020 19:47:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D58C76E8FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 19:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600199229;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ur1rWbZNT5UsC7ZqJ5DKcCpE8+s/eiYwscnRZFIyoQs=;
 b=EuSih+q8ZCUOgC8b+bQ70tbqPnRENBsmQBWQ7m1QYYnd2+D6gp5EMZu1J9RdafdZr9+9tz
 LIRlrmn3km+2ZVh4S+vM6Re1rYHgJcBJIL14sP/PYAzys/l6SPkWCY4yDvBnC0aSmaqw8L
 YEUrALZxGEQfFr2kj9lDO1P0ba84P2A=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-LQuc8TIyPi2uoyNR7cMsxw-1; Tue, 15 Sep 2020 15:47:04 -0400
X-MC-Unique: LQuc8TIyPi2uoyNR7cMsxw-1
Received: by mail-qv1-f70.google.com with SMTP id l29so2854205qve.18
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 12:47:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=Ur1rWbZNT5UsC7ZqJ5DKcCpE8+s/eiYwscnRZFIyoQs=;
 b=WF21wsN4cF3QaGqp8gsp+OxkvQTmHL12MlgdhjiIQ9aNRb7tmeBWgpHFfWtzLNDO9r
 RvGJU+tv+9GGKQozqoZh7QA6gjlV3Uaw0wV7xIbH5Tsykbz3aFosDqRCwPI4pzny4wud
 sx6KQVGzv1CuiMG0HNydZAHoxOVTx1GQxPwsn7NnD/SeuJZzWmYSWbO0KFzWXPvyLwTW
 z3cgoqmXBAo38sf7dO9P0rC0YH84UsvusZ9pETWhhEeOlJoLUNkeB/aNpm5Zb1MFXGBQ
 C8H1q1lydnN3/qW4HPCPWnzTA76NSTpIW6WAYvtdWXUxn/y+YC2u3hZQYVpk7XlJwdNm
 v8Ng==
X-Gm-Message-State: AOAM533UyAOHLSlgSpvHRNIGseu+msLoGvINDuuxcob1QiHwrNk8ZA3Q
 wg2eMIkfsA8AUS3nA5krsSplued4+A2otwlkpTFlUK7H9hYfZzn/5ZXG3Gn0+dopCet/V8bGN6P
 ajtKKj22JWTSTWnHfLnlR7+ka8Ty/
X-Received: by 2002:a05:620a:546:: with SMTP id
 o6mr20184472qko.296.1600199223681; 
 Tue, 15 Sep 2020 12:47:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzl+UYJSBul/q+CmYfqBZANubEc6SGBWhb3uWTdUm1eqMbnBd9q1e9hw6A3qtxfsEH1x2NVqA==
X-Received: by 2002:a05:620a:546:: with SMTP id
 o6mr20184447qko.296.1600199223404; 
 Tue, 15 Sep 2020 12:47:03 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id 8sm17307041qkd.47.2020.09.15.12.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 12:47:02 -0700 (PDT)
Message-ID: <b1b77b7022f9e388808bc3835f8fc88cda0718bc.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 15 Sep 2020 15:47:01 -0400
In-Reply-To: <20200915190639.GC503362@intel.com>
References: <20200915172939.2810538-1-lyude@redhat.com>
 <20200915172939.2810538-2-lyude@redhat.com>
 <20200915190639.GC503362@intel.com>
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

On Tue, 2020-09-15 at 15:06 -0400, Rodrigo Vivi wrote:
> On Tue, Sep 15, 2020 at 01:29:35PM -0400, Lyude Paul wrote:
> > Since we're about to start adding support for Intel's magic HDR
> > backlight interface over DPCD, we need to ensure we're properly
> > programming this field so that Intel specific sink services are exposed.
> > Otherwise, 0x300-0x3ff will just read zeroes.
> > 
> > We also take care not to reprogram the source OUI if it already matches
> > what we expect. This is just to be careful so that we don't accidentally
> > take the panel out of any backlight control modes we found it in.
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > Cc: thaytan@noraisin.net
> > Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 4bd10456ad188..b591672ec4eab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3428,6 +3428,7 @@ void intel_dp_sink_set_decompression_state(struct
> > intel_dp *intel_dp,
> >  void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
> >  {
> >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +	u8 edp_oui[] = { 0x00, 0xaa, 0x01 };
> 
> what are these values?

I wish I knew, my assumption is this is the OUI that Intel's GPU driver uses on
other platforms, but I don't have any documentation mentioning this (in fact,
the few documents I do have on this backlight interface don't seem to make any
mention of it). I only managed to find this when looking through the last
attempt someone did at adding support for this backlight interface:

https://patchwork.freedesktop.org/patch/334989/

I think it should be fairly safe to write, as I know nouveau always programs a
source OUI (we don't do it from our driver, but nvidia hardware seems to do it
automatically) and I don't believe I've seen it ever change any behavior besides
making things appear in the 0x300-0x3ff register range.

AFAICT though, the backlight interface won't advertise itself without this being
set early on. If you could find anyone from Intel who knows more about it though
I'd definitely appreciate it (and just in general for the rest of the patch
series as well)

> 
> >  	int ret, i;
> >  
> >  	/* Should have a valid DPCD by this point */
> > @@ -3443,6 +3444,14 @@ void intel_dp_sink_dpms(struct intel_dp *intel_dp,
> > int mode)
> >  	} else {
> >  		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
> >  
> > +		/* Write the source OUI as early as possible */
> > +		if (intel_dp_is_edp(intel_dp)) {
> > +			ret = drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI,
> > edp_oui,
> > +						sizeof(edp_oui));
> > +			if (ret < 0)
> > +				drm_err(&i915->drm, "Failed to write eDP source
> > OUI\n");
> > +		}
> > +
> >  		/*
> >  		 * When turning on, we need to retry for 1ms to give the sink
> >  		 * time to wake up.
> > @@ -4530,6 +4539,23 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp
> > *intel_dp)
> >  	}
> >  }
> >  
> > +static void
> > +intel_edp_init_source_oui(struct intel_dp *intel_dp)
> > +{
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +	u8 oui[] = { 0x00, 0xaa, 0x01 };
> > +	u8 buf[3] = { 0 };
> > +
> > +	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) <
> > 0)
> > +		drm_err(&i915->drm, "Failed to read source OUI\n");
> > +
> > +	if (memcmp(oui, buf, sizeof(oui)) == 0)
> > +		return;
> > +
> > +	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) <
> > 0)
> > +		drm_err(&i915->drm, "Failed to write source OUI\n");
> > +}
> > +
> >  static bool
> >  intel_edp_init_dpcd(struct intel_dp *intel_dp)
> >  {
> > @@ -4607,6 +4633,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
> >  	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> >  		intel_dp_get_dsc_sink_cap(intel_dp);
> >  
> > +	/*
> > +	 * Program our source OUI so we can make various Intel-specific AUX
> > +	 * services available (such as HDR backlight controls)
> > +	 */
> > +	intel_edp_init_source_oui(intel_dp);
> 
> I believe we should restrict this to the supported platforms: cfl, whl, cml,
> icl, tgl
> no?
> 
> > +
> >  	return true;
> >  }
> >  
> > -- 
> > 2.26.2
> > 
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
