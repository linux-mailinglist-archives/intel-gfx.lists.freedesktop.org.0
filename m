Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2190F7B074C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 16:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73E6910E06C;
	Wed, 27 Sep 2023 14:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A19510E1D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 14:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695826215; x=1727362215;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Sf+nUxUa82kQOPxzDwKNZU5Guo/1zl4oyivMQlvg8PY=;
 b=ckQ9dki4y2zTs6bYqydF9G92fQ8esgqwioh+Gdw1G8SESY7iy9F3D6Vv
 +4xlXinKPy8b3lPSkF1tNoqSghDGEEBlIDkeLudeiTXGE9hskinjxROTD
 tzk7VJ90VdEwwwXkF9exCtnM+ItKAzc09rVRf5VHg4KjV5gqbru15b21r
 AQImx9bvgxc5ICKj0zB7H0KxkJ/ODwZkCBEdBZornFjkilHrQfHGy5IEN
 qhf7ULcK/D3np91NfQIeZJict8No/h3+4Rlqm89CoiMjmaBXvcI5Yap7/
 9ojogRxtB6pZKOeC/VmVnELdEaRsl4dWnq5nKdIYo1iCYffgXgFFygRgc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="468123960"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="468123960"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 07:50:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="892634732"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="892634732"
Received: from roomensx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.40.191])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 07:49:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZRQzKU1ePbiqDtUJ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230922193518.723664-1-animesh.manna@intel.com>
 <87lecumo4z.fsf@intel.com>
 <BL1PR11MB59796856C4C80FE3461F13B9F9C3A@BL1PR11MB5979.namprd11.prod.outlook.com>
 <87v8bxl1lg.fsf@intel.com> <ZRQzKU1ePbiqDtUJ@intel.com>
Date: Wed, 27 Sep 2023 17:50:10 +0300
Message-ID: <87il7vk6vx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 27 Sep 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Sep 26, 2023 at 12:34:35PM +0300, Jani Nikula wrote:
>> On Tue, 26 Sep 2023, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> >> -----Original Message-----
>> >> From: Jani Nikula <jani.nikula@linux.intel.com>
>> >> Sent: Monday, September 25, 2023 6:00 PM
>> >> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> >> gfx@lists.freedesktop.org
>> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
>> >>=20
>> >> On Sat, 23 Sep 2023, Animesh Manna <animesh.manna@intel.com> wrote:
>> >> > Refactor DSB implementation to be compatible with Xe driver.
>> >>=20
>> >> Sad trombone.
>> >>=20
>> >> struct intel_dsb should remain an opaque type. I put effort into hidi=
ng its
>> >> definition, so its guts wouldn't be accessed nilly-willy all over the=
 place. If it's
>> >> not hidden, it just will get accessed.
>> >
>> > Hi Jani,
>> >
>> > Xe driver need access to intel_dsb structure, so I can create a new he=
ader file intel_dsb_ops.h and keep intel_dsb structure in it. Is it ok?
>>=20
>> I just think you need to find a different abstraction level that doesn't
>> involve exposing struct intel_dsb.
>
> I hate the fact that we seem to be adding these ad-hoc wrappers all
> over the place. Someone should just fix xe to give us the same API as
> i915, or a single wrapper should do whatever conversion is needed.

I think one of the problems is that i915 doesn't really give us a proper
API either, but requires us to fiddle with the objects' guts, and thus
have access to the struct definitions. In i915, with the include
hierarchies, that effectively means including absolutely
everything. Can't have that in xe.

Having the same API for both i915 and xe requires turning it into an
actual API that doesn't depend on either i915 or xe specific types. But
that's kind of tough before xe is upstream. Catch-22.

Part of the reason we have these ad-hoc wrappers is that they also serve
as the todo list of stuff to fix properly.


BR,
Jani.


--=20
Jani Nikula, Intel
