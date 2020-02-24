Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486A316A0F3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 10:01:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D6F6E08A;
	Mon, 24 Feb 2020 09:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A05A6E08A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 09:01:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 01:01:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,479,1574150400"; d="scan'208";a="270805317"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2020 01:01:01 -0800
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Feb 2020 01:01:01 -0800
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 FMSMSX154.amr.corp.intel.com (10.18.116.70) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Feb 2020 01:01:01 -0800
Received: from BGSMSX107.gar.corp.intel.com ([169.254.9.58]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.38]) with mapi id 14.03.0439.000;
 Mon, 24 Feb 2020 14:30:39 +0530
From: "Laxminarayan Bharadiya, Pankaj"
 <pankaj.laxminarayan.bharadiya@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Fix inverted WARN_ON
Thread-Index: AQHV6nBUmU2GCJmubkajVTyzpa3kKqgpgdGAgACJBUA=
Date: Mon, 24 Feb 2020 09:00:38 +0000
Message-ID: <E92BA18FDE0A5B43B7B3DA7FCA0312860576FE63@BGSMSX107.gar.corp.intel.com>
References: <20200223173959.3885742-1-chris@chris-wilson.co.uk>
 <87blpotswq.fsf@intel.com>
In-Reply-To: <87blpotswq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix inverted WARN_ON
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



> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: 24 February 2020 11:43
> To: Chris Wilson <chris@chris-wilson.co.uk>; intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>; Laxminarayan Bharadiya, Pankaj
> <pankaj.laxminarayan.bharadiya@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Fix inverted WARN_ON
> 
> On Sun, 23 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > Restore the previous WARN_ON(cond) so that we don't complain about
> > poor old Cherryview.
> >
> > Fixes: eb020ca3d43f ("drm/i915/display/dp: Make WARN* drm specific
> > where drm_device ptr is available")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> Auch.
> 
> How did a cocci patch have something like this? Manual edits on top?

My bad.. I accidentally removed *!* for  IS_CHERRYVIEW(dev_priv) while fixing checkpatch  80 char warning.

Fix should be -

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4c411a01b7ab..6ab9712b8f53 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1024,7 +1024,7 @@ void intel_power_sequencer_reset(struct drm_i915_private *dev_priv)
        struct intel_encoder *encoder;

        if (drm_WARN_ON(&dev_priv->drm, !IS_VALLEYVIEW(dev_priv) &&
-                       IS_CHERRYVIEW(dev_priv) &&
+                       !IS_CHERRYVIEW(dev_priv) &&
                        !IS_GEN9_LP(dev_priv)))
                return;

Thanks,
Pankaj

> 
> I did read the patches through, despite them being cocci stuff, but missed this
> anyway.
> 
> But how did CI not complain? Did I miss the warning?
> 
> BR,
> Jani.
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2f93326c16a3..e8bebd27004d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1023,9 +1023,10 @@ void intel_power_sequencer_reset(struct
> > drm_i915_private *dev_priv)  {
> >  	struct intel_encoder *encoder;
> >
> > -	if (drm_WARN_ON(&dev_priv->drm, !IS_VALLEYVIEW(dev_priv) &&
> > -			IS_CHERRYVIEW(dev_priv) &&
> > -			!IS_GEN9_LP(dev_priv)))
> > +	if (drm_WARN_ON(&dev_priv->drm,
> > +			!(IS_VALLEYVIEW(dev_priv) ||
> > +			  IS_CHERRYVIEW(dev_priv) ||
> > +			  IS_GEN9_LP(dev_priv))))
> >  		return;
> >
> >  	/*
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
