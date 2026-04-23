Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IpeHLLo6Wm2nAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 11:38:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 904E744FD32
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 11:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC0710E31A;
	Thu, 23 Apr 2026 09:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C5LbwASO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E13A610E31A;
 Thu, 23 Apr 2026 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776937134; x=1808473134;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d77rllIbXEV/FNJEEfZyInGLFzfT1hQ1o6Rg8s4Sbuk=;
 b=C5LbwASOMaL/adFt+B/ZA5dU9h4scTY2L30GONR/sgt3x9qpnSU5//QU
 A/vn9AGO20KxREKLWl1EXfIXBrbbNNJ2VvQ5wwlKODqOj+j6bVqmBm56P
 sr1nOuOYmKID2LFrMmjJIW1XzJsDxb1IFgau6cev0UDNQm0Ifh/bnY8oV
 fi7HcaBtMsj0HoScsbHf+CoGK0R0b0FdsEYPOvJoGtUjE6gUW52Vntb/k
 GNS4j/YvErAfdgNeR970tabRwPpWOTRRf3htRueEpTEMms3wb7gp89bHa
 PxPVf/C6VV6dFI1+bsvTy55an70Iq89F4JHmzlQ9XOmyZcfKa88ZLNPmB w==;
X-CSE-ConnectionGUID: Ozt6/5uHSAquENVhVPB3HA==
X-CSE-MsgGUID: 6LXsbsQoTYy0SpQeWQhCrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="89290274"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="89290274"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 02:38:53 -0700
X-CSE-ConnectionGUID: fmbtMN24TKyb3SOzhGhRNw==
X-CSE-MsgGUID: Sf7bhswSThq7JJ5LDpZKEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="236600366"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 02:38:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 02:38:52 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 02:38:52 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 02:38:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GJ8yUpIDS6KVCrQxVIHEWNcAuKGOtyuFA96CokQ/AInN28GzNRLnhLcBqCKsfflwmGDjZdE1jh9xtHi2W7WLtRp6xto2CU0tnyHvFfzJyRDEe393QdvCrKRiz1cGsrt7LlR5KgKNmJcw92bgG5zsFYIOu2CWscUIq870L5cbECvhZn2Jh8jAEGQIiSbRCXkeYDX9G02x1QufzWAtiePCumQswybAhrxfO+0FDNsCLI+I0raXXaWESzJnHLPGgia0etx9+ipOei4LXK7h0KEJB1/ebIfAJWQdZTWTrUyOS2qkYPsb9h+Jj7N0rFHV0G0Hr3ZMorY0w/an5fucoJLg1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RdMIpdzhLMbRCyS/7Q3IrQcjD+ZAsjzykhswV3sIXWE=;
 b=PpD9tAB8KgXHOvHlQynh9inmvsxkd5eWmzz4I/ss0NiUe34aqz+xPW2/GT7HWzGh5bVV0FENGXAtiBgzqb+wKxvhr22XD1riI3KDbtk2IxUHLbgfd77kRNAUs3ojBkBgRkjFDRgnJckqPDhoxHZ3LGOMNyuAnVj/WNpz2LzFoHhoh6S5E/IVl3pCfdO/poglpUnJ3ZbqxPzIaehSsyKnITdfh7JaT2+D4dhnM5BXOn6EDZbgO603mdjhHO3YrO8vETkCc109CUZj0VQS7sVPDHUfbP7taeQmNBivtjDgN0oXEFAb/B04Hh5tEtj3E75sgxxbt2Q/het9MqkeFo+8Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB7725.namprd11.prod.outlook.com (2603:10b6:208:3fd::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Thu, 23 Apr
 2026 09:38:43 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 09:38:43 +0000
Message-ID: <0543a055-c910-407a-b26c-3ecb9908f52c@intel.com>
Date: Thu, 23 Apr 2026 15:08:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] drm/colorop: Add DRM_COLOROP_FIXED_MATRIX
To: Melissa Wen <mwen@igalia.com>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <harry.wentland@amd.com>, <louis.chauvet@bootlin.com>,
 <contact@emersion.fr>, <alex.hung@amd.com>, <daniels@collabora.com>,
 <uma.shankar@intel.com>, <maarten.lankhorst@intel.com>,
 <pekka.paalanen@collabora.com>, <pranay.samala@intel.com>,
 <swati2.sharma@intel.com>
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
 <20260408051514.608781-2-chaitanya.kumar.borah@intel.com>
 <c15ff4ca-79c3-4e65-bcc3-24e74adc2636@igalia.com>
 <e4eced80-8b22-473d-8add-7e4a517937f8@intel.com>
 <1483a913-dede-4daf-ac82-0329656a3d17@igalia.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <1483a913-dede-4daf-ac82-0329656a3d17@igalia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0133.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d5::18) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA1PR11MB7725:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bcbf2d1-4079-4089-f7e2-08dea11c1b76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: vI1+lPx5RelACWW3QZfu+H+73GoGAt+d5oDOntZDkEJ58BTCnLBNvH4D8xeV19fN4uwOVbYsVSRfozfmCRL1frKFsEiGBKeYzgGg3tSh5l8iEtSSVTX7CKatRw0KxkdldNuZiHukR/DDdbuSRdVNSwaQ8zU03CLI85k+09di7WE7i5nNQCUppJNwXovkgl/pLDa9pfqWuXxWniRNWPZMe6vysoKx3BLLPyFPsMqBDXCd5tgi6S+kyH+mJ3RURYTMkQExraSw6Tt5SdOeumUbeIe26QVX6L6Gp422eeghgSMaL8FRIVIOnOEG6YzzBRQ+SX4AYdalcm/Dz06wozk7HiFmN7L7sljtQgqn+Li/rHvpWn0Nnd6DH1YlMel3pJTJBLnOV6BEEWvuRRbIizaBYjGqYzIe+/byJ4cY8RG5gPYOAWvyqVMTuGLD1aU8ASghqIolmNwAbpr3YnKL2f1NkEOaGNyXmiHqUOEVO2yz5DgmwZJX0L/7fFjU/ojWUPR3koehYq2sjxmLvt4LHuy5Xi57GsRMOOUdRvmun275d1Gu4gOkK5b6GTfksr8M/dXBSVpDPkkYISuAhzxDjYV4qKT+bAvuDe29jltRULX38gau9Kf0RpNIyBahvNWFjyyfOSRkjTDRLQrEGnMFg3361TWGGoB03S1scYojvB21HM9DCmzxJ/SUg9dJmVqcHmL+p4e+m5Yd8rUWKBxDZmKIAPqb6wHsZiP+cx2KiyW+MRFbsd2P39fZpaEof26hRdqX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clB6RnZScnkwRmZHam1CUlFCR2pBZkF1YjZGTFZJUjhaV2k3OFU1UlpuMlFy?=
 =?utf-8?B?Q1IwNDVIUXRGKy90OHVKZWxhTkFURVE1VlJtTTIvNitVTFJqYkZtSTduYlh2?=
 =?utf-8?B?bTJMNGhyMzRlNys4L0VsOUlOSFJkZ1NHU3V0NEtKWkFvZ29jc1NxM2dleW5s?=
 =?utf-8?B?aTdncVJubFdCUGtvU0lFM0RpMlNvWnJSRzBGaDJQMzl1dVBJNGZudHFQdzFm?=
 =?utf-8?B?dnFXTjZVSVd0bVBVVnF1MHZlNHdlZEI3WjdPYS9rOHRjQ0xzdG5VeVVOVy9y?=
 =?utf-8?B?NHRzTy9CSUlPb2p5dGdQWkRtRGN4bUVhKzA5U3pPdkt5TVZ2NzhSUVZrQUhs?=
 =?utf-8?B?ZXR3NWFWTGhEZk9YamhyYXdlUVhTMnNQbUVKZmhHNWk4NENlM1ZBV2ljaHNw?=
 =?utf-8?B?ZnVONG1teVJYUkI0THhhRDJDbzhTVzBrYlhRSWRRQ3ArQ2prUy9USVVyeDNa?=
 =?utf-8?B?L0Y0UG9GSW5IR2M0a2duVVpkbkRyY3JqVUlsdnZ1Qi8wR2lrUE11SGltV3Zp?=
 =?utf-8?B?b04rWEY2a3ZGQ29xMzVSUE9yV3NNRHN6eVZtcVRhNklpOWxvNlRZdXhyeHdh?=
 =?utf-8?B?RjhTelExK01wYTBqMzJiZ3FmbE5tV1VxMGR2b0pDUjlDSG4zaGsybHhkV2pp?=
 =?utf-8?B?bTJZd3J4NkpWSG0xZ2VZWVJGSFZZWitnYmVNOGlqdnF6Vmp6TndBMHNsY2t6?=
 =?utf-8?B?Qm43Y05mdWx0L3lnQ2libU5CTXZVV1NCbEtXaXI0UmxLdGVpbGd2RjgwMFp2?=
 =?utf-8?B?QmJXMzVraFRUQTZuemhaRnpwMXNERDBsdEk1ZVAwRkVudkRUaEVOUE5MZmZ4?=
 =?utf-8?B?UmdDNE5FZW1RTnUraThtcFRka3dKYnBGQTdHU2ZZUFFUQ2dyV3VKS2lRWVVN?=
 =?utf-8?B?d05BSmNUQi8vc0J2eDJPOUorVHVGMjFra3ZHVSt0ME1KOGNuUVVLYkh2M3p3?=
 =?utf-8?B?QVE3WnJ4MDVqT0Z1RTI4d1NvQXoxTzM3MFhtK0JXdFI1RURXL2RwSGFUZGZG?=
 =?utf-8?B?MTNGYXh2MTFPdmZEOFNaRUVBUlo5dGVVcGV5d2RhY0VscTlqK2NWZFJkcC9t?=
 =?utf-8?B?bFdsaHcveC9KM2IxVzR4Y3UyZFdxQlpWK3QwNmlCbGJLV3NqckFqTDVkMWlU?=
 =?utf-8?B?QlVod3pkb0tTaklNdGNiSzBSSzFUdjZod2hwVEp4Q2xpYllPVHdFOGgwUGNK?=
 =?utf-8?B?R3B3MjVqMHVVbXh6TXRvb2xCb0FzQWwyNmh0NytTTXBoREF0b3RsdVVXMkFV?=
 =?utf-8?B?U3BValpkZDlHQVpLYlhSK0xjd3M4VlJrbDFKV0puTDIyNStEVlVtV1hNeWlm?=
 =?utf-8?B?c2hXQ3JZN3lzM1RDWVl0Z2FlUjRlTFZNSVM3V0tkVExvaFBBeGlTSDd5Y0dy?=
 =?utf-8?B?MDJwZXBhRlc3UmFaUVM5R0Flb0lXRTl1WGdXRGVXOHc5em5Yb0U2MEhRdTFk?=
 =?utf-8?B?QW1HbTlqZmF4L0ovNU5PSVZFM2Vpa0pZQ0dkU2N0K3ZXeG1hM0c4Vjl1eHRv?=
 =?utf-8?B?ay83WXl2aVVadjR6V2JKWGRicWhmM2x3M0h2a3pSTXVDMml3aTZNblFueTdm?=
 =?utf-8?B?bVI0MXJleEI0dHp3VFBiVXpoZml5MEMybmdmZlJFUE1mZzBvZ1R2NTdyTU5j?=
 =?utf-8?B?VHE5Vm1jNFNvVFk0N04rY3hocXJ4RFdsU2FtVjB1YVBsVDRoSVpnVDFUYlJj?=
 =?utf-8?B?emp0WVl6NFdBdUs0TTRza3FHaUIvblBDVDhPNjZjazdUM3lsWVZwZFBMOUwx?=
 =?utf-8?B?YURTNGJTdkE2dWxHTDJISnJMZmh1QlpsQXlOT3B1anljdHZwcHB0SkUvRVZD?=
 =?utf-8?B?SGxqV1lTWFA2dXlHaDBwZE5FN2oreDd5QTE5YWRhS2lPY0Nwa2NOK0svR2Zo?=
 =?utf-8?B?MU5sNHhmbklUNis0SDRyZzQ2bGtXMUM0QWtmdWNNMkNmZFJoTklXM25lV0dH?=
 =?utf-8?B?K080Y3RXTVpTSWdrS2pXRklOWk10dU1sYUNCdDdRMjhXbExudTJHMVRpWmt6?=
 =?utf-8?B?NXVydVEvZUZibTUyL1JFREdEL2lSQkpqS2ZCMHg0N3EvczlLaC9jSlI3UmY4?=
 =?utf-8?B?Z2QvTXUvWVJNQ1h1Q2tyYjJiaGJ1YlNGeTZCbVcrOFZadVFrNGs0R296c1ly?=
 =?utf-8?B?enIzdWhFVTdZTDl6VzJ4enVnSVF0TEdmTXJydDRmU2lDUDdiN2ZvSERKbnZw?=
 =?utf-8?B?cTlTZFVjdzh4RGNmd3BDL2xqKy94VDNrYW9oaGQwL0ZWYWlJeTQ5TmlHdFUr?=
 =?utf-8?B?Y2dPVnV0RHFVMFBxMzBrdmp6a0ExL3QyZ0R3QVd2TGRmbUl2L3Y3cktHd1g4?=
 =?utf-8?B?ZnRFMGFUbGJMUVhtWmhLMDd2dWxjdGo3MXU4ZVJxTUlaRkRVTG5uY01JajVP?=
 =?utf-8?Q?eAaJOfRJ+J4JvMgU=3D?=
X-Exchange-RoutingPolicyChecked: TPeRCIo1Vu2mTgupE5NDfTzBsTj5es7SxWlLSJYZtXv9UcQO+bBeMdEvQPlwt6tgp1+JKr5vlriDeMip0bbhdeWjemi/7SW/s3MehTGQauathUykp6DPsMedUESVVL+OUEvtr8GQEuBPQnG72F5SBmX9p5z1keBhLaczwmwIc9dk4aykom8who93+BR5mV7oFOJQYAMmIyvai+3H6jh50TRXYWcSWbuGPgaP3Hd9anM2yx9z+VqofW6qG/j9IOJlVM1VtFFUPpFl8Sl5ucjQotpKyd11B9dxlPE+SRj4my4jR7KxhI7H1yi67sVSdfDT5v5e4e/79LDo1OeARssbCw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bcbf2d1-4079-4089-f7e2-08dea11c1b76
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 09:38:42.9370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LYdO2K8cObm6uOnnNMfuqDEyK2N4qcqOdjl4mZBwAZ86tnutRRU6Cl7bQSxdgId+9Ld1nbHLjaOf3EX3wGGnWAaxK5ZowSDoqZKgYcFD/qQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7725
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:email];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 904E744FD32
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/23/2026 3:00 AM, Melissa Wen wrote:
> 
> 
> On 21/04/2026 11:57, Borah, Chaitanya Kumar wrote:
>>
>>
>> On 4/21/2026 6:40 PM, Melissa Wen wrote:
>>>
>>>
>>> On 08/04/2026 02:15, Chaitanya Kumar Borah wrote:
>>>> Introduce DRM_COLOROP_FIXED_MATRIX, a new colorop type representing a
>>>> hardware that performs a fixed matrix operation.
>>>>
>>>> Unlike CTM-based colorops, this block does not expose programmable
>>>> coefficients. Instead, userspace selects one of the predefined
>>>> hardware modes via a new FIXED_MATRIX_TYPE enum property. Supported 
>>>> modes
>>>> include common YCbCr->RGB and RGB709->RGB2020 conversions.
>>>>
>>>> v2:
>>>>   - Naming changes (Pekka)
>>>>
>>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/drm_atomic.c      |   4 ++
>>>>   drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>>>>   drivers/gpu/drm/drm_colorop.c     | 107 ++++++++++++++++++++++++++ 
>>>> ++++
>>>>   include/drm/drm_colorop.h         |  84 +++++++++++++++++++++++
>>>>   include/uapi/drm/drm_mode.h       |  12 ++++
>>>>   5 files changed, 211 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/ 
>>>> drm_atomic.c
>>>> index 41c57063f3b4..16a2183b11bf 100644
>>>> --- a/drivers/gpu/drm/drm_atomic.c
>>>> +++ b/drivers/gpu/drm/drm_atomic.c
>>>> @@ -845,6 +845,10 @@ static void 
>>>> drm_atomic_colorop_print_state(struct drm_printer *p,
>>>> drm_get_colorop_lut3d_interpolation_name(colorop- 
>>>> >lut3d_interpolation));
>>>>           drm_printf(p, "\tdata blob id=%d\n", state->data ? state- 
>>>> >data->base.id : 0);
>>>>           break;
>>>> +    case DRM_COLOROP_FIXED_MATRIX:
>>>> +        drm_printf(p, "\tfixed_matrix_type=%s\n",
>>>> +               drm_get_colorop_fixed_matrix_type_name(state- 
>>>> >fixed_matrix_type));
>>>> +        break;
>>>>       default:
>>>>           break;
>>>>       }
>>>> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/ 
>>>> drm_atomic_uapi.c
>>>> index 5bd5bf6661df..d69406b08a0f 100644
>>>> --- a/drivers/gpu/drm/drm_atomic_uapi.c
>>>> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
>>>> @@ -761,6 +761,8 @@ static int 
>>>> drm_atomic_colorop_set_property(struct drm_colorop *colorop,
>>>>       } else if (property == colorop->data_property) {
>>>>           return drm_atomic_color_set_data_property(colorop, state,
>>>>                                 property, val);
>>>> +    } else if (property == colorop->fixed_matrix_type_property) {
>>>> +        state->fixed_matrix_type = val;
>>>>       } else {
>>>>           drm_dbg_atomic(colorop->dev,
>>>>                      "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
>>>> @@ -793,6 +795,8 @@ drm_atomic_colorop_get_property(struct 
>>>> drm_colorop *colorop,
>>>>           *val = colorop->lut3d_interpolation;
>>>>       else if (property == colorop->data_property)
>>>>           *val = (state->data) ? state->data->base.id : 0;
>>>> +    else if (property == colorop->fixed_matrix_type_property)
>>>> +        *val = state->fixed_matrix_type;
>>>>       else
>>>>           return -EINVAL;
>>>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/ 
>>>> drm_colorop.c
>>>> index 566816e3c6f0..dd385e8dacbe 100644
>>>> --- a/drivers/gpu/drm/drm_colorop.c
>>>> +++ b/drivers/gpu/drm/drm_colorop.c
>>>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list 
>>>> drm_colorop_type_enum_list[] = {
>>>>       { DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>>>       { DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>>>       { DRM_COLOROP_3D_LUT, "3D LUT"},
>>>> +    { DRM_COLOROP_FIXED_MATRIX, "Fixed Matrix"},
>>>>   };
>>>>   static const char * const colorop_curve_1d_type_names[] = {
>>>> @@ -90,6 +91,14 @@ static const struct drm_prop_enum_list 
>>>> drm_colorop_lut3d_interpolation_list[] =
>>>>       { DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>>>   };
>>>> +static const char * const colorop_fixed_matrix_type_names[] = {
>>>> +    [DRM_COLOROP_FM_YCBCR601_FULL_RGB]  = "YCbCr 601 Full to RGB",
>>>> +    [DRM_COLOROP_FM_YCBCR709_FULL_RGB]    = "YCbCr 709 Full to RGB",
>>>> +    [DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC]  = "YCbCr 2020 Full to 
>>>> RGB NC",
>>>> +    [DRM_COLOROP_FM_YCBCR_LIMITED_FULL]  = "YCbCr limited to full",
>>>> +    [DRM_COLOROP_FM_RGB709_RGB2020]     = "RGB709 to RGB2020",
>>>> +};
>>>> +
>>>>   /* Init Helpers */
>>>>   static int drm_plane_colorop_init(struct drm_device *dev, struct 
>>>> drm_colorop *colorop,
>>>> @@ -455,6 +464,81 @@ int drm_plane_colorop_3dlut_init(struct 
>>>> drm_device *dev, struct drm_colorop *col
>>>>   }
>>>>   EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
>>>> +/**
>>>> + * drm_plane_colorop_fixed_matrix_init - Initialize a 
>>>> DRM_COLOROP_FIXED_MATRIX
>>>> + *
>>>> + * @dev: DRM device
>>>> + * @colorop: The drm_colorop object to initialize
>>>> + * @plane: The associated drm_plane
>>>> + * @funcs: control functions for the new colorop
>>>> + * @supported_fm: A bitfield of supported 
>>>> drm_colorop_fixed_matrix_type enum values,
>>>> + *               created using BIT(fixed_matrix_type) and combined 
>>>> with the OR '|'
>>>> + *               operator.
>>>> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
>>>> + * @return zero on success, -E value on failure
>>>> + */
>>>> +int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, 
>>>> struct drm_colorop *colorop,
>>>> +                    struct drm_plane *plane,
>>>> +                    const struct drm_colorop_funcs *funcs,
>>>> +                    u64 supported_fm, uint32_t flags)
>>>> +{
>>>> +    struct drm_prop_enum_list enum_list[DRM_COLOROP_FM_COUNT];
>>>> +    int i, len;
>>>> +
>>>> +    struct drm_property *prop;
>>>> +    int ret;
>>>> +
>>>> +    if (!supported_fm) {
>>>> +        drm_err(dev,
>>>> +            "No supported FM type op for new Fixed Matrix colorop 
>>>> on [PLANE:%d:%s]\n",
>>>> +            plane->base.id, plane->name);
>>>> +        return -EINVAL;
>>>> +    }
>>>> +
>>>> +    if ((supported_fm & -BIT(DRM_COLOROP_FM_COUNT)) != 0) {
>>>> +        drm_err(dev, "Unknown Fixed Matrix provided on [PLANE:%d: 
>>>> %s]\n",
>>>> +            plane->base.id, plane->name);
>>>> +        return -EINVAL;
>>>> +    }
>>>> +
>>>> +    ret = drm_plane_colorop_init(dev, colorop, plane, funcs, 
>>>> DRM_COLOROP_FIXED_MATRIX, flags);
>>>> +    if (ret)
>>>> +        return ret;
>>>> +
>>>> +    len = 0;
>>>> +    for (i = 0; i < DRM_COLOROP_FM_COUNT; i++) {
>>>> +        if ((supported_fm & BIT(i)) == 0)
>>>> +            continue;
>>>> +
>>>> +        enum_list[len].type = i;
>>>> +        enum_list[len].name = colorop_fixed_matrix_type_names[i];
>>>> +        len++;
>>>> +    }
>>>> +
>>>> +    if (WARN_ON(len <= 0))
>>>> +        return -EINVAL;
>>>> +
>>>> +    prop = drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, 
>>>> "FIXED_MATRIX_TYPE",
>>>> +                    enum_list, len);
>>>> +
>>>> +    if (!prop)
>>>> +        return -ENOMEM;
>>>> +
>>>> +    colorop->fixed_matrix_type_property = prop;
>>>> +    /*
>>>> +     * Default to the first supported CSC mode as provided by the 
>>>> driver.
>>>> +     * Intuitively this should be something that keeps the colorop 
>>>> in pixel bypass
>>>> +     * mode but that is already handled via the standard colorop 
>>>> bypass
>>>> +     * property.
>>>> +     */
>>>> +    drm_object_attach_property(&colorop->base, colorop- 
>>>> >fixed_matrix_type_property,
>>>> +                   enum_list[0].type);
>>>> +    drm_colorop_reset(colorop);
>>>> +
>>>> +    return 0;
>>>> +}
>>>> +EXPORT_SYMBOL(drm_plane_colorop_fixed_matrix_init);
>>>> +
>>>>   static void __drm_atomic_helper_colorop_duplicate_state(struct 
>>>> drm_colorop *colorop,
>>>>                               struct drm_colorop_state *state)
>>>>   {
>>>> @@ -521,6 +605,13 @@ static void __drm_colorop_state_reset(struct 
>>>> drm_colorop_state *colorop_state,
>>>>                                 &val);
>>>>           colorop_state->curve_1d_type = val;
>>>>       }
>>>> +
>>>> +    if (colorop->fixed_matrix_type_property) {
>>>> + drm_object_property_get_default_value(&colorop->base,
>>>> + colorop->fixed_matrix_type_property,
>>>> +                              &val);
>>>> +        colorop_state->fixed_matrix_type = val;
>>>> +    }
>>>>   }
>>>>   /**
>>>> @@ -561,6 +652,7 @@ static const char * const colorop_type_name[] = {
>>>>       [DRM_COLOROP_CTM_3X4] = "3x4 Matrix",
>>>>       [DRM_COLOROP_MULTIPLIER] = "Multiplier",
>>>>       [DRM_COLOROP_3D_LUT] = "3D LUT",
>>>> +    [DRM_COLOROP_FIXED_MATRIX] = "Fixed Matrix",
>>>>   };
>>>>   static const char * const colorop_lu3d_interpolation_name[] = {
>>>> @@ -617,6 +709,21 @@ const char 
>>>> *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte
>>>>       return colorop_lu3d_interpolation_name[type];
>>>>   }
>>>> +/**
>>>> + * drm_get_colorop_fixed_matrix_type_name: return a string for 
>>>> fixed matrix type
>>>> + * @type: fixed matrix type to compute name of
>>>> + *
>>>> + * In contrast to the other drm_get_*_name functions this one here 
>>>> returns a
>>>> + * const pointer and hence is threadsafe.
>>>> + */
>>>> +const char *drm_get_colorop_fixed_matrix_type_name(enum 
>>>> drm_colorop_fixed_matrix_type type)
>>>> +{
>>>> +    if (WARN_ON(type >= ARRAY_SIZE(colorop_fixed_matrix_type_names)))
>>>> +        return "unknown";
>>>> +
>>>> +    return colorop_fixed_matrix_type_names[type];
>>>> +}
>>>> +
>>>>   /**
>>>>    * drm_colorop_set_next_property - sets the next pointer
>>>>    * @colorop: drm colorop
>>>> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
>>>> index bd082854ca74..c13b4b045fff 100644
>>>> --- a/include/drm/drm_colorop.h
>>>> +++ b/include/drm/drm_colorop.h
>>>> @@ -134,6 +134,71 @@ enum drm_colorop_curve_1d_type {
>>>>       DRM_COLOROP_1D_CURVE_COUNT
>>>>   };
>>>> +/**
>>>> + * enum drm_colorop_fixed_matrix_type - type of Fixed Matrix
>>>> + *
>>>> + * Describes a Fixed Matrix operation to be applied by the 
>>>> DRM_COLOROP_FIXED_MATRIX
>>>> + */
>>>> +enum drm_colorop_fixed_matrix_type {
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_YCBCR601_FULL_RGB:
>>>> +     *
>>>> +     * enum string "YCbCr 601 Full to RGB"
>>>> +     *
>>>> +     * This selects the matrix that converts full range YCbCr into RGB
>>>> +     * according to the BT.601 coefficients.
>>>> +     */
>>>> +    DRM_COLOROP_FM_YCBCR601_FULL_RGB,
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_YCBCR709_FULL_RGB:
>>>> +     *
>>>> +     * enum string "YCbCr 709 Full to RGB"
>>>> +     *
>>>> +     * This selects the matrix that converts full range YCbCr into RGB
>>>> +     * according to the BT.709 coefficients.
>>>> +     */
>>>> +    DRM_COLOROP_FM_YCBCR709_FULL_RGB,
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB:
>>>> +     *
>>>> +     * enum string "YCbCr 2020 Full to RGB NC"
>>> Nit: I think you mean "YCbCr 2020 NC Full to RGB"?
>>>> +     *
>>>> +     * This selects the matrix that converts full range YCbCr into RGB
>>>> +     * according to the BT.2020 non-constant luminance coefficients.
>>>> +     */
>>>> +    DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC,
>>> ... and here ^ DRM_COLOROP_FM_YCBCR_NC_FULL_RGB
>>
>> Ack.
>>
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_YCBCR_LIMITED_FULL:
>>>> +     *
>>>> +     * enum string "YCbCr limited to full"
>>>> +     *
>>>> +     * This selects the matrix that converts limited range YCbCr into
>>>> +     * full range YCbCr. Though not strictly a matrix operation but
>>>> +     * can be represented as one.
>>>> +     */
>>>> +    DRM_COLOROP_FM_YCBCR_LIMITED_FULL,
>>> I didn't full understand how this is going to work.
>>> Looks like it's merging two properties (COLOR_ENCODING and 
>>> COLOR_RANGE) in a single colorop.
>>> But we can only select one enum value. So how to communicate, for 
>>> example, a "YCbCr 709 Limited to RGB" conversion?
>>> The driver will have to define a coloro pipeline with two fixed 
>>> matrix colorop in a row, one with only "Limited to Full" and another 
>>> with "YCbCr Full to RGB" ?
>>>
>>
>> It depends on what the HW supports. Let's say a fixed function HW 
>> block can itself support "YCbCr Limited to RGB" then we just need a 
>> single colorop that exposes this enum. These are being added in the 
>> series that Harry published.[1]
>>
>> In Intel's case, we have two separate blocks to do this. One that does 
>> the range correction (Limited to Full) and then a fixed function CSC 
>> block that does only "YCbCr Full to RGB" conversion. If they are 
>> adjacent in the pipeline, they can very well be represent by a single 
>> colorop described in the previous paragraph but we have a unique 
>> situation where there is a 1D LUT in between the two blocks.
>>
>> [YUV Limited to Full] -> [1D LUT] -> [YCbCr XXX Full to RGB] -> [1D LUT].
> 
> I see. Thanks for clarifying.
> 
> Apart from the DRM_COLOROP_FM_YCBCR_NC_FULL_RGB fix above-mentioned, 
> this patch LGTM.
> It was missing IGT tests, but I see Harry provided it in the series you 
> linked.
> 
> Reviewed-by: Melissa Wen <mwen@igalia.com>
> 

Thank you, Melissa, for the review.

Regarding the IGTs they are yet to be upstreamed with this version of 
the series as we are still working out how to use CRC matching for pass 
criteria. (As i915/xe does not have writeback hooked up yet)

==
Chaitanya

>>
>> ==
>> Chaitanya
>>
>> [1] https://lore.kernel.org/dri-devel/20260330153451.99472-3- 
>> harry.wentland@amd.com/
>>
>>> Melissa
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_RGB709_RGB2020:
>>>> +     *
>>>> +     * enum string "RGB709 to RGB2020"
>>>> +     *
>>>> +     * Selects the fixed-function CSC preset that converts RGB
>>>> +     * (BT.709) colorimetry to RGB (BT.2020).
>>>> +     */
>>>> +    DRM_COLOROP_FM_RGB709_RGB2020,
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_COUNT:
>>>> +     *
>>>> +     * enum value denoting the size of the enum
>>>> +     */
>>>> +    DRM_COLOROP_FM_COUNT
>>>> +};
>>>> +
>>>>   /**
>>>>    * struct drm_colorop_state - mutable colorop state
>>>>    */
>>>> @@ -183,6 +248,13 @@ struct drm_colorop_state {
>>>>        */
>>>>       struct drm_property_blob *data;
>>>> +    /**
>>>> +     * @fixed_matrix_type:
>>>> +     *
>>>> +     * Type of Fixed Matrix operation.
>>>> +     */
>>>> +    enum drm_colorop_fixed_matrix_type fixed_matrix_type;
>>>> +
>>>>       /** @state: backpointer to global drm_atomic_state */
>>>>       struct drm_atomic_state *state;
>>>>   };
>>>> @@ -368,6 +440,13 @@ struct drm_colorop {
>>>>        */
>>>>       struct drm_property *data_property;
>>>> +    /**
>>>> +     * @fixed_matrix_type_property:
>>>> +     *
>>>> +     * Sub-type for DRM_COLOROP_FIXED_MATRIX type.
>>>> +     */
>>>> +    struct drm_property *fixed_matrix_type_property;
>>>> +
>>>>       /**
>>>>        * @next_property:
>>>>        *
>>>> @@ -424,6 +503,10 @@ int drm_plane_colorop_3dlut_init(struct 
>>>> drm_device *dev, struct drm_colorop *col
>>>>                    uint32_t lut_size,
>>>>                    enum drm_colorop_lut3d_interpolation_type 
>>>> interpolation,
>>>>                    uint32_t flags);
>>>> +int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, 
>>>> struct drm_colorop *colorop,
>>>> +                    struct drm_plane *plane,
>>>> +                    const struct drm_colorop_funcs *funcs,
>>>> +                    u64 supported_fm, uint32_t flags);
>>>>   struct drm_colorop_state *
>>>>   drm_atomic_helper_colorop_duplicate_state(struct drm_colorop 
>>>> *colorop);
>>>> @@ -480,6 +563,7 @@ drm_get_colorop_lut1d_interpolation_name(enum 
>>>> drm_colorop_lut1d_interpolation_ty
>>>>   const char *
>>>>   drm_get_colorop_lut3d_interpolation_name(enum 
>>>> drm_colorop_lut3d_interpolation_type type);
>>>> +const char *drm_get_colorop_fixed_matrix_type_name(enum 
>>>> drm_colorop_fixed_matrix_type type);
>>>>   void drm_colorop_set_next_property(struct drm_colorop *colorop, 
>>>> struct drm_colorop *next);
>>>> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
>>>> index a4bdc4bd11bc..dc4b8566fec8 100644
>>>> --- a/include/uapi/drm/drm_mode.h
>>>> +++ b/include/uapi/drm/drm_mode.h
>>>> @@ -971,6 +971,18 @@ enum drm_colorop_type {
>>>>        *         color = lut3d[index]
>>>>        */
>>>>       DRM_COLOROP_3D_LUT,
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FIXED_MATRIX:
>>>> +     *
>>>> +     * enum string "Fixed Matrix"
>>>> +     *
>>>> +     * A Colorop block that performs a pre-defined matrix operation 
>>>> selected
>>>> +     * via the FIXED_MATRIX_TYPE enum property. The driver 
>>>> advertises the supported
>>>> +     * operations through this property.
>>>> +     */
>>>> +    DRM_COLOROP_FIXED_MATRIX,
>>>> +
>>>>   };
>>>>   /**
>>>
>>
> 

