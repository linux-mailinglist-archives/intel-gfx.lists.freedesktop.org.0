Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AED3687FAB3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 10:29:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF5D10F8F0;
	Tue, 19 Mar 2024 09:29:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nw4xmKI+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 084F010F8F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 09:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710840560; x=1742376560;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uaHVx0ncml+pSnJ9yO/wJZGUIiX71HnsafAiV9LPvZQ=;
 b=Nw4xmKI+SVrQ3SQo72GRPu3I3fy7bwbp8+ZFcLicqjjo0o0T5cmKW8qZ
 tDuo4gvhtfjL8bH8YaEoXnAsoCBFDyphkzIHQ/KQtakB1Lriv0bxLGyWz
 VTX+Y0dynQ+n9c7lZ5oZQHJmwIp08yiP7SsDi6uo/e5+9A2Vu+apHbNkL
 2qFFmPrxQCd8KU1hlOrUgLCML8x+JVg7+jbDpkOWtEfS8R/SwXUK9+Uqd
 kv3j2goDqb0YtB/bI5slxe3TuRZVD1H0aE1ZZmme85eCkrWm2qlgiUdQp
 TU0S9skHOtqOwq6UPPlU708v22tjlpF5OjLpovhR2eVElddn3JoYj6gpa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="9497653"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="9497653"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 02:29:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="18378513"
Received: from rcritchl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.139])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 02:29:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/i915/bios: Tolerate devdata==NULL in
 intel_bios_encoder_supports_dp_dual_mode()
In-Reply-To: <20240319092443.15769-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240319092443.15769-1-ville.syrjala@linux.intel.com>
Date: Tue, 19 Mar 2024 11:29:14 +0200
Message-ID: <87sf0mo9hx.fsf@intel.com>
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

On Tue, 19 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> If we have no VBT, or the VBT didn't declare the encoder
> in question, we won't have the 'devdata' for the encoder.
> Instead of oopsing just bail early.
>
> We won't be able to tell whether the port is DP++ or not,
> but so be it.
>
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10464
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c7841b3eede8..c13a98431a7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3458,6 +3458,9 @@ bool intel_bios_encoder_supports_dp_dual_mode(const=
 struct intel_bios_encoder_da
>  {
>  	const struct child_device_config *child =3D &devdata->child;

The above oopses already.

BR,
Jani.

>=20=20
> +	if (!devdata)
> +		return false;
> +
>  	if (!intel_bios_encoder_supports_dp(devdata) ||
>  	    !intel_bios_encoder_supports_hdmi(devdata))
>  		return false;

--=20
Jani Nikula, Intel
