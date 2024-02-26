Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 698DD867F51
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 18:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7FB810E677;
	Mon, 26 Feb 2024 17:51:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ThONEYwB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9048810E677
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 17:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708969905; x=1740505905;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=b4QjFR0WlnykqW6nw6PTeHh4EMxMtl5K+tN2c1xwjhI=;
 b=ThONEYwBYXHNv3fH0aWZMK5Xw6Tg50R26x50Z9CIgvYmhd43y7GEpApZ
 WhkiSAJV4rs92tKpF1Wm8e1HmxXBJqIzdB7aBf+uAT8vKHxJSzsRuKfUA
 Ex3HuPE8k4V/u2AqUjYf5fLCV9VTV/eQVcKDsAx14g8655K19xajKtqtG
 FnuutHCkEatFjL26Sri6mZdP2CBHFcQZ9huSbKr3gzeC8pzTCpSY8S9+X
 fXhb4s3QBO6lMy+UmYw/SYHKYPXEHS7ojJlvaiTn0z/gVyxJLBTSaaRFw
 Hji2HgCd78qcbg386uTqTjWEYJrJ+TGmVQQh11aAiwFeb+qp7N0ZnkCh5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3119712"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3119712"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:51:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="11485368"
Received: from hibeid-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.254])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:51:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Jouni
 =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 1/5] drm/i915/display: Make intel_dp_aux_fw_sync_len
 available for PSR code
In-Reply-To: <20240222115728.3371478-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240222115728.3371478-1-jouni.hogander@intel.com>
 <20240222115728.3371478-2-jouni.hogander@intel.com>
Date: Mon, 26 Feb 2024 19:51:43 +0200
Message-ID: <87zfvnktao.fsf@intel.com>
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

On Thu, 22 Feb 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> ALPM AUX-Wake fast wake sync pulse count is needed by PSR to calculate IO
> wake and fast wake lines. Convert intel_dp_aux_fw_sync_len as non-static
> to make it available for PSR code. u8 is enough for fw sync pulse length.

"u8 is enough" is not a good enough reason to use u8. Or any unsigned
type.

Please use int unless you have a reason not to.

BR,
Jani.

>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_dp_aux.h | 1 +
>  2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 4f4a0e3b3114..7a5cfd77d43b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -143,10 +143,10 @@ static int intel_dp_aux_sync_len(void)
>  	return precharge + preamble;
>  }
>=20=20
> -static int intel_dp_aux_fw_sync_len(void)
> +u8 intel_dp_aux_fw_sync_len(void)
>  {
> -	int precharge =3D 10; /* 10-16 */
> -	int preamble =3D 8;
> +	u8 precharge =3D 10; /* 10-16 */
> +	u8 preamble =3D 8;
>=20=20
>  	return precharge + preamble;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.h
> index 8447f3e601fe..8e6a62abf01a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> @@ -20,5 +20,6 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encod=
er);
>=20=20
>  void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
>  u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
> +u8 intel_dp_aux_fw_sync_len(void);
>=20=20
>  #endif /* __INTEL_DP_AUX_H__ */

--=20
Jani Nikula, Intel
