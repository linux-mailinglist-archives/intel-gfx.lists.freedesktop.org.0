Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9687383B7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 14:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5B5710E455;
	Wed, 21 Jun 2023 12:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30FC610E455
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687350412; x=1718886412;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0hWthM/4GBf70R4TAov9GTucEJDsnYDU/OqUeGmzCt8=;
 b=T4laDnOZmUnIjJ8dlj9boymf17PpPUVk4mEF47OtIrgT4btuM+rQ1Xla
 8I74ueIKdulDsPXZDGoLbzHuvanfAHtJEPf9w4gmecWCIWaCmsa4OikgI
 NlBouJQx99fbG+ya2dcbHvPRbJraht9zfCNdSDUa24Ha/64by8nChcvl0
 It3DUw2d2VOvxjpb35H5CcWCuzf5jJQmpGdjzTznwcP+2+HK4ExuSyJcU
 vMuIhYxChG9BvqbvJ9SUWiRFc7E/bzyhq9/sl1Z1uiacbxjLgwlKBxPun
 sRRN7nv4af17bFsqNcUMaNYCr4LoAXCqhBBw/oflE1fmoY65Cuo6ITF1H g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="363573859"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="363573859"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:26:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="779834342"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="779834342"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:26:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Simon Ser <contact@emersion.fr>
In-Reply-To: <jsOhDAQlffGFG9HskNzjr0CpzEbtI7nYIKOYHX50JgeYjM4-GeAeLo4m2qEcvf48WD4hga3N9gGR-CVkisL0izawz1L2w-msofkhYHvQ76k=@emersion.fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620181203.272076-1-contact@emersion.fr>
 <87ilbh2f7y.fsf@intel.com>
 <AE4nqoLosqykHVnfupxM4jHs34gh4RJWeMO2INTKyFn2L0uz3HFk7SYg6_8UyU11PL5eebf7mbX9Vphty0zBhe68mMuwTOtYeHNm1nPlx84=@emersion.fr>
 <87fs6l2exg.fsf@intel.com>
 <jsOhDAQlffGFG9HskNzjr0CpzEbtI7nYIKOYHX50JgeYjM4-GeAeLo4m2qEcvf48WD4hga3N9gGR-CVkisL0izawz1L2w-msofkhYHvQ76k=@emersion.fr>
Date: Wed, 21 Jun 2023 15:26:46 +0300
Message-ID: <87cz1p2e7t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] i915/display/hotplug: use
 drm_kms_helper_connector_hotplug_event()
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 21 Jun 2023, Simon Ser <contact@emersion.fr> wrote:
> On Wednesday, June 21st, 2023 at 14:11, Jani Nikula <jani.nikula@intel.com> wrote:
>
>> On Wed, 21 Jun 2023, Simon Ser contact@emersion.fr wrote:
>> 
>> > On Wednesday, June 21st, 2023 at 14:05, Jani Nikula jani.nikula@intel.com wrote:
>> > 
>> > > > - if (changed)
>> > > > + if (hweight32(changed) == 1)
>> > > > + drm_kms_helper_connector_hotplug_event(first_changed_connector);
>> > > 
>> > > What if more than one connector share the same hpd pin?
>> > 
>> > Ah, I did not believe this could happen. I'll rework the patch to
>> > count the number of changed connectors instead.
>> 
>> A DP++ port is probably the prime example of this, with both DP and HDMI
>> connectors.
>
> Wouldn't that be handled by the separate DP logic though? (The
> drm_dp_mst family of helpers.)

It's not DP MST, though. See intel_ddi_init() initializing both DP and
HDMI. One encoder, one HPD pin, two connectors.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
