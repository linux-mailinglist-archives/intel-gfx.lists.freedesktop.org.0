Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5FB64D969
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 11:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E738410E512;
	Thu, 15 Dec 2022 10:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8FFF10E512
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 10:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671099630; x=1702635630;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=EFNrERdPEQTrIT3StHMBOcyDw6o4pqSveIcwQuXYozk=;
 b=kjGtlL1dyP6YdCuNwy6bOoiWLehaauWRgAkrM5LyWdbwI6kdGdjTbXOa
 7F9v/VfZEw8ss2Z5Jy2KrGVWUCjbvkij+9HKbZjfqUOpRGl7jJVh4Wt3p
 pPmWCGyyQgZBlFlDjf/HkqEfcWM15aKfbPIAtIE9aU9aPRtbTurV6nxHh
 x43wW3lH8kqrRtB8OId9d8Cm2O8qhl2QQ+N1z+zn/Bzp0xtD3ICQlH6Uh
 bE3lWlbNHcpvhmBJtkAOjfUzQ/ZTaTWwwVnPpb7RtDbrXVEIol15A5O6/
 PfjxU/a62WqBoMGOkkOtBhP1lURpwITQKZ8LKCHyQrHfIUJgQyi7gr7QT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="317353740"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="317353740"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 02:20:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="712849364"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="712849364"
Received: from tgodea-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.26])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 02:20:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177A60D4B187A5676EC9818BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1670855299.git.jani.nikula@intel.com>
 <ad40080099b3d0c95f0fac89053b5c34d2ef4549.1670855299.git.jani.nikula@intel.com>
 <BL0PR11MB31703B1D64C3125DE1B3EADDBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
 <87k02uwdlw.fsf@intel.com>
 <DM6PR11MB31777C066D99AFF73AD5D956BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87wn6tuj1x.fsf@intel.com>
 <DM6PR11MB3177A60D4B187A5676EC9818BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Thu, 15 Dec 2022 12:20:26 +0200
Message-ID: <87sfhhufx1.fsf@intel.com>
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
>> >> And how would you propose to drop the wrapper? The wrappers are all
>> >> about readability in the caller side:
>> >>
>> > I didn=E2=80=99t mean to drop the wrapper, understand that wrapper is =
more
>> readable, what I meant is to replace
>> wait_for_pipe_scanline_moving/stopped with its function contents.
>>
>> Why should we duplicate the code?
>
> static void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc) {
>         struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>         enum pipe pipe =3D crtc->pipe
>
>         /* Wait for the display line to settle/start moving */
>         if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) =3D=3D state=
, 100))
>
>         drm_err(&dev_priv->drm,
>                   "pipe %c scanline %s wait timed out\n",
>                          pipe_name(pipe), str_on_off(state));
> }

And the state variable comes from where?

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
