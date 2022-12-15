Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE5364D9FB
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 12:03:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C04710E08B;
	Thu, 15 Dec 2022 11:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23BE410E08B
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 11:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671102227; x=1702638227;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=McCXvImer/A/nVvk3BCMNHdEFPZq6HQPsdeqJhNeFKE=;
 b=N/uDWL2l6nAAevU4b2vf0+q9jsHhC0oXhzllAHPGGwD3HkSesSe2msrO
 Moqz6Kmtwq6anf/q7niBmPfO2BF1/XHKGe/FcUjCbEly07Rev/bLJW9Kc
 iIPM7D2P5BObCpQmxQjTcvX0X2lw/ulAB6xna0qxoFgKMwPIiIDATuJQ6
 OmpIeGWEH+aYszDWbfi5c6/GKSN5ZRAKQ4+qRZYoShCDzjJp2HYMkSDLQ
 xCrECFFQgbthx3Q713Lv3SgqfXRLqrkLyylBWZzkIHeQqECDjqa3C2rtn
 aJtCP3oZ/A6p6RJ3DzJH8IE9w+OUVJsist2G2KsJiGmWbP09a337R/fBK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="382954029"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="382954029"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 03:03:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="599568431"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="599568431"
Received: from tgodea-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.26])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 03:03:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB31778B4A7658B5C1796A4268BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1670855299.git.jani.nikula@intel.com>
 <ad40080099b3d0c95f0fac89053b5c34d2ef4549.1670855299.git.jani.nikula@intel.com>
 <BL0PR11MB31703B1D64C3125DE1B3EADDBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
 <87k02uwdlw.fsf@intel.com>
 <DM6PR11MB31777C066D99AFF73AD5D956BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87wn6tuj1x.fsf@intel.com>
 <DM6PR11MB3177A60D4B187A5676EC9818BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87sfhhufx1.fsf@intel.com>
 <DM6PR11MB31778B4A7658B5C1796A4268BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Thu, 15 Dec 2022 13:03:42 +0200
Message-ID: <87mt7pudwx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
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

On Thu, 15 Dec 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Thursday, December 15, 2022 3:50 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: RE: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
>> functions to intel_vblank.[ch]
>>
>> On Thu, 15 Dec 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> >> And how would you propose to drop the wrapper? The wrappers are
>> >> >> all about readability in the caller side:
>> >> >>
>> >> > I didn=E2=80=99t mean to drop the wrapper, understand that wrapper =
is more
>> >> readable, what I meant is to replace
>> >> wait_for_pipe_scanline_moving/stopped with its function contents.
>> >>
>> >> Why should we duplicate the code?
>> >
>> > static void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crt=
c) {
> Bool state can be added as a parameter to this function, on the other han=
d, can have state =3D false as a magic value as well.

Then it boils down to what we already have?

Too much talk now, please send actual working code instead.

BR,
Jani.


>
> Thanks and Regards,
> Arun R Murthy
> -------------------
>> >         struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> >         enum pipe pipe =3D crtc->pipe
>> >
>> >         /* Wait for the display line to settle/start moving */
>> >         if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) =3D=3D st=
ate,
>> > 100))
>> >
>> >         drm_err(&dev_priv->drm,
>> >                   "pipe %c scanline %s wait timed out\n",
>> >                          pipe_name(pipe), str_on_off(state)); }
>>
>> And the state variable comes from where?
>>
>> BR,
>> Jani.
>>
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
