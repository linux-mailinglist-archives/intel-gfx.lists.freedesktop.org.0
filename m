Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D773B05AD6
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 15:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E966310E104;
	Tue, 15 Jul 2025 13:08:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dW/4tCxU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E507C10E104;
 Tue, 15 Jul 2025 13:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752584907; x=1784120907;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WNBcZe+wYfXoScHc3bx9qCnyPz04MaISGWWtfStWYVc=;
 b=dW/4tCxUfwbMxnRWxYgHW76p5Isq1fJhBHkrY5Tq+KWp80AilisDjZ/M
 3qR54xGy0Rc23aX+diKnhknSh0gHT4u2BrUK/4gPT0taaf8PsTzozoFoB
 ZZrQbWvD4FNuD+ORn1irQ41oEvcyT47H523ETz5qNOHmh+AjC+J/TzfPQ
 KueO0Z3PpivL/fKiz1RJaJGEcL62ic/Rf//tD0mvDj+b2G+9mKT1/WXBT
 8YWXC9gInRQ7nUJ3SdDFWbLEYLb4DBUdF+XDHUBMric6+zRb2mfhKPkQ/
 WiuTZGyyltcATSvMOip+lIIhNljROgkkVeCpsPoRDHX5klS1aBk2ZzBPn A==;
X-CSE-ConnectionGUID: ol6XLjZLReuhk8IcOmTsNg==
X-CSE-MsgGUID: 9lzZuncwT9yNFAGlC/lfsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54020862"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="54020862"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 06:08:26 -0700
X-CSE-ConnectionGUID: /3a/fdz5S4GWWbJtiR8kSQ==
X-CSE-MsgGUID: 1oy+UJ8RQ4KAO1tMt8BswQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="157028860"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 06:08:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 06:08:25 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 15 Jul 2025 06:08:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.47) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 06:08:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V3MjVk9oYCAES1cZ628+OmKS+uro3qnKAaRpYgv2hhpQuwaZjaut8LQ2GDc8TyGbeRi+T5x6Vp2JqSN/iHroM93fFyGfQ4nsBu0KcYVFYAzN1oDrNdWirb1Btd3PnCXwjq1DTKbTGhINrHlh5oq15G2LrSINQj+5T1NkwjxzMXmBTEOFcdzMq/gOtYhgjbDCM5gTGaNufE6keOwEj1vS2fEICybxOvBuTRd54Qm/UZNN5/pC161BbMxhSv43HXZ4DNRr8As6BfhniPWICB89LYlLLIQgyH0rJndUceRqMnTqv8SgdM5t51KIrLJt1IHqnZiNfILwia5PMGP5x7Az2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BGk0+mKffwPhZmjfCu6rfvU4U3rokCPP4I+Zb8M7T9c=;
 b=rugt+VfcwfvIg4CoHNr96XwctPgvSVk6/wsdoA5rgBAqNxyO7lg4Zz2ZNr+3OMoFLfcAOisZ8v3s/uK7NlmurJAd0brItLfb53OZa9P1Xq/zaWLHFyg+/k8hA/NaVTXanCi1Xp57ZtGS46yC2aUUQ+S659xvogv5iNsSU3jXCXoqaRU+b5JbyxHmangDt5JMszR/mIi3ErxhOr5f4H/Qu9IW0YbCcj+HDDu4NZaQqUGx/uT7eg/WuiU3WVnuYF72gHUf51d35X2696qdSunWGJYt5RKsroPzjzQoFAixc8r3UBG8v+dtJyqo7NkDhydO3ABZBRyGAnyQifvQjmNhoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Tue, 15 Jul
 2025 13:08:23 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%6]) with mapi id 15.20.8901.033; Tue, 15 Jul 2025
 13:08:23 +0000
Message-ID: <630b39c2-2e0a-4d10-82ac-81b5023d6315@intel.com>
Date: Tue, 15 Jul 2025 18:38:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/display: Avoid dig_port work during suspend
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
References: <20250715055219.410193-1-dibin.moolakadan.subrahmanian@intel.com>
 <aHYh8Yg78OYk2oQr@ideak-desk>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <aHYh8Yg78OYk2oQr@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0044.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::17) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|CO1PR11MB5026:EE_
X-MS-Office365-Filtering-Correlation-Id: 5692746e-1851-4913-247b-08ddc3a0adba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MWZmVERiZUpHbTNZaW9rbjd0ZGljNHdDbUJ3K3ErVW4yNFRuYU1qN3FnVG8w?=
 =?utf-8?B?KzU0TUhXbWxSejNJOW9FR0w0ZGJlNy9maDYyb21KVHQzeVBHYVp5MzhLUVY1?=
 =?utf-8?B?ODQyWk00ZXhIOEhRMkdSNVVjOHRBeHZSWTRYa1Bsek04eURQWWR0N25JaDhq?=
 =?utf-8?B?UitncTFZL09ubmMrcWk5NDFoOEtoOTA4VE11c0NUMzBicU91d21hTktiUnVN?=
 =?utf-8?B?UXVGd1RORExrVXorQndIVEROL1lwZ0twaXpaMFFYcVk4TDN6NkJaVE5qdXEv?=
 =?utf-8?B?ZkIxLzc5dFgxV0s5WFpVankrZ2RHZUp1R1FNaDdPY3JlTjFCRXpYT1dSUjRL?=
 =?utf-8?B?amZTazlsZGYvUXJKWXcyMkJReXZkTmxFTmR4dUNDYWF0d2VnYTV5Wi9qQms2?=
 =?utf-8?B?NHQxbEJrNk8yVnRmZmV2bEpwMjlaNUxOSFFlMVFub3p4dkJKMmc2aXA2SWxv?=
 =?utf-8?B?RGJyYnVFYUw1R0Q2enhLVmdWZ2VKd3lOeEZGNVZMc2lueSt5VTFnTUYwNEJN?=
 =?utf-8?B?ei9mV2FIWld3UWpMak50NjlhN05EeHJKd0JZNUR1QmRYME1tYzNBajRiZkJJ?=
 =?utf-8?B?bDNOTWZkMWtnbCtQRkFWUGNRTFhTNmdYWlJVZ1Q1b1d3VXkwQTRtdHhEVUZQ?=
 =?utf-8?B?SlpvNVZZOGI2SjZRT21WU0x6MHZhSUg3Q1lFNlJia1RQeldVaE1jNHBUekdw?=
 =?utf-8?B?Sk4rYmFFOGlHblZBUnZvMVFwdkVYTEQ4TkhXNE1EL1RONVR1YUVhazBGL3Zw?=
 =?utf-8?B?Mmdwcmg3VlQyNEVTS040alJiWWVncWZIaGdlRTFGdkdMeEt1elhJZklVb1ZE?=
 =?utf-8?B?ZjdBS1d4dThRZjVtNFVQMHAvUk12QmhmTlMxY3F6WHJrQXhoVXlCTUFMZkQ3?=
 =?utf-8?B?WjFrdHI2Njk5eXJJdkVNakZHUHJNU3dJUTBlV2ZnMWtwcXVrc0JObUF3RndU?=
 =?utf-8?B?WGdZcTFYZkZkNURwWS8zcHZWd01QMG9wMis2VG42RWpwWkZLTkFoK2YrYzNJ?=
 =?utf-8?B?TjN4eTVPS1o3WnJxSHpFSStnVnJrZytVcWJ6eWFzZ3pqOUhibzhvZ252TVhM?=
 =?utf-8?B?UkRPdm5kTDlNUG5nZnB5a3FpdEowOEhlSHJFRy95SmhjZnNxdDB4T3Zqb25X?=
 =?utf-8?B?NjkvNUFYQUZ3ZVhKcWJoQW8vZnNvNUJIV0FIM08rbmtuaFBWNEp6R0hmY3M5?=
 =?utf-8?B?TWFjOGwzQ205c25QMUloQ1dTN2s1N01YRHduZkFsWWQzLzluR3ZGRzZLRnVQ?=
 =?utf-8?B?dndONkJMWFcxd3NKSlMxbHNzbVhHc2RlMEppZ1BQazFpd0JMcW9FTTVTN0FV?=
 =?utf-8?B?N0hyY2EreThLSE9SVlI1UWhkamsrVzlkS3lPRUprdFFET0dHQWdCSjh4UVFJ?=
 =?utf-8?B?S0VrYjhOZ1JVL3F5TjM4b0xJT01KbE1nZVRVeWFRcGw3eXNZZDNMUXo1WVRl?=
 =?utf-8?B?Q0FXVVU0bFlGTzFSM3dicjI1V0JPT2RXOFNlYkdqZUlVQkM5Q2ErQWo4NHVI?=
 =?utf-8?B?SDdwNmFzY2RiRTYvNnhOcmNpNEpqUHBEOGorYjB5aytHbCtXSnRTcFIweFpJ?=
 =?utf-8?B?Ym9MRDRjWXRpaVJ1VTB5SGRVMEVHclNrSGtCKzJHVWgxUWsyaU1waGZjdlZq?=
 =?utf-8?B?aEtxWFBPUkFVUC9KaG5LNnFrWVo0VnU4eEFQMjRtK1dFYTQwTDZucVg3R1dG?=
 =?utf-8?B?L21NOGhJNEZVcUxrcEJHek5keXNGbFp3MXZPTlZNdlk4bmx0dm9qZEkvWmtE?=
 =?utf-8?B?cmRFcTY1RDVNamRKZ0p5bnlTYkhwam1CL0llZVV6SFFaTmFuQ0Z1UGcwQ1ZZ?=
 =?utf-8?B?NUJZMFp1dlVrRFhkNTFxajJENjZsUTYzMUROWHFuNXNMS0ZCK2JNMWc4clR2?=
 =?utf-8?B?NW4wOE9TOGNrOUdMQlBaZUVlL2VQZUZLUXYreTNQNDNMU0hDOXZUWWtMNDJW?=
 =?utf-8?Q?6x/5NT5+Vxk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2ZxamtwMlR2bitQa2lJU05TNktoSUpyMDZaU3BodXRyZWhxL2V5MC9pM3hT?=
 =?utf-8?B?V2VreGJNV2ZVTktubFU4TDV2aEFuVnFZUHpibVd4VWdRVDVQcmNoM1hnQml6?=
 =?utf-8?B?Nkt6eWgzdzlscEdGUklZc3gyM205Vkg0Y24rWFJlZDNaUWFtSHZhSzJrUWhF?=
 =?utf-8?B?cE5KOUVtSXk4S1UxdUZYajZ2RkJhOTBhaklHclV5Yzc0NXhxSHc2ODVJODdL?=
 =?utf-8?B?RVV2TDhNSWJ6QzV2TlNnc1dRcDFpa2Rpejkzd0JDRTJOSnlRQXZZM0RQamFU?=
 =?utf-8?B?Y08ybnZqWnZ1eC9pam5rN1VudDRKY3BoVkpoUnhrbWhyc2JIUkliV3czL04x?=
 =?utf-8?B?YnV4NXVabkJub2xQeHNaTDVhZjR3OXpaazUyMlBobUJhbjBuR3EzMFlwQWN3?=
 =?utf-8?B?RUlIalB2dUNHRTBGcEFBY2xVWG9IRGYzOEk2KzFzVHlRWmhkUmE3WFBCN3Nr?=
 =?utf-8?B?NTUzbFBoay8va0xFOHEwTlJ2Ri9Ob0VLcFphUGw5TmltODNraGlLaWFCNlF4?=
 =?utf-8?B?RmhJbm11Ym1oR1dzaUxnRE5OczViZThZT0FqcDZ5NE1yRDh1RlhQSkhveEhY?=
 =?utf-8?B?QkNPa0FObHZndkFlYkFTMmpVZDFuY1M1elgzeVJnYmVTem9tWC80QjRnejBU?=
 =?utf-8?B?L1R0N0ZwUEd5blpNY0RVVEUwWm9kT0I3clZTaFkrbzhBUTEraFVHcXNzcURW?=
 =?utf-8?B?OVg3UzNqZ1NvNHVDV013eTZCLzhodWpUWXZHU0w2dFp0c3FLNVZCSlBpTVly?=
 =?utf-8?B?dTJpN2pBQ3dUZzJ6V2dkK1ZPcklsNjRiRm1JQ21RWG1zYXBOOVFQZlNUSXd6?=
 =?utf-8?B?L0srOTVTa0lHbTc1S3NxRldXSk9JOEI5eC9wczZqb2l5RDdhK0hHemxXOVNy?=
 =?utf-8?B?eHNqS012bS9hVzI4dzcvcVRRaUQzeVIxaWc5SGQ2RWJnb3huN09NWHpKS1NZ?=
 =?utf-8?B?OWJndW5GbWUyNGZYdURmNEx4RFJKNlE4bk5tVWxrbkMvU0lMSGx6TG1oc1Zu?=
 =?utf-8?B?VU45OEVndGxDWFJJc3BWM1JaQVhNSk5VZjJnK1FFeHlzcU0zaWxtM21lYWtp?=
 =?utf-8?B?dGk4c1h2dkluSzVlQWpHMWZMT0U3TUYyUFJSc2U5UlA0WTNXNkRqb2ZWM2dX?=
 =?utf-8?B?Si8vYTlqaGJmQUNaUVlOWVdGUEc4T2l0T2hZWDNYckFyK05KbHl0OGg2Tlhs?=
 =?utf-8?B?YXU2ZDJZclIrTDlibmpiQmpBOUZvVEkwRzRpOEJuRFNEQUZUaEFLZEFMa3d6?=
 =?utf-8?B?ZkcvaVBYL0ZLUUJScnZkQWo3NDlma0RUTnZkQ21OZGJsdUl2YXFobXdWUHVw?=
 =?utf-8?B?NnRGa3ZYS2VQbWg5dGJoUkx1UEcrVjVLc09QZEJOY0YyK0IybHFHVEwyRW9M?=
 =?utf-8?B?Nm1HUzV2NGJpT3ZKalYvUWFHVXAxOEgzTTZTT3M5d2wxY3B0ZEJKVXVWKzdW?=
 =?utf-8?B?R2wvaDJNQ095WGNqL3F6N0lmTVlCQXRtVmxCaFFPSjNOTG9iV1dnWmtWRUls?=
 =?utf-8?B?cFQrR0M4cDlrVW56LzBkWVNTNVBodzRWLzRqOVlrRGJVRk9GL2ZDVFo4bUNY?=
 =?utf-8?B?SUZaOWtWVDQ3SEZQaWxNdS9IeThlb3MxQTJzc3dZM0lzVXF2NFJoSk5Oa1du?=
 =?utf-8?B?TEtQN1FGRExuNXcya29RQ3cxTUdtYlY1bU9vamJXR2xQanFoL0dNc0JBbEox?=
 =?utf-8?B?dGQydS9Nb0YxRE1iaWdmOHROZ1lrZVBESnFmN0gwQWVjYjA0Wjkxc1dLUjdm?=
 =?utf-8?B?WXhBVHh3MVVldFQxSG1VQkVHbm9pek95WlA1MEVFTnBoNzVia2ZQUHlEcHg2?=
 =?utf-8?B?Q2RUNUtoRHZDNVA3cC9KbTZCajg4RnltZGovekNPOTBCY1Z6T0pBU05hYlVv?=
 =?utf-8?B?YTd4UW9IU1BkcXBrVTFKRG5IOWVaVFJlS2hsWjhNa1lQVHZnVUVXdnNhMHdH?=
 =?utf-8?B?QVMyNFdmeGlHcEFHSHB6MzN1RU1wK1E5OTZPZVQrYk81dXc2TGJoUzc2ckNh?=
 =?utf-8?B?RVAzc1VkWW9HT1ZSRmRyYkNDNXNzQy9BR3o5RHZ0cmdzanNCUU5kSmdtWGQ3?=
 =?utf-8?B?endocG9rSjRCNUJrMmsyZTRqc3NNdlltN1hrVG5UOEtBUUxBbkQ2aTZJN09x?=
 =?utf-8?B?ZHZKaVMwUjc4ei9TOXk1QkE0bkZyMlpnbmRFOTZqZzRjSHB0L0lhdVF3U0NB?=
 =?utf-8?Q?Vi1dlt40H2/JujRMjLIs4yRIVx5eJgoNDT5aFEoIm4nJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5692746e-1851-4913-247b-08ddc3a0adba
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 13:08:23.6932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: biSF5z7zGnA7y5ZJw664yrke2TFEjpF0JnWqadr3PZyGiZagVRNHyFDntZPskbZmjnCmFTQc6nZXS9YT+Cv5Y+MA0HPKwl8QJ3UKqU234JKz6IRtZh6AF2PxURGODEAm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5026
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


On 15-07-2025 15:10, Imre Deak wrote:
> On Tue, Jul 15, 2025 at 11:22:19AM +0530, Dibin Moolakadan Subrahmanian wrote:
>>   It has been observed that during `xe_display_pm_suspend()` execution,
>>   an HPD interrupt can still be triggered, resulting in `dig_port_work`
>>   being scheduled. The issue arises when this work executes after
>>   `xe_display_pm_suspend_late()`, by which time the display is fully
>>   suspended.
>>
>>   This can lead to errors such as "DC state mismatch", as the dig_port
>>   work accesses display resources that are no longer available or
>>   powered.
>>
>>   To address this, introduce a new `ignore_dig_port` flag in the
>>   hotplug in structure. This flag is checked in the interrupt handler to
>>   prevent queuing of `dig_port_work` while the system is mid-suspend.
>>   This behavior is consistent with the existing approach of suppressing
>>   hotplug_work during suspend.
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_display_core.h |  3 +++
>>   drivers/gpu/drm/i915/display/intel_hotplug.c  | 22 ++++++++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_hotplug.h  |  2 ++
>>   drivers/gpu/drm/xe/display/xe_display.c       |  4 ++++
>>   4 files changed, 30 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 8c226406c5cd..376682c53798 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -209,6 +209,9 @@ struct intel_hotplug {
>>   	 * cue to ignore the long HPDs and can be set / unset using debugfs.
>>   	 */
>>   	bool ignore_long_hpd;
>> +
>> +	/* Flag to ignore dig_port work , used in suspend*/
>> +	bool ignore_dig_port;
>>   };
>>   
>>   struct intel_vbt_data {
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> index 265aa97fcc75..b2891b7c3205 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> @@ -223,6 +223,26 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
>>   	return queue_work(display->wq.unordered, work);
>>   }
>>   
>> +void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value)
>> +{
>> +	if (!HAS_DISPLAY(display))
>> +		return;
>> +
>> +	spin_lock_irq(&display->irq.lock);
>> +	display->hotplug.ignore_dig_port = value;
>> +	spin_unlock_irq(&display->irq.lock);
>> +}
>> +
>> +bool intel_hpd_can_queue_dig_port(struct intel_display *display)
>> +{
>> +	if (!HAS_DISPLAY(display))
>> +		return FALSE;
>> +
>> +	lockdep_assert_held(&display->irq.lock);
>> +
>> +	return !display->hotplug.ignore_dig_port;
>> +}
>> +
>>   static void
>>   intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
>>   {
>> @@ -691,7 +711,7 @@ void intel_hpd_irq_handler(struct intel_display *display,
>>   	 * queue for otherwise the flush_work in the pageflip code will
>>   	 * deadlock.
>>   	 */
>> -	if (queue_dig)
>> +	if (queue_dig && intel_hpd_can_queue_dig_port(display))
>>   		queue_work(display->hotplug.dp_wq, &display->hotplug.dig_port_work);
>>   	if (queue_hp)
>>   		queue_delayed_detection_work(display,
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
>> index edc41c9d3d65..9dc40ec7074c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
>> @@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
>>   void intel_hpd_enable_detection_work(struct intel_display *display);
>>   void intel_hpd_disable_detection_work(struct intel_display *display);
>>   bool intel_hpd_schedule_detection(struct intel_display *display);
>> +void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value);
>> +bool intel_hpd_can_queue_dig_port(struct intel_display *display);
>>   
>>   #endif /* __INTEL_HOTPLUG_H__ */
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>> index e2e0771cf274..2db71bd07c9f 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -342,6 +342,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>>   
>>   	intel_hpd_cancel_work(display);
>>   
>> +	intel_hpd_ignore_dig_port_work(display, 1);
>> +
> The actual problem is that HPD IRQs are disabled too late in xe, this
> should happen already before intel_hpd_cancel_work() is called.

You're right — the HPD IRQs appear to be disabled only later via xe_irq_suspend(xe),
which is not early enough to prevent unwanted behavior during suspend.

But unlike the HPD IRQ enable path, which uses function pointers from
struct intel_hotplug_funcs, there doesn't appear to be a hook to disable IRQs early.

The proposed approach mirrors how we're already handling hotplug_work,
which is gated by the detection_work_enabled flag. This flag is cleared during suspend
by intel_display_driver_disable_user_access().

Regards,
Dibin

>>   	if (has_display(xe)) {
>>   		intel_display_driver_suspend_access(display);
>>   		intel_encoder_suspend_all(display);
>> @@ -469,6 +471,8 @@ void xe_display_pm_resume(struct xe_device *xe)
>>   	if (has_display(xe))
>>   		intel_display_driver_resume_access(display);
>>   
>> +	intel_hpd_ignore_dig_port_work(display, 0);
>> +
>>   	intel_hpd_init(display);
>>   
>>   	if (has_display(xe)) {
>> -- 
>> 2.43.0
>>
