Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F4D49CC67
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 15:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1CBA10E56F;
	Wed, 26 Jan 2022 14:34:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4110810E5B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 14:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643207649; x=1674743649;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=E7iEFADKyiG6CgNjlopXc9XUvtp5GImvOkAwlhuZggE=;
 b=MeNsf4PSQd8VuDAw0P7bXeqPF8jyFIrF0rkDSG9LVopuEvBhGxSt4fen
 h427uarfXD8DvrQL+PqOWcur3QhDZOm5y6eWAx42nckVM3/URsk409vVp
 1MPEz5rtH6eywjwE12NhABR8WgI5LI7wAwB6XPV3wyXNMMV0cZD5JBIdA
 F4issQXDiE30W1f5/aL6sEU0vKcN/Kl2aotuZhNWn/GrWbrJEtVxQf5W3
 h9pt3AmR90e2EGyfi6XSeAExMsqqhCLnpxSmKAMaLSYpWlmjaLyWbjW0M
 0TNkVX72tNC0k+84b7+zNu+GHCe/C+MakHq9scWyMpboL6IWGVcG/Lf35 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="244160318"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="244160318"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:34:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="479900228"
Received: from nbasu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.197])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:34:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <YZd8yaUEE4tca+D8@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-2-ville.syrjala@linux.intel.com>
 <YZKvXNyv1bAcU2Xx@intel.com> <YZd8yaUEE4tca+D8@intel.com>
Date: Wed, 26 Jan 2022 16:34:04 +0200
Message-ID: <87ilu6zhur.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Bump DSL linemask to 20 bits
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

On Fri, 19 Nov 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Nov 15, 2021 at 02:05:00PM -0500, Rodrigo Vivi wrote:
>> On Fri, Nov 12, 2021 at 09:38:05PM +0200, Ville Syrjala wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >=20
>> > Since tgl PIPE_DSL has 20 bits for the scanline. Let's bump our
>> > definition to match. And while at it let's also add the define
>> > for the current field readback.
>> >=20
>> > We can also get rid of the gen2 vs. gen3+ nonsense since none
>> > of the extra bits ever did anything and just always read
>> > as zero.
>>=20
>> You are stepping over reserved bits on older platforms here.
>>=20
>> I understand that must probably hw is not using this for anything
>> and the reads are only zero. But I'm always afraid of opening
>> precedence for this kind of assumptions and end up stepping
>> over some reserved bit that hw is using for something else
>> but not documented.
>
> We do this in other places too in order to keep the code
> simple. I think it's fine for cases where all old platforms
> had a smaller bitfield which is extended in later platforms.
> That is, assuming all the bits were unused (and read as zero)
> in the old platforms, which is the case here.
>
> The thing we probably shouldn't do is make the bitfield larger
> proactively for future platforms since we can't know if some of
> the currently unused bits might end up being used for something
> else in the future.
>
> I really hope we don't have any undocumented bits anywhere since
> those can screw us up in a lot more ways than this. If we do find
> any undocuemnted bits we really need to file bspec issues for those.

I guess I'd record some of this in the commit message while applying, in
case this blows up. Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


--=20
Jani Nikula, Intel Open Source Graphics Center
