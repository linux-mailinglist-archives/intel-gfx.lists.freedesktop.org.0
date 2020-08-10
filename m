Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 260B02407F0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 16:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659096E43A;
	Mon, 10 Aug 2020 14:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183B26E43A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 14:56:38 +0000 (UTC)
IronPort-SDR: VKk79tWyZPfhQWbxKITgjI8YQpvXVSWxmNySamJbQjFljCIYBDxuqTb7Fbu1idgjtB9zJPfYJI
 LmzzC27DM7gQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="171584105"
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="171584105"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 07:56:37 -0700
IronPort-SDR: ziv7wtaF9/bFd7Is7k/tA6fSPmEyGD9LJ3UxHXtex/kPa/J+261ZM2PEkC8mSqsRD5kLIcyafq
 ubljnV7a0EnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="276028593"
Received: from unknown (HELO fmsmsx604.amr.corp.intel.com) ([10.18.84.214])
 by fmsmga007.fm.intel.com with ESMTP; 10 Aug 2020 07:56:37 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Aug 2020 07:56:36 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Aug 2020 20:26:34 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 10 Aug 2020 20:26:34 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Fix NV12 sub plane atomic state
Thread-Index: AQHWbyRErQycfjyac0CApTHtxYp00akxD8yAgABc9iA=
Date: Mon, 10 Aug 2020 14:56:34 +0000
Message-ID: <db10f02b5f074f268cf304e42d4b057f@intel.com>
References: <20200810151602.20757-1-uma.shankar@intel.com>
 <c73e1ba2-dec8-c95c-dbb4-efeffe21cfb4@linux.intel.com>
In-Reply-To: <c73e1ba2-dec8-c95c-dbb4-efeffe21cfb4@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix NV12 sub plane atomic
 state
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
Cc: "Kumar, Abhishek4" <abhishek4.kumar@intel.com>, "Zuo,
 Alex" <alex.zuo@intel.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Sent: Monday, August 10, 2020 8:17 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Zuo, Alex <alex.zuo@intel.com>; Kumar, Abhishek4
> <abhishek4.kumar@intel.com>; stable@vger.kernel.org
> Subject: Re: [PATCH] drm/i915/display: Fix NV12 sub plane atomic state
> 
> Op 10-08-2020 om 17:16 schreef Uma Shankar:
> > From: Abhishek Kumar <abhishek4.kumar@intel.com>
> >
> > For NV12 display sub plane is also configured and drivers internally
> > create plane atomic state. Driver copies all of the param of main
> > plane atomic state to sub planer atomic state but in sub plane atomic
> > state crtc is not added ,so when drm atomic state is configured for
> > commit ,fake commit handler is created for sub plane and also state is
> > not cleared when NV12 buffer is not displayed.
> >
> > Fixes: 1f594b209fe1 ("drm/i915: Remove special case slave handling
> > during hw programming")
> > Change-Id: I447b16bf433dfb5b43b2e4cade258fc775aee065
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Abhishek Kumar <abhishek4.kumar@intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 522c772a2111..76da2189b01d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -12502,6 +12502,7 @@ static int icl_check_nv12_planes(struct
> intel_crtc_state *crtc_state)
> >  	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state-
> >uapi.state);
> >  	struct intel_plane *plane, *linked;
> >  	struct intel_plane_state *plane_state;
> > +	int ret;
> >  	int i;
> >
> >  	if (INTEL_GEN(dev_priv) < 11)
> > @@ -12576,6 +12577,11 @@ static int icl_check_nv12_planes(struct
> intel_crtc_state *crtc_state)
> >  		linked_state->uapi.src = plane_state->uapi.src;
> >  		linked_state->uapi.dst = plane_state->uapi.dst;
> >
> > +		/* Update Linked plane crtc same as of main plane */
> > +		ret = drm_atomic_set_crtc_for_plane(&linked_state->uapi,
> plane_state->uapi.crtc);
> > +		if(ret)
> > +			return ret;
> > +
> >  		if (icl_is_hdr_plane(dev_priv, plane->id)) {
> >  			if (linked->id == PLANE_SPRITE5)
> >  				plane_state->cus_ctl |= PLANE_CUS_PLANE_7;
> 
> That shouldnt be done, uapi.crtc should be NULL for the slave plane.

Hi Maarten,
We seem to get EBUSY from commit and flips fail with NV12, RGB seems to work fine.
This change is making things work. What could be possibly going wrong ?

This is being tested with Chrome browser app while switching tabs with videos being
played on each of these tabs.

Regards,
Uma Shankar


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
