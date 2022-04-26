Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FCB50F2E0
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 09:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0889710E6C0;
	Tue, 26 Apr 2022 07:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8A710E6C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 07:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650958963; x=1682494963;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=2Jka6HBs65/NOlIXRHpx/GDGrzrhVsyec5obA8Ofqj8=;
 b=TLD0yYRYqJwMj/1cw8tQwOGbto5tVdZ/roib91hE/DVNVzZH2AZ44HoL
 Hs12xdD6lkdybl5gt3yRvaL1yL7jv4JGyKmTZDbQveiYY95we2QD9d91P
 tpKBU30jrHQ+VEnUwoLMMlWEHvUCyNbjpDcXf99TTeIGGOMw5tVR0pZRi
 gdnfCu0CLQnfic8wUyc0/TSY5XaZvgCiTHpy2zOKXtu0EP3ibHlHZ0g95
 DNdb4AGkJ9X/w+cqgghJi9VBdTeGViW+hPrBmeyynTSyatRExdWqtHavb
 lFJPn7zUqjk8mLan5WKEtOijzoX8lPKQXfFjPd0HMWtjzH05/l6GXfBgI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="265652783"
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="265652783"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 00:42:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="678318171"
Received: from vhlushch-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.132.136])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 00:42:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>
In-Reply-To: <ee1506a5a7bbbacf112a9361ff0a56ab5a3bf6b7.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <8f667da9aa39452524abef1333226b645438d2cc.1649871650.git.ashutosh.dixit@intel.com>
 <87lew7eque.fsf@intel.com> <878rs72t78.wl-ashutosh.dixit@intel.com>
 <YllHJizrltBkHUDw@intel.com> <87wnfkwb8b.wl-ashutosh.dixit@intel.com>
 <ee1506a5a7bbbacf112a9361ff0a56ab5a3bf6b7.camel@intel.com>
Date: Tue, 26 Apr 2022 10:42:37 +0300
Message-ID: <877d7cuw7m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/pcode: Extend pcode functions
 for multiple gt's
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 20 Apr 2022, "Vivi, Rodrigo" <rodrigo.vivi@intel.com> wrote:
> On Tue, 2022-04-19 at 22:54 -0700, Dixit, Ashutosh wrote:
>> On Fri, 15 Apr 2022 03:21:26 -0700, Rodrigo Vivi wrote:
>> > On Thu, Apr 14, 2022 at 03:31:07PM -0700, Dixit, Ashutosh wrote:
>> > > On Thu, 14 Apr 2022 06:28:57 -0700, Jani Nikula wrote:
>> > > >=20
>> > > > On Wed, 13 Apr 2022, Ashutosh Dixit <ashutosh.dixit@intel.com>
>> > > > wrote:
>> > > > > Each gt contains an independent instance of pcode. Extend
>> > > > > pcode functions
>> > > > > to interface with pcode on different gt's. Previous (GT0)
>> > > > > pcode read/write
>> > > > > interfaces are preserved.
>> > > >=20
>> > > > The big problem here is that this hard couples display code to
>> > > > gt code,
>> > > > while we're trying hard to go the opposite direction. It
>> > > > doesn't matter
>> > > > that the existing interfaces are preserved as wrappers when it
>> > > > relies on
>> > > > an intel_gt being available (via i915->gt0).
>> >=20
>> > I don't believe there is a big problem in here...
>> >=20
>> > please note the intel_pcode.h is keeping the abstraction for
>> > display
>> >=20
>> > #define snb_pcode_write_timeout(i915, mbox, val, fast_timeout_us,
>> > slow_timeout_ms) \
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_gt_pcode_write_timeou=
t(&(i915)->gt0, mbox, val,
>> > fast_timeout_us, slow_timeout_ms)
>> >=20
>> > #define snb_pcode_write(i915, mbox, val) \
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 snb_pcode_write_timeout(i91=
5, mbox, val, 500, 0)
>> >=20
>> > display only uses these macros that Ashutosh didn't touch.
>> >=20
>> > > >=20
>> > > > Note how 'git grep intel_gt -- drivers/gpu/drm/i915/display/'
>> > > > matches
>> > > > only 1 line.
>> >=20
>> > As well with the patches applied:
>> >=20
>> > $ git log --oneline -1
>> > 1f58f1195478 (HEAD -> drm-tip) drm/i915/gt: Expose per-gt RPS
>> > defaults in sysfs
>> >=20
>> > $ git grep intel_gt -- drivers/gpu/drm/i915/display/
>> > drivers/gpu/drm/i915/display/intel_display.c:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
>> > intel_gt_set_wedged(to_gt(dev_priv));
>> >=20
>> > >=20
>> > > Hi Jani, would you have suggestions about how to do this (handle
>> > > pcode on
>> > > multiple gt's)? The thinking was this patch would be a
>> > > straightforward way
>> > > to avoid code duplication. Also:
>> >=20
>> > Maybe it is just a matter of renaming the macros used by display
>> > in intel_pcode.h to reflect that it should be used by display only?
>>=20
>> In v2 I have added a patch ([PATCH 4/9] drm/i915/gt: Convert callers
>> to
>> user per-gt pcode functions) which correctly calls per-gt pcode
>> functions
>> where this is required. With this patch only display functions (and
>> one
>> other caller) are left calling the "global scope"
>> snb_pcode_read/write*
>> functions. So the legacy snb_pcode_read/write* are now basically
>> being used
>> only by display. Let's see if Jani is ok with this. Thanks.
>
> Jani is not happy with this abstraction because it still creates some
> dependency and also no with the name intel_gt_pcode_ in the
> functions...
>
> He has some valid points.
>
> I believe the right way to do this is to keep intel_pcode totally clean
> from intel_gt and only receive intel_uncore as the argument. Then, if
> needed we create display/intel_display_pcode and/or gt/intel_gt_pcode
> with the needed abstractions... but better with none I'd say.

I'd prefer it if you only passed uncore, not gt, to the pcode functions.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
