Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0922A694C0C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 17:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2A110E60A;
	Mon, 13 Feb 2023 16:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61AA610E60A
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 16:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676304635; x=1707840635;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=pwXiBd0PWfcinbvWl5fkgP4DkSImMUvbZswWOXbEChM=;
 b=G5JHeRiZpWZT5E5a2vbwT/ATUW8OiQNTSe6V5/vbpEdhKNq3EDBBy0vK
 3p+CLpA9Q8wUH0V2rIoHWJyovE3LNQMtV/ALWXVw8YUFHt+BE/wqufkux
 n0CkNjZcQFmrnDw1zyfY96rNLRAdB9hJFUJTlmDhdEdG+0yI/BSAhx3pq
 0IKTORjeMq1QIhPOP3BQEOc+Q5G8SoHql/J+ELGiXHR4gTWshAY32FdjJ
 vCSTP2NpBeZuP7BVx5+2TzsIkBMy2r8TqwIMF/51NzMwme4iNs36WIFfO
 HjRjh033wcYN83M1GN40VvyzbNj83ekrpmnSphgjHd/8hczo48ag7Hwgl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="310557682"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="310557682"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:09:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="842811310"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="842811310"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:08:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208015508.24824-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
 <20230208015508.24824-10-ville.syrjala@linux.intel.com>
Date: Mon, 13 Feb 2023 18:08:50 +0200
Message-ID: <87mt5hv97x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Iterate all child devs in
 intel_bios_is_port_present()
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

On Wed, 08 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Instead of consulting vbt.ports[] lets just go through the
> whole child device list to check whether a specific port
> was declared by the VBT or not.

Might want to mention that this does not impact the dupe checking even
if we look at display_devices instead of vbt.ports[].

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index efe33af2259b..1af175b48ae6 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3398,10 +3398,19 @@ bool intel_bios_is_lvds_present(struct drm_i915_p=
rivate *i915, u8 *i2c_pin)
>   */
>  bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port=
 port)
>  {
> +	const struct intel_bios_encoder_data *devdata;
> +
>  	if (WARN_ON(!has_ddi_port_info(i915)))
>  		return true;
>=20=20
> -	return i915->display.vbt.ports[port];
> +	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
> +		const struct child_device_config *child =3D &devdata->child;
> +
> +		if (dvo_port_to_port(i915, child->dvo_port) =3D=3D port)
> +			return true;
> +	}
> +
> +	return false;
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel Open Source Graphics Center
