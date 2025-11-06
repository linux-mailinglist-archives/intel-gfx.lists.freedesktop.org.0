Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECD5C3D709
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 21:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469FA10E9D7;
	Thu,  6 Nov 2025 20:59:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jl3Ob85W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DCCA10E9D6;
 Thu,  6 Nov 2025 20:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762462786; x=1793998786;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=fxauPJgA+vcoyqEZ0Qpo4h86zwdUJ7nAJqT0vzZLYDg=;
 b=jl3Ob85WH2sIjDxnNvgKmjbkMSQl1XDVHnvFnQd+uG79QHQZAlTXMDT8
 i/8CsxdUiwgSGZfpuHsJNcqC3Yugjl0iLfixot3N1Qq48pMxAM6J5iwPK
 Iz8sv65zZwvwy95fgdbnLj9nZzqh+K5Glr+pv3KUOnVD/IGbT3i2Y6zAt
 mPSupXNuJn9QqCMdMCnKWbL4V9KaHzcRlnW/XB7yveONWxiZCUbUxfyJx
 BmThKJMwc3dt+nnL/LJ2fFRJ38z99YlC2u0QEu6fwdD/yrls9BKod9MyI
 YH912ECLjF2Tbj+UbeB0le4daF7AAfvITD3NDbPkrpJUYxcjgaYJLbjZv A==;
X-CSE-ConnectionGUID: VN7zCd3cRiesduGLQHh9Ow==
X-CSE-MsgGUID: PNaVWaEVT4iH5QsmStZhtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="76062331"
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; d="scan'208";a="76062331"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 12:59:45 -0800
X-CSE-ConnectionGUID: zUxsHRj0T+WuUnpv4dupxQ==
X-CSE-MsgGUID: dvhxmOCMS3ec5c4WdH4xnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; d="scan'208";a="187703394"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 12:59:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 12:59:40 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 12:59:40 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.56) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 12:59:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jXFpP07kuIU9XhEIgKatUQPfNePjgfVKGyVlLNUCQj5ah5pVWLULKpKT7p6mvacq7Raq86DWvzxZrjbVpmfqXkgmNxuxEo1jhGY1YDF4FOxFBupCuneWduuNtrVGTs3O/iHzyz9+GCqKh8NvMWxbZmY9kx/gkkGXwA8TaPswgs+L8PhFQPIJ+XxrpOvwPDhrbB7Ruucqj5MHCPlGRAHrQyXWMIZW5ekkRGvzL9jhEJCutTt0PVGOpi+ilK3fwU7PTKlEbKBqgr/VXbAqeRYA5luJqcSQztEb46gstYgyIrSY6hvETHN2oLVltYgW85vdI6HI5Qh2ZAi038bHRZ6Afw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DfP6fUCZI3jdLuHaruiCG3N19xTjVejr2W3wHRCqy7s=;
 b=ZGt2QTtBTvX+iRYAUPp9kefzBia/0YoNptGHwiU2JquV18HrMaAUtNQ1jnnqNKrRvYCzGl5/IkCAs6Lurt3E/rqmYDiUOjx2GROhP4jVD/ohBcsdXiWGfSuB/gFd6m9Dnw6PJYbcL5wksR3HKM/YuYIAj9D4wc0vrdLnEyu8ulKRqUJNnZ2vjcMT1jtoT5yFSboSSlM7jd8O9Hmqp0fxoCULYgYOxnEoTBTp+I+vSqflEo/aBdivgZDWv15se117b9uRHu07REfMo35a9DYr8zPr9FuNpVSwqUMd73oi3seI6de8FsTS/QtbhwYohw3s81aGjGPwfO35hUrK+v4g4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB7274.namprd11.prod.outlook.com (2603:10b6:610:140::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.10; Thu, 6 Nov
 2025 20:59:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.007; Thu, 6 Nov 2025
 20:59:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <176245653342.27404.15837491806418095227@10055242dc62>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
 <176245653342.27404.15837491806418095227@10055242dc62>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for Reviewed patches from:
 [PATCH v3 00/29] drm/i915/display: Add initial support for Xe3p_LPD
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 6 Nov 2025 17:59:32 -0300
Message-ID: <176246277288.3117.8572358311089603795@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR05CA0056.namprd05.prod.outlook.com
 (2603:10b6:a03:74::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB7274:EE_
X-MS-Office365-Filtering-Correlation-Id: 199a0a84-056c-4a87-de64-08de1d776591
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?THp6dm0xMWhGeWE0MjdXS0hLTjNxUTloblBnSFVEamdsRU1DVE9yZk9PSGhx?=
 =?utf-8?B?THlsbnRZM3llc3ZLcktaNFkwVGFWWXhwN0JFT1JuUUxyR0lVcjdIamJ3d09H?=
 =?utf-8?B?Y1ErOVEvckhjRkZnSWxyUGdRZzdOVmFneTE0TFMrZGVkcnBRam56MjBQWjN2?=
 =?utf-8?B?d1RPS0F1ekVXaEZublVCejRwV3Iyc3FFRG13RHpKdldWenZBdTU0dGNIbXNo?=
 =?utf-8?B?QzdlM0pNZTRCOHBrZDFyVEVDbElveDRaRm0vMzA0OWxTYkJsNG5jS3c1c0NZ?=
 =?utf-8?B?VE9maEpDdGJGYUV4ZG5tRHZINWd2bHp6eEhqOUFzOHZBbTJhSUJrRXFyT1RQ?=
 =?utf-8?B?U1ZaZUZ3K21Qa1p0V0VXOGo2TnlGemIyZXhZOENKL2VTblo0QW1WOFl3bGFi?=
 =?utf-8?B?OW11WmlkSGdSVjVpK1B3akY3QmVzZW9kSVoyNDZTRzdZV3RPVTN5b1d6QUpK?=
 =?utf-8?B?YVdjNjRuUFlxUGtPcTIyK0cxRFUyWlBEbEp6OHVxZ1VGVEUrWDNZQVFMUVJn?=
 =?utf-8?B?T3E3eHhEb1R4RUt5ekFVVlVWZ0JiL2hYamRrRDh2SndnZ2Z4eWRYMmdkT082?=
 =?utf-8?B?dFFmTlNrN3VOM3FkNGdhT2pnRzYzWE5qeFQ5ekNQaDBzVE80cktaTnRoMDFh?=
 =?utf-8?B?Q1dLSlV2dkwydzhMbG93UzdSNHU0ZlBoOFB1aG1XMjh4RVdkdjdWblFBRGh0?=
 =?utf-8?B?VjdtTHZScnUzN2NscjBTUnBEeFo1OC9VNVVFdUJnSDdPRG4vWm1EMFFZQ29O?=
 =?utf-8?B?ejRuVGs5cndVV3d1Zjh5RWl3V1FBajVaTDJvdk85ZW1Db1J0djN0bjFnOE42?=
 =?utf-8?B?eGt2Q1lvMGFFWHNyTUpzUS9OemtSVUJ3MFpFV1F3Z1F6N2YwNjlIOUFDd3Iz?=
 =?utf-8?B?SmMvcldWVDJyYkVKS2NRbzhaeGZtMnVPTjlFaWJUK0pBU3FHanFCNU04RFdN?=
 =?utf-8?B?SGJCQzI1VWpEVDk4Wlg1RFNYOGJOMWhpYVVIcnFPbzdkajBabnhJYzA5V0d6?=
 =?utf-8?B?bExOenFWUGIveDZhU0Uxa3VaY2lIM1oyUGdHaWVqcEFTS1B1NkJ3dE1GSlgy?=
 =?utf-8?B?elJrRDJnaG5JZ1BwZHJDdXVTQ05zNkh4eDh4VVlZSmVmYkxpWW1OK0hBZU1o?=
 =?utf-8?B?d1VaTC9uZ2tyNFpWMjlOeGJBU2dsV3NUNFFPQVhLWHk4T3VvZVlaaEpXOVpN?=
 =?utf-8?B?TTlGRmZSRlFVdzRvdk1MZjZjY0l5RU9MVXlRQi9yeXBEOUhxWlBxYUgrWEV1?=
 =?utf-8?B?aVVaQXQ4Y2lBVC8vSmxpaTZ6VWZzTHhHenhmTGZoayt6ZEpETUlkSWNKS3lx?=
 =?utf-8?B?OFAvcDVPN2lkQUkxK2VBRjZZZ09qemhsa2lOVHF0TXhDd2laTDNwM1hOVE1h?=
 =?utf-8?B?b1RGZkJBVWpQRXRVMzhVbzFXWXV6S2sxZ1RWYU5PSnhZRHFVVjlNN3B1RlJ4?=
 =?utf-8?B?NGlsUmJiZ1dJWXR4dU9EcnRCRlJISjJnL3czRHJyeGwrTmZRM0grcWFiZitB?=
 =?utf-8?B?Tm1PQ2NOYTVYSHY1Z0YzVDBTaEdWcHNSSElwYjEzQTFibmUwYUpVL1BBbjFO?=
 =?utf-8?B?RXFYOUxPVVVuM2xURmhFQ1E2MFg3ZTMyNmMvVUZQVmt0ZnlQb2pxSTJqSTdp?=
 =?utf-8?B?c1NzSjY1NWk2dDZLRlYyZEw0aUJuTk5uakEvTGwvMi9RZEFkSTRPbTkrVFpl?=
 =?utf-8?B?dmd0bFZVUzZqZ0FMRUNOM1QyVEhla1BLMGpCa2Z0Z2lBWDViMHpmWjNQdDI2?=
 =?utf-8?B?UURnek11MjBwcDFJQ21oNkt3dC9XYjBJMnV1S2lGNnlpdk1JZ2FELzhvS2da?=
 =?utf-8?B?M0ZtWXNTeDFkYkY1Ym4yVUt3UHdGUWRjbXBxd2RBUWMzd0ZIZWNuS0hSZGg2?=
 =?utf-8?B?dXJxL0xtNmVxYUhpd3NKWjJyanI0ZXdiRHVSclU4T3YrRnc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHQ4U20xYXpNZmVCUFQ1bFpwdnFLWDZEamJuNDlkKzlkV3BGUXN1K21SMzZH?=
 =?utf-8?B?SmljNjFQSVVySG8vMTNJZEhyN3BTT3JOQ3pWZlp1WlRPSWNVMmJ1cUV5VVNm?=
 =?utf-8?B?NllQdHJEZytwVXNFdVgwdCtrSGFJU3dpWHpoM3FyczlQYitnSVZZWXd0U05X?=
 =?utf-8?B?MWRlS0MxdG5hK1B3M0VNMmhrcHg5OHk0aThlSmtRbXVwM1dTZlJCOXJyZ2R1?=
 =?utf-8?B?V2tUQVdnZlJzc0VDa3NwMG1ZODZUVmRMNDZ1TVVOU2IrNDJqQnFVT2c0R2Fq?=
 =?utf-8?B?bE9FT2dvblJFaVNDQ0U2WWtqWXcrdzRUTkh5R2R0dXdtQTl6cHVKdGQ0YllU?=
 =?utf-8?B?UWNqb1hTczdkMmdBVnprc2hONTB1dFp6TWxBRWprb0ErbmdIV1drYm9vMGVs?=
 =?utf-8?B?N1cxakIzdDBZQ0RIMUl0aGZDclpTZjZvNW1Pc2NreGNvclVvMEtVL3RmN0cr?=
 =?utf-8?B?MFRYR2dXa05LK1RlWUh2VWNRbktodnkwemltQWo3Nlp2WlVjWFlvUkl3M0Vj?=
 =?utf-8?B?NGhNNm12MEdLWmFTSGd4eGpJeExlRStBK21nT2NGU1RZZnRGMXNKajBSYjM5?=
 =?utf-8?B?YzJESWtSV2Y0VzA2VWZtTVBrZHpHYnV5NmRYNEFLcHJ6ZE5hekFGSTRhVEJQ?=
 =?utf-8?B?QlBDZERkM2hBMkpoakUrd01PZGdKS0dGNmxBVmFXczFEdE41Z0w4NnIzNS9O?=
 =?utf-8?B?K3lqZVc1Smd2US9rWE9xSDdwTGMxZmVUSE9raHBRNnhBV0RpWEhiMWNqc3Jr?=
 =?utf-8?B?TTlJQTNyTE4vN2lyclBWODNOWlpxbDZCSGxLcXhRTVRSdXhmUkVVT2ZmZEQ4?=
 =?utf-8?B?Y2ZFY3FxV1pYZTNNWWFSZ1JnWDNpbmF3UE5sQ2t4Mkdxa3pWUHYrdzloNDdx?=
 =?utf-8?B?aTd6aFF1dnl2elFvQU9wZGlHN2lEVTdrM3ZHb05zNmJZUzh6cnRYMU41UGZq?=
 =?utf-8?B?KzZVQXF5YkVkZnByYU9MS1ozQm5yY0h1eDB0ZWlSY0NWZ1FDM2grTjQzMHUx?=
 =?utf-8?B?OXo2c1JiZkk1dlM3Q3crVFNsU3MxMTQxNVZyVGtTRXF2Und6L2FFYndtNC9m?=
 =?utf-8?B?NG44VmFkaXYxc21oZnhXZE1Wb2RkMXRxb2RyQ0gyMnpjN0R2U2tEcUxWWlUy?=
 =?utf-8?B?WnErNlo3UXh6SDEvNHhoNDcvZ0NTMVBlRy9tUXpiMVE0TlVCb3dUTGZNU1BC?=
 =?utf-8?B?TmY2YXFjTzU5TnJhTk4ra050Z2JmaTNJKzM0MkNJd3Exd09WWGViR1dFbGJC?=
 =?utf-8?B?RWpMNENBNVFOVWFVY0Z6Z0JxdDNKSXcyWUEyTkI3UEVDQjltVmhJVlhzNzBy?=
 =?utf-8?B?dnJqTkVrc2huYlJXNktBN1JqWFZ0SlM0WURXNG9EYjFUdVczaFAvRENYclRx?=
 =?utf-8?B?VStQeW4wMGc0YXVEend5UzdnS1daK2VUZHFKUlYxV095V3lqaXMrcVRhSitu?=
 =?utf-8?B?UmdYdlhxRjFoTTAyTkRVZS9oVVVJT09aSkVlU3l1Sjc3M1hSN3RzS0dlV1pL?=
 =?utf-8?B?RWJOTGtzOUVZMVVDK0tYM1ordld5SDB0THVsUHQ3MlZObmVUSVVPY0xHa0RZ?=
 =?utf-8?B?YnRpRDJXUHNFTEpaYmVKQ2M1eG1aTXIrcmVwQ1BodzZ0V2ZjMytMMU44SjNh?=
 =?utf-8?B?TjFZcldNMCtlNy9GSVViVXloRGNKcGUySm55b3ozc3ZJYzM1Z0JibUlOcWNM?=
 =?utf-8?B?Z1VYV0VNUlAwRisvM2d5N09adVU5bm80MHdhSW1KRDNmbnBLMXNNdTR5Kyt5?=
 =?utf-8?B?Z3dQNzZsb1Vnd1MwcVd5Zi9MWjh4dkN6dnZ2bWpma0cyUUlhTEg5eDFGTnox?=
 =?utf-8?B?dmpPTWNWeDI5Vkpmb1NnQlM4QTY4bGVpWmpDTGVVUG5ZTTIrUjBXcE41WWtx?=
 =?utf-8?B?dWJoalF3LzhuaWRQN1hXeGFZS1NtU0hUdzhtR1RJQ3BpWFRIenZGVmMyTk96?=
 =?utf-8?B?OUVJS1ZOVmROcWRDMFFMOEQ3MlhDZG1TakxrV0lCb0hINEZENzJpWU9ieUlS?=
 =?utf-8?B?a3BGMzB4Z0prYWdob1hVL3dRT1dMWEoxNzM5alMwOHh0UlcyUzlJMUhybW55?=
 =?utf-8?B?OTJLMWNqNFVlV2tkY3hNdGo4ME9rV29IVnpxcW00cXdCUlIvZFlWOHM1bjFS?=
 =?utf-8?B?Yk5WUm15VVNjK3V5TzdUbVdCdkQzU2hQSE9UNGJOZ3lMN3FxRytNY1BTWVB6?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 199a0a84-056c-4a87-de64-08de1d776591
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 20:59:37.7478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u0QXzVjJ500O32kDTu5royvDSczTUOXujfsEaoRG4juhkMHfpXq4b5BpF1kYGJs6MeSDh5q7Xykjy8js7GMX2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7274
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

Quoting Patchwork (2025-11-06 16:15:33-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: Reviewed patches from: [PATCH v3 00/29] drm/i915/display: Add init=
ial support for Xe3p_LPD
>URL   : https://patchwork.freedesktop.org/series/157073/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_17490_full -> Patchwork_157073v1_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_157073v1_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_157073v1_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (10 -> 10)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
157073v1_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1=
:
>    - shard-tglu:         [PASS][1] -> [FAIL][2] +1 other test fail
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17490/shard-tglu-5=
/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.htm=
l
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157073v1/shard-=
tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a=
-1.html


This failure should not be caused by this series and is possibly related
to https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14857 .

--
Gustavo Sousa
