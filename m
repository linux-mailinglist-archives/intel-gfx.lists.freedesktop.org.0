Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF71634295
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 18:34:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4798F10E1CA;
	Tue, 22 Nov 2022 17:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833B510E1CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 17:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669138475; x=1700674475;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Lq5uH9Zm75kIvfo5USDDmgvwxi+1vQUnaOpBQtY+/nA=;
 b=nvQn2fAJGuVfGa/GVdI5xy9B3iLPIc9PpnDHskmVxReZ3FHEMA5NmDIW
 II2+O68zvC9F2OpLJybaCiAm60DxARgbGZdd8CEzKz4qbe1HeWcZcXNIp
 ujsAgv2s2xj9SZZs8cS2edxyPaeXAEhypIDtnH0tM4jcEzuFpVpYPHxss
 mq/jHHdD2jB05NsNBZuSbtaEIX9LlpIlemeQ2y7aLU1VcoZLwD2zZrYdI
 sFxFvIAW0YQ/OQC3welRRND++zsNMeK+jvtbBDbVJWK/fcf+yVJQeTqOz
 vpTnC2zy5LelTMf/BBLXqOqZsMALxdLoqNyoF6kf7G36nSyd4Qnw1zn5b A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="376012746"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="376012746"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 09:27:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="730475049"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="730475049"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Nov 2022 09:27:09 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 09:27:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 09:27:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 09:27:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dd0u2OJL3+hb25r0vAOCNweubrjnc8T2W6zJRvdkbCg6vZPN0FIGp+LmnL4NdpO0D853vWRWW6ZSpsytQiJmxKtmap3hKDoiTY+G39GJv6MpzUMbIfCDZ5GsjH81VwZgA/9K8ICAN0iNF8pErzelnUl2dHP0C+tQnMyIhYAqq3ipxtmsLI1RF0K/4K4CEknWS6Wce5RjNGtUZIVVODpx1O2VLMqd8p75YIA+r6aUjhwTR6yj0NHdjjkNlhzV9C4cOr2idTlMMUkWI2pk++FIArzOE9HdN3oEqFAJB+iQQy/vJm41MMmkFJBg4BpGACRDsOkXiTnRJ1OzquFI/bCBQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=muDFCVtm0RE/Vn6yfTCqn4gFI65mKDcueaT6rD3NvUc=;
 b=j5DRO4/AnLQGmEOP1aPumkxLdk2HV0bi+IRpl4wm0Rvn0rDBgUIrWRSIc193ud/WCuDn3DyBt9gYGvtAphxAOwEMZS8GopQkfo/5GkupBKzaJhk1dwVPRvS3p/do/mSdV4p4PHmavnmBjICh4npceFSI+Xt+KztYLhhhrKoUUI7qGe14uclxjIhjaHoftefsTnmxPTjm13zz+L4Pjleig5Ej9HmkCQBibVZxlxPHTcUMaN7cXCvVty2ZSM7aWoH9ruFmtIBWIZpvFfKiCNDSawGubLAkfb7TJgaLouwDvGvHbZyMkZiTJdtinp0gCAzrJNikGGnCQVpMCd/9riINlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by MW4PR11MB6618.namprd11.prod.outlook.com
 (2603:10b6:303:1ec::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 17:27:05 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 17:27:05 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version to
 v2.08
Thread-Index: AQHY/mwHYzrW31F0cUWar1ew15MaS65LMk1w
Date: Tue, 22 Nov 2022 17:27:05 +0000
Message-ID: <CY4PR1101MB2166D6D3BF6E094DABF5372AF80D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221122121343.18136-1-gustavo.sousa@intel.com>
In-Reply-To: <20221122121343.18136-1-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|MW4PR11MB6618:EE_
x-ms-office365-filtering-correlation-id: 0c703d73-9897-4ef8-cb89-08daccaec666
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zpEo6GHY41ghjB4WEGMFY5dszzg1l+V5zF7u9P/p7Am4TogpoYYh2jey33W93dx1zFe+CSHXqh0k5crWnEkpWkejr8xBoCugPDTIWLrpJ7E3sAj+xTTE++ALG/chZAp6VHr45LNUb78VKEMk6MaDfLSPKhdqlr2Bcw6drVrmQax7M5R6tWC19djytJae2z67+0hycrM6c8Pd3VBBYWwlnA2cWZSE2J6GaRjQfPgMr8/PwZ7ejy6nCFaapmB5qlVE1fDQTabD66Ip+Z2Uv+XreWrZAYq5gdIs6of49XaRq7C0uFuwAyLT+c1nnLfB8IqKzn8E/KXMC3P1GXKGo+UW6DymD7Mv1z2BJKPmETwVWqubKkOnA8QGyttZw7OUy/2sRcNYGQRwB2VMs+saR2oYcOi5GdaxQ2ywNZo3N8eNFSDAce3pUjgzfW66p0PMa+6WP34RfTQZYVu9F+SacRw6ta5yLHHkSxjCdoCkDVS422bM8hPsRe8Yup1E9C0wMPyVyAUZiV/jmzTQBBHlvv+25g+laAZOYXQbUVFSrH2JslLlHNYIDPy/jOcR2zR8CpfIWZ7lIu2DeiZb4SA0M8+JN/z1uHbGYrM/NLtGlhjBwhlNtDiytRlDvG2w+naiPE9iejpA2oPn8PFFCeWMMbb8H5vADZQzPwXoXFNI3l2IN3iUDmUpAdKJD2KpYb7l7Z7IAcyopmmXZqYjD6tbfYXFuQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(396003)(366004)(136003)(39860400002)(451199015)(86362001)(33656002)(41300700001)(55016003)(66946007)(66476007)(76116006)(15650500001)(66446008)(64756008)(9686003)(5660300002)(38070700005)(316002)(8936002)(6506007)(66556008)(8676002)(71200400001)(478600001)(186003)(26005)(52536014)(7696005)(38100700002)(53546011)(110136005)(122000001)(82960400001)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y6+OuQxjKXq3dArPO4Z5i3YhQqNEQveCg0l98/zJ0Z1gPQeurFir1LLitKU7?=
 =?us-ascii?Q?z4UUkqMnis+18WqR1D2Dzj4VjKsmAusiVT4YLAlFnh5gYh6PkUkGV2/slqVc?=
 =?us-ascii?Q?fWJesVbxglGgyk4mqagShv+y3g4wGxIOVcc59dy3S3B61yE9RwcsX+D+klSg?=
 =?us-ascii?Q?iVfJTROXXMuZT1jfwA4GuH0loNWy5KlF4Fo5okzEOKs1iQq1g47YAzXzeAhv?=
 =?us-ascii?Q?I6FRO2QvIN+j1tsHMm4TO3JdhbMdhyqNuY+oeiNFOdTqJUDlSUoHofhRi47w?=
 =?us-ascii?Q?dE0L8sRycwjIU68Lh9EVEwQco2dB3t+QRahO0ywS/8ppZyczaFHhNcSIkq3b?=
 =?us-ascii?Q?8zbJ02gi71uOecIoUX9Pb5jvJSZ1Ztr1xEg4T5wLQPl67A/d8XPzNVxvfbxJ?=
 =?us-ascii?Q?rfwq1ZIEem/fP7GTqceSby4fjxkv8nA1NqVrl1C/+rxciMFpZY2ggf1guiWy?=
 =?us-ascii?Q?nK84+aLF1YX5d8EOGEUG274tVus2ZC9IFzjGDDB4qpI2Xh8HteFqwaMADssa?=
 =?us-ascii?Q?5XRhI/oW7o02jD0IUwdg4UwOeJGLigTbqVWE5Y2Q9oqu00jHgXGILZP3ucde?=
 =?us-ascii?Q?Y9EUH+ZWdYl6aPx6epDJPp5USP8o4FAhzsb+99mGOKZqiJ1zmAuCizBOzssn?=
 =?us-ascii?Q?LN1s2YEk57OYlX+oqlEtqng8luWmbj9cpMfMuW4VYDm30afyS5nsg3fa/pBO?=
 =?us-ascii?Q?HqcOnQHD4uPA0v6Qh+Nik7KENogZU6DDG80lnsHfuB84iICAX6HzN4RP6qnj?=
 =?us-ascii?Q?RHTvw63iL/zFBJpMCdttPs+NR8j8WUERUvbd/NucaJtc6sTKoViF3CBKxrY7?=
 =?us-ascii?Q?g0z89SCHlNk243i4vaHTw92oYeKLJNG5lrsJPX1XNy03k6YX31winq+rnyET?=
 =?us-ascii?Q?mdKObpD4O6RURYTdLQX2OsfhItEWHf0eF2zsqRH96tMT3Zd+AaPosY0gGnZ+?=
 =?us-ascii?Q?gE+c03ZEPtiD5kJO12RIvtj+YHRbWeJ3zGBVbAsgEa+n9Ptb4JhSNozuRdKG?=
 =?us-ascii?Q?yi7HnKR3S5gipycho4ZvMtW5ST8CmJynH13ncbmQZQ8WbIBGa/Ro8gStVbIS?=
 =?us-ascii?Q?x8HT1VwVBKRAJCzPjyFhWD7UtuTmr8nLU1JC+CUqChzChnw/PXmuYweaIh5B?=
 =?us-ascii?Q?aKHcKex3/RKSjTfnHaG/vTpg55ZBO2V7UEHUIFKi7d9SI8sYCzHpurjLX2lj?=
 =?us-ascii?Q?VW5nQyUqBl6YuDPFGNEwhc5QhVTtjX0jtkEsVqlIQvDoirebT4yfBovP/BuC?=
 =?us-ascii?Q?IEYAvFZZ5IO8OVo3UX+fW8g0U8DKfPb0PxDE495mIN8j0FcwYkIdBfhe09KB?=
 =?us-ascii?Q?1AZrBUUwFsyGsSpzvbKXt6mha3b62hC5oGgDQoZXhA/WMhsusD/k7yltRlxk?=
 =?us-ascii?Q?1e5dhKAy4QZKG+uUVdZIbMcDIlI+ZE69h1PBpgvuyE29aM9JU1B6ixVYPXYt?=
 =?us-ascii?Q?XlfMOc6Fqv/y33oUfwk5VajZMN8vBeTGEkTMFnoHmCCNLvXnsXUFRjjKKpmg?=
 =?us-ascii?Q?EmubB2O0QP5W9HKPiciqbRWyrhP4Bzl6GjcU0db0zufiIGzDq77LIzhtata6?=
 =?us-ascii?Q?2pcmL3KFJHQPtrL8incE71xZFm7UFTZGg0DC9k+M?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c703d73-9897-4ef8-cb89-08daccaec666
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 17:27:05.0722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B1Bwzt0cePOgmGz606r7VoMAUjA1g+thQrgiRTkmh5Lgsh8Kt7kUzRv2alcVWXtyAtxvPoqyUq649mq8td2V0kdx6jNZAb30P0XDINDv1lk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6618
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Gustavo Sousa
> Sent: Tuesday, November 22, 2022 4:14 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version to
> v2.08
>=20
> Release notes:
>=20
> 1. Fixes for Register noclaims and few restore.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>=20
> v2:
>   - Use correct numbering for the minor version (8 instead of the
>     invalid octal 08).
>=20
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 081a4d0083b1..eff3add70611 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -52,8 +52,8 @@
>=20
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>=20
> -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
> -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
> +#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> +#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
							^^^^^this should be (2,08)

Anusha=20
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>=20
>  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> --
> 2.38.1

