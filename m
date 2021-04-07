Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A85F356D89
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 15:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E536E90F;
	Wed,  7 Apr 2021 13:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18C436E90D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 13:41:32 +0000 (UTC)
IronPort-SDR: 6ayyEl/a/d1gs3H0e21/yUvB1+jKZgO/MMJQlAJHnMzZsp0Smo5oGRlVOsKyw+H58zVNsHaskl
 ms3kUBkMdHnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="191146602"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="191146602"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 06:41:31 -0700
IronPort-SDR: Ym/WIw/u+om1BccCmDCT8mmslgfVHwobSPr5hPOR6wOXsyY499r0BNEpv8KO3Afc5cSBaDc/YX
 qjpLJOE8lTjQ==
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="448254462"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 06:41:28 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lU8Qv-0021Qx-BN; Wed, 07 Apr 2021 16:41:25 +0300
Date: Wed, 7 Apr 2021 16:41:25 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YG22hduvvsEB3JcM@smile.fi.intel.com>
References: <20210407122337.77493-1-andriy.shevchenko@linux.intel.com>
 <87h7kijm8i.fsf@intel.com> <YG22OhNg3iQ8DFXW@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YG22OhNg3iQ8DFXW@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] [PATCH v1 1/1] drm/i915: Include only needed
 headers in ascii85.h
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 07, 2021 at 04:40:10PM +0300, Andy Shevchenko wrote:
> On Wed, Apr 07, 2021 at 03:46:37PM +0300, Jani Nikula wrote:
> > On Wed, 07 Apr 2021, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> > > The ascii85.h is user of exactly two headers, i.e. math.h and types.h.
> > > There is no need to carry on entire kernel.h.
> > >
> > > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > 
> > That's hardly drm/i915 specific!
> 
> It was originated from i915!
> 
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> Thanks!
> 
> > But who's going to pick it up and, hopefully, change the subject prefix
> > to ascii85 or something?
> 
> It's drm specific. Should I leave drm and resend? Or what is the general rule
> for drm misc changes?

Since the topic comes up about drm misc, can somebody approve push access from
me to that?

https://gitlab.freedesktop.org/freedesktop/freedesktop/-/issues/311

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
