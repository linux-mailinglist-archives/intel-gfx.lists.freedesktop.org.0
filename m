Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNSbLC0+32mUQwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 09:28:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1205E40165C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 09:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2AC10E690;
	Wed, 15 Apr 2026 07:28:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EbKCg3I6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9DC10E68F;
 Wed, 15 Apr 2026 07:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776238122; x=1807774122;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pfrqQYsloweRJ9qtOi0ZdAHHNsrC+QL5fGsbqMS6bKQ=;
 b=EbKCg3I6sE4E5iunZ0HiG2ly6xTt/AJ0CHMEfcM1NSSr+j9s8PMXG9k4
 ZgwD5GyhRR3z+E5yW0yT4dp2rWjIeLOw+8wUmiyxbBTsJyBOk8KE0cix3
 M6RhahV4IPGlpNU3TOM5ZgRFF8SfNxbTHss36GRbVFTCwpwX1JFjCbrE8
 ZZ7+R+LiSFNOL1Ec7G57ZBb8HxLwRQKQSaGW0lYjQ/GBFhqfU6n6Avhq7
 mq9BzdGxlS47xut/raZr4SEbHKkxO7q9LxzHfeCb8idfEmflfFjH3/lJr
 E8ZEYwBVJ1auB8kknB9NeaGKex1eBw4P1Mmg5ORiyYuFFaXqERtk/3avp Q==;
X-CSE-ConnectionGUID: voOCTbfaSUu+Yw8gY1Zhyg==
X-CSE-MsgGUID: gBcpjyHUSb+ehXAUjoMujQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="76910615"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76910615"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 00:28:41 -0700
X-CSE-ConnectionGUID: Vn3PIj6PRcaYa7FdrNSLFA==
X-CSE-MsgGUID: jw0UzA7WQZOT4K2j0+Kk5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="223840607"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.25])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 00:28:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/psr: Add defininitions for
 INTEL_WA_REGISTER_CAPS DPCD register
In-Reply-To: <20260415054000.400070-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-2-jouni.hogander@intel.com>
Date: Wed, 15 Apr 2026 10:28:35 +0300
Message-ID: <a91669ef2dd6464cc4d73b82a59cc26a54539f42@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 1205E40165C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 15 Apr 2026, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> EDP specification says:
>
> "If either VSC SDP is unable to be transmitted 100 ns before the SU regio=
n,
> the Source device may optionally transmit the VSC SDP during the prior
> video scan line=E2=80=99s HBlank period There is a Intel specific drm dp =
register
> currently containing bits related how TCON can support PSR2 with SDP on
> prior line."
>
> Unfortunately many panels are having problems in implementing this. So
> there is a custom Intel specific DPCD register (INTEL_WA_REGISTER_CAPS) to
> figure out if this is properly implemented on a panel or if panel doesn't
> require that 100 ns delay before the SU region. Here are the definitions =
in
> this custom DPCD address:
>
> 0 =3D Panel doesn't support SDP on prior line
> 1 =3D Panel supports SDP on prior line
> 2 =3D Panel doesn't have 100ns requirement
> 3 =3D Reserved
>
> Add definitions for this new register and it's values into new header
> intel_dpcd.h.
>
> Bspec: 74741
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpcd.h | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dpcd.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpcd.h b/drivers/gpu/drm/=
i915/display/intel_dpcd.h
> new file mode 100644
> index 000000000000..670513ff5552
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dpcd.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2026 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DPCD_H__
> +#define __INTEL_DPCD_H__
> +
> +#define INTEL_WA_REGISTER_CAPS						0x3f0
> +# define INTEL_WA_REGISTER_CAPS_PSR2_EARLYSCANLINE_SDP_SUPPORT_MASK	REG_=
GENMASK(1, 0)
> +# define INTEL_WA_REGISTER_CAPS_FALL_BACK_TO_PSR1			0
> +# define INTEL_WA_REGISTER_CAPS_PSR2_WITH_EARLY_SCANLINE		1
> +# define INTEL_WA_REGISTER_CAPS_PSR2_WITHOUT_EARLY_SCANLINE		2

It does get long, but INTEL_DPCD_ prefix?

> +
> +#endif /* __INTEL_DPCD_H__ */

--=20
Jani Nikula, Intel
