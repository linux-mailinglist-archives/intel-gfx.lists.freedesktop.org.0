Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CB65A00AA
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 19:46:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93E5BEEB2;
	Wed, 24 Aug 2022 17:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526462C000
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 08:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660636941; x=1692172941;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3BRHSXw6gsC8A1G+gFhC72BoDjDDpLS855e6ylMvKTg=;
 b=BElZiDDeJNyg4W365R9SIcZ7Asj1E6Ijytd2qU9N3W06Rl1JtxcnK382
 v25DPyFnXon27onMm7rCFXKKtrasHxQozwKYf5dVSIcMM8MnDXkkxTPNY
 08yCY6G/LtvcWlO+Qy2q1NlmYv3NvoWDGHlqDbVxVFj9afSz36kty5Iva
 wHGTAMFCfvOvconz/iYDhE/tsHmFOSICb4UU1VF1yohfl6C53ZDOaTQud
 Ki9mupSZ3pwgvdBSSD9GLFbPXT9cE7UW85uTmnANn5EU0E7iNDSGi1lf1
 c7Nx41EPXF+r1BM5jsQNTyCEh0rYkIkCs9GDXFxHXUAtft/2SKzngGIuo g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="279116554"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="279116554"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 01:02:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="667005158"
Received: from kinzelba-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 01:02:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177D1EA57E1C8F1AE2EE845BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <d7de23e80cb3a3fb488b76a092ad5f6d94d97416.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177A0CB978DD0EA0717418BBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87k07erlj2.fsf@intel.com>
 <DM6PR11MB3177D1EA57E1C8F1AE2EE845BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Tue, 16 Aug 2022 11:02:16 +0300
Message-ID: <87o7wkr4zb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
 display.audio and display.funcs
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

On Tue, 16 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, August 12, 2022 12:33 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
>> Subject: RE: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
>> display.audio and display.funcs
>>
>> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> -----Original Message-----
>> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>> >> Of Jani Nikula
>> >> Sent: Thursday, August 11, 2022 8:37 PM
>> >> To: intel-gfx@lists.freedesktop.org
>> >> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
>> >> <lucas.demarchi@intel.com>
>> >> Subject: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio
>> >> under display.audio and display.funcs
>> >>
>> >> Move display related members under drm_i915_private display sub-
>> struct.
>> >>
>> >> Split audio funcs to display.funcs to follow the same pattern as all
>> >> the other display functions.
>> >>
>> > Audio is a feature as such so wouldn't intel_audio struct stand parallel to
>> intel_display?
>>
>> For i915, audio doesn't exist other than as a display feature. Display is a
>> higher level split here, parallel to gt/gem.
>>
> Will leave it to you, since you have started this huger series containing the cleanup and understand you also have some more cleanup in queue.
> My small suggestion is not to mix audio with display and let this audi reside in i915_priv and let it leave in parallel similar to gt/gem.

No, I'm going to stick with this hierarchy. Audio is part of display
here.

BR,
Jani.



>
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
Jani Nikula, Intel Open Source Graphics Center
