Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6351A23A131
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 10:42:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05976E21E;
	Mon,  3 Aug 2020 08:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 141826E21E;
 Mon,  3 Aug 2020 08:42:02 +0000 (UTC)
IronPort-SDR: nXf0sI2A1cQRlyl4QPRWLhcfw7xWULB8MZQg/qS3oQyhgK33e/sgjZ9iTHYpYEP99uMR8faUiV
 XI9sQzEbsrPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9701"; a="140015549"
X-IronPort-AV: E=Sophos;i="5.75,429,1589266800"; d="scan'208";a="140015549"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 01:42:01 -0700
IronPort-SDR: jdqq4oNfED4wgeLRjHMaHuNP8RyD9MdyK9lfemnRpVQM6L/Ft6bG1h6r8EWEU5WDugyaVOv/MK
 0sYucpi5FI1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,429,1589266800"; d="scan'208";a="273862936"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga007.fm.intel.com with ESMTP; 03 Aug 2020 01:41:58 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1k2W2f-005tVV-LR; Mon, 03 Aug 2020 11:41:57 +0300
Date: Mon, 3 Aug 2020 11:41:57 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200803084157.GW3703480@smile.fi.intel.com>
References: <20200717133753.127282-1-hdegoede@redhat.com>
 <20200717133753.127282-7-hdegoede@redhat.com>
 <20200728185703.GA3703480@smile.fi.intel.com>
 <1e19e31f-cf68-5607-3027-3b963ce53c39@redhat.com>
 <20200729081218.GH3703480@smile.fi.intel.com>
 <0e8595ff-2ebb-76a6-a43d-d670154c0352@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e8595ff-2ebb-76a6-a43d-d670154c0352@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] [PATCH v5 06/16] pwm: lpss: Use pwm_lpss_apply()
 when restoring state on resume
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
Cc: linux-pwm@vger.kernel.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Aug 02, 2020 at 10:51:34PM +0200, Hans de Goede wrote:
> On 7/29/20 10:12 AM, Andy Shevchenko wrote:

...

> Ok, I've added the suggested/discussed helper in my personal tree. Is it ok
> if I add your Reviewed-by with that change in place.

Yes, go ahead!

> This is the last unreviewed
> bit, so I would rather not respin the series just for this (there will be one
> more respin when I rebase it on 5.9-rc1).
> 
> If you want to check out what the patch looks like now, the new version from
> my personal tree is here:
> 
> https://github.com/jwrdegoede/linux-sunxi/commit/e4869830d88bb8cb8251718e0086ac189abc0f56

Thanks, looks good to me.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
