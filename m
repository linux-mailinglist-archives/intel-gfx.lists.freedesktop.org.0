Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C802AA0DA
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Nov 2020 00:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A525E6E108;
	Fri,  6 Nov 2020 23:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E74F6E108
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 23:18:37 +0000 (UTC)
IronPort-SDR: 9D2GTfECNMqawx9nnuKXesr8AfjyqsBqE8RQ7kknhqDkRluYYHZOSQpywy3U9/hv3pwR8Lkcfj
 tBSGJDBtBsMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="169760338"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="169760338"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 15:18:36 -0800
IronPort-SDR: gMgRaPisoe5+udhamDZXpuFq+lewOAWCwJgbLvGjvELPcRQLski53vTTacPZe+/xkJgiyvbu12
 UhXQ8iEaPZew==
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="364842343"
Received: from yoshidam-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.185.223])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 15:18:36 -0800
Date: Fri, 6 Nov 2020 15:18:35 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201106231835.uzb2wqwamheknvio@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
 <20201106225531.920641-5-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106225531.920641-5-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/display: Do not set any power
 wells when there is no display
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 06, 2020 at 02:55:28PM -0800, Lucas De Marchi wrote:
>From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>
>Power wells are only part of display block and not necessary when
>we don't have display.
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_power.c | 5 +++++
> 1 file changed, 5 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 689922480661..19a3c93c5489 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -4567,6 +4567,11 @@ __set_power_wells(struct i915_power_domains *power_=
domains,
> 	int power_well_count =3D 0;
> 	int i, plt_idx =3D 0;
>
>+	if (!HAS_DISPLAY(i915)) {
>+		power_domains->power_well_count =3D 0;
>+		return 0;
>+	}

so I sent this to get some discussion going, but I think this is out of
place.

__set_power_wells() is ultimately called only by
intel_power_domains_init()

 From that function, I think we may want to initialize
power_domains->lock to make the calls outside display/ to work,
but that should be it.  We could just have this check and return on top
of intel_power_domains_init().

Lucas De Marchi

>+
> 	for (i =3D 0; i < power_well_descs_sz; i++)
> 		if (!(BIT_ULL(power_well_descs[i].id) & skip_mask))
> 			power_well_count++;
>-- =

>2.29.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
