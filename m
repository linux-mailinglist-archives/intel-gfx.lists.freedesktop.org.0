Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1133F984E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 12:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBE66E91B;
	Fri, 27 Aug 2021 10:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A006E91B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 10:54:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="198179118"
X-IronPort-AV: E=Sophos;i="5.84,356,1620716400"; d="scan'208";a="198179118"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 03:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,356,1620716400"; d="scan'208";a="508703643"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 27 Aug 2021 03:54:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 27 Aug 2021 03:54:38 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 27 Aug 2021 03:54:37 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Fri, 27 Aug 2021 16:24:35 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Daniel Vetter
 <daniel.vetter@ffwll.ch>, David Weinehall <david.weinehall@linux.intel.com>,
 "Tangudu, Tilak" <tilak.tangudu@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915/runtime_pm: Reduce autosuspend
 delay to 1s.
Thread-Index: AQHXmcUU9CekhjQW6EWlGE0uK+oEXauHLrEg
Date: Fri, 27 Aug 2021 10:54:35 +0000
Message-ID: <a8a18298e46c43a49da7369fba92ca99@intel.com>
References: <20210825152233.2151037-1-rodrigo.vivi@intel.com>
 <20210825152233.2151037-4-rodrigo.vivi@intel.com>
In-Reply-To: <20210825152233.2151037-4-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/runtime_pm: Reduce autosuspend
 delay to 1s.
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ro=
drigo
> Vivi
> Sent: Wednesday, August 25, 2021 8:53 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Daniel Vetter
> <daniel.vetter@ffwll.ch>; David Weinehall <david.weinehall@linux.intel.co=
m>;
> Tangudu, Tilak <tilak.tangudu@intel.com>
> Subject: [Intel-gfx] [PATCH 4/4] drm/i915/runtime_pm: Reduce autosuspend
> delay to 1s.
>=20
> Let's try to be more aggressive on the power savings, but not as much as =
0.1s
> that caused us some regression in the past.
In IGT we are already using 0 second as auto suspend delay.
Looks good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>

>=20
> Also let's have this in a separated patch so that can be bisected and inc=
reased
> back (or reverted) as needed.
>=20
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: David Weinehall <david.weinehall@linux.intel.com>
> Cc: Tilak Tangudu <tilak.tangudu@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 8f052bd4f58c..3244ac85d13c 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -585,7 +585,7 @@ void intel_runtime_pm_enable(struct intel_runtime_pm
> *rpm)
>  	 */
>  	dev_pm_set_driver_flags(kdev, DPM_FLAG_NO_DIRECT_COMPLETE);
>=20
> -	pm_runtime_set_autosuspend_delay(kdev, 10000); /* 10s */
> +	pm_runtime_set_autosuspend_delay(kdev, 1000); /* 1s */
>  	pm_runtime_mark_last_busy(kdev);
>=20
>  	/*
> --
> 2.31.1

