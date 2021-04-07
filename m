Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED69E356D84
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 15:40:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB7A6E90C;
	Wed,  7 Apr 2021 13:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560006E90C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 13:40:15 +0000 (UTC)
IronPort-SDR: rsiOVYzMbzgADE/RBDsB8tCRPQbc9vZzWKKSF4luNotylMZd4QqrFcroAdTCFC3c9YmmXPuoZO
 jrUxNlr2Y7oQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="193348993"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="193348993"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 06:40:14 -0700
IronPort-SDR: cqKZMTMNKr1TbWNHHXtC82JhOBU6bIl+cEeCw4koBHuh2zsbS7xzig4/CHKPPtIiM5LTGY23Ut
 ZKN2H7/ykjzQ==
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="379829570"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 06:40:13 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lU8Pi-0021Ol-5D; Wed, 07 Apr 2021 16:40:10 +0300
Date: Wed, 7 Apr 2021 16:40:10 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YG22OhNg3iQ8DFXW@smile.fi.intel.com>
References: <20210407122337.77493-1-andriy.shevchenko@linux.intel.com>
 <87h7kijm8i.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h7kijm8i.fsf@intel.com>
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

On Wed, Apr 07, 2021 at 03:46:37PM +0300, Jani Nikula wrote:
> On Wed, 07 Apr 2021, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> > The ascii85.h is user of exactly two headers, i.e. math.h and types.h.
> > There is no need to carry on entire kernel.h.
> >
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> That's hardly drm/i915 specific!

It was originated from i915!

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks!

> But who's going to pick it up and, hopefully, change the subject prefix
> to ascii85 or something?

It's drm specific. Should I leave drm and resend? Or what is the general rule
for drm misc changes?

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
