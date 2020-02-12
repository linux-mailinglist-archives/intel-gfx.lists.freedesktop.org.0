Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE83515AC65
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 16:52:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF93989B99;
	Wed, 12 Feb 2020 15:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C9989B99
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 15:52:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 07:52:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="233824071"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by orsmga003.jf.intel.com with ESMTP; 12 Feb 2020 07:52:54 -0800
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 irsmsx105.ger.corp.intel.com (163.33.3.28) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 12 Feb 2020 15:52:53 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Feb 2020 15:52:53 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 12 Feb 2020 15:52:53 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1] drm/i915: Ensure no conflicts with BIOS
 when updating Dbuf
Thread-Index: AQHV4bk37q9MxvZfdU6qF4GcjAnlJqgXsP0AgAADoYA=
Date: Wed, 12 Feb 2020 15:52:53 +0000
Message-ID: <d29233945e167ed96cd3bd7fe68a6ef9fbcd924b.camel@intel.com>
References: <20200212152525.23108-1-stanislav.lisovskiy@intel.com>
 <87o8u3yfzr.fsf@intel.com>
In-Reply-To: <87o8u3yfzr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.163]
Content-ID: <BFB68C3AD551964E8D09E49D32F61EE4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Ensure no conflicts with BIOS
 when updating Dbuf
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

On Wed, 2020-02-12 at 17:36 +0200, Jani Nikula wrote:
> On Wed, 12 Feb 2020, Stanislav Lisovskiy <
> stanislav.lisovskiy@intel.com> wrote:
> > TGL BIOS seems to enable both DBuf slices ocasionally, depending
> > how many displays are connected, while i915 according to BSpec
> > was powering on S1 DBuf slice, until a modeset was done.
> > 
> > This was causing a brief flash during the boot as we were
> > disabling slice, previously used by BIOS with that.
> > 
> > To prevent this, now we are ensuring tht we are enabling
> > _at least_ one slice, but if there are more, let's not
> > power them off.
> > 
> > Fixes: ff2cd8635e41 ("drm/i915: Correctly map DBUF slices to
> > pipes")
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 53056def5414..b9a9cbad8a03 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -4470,11 +4470,13 @@ void icl_dbuf_slices_update(struct
> > drm_i915_private *dev_priv,
> >  
> >  static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
> >  {
> > +	skl_ddb_get_hw_state(dev_priv);
> >  	/*
> > -	 * Just power up 1 slice, we will
> > +	 * Just power up at least 1 slice, we will
> >  	 * figure out later which slices we have and what we need.
> >  	 */
> > -	icl_dbuf_slices_update(dev_priv, BIT(DBUF_S1));
> > +	icl_dbuf_slices_update(dev_priv, dev_priv-
> > >enabled_dbuf_slices_mask |
> > +			       BIT(DBUF_S1));
> 
> I don't know anything about this, but it seems obvious to me the
> enabling code should not do hardware readout; they should be
> separated
> from a much higher level.

Current consensus with Ville is that there is no better place to 
stick it(could be moved to icl_core_init which calls that however
not sure this is any better).
That whole readout is simply done just because at this early stage
we don't yet do a modeset neither have any info, which slices 
should be powered on, however if we enable only single slice as
BSpec says, we might briefly introduce some screen glithes as
BIOS could have used two slices already.


Stan

> 
> BR,
> Jani.
> 
> 
> >  }
> >  
> >  static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
