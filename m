Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A0E63C80F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 20:20:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E50610E321;
	Tue, 29 Nov 2022 19:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C0210E247
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 19:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669749584; x=1701285584;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zdVrVTfnmmHs44Jf2mfMTtavaDjQIC2unUm8DTFpkQM=;
 b=VwVfDQgcoMPcoHswggkviddtt/HVp1eoIT69sBRFifYItw3OqOaxil/t
 swFAaEpCONc1JGmEWyVLUetDV5WefiHLCU1C5ljBj+cIXAgpfz4Nq4VLn
 OBwp0WQXPfmjDfiDIWPjopO77jkCev5K9J047/baaoBWDB7uks2F09R6C
 l+i+hdrAecaaFuZ5WdRdzEnBeNJ9HIPuaOg3jC7sMmyDn6wzx1vu0EVdm
 o4Lj6QM/zdNbcAwrlKFg5JYfq7UzPADXFFyA8XjNifhEo6XhFeXgM2Gph
 b1cQOfAQ0IZH9SQPBqLobgtn5hTtIs90MumVjUaalhV8mEjmUpimuNvmd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="401495631"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="401495631"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 11:19:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="786170093"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="786170093"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 29 Nov 2022 11:19:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 11:19:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 11:19:43 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 11:19:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bcluSDvagimcKMeBx9Sco+aoKwiAz7NxNgywKFdfX7o8FKBJMqlf9MBahS/xvQG7+ZgmaXeBywulPHqmis/mkVH6f002IodMKYweFfhmTDdLwMoqOQaMVDRo7jMn1wwoGmGusI8uea2XjAtGK6NKudhpCR4IatJ7m0gyj435uKjCTZyD/LrDRqKhCuxOmK7azFFJdxqefKIBVUWXd/PwqRG1pqyxrCIe+3ywwi8UwxH75bUX1uBVTH1atqVywkG8eRUYA15JbhisIdywLKenv/UXOgwxNFAltNjypTiv4kxOVX13Ky81EXP/skdkTN+fZj53uvvHFpQnRkrHEDwQlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5SM3DGjsF5PkMoxZ7Z8qLWOBYxWMxGHAAhZTV02GR1k=;
 b=kuyZKN/QK4uV58hdwhErvF/lp7YvRhEwYy8Ktj0jxlGf72H+utphHhVXpGvOkAgND/H4n1N5tRpapoc0yGsDm6k60DV7rLcoLdKNRq0xrINd/zWFAZk5kx1/fWOTANZWY2wbjYfBknW/nA4Qpiix4F1ILDhkaAtVU0XF91IdGCyiBIobU9edl5/tq9N+ET/j9dxu+xIGbiC4X2pWz2JpSl0D3HmbSAHq9NqkuQENIg1knKtAJMjVBGJ/uyz+MgrX8IH0ZCmw/ahJoRuiQR2fNVU+TGRI7l0kZRKCMJ7Jgiyd07mUgyMO6NAwlSbsGV5ANkjohl6A227UijmeVjtTvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SN7PR11MB7065.namprd11.prod.outlook.com
 (2603:10b6:806:298::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 19:19:40 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::1ee7:a883:fa30:3eb6]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::1ee7:a883:fa30:3eb6%9]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 19:19:40 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for CDCLK
 PLL disable/enable
Thread-Index: AQHY//D6YOCgrj9gQE2GNYbsadLkEK5WTlGA
Date: Tue, 29 Nov 2022 19:19:40 +0000
Message-ID: <CY4PR1101MB2166A66996BCE28F1B6B70C1F8129@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221124103623.13974-1-stanislav.lisovskiy@intel.com>
 <20221124103623.13974-2-stanislav.lisovskiy@intel.com>
In-Reply-To: <20221124103623.13974-2-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SN7PR11MB7065:EE_
x-ms-office365-filtering-correlation-id: 147ca930-4061-4d9e-8efa-08dad23ea992
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0VYBnYncxOKzLMQLslk+vMv+5Box3vPPVHO8Y3FbCFVefmTWqixDpKtwKIcaKKRbDfy6ijjc+THIGwfWbmfYiBxc4gGNxm8nKqVngSTbeMDKl/Wr+g96NxEnYOy93Vucce6GmA7BckYnHFDNj3HcJec71yUn6Rc4bONryhYcuZMBeQpaLD9gv4GqvUxSavsnXENbgcDmNxW4ZgVKfCfd2hZmQM73U17aNQOtnOL8WSzVS+df09EHfMV5dGhO7+coYhWYv/jPZe9HIv0SgIJ8sl923Lw1PdKB0Vkr1cz/SQxiAb2nWk2QfROuE/ozSC1iM9bEZs1UjBvBUa46FeBB0wKkRT+vMp2BnPBCNkCShfWHVbAj0q81XHV4facMwWEHFiCxLDlvAZewpguKd4dOsUAazvn22W4KyiNRTeISvcSmLhCWL3+sRN55jetjW3Xb/fe4zJ0oInZHGtoI9QWv1ieEVh4c9oKlbFtGHv1Mg6fbcuxWk6bhEoLXHhRhM3pP/FUCB4Ar6xUkP6fi5Lf6YiXFMnlOomz90r/3afPJSz8BFBbafJyMfFSmOMdJSNXlqCnCGBmbaKSvMsrILbXHc3CfDqVVsXWkNIFxL4w4Yspp55TgsLTQFw3VKyG9NeknXATbBc17GrrpnHDwtNW20VWy+5mG8Q+gRSvjR/XhrMNWcrba6vWNZjXbPNU5R7yatLtcAweac9I1e2DaKyGRZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(366004)(39860400002)(346002)(376002)(451199015)(66556008)(66476007)(8676002)(64756008)(5660300002)(66446008)(52536014)(41300700001)(76116006)(110136005)(316002)(8936002)(4326008)(66946007)(38100700002)(6506007)(26005)(478600001)(122000001)(9686003)(71200400001)(186003)(107886003)(2906002)(53546011)(83380400001)(7696005)(86362001)(55016003)(33656002)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lO4+1DwZN8w8gkxpxTjqjw3mt+3RtAkL/3r9I9Fk62dz4F5vTUm0LHeBms8R?=
 =?us-ascii?Q?oQTBuE8BQqgybX9M8j2N1QsT2Sbmg25MpxRxhGYo70NgKJyWVeFhXuWfbDQU?=
 =?us-ascii?Q?KHwApvoMNPuTD2O1SQvahDXw6k3eg8b0bO09LCIijCmERqQl3muLtVdqSLgf?=
 =?us-ascii?Q?bnlzNPC0d5L2iNhw/6RO3i+FkEYVcFd0UUtztHayLi7sCpuldGH7mtqzMA4t?=
 =?us-ascii?Q?GsmKBmwp9g92XY/N/cad8ehoVh+DSTjbvsxrGgQ4ip9HvQ8+yPnaCjANtUjD?=
 =?us-ascii?Q?U7697EIt2C5qAAvZf3GeEhX/QfvyAV71ZOd0PhKZKA5WEXjMEBhVkDVFJCCu?=
 =?us-ascii?Q?Tmr4w2EQlo3xT/fTV5ygr7l5GZbz5/2EgT068P/Zs9MKQIb4UkwC7I1VZV1H?=
 =?us-ascii?Q?C8E9r2nK0WzU9DHDtd3fkmkN6938IZPMNN7z8ULXpTDkl+1G51+/xbhplo36?=
 =?us-ascii?Q?OJtjxD7dXsBqCujLpKEF0TVsNm6jXMcieM334A2sk3/lVTFToDF29mccDNvE?=
 =?us-ascii?Q?3cujGJm7WXsX5tspfIREdzHujQkdewxQ71bsO2cjAyf0mNqNF50qOWBnWOtR?=
 =?us-ascii?Q?Au+Tb3NVGxBVca3o+QILa7PuSiUwMlYqgFCE/3aZdbbSyZowiLJxcHQuPhKg?=
 =?us-ascii?Q?Pou7oW/JUNpTywpjns6ANmhVJ1eZHXK6Z/yG+aaxk0jfVRTA9WMrW8bssJux?=
 =?us-ascii?Q?ODYPa7G4CPn68XVRUfDqNxGgqyzxRN+LqI4xiV9t81hZBue6e1xg5JD7YLtD?=
 =?us-ascii?Q?He1mRyrpNA6sb0cDRvgvl2CFiNwKsb6l7pdltSWd0EfFb53HdYAJMZI1N77t?=
 =?us-ascii?Q?bIOGNazUdAcJgqV+kthcO1on0gcJpD1tAsBg4BzgA+o/Qemm7sNvgkA5/VFa?=
 =?us-ascii?Q?SB8H2SmuF1bMJMDMJ/f3w1ZX5qyJm553cIwpgjl1iLbSv05l9uNiZt4uUGsf?=
 =?us-ascii?Q?ndl6AXacMqI3+HiiSpkv3Pb9Vtbtu8c7KzmbJvdj6sK3/BHZpWjwCoXyXNtr?=
 =?us-ascii?Q?tvvOf7m31y3uZc6ZJ2mKZ4sblKDX/0siST/eiLYo3ceETno7nURDRni5ykAy?=
 =?us-ascii?Q?Hq8bV5cr0V3WqWGxUMX+beDqmNXvaGUeLnAYq/JO28dzMDtcDlL1R9E6BX8G?=
 =?us-ascii?Q?mMyTw7PVEVvfDLFOwxTHk8sHiedxgVfHsXbqkH0DlkeMLTkBWI5bh5z1orPR?=
 =?us-ascii?Q?MJ7a+pZyiZsG/Q6aq31LbtzWgEgAaUfL+FsfqrGLlc4coJob14EHObY7sLxF?=
 =?us-ascii?Q?JU47kkWKa3tu8GoIunGopa/fbrjBAxkayFW7Kr4gT4LBCiPOIJUGTPjXLrGJ?=
 =?us-ascii?Q?JeuTK725Q/5dz0n429PLFwNkuwAULT0pO5joMlUTBLbcR+PxC4XH7/arOrni?=
 =?us-ascii?Q?PqIcoTgzy8n/QYsNxU5b3e21aQ3iKOz3/7xpneuIa7Q6IxzToWJ6Daxf/kWv?=
 =?us-ascii?Q?iINSxhI3HFDY/TMiA9j1yb0rwBhPCR0JJg5nTrw6iFuoLinN7T+k+ZGjDBVc?=
 =?us-ascii?Q?v/m66d6/8ZAnwWCPRlWfMwJO6GIm+J5uT3hfViZH/LYjrNPw0zssxnFGrg8m?=
 =?us-ascii?Q?klSOcDnMc18WQP9sh/TJj+61gXnsJ7f8fH/DdacZS3U9aY8GDU4UDkXbcBDC?=
 =?us-ascii?Q?Gg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 147ca930-4061-4d9e-8efa-08dad23ea992
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 19:19:40.0481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MV4whbSor206UJOIUDbM2s7ICiybiPCocbKh6M2KoahwBFpBtJP4Irf5yNY0F+4K53BDXiOFT6/hKB3xdAchU6sQLD3jcRq2Yq0eS7Wqr74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7065
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for
 CDCLK PLL disable/enable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Stanislav Lisovskiy
> Sent: Thursday, November 24, 2022 2:36 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for CDCLK
> PLL disable/enable
>=20
> It was reported that we might get a hung and loss of register access in s=
ome
> cases when CDCLK PLL is disabled and then enabled, while squashing is
> enabled.
> As a workaround it was proposed by HW team that SW should disable
> squashing when CDCLK PLL is being reenabled.
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0c107a38f9d0..e338f288c9ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1801,6 +1801,13 @@ static bool
> cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
>  	return true;
>  }
>=20
> +static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv) {
> +	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
> +		&& dev_priv->display.cdclk.hw.vco > 0
> +		&& HAS_CDCLK_SQUASH(dev_priv));
Redundant check. If it is MTL or DG2, then it will have HAS_CDCLK_SQUASH se=
t to true always. Shouldn't vco be 0 instead of > 0. The commit message say=
s the hang can be observed when moving from 0 to > 0 vco.=20

Anusha
> +}
> +
>  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			   const struct intel_cdclk_config *cdclk_config,
>  			   enum pipe pipe)
> @@ -1815,9 +1822,12 @@ static void _bxt_set_cdclk(struct
> drm_i915_private *dev_priv,
>  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
>  		if (dev_priv->display.cdclk.hw.vco !=3D vco)
>  			adlp_cdclk_pll_crawl(dev_priv, vco);
> -	} else if (DISPLAY_VER(dev_priv) >=3D 11)
> +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> +		if (pll_enable_wa_needed(dev_priv))
> +			dg2_cdclk_squash_program(dev_priv, 0);
> +
>  		icl_cdclk_pll_update(dev_priv, vco);
> -	else
> +	} else
>  		bxt_cdclk_pll_update(dev_priv, vco);
>=20
>  	waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
> --
> 2.37.3

