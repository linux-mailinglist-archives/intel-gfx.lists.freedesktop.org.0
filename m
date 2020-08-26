Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A36D2535CF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 19:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C516E247;
	Wed, 26 Aug 2020 17:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA00C6E247
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 17:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598461981;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HNxk+EQ8wQ8tVIGqRrZql9fbdwG5Cj1VEgrvd+qiq60=;
 b=akAIhKUD5Qk0ymiu4cPTtgx0EdDQHpIn9aJf96foNQ3hu/hLiOZulXvmlyg2+oYen5l/5M
 esJp2HO7iZ1He4eLei4WGquGtJZ+lQOjhxA8h/iHh/LEgKtlIkYwIqGs6H0BtBoNtmgNsH
 1f86dgGDV5EohUCuV8r77FH/EWBRC6s=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-570-lyr4pp5NNjKlgfLFjNJd6w-1; Wed, 26 Aug 2020 13:12:59 -0400
X-MC-Unique: lyr4pp5NNjKlgfLFjNJd6w-1
Received: by mail-qk1-f199.google.com with SMTP id k142so2236454qke.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 10:12:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=HNxk+EQ8wQ8tVIGqRrZql9fbdwG5Cj1VEgrvd+qiq60=;
 b=NGp47wIbBw6UPkLH2PJDdXAySiU4j6EOx1mjL4SezKF8kcADsArJnIru8HOULLEHK6
 td6Gjrei4+On24vL6snDyWljTzazxx+cst+zljnoo5adphcNeBBMpep3RijyHuQeizCS
 PKDpyeNhceljQmioQj104uqA7mFrpdBuVMhqHkXjXhxqskbsd0FTqHHoXc4aD5+sUwx8
 H1XfspW6dNqwhDvc81fHgAmbelPT52nA6m4w2PRQIlAB7d4FfUZEjz2MoxtaEt9XGCBe
 NEkcsZdJqeJ3nvZt9cTdYgvaIVdbo5wJPCkh+xOv96frJxFYajB5IkoiyI+vTtSUjMwi
 F9fg==
X-Gm-Message-State: AOAM530spKAFZPlOInsNeZP+zB5EXDZko7nRko2dGRGDZYlYyZY8N8LM
 jncL0vK3iUaKzlMLfF4tg4TA8xRCfTC/mJ4Kq5WzaxV8Cf1A7xWtw1VxDUO69ukUzajFTI3MFhm
 3/u62l67LJEAQqjmNxwJQ6kCsmx2A
X-Received: by 2002:ac8:458a:: with SMTP id l10mr14982605qtn.345.1598461974936; 
 Wed, 26 Aug 2020 10:12:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPN0gfqk25wNBQ7pctyKxl91Z5N9+T1TGM7wzP+o65H/927i5DVjZXXu0XPikzyIsh50ev/w==
X-Received: by 2002:ac8:458a:: with SMTP id l10mr14982565qtn.345.1598461974593; 
 Wed, 26 Aug 2020 10:12:54 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id r73sm2063390qka.76.2020.08.26.10.12.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 10:12:54 -0700 (PDT)
Message-ID: <0b9fe80d058320b4e8e4fdf51a5445eddb1b0467.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org
Date: Wed, 26 Aug 2020 13:12:52 -0400
In-Reply-To: <87o8mx6g6a.fsf@intel.com>
References: <20200825195027.74681-1-lyude@redhat.com>
 <20200825195027.74681-17-lyude@redhat.com> <87o8mx6g6a.fsf@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [RFC v4 16/20] drm/i915/dp: Extract
 drm_dp_get_sink_count()
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-08-26 at 10:05 +0300, Jani Nikula wrote:
> On Tue, 25 Aug 2020, Lyude Paul <lyude@redhat.com> wrote:
> > And of course, we'll also need to read the sink count from other drivers
> > as well if we're checking whether or not it's supported. So, let's
> > extract the code for this into another helper.
> > 
> > v2:
> > * Fix drm_dp_dpcd_readb() ret check
> > * Add back comment and move back sink_count assignment in
> > intel_dp_get_dpcd()
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > Reviewed-by: Sean Paul <sean@poorly.run>
> > ---
> >  drivers/gpu/drm/drm_dp_helper.c         | 22 ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++------
> >  include/drm/drm_dp_helper.h             |  1 +
> >  3 files changed, 28 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_dp_helper.c
> > b/drivers/gpu/drm/drm_dp_helper.c
> > index 863e0babc1903..67ad05eb05b7e 100644
> > --- a/drivers/gpu/drm/drm_dp_helper.c
> > +++ b/drivers/gpu/drm/drm_dp_helper.c
> > @@ -736,6 +736,28 @@ bool drm_dp_has_sink_count(struct drm_connector
> > *connector,
> >  }
> >  EXPORT_SYMBOL(drm_dp_has_sink_count);
> >  
> > +/**
> > + * drm_dp_get_sink_count() - Retrieve the sink count for a given sink
> 
> From the department of bikeshedding...
> 
> Should we have a naming scheme where it's obvious whether a function
> will do DPCD access, or just shuffle existing data?
> 
> For example, drm_dp_read_foo() for anything with DPCD access
> vs. drm_dp_get_foo() or even simpler for anything that only processes
> pre-read data?

Forgot to address this comment - yeah, I think that would be a good idea. I'll
go through my previous patches and make sure that they match this naming scheme
as well.
> 
> > + * @aux: The DP AUX channel to use
> > + *
> > + * Returns: The current sink count reported by @aux, or a negative error
> > code
> > + * otherwise.
> > + */
> > +int drm_dp_get_sink_count(struct drm_dp_aux *aux)
> > +{
> > +	u8 count;
> > +	int ret;
> > +
> > +	ret = drm_dp_dpcd_readb(aux, DP_SINK_COUNT, &count);
> > +	if (ret < 0)
> > +		return ret;
> > +	if (ret != 1)
> > +		return -EIO;
> 
> Makes me wonder if that shouldn't be at drm_dp_dpcd_read() level, for
> reads returning 0..len-1 bytes. Not necessarily part of this series, but
> seems silly to set a precedent to start handling that return value all
> over the place.
> 
> BR,
> Jani.
> 
> > +
> > +	return DP_GET_SINK_COUNT(count);
> > +}
> > +EXPORT_SYMBOL(drm_dp_get_sink_count);
> > +
> >  /*
> >   * I2C-over-AUX implementation
> >   */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 35a4779a442e2..4337321a3be4f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4648,6 +4648,8 @@ intel_dp_has_sink_count(struct intel_dp *intel_dp)
> >  static bool
> >  intel_dp_get_dpcd(struct intel_dp *intel_dp)
> >  {
> > +	int ret;
> > +
> >  	if (!intel_dp_read_dpcd(intel_dp))
> >  		return false;
> >  
> > @@ -4664,11 +4666,8 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
> >  	}
> >  
> >  	if (intel_dp_has_sink_count(intel_dp)) {
> > -		u8 count;
> > -		ssize_t r;
> > -
> > -		r = drm_dp_dpcd_readb(&intel_dp->aux, DP_SINK_COUNT, &count);
> > -		if (r < 1)
> > +		ret = drm_dp_get_sink_count(&intel_dp->aux);
> > +		if (ret < 0)
> >  			return false;
> >  
> >  		/*
> > @@ -4676,7 +4675,7 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
> >  		 * a member variable in intel_dp will track any changes
> >  		 * between short pulse interrupts.
> >  		 */
> > -		intel_dp->sink_count = DP_GET_SINK_COUNT(count);
> > +		intel_dp->sink_count = ret;
> >  
> >  		/*
> >  		 * SINK_COUNT == 0 and DOWNSTREAM_PORT_PRESENT == 1 implies that
> > diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> > index a1413a531eaf4..0c141fc81aaa8 100644
> > --- a/include/drm/drm_dp_helper.h
> > +++ b/include/drm/drm_dp_helper.h
> > @@ -1635,6 +1635,7 @@ struct drm_dp_desc;
> >  bool drm_dp_has_sink_count(struct drm_connector *connector,
> >  			   const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> >  			   const struct drm_dp_desc *desc);
> > +int drm_dp_get_sink_count(struct drm_dp_aux *aux);
> >  
> >  void drm_dp_remote_aux_init(struct drm_dp_aux *aux);
> >  void drm_dp_aux_init(struct drm_dp_aux *aux);
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
