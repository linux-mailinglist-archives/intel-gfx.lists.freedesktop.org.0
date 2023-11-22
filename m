Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 275B07F4E64
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 18:30:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 887B910E0A7;
	Wed, 22 Nov 2023 17:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9B310E0A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 17:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700674211; x=1732210211;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fa5M/NOtL+V1KV+j1sGKLpKs5xyNYyyTPN63slaxkpY=;
 b=mH8Y+YXQXvvbUvbjPvgcc+VxC9S+w/XePGiRh2RaLvjgc4KveSnZMfTQ
 n4TOOpT14AoOHe1kB8B/2odA+tl/bRIdgNSd3ZABINtLRhm6fpXiTbQd9
 7jrM74uqK2IYz1vm/GhKAcsHLEQlV7utB2fW+aOAV3+jRrrkuV594hGrq
 v20EsGovQouuKhFv5jLGPcl0RxaUHLNsnyPX5moQpgv9F8fLLmJMKO0x2
 jSCRx4AB66t6mVslOv3WrkUWkzzCmMfZYA6QfEcxwK2w6hTYWb4x6V0Ql
 /7uExTRVuR/eRPkXjuXq45HMfcLztl0W8n0Mxk3AtNCKZEFhzMIa9yazl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="394936922"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="394936922"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 09:30:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="770700172"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="770700172"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 09:30:08 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1r5r38-0000000GAGF-12xu; Wed, 22 Nov 2023 19:30:06 +0200
Date: Wed, 22 Nov 2023 19:30:05 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZV46nbU1j0lX_Jrq@smile.fi.intel.com>
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
 <170013946304.3092.1503824312309598619@emeril.freedesktop.org>
 <87ttplprbw.fsf@intel.com>
 <DM6PR11MB38192A2B1E08611ACB696367F2BBA@DM6PR11MB3819.namprd11.prod.outlook.com>
 <87fs0ym512.fsf@intel.com>
 <PH7PR11MB707320EC146F274263792BF193BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
 <DM8PR11MB5655E859CB8C7AAE16FAB6DCE0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
 <PH7PR11MB7073CA66944A34B28EB3629293BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
 <DM8PR11MB5655EE430B1F635C70201328E0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
 <874jhdn1vn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <874jhdn1vn.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 LGCI Bug Filing <lgci.bug.filing@intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 22, 2023 at 07:17:48PM +0200, Jani Nikula wrote:
> On Wed, 22 Nov 2023, "Saarinen, Jani" <jani.saarinen@intel.com> wrote:
> >> From: Musial, Ewelina <ewelina.musial@intel.com>
> >> Sent: Wednesday, November 22, 2023 4:25 PM

...

> >> But this list had only series which were in queue here https://intel-gfx-
> >> ci.01.org/queue/index.html and today I was checking exactly how queue for
> >> shards is created and there are jobs which are not displayed there.
> >> Directly in Jenkins we do have multiple more jobs than in this queue only
> >> and I also killed them. I was discussing exactly this case today with
> >> Michał and he pointed out that in explanation below queues we do have
> >> highlighted: Due to technical limitation this is just an approximation of
> >> the queue. It is good for assessing the length of the queue, but should
> >> not be considered as completely accurate.

> > OK. So could have been in the list but not sure. 
> 
> Okay, timeout.
> 
> I just pushed the series. I trust Hans' testing here, considering the
> likely platform impact of the series and CI coverage of said platforms.
> 
> Thanks for the patches and review.

Thank you, Jani, Hans, Ville and others!

-- 
With Best Regards,
Andy Shevchenko


