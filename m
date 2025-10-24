Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC343C063D0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 14:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B14210EA65;
	Fri, 24 Oct 2025 12:25:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QoVWW6bi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9F8410E1E9;
 Fri, 24 Oct 2025 12:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761308737; x=1792844737;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CRcTRfvaF6ULYKJiLZGWZnQ67J3AWZnzhypF15GlphI=;
 b=QoVWW6biRfWtVLYkijhdUUGG/llJ3NpHwifisf6iDwe60Wok7qDIkHE3
 oNc/USgBS48t61/0Ao0Pdku5DMPDyEnDpq9pBXJKafWrCXhdAt1aGSHRz
 6OkOmJHvQEEKSxKO3nY+DKurRqz9DsnBKBNKaaBkaO3MBHNx9+9RTPXC7
 y05nPfN9IRnMPiweTdJddlp3cf6vwcx4vVHT5AsT+7CNJ4fE5emKmuTUR
 w5NC8W8xuWgcz+zrzMa5lhXO9TydVGDrOm/OfHN4QZuLNx7K389xgoVlB
 1emNgMWxQ4SK2hl3NvbsZfoaomFGYQxD43pm6uNmoa985lWHWmjjHaSmT w==;
X-CSE-ConnectionGUID: odMupon5RQ22RhKrcM6avQ==
X-CSE-MsgGUID: yKPkuy4zSZ2wqqcF98LqiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73779377"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="73779377"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:25:37 -0700
X-CSE-ConnectionGUID: VIyq8Fz1RKKKsSHXdZU3gQ==
X-CSE-MsgGUID: jssv4kYWTMCho2e/uedOTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="184901139"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:25:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 2/6] drm/{i915,xe}/display: Add display runtime pm
 parent interface
In-Reply-To: <20251024093113.1119070-3-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251024093113.1119070-1-jouni.hogander@intel.com>
 <20251024093113.1119070-3-jouni.hogander@intel.com>
Date: Fri, 24 Oct 2025 15:25:31 +0300
Message-ID: <4f39d5a06740e33193f28945c5cab5c330c84bf7@intel.com>
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

On Fri, 24 Oct 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> We have differing implementations for display runtime pm in i915 and xe
> drivers. Add struct of function pointers into display_parent_interface
> which will contain used implementation of runtime pm.
>
> v2:
>   - add _interface suffix to rpm function pointer struct
>   - add struct ref_tracker forward declaration
>   - use kernel-doc comments
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  include/drm/intel/display_parent_interface.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> index 28c976815327a..26bedc360044d 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -7,6 +7,23 @@
>  #include <linux/types.h>
>=20=20
>  struct drm_device;
> +struct ref_tracker;
> +
> +struct intel_display_rpm_interface {
> +	struct ref_tracker *(*get)(const struct drm_device *drm);
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
>=20=20
>  /**
>   * struct intel_display_parent_interface - services parent driver provid=
es to display
> @@ -21,6 +38,8 @@ struct drm_device;
>   * check the optional pointers.
>   */
>  struct intel_display_parent_interface {
> +	/** @rpm: Runtime PM functions */
> +	const struct intel_display_rpm_interface *rpm;
>  };
>=20=20
>  #endif

--=20
Jani Nikula, Intel
