Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A08AF8C9A77
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 11:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0330210E1DA;
	Mon, 20 May 2024 09:37:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HbeIOzYJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585DE10E1DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 09:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716197869; x=1747733869;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TO2fbtipe0iZsNnr9GRdgJ96rP22hE0kMsrH2ZkwUy0=;
 b=HbeIOzYJYDKjwq0USQ20B8WUIwR4M24Xf+QB8IX1f9Mzn47onP7kLjvM
 /VjRT/HORf2b1iYKkY65i3gxbPwyJbmcMB0woTpfino/01l1QRdH4TPZ0
 dMtzxB8SFq8q4Pa4ysdpinch4vhJ5uTu4TeXmr19l1n+YMjP3R8Bhfr5G
 xqGxe2cw+sXvFmddPZBRjfL9aYUNJFixOSDFcfdG0alhSzIZ3tMSxWIEG
 HxwsiFM3d5opdKPDiB/qMnq9ZQ0K6PlI58QheSpg2y0p4P9ZITLsTstiK
 8cKZlsJgCSQWhLlTqi7u4oH4/pBlKM8URVBhDCc3lEkGSFVXa8W0vVDin A==;
X-CSE-ConnectionGUID: OLANfxO0R32xwOcv3RASIw==
X-CSE-MsgGUID: L+lfy/pzRgKGkmiKIt5pWQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="23729159"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="23729159"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:37:48 -0700
X-CSE-ConnectionGUID: Y8XOM9evR/mivIDxl9VCqg==
X-CSE-MsgGUID: FdLlqINOSG2yvRnxyy+Z2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="32334010"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:37:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 04/13] drm/i915: Simplify PIPESRC_ERLY_TPT definition
In-Reply-To: <8734qcvnak.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-5-ville.syrjala@linux.intel.com>
 <8734qcvnak.fsf@intel.com>
Date: Mon, 20 May 2024 12:37:42 +0300
Message-ID: <87zfsku8m1.fsf@intel.com>
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

On Mon, 20 May 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> PIPESRC_ERLY_TPT is a pipe register, and it lives in the 0x70000 range.
>> so using _MMIO_TRANS2() for it is not really correct. Also since this
>> is a pipe register, and not present on CHV, the registers will be
>> equally spaced out, so we can use the simpler _MMIO_PIPE() instead
>> of _MMIO_PIPE2().
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Side note, while reviewing this I found this monstrosity:

static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
					      struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);

	if (!dev_priv->display.params.enable_psr2_sel_fetch &&
	    intel_dp->psr.debug !=3D I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
		drm_dbg_kms(&dev_priv->drm,
			    "PSR2 sel fetch not enabled, disabled by parameter\n");
		return false;
	}

	if (crtc_state->uapi.async_flip) {
		drm_dbg_kms(&dev_priv->drm,
			    "PSR2 sel fetch not enabled, async flip enabled\n");
		return false;
	}

	return crtc_state->enable_psr2_sel_fetch =3D true;
	^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
}

Judging by name, a predicate function to check if config is valid,
actually modifies the config in what looks like a typoed return
statement. Ugh.

BR,
Jani.


--=20
Jani Nikula, Intel
