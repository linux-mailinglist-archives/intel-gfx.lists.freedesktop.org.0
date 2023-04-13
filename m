Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 234EB6E0A8D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 11:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C6B910EAA2;
	Thu, 13 Apr 2023 09:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4E510EAA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 09:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681379409; x=1712915409;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=I1ShU3Gmqej3wMEDy6P/nzFolKHEXtzVUtxhigfNXC8=;
 b=YqV42Gq36j+CMiNDTC0L0AbBxjiORFVH4IdeGIZiMR+emi+Txh/FnL/d
 Ab8UPl4BMS0yQHL5QPE7xHsNwuIOIh94r55C16JWcTGP7MeNj/PU695hq
 2e4V5sIqgzpKP3jKLKIdyLq8ipQMU3pQAkyPfHBgLVP/p4iWePEAF3jit
 eSJszKDZEnA2yHPVffu9AXW5a6BdTsqXMyIAmjKjB2CV8yxhSgldgWY1A
 5iAWdPMUTDVAVd3FIddCa5D3VxL4GPe5T3KcvbaMp0CtjbbBUbmhB+hNG
 psf0Fer6qf/vEyootScHcFPuU72oaPh+HT219ZkqGTgrjmXB/X84STttV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="328255169"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="328255169"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:50:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="719780015"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="719780015"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:50:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Mika Kahola
 <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87ile1cjh8.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230403085043.2219092-1-mika.kahola@intel.com>
 <168125326577.3326.16288863179121640086@gjsousa-mobl2>
 <87o7ntcum5.fsf@intel.com>
 <168130241568.5121.2708879208728811060@gjsousa-mobl2>
 <87ile1cjh8.fsf@intel.com>
Date: Thu, 13 Apr 2023 12:50:04 +0300
Message-ID: <87pm88az77.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for PM DEMAND
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Apr 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 12 Apr 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2023-04-12 06:33:54)
>>> On Tue, 11 Apr 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> > Quoting Mika Kahola (2023-04-03 05:50:43)
>>> >> @@ -8250,6 +8259,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
>>> >>         intel_color_init_hooks(dev_priv);
>>> >>         intel_init_cdclk_hooks(dev_priv);
>>> >>         intel_audio_hooks_init(dev_priv);
>>> >> +  intel_init_pmdemand(dev_priv);
>>> >
>>> > I think intel_init_display_hooks() is meant to call functions setting up
>>> > function pointers, right? That would not be the case for intel_init_pmdemand().
>>> >
>>> > I think we could rename intel_init_pmdemand() to
>>> > intel_pmdemand_init_early() and call it inside i915_driver_early_probe().
>>> 
>>> Please let's not add new direct calls to display from top level driver
>>> code. See also [1].
>>
>> Okay. What would be the suggested place to do this SW-only initialization?
>>
>> Should we just merge the two init functions into one named intel_pmdemand_init()
>> and call the new function under intel_modeset_init_noirq()?
>
> Or add a new function intel_display_early_probe() or somesuch, which
> will call the early pmdemand init as well as intel_init_display_hooks()
> that is currently called from i915_driver_early_probe().
>
> Bottom line, there should only be one high level call from
> i915_driver_early_probe().
>
> There are similar needs for other things [1].
>
> BR,
> Jani.
>
>
> [1] https://lore.kernel.org/r/20230411195918.hdxyir5w7dp2qx55@ldmartin-desk2.lan

All of this is cleaned up in
https://patchwork.freedesktop.org/series/116431/

BR,
Jani.


>
>
>>
>> --
>> Gustavo Sousa

-- 
Jani Nikula, Intel Open Source Graphics Center
