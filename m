Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE0B43621C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 14:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A87A6E444;
	Thu, 21 Oct 2021 12:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E08F6E444
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 12:51:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="289864630"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="289864630"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 05:51:49 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495135121"
Received: from ssuryana-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.45.34])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 05:51:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Lyude Paul <lyude@redhat.com>
In-Reply-To: <YXFEKv0GVXQgsumS@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
 <20211020223339.669-4-ville.syrjala@linux.intel.com>
 <87o87imzrz.fsf@intel.com> <YXFEKv0GVXQgsumS@intel.com>
Date: Thu, 21 Oct 2021 15:51:43 +0300
Message-ID: <871r4emtgg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Use vblank workers for gamma
 updates
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

On Thu, 21 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Oct 21, 2021 at 01:35:12PM +0300, Jani Nikula wrote:
>> On Thu, 21 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>> > index 79a7552af7b5..1375d963c0a8 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -8818,6 +8818,8 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>> >  		intel_set_cdclk_post_plane_update(state);
>> >  	}
>> >=20=20
>> > +	intel_wait_for_vblank_works(state);
>>=20
>> Nitpick, I think the function name can be confusing due to the plural
>> vs. verb here. intel_wait_for_vblank_work_end(), _finish(), _done()?
>
> I guess _end() would match what I called the tracepoint. Another
> idea could be s/works/workers/

Either works for me.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
