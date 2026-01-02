Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B394CEE013
	for <lists+intel-gfx@lfdr.de>; Fri, 02 Jan 2026 09:09:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7A310E089;
	Fri,  2 Jan 2026 08:09:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kduEemUk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E406410E089
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jan 2026 08:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767341393; x=1798877393;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rGmTtkVuvoZvM1sLMNXs2Jypz1VN3259FXXhG+6Iqok=;
 b=kduEemUkRJkCX5AiaSFEyQpykNsxzghqkJQBDqmGXXDd45wXC2Wg0CYe
 0+wutKefFkKXqdROS2g+4P2qAune6mbJ3rH9mudByr1rMJM1fYNNSkuOG
 af5ku/6b0HzNAhpAHYQBCvJFF9IBE1d6Tb/tG7B8k6EBqnxyaQLhbhW8+
 xhdjRGDXqrB5DYByLTP4EZ8P4Ph3Q1LhNCftnrhTQUQHpRa/ex/RQb2oh
 LaHTpJgXI9JZkVF7D3osY0/8YBP/NPJLIBqYJagTIrMkeQZw9028k5j68
 hv+wTi6YYn8noi44mPdQsiPaj1v/6W08nCQFbuyPLp057BDJC9W4HuUhi w==;
X-CSE-ConnectionGUID: FigN/wKHSDK8doaTKa7LTw==
X-CSE-MsgGUID: Ik4VhYzARmWzgLfZ0GzlKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68777652"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68777652"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 00:09:45 -0800
X-CSE-ConnectionGUID: j+sCkeE2Q9q2oLjJaZ9D3g==
X-CSE-MsgGUID: 8InKwTSiQR+uSlsqb8SfOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="202238548"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 00:09:45 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 00:09:44 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 2 Jan 2026 00:09:44 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.69) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 00:09:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=umQjtX5AX40z099jzKno0dr+k6nb5D1DDmG0xU5cJ/VjAQVa5h4U1w/aAS10Bc6utJIvqdzPV64EW3j7PGVddUj1T/t4jP9ETLfDXkWX7u50xDYs9AFQz8oiheZtNYjxazN2cPeT75rlJ5NOY8ZHJCF8rpj7++0JnH2x/BDtOtTQZMjeGjNJ7stD3lbLWkc46vmsELt0OQhYMScV/Bsl980+DoIKiWmZC3A2aEGgu4WeBRX7fYYkMktIqL1c7UQ4WJfBI7u0iDjE+z7qcNF5RMHezy9Pj7KnRIKTakDwtdqipAxqGqDQn2tXUeAEewWNvCQBeSzBJH9J514UNl03Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PBKoYDSLnorqzv5aJ05tHl5bCok39grTUU39TbptUs4=;
 b=GjjLYWPLJNY4OdJRYmEC0iLQ9OIoByz4x4jtZxtZ1NOIaZ1PGT09eolOhd464scS0CMlY8Dwb6I29YxHFM5rDWnMbN+qdW+/xYYOWTMFIhmfyzzI+xpKBYhfDDqVmxCZKJqoYPxnNKod+TlZC1g4ycZ0pBuACgZ3ovDKx806TO7RPkh0bYInyxAclSuvaaYvb7PDMURfA/0Gtgtea4HxeoeUPUzxOt7GJtUfZ+VdvB5KlUn2vGHBTJfhEoCk0ESV0+0ZOZLFjMXjWuOQFg1e4BCNTQSewmIgZeETp9WBTWF9E5G3t9/9kzm+ZnL6YKOlwrn+Xo7+NfCg6L+Fh4tPog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5174.namprd11.prod.outlook.com (2603:10b6:510:3b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Fri, 2 Jan
 2026 08:09:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Fri, 2 Jan 2026
 08:09:42 +0000
Message-ID: <01e0e388-b626-429a-8c0f-02fb98ddb192@intel.com>
Date: Fri, 2 Jan 2026 13:39:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/i915/gvt: include intel_display_limits.h where
 needed
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1767180318.git.jani.nikula@intel.com>
 <30696b712f4beba171c15765632ad9c3e1b8b1d1.1767180318.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <30696b712f4beba171c15765632ad9c3e1b8b1d1.1767180318.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0171.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5174:EE_
X-MS-Office365-Filtering-Correlation-Id: 6628efa9-a078-49f0-bd63-08de49d64841
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cWFrb014L2dCUlE4eFp5Y1dmUUZ1T25XMHVWVWE1NjRDS00reXErcEM3WXd4?=
 =?utf-8?B?MEZkQXAxTDk0SUErRmhzelJwRlkxckJIc0s4QVJvK003anBTV3A0QnZyWkNC?=
 =?utf-8?B?M0QzWk4ybFNENUh0RTAwMjBuUm1uZUpPTDF4WTk4dWhKZlJKSmhrekZYTVFo?=
 =?utf-8?B?bDN2UXFZWDJVUk4wekJWcGMyT0FvT0h3azVTMFk5bW4rTU1jNzZLL1pmckNl?=
 =?utf-8?B?MnNveDNjUEE2MWFEelNkSDNKZU43ellNZksyTWZaNkJFUFd0NEx3cXUvS215?=
 =?utf-8?B?Y0VKSjM0TTNxeUpMTk1YQTVSUkx2Vkh4M2wrOEhWbEV5UmJseWhETmRRWk5G?=
 =?utf-8?B?MWw4NStpd09BVk4zTEMzUS9lY3hBUmQrdnJsUWZ4bmJjUzhaZ0hsV0UvQkJD?=
 =?utf-8?B?S2Mzd0IxUGdVaXFWSzFXYk55TzlKSFJKK214R0J6MmlqVzVPcEhCUE02L0NH?=
 =?utf-8?B?cUNBamJtNEVUNEsyNFQwOUEvRytyU29Uc3V6YllPMzR1RmQzZjRKK0NUT0ZE?=
 =?utf-8?B?a0k3ZS9QWWZiS3M2WUJ4aTlxdmlUSW81RU1FOFh0cXZmUEFDK0JDbm00ajZE?=
 =?utf-8?B?VmNVd2Y5VklSUWtYY3BORHZvaEhFY1Z5NXo3aXVqQ1lMV1RvY2hpTjVxK1Zi?=
 =?utf-8?B?RWxvQ09IdWdsUk11NS9uSS9lTDFWLy91VXo3R1FlSjRtTUVWa0hoUEVsdWFC?=
 =?utf-8?B?czlVNTc3UkdBQzFiaXlQQnZtTDB1K21yb0NPWmFudURkWE5ndWVTSzQzd3pX?=
 =?utf-8?B?RTJ4dWtoY3ZwTWQyQTBQZU5EdlpPR1lXZUxrNUpEZHU5SGFEdjQzb0lReTlP?=
 =?utf-8?B?TjVzTEtpS3BLeHE1eXc4ZGNpVDYrMi8xTXZoU1UwdW8yd2pJOE5ydnRiSUpl?=
 =?utf-8?B?SjJyV0Z1clZhdkNFZkJJNmplNUlsVUEwVmF3UmE1YVlSeUYrek5nL2Z1VGJ6?=
 =?utf-8?B?SXJKSjhFY2NUV21DOFYySzc3VHdncVpPbk5VR2JQb0tUVkxaR2QzdStBN1ZW?=
 =?utf-8?B?TnM1MytyOEZsdGFpSTRadzBDNlUzd2F6VDRQVjFYZ251QXpNa21nbjlIbnJv?=
 =?utf-8?B?Q3FVNXprd1YyeERHb0hXUWVwdWc2R0h5ZjA0U3pGMmx0NlRydmlzY0Q5TzJ3?=
 =?utf-8?B?eDl3V0ZZdXF2V2ZDTjJTZW1WUXcrWHYxR0hkVE5IOGR4RktvZDgxTTVCQ2Ju?=
 =?utf-8?B?ZlpoQkFiZ1hPT0lkVWs4cktBeFJVOEczdVNOc1NJaVVUcDljcTkzZTc0MkNm?=
 =?utf-8?B?ZzllQXkvU3VZd0pWUGpYQ2NuNG9Tc3ZYZUZoakdsd2tWSGpxS2tmZmRiZjZK?=
 =?utf-8?B?Y0gwWXpDRG1vOWxXRGhDeGlacmRub3RpbkJQdUI4SlFJVXpLb1VMRlpnOFFa?=
 =?utf-8?B?RlJCTll2SCtVMG5EUXVHYk9IQjluaVBKVHBGdW1PRzhTQ2Fvdml5QkVhdTY4?=
 =?utf-8?B?Zk9QMWxQQVZweXg3OWpBZmp4TnBKRDFpQTBjdHRkM0pIaDNTc2NOMTBTQUJC?=
 =?utf-8?B?Qk1DT0srdTYrYzVhL3Y5RlRWS0Z3NEJEcForeWJuSkN6Vk1qYTB4UXFoeTQz?=
 =?utf-8?B?dUxLdHNBQzV3bERKbDZxNWNIa0lVdXZVZmZrOWNCY1dzRXhIS1ZYc3ZIY3p0?=
 =?utf-8?B?WVdhN0gzZWR2RVlRK3VxNFFBSWxxOFNnRXFqWWZBYTBNVFptL3krbWRIam1B?=
 =?utf-8?B?eGtYYW9TOW9xMkxOVDE4aW04RURKUUZuSXIyTlRhWmFZQTZUK3JqNGYxdGQ2?=
 =?utf-8?B?NW1BUFRjTE5WTU1wdUZIZTRQVEU5cWJHWXNoTGpOalM1VkRHbmMyRUY5MktW?=
 =?utf-8?B?NHBSdHArcm8waUpSa3VUOTdjMVZTdFNpdHUyTE9GTndMNDRzckhhL3RjVHZh?=
 =?utf-8?B?NUdvaWU4Z0xEQjY5WW9tQ3FuTDV3cjAyNFdQU3AwenJXM2hwZEdRWVBLYnMz?=
 =?utf-8?Q?2mIZDfFFxJZ6l0H7xnKnajiYCtuRx3xN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azR6dGR0Z3gybW05SkdWelhDV0JKRmllLzcyc21GZVg3RThEbDA3S3VZRzhL?=
 =?utf-8?B?cXdRQTlOd1cvZ3VTaEIrODJJUFVqU3hNWENLZXpIMUhLZnQxbTRYYm1BR0hG?=
 =?utf-8?B?UTFSdkhNaGRPejh0dG15SVA2ZDQxRVBLYUk5ODNmZnl3elBzbi93ZW1rNWV1?=
 =?utf-8?B?TnhHSU02aFhWZXZ1OVRESUdLd2dXNUNuZmo2RThQcnk0eGlEaEd6T1dzcmZ5?=
 =?utf-8?B?QTdWRExlMzFLZjhuTWROOURHVGt6WkkrcmdBOXVvaG9Jc0IyTmdKOGtIM2gv?=
 =?utf-8?B?QnJoTFVtZm9tWEdleG81Tk40bmtLSEgvcFNGS1J5T0c4eGowWERJeHh1a0Vv?=
 =?utf-8?B?TGE3NnJuZklmWlFtcnc5VXhqS2JkQ2dRQXRGcmQvbUJpVjRwczlyamlaS1pG?=
 =?utf-8?B?cTYwZCs3UDNVRmdVbTZmbGU4eHFCK3hqSTJtcUNGd25LWlF4YWJvSGNHR0pP?=
 =?utf-8?B?NlhDQy9FUTJ1cUNHdTVOdUs0dVJQL3RrUUNmUnovZm1sNUFnZkdPZ0k1ckVt?=
 =?utf-8?B?bk1wNklzYzJNODdla0YrTlUzVmJIZUhHTHVBaUxWNThaa0phc01vV0REZ3Bu?=
 =?utf-8?B?SnNzdDhiZWVQZjRkb1FUY2RlalRPNFZrcUhNU09wQTVFQkdzY1pDanQ4clNu?=
 =?utf-8?B?K3ZtaDJUQ1RNLzNRTjRETjMzd0xISEk4MHdsTGthWmM2bmIvcmk2UWJZYmxY?=
 =?utf-8?B?WVdwNVBRODhMa0FKYmc3VXJqRnYwb0tqd2E2Ly93ditZb2FNak43RVo5TWJ4?=
 =?utf-8?B?MHRMTVhKUitKS0VpUmMrdGhFTy9kV0pHNFNOZ1VORXZwMlU0QWxJTjMrdHZE?=
 =?utf-8?B?L3M0RkdBZVFiL1lRVWVNdHlOU09STElsQ21WM3R4c055azRWdnJ6QWFESnNE?=
 =?utf-8?B?cUNlekJyeGtWUGdCS1BVSmFOY3VsQ1dBZDlhS2hFekNZWHlMNjNPZXZGTHNN?=
 =?utf-8?B?TTlYTy9TSmtZV3FxS2gzcDRqZTNEdkcwbnRxMnY1bHh4cFVDWWJnc25rZFMy?=
 =?utf-8?B?RE55a0xMMFpNZ1BGa2xMVHRSTjEwTWdYT2NPZWgwYnBnZDNLVXdsaExIcFFH?=
 =?utf-8?B?YTAySWNNZHVSN2VQM1BJWkZONE91YTJ5UXdBOFR2U0tmZlNmK0pSZjdERG1M?=
 =?utf-8?B?Yzdsemk1WlNQaEJYaE1NaTArVHRVekgrOXZ3YkgrbmlNVTQ0V2pDcHJyVmRy?=
 =?utf-8?B?aStONTFIeWhzV3JkQ1FGYWxaQTBLRGh3SzRZRWI0aC8wUE03VXkrT2RGWUJR?=
 =?utf-8?B?UjVLdFlpVG96bURxSlNRVGkyQ2JWSzRWdllKaENWK1pnYk5YQ1hKcFJScEgw?=
 =?utf-8?B?L0hDd3FNS29hR2NWaUR0YkpwbzJyRi9oZGxQOWJBTzhFYmRUSlZJdkFEeGNw?=
 =?utf-8?B?bG1aaTUweHNScUZiSytjKzVjNlhvRCtTdXIyYmQvd0FWR2ZPTEd0NHRWY3hV?=
 =?utf-8?B?QkNrWm1IMkZTbm5EOXpXL2l3aitpd3lzeFp6bkNWZ1FVdk5IS0RVZ3BCbkYz?=
 =?utf-8?B?bWlOMmU3aWNabENCK1JlbzBQdHBTZjRrSFYrMjlnb2VJQjlJSWplOW1IQW5P?=
 =?utf-8?B?NzNuV2JkMjVXRHRiMmhTY0EzTk1FZmZFS3pISWJZNmxNOGlyNGJRODRYY29w?=
 =?utf-8?B?bkREQktaWjlROEFjdG84VW8wOWprS1NkUXhPQ1M3Mjg4UC9vc2hqc1ZmMUww?=
 =?utf-8?B?cWVZWlExdk1SQ2JPVHQ3bU9oQkdkVmg4dzc4ZUdITlNHeURNaXpPWEhDQjZN?=
 =?utf-8?B?VURLamU4cFhnN1lZcUc1UHVhenZjYldDYWZGT3hJNzUrdFZhb0t6MjhCZHFJ?=
 =?utf-8?B?ZUZKQkt4cVd4WDlPWkdGVHVPRUZBNURnMDNPTS9SQkZWTk9IdWtCR1lDdEI2?=
 =?utf-8?B?c0ZtVEpsWjd3MExxbGFnMVZFR0VIRnQ3N3kycUVEWkExRlhtQTF2ck5HTTIr?=
 =?utf-8?B?SW5NSzh4cjU1eS9ZbExUYnNGKzBDUk5IRGk4Q2NucHFHeVV2UlRXR1BZL2NT?=
 =?utf-8?B?SHNMb1FWTE9YNlI4R2ovaFUxK1hLT2FsYkx2UWFqQW9mSEY2dVdUS3o5a2tx?=
 =?utf-8?B?TThMUUlOTFdaTm1IdW83MEJycS9pdkZUcmMvNmUwQWNKVE1HZGFRUGl1QkRl?=
 =?utf-8?B?SDg5UG90Z2FqdkJyWm9haG1NSnhzSFJTVWNMVDMxTHRIQ1ZvYmV0N1hIbTFi?=
 =?utf-8?B?bHV6VldtN1Y2dHdXSkpKeTJ3djBIdXk3U0tHdnNTSTN4YW9xcFY4NlE4NFly?=
 =?utf-8?B?ZFhha2ZIYW43ZHhCekgxYTdqK2FLOHBDUzIydDdGbG9wNHhkWlM1MXQxbFda?=
 =?utf-8?B?R3JvZ0xjTUZBeFo0Q3M3R1QyM0FCaDNzazlRRCtPYUxHMHQ4VlhldnkxQkFH?=
 =?utf-8?Q?QzEQRHvMSxvzepoc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6628efa9-a078-49f0-bd63-08de49d64841
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2026 08:09:42.2698 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sxw4yrZhbM1QTc+IeMPGkoxCKetfODjiKfG3p0NxUmu+6EdkI8bvhkOOO3WZEqQPEnTPI4iPrV8/Fein1Up1ddeX/adqmOFool7CPYhrs9c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5174
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


On 12/31/2025 4:56 PM, Jani Nikula wrote:
> In this case, it's actually gvt.h that needs I915_MAX_PORTS etc. from
> intel_display_limits.h. Make this more evident by moving the include
> there, instead of getting it via fb_decoder.h.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/gvt/fb_decoder.h | 2 --
>   drivers/gpu/drm/i915/gvt/gvt.h        | 2 ++
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.h b/drivers/gpu/drm/i915/gvt/fb_decoder.h
> index 436d43c0087b..bc1e9d149e25 100644
> --- a/drivers/gpu/drm/i915/gvt/fb_decoder.h
> +++ b/drivers/gpu/drm/i915/gvt/fb_decoder.h
> @@ -38,8 +38,6 @@
>   
>   #include <linux/types.h>
>   
> -#include "display/intel_display_limits.h"
> -
>   struct intel_vgpu;
>   
>   #define _PLANE_CTL_FORMAT_SHIFT		24
> diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
> index 9adcdecadaa8..7fd2356f463c 100644
> --- a/drivers/gpu/drm/i915/gvt/gvt.h
> +++ b/drivers/gpu/drm/i915/gvt/gvt.h
> @@ -38,6 +38,8 @@
>   #include <linux/vfio.h>
>   #include <asm/kvm_page_track.h>
>   
> +#include "display/intel_display_limits.h"
> +
>   #include "gt/intel_gt.h"
>   
>   #include "cmd_parser.h"
