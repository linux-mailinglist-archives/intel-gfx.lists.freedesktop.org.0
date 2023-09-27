Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 337787B08EE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 17:38:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A892510E54C;
	Wed, 27 Sep 2023 15:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA7F10E54C
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695829096; x=1727365096;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HhG4lB0yelZILviWgLpci2XYkEBKqOPJhrmdUK3R9qU=;
 b=CVu4qukk+u8DajcVQlTqSEvB0cB0TuGGecz/cCYeght7lmhg/vp4lEXb
 8oSwLvUIJOhNflllWa4NGbrgnEK7iU8mWHVq3sg4SUSay2yvammzZtTgE
 zjHbh1gie9xMWuMABbLx+K7cO05uO9ST7qFBXOPS25xymr/OoVPgpS0//
 MnJ5X+O8Xa7m9B+x45Olob2LEL+SHFO4hYg0emi7L9MAdavfVF6iu+QI/
 IzjVJVlPywtajxnaeecomwlMitz982nerEeieEt+JW3hItpj6ryzo1Bm+
 tf0bqbUg60Occ+5zg6kM8tpfL3yq1MevNyRrW34aP6xFlBcca6pTOV5xG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="448344712"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="448344712"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 08:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="814909320"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="814909320"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 27 Sep 2023 08:38:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Sep 2023 18:38:12 +0300
Date: Wed, 27 Sep 2023 18:38:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <ZRRMZP-5bCnENM2O@intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-6-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360F135F0BAB87C3FE9D389F4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360F135F0BAB87C3FE9D389F4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 05/19] drm/i915/dsb: Define the contents
 of some intstructions bit better
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

On Mon, Sep 11, 2023 at 08:50:24PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, June 7, 2023 12:45 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH v2 05/19] drm/i915/dsb: Define the contents of some
> > intstructions bit better
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add some defines to specify what goes inside certain DSB instructions.
> 
> Only upper and lower shift seems to be added in the patch, do we need a
> separate patch for this or we can squash with where its used.
> Will leave the decision to you.
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 42911abcd3ab..093b2567883d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -70,17 +70,21 @@ struct intel_dsb {
> >  #define DSB_OPCODE_SHIFT		24
> >  #define DSB_OPCODE_NOOP			0x0
> >  #define DSB_OPCODE_MMIO_WRITE		0x1
> > +#define   DSB_BYTE_EN			0xf
> > +#define   DSB_BYTE_EN_SHIFT		20
> > +#define   DSB_REG_VALUE_MASK		0xfffff
> >  #define DSB_OPCODE_WAIT_USEC		0x2
> > -#define DSB_OPCODE_WAIT_LINES		0x3
> > +#define DSB_OPCODE_WAIT_SCANLINE	0x3
> >  #define DSB_OPCODE_WAIT_VBLANKS		0x4
> >  #define DSB_OPCODE_WAIT_DSL_IN		0x5
> >  #define DSB_OPCODE_WAIT_DSL_OUT		0x6
> > +#define   DSB_SCANLINE_UPPER_SHIFT	20
> > +#define   DSB_SCANLINE_LOWER_SHIFT	0
> >  #define DSB_OPCODE_INTERRUPT		0x7	
> >  #define DSB_OPCODE_INDEXED_WRITE	0x9
> > +/* see DSB_REG_VALUE_MASK */
> >  #define DSB_OPCODE_POLL			0xA
> > -#define DSB_BYTE_EN			0xF
> > -#define DSB_BYTE_EN_SHIFT		20
> > -#define DSB_REG_VALUE_MASK		0xfffff
> > +/* see DSB_REG_VALUE_MASK */
> 
> This comment seems redundant. With this fixed,

The comment indicates that DSB_OPCODE_POLL also uses DSB_REG_VALUE_MASK,
similar to DSB_OPCODE_INDEXED_WRITE.

> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > 
> >  static bool assert_dsb_has_room(struct intel_dsb *dsb)  {
> > --
> > 2.39.3
> 

-- 
Ville Syrjälä
Intel
