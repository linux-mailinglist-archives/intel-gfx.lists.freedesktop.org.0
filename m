Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B319C3CB21
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 18:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96BDB10E98A;
	Thu,  6 Nov 2025 17:05:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VUhvsW33";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2410010E988;
 Thu,  6 Nov 2025 17:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762448725; x=1793984725;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=5goSu9WELijpMsvULaGeHE7KCtMN/s5uifpGdF/Imk4=;
 b=VUhvsW33duZ9KpdOBysvq0hebubP+vVq/fh65m9TJznZn/rMjajKUhpN
 SS++h0bNVNNSdZdRqzrKO2IZdZOUJrDLeus0HrULacnxV+72jTC2L/ttS
 YT2bUy8vd/FUfrK4K5u2jCahqNAYNuHVyibLXTkkRL2So0vxpMl3OcUPi
 SFdH2x1dJuNDVbqmUzCdZxPjS/9Lj6+ERWTBYlb/03708btnIOGslH14M
 bR7dE6rMpHpXc9lw77yB4AyKCpfWkak90GoPUcKv3+43vls0WhNj7bzP+
 1JinM2G7/Jrg/gCl+ZlSl75zQNAbvazYkTN0zUbRkcSEcKE4Utss/VUdp A==;
X-CSE-ConnectionGUID: wgEOu39yT5u3OxsAFRH4KQ==
X-CSE-MsgGUID: 5gd0X93fTOCN4sFbUs+ZZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64500989"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64500989"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 09:05:25 -0800
X-CSE-ConnectionGUID: SbmS+pEyQTCOnVrdn/kZdw==
X-CSE-MsgGUID: eucKMYkgSNGH8jFwxIBWRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187649539"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 09:05:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 00/10] drm/i915: Stop the intel_de_wait_custom() abuse
In-Reply-To: <aQzIZzjEqNyP872A@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
 <e83b667c90f6c4a92b3d67c63a49954bade3da0a@intel.com>
 <aQzIZzjEqNyP872A@intel.com>
Date: Thu, 06 Nov 2025 19:05:20 +0200
Message-ID: <677633ec46f1835f2f0aceecb1411191fbb1c648@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 06 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Nov 06, 2025 at 05:43:12PM +0200, Jani Nikula wrote:
>> On Thu, 06 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Get rid of all the custom fast vs. slow intel_de_wait_custom()
>> > timeouts that have started to spread like a cancer recently.
>> >
>> > The eventual aim is to get rid of the fast vs. slow timeout
>> > stuff entirely and switch over to poll_timeout_us()...
>>=20
>> Are you planning on still having intel_de_wait_something_something, or
>> do you mean using poll_timeout_us() directly?
>>=20
>> I think I like the intel_de_* wait helpers, but just a coherent small
>> set, and everything beyond that should use poll_timeout_us() instead of
>> adding obscure helpers for one-off cases.
>
> Yeah, I think the helpers are fairly nice for the common stuff so
> I guess we should keep them. But not too many, so probably just
> intel_de_wait_{,for_set,for_clear}_us().
>
> My current branch has both _us() and _ms() versions of those, but
> as discussed in the meeting we should probably just go for _us()
> eventually. I think I'll want to have the _ms() stuff around for
> a while though since it makes some of the mechanical conversions
> easier.

I think that's fine.

> I also haven't quite figured out is what to do about the poll
> interval for poll_timeout_us(). I was thinking of starting with
> something simple like 'interval=3Dmax(timeout/8+1,100)' and then
> try to capture some data on how many iterations we end up in
> at least some of the more important places (eg. AUX, PPS, etc).
> I suppose in the worst case we might need custom intervals in
> some places, but I'm hoping some kind of generic approach works
> well enough for most stuff.

I think I pretty much winged it when I was doing the conversions... for
most stuff it's not really super important, as long as it's somewhat
proportional to the timeout.

The downside of poll_timeout_us() is that it's not trivial for us to
change the interval e.g. to some automatic exponential backoff with a
max. I like how __xe_mmio_wait32() has that, but I very much dislike how
it has no cap, and you know how exponential functions behave.

Maybe we could pass a negative as sleep_us to poll_timeout_us() to do
some magic...

BR,
Jani.




--=20
Jani Nikula, Intel
