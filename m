Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A4687E7A3
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 11:47:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437C010F549;
	Mon, 18 Mar 2024 10:47:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bSfmlwry";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07D910F55A
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 10:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1710758823;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xYHXGTbV5ZKNYEpJyT4I7NZo2QLBfYEpRBWHchmPLg0=;
 b=bSfmlwrygFuILvGphPzzlqROSVKEZxQH+0RKhPBeFaHTnvBG0t1r8q2rDbRGbX+x4nTenA
 DL+nY0v/QJQrqX4DtVi0bTnjy5qB8TRLVkbhO6Z8PnLv9dRMDy+OpIAHbfUMWhHcTyj0Pb
 pAOEwYxrMeA4ICMYSoJPeysp9fLRKlo=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-125-Tfjq82phOuuwL_K5NnpM_A-1; Mon, 18 Mar 2024 06:47:01 -0400
X-MC-Unique: Tfjq82phOuuwL_K5NnpM_A-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-41413823c1bso2107985e9.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 03:47:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710758820; x=1711363620;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xYHXGTbV5ZKNYEpJyT4I7NZo2QLBfYEpRBWHchmPLg0=;
 b=YKdBdb5Ix1NQYCHaCX6SkiQNNQr8nDWHMPkwqgdadwK9r/3MiJI3AvfbbFlj0+3Zrg
 NVvswnVisztuIlErRpJ97/iOLNhdukSYzGisRzrRIMIOe/mvIzz6tRstP4KXS4psU/r1
 wgEAzgNM9l2h9jnFLxMmFfankWJPaeo6tCrkjJz7JdVGAJw1Hy8BMFHqR7em+pWH+iyP
 yVcu2b1CnF1qKYmRlH2K1B4I8/lLX/v8EQH3T3/IJUcGKbGN0/t6zuHdUU2rGVM1xK0q
 lL/QAmtWb4xpmEQ9diXPy5knCOfbVEtzON13qkZMWdJUGMw6RjtlkzwUEy8J43JQ/AI7
 9X6w==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5vGnDzxgLcPL7jxEZMJB5M5AJBjRN+Z2a69w568Cs22EYMPxwLQw13YmBBorVTQOzIp+eOIsXCy9EapYH0tT/R7hfzB8jhhjxfMjeNmh9
X-Gm-Message-State: AOJu0YzDaWAx/fMSDPZVMmsMRQs81F6Lq3Shs8xtmt7ZeveSW8HydXCx
 SqFB6mzkHyykut/NKZWLSj/VhtV7mqpHGgor9BcOlAKX41VSTDdE2O8YPVrhiNa+Apvb4E3v9c/
 Bf0H9sl7gnFYmEGe+tFdBGrjWnT3JAQ2d3o+3+rxncSyN8xSnqGwA5CeUgtidu281aQ==
X-Received: by 2002:a05:600c:3551:b0:412:b02d:71f9 with SMTP id
 i17-20020a05600c355100b00412b02d71f9mr10801306wmq.2.1710758820413; 
 Mon, 18 Mar 2024 03:47:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKwmAry8ZmTZlDG9qfZrs4nUzArcveA5GDleIbOm4et+Xe2iZV20kXzjXlX2KDd69lZeQ0eQ==
X-Received: by 2002:a05:600c:3551:b0:412:b02d:71f9 with SMTP id
 i17-20020a05600c355100b00412b02d71f9mr10801254wmq.2.1710758820010; 
 Mon, 18 Mar 2024 03:47:00 -0700 (PDT)
Received: from toolbox ([2001:9e8:89a6:b300:cdbb:8c1e:2aef:a12d])
 by smtp.gmail.com with ESMTPSA id
 q13-20020a05600c46cd00b00412e5f32591sm14281976wmo.28.2024.03.18.03.46.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Mar 2024 03:46:59 -0700 (PDT)
Date: Mon, 18 Mar 2024 11:46:58 +0100
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 intel-gfx@lists.freedesktop.org, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com
Subject: Re: drm/i915/dp: Enable AUX based backlight for HDR
Message-ID: <20240318104658.GB1004070@toolbox>
References: <20240315050529.1987425-2-suraj.kandpal@intel.com>
 <20240315113352.GA820980@toolbox> <ZfQ3Y46jdr5QrL_v@intel.com>
MIME-Version: 1.0
In-Reply-To: <ZfQ3Y46jdr5QrL_v@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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

On Fri, Mar 15, 2024 at 01:56:19PM +0200, Ville Syrjälä wrote:
> On Fri, Mar 15, 2024 at 12:33:52PM +0100, Sebastian Wick wrote:
> > On Fri, Mar 15, 2024 at 10:35:30AM +0530, Suraj Kandpal wrote:
> <snip>
> > > @@ -318,11 +346,24 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
> > >  		panel->backlight.min = 0;
> > >  	}
> > >  
> > > +	if (DISPLAY_VER(i915) < 11) {
> > 
> > This should check for INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP instead!
> > There is no reason to bind this to any hardware version if the hardware
> > itself can tell you if it supports SDP signalling or needs to set it via
> > AUX.
> 
> That should be OK for icl+.
> 
> To extend this to pre-icl hardware I think we pretty much need both checks:
> - has_gamut_metadata_dip() -> can we actually transmit the SDP?
> - INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP -> can the tcon extract the data from the SDP?
> and if either is false then we fall back to AUX.

Right, that's something my patch is missing as well.

> We should also change intel_dp_add_properties() to check
> the tcon caps instead of relying on has_gamut_metadata_dip(),
> 	for eDP.
> 
> -- 
> Ville Syrjälä
> Intel
> 

