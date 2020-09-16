Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA1D26B672
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 02:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560DB6E92D;
	Wed, 16 Sep 2020 00:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6048B6E92B
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 00:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600214709;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VjZa40MjlMQHEg6VysBK1I3Rn/FQZQF1fQa44n3WO6k=;
 b=QIuu9BtkHAAcUiNG3hq46pVcKb3H0u9VZdbxOxLvyGeOaGUqCAFBpN9tesfyB/J1lR3qtY
 JgXOs/w2Xl4WxIu6eFW3cpguQjhX8TidpPquxtcTC4NYPbcuGWZDrDMCPcgwpTFj2PZ0GO
 1JjY5r0q6HccnXnVgOjCMoQUoyR6uzg=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-TmY1EdWyMVOnSpt_Sh1c1Q-1; Tue, 15 Sep 2020 20:05:04 -0400
X-MC-Unique: TmY1EdWyMVOnSpt_Sh1c1Q-1
Received: by mail-qk1-f197.google.com with SMTP id y17so4517921qkf.15
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 17:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=VjZa40MjlMQHEg6VysBK1I3Rn/FQZQF1fQa44n3WO6k=;
 b=qMuyzB++yo0/9Uqb7dm3L4+FGjSnBW1V7+e26IPMIbOBIobzWh3g1nA+390U+l2PwM
 iVPC1ujfSfioeAugf94GadjhP9z5NoR1o8aOsgM8QbhD+gKkm5U43RmnO3mLgwJeES9i
 Ab/+FUQS39k0hbn/sykGN+AEeR7UNQDQsmKLnbpGAphy9q+3wRSBCeQW9w3hOFRM9bXu
 FLCwhAmISXs0qattGBuPWIBEGQaJGXtrAr1XOaaYLpxhYrX/IvaGAI+HXu3JBPvylY99
 BJNGmb0iZNHaqtUX23Atkf/BWVuSWHvLaTxirtjU3+B2jtoR1dmv4US6bl1wpqrq7I/H
 Empg==
X-Gm-Message-State: AOAM5333QaDLypxo+UZOAt1RRlOG0Y30v5A++rW+VEmLgnw+Jy0cwHym
 Y+KhLc2hqYc291ylEwrSGPzKApyTT1h9MyUtp4hC+QRYM0HNItaDx84z/WzufcN2PiRB6K4UXVo
 dbv3WsIsv4EtoIxYMDimKm8gXT0CV
X-Received: by 2002:ac8:4e81:: with SMTP id 1mr21705685qtp.62.1600214704348;
 Tue, 15 Sep 2020 17:05:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyODPABpreP655peyCUe7notNMLlNOaVBru1ukZ/HwVrAukGlTgX9PPDDwkE5P37N1uXnJlew==
X-Received: by 2002:ac8:4e81:: with SMTP id 1mr21705661qtp.62.1600214704041;
 Tue, 15 Sep 2020 17:05:04 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id o35sm6208974qte.23.2020.09.15.17.05.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 17:05:03 -0700 (PDT)
Message-ID: <7a86180ed7013a0a52d71cf38a4bc371c7ffd4ab.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Date: Tue, 15 Sep 2020 20:05:04 -0400
In-Reply-To: <20200915223841.GA14183@labuser-Z97X-UD5H>
References: <20200915172939.2810538-1-lyude@redhat.com>
 <20200915172939.2810538-2-lyude@redhat.com>
 <20200915190639.GC503362@intel.com>
 <b1b77b7022f9e388808bc3835f8fc88cda0718bc.camel@redhat.com>
 <20200915223841.GA14183@labuser-Z97X-UD5H>
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Vasily Khoruzhick <anarsoul@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-09-15 at 15:38 -0700, Navare, Manasi wrote:
> On Tue, Sep 15, 2020 at 03:47:01PM -0400, Lyude Paul wrote:
> > On Tue, 2020-09-15 at 15:06 -0400, Rodrigo Vivi wrote:
> > > On Tue, Sep 15, 2020 at 01:29:35PM -0400, Lyude Paul wrote:
> > > > Since we're about to start adding support for Intel's magic HDR
> > > > backlight interface over DPCD, we need to ensure we're properly
> > > > programming this field so that Intel specific sink services are
> > > > exposed.
> > > > Otherwise, 0x300-0x3ff will just read zeroes.
> > > > 
> > > > We also take care not to reprogram the source OUI if it already
> > > > matches
> > > > what we expect. This is just to be careful so that we don't
> > > > accidentally
> > > > take the panel out of any backlight control modes we found it in.
> > > > 
> > > > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > > > Cc: thaytan@noraisin.net
> > > > Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 32
> > > > +++++++++++++++++++++++++
> > > >  1 file changed, 32 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 4bd10456ad188..b591672ec4eab 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -3428,6 +3428,7 @@ void
> > > > intel_dp_sink_set_decompression_state(struct
> > > > intel_dp *intel_dp,
> > > >  void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
> > > >  {
> > > >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > > +	u8 edp_oui[] = { 0x00, 0xaa, 0x01 };
> > > 
> > > what are these values?
> 
> We in i915 typically use the OUI number for adding any eDP specific
> quirks. I have seen these getting spit out in the dmesg log at thebeginning.
> AFAIK It is some kind of OEM identification number for a display panel.

Are you sure you're not confusing this with the sink OUI btw? We're setting
the source OUI (so, identifying ourselves to the display panel instead of the
other way around) here to tell the panel to expose the Intel specific
backlight controls. My assumption is the { 0x00, 0xaa, 0x01 } is some Intel
driver OUI, it's just I'm not really sure where it comes from other then the
patch I linked to down below

> 
> Manasi
> > I wish I knew, my assumption is this is the OUI that Intel's GPU driver
> > uses on
> > other platforms, but I don't have any documentation mentioning this (in
> > fact,
> > the few documents I do have on this backlight interface don't seem to make
> > any
> > mention of it). I only managed to find this when looking through the last
> > attempt someone did at adding support for this backlight interface:
> > 
> > https://patchwork.freedesktop.org/patch/334989/
> > 
> > I think it should be fairly safe to write, as I know nouveau always
> > programs a
> > source OUI (we don't do it from our driver, but nvidia hardware seems to
> > do it
> > automatically) and I don't believe I've seen it ever change any behavior
> > besides
> > making things appear in the 0x300-0x3ff register range.
> > 
> > AFAICT though, the backlight interface won't advertise itself without this
> > being
> > set early on. If you could find anyone from Intel who knows more about it
> > though
> > I'd definitely appreciate it (and just in general for the rest of the
> > patch
> > series as well)
> > 
> > > >  	int ret, i;
> > > >  
> > > >  	/* Should have a valid DPCD by this point */
> > > > @@ -3443,6 +3444,14 @@ void intel_dp_sink_dpms(struct intel_dp
> > > > *intel_dp,
> > > > int mode)
> > > >  	} else {
> > > >  		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
> > > >  
> > > > +		/* Write the source OUI as early as possible */
> > > > +		if (intel_dp_is_edp(intel_dp)) {
> > > > +			ret = drm_dp_dpcd_write(&intel_dp->aux,
> > > > DP_SOURCE_OUI,
> > > > edp_oui,
> > > > +						sizeof(edp_oui));
> > > > +			if (ret < 0)
> > > > +				drm_err(&i915->drm, "Failed to write
> > > > eDP source
> > > > OUI\n");
> > > > +		}
> > > > +
> > > >  		/*
> > > >  		 * When turning on, we need to retry for 1ms to give
> > > > the sink
> > > >  		 * time to wake up.
> > > > @@ -4530,6 +4539,23 @@ static void intel_dp_get_dsc_sink_cap(struct
> > > > intel_dp
> > > > *intel_dp)
> > > >  	}
> > > >  }
> > > >  
> > > > +static void
> > > > +intel_edp_init_source_oui(struct intel_dp *intel_dp)
> > > > +{
> > > > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > > +	u8 oui[] = { 0x00, 0xaa, 0x01 };
> > > > +	u8 buf[3] = { 0 };
> > > > +
> > > > +	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf,
> > > > sizeof(buf)) <
> > > > 0)
> > > > +		drm_err(&i915->drm, "Failed to read source OUI\n");
> > > > +
> > > > +	if (memcmp(oui, buf, sizeof(oui)) == 0)
> > > > +		return;
> > > > +
> > > > +	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui,
> > > > sizeof(oui)) <
> > > > 0)
> > > > +		drm_err(&i915->drm, "Failed to write source OUI\n");
> > > > +}
> > > > +
> > > >  static bool
> > > >  intel_edp_init_dpcd(struct intel_dp *intel_dp)
> > > >  {
> > > > @@ -4607,6 +4633,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
> > > >  	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> > > >  		intel_dp_get_dsc_sink_cap(intel_dp);
> > > >  
> > > > +	/*
> > > > +	 * Program our source OUI so we can make various Intel-
> > > > specific AUX
> > > > +	 * services available (such as HDR backlight controls)
> > > > +	 */
> > > > +	intel_edp_init_source_oui(intel_dp);
> > > 
> > > I believe we should restrict this to the supported platforms: cfl, whl,
> > > cml,
> > > icl, tgl
> > > no?
> > > 
> > > > +
> > > >  	return true;
> > > >  }
> > > >  
> > > > -- 
> > > > 2.26.2
> > > > 
> > > > _______________________________________________
> > > > dri-devel mailing list
> > > > dri-devel@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > -- 
> > Sincerely,
> >       Lyude Paul (she/her)
> >       Software Engineer at Red Hat
> > 
-- 
Cheers,
	Lyude Paul (she/her)
	Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
