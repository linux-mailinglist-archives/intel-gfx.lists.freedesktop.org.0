Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4648CAABB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 11:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A243210E58B;
	Tue, 21 May 2024 09:25:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SyFZFjfz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B6210E58B;
 Tue, 21 May 2024 09:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716283504; x=1747819504;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PN09u6C3q1uf46OfLBh9m0AIo08QVgpJQx1BaMl3Iyg=;
 b=SyFZFjfzsVxpzA5arGyVWeaCTO7TR8IvN4GlRVB2ElTNYIz7ZF0sQIen
 oNML4iMqq9w2rO6PhFgxNos9CNIPLuaCf+EPAT7sLtMpgJQYtlYc0BAwU
 CNcAMeN0zAARihFhB+maYa1kc5ZzafZT12YhHfggJMCkuhMC/YrUMa4DH
 FLQRCTIN9J3cbflMJAydDkGl+TF4suucmxB0qjRnL+/vWIH+k7HUr2QHS
 b5CXKKw/ZL2DrlaZsZ4S2thf6xCTxepOXzDX4lCjDZ9QQjWQoAAhyld0k
 tyikDo6zu2W8wA3R9ufc3lwLPjzQ8ctka3rus1driXHM6ZuKGRQz3SIt9 A==;
X-CSE-ConnectionGUID: ntggaAPKSx6tiDiK5HO7gA==
X-CSE-MsgGUID: tZUSENOOTKSx048KE6dSQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23865585"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23865585"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 02:25:03 -0700
X-CSE-ConnectionGUID: VAERtQvkRDeNS7n0o+ob1g==
X-CSE-MsgGUID: UoeRpWsYToikuWidLrbHUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="32975062"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 02:25:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/display: Add missing include to intel_vga.c
In-Reply-To: <20240520181814.2392-2-michal.wajdeczko@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
 <20240520181814.2392-2-michal.wajdeczko@intel.com>
Date: Tue, 21 May 2024 12:24:58 +0300
Message-ID: <87y183qzyt.fsf@intel.com>
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

On Mon, 20 May 2024, Michal Wajdeczko <michal.wajdeczko@intel.com> wrote:
> This compilation unit uses udelay() function without including
> it's header file. Fix that to break dependency on other code.
>
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>

Probably won't be an issue to merge this via xe.

Acked-by: Jani Nikula <jani.nikula@intel.com>



> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 4b98833bfa8c..0b5916c15307 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -3,6 +3,7 @@
>   * Copyright =C2=A9 2019 Intel Corporation
>   */
>=20=20
> +#include <linux/delay.h>
>  #include <linux/vgaarb.h>
>=20=20
>  #include <video/vga.h>

--=20
Jani Nikula, Intel
