Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGfDE5iUAWoefAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 10:34:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A6F50A299
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 10:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80B1710E107;
	Mon, 11 May 2026 08:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OvzDTsXR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3C5510E107
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2026 08:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778488468; x=1810024468;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oQ5HDFOAnGBLbFl8FvjlqFR9Baw1GbglAoYCc/Laesk=;
 b=OvzDTsXRvRDG0SzHMVtJPriraS7vcNB1L1txJhFDQs2LyEM6LS7UwOyA
 RnubPD68fbKjr1oU6Crx6JSWr0URrVvHVOIfld9IAX36xcird5QSVeAW7
 E3ZalvBaBETnczVnhXPYSL+sXqE5m53XrRv4aBZgOWU2+hjVXlYZJTBMV
 KaqPWeREixPAo2RpfdqxJfLu6yOelUrAhIDAltKxps2bTtAx2j9JhbIAk
 1z44ARWzujwUz8xnF7X0meI5XCgxjKV+Ydc7Ei0FlXijbia47JylqMEL4
 YS31qnr9Cdawp2Kple+l/Orty1EzeaohyHVvRAUMcUsv2XunSojLAGea+ Q==;
X-CSE-ConnectionGUID: GSYbiNZQTEOxAgpFPxdn0g==
X-CSE-MsgGUID: pA43wCFRTqWkC/Cn9ekjqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="89953671"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="89953671"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:34:23 -0700
X-CSE-ConnectionGUID: IMB8P4pMQLuko8vrdCYnRQ==
X-CSE-MsgGUID: ufcmpFTzSzenrj8UAdtLIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="275526510"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:34:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:34:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 01:34:22 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:34:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SRkwT8q6VBAPiBtkrUZp3PlmqdYxu+6O67Ma78YBjqfpVeeolXPfAWpFvEts94Rvzc5Q7KG1vYGiG5bOwIkLPkZrk96OyBb/iIr3CLSEaNYra71dw3/o1Oq9rf8wgS9ByAr05ap9ERQr+ZTDqzHKqbsgbPhb8+fY9PpgmPjqFGTD1y1l2Qhz++H/oBtSztzAIWspL0/I4G2CD04IlLv5SbaDZnlWj0ED9+dMGvD9CpDsV1LiTkG4QXyQx3ziGmb31hR+704WXEBAEK9iAagy5KA7a84perLl14eTEmDrqrJgeI+bBNghyq1egjQHlpikpVK0W4pJJr2GJZ1JNhp5XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IDz+egbMgVV0OQQEt09XrQRs+pFIJwqQ4w1Scu67xmM=;
 b=YW7DntSA79h9fR2yDqsiyhmkJKOjb0fuI6/ohETjx1TiZwVIbILtVdAsFB+YSdBes3E/sbXOZ9l/uiPKzeCDaTtEVr2OdGFR8uMrWKitLrdjb1yWL4xol4A3rSNHh2Xu0nnbBKo2VNBUJPl0u5TeXDGk7Wm/LLzw0TfL50aqmrKiTmZnev9dtWU1AOCbqSa0ZAzfmFdId41pa7socWBlHiD5jgBiScSOwU16IEzC7ZcLxWzIN36wjULjC04gtu8/TNHxegIdu97zSLCDBKOlFrupu2xitGvd4SFPjVLFF8R+m0o2DvwVdKdCwfgbh+UXgHtRyUsI7/9HKKbYWQPKzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB7652.namprd11.prod.outlook.com (2603:10b6:8:14e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 08:34:14 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 08:34:14 +0000
Date: Mon, 11 May 2026 08:34:03 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v10 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <brhzl3yc5i52n5jlsxnc4zb4nkkxwosttbek3bmvmoltavauo3@p4ilob3vfjso>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260508080214.1979686-1-krzysztof.karas@intel.com>
 <20260508080214.1979686-2-krzysztof.karas@intel.com>
 <af2vusysmtwp2bzU@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <af2vusysmtwp2bzU@ashyti-mobl2.lan>
X-ClientProxiedBy: DU6P191CA0031.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53f::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB7652:EE_
X-MS-Office365-Filtering-Correlation-Id: b8a3ef44-6303-406e-b62c-08deaf38150c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: yV/wOL04vkv9Q9aUj34TQDsJqtyz4/K2cPcChjgsg/CaU/9pj9C2AtvbYp7aiyRsV23Kg2idSdsBFI9ERJKIKKrzFl4S2O33c2Y2EgBxwez8MCctt6yyZIxreDcruEF2IUxvka0wJASBo8G4xrk3G884BAnJ6B0UItsJUkiXRsWZmGqzLyB84azeUZ07hNAqoFqjM2Xj5M+ouJtS6FwjQMuHHkdn2BKdEDBP9nCJslAPuHVNPABOk2p1DvJGLQuTHZp5vd/UUjkg0KjQEkKRUo62Fy5131aQKbv+8kL2ibfm8ALZEGvrZ3tXRwJaxygcYysf5claVpnh3UsFYBWTz607h0KWvvny8eW88Tk8ZIwHaGoSJPMBIsNwLPpREcruYRijDLdcf3+atktAoTs53xHevwEj7uueHIsdJO8stVh6SmazyuISbWcPa9qCjAte+o6Mshsoe1mrNo1dvlAz1AibGEJs7FK3Zgnfn1BPfm3BqgyZQDwnUZtu1rhnRS6gw0koaYvp82HEQaYatV6wv/AJ4LaEukOPxK+epbwkDE1gdJmS4rzh4AkP+vedyBZEana2loL1dU8EEu9rxA026iKFOMN/vLBoJb+vn3WKLGGJqvjKVEvNTzKN+asXzFHia2/X4svHAionN8wJhOgnQYT9qdHdOuASXmtJlrQl4eUjXUFQYw4hLqMpBA6/ulq9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWFLTlZXakxBVnRYMHRGQUtLeVozWVhBdCt4eEhzMEthNnhPR0ovM0t0enFh?=
 =?utf-8?B?RzB2NUh3SnNXaWkzQllYRS9vaFVUR0lGb3o5eEdaRStGd3VxRSs3K3NqZG5B?=
 =?utf-8?B?Rm1NQ2I4YVc3WS9PZjZXU0VEYWhPNytQSGZpN3k5UEpXTU1KNVhhUHJ1cGwy?=
 =?utf-8?B?Z1hqSGpyV2RROE42K2pveWtRTE9LWFVVbmRHZWMxT3dIRE5TWHRicXo1eTFo?=
 =?utf-8?B?QjRuRDdTdElPc1BPYjFJUVVBQUJyNk5SZER6WHRsaUd4dUQ5TmJSZklaUDVL?=
 =?utf-8?B?OC9KbjRVWWN0SXpwYkh2ZTVMNTNtbUNSWnloUVNMQndZT1pFTncya2ppOGhi?=
 =?utf-8?B?OUFlaFcrbjZzYlVjQnUzTGVNMU5RY050VGNVYnR0NnN3ZmlTNUNibU9mV1Vo?=
 =?utf-8?B?RXlSSHAyM2xjY2pUNU5KdUxDU1dZbGdteWRrWmpjSkN2REFxNi9MQTR6UUJE?=
 =?utf-8?B?N3daVlJ2QVdsK00vNnZOSEZ1Tm1yRlpiZEQraTVwQUo5RFA3dCtPZHl0aE1P?=
 =?utf-8?B?OFNTcElvTnJjTCtzVmQvU0dSb0FocnBwcXBOV0c2VzNaNjNtalo0TkI0Zk54?=
 =?utf-8?B?ZFhHdnAyR1AzdEdiQ1N6VDJ0UlRFZTNydmdzN3AxcVpIV2lzcEc5R2s1Mk1X?=
 =?utf-8?B?dUpubXQzb2VSK2M4MHY4OTY4UGM3a2tackVKLzQ0U0VQZUNHVUp5cWZVTERW?=
 =?utf-8?B?RHFKcDRmcnRXeEdIRVpKaTVabVROYW5TUDZaUzQrRkxBNXV5STFUL1VMbFh5?=
 =?utf-8?B?TmxjeHJFSnBacUtGMmpRZzdqM1lBK1NDMTRDUlYzK1hDcndZMDRwTjlMeTRk?=
 =?utf-8?B?QlFUSmVDSVBHK0dwNHN2NDVrN2I0S2FnTy9LdzhMVkFDYVFMYXRBSEk1WHhJ?=
 =?utf-8?B?dkJXZ2QwcnRIN004aXBzRFQ1UTkrUlIvQzZXdmhxQStDajlwenZEcUdLakZo?=
 =?utf-8?B?Q1pVODlsVmJmaWhzRHVUQzBubWpIYkV1Uy9VWmx0aWZxQ3ZBbmlyS0FVLzM5?=
 =?utf-8?B?SHJJWE83Z0xFaGJhRGxLSW1GdUtBQVF1T3VpM3orb3pmeSt3c3BmWjR1S2hu?=
 =?utf-8?B?Zm9xbURTL29RdE1BVVR2OHJsMm1nSi94eG90Sk9SZjRjK0x2d0NZZGV6aGhY?=
 =?utf-8?B?Q2E0NStLWTkrWHJuMzlQZVFlNU5pUkZHV3M4ZGRnN0xwa21LSGhVU2k3U0FO?=
 =?utf-8?B?em4wNjRUb0tLSndxeXdtSXpMeUUvdllIQ25YMnhESm4xb1Bvb0JkQ0h6dllk?=
 =?utf-8?B?eDg5WGQ3dkZHNlBCZmtLTzluNzdJdld6SlVJblB5clRyNFVvckdQUHZHQXRz?=
 =?utf-8?B?QWwxZmV0Y2xGMit6dkFya0h1Q290MzdjZHNQbk55WWw4K1g2VEFLeG9Qb2ha?=
 =?utf-8?B?Zy96QXRHT09XQW93bjQ4dkhLcGg0ODE2UXVxYkJ5ZE9OOWV3NEtXT2JkZDU4?=
 =?utf-8?B?VFoyek9NWlNiSUFkRExkNkxZeWNhRWhCTmhNQ0VRck1WNmhQUm1YV0xicExS?=
 =?utf-8?B?ek9zTkc5dm0wemVMcnZxUEN0SHFjOUJoWHEzRGJINmYrWDNaZndEdXEzUTNp?=
 =?utf-8?B?ZHNtL2dlaUJ1L2dkQk1DUzRHem01N3BHRG81bTlIYkdWeERqV08zNHUvcTI5?=
 =?utf-8?B?dXJ3cDU2Vm9pd2RnT3k3cnBNUExIZVZOWDZYSGJyZ052QkFUbzFLendCc3pk?=
 =?utf-8?B?TkFoZjRGS2lMcUt0SmxsMlovUnh5bzU0WTE5bWVib3FvWktwTTVpNW5laGVS?=
 =?utf-8?B?dW5GMCtBUTZOM2FoZDRaMTN1Y1hqOVFLbmtzYVQ2M0dOZEhCanF2UDdEaTIx?=
 =?utf-8?B?TDlhaDh0ZDRlcEliNXd2bUlnNjF3eU84ZGJPcFBJVHUyUnYwdEgyeUppUTVB?=
 =?utf-8?B?Z0crNVp2MlFZVmdjNEcyYmh6WVByZ2UzMlRoZ3drYlF5aEhNUlRPWXFtY2xx?=
 =?utf-8?B?Z2NEZ01XSVRFZ2doekVJZ0FxUVNyTjRua1gvQ0FXU0hxbDl4WWZFUEVDSkhn?=
 =?utf-8?B?RkJ1RFVyL2lnRTRZL29JOGlnSDVuTDA4NmY5YkNqWUovY1VPRThid3dOSm5i?=
 =?utf-8?B?Y3NzNE44cHdYWXhGWEdVYXVtbG1NRHZTYUpMWno1emhSZnBPYk5rUStiQ0Rn?=
 =?utf-8?B?TzhwdGJrS2I4YmpPTXBwTEEvNG1uczVXNW9KS3BzY2gzZHpxRlRzdHp3ajlY?=
 =?utf-8?B?bUo2WkNKb0hyakt1cGZGSW9ZeVFzVDVjRndXSXJKSmNwZ0xZaVBFb3QxWnBX?=
 =?utf-8?B?T09BMWNnbWo2M1VWVExSZ0MrZ3lUZnpnVGtxd3RGWUk4clFXL2hWOVZKdUpa?=
 =?utf-8?B?c3pFalFZb3U4cWRqLzMyWHFNbnYwc1JlN0IzaUxrdWlpVUkxMVZzVncvZUtm?=
 =?utf-8?Q?6J1r276zqS34HK68=3D?=
X-Exchange-RoutingPolicyChecked: AObKg/UGbyPLN22a/Zr5Znu3vcqEkbij9OoRDmOhuS2Zut6v+t7hKl2CoxiKrpvL0qkvEJQogeKrfSyDWEhb2vG9/S4UMutLK3FP4qxenWgPohrf4jh+jdTFyEMdbb6S14dX8zoiHbVBJGcm9KQFjBgv4c0XgCLeJ3QbjMqUcGLeSZX3jwSyVxM2owQcOvuOLwlvmrVNMnvvZz5qa9uPIN7JD0XwAWAP8vbaMxWpUAkJ42dKvUfml2T8DReoKeP5MvQLkTsZAgvL4k99gP+z3mdMNGx+5LhLlLib3Q+dBoBalQZIYs/bBd+AcPmTQnJs1Oipygwet6gbGXoLdxkH0Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: b8a3ef44-6303-406e-b62c-08deaf38150c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 08:34:14.2556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hcgvt2RFWYYprqcmgrH9jcDJHwZMFcvF5A11pQXjHg5X5cJCOkVbB8VQ84pYB6x3E6t9cjfjBRPqRwWTxkDzPoXETtryIzO1riCbpACaRZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7652
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
X-Rspamd-Queue-Id: A1A6F50A299
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi Andi,

On 2026-05-08 at 11:41:14 +0200, Andi Shyti wrote:
> Hi Krzysztof,
> 
> ...
> 
> > +static struct mm_struct *
> > +get_mm(int u_pid_nr)
> 
> This fits in one line, no need to break it.
> 
> I'm not a big fan of the name "get_mm()". It's too generic and
> sounds like a library function.
> 
> With the two above changed:
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> On the other hand I don't want to ask for v11: if it's OK with
> you I would bring the lines together and change the function to
> get_selftest_mm() before merging.
> 
> Let me know,
> Andi
Yeah, that would be wonderful, go for it :)

-- 
Best Regards,
Krzysztof
