Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B0E6A41C9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 13:37:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A2310E03A;
	Mon, 27 Feb 2023 12:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C059310E03A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 12:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677501417; x=1709037417;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=BAn8bIXoV7EggjTh8A0AKZnaPYQCthmosuDoFdtrqlc=;
 b=V3Y2oLmqAPc9V3cErWf8tQzxKL1XPX+29c1THDReFcU34Lp/P9XP+1Mm
 7jgzK1HFaMg7axEmmr9GqzB/usSzTfRJk+zGa6av6g0iS6f0wsQJgsBIk
 1dsaLaIiPd/6yxUXEFSKaXtyca1Khl+BfIW31j9iGIGSxeau2GfXWkrRb
 VFmsyq1y4q6Uo+LY3dR9ttijnSqq73ISL/DYju8j5nbWZYB/L/+Z+IzHG
 ipatCkvRnxikUECroT7+5tzyAT5ax/1gREv1HtfJy/8goYD0/aE26KmAT
 oHSZIQAexRVqukDN9pYHH52hZU8q54TgTEtW/0i4CjkESqprjDZJNacwi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="335328032"
X-IronPort-AV: E=Sophos;i="5.97,332,1669104000"; d="scan'208";a="335328032"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 04:36:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="737683311"
X-IronPort-AV: E=Sophos;i="5.97,332,1669104000"; d="scan'208";a="737683311"
Received: from jkaisrli-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.158])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 04:36:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
In-Reply-To: <Y/eqsW7f5EGGNX5c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
 <DM4PR11MB636060CF5C30347EF0EBE755F4AA9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <Y/eBIshF4EiSS4rT@intel.com>
 <DM4PR11MB6360910F45E5832C8DDAAA47F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <Y/eqsW7f5EGGNX5c@intel.com>
Date: Mon, 27 Feb 2023 14:36:52 +0200
Message-ID: <87mt4z1dzv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP
 MST
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

On Thu, 23 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Feb 23, 2023 at 05:01:11PM +0000, Shankar, Uma wrote:
>>=20
>>=20
>> > -----Original Message-----
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > Sent: Thursday, February 23, 2023 8:37 PM
>> > To: Shankar, Uma <uma.shankar@intel.com>
>> > Cc: intel-gfx@lists.freedesktop.org
>> > Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling =
for DP MST
>> >=20
>> > On Wed, Feb 22, 2023 at 05:59:45PM +0000, Shankar, Uma wrote:
>> > >
>> > >
>> > > > -----Original Message-----
>> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>> > > > Of Ville Syrjala
>> > > > Sent: Monday, February 20, 2023 8:48 PM
>> > > > To: intel-gfx@lists.freedesktop.org
>> > > > Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling
>> > > > for DP MST
>> > >
>> > > Nit: May be append "display" to drm/i915.
>> >=20
>> > Don't think I've ever used that one. Seems a bit too generic to provid=
e any real
>> > additional information to the table that wouldn't usually be obvious f=
rom the subject
>> > anyway.
>> > Do other people find /display useful?
>> >=20
>> > I guess I could have used a more specific /mst in this case, but then =
again I already
>> > mention MST in the subject anyway so seems a bit redundant.
>>=20
>> I think there are mixed declarations in our tree, no clear rule as such.
>> Will leave it you, maybe a general guideline would be good to make it
>> all consistent.
>
> Yeah, some general guidelines might be good to figure out.
>
> In the meantime I've pushed these patches as is for now.
> Thanks for the review.

Personally I only ever use drm/i915/display when it's really about
*everything* related to display, the highest level display stuff. Never
for details like this.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
