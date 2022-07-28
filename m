Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ABF5847B5
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 23:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29EF510E8A7;
	Thu, 28 Jul 2022 21:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B24410E8A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 21:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659043729; x=1690579729;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=q0BHZKf2xjNkHj/hjlQb8Bb5hSpoHrSdnJtnyXx2nXM=;
 b=NtAXo+CXfFuy8lMgyfWeItazqH2raG0fYV3Ksz9jbelHpi0OM5IVJ++q
 DCX+f3PHk+TGI6noH44yMxZEP9HnuUO1njucRBXvhvaMr0WdbSQXLoAsz
 IZt95SkbxA3g7hCOIsqiEw1OW3w5+F6z7JtkTZWd8UxiWnIQ/TyJlaNW7
 nKD4P6kUcCWknCzH4PKt93aehteenCM6jKqMMYDMvRUD1b/wRDbpHGeRW
 eeUEeoDviJg1qxZWFqPtWg6fLOn33QoIAniWAqAVY9yIZFHU2AxLBkvOO
 JvNDmL1GBv1DG1QzCpD0r2epcfJPq3/7J0uAllIxUjXNWDHp0Dr471hdK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="271672751"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="271672751"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 14:28:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="576671031"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 28 Jul 2022 14:28:48 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 14:28:47 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 14:28:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 14:28:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 14:28:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l9X/mez98ICCT1SuqxCJsyGxV9fgfKqJ91MYRVGxRKSEPWcUnZ2FTZJ7SjluQgqbpyNdPNBDyTwwOF3Rvo7RQROUgMFWmT9jQLGSRAZxW8/5WlGXQiIrkAM/07uWseVaXLpqXVhta6EInR61ocmJbzai4WMpV2cUZDAdIP4gWQo3h3uZX/VdQBSfM/J9lcnc8j34d+N7E9RSWprjeLHSkY+CxIts0i9MCEPqMHfHnN3ZbRG7dxKotO8pb3TNFfZ+Bkb5jTUWITwxj9GyfQ0Ryqo9iccFek8wxTitNZueJlTWw5ZqEGPCqcgAVzD34+cIERvRBocKvdwqhHbKC06Cyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Sl7x/4ZMkIjCxd3BzxrPbI206GxYoeLygvM2gyr034=;
 b=RXEIlKvbP5653hp51GBMgP1k+Dr1sc4D4MvoKxSVHLTzXvIhNHDkdWpYkTaxaMXu2ni8bcFICw2p42wLFUCYMB2laeWJ07rXKHiUAU+DlN/SNrUQdorzy0h8pfOagGhz+JSeBPlHRAP6xAqUkTuYLLl2PUkGwQus8Lsrt9oLFkzzGQnQ1si5NJADU6yfQ+5rynf4a+LQyU+ylT+j5NUESFfYdInSBWybAj/LPFAP8ghBdqWHM+8QIrh2h4YKcmlx5NVvlbxohDGQrX1zu+H7NM/44SpkAXCBtgnIMDVZVGqITb7keo4BSIEO/7RN9douKWjAmSZHhfkAA2XNbz/Adw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DM6PR11MB2553.namprd11.prod.outlook.com
 (2603:10b6:5:bf::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.10; Thu, 28 Jul
 2022 21:28:45 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::91b:c296:9224:c6e7]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::91b:c296:9224:c6e7%11]) with mapi id 15.20.5482.011; Thu, 28 Jul 2022
 21:28:45 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 06/23] drm/i915/mtl: Add PCH support
Thread-Index: AQHYoiI87SsaVvJLjUysKz8TriMYi62UTagA
Date: Thu, 28 Jul 2022 21:28:45 +0000
Message-ID: <CY4PR1101MB21669DD19FDF906864E02BC4F8969@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-7-radhakrishna.sripada@intel.com>
In-Reply-To: <20220728013420.3750388-7-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 794fd4cd-b64d-4f8f-528b-08da70e026bd
x-ms-traffictypediagnostic: DM6PR11MB2553:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uheHkumtYDW7WDmPtuz5nnNVzA0llzskZQXuGHTDbTOgFX33gokBPNxITKO74mtIlXu7UG5a1f2FL3eXWZRSCozwFTZ/c16p3tj6xN1N4K7WXZd7pZznTr8qknwYY9x/yDium1Apiarfq+/4/5ZDbrk2T0BQlXnmvL5Q52KJPejWp5VlUgyhoFk9dAmvbqLoGAtagYltWbT4TX5tm1TngIbZLaJZTGk1mMtXYQxKuENDljvXlXBwZVvVd5inuqdhX49QZDdsKMFOWNJrnjP3YOVrXqjUEHq6snHWARb3OAoROZD+/VA+QRJk0NlPb6XdeytQXOT4Q8/mnFqyQ8ydw73N4hyNR8uvGBvBnut+WtEzjmWav09zB84DX2e3uiJUTMebaJhJCQZ6/hokb6yiMWAWH5efF50nFtEEr6O3oO7B0FVUF+YStyUl6+YhYmzOHN+0IgJZii9Ph+gQ5aEL6Yv7uUrUR1m60Cp5K+DIAl5ifmde6DVt8HP1jj0R+h7gwh/awDVdjAN5woREuXCxCFUMKa8PM68CO01CRgmBOTODD6OCtWIvvVbw373yVJyCoLgGBTu8nkL8TmprJUhmSWNVXdRV3gvBLxQAnvUw0uVdR8pCmRpEZleGQ2JYklEYK54Op+372PePqpJDBLpXqavtaYH7YLstqq5KJGJWeOMilH+ZcxLTs/uirmASyHiomcU3lYzt5Jzuwc6YhCXWt9NXzPGI6VNv9WatcSx+VX4ZvrL3JGZ3WCYNpjFSSWKu77Qaj4kJraiJicmcEN/HtG266OHBUl2sEuwA3MSfXqwUPRv8OzQz4LVeRnlCvevn8qLDgrHBkGQc1/Gphdf04Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(39860400002)(346002)(376002)(136003)(82960400001)(86362001)(38100700002)(83380400001)(38070700005)(66556008)(66946007)(66446008)(76116006)(64756008)(8676002)(55016003)(110136005)(122000001)(316002)(66476007)(2906002)(6506007)(52536014)(26005)(8936002)(7696005)(53546011)(9686003)(5660300002)(478600001)(33656002)(186003)(41300700001)(71200400001)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3wYgAykrQDhyJ4JK2+6RBMQ34bNXsIiPsic222PsCZXTNOz2EoDdgj7Cv1Hz?=
 =?us-ascii?Q?Md1sSS4K2Op5L6fh+y61k3V+HmMd30d2ia/0lY8EhwyFv/WwzHWe/tGkAbe5?=
 =?us-ascii?Q?RAelFvQ9SE8NkPOFmA2Vzvag1RvDAOlRNQvTA3JXthFBdWG35IZk3vmtNwAs?=
 =?us-ascii?Q?YKeOTmp1c3SpfIl37BxEGZ09l4PqKYAgy1E9oQZBOnoCtOLznoWR/wRdsoFn?=
 =?us-ascii?Q?g3RT7iePMFsNUDuCmQxpcsrewyXn6kHHK6WDxtgQDTqAA3AeCSIJtdt1SyjP?=
 =?us-ascii?Q?zIH3A5KNh7ETK774OU8Ay4dcrnLFuwVrZFnVrpRA9xpSs1AZan6OOT6/yY5b?=
 =?us-ascii?Q?WRjILV2vSEc4z1qE3lDv0VacfSCu33zxThG4M9sTHOM1QTllm0n/WJJX5607?=
 =?us-ascii?Q?bHPsNnSOP0sOIn3N9RKb7Li0WkSt9h8bxsF6EosK4VdS/TG376KNjDwDlgNj?=
 =?us-ascii?Q?+YY4zcjmLbcIH3qYNWMEHNhjui1BD43Qs4OGR2TMcYLHPPCl5MbWWbHXdcBJ?=
 =?us-ascii?Q?c39fDK5IduwK/WWOj6idLfJzETqnYBkHJN/sBJtkVuvKgU9OoteV5woeJzCo?=
 =?us-ascii?Q?6HaJZ4K34qvuDp01C06TAZGuwpkhHUEJqh5qluA3XKsVoESyufkklvTU3LOk?=
 =?us-ascii?Q?xetjbxNAyuVywkEWEjVKfUjxEdrk98MLqlm1j9LOSTsICk3C6H4GnJ4Z6bwe?=
 =?us-ascii?Q?w0LtbTwQshZTZqj5YWCz10GqzzioDsMZJ0J52c/N/dK2oFL33VKkvL0ZcPEQ?=
 =?us-ascii?Q?MWWu5XKqOLlkj/eGkqTF6lgYpAOahQA2XyFGBbAoLxFsFHA3uJI939D/Ryki?=
 =?us-ascii?Q?l0MpKbvU8EJYg40kaeoSvXqZ7OZzNhwvuwZxv2Z34oRmnf7zM9mECMfp6QN5?=
 =?us-ascii?Q?c3mMSGZYdCNMPK6loltWAxGVNZOeZtiwSwFAwkDK74YKml4Ys4kPLePzpgs/?=
 =?us-ascii?Q?ut9Bw1+WuJZkesd4B86F5BWHQxPM5d0X6mbXqhyvbpzpmYwp9yg23qL0TvpI?=
 =?us-ascii?Q?KYsKGLIBx5AZ/QDudnE9LDC2p8zwa1U0UnZc6Cawh200fyn7d7azcwCrE+lo?=
 =?us-ascii?Q?kAJvct3T3FQx6oJ4gv9AzXXSvzb/j0Z+YJ0TT1QiZt/LDbDQvep/Yt8Sn8KA?=
 =?us-ascii?Q?V/xPjJ6Q0MqVkqU/zlSS5TWI4M9lE0C5aIlTDn3FCuRrIAzAbzRYHm8EQ8y7?=
 =?us-ascii?Q?JdiWHr/n985aVzvuVt77qwQzHQ0jdSh4hNNZDKKG8EK6fHQSyS8UkG8zerR3?=
 =?us-ascii?Q?3DoxrhaNlqIvnednbQk1PfzrwgvfjkyBi3hadQYqk/lXW72jRDwotcqVjPC4?=
 =?us-ascii?Q?LFRiWLORSwc2u20gCA8c0R3RXhA5Txc4FTzUsSekU/ySALTVT1urUrfI5bqW?=
 =?us-ascii?Q?JKGoHb9G/6dTWaN8vRoA0FjX2N419x/T4hhX4KP1ctPGYDfjfSPQosnAaTU8?=
 =?us-ascii?Q?J5Kfk8RBSlSt8/ZnxalyrAB8EQbg3WZTMyB/rPIXtvBgVpmcfQJVbvw2GABL?=
 =?us-ascii?Q?TNdNtrFjGWp+hy3YVFs68Pz8jtt4xZjraoDjxE21LGlhew4xvvhs6n4ltJOB?=
 =?us-ascii?Q?IUnMfgkQNIKPucQ9mB5Wyz7X5pWSayOppyAIJ4h+UM/Oh2+HxEQ6ggigxuG/?=
 =?us-ascii?Q?tA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 794fd4cd-b64d-4f8f-528b-08da70e026bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 21:28:45.0804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MpcwD59EdPtLFXOxJI+Chi4aJHqHq0YnVIE/BsJI2ztQRl1WCLcPtZ0dl8fB6a2KD2s7jYc+rN9P9hqIoyv0aPn1RLnzgK92XX9gQ2igZIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2553
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/23] drm/i915/mtl: Add PCH support
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
> From: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Sent: Wednesday, July 27, 2022 6:34 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Subject: [PATCH 06/23] drm/i915/mtl: Add PCH support
>=20
> Add support for Meteorpoint(MTP) PCH used with Meteorlake.
>=20
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pch.c | 9 ++++++++-
> drivers/gpu/drm/i915/intel_pch.h | 4 ++++
>  2 files changed, 12 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_pch.c
> b/drivers/gpu/drm/i915/intel_pch.c
> index 0fec25be146a..ba9843cb1b13 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -138,6 +138,11 @@ intel_pch_type(const struct drm_i915_private
> *dev_priv, unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm,
> !IS_ALDERLAKE_S(dev_priv) &&
>  			    !IS_ALDERLAKE_P(dev_priv));
>  		return PCH_ADP;
> +	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
> +	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
> +		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake
> PCH\n");
> +		drm_WARN_ON(&dev_priv->drm,
> !IS_METEORLAKE(dev_priv));
> +		return PCH_MTP;
>  	default:
>  		return PCH_NONE;
>  	}
> @@ -166,7 +171,9 @@ intel_virt_detect_pch(const struct drm_i915_private
> *dev_priv,
>  	 * make an educated guess as to which PCH is really there.
>  	 */
>=20
> -	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
> +	if (IS_METEORLAKE(dev_priv))
> +		id =3D INTEL_PCH_MTP_DEVICE_ID_TYPE;
> +	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
>  		id =3D INTEL_PCH_ADP_DEVICE_ID_TYPE;
>  	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
> diff --git a/drivers/gpu/drm/i915/intel_pch.h
> b/drivers/gpu/drm/i915/intel_pch.h
> index 7c8ce9781d1a..32aff5a70d04 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/drivers/gpu/drm/i915/intel_pch.h
> @@ -25,6 +25,7 @@ enum intel_pch {
>  	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
>  	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>  	PCH_ADP,	/* Alder Lake PCH */
> +	PCH_MTP,	/* Meteor Lake PCH */
>=20
>  	/* Fake PCHs, functionality handled on the same PCI dev */
>  	PCH_DG1 =3D 1024,
> @@ -57,12 +58,15 @@ enum intel_pch {
>  #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
>  #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
>  #define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
> +#define INTEL_PCH_MTP_DEVICE_ID_TYPE		0x7E00
> +#define INTEL_PCH_MTP2_DEVICE_ID_TYPE		0xAE00
>  #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
>  #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>  #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35
> has 2918 */
>=20
>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
> +#define HAS_PCH_MTP(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_MTP)
>  #define HAS_PCH_DG2(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG2)
>  #define HAS_PCH_ADP(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ADP)
>  #define HAS_PCH_DG1(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG1)
> --
> 2.25.1

