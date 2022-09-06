Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F34985AED59
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 16:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3363910E6AA;
	Tue,  6 Sep 2022 14:31:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9213D10E6AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 14:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662474681; x=1694010681;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wI2nV0dUfYKFDBjTaoSZNw9jSHqx1+uGDZ5AhhxIV2I=;
 b=hioN5x++N7Fa+lTOmoFycxt3F4w/mYgrg0RFCw8q4+QLon/dFCMy9SZV
 fJ62vzKBX/yYdY/ZPoev0i9gaIY5JhVdB25kX0wETzQl9gQnQ/RL0o4r3
 ToOtST18DETxUVBqVh5GqssbznZsILtMLXmAmZiz9RcpN3Pby07ZTKubs
 urZCOBiXz/tv4pdLhgaceabx3bCHeLCl9C5rFvplvSoxWPAFz+knARH3P
 ImZM3YKHk1ClKTlb08bvUKTccMGpbu4+gfcdtLUoqMphGeTemBKa1cyj3
 nQMiAZ/CZFuyBqhDA2R5IaqcCX5LySCBqq4DaC4ewSfQBrmh7hICDDfUx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="358323082"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="358323082"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 07:30:59 -0700
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="675713052"
Received: from reichelh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.69])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 07:30:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yxc8pcXwTMcEooBs@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220906102329.7073-1-stanislav.lisovskiy@intel.com>
 <Yxc1rvmwMuN9RzTo@intel.com> <Yxc8pcXwTMcEooBs@intel.com>
Date: Tue, 06 Sep 2022 17:30:40 +0300
Message-ID: <875yi0a833.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix
 intel_dp_atomic_find_vcpi_slots function
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

On Tue, 06 Sep 2022, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>=
 wrote:
> On Tue, Sep 06, 2022 at 02:57:34PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Tue, Sep 06, 2022 at 01:23:29PM +0300, Stanislav Lisovskiy wrote:
>> > drm_dp_atomic_find_vcpi_slots no longer exists and needs
>> > to be used as drm_dp_atomic_find_time_slots.
>> > Also rename the function itself.
>> >=20
>> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> > Fixes: 7ae5ab441402 ("Extract drm_dp_atomic_find_vcpi_slots cycle to s=
eparate function")
>>=20
>> The problem only exists in drm-tip. You need to revert the=20
>> bad merge from rerere-cache and redo it.
>>=20
>> And please always test build drm-tip after solving merge conflicts!
>
> I would really like to figure out how it did end like that.
>
> Here is the sequence of what I've been doing:
>
> 1) There was a series supposed to be merged which had this new
>    change already in place i.e using drm_dp_atomic_find_time_slots.
> 2) Then using dim tools I started pushing according to workflow:
>    a) dim update-branches
>    b) dim checkout drm-intel-next
>    c) wget those series mbox and run dim apply-branch drm-intel-next
>       Got conflict: it was complaining about those changes around
>       drm_dp_atomic_find_time_slots and after some checking I figured
>       out that drm_dp_atomic_find_time_slots doesn't exist anymore.
>       Here probably was my bad, as I wrongly assumed that those changes
>       were probably reverted as it was also mentioned, that there was
>       regression because of those.
>=20=20=20=20=20=20=20
>       So I resolved this conflict by putting drm_dp_atomic_find_vcpi_slots
>       back instead of drm_dp_atomic_find_time_slots _and_ actually
>       built it even.

The rule of thumb is, don't resolve conflicts while applying
patches. Apply the patches as they were posted to the mailing list.

If your patches apply to drm-tip but not to drm-intel-next, you'll know
there's stuff in other branches that affect the lines. You'll end up
with problems both at patch apply and drm-tip rebuild if you don't get
the baseline right first.

From the committer guidelines:

* As a general rule, do not modify the patches while applying, apart from t=
he
  commit message. If the patch conflicts, or needs to be changed due to rev=
iew,
  have the author rebase, update and resend. Any change at this stage is a
  potential issue bypassing CI.

BR,
Jani.

>=20=20=20=20
>    d) I run dim push-branch drm-intel-next, it did complain about merge
>       conflict again with drm-intel-next which I fixed and results were
>       pushed.
>       I should have build at this moment as well probably.=20
>=20=20
>       Then I noticed that this function drm_dp_atomic_find_vcpi_slots
>       doesn't exist in drm. So basically patches should have been pushed
>       as they were initially, but why the conflict appeared initially - t=
hat is my
>       question.
>
> Stan
>
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel

--=20
Jani Nikula, Intel Open Source Graphics Center
