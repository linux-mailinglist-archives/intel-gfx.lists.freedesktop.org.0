Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0870EB2D5A1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 10:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9707610E612;
	Wed, 20 Aug 2025 08:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aVMi29Pr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23DF210E248;
 Wed, 20 Aug 2025 08:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755677271; x=1787213271;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RZA6yKxeMbF61bwznIsANFkq1ruwHqnajBpi8ZIHGgY=;
 b=aVMi29Pr2V6lSAN9qxyuFGMtcLrgwlKB8eC6axmAvILDOsitsu0xs/eB
 GSC9i3Tr1McYpnsrEjgYlUchbECwOnnQ5BoqjOeFTUEYW/CzHso9+bC1W
 vDfHET5i3zpnAv6V7EwdUDoY5GGXqiIFPaUT6rfS2ICcNg76KP13FjCqN
 iO7DwQ3QZgKrw2upX3AmWVUngbv1KdvnbMmgUErcc3ehOUHueMB1Pb5SP
 8/ws7svLNyoZR9YFclFnvR2myxLKNhj3mufr/u18+01FpGIdiHAglgpCX
 rmiGjF0bXl1kLxFuEBBIKeI+KBnUZrpughGSs+eIUQ/Nhscb9XXMoKkjj w==;
X-CSE-ConnectionGUID: qni/Ibq1TkqMwLocI6Xhew==
X-CSE-MsgGUID: 6RhbtMMKTNGjOz4H/Dv17A==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="75517856"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="75517856"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:07:50 -0700
X-CSE-ConnectionGUID: p969U6O6Q4SVfI0lTdjjuA==
X-CSE-MsgGUID: gqqQEA8IRvKIt/uTfZjByg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168318345"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:07:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 01:07:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 01:07:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.81)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 01:07:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mfDWDp+t+hm2dDHdiBZiUr+IraLi8eC58uCMSpkZrHtC6//KCw2lCZ+BTzFs1p99ky40GRoUhNpJ4bqUECriyLPpiUYYGIk4cAfgxTazl80um7D0Jc2gXACimhyCvmUunG76v/HyqImHfpADotCoFHXd+9qWCP7axG8u7leVX0jc2S5+pOmG5MC+UUFz0WwxZtq/LingltCQdauQbbaq1rmYl5EU8lW1f1CA/vPqa9yfN9plLmNYv1w9lO2kc1uVGpkF2GQvCs17ndq4JOV988qkjZQFYV9zyht3tOHr8LnuyEH4/3+VaPT2Nbjs3J+NwMmuzuj+CbMpUa9CCqF87w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Pjh+NbqU+ZzBntO5CHvojRMdlH1VPHI/pPM9PpVEoI=;
 b=OdmOGQOpXl+SdBCnDwEYqXWctqtCsUybThN2J8A9/AZt7s4mikRx+t+43gqGabHNtCA9e9F2DZI2uQ9lgqjZDlQzFnL4y4bGcfI6MIKYZSHvNH5DDsNkx7+IuacrHDnN5I+rJ9twFihR3MPTi77zDYuUWKgAyG6GnV41B+hWhr1cqxFHRMeaHp0ZLqU7Zv2Bk2otpU017MeJH8+MGjkCNiEiNBsqbpV/o1pcZHNB8frjucG3jf2T6ChWJb+NvIeDsQM2WIup0ownHt8K8wIOlU+DhX/g6t9UF8VXkwfLXb4DQAjHWXDmZ2OL5oHMU5GO7ya9Mdt2GWq0srVgN4T6wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Wed, 20 Aug
 2025 08:07:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Wed, 20 Aug 2025
 08:07:44 +0000
Message-ID: <7728471e-f831-419c-a415-a6d984c6b653@intel.com>
Date: Wed, 20 Aug 2025 13:37:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] drm/i915/edp: eDP Data Overrride
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20250819080602.84826-1-suraj.kandpal@intel.com>
 <20250819080602.84826-4-suraj.kandpal@intel.com>
 <d1124158037cf3cb0ee9f9912e9c067f707befaa@intel.com>
 <DM3PPF208195D8D72E6302229F3EA47BA27E330A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM3PPF208195D8D72E6302229F3EA47BA27E330A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0045.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6733:EE_
X-MS-Office365-Filtering-Correlation-Id: bf052708-c5b1-4193-ad35-08dddfc0a46d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YWRDRjM1MXNkeGFGaEI3Nno0ZGJPSVhaOUgrSzJVNmd5MkhHbjVEaUZHVjl1?=
 =?utf-8?B?TmwyeER0dDNXZ0RTZHRqS2pWT1lZdFQvZldYbXhKWWV4c0ZhY1JERWU2NitU?=
 =?utf-8?B?VGZCYWdxTy95VEkwYkt1K1FtSnVJWXh1K0FDYkRyWTJ2SG5PbzVHMjNDRExM?=
 =?utf-8?B?QlpKTFpJUldhY3hpY2pzaFJGNzBJcFdYY0dWdG1mOUF0Q1dpOGRtU202MXE3?=
 =?utf-8?B?NHdrOGpLUk1DYXliZldtRG0xZ05sTUZTVVJZK2lXcHMvbFRWUndDWVhUNDlq?=
 =?utf-8?B?enlwanNUbG8xM0xkTHBjZlViVHdMRTdDNnFqbEpERDljQytkeXFrdlhVWnVk?=
 =?utf-8?B?YmREWTFYZ0lZZG12Yms5eXRxV2pyM25WMTZxdllWVkNNMDVWZzdGL3o0WWlr?=
 =?utf-8?B?dHZMWHl5TjVSdG1McXh0MDZUMlB6b1ZWMnZVdEFsZCsvT3JiazhhbjlBMlI4?=
 =?utf-8?B?b3g5ZTdtUkhtWGVLUTk0WWN2MnBaNnJOT3pGY2I4azdrRUVxbVVhdWpleDhG?=
 =?utf-8?B?TGFrUEZHM3BMVDZ1OVNmdjdYRXdTaWcrUkV0NXYxU1BDM2pNM3hkN2RiZ2hI?=
 =?utf-8?B?MWVRNHpLa20xdE96YlphbURPdHh4bzFlMCt3QkR3UjRYQUpZM1gwQVcvZitK?=
 =?utf-8?B?M3A0TXQ3dGdFN3k1YTZEa0RPV2NlN0RWODFSYndCS3VIRW00UDJxSndRbXZK?=
 =?utf-8?B?MXlNZ1dLNGRSQ3lmcUhMMkRJMkEwazlqVnFsNXhYRFU2NlVmNmNRWGJTYktl?=
 =?utf-8?B?MjJhZFBJeTJlMmpCQjZzOTAwWlZkd1VrVi9aS3JoTDJpYXRWeXNEeHF2UUJH?=
 =?utf-8?B?ZVVXSkVQdTlzN21ZK2JaV3RtWnNMYXFRdzRMWVhLVWtPdUYxYS91NFJmalBu?=
 =?utf-8?B?c0trci9tTXNKdWczT0xET1RnNkFvT3N4ckQ0ZGt5R25Cak1MTjFOT0xXSHlD?=
 =?utf-8?B?QzJES2w4eDVSUUVoRVE4bGxRc0REYS9TckNheWxGM2tITG1oc2lHY25iWTM0?=
 =?utf-8?B?cS9jTmxXL3VsTlZRRFBwWXE2UzZGL3dWeE5kcWlNcVB3YzE0MThVekxnTXkx?=
 =?utf-8?B?eUdKTTlCSkM0V1MvYkZvUVZZblg1amlYUEwrL095RjV1QU8xb2trdzNPSklq?=
 =?utf-8?B?TXRBUk9GUmdUVWMxK1VXTlNVMXpuL1VmWEwwRmxHY3RyM0lNTnpBMnpmYzBn?=
 =?utf-8?B?TXljSGJBblUydXBvdWxIbjY4NVBNZnRCNFNQMXRSREhKVHlRb0ZiK2sybTRN?=
 =?utf-8?B?cDRPR0tialZLajNSY1c0NlJ4RysrZGNXMjNMVlRTczg4dTgrUkVDOElia2hY?=
 =?utf-8?B?Mkx5RTk1aGpnbjVudzFyOWZWb2NGUU9tRGRGWDQxWHg1QjRsd1U1OEJtSXVB?=
 =?utf-8?B?amlLWkd5UUJwWEd0YmJwbmhFYkl4THllMGxFeFZQL1VndjF3eVM3aDFNUVg3?=
 =?utf-8?B?NjlYSWZJZzdYM1JwNzU1SUtsMXVIcERtN3ZXK3ZENURma2xkSmoyMUtadzJu?=
 =?utf-8?B?cDNRYTNHUU1pTHBmajFXOE5KYlp2Q2FaUlFTUUVBZnJwWXZOK0RCVis0OTRt?=
 =?utf-8?B?ejVGcXp0RzF3b2pxMWxEVGRoZ1RPMzFTbFRXbklJZFFmN3pYZHFDOWpaN1Ra?=
 =?utf-8?B?ZTJCUEYzVkEveUc2Q3pDWTRJMkcyVHoyVEtob1FZdTVrNlFlcU5rVzQvSFhp?=
 =?utf-8?B?bWgrcnRJWUNhY05xT0VGQ0NIaHZzTVI1WlR5Wm1Oc3d5V1I2bmJvL2NkUWty?=
 =?utf-8?B?QVdBNkd3M2lVNVZvTVNmSzErNlhVclJjYTFMdnkwWUYxUExHK0FlV0YrNS9l?=
 =?utf-8?B?T2ZqRGJ2Y3Y5RFA2di9mdFFkNUQreEovbDhIT2U4ck1lMllYOU4xSUdLRjdj?=
 =?utf-8?B?bW41QUdMY3hjWVoyKzVEOEtOQ0lPV2ovZUpwd3Z5L2VJcyt2cTh0QjJLaXpa?=
 =?utf-8?Q?EHlyTSGegik=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmJwa01zcGQwZDc1YTNaNWthcm8yS09xcUs5ZjFMS3M3M3NUZ2hneklldjJp?=
 =?utf-8?B?ZVQ4bEE5b2ZkVGpWTTMvMTkrMmFjNkdhY3F0ZFl3NVVOc1kreUhDeE14L0F5?=
 =?utf-8?B?YTA4T2JGR3h0RS9NMWhIQU5VYmd3VXRYckhlb0l1ZDcydkZwcGE4OEVVZFkr?=
 =?utf-8?B?SEo0d2EyUnA3N0M5VGhSdjVubUF1a3dzYTNubFcrSFE4anA5OEFCL1VFWm9h?=
 =?utf-8?B?bE0xRmRkRm5JaXdLaGRnMVdSNlh2bW5xd2pKMXJubVZRbG9BZy9WeGZOMkNq?=
 =?utf-8?B?dFlpZFZtbWNLY1lnSVhUejFyNERvMElreDBSeGVxa0hiZCt6bWJ2QXV5bUt3?=
 =?utf-8?B?b1k3N3kyTHFZV2RCem42dzNEcXg5dklxZEowSHVUNWFIc0RiWDJVcGFVRzVq?=
 =?utf-8?B?ZjlGYkR4L1d1aHpOZ1F6MUtzLzgraVlEMk5tUXFSR2dVS3JIVnVzbFNoQnB4?=
 =?utf-8?B?RlJqSkkzNFdOYUphb0IzTVhkeG0ySitmUmo0eFBqNlNYNHZoN3JqVkhCRGxv?=
 =?utf-8?B?NVBUWERLR0lEaG5MaTVmSGNXd1dLWTJlUzJFS0lybURzSTUyMC9tL01XbFND?=
 =?utf-8?B?SldXNm8vclFkMy83ZTcwVk91WkkrUGlOcVlCbVVsWHB0dDJCTS9ENkRkNURE?=
 =?utf-8?B?a2FvOGE5ZXNNdEs1Mlo1WnREUkpGa3RoVXlxeGd5V2V6Q05ONm1LNHFmKzA4?=
 =?utf-8?B?Vm9oYlk1ZlNHemZBcUtSY0RGZzlxb2ZpMURYekNnWmUzQk5uWFhsdDk1a1Ju?=
 =?utf-8?B?eWEydE9xTFY5YzloeE9SN1F5R1o5d2FFQUFUTjE0M3dkSWx6bEtyTTNLTnhZ?=
 =?utf-8?B?MjQ4aDRFOXJHd1hCMG9VUUF5R3hnK0plcDdnN3lMdEVkUHBRMm9xOWFndDlX?=
 =?utf-8?B?M2ZCQUZXR0N3Y1N0R1JYcFV2TmlRdmpmVU9mMHczRmNzSCtpSExPV1FoUUJv?=
 =?utf-8?B?QnVzeUQ0bkhxQWg5WUZlYUpPMXlaQWdmWWE2dEVoTWN5QW9JdFRxbmlKWFRN?=
 =?utf-8?B?VTFybkl3R2JtQnBhUUdmbFYyNzkyeGZJczJGaDVpS2RXMXRiL3FDUjNEekdt?=
 =?utf-8?B?WmIwZTZDbVdPRWNRckYxemtHRUdYSVVkN20xeEhqUzlYd0pFQzFUdlBEaXBT?=
 =?utf-8?B?V3daM3dSN2ViSUFhTEg3aHFqdkJMQlhldUI2bVhlRXFCUjkyQ05FaGVXRzgw?=
 =?utf-8?B?WkJESWNwWUQyVjBjeERLOFpVWFFlcUJvWld0QmRRZG9DNXZXUW9YUmt0c0JK?=
 =?utf-8?B?UUpGcjFqd0VYOUFxMVNaSlEzanYzemRVL2p5U0plSHhJMS9INWE4S2ZUc3ph?=
 =?utf-8?B?RFBodkF6Z1ZXbjhCWDFGbCtYc3F6Nkd1eHVSR0hLVUltRFVuNFN1TE5ROThD?=
 =?utf-8?B?Q2VBdGxObU5nakE3M2dMd093TGZjajltK2hZc3lBV3dTbTl2Rk93SVNuemFx?=
 =?utf-8?B?U2lZUi9PSjNGb1ZIemI2dWJzUVlRcDlRRml0MGx4ZHlubHRYbkVrLzc2aFUv?=
 =?utf-8?B?T1pKd21tMFl1V2lzbzBPYWVKUTkrWW9pU2duTFRVeTJEZHFtSUd4OU9pbDQ2?=
 =?utf-8?B?K2taS3gycndDT3BkckNKeURaYTdUb1VIUnIrTDVEQVZldGlBV0dEVWg1aDJG?=
 =?utf-8?B?VVI5Ykw5ZGdtdTAwR29wQml6YWdoYllid2lzMkl1K2Z5QXYxeFkyczVmeHJj?=
 =?utf-8?B?a3RzYUdmelorS0E1TzE5WmVla09mcmVPZ2w3Y0F5VmN2Z2pVcTRFdnlQMDZh?=
 =?utf-8?B?dnV1NmV1ZkQ0UWRyZllRczFONEZ2WVY4ZGx0NXpIRVpCV2xFMXVYc2tYSi9G?=
 =?utf-8?B?UkxrMERtejhHdncyVzNFanpHQjhZTDROWjdGZFQ1Vm93UkdtdHRxRFc0MWg2?=
 =?utf-8?B?OXlPZWROWU12QTY3Ykc3NjYzam4vdHVrcEsrSXdrZHZvYmlhc0VSSFMrOWZH?=
 =?utf-8?B?eWM1V3RiajBiNUNQdTRiSk9SeEh5bGx1ZzhEMVpVSVJUdzB5Znd4Q1lWWnBm?=
 =?utf-8?B?eGFCL3Z5Nk1NL2M4Q0FvYlVLdEV1eDRjVzNpYTk2ZTBNMFlnOXZncVdsUlph?=
 =?utf-8?B?UFBLc3o2Z2xxMFBjMEpsWjl5SXk1S0g1clp4NkExMnVsQTcxVXBadFE2QXpW?=
 =?utf-8?B?NVoydmFwdlhtUHh3bVBFekZ1SnJ2VDluVVVlT2k0djdoc0NNOG80TmFIQm5z?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf052708-c5b1-4193-ad35-08dddfc0a46d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2025 08:07:44.5300 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QJyaw0Zll7L5H8n97bPJuSdUB19LEtl3jKaimU6lFAiVXCgRYmPR8d/EjPGl0hD4Tx/uHjchNsH7LXJpcKgvabhh2Ya19pGySCeakyZ+vOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6733
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


On 8/19/2025 5:33 PM, Kandpal, Suraj wrote:
>> On Tue, 19 Aug 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>>> We need override certain link rates in favour of the next available
>>> higher link rate. The Link rates that need to be overridden are
>>> indicated by a mask in VBT. To make sure these modes are skipped we
>>> don't add them in them in the sink rates array.
>>>
>>> --v2
>>> -Update the link rates after we have a final set of link rates [Ankit]
>>> -Break this patch up [Ankit] -Optimize the assingment during loop
>>> [Ankit]
>>>
>>> --v3
>>> -Add protection against broken VBTs [Jani]
>>>
>>> --v4
>>> -Fix build errors
>>> -Create a seprate function to check if edp data override is selected
>>> and using the correct vbt
>>>
>>> --v5
>>> -Use correct number to check the num of edp rates [Ankit]
>>>
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_bios.c | 15 ++++++++++++++-
>>> drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
>>>   drivers/gpu/drm/i915/display/intel_dp.c   | 22 ++++++++++++++++++++++
>>>   3 files changed, 38 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>>> b/drivers/gpu/drm/i915/display/intel_bios.c
>>> index 444ed54f7c35..05a74c3bc9af 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>> @@ -2521,11 +2521,24 @@ int intel_bios_dp_max_lane_count(const struct
>>> intel_bios_encoder_data *devdata)  bool
>>> intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data
>> *devdata,
>>>   				   int rate)
>>> +{
>>> +	return devdata->child.edp_data_rate_override &
>>> +edp_rate_override_mask(rate); }
>>> +
>>> +bool
>>> +intel_bios_vbt_supports_edp_data_override(const struct
>>> +intel_bios_encoder_data *devdata)
>> Why are you adding this function? Earlier versions didn't have it, and the reason
>> for its existence isn't explained or clear.
>>
> This function was added in v3 (I did add a small mention in the commit message I can maybe elaborate more there)
>   in response to one of your comments in which you mentioned the
> Possibility of ending up with a broken vbt that masked all the link rates causing us to have no link rate
> To drive the edp with this function now checks if we have at least one edp link rate using which we can
> Drive edp if not we do not modify the list of sink rates at all.

Rethinking about this, instead of hweight() perhaps we can define and 
use mask:

#define BDB_263_EDP_NUM_LINK_RATES  12
#define BDB_263_EDP_ALL_LINK_RATES_MASK 
GENMASK(BDB_263_EDP_NUM_LINK_RATES - 1, 0)


Then this can be used as:
if (devdata->child.edp_data_rate_override == 
BDB_263_EDP_ALL_LINK_RATES_MASK)
     return false;

This will avoid hard coding to 12 and will be more intuitive I guess.

Regards,

Ankit

>
> Regards,
> Suraj Kandpal
>
>> BR,
>> Jani.
>>
>>
>>>   {
>>>   	if (!devdata || devdata->display->vbt.version < 263)
>>>   		return false;
>>>
>>> -	return devdata->child.edp_data_rate_override &
>> edp_rate_override_mask(rate);
>>> +	/*
>>> +	 * This means the VBT ends up asking us to override every possible rate
>>> +	 * indicating the VBT is broken so skip this
>>> +	 */
>>> +	if (hweight32(devdata->child.edp_data_rate_override) >=
>> BDB_263_VBT_EDP_NUM_RATES)
>>> +		return false;
>>> +
>>> +	return true;
>>>   }
>>>
>>>   static void sanitize_device_type(struct intel_bios_encoder_data
>>> *devdata, diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
>>> b/drivers/gpu/drm/i915/display/intel_bios.h
>>> index 781e08f7eeb2..d24660bcc7f3 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>>> @@ -276,5 +276,7 @@ void intel_bios_for_each_encoder(struct intel_display
>> *display,
>>>   					      const struct
>> intel_bios_encoder_data *devdata));
>>>   void intel_bios_debugfs_register(struct intel_display *display);
>>> +bool
>>> +intel_bios_vbt_supports_edp_data_override(const struct
>>> +intel_bios_encoder_data *devdata);
>>>
>>>   #endif /* _INTEL_BIOS_H_ */
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 54d88f24b689..f6fad42182ae 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -4277,6 +4277,26 @@ static void intel_edp_mso_init(struct intel_dp
>> *intel_dp)
>>>   	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;  }
>>>
>>> +static void
>>> +intel_edp_set_data_override_rates(struct intel_dp *intel_dp) {
>>> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>>> +	int *sink_rates = intel_dp->sink_rates;
>>> +	int i, j = 0;
>>> +
>>> +	if (!intel_bios_vbt_supports_edp_data_override(encoder->devdata))
>>> +		return;
>>> +
>>> +	for (i = 0; i < intel_dp->num_sink_rates; i++) {
>>> +		if (intel_bios_encoder_reject_edp_rate(encoder->devdata,
>>> +						       intel_dp->sink_rates[i]))
>>> +			continue;
>>> +
>>> +		sink_rates[j++] = intel_dp->sink_rates[i];
>>> +	}
>>> +	intel_dp->num_sink_rates = j;
>>> +}
>>> +
>>>   static void
>>>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)  { @@ -4327,6
>>> +4347,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>>   		intel_dp->use_rate_select = true;
>>>   	else
>>>   		intel_dp_set_sink_rates(intel_dp);
>>> +
>>> +	intel_edp_set_data_override_rates(intel_dp);
>>>   }
>>>
>>>   static bool
>> --
>> Jani Nikula, Intel
