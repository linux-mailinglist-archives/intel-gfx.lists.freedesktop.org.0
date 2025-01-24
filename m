Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE0FA1AF13
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 04:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2174A10E2A9;
	Fri, 24 Jan 2025 03:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KIL4Og+K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE9610E2A9;
 Fri, 24 Jan 2025 03:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737689561; x=1769225561;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pEteEjDDEmdM8DeP/3pAwQe9CGh7cfTP+C+yXLfUnR0=;
 b=KIL4Og+KLdE9QMMNGiQCgraARiZWpJGj7fsj9a16v6qMP+93CrhHOhBx
 L2KK9kXkGGWGUgnykM3uZx1jQYRegRIGiwNIfYJ0wO53GQB/D5ALV4r3P
 iMtO7tdVEoCmtP9Slm/ZusUXjvHa61anw7goyY4IrpAbzIwechmoryb/q
 VluQI7xnZR1PRhuhukhnKHpNT2yJ/6jRP0Hd28FLMEPi9b9SEtAMmGGRK
 hJ7uZRqjGnpcHJdrlRP0/rHw+/o2XkMTE6ssVCHuq6B9KrM23AYk/79/o
 j7x1VxdSDNtfRO8Saiqo0Yxd7oPw8f2+AkpJiWe8Q5PrYQAyetzbv5UY0 A==;
X-CSE-ConnectionGUID: rsHFJm7bSJSljIDBGEEYVQ==
X-CSE-MsgGUID: K4+2IhB7Q7ySaZrxC+AVNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="48804420"
X-IronPort-AV: E=Sophos;i="6.13,230,1732608000"; d="scan'208";a="48804420"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 19:32:40 -0800
X-CSE-ConnectionGUID: otE+Oxb1QXecI2+StVqZ2g==
X-CSE-MsgGUID: r7V+2Ef8SCSpvLl8da0VaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108544195"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 19:32:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 19:32:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 19:32:39 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 19:32:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SAC+7LrnKKrsaiU6jNOAFOvzN3km48ModfzrIV0sIVio0O46lMWc21sHn3Nba+PGC1FMiA/KksPoWHOKK6tQSeiIL7vaFM2qXgwb65ZxC0vGmVl0nhCwKcxa+pl/dt1v4Fy5sMQMlaE4p5RM9H8fB2y6oYKQtl7qRjW4vDQAJ8xA8gihS2THx9DHY0YDbDj8KGi7VhOPhBUsom81m14u4A9hVQVK3Pw2VW8JvTT1HgwqW+Zms48o7bRLrR+g2jK21aulJn1uJ0csMnz+fH1m/GPZrZaJq/m6fqSAgoKAZxOdWyAZrQsSinlYjGMPSj7ySJHyCK+lvnfDuHdG3k7EBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sw+sY6bYhP9gV0FjbV8/63qU/k6Y0fBJYjDHO0Ygj2o=;
 b=MPrNFUIMrldNyMb/pqLsBECKEYK58jbeJTJCQexczkVgx0bfN9sjoIVR0uH2GDgqwpM/oBngK3G+hCs0z8DvD0uG59dgErESUpXnwa/2OOXpi0CzGvFXqlYAPvrbI9BnPiHbfr7G54bpwswpK2JACqfbWX6H5uYq035iyO9h0JAoLYFDgmpqwii5pM4FLpIJByFG+1KD+w8dpxRUa4zXcEGwn4k5w51E71pMdTFHaG5ldtT6nImtrs28mIAc9RiMKiHOTAq5nzZ+8qm78DTd1doHTDIkVrRvB93BOy6Gl2ZyWg/ofwdrdZSo0zgZzD9Vss2trEGeAeEJDahW/cOmkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5284.namprd11.prod.outlook.com (2603:10b6:610:bf::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.19; Fri, 24 Jan
 2025 03:32:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 03:32:22 +0000
Message-ID: <4efef963-84d0-4fb7-b354-71e80babf062@intel.com>
Date: Fri, 24 Jan 2025 09:02:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/7] Check Scaler and DSC Prefill Latency Against Vblank
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250120172209.188488-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250120172209.188488-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0188.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5284:EE_
X-MS-Office365-Filtering-Correlation-Id: 1eb48d18-48aa-499e-c0a6-08dd3c27b6e1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0k1eWpQdGlWeENzUkQ0Ymc1K0tXUk9aTmZSdEh6OTNuYW1HT2dCL1dPZXA5?=
 =?utf-8?B?RHRXd0pMVkhlMmM4aEg4ejM0Q0pqbk9sb1pJQkhGV2E1OXVUZWdsVFpXUENZ?=
 =?utf-8?B?MFVCOU1tQVR1Q2toYnRwOU50dmw2b2VOaEtuZ1lvMWlnVW1vMk9ubXZ3bUhh?=
 =?utf-8?B?WEdaU1cxeEhlRmw5MXF4TllQUTZ6OUp1b3JMSWxmeFd5UnVZN3BYeTkvZXd1?=
 =?utf-8?B?RXpkbCtMTmp1SmovV0tjOXlrenQ5OTdvYlRYT2V6TGg3SzU3TURFVWtpZjQx?=
 =?utf-8?B?ZnhpNmI4Rk5Td1lpUW4rZm1lZlZ0UTJhcDVabVFBbTQ0ZU5QSTFrblBRaHBy?=
 =?utf-8?B?RnZnemtWVlQrc2JXR1NxMFFVbHRJVm1vSFBLYkMrSnQzcXRmVytsQXBzazZm?=
 =?utf-8?B?ZG50bGlwNWp3M0NwTDE4ci9pZXBUYUl4V2NaeGhKTExoZW5aV3VwdThwaUN5?=
 =?utf-8?B?bGtQVExDeldVS2hzNllWbU5hL0FlMlJHdXQ3c2swZStpZWpMdHVyQ1FpbGRK?=
 =?utf-8?B?a3h2cGlud1dvUEx2bmNsQzVWd2FoOHo1UWYrQ1M5YlRsekhucE04eW5scWx6?=
 =?utf-8?B?WnpFUXozV2crdU9SNFZYK201YlBGWUtncTh2QTh1VjhzRVFnU0pGL25uTTNq?=
 =?utf-8?B?aHhMdGNMQU9zenl5cHB5em5Vb2k0aWcrNlNod1htTUdOeURSY3A4WDg2emkw?=
 =?utf-8?B?UnFiTVhBcFMvQ21lYmJoWVhFNVdJN3FzYmxyQUY3UGpEeGd0R2Y3QTlnUEVp?=
 =?utf-8?B?c2VFT2poWXZxaXlBbHJGOGJhQklrV291bFhRbTlLeEhJcGZ3VDFFMDJLZ1lm?=
 =?utf-8?B?dWJnd1BHR3drZnJVY29JK0tHa3hzaFhJcmtOd05ZQSt6d2NrTytqYlhFcU92?=
 =?utf-8?B?aUlsRXNrSTJiQnZudGRsd3c2eTltckJLeE5zc042bVZQYmt4QjJBdkYydFJk?=
 =?utf-8?B?aVZJdnBUcTZnNTNIYUg4dytWM2xuRzREMGZVNFZvZVJFS2p2SERjVGZWeThT?=
 =?utf-8?B?SG5JbmhOaHJwemV0a2JCSkgwTnRBZjEzaVlibkp6TTlPZ2NGY0dwTmEydHVu?=
 =?utf-8?B?d2tvbERJVWhId2xwekN3Y3JyV3AyU2dSVVdoS3FTWEk4enFvdnh1U0NpYzZr?=
 =?utf-8?B?TmhKSjVNbmtRMDcyNXl6QU9wb2I1bXFaMkR1U1pwaTIrLzN5OS9EOWVvRDRH?=
 =?utf-8?B?VkdQeEhqOFZpMFc0a01aSWFYZlA4Kyt1eE9TblpDSDVBKzN0YXU0dXA0QmJX?=
 =?utf-8?B?aFZMdXEyOXNlY0pmdjFXaCt5LzRmRWxmQzcxRGRTbmR1UDNEZSt6RG1aS2NK?=
 =?utf-8?B?eWdYNi9yL05lTDIxWkxQNUhMU2tLRW1CRkplMHhxYWE2ZG9qOGxkV284ck1z?=
 =?utf-8?B?OHJUb3VlUVBZSjJFS1lpR1JLNVliR2lEbS9KaUtIUVdwNFFtd1ErSGZCenls?=
 =?utf-8?B?RjBzZ2pFMUdlSTRVTmJ6R09aNEprSWtKc0VBbHZDc01tZGdjTFNsM3l3eEE2?=
 =?utf-8?B?NXhiTkZtYUJjTzdqYmsvOHljbkxsdFFLN0J1bFhnbXJaT2tnRUM2emR2TGdM?=
 =?utf-8?B?N2tJaUh2OWtKUm51ekVpSzNtYWZMaG82NmdCdFZ5cHlmNTk4eVJCNzA0dWd6?=
 =?utf-8?B?dTFsaEdaR0lVQS8vZThIZDVUbkVYbGM4cHdXTmFDM2d2ZmhmOUtyMmVSSlps?=
 =?utf-8?B?Qmp4aUdDNEo5VkhkNmdwQW5BNy8zd1dJMld2dGpnYlNCUjRWOFg5Y3dDVGI3?=
 =?utf-8?B?ck85K0V0S3haenh0bEt2Yjh0M2xTdm1HdUI3eVhBaXRuZ3ZNbHU5SEh2eFpY?=
 =?utf-8?B?dWZHNnF5VFo3cW8vSjQwZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFZyTURxV1Q2MGgyN1VyV3V2MlpycTNmNkpldVVCTlFsMkNZSjcvNnhPQ0Jy?=
 =?utf-8?B?SEJzWk5NcUJoTlppS1NtdEhucDBZKzlIZFpIYVJtM3NBRGRPbDBjcmtsYysz?=
 =?utf-8?B?TXBYNnZQRk5XL2dKdEZFWjI1L3pNMzE1a3ZwTUxFbWNDVnVkSjJIV2dac0ZH?=
 =?utf-8?B?TXE4UkxhUWl3VTFva1k3NTF5YXZUeWhGZ08vMHB5SFdXcTFWVnAxZC9VYkh2?=
 =?utf-8?B?azBmODFVOFJEQ1piTUxCQmxJOWlPbit3dHdOSFg3d2wweHhic2l1NGRQbXA5?=
 =?utf-8?B?eldzL09DUXAyNklwcHRsSEtEdXhxU25HbTVsSnFEZlU1OFJiUXl5TXE5cHd5?=
 =?utf-8?B?TmJjV3VuSXhKNU5xMExPNEErbTVvbnAzVWc3aXcyYU9SK1YxTmpWbUwyeDdP?=
 =?utf-8?B?V2M0NktWSjhxU1ZKWE9pS05ORG5yaEhoUlNvVUJCaW9qSk16c1RsYnlJdnBN?=
 =?utf-8?B?U3VUK2NTWWNBRFRHb2N4SXhBZ3R5azJXTmhJa3E5ZS9UMVRBMjV3SGN6VUlD?=
 =?utf-8?B?UkFtSlZORTRKRTV2Y2tKWkdCbm1lMFhldkhmcjRCUithNURub0ZQTXo5enJ2?=
 =?utf-8?B?STJDd0R1RWFCV0pwOWtkNkZLTmllT3B0N014ZGViL1VyUHpTZGIyTnRyQlpw?=
 =?utf-8?B?NktlU1FFMzE3OVQwVkVmS1JiYVFBRmpCN29qOU9FWWpXRm4xKzhjMWJTTUN1?=
 =?utf-8?B?RTFxQkd1Znk3a0lBY0x3RWVMZUk2NmdhM2Y0cC9YV2cvbTVXN3REc0FTRWlP?=
 =?utf-8?B?TmVTU1g2UmlSZ3FoV2ttckl0WkEvU3hMTzZ6QW4vSGgzYnpxRmFjWnJ1OEla?=
 =?utf-8?B?aTN3UWZLdEJ0UFI5RzNxc1pJQ2JMczliY1lvN0FMZWF0RWtBRGhSZXRPZVEz?=
 =?utf-8?B?Sk5EbUxVb1FlY285b2k5WFBtU2o0cmhaRVpQWmVyamNEczduUE91K3pQZXdZ?=
 =?utf-8?B?aDJLNWR3WGo2Y3Z2ZzFkcllielhmWUVxQVpMZEdVTVZuc1ZVNmdWNUpxOGRt?=
 =?utf-8?B?VjdHUEN6TXhad3U3WlhyazcyWUZ3V3VaZmd6RmlOaFJsbWd4c0Z6NlEwcGtT?=
 =?utf-8?B?UTlKTm5QVWxML0s2ZWk0dmtySG9IT3c2SjVwcXFUazdkcGIvODZjNU53bkw1?=
 =?utf-8?B?WVBoeFArU0FnNW9KYTh5aU5RYzhYdmlneE9vTytXTU9mcEFFVElOMDVXd1Rl?=
 =?utf-8?B?WTYyRXJsMEZEK1RTUjBUQko3WURaeDJOUDc5dzd6U1E1M28xWUhhdkZuRGY4?=
 =?utf-8?B?bEFMcS93eitQU1duV2l2dlBJQWN3UDY5eXp2K0Zyc1Y3Ymh6VDJscUpuY2FZ?=
 =?utf-8?B?QjFZU3Y0WjNYWG9UWHdHQ0dVSmRWSDdNZ1ZXNCtWZ1NocVpvcmJOUVlKU1BN?=
 =?utf-8?B?cUk3UE03U0hXNmc2RFIreTNsMURZSzRPbEVaSkM3eEFscDZtekQwTUoyN0ZQ?=
 =?utf-8?B?U0hMbktvRXRTbDhKWnl5aHh4Z244bVR3WGdxV1hGOHRkZXUvS1lUNDBOYUFv?=
 =?utf-8?B?OTlvazJWRkxSRkpTVjh6N01qVkUyaGwvU002emVraUdKcjRuMUhxTmdUeThr?=
 =?utf-8?B?RzlzUHUvb2NEMVFFYVVDT2RyVUVva2ZxUGl3Tm9QZ3d1WWd0N2VFM3JUVFVo?=
 =?utf-8?B?WGJTZ2RZZmVmMElyVEMwbTJSb0lWNGJPanFFODYwOEVQK1Npc1BMWkRsY1l4?=
 =?utf-8?B?VmpOYkoxZmNMbGNHamV0SHZ0aVRheENMbXFIMjBnMUh1V2VXL3VDRzV0dUdN?=
 =?utf-8?B?bkxCZDM5SEhyVWdQWEVVVWxRK3JPQ3NUcnF5OWFUTFFrNkxqc2cwb1lrODkr?=
 =?utf-8?B?eGFVSEVwSGJLeFloeElJMjgxelBWS2VsK0tpbDlBK3ErcXpWZkpMc0VJMW5o?=
 =?utf-8?B?WGlySXBsMSt6aW1RRkx5alltamlPbFN2bzVDbmJ3dW1Hb0pDUTBOK1NiRW9z?=
 =?utf-8?B?U2RDWEN4VHdqRVdaK2lqczJvSHQrb3lvbEt6TGxNWHlEVUZQZHdnV1lKQjNR?=
 =?utf-8?B?Ymh2NlN4S1U3TGV4QW02Tk5YY3BsV0hMVGc2MVRSTHZwc0FQbVg3MzBLTEMx?=
 =?utf-8?B?WHhienBjZXVBdFUzQjhwTzJza0lkWko4bVJsMXF5ODU1dzVDMFZhcVUrM2RN?=
 =?utf-8?B?ekNkMTJYYmxjY2FJaUlHUHA5ZWRmeEFFaU1JWk5OYTAxZS9SVVE1bTYxY1ZE?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eb48d18-48aa-499e-c0a6-08dd3c27b6e1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 03:32:22.8940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JaMpBcAGewJrp9swZoDGxiDHzTRKt3kRv5O7/CBM+nA2I3xsnJuZllOrx3apKQileNxtsRaYe8MWptmLuyEcs63I5GpqjLB67A7e3ZcWshE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5284
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

On 1/20/2025 10:52 PM, Mitul Golani wrote:
> Compute and check if dsc and scaler prefill latency is sufficient with
> respect to vblank.
>
> Previous Revision Reference:
> https://patchwork.freedesktop.org/series/141203/
> https://patchwork.freedesktop.org/series/142745/
>
> Mitul Golani (7):
>    drm/i915/scaler: Add and compute scaling factors
>    drm/i915/scaler: Use crtc_state to setup plane or pipe scaler
>    drm/i915/scaler: Refactor max_scale computation
>    drm/i915/scaler: Compute scaling factors for pipe scaler
>    drm/i915/scaler: Limit pipe scaler downscaling factors for YUV420
>    drm/i915/scaler: Check if vblank is sufficient for scaler
>    drm/i915/dsc: Check if vblank is sufficient for dsc prefill
>
>   .../drm/i915/display/intel_display_types.h    |   2 +
>   drivers/gpu/drm/i915/display/skl_scaler.c     | 123 ++++++++++++------
>   drivers/gpu/drm/i915/display/skl_watermark.c  |  84 +++++++++++-
>   3 files changed, 171 insertions(+), 38 deletions(-)

Thanks for the patches, pushed to drm-intel-next.

Regards,

Ankit

