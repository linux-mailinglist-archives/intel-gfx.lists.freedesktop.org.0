Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4547348779A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 13:29:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002EB11A367;
	Fri,  7 Jan 2022 12:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D38D11A367
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 12:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641558542; x=1673094542;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=83lKCNPo3Q7AhNnrjmFCPzsw7s6ST89B2BqB36TBklk=;
 b=MPodd+SBaeIwLjMtw7t6l1ctqbjdZfhssYDrQVu8bCuj/352teHc9GZg
 LzL88sUyZf9hQyQTEEjbLoakWO0yPMTaDTKPAmCCw7Tioy/+WG9EI+UG7
 oIi8yvIV+perbvibEq9xZ6bx8apfFpqva6TenN40fEDt+VwJq/KBFLy+1
 X2Ci/FdLXp2RmgJXGSCdXG0k0VP6YmbbWFUg0iL0lp9pTHoC9D+Yf3Ai6
 RKgaHSNPNsnilCvrpwY8963CHht/jPzeMSnd+1eJrFyTGnCTNQ8kyKuyB
 12TMgHkcF/NN4tBTIINc9i8V33jyuI6SgSwkhuRIiKeSeqby5YL0NHk+G w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="242653691"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="242653691"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 04:29:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="621882352"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 04:29:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <BN6PR11MB1348DE54A4723E55CFCBF012E34C9@BN6PR11MB1348.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217071356.12517-1-suraj.kandpal@intel.com>
 <20211217071356.12517-2-suraj.kandpal@intel.com>
 <87czlv35o0.fsf@intel.com>
 <BN6PR11MB1348DE54A4723E55CFCBF012E34C9@BN6PR11MB1348.namprd11.prod.outlook.com>
Date: Fri, 07 Jan 2022 14:28:55 +0200
Message-ID: <87v8yvlofs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/4] drm: add writeback pointers to
 drm_connector
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
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 06 Jan 2022, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> > Adding drm_connector and drm_encoder pointers in
>> > drm_writeback_connector
>> 
>> Why?
>
> The elements of struct drm_writeback_connector are 
> struct drm_writeback_connector {
> 	Struct drm_connector base;
> 	Struct drm_encoder encoder;
>
> Similarly the elements of intel_encoder and intel_connector are
>  struct intel_encoder {
> 	Struct drm_encoder base;
>
> Struct intel_connector {
> 	Struct drm_connector base;
>
> The function drm_writeback_connector_init() will initialize the drm_connector and drm_encoder and attach them as well.
> Since the drm_connector/encoder are both struct in drm_writeback_connector and intel_connector/encoder, one of them should be a pointer, else both will be pointing to 2 separate instances.
>
> Usually the struct defined in drm framework pointing to any struct will be pointer and allocating them and initialization will be done with the users.
> Like struct drm_connector and drm_encoder are part of drm framework and the users of these such as i915 have included them in their struct intel_connector and intel_encoder. 
> Likewise struct drm_writeback_connector is a special connector and hence is not a user of drm_connector and hence this should be pointers.

Okay, I can see the problem, but the solution you present breaks at
least komeda, mali, rcard-du, vc4, and vkms drivers. Either you need to
change all of them, or figure out another way. I don't know off the top
of my head what the correct answer should be, but you can't break other
drivers. Again, maybe you'll get better ideas with a bigger audience
than just intel-gfx.


BR,
Jani.



>> 
>> We can all read the code, the commit message should mostly be about the
>> *why*.
>> 
>> Also, drm changes should Cc: dri-devel mailing list.
> Sure we will add this in Cc in the next series of patches
>
> Thanks,
> Suraj Kandpal

-- 
Jani Nikula, Intel Open Source Graphics Center
