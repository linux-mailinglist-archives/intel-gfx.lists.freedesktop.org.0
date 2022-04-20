Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F5B508D4B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 18:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370C010E222;
	Wed, 20 Apr 2022 16:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3530B10E222
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 16:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650472135; x=1682008135;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YvIRby3XaIL8sZ3v/j4JCwaTlFkbjh0IzDuJonwM2tg=;
 b=cj4wVKIq0w0pN7PVWN0/bAdLArueFmw2vaAHAFrqmOIP0GPkQE7OQR0v
 Q28JFiTTHGRewtLIvNxChFSEHMhmivaPxPb/6/pQloOTSrks6VDl8pDlc
 YQj9kcRg1yJWuMAdjQ3KCEjpe3XCLkW0Wt0tjDpPrf7tKdAVhxhVf4RVx
 2EqpaeadIOyRCufJGjKjOc5tfXtuzi4qy8vmbhrWTWaBDo6jBDNKpfSM4
 97R2FEHQ+tulDV5/NZkluUAJBvPsaqhaXYytTefGF74veJBBRGi4w783h
 lFo9pLZizgbG8sVkL9TkRzqWwHRiX4p6RFF2p7xTeNo0UQ8fzYHnLol0i A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="264252188"
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="264252188"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 09:24:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="576668054"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 20 Apr 2022 09:23:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Apr 2022 19:23:57 +0300
Date: Wed, 20 Apr 2022 19:23:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YmAznXmONRMW4kEY@intel.com>
References: <20220418150936.5499-1-hdegoede@redhat.com>
 <YmASniwe39jj1miR@intel.com>
 <60452154-8aab-b15d-1dff-29d3fa732f22@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <60452154-8aab-b15d-1dff-29d3fa732f22@redhat.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DISP_POS_Y and DISP_HEIGHT
 defines
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 20, 2022 at 05:32:43PM +0200, Hans de Goede wrote:
> Hi Ville,
> 
> On 4/20/22 16:03, Ville Syrjälä wrote:
> > On Mon, Apr 18, 2022 at 05:09:36PM +0200, Hans de Goede wrote:
> >> Commit 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane registers")
> >> introduced DISP_POS_Y and DISP_HEIGHT defines but accidentally set these
> >> their masks to REG_GENMASK(31, 0) instead of REG_GENMASK(31, 16).
> >>
> >> This breaks the primary display pane on at least pineview machines, fix
> >> the mask to fix the primary display pane only showing black.
> >>
> >> Tested on an Acer One AO532h with an Intel N450 SoC.
> >>
> >> Fixes: 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane registers")
> >> Cc: José Roberto de Souza <jose.souza@intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> >> ---
> >> Note this fixes a regression in 5.18-rc# and I'm not entirely sure what
> >> the procedure is here. Once I get a Reviewed-by or Acked-by and I push
> >> this to drm-intel-next (where it also is necessary), should I then also
> >> push it to drm-intel-fixes or will the current drm-intel-fixes
> >> maintainer pick it up?
> >> ---
> >>  drivers/gpu/drm/i915/i915_reg.h | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> >> index 51f46fe45c72..5f1f38684d65 100644
> >> --- a/drivers/gpu/drm/i915/i915_reg.h
> >> +++ b/drivers/gpu/drm/i915/i915_reg.h
> >> @@ -4352,12 +4352,12 @@
> >>  #define _DSPAADDR				0x70184
> >>  #define _DSPASTRIDE				0x70188
> >>  #define _DSPAPOS				0x7018C /* reserved */
> >> -#define   DISP_POS_Y_MASK		REG_GENMASK(31, 0)
> >> +#define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)
> > 
> > Doh. I guess I only tested it on plane A where the plane gets its size
> > from PIPESRC instead. And looks like the failure mode is such that
> > the likes of kms_plane/pixel-formats still gets consistent looking CRCs
> > even with the misconfigured plane size :/
> > 
> > Thanks for the fix. Pushed to drm-intel-next.
> 
> Thank you pushing this out, will you (or someone else from Intel)
> also take care of getting this on its way to 5.18-rc# ?

It has a fixes tag so it should get cherry-picked for fixes.

-- 
Ville Syrjälä
Intel
