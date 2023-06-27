Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E303373F8FA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 11:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 755E310E1B7;
	Tue, 27 Jun 2023 09:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB0810E1B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 09:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687859250; x=1719395250;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KbXve1fuu2HChoKY35w9filbsS+bI8bu23tDWWcvb4I=;
 b=GZfQ33clbIJU8IP82iyuYItmgaPiAV9tSejAJt4WJ+AhiKxQEmxA5eTQ
 ZD/YjV87/E7FvzEGZa+/KQ6Qgqm2YB2J833q2rUcOAGC7OiXVaIethXre
 QG1bP1pbBhK/PgB7y72eP+OtTOqfo3nkgWQAucai3VTWv12SQzsXZb0nE
 ZOhKDpTbm2DdiBS+YlkcSnQnkPExXnFFDGs9Mjv8oMvW9IQmUkxnouQlO
 PnUngZGUl+25GWwpLqe/uMLr9nMHsJS4kQxhLNZKM0K827NXnCmFEwuGv
 6Z9A7qvUNsdB2OV76ecXMWIssdt+G+j5Yk3gEFn0CGCXtWAA+7jpcvj2r g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="361567560"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="361567560"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:47:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="829597214"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="829597214"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:47:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SJ1PR11MB612959F0FB18371AAB0C5BEFB927A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
 <20230626075254.1183894-1-chaitanya.kumar.borah@intel.com>
 <87r0pyv34w.fsf@intel.com>
 <SJ1PR11MB6129D9B5056D11F447C5DEDBB926A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <878rc6uw9z.fsf@intel.com>
 <SJ1PR11MB612959F0FB18371AAB0C5BEFB927A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Tue, 27 Jun 2023 12:47:11 +0300
Message-ID: <878rc5texs.fsf@intel.com>
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

On Tue, 27 Jun 2023, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> Hello Jani,
>
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Monday, June 26, 2023 8:05 PM
>> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
>> <arun.r.murthy@intel.com>
>> Subject: RE: [PATCH] drm/i915/display: Add forward declaration for struct
>> seq_file
>> 
>> On Mon, 26 Jun 2023, "Borah, Chaitanya Kumar"
>> <chaitanya.kumar.borah@intel.com> wrote:
>> > Hello Jani,
>> >
>> >> -----Original Message-----
>> >> From: Jani Nikula <jani.nikula@linux.intel.com>
>> >> Sent: Monday, June 26, 2023 5:37 PM
>> >> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
>> >> gfx@lists.freedesktop.org
>> >> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
>> >> <arun.r.murthy@intel.com>; Borah, Chaitanya Kumar
>> >> <chaitanya.kumar.borah@intel.com>
>> >> Subject: Re: [PATCH] drm/i915/display: Add forward declaration for
>> >> struct seq_file
>> >>
>> >> On Mon, 26 Jun 2023, Chaitanya Kumar Borah
>> >> <chaitanya.kumar.borah@intel.com> wrote:
>> >> > With change [1], visibility of struct seq_file is lost in
>> >> > intel_display_power.h leading to build errors. Add forward
>> >> > declaration.
>> >> >
>> >> > [1] ef104443bffa ("procfs: consolidate arch_report_meminfo
>> >> > declaration")
>> >> >
>> >> > v2: Use forward declaration instead of headerfile inclusion [Jani]
>> >> >
>> >> > Signed-off-by: Chaitanya Kumar Borah
>> >> > <chaitanya.kumar.borah@intel.com>
>> >>
>> >> Hey, thanks for the patch, this would've been fine, but looks like
>> >> Imre just pushed commit f4fab137dd2b ("drm/i915: Add missing forward
>> >> declarations/includes to display power headers") which adds the
>> >> forward declaration among other things.
>> >>
>> >> Sorry for the trouble.
>> >>
>> >
>> > No problem, Thank you for the info.
>> >
>> > Sorry for my ignorance but will this patch eventually find its way to
>> > linux-next or do we need to do something special here?
>> 
>> It'll show up in linux-next once -rc1 is out. But I'm not sure that's the
>> *question* you want the answer to, really.
>> 
>
> If I understand correctly, the patch will get merged with linux-next
> along with the release of 6.4-rc1.
>
> The pertinent question is when will linux-next builds be fixed?
> We are missing out on regression tracking because of the build failures.

I've asked Tvrtko to pick this up to drm-intel-next-fixes, which should
show up in linux-next when it's next generated (it's daily).

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
>> 
>> >
>> > Regards
>> >
>> > Chaitanya
>> >
>> >> BR,
>> >> Jani.
>> >>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>> >> >  1 file changed, 1 insertion(+)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
>> >> > b/drivers/gpu/drm/i915/display/intel_display_power.h
>> >> > index be1a87bde0c9..0ba268e566b0 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> >> > @@ -16,6 +16,7 @@ enum port;
>> >> >  struct drm_i915_private;
>> >> >  struct i915_power_well;
>> >> >  struct intel_encoder;
>> >> > +struct seq_file;
>> >> >
>> >> >  /*
>> >> >   * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain
>> >> > instances
>> >>
>> >> --
>> >> Jani Nikula, Intel Open Source Graphics Center
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
