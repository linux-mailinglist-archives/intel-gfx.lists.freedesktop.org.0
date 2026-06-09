Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EOAZNaiCJ2qXyQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 05:04:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3194F65BF57
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 05:04:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FXINVF0I;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A75B910E061;
	Tue,  9 Jun 2026 03:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7247A10E060;
 Tue,  9 Jun 2026 03:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780974244; x=1812510244;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HWPcazKrcpAla2N41lbpnJSNbgTTf0htSdQtnPupXiI=;
 b=FXINVF0I5rG12+9S2eYFoIqaceD/IaLSuKLolCNcO43NsmbVEmLoUUis
 XywxUWlZvBYBQ+UfEPSdRC+jtu9lHhRMTbl7kBU6GH9WZpfZVRY7XF20o
 rb44FHmW9Yg5EVl9Wot4InLIEkHx452pciZXyH7+D/zLJDdURZEZT39JC
 6jalO9JqjFcr8ouBENDFZYtif02eQmTPyzrhECm0DwLzuRThh62raVmLJ
 nUN0B8PhRXwRYG3u9fWOOUtE+uiDJxF94oa5ij7CKeEc+CZUvUinaEY8o
 dLp7E93jOOq53NYzjK3sUEb/lwKRgbj5E9dcFIvpcQ5RIDEi9V+Q79MDP w==;
X-CSE-ConnectionGUID: TDVPofoeSGO6fGLJDhcjcg==
X-CSE-MsgGUID: Tt3qGQUsQ6yOi6If4tIM3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85578447"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="85578447"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 20:04:02 -0700
X-CSE-ConnectionGUID: 9txImGZdQQu+VICknHw9Ww==
X-CSE-MsgGUID: 8dnng7LZRqmDFBY3mnhAdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="239396609"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 20:04:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 20:03:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 20:03:59 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.48) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 20:03:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bLewBYIfhYT0J6ColsKMfnOUdPO4KpZ0vhzy89lh0JjPojcTQwtWMmbh7zopdIbMXZYxDiedKYmaJ5Xo3iDoQfI4bnSxWwtR+FGAu356Z+4t7nN01iKw0zSqPvHWT94bJMFyHjuko/T3jiJJIGdYDCPir4FoLREhcKf+CwpNzM/pt9WrYvDYxAh9/V472O65xBFJTye+JYY411Dem15RhtpAEQR+b1qTTkmqoUc8+cY1frJQXgsqJ4nT2NVMxJgQftp1wLEOhq7/sjH2uFcowZ2/JZbjzeCtgd9k8WC226pbtdCsH0JEUrFxURJ6yVNEOi8SRwrmM5IBrXkpqonwjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbcDtCLsgJVxXv7pOXFhcrXUS9VZDf0o4VIeoJrWVNo=;
 b=xW0VEnMlsy2Vs8hA0ibj3cM0yTLCXWMVaCMmeRdxsjPBpDVjGHAp7BdmALolnBNSWMFnTa10Y5HZuDoV3oIcjZedu4WyiFveo3ea18ILp4Iyai3fZsfMhOlX+NmpM6DZoyZdQYFuDZ/MXVwsQ6iwpJNMsjSrX43hfhfd+JYtEXGcjijnMEb3Domg9YXCl0utXLSl7iS6A6ZIe+lTtFrzQzM37SblJe062N3Rg1SSLJ421PALzFmdsQ/jExEy/iFYiOo84O2VmCMn8acBehpbmQuMMI3xkn09/bHQpdvKqcTaJPjYzQJyP747L5NRDzW7VVzTJwMQq/SzAexNTfmzqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6187.namprd11.prod.outlook.com (2603:10b6:930:25::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 03:03:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%3]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 03:03:51 +0000
Message-ID: <0ff3057a-a2f6-4c8f-a295-d186ae4d248b@intel.com>
Date: Tue, 9 Jun 2026 08:33:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] drm/i915/intel_panel: Fix seamless VRR mode switching
 for DRRS panels
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <navaremanasi@google.com>
References: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
 <aiA8bL4E1SCZQVsw@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aiA8bL4E1SCZQVsw@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0186.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6187:EE_
X-MS-Office365-Filtering-Correlation-Id: a53621cf-a8fe-49ed-3412-08dec5d3bb98
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099006|11063799006|4143699003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: sUwAn+gDGSVqRObswONmdemKTCb0mfd7TVaJrxxCxGzvuM4aFg9KUfkNoC5aoI9aLMFuIW3qW9Z0nosxIXMmnN/SEdtibJpHwInGfxwO3mLJGvBJxzOhMf6whrZV90+Rhzn6iD/eS0iiumz+CSX4cfjOpSTrVSFjwqBORamzyjXMuXI4NKiO34o6Z0EvIdT08YfKqZrkHBd3KowHslQ35DjfnKE//HC3jA2bXU8aN6sAdefcjrLD/qVgso1YR99NEY4AN7X1Akp+14RTbX8/ep8PtiFsDIuWHgVOc6kxUkSneEW8yIuON59Fm7rLIQQyqmxP3miRU3b5Tklm8QDm5dwTia9APTM67ZREutLFOAf5QzmzyDC76ivAz2cg/t9iAMSBCT8nMVuEP3fpiN/7GDUe6SsdheDUfZEplX1n3esknvw1KHZRLun5YAEu618lyGDTEyYlCIx0Q9fqJfMQlOUD1Plhz3cLtNlX3cSrfe2FGt8dH+kih2bYpi5CxJfAEAaTdikpx6hLE0dhqB9C5KO+TiCtuU4cwbfACR5JZskgRxjBHh2rArGl4IONtaPHaFyNsvrgCiyFzcUZWJcmFxFUG5X0BfNw0PPmsuunnObFTaHwkYesULUzh1dXdjisCbfsm5hjY0piIUBLsoCQL8nUOaUCBY/FkboienMpBCpd8ukGKxIXJr4K+7V9A3tnVx5dJtom54ff2tXCZmwSFQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHRGVE9jbUpJdzR3NnRQcE5nbFg3ZEhqZ3hGRzJneWJ1MVVtcUVDNm5WS2tk?=
 =?utf-8?B?SXM2NHRzWHd1dlpjeUorLytaWmZQQldSaGtSRFU1MitSbG9TT2h2eDRRVE5s?=
 =?utf-8?B?QmUvV0NYc0xkVEtYUERGek4xOURSSnFnZVhmVVN6VnVZb1RoVWlrWUdQd3Q3?=
 =?utf-8?B?cVR4THQzUEhmaDNidnZiUkJGZS9sRjQwOGtFekVDLzBEMldsdlVuZzR0ZHdt?=
 =?utf-8?B?dWl3K0lYQmZvWGs4RkljRmRiQ3RMb0VWendSZ3ZicnNlVHZXWnVxMmhBVzMy?=
 =?utf-8?B?QXZDVjZxUWRqV3l6cDc3WVFIVGsyb0JaVUhOSEZRQWZsL3czZ3hNVFpkQ3M4?=
 =?utf-8?B?NzJxdDg2VEVMTVFRakgvWHRSWkhycUdhbnczb05kTHlna2xncm9SaWFtaVJk?=
 =?utf-8?B?U1BFUC9wNGlMcmI0b1JEM0Y0YWhNeHFmNzVvL25EZ29Rd1RDM09RZkNQQmpS?=
 =?utf-8?B?MUpSeUhIbzduYlBkR29zc0FkbXVtK3VyMHRRSy9pZk94ZGZDcVVseUhCOCti?=
 =?utf-8?B?WE1SZWpJZUdGejVmelZtaG94T0xCZXZETjl0WkU5NjlqTk9WTlJONFJjcDAw?=
 =?utf-8?B?UDZuazMvN0pFeENiYmFVbmdjZUpxUGpMekNtNC9RTUxQaGYxWHVDampHTDMw?=
 =?utf-8?B?YkVoeFJsMWdUK1lGNUNFK095OEQvZktGb3B6THF3NWJ5Z1ZmaVRHU1d3dFNF?=
 =?utf-8?B?RnVKckh3Yk8zV3lpRUdjenRoNE5qclk0UStCNkRFSHZleVQySzBONmozNVE5?=
 =?utf-8?B?R2tPTjRBWjJURExwU0hla2VSOUJTdEVQZVBSdVF2QjhaeTZ2cEhRN2JtQVRo?=
 =?utf-8?B?V0JzS0w0enFkcDJPWGtBVFplNENGcU03RzVQS0w3eEtRL2RESFZXVHg4Tkli?=
 =?utf-8?B?UnNJZFI0ZWUxeUVUN1BPT09VYmxGREFJYWZ4MUkwWnZvRU9TZ0c2dm8vUWRq?=
 =?utf-8?B?UkJEeVlxSHR5b1JYUWpUTFpudld0dWhHNVBZYWlWV2dDNWJZd3pxVEZGLzMx?=
 =?utf-8?B?VGh5bGhmS2pPeTRza0lPNW5qOXpWOGU0bGsyVmRWTVhqM1VMV0JTN1doajFx?=
 =?utf-8?B?VnN5VWo4T3BnSGRSeHZHeEdLR3NrRlZVd2dUeTl2aUxVOFdXeGlIZFlKRFhw?=
 =?utf-8?B?dXJvMjB4WjJMYm9aTHczUzlCY2RuUStlYlZZWmFBRTdLV0VjTElMcnY5Ni9Q?=
 =?utf-8?B?bGpYd3BjcXFHRnd4cFRJaEpWZUo3T3BxRUh4dWxPL2JxVGFIQUtsUUs5UEVl?=
 =?utf-8?B?VWttdEZadDdwTkpGU3lQVFkvR0RINU11bS9YRjlRT1M0aHdnb21JbTJ0bGVZ?=
 =?utf-8?B?cnlZOEpQM3dIUDlVckVuNGJDUzM1SHJ5MnlKQjN0L0ZNK3c0aGFLZjJEVWJU?=
 =?utf-8?B?eGpVUEtKbkZEL3hvUGZUcE5hWUMzRlhuUFJCTVdyN3NqNDBjRnVlNkova0Qy?=
 =?utf-8?B?Mk1mVVhkVFNleEFkUW9NaTNHemFaOEdUN0NlNytYOUtXeGlhK05mVGtEeWY5?=
 =?utf-8?B?aU1LZ25leXlGVUdDQjRmeTY5MVhCOGVvY3lCcStKWnBTYVBEOUpxOVljRFVk?=
 =?utf-8?B?OUZIWnB1RGxCTWxtRUdvL1lNRnpYU1lFQ1BPSERNVUpTMldTV0RDdUFVQmFl?=
 =?utf-8?B?MzBLWERTdndzOHZDUHQvaWJuZzdWTWIyd0Y0QmM5ZmNOMjhqREZVb21uZ3Bn?=
 =?utf-8?B?N3hLRHVwUXJXWkx5ekQzRFVpT24rOW9aYTlNQmRodG8rTHoreTRSMjl1bUZ3?=
 =?utf-8?B?YVJxKzRqSHF2VHNHajZFeDBjUWUwSUY2UTBXc2FocjhsZkdEY3NNUTBkdFMw?=
 =?utf-8?B?Z2wwNWxiWWtLdnoxY2ZFbUFUOTlwNDMwZkQ1YmNJSUtPYlN5Qk5sN21JelpL?=
 =?utf-8?B?a243N3E0c1piSzc2V2VUb1NSVEsyQmhvZ3Q3ZzhsMitNRnRvQkRoREhWbHlS?=
 =?utf-8?B?dzFDRGZDK0NTZ0RWTnlpb0ZCVkxQRHp0WU9mVkZ1Wk9RRkNFVTZBNkhJZkVY?=
 =?utf-8?B?YVBvQnR1Z252L0RQUU13T2JTRU1rcVl2MWdnMjRZS3lwdlg2U1Fpb0RoWlhh?=
 =?utf-8?B?Q1ducEs3Rnl1QllxYTNHVTZHY2VaVlhhS2sxS0ZOcWxjV2MwL1p3dDlIVUVS?=
 =?utf-8?B?a0lIMzloclF3SmswaVpFSVZaRFFlL0VNOWQ1U2dzRi8veG5UWlVEbDhJZ0xv?=
 =?utf-8?B?MmVsTzEyTmhobmpBOURQVzN5czRqclc0M3d6UDhTSWpGaXJ5bG5PNW1TdEFP?=
 =?utf-8?B?UjFlaVRhU0NBUnZoNzc4QS82R25hV2pUNWc1QTg2bXg1Um9qN1NRMFk2Z0Ns?=
 =?utf-8?B?c2dKa0JhWEsrRVZaZk50VFNjMGYvYk1BNEIxZ0hmL3ZwVzZOSnY3c3krdDgv?=
 =?utf-8?Q?5UM+D+leUKXsJYR4=3D?=
X-Exchange-RoutingPolicyChecked: Z87T/AHnZ8Qs/5Gh1v79ycKqK4UXn/Nho3cpGuEBcPVzL3hdZv5wjGmqzS0B3oYXxpVJS16iHx+7Kzx6IDsGUEtl2gF8noNzeNOcMC9oq92ni2bSkfqutZemZ9Y3Pjm1ztR+E5mEu6SuzzNewY/ScKfC1X/B3r7a5RRwsWQYXcKgzOVHCT1FDUS6NnXLcfJC6rocyzKiyhyCHveBO12Ski9gAsaHsm+wv/F5Pml8rE0UZD0hOkneayh/xQ8SVjQL5Nm7FhXrtx8wXMT6GfESmpVi6GCXynseL8YuPl7L1pYLQ430uXYahFYZt7gBApaaidpJzF0X+LZW5u4p0i+dCg==
X-MS-Exchange-CrossTenant-Network-Message-Id: a53621cf-a8fe-49ed-3412-08dec5d3bb98
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2026 03:03:51.2733 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TTNq3LHbZdoecxXdby3sBX4MgsXpHEplny/npB2Oi7ITs6s2aqWonobiByMYT1Gy4YSHMwZ+fUNovmM2dAjle5bAaX/iyzTc/w3nQu2lQKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6187
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3194F65BF57


On 6/3/2026 8:08 PM, Ville Syrjälä wrote:
> On Fri, May 22, 2026 at 06:55:05PM +0530, Ankit Nautiyal wrote:
>> Currently intel_panel_fixed_mode() can return a lower refresh rate mode
>> for VRR panels if the lower refresh rate mode is first in the list.
>> This creates problems for seamless switch features like LRR and
>> Seamless-DRRS, as it results in changes to vsync_start/end causing a
>> full modeset instead of a seamless switch.
>>
>> This is particularly problematic for DRRS panels on platforms without
>> double buffered M/N support for LNL+ (display version 20+), where
>> seamless clock changes are not possible.
>>
>> This series attempts to fix this by:
>> 1. Adding a helper to get the highest refresh rate mode from the list of
>>     fixed modes for a connector.
>> 2. When a seamless switch to a lower mode is desired, making
>>     intel_panel_fixed_mode() return the highest refresh rate mode,
>>     provided the requested rate is in VRR range. The vblank is then
>>     extended to provide the desired refresh rate.
>>
>> To determine whether a full modeset or seamless switch is intended, the
>> connector state is checked for the allow_modeset flag. A nullable
>> conn_state parameter is added to intel_panel_fixed_mode() and
>> intel_panel_compute_config() for this purpose.
>>
>> Rev2:
>>   - Address Ville's comments to preserve Vtotal-Vsync distance while
>>     adjusting VTOTAL.
>>   - Address Manasi's comments to always go with highest RR mode
>>     irrespective of allow_modeset flag for modes that have same clock but
>>     different votal.
>>
>> Rev3:
>>   - Drop patch to deprecate TRANS_VSYNC, instead add Vsync start/end in
>>     lrr codepaths. (Ville).
>>   - Fix the condition to avoid picking higher RR mode for DRRS panels
>>     when allow modeset flag is set.
>>
>> Ankit Nautiyal (6):
>>    drm/i915/display: Handle VSYNC timing in LRR path
>>    drm/i915/panel: Preserve Vtotal-Vsync distance while adjusting vtotal
>>    drm/i915/intel_panel: Add a helper to get the highest refresh rate
>>      mode
>>    drm/i915/intel_panel: Pass crtc_state to intel_panel_compute_config
>>    drm/i915/intel_panel: Use highest refresh rate mode for VRR panels
>>    drm/i915/intel_panel: Refine VRR fixed mode selection for DRRS panels
> I didn't really go through the rest of the stuff in fine detail,
> but my initial reaction was that it all feels complicated.
>
> Here's a quick attempt at a simpler thing:
>   https://github.com/vsyrjala/linux.git vrr_no_allow_modeset
>
> Ie. just try to make sure the fixed mode selected by a
> !allow_modeset commit is "VRR compatible" with the old
> adjusted_mode. This is completely untested though, so not
> sure it actually works.


Sounds good. I have lightly tested on DRRS panel seems to be working.

I can send the first two patches separately and discard the rest of my 
patches. We can go ahead with your approach.

Thanks & Regards,

Ankit


>
> The guardband does still pose a bit of a problem in that
> the optimized guardband might exceed the available vblank
> for either the old or new mode, in case we can end up with
> a change in guardband. If that turns out to be a serious issue
> then I suppose we might also need to preserve the current
> guardband value instead of recalculating it...
>
>>   drivers/gpu/drm/i915/display/icl_dsi.c       |   2 +-
>>   drivers/gpu/drm/i915/display/intel_display.c |   9 +-
>>   drivers/gpu/drm/i915/display/intel_dp.c      |   2 +-
>>   drivers/gpu/drm/i915/display/intel_dvo.c     |   2 +-
>>   drivers/gpu/drm/i915/display/intel_lvds.c    |   2 +-
>>   drivers/gpu/drm/i915/display/intel_panel.c   | 102 +++++++++++++++----
>>   drivers/gpu/drm/i915/display/intel_panel.h   |   9 +-
>>   drivers/gpu/drm/i915/display/intel_sdvo.c    |   8 +-
>>   drivers/gpu/drm/i915/display/vlv_dsi.c       |   2 +-
>>   9 files changed, 108 insertions(+), 30 deletions(-)
>>
>> -- 
>> 2.45.2
