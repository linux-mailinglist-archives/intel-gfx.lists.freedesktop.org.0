Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2950691CF8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 11:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025F810E107;
	Fri, 10 Feb 2023 10:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB2110E107
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 10:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676025447; x=1707561447;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=P0Fu8R1VW46sLsWNx0lyLmMFQD1qRFbGv4XmSZ7tXTk=;
 b=eCUPV8DZjAl1ctsGrNw5MU3McRyRY5w0lrU7mwqqSEihskwAmF9O5DIt
 +DJysKy/d6WeiCejbf2dAlRgvO9Eq9Y6R87WCGEpwoY/uQFHfsGpO/02q
 dMEnwB4NnhWOvnf81PcoHS4/l2bML0k3eUb5xg1eUVq1jOfa3MFwJLU9b
 qONqJrmSPYN9AXWBBWJ8iCeXBCFcIq/ImGxSXD73CzWzEEbLsDlIjd4Nr
 Fd1rTZnLsulh5kMo70fVVl9Xnp/A86Un91/EGMAq9TrB1Ba5cAGPt7h95
 vGJYWXyCJoOlJIsEbQ5Sh8V91/wNjpGhcZxdSMYzfmpjG+g7e1U/05kW/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="357787652"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="357787652"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 02:37:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="645590804"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="645590804"
Received: from myegin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.38.74])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 02:37:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+Vu0gWjk1LwVJbT@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230209003251.32021-1-ville.syrjala@linux.intel.com>
 <20230209003251.32021-2-ville.syrjala@linux.intel.com>
 <87y1p6x2xt.fsf@intel.com> <Y+Vu0gWjk1LwVJbT@intel.com>
Date: Fri, 10 Feb 2023 12:37:21 +0200
Message-ID: <87cz6hx0v2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Replace wm.max_levels with
 wm.num_levels and use it everywhere
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

On Fri, 10 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Feb 09, 2023 at 05:40:14PM +0200, Jani Nikula wrote:
>> On Thu, 09 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > @@ -3229,7 +3216,7 @@ static void ilk_wm_merge(struct drm_i915_private=
 *dev_priv,
>> >  	merged->fbc_wm_enabled =3D DISPLAY_VER(dev_priv) >=3D 6;
>> >=20=20
>> >  	/* merge each WM1+ level */
>> > -	for (level =3D 1; level <=3D max_level; level++) {
>> > +	for (level =3D 1; level < num_levels - 1; level++) {
>>=20
>> That's off by one, right?
>
> Whoops. Good eyes.

Thanks for v2, I went ahead and pushed these to drm-intel-next so I can
rebase my wm stuff on top.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
