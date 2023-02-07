Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 052ED68D713
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 13:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599CF10EA77;
	Tue,  7 Feb 2023 12:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975EA10E20B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 12:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675773867; x=1707309867;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y90ewTLuA+R8fLYgqkZFRhelD9+rcSEdluo9cRkZhB0=;
 b=bE7cP0JXxCbHUSJ30P7SONxsiArGEchmg6BmhISXqiNGSQmgDdnVz/D0
 X8wPmYPtv3Qm1htVc/RN2PT6eLOGyQd/K3C+h7MAFK8VVyEmb5UP/g85P
 3YJH75m1dsIykr8noUsmLqpGBptpg4ioJtKYE/dDUngndGvO/ZAFtr3xV
 NysUqPkja8JwPOmEka+Uz0X4PTXkn4kysQZVtXuN7M+xODz7M2p4j/1s6
 oqsdYIrvYBjn5wydeAZX/rD8lZX6iO9c1ykXdQZNOwddP1kQpwXicxWy3
 iLCdrvvaaNZLtkaNjWiQXPCc2EwHOBSS8EvMX9m4Ld2t7qetqKFd2px6+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="356864257"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="356864257"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:44:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="730417610"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="730417610"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2023 04:44:26 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 04:44:26 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 04:44:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 04:44:25 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 04:44:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkO5TK54CG8W2xZfQB10pq1bGjtldH6RknDLDboq6+UIDJUA1nXRdFxYoeOrMu2feGe9kyaj+1oYBI+2wpP+C930BcUa2aoRS/EgQL67bG/GqVjZ4mMH5Yzhq3sNZWxQan6UNkiaR58v2LKGpf/7WPWcHRra+S0eaGunF1/Mem147lsWSboxkGjT+csw3D5BF/WiovxbUSuUxAQwLASw82FhNuc840qYyO//cTiCQXHzz5AS86wg3ykqCaoxU5oYi6UjHiBdrfekVCh/qnCdAsZ/rTy916xJRQOZ0No7d/3oJzCLIpYCYo5lXAAfO9MEuQ6pIAGULqZHhYL8D5dDiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6SfCCUZfunQfdHPrTsHvKkr684edzZmHO2lRdR6q3eE=;
 b=fN9tkk0oBxsbk5tjEIntz2gLgzip3IQCksRuxFNrcVGDNoYJ+IudluhBsZpDcWNMITJ/cIb8uiDkR+IsrQ662o1WicVMypbtxP6IQNa3l3WQfbog++OLRCOqa8uVVRj4y7DrV07a2i6u8nAraCu9W1zi0unb4fyy1xtVdEuedr4DRVrrGzKVeCE1yjLLs9l0dNfMJ78WuCJt2FVjranFQr6kHvjdxPdFXcbvl0tVu/z250zMMT5rfBaxJ3H2WKBOYpai9pVoDsUY/lP/QfaEi/KRcI9/VFrpka0XfHTgweyGyB5oO8dlJdmahQqZQZKTsBS29mstqKtJFGIDJ+i8YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4093.namprd11.prod.outlook.com (2603:10b6:208:13f::21)
 by SJ0PR11MB6574.namprd11.prod.outlook.com (2603:10b6:a03:44e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Tue, 7 Feb
 2023 12:44:18 +0000
Received: from MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::5db6:f849:ad21:108a]) by MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::5db6:f849:ad21:108a%7]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 12:44:18 +0000
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/4] drm/i915/pxp: fix __le64 access to get rid of sparse
 warning
Thread-Index: AQHZOvFtzFQXuyIHS0G+kM5aAzfq2K7DbbdA
Date: Tue, 7 Feb 2023 12:44:18 +0000
Message-ID: <MN2PR11MB4093FA66E1D5B5C0DFB45E5AE5DB9@MN2PR11MB4093.namprd11.prod.outlook.com>
References: <20230207124026.2105442-1-jani.nikula@intel.com>
 <20230207124026.2105442-4-jani.nikula@intel.com>
In-Reply-To: <20230207124026.2105442-4-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4093:EE_|SJ0PR11MB6574:EE_
x-ms-office365-filtering-correlation-id: dc076e18-2973-4966-70ab-08db09090757
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5bAohtjAsvEKeJQzj+IHReKIq/CFVHnTvnJ2IohEsFQ39Kvl5e2uiOzOHrPL3nrXoGm/sr+dRxN18JhwKBGqILjBoCVkiOfNPHOUEIEPXG/6Amny7U4YlUZ8+N24uy1UgvzaEhdd2FwWtPD5aPtAn+f3J1pW+Hee4B6Rs/CCkyWJejAY7OQ51uRTy/OYTgJWDkOpMjHEHEV8oddP04B5kuiXCal02VksKd1JSymmUlB/Z9XRVAtv8ZtJPWVF4Jmt3aCG2nwSRwe33UNly7NrxYQEQT7Hkwgvhe3ppJcsdUa+xqeFrmW5lr0r7RA5xEtIf1bI/WoK9JFBE0T8iV8pxNtzj9V8UjExMBhQ10qMODSha7lAm4Yshk31g+F97601kgnkvyJUsx6z9+l6QYEDTNNWBU8BIJV/pSO15XmfawD8K8h3hYp7fbiUj7PPMPoai/OVDORHvhseBUu6imB6VN9EiX/WUZsWObuI9eRxpnJhUnltD+GXX0RgWrO6rbGuuBkomebCNMc0tqnusE5JNZA8W3FDMFfvLEz4eL+DbJ5R6ofEPlfP6Zw/VR9q2eMVAPT8PAl7AsZNoHFnDIg+klEOfxe0cEVm4pZY8cmho/nQESkq/N8tR5C/fAhShRHi7BpDgBIiFzwd0qh7ZBOT4eZ/CH97F04vsO5ChiRYNLSRZKA88wVAzBMxfxSg0oCkUbrLlwEyRfyKr25a5ky3oO5p4tbnB/v4aYNIrCTKA3Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4093.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(376002)(346002)(396003)(366004)(451199018)(33656002)(86362001)(122000001)(316002)(38100700002)(82960400001)(64756008)(66946007)(38070700005)(66556008)(41300700001)(66446008)(5660300002)(76116006)(8676002)(4326008)(52536014)(8936002)(110136005)(66476007)(2906002)(55016003)(478600001)(83380400001)(71200400001)(9686003)(186003)(107886003)(6506007)(26005)(7696005)(26583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OtbuuPRkpKZHEecSv05UFSIlM2p5S63Kv3jhnXEcI+14fI2GpF9i7Tw1tOXo?=
 =?us-ascii?Q?0OoqwjoffPf7N/OaRDToD9Oy0bTdL1IxuLjGeJs5UEN37+zBlbLwZqmVQEkz?=
 =?us-ascii?Q?ZhTVmPpJxRXGXoy1fIGxy0Y4MOd13VnPM3cESfiRlQxyJyLY5DpresyND4qO?=
 =?us-ascii?Q?Z5HhTXaQeN9nj5xHJaO7QueqGlvqLFIVnncz7B0wJRGNzR+oRDpICGWJfL5G?=
 =?us-ascii?Q?K/4IE2ny81hseZfVqgi5ArpPk5aP36GCbhcYGKWZv+uSzhs+MV2NNaf+wlxt?=
 =?us-ascii?Q?MExLFhnSgJq9GoOhjWykAWBKoWC+A0z8Ym1Do8SRxKfQ46IZrzxRA79a9GUC?=
 =?us-ascii?Q?Ws+bvGfPnyYPHoJcsFvGMmH2UfbHsamwnt4Dd+XjEpt23hhYqO94ojzSIydP?=
 =?us-ascii?Q?0Vi06TuHu2qh3aC5Qldttd/NeSnIY/lwfLlyJc9Dp+ZzZPUyYLDoRTPQKQ3A?=
 =?us-ascii?Q?4MyeLGBCeXy86pxOmzmNy9AzdALshIU3ZBBzLWb2B3xFpGP2b55M4+gHYvJD?=
 =?us-ascii?Q?QNxV5ajeTemk0XlKgJU7Nftl0pQpqlgl2rzXzRPU6pBkCya7Xj2jxL/l2Y5P?=
 =?us-ascii?Q?eqXVByU4b2nfEy3aBRvBrrbN0amitNn1bvJ5Oc0Fi+cThlp5qkkk2/2OyRRX?=
 =?us-ascii?Q?sepYtLJ6XVn9jLuM9u/Xm4RbcbheibFGIEqlQiSBzK072cRUNRa3KRDJNKBB?=
 =?us-ascii?Q?FVDtC3TQJx2WZc1sskrv6pajSaY5o3QAxlrUYf4V+V47ToIhJsQfRN79lOQd?=
 =?us-ascii?Q?+Y31zzMrZPzKXezfBaiFfk91jjGaeEso4WIkpezGaKrX6+Ydcp/E8UMenl+E?=
 =?us-ascii?Q?89VFA0jiPoZ0A9vIQRdqHJZLIxhBrvJpab9Z6RvIPLYVRdPgc036pKednxCI?=
 =?us-ascii?Q?r5NVcM0GyrJKAL3tRh+AMCZXljcsMDewS3PwRHuiILZbU3ELIN4Afi6/8jpv?=
 =?us-ascii?Q?kN8QFyaBSY30HijG0E0jRI0533XyLIUtPEwzKllKYIv3h4JcF+vjUmTRHrHC?=
 =?us-ascii?Q?TNW3iT8GNQMHKnAffm71iwHe9hy+aJOnY6kOJVsk8Hm4tQmlzrSeLy2M1c03?=
 =?us-ascii?Q?N37DT/0jI/WVPuDPt8VctIRQpzYwtmBA0KWsdeAmPL44b6vWhdheYMAibkrY?=
 =?us-ascii?Q?OrnMoEtk/eulCQaKnPP6Il/vTcDrn//BzUGjxyq3flGoUGoz4GFpr4lRDyDm?=
 =?us-ascii?Q?wcWFO7imefEOGNyelArAud478l8fgwZhUD4P+QgeOrCoDmU30zv+UZIyYcQn?=
 =?us-ascii?Q?FNP8kXd3q8l8YfXOc4fMcCPK1DQTq0uIAQFB18DZNVqgJxDrZq+vACVOj+an?=
 =?us-ascii?Q?osWFrsyoISN9H0yq1W79nzpjXHggVPlo1DRCS7mPl39NWv1X3vOTmUHzAMI/?=
 =?us-ascii?Q?mg7pv1SrHAe/hi2aTlTVfZoWREGRIL99rAOgDMpbqHg7CEszXuB1mHJVW8as?=
 =?us-ascii?Q?DlgZSyGOuH0ZrSRAi6C/O76/qgG2lUpwD2lI4u+sjOgmqzi5DEtrgiyJpSgP?=
 =?us-ascii?Q?AK+EobguBS/ABiNoAlAjhsq4jM2Gl0Cn1evEZY+qKdkCeh9lXiOgwG7rz2pL?=
 =?us-ascii?Q?9jA+ZbNc+/pjB3Pc6Ef6qCg+IvUqvZlq+j0SZZ3y?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc076e18-2973-4966-70ab-08db09090757
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2023 12:44:18.5271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OaDJRzg9u8RlxIcu/9XXPr9NL1WkHVKppBL0u1Gy+2Hi2BgENylyBWsIZjBBc7uTLy+VMieH2QWwb3+We+ayTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6574
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/pxp: fix __le64 access to get
 rid of sparse warning
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
Cc: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> __le64 and friends should go through the cpu_to_* and *_to_cpu
> accessors:
>=20
> drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:41:35: warning: incorrect type i=
n
> assignment (different base types)
> drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:41:35:    expected restricted
> __le64 [assigned] [usertype] huc_base_address
> drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:41:35:    got unsigned long long
> [assigned] [usertype] huc_phys_addr
>=20
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Tomas Winkler <tomas.winkler@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp_huc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> index 64609d1b1c0f..23431c36b60b 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> @@ -38,7 +38,7 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp
> *pxp)
>  	huc_in.header.command_id  =3D PXP43_CMDID_START_HUC_AUTH;
>  	huc_in.header.status      =3D 0;
>  	huc_in.header.buffer_len  =3D sizeof(huc_in.huc_base_address);
> -	huc_in.huc_base_address   =3D huc_phys_addr;
> +	huc_in.huc_base_address   =3D cpu_to_le64(huc_phys_addr);
>=20
>  	err =3D intel_pxp_tee_stream_message(pxp, client_id, fence_id,
>  					   &huc_in, sizeof(huc_in),
> --
> 2.34.1

