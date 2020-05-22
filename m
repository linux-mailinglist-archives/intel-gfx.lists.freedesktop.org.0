Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF661DEF5D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 20:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E503F6E0E6;
	Fri, 22 May 2020 18:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E157E6E0E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 18:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590172749;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uM87/EHvsl/9NXjVhpyujWeJuK5FBCU74Wfag7FIDSI=;
 b=Qf+l8KHmPLsb5zyoqNv8oNhUn2Mce2siz8w5n5d1p79slMKLGRt8qHXSTe/gmX8LTiyd5Y
 H7rvkQ3CuTESTu1hn8oRX4TdYyhIlsguNQuNprWuZWAwsOw0BhujG3Q2Oc8CwElr2vbi5i
 ySc29jbpPnQ/XD8Mp+rNS+mIY3ltzhs=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-54-GEao7t58M6m_uJRNzmbmYw-1; Fri, 22 May 2020 14:39:07 -0400
X-MC-Unique: GEao7t58M6m_uJRNzmbmYw-1
Received: by mail-qk1-f197.google.com with SMTP id i17so12060764qka.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 11:39:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=uM87/EHvsl/9NXjVhpyujWeJuK5FBCU74Wfag7FIDSI=;
 b=tNNX6ixnrymrN1zlUcre9S7eTLjpu+RmFcQhr13uhmXP9UnKt6mNnaYHaJC/g+GGFl
 7nvpCLYBpNZBgAoS3ho9f/l21IROuVGd1600bOgAI6bIpKUvs45QqckATIgN066r/Qtd
 ornMJ+KWsrZCJh4K4R1p2BYEZjxrCgjQgPGTmvpvoptvBrtT9SgFPcRVDgkASgSV9wky
 Wwi09NiN3p/1SNcnUC3EO90ftGnCEkBCS3dXLv4xtN0GlsJDWIxD1lfakPEUfFYgBgiD
 A4U9ze6trHJ+NLydBzIc5Dqz4RF6XMXGnjlesCcTuslFyDeMYaI1GOjI2L9ocE4naf6A
 wqRg==
X-Gm-Message-State: AOAM5329R1NtE3+PJZkwktU9FobDpold0Z6slDxzYBKD5tpdNSltAuC6
 t6QiD4CKW15bxRzQNBR7R0DoyG1M7piAXi8r9xJourNANPXQzsztN95Z+Hs2xV+hwJwwpIgBATd
 9Kupx8I+WMiBvv4054DlIXb7fdas9
X-Received: by 2002:a05:6214:5b1:: with SMTP id
 by17mr5013188qvb.37.1590172746904; 
 Fri, 22 May 2020 11:39:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9ORgAfv4OnUHuUM4WjsTZinphpeXdCNdY8FmAlrpNN9POVAH2uh7Wwq14a5FuYAeeltlPkA==
X-Received: by 2002:a05:6214:5b1:: with SMTP id
 by17mr5013172qvb.37.1590172746638; 
 Fri, 22 May 2020 11:39:06 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (static-173-76-190-23.bstnma.ftas.verizon.net. [173.76.190.23])
 by smtp.gmail.com with ESMTPSA id 9sm8318234qko.29.2020.05.22.11.39.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 11:39:05 -0700 (PDT)
Message-ID: <85e9ded6dd5066d15a0d703d98e72a289c168a64.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 22 May 2020 14:39:05 -0400
In-Reply-To: <563ca1af3518cb2b50653b4fd77830718d528826.camel@redhat.com>
References: <20200417212408.19649-1-shawn.c.lee@intel.com>
 <20200519035656.4885-1-shawn.c.lee@intel.com>
 <563ca1af3518cb2b50653b4fd77830718d528826.camel@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mst: filter out the display
 mode exceed sink's capability
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2020-05-22 at 14:35 -0400, Lyude Paul wrote:
> 
> On Tue, 2020-05-19 at 11:56 +0800, Lee Shawn C wrote:
> > So far, max dot clock rate for MST mode rely on physcial
> > bandwidth limitation. It would caused compatibility issue
> > if source display resolution exceed MST hub output ability.
> > 
> > For example, source DUT had DP 1.2 output capability.
> > And MST docking just support HDMI 1.4 spec. When a HDMI 2.0
> > monitor connected. Source would retrieve EDID from external
> > and get max resolution 4k@60fps. DP 1.2 can support 4K@60fps
> > because it did not surpass DP physical bandwidth limitation.
> > Do modeset to 4k@60fps, source output display data but MST
> > docking can't output HDMI properly due to this resolution
> > already over HDMI 1.4 spec.
> > 
> > Refer to commit <fcf463807596> ("drm/dp_mst: Use full_pbn
> > instead of available_pbn for bandwidth checks").
> > Source driver should refer to full_pbn to evaluate sink
> > output capability. And filter out the resolution surpass
> > sink output limitation.
> > 
> > v2: Using mgr->base.lock to protect full_pbn.
> > v3: Add ctx lock.
> > 
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Cc: Cooper Chiou <cooper.chiou@intel.com>
> > Cc: Lyude Paul <lyude@redhat.com>
> > Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 30 ++++++++++++++++++++-
> >  1 file changed, 29 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 74559379384a..6b6f7eef5b68 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -611,6 +611,32 @@ static int intel_dp_mst_get_modes(struct drm_connector
> > *connector)
> >  	return intel_dp_mst_get_ddc_modes(connector);
> >  }
> >  
> > +static bool
> > +intel_dp_mst_mode_clock_exceed_pbn_bandwidth(struct drm_connector
> > *connector,
> > int clock, int bpp)
> > +{
> > +	struct intel_connector *intel_connector = to_intel_connector(connector);
> > +	struct intel_dp *intel_dp = intel_connector->mst_port;
> > +	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
> > +	struct drm_dp_mst_port *port = (to_intel_connector(connector))->port;
> > +	struct drm_modeset_acquire_ctx ctx;
> > +	bool ret = false;
> > +
> > +	if (!mgr)
> > +		return ret;
> > +
> > +	drm_modeset_acquire_init(&ctx, 0);
> > +
> > +	drm_modeset_lock(&mgr->base.lock, &ctx);
> > +	if (port->full_pbn)
> > +		ret = (drm_dp_calc_pbn_mode(clock, bpp, false) > port-
> > > full_pbn);
> > +	drm_modeset_unlock(&mgr->base.lock);
> > +
> > +	drm_modeset_drop_locks(&ctx);
> > +	drm_modeset_acquire_fini(&ctx);
> > +
> > +	return ret;
> > +}
> 
> Sorry to do this, but this still isn't right :s, and will likely end up
> deadlocking. I'm going to write up a fixed version of this patch and add you
> in
> the Co-developed-by: tag, shouldn't take too long for me to do so I can send
> it
> out today

Completely forgot to actually explain what was wrong here - this creates an
acquisition context that would be separate from the caller's lock acquisition
context. So, drm_helper_probe_single_connector_modes() would grab
connection_mutex before calling the hook, and since it's not using an
acquisition context we could potentially deadlock when locking &mgr->base.lock
if another thread locked &mgr->base.lock before connection_mutex. If we add a
lock acquisition context to drm_helper_probe_single_connector_modes and use that
to grab &mgr->base.lock, the ww-mutex code can detect the deadlock and give us a
chance to back off and try again.

anyway-i'll send out the new version of the patch asap

> > +
> >  static enum drm_mode_status
> >  intel_dp_mst_mode_valid(struct drm_connector *connector,
> >  			struct drm_display_mode *mode)
> > @@ -633,7 +659,9 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
> >  	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
> >  	mode_rate = intel_dp_link_required(mode->clock, 18);
> >  
> > -	/* TODO - validate mode against available PBN for link */
> > +	if (intel_dp_mst_mode_clock_exceed_pbn_bandwidth(connector, mode-
> > >clock, 
> > 24))
> > +		return MODE_CLOCK_HIGH;
> > +
> >  	if (mode->clock < 10000)
> >  		return MODE_CLOCK_LOW;
> >  

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
