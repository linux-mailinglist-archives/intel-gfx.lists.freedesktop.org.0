Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 181797DC8BB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 09:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1784B10E438;
	Tue, 31 Oct 2023 08:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416A010E41B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 08:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698742609; x=1730278609;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Z5XfPm4tPbPZJacqqEc2iYZkSoTQ0VJnVoD0j4k29uU=;
 b=FJeWG/WSDt4mRn0Rwgx+RyuriRV/gs8Xt8hRPzgvSRP6XbEvH5Vq6687
 E0SBd6wY18ba3mwDHWDhdc21QVxXycVgnnx1sbneqX4JyM3Ex/sveE9mJ
 ZG3xoxEmPhlqmxdalk8YPc9AD3H4au7l+U7hnOni/udmuuFfSfjPcyN5S
 U9MCruQmEE6XVLA299rU74r3KdwwL1zWnDyRY6eUdryaJFQVUkK3+AOlj
 3tgv0AHEha9mG10f8M3wIv1Jcavs2yid/3hk0LhIzGwXTnNUsZUfXrTFY
 kkWwb9lqsrpkdaiopmlVE1dVTg/p9vnco2eeQuBX9f7Rd3yyvFN4kBrcY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="6869262"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; 
   d="scan'208";a="6869262"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 01:56:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="877441617"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="877441617"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 01:56:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 01:56:46 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 01:56:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 01:56:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 01:56:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ltox7ZD5w0K3+6eMSjlWO2Yw+J9EVAI7o4NpkKAZfbVA0WTesDJb2iG6LxddlbY/ppMxMrxZ8HgV1VmIaFABTlYzv4PoE8UgsTvhkHVsTcJHoFepljEt5nCkgBRXHp8uya9wS67LD66itmCdHBxQbugkYeMbJPkNH+kUtAwF5CdrorK3OOQHsk0D3r5ATEzMxgwG8FTGOlVO3yOqgdEzO+NqIO59Qab8fyX7JmEGtlua7IrlQferG3MbDwspa2D0gjk4RugVd3/bHCSEOz8FoyaPYYg3JkGiLm9df+U2EMsyrV8ozvpQbAwupWC89ulRr5Rdh7up988850z4wbxcLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8707VpNcr06NpzVCD6iK19cgIg8A8RPgKON/aDOxAE=;
 b=nSi1cFHY9P759y7a06IOci4HZZ6dar53Rtl3rj7418qQv21ZB5i2PAoivZpnPnTT1Hw9bfdtKCclTH7shCeMLJ9ZRjdRo2vTKS6ZkrjiS0woRencaoWfU3Kmq8NAPJCbTfzZaWWs1nbl+c9o3GmwoydkSol8s7EG+9nh1jwWiPsUzQnI4o1yq33F8UyVY5SytkoVVf4cznzOVIZ1Cgw6qyUF0jGvXDmnwiYtvwvRy3TnVtrQVIfjli7MP7LjXE2CZ68MagBbkuxE2arO06MNJiVWm2PQSrvx6iMv8H28gy/HQSqr0AFU4FckcP28XSDlszU6owKJrbHM6g9tl8kdjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB5406.namprd11.prod.outlook.com (2603:10b6:5:395::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28; Tue, 31 Oct
 2023 08:56:37 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb%4]) with mapi id 15.20.6933.027; Tue, 31 Oct 2023
 08:56:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/dsc: Use helper to calculate
 range_bpg_offset
Thread-Index: AQHZ//Fx/xw87BLW1U+a4fDGSVHhqLBjsB1g
Date: Tue, 31 Oct 2023 08:56:37 +0000
Message-ID: <SN7PR11MB67509711839F76330D163502E3A0A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231016052038.1905913-1-ankit.k.nautiyal@intel.com>
 <20231016052038.1905913-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231016052038.1905913-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB5406:EE_
x-ms-office365-filtering-correlation-id: 3a4f27c6-2e87-45f3-bd54-08dbd9ef4acf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jqTaUtT4bXSWBLGe2JCt4OqpiZq7r7Dz8yaJGoUXZNhJfUdV4B6br9pOmfCO7v2gWLCtBRXsIqvofWlweURVJPq5f7Btbdxlr9ILLNhQoCqHtjZGBHVg7XW2kzSWWEvipRI638UsojDvv3fFm73/lVbaPJaWV417lL9u1YLrJ2lCqspuUY92+UzaCJOzCy/fDBxk1aySoV/LUHUkseoWU40BF2y/7Dmjetiurmhtct6jaaWncVih3NKVAEongkVlbTp109wMzQAbJe3cQG4KuFkONWQrpT7eGDOH1BruHK/oGt+gS8Uw336mkls/L9AijKwicLJgbEpMjsZo2P63UExKFDU6dDwtNmwxyx6W08++9KP8JdUQ2eUoFwirQCCHy7U8YSj2HnEhoFQJeJQGL5I63HoP/pJUk4QC8OW8S1IFWqziem54cwt3oDHJiRZr70hO26OTjMLLd1IAMpBhdn9dUU45QnIawUuTHEte7rKTJiETy/cN62YelTSmSpxfH4mCbCD3wydyegdLcSOkY8DLJs3NXU6908932SF3EHJVLziJkZzDkOmopqrkxQfICCgHEItS/VJu9nvdSpopKeOFbHGR1Bvkl70Z860h+kPz00QzbPX2dhFtvYYGqHSc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(39860400002)(136003)(366004)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(38070700009)(26005)(9686003)(55016003)(38100700002)(33656002)(86362001)(122000001)(82960400001)(83380400001)(2906002)(478600001)(6506007)(7696005)(53546011)(71200400001)(41300700001)(66446008)(52536014)(8676002)(66476007)(64756008)(8936002)(5660300002)(316002)(76116006)(66556008)(66946007)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EPkIP2f7GLDchCNzfNrk+uGbhVQLu1e3/jV6yCvyx/gAIzvOJTxatcfMYFgM?=
 =?us-ascii?Q?rVItHPtIbkqJ2zNnUdNvEpxjumNDpB5ydo4hh+lb6Lt9syNSjnjAahYcD/8z?=
 =?us-ascii?Q?hLRWXcNPW9W1dASlJGXbnskqTA0pP//I8fz5ITKd2S53mkMLf8w7t9r1oi6W?=
 =?us-ascii?Q?Iv0tbojZW+GR6myl77xSbj2dI3g9ivOy5CS2KS6GcIfeL/tJHqzKv0QBtlMF?=
 =?us-ascii?Q?5DvKaXjyF+IFmaz5E48BJ/TdUhQpNjQOrtmpLXmQlDL2YuNoGR/2QRn583Vt?=
 =?us-ascii?Q?kQZOM2wt54TFbG8lr8BmQVqWyUY5CwZGwZeD+czAM3Gc61EEzEBgQVAtDtZr?=
 =?us-ascii?Q?wh6cK27w4uONGVl00QmskieXG77AO6sFZh7eZtNqFZ15oBnSe3IvMNrL/n47?=
 =?us-ascii?Q?4gTxumUV7jGqRmF6oePBMoPTMoROY4m1XVnafTX1J10Z8ZhUngTQAWTkz8tV?=
 =?us-ascii?Q?ZrG3nqrtdqLmuRlIGlNQsyDOO4KnUwwISkp4yWY6YtJelPoG3Sgmmtq5eMC9?=
 =?us-ascii?Q?hITlPtnIJ9mHRnN9JrMDxQdAlaGPlFKP/6PBZRb2ovJDp781R2UZFM79xxXr?=
 =?us-ascii?Q?mxGs7bePFuV2RTo8L8oceskRLxjVfhIi1tWrmf6JuJ0HgA2uoEZxpR5NRlc8?=
 =?us-ascii?Q?FvBs9DqOiJGu+kMBtbZJ3FnSDnc+0/TN4LApphgOSEDef6I2ZlwnARljE1Zz?=
 =?us-ascii?Q?xdkkWDJr1W3P1lS1Xvtulb6Z4Ula/EawoJjnPGv1lgUph/qlZQrhTDJx3QcG?=
 =?us-ascii?Q?e1ZOFWuMj+RkLdkO0I2N2/fc97VVS+DSD2xGuyzcAJUxwe9jjsDh35ZlcQ4T?=
 =?us-ascii?Q?wOrYYjIB6EQmVggKwCmTbsf9POonZN51ddui5WwWPXmEzs0MZZ7anT2ZCVVF?=
 =?us-ascii?Q?K3lnArsI8fYWMgtay+Tr8N1CkUENkiKpyXu7cEk9YjLFb2teFX6DnkN1OYXF?=
 =?us-ascii?Q?II4YwgLQR3d78aC71N99nPSVapqrN8fBhWsgFOuCu7055eyYrNPmCJl297Hl?=
 =?us-ascii?Q?wEamIDN480qPmM3UQiEdoHubs3iKzs5ZA/HG/4gkQA9DPhYx4h98t1bm28Op?=
 =?us-ascii?Q?EUy2QSnTrfGa2ijjg3P7CJ1DwhgQhNWHb6VrY+wQFV1q21lC+x1kTKAPNS/Z?=
 =?us-ascii?Q?4S/2ZcC2yST4dPv9BMN94LrVDSZI3HYp8scOez2tNw1owpu2KZRbceJFOqWo?=
 =?us-ascii?Q?DTDCczZCKX5yeAsyWycO3dMCjzy8bpbv/xCoOdC9dyCBMDaxY+HytQ0VYGrD?=
 =?us-ascii?Q?c/mXpxiDn5PTcbmkKJQHNvoX5HuLM9+HjADdqpadoljEY/Ng4XZpLS8mB1Xe?=
 =?us-ascii?Q?i6jChpg9d33UMSNyDV0wuWkEmJxH8WQCozEIYTjv+mipCRiOZaK9H6vXgxEZ?=
 =?us-ascii?Q?jnQGMjYqJhWFVpiMCrFtJ/QR46tVh3ODaNC/tA+ZF0VfxZY9wRyNjhISd9rg?=
 =?us-ascii?Q?bFUcB3lND7oQDh1jprEnH+/g1BUg+zDvKGVhft8OTBEvWF6N969kC3U/Pcwo?=
 =?us-ascii?Q?Y/DSJvXA/+263+AykNYtWPzwsNj+Hy76rvNnnXOx/BJLtXaeqvC0MJDhXA0v?=
 =?us-ascii?Q?OaDNWcmDoB6BbG0uLoJMBtlikqy4K5MXJ7t0JNvG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a4f27c6-2e87-45f3-bd54-08dbd9ef4acf
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 08:56:37.8321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0bLU1GXpdNCkWKG8Qk9NhLeLBfUCHUIuJbefPD/lu3489Nkdnhg9NQQxKujHKYzCp+9QQMi+W3Exe45NE9SUmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5406
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dsc: Use helper to calculate
 range_bpg_offset
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Monday, October 16, 2023 10:51 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dsc: Use helper to calculate
> range_bpg_offset
>=20
> We get range_bpg_offset for different bpps based on linear-interpolation =
from
> values given for nearby bpps.
> Use a helper to get these values.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM.=20

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
=09
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 59 ++++++++++++-----------
>  1 file changed, 30 insertions(+), 29 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 6757dbae9ee5..708c6d4da0a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -65,6 +65,13 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config
> *vdsc_cfg, int buf,
>  		intel_lookup_range_max_qp(bpc, buf, bpp, vdsc_cfg-
> >native_420);  }
>=20
> +static int
> +get_range_bpg_offset(int bpp_low, int offset_low, int bpp_high, int
> +offset_high, int bpp) {
> +	return offset_low + DIV_ROUND_UP((offset_high - offset_low) * (bpp -
> bpp_low),
> +					 (bpp_low - bpp_high));
> +}
> +
>  /*
>   * We are using the method provided in DSC 1.2a C-Model in codec_main.c
>   * Above method use a common formula to derive values for any combinatio=
n
> of DSC @@ -82,7 +89,7 @@ calculate_rc_params(struct drm_dsc_config
> *vdsc_cfg)
>  	int qp_bpc_modifier =3D (bpc - 8) * 2;
>  	int uncompressed_bpg_rate;
>  	int first_line_bpg_offset;
> -	u32 res, buf_i, bpp_i;
> +	u32 buf_i, bpp_i;
>=20
>  	if (vdsc_cfg->slice_height >=3D 8)
>  		first_line_bpg_offset =3D
> @@ -156,23 +163,19 @@ calculate_rc_params(struct drm_dsc_config
> *vdsc_cfg)
>  			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
>=20
>  			/* Calculate range_bpg_offset */
> -			if (bpp <=3D 8) {
> +			if (bpp <=3D 8)
>  				range_bpg_offset =3D ofs_und4[buf_i];
> -			} else if (bpp <=3D 10) {
> -				res =3D DIV_ROUND_UP(((bpp - 8) *
> -						    (ofs_und5[buf_i] -
> ofs_und4[buf_i])), 2);
> -				range_bpg_offset =3D ofs_und4[buf_i] + res;
> -			} else if (bpp <=3D 12) {
> -				res =3D DIV_ROUND_UP(((bpp - 10) *
> -						    (ofs_und6[buf_i] -
> ofs_und5[buf_i])), 2);
> -				range_bpg_offset =3D ofs_und5[buf_i] + res;
> -			} else if (bpp <=3D 16) {
> -				res =3D DIV_ROUND_UP(((bpp - 12) *
> -						    (ofs_und8[buf_i] -
> ofs_und6[buf_i])), 4);
> -				range_bpg_offset =3D ofs_und6[buf_i] + res;
> -			} else {
> +			else if (bpp <=3D 10)
> +				range_bpg_offset =3D get_range_bpg_offset(8,
> ofs_und4[buf_i],
> +									10,
> ofs_und5[buf_i], bpp);
> +			else if (bpp <=3D 12)
> +				range_bpg_offset =3D get_range_bpg_offset(10,
> ofs_und5[buf_i],
> +									12,
> ofs_und6[buf_i], bpp);
> +			else if (bpp <=3D 16)
> +				range_bpg_offset =3D get_range_bpg_offset(12,
> ofs_und6[buf_i],
> +									16,
> ofs_und8[buf_i], bpp);
> +			else
>  				range_bpg_offset =3D ofs_und8[buf_i];
> -			}
>=20
>  			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =3D
>  				range_bpg_offset &
> DSC_RANGE_BPG_OFFSET_MASK; @@ -198,21 +201,19 @@
> calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
>=20
>  			/* Calculate range_bpg_offset */
> -			if (bpp <=3D 6) {
> +			if (bpp <=3D 6)
>  				range_bpg_offset =3D ofs_und6[buf_i];
> -			} else if (bpp <=3D 8) {
> -				res =3D DIV_ROUND_UP(((bpp - 6) *
> -						    (ofs_und8[buf_i] -
> ofs_und6[buf_i])), 2);
> -				range_bpg_offset =3D ofs_und6[buf_i] + res;
> -			} else if (bpp <=3D 12) {
> -				range_bpg_offset =3D ofs_und8[buf_i];
> -			} else if (bpp <=3D 15) {
> -				res =3D DIV_ROUND_UP(((bpp - 12) *
> -						    (ofs_und15[buf_i] -
> ofs_und12[buf_i])), 3);
> -				range_bpg_offset =3D ofs_und12[buf_i] + res;
> -			} else {
> +			else if (bpp <=3D 8)
> +				range_bpg_offset =3D get_range_bpg_offset(6,
> ofs_und6[buf_i],
> +									8,
> ofs_und8[buf_i], bpp);
> +			else if (bpp <=3D 12)
> +				range_bpg_offset =3D get_range_bpg_offset(8,
> ofs_und8[buf_i],
> +									12,
> ofs_und12[buf_i], bpp);
> +			else if (bpp <=3D 15)
> +				range_bpg_offset =3D get_range_bpg_offset(12,
> ofs_und12[buf_i],
> +									15,
> ofs_und15[buf_i], bpp);
> +			else
>  				range_bpg_offset =3D ofs_und15[buf_i];
> -			}
>=20
>  			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =3D
>  				range_bpg_offset &
> DSC_RANGE_BPG_OFFSET_MASK;
> --
> 2.40.1

