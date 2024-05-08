Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D248BFD13
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 14:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96B010E131;
	Wed,  8 May 2024 12:22:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ReqBEVYU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30E6710E131
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 12:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715170976; x=1746706976;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RCFtItGIBqNzrhjZObIbxBSb9BzUBXr72cwGpR9Ouag=;
 b=ReqBEVYUDIxGAsKcqS50kmmACjTo/Q7DrL8xdl1Xg62dRG9ylUtSde3R
 MeP+jihGHTzyh8Dpi2zO3p1rBDFI3we8jz/2w0SPun6M7mW+94hgmFWQV
 AjzAuePfBD58Mop0WqgtRGKtrm/iE3vfmrV6efqOZfaY5+QvqeDk/pEyJ
 XPqRvPRaLxiQZEFLVk/mJDij1z1j9Jovc1GO3AcRu68vIuHzkI5V+ithe
 EEpPSEAyX7VAPe8eJbC2saG1lrGJKvCgTmM714SXI4l/EQYWzy3vMnTDQ
 reSP8LBlJot/KXoqIUaCZ9PER5WEpUW/q4XqzS++m+efOoqqP7H29U/CV A==;
X-CSE-ConnectionGUID: 1HlLVQSDQjq0TKexD8NjaA==
X-CSE-MsgGUID: htMO03KpQtuhlV6aU8ZWew==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="22179765"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="22179765"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 05:22:56 -0700
X-CSE-ConnectionGUID: VLYd4QlwRQerePIvMnK5vg==
X-CSE-MsgGUID: XpUX8LJ8TZSEI80/QGGIkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33414583"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 05:22:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
In-Reply-To: <IA0PR11MB73072F9C1B1EB8C0E2B4C2B0BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
 <ZjjHl2oHYpm3--zR@intel.com>
 <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZjjLJEyQJDddXcaq@intel.com>
 <IA0PR11MB73076CE4DB3C399F961188E2BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87v83ok4kp.fsf@intel.com>
 <IA0PR11MB7307289257C865A660C59A73BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87le4kjzip.fsf@intel.com>
 <IA0PR11MB73072F9C1B1EB8C0E2B4C2B0BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Wed, 08 May 2024 15:22:50 +0300
Message-ID: <87h6f8jxwl.fsf@intel.com>
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
>> Sent: Wednesday, May 8, 2024 5:18 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; Ville Syrj=C3=A4l=C3=A4
>> <ville.syrjala@linux.intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: RE: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
>>=20
>> On Wed, 08 May 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> -----Original Message-----
>> >> From: Nikula, Jani <jani.nikula@intel.com>
>> >> Sent: Wednesday, May 8, 2024 3:29 PM
>> >> To: Murthy, Arun R <arun.r.murthy@intel.com>; Ville Syrj=C3=A4l=C3=A4
>> >> <ville.syrjala@linux.intel.com>
>> >> Cc: intel-gfx@lists.freedesktop.org
>> >> Subject: RE: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
>> >>
>> >> On Wed, 08 May 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> > This is the limitation from the retimer hardware.
>> >>
>> >> The commit message needs to reflect this.
>> >>
>> >> Do all units have a retimer with the limitation? Or could you have a
>> >> DG2 without the limitation? Do we need to check for that instead of
>> >> blanket removal of UHBR 13.5 for DG2?
>> >>
>> > Changed the commit msg as below
>> >
>> > Display 12+ hardware supports UHBR13.5
>>=20
>> Not true.
>>=20
>> > but due to the retimer constraints platform doesn't support UHBR13.5.
>>=20
>> Which platform?
>>=20
>> > This is the same for mtl and UHBR13.5 is removed as part of the commit
>> > caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5") This patch
>> removes UHBR13.5 support for icl/dg2.
>>=20
>> ICL does not support UHBR 13.5.
>>=20
>
> Per bspec display12+ has uhbr13.5 Due to the retimer constraint none of t=
he Intel platforms supports UHBR13.5
> Uhbr15.3 is already removed for mtl platform as part of commit caf3d748f6=
46 ("drm/i915/dp: Remove support for UHBR13.5") this patch will remove for =
dg2.

Where does display 12+ come from?

We support UHBR starting from DG2 and display version 14+, right?

BR,
Jani.

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>> BR,
>> Jani.
>>=20
>> >
>> > Thanks and Regards,
>> > Arun R Murthy
>> > --------------------
>> >> BR,
>> >> Jani.
>> >>
>> >>
>> >> --
>> >> Jani Nikula, Intel
>>=20
>> --
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
