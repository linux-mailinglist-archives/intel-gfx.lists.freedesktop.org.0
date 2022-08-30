Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C77F5A5D36
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 09:45:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14FAE10E853;
	Tue, 30 Aug 2022 07:45:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF3E810E853
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 07:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661845511; x=1693381511;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uNbstr3ubMsSXZeBdaNmqttoF9Eyl9NwFleYlvEWKbk=;
 b=DCcjWrW9rGNNp1yoXx5dyzMtz5Ldbym0HBbMZrsXD4Ds/qeLXyOgMI+c
 3x78VDc3apMlybhI2Ma9NL6fkMBNXO8OPPttyLxRV1e1Bsnp/ZrZ7uXhY
 SRI243JhrYIkEjoIyEAIy8kjtgXf83r84JFrlM/C4uxlOu9LFapmq2I90
 nC5HYd1PvYUmXzIw4bv+/Pqoy8n8fFwaTBUiFcXNz07aO3y2WaUXe7U1l
 VX8R0Aiy/91dXSpcqFhcqvGGe8BWnTZ62o0F9fISlHTlG+BiwxEjwPfP3
 1mptwVliY2w5r+T/Q+eUabx4YgXk9DcWWjvbaad2BrJR1C8IYVt3+WmXL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="295890338"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="295890338"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 00:45:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="715206872"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 30 Aug 2022 00:45:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Aug 2022 10:45:06 +0300
Date: Tue, 30 Aug 2022 10:45:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <Yw3AArq8Vx1LrFgl@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220704161548.1343042-1-arun.r.murthy@intel.com>
 <YwTOoCLIBf8KhjWB@intel.com>
 <DM6PR11MB3177E2D112D3A3A589F650D8BA739@DM6PR11MB3177.namprd11.prod.outlook.com>
 <YwYW826HW9xjjVnE@intel.com>
 <DM6PR11MB3177D7567C42D8FAE0C3F52CBA799@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB3177D7567C42D8FAE0C3F52CBA799@DM6PR11MB3177.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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

On Tue, Aug 30, 2022 at 06:15:44AM +0000, Murthy, Arun R wrote:
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, August 24, 2022 5:48 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> > Subject: Re: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
> > 
> > On Wed, Aug 24, 2022 at 03:02:33AM +0000, Murthy, Arun R wrote:
> > > > -----Original Message-----
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Sent: Tuesday, August 23, 2022 6:27 PM
> > > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > > <uma.shankar@intel.com>
> > > > Subject: Re: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > buffers
> > > >
> > > > On Mon, Jul 04, 2022 at 09:45:48PM +0530, Arun R Murthy wrote:
> > > > > Intel Gen do support Async Flip is supported on linear buffers.
> > > > > Since we didn't had a use case, it was not enabled. Now that as
> > > > > part of hybrid graphics for unsupported hardware pixel formats,
> > > > > its being converted to linear memory and then flipped, hence enabling!
> > > > > This patch enables support for async on linear buffer.
> > > > >
> > > > > v2: added use case
> > > > > v3: enabled async on linear for pre Gen 12 as well
> > > >
> > > > I didn't think it went all the way back to gen9?
> > > >
> > > It's the same as other buffers. I have just added support for linear buffer in
> > the present async flip path, so the platforms on which the async flip is
> > supported will support linear buffer as well.
> > 
> > I know what the patch does. But I don't think bspec agrees with it.
> > 
> I initially had this async on linear buffer support from Gen12 onwards. Will add that check back.

We're just going in circles here. What I've asked repeatedly
is actual justification for whatever gen check or no gen check
there is. Ie. please *read* the bspec and include the appropriate
information in the patch. Otherwise there is no point in me
even looking at these patches anymore.

> 
> > >
> > > > Also we still don't seem to have any tests for this stuff...
> > >
> > > There is an IGT patch in queue, once this patch is merged, the IGT patch will
> > be floated.
> > 
> > Do the igt stuff first. Then you can at least get some CI results for this stuff.
> > 
> IGT has be floated. https://patchwork.freedesktop.org/series/107871/
> 
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
Ville Syrjälä
Intel
