Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C74BB045D
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 14:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A884010E6B7;
	Wed,  1 Oct 2025 12:06:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Icb6f1wW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B590110E6C2;
 Wed,  1 Oct 2025 12:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759320408; x=1790856408;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=08f7VSicSt2S6Rj38duKVjhcyAxEoJiFZhSLYfPi9NY=;
 b=Icb6f1wWYlQcTtUiuD3uNL99svCFfn4bb0UK3O1rTrIELG5KHAA4OtZr
 qn4X2bUNlBDpbVkXMhSVfhOXBceWxU9KlxexlGOO7ihbs6mscNyE8oaYr
 zsC1gNkHqGbuwo9g/xMwJiKpANzgA36RuihV05spm3QkSnfrVng6g+f/2
 eXJvk0AMoEpdx2fUEayCu4tGrSfF/DLTmEeAbsIyiDk7yzVDLPWie2ry9
 YrvNrwqclzF6+cdWesNWvMIJPvaGy84lVkd6c2cxP2yC6uDETXfYUo67p
 YYufgc5kDaLV5DEpkFFJa8nfMAaUf1yO61yc4UPXJbPt50TjxDKhlpq+r w==;
X-CSE-ConnectionGUID: cYFXq42GQ3uXqyDCzvHTrw==
X-CSE-MsgGUID: tMHEWv3rTgKwiW3WgyFwlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="49147463"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="49147463"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:06:48 -0700
X-CSE-ConnectionGUID: qISRxMHrS9qeOnmWUIO1pA==
X-CSE-MsgGUID: VOOIqxAgTQqL2vUIyUOzkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="183952446"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:06:48 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:06:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 05:06:46 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:06:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f5REXuhmL551LlkJH+HfEPePffGsAvYHax2/TQhhLoYM4sNH26H8FUJn3uXfF3eCAD0mIJ63K1QndO/eBgp1lrRcxg/ooj5zlbKnJv58twmjoIH+t/RFiDN3/5kf9PTUg0mHjskRO5wbdH+ZBsC6e5dyACPGB82jkWD9+W8M/tIuSqglguQIRrVNjy/qFxM5TlVJT/BrA0ehvTCnqh1g90B0d/YbICvUZXUfZHUCKLpWvNsN+Mra4zP6IvLmN0hT/fIRmQwohuPGkNq1JCU5xGev2rMAkqM/GGJ6elG6oRLZ93HelCdzAKJO0trDjHDeFop1Wd5fj/+Rqw3f5rZIfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=08f7VSicSt2S6Rj38duKVjhcyAxEoJiFZhSLYfPi9NY=;
 b=Cyusu+uT3EmHUOqPbW1qW3Y4Jk12cx+X9/gzjRGYz4ZP/v9qlfjRNZZH7aZKzCIeOIqXw+3Hfjker5k/kR8djsvqKmh0aD0FLiupMNpkkt0g8LhxhHPcMcLf/T1ClzS2VOHRbYW0Lavszq3ZSC3LNq683sF0Eqtani/bHGE0nHYaU3vFUsi+sO3QOFBATYDwBsgZxZo7wM3eY1F5HOkOld7tXKVzbdeZtHj7BhAFB1XH9fExprQehvDOIqxg9CURipzvFUXXqCFioy50VWPTNRmh2m564Y18dxvgyJtDb1rI39pc4vydheGYXleTnilFaHOIX3xSzetwkWu4IxeHkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Wed, 1 Oct
 2025 12:06:11 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 12:06:11 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915: Use the the correct pixel rate to compute
 wm line time
Thread-Topic: [PATCH 1/3] drm/i915: Use the the correct pixel rate to compute
 wm line time
Thread-Index: AQHcKZB7d/EkiWZZG0u7n8s27iexdbStKOmAgAAStwCAAAjKgA==
Date: Wed, 1 Oct 2025 12:06:11 +0000
Message-ID: <ae320b38b3eccaab5a7501781da37c13c83bd924.camel@intel.com>
References: <20250919180838.10498-1-ville.syrjala@linux.intel.com>
 <20250919180838.10498-2-ville.syrjala@linux.intel.com>
 <b98101c43bb40a1affab97d5c8bf3e3997ed92a0.camel@intel.com>
 <aN0R0ggZESnWZMrv@intel.com>
In-Reply-To: <aN0R0ggZESnWZMrv@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW3PR11MB4618:EE_
x-ms-office365-filtering-correlation-id: bc836018-3f2e-42cd-dc37-08de00e2e9ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?SENJZXNrZGFuYzdTUThpV1BueUNXSXUybnh2VjVxcUxrQXF3eHRKZGFwSEtL?=
 =?utf-8?B?Z0VRM3IyMGx2eFExbUdUaDQ2RnNXcVg5VktBc1I0ZndUSnJnMTdoZTJWRyt2?=
 =?utf-8?B?d2kzTVFTQmpHNUMrYXIrRHZCSVUrNTdkclVkd1dkeGpCVXVkRHlvSWtaV09l?=
 =?utf-8?B?cVBNdC9qZ043ajlYZlJDVURxc2tBd1FyeWlPK0NLcDdTQ1hicnZndkZwdHpM?=
 =?utf-8?B?Z0NoOVM1VEIwVTV6ekQveWY0dnJqR1duUU5Lc1FJLysxY3A3NWtxOW1lcUJD?=
 =?utf-8?B?TTNWalNhL0E2UkRMQnRNT0NjSnNVc0VwSDQ3L2dWOU8rM2NFcE01ZDY0MlZL?=
 =?utf-8?B?WGFJcmJQR1NGTWxwWmlldVowNnQ1UWZJZEF5SG5keFpFYjdZL1QxVjU4VEs4?=
 =?utf-8?B?Qk5kaDdWUjJCczBwYkFTTlB3czZEOFBldGxrTkNCN29lbXFuUmpydUxmVTY3?=
 =?utf-8?B?b25mL1NMVmxOSnZOKzlHajRZZGwrdDdWRFB2UGtGUmZlaWpqRHNkTUFiZ0FV?=
 =?utf-8?B?TitXRWxIUk9FT21kOHc3Wnk4ZllGcEVCS083N09IdGhiMlhENVQyMG82QXpR?=
 =?utf-8?B?dVZXeHo3ZXlwTG45ZlZsTnlJMFBvQ3pla3FHUW5aZW01UzhQZ3l3eitRbXJC?=
 =?utf-8?B?MmhJNnNsR0ZoZ24xR252anVaT3dZc3NVeE50N2Rid1NLMlBPZ2ExUlFJNldV?=
 =?utf-8?B?eUU3ZUpZV3FmcE9NcE1YOTJPdmd0WTZvNFBpcGgrb0p3K1MwczREWG1Pc0NF?=
 =?utf-8?B?b1cyWjlXcnJ4T2JSQzlNVU5hOXo1MGZrUDlZV2dNRnRVUG4zclZUYjgxM0x0?=
 =?utf-8?B?aE83RituTm5vVlpnYVZibVRyZEEzYUFTaUZMaitBVWRKWnkxMi9yWkZCZUJM?=
 =?utf-8?B?V01iUVlPSlVYbkliTGsrTGpTdklJYitCT29qTVBZQ29Wd0lRV3JlQ3BwZTV6?=
 =?utf-8?B?NDhBaThvWGJYZFVwdXFES1lMQ2ljL2Zrd3V4NkxuNU5HRVMxajQyZEcyZU5Z?=
 =?utf-8?B?dlc3SEI0R0drcVhqdkcvd3lrbk9sMUw4cHczbXJ4bFVwaFVlMUpwNkJBSFZW?=
 =?utf-8?B?NnYreGw0d2dWWW1CL1VmM0QreGdWd3UrTnlBQnBQeUswckRtRGI1Q1llcnRW?=
 =?utf-8?B?VEhEN0RJb2c0b0JVb25sUk8raHhBd0ZaSU5HTEtESE1JcUtSdS9rZWZWRVg2?=
 =?utf-8?B?VGQ1cDRpQ1crU0pzWXBRd3cvNE5xdUdBWVVrQmhpTlIwZlVEYjMrREdKWnBB?=
 =?utf-8?B?THdFUFpQUHBGejQ0OVNQYittV1ROczI1NG1wdUVzNkc3T3cxYUVCSTFyS1hU?=
 =?utf-8?B?VlBFSEdHNDNiTHVmUzNRMXc1RWtzcy9OZU8zTGN0SjZSZTZKc1l6b0Jhamo0?=
 =?utf-8?B?dlFaSlpuQTF4QjVjR2k2c1VNeXdKU2d3TFlYd016THVXN3NPK1BMYjM0dG85?=
 =?utf-8?B?TlVBWTJCQmFXQmkxNlhoUWdoK3FHRVBHL015NFlBWlU0dzNQdHdJcVk5TGda?=
 =?utf-8?B?RFdsZ080eU5XbDVhd1M4L3VVT1ZlTkVJK0o1dGxMYnFVNDRBVWtib01lMVZY?=
 =?utf-8?B?MmtMS3p5Y2NINkVRTEVEaGJJSXBoWUYrd29XVUFaOFcxekZBOEg4Rks4QTEv?=
 =?utf-8?B?OEpWMXZxak9PdmhGdkUyOGp0VjR6L3BPcTF6ZU9RcWlpcnFHWUx6OUdMWlEr?=
 =?utf-8?B?VmtyY3lQbjdNTTdYRFZCY3g4aGJtZjkraWRSWFREU2w2T2hlamg1K2lCdE1W?=
 =?utf-8?B?emxETGVaQkRJVStEMXIxSDJva2xyK0MyR0pGS2tVN0tXaWI1bXllRGN1L0xa?=
 =?utf-8?B?WWVoN0E0RjhrZklkWk5VcGpJcUV2KzZHaWxIWklIK29nNnJEUWpOb1I5WThK?=
 =?utf-8?B?SHJZYnFTTGE4bUxoaTNzQ0xCMit3SlpROFVmZldjQ3VFM2N3VTdhOGVENkJQ?=
 =?utf-8?B?aHgycERnRUlRTWFYOWNpR1Zpc2hHNmxvQmtPdDYxY0FDYloxU3F2SXVuam1Q?=
 =?utf-8?B?bHovY1B5dlJBSlFvdjZ2Y0tIdW9xdWo2WEpONFc4WG1xTGpTRkZJQmo3cHUw?=
 =?utf-8?Q?vGBLa3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b3V3dXpsN25TUzRCcDhVSnlaZHB2WU9Rblk5Zno2emk1QnRWeU5sNS9xRUZR?=
 =?utf-8?B?UkVZbUJpeUZLdVBzaWxwS2hEVTkwdHQ4MHdNVFRBWHhTUjNWTHV6YVJSZDQ2?=
 =?utf-8?B?TWxjYXR4SlRFNGFFSi9FbGZJaHEwK3Y2NVR1SUU1Ky95cit6NTdOU0RSNE96?=
 =?utf-8?B?Y0MzdXZTWDM0ckRVamxzeTR3MFFRMVcvN3pDQ3NERzZxV0JzeGFrZEJIcjNE?=
 =?utf-8?B?dnlBOUxFYmEyUkw5VkNCenRyZDN0bmtMWENpYjNYajhBNm1YN0Y2YmlNa2Nw?=
 =?utf-8?B?VUNGOHczV21xZTEyeVBEWGp0a0k3eG14aE9hZUR3dGlVejNLV1NTd2EydG82?=
 =?utf-8?B?d2N1T1Q5aDVYM1NrdWNOQjZzaDQ3ZnUzbEc0SDF5bHlOQnhDUFBqRlRROVJu?=
 =?utf-8?B?V1czYlh6dFUxMmRQVFdpcGFVVjRLTGYrdFZHUUZMdk13N1pWQnBPYzh4RE14?=
 =?utf-8?B?VVVFSFJhbW1Sc0RJSVFiSHppYmpwenF0TWVydk5jbi85ZWJ4OVpTM1JkTS8y?=
 =?utf-8?B?czIvNm8vUGJELzFyUGt5RktON0Z4OWh6bmJEd2Z1OTJ0TUwrN0NzdXV2UE4z?=
 =?utf-8?B?WWlUZUdVaXRwMmFXdnVWSWpiQTdINm9kaWVibGFFZU1pMW9zUVZpanIzU1g3?=
 =?utf-8?B?ek5qTk1hOTZzc1BnQUs1bzkrSmw2RHhwMzgxSkpDd1ZZRDFrOGtob21BS1RQ?=
 =?utf-8?B?MFhvbVVmek1KMVcwQ1lBbm0xTXJ1aThxSFE5aGRrUXg3d2F4a3BkYmloR1NH?=
 =?utf-8?B?czh2SWxCV1JJekU1b1dkTWJkZ1BneElOSjk3R0NMMzNwcGswR05YcjhreXdt?=
 =?utf-8?B?MElJYmo0aE4zanJqeVdlbWpEZzE0dEtTL2NBd25UenBsV2xUYUVNQnp5OGhu?=
 =?utf-8?B?aTljaVNVR2RkN0ZKYWxZWHh6RHJnK3BTaG5uVWxjdDFicmVZMC9XL1ZFUUZx?=
 =?utf-8?B?Vkc0b2ppS1hWYjN4Q2kvMXdNaGZDNUhqaVMyUGYrOFJOSHlBMzk2L0s2aE51?=
 =?utf-8?B?OXFiOFpOVkpCNHgxSG94KzV2SmZVUys3NXhQNUd5UmJLZG5icXN5UmlTRy80?=
 =?utf-8?B?a3ZBdStqWTgxM1FFU2VIcVZUdEt1SmZaL3JtRC9RYld6d1U5eVNPWStZbVFW?=
 =?utf-8?B?Nm1jYTVTeWhWRm1FZUxLSDdaV0ZDMkFEb1EwTHVqQ3FhbFZXSW5seitvNjI2?=
 =?utf-8?B?RUJXOW9YYytZdHhqeTFyajVidXhudkFRNFp2UDluQ3NtSnNnK3dJV1M3SFZx?=
 =?utf-8?B?elI1a2lpTTF3MXE4eWVpSmdrN3V6ZkxIKzJTKzZMbHp4cGkyQUhWM3pGL0Zt?=
 =?utf-8?B?QUMzLytZaWN5R0JrUXBuT0dTSDBKMEx5N00xbDJGQXE3SDVUWUVUZE5Fb00w?=
 =?utf-8?B?R2I1M3ZjeEY5Zkd2MmJqWU04SkNLTjZvZTR3UldDVHlsK3h0MDlpY3ZsSldT?=
 =?utf-8?B?eWR0UmU5L01Qc3NxckdrYU1jMTVGb1dDQmRBcW1Dc2tYcVpoYWpXMURvUXhy?=
 =?utf-8?B?cHBNelFSNWtTSFFVUUN5WkM1WHovSHd3T2l6aitGSk9xeFN2RjNOd1NWYTlN?=
 =?utf-8?B?NHVtRzJzQ2ZyVThYSXQyVGpmTlZOa3k1WFh6ZkFlWXlUMHhSa0VhMmVJMUI3?=
 =?utf-8?B?UVllWDNKWjVFb0FlbEE0b0RZUm41S2hlVWlITGEwdXdVOENzUTk2ZXJhUnE2?=
 =?utf-8?B?SUFVSkJOTjJCb1Q1Z0UxaThrS0NkTEtoS21leXlUUEJ2dU5NR0lmSUdMaURl?=
 =?utf-8?B?dFU4cjJZaEZSVWFDdWJjbURQRHV5ZTJhNEJVN2s3bS9idmJRZmFiKzZJRTRK?=
 =?utf-8?B?cDBoWGxnQXBaYUordWRROWZlREt0K3BKV01FVnByaWVHNEZVYjQ1RjRwemtq?=
 =?utf-8?B?MVhwVFBxeVNBTzc5SWVVOW5sZnMvSFhPVW5HNDhvMzJnczZ6bzFrWitIcmxt?=
 =?utf-8?B?bDZCM2toZ01ReUVIU2pzODFvcjFFZEdqb3J4dnRZSzRnWkRBU3JiS21QQy8x?=
 =?utf-8?B?L0JJNUNzZWwwM0NIRWdPKy9XZVZRSUZUM2pLNnVkU2NwaXBQNURUNnBKR3pN?=
 =?utf-8?B?aVMybkI1RnRsRG80d24rSlB1YzV3UWREN1MwbnprTk04MFRjU3pxbTViQ1hR?=
 =?utf-8?B?MnhESDV3eXBFenpBTzNPWTQwaTd5Vlk2eE1hd24xWGZ6RlBIOTU0QzkyK0tP?=
 =?utf-8?Q?oausI6FYlx/n9vUzQhMefyM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7E22B42BBAE5ED40A4D772C4A9049C4E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc836018-3f2e-42cd-dc37-08de00e2e9ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2025 12:06:11.5897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2EGpyTeE/gjPY7+cyMydBaGhX/Y5vlpzeT/yILsqneeHawIDfKIQTNSeAswloxGmAfssrRDL45K0wi+TmzHFnSN1WSW+3JqhBlRozu0N9Hw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
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

T24gV2VkLCAyMDI1LTEwLTAxIGF0IDE0OjM0ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgT2N0IDAxLCAyMDI1IGF0IDEwOjI3OjQ0QU0gKzAwMDAsIEdvdmluZGFwaWxs
YWksIFZpbm9kIHdyb3RlOg0KPiA+IE9uIEZyaSwgMjAyNS0wOS0xOSBhdCAyMTowOCArMDMwMCwg
VmlsbGUgU3lyamFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IFRoZSBsaW5lIHRpbWUgdXNl
ZCBmb3IgdGhlIHdhdGVybWFyayBjYWxjdWxhdGlvbnMgaXMgc3VwcG9zZWQgdG8NCj4gPiA+IGJh
c2VkIG9uIHRoZSBwbGFuZSdzIGFkanVzdGVkIHBpeGVsIHJhdGUsIG5vdCB0aGUgcGlwZSdzIGFk
anVzdGVkDQo+ID4gPiBwaXhlbCByYXRlLiBUaGUgY3VycmVudCBjb2RlIHdpbGwgZ2l2ZSBpbmNv
cnJlY3QgYW5zd2VycyBpZiBwbGFuZQ0KPiA+ID4gZG93bnNjYWxpbmcgaXMgdXNlZC4NCj4gPiA+
IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8IDkgKysrKy0tLS0tDQo+ID4gPiDCoDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiA+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiA+ID4g
aW5kZXggZDc0Y2JiNDNhZTZmLi5iZGQwMDVjNmNjMmQgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gPiA+IEBAIC0xNjM3
LDE4ICsxNjM3LDE2IEBAIHNrbF93bV9tZXRob2QyKHUzMiBwaXhlbF9yYXRlLCB1MzIgcGlwZV9o
dG90YWwsIHUzMiBsYXRlbmN5LA0KPiA+ID4gwqB9DQo+ID4gPiDCoA0KPiA+ID4gwqBzdGF0aWMg
dWludF9maXhlZF8xNl8xNl90DQo+ID4gPiAtaW50ZWxfZ2V0X2xpbmV0aW1lX3VzKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ID4gK2ludGVsX2dldF9saW5l
dGltZV91cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+
ICsJCcKgwqDCoMKgwqAgaW50IHBpeGVsX3JhdGUpDQo+ID4gPiDCoHsNCj4gPiA+IMKgCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsN
Cj4gPiA+IC0JdTMyIHBpeGVsX3JhdGU7DQo+ID4gPiDCoAl1MzIgY3J0Y19odG90YWw7DQo+ID4g
PiDCoAl1aW50X2ZpeGVkXzE2XzE2X3QgbGluZXRpbWVfdXM7DQo+ID4gPiDCoA0KPiA+ID4gwqAJ
aWYgKCFjcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+ID4gPiDCoAkJcmV0dXJuIHUzMl90b19maXhl
ZDE2KDApOw0KPiA+ID4gwqANCj4gPiA+IC0JcGl4ZWxfcmF0ZSA9IGNydGNfc3RhdGUtPnBpeGVs
X3JhdGU7DQo+ID4gPiAtDQo+ID4gPiDCoAlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBw
aXhlbF9yYXRlID09IDApKQ0KPiA+ID4gwqAJCXJldHVybiB1MzJfdG9fZml4ZWQxNigwKTsNCj4g
PiA+IMKgDQo+ID4gPiBAQCAtMTc0Myw3ICsxNzQxLDggQEAgc2tsX2NvbXB1dGVfd21fcGFyYW1z
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ID4gwqAJd3At
PnlfdGlsZV9taW5pbXVtID0gbXVsX3UzMl9maXhlZDE2KHdwLT55X21pbl9zY2FubGluZXMsDQo+
ID4gPiDCoAkJCQkJwqDCoMKgwqAgd3AtPnBsYW5lX2Jsb2Nrc19wZXJfbGluZSk7DQo+ID4gPiDC
oA0KPiA+ID4gLQl3cC0+bGluZXRpbWVfdXMgPSBmaXhlZDE2X3RvX3UzMl9yb3VuZF91cChpbnRl
bF9nZXRfbGluZXRpbWVfdXMoY3J0Y19zdGF0ZSkpOw0KPiA+ID4gKwl3cC0+bGluZXRpbWVfdXMg
PSBmaXhlZDE2X3RvX3UzMl9yb3VuZF91cChpbnRlbF9nZXRfbGluZXRpbWVfdXMoY3J0Y19zdGF0
ZSwNCj4gPiA+ICsJCQkJCQkJCQlwbGFuZV9waXhlbF9yYXRlKSk7DQo+ID4gDQo+ID4gSGkgVmls
bGUsDQo+ID4gDQo+ID4gQXMgcGVyIHRoZSBic3BlYyA0OTMyNSB0aGUgc3RhcnRpbmcgcG9pbnQg
aXMsDQo+ID4gDQo+ID4gQWRqdXN0ZWQgcGlwZSBwaXhlbCByYXRlID0gcGl4ZWwgcmF0ZSBmb3Ig
dGhlIHNjcmVlbiByZXNvbHV0aW9uDQo+ID4gaWYgKHBpcGUgc2NhbGUgZW5hYmxlZCkNCj4gPiAJ
YWRqdXN0ZWQgcGlwZSBwaXhlbCByYXRlID0gYWRqdXN0ZWQgcGlwZSBwaXhlbCByYXRlICogcGlw
ZSBkb3duIHNjYWxlIGFtb3VuDQo+ID4gDQo+ID4gYWRqdXN0ZWQgcGxhbmUgcGl4ZWwgcmF0ZSA9
IGFkanVzdGVkIHBpcGUgcGl4ZWwgcmF0ZQ0KPiA+IGlmIChwbGFuZSBzY2FsZSBlbmFibGVkKQ0K
PiA+IAlhZGp1c3RlZCBwbGFuZSBwaXhlbCByYXRlID0gYWRqdXN0ZWQgcGxhbmUgcGl4ZWwgcmF0
ZSAqIHBsYW5lIGRvd24gc2NhbGUgDQo+ID4gDQo+ID4gYW5kDQo+ID4gbGluZSB0aW1lIG1pY3Jv
c2Vjb25kcyA9IHBpcGUgaG9yaXpvbnRhbCB0b3RhbCBwaXhlbHMvYWRqdXN0ZWQgcGxhbmUgcGl4
ZWwgcmF0ZSBNSHoNCj4gPiANCj4gPiBPdXIgTWV0aG9kMSwgTWV0aG9kMiBhbmQgbGluZSB0aW1l
IGNhbGN1bGF0aW9ucyBhcmUgYmFzZWQgb24gcGxhbmVfcGl4ZWxfcmF0ZSB2cy4gYWRqdXN0ZWQg
cGxhbmUNCj4gPiBwaXhlbCByYXRlIGluIGJzcGVjLiBTbyBJIHdvbmRlciBpZiB3ZSBkaWZmZXIg
ZnJvbSB0aGUgYnNwZWMgaW4gdGhlc2Ugd20gY2FsY3VsYXRpb25zPw0KPiANCj4gcGxhbmVfcGl4
ZWxfcmF0ZSBpcyB3aGF0IHRoZSBzcGVjIGNhbGxzICJhZGp1c3RlZCBwbGFuZSBwaXhlbCByYXRl
Ig0KPiANCg0KV2VsbCBpdCBpcyBub3QgcmVhbGx5IHJlbGF0ZWQgdG8gdGhpcyBwYXRjaC4gQnV0
IHRoZSBjb25mdXNpb24gY2FtZSBmcm9tIHRoZSBic3BlYyBwYXJ0IHdoZXJlIGl0cw0Kc2VxdWVu
Y2Ugc3RhcnQgd2l0aCBhZGp1c3RlZCBwbGFuZSBwaXhlbCByYXRlID0gYWRqdXN0ZWQgcGlwZSBw
aXhlbCByYXRlIChpIGFtIHN0aWxsIG5vdCByZWFsbHkNCmNsZWFyIHdoeSB0aGUgYnNwZWMgdXNl
IEFkanVzdGVkIHBsYW5lIHBpeGVsIHJhdGUgPSBhZGp1c3RlZCBwaXBlIHBpeGVsIHJhdGUpLiBT
byBqdXN0IHdhbnRlZCB0bw0KY2xhcmlmeSB0aGF0ISBBbnl3YXkgbGluZXRpbWUgY2FsY3VsYXRp
b24gYWRkcmVzcyBpbiB0aGlzIHBhdGNoIG1ha2VzIHNlbnNlLi4NCg0KUmV2aWV3ZWQtYnk6IFZp
bm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQoNCg0K
