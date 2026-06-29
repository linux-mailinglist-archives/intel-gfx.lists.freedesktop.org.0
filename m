Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 33bEOuXyQWrYwgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 06:21:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B8E6D5D18
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 06:21:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UV8lNzUP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8CCD10E6A3;
	Mon, 29 Jun 2026 04:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB73E10E010;
 Mon, 29 Jun 2026 04:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782706913; x=1814242913;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PlC5LX++WMsGda5gpVOr4+WXpH8Oja0K+YP18oY9apo=;
 b=UV8lNzUPBUPiiTaZTLgFwvH8S8rCwQA/BN6whhmmVxbmoAjPK8JaM4zl
 46KPx04P5wuHY98vS/GTqGoFqtG38MseyvdrSuo2tg07v14ODox/ai9bc
 LuqBa/1KKMNUka+PU0XAS3QYLoDCHxsOjChCybyaqF2gOxzTvCus9nJ7S
 ujxPxHtsSH3jPjirJUhgwx+QzXl96mfOpI2KmuqUPZ7t+qxx4YjzVEFEa
 xSfJsr1yHB2GbKDB8OBGOVFmPV2fQYusRenojl3VNKEcAtNNcgIhc3QIR
 e7/CMxyNZMz48XLdjOseuFYuMs4N4g7ccGkT10wABruzp/vwLDOQrnX5Y g==;
X-CSE-ConnectionGUID: RIVB2FiQRfi29U3fhNd9zQ==
X-CSE-MsgGUID: YVsCeeRCT1iUFp8NZjO80w==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="94776435"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="94776435"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 21:21:52 -0700
X-CSE-ConnectionGUID: p27C9biJTWmZKOrQXgh87Q==
X-CSE-MsgGUID: Og4GrdPjRuG76FhF4wSnvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="251975866"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 21:21:52 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 21:21:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 28 Jun 2026 21:21:51 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.3) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 21:21:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cf+d3nQftAvis2c8ScxMmjid1y4tTbFxVnsaGM+SVB2t6qOjbaljyIV6XBg65jba97c/9YN7d+/XlbHbyb9a9MwAlzJdUN34T3MDpcxllyzd3SfD6V21DZWaUJcaUi8WnN3LbHyL3cfCeo7kH/Rk/q6+g6EIa486nCFEx4UR+k066M63eMYQBQJYUIP8gNu0YO1DtbOxmk2cxltQLm6DguzbMb3molfvqzXQm5NpfqfiR/XEQ6jGx9Rk43qV4TZQbpi2TC0KMnB9v5eGtEBkpl2GV/GSxvW35Kn1xB9HXIRMWgd/xorSmbbyH47f/c1VrB2l9uaG5AALkogCORsxJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xfuzry5lpbOGFh0+XYcDUf5Es+BJMXKzFDFFrt27SIs=;
 b=e+lU1TgpZvP084Y7V6ncuhpF9W23qpoLGMCLjsKDUAUvyatr1sOH3O7ZwGaZ0CZMsTAq4upHRzr3Gpa+0KlV+8lKQM02HQT9JxXUGQ76qVBV3JVS/9GZ7afCt7WnH3ZEkQIaVF+GA7nqxAXJanDEoN6koIl8gHwJWZ5DUn2OIzZudFgGS1iWR8PIWekhDjX2nL9DJtZVN3PI+BWwd7EipKdny+f6HLmZV5gz79/NkEOhIujuOQVDl8muSY92hx3eeYIE2f3HnL/PHXrpIthcY0IlI3ScQDFQBFCP8Y1o0LEmQoJWR6S13mpxKAM57zxaLj4RRvhpTI4m9dYTRoB4WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by DM3PPF67FA1A8F8.namprd11.prod.outlook.com (2603:10b6:f:fc00::f28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 04:21:49 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0159.016; Mon, 29 Jun 2026
 04:21:49 +0000
Message-ID: <2a22b3bf-5dcd-4163-aab9-a3471da24b50@intel.com>
Date: Mon, 29 Jun 2026 09:51:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/dp: Read the PCON max FRL bandwidth only for HDMI
 DFPs
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Imre
 Deak" <imre.deak@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20260610193825.2933-1-alexander.kaplan@sms-medipool.de>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260610193825.2933-1-alexander.kaplan@sms-medipool.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0191.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::7) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|DM3PPF67FA1A8F8:EE_
X-MS-Office365-Filtering-Correlation-Id: d221b4f7-3a9d-4762-cf2c-08ded595effb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|3023799007|11063799006|22082099003|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info: PFcNYfyxK+7Ov1sAavVncC8i/KOMJtU7Qru5DuaKo6TtDYqibtPK9p02iHXupGmWDmxHFexijWEAZ8m/32OZfxtnTCnGEbqPd6egULJ8EfQRNnIiNTi5r/jHk9yA4qpyIHCLSh/oDg2tE/VUQ9IIyNHiBZvhAygn/HDDD1NPpnMjHIeo/LSKQjzlNGchUmP7tcDdOI2ICoYmlv75qKf5Xnlkd6JzReH9vJM29+iOr7FIw+MQdzv2QTVj+PNemKDHIwUZvrdgLYKU/6jPHpuRGHrZlLVEsJGLzNWoUUrjYi6YLrVvHeJ7/swC4PPvB+IMY9L1y2ACxu0FK/FE9Ck7kN3+9dlZ0CCOUJbmEMTwAZobdm0nTpOpn6XN+B/d58pjTfri3m32Gl4IJiOhmlk/xJk37XDZe9cY3bP7LkfqvVm7+9GqTQHMLVlsY8/cTiQsqQsfEsvbQhY5C71g64GKNnjdZFpKaJOC2bC4Zcnve2ZETIZhB0sXX6s01V7Gq+UeXEvy8di5iZkcYsvC6seASwOSqM+09gwc9wXKeNONbWF2jgwsG/1GoLuO6MZRgiffYMr5xxaYmtb97k2GFgs36Bzhpk7t6tRlY3wBn2u0+0ygVSlI2JBxQQ6yg+NvUwaRrdBZYW/lxveKEzZ9tdiKVUSkw2FGHD9rc+uL8zTt610=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(3023799007)(11063799006)(22082099003)(18002099003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekNOdktMbjNFblZxNDc2NFNtS2Frb0wzREJnUWxLQkxGa0g0VkpaZzIrdGRm?=
 =?utf-8?B?MmJmb1VFNlhKa3Vhc1hBUW9UNCt2S3FobFp5aklkWnV5a09MRXNmOVFBc2R1?=
 =?utf-8?B?c2RHamtnY3ltSlZCMjZhUlNoL2xnV2doR0tvSTdvbkN2OXJVUEtFYUlSUFM4?=
 =?utf-8?B?M1BJbnBJdXFQN29SeGdWVVZCNTJ1aGhydTNtNlVEQTBCNFhQSncxZ3FkdjdS?=
 =?utf-8?B?M0NLdStjSFVPQ3lHejV3dTBmRHFzdUptQWJTczlvMWRYSWJJaCt0elp3MWs2?=
 =?utf-8?B?ZEpKVEZMcmVZeXFEdi83TU9yWGF0N3M3emRPUWpsUTl1UmdHVUdFWGxrUGVp?=
 =?utf-8?B?Yk9kTE9ORmJBazd4M2RrcE4zUTVLK2FKWmtIc2dxYjNtODdxSktOdXpKelUv?=
 =?utf-8?B?RkVUT0VNR05pa3c4b1Z3RzJ5SVZpWC94REdWbFFFSWREWVB6eDJpZUpaVW0v?=
 =?utf-8?B?VHhvWnk4Zm1SZW93Rm4vdkRnbzI3bU5nZW5FSzVBdDRDbmo3WGo5UmZjM1lj?=
 =?utf-8?B?QjYwRXNodkpnY29SSlIrM3RDbVRhWXJHMlVMMjJqTis1dlpkLzRTaGVDb2dl?=
 =?utf-8?B?ZzY1b2ozSkNESzhwYXJkN3Q3SDNTbi9zcExCdzlNUE1qUG5GVXlCVjZ1bDNF?=
 =?utf-8?B?ZUc5bnp4QUU5WnluS1RRamp1VzFMSytwczNmSmVaZmJLczRFcHdZL3hlTG9W?=
 =?utf-8?B?ODZ6bk1ZZktIOFB2WVFaV05UbWtMOXFsNTJPQktISTNLU00vRDNxWThTSmYx?=
 =?utf-8?B?eDJsTThNVXQ3QnpndEpIeGp2ZHNmQ1czZHVYMnBvcldBWVMrdnpxWDkvQ3Ev?=
 =?utf-8?B?N0xpbExEb0FlazVDeGUxRFUvWUVoc3B4TmxnK1JDZmJlTjI3SE0vQzQzWU5N?=
 =?utf-8?B?eHpYUXZ3RFFwd3RVaG1CTGdVbklaUURyN0x5aFU1dFdpQlBDQjN1bmViei9H?=
 =?utf-8?B?U0NNOXZRSnYwcVhqd2x3T1ZLaVJYaU5zUlMwM3EveEJJWXprZU9SWW1uT1NE?=
 =?utf-8?B?UUQvN1pwVzY4YzV1Sko2QjVKYlBRZWlEYUZjcjB0dHVIMWprRC9OOTJ1d2Nu?=
 =?utf-8?B?L0QwWWhyQzlkMDZkUlRoajVlV2FOcUQ3aDFEclVqNEo1T2srKy93SVJoZEJE?=
 =?utf-8?B?S01kYzQ1MU1EcFA1cUtpVXkxT2g0N2RIWXVIRUFkN1RFNCtHY2gzYkxnNU9m?=
 =?utf-8?B?MjVreEdoVEkySUJRZncrb0pDSitlTm1rNTViWlUxMXN2SHZob2xPajFSLzZ1?=
 =?utf-8?B?WU92OEhxT1hKTnJyYmxoWGNnN0J1b1JBQUlEM1kwN2VsMncxZ25lV20wdkEv?=
 =?utf-8?B?ZkF4d095SE9kNUp1c29yQWY1UzR5L2N3SkZpV1JpY0I0aUZIR0tSelAzZVd4?=
 =?utf-8?B?TXhFem5NNGdGYUpldC9pQ3JhaE9VU3JzMHhKaVZGTmlDZFFwUng5UUVzUE1n?=
 =?utf-8?B?U3lUZTNtMVVrSllrcFBVYmROTThxeVRTeWRLNTdoUkpzOTJVOXlLZUo3WnRQ?=
 =?utf-8?B?cGdTd0RraVBQVkZaanVRYk9ZdUhLSzRyVnRCWnlhQWtxRGZPMHFocHA1SmRE?=
 =?utf-8?B?RlpmSU12NGJyY2Iya3hlWlcrWFZNL252VUlSOVZzczJvTmVMMWYrT0d4QkM5?=
 =?utf-8?B?d0J3Q2dtU29OakNZSnNTbTZBODNSdWNzcmRtNHlCdzhmOVR4THdMZVFscHBu?=
 =?utf-8?B?SkFCY3lDdEhLWExEbk1tem52MWNzV2xTL1dURE1BbmVWY3VrKzVydWI2QWho?=
 =?utf-8?B?cVJrVCtZYzZYamlIWDF0N3QwUjd2RWZNU2NOYS80ZG5OYzd2WFFXcjhObzdj?=
 =?utf-8?B?eWVDOG5ZcXp0QXE5RndFei9RekIrTHlOUVMza05HUFNJZlFET0JjVmQ5ZUll?=
 =?utf-8?B?ZE44YStFMERKNmNhanNqcE5nTGNnQ0taWnVYQnNmMkgyV1RSeVVCTCs4QldP?=
 =?utf-8?B?c3F6U2lESDIwM2Z1SFJSa1BVckJweXZWU2tvaTNUa3lzSUlqTC9lQUtvNS9T?=
 =?utf-8?B?WTFYdkZUV2F0QUNPNnAvQUVySXlwL3RtVUpwT0xZWDh2UVR3S0ZGVTMvOStB?=
 =?utf-8?B?VXZ3YjZYR3k3RUc1aUZSWUp2WWdLZ2E1ZlAwWEpIOWxGQk5TVTAyTnFGNkor?=
 =?utf-8?B?M2x2VjN2WkJRTVdPd1JsbDVPR3R4eSszUW5xSmwyS3FMTDQxVExLcEpYN1lU?=
 =?utf-8?B?M2YyVnRsZXF6b2VramxTcjlKTDFxa1FZcG8yeWtXci9HbzlRVHd3VWFPNUY4?=
 =?utf-8?B?ZGZzQzRkK0I2WDNtOHRodWpmVDlnTTJrTWUxNTBZSm0zUERZem42Y3lpcE5p?=
 =?utf-8?B?a3Q0NytSbG1CZm00RzUvUkw5L3pkWmZaTWxkRjBMQW9ncXdsVE5YbWxLa1VS?=
 =?utf-8?Q?QTl7TXLWNmyrrzak=3D?=
X-Exchange-RoutingPolicyChecked: XrZ6jWT02DVrbX+cb9ZycQhzE4Iw9SSgwK3JVg7Tl+07eYlpaUN9K+yCxmkFJITawNpRA9ZUE7Kqpw3vUGYm4FmLPUX3ns2q6NHvP8OL/hLUz0MlAOOdGqLq7nFiBWO/1+C/zc0H5JQ3dQuWRJM+8xmst2miORZJtjxjc68SuM6EJKi4d+d/jvFVYKH303F6jjHCPZ9naNiwcKdRQ7laB1UgFQ8rQa1f9AQ11th0ltngZn6FCMR0uxbWEqSx6dVYOtoIEEZwBIiKVYj9q5QNOml2uyDwPRHSWQxmrsUJ6BRN0b5+vC86iPF/AYRIeephvoCKRzm8d0L76zvtJGxjHg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d221b4f7-3a9d-4762-cf2c-08ded595effb
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 04:21:48.9493 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BuaqvQZZrEwORp+08zoPWwlUhQpC7NYPAXBgnwMC4t6LuTdN7NdWuRE8bYskAc1KJPeL4/k0iHW/goOzQzJt7KN56nMR7RjwkbQezv+12O0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF67FA1A8F8
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,sms-medipool.de:email,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 43B8E6D5D18


On 6/11/2026 1:08 AM, Alexander Kaplan wrote:
> The PCON max FRL bandwidth field lives in byte 2 of the DFP Detailed
> Capability Info (DPCD 0x82 for the first DFP).
> The DP standard defines the meaning of descriptor bytes 1-3 strictly
> per DFP type, and for a DisplayPort type DFP all of them are
> reserved, with "read all 0s" semantics (DP v2.0, section 2.12.3,
> Table 2-183).
> The FRL bandwidth field is an HDMI DFP extension added by the VESA
> DP-to-HDMI PCON specification.
> drm_dp_get_pcon_max_frl_bw() however parses the byte without checking
> the DFP type, the branch presence or DETAILED_CAP_INFO_AVAILABLE.
> Without the latter the port descriptors are one byte wide and
> port_cap[2] is not even the right register.
>
> All neighbouring helpers parsing the same descriptor are scoped by
> the DFP type already, see for instance drm_dp_downstream_max_bpc()
> reading the same byte and returning 0 for a DP type DFP.
> amdgpu's DC parses the field only for HDMI(/DP++) detailed types as
> well.
>
> This is not theoretical.
> A Synaptics VMM7100 based USB-C to HDMI adapter with a macOS targeted
> firmware advertises a DisplayPort type DFP with the type byte
> replicated across the whole descriptor (08 08 08 08).
> i915 decodes that as "PCON limited to 18 Gbps FRL" and prunes every
> mode above ~750 MHz dotclock, including all the 4k@100/120 modes the
> sink EDID offers, while macOS drives 4k@120 through the same adapter
> just fine via DP DSC (and amdgpu's type-scoped parser would ignore
> the bogus field as well).
>
> Only parse the field for an HDMI DFP behind a DPCD 1.1+ branch
> device that reports detailed cap info, matching the type-scoped
> field layout of the spec and the rest of the helpers.
>
> Fixes: ce32a6239de6 ("drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON")
> Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
> ---
> v2: add an explicit DPCD_REV check like the neighbouring helpers
>      have (Ville)
> v1: https://lore.kernel.org/r/20260610174819.6258-1-alexander.kaplan@sms-medipool.de
>
> This patch is part of a set of independent fixes for the USB-C to DP
> to HDMI 2.1 protocol converter (PCON) path, found and verified on an
> ASUS NUC 16 Pro (Panther Lake, xe) with Synaptics VMM7100 based
> adapters.
> Each part stands on its own and can be merged independently.
> The other parts:
> [1] https://lore.kernel.org/r/20260610174413.5881-1-alexander.kaplan@sms-medipool.de
> [2] https://lore.kernel.org/r/20260610174807.6231-1-alexander.kaplan@sms-medipool.de
>   drivers/gpu/drm/display/drm_dp_helper.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index 9c31e14cc413..e623ccb4c1d8 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -3686,6 +3686,18 @@ int drm_dp_get_pcon_max_frl_bw(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
>   	int bw;
>   	u8 buf;
>   
> +	if (!drm_dp_is_branch(dpcd))
> +		return 0;
> +
> +	if (dpcd[DP_DPCD_REV] < 0x11)
> +		return 0;
> +
> +	if ((dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DETAILED_CAP_INFO_AVAILABLE) == 0)
> +		return 0;
> +
> +	if ((port_cap[0] & DP_DS_PORT_TYPE_MASK) != DP_DS_PORT_TYPE_HDMI)
> +		return 0;
> +

This is the right thing to do. These come under Additional HDMI Link 
Capability in the spec, so this needs a check for HDMI DFP.

Thanks for the fix.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>



>   	buf = port_cap[2];
>   	bw = buf & DP_PCON_MAX_FRL_BW;
>   
