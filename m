Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A48A4A61F7
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 18:10:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A991010E145;
	Tue,  1 Feb 2022 17:10:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1EA810E145
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 17:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643735439; x=1675271439;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/vzZ/eGwIv0PQmThYBy2Otg9xYu+1tu36396s0A4UM4=;
 b=S0RoT8kNcz1NZcY3zLyDuENWJQt9HfSdxoSRaFJUEW1NEYGU64TPnWad
 jnDsL6KazAm+ULOyAcK7vnjYvGrUqu7WyTvdNkkeJSYViKMUY5F2stvIk
 oobGIWi+auxlx3+mtGWi6zS7yEoCu0IifhwZyUHaI1uMbvpYTGabQM5Lh
 yzykphJZ5Q88wFwWu4V4SKlXLh/0AJ6V0Pc63/iHDCWw2jIpQsmnVTFSR
 rU7otxXDamgrbyP6TJGPFULFZT/kI8sGcLgw7xhqJyC8fCjkXl7egIJ+Q
 Hm26mImyKnaZJ8JjF5MJaEbOdkzNHEPCMho0MLbyHgIRDNSyGjunBEsOf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="228397644"
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="228397644"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 09:09:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="534582052"
Received: from ehanosko-mobl.ger.corp.intel.com (HELO localhost) ([10.252.6.3])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 09:09:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220201165515.xntdympc4n3pdhif@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
 <20220201165515.xntdympc4n3pdhif@ldmartin-desk2>
Date: Tue, 01 Feb 2022 19:09:14 +0200
Message-ID: <87o83qtsxx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 0/2] Compile out integrated
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
Cc: Intel-gfx@lists.freedesktop.org, Michael Cheng <michael.cheng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 01 Feb 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Feb 01, 2022 at 11:15:31AM +0000, Tvrtko Ursulin wrote:
>>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>>Quicky and dirty hack based on some old ideas. Thought maybe the approach might
>>interest the Arm port guys. But with IS_GEN_RANGE removed easy gains are not so
>>big so meh.. Maybe some more easy wins with IS_DISPLAY_VER but I haven't looked
>>into that side.
>>
>> 3884664  449681    6720 4341065  423d49 i915.ko.tip
>> 3599989  429034    6688 4035711  3d947f i915.ko.noigp
>
> By these numbers probably it's hard to justify. Another thing to consider
> is that it's very common to have on the same system both
> integrated and discrete - doing this would remove at compile time any
> chance of driving the integrated one.

I guess the point was, the arm systems won't have integrated, and it's
anyway going to be a separate build.

BR,
Jani.


>
> Lucas De Marchi
>
>>
>>Note debug kconfig so everything is inflated. Whether or not the relative gain
>>would change with production kconfig I am not sure.
>>
>>P.S.
>>I was a bit curious there were no build errors around functions no longer used
>>so either there were none (would mean patch is not really that effective), or
>>something changed with compiler warnings/smarts. Haven't looked into it.
>>
>>Tvrtko Ursulin (2):
>>  igp kconfig
>>  jsl/ehl
>>
>> drivers/gpu/drm/i915/Kconfig                  |   5 +
>> drivers/gpu/drm/i915/Kconfig.platforms        |   7 +
>> .../drm/i915/display/intel_ddi_buf_trans.c    |   4 +-
>> drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   2 +-
>> drivers/gpu/drm/i915/i915_drv.h               | 128 +++++++++++-------
>> drivers/gpu/drm/i915/i915_pci.c               |  44 +++++-
>> 6 files changed, 134 insertions(+), 56 deletions(-)
>> create mode 100644 drivers/gpu/drm/i915/Kconfig.platforms
>>
>>-- 
>>2.32.0
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
