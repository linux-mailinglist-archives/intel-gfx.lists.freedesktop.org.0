Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC6C59F9D6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 14:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA89A70A1;
	Wed, 24 Aug 2022 12:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 721E791097
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 12:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661343479; x=1692879479;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=15xd5v5ZTTv9UU0AQ8KwQ76tFcgT8MOIB/7N6Qqk1yg=;
 b=JThyV4Y3ewtPcPdE3ek42LjWu53Jx14Og41jNYCDj77YFaf4EoNyDgqK
 f2b6K+Sur3gNqTXLFwo94oy0Zn8H9qSb/mOPIP1hGWl3op9Sr0qoklWOX
 mdCNNGwnvPRMG9jp22kKNAaK4fhdUSlORQWy4jed9+73tQ1qByXfvciv/
 BKuxrquooN1SSaTYTsoxxPey0hqJc9f2PLK9/PY+7V+3wgczcPddLgGSr
 2xAogp8L0kHEADgEAER+q5dnADo1UApsM6WH4A2fb1Ej0EjiSZad01FjF
 +/j1jvy1soTCaqE6phf42IXQ5AIZ0odJzLHkgc5HJ5FFxqXE1O/fm5UVS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="380239439"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="380239439"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 05:17:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="612776037"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by fmsmga007.fm.intel.com with SMTP; 24 Aug 2022 05:17:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Aug 2022 15:17:55 +0300
Date: Wed, 24 Aug 2022 15:17:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <YwYW826HW9xjjVnE@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220704161548.1343042-1-arun.r.murthy@intel.com>
 <YwTOoCLIBf8KhjWB@intel.com>
 <DM6PR11MB3177E2D112D3A3A589F650D8BA739@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB3177E2D112D3A3A589F650D8BA739@DM6PR11MB3177.namprd11.prod.outlook.com>
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

On Wed, Aug 24, 2022 at 03:02:33AM +0000, Murthy, Arun R wrote:
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Tuesday, August 23, 2022 6:27 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> > Subject: Re: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
> > 
> > On Mon, Jul 04, 2022 at 09:45:48PM +0530, Arun R Murthy wrote:
> > > Intel Gen do support Async Flip is supported on linear buffers. Since
> > > we didn't had a use case, it was not enabled. Now that as part of
> > > hybrid graphics for unsupported hardware pixel formats, its being
> > > converted to linear memory and then flipped, hence enabling!
> > > This patch enables support for async on linear buffer.
> > >
> > > v2: added use case
> > > v3: enabled async on linear for pre Gen 12 as well
> > 
> > I didn't think it went all the way back to gen9?
> > 
> It's the same as other buffers. I have just added support for linear buffer in the present async flip path, so the platforms on which the async flip is supported will support linear buffer as well.

I know what the patch does. But I don't think bspec agrees with it.

> 
> > Also we still don't seem to have any tests for this stuff...
> 
> There is an IGT patch in queue, once this patch is merged, the IGT patch will be floated.

Do the igt stuff first. Then you can at least get some CI results for
this stuff.

-- 
Ville Syrjälä
Intel
