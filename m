Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D986E08D9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 10:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3632D10E259;
	Thu, 13 Apr 2023 08:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA7910E161;
 Thu, 13 Apr 2023 08:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681374157; x=1712910157;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6WIrfKbYvCB2gzzkZUxsne0T5t/ebpV5cE59RVznwT0=;
 b=GysoXqfVPrYyK37h3ihgEXTeSpN9aW+R+EtvHBWpnZZTXDBUlVQa/OZF
 VpmiiQqnf30XZFCXgB996Yet0WDm831dtT5dlg0t6dFP1WkpoMcKfaqXG
 /kxXKW6q9vQKRIan/72Fz5Vf+/QKrSbp8FwKDWABY5RtEMoGmruF+ni1M
 JERdmv39SeEmQyCOLkZUbpTViXsOfCIX6aHcqcpAstOaWX93hHAxuFk2J
 Y82Ss8KIzdDJLDG5+3WuCcXBhYrXrq7DN2d4tSyxj5SoTe7NHPPChwI8/
 zgOuJPEU8xXChOExX+z8gFMZdq3Cow8O/AIING5tBP4vu53PI2G7+e8EJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="332828807"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="332828807"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 01:22:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="758602486"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="758602486"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 01:22:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
In-Reply-To: <95fb452a03404f8c3ec5983e6cd88a49e342c695.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230410183219.191543-1-jose.souza@intel.com>
 <ZDUc1Ya/ybwjo4DC@intel.com> <878reyer8q.fsf@intel.com>
 <ZDUkZKotRVT0bxga@intel.com> <875ya2eq6b.fsf@intel.com>
 <ZDVz2Ppm1DgVbZ0p@intel.com>
 <20230411195918.hdxyir5w7dp2qx55@ldmartin-desk2.lan>
 <0acba7b8416f79d8a392f15b0780768611967f20.camel@intel.com>
 <20230411212020.qwceyu5m6tpy42c4@ldmartin-desk2.lan>
 <95fb452a03404f8c3ec5983e6cd88a49e342c695.camel@intel.com>
Date: Thu, 13 Apr 2023 11:22:31 +0300
Message-ID: <87v8i0b394.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Apr 2023, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Tue, 2023-04-11 at 14:20 -0700, Lucas De Marchi wrote:
>> On Tue, Apr 11, 2023 at 08:07:12PM +0000, Jose Souza wrote:
>> > On Tue, 2023-04-11 at 12:59 -0700, Lucas De Marchi wrote:
>> > > On Tue, Apr 11, 2023 at 10:51:04AM -0400, Rodrigo Vivi wrote:
>> > > > On Tue, Apr 11, 2023 at 12:14:36PM +0300, Jani Nikula wrote:
>> > > > > On Tue, 11 Apr 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linu=
x.intel.com> wrote:
>> > > > > > On Tue, Apr 11, 2023 at 11:51:33AM +0300, Jani Nikula wrote:
>> > > > > > > On Tue, 11 Apr 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@=
linux.intel.com> wrote:
>> > > > > > > > On Mon, Apr 10, 2023 at 11:32:14AM -0700, Jos=C3=A9 Robert=
o de Souza wrote:
>> > > > > > > > > Start to move the initialization of some lock from
>> > > > > > > > > i915_driver_early_probe().
>> > > > > > > > > No dkl function is called prior to intel_setup_outputs()=
, so this is
>> > > > > > > > > a good place to initialize it.
>> > > > > > > >=20
>> > > > > > > > I disagree. We don't want to sprinke these all over the pl=
ace.
>> > > > > > >=20
>> > > > > > > I'm thinking if only foo.c uses a lock, foo.c should initial=
ize it, not
>> > > > > > > someone else.
>> > > > > >=20
>> > > > > > Perhaps. But I think there should be some consistent place in =
the higher
>> > > > > > level code where all such things get called instead of droppin=
g each one
>> > > > > > individually into some random spot in the overlall display ini=
t flow.
>> > > > >=20
>> > > > > Agreed.
>> > > >=20
>> > > > Ops, I just saw this now, right after I cc'ed you in the other thr=
ead.
>> > > >=20
>> > > > So, probably good to hold this and do the entire refactor together=
 of all
>> > > > those locks initialization so we find this common consistent place=
 apparently...
>> > >=20
>> > > "internal" sw initialization of display-related stuff. It doesn't be=
long in
>> > > i915_driver_early_probe(), it makes harder to follow the sequence if=
 we sprinkle
>> > > them around, like here in intel_setup_outputs.
>> > >=20
>> > > But I don't see why this couldn't be done in a higher level "sw
>> > > initialization of display-related stuff".  Should we add an equivale=
nt
>> > > of i915_driver_early_probe(), e.g.  intel_display_early_probe()[1], =
 and
>> > > move the display-related things from i915_driver_early_probe()?
>> > >=20
>> > > In that case, from xe we would call this function rather than
>> > > initializing these fields in xe_display_create()
>> >=20
>> > Sent another version, added intel_display_locks_init() that is called =
in the beginning of intel_modeset_init_noirq().
>> > https://patchwork.freedesktop.org/series/116326/
>>=20
>> modeset? why? That is after we are already probing the hw....
>
> That called during probe, called from i915_driver_probe().
>
>> and what does that have to do with modeset?
>
> The name is misleading but intel_modeset_init_noirq() is the first generi=
c display initialization function called.
> There is other display functions called before it but they are very speci=
fic(intel_dram_detect(), intel_bw_init_hw() and
> intel_device_info_runtime_init()).

See [1].

BR,
Jani.


[1] https://lore.kernel.org/r/87ile1cjh8.fsf@intel.com

>
>>=20
>> Lucas De Marchi
>>=20
>> >=20
>> > If this is accepted we can then move the other display locks from i915=
_driver_early_probe().
>> >=20
>> > >=20
>> > > Lucas De Marchi
>> > >=20
>> > > [1] I don't like the name, but it follows what is already there
>> > >=20
>> > > >=20
>> > > > >=20
>> > > > > --
>> > > > > Jani Nikula, Intel Open Source Graphics Center
>> >=20
>

--=20
Jani Nikula, Intel Open Source Graphics Center
