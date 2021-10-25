Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF064391EC
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 11:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2037389BFB;
	Mon, 25 Oct 2021 09:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA42889BFB
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Oct 2021 09:04:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10147"; a="229545809"
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="229545809"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 02:04:31 -0700
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="496710494"
Received: from atmozipo-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.43.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 02:04:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: "Souza\, Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sripada\, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "joonas.lahtinen\@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Vivi\,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "ville.syrjala\@linux.intel.com" <ville.syrjala@linux.intel.com>, "Atwood\,
 Matthew S" <matthew.s.atwood@intel.com>,
 "daniel.vetter\@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "tvrtko.ursulin\@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20211022201529.w56cpg67bxupfbyh@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211020002353.193893-1-jose.souza@intel.com>
 <87tuhcni3k.fsf@intel.com>
 <74cc5b4a8ebe2a5f7ae01994c6782124328a2e0e.camel@intel.com>
 <87zgr2ldz5.fsf@intel.com> <20211022201529.w56cpg67bxupfbyh@ldmartin-desk2>
Date: Mon, 25 Oct 2021 12:04:24 +0300
Message-ID: <874k95lbl3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Add struct to hold IP version
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

On Fri, 22 Oct 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Oct 21, 2021 at 04:11:26PM +0300, Jani Nikula wrote:
>>On Wed, 20 Oct 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
>>> On Wed, 2021-10-20 at 12:47 +0300, Jani Nikula wrote:
>>>> On Tue, 19 Oct 2021, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>=
 wrote:
>>>> > The constant platform display version is not using this new struct b=
ut
>>>> > the runtime variant will definitely use it.
>>>>
>>>> Cc: Some more folks to hijack this thread. Sorry! ;)
>>>>
>>>> We added runtime info to i915, because we had this idea and goal of
>>>> turning the device info to a truly const pointer to the info structures
>>>> in i915_pci.c that are stored in rodata. The idea was that we'll have a
>>>> complete split of mutable and immutable device data, with all the
>>>> mutable data in runtime info.
>>>>
>>>> Alas, we never got there. More and more data that was mostly const but
>>>> sometimes needed tweaking kept piling up. mkwrite_device_info() was
>>>> supposed to be a clue not to modify device info runtime, but instead it
>>>> proliferated. Now we have places like intel_fbc_init() disabling FBC
>>>> through that. But most importantly, we have fusing that considerably
>>>> changes the device info, and the copying all of that data over to
>>>> runtime info probably isn't worth it.
>>>>
>>>> Should we just acknowledge that the runtime info is useless, and move
>>>> some of that data to intel_device_info and some of it elsewhere in i91=
5?
>>>
>>> With newer platforms getting more and more modular, I believe we will
>>> need to store even more mutable platform information.
>>>
>>> In my opinion a separation of immutable and mutable platform
>>> information is cleaner and easier to maintain.
>>
>>Yeah, that's kind of what the original point was with device and runtime
>>info split. It's just that a lot of the supposedly immutable platform
>>info has turned into mutable information.
>>
>>I think either we need to properly follow through with that idea, and
>>only store a const struct intel_device_info * to the rodata in
>>i915_pci.c, or just scrap it. None of this "almost immutable" business
>>that we currently have. "Almost immutable" means "mutable".
>>
>>The main problem is that we'll still want to have the initial values in
>>static data. One idea is something like this:
>>
>>struct intel_device_info {
>>	const struct intel_runtime_info *runtime_info;
>>        /* ... */
>>};
>>
>>static const struct intel_device_info i965g_info =3D {
>>	.runtime_info =3D &i965g_initial_runtime_info;
>>        /* ... */
>>};
>>
>>And things like .pipe_mask would be part of struct
>>intel_runtime_info. You'd copy the stuff over from intel_device_info
>>runtime_info member to i915->__runtime, but i915->__info would be a
>>const pointer to the device info. You'd never access the runtime_info
>>member after of intel_device_info after probe.
>
>
> I like this approach. I think the only problem would be that if someone
> inadvertently do a i915->__info->runtime_info they will be accessing the
> wrong data. So maybe to be clear do
>
> 	struct intel_device_info {
> 		const void *initial_runtime_info;
> 		/* ... */
> 	};
>
> 	static const struct intel_device_info i965g_info =3D {
> 		.initial_runtime_info =3D &i965g_initial_runtime_info;
> 		/* ... */
> 	};
>
> this would make it opaque and even hint by the name so the developer is
> not tempted to add a cast.

I think that's all fairly straightforward. Any ideas on how to do the
flags split cleanly, though? I already dislike the
DEV_INFO_FOR_EACH_FLAG() and DEV_INFO_DISPLAY_FOR_EACH_FLAG() split.

BR,
Jani.



>
> Lucas De Marchi
>
>>
>>It's just really painful, for instance because we already have two sets
>>of flags, display and non-display, and those would be multiplied to
>>mutable/immutable. And we should probably increase, not decrease, the
>>split between display and non-display. The macro horror show of
>>i915_pci.c would just grow worse.
>>
>>
>>BR,
>>Jani.
>>
>>
>>
>>>
>>>>
>>>>
>>>> BR,
>>>> Jani.
>>>>
>>>
>>
>>--=20
>>Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
