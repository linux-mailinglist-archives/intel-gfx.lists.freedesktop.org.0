Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F56C8BFCA7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 13:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789B410EC1C;
	Wed,  8 May 2024 11:48:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k9I5y6+T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 887E810EC1C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 11:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715168885; x=1746704885;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EUWI8ksxoDSmh6qlMf772rG0YlCOEBBmHDGWkTMC5aY=;
 b=k9I5y6+Tn642ytyvC+fzZAPEP5ljX+BYQugOL7A+2gQ/VmfQKQet+P1v
 xJ4QsnBRa3/MnHri6865kJaeRnenZHpWXeiivol0PPLeq0F+Mkw7mY2LU
 R1LXUo6YRA8+m/RcwyW0NIe6QQRTfz3cvsGlwiB4ZcFb9WY9eOoKvEr+S
 UXpFYu/lz+1zzCb1mbOCKfHkHdU0X1mLIrQry857VFyQwurs89gtehV3H
 W0Efamd6WasqujL/8Y2zkAZXNdFf7oY5f2pxkGDzUPdUFG9rwTVrCFF9a
 APk7fQONsCrikwcM4Tebx/tJpC+/N/TZgOW6GWwKa5G4WHNbvRskIMWFQ g==;
X-CSE-ConnectionGUID: ZB4AeTQrSXydb6U5j3fljQ==
X-CSE-MsgGUID: 53JKI/GkQQ+6yNC9qJjtog==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="33528389"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33528389"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 04:48:05 -0700
X-CSE-ConnectionGUID: XnnDgeklTnSpEqO8kamC9Q==
X-CSE-MsgGUID: rHC3ufkRQHOEdZ7h96PYKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33548516"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 04:48:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
In-Reply-To: <IA0PR11MB7307289257C865A660C59A73BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
 <ZjjHl2oHYpm3--zR@intel.com>
 <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZjjLJEyQJDddXcaq@intel.com>
 <IA0PR11MB73076CE4DB3C399F961188E2BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87v83ok4kp.fsf@intel.com>
 <IA0PR11MB7307289257C865A660C59A73BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Wed, 08 May 2024 14:47:58 +0300
Message-ID: <87le4kjzip.fsf@intel.com>
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

On Wed, 08 May 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Wednesday, May 8, 2024 3:29 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; Ville Syrj=C3=A4l=C3=A4
>> <ville.syrjala@linux.intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: RE: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
>>
>> On Wed, 08 May 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> > This is the limitation from the retimer hardware.
>>
>> The commit message needs to reflect this.
>>
>> Do all units have a retimer with the limitation? Or could you have a DG2
>> without the limitation? Do we need to check for that instead of blanket =
removal
>> of UHBR 13.5 for DG2?
>>
> Changed the commit msg as below
>
> Display 12+ hardware supports UHBR13.5

Not true.

> but due to the retimer constraints platform doesn't support UHBR13.5.

Which platform?

> This is the same for mtl and UHBR13.5 is removed as part of the commit ca=
f3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
> This patch removes UHBR13.5 support for icl/dg2.

ICL does not support UHBR 13.5.

BR,
Jani.

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>> BR,
>> Jani.
>>
>>
>> --
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
