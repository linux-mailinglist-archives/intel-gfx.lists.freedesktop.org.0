Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B19C645D883
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 11:57:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3899C6E930;
	Thu, 25 Nov 2021 10:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 041776E928
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 10:57:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="296300488"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="296300488"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 02:57:35 -0800
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="538948454"
Received: from dshe-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.10.64])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2021 02:57:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YZ9azCw2Rc96QuNL@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-12-ville.syrjala@linux.intel.com>
 <87pmqplft3.fsf@intel.com> <YZ9azCw2Rc96QuNL@intel.com>
Date: Thu, 25 Nov 2021 12:57:27 +0200
Message-ID: <87bl28lcyw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/20] drm/i915/fbc: Move FBC debugfs stuff
 into intel_fbc.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 25 Nov 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Nov 24, 2021 at 05:43:52PM +0200, Jani Nikula wrote:
>> On Wed, 24 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > In order to encapsulate FBC harder let's just move the debugfs
>> > stuff into intel_fbc.c.
>>=20
>> Mmmh, I've kind of moved towards a split where i915_debugfs.c and
>> intel_display_debugfs.c have all the debugfs boilerplate, while the
>> implementation files have the guts with struct drm_i915_private *i915
>> (or something more specific) and struct seq_file *m passed in.
>>=20
>> In some ways the split is arbitrary, but I kind of find the debugfs
>> boilerplate a distraction in the implementation files, and we also skip
>> building the debugfs files completely for CONFIG_DEBUG_FS=3Dn. I don't
>> think I'd want to add #ifdefs on that spread around either.
>
> If we want to keep the debugfs in a separate file then we'll have to
> expose the guts of the FBC implementation in intel_fbc.h (or some other
> header) just for that, or we add a whole bunch of otherwise useless
> functions that pretend to provide some higher level of abstraction.
>
> Not really a fan of either of those options.

Obviously I'm in favour of hiding the guts, no question about it. I'm
also very much in favour of moving the details out of our *debugfs.c
files. It's just a question of where to draw the line, and which side of
the line the debugfs boilerplate lands.

Which leaves us either your approach in the patch at hand, or adding the
fbc helper functions for debugfs, which would be something like:

intel_fbc_get_status
intel_fbc_get_false_color
intel_fbc_set_false_color

From a technical standpoint, I can appreciate the pros and cons of both
approaches. And I could be persuaded either way.

With the maintainer hat on, I'm considering the precedent this sets, and
where things start flowing after that. Do we accept all options for
other files, case by case, making this a continuous bikeshedding topic,
or do we want to choose an approach and start driving it everywhere?
Frankly I'm not all that fond of giving people a lot of options on stuff
like this, I prefer saying this is how we roll, let's stick to
it. (Until we decide otherwise, and stick to something else! ;)

Sooo... what would it be like if every file had their own
intel_foo_debugfs_register()? Including connector specific stuff such as
"i915_psr_status".

Cc'd other maintainers for good measure. Let's have one debugfs
bikeshedding now, and stick to it, instead of every time this pops up?


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
