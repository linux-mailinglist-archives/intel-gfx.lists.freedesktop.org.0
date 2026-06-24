Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XBP7CteiO2qnaggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:26:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EAE6BCEC8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:26:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DVSbnCac;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C00810EE3F;
	Wed, 24 Jun 2026 09:26:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12AA110EE3F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2026 09:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782293204; x=1813829204;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=nhhaW8goi5NAUlOmkImN8UNRIgVkKN2PDtAtuNgDBvo=;
 b=DVSbnCacnN3N/w6aJgVCLvnXo1/DWc4HN4dj7+aR+N5tm+Ca3WVPBW6Z
 v64pm0CQptFTdNcWtcPTQ/judwlKUSXw0iXYEM+dLXA/CzIVGgR0AJ0zS
 yiBlGFrrNucSSbhmD/vv8NTsIMZL+2LyDQ3etkWQi6nrFp0izAyNk8eRw
 mL9YBkmncVmAeMuUXAFHdJwLY/AtMWLxbmcyfcc5A0KnQtAqaOoXhxcDA
 TF3IG/n8y5I+BcPaUft9ZE5OmhU7SbTqyKbdCHYFCI+12Z0+cozh5DNdN
 mR8SDIzZsVClMY5AVfAhtuv9dcYsoERi4TzSkQnIIJmYOj5B35PyVG04A A==;
X-CSE-ConnectionGUID: GnRR3vLQQsyS5YoB5oWcwA==
X-CSE-MsgGUID: OuQcw6DcTU+XB88zLhy5Ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="86893973"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="86893973"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:26:43 -0700
X-CSE-ConnectionGUID: uZMXQfqmTh+gxeSER4xatg==
X-CSE-MsgGUID: 5JzZ/q+wRy2HLgnCP+kw3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="251729539"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:26:43 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:26:42 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 02:26:42 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.13)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:26:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yXgDdDTHWfWFTZkKyK7B/shqaoaRtxtDadDAdJW0ShxblUiOoGeKx5WGroqU5BtQrNMTcHXuRhYkfc7eb/QTOBoizYq8S89PiBL+UCsPZAeDUjVXGRDEADvACRmVVNKLGzSJnQkBByBrtwSDIe7WGrArStVGRWGtpHdxCEsKBFJJNNWHNXvlXMwAwdDNRoZg+h7Gl5Doju6l/KQdUz81deBgqdsfo85foHMSTGhy6tsNVmu0mqdKpLYf4WsQoYvg+B2Yz24o0+kIf0z1szt9SsNSA7LHT3SjQTzIk9Nzg6ps1Dzs36Ie0EhSum9zM4JGxxQFFYErfJRORRjsQmdDvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/SIlZ/Zd4qJFyFc2nd9PDqP3AeSEGUJfUTKwEYerlNo=;
 b=efINp+nUofiyDXb/k0Q5u5LPhyULUNCUPRQssd0LQmpQn1qSmTQOAoGqvT6Bw89AGod1dIPJ981rjqSXGitvytgjLkitAiOsXEPRlfOC34JkIvTg0qwQK1I33LBSakRCfKeW+3gdcL3LDPdFuRUcbPARoBYjms7OHW39X9xYaiXhTHY/ZB8dP8O0h+MmSMlpgct13btYFdgDj9UKR+AxWwMS7DpOZi1gV81xNjMDJhPYPwZg7B8UjF3tRyB3vNuO2CLADPOlNOkpcWH6oxSPTSoT1bLszf8HWCAq/5UB3vjD6ydJkbej09dyxaToLF5/Vfb8sNDVtlmU8rBGcrL5Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0067.namprd11.prod.outlook.com (2603:10b6:303:221::22)
 by IA4PR11MB9345.namprd11.prod.outlook.com (2603:10b6:208:56c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Wed, 24 Jun
 2026 09:26:37 +0000
Received: from MW4SPRMB0067.namprd11.prod.outlook.com
 ([fe80::3605:4f97:fbe7:2c4a]) by MW4SPRMB0067.namprd11.prod.outlook.com
 ([fe80::3605:4f97:fbe7:2c4a%3]) with mapi id 15.21.0113.020; Wed, 24 Jun 2026
 09:26:37 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 24 Jun 2026 11:27:07 +0200
Message-ID: <DJH67X9IJD3J.1YRKHO7I0JSZF@intel.com>
CC: Martin Hodo <martin.hodo@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915: Return NULL on error in active_instance
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Intel graphics driver
 community testing & development" <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
In-Reply-To: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
X-ClientProxiedBy: DU2PR04CA0258.eurprd04.prod.outlook.com
 (2603:10a6:10:28e::23) To MW4SPRMB0067.namprd11.prod.outlook.com
 (2603:10b6:303:221::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4SPRMB0067:EE_|IA4PR11MB9345:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ce8aada-e8fe-408c-c6a5-08ded1d2b10c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|5023799004|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 6NyH49OQKkXhi9Tzy0R5/RNEqKdlPCoo17ioOU3XxSYnSAR2s6GlcPy21BeXYxlRVog4veXRHhBS2a43A7f2fDhO79xauGdUQCxGxgwLzpXiIX2HdJ5nxME0f2olXXvwcN/YqvAbgXDLlFaiwsiU+qkqe0FW+UJF5hCOZaw4BbOsNLC7UkqP0Kt/4lXEcUHyehFnEFr8IrmCrnkOMWpGW4ONdzOlADE3T4OBCt0+6Rkxy3vNyUzUhFMfcHVwChfl8uiE/wh0y0SlmUiXYK6zwNyF0v5f1B78X2j0zVnUhOJUSUhJoVC+Lim8Y4WKhM3syqgS0Z9+6WXFDT3z4gmoa9cZR0l3HdOE1im8F9BMDXcI1Re3X6O0TmzD7zbClEbn4q+rromsUGtcRXo1i/PdqFsAafjgrJUC9xWS7nmxBrlg38MW+JPG59GJTwtZeQIM70iNIybNtKUIhKtCTuGP/QXS4TRhb9M4yfymdXamuvTCSHxBqSMkXulB5KEYVF6sd7d8BlGR/pxHApw/k7vlRmYYQstU0NtthNZaM5GS/gdzoviuj/vRNIDs+qgrp3FxwPY2qUY/xin9/YF2XNQ+1t6WkDA2Z4kaaAP7VCen0fouBMjWwZd6g3gb18DqN0k3weY8TfHNjIM6gnLnEmxFbrHkINRHe7t3krEVWOJIWCk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0067.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(5023799004)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXBMY29tSEFDOVlRb0dTRWVSb3IrbXMyVzB2Wk5tak5pbzZqYnFxaUVYQkxJ?=
 =?utf-8?B?T3IyQXY5VFN0bG1qRW9uVDkzU1NoLzJwbXdRS1IvWTdkTUtDZ0xydldlUnlC?=
 =?utf-8?B?UlY5NmZvRVgwVm4zenVCdE9tZlNMaE9TODRYY1lIaDAwWWpiOVM5VmkybUdI?=
 =?utf-8?B?dWI2Qy9GcWlkUmVQYXQ2UjQwUmZMS0I3SWs3cmN1cmhreVlmLy9yZ2s3YWha?=
 =?utf-8?B?QmNKUkl6bmVyalhTelNLLy9mT29oZ1FWSTNEcFpGVEEyRjQvcE45MFQ3NXo4?=
 =?utf-8?B?UWQwSHg2dC9qK0tkN0syVXVyMDVIbGJOMUJ4UnJzZG13YTNhOEx6dFhxMndL?=
 =?utf-8?B?YnZsSGl0eGl0bS9zQnZVdEk1WTJvWGxBZHAxV2ZsWStBaFQzUkRPVE1YRkZm?=
 =?utf-8?B?eXhJY0tRNjgzSGJvM1dMNEIzM3lybHBBaytmekRDM202cmpiNzY3ZmVyOCtU?=
 =?utf-8?B?MDlRVHdVdCt2NGs5S2ppN0R0Y08xejNKRGJBR1g5L2xIUGQrQkpZTVFJOWR1?=
 =?utf-8?B?S0RjVGJ5VExNNk5VaFByaDQ3QnEzcDlEOWpwZ2xWWFRSMVBMUGQwbVV3dkRj?=
 =?utf-8?B?ZDdlQVZxZFFFWENWdVBJM3lMVUdHRUU3QUNPOStoc0c1azh5MkRmN01WZFE2?=
 =?utf-8?B?d2ZHbUp3Zm5pN3dGb2tUZitFeUF6OC92bUtMelVVUFdqQ3pZdVVkVkIyYnpv?=
 =?utf-8?B?djBneTBQT2ZYVXl4akZsOC92eFFoRUZtdEhucXlhZ3BhTE1vNWxjbXNRSEFz?=
 =?utf-8?B?Z3hLbXRFNU5lb0ptUCtGbUlZMVNteFpGaHAzK1c5ZlRPdzNUV2JhYUpBM2pG?=
 =?utf-8?B?Zm1SOHQ0eXEzWEdMNDFEQ2lwZWVoVlRocHRBTmJGNk43N2dZdm9BbDdHNEpP?=
 =?utf-8?B?b0JrM3lIbDZ3TnQ2VnhReGRIQkY5L3JSNTF6MlVDOW12cHVEZm9NR0pYdHVx?=
 =?utf-8?B?bUI0SFhSM2E1WnAveVFiM1dyNnZpb2RFV0ZDdDdzZXJwZ2ZrRDllaDR5ZGdH?=
 =?utf-8?B?WTBNaVl5cnc5WVUxZjY4WHowem96TUl1UU4zSlV0NmhROXl2bXc1SEI1akM1?=
 =?utf-8?B?NzRRVVcvOTVtZFFycEZzb0dnSklDRGdMSXo1WTJvanMwYTRORnJxVjQ0alR4?=
 =?utf-8?B?Rk5UMFhhVkpxcktHYnJWOHpmcWMyZ3N6bEttYkJEL0IyZDc0RmJSNHc4c0NO?=
 =?utf-8?B?czU2VXR5NlM5WmJaTFlEMlJNMTBScDJubFJScjZwcmlBV0JqK3daazVvUTRC?=
 =?utf-8?B?VVhCQ2pLQnNrelM5cDg1RGxtKytkTmtmSmNkTlBpVk00Sm5QcEViWVQzMnlM?=
 =?utf-8?B?UCtuVmZoZVM4NXpKKzZCYy9ydkFVaGxkUXN4MDZrVDV0cWEzbDNGTzZlVTZC?=
 =?utf-8?B?Q2hERCt4TUgzUzFqNVAzdHZiWjZKdDBCdndSUDBXczZ3ZHAzeTZ4R0xZODlG?=
 =?utf-8?B?OVlDOFBkY0NSZWtNcXpYVUxQcXorRFhhL1VVVDJKTGZjcXR3aEQxMmhoei9C?=
 =?utf-8?B?UFoxeUZoY0piMzJHTzRZa3AxT1hBRlZDOVNwbStTT1RRYi8rWmtDcnhmZkV0?=
 =?utf-8?B?ODFOYVdLMEFLd21qd1JqTjZqd3p4aGptQ3c4VG1OdXArMEpZUStRUWk3WC9O?=
 =?utf-8?B?cC81d2FUL2ZNY281RHVwYzMzSEVpZjZ2a2NBOU9XZU1rcEQ3STdBUGVJZEgw?=
 =?utf-8?B?amdFTEZuNDhHNHFCeitLTzJWcVdmaXlYdzRkWmk3bXUyWmExTk8vNlowcjVw?=
 =?utf-8?B?VzRyc3FlVnVJZlZFbExCSGFNWTI4NVJiUVlyWmtoYXI0ZXJ4aHpwVjBuV2M0?=
 =?utf-8?B?a1dCalNKMk5BOVIwaCt4dXR3T1dmSlhYeWVXb0hHaE9EWHZ1VVhJK3ZKMHRy?=
 =?utf-8?B?ZEtxNFhFMkZGOFFrT0pzZWVBWGFoTlBGUzZRMWhCbndYRXBqTm5nYkJmT3Iy?=
 =?utf-8?B?aStqeHhWY3pqVHFhMGdxSnpQelljMHY0RWRYRUpBcjlXd1lsdWxtaklyRXRH?=
 =?utf-8?B?N0lKWGdUMkcvdm5nR1RCd3JMVTdHMVpEeUJOWTZCTUhYa2ljdFN3MHZGNDA1?=
 =?utf-8?B?VVlOUTZZemZrR2pZejdDL1NybC9nUzEyVGZ6b1k1QTNnaDlmeVlCM0JETkM4?=
 =?utf-8?B?NE1DZVRlR3ZpdldZWEptdUpaYWVBK3FSQlVXYkNnRFBJdWE0QkVDdGVRRUJ1?=
 =?utf-8?B?N0JFMzVQOUtPUGhDNFNEUFNFenFoMlNFY0FYUUx5OStGWkNaNTd3OVNmR0xJ?=
 =?utf-8?B?Z05uakRBK2d3RTNvSHlMVFREd2ZOclNBTjZvbHBWRUlnRm53VTBFK201NXRq?=
 =?utf-8?B?MmhQWFVMaEg1VFhnWkVOajdwSGx1bFZvMDBRRnA3Y1lyM09Tc3NBcWJvQnUw?=
 =?utf-8?Q?ZZ6Q/oFri7K+zvkU=3D?=
X-Exchange-RoutingPolicyChecked: Rkg7ZcgX0u8reK+AFYaAuCa4n6KM3X05tNCW6O0wkwpNuNVVXV4PlSIXQESuj7Ak9Dln2YxrLePpRmnGbmnkaE3K4AqSF6kE1n23VcrFkuGU1C5urrGmIQ3AXdZIQeRAQ0Rom58fK6qI13c2vB04gcIHP8ym0xn1DLJ9lwJCqVlJd3XliB3yRDF8lxGvtJQSJJlZVMTHMHdCTlR1zlkgDI5Qz0RZcyM+k4P4MoXHH0zraXw+2148ZdYZ6pKDnpczVTbHA6brZ3hzFVMp5WmoSUbhyoB5rd4FqrPcYIbK6tBRyEIa5N5ACnIq5BAvwVToW5U86M4oRiV8AutVv/4x8w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ce8aada-e8fe-408c-c6a5-08ded1d2b10c
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0067.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 09:26:37.7749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oDpWmMFxNQIDFcUJpiiDFmBUK+rzZUULD/G3fcKs+1s7EJdEO94DPT9gkJWCflamjufDMOdOm53R5wXPA3cA9mnirFUUSLPud5EUEH2mf78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9345
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:martin.hodo@intel.com,m:maarten.lankhorst@linux.intel.com,m:thomas.hellstrom@linux.intel.com,m:simona.vetter@ffwll.ch,m:stable@vger.kernel.org,m:joonas.lahtinen@linux.intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91EAE6BCEC8

Hi,
On Wed Jun 24, 2026 at 11:09 AM CEST, Joonas Lahtinen wrote:
> Avoid returning &node->base when node is NULL due to OOM
> during GFP_ATOMIC allocation.
>
> Discovered using AI-assisted static analysis confirmed by
> Intel Product Security.
>
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: bfaae47db3c0 ("drm/i915: make lockdep slightly happier about execb=
uf.")
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: <stable@vger.kernel.org> # v5.13+
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_active.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i9=
15_active.c
> index 5cb7a72774a0..aa77def0bc0d 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -318,7 +318,7 @@ active_instance(struct i915_active *ref, u64 idx)
>  	 */
>  	node =3D kmem_cache_alloc(slab_cache, GFP_ATOMIC);
>  	if (!node)
> -		goto out;
> +		goto err;
just a nit: this jump is not neccesery, you could return early.

--=20
Best regards,
Sebastian

