Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F43AB08D23
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 14:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ACAF10E307;
	Thu, 17 Jul 2025 12:39:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q52PiENC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC0710E307
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 12:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752755956; x=1784291956;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DxMdMPMF/B/rbpsz4DIenI7TrWhz+v2Q8A2HBLdiHaU=;
 b=Q52PiENC24j+GppjA+nSGyeUiJYTM+SUovx2dC4a+RgtlImNsoxg7rCN
 pmPSsgEjmkOC4hOQS31HM2PIf4IGktrSDUZuJDURFAvk09awtdVc2gcYE
 Grpm0RDSJbGeKt6sLxr8g7SOud+MTK9aDtVKNfdW0DLFjPWwWn4Da5RsD
 uyYrtQ3vpSjbOLhBCqQFh0E+Kq3F51knrLkl5jHTk6guV6+4DUJdH6TSx
 UF/YBRCXdeXAyRj5M/YVnwt7saw23YbVKzVn4eFwZOYtEZ41kwU/2SgGS
 PvyeB253mt8jMDDt4HPCuYExkLo0NDyjtAxVb43ygyJrxh67CqJ5XUN/c Q==;
X-CSE-ConnectionGUID: nRxuKOPPSW6l3AwJ7sCoEg==
X-CSE-MsgGUID: fUNJQuUARbONDDl/XaG6Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="55173029"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="55173029"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:39:15 -0700
X-CSE-ConnectionGUID: Kk/vuFRdTraRJfnaT03ZNw==
X-CSE-MsgGUID: OHmbRA2CR3KNvuAsK1o0JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="162317106"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:39:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 05:39:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 05:39:14 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.78)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 05:39:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s+MJ2+r3FOdpKsP3enD1sC1aXi22mxuzRUYDFCmSZoZxSK2DMM2rHj7NrS0zfM/F9MM53M7id4BGL8ufWSRJIMxK8+6I7aXOK4CNx+caKvqNBN0pvxiKIFFGtO1J4cKPOMY7fEgJ5Ioz2TnTSqJjt4A+yYS0ifO8iDoK+F077AjdZ/3vWNewY6zx8cp3ZNWBWRmReibFEX1+gAcguP44ncmZnnvnVkbUfr9IHneCZmfJ0Mbx+28Prqfp3ohTM3849dAZaG3RgHGA2DJWpkM3BzRCwf3KgoKxOZy7vsMP8QIjk6c3Z1xlLCgx0PbSneM9jSuwwUj0pMHa8hkTm/ynBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jzkAXOn0SyFbqdHgSJPxqkcM3H7JBaEzgTjLRlKMLsE=;
 b=u/USWjqsfOOnXqVjHFpNMvl6CZj/bX7WTNs8NCULPq8rfJdeUYfhtBStwj6msqUnOyci+jatucXhp+yNEC98quguhiNiUeqcCTDvnJk42OXfi9qN3UGzBHv10gj1lw2bJ5wOpNMvL05JaG+lXCdX39AxmeSeWx5Ta09ZkDmInU7S83BrIGBxgllC3WuuPm7QYam2qgSaPK/wHEYD9bxdU3uXXvW7s4oy5LVOWxfrChdJ6jPv0Gqaut0CalbXAaUhwVWrkzSdmu6WJ61RohQCeTJ8d0Ft7dpuv4hIcszxDRiuKGCcZcag+2j1S58NdyMIxgS5FBhilnz6dNR6eh9USA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 12:38:44 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Thu, 17 Jul 2025
 12:38:44 +0000
Date: Thu, 17 Jul 2025 12:38:39 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@linux.intel.com>, <sebastian.brzezinka@intel.com>
CC: <krzysztof.karas@intel.com>, <andi.shyti@linux.intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v2 1/3] drm/i915: Improve readability of eb_relocate_vma
Message-ID: <20250717123824.676605-2-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: VI1PR07CA0268.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::35) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CO1PR11MB4914:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c568e73-c88b-4f33-d020-08ddc52ede3a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFRERXhDcEJodWNodkh0WmJuTk02di9RMHkzaCtlS3o1cXNBTzdXZWMwYXZw?=
 =?utf-8?B?SjNQOTZYeEJqak9mTXBKbmZIMjlZRmNkdVBad2wvNVJDRkFNaDdQa3dBK0J2?=
 =?utf-8?B?aS9Wa3lFK3FLNDZMRUEyWXBHKzFvUUtKTjdNMWc2MFBsSEZhSEdtNHlxem5z?=
 =?utf-8?B?TThZcEhRdHk3U0RKZUNVMmR5L1dQTDlQV0xrMVhVRitDdVN3Z1lDTUpVekNT?=
 =?utf-8?B?RVczUE1IUXJ0SEk5SFpBWVpqMTF5Q2hqbzJjNTdKWU5DU2VJTUlwOXNIUEQy?=
 =?utf-8?B?Z0UvcXFSZ3hGQXFiTXdSWEJnZEpRcVN4YUFWNWhLbU0wdEtRQko0MHlYQlZo?=
 =?utf-8?B?NDByMGpKcVR6WTNyN2xaeEljYmEreEdqcEljT2JPNHFOcXNjRXFhS21KOFRx?=
 =?utf-8?B?aThDWGFpU2grZkNzblhhVXpCV0hIaURuejBKTTlIYS94ZEljMGl1K2JNWUJW?=
 =?utf-8?B?WHAxeDV2dkVEdU9qNUVqdEZza2ZsQnkrbWdVV3V5MHJEV2JZTjNZenV0dUNJ?=
 =?utf-8?B?dkRLMnFTc0lqdG5wNjZ3VTN2M1JDcWJQK1h0NTBnYkpESzgzSDg5THArNjNq?=
 =?utf-8?B?KzVGSlhXVmRWaXg2dEJOWDN6TTl2aHFPYTZ6MzNPMlhlNEV4eHh3RFd1dWNl?=
 =?utf-8?B?Y0ROcTZDaENuRzZxRUdhaDgzdlFQSGVKYncxSTFPSkpPdzhKdFpuUkF3TUtk?=
 =?utf-8?B?R1JNL2tOaE1CWGZwOWhSRm0xWE9lYkVwL1V2RDlzUWk0SkFJODgvSE5HenE1?=
 =?utf-8?B?Qnl0TllrdXZHQ2U3aXBpVFZKdE9HNnBmYWpGbXhSVmFhcXVwYldYVkJUc1RI?=
 =?utf-8?B?ZlhOSUk2amlJQ1hrNWhVeFhtUmxidEozTFZKSDJtdzFETFllRGt4aUp2M1N1?=
 =?utf-8?B?bEU3cUNsSkhFNTcvMVJPTGFRc0VZcXBobTNkRUhIaDFDczg1a1NWeDNQVkFx?=
 =?utf-8?B?Uk5xVzFKRU5rdVdJWG1Lem8xOEJmdnM2SDBVMjk0UG5hZGQ3a0RyYjZERUFY?=
 =?utf-8?B?ZElRSU5BKzVvcXdSWlF4eFNoQk9HeVVyNm5nV05BdG9RYXBUZzNSVlJLamhB?=
 =?utf-8?B?N0VVTDVzZHRIMXVkT0k3V1RoSisyditnM2RJdUZ2dVBycE1Wc0Z6OFNkTHJq?=
 =?utf-8?B?NTRDMlZNUUVzbWZiTkUrMUpiYzQveVR6ejlsdCtzUDVKVDFibFVmTTd4Nlhm?=
 =?utf-8?B?NU1ZYlJMdXFaVGkxL1JrUS9jVm9XVURuUGc4dGpHS01PZXRnS09vUjFPMEdE?=
 =?utf-8?B?L1QxVEc1MjkwWVBmYjM2Z0RKUzNiOG41WjJsdW92QXhERjMxRm9EMGcyanFN?=
 =?utf-8?B?UFBTTUtPREI1K25sS0FyOTM1dStlZWQ5YWo1UHhuKzZTNEl1NWVkK3YyWXBO?=
 =?utf-8?B?NkJlSjZnNGdMUitmOENmeEpNcUdFbFptRzhkbHZKUVNPNDkrL1ZjUkRpUFJl?=
 =?utf-8?B?cG91Z2p1WlNSZlM2UXNIUG5mRXllc2dOcWoyVlJPaXJESTAzdzh2OXZtZGps?=
 =?utf-8?B?NVF3dUhBZDZ2aFRBUG1mZ1cxdFV2TC9KQjN6UGt5N1l6RkQ2Z1l6dlZtalF2?=
 =?utf-8?B?aFFIaW5WSHdoRkh6TUpLNlVQYWFGV0tJSzFvTTJjckVPNVN5dndDc21WNVky?=
 =?utf-8?B?U2JkUjB1bHhPM3hWOE9wOVNCN2kvOFNTQnVpM2NqS2hvQnBIb2xYaS96UDFZ?=
 =?utf-8?B?MXhNM0l1VWIzck1kcHJqY2FRZWVydTFNSlFadTl0Z010TURFUzI2SkdPdWxU?=
 =?utf-8?B?cC9raXFBaWQrL3ZoWWVsU2llRkVpcHR1VFAzWVgyMFpHRmxDR2UwUW1aSUht?=
 =?utf-8?B?L1JCbTJJNTh1WlEwdjhZYk1ScUMzaWs3bE1qMk5zd2c3cWRjbWxDcmlybm1s?=
 =?utf-8?B?QXJyd2Z2OWFRNUFIdm5DSks2MGpRL0FESHcwVnh6dmFLajh4NUh6Y21jd2RB?=
 =?utf-8?Q?d/hanuxYq4s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHV4REI2Z3NqL2RjTDlTeGlGT0RZTytzeDh6cTM1WGNGWnJ0aGhzY05jUUtl?=
 =?utf-8?B?Z25GQm5Ra2ZFTDYzVDdtK3JzUUlrMFk5VlhCcFpUajVGNmpBZHNKUGZBRW5L?=
 =?utf-8?B?ZUZpVHZtbWdzemdvdWMzaThseUs2NkJ1U0tNN240Ylo4RS9TOHlXRURONS9Q?=
 =?utf-8?B?QTRaTFRiMFhYZWY1UUpweVBBV2RjMUFTWWU4RU92Z0dobHFNa2tqRnFSYVkz?=
 =?utf-8?B?UHF1MnFYYitOd0ExSUNoSys1QW9qS2pDNzhVMWRzUDVXclZFYjNVcGVaV1dq?=
 =?utf-8?B?MEhlcE5ON3FDTHNmUFVDSG1pVWpsMDZ3RndiUDRxRWZ0d3lKVkNHVDRIVGph?=
 =?utf-8?B?ZTEzcUY0eU5NdkJzU1hVUDFjVXpQWWg3YVVDVUYzZDZMVWVWNFpwcFJhd3pF?=
 =?utf-8?B?NUYybWZJWjBwSG14QnJFbCsrdDV2UFN3MlNUMVlaTkRJMFJibXVuWlljUnNi?=
 =?utf-8?B?N1p3ZUY5Szl6Wkt1bFZseVFsSHdna05UdWlmV1JibFp5My9MWGVzV0lNc0F2?=
 =?utf-8?B?UExHdkJMVzlQemtHeHUxbTdINTVpanJGaTF6WXZMWjc0Rkh1bFNlTXZFTWNE?=
 =?utf-8?B?Yjg5ZDNuYUx6bU5DTks1WTYzc1E1NWxZMlFLVzBjKzA1RHFTWXJvNEdWUVc2?=
 =?utf-8?B?dlAzalZlWFBIY1REdGNsTDROYWFVeUJBV1Qvdno5Q1grdmp3N21leU1aMjlG?=
 =?utf-8?B?WTF5aVkwNjBsa2NkVU9kY1BBU2JydFRzNUZ3WWJLVGN5QmxDeFpJYnkremRO?=
 =?utf-8?B?MTM3QkRHSitrOXVhWFFDQmRzVXhyYmJNYi8zZHJwdktydithYm14bktBNmEx?=
 =?utf-8?B?WnZ3MkJlOEdXUnpnK254ODBsUlpXUlhnRzFnSGpZUlpGZWd6YVdsRlRrUnVN?=
 =?utf-8?B?VlJXRTAzdjNaTFN1WkJGbDE1M25yWk9nL0g5NE5qSkVNT2tsbmJHTzlnbWdi?=
 =?utf-8?B?ckQ1SmhHYlNDYjRIU1hKUy9ZWGREM3k0RnF1UmhtV0RDazdxVG1pWTlIMXBs?=
 =?utf-8?B?ejZGNHpYZnBEb05KbFpUeTFsZ25veXJWczNqU3ZIV0FYVGRPazd6OFlaSUI5?=
 =?utf-8?B?SktucWFOZUVtelFFOEVyS05tQ1lyaHRUNTNmcGNHVGszOFk2NXRoakQ3TzMv?=
 =?utf-8?B?Z3VxZk9WVjFxaEx3S0ZoSlBCaHMxeGhVYUdCbDdzR0F0anFXSDZhWXF3TEJR?=
 =?utf-8?B?TFhTUVBpMmZOeHZSaXNtR2tvbE0rV0hHWmxYRDdOWENJS3FDbHluWTZPdUZR?=
 =?utf-8?B?VWQ2SWlKUDhpeHR5ZzFrcGU1WmNzTW1qcDlkeDl1bU5SSXRyZDQ5OUdEYW1H?=
 =?utf-8?B?UjlPWXowbGVhUnBPbmJtWnRqTXArWlgrTmpCOE9EcmZQSWNVNFRETEFkNEZ2?=
 =?utf-8?B?dHc2ODY5RE5NMWJBYVpjZEJucTZPZ21KYzdkUG9ML2hYOG56NWIvRVdrUHMv?=
 =?utf-8?B?aVg5QzJBSEdXQTlNQ1ZuNSt6cVZpeHczYXc1dGlmU3lDdUM2eWZKUWR3Ri94?=
 =?utf-8?B?SkRrN0RQaWQ1V2pXMlhKOW5ROG03M25FRUxUSk0rcUxkT3lVVlBLS3hCb0RP?=
 =?utf-8?B?ckVXMXk0am1CUzF0dDhjUExnbnRmZENCN05OT0FIMVRXVXF3azUwUngvRm1N?=
 =?utf-8?B?aHJqQWdJMDNnL082TGVGdEF0c3hxVXVpSWdOdWd3Sm9tby9Ic1h1Y0tTcDdz?=
 =?utf-8?B?ZDFvTUNFNXUzdXE1S2N5eWZLeWM5NGpHMlVRamR3Z0k2amZmMWlQUlVmYzJC?=
 =?utf-8?B?TE1LSjU1aXU0azZ5ZnpLUWFpN21IcUhUOEw4NXViWElhdGIzc1hsL2FHUmhu?=
 =?utf-8?B?Z0JNSmNnUFFIdDFKdWlDQTZXSDd4aVI3ZG1FdGVaWFRtQkc2ak5LaUNVY0Qw?=
 =?utf-8?B?MGkzamVidjRVdXRlYk1BWUJuZ2RvNXhSbEpFaUxNakVYeVplbDVkV3BWZjBQ?=
 =?utf-8?B?YlltanpzamgrNWxlTEZrcjRCMkMxV2lScUtMWUFFa0VlZU9VMHI0Q25YK09J?=
 =?utf-8?B?UnNiTHhEaEYxaFRJQXBodml4TUl4YlEwb1Y3aHIxTTJLYWFIQmVtcHAwb2Mx?=
 =?utf-8?B?UWh2bEo5SldqMjVxR1JQZnRFNmo1WHAybW9ESktOb2ZzdllFSzloNmszL29E?=
 =?utf-8?B?akptTE0wbVVFYW5CdHMyRlN5TzhNbEZsZWtaZkkyVWF4MVA4OTJmUktjQmpO?=
 =?utf-8?Q?rPQr2zO/joviHLOKAOJ64rY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c568e73-c88b-4f33-d020-08ddc52ede3a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 12:38:44.5735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: shfMkz88BCviknl82Qh8Of3szQ/k64EkTuMbqXdP9YrtCWfr6VWEC6mgcILeYdt5C3CEYM7SY86ZPkc4USSzOz1ZgDOIWvQs9jnStWTFA7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4914
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

Refactored eb_relocate_vma to simplify stack access and loop structure.
No functional changes; this is a readability and clarity improvement only.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
v1 -> v2:
	- Revert changes in error handling.
	- Restore the original formatting of the comments.
	- Reword commit message.
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 84 ++++++++++---------
 1 file changed, 44 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ca7e9216934a..ea4793e73ea5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1529,6 +1529,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry __user *urelocs =
 		u64_to_user_ptr(entry->relocs_ptr);
 	unsigned long remain = entry->relocation_count;
+	int ret = 0;
 
 	if (unlikely(remain > N_RELOC(INT_MAX)))
 		return -EINVAL;
@@ -1541,11 +1542,10 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
 		return -EFAULT;
 
-	do {
-		struct drm_i915_gem_relocation_entry *r = stack;
-		unsigned int count =
-			min_t(unsigned long, remain, ARRAY_SIZE(stack));
+	while (remain > 0) {
+		unsigned int count = min_t(unsigned long, remain, ARRAY_SIZE(stack));
 		unsigned int copied;
+		unsigned int i;
 
 		/*
 		 * This is the fast path and we cannot handle a pagefault
@@ -1556,53 +1556,57 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		 * this is bad and so lockdep complains vehemently.
 		 */
 		pagefault_disable();
-		copied = __copy_from_user_inatomic(r, urelocs, count * sizeof(r[0]));
+		copied = __copy_from_user_inatomic(stack, urelocs, count * sizeof(stack[0]));
 		pagefault_enable();
+
 		if (unlikely(copied)) {
-			remain = -EFAULT;
+			ret = -EFAULT;
 			goto out;
 		}
 
-		remain -= count;
-		do {
+		for (i = 0; i < count; ++i) {
+			struct drm_i915_gem_relocation_entry *r = &stack[i];
 			u64 offset = eb_relocate_entry(eb, ev, r);
 
-			if (likely(offset == 0)) {
-			} else if ((s64)offset < 0) {
-				remain = (int)offset;
+			if (likely(offset == 0))
+				continue;
+
+			if (unlikely((s64)offset < 0)) {
+				ret = (int)offset;
 				goto out;
-			} else {
-				/*
-				 * Note that reporting an error now
-				 * leaves everything in an inconsistent
-				 * state as we have *already* changed
-				 * the relocation value inside the
-				 * object. As we have not changed the
-				 * reloc.presumed_offset or will not
-				 * change the execobject.offset, on the
-				 * call we may not rewrite the value
-				 * inside the object, leaving it
-				 * dangling and causing a GPU hang. Unless
-				 * userspace dynamically rebuilds the
-				 * relocations on each execbuf rather than
-				 * presume a static tree.
-				 *
-				 * We did previously check if the relocations
-				 * were writable (access_ok), an error now
-				 * would be a strange race with mprotect,
-				 * having already demonstrated that we
-				 * can read from this userspace address.
-				 */
-				offset = gen8_canonical_addr(offset & ~UPDATE);
-				__put_user(offset,
-					   &urelocs[r - stack].presumed_offset);
 			}
-		} while (r++, --count);
-		urelocs += ARRAY_SIZE(stack);
-	} while (remain);
+			/*
+			 * Note that reporting an error now
+			 * leaves everything in an inconsistent
+			 * state as we have *already* changed
+			 * the relocation value inside the
+			 * object. As we have not changed the
+			 * reloc.presumed_offset or will not
+			 * change the execobject.offset, on the
+			 * call we may not rewrite the value
+			 * inside the object, leaving it
+			 * dangling and causing a GPU hang. Unless
+			 * userspace dynamically rebuilds the
+			 * relocations on each execbuf rather than
+			 * presume a static tree.
+			 *
+			 * We did previously check if the relocations
+			 * were writable (access_ok), an error now
+			 * would be a strange race with mprotect,
+			 * having already demonstrated that we
+			 * can read from this userspace address.
+			 */
+			offset = gen8_canonical_addr(offset &  ~UPDATE);
+			__put_user(offset, &urelocs[i].presumed_offset);
+		}
+
+		remain -= count;
+		urelocs += count;
+	}
+
 out:
 	reloc_cache_reset(&eb->reloc_cache, eb);
-	return remain;
+	return ret;
 }
 
 static int
-- 
2.34.1

