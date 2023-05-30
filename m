Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7AD7159AD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 11:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3531810E126;
	Tue, 30 May 2023 09:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9565310E126
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 09:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685438094; x=1716974094;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=W+S4sT3PIBmXva7NU/siZmUlE6ebnuAsknjqUF3JHfU=;
 b=AhdO9npC3IThkpB1w8KTxDA2gNkbFnxggGa3uRjV/3NvplFOZnk4W4O2
 dvwkmK2FQnmXGR0XZRpVPsmqPfzIg28R8yNm0mBGVvz3NXk4Qq9OrzUbF
 2KyATyyLjn+FUNZvPSW6LZpzWISoY5niSa3P77aEvx/N7UbGAizzK9Ybb
 RjYHuUJZWbYpZVInBZ/YjjQ4lthGtX0UnozlzBIoUX55YsviScgbO9WSK
 lJOP2eXZ0jtoGUHJpA7XtBgLXX5LGisbmyTiszxMtCaeBjdLb4p/ZSWZL
 7GyZylm7Y+IG8OPh4mlhv/tUyDhm7wj70LQCK3jAa56aAar8Wh48IjvN1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="420620295"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="420620295"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 02:14:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="709571076"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="709571076"
Received: from kleve-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.47.8])
 by fmsmga007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2023 02:14:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230529130028.2193945-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230529130028.2193945-1-jouni.hogander@intel.com>
Date: Tue, 30 May 2023 12:14:49 +0300
Message-ID: <87ilcagoza.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use 18 fast wake fast wake AUX
 sync len
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

On Mon, 29 May 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> HW default for wake sync pulses is 18. 10 precarge and 8 preamble. There =
is
> no reason to change this especially as it is causing problems with certain
> eDP panels.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Fixes: 605f7c731333 ("drm/i915: Fix fast wake AUX sync len")

Due to the cherry-picks I think it's better to reference e1c71f8f9180
("drm/i915: Fix fast wake AUX sync len") which has been backported to
stable. We need this fix to go wherever that's been backported.

What happens if we use cc: stable and this gets backported to a kernel
that does *not* have "drm/i915: Fix fast wake AUX sync len"? Any harm in
that?

BR,
Jani.



> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8475
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 0c27db8ae4f1..197c6e81db14 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -129,7 +129,7 @@ static int intel_dp_aux_sync_len(void)
>=20=20
>  static int intel_dp_aux_fw_sync_len(void)
>  {
> -	int precharge =3D 16; /* 10-16 */
> +	int precharge =3D 10; /* 10-16 */
>  	int preamble =3D 8;
>=20=20
>  	return precharge + preamble;

--=20
Jani Nikula, Intel Open Source Graphics Center
