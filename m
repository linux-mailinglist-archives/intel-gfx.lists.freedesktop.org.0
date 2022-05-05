Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFC951C8E4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 21:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294DC10EA79;
	Thu,  5 May 2022 19:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE4B10EA79
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651778573; x=1683314573;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=44TnMCKY3WQQ+f021g68ULEd/bl96tJgrX425MbA44M=;
 b=JW9Q/4R1eST9ZV1qlD1W8xHqOF+eepPyW2b6qzYx/p0NAqByTwDh4jDc
 SXPynNxdXMMCKy9urapN1EunsTjm/oDvYcMjW4/0WUUMdF+oGZ4g5acLS
 zPmSIx9A7e9LqWkxto0NdYlarDlOleSnwI2ga/o/A6YjRg7GbQOAJucNp
 Fjg9/bWeA/Pw3NcQ7bYPU5hox0HvC4b6Kl/C2YTyjfgutqMBweyFBGldS
 no3QZveht9634HYCfowHUrOMGE+aaAGrBolu17i91mTW6IQEIOYoLjuZX
 1500HD+F/7FYOfUkqWzbnvfSnbU6jFmAWo7S9LBzduPh8KlEqT/teEhGs A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="328766637"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="328766637"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:22:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="549498008"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 05 May 2022 12:22:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 May 2022 22:22:49 +0300
Date: Thu, 5 May 2022 22:22:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <YnQkCZ3g1428Z9x5@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <Ymg2uBjovjgVAyC5@intel.com>
 <DM6PR11MB317721EBFA40865B0898F40ABAFA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Ymkv9sCuA9SwUIvj@intel.com>
 <DM6PR11MB3177FDCC1F636934C2650DFBBAFD9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177F94FBFC7A99A1BD4A2EFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
 <YnPes/sz/l/MmnW0@intel.com>
 <DM6PR11MB3177D20CE483373FA770A422BAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB3177D20CE483373FA770A422BAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear
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

On Thu, May 05, 2022 at 04:09:18PM +0000, Murthy, Arun R wrote:
> > > Can I have your Reviewed-by for this patch?
> > 
> > You didn't find the GTT alignment restriction yet which to me syas you didn't
> > really look hard enough.
> I checked in the BSpec and also clarified with the hardware team on this.
> > 
> > And you haven't answered what the actual use case for this is.
> 
> This is a required for one of the platform and has been
> assessed in JIRA.

Required for what? If there is no userspace for it then I don't
see how anyone can require it if they can't even use it.

-- 
Ville Syrjälä
Intel
