Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0646C679CD7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 16:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FC510E6A0;
	Tue, 24 Jan 2023 15:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE7010E69B
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 15:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674572469; x=1706108469;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DUW+5Ax7aszZDfE5chfaCYqpKxv0o5vQ3FwiOyFn8QM=;
 b=bS1pe9Q9++e57Z9h3VX9+thi5eI7oJYAgKGJNKkPAerZBeA9hZaxslmV
 MT8ZZ/xHwFvXxSVJjwIXL0kDrJweVJAJ+1X4DaKaoJPQsrQDj7ZkFFKCD
 Soe4icb56e3Ylu401rlfiroEu/tGqxux99aq/3RAjUY77EGkSWzDGwynx
 TZIZ5U8iO+laDjnpafZCG+w+qVii37HfzM8Kt7gDU41ez4IlP88nmUAdF
 sfBfjnDGqQtUQcZFuWE2oSvRU4qmar8ykZn9ptkafYxAWA0xYC+RK2X4S
 GO9byW1tw0QlyWpbk7uZfc9i1nCe1U9pwfAeJKOJvridr5ftrDzw/mB9u Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="324007085"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="324007085"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 07:00:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="804635090"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="804635090"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.57.197])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 07:00:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
Date: Tue, 24 Jan 2023 17:00:41 +0200
Message-ID: <87edrk6kpy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 00/13] drm/i915: ELD precompute and
 readout
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

On Tue, 24 Jan 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rebase of the ELD precompute/readout series,
> for CI mainly. No other changes since v2.

Seems to be all Reviewed-by already, but quickly eyeballed through it
again. Ack.


>
> Ville Syrj=C3=A4l=C3=A4 (13):
>   drm/i915/audio: Don't program the hardware ELD buffer on ilk+
>   drm/i915/audio: Don't program the hardware ELD buffer on hsw+
>   drm/i915/audio: Introduce a struct for the acomp audio state
>   drm/i915/audio: Precompute the ELD
>   drm/i915/audio: Don't enable audio with bogus ELD
>   drm/i915/audio: Hardware ELD readout
>   drm/i915/sdvo: Precompute the ELD
>   drm/i915/sdvo: Only use "presence detect" for has_audio readout
>   drm/i915/sdvo: Do ELD hardware readout
>   drm/i915/audio: Hook up ELD into the state checker
>   drm/i915/audio: Include ELD in the state dump
>   drm/i915/audio: s/ilk/ibx/
>   drm/i915/audio: Clean up the PCH type checks
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +
>  drivers/gpu/drm/i915/display/intel_audio.c    | 317 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_audio.h    |   7 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |  17 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  43 +++
>  .../gpu/drm/i915/display/intel_display_core.h |   9 +-
>  .../drm/i915/display/intel_display_types.h    |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   4 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  43 ++-
>  12 files changed, 288 insertions(+), 166 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
