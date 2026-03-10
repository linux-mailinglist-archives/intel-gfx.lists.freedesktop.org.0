Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBQmGQ/er2kzdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 10:02:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23CC247CED
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 10:02:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7A810E69E;
	Tue, 10 Mar 2026 09:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XvJQw/hq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2059210E69D;
 Tue, 10 Mar 2026 09:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773133324; x=1804669324;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NM4Tw/FCZZIa/BbqUUi0XoqmpjfcNF8VcTx26ITaNw4=;
 b=XvJQw/hqwzKCfzDX6rW5anKcIpWakIvJcj8VK97jLajNL3MrFkxkTJGf
 wdJuGOkmUtgnAT5DSW82OS/yQesfqvXUR0pOj6nI7YhI5KcZwQIePnNQS
 j0ZFMM0S7mikw967BnQpWHGUb9Lz0ZG7dEemNM6vhmvVc2FnYrmQaeRvg
 omE52fAqDxtVLVSpHK776W6iJo1fKcuRPukLgCACkBJ/hppjn92GR8jmF
 /iRDGYy9JU1Sx97Tsv3abcNqWfHVChN4efZfIxBA0NsY2HgzjCH9Oiqlf
 uLDkfMsqWb/RUSxKq+/Y5SDTmKdi8QNEQbm5HEYMqOy8dhcUlnA26FZaK A==;
X-CSE-ConnectionGUID: 28juiu2XTL6juwbgO1z/Xw==
X-CSE-MsgGUID: f/xHij3hTz29ffUFaOtqjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="74050291"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="74050291"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 02:02:03 -0700
X-CSE-ConnectionGUID: +5dncqBISU6mKRehyQlbfQ==
X-CSE-MsgGUID: XeS5DQkORRqwZVenDOTG8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="216851296"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 02:02:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 02:02:01 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 02:02:01 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.13) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 02:01:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KY99A614OowL5xTXALAX1euBDnMbSdeDJ5xf3iD+7NvPedkaSoptiwcTJC2cBXQ8FjoMR28yFR6f5moALEtm4OQ6w1EQ3rqRrpgO4P/z44w8b2bRabAALwAPc+v2KIbEI+k+K7We+mVUt6zd1C9WbP20V/kW7ZJ4yegR822OppSHQ0VaH7nPUyPxBEqcBCV3WNszLDqec6KggvNwsmO1iA4wCLKBjXlhjf2tM5G0QnVpGF1xAuBLW3wr6sLqDR9btwRuUu4nsMLRks0QURyW4UfUHJsajLW/EQd332VNBS4rryI+uXQi5+tggLBs6xKf7kSdsQby8TYzhKUw+rb/VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HZbqTd71MzJ9RogyIVJHksgriPU6sUzvYRIbsVxcp0k=;
 b=Lv+DZAZ8BWFnpwYnvYwA1FuzuqW2FPlsy2+bATwd6VcOXv88S+sPv7DgW6ihhfwj3qDlG3iwkvF+AOnd2KdRQQbCxWiPxbzGA9C/X8tGFourGkhNyEhA9Pxdm9KipmGZkWAbGLrRkBxVuv+PguKxjtmgvYoDGQMQos74Ul1FuImYoYSFRvbbCAikGRF8OsmmQTlDImQ/vCZkWzg9Kn5meyeD1Rr4fFz7dbSpJtM8C2fLmLh67svzBE984T3oecgiBaTDU4x4mmfTjbM+9i2psCXBgPnIXV6nJhxIRugilA5SZcmiTNDk2VadJHLn37+nki24+/mhoRMHwt7I1YLVJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SN7PR11MB7113.namprd11.prod.outlook.com (2603:10b6:806:298::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 09:01:53 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 09:01:53 +0000
Message-ID: <a162fe5d-ecd6-4825-b8cf-e117416f0333@intel.com>
Date: Tue, 10 Mar 2026 14:31:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/3] Some updates over DP AUX Transactions
To: Simona Vetter <simona@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, <ville.syrjala@linux.intel.com>,
 <suraj.kandpal@intel.com>, <imre.deak@intel.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260309-dp_aux_timeout-v1-0-08c610a63a84@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260309-dp_aux_timeout-v1-0-08c610a63a84@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0072.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::12) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|SN7PR11MB7113:EE_
X-MS-Office365-Filtering-Correlation-Id: c0bf8655-0a79-49cf-1689-08de7e83ac55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: wVQw9yvzdaJmiPXXDWrOqxJaIxtDy8w35UsqDE87kt5RocDVsLHY8Ik2tyeXjt7FiMYe01a7jWHe3E4lYGEe1/Sn71SCIOjSkF53DdDd+BHDupOokYuikHYYp3ow7bw8W4cGfLy6i7BRbIGCn4dMz5sgobgncFKxUtTGK396ApVjuK4J1hvk4j8Es4EzSGW8eGvkHSXCYIC5vnfa56UmF9bwzvsTeretqjMsPH5AbSzIAaD5PPzO2MpDtokBXMwF0fH+cuQRjuhLHJKgtX2i+REhst7t/8SXo5soU9GP+u7j3ahUZK08fYXBv1Un478S44P5b6kgoktlTMqB03yCfeiT46DIU330KMFvJatZqliW1RQPMAtHNrmxZLg0kwUvWtRtXSNQcUopja3AKcES4QrZF4laLE9HOTqdXqJKjVKgZzFCPRoh08ozxH33Mgm4ccFcASGoH7ACJvv3Tl2PsKRamLDv1X52ueDAk69rkFSSVs++qL1Bp3ix7mqeFgR0kboZF30C+kIlodYsgNFF2H0jX2MwR8IanTNPT5bjR0YX41GIKejE05Ni1fWIQ+xXszNxdZMIAROcx+tziVqhW8IH7Hrvg/qqHtKpxkkScuwkyFbX2sGEld5/8Pt4G5qH0MjMY5HFEkL4GvvqCsLPt9fQq2fP69sYS+xdyNUEHyfHHTuLdDR8bMi1tJQcixgQUMZBc7xrMkv+wkU66gDlKUYEa/Y8tXBhKcGYHt/p82c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVZKdzZXVTFselpoZkFBK0p6T29RVmc3VUtJM09BM1NjanBPSHhHZXcwVnM3?=
 =?utf-8?B?dDlLbmhRVDV0UFFoczBMWDl1OTVXMWc3TXVZRWR4NEZ5OHhtdHpBdy9iRmJa?=
 =?utf-8?B?ZCtvQ3NBdWZ6U0JQbHpBbDExMkVLZkVXclhzbW8vNlVyQkt3Z3MyTzFleGlH?=
 =?utf-8?B?YkJkTkdkMFhIQllSKzRLSTMvL21Dei9zYzU1WGNOMVp1aWFLaTFncGROQStT?=
 =?utf-8?B?VWgzU0Z6OXFJY2owckU4a1ZTWTNJRngzZ0txT3JSS0drVGl4ejZtOVBtaVhU?=
 =?utf-8?B?d2w0alN5ai94MTNQRzJBTWNxUnJlTmpOMUl4bTVDUHVLWHl2SVJHQmswaWZV?=
 =?utf-8?B?OHpRNU9wVXF4ekZwR2JYcEZET3VjTkhNTFNSVjFyQUtpT2g2cy9xODZKcXJ6?=
 =?utf-8?B?LzMvVVp2a2Zqdm43UTUvU1pjM2kvSkVGRFJxTVBLeTBtTHUyNVRZVllKcUsz?=
 =?utf-8?B?MSs2K1NRTkFmOTdIVmhzZGU0TGcwMTA1Y0wreWJKazlxRkxuVElKSC9KZVM4?=
 =?utf-8?B?Rk5BVW42djJEUERTL3l0NlJtTTB3WDBDTTJNN0tueWo2Z2xSeTUyRmdpTGxR?=
 =?utf-8?B?Uy9TTkM4d3RPRy9pQ2ozT2tkRklwS0RlamlRTHdhMzBsQ2NCdEF0UUpQTXpa?=
 =?utf-8?B?NkVYYlI5YnEwQmF5NGZvQ2xIZS84L2FOQXZBZThEY0s5dE1TaWY4cGNpQmJM?=
 =?utf-8?B?OGtEWTFlMmlZOGorZDZsOGJjbVVmZzFkTDNvV1R0Y0NQaG02Q2xvcXZQS05P?=
 =?utf-8?B?SHdGdHNZakZObjlQMnBUejZ0WFZiOGIrTmRKaHFsd0tSc2duT2ZDcWdwdkdl?=
 =?utf-8?B?WHB2TjFWOE9hYU1oTGc3VEVLa0lSZW12d1grVkFGSTFpVm93Q0NEMUNEUEhT?=
 =?utf-8?B?RDd0azVIZG8zNFlwN0hhUlQ1UDg2SjZSeUI5VWZ5NFBiU2U1bHlJYkM3MytU?=
 =?utf-8?B?QXozWjN0b25QMkJqT2RYWFI4ZFZNaXZHSlhnWnczUEZSYisyN0xwejhsWjls?=
 =?utf-8?B?em4wdnc1MVpwYTNidGpOSE1HcDdQVUh0cDFHMWIvaldlT0tBdUxBV2pRVUUw?=
 =?utf-8?B?S1o2UHhUN2JCQ2pIN08zc3h2T2JBbFZmUmRBZE1QNFNvTUxzT2cwekV2b3lS?=
 =?utf-8?B?UDIycHlVQmVEdHU1MGQ0RU8wdU1CZi92VHBQaDZBOUU0WWQ1M0VBSFpOOTd4?=
 =?utf-8?B?SThibGp6NWxWUzg5dzBnMVVxRDhwTWwzb0RmaldlZmtBOHVlcVRCSVVEdDcr?=
 =?utf-8?B?Y3AwNW51UkhRK0tIY2Rjd1NEK1RVQ2hoa1RLcmRRRWRpaThZUXhhajVsbU54?=
 =?utf-8?B?bVdoTDlPQ1hobHM3Q3MySlU5dHZISDBUZUdzTVFKek1mK21mNFIyMForMXk1?=
 =?utf-8?B?M2xWbnRPeTBUU0F4dXpKV1FZUWpsbFdpdkkyenpWTU1WOEpnSTdqMXpDWmp5?=
 =?utf-8?B?S0tnR3FCRHgvNG1yNysvZEVta2JSTWMxZ0YzdDQzOExaNkpJc1lmUTVQVG5C?=
 =?utf-8?B?R2RUbXR5SCtTeDdWUTVSSnoxQkdGWlo4ejE1QmtJdjIvNUJraXRvOFEyeVhQ?=
 =?utf-8?B?ajBoc3ZxTm5KOHVFR0Jpc1BZZm92UCtUZ3o2OTdxby9UbDMvOXpJUEk1MU8y?=
 =?utf-8?B?blpzdzFwUnlDM3lPejV3aGJaN3NYNFU3bnN5WCtWZXUvWmt1dzRsdmF3aTUv?=
 =?utf-8?B?bGhGSU9JTXE0ZkhTOUlUNllSUksvVlhURElEWXFzWUxlb0hkVkt3K002TTlr?=
 =?utf-8?B?YTNDUmZyWGRsbmU2OW9EeWhMUE9US2tKS1BvZlBhWTVQSW1nU0QwYUJ6aHZB?=
 =?utf-8?B?S09XaXZxSXFQaTdzYzc0YXRKalJ4TDFUK2ZjcU9yMTBmc3NvOWZmbS9Dbm1h?=
 =?utf-8?B?bFlLT2pEaWpBNDg2S2pnUzZMNDNNb1UwdWEzdFNrVzJVQUJPdExWQnZrQVpO?=
 =?utf-8?B?S1dJN1NlWk1YNTNlT0xGcHFwMkdkcWRZdVI1RFllRXlDRVdncWFQQWJsOWNP?=
 =?utf-8?B?QlBhSnhmWVphOWt5dHdoaDRuZDNUbEwrRHhTeHpXV3FaK2U5VDVCYmp1d1pt?=
 =?utf-8?B?bUZHNXlUU0x3bG95bG45THR1K1BhTjlMeXdiblBRYWlONnhaWmhrUWE4NHJU?=
 =?utf-8?B?WncwODhUM3JZTkl2TFJGNDRQWUd5WkwyVkROQUk4VWZGNzhJdGxoYUMvc1NK?=
 =?utf-8?B?MFNndk81UmE1NWxCampHY1ZzT3YzcEdZNXVHSkVaNloyN0U4UzVGVmNPcWVs?=
 =?utf-8?B?NDdSM21qSjV2eEd0aW9FSGFRaHdnOXJaMGpRaVErRHhNc0E1dllCQmZhM0Np?=
 =?utf-8?B?clV6TlhWeGREUzE5Q2hESm9UQ1YyZ0ZqMHlSN2FRSjJ0R0dleUZGWEFQK21S?=
 =?utf-8?Q?EmhFIxu1eAUit4yE=3D?=
X-Exchange-RoutingPolicyChecked: a8k2HrPKgMQXgU6cO/shu0nk+kW8ayLDZIBnez33vYh/9jR76gp57u3jteCbCJ7sDB9o4Bs4U1GfHRDg0oOPGwmtSLCq2Qc86mAOYbmEq11CxepwuPHkJvA6MvTtF3t3wKuv+ro/tUM+QkHa+UqRwDmtT576zRSCRe1DzEjq0Sna7xfjfKc3ePg2MPR6n1eAsn5lb0naybToIDZjY/NC8o0HsCGfUduUnTdfw4OolAN82C4a/qG/xuqsoPJfibAsqhKhhGnqT0hIgpGzcvg77EtuAv7uV07QomNRllYvKbaxKKfNvhwDnxCeItbEJuzrwkNhi/PPCsJ3MWcdBQwnFA==
X-MS-Exchange-CrossTenant-Network-Message-Id: c0bf8655-0a79-49cf-1689-08de7e83ac55
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 09:01:53.4088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y8H6ICmyVuyyzU1c68Dyeog9dqwR0HGqCaRvGqrw97aHRuEDDVFVEj570lo5ALlH1db15h0JRKNmqYCBRkVTLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7113
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
X-Rspamd-Queue-Id: C23CC247CED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Based on the comment, this merely will not add any impact replacing 
write with rmw. Dropping this patchset.

Thanks and Regards,
Arun R Murthy
--------------------

On 09-03-2026 12:59, Arun R Murthy wrote:
> Based on the discussions/comments on the patch
> https://lore.kernel.org/intel-xe/aaVWbdt1vOFxGAb1@ideak-desk.lan/
> in order to address the real HW(DPTX) generated timeout and adress the
> fix, this series is targetted.
> Along with this it was noticed that the the AUX power request bit in the
> port control register is being touched outside the power well framework.
> The limitation due to the way aux port control register was programmed.
> Replacing the aux control register write to read/mask/write thereby
> writing only the required bits.
>
> Note: This is RFC and full round of testing the pending.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
> Arun R Murthy (3):
>        drm/display/dp: Export function to wake the sink AUX_CH
>        drm/i915/dp: On AUX_CH tx timeout, wake up the sink
>        drm/i915/dp: Configure PORT_AUX_CTL and then trigger the tx
>
>   drivers/gpu/drm/display/drm_dp_helper.c            | 36 +++++++++
>   drivers/gpu/drm/i915/display/intel_display_types.h |  6 +-
>   drivers/gpu/drm/i915/display/intel_dp_aux.c        | 94 +++++++++++++++-------
>   drivers/gpu/drm/i915/display/intel_psr.c           | 29 ++++---
>   include/drm/display/drm_dp_helper.h                |  1 +
>   5 files changed, 123 insertions(+), 43 deletions(-)
> ---
> base-commit: 6884fe03ff2bc5a2f501ba4710f950dd4933ac84
> change-id: 20260309-dp_aux_timeout-9d5b1b35a0d8
>
> Best regards,
