Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEA2590C33
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 08:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A78933F8;
	Fri, 12 Aug 2022 06:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C5998DC5F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 06:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660287499; x=1691823499;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7yomwgnJ7R04Iax1VN2/cSu77oo8rRWOF8yjF/Y8/Jc=;
 b=MBxIx+Z7Ai7yPINZH0kr3K7LFevJyW+swzXd7Q35MFeiViBpW0QX17bT
 sCjFGuw+r/8rjZcfbth3nbR3dddq8Sy6K00dnZbUKEHj6ElbNAzs8bawt
 lkuSCVQTzrP1h0ELa5ePsqaRxIKQlpaGhKZTL0E8crec/mqGtTUYCmz50
 /ICr5fLudLVmLjoPAcIkLEP0C9V4i0yFkNGlhd2IOECro60NIo59MLL6D
 9kyEw1iDvFBsJ5HyQQoVUwAdAG+dkznE5BT0f/pPZXqP5B0fCa85h7tE5
 vacDsuVIEwzvbJyLqx7/Se+VAiMysRifT2xswharQvups+V46A5sZFsBc Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="271921359"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="271921359"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:58:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="634541772"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.37.174])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:58:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB31774748A084ACF353F837E0BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <b4e59508841a110f16d76a8da08ad94fdfd3a4b4.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB31774748A084ACF353F837E0BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Fri, 12 Aug 2022 09:58:12 +0300
Message-ID: <87pmh6rlrv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps members
 under display.pps
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Thursday, August 11, 2022 8:37 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
>> <lucas.demarchi@intel.com>
>> Subject: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps members
>> under display.pps
>>
>> Move display related members under drm_i915_private display sub-struct.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_core.h |  7 +++
>>  drivers/gpu/drm/i915/display/intel_pps.c      | 48 +++++++++----------
>>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
>>  drivers/gpu/drm/i915/i915_drv.h               |  5 --
>>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
>>  5 files changed, 33 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index fe19d4f9a9ab..030ced4068bb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -101,6 +101,13 @@ struct intel_display {
>>
>>               wait_queue_head_t wait_queue;
>>       } gmbus;
>> +
>> +     struct {
>> +             u32 mmio_base;
>> +
>> +             /* protects panel power sequencer state */
>> +             struct mutex mutex;
>> +     } pps;
>>  };
> Again can this power related to be moved under a substruct intel_pm ?

The pps is pretty well separated from rest of pm, so feels wrong to
shove it together with pm. And again, intel_pm makes me think intel_pm.c
which is not purely display, and needs to be reorganized.

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
