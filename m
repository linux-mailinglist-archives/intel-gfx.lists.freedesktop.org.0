Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3265CBFB23E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 11:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F42E10E71E;
	Wed, 22 Oct 2025 09:22:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ip/JV+0x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BDE110E71E;
 Wed, 22 Oct 2025 09:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761124964; x=1792660964;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=VlHNLHQcwK7Fb6e4bzBHo7EnDmWawaSWogUPEsvHra8=;
 b=ip/JV+0xwLcaSEDQNB0pFH8p3yOPu/yve7lyZnYSnq8amHLO/uQ5+ied
 GWCHfFZG+jHR4GKtwWXGp9ugVAfHW2v8NdrYGk/ozTQbXVpzUmCdmXfFm
 qldv5ObSv7HXKINUFCOAnmSkkKcim5Nz4xQd496fCwAyVtKjZiuGu0Ph7
 NJY7pFttSagljjpVihXmP74V/DATQYoTXc3z/ZxUaItSzGrxEcBWe7A/U
 iaDMgcFbTQ0fx+ZBTj9yy3jb4B/tKGW76Lhh1qemd2uS6pPNBJJCaJa+u
 QrFD675GdGwhvv6l9wIVDMjdg9ASSPI7DDj2RdM9kbCnsobQBesHbxI+e Q==;
X-CSE-ConnectionGUID: uwx9uYvSQIiPacsgminaUA==
X-CSE-MsgGUID: H+0az3w2TRuukO04W7MYxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67131608"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="67131608"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:22:44 -0700
X-CSE-ConnectionGUID: 2MJjR2oCT7K/L2P1JEPa0Q==
X-CSE-MsgGUID: +oTlDaSFQNOXNHSaWIEh7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="184226766"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:22:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 2/6] drm/{i915, xe}/display: Add display runtime pm
 parent interface
In-Reply-To: <20251022085548.876150-3-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022085548.876150-1-jouni.hogander@intel.com>
 <20251022085548.876150-3-jouni.hogander@intel.com>
Date: Wed, 22 Oct 2025 12:22:39 +0300
Message-ID: <4aba6377fa0f65d0f93e34f5539e58cfdbae4947@intel.com>
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

On Wed, 22 Oct 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> We have differing implementations for display runtime pm in i915 and xe
> drivers. Add struct of function pointers into display_parent_interface
> which will contain used implementation of runtime pm.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  include/drm/intel/display_parent_interface.h | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> index 28c976815327a..7ad0a27d503c8 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -8,6 +8,22 @@
>=20=20
>  struct drm_device;
>=20=20
> +struct intel_display_rpm {

I'm wondering if it would better emphasize the point if we named these
structs with _interface suffix.

> +	struct ref_tracker *(*get)(const struct drm_device *drm);

I think we should have the struct ref_tracker forward declaration above.

> +	struct ref_tracker *(*get_raw)(const struct drm_device *drm);
> +	struct ref_tracker *(*get_if_in_use)(const struct drm_device *drm);
> +	struct ref_tracker *(*get_noresume)(const struct drm_device *drm);
> +
> +	void (*put)(const struct drm_device *drm, struct ref_tracker *wakeref);
> +	void (*put_raw)(const struct drm_device *drm, struct ref_tracker *waker=
ef);
> +	void (*put_unchecked)(const struct drm_device *drm);
> +
> +	bool (*suspended)(const struct drm_device *drm);
> +	void (*assert_held)(const struct drm_device *drm);
> +	void (*assert_block)(const struct drm_device *drm);
> +	void (*assert_unblock)(const struct drm_device *drm);
> +};
> +
>  /**
>   * struct intel_display_parent_interface - services parent driver provid=
es to display
>   *
> @@ -21,6 +37,8 @@ struct drm_device;
>   * check the optional pointers.
>   */
>  struct intel_display_parent_interface {
> +	/* Runtime PM functions */

I think these should be kernel-doc comments, i.e. /** @rpm: ... */. They
can still be one-liners.

BR,
Jani.

> +	const struct intel_display_rpm *rpm;
>  };
>=20=20
>  #endif

--=20
Jani Nikula, Intel
