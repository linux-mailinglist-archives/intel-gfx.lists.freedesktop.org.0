Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C637B7913EB
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 10:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B26F10E2FE;
	Mon,  4 Sep 2023 08:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30DC410E2FE
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 08:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693817495; x=1725353495;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=NHW9kcj6N/0vpYH3ce+vJ0S4Ry49skGLg7Dnx0KoK3M=;
 b=fqH5yD5jdE6cIIMRQjzNftbGgYPVumqHBM2E+7RmEPPofayBBr4den/z
 dKsR/ewJdiKFdrJveR2H+LHd9ifmiuvp16rFcLMOcIzN56RjkdfVBsHnO
 WrM0YEXdVynv335eqpBjbtdjmz3k/nxffuhWQeSayTfjpFnHS7Orl9N+i
 OKkr6mAyBRji93Gb7kDwguXEsju+2HQm25LQuAu8fSkgqGYBbDIGT5n8s
 iqgVFrFStJdXSTR5i5Dwu4T00sa/NMHU/dA09XYAdEQYYktlMYeveAanj
 jd3l6p7Pcy8TgbZjKZsCvbiSv7rPnkk0Y/2qJv8bq2ydiOyksTNFwX6fg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="356871138"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="356871138"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 01:51:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="1071513799"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="1071513799"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2023 01:51:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 01:51:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 01:51:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 4 Sep 2023 01:51:22 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 4 Sep 2023 01:51:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HKCLDP1qE/HjX2GfbSB3dZyZHkZB7O8Iw+fp375IKj6iAZf0zfOmjppEMk4FnN2AvXgDugH1DXDS0KgXk8nkHkVDoQjctagS2zZDuyYi66YdIVXEm0SHrp4/pZvnHhz+xxFTdlWqrckzJa7lIaVbM85OuQUa75x63Vh05STohl4J9qeGrL2RLOstbz/vDqJs9X4ItGme8CdB4XMNHasxgSbPpgjM+Onv/txvT3k6hySqxB/zr4TED05aUBeiycBpEYtRSHZRgcj0Yo6oAqEEKvNWGE4gmn6xPS8zmGDpI1nFyRpFNdjhCbEK/Y3qI83E3MPanLn9DnLH4DgDOPUF8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=icJupkPvGb2+mUP6PCue8RgqQ9SGrnyMcPL5f8G0OhY=;
 b=OBNq2OSmbWyhU6q4JqWmWnWpjk4f6PaWgFhoZSVCpgsNgnL83gHa978C+H5XRBAkZJYw3kGZoAdjb1cfAzeGhaCwCpRInXjNnAiw4pSzdVWewWUFq0qkmvF2XxwH/3RR7oF7zTeDNLqFKnv8kaoYO3xuT6RtyvU9C9Jjejpa8oqBmE9lxJTC1olrCxa0tQc4OoqOda5j+kgPiCF8PjHEUH+EbiQavFS61DuwEDrqhtdfl7rcIBIQeaFvR3htPAFc3MYJleW7m7knIYIIkjnG73QDoerEc7ravojXkb9CGsbsQUmQMhY0S/HrvsbSc0zumDeQ7FOfuODGkqSDtvrVpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.30; Mon, 4 Sep
 2023 08:51:20 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::7400:ffc5:2f24:c721]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::7400:ffc5:2f24:c721%5]) with mapi id 15.20.6745.030; Mon, 4 Sep 2023
 08:51:20 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and CLK_POST
Thread-Index: AQHZ3LnYeloOKGdoLE61cOBSU66C77AFy5QAgASRRcA=
Date: Mon, 4 Sep 2023 08:51:20 +0000
Message-ID: <SJ0PR11MB5894816629E4AE5237408513F1E9A@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20230901095100.3771188-1-william.tseng@intel.com>
 <ZPHCnhg9KcOwfvof@intel.com>
In-Reply-To: <ZPHCnhg9KcOwfvof@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|PH7PR11MB7596:EE_
x-ms-office365-filtering-correlation-id: e463da7d-3b31-4ae8-827a-08dbad241c3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uAKQ3eikCfcz8/ZarwWgumHmRy5ZtjJCNa1H/rgoDoa2WsF3C4mz9gajDkNvJQ53Ho17sHkXCF/1PjHjNyClxfVjc1qvoqnmWrvdvlf7oCVbB+ntQ31LX8aeIGEQZ+cxICgUfVQOY3CahotTYF3whw2jsVMmtWLS4Cyq5nqkmUjyJeC5H9kUSrP/0YrzgKN8s+E6apL4wvIXKkZflDWF69n+mEOb0Ygn+d+gz2XWOPz7gnAbzlxh3X921ONHP19XI2Js7RJJC/FWwI5DwmUIvfP/yHZNwaBVUi7UVB4NecJn6f8UZKWp4g1SQIXnDppoDZcqIyjcNj7r9v2p0Yu4JaVha9pCRkl+WuiaIeXHKLBqSZ9PJ+ebmgLKJr+ptTeUwsVbRkF/S7Q1FFClhP7kZZFI888f0UbLcR91thpD71S8JKh3AbKIrm4FTeTOV+RugeGLS0scFilxD3YmpqDYBBRO9e8JtWfYui0e9QeKeTrPigxyqbUDatoB+NAZBvi52h3SHu3lW4wwzJSwTHULNScxcf7S6ggYyfrZh2juauU8PtnAWl3itwWKfOmoQScDnB1PvQlz0MNV6QSe43JhaJZgdh/NHgt/EdIepoVZDIo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(376002)(396003)(136003)(84040400005)(451199024)(1800799009)(186009)(966005)(8936002)(8796002)(41300700001)(83380400001)(55016003)(66574015)(478600001)(71200400001)(2906002)(6916009)(76116006)(66946007)(5660300002)(8676002)(52536014)(66556008)(66476007)(54906003)(64756008)(66446008)(316002)(4326008)(9686003)(53546011)(7696005)(6506007)(26005)(122000001)(38100700002)(38070700005)(82960400001)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?d10g+fQbaojmamD03AUDnrVXvkGVcxtuRQQf6F+kvaUTy+Uy2JP+Zc65L/?=
 =?iso-8859-1?Q?e7dGobRG9AH56H6RfhZzgWou7/iFPgsr1cGnMKM46eLHil7ObT9WeMDfaL?=
 =?iso-8859-1?Q?PLH4se4b3q9ZYEqMEDIo0Ga87PI3dIql6pjZWF2oD+xVCD6+no0sIRLS+F?=
 =?iso-8859-1?Q?VRZKKcSzi5+y0LbvaAORp5PFoEJXOI1Qxc+vldtlyrBJJsDql6bVkAl0kd?=
 =?iso-8859-1?Q?PESTcFtQCCzaWC78Gz+ourJGKAcBQLTPhQfTQW3IPc536qKRhdPEFks2F6?=
 =?iso-8859-1?Q?3WOrWUT4kPJc9B6BIlmuRtZ6453HNrQ8BBkAfZIGUHT2PzgjlSxGhzFqJs?=
 =?iso-8859-1?Q?rdXoR5PuOsE86+AXAmtU1K2AfkM09UXCrha+fM/VARWAwiGYQjgkeeUrrO?=
 =?iso-8859-1?Q?J1fTYVqCjCcXrGOGr9IdTQuHzKty1oh1liCifS04398bZCdlmis1EyAB0d?=
 =?iso-8859-1?Q?sJaVzKeiK4yFQXrDuGOJanXGxX1j0Ml/5JTUCm+WplOEtWccLR+F4fs8rA?=
 =?iso-8859-1?Q?MQiQ0If2Bu0X1XrE7bK5/t0noijBuGCywbdbhhLotrKAJxbV1oavrjCHrb?=
 =?iso-8859-1?Q?rUTJDsDIrD7jr3ezzWUWgg69TCoC0iUXfa6mkttTfsrASsGQVZB59XCQx/?=
 =?iso-8859-1?Q?At3KI9magRBKiHYbJ0utxc4PodSgD5JKKKIIBArP2YM/trBNkZDGBpKQie?=
 =?iso-8859-1?Q?1nC/JuzIStaGM2A6rV/Xe48nBTo8W+sela29xEhF/ZANksYt+l1xe79e2l?=
 =?iso-8859-1?Q?R0DSXusDr8riluQrbI0hhOmEF3yCntVRuENcrF3u6b5BVbCwhjtQSBWLq2?=
 =?iso-8859-1?Q?1xJtdl2vPGz8GX05zMwQWpU4wGHHCmZPYtG2N2dYUPO600NOlgFrnt7YyD?=
 =?iso-8859-1?Q?7c9y8unsmn3dQOK7z/iGYNBss0E3nFs579WFlSFYrVIPpbX/Gog3Sf+8Rm?=
 =?iso-8859-1?Q?HeBux46kWahLyqaLe/zpIDAl3ug6vlOv7txiJzD8bjD/NtuxY+pbxGyJss?=
 =?iso-8859-1?Q?qZkp6UyH2D+dPP3XJyz+l+mHCminliSqQ37mLeuUeNQxpjsZVcMukRHtQc?=
 =?iso-8859-1?Q?XutkI3iXRcNDMFXLmRIGTfJVz0yIvPW0U2rkPs9CIuAzgcDq3T2wpIeap8?=
 =?iso-8859-1?Q?/JQxrHsqKH6zA/rQHW6ciCCm1/Aarhmxpq8N6LbvnXfFqBmGVEP6BOuvF9?=
 =?iso-8859-1?Q?1msSpQbGWTT0x87Cj4d6qN6ybaWHdLXQNfbfnhR2V7DanqN9NNzTGY2xta?=
 =?iso-8859-1?Q?Q3OkcDozwkL+G+GMGQOOPYO7nyhKon++vy1Lh16pg6PiZMp2EGjCPEpadt?=
 =?iso-8859-1?Q?xQH7p2ioYoZG//DW6o7MarbNAytYagr53RjV3QaYM4jvzBywIVIOD5N0F0?=
 =?iso-8859-1?Q?T0SJWna44Sff/nUOXnVlOO2Va9ehQHD5+oG6uSK3o4R0Qb4Gr+NL5pKSMC?=
 =?iso-8859-1?Q?2RwSZVTlhSrG7zK6aXI/0xKQcrQ940hHgoujl7gLWwkJGIgjF8sG6RQ9Uq?=
 =?iso-8859-1?Q?C2564BvlfEEniyTNEwqSlS0ncxSm8ktRJAiCUwePHBQjXe3ZbfCPDUyLYT?=
 =?iso-8859-1?Q?dHPLFH/oQS+z4+LeHSF/6DtQ14QrbTUsMiRAMIHuDFcom3DMbepueUKn5U?=
 =?iso-8859-1?Q?sfDQzbJvnWGCh00jemtJIfj/JkGQtXBeVY?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e463da7d-3b31-4ae8-827a-08dbad241c3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2023 08:51:20.7252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: omHxeUvaE1zcKtfPtc9dC2V6Y+k99CJiodHJTnEAJmINB3GmW3L0SBusgzmLR1lEEs8P/YlHVPRiNg4c7gft2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and
 CLK_POST
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
Reply-To: "20230901095100.3771188-1-william.tseng@intel.com"
 <20230901095100.3771188-1-william.tseng@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks for the comment.
I will revise this patch, so the change is only removing POST overriding.
In addition, the patch for removing TRAIL was submitted as https://patchwor=
k.kernel.org/project/intel-gfx/patch/20211217100903.32599-1-william.tseng@i=
ntel.com/.
Can you help to review as well?

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
Sent: Friday, September 1, 2023 6:53 PM
To: Tseng, William <william.tseng@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Jani Nikula <jani.nikula@linux.intel.c=
om>; Kulkarni, Vandita <vandita.kulkarni@intel.com>; Kandpal, Suraj <suraj.=
kandpal@intel.com>; Lee, Shawn C <shawn.c.lee@intel.com>
Subject: Re: [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and CLK_POST

On Fri, Sep 01, 2023 at 05:51:00PM +0800, William Tseng wrote:
> This change is to adjust TEOT timing and TCLK-POST timing so DSI=20
> signaling can meet CTS specification.
>=20
> For clock lane, the measured TEOT may be changed from 142.64 ns to
> 107.36 ns, which is less than (105 ns+12*UI) and is conformed to mipi=20
> D-PHY v1.2 CTS v1.0.
>=20
> As to TCLK-POST, it may be changed from 133.44 ns to 178.72 ns, which=20
> is greater than (60 ns+52*UI) and is conformed to the CTS standard.
>=20
> The computed UI is around 1.47 ns.
>=20
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 31=20
> ++++----------------------
>  1 file changed, 4 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c=20
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ad6488e9c2b2..4a13f467ca46 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1819,10 +1819,10 @@ static void icl_dphy_param_init(struct intel_dsi =
*intel_dsi)
>  	struct intel_connector *connector =3D intel_dsi->attached_connector;
>  	struct mipi_config *mipi_config =3D connector->panel.vbt.dsi.config;
>  	u32 tlpx_ns;
> -	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
> -	u32 ths_prepare_ns, tclk_trail_ns;
> +	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
> +	u32 ths_prepare_ns;
>  	u32 hs_zero_cnt;
> -	u32 tclk_pre_cnt, tclk_post_cnt;
> +	u32 tclk_pre_cnt;
> =20
>  	tlpx_ns =3D intel_dsi_tlpx_ns(intel_dsi);
> =20
> @@ -1853,14 +1853,6 @@ static void icl_dphy_param_init(struct intel_dsi *=
intel_dsi)
>  		clk_zero_cnt =3D ICL_CLK_ZERO_CNT_MAX;
>  	}
> =20
> -	/* trail cnt in escape clocks*/
> -	trail_cnt =3D DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
> -	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
> -		drm_dbg_kms(&dev_priv->drm, "trail_cnt out of range (%d)\n",
> -			    trail_cnt);
> -		trail_cnt =3D ICL_TRAIL_CNT_MAX;
> -	}
> -
>  	/* tclk pre count in escape clocks */
>  	tclk_pre_cnt =3D DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
>  	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) { @@ -1869,15 +1861,6 @@=20
> static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
>  		tclk_pre_cnt =3D ICL_TCLK_PRE_CNT_MAX;
>  	}
> =20
> -	/* tclk post count in escape clocks */
> -	tclk_post_cnt =3D DIV_ROUND_UP(mipi_config->tclk_post, tlpx_ns);
> -	if (tclk_post_cnt > ICL_TCLK_POST_CNT_MAX) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "tclk_post_cnt out of range (%d)\n",
> -			    tclk_post_cnt);
> -		tclk_post_cnt =3D ICL_TCLK_POST_CNT_MAX;
> -	}
> -
>  	/* hs zero cnt in escape clocks */
>  	hs_zero_cnt =3D DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
>  				   ths_prepare_ns, tlpx_ns);
> @@ -1902,19 +1885,13 @@ static void icl_dphy_param_init(struct intel_dsi =
*intel_dsi)
>  			       CLK_ZERO_OVERRIDE |
>  			       CLK_ZERO(clk_zero_cnt) |
>  			       CLK_PRE_OVERRIDE |
> -			       CLK_PRE(tclk_pre_cnt) |
> -			       CLK_POST_OVERRIDE |
> -			       CLK_POST(tclk_post_cnt) |
> -			       CLK_TRAIL_OVERRIDE |
> -			       CLK_TRAIL(trail_cnt));
> +			       CLK_PRE(tclk_pre_cnt));

Windows seems set these overrides:

icl clk DPHY:  PREPARE,ZERO
icl clk DSI:   PREPARE,ZERO
icl data DPHY: PREPARE,ZERO,EXIT
icl data DSI:  PREPARE,ZERO,EXIT

tgl clk DPHY:  PREPARE,ZERO (?)
tgl clk DSI:   PREPARE,ZERO,POST (?)
tgl data DPHY: PREPARE,ZERO,EXIT
tgl data DSI:  PREPARE,ZERO,EXIT

adl clk DPHY:  PREPARE,ZERO (?)      (also PRE for 2.0-2.5 GHz data rate)
adl clk DSI:   PREPARE,ZERO,POST (?) (also PRE for 2.0-2.5 GHz data rate)
adl data DPHY: PREPARE,ZERO,EXIT
adl data DSI : PREPARE,ZERO,EXIT

Didn't see any justification for the weird mismatch between DSI vs. DPHY PO=
ST override on tgl+.

Anyways, looks like removing TRAIL is not particularly controversial since =
Windows also never overrides it. So probably you should split that up into =
a separate patch.=20

> =20
>  	/* data lanes dphy timings */
>  	intel_dsi->dphy_data_lane_reg =3D (HS_PREPARE_OVERRIDE |
>  					 HS_PREPARE(prepare_cnt) |
>  					 HS_ZERO_OVERRIDE |
>  					 HS_ZERO(hs_zero_cnt) |
> -					 HS_TRAIL_OVERRIDE |
> -					 HS_TRAIL(trail_cnt) |
>  					 HS_EXIT_OVERRIDE |
>  					 HS_EXIT(exit_zero_cnt));
> =20
> --
> 2.34.1

--
Ville Syrj=E4l=E4
Intel
