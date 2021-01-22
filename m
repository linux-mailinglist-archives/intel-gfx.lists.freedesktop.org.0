Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B67133007A3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 16:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B80E6E9F3;
	Fri, 22 Jan 2021 15:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD8E46E9F3;
 Fri, 22 Jan 2021 15:45:26 +0000 (UTC)
IronPort-SDR: QeDU8ZtzRA6kBKZsZ0vH34ZpJU/+swhDoqc8/DznXFGZ/ENnkTyKzCRLnJgEZksc3eUiimR3DZ
 w0vqPXPABa0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="166563104"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="166563104"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 07:45:25 -0800
IronPort-SDR: WsuBb/yh2FWIVCD7GQoZggnTj0OECXv/tRURFPeu7YpC7qcloj4GE6xgNReNYlahamHklMKOz+
 8eO8/CnpJJ2w==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="357061398"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 07:45:23 -0800
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1l2ydm-009500-Er; Fri, 22 Jan 2021 17:46:26 +0200
Date: Fri, 22 Jan 2021 17:46:26 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
Message-ID: <YArzUj+6ZRFZ5bVa@smile.fi.intel.com>
References: <20210122113855.25770-1-andriy.shevchenko@linux.intel.com>
 <CAMeQTsa4byizTHkno_ndGpNskAgrEUU3f43p3qAfnGsXt2OoVQ@mail.gmail.com>
 <YArmxaIZl/NjKkpT@smile.fi.intel.com>
 <CAMeQTsaVCnVNEx-hYnsYsKt+m34jHnRU+fvhQ2AHdTQ5t4cvng@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMeQTsaVCnVNEx-hYnsYsKt+m34jHnRU+fvhQ2AHdTQ5t4cvng@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] [PATCH v1 1/2] drm/gma500: Convert to use new SCU
 IPC API
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
Cc: David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 22, 2021 at 04:15:33PM +0100, Patrik Jakobsson wrote:
> On Fri, Jan 22, 2021 at 3:51 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> >
> > On Fri, Jan 22, 2021 at 03:16:55PM +0100, Patrik Jakobsson wrote:
> > > On Fri, Jan 22, 2021 at 12:39 PM Andy Shevchenko
> > > <andriy.shevchenko@linux.intel.com> wrote:
> > > >
> > > > Convert the GMA500 driver to use the new SCU IPC API. This allows us
> > > > to get rid of the duplicate PMC IPC implementation which is now covered
> > > > in SCU IPC driver.
> > > >
> > > > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > > > Acked-by: Linus Walleij <linus.walleij@linaro.org>
> > >
> > > Both patches look good. Do you want me to take them through drm-misc? Otherwise:
> > > Acked-by: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
> >
> > I guess it's fine to go via drm-misc, but we might need an immutable branch/tag
> > in the future (in case the rest cleanups that are dependent but have not sent
> > yet will pending v5.12).
> 
> Right, so you need this included before you remove the duplicate PMC
> IPC implementation? Then I think it's better you take the patches
> through whatever tree the PMC IPC changes go. You have my ack.

Got it, thanks!

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
