Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A89E9F6D39
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 19:25:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB8810E095;
	Wed, 18 Dec 2024 18:25:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eL/sPc7g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA4F10E095
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 18:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734546304; x=1766082304;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=m98Pn6JS+Usz35zdHZGrQdLdEikfAd8L2pboPGr4Cyo=;
 b=eL/sPc7g1LQS01bgkh/Wyh4RGys/4HmTBdRo5qnAbXeObD3ELmwOdsKe
 rQ3LZ4/VL8exDmbaEMAsL3/agAMGlqo7pEVNPyjgPayMHplbGEUKJNP5k
 m1zrpUw9+XBs1hyoUgQHJ63A4Hfu24J8Dw82ENSgHU5prOsyC++xPhUWJ
 t46hlp65gIUX3xYwHItsFKMQHQ5syDyxrd9kJTg73CUVpkgigccksNwo3
 xU9O6u0jD5NtpjZMJ7RMlBFnZHWRukKx5K4bJ6oEeMw9+9YxcFmypS918
 k00mdklaDa8HN495R0fn9ezMVsXwo989xFSpBbCiM8JT92F67x45BBSmZ A==;
X-CSE-ConnectionGUID: cnK7qK5gSxmJEr2GLIHneg==
X-CSE-MsgGUID: mHuTeEdrSkquS+tIHHjuGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34757605"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208,217";a="34757605"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 10:25:04 -0800
X-CSE-ConnectionGUID: 2C2jDk4IQA2/btAIYMQctw==
X-CSE-MsgGUID: 7AwcRygSQYmv4mQLdemIoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208,217";a="98344533"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 10:25:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 10:25:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 10:25:03 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 10:25:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QUddvAOqlVrWTKUR1ukj7ya+p0Y0E6xIBrV4h5PCQtBlsmMiz4fJtg8XWRpuMb7WiJUNz20uOzmndezOTuCg+knV0HCGLWssOfbm0qfuipV2sNepzXXNflebTevDyvXMS5ro6WGdpkiSDA5CIvY3KYZTyyZGhrEV/PM2ZfuUA+b43JTc/PX1NuG0XYZLYPYgH1ulDjDOPhFO7AtC4ZgnKh1NsiEPXqs+P0+z3RFzKEY9EMDGOgyfjh9BvAmXDooIgGDYV0jC8g5f+qIpJ6JlbcXrcO2rvJaZbLliwsnHupfz7LEwGKvgO5ciUDGK3zVvoCnbbim9Tp+WFBsls+FdSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wPmA4KQRoytT6P+N2usXpMRrcpOHw3pZw/e9G/fN8Zs=;
 b=R0h99h9hQ1dAD6TPUGkCJItdf0Z5bbAEdubSz+/V74N70DDU4GHU22KoLUcyUsFtv7Xxv1+hL81kt81fhP6M1ypVH1bMW+qC7O/OzJHM2qqYsAhcQKLgZcHCNAuRsW2dBxxfTpnFcXTVFZcu/g3hdk1LwJs4C48qFwlI9AnKakXu6Zv2iR1AzlDBOOT7GWPvOYHHnAVPQfhw1skrYgthjq5spU5CrxxGQAxxnrp06dtBNTClLuOQpP8kCVpPjHJVjUSOHL4NfIRFG2h9+L9go4yV9zVKae9A8jhMgCjWP70+UokAncUBrbvreh6MCUWSke0IaOxcGVl+jgZJzt/uWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 CH0PR11MB5218.namprd11.prod.outlook.com (2603:10b6:610:e1::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8272.14; Wed, 18 Dec 2024 18:24:55 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.8272.005; Wed, 18 Dec 2024
 18:24:55 +0000
Content-Type: multipart/alternative;
 boundary="------------rJ1sF7SsGE0JxOCArCk9nczD"
Message-ID: <a1dd7705-a6fc-40db-a130-ddabc1d3d677@intel.com>
Date: Wed, 18 Dec 2024 23:54:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
References: <20241217172955.3027271-1-ravi.kumar.vodapalli@intel.com>
 <IA1PR11MB62660FE4E97DE8DA25233221E2042@IA1PR11MB6266.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <IA1PR11MB62660FE4E97DE8DA25233221E2042@IA1PR11MB6266.namprd11.prod.outlook.com>
X-ClientProxiedBy: PN3PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::15) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|CH0PR11MB5218:EE_
X-MS-Office365-Filtering-Correlation-Id: 44debb4b-c3e8-4432-0c9a-08dd1f91455e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|8096899003|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WHBPTnp2ZTBzZFZZOEZvcE12ZG1yeC9PVnpTQ1IzaUwvcTM0MytObGlKa0hW?=
 =?utf-8?B?VXVMd0tldjVxOVR6ZzF6a3BaS3E5MDVVbzBYRm41NTdHRWZHM0F1dmpjQy9J?=
 =?utf-8?B?dFZsWUxTNjdsb0F4YTYreitFSVlzakJ3NHhvTFhZbHRlYU1aNGdZV3FXbFZD?=
 =?utf-8?B?SWNwc2t3a3YzdE5iQkZmeklEQkk1dWlZUFp4S3dvZTUrd0FWeHdhZFErTEU2?=
 =?utf-8?B?YkgwSFNCK1RFWE1Xa0FueGN4bDgwYU9UUE8xeDlIN2Q1d3hHSEZsL1l6UWxS?=
 =?utf-8?B?cHlySy81T3ZPT2xpZk9PTkI4SXBUdVdpaHNHaldiV0ZabHRKV2NPUlh5eUNx?=
 =?utf-8?B?aXJFZmJ4UG8xMk1hTDl3ZzZqc3NKUURQNXFBYkdFWHNmRUhRZGw2aGFsdzhw?=
 =?utf-8?B?UDQxbitaTnNzVnpwQ3ZWQmdrZVFoeFhEYWw1bFpIODJjYTU4aVpwc0JTUm9o?=
 =?utf-8?B?NVhFdkxQNVJSNE5aZFVMSDQ1VGNUWVpJSjZKT3p3RmFWbWpVaGVQT09vSG5J?=
 =?utf-8?B?SGtjQk9DbEY5WU1hL3BIaERkMDZXc3ZaSVFDTlM4L0l1SDRqWkZyMXVodW1W?=
 =?utf-8?B?ZUhZd2N3UldTRXMzRU5kdVM4VGJDUzRmK0JlOW1pTmNpcVgrenlyRUFjMGFh?=
 =?utf-8?B?bUZvN2RKMHRlRDgrOEZXT0hMTGlSKzVPL3MyZ1RPemV3QUZzSVJHYXQrMVpv?=
 =?utf-8?B?dXdvVXEvVGVsa3BZTzczSjJrRkE2cTUxUUdkSitSSDk5RVhJMWhnNXN0Nms2?=
 =?utf-8?B?OFhQQXJVS2EwbHpoTnVHdS82R0dYdTlaRHRyanQxNzZBS0xRRWxtQVhrejAz?=
 =?utf-8?B?N2kxVGFyZ3JVY1RkSzd4dDBFcHhIald4N0tuTGY3OTdCdGkxeEtSdG9QbFlO?=
 =?utf-8?B?WnB2K3lkNVdzMjF2WUhWU0VvUDhZdGVRM0U0UGI5b3YwdjI5ZitDbmVVcWNM?=
 =?utf-8?B?dzA4L0xzWEpBWlk4U3ZLYm4weDEvb05PWXFuQ21tT2ZUN0VRa0tKUW1lVFdX?=
 =?utf-8?B?ZlN0UFlzT1MrRHZZSnlBcE5UZGFsMXNRdVV5a2xON0ExQjRubTBvcVJDd3JR?=
 =?utf-8?B?a3dzeXpySXFRbk10VE1CcFFJOGk1cXRTaDFBQ1NJNExXU051L2NoK1NWdXc5?=
 =?utf-8?B?bUJybXNpRkJ5VDFqZktZK2tGSXlwYkZndDJKQmR2VUVMazB4WlpqNG5WU0o1?=
 =?utf-8?B?cG90MDIxcWhLTHQzQmlxS3MzRldhK1ZueXZqL295VngvY2dndXpHMHVXOXdi?=
 =?utf-8?B?OEdGTUJyc3Q2ZmVrMnNoYWVRbndxSUhTdStpM2VnS2lhajFaQnNUbzJGYXQv?=
 =?utf-8?B?TWR3b0xCV1pXdVpobUFxMVBDUjlOMUtXMXhYWnRpd1JiSFhQYjlXbEtsQTdX?=
 =?utf-8?B?WU5UeG04RTl2ZklEa0lNeFozNUg5cWhwZFBSd2xXWWhrUlhFUUxzbjFEMzV2?=
 =?utf-8?B?N3RYOUh5WnU0eEY4Vlh4OWJLenNsREVpenU2Vm55R2F4NlQ1M0VIVWk3ZzA0?=
 =?utf-8?B?KzB6eFovOFFnY0dGNVJ3ejlKQmp5VjJiclhSd0NnWHhicjZPNGpLQ2hHdFlo?=
 =?utf-8?B?SmVaWWszN2Zpb3JuWEo4TTRjQjEwSFRTVEVJNW13UWs4QTlFWm0xcjRqLzZ2?=
 =?utf-8?B?bUZFajVrMFY2MjJBQ0tWOC9md0tSY25XZko3MTJXd0syZGlrbnB0VzJTSCty?=
 =?utf-8?B?WHhwNUVTb24xaGZUZ0poM0JXUENrYWFJSnd1MG8ra08wNEp4bkh0bHRkSXIz?=
 =?utf-8?B?aHhJd1JGbWVtTzFIbCsyakJaTGk0RkIxSUszUzBrNVJZbEwxRExnSUhPNENi?=
 =?utf-8?B?SnBqTkxrd1ZKUHdPY3NJbTRER2w5UEFBdjZzeXpTSUtjS0dpK21scHo3T1Y5?=
 =?utf-8?Q?ZUWaALkjG/pDu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(8096899003)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTVFUHpUMEUyeFAxbW9Jenk4WkZscXl1WnA4L1RRbXZ5cFkrVzZDaDByVGk3?=
 =?utf-8?B?L3ZSRDVWNnRpRFY5bTBROWRCNDdKUTJZQWUyd2MxZElUdGpTL0NBMTVzT2E0?=
 =?utf-8?B?ZlJpYXdPd2o2UHE0a3NvMmgyVzFvQ0dqSDJZQ0RlTlYydWl2Vk5obUVNUmkw?=
 =?utf-8?B?Q2hIZGI3Rm9HYS96RUVpSDdpNFlteDR6VFgrK2FMYzhhaXVRZmxRQyswd2VI?=
 =?utf-8?B?TC9iSGxtdHRmQjU3OW5yc0NPRjM3VW9RSTdGRkREK29IdUpGRkt6b1ZMZS84?=
 =?utf-8?B?YU5YZzVnZ0hHQnBsTlJtYXpGYU83MmJralh3U1VhZktVM3MvTzNGOUVzbURH?=
 =?utf-8?B?M3pIdEM0N2Fva20vb1dvaWlZc3BEWElRQk9JWXdjbmQwRkZCdDNXS0hsUURF?=
 =?utf-8?B?aXZNb3A2NE8vMndVbFdRRjRCU21xWXNsQnBaQXZRcytFaXFEQjhhY0pqMlE3?=
 =?utf-8?B?eGR3aHFublpUUGVLbVgyOUpJemUzbC9ra3pNb1ZuZG9lTEorU09iaFkxczJL?=
 =?utf-8?B?N25udjBaQmZ2MjFhNWpiakxYbGt0YnhtL2tZbUhUaEMxMko5andhZ1loREhj?=
 =?utf-8?B?bnB3cmY5djZWMWRuK2phOG5nSHhHOG1Vb2UycFRqQXRpbkRsK3N6Y1JLUkpO?=
 =?utf-8?B?ZVJTTm8wbnMxT2dMOHM1cG92L3FxRmk5cytGenpNMUc5M2p5TE90cEtTNnpW?=
 =?utf-8?B?eWhWRFh1aXNuTlVsR3NRYWhOS0V2SmJsajN5ei9yMzNWL0VjR1Y5akFrR2V4?=
 =?utf-8?B?OVV1b2Y3MVY2bGNuTGhTRXNJVG91K0d3MlJsNXFJL01WZ0YyRWRuOWMwSFZq?=
 =?utf-8?B?bEZPRzJOYlNvS2pZeXl3UklvSStWZDRnS3g1eENxNSs3QkxFdVdQbjZ1Q3ox?=
 =?utf-8?B?clF3d2VLeXl4Qm0xckZJQXZBOHpwZWtSMnBjejBxd0VGTmZrMm9MM1BEU3Nr?=
 =?utf-8?B?RHlUamJJMmRJOVFrZ3JseDMzaHRGclJDbFBMMWZxaGVCQzZrTmJnKzU3WVZL?=
 =?utf-8?B?VEhPa2JWZDAxeWk5djI0cGJHQlBmVDRweVVoUHhPaGlib3VydFZlVWNyd00x?=
 =?utf-8?B?cnQ2QWwzUWpRWE1namdCemNIeEhnTW1JZlBmbStTRjNXWFBPR004c0hvTnhk?=
 =?utf-8?B?WWFVSkwreTVycnJBZGppdkNqeGwzVDJlWFZsMmlSbTdFUzdOR3p4bHlmQUxI?=
 =?utf-8?B?OSs5ZmVDMzQzbWxPdXhnaVVwMitlQkRkUlJxd2t2REZQdDZDc0M4cC9WQS9k?=
 =?utf-8?B?czhXYTd0b0ZBYjBobzR1OHhsVHBNZVNJMU1LQThRYTBwdllOczg0ZmF3M3dZ?=
 =?utf-8?B?ZkNjOFFwZEJwZHpnQk5MRnVDNStLSC9sK1I4QnVKajd2aGdHNU85Tjd6TndM?=
 =?utf-8?B?OThBNE5BVm1OQlB0QUxINHNuUG9RRUdjRWFKaElwaTY0dTU0V0g2bk5aWFhx?=
 =?utf-8?B?UjNkTS9sRHMwOHJTdEJyQTYzSHVMaklJVjNBTFRoLzBucGVJdzc0OGIzUHRL?=
 =?utf-8?B?em51cFprWEY5d2hyYlNSeWR4OGlKdlBPczZMckxybHdobVAwdm5EeDJnR3hO?=
 =?utf-8?B?Rm1ROHRrOWxOZ3RySm1UWm5vQithKzdhVHo4YW83NG5CcEJNRjY0YXVNL1Zq?=
 =?utf-8?B?M090eGk5bm1kaGhiTnRnUW9sMkFWcUd0aERaQ0lhMDJyeDRXS29tOHYxRDh2?=
 =?utf-8?B?S2l0SHRRS09IOFlLaU1PSFZGc296akFPazlIT3M2UDJVVUhobzR2Kyt0ZkZG?=
 =?utf-8?B?NXdVcXRoZFZvVzNoZ09JZWhreDNzMU81dVJJMm1XVEVjZzBRN1BrMlU4dzlQ?=
 =?utf-8?B?SHArNElhTlNJVHNEMW83RGtuUlFBYmZ4aGt3QmRrRWNNalQ2Y0s4ZjJqVmpy?=
 =?utf-8?B?S3VOWVEyNDAwNDg4YnJ1dTR6d2FtakFhZU4veWc4aUZYK1dwdDlkcE95NllZ?=
 =?utf-8?B?VnRmUk5NZVlPSlBrY3QxNWNPOEEyaTdoZVhqNEUwL21mVlJGQ205akx5Z1Q4?=
 =?utf-8?B?NXc0bUI5S2xRb2tRVnVLWlBRRXlpMmVFTDY2NmIyQjk0VXBpVDZKa0x6V0hX?=
 =?utf-8?B?eE1TLy9MMXhsZHA2N1NEQ3VNaUJkTkVMK2ttaCs3ZjFWc0Y2akg0QU5TYjZS?=
 =?utf-8?B?ZGx2cFBsdXFKS3krS0Nyc0thektPeWlDaWRmb3dXTXN0cVBYNE9vMTExYWgw?=
 =?utf-8?Q?p6LiqN6SfLHUmoARC9MjYiU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44debb4b-c3e8-4432-0c9a-08dd1f91455e
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2024 18:24:55.8327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rvIpz71qDzR4uwqAe2NTEcIYPARviiA58iZ+gswE+llvaPg7OXwd+DFgq9eQe8zchlQOgvMBrlH4VmDy+vFEl1azZONyy4g7GBwc5BppSQA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5218
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

--------------rJ1sF7SsGE0JxOCArCk9nczD
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

My inline comments


On 12/18/2024 2:07 AM, Bhadane, Dnyaneshwar wrote:
>
>> -----Original Message-----
>> From: Vodapalli, Ravi Kumar<ravi.kumar.vodapalli@intel.com>
>> Sent: Tuesday, December 17, 2024 11:00 PM
>> To:intel-gfx@lists.freedesktop.org
>> Cc: Vivekanandan, Balasubramani
>> <balasubramani.vivekanandan@intel.com>; Roper, Matthew D
>> <matthew.d.roper@intel.com>; De Marchi, Lucas
>> <lucas.demarchi@intel.com>; Sousa, Gustavo<gustavo.sousa@intel.com>;
>> Taylor, Clinton A<clinton.a.taylor@intel.com>; Atwood, Matthew S
>> <matthew.s.atwood@intel.com>; Bhadane, Dnyaneshwar
>> <dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar
>> <haridhar.kalvala@intel.com>; Chauhan, Shekhar
>> <shekhar.chauhan@intel.com>
>> Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
>> service
>>
>> While display initialization along with MBUS credits programming DBUF_CTL
>> register is also programmed, as a part of it the tracker state service field is
>> also set to 0x8 value when default value is other than 0x8 which are for
>> platforms past display version 13.
>> For remaining platforms the default value is already 0x8 so don't program
>> them.
>>
>> Bspec: 49213
>> Signed-off-by: Ravi Kumar Vodapalli<ravi.kumar.vodapalli@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 34465d56def0..cbcc4bddc01f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -1126,7 +1126,7 @@ static void gen12_dbuf_slices_config(struct
>> intel_display *display)  {
>>   	enum dbuf_slice slice;
>>
>> -	if (display->platform.alderlake_p)
>> +	if (DISPLAY_VER(display) >= 13)
> Hi Ravi,
> This new condition is not needed here since there's already a similar check in the caller function icl_display_core_init().
> Please update the condition at the caller function and remove this code from here.

As MattR explained The function gen12_dbuf_slices_config() name suggest 
that it is called for gen12 platform onwards and higher, any changes in 
the code for higher platforms has to be implemented in that function. 
Ravi Kumar V
> Dnyaneshwar,
>>   		return;
>>
>>   	for_each_dbuf_slice(display, slice)
>> --
>> 2.25.1

--------------rJ1sF7SsGE0JxOCArCk9nczD
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <font face="monospace">Hi,<br>
      <br>
      My inline comments<br>
    </font><br>
    <br>
    <div class="moz-cite-prefix">On 12/18/2024 2:07 AM, Bhadane,
      Dnyaneshwar wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:IA1PR11MB62660FE4E97DE8DA25233221E2042@IA1PR11MB6266.namprd11.prod.outlook.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">-----Original Message-----
From: Vodapalli, Ravi Kumar <a class="moz-txt-link-rfc2396E" href="mailto:ravi.kumar.vodapalli@intel.com">&lt;ravi.kumar.vodapalli@intel.com&gt;</a>
Sent: Tuesday, December 17, 2024 11:00 PM
To: <a class="moz-txt-link-abbreviated" href="mailto:intel-gfx@lists.freedesktop.org">intel-gfx@lists.freedesktop.org</a>
Cc: Vivekanandan, Balasubramani
<a class="moz-txt-link-rfc2396E" href="mailto:balasubramani.vivekanandan@intel.com">&lt;balasubramani.vivekanandan@intel.com&gt;</a>; Roper, Matthew D
<a class="moz-txt-link-rfc2396E" href="mailto:matthew.d.roper@intel.com">&lt;matthew.d.roper@intel.com&gt;</a>; De Marchi, Lucas
<a class="moz-txt-link-rfc2396E" href="mailto:lucas.demarchi@intel.com">&lt;lucas.demarchi@intel.com&gt;</a>; Sousa, Gustavo <a class="moz-txt-link-rfc2396E" href="mailto:gustavo.sousa@intel.com">&lt;gustavo.sousa@intel.com&gt;</a>;
Taylor, Clinton A <a class="moz-txt-link-rfc2396E" href="mailto:clinton.a.taylor@intel.com">&lt;clinton.a.taylor@intel.com&gt;</a>; Atwood, Matthew S
<a class="moz-txt-link-rfc2396E" href="mailto:matthew.s.atwood@intel.com">&lt;matthew.s.atwood@intel.com&gt;</a>; Bhadane, Dnyaneshwar
<a class="moz-txt-link-rfc2396E" href="mailto:dnyaneshwar.bhadane@intel.com">&lt;dnyaneshwar.bhadane@intel.com&gt;</a>; Kalvala, Haridhar
<a class="moz-txt-link-rfc2396E" href="mailto:haridhar.kalvala@intel.com">&lt;haridhar.kalvala@intel.com&gt;</a>; Chauhan, Shekhar
<a class="moz-txt-link-rfc2396E" href="mailto:shekhar.chauhan@intel.com">&lt;shekhar.chauhan@intel.com&gt;</a>
Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
service

While display initialization along with MBUS credits programming DBUF_CTL
register is also programmed, as a part of it the tracker state service field is
also set to 0x8 value when default value is other than 0x8 which are for
platforms past display version 13.
For remaining platforms the default value is already 0x8 so don't program
them.

Bspec: 49213
Signed-off-by: Ravi Kumar Vodapalli <a class="moz-txt-link-rfc2396E" href="mailto:ravi.kumar.vodapalli@intel.com">&lt;ravi.kumar.vodapalli@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..cbcc4bddc01f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1126,7 +1126,7 @@ static void gen12_dbuf_slices_config(struct
intel_display *display)  {
 	enum dbuf_slice slice;

-	if (display-&gt;platform.alderlake_p)
+	if (DISPLAY_VER(display) &gt;= 13)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">Hi Ravi, 
This new condition is not needed here since there's already a similar check in the caller function icl_display_core_init().
Please update the condition at the caller function and remove this code from here.
</pre>
    </blockquote>
    <br>
    As MattR explained The function <span style="white-space: pre-wrap">gen12_dbuf_slices_config() name suggest that it is called for gen12 platform onwards and higher, any changes in the code for higher platforms has to be implemented in that function.

Ravi Kumar V
</span>
    <blockquote type="cite" cite="mid:IA1PR11MB62660FE4E97DE8DA25233221E2042@IA1PR11MB6266.namprd11.prod.outlook.com">
      <pre wrap="" class="moz-quote-pre">
Dnyaneshwar,
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> 		return;

 	for_each_dbuf_slice(display, slice)
--
2.25.1
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------rJ1sF7SsGE0JxOCArCk9nczD--
