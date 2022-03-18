Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB8F4DD741
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 10:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9524D10E7C3;
	Fri, 18 Mar 2022 09:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F39E10E7B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 09:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647596659; x=1679132659;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jYsCJinAwOCRgfIKyx5T4IPEA95lWTttF5XPqyg2HxY=;
 b=ZoSezxE//Vo8BMLX07/BsWxVnnmdh3IDVdqxu3TeQrZICWYap1tvAwdo
 1onV0+N4hl/kcuYqphsx3G2uHut1DSBzS4k0ekATvbE5DBWFq7m7EWAxF
 ls057VHAh0yM0+RhguiF7D7BAevGAPTn6eEpI0O6BksvrXj1xwAcOPapm
 t/kOMMGBUk/3iLQUZSFHnXf1TJ6+7D8nWMRBIFxVag/lvvuMixFtMV16r
 yg2ooO5G84iOLX8yHexUcm3aklshYHvSfqvu0F1xH9qOoSijB0ialfDgy
 MCInFDsTrnarPH6iQ8a2FZ1dTLmw2dLMSSzmANcpx3pPgQrBkpoXjPzQ9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343539233"
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="343539233"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:44:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="558349223"
Received: from dplotkin-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.55.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:44:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YjOzohegmD76YjXR@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
 <20220317171948.10400-3-ville.syrjala@linux.intel.com>
 <87h77wmmg9.fsf@intel.com> <YjOzohegmD76YjXR@intel.com>
Date: Fri, 18 Mar 2022 11:44:04 +0200
Message-ID: <87zglnlhnf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/bios: Make copies of VBT
 data blocks
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 18 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Mar 17, 2022 at 09:02:46PM +0200, Jani Nikula wrote:
>> On Thu, 17 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Make a copy of each VB data block with a guaranteed minimum
>> > size. The extra (if any) will just be left zeroed.
>>=20
>> *VBT
>>=20
>> >
>> > This means we don't have to worry about going out of bounds
>> > when accessing any of the structure members. Otherwise that
>> > could easliy happen if we simply get the version check wrong,
>> > or if the VBT is broken/malicious.
>>=20
>> *easily
>>=20
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> The high level question is if we really want to save the copies until
>> driver remove instead of just during parsing. The lifetime should be
>> mentioned in the commit message, with rationale if you have some.
>
> Sure, I'll amend the commit msg a bit.
>
> I think we at least must move away from the "parse VBT once at
> driver init" idea because that won't ever let us deal with the
> panel_type=3D0xff->check PnP ID thing. I think I even have a few
> real world VBTs in my stash which have panel_type=3D0xff, so it's
> not just some theoretical thing.
>
> So we must hang onto the blocks at least until we've finished the
> output setup. But I'm thinking we can just keep them permanently
> and even start thinking about moving away from the "parse once,
> stash results somewhere" mentality. Ie. we could just parse on
> demand instead.

That pretty much aligns with what my direction has been with the child
devices. So gradually start throwing away stuff from i915->vbt, and
instead have some accessors on the opaque list of bdb block entries. I
guess it's going to be a lot of functions, but at least their names can
be self-documenting and they can handle the VBT version differences
cleanly.

>
>> I was wondering about making the copies up front instead of as needed,
>> but that means setting up a list for the min sizes. It would clean up
>> the usage (avoids passing around any pointers to original data to the
>> parsers). Then you could use just find_section(i915, BDB_XXX). Dunno.
>
> At least if we go for the parse on demand apporach then we definitely
> want to do that. Avoids having to deal with kmalloc() fails/etc. while
> parsing.

Agreed.


BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
