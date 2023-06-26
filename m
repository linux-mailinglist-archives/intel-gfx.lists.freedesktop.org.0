Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C55A473E23A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 16:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4273B10E213;
	Mon, 26 Jun 2023 14:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0984910E21F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 14:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687790132; x=1719326132;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=20yVm7LlyoZwr19Q/93xuci4cWhfDAA9gCU8vmXBqkk=;
 b=foCVLV41tq6QMPzWq1jV0/idDrY+HfQDX7MoylDJxdL0rWj8F2qIfHh0
 CCxgr015b2Ew4jtetje0/pqz040PW1yz7zrviDPyb2gLFsRdBlqZoc9Kq
 6cqzDPRQ11uk+2VR3jCyOdALakYw4ex+d0sjEpS6SGG0vn5FrVVNcMV7h
 SGgXX1miz9fU+6ayukSvEkHEwv97UI7RKa2Ep9pyZXp0dCkocdGKYEpxL
 mORAcLBchKKlpXNefzKhL2XDtod1qCQJeQhJH9Ah0Y37XVExAOp2qxsaJ
 SnMsgah14T0XCNFLSH0Pqrh2gzVbaZULvnc/p64OHT5wTvNEJT7F4cfYu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341620628"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="341620628"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 07:35:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="745809927"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="745809927"
Received: from pdenis-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.207])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 07:35:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SJ1PR11MB6129D9B5056D11F447C5DEDBB926A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
 <20230626075254.1183894-1-chaitanya.kumar.borah@intel.com>
 <87r0pyv34w.fsf@intel.com>
 <SJ1PR11MB6129D9B5056D11F447C5DEDBB926A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Mon, 26 Jun 2023 17:35:04 +0300
Message-ID: <878rc6uw9z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add forward declaration
 for struct seq_file
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

On Mon, 26 Jun 2023, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> Hello Jani,
>
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Monday, June 26, 2023 5:37 PM
>> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
>> <arun.r.murthy@intel.com>; Borah, Chaitanya Kumar
>> <chaitanya.kumar.borah@intel.com>
>> Subject: Re: [PATCH] drm/i915/display: Add forward declaration for struct
>> seq_file
>> 
>> On Mon, 26 Jun 2023, Chaitanya Kumar Borah
>> <chaitanya.kumar.borah@intel.com> wrote:
>> > With change [1], visibility of struct seq_file is lost in
>> > intel_display_power.h leading to build errors. Add forward
>> > declaration.
>> >
>> > [1] ef104443bffa ("procfs: consolidate arch_report_meminfo
>> > declaration")
>> >
>> > v2: Use forward declaration instead of headerfile inclusion [Jani]
>> >
>> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> 
>> Hey, thanks for the patch, this would've been fine, but looks like Imre just
>> pushed commit f4fab137dd2b ("drm/i915: Add missing forward
>> declarations/includes to display power headers") which adds the forward
>> declaration among other things.
>> 
>> Sorry for the trouble.
>> 
>
> No problem, Thank you for the info.
>
> Sorry for my ignorance but will this patch eventually find its way to
> linux-next or do we need to do something special here?

It'll show up in linux-next once -rc1 is out. But I'm not sure that's
the *question* you want the answer to, really.

BR,
Jani.


>
> Regards
>
> Chaitanya
>
>> BR,
>> Jani.
>> 
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>> >  1 file changed, 1 insertion(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
>> > b/drivers/gpu/drm/i915/display/intel_display_power.h
>> > index be1a87bde0c9..0ba268e566b0 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> > @@ -16,6 +16,7 @@ enum port;
>> >  struct drm_i915_private;
>> >  struct i915_power_well;
>> >  struct intel_encoder;
>> > +struct seq_file;
>> >
>> >  /*
>> >   * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain
>> > instances
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
