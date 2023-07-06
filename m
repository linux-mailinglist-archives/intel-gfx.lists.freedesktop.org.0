Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F359749637
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 09:20:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C84B910E437;
	Thu,  6 Jul 2023 07:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DF5910E437
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 07:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688628014; x=1720164014;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=TPfqdGT9hczCXZnvPDg/xvDC/g7bbkuCi03MWewOOkk=;
 b=EyGDExvEwqHEfrKxn7vAW1E/3/rbTAZaX8pactmtanSdRS9CCSEsCO9C
 rBPB2gEdRuq7tGpn7AAO1iQDeLQ0pJnzKoZzAYGmMMVrhWVeHZ0gyfQ/X
 KGy/UY6ukY/1bTwv9bhww+ZH4Bm5SaRKd7/5AVKVZEEoe83yR+BhHH+sp
 JeGAFMCdFPGwdF4cST0xjNuuNMfT//7pSdHNAYQz2zPpCBPthd7nboOQe
 YsU7yxiuIQ9Q2Lpd5pM6pMRsk786B2syNMA8S0RIP+nV4Ieq76kqppDUm
 hiwUPIElJJLYT3Tn6jlocJh5btzvjFZ/XJzQkeO62gsoNvldUGEEvQiSi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366102931"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="366102931"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 00:20:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="809526111"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="809526111"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 00:20:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-2-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 10:20:09 +0300
Message-ID: <87o7kpzety.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/sdvo: Issue SetTargetOutput
 prior ot GetAttachedDisplays
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
> I have at least one SDVO device (some Lenovo DVI-I ADD2 card,
> based on Conexant CX25904) where GetAttachedDisplays returns
> success but fails to report any attached displays unless wet

*we

Also s/ot/to/ in subject.

> precede the command with a SetTargetOutput. Make it so.
>
> I wasn't able to spot anything in the SDVO spec stating that
> this should be necessary, but real world wins over spec.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 8298a86d1334..9ac4c0b6055b 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2135,6 +2135,10 @@ intel_sdvo_detect(struct drm_connector *connector,=
 bool force)
>  	if (!INTEL_DISPLAY_ENABLED(i915))
>  		return connector_status_disconnected;
>=20=20
> +	if (!intel_sdvo_set_target_output(intel_sdvo,
> +					  intel_sdvo_connector->output_flag))
> +		return connector_status_unknown;
> +
>  	if (!intel_sdvo_get_value(intel_sdvo,
>  				  SDVO_CMD_GET_ATTACHED_DISPLAYS,
>  				  &response, 2))

--=20
Jani Nikula, Intel Open Source Graphics Center
