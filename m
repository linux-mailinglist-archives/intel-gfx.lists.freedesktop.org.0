Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE87A944B97
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 14:43:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D940210E950;
	Thu,  1 Aug 2024 12:43:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FMjakEwW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7075810E94B
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 12:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722516200; x=1754052200;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=G8/kVj0Iwy9ezDW5Z7UGQ2w7iFZyppVgb6oLAEuqrKo=;
 b=FMjakEwWyf5bcPr7PVveGjScQplYk8x3qbmIw9HD1Ls0CGJ0prPzxSak
 06aXy9tGXavAt1ZJwtswwXMf8IiSIAhsSmxu4csUBmzQoPR6eZX6eBBSO
 V1LIu8mkejlbfb755S9aCu8puSRP4NExf7WfLKxlIuk3R0Se3kAABfnxk
 FZW7qOPJnJ9yRJ4h6qNPhjMtZX42cLd3NhSeWygv7o5MPCA8OAO4q73dz
 39owE1j/lZf9f2dO7cWfynlrj3z4z4s4qO9xpVFkSW23sLOq0liBGEycO
 BleeY54Fe/YMnoMWjKL8XeCpnnl1w+MHPYAP43t1pNs3O85gPNOhZPXmJ Q==;
X-CSE-ConnectionGUID: +8hOElumQgq6Ivk7UiHwSg==
X-CSE-MsgGUID: MI8U7K3YSsGWockH7lNSig==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="31615654"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="31615654"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 05:43:19 -0700
X-CSE-ConnectionGUID: w5IysnRbS8m8wCozwxAsNg==
X-CSE-MsgGUID: uCwSbhYrTYeG4x3ewxE0ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="85641757"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 05:43:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>
Subject: Re: [PATCH] drm/i915/display: Fix lfp_vbt_mode memory leak
In-Reply-To: <20240731203648.165048-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240731203648.165048-1-jose.souza@intel.com>
Date: Thu, 01 Aug 2024 15:43:13 +0300
Message-ID: <87ttg4v2fy.fsf@intel.com>
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

On Wed, 31 Jul 2024, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> In case anything in intel_edp_init_connector() after
> intel_bios_init_panel_early() causes connector initialization to fail,
> it leaks lfp_vbt_mode allocated in:
> intel_bios_init_panel_early()
> 	intel_bios_init_panel()
> 		parse_lfp_data()
> 			parse_lfp_panel_dtd()
> 				panel_fixed_mode =3D kzalloc();
> 				panel->vbt.lfp_vbt_mode =3D panel_fixed_mode;
>
> So here adding intel_bios_fini_panel() to the error path to free
> this memory.

It's kind of correct, but also kind of wrong...

The error path also leaks connector->panel.fixed_modes. Should maybe
call intel_panel_fini(). But it's really awkward how parts of the panel
structure are initialized here and there, and not a whole lot happens at
intel_panel_init().

BR,
Jani.

>
> root@DUT147LNL:/home/gta# more /sys/kernel/debug/kmemleak
> unreferenced object 0xffff88811832da00 (size 128):
>   comm "modprobe", pid 1134, jiffies 4294792711
>   hex dump (first 32 bytes):
>     e8 fd 00 00 00 04 18 04 a0 04 40 05 00 00 00 03  ..........@.....
>     03 03 09 03 26 03 00 00 0a 00 00 00 00 00 00 00  ....&...........
>   backtrace (crc 7448f6b4):
>     [<ffffffff812d9db0>] __kmalloc_cache_noprof+0x270/0x330
>     [<ffffffffa038e56b>] intel_bios_init_panel+0x188b/0x1c70 [xe]
>     [<ffffffffa03e1594>] intel_dp_init_connector+0x544/0xf00 [xe]
>     [<ffffffffa03b1afb>] intel_ddi_init+0xb5b/0xf10 [xe]
>     [<ffffffffa039086c>] intel_bios_for_each_encoder+0x2c/0x40 [xe]
>     [<ffffffffa03c25cf>] intel_setup_outputs+0x1ff/0x470 [xe]
>     [<ffffffffa03c4b63>] intel_display_driver_probe_nogem+0x133/0x1d0 [xe]
>     [<ffffffffa037b659>] xe_display_init_noaccel+0x19/0x60 [xe]
>     [<ffffffffa02e19f8>] xe_device_probe+0x5c8/0x720 [xe]
>     [<ffffffffa032a627>] xe_pci_probe+0x7b7/0xd30 [xe]
>     [<ffffffff8172d903>] pci_device_probe+0xa3/0x170
>     [<ffffffff818868a0>] really_probe+0xd0/0x320
>     [<ffffffff81886b63>] __driver_probe_device+0x73/0x110
>     [<ffffffff81886c1a>] driver_probe_device+0x1a/0x90
>     [<ffffffff81886e2a>] __driver_attach+0xaa/0x1b0
>     [<ffffffff81884685>] bus_for_each_dev+0x75/0xc0
>
> (gdb) list *(intel_bios_init_panel+0x188b)
> 0xb75ab is in intel_bios_init_panel (drivers/gpu/drm/i915/display/intel_b=
ios.c:849).
> 844	        panel_dvo_timing =3D get_lfp_dvo_timing(lfp_data,
> 845			                                              lfp_data_ptrs,
> 846			                                              panel_type);
> 847
> 848	        panel_fixed_mode =3D kzalloc(sizeof(*panel_fixed_mode), GFP_K=
ERNEL);
> 849	        if (!panel_fixed_mode)
> 850		                return;
> 851
> 852	        fill_detail_timing_data(i915, panel_fixed_mode, panel_dvo_tim=
ing);
> 853
>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 09789d62001f7..bd644cc0336bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6764,6 +6764,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	return true;
>=20=20
>  out_vdd_off:
> +	intel_bios_fini_panel(&intel_connector->panel);
>  	intel_pps_vdd_off_sync(intel_dp);
>=20=20
>  	return false;

--=20
Jani Nikula, Intel
