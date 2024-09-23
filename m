Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 820E397E9F2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 12:32:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED9710E3D5;
	Mon, 23 Sep 2024 10:32:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FD33eNdf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 109EB10E3D6;
 Mon, 23 Sep 2024 10:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727087543; x=1758623543;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zUHUw5jjQeWXYPWCPxp+jinQp4By4YA3kB0qZ3KZNeY=;
 b=FD33eNdfZczvfqzUP5TRBjkPPbfgG0KOtrYhMlKLhRQBows6hIITLs8v
 IYY9/bAGQNrvpoql8XJsDKkRWUCoDpWruyZErnAi7OoLV1VxOpe6n1DzA
 tjCFPJGGVCXuy5kSb62q4utbDcM58g4CmRT9zwJjSBfI983nepWARrPnK
 1ekSDSI7VjaRgvU8y17Z4NiZmqGyVApdwoUfqTDiRK2HTlLfT376uxgHB
 JI08yVDw6yVtcnppi9Aq2WANTfoI9mrJMKcsRBtFclFFJlcrgCxInsiLv
 bKBmtnogINXmCzvenJqBK4EODRbWOu5a8TpPkTJmLNSOPQ7rZb8ynARzA Q==;
X-CSE-ConnectionGUID: 9vkWSmReRW+3SyWx3lLkRg==
X-CSE-MsgGUID: 4B7y5cYUSW+AuhIx2jCltQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="29750422"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="29750422"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:32:23 -0700
X-CSE-ConnectionGUID: qtxyb1QtR+O43p4/dgzXhg==
X-CSE-MsgGUID: Ck6XcdeKR1+4PzIXkU8wQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="75795792"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:32:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
In-Reply-To: <IA0PR11MB7307B5BFFE772AC749C86AA7BA642@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-2-arun.r.murthy@intel.com>
 <87bk0ti6mv.fsf@intel.com>
 <IA0PR11MB7307B5BFFE772AC749C86AA7BA642@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Mon, 23 Sep 2024 13:32:17 +0300
Message-ID: <87r09a64pa.fsf@intel.com>
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
>> Sent: Thursday, September 12, 2024 2:36 PM
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
>> >
>> > Signed-off-by: Srikanth V NagaVenkata
>> > <nagavenkata.srikanth.v@intel.com>
>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> 
>> Why do all the patches have two Signed-off-by's?
>> 
> Findings are from Srikanth so giving credits to him as well.

Contrary to popular belief, Signed-off-by: actually has very little to
do with credits and authorship, and everything to do with certifying
that the work can be submitted and merged to the kernel [1].

What you're looking for is Co-developed-by: [2] in combination with
S-o-b.


BR,
Jani.


[1] https://docs.kernel.org/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin
[2] https://docs.kernel.org/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by

-- 
Jani Nikula, Intel
