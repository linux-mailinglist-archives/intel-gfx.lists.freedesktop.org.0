Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 864D87497A8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E31E88A3E;
	Thu,  6 Jul 2023 08:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD9710E48D
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688633152; x=1720169152;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=TOkRvJlV7OdsLglQEPFbyVSFMw8SVGVTDn1TEZEQn4M=;
 b=Q78XhE/wFyq/lewlDUs3D08L9TDgFzt9ArwlZBzF2YtrIioxch6EaG1Y
 zdvF5FLCqRlwrt3Cgm7dv2JroStXOwq8d3zcilXIZBH6LeZCXlyPoropU
 ILUG8dHrb0IbhlHZgJobKQ1cE+mhhi1AsDZ3AqyxrVfh8XECGPCbY6ubO
 ln4ULITmSbI+J+TpF09r97iMFVKbrScZ2+iiKM7OSi2euT4BgbgQfPDJg
 5btL6QPhLhZgVXFacwzVwS/aAIE5cd4MtF5YB4DdPFJSJo9EGay3GX8wc
 TH6zBBjLABdvWPsyCucBFHh3Z50seBEJ6p8qZH8SKpN7ZO+/03M6H4QTD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="343878426"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="343878426"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:45:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="864024740"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="864024740"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:45:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:45:47 +0300
Message-ID: <87jzvdxwas.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/13] drm/i915/sdvo: DDC rework and fixes
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

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> I have plans to switch the whole driver over to using
> drm_connector_init_with_ddc(), and thus populate the
> sysfs "ddc" consistently. The biggest hurdle is the=20
> SDVO DDC handling, so start by cleaning that up.

I support the goal of moving towards drm_connector_init_with_ddc(), and
after that, to drm_edid_read() where applicable.

I admit to being a notch less diligent in reviewing all the details of
legacy encoder code, but there are no obvious mistakes here that I could
spot, and overall it makes sense.

Thanks,
Jani.


>
> I also found some other issues with the SDVO code so
> some additional fixes are also included.
>
> Ville Syrj=C3=A4l=C3=A4 (13):
>   drm/i915/sdvo: Issue SetTargetOutput prior ot GetAttachedDisplays
>   drm/i915/sdvo: Protect macro args
>   drm/i915/sdvo: s/sdvo_inputs_mask/sdvo_num_inputs/
>   drm/i915: Don't warn about zero N/P in *_calc_dpll_params()
>   drm/i915: Fully populate crtc_state->dpll
>   drm/i915/sdvo: Pick the TV dotclock from adjusted_mode
>   drm/i915/sdvo: Fail gracefully if the TV dotclock is out of range
>   drm/i915/sdvo: Nuke attached_output tracking
>   drm/i915/sdvo: Initialize the encoder ealier
>   drm/i915/sdvo: Nuke the duplicate sdvo->port
>   drm/i915/sdvo: Get rid of the per-connector i2c symlink
>   drm/i915/sdvo: Rework DDC bus handling
>   drm/i915/sdvo: Print out the i2c pin and slave address
>
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  54 ++-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     | 357 +++++++++---------
>  .../gpu/drm/i915/display/intel_sdvo_regs.h    |   2 +-
>  3 files changed, 219 insertions(+), 194 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
