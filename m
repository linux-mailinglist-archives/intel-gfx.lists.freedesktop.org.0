Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 765DA539639
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 20:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E0810EBF3;
	Tue, 31 May 2022 18:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF7610EBEA
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 18:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654021443;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KI+3RIlL8zkgviLHn9X07unJ7Tcm5ggyY9bEIFsVfTI=;
 b=RR7WOmncqQXUD2GMv/rQlx3Cc0JmAxJ44xYMJt8vw/Q5kMMPzFvtVhLPiNXIsrltkSLewO
 q/KujFNZobugYXdofJ8UTQs7xO89tgBnC6rcsq97EFccTtRTYUuyVjrw1LTj4CiL1cOLb+
 a1eW0wi4/XHzF528pDAY5JG3OseMZYc=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-300-JWe2muUZMEmGdJ3GEWYnmg-1; Tue, 31 May 2022 14:24:02 -0400
X-MC-Unique: JWe2muUZMEmGdJ3GEWYnmg-1
Received: by mail-qv1-f70.google.com with SMTP id
 fw9-20020a056214238900b0043522aa5b81so10670471qvb.21
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 11:24:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=KI+3RIlL8zkgviLHn9X07unJ7Tcm5ggyY9bEIFsVfTI=;
 b=y/hPFdPhk/GfhzYSmhW/LWymN+7aqDSDBmA48fH+JnCsCjN8V+zalHsIJwBj7PNLQt
 ZD9rx2dygFb+T/kpGNAJB3g/lpSGOVD21/VAihWZYAXH3Ph3ToTovEvcucbS/cGjabGs
 E+/o40MwIy9LLeEDUH/gUubS6OmunFWBT9KdSVtEmOiq8vy7zwXirokgAWsLseWneuCP
 K14NyFn9Z2aFCD69oeHHnoFwH+PFnZ8fyrcpnzTMJnYqDRxmISxlEYH9o6VuIduRSEzs
 QHDp2bLu6HP2/KbnZKG3xTllNs87H4jUN/+/d8Pnav1tbLNPVNRDQn3rXwLVphucmy7P
 W0aw==
X-Gm-Message-State: AOAM532MDsrE7jU4YsY8+PWmI/ITAtk0Grd3bZmXGG7KrIm1amjYXKjh
 OAhSXlpQ1cZCpLUg2FZ25PTA/ZGlSmVzPrDsZEypQogBjo9iQTZ0XFwGyDBNoc+km447ySCjfgK
 NtJ0iCRssm1b/B/hIkfZc5tpd2kSQ
X-Received: by 2002:a05:6214:2301:b0:435:38af:2f87 with SMTP id
 gc1-20020a056214230100b0043538af2f87mr51565641qvb.83.1654021441925; 
 Tue, 31 May 2022 11:24:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwn11H5VvGNqzTo0Zy547vj8U+sPWvEREZ9JHC1EQWq9ybnCL60yeeO84IhFnW6WxSi9HI0Iw==
X-Received: by 2002:a05:6214:2301:b0:435:38af:2f87 with SMTP id
 gc1-20020a056214230100b0043538af2f87mr51565617qvb.83.1654021441616; 
 Tue, 31 May 2022 11:24:01 -0700 (PDT)
Received: from [192.168.8.138] (static-71-184-137-158.bstnma.ftas.verizon.net.
 [71.184.137.158]) by smtp.gmail.com with ESMTPSA id
 195-20020a370acc000000b006a33f89bb00sm9869358qkk.81.2022.05.31.11.24.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 May 2022 11:24:01 -0700 (PDT)
Message-ID: <f8d58991330d50c539df3f9b3522053fcb9634a2.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 31 May 2022 14:24:00 -0400
In-Reply-To: <87fskrrxgn.fsf@intel.com>
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
 <20220527204949.2264-6-ville.syrjala@linux.intel.com>
 <87fskrrxgn.fsf@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/bios: Define more BDB contents
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

On Mon, 2022-05-30 at 15:55 +0300, Jani Nikula wrote:
> On Fri, 27 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add a bunch of new struff we're missing in various BDB blocks.
> > 
> > TODO: Bunch of these might actually need to be taken
> > into use...
> 
> Cc: Jouni, Lyude for some HDR backlight stuff below.
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 50 ++++++++++++++++---
> >  1 file changed, 43 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index 39109f204c6d..be99f585b1d0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -564,7 +564,9 @@ struct bdb_driver_features {
> >         u16 tbt_enabled:1;
> >         u16 psr_enabled:1;
> >         u16 ips_enabled:1;
> > -       u16 reserved3:4;
> > +       u16 reserved3:1;
> > +       u16 dmrrs_enabled:1;
> 
> Should we start logging the version ranges here too, since it's obsolete
> from 228. Kinda duplicating the info though. *shrug*.
> 
> > +       u16 reserved4:2;
> >         u16 pc_feature_valid:1;
> >  } __packed;
> >  
> > @@ -666,6 +668,16 @@ struct edp_full_link_params {
> >         u8 vswing:4;
> >  } __packed;
> >  
> > +struct edp_apical_params {
> > +       u32 panel_oui;
> > +       u32 dpcd_base_address;
> > +       u32 dpcd_idridix_control_0;
> > +       u32 dpcd_option_select;
> > +       u32 dpcd_backlight;
> > +       u32 ambient_light;
> > +       u32 backlight_scale;
> > +} __packed;

If we could get some more info on what all of this stuff is that'd be
appreciated! I had thought that knowing which 

> > +
> >  struct bdb_edp {
> >         struct edp_power_seq power_seqs[16];
> >         u32 color_depth;
> > @@ -681,6 +693,9 @@ struct bdb_edp {
> >         struct edp_pwm_delays pwm_delays[16];                   /* 186 */
> >         u16 full_link_params_provided;                          /* 199 */
> >         struct edp_full_link_params full_link_params[16];       /* 199 */
> > +       u16 apical_enable;                                      /* 203 */
> > +       struct edp_apical_params apical_params[16];             /* 203 */
> > +       u16 edp_fast_link_training_rate[16];                    /* 224 */
> 
> Another eDP port link rate param would go here? Could be added in
> another patch.
> 
> >  } __packed;
> >  
> >  /*
> > @@ -717,6 +732,7 @@ struct bdb_lvds_options {
> >  
> >         u16 lcdvcc_s0_enable;                                   /* 200 */
> >         u32 rotation;                                           /* 228 */
> > +       u32 position;                                           /* 240 */
> >  } __packed;
> >  
> >  /*
> > @@ -843,13 +859,22 @@ struct bdb_lfp_backlight_data {
> >         u8 level[16]; /* Obsolete from 234+ */
> >         struct lfp_backlight_control_method backlight_control[16];
> >         struct lfp_brightness_level brightness_level[16];               /*
> > 234+ */
> > -       struct lfp_brightness_level brightness_min_level[16];   /* 234+ */
> > -       u8
> > brightness_precision_bits[16];                                            
> >    /* 236+ */
> > +       struct lfp_brightness_level brightness_min_level[16];           /*
> > 234+ */
> > +       u8 brightness_precision_bits[16];                               /*
> > 236+ */
> > +       u16 hdr_dpcd_refresh_timeout[16];                               /*
> > 239+ */
> 
> Jouni, Lyude, this is probably interesting to you:
> 
> """
> This table of values (for 16 panels, 1 value per panel) is used to
> specify the time required by the TCON (with Intel HDR Aux Interface
> Support) to refresh the DPCD set with Intel HDR CAPS (DPCD offset:
> 340h-344h).
> 
> The value is in units of 10 us(microseconds).
> """

Ville had actually mentioned this one before! I hadn't added support for it
quite yet though since I don't think any of the machines I've run into thus
far actually had this present in their VBTs. Since we're adding this here
though, I may as well dig up the patch I wrote for that and post it in a bit

> 
> >  } __packed;
> >  
> >  /*
> >   * Block 44 - LFP Power Conservation Features Block
> >   */
> > +struct lfp_features {
> 
> Nit, maybe lfp_power_features.
> 
> Anyway,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +       u8 reserved1:1;
> > +       u8 power_conservation_pref:3;
> > +       u8 reserved2:1;
> > +       u8 lace_enabled_status:1;
> > +       u8 lace_support:1;
> > +       u8 als_enable:1;
> > +} __packed;
> >  
> >  struct als_data_entry {
> >         u16 backlight_adjust;
> > @@ -861,10 +886,16 @@ struct aggressiveness_profile_entry {
> >         u8 lace_aggressiveness : 4;
> >  } __packed;
> >  
> > +struct aggressiveness_profile2_entry {
> > +       u8 opst_aggressiveness : 4;
> > +       u8 elp_aggressiveness : 4;
> > +} __packed;
> > +
> >  struct bdb_lfp_power {
> > -       u8 lfp_feature_bits;
> > +       struct lfp_features features;
> >         struct als_data_entry als[5];
> > -       u8 lace_aggressiveness_profile;
> > +       u8 lace_aggressiveness_profile:3;
> > +       u8 reserved1:5;
> >         u16 dpst;
> >         u16 psr;
> >         u16 drrs;
> > @@ -876,6 +907,9 @@ struct bdb_lfp_power {
> >         struct aggressiveness_profile_entry aggressiveness[16];
> >         u16 hobl; /* 232+ */
> >         u16 vrr_feature_enabled; /* 233+ */
> > +       u16 elp; /* 247+ */
> > +       u16 opst; /* 247+ */
> > +       struct aggressiveness_profile2_entry aggressiveness2[16]; /* 247+
> > */
> >  } __packed;
> >  
> >  /*
> > @@ -885,8 +919,10 @@ struct bdb_lfp_power {
> >  #define MAX_MIPI_CONFIGURATIONS        6
> >  
> >  struct bdb_mipi_config {
> > -       struct mipi_config config[MAX_MIPI_CONFIGURATIONS];
> > -       struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS];
> > +       struct mipi_config config[MAX_MIPI_CONFIGURATIONS]; /* 175 */
> > +       struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS]; /* 177 */
> > +       struct edp_pwm_delays pwm_delays[MAX_MIPI_CONFIGURATIONS]; /* 186
> > */
> > +       u8 pmic_i2c_bus_number[MAX_MIPI_CONFIGURATIONS]; /* 190 */
> >  } __packed;
> >  
> >  /*
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

