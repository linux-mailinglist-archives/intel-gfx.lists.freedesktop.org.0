Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40B9A59647
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 14:28:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BFBC10E461;
	Mon, 10 Mar 2025 13:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JStVokla";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DFC310E461
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Mar 2025 13:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741613317; x=1773149317;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=QQtn0++K3Jubp93z2PDtC5fuHBnDWZrH3/Hal7HWeA8=;
 b=JStVoklaph1vTmGbrj2go9HoplgqMrPdi9QNKMPfJpgUM4Ghxu2Zx2ic
 SybCPYi30fO4StcoNdoWN6JEdwJNUYWw+GIwcmBQPY7xun3dLbExIEvbM
 55wXs1u8Ht+quWupBWMoFpgkIfd8VmfiVJxfPNyk1xrcLkUbwRBGw/95o
 q5UgeUTIx2OoB0+JR9iL+cOQhYjkL3OXi1FlWlKxG4gspyAnl9wpDojAd
 MZpzP3rtGdVkXZgjRkv4Fxn9qb86TOqZfHCzVGGVkIDBlacIbzPbRxjz3
 9X2t73mpPwZ/KH0T7nyGoX+rGbSWbZZQfZoM/NlhT401prKu9eAnz/+HS A==;
X-CSE-ConnectionGUID: 8BYH2qXYT2istN05aHAelQ==
X-CSE-MsgGUID: O0aY0BsySgOi9oDIcaQ+Ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42720621"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42720621"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 06:25:03 -0700
X-CSE-ConnectionGUID: IBCDWBdBSm2C+qbwP7/SpQ==
X-CSE-MsgGUID: weGfFn5MRriPZbARcA68Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="120489945"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Mar 2025 06:25:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Mar 2025 06:25:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 10 Mar 2025 06:25:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Mar 2025 06:24:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tYUA9BKFqzRZkOe9pUOUgTx+Ints7Nhz2+h8ulN2fAkXWrSiSHEnA6XEtHhy2/0ODmIhlWxU6lmvPue8tcEuvS5qHnZNn1NzrnAZpq2YMN/TK0E/OHXGcilCdE9mbp3Cyhvzp0Z5yAzfsa3o2X7GGJSDjrXikmro7pX2w/cyErhvn3oVlLeRV1Mv7pKs9M00uqSsS5NwV0Oxg8YiIR0S6coopsBHnUfXbLpEqWGDxcQ6+oiqyeXByqfRFffWWYhoXqkCPKl3Suf5p6S4WM19O9m6evQuyUXVfqCCeFfioYAWAEPnATxW553dOm5K91s+Qqsf+p2fgZAw5/ct8Ryz2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=crBnDG9UYrPLqgnO5e9WQjrobL67UwqjcKxza6LASro=;
 b=mRnw3MREAB6THPOA4KexJRm+PVIm8WRHnVq//5ezfKBGlDC9iP/Cect+09UosTDTlmrv8AcROOdiUxHm8OtRiYUre53qG+MBLSqaI7SOxry6fGOdVJ2wQ4T1kRJCdb1lstCXyCaiWDEPqH3CHczldlQOdDNufytlhysQmWzpjUvqTFOycWF58k0jmL9hqbyJrobpyRAnBJD7fjxu+/FQIhf/rlTyDbZ8pRntm7NhxH2sN5jlxG+nzMbFCLkcwUyNZaO8lHMG/LOszohtIeIoEgTh0Z/Xdv+Tc1PIYLs7ONHRy3Fdiwg/Q3tOpIKgtrpxprGvC2ymwb+/aHHT7HI74Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY5PR11MB6368.namprd11.prod.outlook.com (2603:10b6:930:38::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Mon, 10 Mar
 2025 13:24:43 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8511.025; Mon, 10 Mar 2025
 13:24:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <174112721004.709723.11231246237483021780@b555e5b46a47>
References: <20250227-xe3lpd-power-domain-audio-playback-v1-1-5765f21da977@intel.com>
 <174112721004.709723.11231246237483021780@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/xe3lpd: Map
 POWER_DOMAIN_AUDIO_PLAYBACK to DC_off (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 10 Mar 2025 10:24:36 -0300
Message-ID: <174161307683.3769.13047310956316626082@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0036.namprd04.prod.outlook.com
 (2603:10b6:303:6a::11) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY5PR11MB6368:EE_
X-MS-Office365-Filtering-Correlation-Id: 4942ba6f-a747-44fa-3c39-08dd5fd6eb58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SkN3K21iZGZsQVhqL2ZkZWhSUWFjS3VUWEs1U21wV1d5NEhPc3B4VDlBK0pt?=
 =?utf-8?B?UHErMGRvMkZiSVNNM2pVY3FYVjIvcFpoZnRxTkk5UDVNN0I4VHVHaXh6TTVZ?=
 =?utf-8?B?S0RqQVZ0RXlDYmJ3ejNRdjZJNTBneldqSkI0Sm5RejVJc0l4MHYyRU4yMm52?=
 =?utf-8?B?NG5nQ0N1V3UreWNMczlvQ2wvVThHK2tGZVpIREdhSCtSeDZ6blNzMFdUM21X?=
 =?utf-8?B?bmk4QWsrdUI1U1NZUHZVeW1LS2RGcXFxM1FQZG5uQU1DczZMRkNxNXJsa2pI?=
 =?utf-8?B?TDdhc2Vhd0IwcmNCU2hGV2Y4NHd2U3k3MjNidmRUSlV1UFo5elVlYVhjbHZN?=
 =?utf-8?B?VWVMaXR4SktGcEE3OG5NbElHNU1VbC91VGlXQnZKSkFQS1lOY1lPY3dQRnNm?=
 =?utf-8?B?MWlHd3ZJbmhjdTZIVWQ2eWNhNlJCcmM4eVBNeGZRaDN5VTZ3T0E0QWxVZG0z?=
 =?utf-8?B?TzR5eXdZQzl4NEFycGdYTDBBQUVXWUxMcTNvb21iaGRkQngyelhCL1g4V0lC?=
 =?utf-8?B?Tk5uZzc1NDZpV0tHV0tMSm04RzJ1SkxjRGtGd1J6M1kwa3hEUWN5U1lia096?=
 =?utf-8?B?S1R6QWc2c0JGWms1Ylh3cDJycVFDMEQrTzhORVhOMy95a1l3SFhPVC92SmV5?=
 =?utf-8?B?YW9UREFHY2Z6bDZhcHR4MEp0akJKbE1McmlxLzA0S0FNekE1cEhEQVJoaGcy?=
 =?utf-8?B?VURjQWg2TjF4RFptZkREekZrcGRwUW9hVVJDUmQ1TExqLzNOaTNwRG15MkRF?=
 =?utf-8?B?OUdMNFl2VGlWMHoyVGwvdkJ2U2FJaGZ4ZDRPakJYVHkvWkZtdEJ3bW5FZGJI?=
 =?utf-8?B?czMvU2kzYzhrRGJHcDc3d2ROTjNyRm9nTGhPN2twd0FzMTZIaS9GNWpYQjlK?=
 =?utf-8?B?bWZ6NHo0a2xqZjE5Z2lOb05NN1R2Smp3eEwwa05qaVlqaWgxT09LNlphK1Rx?=
 =?utf-8?B?T3VwaUNsNFNqc2Y0MTZESEJEUzBWWWY3WEMyeTJVUHVmUmtnWkxqYlVKTFNC?=
 =?utf-8?B?NHhzWWNGd1pkUjNYUUd3RVhUSW5FRUNDTHFZZUE2REdjd1lQK25uMVRUcVEy?=
 =?utf-8?B?NndabWNURzVMMFBKVkQvZDNWYlFUR1FITG9VRmw4NmZkQWR0b2JneFpBNlVm?=
 =?utf-8?B?ekJSSEhGS3VqeExhbS94cjU3aEFqZU56OVlJNkRmdXNCY2kyNWgva1lrd2V6?=
 =?utf-8?B?K0U4NFF4d0NxNHppbUtLaGNwYksvbEdyUGVWQ291S1Z4NURuSnFpbzU2cFFK?=
 =?utf-8?B?ckR1b29UUEJVTjNZeEpXQjA2Z1grb0ViNnhqUmlCWldJVEhZcVlzV1VtR2xT?=
 =?utf-8?B?UU03RDFNRTRTQVV2WFZaM3pGK3Y1STRLcjd1Wi8reEhyOXo2Vkhmc1Uxa2hs?=
 =?utf-8?B?N2tYQ293N2dNbVJSN2xEMU5WRzg2S3gwMm9FRFZlbkdpMHJCd0xUKzJqeS8z?=
 =?utf-8?B?M3h3S2t5NHJXUHlURUJ5RVlRVjVhaWRBYjN5OThVMWpQSlIvckVOenpqb1pt?=
 =?utf-8?B?ZEdrYTkwVW1pVFZFTkJveFRnaFRNSEI0QURONlJLNHZGcnR4SSsweGFOTGlq?=
 =?utf-8?B?Z2NuVENUTy9TanhNaWN6K2htN0Z0SndKQThjM0ZNM3JJRTlSbStzODI3MDdO?=
 =?utf-8?B?RDFlRmJzb01MVjg5UldQRnZtbzdhVzNTNGdabzF6SFJKdzRKTnBLZUd2MGhs?=
 =?utf-8?B?ajZvc0Mxc25Rdy92Uml2S2VlRUIvTUJ6VmYzcEFwUi9OUjFVRzZ2WUlLZm5W?=
 =?utf-8?B?bmxWdkROZjlaU2pMRzZDN2VzZTBWeThhTVE2Tkh0dGI2RDhQM2hGVldOWnc0?=
 =?utf-8?B?UWRESXd3M1YzN2hoTzF3dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3lLcVlremVyalUvYkd3SWFhUktncHFmYTgzQ2ViWklDT0lnVWMxY1hnVlY3?=
 =?utf-8?B?NTRVaGNublFwM0d6WkdaV2wvUnhLSGVHUnFQTWpqaWNiKy95cTdsRWZ4RnBm?=
 =?utf-8?B?Z3h3eGtBcnFxVU9ocWtsN1pzRUkxRFZQOVV4SnlOTUtKekJZQlNjcllnTVdY?=
 =?utf-8?B?eEtJbWgzd29jTVVZaFR5Z1crZkZuQ1F6aUg2ekQ3UURPdzdEQ0VsQjdWWHVj?=
 =?utf-8?B?SlhUbVZiSSs0SFQvaWNvV1dkUCs0bS9SMVdxV3hGWVRQNlV6Q2l4WG1LRXRl?=
 =?utf-8?B?T2ZXV2lkbUhxNnJuRzRpZTRjNXdSeU1FbklNNXkvUGVwdTQ0NDFoTjl3QkVQ?=
 =?utf-8?B?OCtSQ0xuTE1QaTZnaVhxRlNhbElsVXhaZ3FURlZ3OXoyRGoxdjd0a0VqNXk3?=
 =?utf-8?B?WlZ3Rzc3NWpYMFE2WFQyaEZ5OWZBaFgwdTRPaVp0NktHYzFjalk3NGZaV1VX?=
 =?utf-8?B?YWN4ODVFeE0yM0Urcit2MmllL1VLbFNFSkJ2NTNBcmpLWkQ4S3U2TDRFNFcx?=
 =?utf-8?B?Z2Nlc3lHMEd6VHB5V2lxeUZycyt2WTFLNGhwSUVyT2psZzFDOWZnd3pYNVlp?=
 =?utf-8?B?UlZFWnN6VEF1OTFiUWVOM3FnUkNUMEorOXFtUS9Oa3BJUllKRUFXQVl1OWtC?=
 =?utf-8?B?a1kvdm15Z21jaXlUbm1jWTUyczVINmRCcGJrMFNYWXd1aGpET1VNRHd1QkZQ?=
 =?utf-8?B?MjY3UUJjeEREbTVVSmVMR3piVEUrd05hajA1V3Vsb2c5VTdnY2c5RFZFMFFW?=
 =?utf-8?B?UUszNHQyK3QrcWVHeTlqYmpiMm1XdDFvZ1FkQ0Y2dXRvbUt5bFB1NUNOL3hG?=
 =?utf-8?B?WmljZzZLMFBadHRNenl2T1Bidk9JOEhSQ2ZHUUFDU3ZoRDk4WDBNeDVkejR5?=
 =?utf-8?B?blM2TmZVa0hHK2UyaGZSSHdtbzIvZWE5bkNQMkFBZkw5TDRGU0lRaGRFRHE5?=
 =?utf-8?B?cDdtTG5ueHZzeFVTRzAyWTNid1hkMmkyTTQ3blZmUk0rMzExTFgzNlNhMW10?=
 =?utf-8?B?NnZXNTlTSllpWG5WTlp2ckpHQ2F2YlpIbzBYTU9vWklXRWtHcFo4dkhxTlFY?=
 =?utf-8?B?NEM1KzB6Snh6Vkx5cjc5V0xYa0xWbFUwNGk0eVJVK0ZhSUl2cU4wb1NTUlFt?=
 =?utf-8?B?TkxMNXFrUHJZNk42bDU0RitYbGpiT1V6T1dKQmJVMTJBTC9JZmREdkFRMjFm?=
 =?utf-8?B?RUl3STgzT2ZKTDdCTkxWVE1zTDkzNllmN3QrN2lTVk1yUVViUEFlTm5GSUdn?=
 =?utf-8?B?aVNwaEx5eFlpdTN6RlhpamdIUXdzd25Sd2d0RUoyVm5DeENOWWxuck83ZzM2?=
 =?utf-8?B?WU4yY3c1NjcvUEVsRVVDUlg5UTJJcmlvOXVvRjVINm96YkVNbmQ2emFFRG5Q?=
 =?utf-8?B?cDJnMFlGZ0Y2S3VBZExZR25QLzBBWnFnTG5SNndDZHFFYXFkcHlJUHJFaFFP?=
 =?utf-8?B?Zit1aG02dGhEM2hiQXZSbm1IVXFud2VpR0RJVXhIS3Y5a2JMT09xd1o2MGww?=
 =?utf-8?B?UUlJZFowMmdYOFgrREphSjZnMUEwMUxLQ0FNOGVFblBuUUswVm5PTHJjYkVR?=
 =?utf-8?B?ZDhPdHcyTjUxVnYrYmVQT2FPYVNxeU9UN0U5OG9DZWJPWVMyY3dEeXFmSHA1?=
 =?utf-8?B?d1ZYSk1YRVBQY1BxV3FuZStpOGxhbFp3c2JhcnMrd2dmUk1qL2J2LzJxb1dx?=
 =?utf-8?B?WGNsSGRtajFMdlE2MG1zK1FSRFlubHoyUnhQQ1NLRkh4VE93V09PWE4rL2NR?=
 =?utf-8?B?Rnc4S2Qwc2EySzZWdGl3cmFaS3hLMnU4YzVaUXVlZ08xdmpZTk1EaUNDZjk5?=
 =?utf-8?B?M2thM3A1Rm5FSlo2NGRkZGdOUmIvSS9yMDFPSXRWYmJNZXE3R1o0Nm9CKy9H?=
 =?utf-8?B?UzBkYWFVTmMxOTdONmwvRDc0NWZJdlF1eExOQzE3cTl5RkVWN2kyUHp2NkxX?=
 =?utf-8?B?Ym5FSCtBeHp1WVFtZXYwTVpFVE54cGRvTnByTmorRHcwbDV6QVNYdnVZSEtB?=
 =?utf-8?B?OHkrdTZBdnNvTkhTWEpZZDk2MjNxQmVrVElKS1BML2FmQVVmVDN3TzR2MGQy?=
 =?utf-8?B?Rmx1RVAzbE5TS2pDTTFqck1iZUtIN0tURjh1VWZ2OHZ2WDdYOFR2dUxsekJQ?=
 =?utf-8?B?d0JaUFJvUjZDZ3VraExJRVEvaG5acGY0eVlnUnNnVjVhUER0d1lxbVh5L093?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4942ba6f-a747-44fa-3c39-08dd5fd6eb58
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2025 13:24:43.5263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3iCgznCAdxeCO5Uw7UNHRx6ac4H5WkNibLEdCO4aibWHpposmLdRD6oBIBpLZfciuJ9yebwbIt+V8AmoN/cvWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6368
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

Quoting Patchwork (2025-03-04 19:26:50-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/xe3lpd: Map POWER_DOMAIN_AUDIO_PLAYBACK to DC_off (rev2)
>URL   : https://patchwork.freedesktop.org/series/145593/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_16215_full -> Patchwork_145593v2_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_145593v2_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_145593v2_full, please notify your bug team (I915=
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
145593v2_full:
>
>### IGT changes ###
>
>#### Possible regressions ####

None of the issues below are related to the patch, since the power well
mapping being modified applies only to Xe3LPD.

>
>  * igt@kms_cdclk@plane-scaling@pipe-d-dp-4:
>    - shard-dg2:          NOTRUN -> [SKIP][1] +3 other tests skip
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145593v2/shard-=
dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-dp-4.html

Considering that this test had the status "NOTRUN" before, the SKIP here
makes sense, as the default mode in the connected panel might not be a
4k one.

>
>  * igt@kms_flip@plain-flip-ts-check@d-hdmi-a3:
>    - shard-dg2:          NOTRUN -> [FAIL][2]
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145593v2/shard-=
dg2-7/igt@kms_flip@plain-flip-ts-check@d-hdmi-a3.html

This maps to
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734 .

--
Gustavo Sousa
