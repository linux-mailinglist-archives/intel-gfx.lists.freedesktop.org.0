Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMJ9HVfd6GnOQwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:38:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA2244753D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D34610E2BE;
	Wed, 22 Apr 2026 14:38:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NhVIPPOV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF99A10E2BE;
 Wed, 22 Apr 2026 14:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776868692; x=1808404692;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0Tp56/nkSTYF0GPVFeL1b0LS7VL+Q2Rm+TBwQAQFMIQ=;
 b=NhVIPPOVwkBJDQOLdRaY1iesxdOX0UeAVGBtqrINTwV6bRG4vjWqrvHs
 TO70NLo7AxU/I0jyHE8sFBqBNnCxmxMewzb4yhBl9WDCHkioJjble0JwC
 RZy/+KAJawWyh13KrQe0nWST4oB1qYwpon+rIrjxQ8T8kTwwQ2tjSTUWW
 0KJQcpYVeWIC/mRwwT9ShOA70WfuEqCzO/0k5tt59yzLdHjVK+63QiwOX
 b4MCLqdMNzEVLYja8NlaCB9SYqi9pAcz4MBWyO5CZWKSI49YjmHcn5OJE
 ACmspa860T7byahV3IGeTr+Gs95NeA6mN5a1jia0ABFdm/a6sFbNyguRY A==;
X-CSE-ConnectionGUID: sJCr0BLsRvG2uKI1SYcXvA==
X-CSE-MsgGUID: B+8w351LSB2XZNtOHI4gHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="89209735"
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="89209735"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:38:11 -0700
X-CSE-ConnectionGUID: V0420G+5Qti04F7hrCfQrA==
X-CSE-MsgGUID: J994IQaoRX+6XJkUpbetcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="237408355"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:38:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:38:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 07:38:10 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:38:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XbkWBnow2r2cakf86M49A9eFbyEgC52aoO30qyg2JPg9075qzW9cmqfzaWw6j8cJxNXgzkbcSyNoGYM8XcBtubLnz5nTTK63JRBuqPDexinSQtMlDQrJoocHkMzdmX+SWlJKf+Xggfb0/ODXTSa0zA5BS0/T4h+1a5+0nEreDYbw7/HsQOf2uA20wosQHk+Fq9PMBMgBzPAlfZrT9WNu7T/bL5F8wdqeYdta7+klUIAanfo5riXeFN1+rawE4zsiYRfJTivwK7xPPlyVUNkDoBSr9WENUqhhEu9mq7BJgqHLhdgDG+gqeqc08U8nar+Qcs5wjaETKlTpFjtQs5rSQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hnNeP4Ql0umK0nCMnr6jFAwglRkuwmXRQLuoX3aXHbE=;
 b=ctDOMU6/3Hy9M8vuzW1fKRPa4g9LvaRJ89ryLwAM1nG7HehZu68V0bgQTwxmza+bDnbscpCuPcacu3jvLMOxD6kUHYQ4edEZageXjACAZFbg5lrIa/mcP3NCUmA6mxyriut6ErCc5A8+izsw/SYTPKOtb674JsDjZxNa/Vh0zY9PPXLYc+Ga+Zq5y+FGRfQuOtjC9CLYV21l8bSI/Lvh8riAx2qVNtmXKAv0pRWLoviGVxgsuXgWK/9AZ7jjTCcT3oBlyv6dHKbxptHS8ombuvLUy18C3Ma5MScLoq3AM6UXlKWnDwXrhDJ9swjKsimqX0wZAqP3NM81ACw60dk1PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Wed, 22 Apr
 2026 14:38:06 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.016; Wed, 22 Apr 2026
 14:38:06 +0000
Message-ID: <389aad63-5cf3-4927-b70a-8f46d4c498c6@intel.com>
Date: Wed, 22 Apr 2026 20:07:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/19] drm/i915/display: PSR2: Set idle_frames to 0 for
 DC3CO
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-13-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB6360ED89FF740DD7745257D9F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB6360ED89FF740DD7745257D9F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0085.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::16) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|MW3PR11MB4716:EE_
X-MS-Office365-Filtering-Correlation-Id: e6995e45-2e08-41f9-aee3-08dea07cc436
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: N+ZvJDGVfVsMP1ILE7grd8CfnW/U2aCsXB3Ssatm6YvbZ8F0hTxi4JSrfQcmeIpMP0JyXeXHOV8Q4aeE2ny7eFxyyZy3ACBlLj+na8Ff97OKCzFW5cRTCeQMIbfgJkRnOnZVdTxvSp7l5cCpDycDIXPU+T2RKxCUPABztzofgE5+g/f988rBaZOKUtj8kB/iWSj6/SgKCBQclN7JCxyiksSJbvY1KtrDhm7ORtJYi10YRgeF3iRaCni8zbY6TK5B0eJqO8qvRSL/IGhQK3VzPzW5+dahYsBs7ok5sM3QWJX7XUUJ0j6dMBzA2iBaObeX16H3GaIziNBoKd4v+j1hwuMshKJmGnqhAGSsyF9vadBbZWj8v+aNRuLIhQcZlZBViP05u7xRa7WgbBVngzh1L+kYgaZ1uBAowm1HUqxaDCFT53FpoACnN/wbk+xtd10hQ8oEwFvYXU9+tkMK2t9SOfEg8uf/Z+SiJhEGNMDarmsIiFp6XswD4iPct0EB8v1zsCDXdqL+jQ9AAenFI265OG0ubf2Ke+vWczl55UCQUMJVxZvARp1RBFJOezut3A2ewGjIL27xj43XB67v+ThbmwMB11KIeSCzDzToeCY3Ea2k38Nn5A7og/Wmy3UqHvyfOmsTnCjHD9lHHQRDORx/FM/vXzl62aCVZi3nhP0XRLl8pYeoReIfpn2ynr7wNdSmR95d1b7I/mgnTGDbyojo6uVCO+stIq9XX3u6qye5ptc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjBNZ2dnazBuVGo5N205YnVpaEtFR0w1STRrbUdma1lsdEtTR0dDancwSWZW?=
 =?utf-8?B?SVd2MTJuVjVLUVBoRlVuamJkb1hIUVA1MjNpVExGdnhqa0lUM1A5YkVqME5h?=
 =?utf-8?B?Wmk3QU0wcFBsUm9ERHd6U2l4RlBmcUh2ZGFIZUE0eS8wSEJ4QTdObm5hTVBW?=
 =?utf-8?B?b2xmN25rNkdCVWQ0OFAxKzkvbFFmcVVIdFFoWFM1VU9ZK3lIMDhtQmZoOHpR?=
 =?utf-8?B?WTc4WmVtT1BLWWRKZytIOFRBUFlHODZoK3RESjcweGRxbjQ0cDRxbXBVWnNI?=
 =?utf-8?B?VXhYRGw5Nm9laU1DWFpKM0d3aElVK3R4VGlvUUpHbmJSN2V4eHBUczh2ZWJr?=
 =?utf-8?B?cWR6dmRhL0pQOXZzSkpzQUZpVEE5MmhuTFdJOWkrOXJkeG13eFVWRlRwSkM2?=
 =?utf-8?B?Rm8xSVYyTWFNUkszelBpOFRTU0Q3WDQxYzJJR1A1aVZYRm5NNThJdzF1ancz?=
 =?utf-8?B?RHFLNjd5Q0FDbUpRaU82ZXR6dTIyMEwxZ01YSGM2RXVORHZ4UDd3WjZQZjl4?=
 =?utf-8?B?SkpuQkxRZWxheDdjRjE0MXB5bUZkUDR4bUFWamZGb2ltV0tSZUpPVFlpVlM0?=
 =?utf-8?B?YS8zYldOZXdLM0tEWndtS0tiWWo4M05ZSXZuQ2dYZW5kOWw1K0xoK3Z6cWpL?=
 =?utf-8?B?Z3cwZ1ozM2oreVBqT3ZkR2NmbStXTm5sWHpVeHEyZ2phY3JkN0lNWXRQZlpQ?=
 =?utf-8?B?TVBwL2JmV2VSOGxoV3RGVmpNZXpyZTBHYUJuOEgrdHFvT3VkM3VQWW9QS1Vp?=
 =?utf-8?B?UzBuS0pqMXJKYzNaaFhSRDdJUytVWWpkemxyMDM1SUZVVUdtWVlyMHpSVU1r?=
 =?utf-8?B?L1NnYXRUM05PUnE4LzlQQWNFbm5YTnQ3ZVJ2SE51dWR6bmkwdjJ5bklReUlP?=
 =?utf-8?B?Z3NlWisrTURTbXh2Wmg0UjdxeTk1WTdxT05mbUR5V1M3T2FuQU1MSnJtMVZp?=
 =?utf-8?B?dHUwUDk1SEN6aDdNRk9YRGp4MWRQYlB1VVhuMjlMekNFc3FkZ1BNdDVGQmdQ?=
 =?utf-8?B?ZytlOWpHeHV4UWVUMzVjRmRVdnBmQ292RzJ5WTJpV2lvN1lCUmpLZVcwK0tT?=
 =?utf-8?B?RU1BMEx0NDQvL3ZOT0oxWmdsNU11Z2tDdFFsZWdLMi9YRzFpcFJJTlRoK2lq?=
 =?utf-8?B?ZUpqbHhpQ1BNT3Z2akdLa2c5ZndOanROMjRsU2NlTzBoRWEvK0h3SWwycW5l?=
 =?utf-8?B?MElueDdEZXVZVUlTQUd6dTVRVUJSZWExTUVSYS96RldBRFVhbG1GcmxPYllw?=
 =?utf-8?B?RFV0bU41cjhEUDdRaWR4UFpnRXRwOGpYSkh6cVI4YjNkam1hMEI0cTBJNFo1?=
 =?utf-8?B?THR0eUpxcTFzekRLUitzTUk1ckNxV0FNd1ZBQStteUNUREk2NzNuZ21pVHJP?=
 =?utf-8?B?UmhqclZaV3F3UzUzL0tsVEt5MkptMkpuRVI0ZXFmbGN1ejZEYlo0cks0c25P?=
 =?utf-8?B?TGY0ckZaYURUekFHait5RGxTL1VENnhNWkRGM0ZGNHdPOTJFdUN6RmJtSE1k?=
 =?utf-8?B?Nm9pK00weVpRS2tjT2VXMXF2UDZYU3RQclI5VXJDckhodGdnSjlQZU95OEUx?=
 =?utf-8?B?bHpEWjlvNExRbVdVY3llRTlyQ2w2MnZLVmVTM3JGM0xiVjEvdnlMTnJDcXBF?=
 =?utf-8?B?Lzc4TjIyUDdxd21aQUFhQ0VzdWRGc0xuK0kzSmx1ZXlVazRrM1pWNFpnRjc1?=
 =?utf-8?B?NHVQRDNlV0NiQmpNK3BoS29KVkxqSUt1OWZ5bU1LN09EdURRVFQ2M0pET3pQ?=
 =?utf-8?B?dXRSMUlacHFDOWlzN0NwMzBHOGZvMzA4bDFoMFc2VkRsek44YUVoeitHaDM4?=
 =?utf-8?B?VFZyWVBmV1JUVVNtVm91MWxKUnU1Y0k3dk5KOEo1SEhOUjFMcVEyWERvMzZF?=
 =?utf-8?B?THZHL1FEbjRmdStFWmR5ZERzc1hpdVduWnpnN09IYVFtM0dFOVpEVXUyaXJR?=
 =?utf-8?B?eTNmZWZNUGE1WkwxZlQ2bXNNeVhsYXNJVnlVTVVNSDUycWt4L01WcmQxQnJn?=
 =?utf-8?B?ZEJIWlZQbUxEUGN3WXJ0N2VRTVh3S1kvRUF2K3V2LzRVdndpZTRxTkM0eUU5?=
 =?utf-8?B?d3dXT0NpNEYzQUtlQThWVzlWUi9MWVhzY0F4MkxwR2o2TklIQlBpMnY5eVV1?=
 =?utf-8?B?T1JIUlhOTmlCaUQzSWxqOHBnMU5ScDhuL01sZSt0NGhQMXB4eGxzK0ZsSFNR?=
 =?utf-8?B?UzNZRW5nOWpWZjZqdDUwYk12Zmd0RENHSlNDL2VHemV1dElZWWczaEptL3Fx?=
 =?utf-8?B?UGI2ajJqUHZHQk5lYlhXY2RieWliMVJmeFZ3NTJFR290OEhZWmk2UUNMTmdz?=
 =?utf-8?B?OEp0SzdaMVlVRUEwYlRhQ2ZNVS92N1JRQ1cvYkxCYXZJK05MVXRxbExMVGlo?=
 =?utf-8?Q?+S5/6tZ7KNqzj+Fq80J7bHb/yNwJz8+c82u0qNE8UrQRO?=
X-MS-Exchange-AntiSpam-MessageData-1: f+35YqPzIY7jGA==
X-Exchange-RoutingPolicyChecked: hSl9+HKiSteDaYn3zozdlcGB/2pZ1SMIVWUjOt2+/BYXBczk42ehLYpiBKyGVoTSDSwCs5kgh76zOG16D2p4Y76oybViynzMb3WVWnXQo2FOZ+IFBCwBER3XP/ImOzJdVK0TQ6zMsNag/2x4oGSdp+WZ2R8nqU3NmjADKtQGpMCuHQPFQ8LTb0HmUrtiOUfmpUyEzxLllRNmQJuPf9Cn3L1rplPg6qO8ShKORH7azCoK1wP6Pb1Wn5jd6Th+ojkhOLpWqTwZVUEhWNa70LXz7JAv2Qe/c11jkURzhk7pc5Lc9IKPz5Xom1xezgoqhRMtoybiJ4Z3N7sa/WEikpwQqQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: e6995e45-2e08-41f9-aee3-08dea07cc436
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 14:38:06.3594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p8o+JbTem0PFK2hRrcw1WYzfQV2tYuoNRL/t98Pqb1PjBgHJUoaAz2kqouu4c3SygzTxZl4TQAbrdK30tMxppQouOKufQk4BHMRFZr69yK98Xb6hqVx/ZYP7daDurdHF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CAA2244753D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 14-04-2026 03:26, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 12/19] drm/i915/display: PSR2: Set idle_frames to 0 for DC3CO
>>
>> Force idle_frames to 0 when DC3CO is eligible.
>>
>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++---
>>   1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index bab254700a62..16a9f4111ac8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1040,10 +1040,13 @@ static void hsw_activate_psr2(struct intel_dp
>> *intel_dp)
>>   	u32 psr_val = 0;
>>   	u8 idle_frames;
>>
>> +	/* DC3CO requires idle_frames = 0 */
>> +	if (intel_dp->psr.dc3co_eligible)
>> +		idle_frames = 0;
>>   	/* Wa_16025596647 */
>> -	if ((DISPLAY_VER(display) == 20 ||
>> -	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
>> &&
>> -	    is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used)
>> +	else if ((DISPLAY_VER(display) == 20 ||
>> +		  IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0,
>> STEP_B0)) &&
>> +		 is_dc5_dc6_blocked(intel_dp) && intel_dp-
>>> psr.pkg_c_latency_used)
>>   		idle_frames = 0;
> This condition itself can be extended instead of a new if block.

I will add dc3co condition to the existing block.

>
>>   	else
>>   		idle_frames = psr_compute_idle_frames(intel_dp);
>> --
>> 2.43.0
