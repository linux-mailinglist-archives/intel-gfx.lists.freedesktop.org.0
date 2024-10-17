Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 836FC9A1E79
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 11:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083A410E30D;
	Thu, 17 Oct 2024 09:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YeR4zJCk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C5D10E30D;
 Thu, 17 Oct 2024 09:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729157606; x=1760693606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Lc17DiUAHThXdpaT6DLL6Stxp5jsMbKzkRiPiFuGRsI=;
 b=YeR4zJCkU6ihn9jSJH+PzwCZMbvxyE0l0PyRqPXquD3s86/OmhbqivtC
 ieNwo0dvQx78SPGuqLiVsL/DEnU+GVv22wzq1rFyp9kEr6wTl2jKk7SBx
 +7uT5JaYMcI+WRAfIYQmBpVKmulU4HsI7qMr+bJcj0/eTFyAWOeRtP1W1
 X0JrU+g/DvBo4MqRdCWvHn5xinz7mI1fIdk7+zKdavDqp2nW/8eIVl/Pu
 RRkLfo+mt0zS4h0o0QPbBy0dObjfvsRERJKo6HZIz4pzvrIu+1Lt1trbD
 tReL34W+tEv4IuRHIwRsJJJRHpFXOD90Wx6lXNmoRp9q2C3AT/bUNOI8j A==;
X-CSE-ConnectionGUID: 2O3NSBvhRWulDgk+jpA5fw==
X-CSE-MsgGUID: AoizW4vPQi6RYO9CsEJ7Mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32321195"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32321195"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 02:33:26 -0700
X-CSE-ConnectionGUID: Sw0lKBX+Q7WA4o8dsBJ2Sg==
X-CSE-MsgGUID: QH6Kl1QtRbKkYd5lEuC1Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="83269675"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 02:33:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 02:33:25 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 02:33:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 02:33:24 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 02:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DCR9wnN1iRy1vumHNGMskbhyvYQkchXDDQaEPXhcg7esVsD5Wvj7Bnj62Lf9xsmUa3zasAABSZTKy2XQL+CCq0QX57r/8pEHp2aoDTTytigmvM6b9vyYI4ggNQTnUlJVDvtbRDeiN6mFUsbOK8OQJ4Imq8uFPoZL1AW2vq74Wo/3A1K9uy+386UbL/pxtYVHfvhI6Ynz1yOXTpakdXSpyWgMLW2t8w0j60Mz9t+1Pfc3ZR3ZzY+hYwcs8FIlsZGMEUKPH7vMYuEQHv8p6owyqEc90wHBWtI3zU7BD3XnXBO9BSjh2SGF/AW7eWURZoyUm9uIKJSClTQVhxPiFTD6fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K2UlozJROcatVvlIhmXX90hsqq0SmModWV9JoojIAHo=;
 b=M2oyeyyFQjfyU3/d0PaBN1Uemovf1J5ktTm6ovTQjHHab2UPavoemEwTKS6RYzmD0bVWUm9Bcnq+4Wg53LjJbU1Gjz230cVbQL8bwh/ejB+3UD9sk4o6QXWX61OV9+bxQyISK6ltiFQnRXIFqmG/MohB9PMyS0hTgf7FIdmS9znpsTUoDXH2tkz6trt7kqkxvAVnVI96UTWKs+ZLckq/VztbGdqX+OikZUcrmWGpk03I2AG6OJHHfpoIpxMAPv9w+p20lVJXDVVlugZQYhMhco3DQRAQoBizjxIYQJb5QkAh05CiOWjfdWckm4MMPOzRgdDi3FFoR+a4O50W6JWEJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB8018.namprd11.prod.outlook.com (2603:10b6:8:116::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Thu, 17 Oct
 2024 09:33:17 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 09:33:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 06/10] drm/i915/display: Add DSC pixel replication
Thread-Topic: [PATCH 06/10] drm/i915/display: Add DSC pixel replication
Thread-Index: AQHbIG2mUNg6u3qIg0yPZ26a7PpXgrKKrJjQ
Date: Thu, 17 Oct 2024 09:33:16 +0000
Message-ID: <SN7PR11MB6750D886CFEC82718423CA33E3472@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
 <20241017082348.3413727-7-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241017082348.3413727-7-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB8018:EE_
x-ms-office365-filtering-correlation-id: 2fda509d-bd35-41c9-c4d1-08dcee8ebae8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bO/YEjIssG5cTCOzOU0uEx2pYgmv+wgqEpUJ1VKH0VSR7JHgThlTrPbMp/Xo?=
 =?us-ascii?Q?OnstB6Fi4+WgT4N4+9kAvknOwRMgCvgl1BHyG1OJvGyloRDXvSVFXSEd3Htm?=
 =?us-ascii?Q?WX81WZngeGPviqgBL5Q6NL2ztIvmtJxOGp6SosuuvHRGmoj9RRVv40oQqOzn?=
 =?us-ascii?Q?OA9io3k0WDMKia+WTRKvtpHTG1Tyoo73ZS1YULuJjMrNzarDh78n6oUgABRY?=
 =?us-ascii?Q?omWYaMOsq57X94GkkNS8m/HbkYz4hj+GZ3irP4En6Rvrojq+eMZ+n1LcNdX5?=
 =?us-ascii?Q?xMYTRXWaj/l6DUz6JFSjnwAdygCAaqq4Z5nN+nU0TCZqOk8elVoR+PivouTC?=
 =?us-ascii?Q?OG2WUUvQ0JzAw5PC3KzJVexVQJ8oAO1nlkqwUxnjI1BP2b81iEBjBLw/HHE7?=
 =?us-ascii?Q?BXKVNBjhizOUAgCgm6MgLspukjcOpmTnV9GhDanFUfkFKgZuH+b7L1LKgMMO?=
 =?us-ascii?Q?YVsIFZs8So4swAK9VFYgUwa2enB7cktdRiRfIfYeI8BpbJh/L3NrkeK/j04I?=
 =?us-ascii?Q?OoFNkT6VKCHcNTO0epKFUKBeGjcHP9ySIN4j6pCKQIG/f8Tm+bOGOeKcWg4G?=
 =?us-ascii?Q?bggksIMllIR4g3GYNWKA9oBMgVUrBvBtpMEyHWFYLSk/uf/ks8jHmKz+CiEN?=
 =?us-ascii?Q?5cBoFIWF0bF5E6436L4q6/UWuEJTrDrvHR7Pezy8Ouj+6gkvJFWQ9FDqvteB?=
 =?us-ascii?Q?TGKBiYUXvt4AJKqJqrE+GoaBvT//0KDTtLuMsc77ggKgF4krNEV5eZdu58Fg?=
 =?us-ascii?Q?w/1Ock4BeDmHwGX7h/rRRH7COhWrI8cqbGLHNft+Qtx+ODLdnIBuExx5VbMK?=
 =?us-ascii?Q?qVG51oP1F+wUWkepaTdPYDXqqqw04nRnEw7ae1DZgJp37AfRTEd38g8CN6CJ?=
 =?us-ascii?Q?oPYXL5nYOU325VC6N0+xK+m+/93KTkfOv/evzh0ZLfQuCeNMOzzgjfJ18OeN?=
 =?us-ascii?Q?oAj5HWrnoAWbBwvCWCicIXVIDIddWsdZUNwqzzk4zbClgUnPUGclzrTU74y7?=
 =?us-ascii?Q?LjRXTfcFBaRuTr6jLeGm3axpEDuFJtG3wksfwucZdaUjj2eH/L73Qmaybf43?=
 =?us-ascii?Q?sZYh9FyjX/Af2VDwtT8whb7LMDISh2fgSx/aA97XoNdsDmXHs2zR68UNnTg7?=
 =?us-ascii?Q?lcGK2SYC7FmxQ0REBTa/e503LmFqS+PSBNi7p3jWJFNbV7aE1iCG2QaSSJKk?=
 =?us-ascii?Q?JWEsVpLF1IId1zN2Xu/bd65wnWFTVcS4IxPfYmHClAd3nr08t5ibXaYw+IP/?=
 =?us-ascii?Q?TCZNHXfBL0ThBtldx8j5cXNUW48U1SzTRH9OnYU+x7MfBWeIO46l63UIGBUg?=
 =?us-ascii?Q?tug04I2AM/D2RmfYdd6Q8WqWaCSZk0tmd1EbNVUVwbcwHSJqU31VALJx3XDE?=
 =?us-ascii?Q?n9TJGkQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b5i5hXYNpTj8RiZuovPoCSF7kuk5MzVqq6pVttbFRo0Kci6yw67rSZEmoG3W?=
 =?us-ascii?Q?Jsiew8Yrhcy6U0rIC/G8aRCt/nfzBkchoGwZFuPDqAc8ZhSVvl3Zp6GFsAxQ?=
 =?us-ascii?Q?r36mBJlgmKbpUyjXpPVSLM4yhzOeoabRvr/O2JLA6gQIKmT/W0qaZrSvFpfa?=
 =?us-ascii?Q?bQVOO0K3C5Apo5B16NKinLBnv2d9ZK1JRm+1au5V/cfPLSiBLp6Dq+V4gNh/?=
 =?us-ascii?Q?V3Hk09oQuDwxfHoV/JIg7y7Ll4jiE81CpgFqhSud9mR8x3a4L3jTKUu0fxY2?=
 =?us-ascii?Q?L/ab7Wzx0rH6fwE+IevN9crAduw+sb/sx2LWSVdKNFV4cAdSokIDeVfs/h+E?=
 =?us-ascii?Q?8igJa2adiPjZNxyvmyNYMaHBOy4nAaH/LawhOsmKskZJes5TPdQBxH8mTVN/?=
 =?us-ascii?Q?k8Xf2PjW3KwiOIlX+2KHGePH+lsBcwGcC5xPAWMx+YDRDJdHsKfdD67v4Kf6?=
 =?us-ascii?Q?t0cWZk8TdSIyfNwBJ5PUNem7+YxFiGX4TPJrs9rLZG4qTvmDMPWRAJseyfl5?=
 =?us-ascii?Q?CO9hBqW7U0L78eDig6XAxSMxOB84mS+aBJ/P6Sn747J6lE6ppb3STFOAfbpB?=
 =?us-ascii?Q?o13Y8tCLSk3HJod2yL5Nn08OUrsLel7u0uAnAu80BHVknNHk6NtvBRkjx4x1?=
 =?us-ascii?Q?/VjdrqN6bP0k/A9Xwkb2kNn0m7zYaf2l8+0lH8xOznTTyYVlZxD2FH8Xb1w1?=
 =?us-ascii?Q?sld6a1EiJJGoMwKWOkof7+DUupOXvKwskiegxYl8tYnRj56qH7hiSxNxsNJF?=
 =?us-ascii?Q?VGcO6QdLno72CpAMmmobYTRegkwKUjg7tP2z7vUzSWQOal+8J6WLByrTZq7Z?=
 =?us-ascii?Q?ciBOI3VjiRsFQAJ0j2dUarcb8mBAv+ogdOHfs/Gmw1kOb6NnNKNkICOsAjpz?=
 =?us-ascii?Q?h5UWWjzHDsgbRZweNuoQ9w9nfbc3AiGGQQRSsdhm8BkrNmyHNGoVJM/wf249?=
 =?us-ascii?Q?/Nbz1PecVovi4IK5RYExOM/zHB7bowCqYqej7b7e6Fi77Ze5ItyYtgHL4LJl?=
 =?us-ascii?Q?G91JbDoHmC8bIVOx7nPA+L5ge4wb4MH+Rj+gQ92F9wWb1x+oSt4kfAR1ZQzk?=
 =?us-ascii?Q?LFaXuqoBAsFkxFbhBZpyUB1yqowc6vcOcHofDAf6r7L9YAUeq7U0T+axJVit?=
 =?us-ascii?Q?xg4X997LguQldBLSECgwihhNrHpJ42aSMHFav1yQYSVdXrtO0Ie31ATzf13z?=
 =?us-ascii?Q?mlKqcrRU5A1bMWc+F6AqFNf2B/jvu5xbw8quiyWUpcKv86AyltBqSD5NqC9l?=
 =?us-ascii?Q?4/2A5hfKSWuI1AMTyp+Vdkqo8tnwwwO3mEetDINF9zcCcajHZwr6AAoyXJXy?=
 =?us-ascii?Q?WK0Gwd/EgdjIRXPAb6+3CeiSrYXai+jIk9+ZkKPPGBsyaIY3KRlWKq5P8ytD?=
 =?us-ascii?Q?t5cHB5FMNucdXqnEr78JAQz9UGeIcwJf1XGmNQQ3qs/6iUsyHWLSiE581C0J?=
 =?us-ascii?Q?IYvqtCXDnF97BDx9sDuPBhxPVdFtioDOKx73QDzc402kKuezSfdJCU7EMHCH?=
 =?us-ascii?Q?Qj44lbu/sc1IpbZi1JU4n29b3EmSQWO3YT/2u8DwyU+PxC5Y2vFF5YIR/5Mm?=
 =?us-ascii?Q?BYxizr0XXSo7Gd+L7xeSv03RHka6dqGY/X6lLnRU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fda509d-bd35-41c9-c4d1-08dcee8ebae8
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 09:33:16.7882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PrGyu7/GL2clrzm/uYfygi03PxgbQd10x/vzew8eUHMFnQO7fwX6zHRyXW8gblpD+3t6yMFjgp3e2OUDdOAhtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8018
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 17, 2024 1:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 06/10] drm/i915/display: Add DSC pixel replication
>=20
> With 3 VDSC engines and Ultrajoiner, we may encounter a situation where
> hdisplay is not a multiple of slice count. In this case we need to add ex=
tra
> pixels to the last slice to distribute pixels evenly across slices.
>=20
> Add member to store DSC pixel replication when hdisplay is not divisible =
by
> slice_width. Fill DSS_CTL3 register with the pixel replication count.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 25 +++++++++++++++++--
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  8 ++++++
>  4 files changed, 33 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 9e2f0fd0558f..20bb27aa880b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5743,6 +5743,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
> +	PIPE_CONF_CHECK_I(dsc.pixel_replication_count);
>=20
>  	PIPE_CONF_CHECK_BOOL(splitter.enable);
>  	PIPE_CONF_CHECK_I(splitter.link_count);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e6d37d28c5c1..41a4e062e047 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1245,6 +1245,7 @@ struct intel_crtc_state {
>  		/* Compressed Bpp in U6.4 format (first 4 bits for fractional
> part) */
>  		u16 compressed_bpp_x16;
>  		u8 slice_count;
> +		int pixel_replication_count;
>  		struct drm_dsc_config config;
>  	} dsc;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 718e1b400af5..df5285d3e4b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -774,6 +774,7 @@ void intel_dsc_enable(const struct intel_crtc_state
> *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 dss_ctl1_val =3D 0;
>  	u32 dss_ctl2_val =3D 0;
> +	u32 dss_ctl3_val =3D 0;
>  	int vdsc_instances_per_pipe =3D
> intel_dsc_get_vdsc_per_pipe(crtc_state);
>=20
>  	if (!crtc_state->dsc.compression_enable)
> @@ -804,8 +805,16 @@ void intel_dsc_enable(const struct intel_crtc_state
> *crtc_state)
>  		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>  			dss_ctl1_val |=3D PRIMARY_BIG_JOINER_ENABLE;
>  	}
> +
> +	if (crtc_state->dsc.pixel_replication_count)
> +		dss_ctl3_val =3D
> +DSC_PIXEL_REPLICATION(crtc_state->dsc.pixel_replication_count);
> +
>  	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state-
> >cpu_transcoder), dss_ctl1_val);
>  	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state-
> >cpu_transcoder), dss_ctl2_val);
> +
> +	if (IS_BATTLEMAGE(dev_priv) && dss_ctl3_val)

Use of IS_BATTLEMAGE macro is discouraged maybe try using DISPLAY_VER_FULL =
(14.1) for BMG
Same for other uses of BMG as well

> +		intel_de_write(dev_priv,
> +			       BMG_PIPE_DSS_CTL3(crtc_state-
> >cpu_transcoder), dss_ctl3_val);
>  }
>=20
>  void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state) @@=
 -
> 818,6 +827,10 @@ void intel_dsc_disable(const struct intel_crtc_state
> *old_crtc_state)
>  	    old_crtc_state->joiner_pipes) {
>  		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state-
> >cpu_transcoder), 0);
>  		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state-
> >cpu_transcoder), 0);
> +
> +		if (IS_BATTLEMAGE(dev_priv))
> +			intel_de_write(dev_priv,
> +				       BMG_PIPE_DSS_CTL3(old_crtc_state-
> >cpu_transcoder), 0);
>  	}
>  }
>=20
> @@ -975,7 +988,7 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2;
> +	u32 dss_ctl1, dss_ctl2, dss_ctl3 =3D 0;
>=20
>  	if (!intel_dsc_source_support(crtc_state))
>  		return;
> @@ -989,6 +1002,9 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
>  	dss_ctl1 =3D intel_de_read(dev_priv, dss_ctl1_reg(crtc,
> cpu_transcoder));
>  	dss_ctl2 =3D intel_de_read(dev_priv, dss_ctl2_reg(crtc,
> cpu_transcoder));
>=20
> +	if (IS_BATTLEMAGE(dev_priv))
> +		dss_ctl3 =3D intel_de_read(dev_priv,
> +BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder));
> +
>  	crtc_state->dsc.compression_enable =3D dss_ctl2 & VDSC0_ENABLE;
>  	if (!crtc_state->dsc.compression_enable)
>  		goto out;
> @@ -1003,6 +1019,10 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
>  		crtc_state->dsc.dsc_split =3D INTEL_DSC_SPLIT_DISABLED;
>  	}
>=20
> +	if (dss_ctl3 & DSC_PIXEL_REPLICATION_MASK)
> +		crtc_state->dsc.pixel_replication_count =3D
> +			dss_ctl3 & DSC_PIXEL_REPLICATION_MASK;
> +
>  	intel_dsc_get_pps_config(crtc_state);
>  out:
>  	intel_display_power_put(dev_priv, power_domain, wakeref); @@ -
> 1025,9 +1045,10 @@ static void intel_vdsc_dump_state(struct drm_printer
> *p, int indent,
>  				  const struct intel_crtc_state *crtc_state)  {
>  	drm_printf_indent(p, indent,
> -			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-
> count: %d, split: %s\n",
> +			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-
> count: %d,
> +replicated pixels: %d split: %s\n",
>  			  FXP_Q4_ARGS(crtc_state-
> >dsc.compressed_bpp_x16),
>  			  crtc_state->dsc.slice_count,
> +			  crtc_state->dsc.pixel_replication_count,
>  			  dsc_split_name(crtc_state->dsc.dsc_split));
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index efaeb5e0aea3..f9807796f07e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -52,6 +52,14 @@
>=20
> _ICL_PIPE_DSS_CTL2_PB, \
>=20
> _ICL_PIPE_DSS_CTL2_PC)
>=20
> +#define _BMG_PIPE_DSS_CTL3_PB			0x782f0
> +#define _BMG_PIPE_DSS_CTL3_PC			0x784f0
> +#define BMG_PIPE_DSS_CTL3(pipe)			_MMIO_PIPE((pipe) -
> PIPE_B, \
> +
> _BMG_PIPE_DSS_CTL3_PB, \
> +
> _BMG_PIPE_DSS_CTL3_PC)
> +#define  DSC_PIXEL_REPLICATION_MASK		REG_GENMASK(15, 0)
> +#define  DSC_PIXEL_REPLICATION(count)		((count) << 0)

I would have expected a REG_FIELD_PREP here instead of the count << 0 gives=
 the same result
But the former is the convention we follow and since you have already defin=
ed the mask

Regards,
Suraj Kandpal

> +
>  /* Icelake Display Stream Compression Registers */
>  #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>  #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
> --
> 2.45.2

