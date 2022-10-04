Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC5A5F463B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 17:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC5810E5E4;
	Tue,  4 Oct 2022 15:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005F310E5E4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 15:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664896327; x=1696432327;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=aWXULuWwTifrIOBTyAYVuq+mS5HUp62Lx94ccn4G5+c=;
 b=k/cmshBA6ajzlVgx9aZ/OZzfRhkEyaBFBY8BDDA5dWxJAHHsh62VCn3p
 CrDFarLHtLl7i34oUeqmSlHHniQwmj9DiYx3bDjYw10N8Hltk1uzZ3pyJ
 1UluP0Ep14NKZUcmF0SZFqKK8yI8cW/WrDKqUilpfJC8jOzerEPMcM19A
 2I58vj0vxYDT49H6gG1aL9ewE/Bwtu+faQni9dqVJxj4fyqwqZ/ttyyDY
 T7WK5D1e6wtD291Yb7P0E6VKUBt34xmy6ShCsjDtJtCo77J3NGfiWNz2W
 Dgu8iQxper9W/J72gVDFqU7FUOl8DWaLJpddkSj7APMga1MLhZmNzG0nf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="290154802"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="290154802"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:12:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="692519249"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="692519249"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:12:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221004144014.6199-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221004144014.6199-1-ville.syrjala@linux.intel.com>
Date: Tue, 04 Oct 2022 18:12:01 +0300
Message-ID: <87r0znsjwe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915: Try not to screw up the pps
 during panel probe
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

On Tue, 04 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> I had to stare at the pps stuff again while dealing with the -stable
> pps regression. While doing that I figured I'd try to make it so we
> don't accidentally use the wrong pps during the panle probe when we
> don't yet have the VBT parsed. So here's an attempt at deducing the
> correct pps from the hardware state.

The approach makes sense. Ack. s8 and

	/* FIXME not the best place */
	connector->panel.vbt.backlight.controller =3D -1;

not the prettiest things though.

BR,
Jani.


>
> Cc: Animesh Manna <animesh.manna@intel.com>
>
> Ville Syrj=C3=A4l=C3=A4 (2):
>   drm/i915: Generalize the PPS vlv_pipe_check() stuff
>   drm/i915: Try to use the correct power sequencer initially on bxt/glk
>
>  .../gpu/drm/i915/display/intel_connector.c    |   3 +
>  .../drm/i915/display/intel_display_types.h    |   8 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      | 105 ++++++++++++++----
>  3 files changed, 93 insertions(+), 23 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
