Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AA4BB44A1
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 17:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D256010E1BE;
	Thu,  2 Oct 2025 15:18:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SlAc0D+Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292CA10E1BE;
 Thu,  2 Oct 2025 15:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759418291; x=1790954291;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DbaozsxIjql0CxxO4wMRFstdiXwRmod8SKY1ak1A5GA=;
 b=SlAc0D+QdmFPoOuHCMTUz5CiY4Kbkl306QYeZ6SO80gvGjwKkls3bwMC
 ynLi/1rAZ3hxRjKdiANgSdLpUPyqF3Nja8US70g+Jo4+PG/JD0EbneXPu
 iCmCl9vwye4neHUCUtVL9mB1dou/VOG1aeQAMaVM7uvniMIJwRl0F8Zva
 9pIRYBXhO2Uc3iyiQheAwtJ2FK7+eGMaqJTaURfUFm4cMhL4+ZkkMMSj7
 /A4LKJDOSGKcWrKvEopYd/BCERcUtYy078GlMRV4q4iQmM4I8tRlDy/jl
 pwu4YJYT9ahfMSmWG3seDcIhMQBgA9464Nydh3eEGnurMmrufsft3Y/1f w==;
X-CSE-ConnectionGUID: JgDBZjoRRoqSD05ZhSE4fQ==
X-CSE-MsgGUID: YbtWK9hTRqO0MOQgZaTjRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="61415159"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="61415159"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 08:18:10 -0700
X-CSE-ConnectionGUID: krmpxM/fSjS3NyybhgWwCA==
X-CSE-MsgGUID: 21amvKyPQnSEfv7PAHTCOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="210028302"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.12])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 08:18:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Jocelyn
 Falempe <jfalempe@redhat.com>, Maarten Lankhorst <dev@lankhorst.se>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/panic: fix panic structure allocation memory leak
In-Reply-To: <3198b351-b780-e068-e8b3-39608ebc597b@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251002101756.2700320-1-jani.nikula@intel.com>
 <3198b351-b780-e068-e8b3-39608ebc597b@intel.com>
Date: Thu, 02 Oct 2025 18:18:03 +0300
Message-ID: <371d6debcc6b1977711481d32dd2527cc8c03b16@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 02 Oct 2025, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> On Thu, 2 Oct 2025, Jani Nikula wrote:
>> Separating the panic allocation from framebuffer allocation in commit
>> 729c5f7ffa83 ("drm/{i915,xe}/panic: move framebuffer allocation where it
>> belongs") failed to deallocate the panic structure anywhere.
>>
>> The fix is two-fold. First, free the panic structure in
>> intel_user_framebuffer_destroy() in the general case. Second, move the
>> panic allocation later to intel_framebuffer_init() to not leak the panic
>> structure in error paths (if any, now or later) between
>> intel_framebuffer_alloc() and intel_framebuffer_init().
>>
>> Fixes: 729c5f7ffa83 ("drm/{i915,xe}/panic: move framebuffer allocation w=
here it belongs")
>> Cc: Jocelyn Falempe <jfalempe@redhat.com>
>> Cc: Maarten Lankhorst <dev@lankhorst.se>
>> Reported-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Have run a bunch of tests on affected platform, which previously caused
> the issue to surface. With the patch applied no memleaks are reported.
>
> Tested-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>

Thanks for confirming!

Looks like we'll need to merge [1] first, or the stable backport of that
is going to be a nightmare.

BR,
Jani.


[1] https://lore.kernel.org/r/20251002115434.6486-2-ville.syrjala@linux.int=
el.com



--=20
Jani Nikula, Intel
