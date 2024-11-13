Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3BC9C6A8A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 09:26:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828B510E690;
	Wed, 13 Nov 2024 08:26:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CoTENNe4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB56810E690;
 Wed, 13 Nov 2024 08:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731486390; x=1763022390;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RCBV1RaljYFw8cox1N1ivVFZCuywd4JudOEDZns++BA=;
 b=CoTENNe4jVgRhkAgno7NS7ECl8U7BQT8tmtjvf3rhff5NoKsSN0qE/4v
 0DfFNHxOfJyZhFfHVvAQnHv1XUwAG1cyELwS+AYyUrVJmY5dVnjX5a16S
 NRM/x2RoWLMA5UTqDwWvAsHtUvs/OSYKw2pjn+z+mYjGLocKoO0j2xWbq
 6KMbhvWQvyVmNTJACA7g+/Wp78bD/RC27pWKVrqk2H2VtYU1XEGli1q2G
 YXuhYECUeQVoLXPoBx+pk47zjDtIzko/pPm1Svb7xOpSiXw/ihr3egIhQ
 qYtetDRGSf29XU+FhoMa+kzgd4QDtzx6/I7o6DkOf9nycTq+PrYchBI+x A==;
X-CSE-ConnectionGUID: QiSXigSwRRKPpPJoYMvoJw==
X-CSE-MsgGUID: Ys9XfCZnREi8FBctAM7Y3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="42771490"
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="42771490"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 00:26:30 -0800
X-CSE-ConnectionGUID: 6esy0KUhSi+zfnWNy0uZHw==
X-CSE-MsgGUID: fAI3VnbkTqKBTTZqANfHKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="87957256"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.186])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 00:26:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915/overlay: convert to struct intel_display
In-Reply-To: <ZzO9VpGn696jbsMA@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731347547.git.jani.nikula@intel.com>
 <873690f374729d7479e2d7f6adeefddf90f53fc0.1731347547.git.jani.nikula@intel.com>
 <ZzO9VpGn696jbsMA@intel.com>
Date: Wed, 13 Nov 2024 10:26:24 +0200
Message-ID: <87servbkun.fsf@intel.com>
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

On Tue, 12 Nov 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Nov 11, 2024 at 07:53:30PM +0200, Jani Nikula wrote:
>> @@ -1418,7 +1422,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
>>  	i915_active_init(&overlay->last_flip,
>>  			 NULL, intel_overlay_last_flip_retire, 0);
>>  
>> -	ret = get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(dev_priv));
>> +	ret = get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(display));
>
> I thought that you were converting the macros separately...
> but if this is working, no hard feelings

I only converted the ones that actually needed dev_priv, and couldn't
use generics. They now accept display only. This one uses generics and
can take either.

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks,
Jani.


-- 
Jani Nikula, Intel
