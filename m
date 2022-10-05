Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A785F553A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 15:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F2810E60E;
	Wed,  5 Oct 2022 13:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2941410E60C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 13:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664975955; x=1696511955;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DKqUXuNBombT05jFSzUDKz+PJr4i5ceN72JGkYQA9FQ=;
 b=QtHm47QzniPc+1kf6YHs4egE663Gece2MHpS2YeOA5ZaPTqOvdODWzxJ
 AajqrhnIni3EQXm1ribj8kubLenro6alnXfbkimqQlv3+Iw8Pj1+Oe7SK
 O/5HXAAtstAqt9z/aULjLr49WbmQ+ACLCkTilVGvUno8Cz8HCDSdEBUjx
 NX/Br3gspfmmkU0UmrSzjq4iZwBF0bSjqdPoIqbja9vJZgUMV6RHZrDWN
 5/6BANIj+pQR+3s/9Bjg2NuycFx0fltU9wuvpxY2JOCRNlbdekl9gh4/Y
 9gSWCMM8+dKOuawndiw3rG5XcosuKqHzEg8UgdPLEiWkZh5TZbMCubu3+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="300755116"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="300755116"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 06:19:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="626570011"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="626570011"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 05 Oct 2022 06:19:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Oct 2022 16:19:11 +0300
Date: Wed, 5 Oct 2022 16:19:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Message-ID: <Yz2ETyNjMUG9e/io@intel.com>
References: <20221005111158.3022387-1-mika.kahola@intel.com>
 <Yz1qgeXxFPquYh0q@intel.com>
 <MWHPR1101MB2157491209187F2A19596B14EF5D9@MWHPR1101MB2157.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MWHPR1101MB2157491209187F2A19596B14EF5D9@MWHPR1101MB2157.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ensure dbuf state is defined
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 05, 2022 at 12:25:26PM +0000, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, October 5, 2022 2:29 PM
> > To: Kahola, Mika <mika.kahola@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ensure dbuf state is defined
> > 
> > On Wed, Oct 05, 2022 at 02:11:58PM +0300, Mika Kahola wrote:
> > > Ensure that the new dbuf state is not null. If so, throw an error,
> > > discontinue to allocate ddb and return.
> > >
> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/skl_watermark.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index d58e667016e4..4ecf3b43d6d2 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -638,6 +638,9 @@ skl_crtc_allocate_ddb(struct intel_atomic_state
> > *state, struct intel_crtc *crtc)
> > >  	u32 start, end;
> > >  	int ret;
> > >
> > > +	if (IS_ERR(new_dbuf_state))
> > > +		return PTR_ERR(new_dbuf_state);
> > > +
> > 
> > You can't get here without the dbuf_state. Also even if we didn't have one
> > intel_atomic_get_new_dbuf_state() certainly shouldn't give us an error pointer
> > (you either get a valid pointer or NULL).
> Ok, so we can get a null here. Should we add a check for that one?

We can't get a null unless there is a bug somewhere. Is there one?

> 
> > 
> > >  	if (new_dbuf_state->weight[pipe] == 0) {
> > >  		skl_ddb_entry_init(&new_dbuf_state->ddb[pipe], 0, 0);
> > >  		goto out;
> > > --
> > > 2.34.1
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
