Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B0E97E9DC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 12:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A5EC10E3D0;
	Mon, 23 Sep 2024 10:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z7Y0YjqQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B6F10E3CF;
 Mon, 23 Sep 2024 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727087040; x=1758623040;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UM+eN/Ka/qtGnxQtCxNesjUO0k308HG/DsjQxvzq12o=;
 b=Z7Y0YjqQwk/6iYhW/SMBqn57hKnzcoVMFJRIcgwlhyz07wKwVkf5ltmN
 YfRo9YayrcUHUCY+mqIXoWHe7jaaU12bJbOqip/hs6P+GQOF5POvJNFb4
 W5UF2of8jcqYWVW2WJqSsF0+fq5lgJ8srzNc5HMuMeUQKyaKx9azQhbeZ
 op+f/1BkV9gxCWpUr+QPPe1UnYGanS3s7wXIfrdW6/Z46lVjsukjveBsP
 GpwNdFp8UnN4s2YiF13b1WpVo1R/3gFRivGh/Kt2+Jq5v+quRTWT7Wezd
 jWujXMgk7JUG6Cr/FAIV4OQ7P9owbx6KQhVAqknigex9IVg8jgKlU7ylv Q==;
X-CSE-ConnectionGUID: 9Ku3Dn5hR/qE2dwNuvI3Kw==
X-CSE-MsgGUID: oSN4yosgSUi0P2uhFO3vFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="37164681"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="37164681"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:23:47 -0700
X-CSE-ConnectionGUID: dKtGRmo1R9WWiJ2MP5Jhcg==
X-CSE-MsgGUID: LvnBYadgQ4qmWGYIYmbVOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71165822"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:23:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
In-Reply-To: <IA0PR11MB7307879EFEDFC2C82CAD39BFBA642@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-2-arun.r.murthy@intel.com>
 <87ikv1i6tc.fsf@intel.com>
 <IA0PR11MB7307879EFEDFC2C82CAD39BFBA642@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Mon, 23 Sep 2024 13:23:41 +0300
Message-ID: <87y13i653m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 12 Sep 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Thursday, September 12, 2024 2:32 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.org;
>> intel-gfx@lists.freedesktop.org
>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
>> <nagavenkata.srikanth.v@intel.com>
>> Subject: Re: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
>> 
>> On Thu, 12 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> > Aux RD Interval value depends on the value read from the dpcd register
>> > which is updated from the sink device use flseep thereby we adhere to
>> > the Documentation/timers/timers-howto.rst
>> 
>> Please explain why instead of just referencing a file.
>
> Sleeping for < 10us use udelay, for 10us to 20ms use usleep_range and for > 10ms use msleep.
> fsleep() will call the particular api based on the above condition.

Oh, I'm not asking to explain this specifically to me. I'm asking it to
be explained in the commit message, for posterity. A commit message
should always answer the question *why*.

BR,
Jani.


-- 
Jani Nikula, Intel
