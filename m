Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68399C64C76
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 16:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E863110E3BD;
	Mon, 17 Nov 2025 15:02:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GGi5fvHP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E4B10E3BD;
 Mon, 17 Nov 2025 15:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763391767; x=1794927767;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=rvLKxv6fj7Y/n44XAYasciqFhl7WCKXy+64t5qEh4cw=;
 b=GGi5fvHPsSm1/usdOPI8VDJZPK+JbWsNWj/kmpmayaRF9FD2p6CPwlrB
 d1oTbuPhK+uoTbKVvDzHxuLfy1+/1dL8+C1icUqUdOJGVCtaQ4Vd+1YV9
 p9HbwgEeTEoKz6FSMYEvyXgn3mA7dMUFDgrS6me9natSOO6olAeeWqRbi
 3XDMatU5cVC+fIKUqMC2z2hn08LRLeR5+nT9D5Izj/Y/KGSVuQgbb+1p2
 xPFjE9hyOiy+v0grn3SuSrCwXvRdFXKeUBOe9ze14miiis5TGsdWKCnMu
 ORaFED1K6VnFeDWt50LctDqvPtkDfwvjxeyACucRI9WOXkD1DpXwCQJqF A==;
X-CSE-ConnectionGUID: 4pLYMjYsS6uWx5WAVqBAEw==
X-CSE-MsgGUID: H3R55fnJShmUiqvZl+MBKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="75993341"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="75993341"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:02:47 -0800
X-CSE-ConnectionGUID: pvy6WvEzTuWRy28a2+HuBQ==
X-CSE-MsgGUID: /G00VymtS4asmKyQ/SlOCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="190492869"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:02:47 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 07:02:46 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 07:02:46 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.56)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 07:02:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HECiff/RPU8LBiJSrF6K6GoEWVZm1isC8ayx4Vg4jDxPwKkQFiDsj32pCpG0GaWoNr4x10/2v1QLvJZzf9pjDi0tkh27fkhTxthZVkZ0GEMWOP9Hm4XHFUmPYOiCr7KobmQRiYGKa5SoWTVxRWndSSlwFfHruGMoFW/BvQZLnI/BDUn0vC9vhyYv7AYzPEtC8+l+loPtUHT3wI5FiwKpB8r4+oXO6dNaD6omK+YVl4m7LLHRD/wanDH0ikX7WlpusAImABEQ0hp5eaaYB8I5hOvV/oaPqQiRWfWL4WVcl55LS4C6Pk0DAoA+tFe6vJnUMr0Lf3NwomF1nVkIWYTSzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e9snPJOYXfWY5HuailQg3GJyOxbpskkOevp0Sqz0oHs=;
 b=cWWckclmDyUKNwAFcDeb7G/ET3+Ri1M1hYdebMmGkJ2pLCEpiT2yl1lJyzHL/TF09mxYErWyPlSzYiSATD44xoJGRLVcfcvgkZblKLfhKu6UKkqgJMK4SCOA+h827MUugUmDBC6uvC7yiyrXuVQ0ndL3tFtYLx06DjWGUMA8ZAOovKZnFo2HpwhNNfny5D0hfUT/WwZWCsWAYAiOK56WT6C/q37fLzbXVYth6/+TJ7+sIaIHDdwsIbh3PpDFITzucB80ht6EkqOr5QKnHZxpYe4c2eO24dA3A5yqj0c9UIuuakJDUZNYzne8L+jEjxYnzo8UimNWM9iD7F/LAJYAzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA3PR11MB9302.namprd11.prod.outlook.com (2603:10b6:208:579::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 15:02:42 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9320.019; Mon, 17 Nov 2025
 15:02:42 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRfV2MuICSW1jR4I@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
 <aRTJq2h7ic7EcpL6@ideak-desk>
 <176314958906.3698.11640605946760436324@intel.com>
 <aRfL-CWPYR6gC6F6@ideak-desk> <aRfV2MuICSW1jR4I@ideak-desk>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for static
 DDI allocation
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Imre Deak <imre.deak@intel.com>, "Juha-pekka
 Heikkila" <juha-pekka.heikkila@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, "Matt
 Atwood" <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Mon, 17 Nov 2025 12:02:37 -0300
Message-ID: <176339175784.5989.15280881790145867529@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0090.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::35) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA3PR11MB9302:EE_
X-MS-Office365-Filtering-Correlation-Id: 6996266e-0b3a-4fde-444e-08de25ea5b53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MlEySmhoeXE4emYwbXpndmFsNm1JL09haFpYTzhvVUhKTHBFUzlkdmVjQ2Rs?=
 =?utf-8?B?ZHNJTkx1SGljV0puQUNmR2REL3NhZG4wNDdwMGtuZi9Cd1ptRW1VN2ltSSta?=
 =?utf-8?B?clc5MXFGcVo2d2N0QzlxdzdqYUM3dWIyeFRJV0Q4d3JWSmVuWWtCV1c1T0wx?=
 =?utf-8?B?SUdhT3pwY09YMFAvNUVON3RIS3o1cU5PTFBkTXd0MUVMWHY4YVEreXc5dEZT?=
 =?utf-8?B?QlpDaVdHR2lGMFZRWWN1aUk0c3UvVWpESElVRHVadTFseXRWaENxVHZtNGRB?=
 =?utf-8?B?Mkl6LytCUDg1dlZORVZYcFVOcmdwdjVTblV4Tjg1ckEwWU8yam0xaGFhN05n?=
 =?utf-8?B?VU5PelRWZ2hmamJndVovQzhueVJJblN2VWs3bm1uSm9FVEZraisvYTZvTE4v?=
 =?utf-8?B?OGhLdzg5aTgzMVlhUW91anZjNVoxVlYvYUllV1VWQ2hWTkVIZTN5Nm1PZXcz?=
 =?utf-8?B?d2tFaXhrZ3FNSDRMSU1PeDVWQTBCekl4bEhkYk5WUUMxb1Z5SXRBSkthZDVU?=
 =?utf-8?B?cDFrK25rdFE0ZXdlS3AxcnlsVXl6RC9ON3VhMWVUWFJrY0laNnlOVGFUUUdl?=
 =?utf-8?B?eGNzeWVjZXRhZnhjc0prdVlhRmRGaDRnNHJQMFVGSC8yQ2Z0Ky9LZzliRTd1?=
 =?utf-8?B?bStiVUY3RzlWcFlUQkhZZ2R3c0hqKzZ0OXZLdGQ2bHEyUldSdXBSaTNGUGw4?=
 =?utf-8?B?ays4WGdQbjF0TDlBUHU2SjdwZGJnb25lT1lEMUZOdWwxR1UwUWozczFUNUJE?=
 =?utf-8?B?dERvTU5GZ0ZoZitJcnFmOWtwMlRtZGhBWFU3dkhRVnY5NHlLcWxYd3BIRGEr?=
 =?utf-8?B?RUcwZE1UWlZvUXZ5amNSZWtldDdPR0NET0dxeDZrTkxFcDRHQ3RzbnZkRTJw?=
 =?utf-8?B?b3I4bHVJaW9Ma3NSL2l1WFJ2VVo0UjBUR28rUmRjOTBjM1NKTGV5N1RFTENJ?=
 =?utf-8?B?dmF2NzMzTENMWnMyTHJRVi9oaU0rbGxFZmRQNnRLYjVJOWR1Y3RKSG16blVn?=
 =?utf-8?B?WHpBaFhueXVoNzJxMmYrMHprRUdhd0dUVTh4Z3VqdllIa0ZEbDJxZXhtY05G?=
 =?utf-8?B?YVlJSm04c3ZuWlNGcnpKUWpsSnJwdUJzY1FBUlMxUnp4OGsvc3EvY3RCZkRz?=
 =?utf-8?B?ckF0YUU2WDgzQ1RvN0ErMHUyaG9FelJUc1JBbTVDOUFPbEFyenFiQjBUL3Mv?=
 =?utf-8?B?eVd6bXBBanloTXRiQ3JibVh0Zk9vcFc2RzlDQ0dvMkt5UGE1djJQN1J5a1RN?=
 =?utf-8?B?YThoRVlGQVQxVjBEaC9NQWViOG1MYndrV0JSZmdKTW1GVTRVL3VSd1ZwclBs?=
 =?utf-8?B?M1RQOEtXcUxQT2ZUcTB1OU1uVnhuUVVXamdZcWFyTkR0MGQxNWRyejc5dTlN?=
 =?utf-8?B?K2Y5V20ybzlkZllFdGtYUElqOXhINXhUc1pUMHdtanVSTGhEbnRweDdnbjk3?=
 =?utf-8?B?RVFlMTdSbWhuMEw1M2xPOFUvaS9BM0RwakRmc0NXTnNWakNyQXBqTFBCT2Rx?=
 =?utf-8?B?TVpoaE9iUWRJVktlK0o1V0w5RDlNelZzUmlpa2JKVkMzaFlhRzMrM0p5d256?=
 =?utf-8?B?RG9YQm5EZEtVQi9EOFV2dUVIVXhXMUN3czVncENnMjNOanNqS3UwMDdWN1pR?=
 =?utf-8?B?M2FQT1Z5NEJxT2ZyT3pJQTJIUVR1VjNKaXA1ek8zUXphUDFYYXY2ZURHMk1R?=
 =?utf-8?B?TTZxYnJoVzRrSDM3UHl6WVN5TDRleXR0SjBXUktDbFJjRnJlUUt1QWxlQ01m?=
 =?utf-8?B?Q2toU1hBMzREQURZaWRvZlVQUmFsdHJ2SGx0blJablhwRE5DQVgvcEY0UE1T?=
 =?utf-8?B?UzVobzQrVkRUSjRVcXJGMXZiUURhWUsyRFlvUExram5WTEcwWFNUQ2Jhdmhp?=
 =?utf-8?B?R0RQYTIzOHNMUFh6bTVqYlF3ditOdFZZbzdvZWVKcXRFL3oyRVZjUzdCVnFp?=
 =?utf-8?B?QlVOcWltdmRacEE4ZVFTaVdOU0ZpZGVnZEVWWjZFeFlGbWIrWnlhSHBvbGlB?=
 =?utf-8?B?SmlCWnlrRm1ha1U3cHBtdmVaR3pNUTl3b2ZQUlJZV29YQW1lb0YySTVaM25P?=
 =?utf-8?Q?/q06UK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STY0bit5ekpNay9ZT2lIbC8yb2lBSmZWUWIyUGIyNFY1ajBqQ1dBQVlkRkdX?=
 =?utf-8?B?RmttKzlpUlo0dnVheEJZcFVRNWtTS0pPMW11YUk5OEZmQ3JxVlVlZjNHcHpp?=
 =?utf-8?B?YUVtRXZPRmxkT2UyUFJxaEtORVo5ZDJpSEUvQTVLcUN4Y0cwL0lEZmNmYjZG?=
 =?utf-8?B?OGRKUXRzUE1yMDhjVEpiMitVRm14NUdZeTg1ZkcvS1BTZEJGdno1V092bGVB?=
 =?utf-8?B?NHpJbUpnZTRKZzlmNmdibWltTy9RemdBRWlmRktKS0FDVmxmVlhQa1VzYWxv?=
 =?utf-8?B?VktnY0wyN3orNTNidlQzWXhTVUJnV1FtRE82WURTZk43RXRENjAvOGdWa3pZ?=
 =?utf-8?B?VGtQcndxb21HandWTDJnQkp2RldMUXFFbnAvVVBOaXJadEFIWUFFbUpLUGE4?=
 =?utf-8?B?VHlScll0QXlFejdEL2RWNlZZZjIrTDFOSCsyQ2cxNUpMVlBHUlV2T3lWeWNp?=
 =?utf-8?B?MnFrN3lKLzZ2aTBoWUoyU1JQQUhFcXZ2MkR6S3RiTzVtdUI2bEt0NW9QNmlZ?=
 =?utf-8?B?aFBlTERZbnJOeHFaOTdvQVBVUHZFd2VuMGpqV0t5VG80djh5SmtxM0M4Tjkv?=
 =?utf-8?B?dFJJKy82eXlZZXpJMGRRSkI1TnlQMXVnRnViUHNXQjZUVDc2TzA2YlpvUS8y?=
 =?utf-8?B?b2RicVpHanVZZUw5SXNneE90cyticnpKL2crWkpPOXBJRXNNSnVxU0JOSWRk?=
 =?utf-8?B?TFNUdERnRDZtUk9oU203LzZVc1d6czJyMCs2V1lLcG5nMndrNldpazdqZ2hM?=
 =?utf-8?B?cDN5ZzNGd3hWdEQwTVBwR1RYWi9UaWZzV1BrR2I0b1lTb0N3eXR3T3FHZ3NL?=
 =?utf-8?B?TWtnczROcHNoU3hJSjRUbEFFQnpobDVjdm8zdnpIc0Fsa3o0Mkp6eDdIQTlp?=
 =?utf-8?B?eUtpRmVlZno0eDZ2OUdwcmo2V1VUajVZUURhdGwwejFzWXZDdUY3RUVzN0Nk?=
 =?utf-8?B?SisxcXJlMEl4UDczTjVFY3REaGFUViswY1dlZFVkNWVDK2ZjR3c2YXJiTFVt?=
 =?utf-8?B?Y1JhVmJXamxaMkFNUnZvdzdlcjVuZjRqRzFYTU5tWmQ2VExybHRQQmtUdlZ0?=
 =?utf-8?B?QmFnNEFpUzNScGwvYVhyUWRWMnoyQWk1WmVMbUR3QVdzdTFIUlBoeGhUYkJV?=
 =?utf-8?B?dTJ3TE0rY09CK1JXYjQ1U1pZdHFqUlZsUUZWNE40TXJNaktWcnBCenpaaXdk?=
 =?utf-8?B?NXF3OWhSWGY4MzR1aUlNOENuVlZjSnJMcUpXUk9DRDIrQXFJMXF3MmVOTTVz?=
 =?utf-8?B?RkQrMytWbE9yb2tWem1yQnpINVF5Ump6RFprYU9NUXl3WjlldHFXMUswUHZM?=
 =?utf-8?B?bmhlU1VzUGpKcXpDcGpZOURNRi9zUFV0dzY2dTRaZFByYU4wRXltbHRkVmpU?=
 =?utf-8?B?dExLejRiWlczZmVsV01QRFJxMmxlc2U0bGJUMW9IMjRHWWZ4K1lKOUpMNzJX?=
 =?utf-8?B?Z0VpcDVSS3hiQjk0Wkp3R1V3UHJGdzVTNDEra2hVcFhHOTMvRXhjYU1QdHNq?=
 =?utf-8?B?OHovb3J1bStZQzJaLzlPTXQ1NXFqOHh2VXFlRm40V3Ivd01YTy9HVlZxSUNB?=
 =?utf-8?B?d1BXVGFiMlB3UXRPTXVJMzV0NGYvQjhDc0NUUEFYUmsvL3VYUWdRT1BTbnNZ?=
 =?utf-8?B?OERMQmJGbnNsSFBXL3JNUWt2cFZuS3I4dUFJU3FkYjhQeEdheDZDR0l6QkVq?=
 =?utf-8?B?NVhTblMwbWJRSnkxTGVPbDliVmdFSkNtT0xwRWZBN1o4aXE3R3FpZllzQ3VY?=
 =?utf-8?B?d21NdkdhNit2dGRzSms4ZTVaL3d2Tkw3VjEvWTlKMkM1N2dad2xVbk5oUE1z?=
 =?utf-8?B?cjdvMExlRWpndmlBQ2dLNnJPU3JZa1Fydk5xemRXd09ZcE5UYkRIaUJrT3B4?=
 =?utf-8?B?M201OWVvbk5kaTlmanYvWjBlSzcyTTQyNld2QlZSUkZESzc5a1ZVb1dQR3d0?=
 =?utf-8?B?M3h5ZmpybXZ0TVhZL090WFZ3MGU5VlQ2SkJvMEhKRTU1VUhqK0IvMXRxVC9u?=
 =?utf-8?B?WjlDbTVTR0RWWnR6dFRMbVl2KzlTQW5zcVZTM0VUZ2s3eXlWRVEwNG1mUU93?=
 =?utf-8?B?Kzl5cTVNUTRWMEs0UDNScVpsdGRsM2ZSY0xKQ0JqL2Q0bXhaOHZROURua2Rx?=
 =?utf-8?B?cENNZDltTmdFWDlkeWFSbC9GekduYStDM0JSdEZod1N1SkxoRmpDemxKRTRi?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6996266e-0b3a-4fde-444e-08de25ea5b53
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 15:02:42.0504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 08uu7lqJ9aq79Gr9GZZPXbW1p7ioubVd05mqWUf7LY1Dt3qmnjrB51FLMLl3HMZCdbk/9fbByu/uFG6ed3rFCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9302
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

Quoting Imre Deak (2025-11-14 22:22:32-03:00)
>On Sat, Nov 15, 2025 at 02:40:24AM +0200, Imre Deak wrote:
>> On Fri, Nov 14, 2025 at 04:46:29PM -0300, Gustavo Sousa wrote:
>> > Quoting Imre Deak (2025-11-12 14:53:47-03:00)
>> > >On Fri, Nov 07, 2025 at 09:05:40PM -0300, Gustavo Sousa wrote:
>> > >> Xe3p_LPD has a new feature that allows the driver to allocate at ru=
ntime
>> > >> the DDI (TC ones) port to drive a legacy connection on the Type-C
>> > >> subsystem.  This allows better resource utilization, because now th=
ere
>> > >> is no need to statically reserve ports for legacy connectors on the
>> > >> Type-C subsystem.
>> > >>=20
>> > >> That said, our driver is not yet ready for the dynamic allocation.
>> > >> Thus, as an incremental step, let's add the logic containing the
>> > >> required programming sequence for the allocation, but, instead of
>> > >> selecting the first available port, we try so use the 1:1 mapping
>> > >> expected by the driver today.
>> > >>=20
>> > >> Bspec: 68954
>> > >> Co-developed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com=
>
>> > >> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>> > >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > >> ---
>> > >>=20
>> > >> NOTE: This patch is still a WIP. There are some opens to resolve he=
re.
>> > >> Nevertheless, I'm sending it here for early feedback.
>> > >>=20
>> > >> For the HIP-index stuff, I have a local refactor started and need t=
o
>> > >> finish it up and send it.
>> > >>=20
>> > >> The other open is about concurrent calls to iom_dp_resource_lock().=
  It
>> > >> is likely that we need to have a software lock to prevent concurren=
t
>> > >> access to IOM_DP_HW_RESOURCE_SEMAPHORE from our driver.
>> > >> ---
>> > >>  drivers/gpu/drm/i915/display/intel_display_regs.h |  20 ++-
>> > >>  drivers/gpu/drm/i915/display/intel_tc.c           | 151 ++++++++++=
+++++++++++-
>> > >>  2 files changed, 169 insertions(+), 2 deletions(-)
>> > >>=20
>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/dr=
ivers/gpu/drm/i915/display/intel_display_regs.h
>> > >> index 89ea0156ee06..0cf7d43ce210 100644
>> > >> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> > >> @@ -2908,6 +2908,25 @@ enum skl_power_gate {
>> > >>  #define   DP_PIN_ASSIGNMENT(idx, x)                ((x) << ((idx) =
* 4))
>> > >>  /* See enum intel_tc_pin_assignment for the pin assignment field v=
alues. */
>> > >> =20
>> > >> +/*
>> > >> + * FIXME: There is also a definition for this register in intel_dk=
l_phy_regs.h.
>> > >> + * We need to consolidate the definitions.
>> > >> + */
>> > >> +#define HIP_INDEX_REG0                                _MMIO(0x1010=
a0)
>> > >> +#define   HIP_168_INDEX_MASK                        REG_GENMASK(3,=
 0)
>> > >> +#define   HIP_168_IOM_RES_MGMT                        REG_FIELD_PR=
EP(HIP_168_INDEX_MASK, 0x1)
>> > >> +
>> > >> +#define IOM_DP_HW_RESOURCE_SEMAPHORE                _MMIO(0x168038=
)
>> > >> +#define   IOM_DP_HW_SEMLOCK                        REG_BIT(31)
>> > >> +#define   IOM_REQUESTOR_ID_MASK                        REG_GENMASK=
(3, 0)
>> > >> +#define   IOM_REQUESTOR_ID_DISPLAY_ENGINE        REG_FIELD_PREP(IO=
M_REQUESTOR_ID_MASK, 0x4)
>> > >> +
>> > >> +#define IOM_DP_RESOURCE_MNG                        _MMIO(0x16802c)
>> > >> +#define   IOM_DDI_CONSUMER_SHIFT(tc_port)        ((tc_port) * 4)
>> > >> +#define   IOM_DDI_CONSUMER_MASK(tc_port)        (0xf << IOM_DDI_CO=
NSUMER_SHIFT(tc_port))
>> > >> +#define   IOM_DDI_CONSUMER(tc_port, x)                ((x) << IOM_=
DDI_CONSUMER_SHIFT(tc_port))
>> > >> +#define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        IOM_DDI_CONSU=
MER(tc_port, 0x8 + (tc_port))
>> > >
>> > >It would be simpler to define the above without the shift, i.e. as 8 =
+
>> > >tc_port.
>> >=20
>> > You mean something like this?
>> >=20
>> > #define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        (0x8 + (tc_port))
>> >=20
>> > ?
>> >=20
>> > Yeah... Looking at the code, we wouldn't need to shift back when
>> > defining expected_consumer.
>>=20
>> Yes.
>>=20
>> >=20
>> > >
>> > >> +
>> > >>  #define _TCSS_DDI_STATUS_1                        0x161500
>> > >>  #define _TCSS_DDI_STATUS_2                        0x161504
>> > >>  #define TCSS_DDI_STATUS(tc)                        _MMIO(_PICK_EVE=
N(tc, \
>> > >> @@ -2946,5 +2965,4 @@ enum skl_power_gate {
>> > >>  #define   MTL_TRDPRE_MASK                REG_GENMASK(7, 0)
>> > >> =20
>> > >> =20
>> > >> -
>> > >>  #endif /* __INTEL_DISPLAY_REGS_H__ */
>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/=
drm/i915/display/intel_tc.c
>> > >> index 7e17ca018748..3c333999bbe4 100644
>> > >> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> > >> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> > >> @@ -9,6 +9,7 @@
>> > >> =20
>> > >>  #include "i915_reg.h"
>> > >>  #include "intel_atomic.h"
>> > >> +#include "intel_bios.h"
>> > >>  #include "intel_cx0_phy_regs.h"
>> > >>  #include "intel_ddi.h"
>> > >>  #include "intel_de.h"
>> > >> @@ -25,6 +26,9 @@
>> > >>  #include "intel_modeset_lock.h"
>> > >>  #include "intel_tc.h"
>> > >> =20
>> > >> +#define IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US        10
>> > >> +#define IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US        10000
>> > >
>> > >The above param names should make it clear how poll_timeout_us() uses
>> > >them (i.e. stg like sleep vs. timeout instead of lock_timeout vs.
>> > >retry_timeout), but probably even clearer to just drop the defines an=
d
>> > >inline the values in the call.
>> >=20
>> > Ack.  I going with the latter.
>> >=20
>> > >
>> > >> +
>> > >>  enum tc_port_mode {
>> > >>          TC_PORT_DISCONNECTED,
>> > >>          TC_PORT_TBT_ALT,
>> > >> @@ -1200,6 +1204,143 @@ static void xelpdp_tc_phy_get_hw_state(stru=
ct intel_tc_port *tc)
>> > >>          __tc_cold_unblock(tc, domain, tc_cold_wref);
>> > >>  }
>> > >> =20
>> > >> +static void iom_res_mgmt_prepare_reg_access(struct intel_display *=
display)
>> > >> +{
>> > >> +        /*
>> > >> +         * IOM resource management registers live in the 2nd 4KB p=
age of IOM
>> > >> +         * address space. So we need to configure HIP_INDEX_REG0 w=
ith the
>> > >> +         * correct index.
>> > >> +         *
>> > >> +         * FIXME: We need to have this and dekel PHY implementatio=
n using a
>> > >> +         * common abstraction to access registers on the HIP-index=
ed ranges, and
>> > >> +         * this function would then be dropped.
>> > >> +         */
>> > >> +        intel_de_rmw(display, HIP_INDEX_REG0,
>> > >> +                     HIP_168_INDEX_MASK, HIP_168_IOM_RES_MGMT);
>> > >
>> > >This matches what intel_dkl_phy.c does, that one also taking the
>> > >required lock around the access. At one point the intel_dkl_phy
>> > >file/interface could be renamed to intel_tc_reg or similar accordingl=
y.
>> >=20
>> > I have already started a local series that introduces the "HIP-index
>> > based registers" abstraction.  I need to go back to finish it up.
>> >=20
>> > The basic idea is that both intel_dkl_phy.c and this IOM stuff would u=
se
>> > functions specific to accessing registers behind the HIP-based ranges.
>>=20
>> Using intel_hip_reg instead of intel_tc_reg is probably better, but I
>> still think the current interface should be just renamed, instead of
>> adding a new interface and making the current
>> intel_dkl_phy_read/write/rmw() use that new interface.
>>=20
>> I went ahead and put the above together now:
>> https://github.com/ideak/linux/commits/hip-reg
>>=20
>> >=20
>> > To give an idea, here is a copy/paste of the kerneldoc I currently hav=
e
>> > in that WIP series:
>> >=20
>> >   | diff --git a/drivers/gpu/drm/i915/display/intel_hip_idx.c b/driver=
s/gpu/drm/i915/display/intel_hip_idx.c
>> >   | new file mode 100644
>> >   | index 000000000000..ff2492b8275d
>> >   | --- /dev/null
>> >   | +++ b/drivers/gpu/drm/i915/display/intel_hip_idx.c
>> >   | @@ -0,0 +1,110 @@
>> >   | +// SPDX-License-Identifier: MIT
>> >   | +/*
>> >   | + * Copyright (C) 2025 Intel Corporation
>> >   | + */
>> >   | +
>> >   | +/**
>> >   | + * DOC: Display HIP-indexed register access
>> >   | + *
>> >   | + * Display MMIO mapping for offsets in [0x168000,0x16ffff] are go=
verned by
>> >   | + * configurations in the HIP_INDEX registers provided by the hard=
ware.
>> >   | + *
>> >   | + * Usually each of the valid 4KB range in that space will be mapp=
ed to some IP
>> >   | + * block, providing access to registers of that IP. The HIP_INDEX=
 registers
>> >   | + * expose an 8-bit index value for each 4KB range. Those indices =
provide a way
>> >   | + * to access data that is beyond the initial 4KB block provided b=
y the target
>> >   | + * IP.
>> >   | + *
>> >   | + * As an example, say that the range [0x16a000,0x16afff] is mappe=
d to some
>> >   | + * sub-IP that contains a 8KB register file. To access the initia=
l 4KB of that
>> >   | + * register file, we would need to set the index respective to
>> >   | + * [0x16a000,0x16afff] in HIP_INDEX to 0; to access data in the s=
econd 4KB
>> >   | + * window, we would need to set the index to 1.
>> >   | + *
>> >   | + * For simple read, write or rmw operations on a single register,=
 the
>> >   | + * functions intel_hip_idx_reg_read(), intel_hip_idx_reg_write() =
and
>> >   | + * intel_hip_idx_reg_rmw() can be used, which will call intel_hip=
_idx_lock()
>> >   | + * and intel_hip_idx_unlock() internally.
>> >   | + *
>> >   | + * For other scenarios, then it is necessary to wrap the register=
 accesses
>> >   | + * with explicit calls to intel_hip_idx_lock() and intel_hip_idx_=
unlock(), and
>> >   | + * use the MMIO functions provided by intel_de.h. For the latter,=
 the function
>> >   | + * intel_hip_idx_reg_to_i915_reg() needs to be used in order to p=
rovide the
>> >   | + * correct reg argument to those functions.
>> >   | + */
>> >   | (...)
>> >=20
>> > >
>> > >> +}
>> > >> +
>> > >> +/*
>> > >> + * FIXME: This function also needs to avoid concurrent accesses fr=
om the driver
>> > >> + * itself, possibly via a software lock.
>> > >> + */
>> > >> +static int iom_dp_resource_lock(struct intel_tc_port *tc)
>> > >> +{
>> > >> +        struct intel_display *display =3D to_intel_display(tc->dig=
_port);
>> > >> +        u32 val =3D IOM_DP_HW_SEMLOCK | IOM_REQUESTOR_ID_DISPLAY_E=
NGINE;
>> > >> +        int ret;
>> > >> +
>> > >> +        iom_res_mgmt_prepare_reg_access(display);
>> > >> +        ret =3D poll_timeout_us(intel_de_write(display, IOM_DP_HW_=
RESOURCE_SEMAPHORE, val),
>> > >> +                              (intel_de_read(display, IOM_DP_HW_RE=
SOURCE_SEMAPHORE) & val) =3D=3D val,
>> > >
>> > >This happens to work, but it's more future proof/bspec conformant to
>> > >properly mask the requestor ID field when reading it back.
>> >=20
>> > Agreed.
>> >=20
>> > >
>> > >> +                              IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US=
,
>> > >> +                              IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_U=
S, false);
>> > >> +
>> > >> +        if (ret)
>> > >> +                drm_err(display->drm, "Port %s: timeout trying to =
lock IOM semaphore\n",
>> > >> +                        tc->port_name);
>> > >> +
>> > >> +        return ret;
>> > >> +}
>> > >> +
>> > >> +static void iom_dp_resource_unlock(struct intel_tc_port *tc)
>> > >> +{
>> > >> +        struct intel_display *display =3D to_intel_display(tc->dig=
_port);
>> > >> +
>> > >> +        iom_res_mgmt_prepare_reg_access(display);
>> > >> +        intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, IOM_=
REQUESTOR_ID_DISPLAY_ENGINE);
>> > >> +}
>> > >> +
>> > >> +static bool xe3p_tc_iom_allocate_ddi(struct intel_tc_port *tc, boo=
l allocate)
>> > >> +{
>> > >> +        struct intel_display *display =3D to_intel_display(tc->dig=
_port);
>> > >> +        struct intel_digital_port *dig_port =3D tc->dig_port;
>> > >> +        enum tc_port tc_port =3D intel_encoder_to_tc(&dig_port->ba=
se);
>> > >> +        u32 val;
>> > >> +        u32 consumer;
>> > >> +        u32 expected_consumer;
>> > >> +        bool ret;
>> > >> +
>> > >> +        if (DISPLAY_VER(display) < 35)
>> > >> +                return true;
>> > >> +
>> > >> +        if (tc->mode !=3D TC_PORT_LEGACY)
>> > >> +                return true;
>> > >> +
>> > >> +        if (!intel_bios_encoder_supports_dyn_port_over_tc(dig_port=
->base.devdata))
>> > >
>> > >dedicated_external is stored separately in dig_port, why the "related=
"
>> > >dyn_port_over_tc flag isn't?
>> >=20
>> > The only reason dedicated_external is stored is because VBT data is
>> > already freed by the time intel_encoder_is_tc() is called in the drive=
r
>> > unbind path.  In the future we should fix the VBT lifetime issue in
>> > order to be able to drop the dedicated_external member of dig_port.
>> >=20
>> > >
>> > >> +                return true;
>> > >> +
>> > >> +        if (iom_dp_resource_lock(tc))
>> > >> +                return false;
>> > >> +
>> > >> +        val =3D intel_de_read(display, IOM_DP_RESOURCE_MNG);
>> > >> +
>> > >> +        consumer =3D val & IOM_DDI_CONSUMER_MASK(tc_port);
>> > >> +        consumer >>=3D IOM_DDI_CONSUMER_SHIFT(tc_port);
>> > >> +
>> > >> +        /*
>> > >> +         * Bspec instructs to select first available DDI, but our =
driver is not
>> > >> +         * ready for such dynamic allocation yet. For now, we forc=
e a "static"
>> > >> +         * allocation: map the physical port (where HPD happens) t=
o the
>> > >> +         * encoder's DDI (logical TC port, represented by tc_port)=
.
>> > >> +         */
>> > >> +        expected_consumer =3D IOM_DDI_CONSUMER_STATIC_TC(tc_port);
>> > >> +        expected_consumer >>=3D IOM_DDI_CONSUMER_SHIFT(tc_port);
>>=20
>> One more thing occured to me: why can't this allocate any free DDI? IOW
>> does the address of DDI_BUF_CTL (aka DDI_CTL_DE) used for tc_port depend
>> on which DDI gets allocated (or is there any other dependency on which
>> DDI got allocated)? AFAICS there is no such dependency and the above
>> address would be DDI_BUF_CTL(encoder->port) regardless of the allocated
>> DDI. In that case any free DDI could be allocated here.
>
>Ok, checking this again, DDI_BUF_CTL etc. DDI register addresses will
>depend on the allocated DDI. So nvm the above, the mapping needs to
>stay 1:1 for now until all the DDI reg accesses are converted to index
>the registers with the allocated DDI index.

As far as I understand this, especially after talking with Windows
folks, the allocated DDI will define the port index for the whole
programming, including the registers used to program the PHY - and the
hardware would take care of routing to the correct PHY.

Thus, it appears we would need to do the allocation at hotplug time,
like saying "this PHY will be driven by DDI x".

One of the reasons I think we can't allocate a free DDI at the moment is
that the driver is expecting a 1:1 static mapping for HPD interations.
We will neeed to make the driver aware of the mapping in order to use
the correct encoder when handling HPD events.

--
Gustavo Sousa
