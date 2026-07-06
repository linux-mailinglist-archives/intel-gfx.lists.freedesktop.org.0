Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tY3TAq+YS2rqWAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A56807102D7
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=F1NUg4SK;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E5210E90B;
	Mon,  6 Jul 2026 11:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8219B10E90B;
 Mon,  6 Jul 2026 11:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783339180; x=1814875180;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F1M+1ULfU9S4T+OyExz15nC999ua4T8DyeEW/zcuqhA=;
 b=F1NUg4SKNCx6B7z7EgQIJTR0qAmCP4318a5LTOHh+ExMetaDVSya6CVV
 4Ob/pdBuoM3ukmpkj4wfQ/TTzwmM+ZmvlSV+PJkAyU/VnPTJKqX8wIKKZ
 QnC2xtIawU0b5TlFhIktMWqnfEvby2SX0pu8o1WgYc9JzQ4xQAi/LOoWt
 qq1HQ04G/8HBhenYBoFTnqzIwrc/jJNoC393sE4EEqfzpGwLsrh/3MQzd
 q3evQkbVDAoLXbqN4RK8Lhq3/wEYqhBf/FI9tmCLu5Jl4Iky7e3q3hBI9
 lRWim6m2ZCX+VMkM5zAVXZ/zyECdcFSHio4LS7g/t/mbhGZVgeEh4ErHY w==;
X-CSE-ConnectionGUID: umr0rQX0TZW3QEhUDnMkLQ==
X-CSE-MsgGUID: rhgYFQv5QEaKWnNF0gwEyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="109514836"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="109514836"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 04:59:40 -0700
X-CSE-ConnectionGUID: ooyd5pOtSZyOgqbfdxj3rQ==
X-CSE-MsgGUID: YI/k60dsRZiUWubuBkBEBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="278048776"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 04:59:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 04:59:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 04:59:39 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 04:59:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hTWeeC07qghoCf1/9FI2ghU1hCidyIWtgqcH/3WU6b9o6Ut3qKTipVPxvr6LJBnWdrVSp2vK0pIr/uTxMSPxYiOTitiDfDvOX73FO6Iv4v4PP3mT9xc06DgcJ9DegOE2WDEcQtHFnoh+ZYocfiazV4VN5N6Yh74Qv3u1kYc3KOkOmmse1dfCeEjGTYphk1YsXIWc0o4Hi3SFILWX2hMRl2n2+ReLYYm2nLbYuwFJje7zjxc2TPYgVgP/aT9GzG6nKPgNU/sz1KKgYKotSCqLITt8rUMNi5GsIvvRCpCaFWpoltSRERJYu71FsvgX3QNEptVBo5+EVwvuq1S9EIX7zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bCdOkqdNtF4KnRs2EG4saqtnslpLOtbHmGivU0oe1UY=;
 b=amT+P4o4WX7DV7ttvnA83TuMtzfVq4ruOsb8Whr/s+xm4B/5KRitSWskNRmrjTfPKHAFd/1OTz0J9kRSSUSTfXCzx+4yzzX+PFN3HgnqhlbhcIQefpRFbx99GIijik9eTamRbmsysfITiW0chfLSVTZi4KKKPadV0TNkk0rg177aSGYoC3EdicQwd66t9U5smdDsLKBBPunD8blsvlY8YveSK4YuC0XfN0LKdipe0rmPDjqrC78cGexuOHoxfLDUyLEF7VTDjcJaw/R53XaPkRmCnSVfiXZmg5AnIDtIlgET0SE+/RIPGVctAOnQdxP5NEDgNdAf9fUpzhjvev4WMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by IA1PR11MB6370.namprd11.prod.outlook.com (2603:10b6:208:3ae::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 11:59:37 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 11:59:37 +0000
Message-ID: <c82ce0f5-bb02-4d7e-9857-949a25e05a74@intel.com>
Date: Mon, 6 Jul 2026 17:29:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/11] drm/i915/vrr: Enable/Disable CMRR based on
 enable/disable preconditions
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260616144233.832276-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0150.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::7) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|IA1PR11MB6370:EE_
X-MS-Office365-Filtering-Correlation-Id: fc5d77d8-b635-4e2d-83ba-08dedb560d2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|4143699003|11063799006|5023799004|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 7B+hXq4KJQVNH9qyvOEHEIPdgojR/nIzC4kV9aJJqCw/S+G39shLnYt/+RtzXPafgaGGM8gFpUFQAV2pztwPflsyVhR4W99FB5CRHu+qwhYroBtpEp9Mvb3rla69q92cAB10AYu3B4vXsDmX9NtybJCfLTl+AH/3TgMu4qtxAN7VpQ3I+HoZEAd+spFcDUGSJhoPSxCRx3mfcnFmQ2jKOfPxc+LN4gw3wzvG0gJ25PyrrPNW0ICc6ndFyzfroRkvUtYzjnuMOk33+pGi0mFalggLaoINO1+LPtUsy7Am/z6ZtqAb+ZdeXKPFTXkwiTXOshhJG+J8SGIaRX3TOQLgYOeLXTKwMtYWl4rU5/xpHnIskJkkaN5es6NafLWT0pbcdkGlZaKfSYzMRAseLCqtNcZqNaHWuQ5TC+CcWPsvwh+IaLSARiabTwhJLj73JsFRpkWRyInhIzvMiuiMe+/98dq9+WNjU2z29EaZ1oU2Yj4u5hgOHQMuCHOK5nMNPx1MF20cAPTQcfmoVOkmz4cQCHdM2S1RmXzXAdP2q1/NiF07b83ukFZ1QUJTzbMNmZB9B+tzXVMtWUfp4PVdpjGJFiSBJV0UOUnJaoIRTAjs6GSkATMgBYZNK+oK+7i8WTBudEdYedwSCS8qBFH2RxJJMRznyExVhFSNTqiodSSKXvY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(4143699003)(11063799006)(5023799004)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTBxb2pNdzFkNUJ4QmlOY3ZIbzZBVUdOTUZJSFBJSHdZNFAvckdMYW9VOHZF?=
 =?utf-8?B?bjhHUytOWGljSDhBTnFDUDFocWs4VGcvSGpNdDBoQU1kVG9uN1ErZDJGUlQy?=
 =?utf-8?B?RmwwT1drSCtVK1c5aFJ5SERzQ0FTVmdPdGwzTnI5K0NXZHZndWlVSWZRc3BY?=
 =?utf-8?B?Z0cwSmpxTGRYSkk0dEN6ZWN0WGFkaHozV3BZVnA3OHdKREt3aVNZRmVKZnJp?=
 =?utf-8?B?VHdSekNEVGRZclA4TTRQMFRCZ1c1ZHA2aXFlWW1KYUk4cG9oVkphY3dCOXg0?=
 =?utf-8?B?bHJuS05ZMjhZd1NPbEFUTjdrRFFUZnFJZnZDZ2lOVm5ST04yOVh4Rk5haFlo?=
 =?utf-8?B?UDVFZnpETktQam9FOEI1Njd4Mm9wYlQvL2d6cFBTVk5Mc1Z3R3RvNkdaY2kz?=
 =?utf-8?B?cUhmM01aUHRqNllweUNhRW5vUkRWekV1YlpmSVVia3JJeWt3L0s0RjcxNDRx?=
 =?utf-8?B?ajU0SkN5TUlsOGtZcjBoSXhXTVowcUtTK3pSZzdGM25DVXJxRGxzQ1RoZ3dl?=
 =?utf-8?B?Rm5zUDQ1TEJ0R0d1NHFzSTRCUFhKRFlzU2c3Yy8vNnNCSW9sQzhMOUpsRlFu?=
 =?utf-8?B?eGxya3ZOdWg2ZE5yRU9ybmp0VnlzNDZ4aFVWUVNKN1AwUG5sMUNKb3pza0FC?=
 =?utf-8?B?VHB0SHJJL1I4ZmpCSUxwUktQYjhWUGZlTHVqZnVDcGhEQmtsV2hPYW5CVVZH?=
 =?utf-8?B?b09zc3BDcEc3VlBoU1ZoZndhOU5NUG5tSkhyQ1dkdjFQbitiR2g0UVBZRG5v?=
 =?utf-8?B?YUU5ZnVuR0NLYjI3Q09idHoyOUNOMlY4eTYxT3BJU0RCTnd5S20xb2Vqenc3?=
 =?utf-8?B?alJUV2NpbE9VMFM3Skk0d1M3aDBQZ1pzUGFicUpLSllOSzJ1OHFhRmE2YTds?=
 =?utf-8?B?Rlp2TmpZVnRNVUtWZXo5QnhLY1RzTCtiZk9nTU5Jc2ZiUmo0d2ZZOEVPUTBF?=
 =?utf-8?B?SHRjZVJ0ZjI0YWw0MVBPNCticzZTTjI3N0djQWxrU2VrNWhnSy82VmdlamVT?=
 =?utf-8?B?MjdFb0tPZVUyUnpOdnd4MTdTeG9UYVFkZXZielpPbmhXQVhwcjZ5MnhZbzlJ?=
 =?utf-8?B?L0YyeUJpQkJBcURYeW9GWElvUGx4aGorcFBRaEJMb1ZrcjZ0Z3d1L24vMU1Y?=
 =?utf-8?B?bnhOWEJ1bVArR21YaERkcTAwUG1hSk1KNzVSZG0xN0ZXd0t5Um9PM212MUZE?=
 =?utf-8?B?VjAvOGtwS3FZTlpTbGdDRG1ySmFMbzE3TEFUY2JvbkRkY0VoZFQzQVc5ejdx?=
 =?utf-8?B?WXYrci8yaFNXVk5xcVBCYUpQTWZNdjJHSVRZMHo1bFc0QjVLV2ZIQzlNcDNS?=
 =?utf-8?B?Qkp2S0wxWHptNUp2V3hDRExSa3hhekxzMzBVdDZZOHp4OVp0MUI3RGFtTHFx?=
 =?utf-8?B?dmx4NExETnJSVXB2L0lmSTFJRlVTdUhmREJyOXc3MStaUmswa2JhV2x1VHZ2?=
 =?utf-8?B?RU1tYWNQTFJRS0pJaWwwYmhZWDlvRGdscnd2eXh0c2w5cWNtaFBqVjV6U3ho?=
 =?utf-8?B?bW0vVTFkT2JIcUViYkh6Q3RYQ0pubHZ2Q3hNaVF2eWhuUGNxT1YycS8vbXNM?=
 =?utf-8?B?dmV4NklvYmF5b0RZYTE3c1A3RkVMczhMWDNiMVdGNTZGNElZdGJERXpLKzdw?=
 =?utf-8?B?ZXpmd0RBbWZFN3dFK0VRZ0g0ZDN6azNrSTd5UHhITVF3S0hkTXBObkczTkxI?=
 =?utf-8?B?U3NXUGgweTVBNkszTzByUmlCVmVHYllrM1lsekhjTi9abzd6Y29JVmd3bDBn?=
 =?utf-8?B?M2tJTC9SQjJzVmJ3VFdtOEMrQ0N5RUJZWkJSMHZrU3Q4WU9CZVdtZWthUjVu?=
 =?utf-8?B?S3czTW15bkVjeFAyZStSb3lxKzhQSVJvQ2NNNE5kMFBCcWFlKzAwem5uWmdS?=
 =?utf-8?B?clZIRStWQkpOUGNidjlSUWNPU1JZbjJ6OFNuT3RnWVNNV09kdjBhS0xuMjJx?=
 =?utf-8?B?ejFkeEdjTXQ4NDBPZm1CN3djeUlUdEVJT2lpRjZQNGQ3NkQ4QjFzTTd1Z05n?=
 =?utf-8?B?WkdMMTZrMDBRdnB0L0FIZ1hHcHBMZjZlY2lMeEorenliNGtwTGNCR3JkaHpp?=
 =?utf-8?B?V3lrOG5zMTRkMmxSb0luRmZTMVBhL2JnMDUyaTM1OFp6ajNXN2YxSmg3YmlH?=
 =?utf-8?B?YXFWOWRYS2JDZmtvTUMwRXY5Ryt5NFhKK1ZiRll0K2x0N0FaMGV5UHg4cEZJ?=
 =?utf-8?B?Z3J2QmNRUTB0V1QyVHMvSmYvOUlxT0JuMGNpY2wzaW9udUtlYkZCUUlmc2hv?=
 =?utf-8?B?bUN4LzVxZHNOUXU1aHJ0ZHROTmxmZ0NicVppYmhjaE9vd2N3QVBTU1VDUE0z?=
 =?utf-8?B?RVdrWCswWDRzd1ovUGlWWDZiTndxdzdjQ0xmZk1ianR2OS9HZlphcUNDTU9l?=
 =?utf-8?Q?bBFsRLei38TgLV1o=3D?=
X-Exchange-RoutingPolicyChecked: NPEBxc5Xa9Z8+P1wmpWBoLq+oSsM0vZn3S8yz0Aem57TlHTJETKll6XV2aGkpIN10xB6I5OjkU3pjgYhoEo4ccEsoTySxXjNcnMt1KrmMjiTZ6C226PSQO8mskB/Kmq/E+71kmxYzwMVAT8yCFmfYF9lrAkaRLSx9xSvq5mUYRynANyE9NrhJQ/06DbLP6JKI4uRF7OWSIOb6VNz1RoAEPs8epIAlk9I5yxeJtKXvius4E3GmUNrMpMCUtsw1ziyODxJWRNRVAYyYWIEaCwGesDYihbHLN86kxNZ/YmZW1nW1Fhojmt8SMki2PYQj7GFnPZSDzIkwdDmrYRQwIIU3g==
X-MS-Exchange-CrossTenant-Network-Message-Id: fc5d77d8-b635-4e2d-83ba-08dedb560d2a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 11:59:37.1042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cgl3WVRYViYabD6nnTkqHxydT/aI0QA8wbEnD5kwVqWnX3y+f0HAWglywQ5Tqs6XNdu9SaiFuHQsHpy/D2ycXmGHDyQtjHnSXy2gHm6dvL4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6370
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A56807102D7



On 6/16/2026 8:12 PM, Mitul Golani wrote:
> Enable or disable CMRR based on it is being computed and set of
> preconditions. Should be enabled when dueing adaptive mode as well
> as conditions which sets cmrr.enable gets set similarly to disable case.
> Also separate out register writes for both enable and disable case.
> 

The intention of this patch is unclear to me.

> Remove VRR_CTL_CMRR_ENABLE write in the current path, add the same
> when actually CMRR is enabled.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 81 ++++++++++++++++++++++--
>   1 file changed, 76 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5678c3a86796..c979950d32cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -34,6 +34,43 @@
>   #define DCB_CORRECTION_AGGRESSIVENESS	1000 /* ms × 100; 10 ms */
>   #define DCB_BLANK_TARGET		50
>   
> +#define is_enabling(feature, old_crtc_state, new_crtc_state) \
> +	((!(old_crtc_state)->feature || intel_crtc_needs_modeset(new_crtc_state)) && \
> +	 (new_crtc_state)->feature)
> +#define is_disabling(feature, old_crtc_state, new_crtc_state) \
> +	((old_crtc_state)->feature && \
> +	 (!(new_crtc_state)->feature || intel_crtc_needs_modeset(new_crtc_state)))
> +
> +static bool intel_crtc_cmrr_enabling(struct intel_atomic_state *state,
> +				     struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *old_crtc_state =
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	const struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (!new_crtc_state->hw.active)
> +		return false;
> +
> +	return is_enabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
> +		(new_crtc_state->cmrr.enable);
> +}
> +
> +static bool intel_crtc_cmrr_disabling(struct intel_atomic_state *state,
> +				      struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *old_crtc_state =
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	const struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (!new_crtc_state->hw.active)
> +		return false;
> +
> +	return is_disabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
> +			(old_crtc_state->cmrr.enable);
> +}
> +
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
>   	struct intel_display *display = to_intel_display(connector);
> @@ -831,6 +868,34 @@ static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
>   		       intel_vrr_hw_flipline(crtc_state) - 1);
>   }
>   
> +static void
> +intel_vrr_enable_cmrr(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
> +		       upper_32_bits(crtc_state->cmrr.cmrr_m));
> +	intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
> +		       lower_32_bits(crtc_state->cmrr.cmrr_m));
> +	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
> +		       upper_32_bits(crtc_state->cmrr.cmrr_n));
> +	intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
> +		       lower_32_bits(crtc_state->cmrr.cmrr_n));
> +}
> +
> +static void
> +intel_vrr_disable_cmrr(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder), 0);
> +}
> +
>   static void
>   intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
>   {
> @@ -934,8 +999,6 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   	 * even VRR_CTL_CMRR_ENABLE is armed by TRANS_CMRR_N_HI
>   	 * when enabling CMRR (but not when disabling CMRR?).
>   	 */
> -	if (cmrr_enable)
> -		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
>   
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>   
> @@ -962,10 +1025,15 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   
>   	if (!crtc_state->vrr.enable)
>   		return;
>   
> +	if (intel_crtc_cmrr_disabling(state, crtc))
> +		intel_vrr_disable_cmrr(crtc_state);
> +
>   	intel_vrr_set_vrr_timings(crtc_state);
>   	intel_vrr_enable_dc_balancing(crtc_state);
>   
> @@ -976,6 +1044,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(old_crtc_state);
> +	struct intel_atomic_state *state = to_intel_atomic_state(old_crtc_state->uapi.state);
> +	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>   
>   	if (!old_crtc_state->vrr.enable)
>   		return;
> @@ -984,6 +1054,10 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   		intel_vrr_tg_disable(old_crtc_state);
>   
>   	intel_vrr_disable_dc_balancing(old_crtc_state);
> +
> +	if (intel_crtc_cmrr_enabling(state, crtc))
> +		intel_vrr_enable_cmrr(old_crtc_state);
> +
>   	intel_vrr_set_fixed_rr_timings(old_crtc_state, old_crtc_state->cpu_transcoder);
>   }
>   
> @@ -1066,9 +1140,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   	trans_vrr_ctl = intel_de_read(display,
>   				      TRANS_VRR_CTL(display, cpu_transcoder));
>   
> -	if (HAS_CMRR(display))
> -		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
> -
>   	if (crtc_state->cmrr.enable) {
>   		crtc_state->cmrr.cmrr_n =
>   			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder));

