Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A60E5854C1E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 16:02:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697D610E262;
	Wed, 14 Feb 2024 15:02:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LCRKWG+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50F8610E262
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 15:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707922970; x=1739458970;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=94NVNAeN6QCNLkkhKBcAJ2GyFdt8Y29Rhtftok8oNm8=;
 b=LCRKWG+wO9HbZ23oeF9MP67p8TPp/7FCAjEQRPdpolPcnNGGU6W2jymm
 oJsVak4mE//jqv/x67ARc9xqSJEd0JdnmRaFo2xyv3vHYRdbaQayOtSAF
 kOFgV6COB/qfWfK2uNqLWKuUllB/N9KZPXqgNRBMwnFc1LrjFvFowYy3y
 kVU/XYHZgOaCJzHZ0LK/UqUIbEnKPgw2yVkuYIos2yF/WYcXsh2h/5rXH
 0x8nRf6Xfa3Ip4tub4DfPCDSWal1DjpQRmCe01yLEotBLnAK64fOM0oX0
 ugDZFjfJp4HRecrFfYMwTkUiMXAeJCxJExH0YeTuSoqh3eopBH2X4xkUo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1839085"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="1839085"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 07:02:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3559447"
Received: from kwszolek-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.190])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 07:02:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Deak, Imre" <imre.deak@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
In-Reply-To: <IA0PR11MB730746959160978F412BAC19BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-2-arun.r.murthy@intel.com>
 <871q9g8cac.fsf@intel.com>
 <IA0PR11MB7307A5B0207F5C72F5D5DCC4BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87le7n70ht.fsf@intel.com>
 <IA0PR11MB730746959160978F412BAC19BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Wed, 14 Feb 2024 17:02:41 +0200
Message-ID: <874jeb6qcu.fsf@intel.com>
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

On Wed, 14 Feb 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> And with the current code, DP_CAP_ANSI_128B132B does not decide
>> >> whether we use DP MST or not. So this will also cover 8b/10b fallback
>> >> for displays that support 128b/132b but have DP_MSTM_CAP == 0.
>> >
>> > Yes, the series doent depend on MST and SST and doest fallback from MST to
>> SST or viceversa.
>>
>> What I'm saying is, this changes the way 8b/10b link training fallback is
>> handled.
>>
> The first loop has a if condition for 128/132b and is executed only if its 128/132b and if not falls to the existing code. i.e 8/10b link training fallback sequence.

You check for sink 128b/132b capability. Please take the time to
consider what this means. I've tried to explain this a few times now.

>> First, it starts handling 8b/10b MST link training fallback.
>>
> As far as I see, at the entry of this function 128/132b is checked and link training fallback values for this obtained and if not link training fallback values for 8/10b is obtained. Have taken care as to not modify the existing 8/10b fallback.

Same as above.

>> Second, it changes the way 8b/10b *and* 128b/132b *and* SST *and* MST link
>> training fallback is handled for all displays that support 128b/132b channel
>> coding.
>>
> MST/SST configuration and then the link training happens. This link training by writing to dpcd registers is done over here by sending certain patterns. The fallback in this RFC is done only in this small link training sequence. On failure the handler doesn't return back instead retry from starting of link training is done. MST/SST configuration is not touched upon, if any required for this as part of fallback can be taken up in the next step.
> This RFC is aiming to achieve fallback for the link training sequence only.

To be clear, I don't want to change the way link training failure
fallback is handled in general. It should go via userspace. Please let's
just not go there, at all. Changing it does not help us right now, it
just adds another complication, and another code path to test.

But regardless of that, I don't think you rightly appreciate what
implications your changes actually have. The code does not do what you
claim it does. I don't know what else to say.

>> >> intel_dp_set_link_params() is supposed to be called in the DP encoder
>> >> (pre- )enable paths to set the link rates. If you do it here, the
>> >> subsequent enable will just overwrite whatever you did here.
>> > This is taken care of so as to not override and retain this fallback value.
>>
>> I don't understand.
>>
> With the existing code the driver sends uevent and a new modeset along with dp_init is done and the values will be overwritten. In this RFC we don't send uevent for all the fallback values instead re-iterate only the link training part without touching the dp enable sequence.

I any patch series, no matter what you're working on, each patch in the
series must stand on its own merits. Patches can't depend on something
that may or may not be done later in subsequent patches.

BR,
Jani.

-- 
Jani Nikula, Intel
