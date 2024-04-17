Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ED08A8237
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 13:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34A010F5B4;
	Wed, 17 Apr 2024 11:37:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RudixTk1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A026810F2C7;
 Wed, 17 Apr 2024 11:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713353852; x=1744889852;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QpeC5JACSCBzWeYiD3EYLcmVPCZwEBNjlCX3FbOEIPw=;
 b=RudixTk1GYX8fHegWZjPpIxkbAts4IEeD5KWxpgUskFKkQlsACtW8o0u
 NeOgv/B5QTvJBbSPfOMqkXokVhpY/4PaOt1FEH1aC4yiiW6kqIlF2LV8F
 1QWB/6jGV3dg8BwnSorAYxLEHXmHS/SUlp3OGJmx2PHEhjgElLIiKddux
 +SopQwRKix9QUX2M/gpZm7VFG9u+knf0ANUc4R7Y/RRiHwaI40QUeGYgg
 56Z7AiMrsAQs9rvEJkNs2PuGzTQcDALWVeyN8zEQHz0xsIlUEdnZcYmmv
 0X7zsBjScYNzICGVa22wcU6UMj7EZyZyvlM/T09XWz8zNmczSnjRDmmIW g==;
X-CSE-ConnectionGUID: GMcx7/JXTVK8+5MrS7y/tA==
X-CSE-MsgGUID: AtnHHHgqSyaVxWvkwCZJjw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8960479"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8960479"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 04:37:30 -0700
X-CSE-ConnectionGUID: uCwoR7RATC+ZngyJNeV/tg==
X-CSE-MsgGUID: PAjd/SXFRXmBNdcJUD8i/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22687759"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 04:37:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
In-Reply-To: <17dc38b91bfddf564f12cdd1ed1ed8615d000e13.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412094148.808179-1-luciano.coelho@intel.com>
 <20240412094148.808179-2-luciano.coelho@intel.com>
 <DM4PR11MB63600F7F0EE905B24FED01B2F4042@DM4PR11MB6360.namprd11.prod.outlook.com>
 <7c2a11df009a90646d39783c01f722b96717966c.camel@coelho.fi>
 <DM4PR11MB6360FFEA82155778AD9B9778F4092@DM4PR11MB6360.namprd11.prod.outlook.com>
 <2fe5226a281ad1db416d26969e5edf07b60dd349.camel@coelho.fi>
 <87v84gxr3j.fsf@intel.com>
 <17dc38b91bfddf564f12cdd1ed1ed8615d000e13.camel@coelho.fi>
Date: Wed, 17 Apr 2024 14:37:24 +0300
Message-ID: <87mspsxlsb.fsf@intel.com>
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

On Wed, 17 Apr 2024, Luca Coelho <luca@coelho.fi> wrote:
> On Wed, 2024-04-17 at 12:42 +0300, Jani Nikula wrote:
>> On Mon, 15 Apr 2024, Luca Coelho <luca@coelho.fi> wrote:
>> > Thanks a lot for your reviews! Now I just need to get someone to merge
>> > this series, since I don't have commit rights to the repo yet.
>> 
>> Thanks for the patches and review, merged to drm-intel-next with a
>> slightly heavy heart because it sets me back with [1] in a pretty
>> annoying way. Oh well.
>> 
>> BR,
>> Jani.
>> 
>> [1] https://lore.kernel.org/r/0b48d6bebfe90aa2f901a05be8279ed887d99d7a.1712665176.git.jani.nikula@intel.com
>
> Oh, no! But you do have cocci and scripts, so it should be easy? Let me
> know if I can help you rebase your change.

The cocci script completely broke apart with the changes. :(

I don't know how to tell it to "first do all these transformations, then
these, and then these" which seems to be necessary.

BR,
Jani.





>
> In any case, thanks for merging my patches!
>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel
