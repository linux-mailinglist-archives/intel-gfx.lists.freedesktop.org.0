Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3272751ADC9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 21:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0D610EC96;
	Wed,  4 May 2022 19:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC16890A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 19:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651692501; x=1683228501;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=sg0k20pUZdKAYzCYR9XFHyQ4SvW4wZPi253dFI/k3vQ=;
 b=MPRIrUBidknUr4uLLj0O2q3xJGNCyX6YoXFWTp/ziwotmE4SwzQuNab6
 9ZuTPo1EVQXhemuvG6EB8rLSsy7PiXuMzqlenBB3k7+ZuYeBqUX60m/Km
 7PQ/Uy8wd0Ul+/eg1qXdxcDfQBu9T0Y96folehZ81KRN6nuCh3d6BimgI
 AyBguyMzbw9udRCVuH4J5IWChPDjpEfjRAX7UBQ972owIiY/3j5kuSWit
 X1AhvvMliqQxfOzSbiP1BDJw4ZPrfUqMqnIFra9GKbfZiNnpx3UQYlLap
 210raORReCNZYcjjbQr034hdtj5LZxjqYaSaXG05PzJjiAPiTyYJDsst3 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="268029477"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="268029477"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:28:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="584906469"
Received: from adobrowo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.156.70])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:28:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB317752C55BD83E2B76CAD931BAC39@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503082134.4128355-1-jani.nikula@intel.com>
 <DM6PR11MB317752C55BD83E2B76CAD931BAC39@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Wed, 04 May 2022 22:28:14 +0300
Message-ID: <874k25m71t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: warn about missing
 ->get_buf_trans initialization
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 04 May 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Tuesday, May 3, 2022 1:52 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [Intel-gfx] [PATCH] drm/i915: warn about missing ->get_buf_trans
>> initialization
>> 
>> Make sure each DDI platform has sane ->get_buf_trans initialized.
>> 
>> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
