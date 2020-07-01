Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C54621059F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843C06E413;
	Wed,  1 Jul 2020 08:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56AD96E413
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:01:25 +0000 (UTC)
IronPort-SDR: RKijAvNRWXxOh7bg9j4HgqcIjIh09meSFFyy368mZKMnT3AtAWXBzRbzM1bX7cc5ISzWtYTRuI
 hi8xjECQsiWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="211559365"
X-IronPort-AV: E=Sophos;i="5.75,299,1589266800"; d="scan'208";a="211559365"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 01:01:24 -0700
IronPort-SDR: +s3C/cOSXYm3LHkIa8AjfFJEQpF8d1NeIWwJUv8W2bP5nujDQyel/GNQVlyE+4U5WB55jXWjPg
 mQjbt7ULf2ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,299,1589266800"; d="scan'208";a="265335406"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jul 2020 01:01:23 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 01:01:23 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 1 Jul 2020 01:01:23 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 01:01:22 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.234]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.185]) with mapi id 14.03.0439.000;
 Wed, 1 Jul 2020 13:31:19 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/hdcp: Update CP as per the
 kernel internal state
Thread-Index: AQHWTrmd1uozSEmmvE6gU+2BcHx9najwkOiAgAHMd6CAAACkgA==
Date: Wed, 1 Jul 2020 08:01:18 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F825A77AD@BGSMSX104.gar.corp.intel.com>
References: <20200630082048.22308-1-anshuman.gupta@intel.com>
 <87d05gna9w.fsf@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F825A7726@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F825A7726@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/hdcp: Update CP as per the
 kernel internal state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@intel.com>
> > Sent: Tuesday, June 30, 2020 3:30 PM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/hdcp: Update CP as per
> > the kernel internal state
> >
> >
> > Uma, is the R-b still valid? It's been a while.
> 
> Yeah Jani, the changes look good. Will need a rebase and fresh CI results though.

Seems the CI results are already out and we are clean.

> Regards,
> Uma Shankar
> 
> > BR,
> > Jani.
> >
> >
> > On Tue, 30 Jun 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > > Content Protection property should be updated as per the kernel
> > > internal state. Let's say if Content protection is disabled by
> > > userspace, CP property should be set to UNDESIRED so that
> > > reauthentication will not happen until userspace request it again,
> > > but when kernel disables the HDCP due to any DDI disabling sequences
> > > like modeset/DPMS operation, kernel should set the property to
> > > DESIRED, so that when opportunity arises, kernel will start the HDCP
> > > authentication on its own.
> > >
> > > Somewhere in the line, state machine to set content protection to
> > > DESIRED from kernel was broken and IGT coverage was missing for it.
> > > This patch fixes it.
> > >
> > > v2:
> > > - Fixing hdcp CP state in connector atomic check function
> > >   intel_hdcp_atomic_check(). [Maarten]
> > >   This will require to check hdcp->value in intel_hdcp_update_pipe()
> > >   in order to avoid enabling hdcp, if it was already enabled.
> > >
> > > v3:
> > > - Rebased.
> > >
> > > Cc: Ramalingam C <ramalingam.c@intel.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > Link:
> > > https://patchwork.freedesktop.org/patch/350962/?series=72664&rev=2
> > > #v1
> > > Link:
> > > https://patchwork.freedesktop.org/patch/359396/?series=72251&rev=3
> > > #v2
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 27
> > > +++++++++++++++++++----
> > >  1 file changed, 23 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > index 815b054bb167..0d410652e194 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > @@ -2086,6 +2086,7 @@ void intel_hdcp_update_pipe(struct
> > intel_atomic_state *state,
> > >  		(conn_state->hdcp_content_type != hdcp->content_type &&
> > >  		 conn_state->content_protection !=
> > >  		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
> > > +	bool desired_and_not_enabled = false;
> > >
> > >  	/*
> > >  	 * During the HDCP encryption session if Type change is requested,
> > > @@ -2108,8 +2109,15 @@ void intel_hdcp_update_pipe(struct
> > intel_atomic_state *state,
> > >  	}
> > >
> > >  	if (conn_state->content_protection ==
> > > -	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
> > > -	    content_protection_type_changed)
> > > +	    DRM_MODE_CONTENT_PROTECTION_DESIRED) {
> > > +		mutex_lock(&hdcp->mutex);
> > > +		/* Avoid enabling hdcp, if it already ENABLED */
> > > +		desired_and_not_enabled =
> > > +			hdcp->value !=
> > DRM_MODE_CONTENT_PROTECTION_ENABLED;
> > > +		mutex_unlock(&hdcp->mutex);
> > > +	}
> > > +
> > > +	if (desired_and_not_enabled || content_protection_type_changed)
> > >  		intel_hdcp_enable(connector,
> > >  				  crtc_state->cpu_transcoder,
> > >  				  (u8)conn_state->hdcp_content_type);
> > > @@ -2158,6 +2166,19 @@ void intel_hdcp_atomic_check(struct
> > drm_connector *connector,
> > >  		return;
> > >  	}
> > >
> > > +	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
> > > +						   new_state->crtc);
> > > +	/*
> > > +	 * Fix the HDCP uapi content protection state in case of modeset.
> > > +	 * FIXME: As per HDCP content protection property uapi doc, an uevent()
> > > +	 * need to be sent if there is transition from ENABLED->DESIRED.
> > > +	 */
> > > +	if (drm_atomic_crtc_needs_modeset(crtc_state) &&
> > > +	    (old_cp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> > > +	    new_cp != DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
> > > +		new_state->content_protection =
> > > +			DRM_MODE_CONTENT_PROTECTION_DESIRED;
> > > +
> > >  	/*
> > >  	 * Nothing to do if the state didn't change, or HDCP was activated since
> > >  	 * the last commit. And also no change in hdcp content type.
> > > @@ -2170,8 +2191,6 @@ void intel_hdcp_atomic_check(struct
> > > drm_connector
> > *connector,
> > >  			return;
> > >  	}
> > >
> > > -	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
> > > -						   new_state->crtc);
> > >  	crtc_state->mode_changed = true;
> > >  }
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
