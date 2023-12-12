Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E4280E43A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 07:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CEF10E574;
	Tue, 12 Dec 2023 06:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4F4310E56D
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 06:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702362205; x=1733898205;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NkXMZ4cFwHqIVjskseTvsE76hoVcceYprx7uGhQDxG0=;
 b=fI8rnWEpWrzqa24cAkAOifhy+evB41tLY1xbdSXGKiB/hn+KyHmz/Xtf
 bjx0qObCtOnO7c6msDtRst5nfUBdppbpu0h/cOVN3Nd+9N18I9O3RYzIz
 0DMezzkHeagOkkRnW2hq9AaHiQ+5WGCO3TscZIeotUY8UShCoyf9/uISS
 Xf63QlPKrWOf3G6oEYYqZ6naP/6gaZGnp6KRExYY8gCW0Lb0ZftjDxj2U
 0tE1+/NsUCwziV5uyVrwYtYWKUXlcPiymEM7Y9EpQXF+dhgKfyORg5J6S
 LvBg/zz1iVLvFnOzUWq0IEpCCa4A+19OlCsWys71VvSuEnv/dyD3RJamP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="16312129"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="16312129"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 22:23:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="21392723"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 22:23:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 22:23:22 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 22:23:21 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 22:23:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JwjzZm9For7knnkODJuyAk+N/SJszEk7s1dSdX0ICwNAGxPD4K6VIRmuESLItGlKnlEOtWh9OqKHLBXvWVzJTjXwInMoqR+tDVTHWMAqbhPIsz41OgNgqesYl8yduVoWqLpc6CErgTyTJv5Ll+5pIskS1FRLAlbywz7K2NLGGcwkPFyMbt2nSVtW74abo4ISuqd/sfsvPOl+fXXkBlaNIrtKuvgG0A2pRuDDq7t2HlBzf9kWR998GQAvCR/NiV3WtIyVTNbIIf5O2Mw7JPYysKUXWBvmkUv+gzelZFQxeqNZpG+k7TIYkISs9mVFpGhrZwd7tzSAWgodLkNujcUC/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mpUmteHqUTzD7RBdQDNUzPcwrmK+zvMyMjq4nwe+Bos=;
 b=OJTbT56M/Ax0eKaKaGhaNI8tF74GAm2+cMP8slb+KxP3/WEEm8I72pRiis7FNkNXjBcW6fSbOhAIu77bPyLsWVNesD7JNsRTC9Pt4Slu69rR4f6tavCeV74utsDcd62cekJUS8cipNjcIxtLivkkVNaJiu0cEjHWAtI3lPieUJj7OW8SOj/a3un3q0mbr0Nn1MVe8XhD/bj0c7zfgs5Chiicfsyn2LPhsSMSridihqygE7zjYVx8oTqN878yBxLRACNsy9s0t00BBYAoRLtHhh5fSW4iGcHQkFzgfinyzAoUdLji5/1mxHUzLDv9lV89Vhnke/6b1SOVx4x1EPN1Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 PH8PR11MB7070.namprd11.prod.outlook.com (2603:10b6:510:216::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Tue, 12 Dec
 2023 06:23:19 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.7068.031; Tue, 12 Dec 2023
 06:23:19 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [Intel-gfx] [v2 2/2] drm/i915/display: Add darkscreen debugfs
 entry under crtc
Thread-Topic: [Intel-gfx] [v2 2/2] drm/i915/display: Add darkscreen debugfs
 entry under crtc
Thread-Index: AQHaCLvdRhVvYLGIokiCo1VxRBpDRbClc9Qw
Date: Tue, 12 Dec 2023 06:23:19 +0000
Message-ID: <DS0PR11MB8740F271166BF2129540614EBA8EA@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231027095336.3059445-1-nemesa.garg@intel.com>
 <20231027095336.3059445-3-nemesa.garg@intel.com>
In-Reply-To: <20231027095336.3059445-3-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|PH8PR11MB7070:EE_
x-ms-office365-filtering-correlation-id: 67e7440b-44bd-4f64-fac5-08dbfadad552
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U6BC5t3mOyZOpdXqX1qMobrayPnVmwrmtL1Uzj5kDmOuGAeYYi57yL1trvWo12fKmjuUFAXZJJ+PPMDVR2e0AsyrsPpUaYa8ZpSebJ9qQ4wgq4/MGOrfFsCm+rNvIHzxIobyzV5m3OKnkUmhThFfKiAhkXvVOy2gtEpEpUNcxdegO1DiZTbhlMwdMt36nhyHO1g25ENYQ5zk5kr3CPgoZWQqmSRKS+rzbrApgEtVWLF6ajYFXH/6wZ8UheQHZcuZlNQhC5PqTGZUvG5zx6mdS2pVpTwBY3y0zZs9eUDpN9eBFtKQqf+nebU4pvIU0w/YyrkXZrnTvTSG2vKQkQg4zv0cCTkQRo734dC9/rNrH/MW+DOpqkLE/i68gvfJIjVyb5JURXBJK5pB6aHZVsOIkwQj7TT80NDtjxsPm2+8hYrUbUhYzeGaXoNtVpo27R8vNn/QDs1eoVDbZTXKp/sCQjYM+X0MLabfPoGjJ10lLZiX7szPP5fxVEz27UcD6r8dkTrss3X1NbthGyZ+LSnIOFEVSvM6QYuNs7d92RWxzbYkSeJ1pWlf60AW4vqDE4AkqB068z8kV0uA/BZ9S5pDJOMW1Iuy/CY299erJPoLoIDMgYzOnC1GqLDFjLI6pOFX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(136003)(376002)(396003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(55016003)(26005)(478600001)(71200400001)(6506007)(7696005)(9686003)(53546011)(82960400001)(38070700009)(38100700002)(122000001)(86362001)(33656002)(41300700001)(2906002)(66946007)(5660300002)(76116006)(66476007)(64756008)(66446008)(83380400001)(52536014)(8676002)(110136005)(66556008)(316002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M80GfrrrBb9SLd8LCO+inr7y/sprNFcSFFRsTzfhywUKHkyiN2qj45qbq3rr?=
 =?us-ascii?Q?jzaUjJBk6YYMQGB8nzGAtLTLWpq+VCN8R9LVwb0uUuCbnGvYnzOIAiOn8TnE?=
 =?us-ascii?Q?kh+yguEHunMlctr10pV7nQC1d9VJ6eH/QIS2zwE5DH55lpdR8XEJYvx0147/?=
 =?us-ascii?Q?kd1aWDNW0g3+XtEqfRKsMxOv2jR3o5RGPnu7yOqqRJSXjJgybaYJO7vo77iL?=
 =?us-ascii?Q?x3kw8mG6/h1ZLNuhIpo4YvIKc8mNNnO9cUlyjpDQjOPVl2D2mFwN0WTADOGi?=
 =?us-ascii?Q?gEV6FsKZ/O2YT5oKQF8HM/7SpaJVJ2B3XOk9/Xrg6S6QMhBA5JITOYswOhB+?=
 =?us-ascii?Q?EOWhCzieTPFly2A/V5ZxS4QyQx79JJTuSf9xDxyvXxHn0JU/yVg6P99fYjKX?=
 =?us-ascii?Q?BmQHnDSbXwF3h4lkneb6NhKrU6CrgzFJu1KBY5x1s2JDCNiYdSlxZer/PFSV?=
 =?us-ascii?Q?Xg58thlWzw7nEdP2IkDrZJAj6jjGP9AsZP1obP4KQXpwAZJ/MCKk53EvsEsI?=
 =?us-ascii?Q?N3T4p9FHZXHEhmYymt1pRMvsI7JbEmMDNhVg5xiDRKIYLYc0gdMyypGzwzpA?=
 =?us-ascii?Q?PHeL8Duks0x0kP+JOBoH3G/22ZZ3sGeaUDBotWba2CjL2JwVaiF63jgnJCq+?=
 =?us-ascii?Q?QiEv8jYMFrRQC172fvQ02xikJ9NBV7A5VCU6ruSQ+tDXcCrLZIEelyqripxR?=
 =?us-ascii?Q?GwAlKhszjiWXtQ/Lzf6Jkydt2IMlv2WqEQVpYRkNLPC8RfPKfIe6WyQEWkvp?=
 =?us-ascii?Q?Pk6yH3WHlyMkDbz0T6lx3IHXeaPd9YdWHIXSi9z6dahCFYyeDQTD0l7M9ZTQ?=
 =?us-ascii?Q?gVgw0tCfpZHqJgkdQ/ExI8uZ3YimNMNC/w2NCWAMupWCe2DmJHJIWx0ZXCAG?=
 =?us-ascii?Q?6p91LzM1B9HISnCaLJDiKaQm99FTCSWtaJZwqpfjsLjUwfWbmEUVE4nF3iC4?=
 =?us-ascii?Q?EoGh4Hwwl1unH03ji7yxKWHUxB0jZm25wU17KLSy/+FVJ7yItVliQalD8DHr?=
 =?us-ascii?Q?+gkndQDm42OFBoIAyy6Z/ehcd0PiIO4WdBAOCppMPOl2nsGp6D0sXNYaD6ls?=
 =?us-ascii?Q?QZbn1ZAMcw/HwtEuS+4/+YJjpN33J4OhMtAKzYuxhPefM5erEqDxlYv6g0Pw?=
 =?us-ascii?Q?OqQau2Tf/P+LLvn7v5DH1usT2ry/yKgmjD2+FEOIECNvkXPnk0edMgoREsGm?=
 =?us-ascii?Q?J/OToVOLa4/YJnJfOXaNq+imvRUqhkcMckwJf5mAkb7HZFPmplYtFUuGsqTI?=
 =?us-ascii?Q?/KaD98orCI3aSyQAAveyqX4sU0w9HP5qKtIEm4R/XQTM2wXwpjyV0rcmQA8p?=
 =?us-ascii?Q?eTjFO/Pw4lLzQQ0YmCAooP9G7ZnMbV7/gG/WEguc9Qe4Stgomm32m/qeKl0W?=
 =?us-ascii?Q?JiRGWXot1RATsZCCY9BFEVuimN7v8FiBxqf3WCvcGXUVMBP87ruxlputzPJi?=
 =?us-ascii?Q?/pa2LgC3P7lhptTBdOFhb2ANtky8hots62qETYCQrLESTBFea24REpxnP1+7?=
 =?us-ascii?Q?sx54BDmcCytDVFefvXETtXQu9aWiU083fRzw4qJ9eRPSZcV4n5/PafoRNqqN?=
 =?us-ascii?Q?R4G5mIsCaH21lvlyHGhUS4LwB6bKOYu5oFROW2JZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67e7440b-44bd-4f64-fac5-08dbfadad552
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2023 06:23:19.1374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D1fGHMra/T++lnSZp/dZPOyiERo6Vt4MoF1jfv9W0kSclgOREAvLJUyJquhp8uEGpdHvhUkBG6k1Zg1vzVy64Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7070
X-OriginatorOrg: intel.com
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ne=
mesa
> Garg
> Sent: Friday, October 27, 2023 3:24 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [v2 2/2] drm/i915/display: Add darkscreen debugfs en=
try
> under crtc
>=20
> This is to set the enable/disable status.
>=20
> v2: Addressed review comments (Jani)
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> ---
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 36 +++++++++++++++++++
>  .../drm/i915/display/intel_display_debugfs.c  |  2 ++
>  2 files changed, 38 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c
> b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> index 0be719c76c4e..2d0b78c4d645 100644
> --- a/drivers/gpu/drm/i915/display/intel_darkscreen.c
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> @@ -85,3 +85,39 @@ void intel_dark_screen_disable(struct intel_crtc_state
> *crtc_state)
>=20
>  	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0);  }
> +
> +static int intel_darkscreen_debugfs_status_get(void *data, u64 *val) {
> +	struct intel_crtc *crtc =3D data;
> +
> +	*val =3D crtc->dark_screen.enable;
> +
> +	return 0;
> +}
> +
> +static int intel_darkscreen_debugfs_status_set(void *data, u64 val) {
> +	struct intel_crtc *crtc =3D data;
> +	struct intel_crtc_state *crtc_state;
> +
> +	crtc->dark_screen.enable =3D val;
> +
> +	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +
> +	if (val)
> +		intel_dark_screen_enable(crtc_state);
> +	else
> +		intel_dark_screen_disable(crtc_state);
> +
> +	return 0;
> +}
> +
> +DEFINE_DEBUGFS_ATTRIBUTE(intel_darkscreen_debugfs_status_fops,
> +			 intel_darkscreen_debugfs_status_get,
> +			 intel_darkscreen_debugfs_status_set, "%llu\n");
> +
> +void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc) {
> +	debugfs_create_file("i915_darkscreen_status", 0644, crtc-
> >base.debugfs_entry,
> +			    crtc, &intel_darkscreen_debugfs_status_fops);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d76f9aa0b192..48a0d802b838 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -16,6 +16,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_crtc_state_dump.h"
> +#include "intel_darkscreen.h"
>  #include "intel_display_debugfs.h"
>  #include "intel_display_power.h"
>  #include "intel_display_power_well.h"
> @@ -1551,6 +1552,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc=
)
>  	intel_drrs_crtc_debugfs_add(crtc);
>  	intel_fbc_crtc_debugfs_add(crtc);
>  	hsw_ips_crtc_debugfs_add(crtc);
> +	intel_darkscreen_crtc_debugfs_add(crtc);
>=20
>  	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>  			    &i915_current_bpc_fops);
> --
> 2.25.1

