Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 087C750171F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:58:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705C110E0AE;
	Thu, 14 Apr 2022 15:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6CB810E0AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 15:58:04 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id a5so4314245qvx.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 08:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jYwgH4frj8u/RprdkrG/desyOpG3NIjZIXaCYIQS8XI=;
 b=PA4m7mRTz7b0MQc7W+GVK9J0LzinQWTocmgmomJvpjMIS2GTKfLEMkwI3v+V8knYzv
 rYL8t7qBSO082t1RK9ZYMjMelibizTGlE3VWh5AIw2Diz2kr/IlmVE2NXZvyvkBC+JdU
 AJ2vBxalADJhYocSjWENFZvmk4sH1NRywhklVKwQsyMENexOLv3jTgacH1aaix+dvKLK
 AgEBV/F299rmW2m97AW0wFMsMfnHr1OV1O2ov+8A6Sj/ByOZPvYV+qlIpXLPIh3kOw+a
 pRlwBxoGoErvKBxJ3GxPKNjRPLPx+I9LHxYT+wkhonA1Qgs0oZ+kjJaKpdGPOeNq5wyj
 zN5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jYwgH4frj8u/RprdkrG/desyOpG3NIjZIXaCYIQS8XI=;
 b=w9PXzsaSzKLM5ESrt52f67MAKaN8AxpljHaMWIhp43mO+3DtjbyBZSaaj/3QHdo6VS
 z29sV4xS6Im3BhUosKA0B34IJMoPKAf6vNPewPLrct/kkmyyncPRKTBAyKRGyYy+vOhZ
 9Ei7LTam9sU6WZQYWaifmT8CAMc3Gn3ckC0ctFSWkKKLYccQCjNgRhB96bOtam5FamLo
 kXJjBIRfZ97dxopGR3mqqhLVKDULjm+pOdrObuUdEJEKwa4q0npe8csXR2NipUQw/Ght
 i9faYkMhqqE8b8YGzaQhWNmhiOibbwX5ATEXp22mVBdIjedo2HzGYrBjsBo9RIIhF2gn
 sH9A==
X-Gm-Message-State: AOAM53199BqEmk9hD9maM6n95pggg9A2BJ9hEP5SRUr5o+6KRX/jYtGf
 IIO23RLqDW0Y432uAl3+H4FzKQ==
X-Google-Smtp-Source: ABdhPJwQVl/K6Ld8em/h2hT1Y57K/Iu2hvryrkjOl0tnWQPnfBbGQ8u+w0NWapHwd0ICK6mwvXFVhA==
X-Received: by 2002:a05:6214:1c83:b0:443:6749:51f8 with SMTP id
 ib3-20020a0562141c8300b00443674951f8mr3853528qvb.74.1649951883653; 
 Thu, 14 Apr 2022 08:58:03 -0700 (PDT)
Received: from localhost (115.25.199.35.bc.googleusercontent.com.
 [35.199.25.115]) by smtp.gmail.com with ESMTPSA id
 21-20020ac85715000000b002e1ce9605ffsm1418380qtw.65.2022.04.14.08.58.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Apr 2022 08:58:03 -0700 (PDT)
Date: Thu, 14 Apr 2022 15:58:02 +0000
From: Sean Paul <sean@poorly.run>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YlhEipy/e3U2hePl@art_vandelay>
References: <20220411204741.1074308-1-sean@poorly.run>
 <20220411204741.1074308-4-sean@poorly.run>
 <YlV9505orLrKlJfF@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YlV9505orLrKlJfF@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 03/10] drm/hdcp: Update property value on
 content type and user changes
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
Cc: Maxime Ripard <mripard@kernel.org>, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, David Airlie <airlied@linux.ie>,
 Sean Paul <seanpaul@chromium.org>, abhinavk@codeaurora.org,
 Thomas Zimmermann <tzimmermann@suse.de>, markyacoub@chromium.org,
 swboyd@chromium.org, freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 12, 2022 at 09:25:59AM -0400, Rodrigo Vivi wrote:
> On Mon, Apr 11, 2022 at 08:47:32PM +0000, Sean Paul wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> > 
> > This patch updates the connector's property value in 2 cases which were
> > previously missed:
> > 
> > 1- Content type changes. The value should revert back to DESIRED from
> >    ENABLED in case the driver must re-authenticate the link due to the
> >    new content type.
> > 
> > 2- Userspace sets value to DESIRED while ENABLED. In this case, the
> >    value should be reset immediately to ENABLED since the link is
> >    actively being encrypted.
> > 
> > To accommodate these changes, I've split up the conditionals to make
> > things a bit more clear (as much as one can with this mess of state).
> > 
> > Acked-by: Jani Nikula <jani.nikula@intel.com>
> > Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-4-sean@poorly.run #v1
> > Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-4-sean@poorly.run #v2
> > Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-4-sean@poorly.run #v3
> > Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-4-sean@poorly.run #v4
> > 
> > Changes in v2:
> > -None
> > Changes in v3:
> > -Fixed indentation issue identified by 0-day
> > Changes in v4:
> > -None
> > Changes in v5:
> > -None
> > ---
> >  drivers/gpu/drm/drm_hdcp.c | 26 +++++++++++++++++---------
> >  1 file changed, 17 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_hdcp.c b/drivers/gpu/drm/drm_hdcp.c
> > index dd8fa91c51d6..8c851d40cd45 100644
> > --- a/drivers/gpu/drm/drm_hdcp.c
> > +++ b/drivers/gpu/drm/drm_hdcp.c
> > @@ -487,21 +487,29 @@ bool drm_hdcp_atomic_check(struct drm_connector *connector,
> >  		return true;
> >  
> >  	/*
> > -	 * Nothing to do if content type is unchanged and one of:
> > -	 *  - state didn't change
> > +	 * Content type changes require an HDCP disable/enable cycle.
> > +	 */
> > +	if (new_conn_state->hdcp_content_type != old_conn_state->hdcp_content_type) {
> 
> shouldn't we add some && ( old_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED)) {
> here?

Thanks for your reviews Rodrigo.

I don't think so since the content type is changing the current state of old
content protection is immaterial (ie: if we need to enable HDCP 2.x, the state
of HDCP 1.x doesn't really matter), we need to re-evaluate whether the current
level of HDCP is sufficient.

Hopefully that makes sense, but I could be missing something :-)

Sean

> 
> > +		new_conn_state->content_protection =
> > +			DRM_MODE_CONTENT_PROTECTION_DESIRED;
> > +		return true;
> > +	}
> > +
> > +	/*
> > +	 * Ignore meaningless state changes:
> >  	 *  - HDCP was activated since the last commit
> > -	 *  - attempting to set to desired while already enabled
> > +	 *  - Attempting to set to desired while already enabled
> >  	 */
> > -	if (old_hdcp == new_hdcp ||
> > -	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
> > +	if ((old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
> >  	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED) ||
> >  	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> >  	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED)) {
> > -		if (old_conn_state->hdcp_content_type ==
> > -				new_conn_state->hdcp_content_type)
> > -			return false;
> > +		new_conn_state->content_protection =
> > +			DRM_MODE_CONTENT_PROTECTION_ENABLED;
> > +		return false;
> >  	}
> >  
> > -	return true;
> > +	/* Finally, if state changes, we need action */
> > +	return old_hdcp != new_hdcp;
> >  }
> >  EXPORT_SYMBOL(drm_hdcp_atomic_check);
> > -- 
> > Sean Paul, Software Engineer, Google / Chromium OS
> > 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
