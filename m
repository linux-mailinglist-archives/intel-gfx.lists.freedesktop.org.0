Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC58835F3D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 11:14:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D36C810EC65;
	Mon, 22 Jan 2024 10:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC00010EC64
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jan 2024 10:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705918439; x=1737454439;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lxt0nqOHpOFxV5CSNBLDlZ66CkiXEBcSAswjdjHD1g8=;
 b=hkijV5QgDHGEPheUy7aVZouJmPt+pDPsONQiss5yw9GQSZH5iqRM3I1y
 l596yN27IAbJQiluX1pdmOPZZY9iy126me2LhlSCc/v3sZSSdhbtfRKyk
 wAFFcx/qIKtGNvWRUf7Cd+9v7UIwsx3moyOLQXwAioFQJX72UafmVhg5P
 yaTB2prrN0k47n0AaMtNxrxWNdVBMA7Mf3yaGJg/00d4ATW9VP5rRDkFE
 ojkQ8c9P4LXsV2lcmSqNfikqC3w2Wkmg84bW+44eWNK4MZ/subT+hfQ1J
 JbYujoIzYB5VCoBIHr/4dqAblj83/qos2XxZezwvOV7IG0YxkMEu2j4Ov A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10960"; a="1052985"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; 
   d="scan'208";a="1052985"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 02:13:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="33992207"
Received: from mshelego-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.40.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 02:13:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Move display params to
 i915_display_capabilities
In-Reply-To: <20240122070853.5186-1-bhanuprakash.modem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240122070853.5186-1-bhanuprakash.modem@intel.com>
Date: Mon, 22 Jan 2024 12:13:52 +0200
Message-ID: <87ttn5oeu7.fsf@intel.com>
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

On Mon, 22 Jan 2024, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrot=
e:
> Instead of mixing display & non-display stuff together, move
> display parameters i915_display_capabilities debugfs. This patch
> will also drops unnecessary locking.

The locking removal could've been a separate patch. *shrug*

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> V2: - Avoid multiple copies (Jani)
>     - Drop locking (Jani)
>     - Update commit msg (Bhanu)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
>  drivers/gpu/drm/i915/i915_debugfs.c                  | 3 ---
>  2 files changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 6f2d13c8ccf7..90dc973ffb6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -625,6 +625,8 @@ static int i915_display_capabilities(struct seq_file =
*m, void *unused)
>  	struct drm_i915_private *i915 =3D node_to_i915(m->private);
>  	struct drm_printer p =3D drm_seq_file_printer(m);
>=20=20
> +	intel_display_params_dump(i915, &p);
> +
>  	intel_display_device_info_print(DISPLAY_INFO(i915),
>  					DISPLAY_RUNTIME_INFO(i915), &p);
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 990eaa029d9c..0461327d3f82 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -74,10 +74,7 @@ static int i915_capabilities(struct seq_file *m, void =
*data)
>  	intel_gt_info_print(&to_gt(i915)->info, &p);
>  	intel_driver_caps_print(&i915->caps, &p);
>=20=20
> -	kernel_param_lock(THIS_MODULE);
>  	i915_params_dump(&i915->params, &p);
> -	intel_display_params_dump(i915, &p);
> -	kernel_param_unlock(THIS_MODULE);
>=20=20
>  	return 0;
>  }

--=20
Jani Nikula, Intel
