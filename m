Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C31D9BFF7BE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85EAB10E88A;
	Thu, 23 Oct 2025 07:18:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vl5niOHB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D45B10E88A;
 Thu, 23 Oct 2025 07:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761203920; x=1792739920;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Zqaxi87XTawenfrYJx6xvAuANx+DTtiaMdzHouKrP4Y=;
 b=Vl5niOHBc/NVowUt6NdLM5uWdApHMR7bARBNEtgsjkh0Sl9/Orj9ov7a
 kzhjBnB0Mw+7wFEdqrsqi0cdQlVMxo37L/I2n0bH4rIBHPWVGEiZCG7qt
 VIQHTKSqXyIkybk/YieUD4EhDUqPYwINpdDEgCUrf8uZ77I5GEvYfoo54
 VkE96H2BIDYalqhdzXEqeySBzgOxnfOkxwBOpWMg8UDikVWxpFiGaYD4f
 PPzvBJxbf9hTXrs69gb/jeq8U1wEKI67rgnRZgtIrHMYRKZbphOwQf7Jf
 YFSidXShqxoJedl+Z+sIN7mQjGzUdh/f+v+aNtApa0rv+ztg82l8fEZpp w==;
X-CSE-ConnectionGUID: wG02SHBrTICtAJTg08vQfQ==
X-CSE-MsgGUID: 6PgE9E7JSqGvkPBz9ZI/Hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="50943911"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="50943911"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:18:39 -0700
X-CSE-ConnectionGUID: 69fNw38IS0yvZI9MCgNRUA==
X-CSE-MsgGUID: T6YL2uNwQsesLqT0OLxHpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="184857411"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:18:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/6] drm/{i915,xe}/display: pass parent interface to
 display probe
In-Reply-To: <cfea7985302e14e381118d11ff6c11d361d205e0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022085548.876150-1-jouni.hogander@intel.com>
 <20251022085548.876150-2-jouni.hogander@intel.com>
 <cfea7985302e14e381118d11ff6c11d361d205e0@intel.com>
Date: Thu, 23 Oct 2025 10:18:34 +0300
Message-ID: <b24fb3c6e05aea7eb5254777ae69eb5e873fe273@intel.com>
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

On Wed, 22 Oct 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 22 Oct 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers=
/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> index 7c657ea98a441..3e79a74ff7def 100644
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> @@ -12,7 +12,6 @@
>>=20=20
>>  #include <drm/drm_drv.h>
>>=20=20
>> -#include "xe_device.h" /* for xe_device_has_flat_ccs() */
>>  #include "xe_device_types.h"
>>=20=20
>
> This hunk doesn't belong here, it's my rebase fail.

I sent this separately as [1].

BR,
Jani.


[1] https://lore.kernel.org/r/20251022121450.452649-2-jani.nikula@intel.com


--=20
Jani Nikula, Intel
