Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78474A6D9DE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 13:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E1210E21C;
	Mon, 24 Mar 2025 12:10:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SO50jqaH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2441310E21C;
 Mon, 24 Mar 2025 12:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742818258; x=1774354258;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wGBniAZIFITVSnd7kMTdnROakyIUhUjmtMX/6SPkKfY=;
 b=SO50jqaH6LxLaBYyMDndnjBQv9uIzECzX/t6akQBB9L85kNLPXGAabVC
 451lE+f5n8wk6Pz/n672Zmfib2Pnc5mp30vhYe7ULfSKopzLbtV+EBLMo
 LkTcEWaFAMSH948GHEBLU9f+xtqojxZp4c3gE9MnP9XJGa43f6/H8lRGR
 d29dL04JbPFN2+j6A/hPQSvtUWD7zZZerXZVJhLGiMlcLl+3m7CmQIko9
 Q0IwoqhS59zJcN9skRkvsHX7O8EJUR3xgThyb/OeXx8G/rMwgtK16HNIs
 gsudo7xmKh4CmbQ/1dBCT9uv4sCiyw4FC0dXo1xOdgot40NgcsNUqBo/f g==;
X-CSE-ConnectionGUID: Zt7qDS/dSVCRdPLiCvIUkA==
X-CSE-MsgGUID: jC5MzkkKR92hB4CPSDQDhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="61541199"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="61541199"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 05:10:54 -0700
X-CSE-ConnectionGUID: puhZQzj8TLejLGGjJTOHIw==
X-CSE-MsgGUID: 57FFZB/sQq29fCmUyehT/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="147234842"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 05:10:54 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Mar 2025 05:10:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 05:10:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 05:10:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZnE/ewyOf1TjSEAZt/0Z0wRCpXUI72PJyiwAhlCrIXdLqSqX3g5uS3lujdDWlm+KBKszj4USFC5D+jf0YFYmYB2M9TehyQ9TeZYcP25ZRSY017aM8ce6rcmVOLBxXeweLxdLA9HPip462t2Ot5MaZMdytrhk0kmrXtnSyXYzHfP4wRkqkjgHAS3PGjkJJmPXkBUlrgtMP2TBNs5r1dKYgX3vfOEdVNwksql6g+lW2oSyzIilDcXV9yWup9ad8TMPGjfcSSkIHgeLS0qDd39KYQmAXyLsgWnRHaKIjf+uKm5IuggB77Gk88TzndcELU/68N2UE78SwnHrKEW4256CPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3vAStrq3HTz6cTZeZZMb6kuMtYhGudNj7cWUaW11aZs=;
 b=uNojbiTcGWlQZM2TKbM86JQ35LvvfvuEB4xjIonn5qzbOFa9DKBRrxe6ScuMA0PM0f5BZodBXSrn2GUU+pNvmRybiI+x4pamJJboWwGi0Tsu9qzNoX3OyzXX/PWVPpnLvbek2/aslcCj93fKcyHznryzJhyzFGoTidRvhwnKwGa/tNI3oq054Ik+JcI2j3+CN1PGuts+MRu/nZgyWO4JsbIEerWPh5Wg4AwtP2mDraeD5AvKOmy4DIObBvdoLu7Lu82Q3NkAekG5GqHuGP+HuqqZBTixKqBvOcSo2DrH0/1Sh+LqybjTNzy3GGeY5U1y+coky9cNRsGcRlaBGCqFwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4762.namprd11.prod.outlook.com (2603:10b6:303:5d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 12:10:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Mon, 24 Mar 2025
 12:10:24 +0000
Message-ID: <19562d7b-97d7-4e5a-bc8f-1ed4956590af@intel.com>
Date: Mon, 24 Mar 2025 17:40:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/16] drm/i915/display: Use fixed_rr timings in modeset
 sequence
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-11-ankit.k.nautiyal@intel.com>
 <Z9rWb5WfuRd6FWoP@intel.com> <f29191ca-b3e8-4cad-b23f-3010c82c0e6f@intel.com>
Content-Language: en-US
In-Reply-To: <f29191ca-b3e8-4cad-b23f-3010c82c0e6f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0158.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::28) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4762:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f8ec03e-c6a9-4ab3-0e95-08dd6accdb15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUdWMVVlTXM1RXZudEk5Z1VEVy9FMnFYNnN2Y3JwQkxrZjI2V2o4d3hZaC9Q?=
 =?utf-8?B?NTc2VFZybklzcmFhWEsxL2tnYXNjVXNETXVEdzUxT1pHTWxSNnZCUlh3TnZx?=
 =?utf-8?B?bFlXOWtmb0FwS3JXQ2F3R05CVnRXQWZJbTVkR2prR2VUS0paRkF1VVVERHpH?=
 =?utf-8?B?QlZ4aUNxOHkvT1NyL0dPNGVxb280S2F2THlIQkxyeDdNTGJKTis0Z3I2ZEhW?=
 =?utf-8?B?MG9nVEVtQ1BHcE11ckFhWlZIOWs3OWJQQ2MrZE5YOHcyc2t6M0ViQVUyWkFz?=
 =?utf-8?B?OEx4UWROWVVRcm9JaWNpL3JQcXlodjdSWmhtNUlSdTUwWkZYY21FMG9udi9u?=
 =?utf-8?B?TjJwMUdMRWFhQUtLU2ZqNWQzUXp4Y3V1NlNOODArRHY2dVJJcFZwaityRnQw?=
 =?utf-8?B?cGVyZktjVkJjaUZ6VWdmM09MdjRPOFlIcWxRYSs3ZDAxN0dQTHUxSzhyVjBF?=
 =?utf-8?B?MGdaZkFFQU00RmI5RFNjaDh2UTBTejNEczFwNWFacm55NXc1bUMyM1Z5ZWhM?=
 =?utf-8?B?RlRHWEsxbEZ3RVNiKys1WkpkWWdqbEdyVElkdkpsaFB5d2JqcnAvaksxaUYz?=
 =?utf-8?B?eWxTRVlzbE1vNEtCOW9PaHJ5SGkyVGJCb1p1WkpGdWlXT1RxcS9lRE5uek50?=
 =?utf-8?B?b1dmR05aQ3M0NDRHNDh2Q3ZnY2ZCa0U1RGxGdExxRUhXd3VuYi9iWXBJdS9W?=
 =?utf-8?B?b0dFNWwyTU1maFFBTEtkd1dHdENoOVNLVlZZNzlOZ204bGdRNkNVemJrOURM?=
 =?utf-8?B?SmtiTW85U01kbnBRWi8zK0NYemF2QkVkVGVDMHFZODZOcm9jTlcxSFRwaU02?=
 =?utf-8?B?MnE2a3FkTk5haVU0bWxZbTZnaTN0Q2dja3dZdWlnaFZtbzFXbWFQYjhmczlO?=
 =?utf-8?B?YitZUHNCazhsNHo1YnVXZzAzd0VsTy9xZGpkV3V6VllhNXgrREl5VnNOb2FC?=
 =?utf-8?B?eEFORUJFZFh2RGJNZEVCVUhNaEE0Y1Mxd2hSTDVMNHJxR0hiZ3NuYUMyUHFm?=
 =?utf-8?B?WmxJUytxUG9oclRTOFFMdEozTm5vY1VqNC9WWnUvQkUyRmRMT0RlZElhQ28y?=
 =?utf-8?B?MGJjeHdRQUdSZ0xuczVLb2FnU1FVSzJZTVlCNEdBYVFLdUdHTkpzd09UV3ZN?=
 =?utf-8?B?MXpFaHpMRU9MdStuN2h2OVdmY0oyeGpWYWtJeS84WEIyZjAxSFc1b0VMWktj?=
 =?utf-8?B?dTdWUmZqYlhmRStvQnVRdHVVY09FckJqSVBLbUQxRVBQalZ2UzF2dVFhaVBE?=
 =?utf-8?B?RGtpVG94MGI4ZWJZaXRCNVhQRDdFSTFBUHBqMitZZjZWZkNDM2Z6M252eVRQ?=
 =?utf-8?B?L3Vxa1ovWlNpT2ttaUJwczErMnR6WmVNYzBodlNWMUtUU3ZmeGYxSXh0RDFW?=
 =?utf-8?B?Mm12b2FSZERtMkh5clg3elkrSUNFNEhrQm05VU1sU3RFdWE0aU5ONDkzbTBM?=
 =?utf-8?B?R2M2czc1RUNNVlZmZ243b3hBRDdqM2JpcHhHMXE3VjRRR2VUb2ZMYk8vZnB4?=
 =?utf-8?B?dFFtVGFSbWV0ZDZVZUx4WnJHOWtOeFJzSjBuQ0ZURGg4T1hMb2pTT0p5SXQy?=
 =?utf-8?B?K2VIelRlUzhqbWhkM1p3WjZPNG5ZMCswZmJSazJUb1EzaXVjNm5EdU5uZlN0?=
 =?utf-8?B?ZGlCbkJNdHNDUGJVN0Y5VXZpZUxDTlpmV3hPSnVhR0ludUM5dy9Camc4U1c5?=
 =?utf-8?B?WTM4YXdrSXNTNjZoV1NWSnV6WnVGRnVHL1RIdGV6T2p2TStSalI3a04yeWli?=
 =?utf-8?B?YVhyVFRhNElXQVE4MmlCdVF2cXk5L1YxUGNtcjgyWi9YSll4ZUxMUThjcHRS?=
 =?utf-8?B?NkdFZS91NFZsUVNoekNVUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXMvS0xiRjkwbGlORUg0UHYxdWVONnFTdG5OSjd6ZFExejR6eE5Iam9GYkIz?=
 =?utf-8?B?VitUMnlDNjF5ZHJxQXRJVnJXdnh6Q2E0ME56M2VYeDVDR0JmeWh5L0JFR3Yw?=
 =?utf-8?B?angreVZHbjk4SjVoMmlwbmhsYys2VmtreWxWaEU3WlRHQUp6eHVaeis1U0p2?=
 =?utf-8?B?MHFLMUxpMFJjTkEzcEFwdVE2OHpXdjgwbkptMFFZb2xaMXVoZVNWQUZTMk1v?=
 =?utf-8?B?S2tkVnVLckZ0eHZlbStoUnlneUQyVDRMQzFBdnJ2bnRncXZ3ek1PUmpmd1BV?=
 =?utf-8?B?anZuek52eUl6NzF6U01HaXVBOXRsN2pUK0RRekl5aVF4Y3NNNkR6TWtmR3gv?=
 =?utf-8?B?V25PcHRaekJTNndBMG1pUmJNY3FhcHU1ei9EZjlIWUtZY3FiVENFbHo0dVMr?=
 =?utf-8?B?UEpVa2x4MFVqUmQzRThMUHByTko3UHI0Z09XZ09zdHhGSS8vb2Y0b0VOL21j?=
 =?utf-8?B?TzhWaEpuRmQ1OE53d05WdXU5Z2tPSU4wZ3JWdmpFWlpHaVVwaEJxU2VHNVE0?=
 =?utf-8?B?QmI3K1lCcjcwM3Q5bEJaWG1HN0c4SUlTak1VdEYvc0piYitaMXZZN3JQcTds?=
 =?utf-8?B?U095Vmxob0pJM09CZzZ1QzlqTmFGd3N4djR4RGxRVDVrd1lNTzM0cnloaXdv?=
 =?utf-8?B?MWFoN2JoY2JZVlhPd29pZHM4TXBqamVMTG94dzZUQ1ZMOC9WUXY3b2JjOGQy?=
 =?utf-8?B?T1FCTTE1V1doTEVIbExKa2J5Y1psS2t0emNqbGJ6elhwYVl5cXJ6QThZTG5O?=
 =?utf-8?B?L1FWS0dRTWVBd2pVUzE5LzB3ZkkyY3UvbGZoeEZXSWRqR24xK0w0Z1ZIdlZn?=
 =?utf-8?B?eDZCOFV5Q1dDT2NQTEVldytiZTB1a2lDQitkUFFUbTA2WkRWZ0M3dmRhcDhh?=
 =?utf-8?B?Vi9MM3VJL2VNcmh0MVM3am9jaHFRbS90eWZSYTNWbmpieVVGYy9HeXZ0UFJn?=
 =?utf-8?B?b1QrNVpZRkFjcXZGOG84YlI1TThhYXF4MUk0L1AveVRwbWk5Mk1Tb1hkUDFG?=
 =?utf-8?B?RDBFRUdQOG5QNHcrMFV4dmpMUG13eTBadHFvbVNOSmY0MXdIVUN0SWNwMGov?=
 =?utf-8?B?UHlnbVhqS2hWcjZPSyt1R1oybUgzdDMvNVFhdkRua3QxMEhtajYwR04xbjRC?=
 =?utf-8?B?WUVnRmNWd3VRK2Z0NUNrWWxkRXJBTDV0dHNCb2c3VWxWRk1MVll6QlRRZmwy?=
 =?utf-8?B?ZENQWDhreTRCbUt1SWVaMnVVbWJDZXBlb3NvSmRuNE1ucVRFWFgwWElwekxK?=
 =?utf-8?B?azBWVWpwNnB1WDdjZkg4dkxsVjdKdkV0aU9ucUFzc3JrRDU3TXpJdTNXZ09k?=
 =?utf-8?B?SDNSOHRsYnJXS3c0eVo2ZXpvQnJwNFl5dE55SjRQT1k0TS9HZkp4OGxmOENp?=
 =?utf-8?B?UW8zTzNsOGhjMHZxTlRQd2t5dE55WnQ3MWd4dDA5Q2xPbmlscHMyVHFXRDVU?=
 =?utf-8?B?QStJejJ4eDBMWml1dmZsYTlocE5tL29mNDNBMVdDeU1VR3c5UnJHeVplVHlI?=
 =?utf-8?B?VDNjeDVnUEdZNWQ1K0l3N3lDWmVWbFJOOXAzUXlsZ2hiaXNBVDNReWlEQmk3?=
 =?utf-8?B?c3B2YllTVWEzNmtFZVVVOWVSdllLRUZLSVh4L2IySldFdDF3cXR3cHhoVHBZ?=
 =?utf-8?B?V09SN29BTUFRTXA0UnJFY3NVU3h1RkJnZTBiSldzYmNQRXVxVjl6b0xwdytz?=
 =?utf-8?B?QWh0bmZ3akZROVNxVWdaUVNKNkNSUjZNb1RYRmg1SXpKc2N0WVNFSlFWSjRK?=
 =?utf-8?B?MWFxNmIwRWpVYkMreE4wc3RCQzdXZmhFZGNHU1JVKzdNWHlFRHhjMVFTN2kz?=
 =?utf-8?B?NVhDMlE0OGtsM2lWQmJOWWdhRG5LV3ZSRkErWDI4UkZ1V2V6Y2hub2xJNDVx?=
 =?utf-8?B?dmNJUE9TQ0g3L3lDbzZOcGw4SlVLa1V6YUsrY25ZOGowRlhKc05EbFBnRmJG?=
 =?utf-8?B?VkxXd0Q0N3R3SlgxZlVSN2dFMGd5MVBrcjc1UEloNHRFb2tIam9xeThXT2kx?=
 =?utf-8?B?SFJ2UzlBVjFBa2NMT3gvT2xmcjJBbXE5MWtYdjFrVk1HZ0h0UWJFelRvcVR0?=
 =?utf-8?B?T3pBUjE4YjlzZ2VUZ09aZ1RtTjlob2lkRk15RDlHYnhqR2wwaEV6bytac21L?=
 =?utf-8?B?cXBjOXozV2VRdHo4K3dqMnExZlhtLzZjRnppZjNlUCsyN3VmOCs0cVFSL0Q0?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f8ec03e-c6a9-4ab3-0e95-08dd6accdb15
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 12:10:24.1592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qdCyS44Euj68NlP17tHpqjvlaYMDGGUpC6N5ox4zsxvGMXRNgAuCovpEpY7RUqp0i5jvq+gp3BITP7eYttY8LxmhNwUORG1Kke+D8U5NEcU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4762
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


On 3/20/2025 11:09 AM, Nautiyal, Ankit K wrote:
>
> On 3/19/2025 8:06 PM, Ville Syrjälä wrote:
>> On Tue, Mar 18, 2025 at 01:05:34PM +0530, Ankit Nautiyal wrote:
>>> During modeset enable sequence, program the fixed timings, and turn 
>>> on the
>>> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
>>>
>>> For this intel_vrr_set_transcoder now always programs fixed timings.
>>> Later if vrr timings are required, vrr_enable() will switch
>>> to the real VRR timings.
>>>
>>> For platforms that will always use VRR TG, the VRR_CTL Enable bit is 
>>> set
>>> and reset in the transcoder enable/disable path.
>>>
>>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>>> v4: Have separate functions to enable/disable VRR CTL
>>> v5:
>>> -For platforms that do not always have VRRTG on, do write bits other
>>> than enable bit and also use write the TRANS_VRR_PUSH register. (Ville)
>>> -Avoid writing trans_ctl_vrr if !vrr_possible().
>>> v6:
>>> -Disable VRR just before intel_ddi_disable_transcoder_func(). (Ville)
>>> -Correct the sequence of configuring PUSH and VRR Enable/Disable. 
>>> (Ville)
>>> v7: Reset trans_vrr_ctl to 0 unconditionally in
>>> intel_vrr_transcoder_disable(). (Ville)
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
>>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
>>>   drivers/gpu/drm/i915/display/intel_vrr.c    | 57 
>>> ++++++++++++++++-----
>>>   drivers/gpu/drm/i915/display/intel_vrr.h    |  2 +
>>>   4 files changed, 54 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c 
>>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>>> index f38c998935b9..44f4465c27e2 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>> @@ -78,6 +78,7 @@
>>>   #include "intel_tc.h"
>>>   #include "intel_vdsc.h"
>>>   #include "intel_vdsc_regs.h"
>>> +#include "intel_vrr.h"
>>>   #include "skl_scaler.h"
>>>   #include "skl_universal_plane.h"
>>>   @@ -3249,6 +3250,8 @@ static void 
>>> intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>>           drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
>>>       }
>>>   +    intel_vrr_transcoder_disable(old_crtc_state);
>>> +
>>>       intel_ddi_disable_transcoder_func(old_crtc_state);
>>>         for_each_pipe_crtc_modeset_disable(display, pipe_crtc, 
>>> old_crtc_state, i) {
>>> @@ -3522,6 +3525,8 @@ static void intel_ddi_enable(struct 
>>> intel_atomic_state *state,
>>>         intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>>   +    intel_vrr_transcoder_enable(crtc_state);
>>> +
>>>       /* Enable/Disable DP2.0 SDP split config before transcoder */
>>>       intel_audio_sdp_split_update(crtc_state);
>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index bd47cf127b4c..d2988b9a6e7b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -1065,6 +1065,8 @@ static void mst_stream_post_disable(struct 
>>> intel_atomic_state *state,
>>>       drm_dp_remove_payload_part2(&intel_dp->mst.mgr, new_mst_state,
>>>                       old_payload, new_payload);
>>>   +    intel_vrr_transcoder_disable(old_crtc_state);
>>> +
>>>       intel_ddi_disable_transcoder_func(old_crtc_state);
>>>         for_each_pipe_crtc_modeset_disable(display, pipe_crtc, 
>>> old_crtc_state, i) {
>>> @@ -1326,6 +1328,8 @@ static void mst_stream_enable(struct 
>>> intel_atomic_state *state,
>>>         intel_ddi_enable_transcoder_func(encoder, pipe_config);
>>>   +    intel_vrr_transcoder_enable(pipe_config);
>>> +
>>>       intel_ddi_clear_act_sent(encoder, pipe_config);
>>>         intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index 66afa66c66af..d4912199c3ac 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -460,12 +460,6 @@ void intel_vrr_set_transcoder_timings(const 
>>> struct intel_crtc_state *crtc_state)
>>>           intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>>>                    0, PIPE_VBLANK_WITH_DELAY);
>>>   -    if (!intel_vrr_possible(crtc_state)) {
>>> -        intel_de_write(display,
>>> -                   TRANS_VRR_CTL(display, cpu_transcoder), 0);
>>> -        return;
>>> -    }
>>> -
>> Seems to me that removing this is what causes the state checker woes
>> in BAT. I think we can leave this in, as our own computed state should
>> always have a valid flipline and it's only the GOP that doesn't have 
>> one.
>
> Yeah makes sense. I was wondering what was missing, thanks for 
> spotting this.
>
> I have sent revised patch in reply to this patch.
>
> With this last patch will not be required, I'll remove the last patch.

I guess we still need the last patch without that for case where 
platforms do not always have  VRR TG enabled.

For such platforms if full modeset happens, the trans_vrr_ctl gets 
filled, but if it doesn't happen trans_vrr_ctl is not filled, but VRR 
timings are all filled.

Since we depend on FLIPLINE_EN in trans_vrr to be set before reading 
VRR.flipline/vmin/vmax, we get a mismatch.

E.g: 
https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_146621v1/bat-rplp-1/igt@i915_module_load@load.html


Regards,

Ankit


>
> Regards,
>
> Ankit
>
>
>>
>>>       if (crtc_state->cmrr.enable) {
>>>           intel_de_write(display, TRANS_CMRR_M_HI(display, 
>>> cpu_transcoder),
>>> upper_32_bits(crtc_state->cmrr.cmrr_m));
>>> @@ -477,14 +471,7 @@ void intel_vrr_set_transcoder_timings(const 
>>> struct intel_crtc_state *crtc_state)
>>> lower_32_bits(crtc_state->cmrr.cmrr_n));
>>>       }
>>>   -    intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>> -               crtc_state->vrr.vmin - 1);
>>> -    intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>> -               crtc_state->vrr.vmax - 1);
>>> -    intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>> -               trans_vrr_ctl(crtc_state));
>>> -    intel_de_write(display, TRANS_VRR_FLIPLINE(display, 
>>> cpu_transcoder),
>>> -               crtc_state->vrr.flipline - 1);
>>> +    intel_vrr_set_fixed_rr_timings(crtc_state);
>>>         if (HAS_AS_SDP(display))
>>>           intel_de_write(display,
>>> @@ -618,6 +605,48 @@ void intel_vrr_disable(const struct 
>>> intel_crtc_state *old_crtc_state)
>>>       intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>>   }
>>>   +void intel_vrr_transcoder_enable(const struct intel_crtc_state 
>>> *crtc_state)
>>> +{
>>> +    struct intel_display *display = to_intel_display(crtc_state);
>>> +    enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +
>>> +    if (!HAS_VRR(display))
>>> +        return;
>>> +
>>> +    if (!intel_vrr_possible(crtc_state))
>>> +        return;
>>> +
>>> +    if (!intel_vrr_always_use_vrr_tg(display)) {
>>> +        intel_de_write(display, TRANS_VRR_CTL(display, 
>>> cpu_transcoder),
>>> +                   trans_vrr_ctl(crtc_state));
>>> +        return;
>>> +    }
>>> +
>>> +    intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>> +               TRANS_PUSH_EN);
>>> +
>>> +    intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>> +               VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>> +}
>>> +
>>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state 
>>> *crtc_state)
>>> +{
>>> +    struct intel_display *display = to_intel_display(crtc_state);
>>> +    enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +
>>> +    if (!HAS_VRR(display))
>>> +        return;
>>> +
>>> +    if (!intel_vrr_possible(crtc_state))
>>> +        return;
>>> +
>>> +    intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 
>>> 0);
>>> +
>>> +    intel_de_wait_for_clear(display, TRANS_VRR_STATUS(display, 
>>> cpu_transcoder),
>>> +                VRR_STATUS_VRR_EN_LIVE, 1000);
>>> +    intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>>> +}
>>> +
>>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>>   {
>>>       return crtc_state->vrr.flipline &&
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h 
>>> b/drivers/gpu/drm/i915/display/intel_vrr.h
>>> index 65d2b0eead51..859f1dc8a6d7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>>> @@ -36,5 +36,7 @@ int intel_vrr_vmax_vblank_start(const struct 
>>> intel_crtc_state *crtc_state);
>>>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state 
>>> *crtc_state);
>>>   int intel_vrr_vblank_delay(const struct intel_crtc_state 
>>> *crtc_state);
>>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state 
>>> *crtc_state);
>>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state 
>>> *crtc_state);
>>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state 
>>> *crtc_state);
>>>     #endif /* __INTEL_VRR_H__ */
>>> -- 
>>> 2.45.2
