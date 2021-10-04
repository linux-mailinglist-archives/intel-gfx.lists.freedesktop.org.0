Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D10234206CA
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 09:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3C86E949;
	Mon,  4 Oct 2021 07:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9046E949
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 07:46:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="222773944"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="222773944"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 00:45:58 -0700
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="712312251"
Received: from pmittal1-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.223.27])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 00:45:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Saarinen\, Jani" <jani.saarinen@intel.com>, Dave Airlie
 <airlied@gmail.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, "Sarvela\,
 Tomi P" <tomi.p.sarvela@intel.com>
In-Reply-To: <DM8PR11MB5655047BD25AD19BA9E1FFFEE0AE9@DM8PR11MB5655.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1632869550.git.jani.nikula@intel.com>
 <41c3e1896162fc08e22e40b00642791365a8c00e.1632869550.git.jani.nikula@intel.com>
 <YViykYGH9KG1B2f/@intel.com>
 <CAPM=9txVSOfScH9LZZsYCdcFqikA=EN=y7aJ3BKk0Qtq1PxxJw@mail.gmail.com>
 <DM8PR11MB5655047BD25AD19BA9E1FFFEE0AE9@DM8PR11MB5655.namprd11.prod.outlook.com>
Date: Mon, 04 Oct 2021 10:45:49 +0300
Message-ID: <87h7dx2pxu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/24] drm/i915/uncore: split the fw get
 function into separate vfunc
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

On Mon, 04 Oct 2021, "Saarinen, Jani" <jani.saarinen@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of D=
ave Airlie
>> Sent: maanantai 4. lokakuuta 2021 3.33
>> To: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Intel Graphics Development <in=
tel-
>> gfx@lists.freedesktop.org>; Dave Airlie <airlied@redhat.com>; Sarvela, T=
omi P
>> <tomi.p.sarvela@intel.com>
>> Subject: Re: [Intel-gfx] [PATCH 01/24] drm/i915/uncore: split the fw get=
 function
>> into separate vfunc
>>
>> On Sun, 3 Oct 2021 at 05:27, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linu=
x.intel.com> wrote:
>> >
>> > On Wed, Sep 29, 2021 at 01:57:45AM +0300, Jani Nikula wrote:
>> > > From: Dave Airlie <airlied@redhat.com>
>> > >
>> > > constify it while here. drop the put function since it was never
>> > > overloaded and always has done the same thing, no point in
>> > > indirecting it for show.
>> > >
>> > > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>> > > Signed-off-by: Dave Airlie <airlied@redhat.com>
>> > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >
>> > This has totally broken snb and ivb machines. Total death ensues
>> > somewhere in uncore init after some backtraces fly by.
>> > Didn't get any logs out to disk unfortunately. Please revert.
>> >
>> > Sadly CI is still afraid to report when machines disappear.
>> > For the bat report you at least get a list of machines that were awol,
>> > but the shard run seems to not even mention that all snbs suddenly
>> > vanished.
>> >
>> > I've said it before and I'll say it again. We really should
>> > *not* be loading i915 when the machine boots. That way we'd at least
>> > get the machine up and running and can report that loading i915 is the
>> > thing that killed it...
>>
>> That is frustrating, I've sent a oneline fix that should fix it up.
>> hopefully CI will pick it up.
> It seems it did (this for ivb, snb only):
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21231/index.html?hosts=
=3Dsnb%7Civb

Pushed now.

BR,
Jani.


>
>>
>> Dave.

--=20
Jani Nikula, Intel Open Source Graphics Center
