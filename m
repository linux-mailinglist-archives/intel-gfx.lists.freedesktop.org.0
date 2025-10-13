Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA8ABD135B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 04:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D4B310E367;
	Mon, 13 Oct 2025 02:23:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJg6g/Ay";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DF4A10E366;
 Mon, 13 Oct 2025 02:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760322198; x=1791858198;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i9exrVlIbX7/tegZEUb3UioWsdkQbADZ9bDBowknfKE=;
 b=nJg6g/AylHItqL13mpamWKoUzQk13UeKiKXGppdXydqq9aZGa7DUiUts
 Z+cEmdJRrfwWmy+AOYCfomOe+ZOiz5W13mIipFyYnZ5+GQ3yumhhkdzlu
 nOcOLVPtDLirCF+FykVpg8wosCO5Gae4lVAGe7NfrQaBwk37nRv24FQld
 YVmInzExzOZRqzwH/1RT2XJ7FFvWo2N4F3GFKhnCmLLgjyC7bcu/aHBHF
 UIT89sRt+mKSuTuQ92GJMgdGdg3k7fgHpxxG2QPJrBfQvTdhb5UkxFWxY
 RRDzjVKJFVuNHPfcXCQWe2j+M9Se5GNi+ZPaHLBoATUELiAeMlYVa2FeG Q==;
X-CSE-ConnectionGUID: v4KuhdMSTmS79xWn3gFSmQ==
X-CSE-MsgGUID: gkTGiYUtRtS+/Hhjti2QnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="73555456"
X-IronPort-AV: E=Sophos;i="6.19,224,1754982000"; d="scan'208";a="73555456"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2025 19:23:17 -0700
X-CSE-ConnectionGUID: WkKoKepbQ9GpuqiZ8/OtoA==
X-CSE-MsgGUID: kZ2CVW8eQHil+J4iwQc7BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,224,1754982000"; d="scan'208";a="181898823"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2025 19:23:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 12 Oct 2025 19:23:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 12 Oct 2025 19:23:16 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 12 Oct 2025 19:23:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l3/PdOPQ7Fa/eEFGRTaqB1+jUv2dSnq+4z2NxqCtZWIw0XgSscIq7XzcfNohhL9TrJ7Op5zwW5bpanb4sygvT6/tjGgzMkbCR9IyMoMjzZlp04OGqC6DLDPPEywhdWvC2k7+QGftjmqRb+sYfQ3/IgJ/LP09dnSFX9qo5AikvGX1znGhOoJco4v7+/7ytKIi87nyKb9aklG9H80iNTZ3+yu0dUnMbucfb7m9I3rAMmnlyg3YxwCdSdEirk1gWgmIEzkcuKobRkyCX+AzjfY8zxmIK9eyvPcgEwpyXBmvxQtUWV2+K0ihcK3QMzB71XWCTbS9JHW85+SCiqT3ZBPL1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g0dZsw5UTZfoku5nYklPopXs3aT/P6mSYHAV8q0yWQA=;
 b=wqNXVwlvUUhQdU8JOBly4Mu4ETRgYi6nKQoLAVOlv+L1hdRwuGepqac2CLN5Rktt5c82+6xCBHSmn3OHLGoqeQ+kD4CmawhJbTwZ1FVmMXazseazk9RS7PIHbQIP5EMlggAGkMo9Cp1E8nP0SxD3q7eOG39VzzdFmRWxqVptqiAmKVIkMHgRrJrhUnu09m2U/cexRV2mUxN+ZfEr0REg5HByhjT1HmubzXtEGkF5Nkk/zfbeEV9UNDhsXH31KPd/fcnJXvQnoWKTLwkbeRYdl7knzBAETwChXqHhp6pM2C8msftu26+QA+Urblvor4H2Imar3YERijAlx9hV0raqcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4848.namprd11.prod.outlook.com (2603:10b6:a03:2af::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Mon, 13 Oct
 2025 02:23:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 02:23:14 +0000
Message-ID: <c1d7fb08-6ad1-44f6-a648-a3a18d19fe03@intel.com>
Date: Mon, 13 Oct 2025 07:53:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] drm/i915/display: Add vblank_start adjustment logic
 for always-on VRR TG
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-8-ankit.k.nautiyal@intel.com>
 <aOkgpe74FsEX8yi5@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aOkgpe74FsEX8yi5@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0075.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4848:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c76bc9d-a4cc-4851-206e-08de09ff7647
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWZtM21RNzM5NEZkaStYeTAvWWNXL2VibWpKOENhQ3Q4OFM5RUNTRzRJTGxH?=
 =?utf-8?B?blRuc2JGd0g5N0hZcGxqQm1qZEROdXg0RDVvdzlyV2pjaVNkSjdpTmo5LzR2?=
 =?utf-8?B?eDcvbkFyd0RGZ1V6eE5yR1NoWllvelh4ZzVDQVFyL05wVW1XOEFyanhlRG1N?=
 =?utf-8?B?THlJaGsxZmE1SmJob092SjRUQmRVNEZVcTVqMXdYSTk5OFkzeGYydDU4Mm1s?=
 =?utf-8?B?T1pIQThBNm1sNUJhcTZhZE1JQkM5ZWd0bkdOVlBwZmVuTWQ0dDR0RzFuRzdY?=
 =?utf-8?B?OHB0MUlza1VZN253U1JIcThxc01UeGNMdEpxL3hlNjhvbTUzSkhrMGk2em1x?=
 =?utf-8?B?NlpqNlA4cDUwSjNtRVl6VERCZnpxcVlKZUwzOXkyVCt0UHJ0dnk5VGRrMUlB?=
 =?utf-8?B?VnJ0TmNtaDNxZitMWkRvaUNnVDQ1cmszYmlwdktKY2RpYmhhRkZzck5YUlVp?=
 =?utf-8?B?R3BlVzluYXRpQmMwNnlpNDJNUmIvVlh4NHVTbHNLcDRuLzFDSXl3aHUyaG82?=
 =?utf-8?B?cVc4K001VmJ0TWRZam5SbHRpcjZFRis5TzhESlNqalJpdnlGaUMrZmxrMzBk?=
 =?utf-8?B?VU9CeVF3UHdNVlI5YlZQMmpxQUxRN3pRRjNWSW9lVEx4VXhrNEJ5TWpjQzV0?=
 =?utf-8?B?bFMrWWxta2gwNm9mMkR5dmk2UUtvbjFPYlNLL256Z1ppRUxiekZoVnJLeVlF?=
 =?utf-8?B?ZW4rQUVPZDE1UHFXOXNHbVNNYmZDL082RWVrMFpVNXk2aktoYlNJOG5yYWs5?=
 =?utf-8?B?S0MxaEhFSUVvYmVTZkFsQjVOcXp6cTYwYVhONG4vM0E5N2JZWFJXZldBT3J2?=
 =?utf-8?B?ZlZ5aXozdEVUdFdOZkplWlRwamlIQ2hjLzU3eVUxN3JtcWVzUURuOGkwK3Rr?=
 =?utf-8?B?d3dRRmlpejBubUcrNmxCZ3llN1p2SEgwVnhUSGZsdG0yYU1XeVJGSHBRSmNX?=
 =?utf-8?B?bWcwZk5CcmhtcjZUeUU2NkFmdHd1akpuSms0VWZoYnVWM1hxcCtsTFBVanQv?=
 =?utf-8?B?djhoajRYMFdHTkV5TnJlbTlrdlluNTB2K0pLOENKaFFldVA1QWtxWTYzdkIv?=
 =?utf-8?B?QjJPdGcya0I4YTB3TGNSbUZHblpidnVTV3dlY1R1QkZZSEJkZWdSR2IwbGMx?=
 =?utf-8?B?NzErOXZYa3czandENThRV1ZrRjUwUThuTm5HczZEMTJKdlp6eFFrMHZ2SkQ0?=
 =?utf-8?B?dHAwaFc4VnZQd2ViSElzS09BQUtENHhwcXdiQlJKRnRaaGh4SHRab0dNYUdV?=
 =?utf-8?B?QnBkL3lBUlB4Wmx0V1NSTGdUMkd2Z0dOZFh2UDBFQ3ZVMnVtbm9oWElNSE00?=
 =?utf-8?B?RU1WUnpqd1VpTkk1eTFkT2EzN3o4bnZrRjhEZFVsclF5MmJESjk0TERacGQ2?=
 =?utf-8?B?SURvSzhKd2Z1d1Z2RDB5L2s4WG00UmV3NE9CU01CZ2FETklCaUJ0Sko4S2wz?=
 =?utf-8?B?eFc0cUJHWFhKeHRpR0thTnREemhNRDFEV0pIbjk1VVFaMkphL2h4MEo2ZlU4?=
 =?utf-8?B?bmJ5QmxJUk1HaUZyRno2Q2o2cmJ3Skp2TmxUSEdUM2JBcU5TVzRxTWZJOGFy?=
 =?utf-8?B?eHk3NklyYS9YaWwzbi83V2ZNMnRPbEh4aS9CTzBUQUpRSExtOUVSNkt0elZv?=
 =?utf-8?B?dHhsRk4rV1BYWVZ5Y05Sc1V2S1lGNHB0R0tJdFR2VzJkcml5OGw4elRHcGYw?=
 =?utf-8?B?OCt3ZDlCMzlrWlB1SWFIcVVuaWxONkVab1pHRWxzUWtnUHc1NXNIZVI0UzlI?=
 =?utf-8?B?ZVVRQlZTWkM3enFHVjFUeFl2Ky96ZEdVbTBKcWRiZk5Ed2k2Q211VHhSbmtH?=
 =?utf-8?B?UVVMdllnVTUxLy9LaUU2VVVCbGczbjlIVE9Ic2ZsTEdRMWJWanRpb2tGenZk?=
 =?utf-8?B?ZG1JRjMyS3VURWNZeWRLVTFUVFc5blI5cG96dGZIRWc3bDNpUnkraXJJQkFC?=
 =?utf-8?Q?eaekvNA/Z7ZtZ9pb9n5RaD6vi5/CLiRD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHhGYnNyV0dVeU96NWNEU0FjUHMzK0pQL3d1UjVyYjR5bmg5TC9CL3ozTG9D?=
 =?utf-8?B?U0taWk94WUZKb3Q5b21La1daU3hEQlVDZktLN2xLMVdwMDR6WEhpSUNnNHR5?=
 =?utf-8?B?Qzc5d3Z3Sk9BREt6dlhOQndZNHdoclFSUXJ2OWpxYUNnckRIbk02Y3plRU5l?=
 =?utf-8?B?OXc1cUNDdnRqbXhyM004MUZwME9CS0lsMzRyN3Q3ZXB5Z1Y2SVBtei9XMElj?=
 =?utf-8?B?ajZZSTZpcFhYLzlSdUZvV0hJaUxiWG5LakV5WHZrSStyTHlOd2h6VVpRbXEr?=
 =?utf-8?B?V0U0aUpGYWdwWnk5UlUyaVdXSGhlYmxyQUFieEFBUzZjZ29CTnZQTjVTMkJY?=
 =?utf-8?B?ZnFvb0xPT215V3ZnRlJqRkxSNGJ4aU9ob0NRY3pIQldMNUEyeWprOWJuOHRZ?=
 =?utf-8?B?ellZLzdEeUZhY3c4MWtPajh3Q2tHQW93emZzSjhQcXlZbFJ6OUhwNFNtVUZM?=
 =?utf-8?B?ZWZwakx3T0hrYzBXb0Iyb2pGRmFJVHZvYnl1OHkzQzR6ZmRkdFR0cWM3aWsv?=
 =?utf-8?B?OXVhOGtZSFA2bTIySFFTQTR4d3ByVVZhT1RiUDN2bURLNEd3RzdkeFBSdSs1?=
 =?utf-8?B?Vk10RndYdUgycHdLYmQxd3NNTWMwcmFSam9iSk9HOXBERlovQXNmQjJ4RGRw?=
 =?utf-8?B?bnBHMUg4QnRkOFpyTjkxT3UydzJEMmhUR0ZvbUlyNUN2RmV3Q2kzSitpRzZn?=
 =?utf-8?B?TnVZKzE3dnhQbkpDN0hEQU1yRmFFMmZ0N0tvTi94alk3TEZwaHhIbFJYeUow?=
 =?utf-8?B?aklKbndNQnlkazZoc042cUxxMHgyc0lIeEFpOGdXOG9iM0U4bFVGMitqc3kv?=
 =?utf-8?B?VlRPNURSZzY1KytvYjZKZG9Td20vOCttYXJkSGRuUnlLR1R5MmtjU2dHVXdm?=
 =?utf-8?B?SlppNU9GTFBNbURVSk00bXZDT2U0c3FYTFo0MUlGT2JVditRWDR2MTEzSit1?=
 =?utf-8?B?M1FndVlFSTVjK2VCSzNaRFF0cFdIbk1zNi9ZUUlwODIrUWZJOGlhcUFEQWVl?=
 =?utf-8?B?YzQvb0VCZGZwaEh2V2VLRWthcW8yMUt4ZFJTZ3FGTnlybDhIaHR0a2RkYXNU?=
 =?utf-8?B?dm5xNTkxWXZzMms5L3FsckRBdWdDYjVveEltV3MxWnQ3Z0xadms0eit1SitH?=
 =?utf-8?B?WDB2QTMrbStOT01xS0hqZGVaM2wyajdoWDZpUjZsMSsrU3Nud3RhcFhhUzNy?=
 =?utf-8?B?bXlWV1VmRGF1L2FhS3R3UDQ3aTNhU21kVktFWXBISSs5citLRWhyK2NmUmEy?=
 =?utf-8?B?bFdwajFXUnFUeFZZZ0ZHNURRd2V1Ti9FcnlnYS9VR2RIWlgrOWRpMGpqOEpN?=
 =?utf-8?B?NWJWS1BEMUEwYWdWR3p4cVJpWkV5YjJ5ZGt5T0FvU3dMd2ZOd2l3RmhSNjJH?=
 =?utf-8?B?QUVQTUt6MVlwYm1TOGZ5cDQ2amwwczRad3NwMFJDMStvZCs5UlhUckswL1ZS?=
 =?utf-8?B?dk5taDFsanZpZ1lWL2hUeHlPdSs5Q3I2RlQxVXZZQTBpMmI2TVR0UFIrbjY3?=
 =?utf-8?B?QmN4OGNZQkdCNkd6dUlCdHBwMHU5TGFYekJ0WkhrSWFBTkt4ODkyRXQxRERJ?=
 =?utf-8?B?UEt5dzJBaGRNeCtQaHhJMFY1V3doYWpFcmpkdzVMQndTOUNzcjZyUmRhUVZz?=
 =?utf-8?B?K2ZQVjUvT2w3cEEvSXdHenNVT0xkV2dnU3ByNlFRNE1Ja3JsUjBPcTF6RVpt?=
 =?utf-8?B?NUNJb1R4WWVOeGFrQlN1MDV0VS81cTdSV2JwOEg5NGRVOFl1S3pXMTB2ZlRz?=
 =?utf-8?B?YnVJTFJ2L0JSTGlDRWhMV3NSaG5pTjNFNGtTdm56MDV5ejlJUkE0QXJYanhV?=
 =?utf-8?B?MzFYT0hLakN6dW16cEpPZWJaUW5zenlUb1RTY2Z1SitMTExGRU45a1VCYnBx?=
 =?utf-8?B?RmtGR1N3YTViWVh5ZmJVS2dQanBENHY5K29rRU1wN2Vwd1p4YlBpdWJTally?=
 =?utf-8?B?VWtvQW9NMG9TQ0dERU41VlVvbU9nQjJXZXc1VU1Lei9GQWw0ZjFCbGlaRjBI?=
 =?utf-8?B?c3pCM29zQ0gyVjJxbTlLbnBzTkp4cTlCYWpjSkh0ZkxDRzByZHFEUTlUMlBv?=
 =?utf-8?B?Q2ppekRQL2lERFNVeFp4OGcwYkRFTm1kdXNxcE9rd1lmVjFtUVMyUXg2bXZ0?=
 =?utf-8?B?TW5aNk9PcTQxckNzN1VBUWNHVTNuYm9QWXhuTjF5YmVFcXdKek1yanBjMVRN?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c76bc9d-a4cc-4851-206e-08de09ff7647
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2025 02:23:14.2639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BfnMNSLxvdi/twjzwP2NL6VM6q558CLxxevEU9oWYxDa/OKLCtnmoLJqy7KnLgEZfekCbQEGugRqQ3JZn8THUkVT7Ia1+tBgHsyxYQpJ4Cw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4848
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


On 10/10/2025 8:35 PM, Ville Syrjälä wrote:
> On Thu, Oct 09, 2025 at 02:31:01PM +0530, Ankit Nautiyal wrote:
>> As we move towards using a shorter, optimized guardband, we need to adjust
>> how the delayed vblank start is computed.
>>
>> Adjust the crtc_vblank_start using Vmin Vtotal - guardband only when
>> intel_vrr_always_use_vrr_tg() is true.
>>
>> This also paves way for guardband optimization, by handling the movement of
>> the crtc_vblank_start for platforms that have VRR TG always active.
>>
>> v2: Drop the helper and add the adjustment directly to
>> intel_vrr_compute_guardband(). Ville
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 221b25832e56..5f9b8e5c48be 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -436,7 +436,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
>>   void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> -	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>   
>>   	if (!intel_vrr_possible(crtc_state))
>>   		return;
>> @@ -444,6 +444,10 @@ void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>>   	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
>>   					intel_vrr_max_guardband(crtc_state));
>>   
>> +	if (intel_vrr_always_use_vrr_tg(display))
>> +		adjusted_mode->crtc_vblank_start  =
>> +			crtc_state->vrr.vmin - crtc_state->vrr.guardband;
> Since this is for the fixed refresh rate timings I think we should use
> adjusted_mode.crtc_vtotal here instead of vmin (yes the two should be
> equivalent at least for now, but I think it's better to be consistent).

Got it.


>
> And this should be squashed with the readout equivalent to make sure
> both sides stay in sync so there's no possibility of angering the state
> checker by only having the changes on one side.

Right sure, I will merge the two patches.

Regards,

Ankit

>
>> +
>>   	if (DISPLAY_VER(display) < 13)
>>   		crtc_state->vrr.pipeline_full =
>>   			intel_vrr_guardband_to_pipeline_full(crtc_state,
>> -- 
>> 2.45.2
