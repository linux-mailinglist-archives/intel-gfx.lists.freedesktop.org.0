Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D39CA73F649
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 10:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 536C410E29E;
	Tue, 27 Jun 2023 08:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D009F10E2A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 08:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687852844; x=1719388844;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uzJgcsTWdTtBSCwZawD3RFuknsHw2UPRdQZEMdVTXBg=;
 b=G7Jnmj0V207Zmda5OGprBbbbU9TKKSMGkoXJ9xXkanQqYb4FNmB2cLh3
 B7b24ghMgeSt4fLRBrysWTqjotiX/DAZ7nNK0dQphokFrWH6KRAJlKoo+
 9/dqlpTRNK3WOfwR7gLrrJGpTkHY9F08VE3+3Gv59bc0fwpQwp/qu3elP
 10YrY8zTzV7Nz41eGbCu68iSyCzkBVUuOf/BF7MXMC6963MLFerGAmOL/
 JZ/ze06qQUNXAcIRPUTGRpsMJJ42QFz46YqLxy9m6s1ciR3q/z04z87Qw
 Sp1gV+tdYZe4ExZP4LV6Q/9+OI55UhotyuqsF6kmmFpAuTwI5cgWNF0LX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="427505147"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="427505147"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 01:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="716454866"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="716454866"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 01:00:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177476669BDEAA7C0096C80BA27A@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620025243.979317-1-arun.r.murthy@intel.com>
 <871qi5fb19.fsf@intel.com>
 <DM6PR11MB31773E3293F8287557F918BEBA22A@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87h6quv1yq.fsf@intel.com>
 <DM6PR11MB3177476669BDEAA7C0096C80BA27A@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Tue, 27 Jun 2023 11:00:26 +0300
Message-ID: <87ilb9tjvp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Remove support for
 UHBR13.5
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

On Tue, 27 Jun 2023, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Monday, June 26, 2023 6:02 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Deak, Imre <imre.deak@intel.com>; Kahola, Mika
>> <mika.kahola@intel.com>
>> Subject: RE: [PATCH] drm/i915/display/dp: Remove support for UHBR13.5
>>
>> On Thu, 22 Jun 2023, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> -----Original Message-----
>> >> From: Nikula, Jani <jani.nikula@intel.com>
>> >> Sent: Wednesday, June 21, 2023 2:27 PM
>> >> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> >> gfx@lists.freedesktop.org
>> >> Cc: Deak, Imre <imre.deak@intel.com>; Kahola, Mika
>> >> <mika.kahola@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
>> >> Subject: Re: [PATCH] drm/i915/display/dp: Remove support for UHBR13.5
>> >>
>> >> On Tue, 20 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> >> > As per the DP2.1 Spec support for UHBR13.5 is optional. Hence
>> >> > removing the support for UHBR13.5
>> >>
>> >> That's just not a proper rationale. Please explain.
>> >>
>> > Programming for UHBR10 and UHBR20 is similar compared to UHBR13.5 As
>> > of now we have validated 10Gbps and 20Gbps. The spec also points out
>> > when 20Gbps is supported 13.5Gbps is optional so we have not
>> validated/implemented the UHBR13.5 Now we have the DP2.1 compatible
>> panel is market, expecting users can come up with UHBR13.5 not working.
>> Hence removing the support for 13.5Gbps for now.
>> > Maybe once we have support for UHBR13.5 in the driver we can enable
>> this.
>>
>> What's missing?
>>
> Port clock programming, pll values differs.
> This table has been in place but some corrections/recheck required.

Can we do that instead please?

I accidentally stumbled on the relevant gitlab issue [1] (please add
this kind of information up front in the future), so we have a reporter
that could test the fixes.

BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/-/issues/8686

>
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
Jani Nikula, Intel Open Source Graphics Center
