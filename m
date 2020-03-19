Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A365618BDF5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 18:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 088B56EA3F;
	Thu, 19 Mar 2020 17:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32EF89C3B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 17:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584638799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h3mDBBNU3zGRbKS4g/xXNPuWv1oDo1t1RGMC1qm4I/s=;
 b=VlYSoucVFEtUJk/Tchh1hC3SMjyWD6xlRvXSlAdNKB8Zjhiylf337VM8XGkstw6cjbWoQm
 5NwAQPlRV0CAX66IceonTUiQu3GjG82NhkuEIwynVnGFwfsUD9uUy78y+7xLDOTpft/0LY
 /gzwqNKTWe5yyjwIQS08+TFf4Q3NnYI=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-ya1eHO8XMCCB5ReBFJTIvw-1; Thu, 19 Mar 2020 13:26:35 -0400
X-MC-Unique: ya1eHO8XMCCB5ReBFJTIvw-1
Received: by mail-qv1-f70.google.com with SMTP id ee5so3359829qvb.23
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 10:26:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=h3mDBBNU3zGRbKS4g/xXNPuWv1oDo1t1RGMC1qm4I/s=;
 b=qypu4DOUxMFPmvVhgHFFi2Oe8JvQb4cbl4M4zJbdq/bzcEDtAxksM71c49phX2nAyk
 EMPYhliERg8nBahr/8/zQ67rI645nUHvImyaXGWvDfmFRm78dyeonSqv0GKWKXwbEurw
 fyUg8E04THDvS0mRd0tClfrFFhtk10BNJag4DmyjxPFD4p5KvsIpSacKrq3SXrIkZKXJ
 OI64rwTdy9BTKR8d94Z7bi4Ny994Y8WcXmxkmMtQIpWxFaIfKuR0UIFV1ADJ//tkMkRL
 228ThG6xKSbfIOUciAR9+pB7F3dqPLzTX187E9e01w77ah0Nh2hEgqH6hpGMsFflzL7E
 wKfw==
X-Gm-Message-State: ANhLgQ0uUQ7pCSt6xfyhBlZVhIOAGC5Wkg5wICUibUfyd75nXRcp1jhv
 8tG4b5Lj/MpeRt9z7TgK9y/hkQM2GHKur9Na8W0T7+3ssc8iFrWhP7Vam1+q5fxJZb3lBW+mh1m
 mmfEwxiL6HtOMPE3IeU+5tRZoscDW
X-Received: by 2002:a37:50d4:: with SMTP id e203mr3922296qkb.153.1584638794682; 
 Thu, 19 Mar 2020 10:26:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsMSy9F7E4T/kBmJ7v90icBvR2MA363GT/fOOWWsuk/IGLPzxcpKtlane/gkPkZc41iokMl3Q==
X-Received: by 2002:a37:50d4:: with SMTP id e203mr3922273qkb.153.1584638794360; 
 Thu, 19 Mar 2020 10:26:34 -0700 (PDT)
Received: from Ruby.lyude.net (static-173-76-190-23.bstnma.ftas.verizon.net.
 [173.76.190.23])
 by smtp.gmail.com with ESMTPSA id x11sm1877323qkf.67.2020.03.19.10.26.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 10:26:33 -0700 (PDT)
Message-ID: <e105120de0b42f754039c36d8bec5f81aa91ef4d.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "20200106174156.11081-1-shawn.c.lee@intel.com"
 <20200106174156.11081-1-shawn.c.lee@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Date: Thu, 19 Mar 2020 13:26:32 -0400
In-Reply-To: <DM6PR11MB3211D565FA22058AFDF195F0A3F90@DM6PR11MB3211.namprd11.prod.outlook.com>
References: <20200106174156.11081-1-shawn.c.lee@intel.com>
 <65e0bfc983551ae016f43c5f8654b4adbbd00842.camel@redhat.com>
 <DM6PR11MB3211D565FA22058AFDF195F0A3F90@DM6PR11MB3211.namprd11.prod.outlook.com>
Organization: Red Hat
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp/mst : Get clock rate from
 sink's available PBN
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2020-03-16 at 13:56 +0000, Lee, Shawn C wrote:
> On Wed, 2020-03-11, Lyude Paul wrote:
> > On Tue, 2020-01-07 at 01:41 +0800, Lee Shawn C wrote:
> > > Driver report physcial bandwidth for max dot clock rate.
> > > It would caused compatibility issue sometimes when physical bandwidth 
> > > exceed MST hub output ability.
> > > 
> > > For example, here is a MST hub with HDMI 1.4 and DP 1.2 output.
> > > And source have DP 1.2 output capability. Connect a HDMI 2.0 display 
> > > then source will retrieve EDID from external monitor.
> > > Driver got max resolution was 4k@60fps. DP 1.2 can support this 
> > > resolution because it did not surpass max physical bandwidth.
> > > After modeset, source output display data but MST hub can't output 
> > > HDMI properly due to it already over HDMI 1.4 spec.
> > > 
> > > Apply this calculation, source calcualte max dot clock according to 
> > > available PBN. Driver will remove the mode that over current clock 
> > > rate. And external display can works normally.
> > > 
> > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > > Cc: Cooper Chiou <cooper.chiou@intel.com>
> > > 
> > > Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 27 
> > > ++++++++++++++++++---
> > >  1 file changed, 24 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index 3b066c63816d..eaa440165ad2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -550,6 +550,27 @@ static int intel_dp_mst_get_modes(struct 
> > > drm_connector
> > > *connector)
> > >  	return intel_dp_mst_get_ddc_modes(connector);
> > >  }
> > >  
> > > +static int
> > > +intel_dp_mst_downstream_max_dotclock(struct drm_connector *connector) 
> > > +{
> > > +	struct intel_connector *intel_connector =
> > > to_intel_connector(connector);
> > > +	struct intel_dp *intel_dp = intel_connector->mst_port;
> > > +	struct drm_dp_mst_port *port;
> > > +	u64 clock_rate = 0;
> > > +
> > > +	if (intel_dp->mst_mgr.mst_primary)
> > > +		list_for_each_entry(port, &intel_dp->mst_mgr.mst_primary-
> > > > ports, next)
> > > +			if (port->connector == connector) {
> > > +				clock_rate = ((u64)port->available_pbn * (54 *
> > > 8 * 1000 * 1000)) / (64 * 1006);
> > > +
> > > +				// FIXME: We should used pipe bpp to do this
> > > calculation.
> > > +				//        But can't retrieve bpp setting from
> > > drm_connector.
> > > +				return (int)(clock_rate / 24);
> > > +			}
> > > +
> > > +	return to_i915(connector->dev)->max_dotclk_freq;
> > > +}
> > 
> > Hi! So-there's no need to loop through the ports like this, just use the
> > drm_dp_mst_port struct that's associated with intel_connector->port
> > directly (feel free to change the declaration to `struct drm_dp_mst_port
> > *port` instead of `void *port`, it's not illegal to dereference it anymore
> > I promise!
> > 
> > Additionally - you don't want to use pipe_bpp here at all. My advice is to
> > use the hard-coded bpc we currently have for MST. Once you guys have retry
> > logic to dynamically select the bpc depending on the available bandwidth,
> > I'd move this check over to using the smallest possible BPC reported by
> > the connector's display_info. Remember we're checking if -any- variant of
> > each mode is somehow possible, it's ok and expected for modes to
> > potentially fail at higher BPCs.
> > 
> > Anyway-this looks fine otherwise, but like Ville mentioned available_pbn
> > isn't the thing that we want to be using here. I've got support for using
> > full_pbn instead and that should be pushed sometime today or tommorrow
> > (dealing with some topic branch weirdness with dim right now). This is the
> > patch series,
> > jfyi:
> > 
> > https://patchwork.freedesktop.org/series/74295/
> > 
> > Also-feel free to write a drm helper to do these mode_valid checks for
> > mst, if it's feasible and not overkill
> > 
> 
> Thanks! I will refer the change from patch series you mentioned. Hardcode
> bpc to 24 and use full_pbn instead of available_pbn.
> 
> BTW, this patch series still on specific branch (topic/mst-bw-check-fixes-
> for-airlied) and not merge to drm branch yet.
> It would be better to wait the patches merged into drm branch. After that, I
> can commit new patch to fix issue. Any comment?

jfyi the patch should be upstream now. So feel free to send a new patch (also
make sure to cc me so I can review it!)
> 
> > > +
> > >  static enum drm_mode_status
> > >  intel_dp_mst_mode_valid(struct drm_connector *connector,
> > >  			struct drm_display_mode *mode)
> > > @@ -557,8 +578,7 @@ intel_dp_mst_mode_valid(struct drm_connector
> > > *connector,
> > >  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> > >  	struct intel_connector *intel_connector = 
> > > to_intel_connector(connector);
> > >  	struct intel_dp *intel_dp = intel_connector->mst_port;
> > > -	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
> > > -	int max_rate, mode_rate, max_lanes, max_link_clock;
> > > +	int max_rate, mode_rate, max_lanes, max_link_clock, max_dotclk;
> > >  
> > >  	if (drm_connector_is_unregistered(connector))
> > >  		return MODE_ERROR;
> > > @@ -572,7 +592,8 @@ intel_dp_mst_mode_valid(struct drm_connector
> > > *connector,
> > >  	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
> > >  	mode_rate = intel_dp_link_required(mode->clock, 18);
> > >  
> > > -	/* TODO - validate mode against available PBN for link */
> > > +	max_dotclk = intel_dp_mst_downstream_max_dotclock(connector);
> > > +
> > >  	if (mode->clock < 10000)
> > >  		return MODE_CLOCK_LOW;
> > >  
> > --
> > Cheers,
> > 	Lyude Paul (she/her)
> > 	Associate Software Engineer at Red Hat
> > 
> 
> Best regards,
> Shawn
> 
-- 
Cheers,
	Lyude Paul (she/her)
	Associate Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
