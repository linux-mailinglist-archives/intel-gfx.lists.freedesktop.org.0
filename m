Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CF984CBAA
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 14:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3AC110E749;
	Wed,  7 Feb 2024 13:35:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQdu5pnq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C5B10E749
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 13:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707312959; x=1738848959;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/ccbhvQ4GC+RIE+K+c3gsvN+o/lIl323mNlKNYRaMNc=;
 b=XQdu5pnqAAEVx9OBXhoTjQLe3zwuTCt8/e4TA8ifHNRjjJj8bww+zQkE
 raiF33KnbaFveIfmEhouEnug5+zarGdKa5MtPWSGv7x4UWkEBkDGFrEu1
 Z/phBe+q4bOMWag5pEK4BApChZP/KAQCA5MnskRKYkPpoGTniQQAIGCxZ
 z79TauvRSgDkzJo+4HlT2JuIOzsPKQLxKg/WSCvVXIn46exvZ5FjBKxIt
 yE2bg8JNIc8ceT8TnooafCKtpfuhnS46PRZL0ONyxam09br8Wd73pUEjK
 a5MwP5rpHSTRH96GgUVug1PyOHo3z+NVinJ2Ny6XdHQnperU/EhEj2Tc+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="12345402"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="12345402"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 05:35:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="5946169"
Received: from andreial-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.47])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 05:35:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rae Moar <rmoar@google.com>, David Gow <davidgow@google.com>
Cc: Shuah Khan <skhan@linuxfoundation.org>, Matti Vaittinen
 <mazziesaccount@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>,
 Maxime Ripard <mripard@kernel.org>, linux-kselftest@vger.kernel.org,
 kunit-dev@googlegroups.com, linux-kernel@vger.kernel.org, Chaitanya Kumar
 <chaitanya.kumar.borah@intel.com>, Jani <jani.saarinen@intel.com>, Richard
 Fitzgerald <rf@opensource.cirrus.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] kunit: device: Unregister the kunit_bus on shutdown
In-Reply-To: <CA+GJov6Swgvc+wrCvW3Ujqh_UW1BSRDrp9ccHUX2CVRjWpe1dQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240201060437.861155-2-davidgow@google.com>
 <CA+GJov6Swgvc+wrCvW3Ujqh_UW1BSRDrp9ccHUX2CVRjWpe1dQ@mail.gmail.com>
Date: Wed, 07 Feb 2024 15:35:49 +0200
Message-ID: <878r3wcs7e.fsf@intel.com>
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

On Fri, 02 Feb 2024, Rae Moar <rmoar@google.com> wrote:
> On Thu, Feb 1, 2024 at 1:06=E2=80=AFAM David Gow <davidgow@google.com> wr=
ote:
>>
>> If KUnit is built as a module, and it's unloaded, the kunit_bus is not
>> unregistered. This causes an error if it's then re-loaded later, as we
>> try to re-register the bus.
>>
>> Unregister the bus and root_device on shutdown, if it looks valid.
>>
>> In addition, be more specific about the value of kunit_bus_device. It
>> is:
>> - a valid struct device* if the kunit_bus initialised correctly.
>> - an ERR_PTR if it failed to initialise.
>> - NULL before initialisation and after shutdown.
>>
>> Fixes: d03c720e03bd ("kunit: Add APIs for managing devices")
>> Signed-off-by: David Gow <davidgow@google.com>
>
> Hello,
>
> I have tested this with modules and it looks good to me!
>
> Thanks!
> -Rae
>
> Reviewed-by: Rae Moar <rmoar@google.com>

Thanks for the patch and review!

Is this on its way to some v6.8-rc's? The regression in -rc1 is hurting
our CI.


Thanks,
Jani.


--=20
Jani Nikula, Intel
