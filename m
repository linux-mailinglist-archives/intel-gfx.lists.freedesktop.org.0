Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4365A5DC3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 10:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA63810EB24;
	Tue, 30 Aug 2022 08:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EDA310EC52
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 08:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661846972; x=1693382972;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uqQUdoN3/1FYdb9Lpby+SdjlRw31CjyRZn8jiYs9y+g=;
 b=lDPIH80/0EedKGffciksm6Bb3qdsMBNEBnMnDfj74xqmqK6/VqF++A7U
 E8xjGu9gZWVeqW46/odMcrmz2ipF0zG1kXz3k6x9xiVteJXpIwTFEOgE2
 RHst/ljAWpLyJIuaD68HQgNYxWzUHCGYyFD9PX1p6YxdLV3FnKSC6ODM7
 gVc6W5dh9+4WLSmjoaxozaDnXSlpfNi77QpRsmCGc6igiILn5oMmDLQtu
 Zr+Zh9j3TKrhphu3lGkrejjustPK+ZkJLuWccGF0uF7TywuJVHAEW6Akl
 PY1dgw3foE0JFNkSbZIRjtdJl1AHBNZKUiXT+aVVuyo7KvqaO8K+1SoRY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="275514873"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="275514873"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 01:09:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="753942146"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 30 Aug 2022 01:09:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Aug 2022 11:09:28 +0300
Date: Tue, 30 Aug 2022 11:09:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <Yw3FuGk/pSY+51T0@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220704161548.1343042-1-arun.r.murthy@intel.com>
 <YwTOoCLIBf8KhjWB@intel.com>
 <DM6PR11MB3177E2D112D3A3A589F650D8BA739@DM6PR11MB3177.namprd11.prod.outlook.com>
 <YwYW826HW9xjjVnE@intel.com>
 <DM6PR11MB3177D7567C42D8FAE0C3F52CBA799@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Yw3AArq8Vx1LrFgl@intel.com>
 <DM6PR11MB31779B3FBE9945476890F37EBA799@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB31779B3FBE9945476890F37EBA799@DM6PR11MB3177.namprd11.prod.outlook.com>
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

On Tue, Aug 30, 2022 at 07:57:15AM +0000, Murthy, Arun R wrote:
> > > > > > > Intel Gen do support Async Flip is supported on linear buffers.
> > > > > > > Since we didn't had a use case, it was not enabled. Now that
> > > > > > > as part of hybrid graphics for unsupported hardware pixel
> > > > > > > formats, its being converted to linear memory and then flipped,
> > hence enabling!
> > > > > > > This patch enables support for async on linear buffer.
> > > > > > >
> > > > > > > v2: added use case
> > > > > > > v3: enabled async on linear for pre Gen 12 as well
> > > > > >
> > > > > > I didn't think it went all the way back to gen9?
> > > > > >
> > > > > It's the same as other buffers. I have just added support for
> > > > > linear buffer in
> > > > the present async flip path, so the platforms on which the async
> > > > flip is supported will support linear buffer as well.
> > > >
> > > > I know what the patch does. But I don't think bspec agrees with it.
> > > >
> > > I initially had this async on linear buffer support from Gen12 onwards. Will
> > add that check back.
> > 
> > We're just going in circles here. What I've asked repeatedly is actual
> > justification for whatever gen check or no gen check there is. Ie. please
> > *read* the bspec and include the appropriate information in the patch.
> > Otherwise there is no point in me even looking at these patches anymore.
> > 
> Per the BSpec async on Linear is not supported on Pre Gen 12.

Where in bspec does it say that?

> 
> > >
> > > > >
> > > > > > Also we still don't seem to have any tests for this stuff...
> > > > >
> > > > > There is an IGT patch in queue, once this patch is merged, the IGT
> > > > > patch will
> > > > be floated.
> > > >
> > > > Do the igt stuff first. Then you can at least get some CI results for this
> > stuff.
> > > >
> > > IGT has be floated. https://patchwork.freedesktop.org/series/107871/
> > >
> 
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
Ville Syrjälä
Intel
