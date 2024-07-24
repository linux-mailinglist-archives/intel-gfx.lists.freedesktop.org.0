Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D65E993ADBF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 10:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4043A10E548;
	Wed, 24 Jul 2024 08:07:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BiyqBmpb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70D1D10E548
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 08:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721808425; x=1753344425;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=a+4Ikr2JE7Pi3KpKJiK1Uc0jsheNUqJoq0/NUMMp2TI=;
 b=BiyqBmpbQhZYVraePMUQmyUJMVS4P36FDECOPbVN4pPJZYl5PU6g+Nrd
 5ieSr4hBPyY9bGchhlqgxllb+mhOPI22MzlzZpD/n6zVsU9nh08J5eDKe
 rjUsI6dfr+OQKAmxWVJ0/KBgwaW3j9WHINLw6Sfxse3w/PYruJg6QP77H
 DcPOYiLbf1WHI34R0j1XgPksFgKkAXG03rIoVZn33pW/vksFoPNITRVwX
 TZlcej4vkuUn2GXZg615ubrrWecucUnBzpXblr8bZRyGVUtvw+7JRmWNi
 BzvN10mWttX/0mPt32tZdqIXi9OLufzL3GUNTP7D2BZ6yJ8gD0KY4OY8o w==;
X-CSE-ConnectionGUID: Zi4oVictRPC/ParOjTIYCg==
X-CSE-MsgGUID: /lREO/20QVieZUoVvViCdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="23334241"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="23334241"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 01:07:04 -0700
X-CSE-ConnectionGUID: vI/jFD2SQdeljJ+zQU7OcA==
X-CSE-MsgGUID: xr77v3HPTdu+hJfvoYLjwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="57625797"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 01:07:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 01:07:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 01:07:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 01:07:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 01:07:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kMVAvo4Z7ckfhrnxOvakXUSQlJI7OmXcUFk943TCeZ1c+Av9yvQbiJCEkpj0mFch0Q0nTI4/4BeAORLLhfO/FDMmA++U9uoYAa1cPnDCiZZVMeB8P74/xYoAfOKMnS3jsP7i5uvcy6rawLB1y8RHjr6bQvHFVFPCEuUrQLDNEY/+Jj+/uMqBfMlmpOrn0WnoyRXArEoJg/2tYt+F+4CWjMcP0F3wltE9CiBRZPuaMRhe/OF2ZepVSGBKrr7pyj/nOiSIChfu+eJfF6Nojz8PtzLnwu/RX2AWz2xr3tkFIMDhC+kjSjwpfpubrmf631i2NyVgONFebZrByR5rUPcVmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=heoHkxtd3CY/3fbIkfuaC2No5ETsfSQ7ZWqe8pZgZQo=;
 b=vtnu4hclvemjyyBHAcfQrNQk+DJYdSYU4WEXKQ5xg95P4j4wmj0lOIf2xVx6CS9bvmEvNqi8osx2mp2Ul1IVW1epyjxprG9hXaidk2NYJ1MfaEKHuWlprVMCj3Vo40lUjL8j6x45X+XMSbehj6679kshldVbXQ7WlswtvaJXftLcK+T+dTPHVu1e/TuO/M+OBgL9v2RM8GYgaB2/KZdKmP0fYecVEPy9FENHByjnJdIyG6Tl1PJUigwpRGDIJXnBaNHxqHekRjhhA5PbI7xvZVNbML5z7/6UJN1k1MWOj3/OxX/ZfBffdok9mmvc6DMLXy+eSIwIU3eGPuAV3sx+Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Wed, 24 Jul
 2024 08:07:01 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 08:07:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 11/14] drm/i915/dp_mst: Queue modeset-retry after a failed
 payload BW allocation
Thread-Topic: [PATCH 11/14] drm/i915/dp_mst: Queue modeset-retry after a
 failed payload BW allocation
Thread-Index: AQHa3FgPubRRAVG5JkuCLFwUM9LNXrIFiBXQ
Date: Wed, 24 Jul 2024 08:07:01 +0000
Message-ID: <SN7PR11MB675053FFE91AAFCEF5863824E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-12-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-12-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW3PR11MB4699:EE_
x-ms-office365-filtering-correlation-id: 6cfe8294-3858-47cb-6ba2-08dcabb798d0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+Jog+qz8vXUIc7LQxHrZTNdjzPwNAVTs576ib10nZ+hcch126O/mYAvM1c1m?=
 =?us-ascii?Q?EnisB8BcZC+MRFBNwYACsojQgrtzQ/qB+KelNuy2GVAt/4avLzxq1PS3G+8C?=
 =?us-ascii?Q?rpGGP5S7Azunc/2HCJpJgszhbDARAC9vDoK0pBevrMZabxHW+8MVAme4lNlF?=
 =?us-ascii?Q?99k1BSF+nQnpdwefziQSpNBNuHxAuSrd7u/4sDQGs7Dm0TBjKGtFtBehQGMm?=
 =?us-ascii?Q?KmV2YQkJK4vgCGqXGjP3G/arbPwvTfkhqH4hV8LklRg96PJsIcmpL9CnOTdu?=
 =?us-ascii?Q?QGMeQnM2ru3EmMAEeWWwPGjUNtrunkbf9p0LH5FmvVqONFU2kXbf9SvJbR3d?=
 =?us-ascii?Q?390fniIuVrex7wn0oG94wDt/kORJ+3l1GoVi7YoZXFr3rizrnU1ESOxS7oSq?=
 =?us-ascii?Q?blPPEhPM8gXTiiRrEFODg9n93NxhEvi9LJoRJWlH/qV6xpLFjidi51OCU3Ez?=
 =?us-ascii?Q?tExhlel1wFHQk8X/Yo7ZI0ySlUhFVibGnNvjnudEnTqLaGIPLO7g7muKgDXd?=
 =?us-ascii?Q?N0USQe0Fojryv1Z6b+MzsvQssGC/atHsC2P2/IUO0i4RJIUIdanW3NeviB6i?=
 =?us-ascii?Q?MRl/sPOa9TP00cphbTG6nJXQWWObbLR9t18b7VNGFJhGIviIX1sLd+HPO7Wk?=
 =?us-ascii?Q?XbUQNEPSEtmiMR5VZl/SPuZdcs8AnNvQM/yo3qitpXbwNifUweQ+kEiJW1Gv?=
 =?us-ascii?Q?rrIVdzyXaQaauQwuNcwAVkj3rDDwYGSoPyAlDGTuxdnuYgdrlPUtQe3yhlDQ?=
 =?us-ascii?Q?O8ckV74z8RQGWyXOIgs67Nc3O0RQZNwbWIvDB9R4ForkQMqQzpgPTOpmmdEw?=
 =?us-ascii?Q?ZpNzHo2UiJ9MhjhbX2L2wpdu240RgovroHpwv8EA5MX2qO5vWSwjv6fei2Qh?=
 =?us-ascii?Q?QSYZrdPfiOK94WVhLSeZBN/yxT4pTiWoO98VkZ8pV+vOYZsEy6ExGowmZqoh?=
 =?us-ascii?Q?8HEwNEgvsRyskeHJjMsbRTKsuM0hurGWh3loB7csF7URoSF0viqYBqVeg0tS?=
 =?us-ascii?Q?jt7gUEXyKjvun37Rqw1cqkocHo9Vqa0LpZiTzG7CVvZc8Xq1VkVY1RjFPMHR?=
 =?us-ascii?Q?4pkkmdEUBxHLa72OiG0OUykHBpBg8RcaGFjZmFAyu84h6dmw8lSXB6Xgd2MT?=
 =?us-ascii?Q?OVOApE/sTWFiyoBQGzaMfmimCTOHl7VcTmeJgrlEs0b+7JKSw7roNwxeBVRT?=
 =?us-ascii?Q?tcxzWnWqyUB5sd8B2YHNO7KTLvntOKGPcefcft2XLPyXz4+rOmACBYanmynV?=
 =?us-ascii?Q?i1Q8/CyiRUNCDyNrTAnXI/1W3BV4vdDGP6wBU7PVmwqihZMO/0KbxbIMUk8t?=
 =?us-ascii?Q?OvuXFhwfZpB4Xtf6u4/3IwYa6DbppH9tWZjwz6g3eL8bZPr7bP9HIHpLsqhQ?=
 =?us-ascii?Q?XmUzuzNrwS4ge1dVPIR/Dzdai/HpoiTAeWK+whB2eDXQSK1tZg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FVgyW9wOvl89alTDRBawRueykh90lWuXJIrxmvh1luMeE5Y7LZ2MtHj1lwgR?=
 =?us-ascii?Q?EQyhgpsM8BlC70fiqSCot6cJIA6QyzgaiaNVpARUK+etKcDK8gRaYLxTv7I4?=
 =?us-ascii?Q?AYvOpJaojOBaoUCCAtVVGwmyBa6X04ECoN+gs9AYkj9zK7R5isoCEdijSx5m?=
 =?us-ascii?Q?K9cRPBAxCg5z7jdnOeeGjhfntWQHcpKJ7rApiAeLSjsmbs1Aq48p7YxRcvCZ?=
 =?us-ascii?Q?cPhgdXsKvcLtPqgDQr4iFtRXZdWiDIKTrW9aybb08Dn+WHSbRPC1TBAGtP06?=
 =?us-ascii?Q?PSehvNS4antV/CyA/KR1Mc3E4GExY0vE74w9vfjA5quD3lFUrmdQIJbs4pMl?=
 =?us-ascii?Q?f/H/4Ea+IjnrWiTr6eP8ncnZZNgHclpAQf9Np/E7/4u1wkSR2EG50GrJ3+hZ?=
 =?us-ascii?Q?merBV5XZchPdGmWAMBVk99I91S0ukpQW3hw7E9H0N+DaIfL121i85daa6v1Y?=
 =?us-ascii?Q?i9VUpbxI0IY44nhbfpMA4T6M7jEL9U7U8L5zNt+xOvg4SnzHPv87GHw7FJKB?=
 =?us-ascii?Q?bKm1amSciEPhuoUfAJ6cGmzfCJ54zFHisTmoeLsdWY9jw2xhYiUz4C1HZvEW?=
 =?us-ascii?Q?D+QxncIGzJjx4sV4W1/mP0QEPc9SEOnkdWLiiL9kzCnN4uk/dcIRN1lZ5JiB?=
 =?us-ascii?Q?vwW9zbuwSyL7NY0S4RWCPPNELHLuHiGgVsbYZNSo+ykShUGaq8FFN+HsHXta?=
 =?us-ascii?Q?GxzJ0A4HAdS4IO+BZfsoZLTIx+jaGmvjS6jEg0Geu2ZqkRQwA7tHJDRdsX63?=
 =?us-ascii?Q?lNQo7DU4Y+7rpRxOskvnpMf3ZcM4tQoevBu3bw7fzjuXa57TPS0qzOUW2sMU?=
 =?us-ascii?Q?PPs0ncGz9JgNAQNw9Oh9U/UtYBfaY6Tr+6d04j+iMRoysdnPIR6GXvsPE4U9?=
 =?us-ascii?Q?kainUxoCO85GWHx+O0zBuYGQFnNzsTptHcU9u7q7wZdq/rAZMzbRsSNyjp+j?=
 =?us-ascii?Q?h4VdXjmfyMGwEBn2SASx5i17KVWbmwb32OHRd4fsn3Xi7KYR+UrSxMIJzcnu?=
 =?us-ascii?Q?tzBbIIVfx7M9yaaxUrFH+IbPB+0KyvcxPj+Q8oXT8LwvVyT/ASVQ0gN3nrn3?=
 =?us-ascii?Q?e0YgBjH3AS1hX+we74Sg1ypMuSM2euEYQ+Jfdf+m95SUSZrifaGfsjF60D+o?=
 =?us-ascii?Q?dnu8Tv0cyaaOHPWRBZuMsX29Zw8V8QFPUkk0s2FCBZ5FM+fDlSr9USI21DAY?=
 =?us-ascii?Q?e/IWMZ5XqXGUV4LZBqmekGfc5qQShvKLIVqceMOGprke8kbwknXDP3zOoQDp?=
 =?us-ascii?Q?bzt8OqHHSTYyEhOtsqBF3ch4hTsKx777C0Gonrf9A5luFdOFm2+LYj5J+K+m?=
 =?us-ascii?Q?afz09zupZOUHKq1ic9lNtEH9DVm9My6rW1IXWasS1XFKgOPJgSio9Tf+3QBE?=
 =?us-ascii?Q?XPl05xmzFmDcClISHFH9ZgyNw7LwcKRouSuc+6xGfB9z2sQalYsA/pcJDrut?=
 =?us-ascii?Q?cretAXkzW+qAJ6BMoXVS8KI+5D3XU+gxKe1k/bEHLQHlyn+UAbFfkrYaK9o5?=
 =?us-ascii?Q?BRZuhUYn5ikyIfKllsohqnabFtwOvclEyapCOQG4weYd5GWjGlNycYN0IpyG?=
 =?us-ascii?Q?uAZj3aelfw4pCQcQbMZJVMlfjJzQkYQn6YsrobpL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cfe8294-3858-47cb-6ba2-08dcabb798d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 08:07:01.0508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eBtnsHrrwHbDHKIAmsZNyVHAdMGTZCd2sEThDWoxWqjSLHrLHXftFbQSWmE4fOc8hO9v8pt/a99uL+kvdzZA3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 11/14] drm/i915/dp_mst: Queue modeset-retry after a
> failed payload BW allocation
>=20
> If the MST payload allocation failed, enabling the output also failed mos=
t
> probably, so send a uevent accordinly requesting the user to retry the
> modeset. While at it remove the driver specific debug message, there is
> already one printed by drm_dp_add_payload_part1().
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 27ce5c3f5951e..57f29906fa28f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1158,8 +1158,7 @@ static void intel_mst_pre_enable_dp(struct
> intel_atomic_state *state,
>  	ret =3D drm_dp_add_payload_part1(&intel_dp->mst_mgr, mst_state,
>=20
> drm_atomic_get_mst_payload_state(mst_state, connector->port));
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Failed to create MST
> payload for %s: %d\n",
> -			    connector->base.name, ret);
> +		intel_dp_queue_modeset_retry_for_link(state, &dig_port-
> >base,
> +pipe_config);
>=20
>  	/*
>  	 * Before Gen 12 this is not done as part of @@ -1223,6 +1222,7
> @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	enum transcoder trans =3D pipe_config->cpu_transcoder;
>  	bool first_mst_stream =3D intel_dp->active_mst_links =3D=3D 1;
>  	struct intel_crtc *pipe_crtc;
> +	int ret;
>=20
>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>=20
> @@ -1254,8 +1254,11 @@ static void intel_mst_enable_dp(struct
> intel_atomic_state *state,
>  	if (first_mst_stream)
>  		intel_ddi_wait_for_fec_status(encoder, pipe_config, true);
>=20
> -	drm_dp_add_payload_part2(&intel_dp->mst_mgr,
> -
> drm_atomic_get_mst_payload_state(mst_state, connector->port));
> +	ret =3D drm_dp_add_payload_part2(&intel_dp->mst_mgr,
> +
> drm_atomic_get_mst_payload_state(mst_state,
> +
> 	connector->port));
> +	if (ret < 0)
> +		intel_dp_queue_modeset_retry_for_link(state, &dig_port-
> >base,
> +pipe_config);
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 12)
>  		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv,
> trans),
> --
> 2.44.2

