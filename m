Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHpfFlN002lviQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:52:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD7C3A260D
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D63410E184;
	Mon,  6 Apr 2026 08:52:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VToRDlS5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64A710E184;
 Mon,  6 Apr 2026 08:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775465552; x=1807001552;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S3TGioZQ7t6uXa0AJfo8Xs8laPsAAoY7g8Ao2+kxsgU=;
 b=VToRDlS5FyNpu7rbPTVQ3yvuXelJHepPGKy29UmopSdGiD1gVAtDqrf6
 qB+Et9QvN0Gsk3qzv/dN5Brn9TJ3H/KU6yyMZIs1ygj7wrJbSTJ2+a+qI
 7Ahj7UEi1QO7urH5urcNytt0o81ns30feTuxMmO08HDM/91r3fnQMwuz0
 Ul3d0exurEDhHX56p9poPCk+Ykut1CuokCk9TFx+GzGfTXmS74Y4rumDu
 NYhdV6H4CHhllNjEeVU8CxQUvVOqThStTKkgd+HeqVb4Tx/bRHboflkpN
 QF8NbD22VitVpHdO1/IaerHl8pwqK752mQABYNbaFNzcZ+R6YFIhg8ruA A==;
X-CSE-ConnectionGUID: 837CILf6Q5utvgrz15atRQ==
X-CSE-MsgGUID: dRBDEC2TQ1+HfjnIuWrjrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="76377612"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="76377612"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:52:32 -0700
X-CSE-ConnectionGUID: A4r1nbU7TKWHBx43agNLQQ==
X-CSE-MsgGUID: 527Njw0RTweH4jjNcsKAyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="223534713"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:52:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:52:31 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 01:52:31 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:52:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XBvs8cIbEPJqHqBzILLMV+SKBRab1ZwR38JMaS1vxI6MPl36Tjx0D9ux9OE6uI5Myu6SAxS4lSEQ4lzl9FGfA+OeK6QFaCFY6sBNGpQMIF7tFIgCIKbQEg6dX6E5BFMPqfRQC05/W4tv3ts4JLqXuS1+kL4GYOBJ1QFZGEn+pZY1HtGAB3Yoq/8gujI/xCF7tsi5/pDT7Sq4MFC2k33s2xaMjBOZPjNbOjtMA6IxgGZZGaedzJFXptV4LPNao9xIZtOJ6yQsoGi2JpseApdnXLUPU93GamJ0Es/+VW13GEnmCYzdLbxI4nU3iQfh2b1qeTbtx8t8WTmPVFv2j/kHyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wj5m3CXSF0bkzUxxBd8Dt+FYLq2hOPS5TvKyGNNvgxQ=;
 b=SKwqix3GcJtjci4Ql3qhi9QbdGerhNMDZntt4+WZ1Y9puTWYIyMThUCzAQvGu4ET3efOVG7/gUa6w2EEhrQHPCeXWeii+FRoz0ZUUW6cLYpRDW5XT8QDLC9bb5D4kUuPqL6uPd6NMUihSQw0P//TWxRZJ1AqhVNMKpnjThokf8yv4g1KxJKHzy65eKMLgvKQwIpDTEgtmzdIbho0j/81n60hvUhPzVefyioIP2Ip3M7CX+8XhLnG6yduT47q6qX3i874eCfZZ3gZgzrUFAMZGMHqnExocuFnmCjQRJg+mWMEr+14Qhoqr3RmfmvF18lFvuPEDxNcA3dgr9+U2w2awA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6389.namprd11.prod.outlook.com (2603:10b6:930:3a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Mon, 6 Apr
 2026 08:52:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 08:52:29 +0000
Message-ID: <994a8c9e-bd53-4848-9df9-5806419423ab@intel.com>
Date: Mon, 6 Apr 2026 14:22:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] drm/i915/hdmi: Make the RGB fallback for "4:2:0 only"
 modes the last resort
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-9-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260330235339.29479-9-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0010.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6389:EE_
X-MS-Office365-Filtering-Correlation-Id: 36b6d596-d9db-4161-873e-08de93b9d588
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: FOZjf9xAxJ4UztOI3nxiUXcdfdYaCRY3EGAGXCbnxhUJr4xbZKhvHsPihUkelFlo0rs6y+2TRMn1Dy2HeinELkc8lSHvvGmnPpH6ZQ4PXgT8cSRMBUcA6QRjjXC0i1nuQh5YwOQPx32Yy0VpSWfuGX+5kJ6B4CVKF8rvcTAqCtv5Ar8etqPNOiRslT0CCqmyfrvgT41bG1p95UChxWv8+lXPaU6W5Mrzqh8z6ex3PYofS+p7wOnHqmNtFM9itrzbFOkYbTEteyyJkgrtx+66Obj/LS1XSKmpnhSdSQ3ySZpZUJxJGCLK0rGfc5xO4/JhAYzHle45Ip1yev2j1UGQUwg195JCdyWq6Nm2BnElXSuXwwzT401NEVjMuFUBArp0JT3tiBQ05frn/b8JwukwkdE1b9Q6SrZdM8GaFDqeG0j1Ztbn2Svkp69XY+CNXUfEazyIn2NIya/Z5gFh/0gufyWR7M41laxo46oNAtjdrgZtWb/p+JbZLTLglpS5FmzdTiwj1hiV5ANmZYQAO4l/DXQ4MmxaOqXf8zEVblfA9Ku3nhkTvWMAu/XMoUBdezWznzH4+pIekD7cNgbnvVNMWIuoFwQ6QvBw8dCMDtntz0mOakiRmCxXeZNom8+CWK8ukyHp66NTGHHe1ZG/GeNAW19JWIa3g+SThY80qAAzZH19xHXkTUC/dp/LiKgZq/36nYpQRywZzDKgbTwV9x3Y/5djgOQUOcNKHo9B5ooQGTs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVUzQ3Rmc2R6R3VkS3pKTTNkVDNLUHNyS25leWwxY2xLUkxQWGZ0Z1FRNWs1?=
 =?utf-8?B?aXNtSStWWFp3eVVKMytEeGtJd1A1WkpBUmJERVB6b1M2SGNmUU1yRW9zMTBG?=
 =?utf-8?B?VjdnZkM3eFByZWFnZjRQeS9zSkFSODZOZE9vcGlZNFo2SENnVXh5bWJDWEtn?=
 =?utf-8?B?QkJlcm5TdkMwQlBnRVVJT2VqL1FSRXpoNW1RVzl0SVhWOWNwSXd4STAxZFR1?=
 =?utf-8?B?QXRmekY3SzEyUzBHd29kWlpsQ3BkRm1YS213bjNza0NjTExsdDNWRTRRL3dE?=
 =?utf-8?B?QVZjdlIxenRwZnFzVjlmbWZJLys0MmFaTWR0NngyUlFDQlZmYjVIaTZUZFhF?=
 =?utf-8?B?UVJrTFNzb0FobkVTcDFmRWZRZ3prRG5yVHRVOGwxRjIrSTdiL00rYitHU3RR?=
 =?utf-8?B?NENBbmwvejZPcDh5bGRVa2luTC9LUm9VWjc1WHpreTBWOHdYdWJ1Z0FLL0Iv?=
 =?utf-8?B?eElDMFh1RWdoaHhGcjhpZDdOalFIRm1MOEFSUW5GTWFBRXZpS3ZJV0xHZVlG?=
 =?utf-8?B?bk5wY3FYNkEwVFdtMGR2RmZ5aHU4ZkNkSEp2ZWt0QWdqL2k0cDFHVG4zaU42?=
 =?utf-8?B?eGE4cTdJOU1PMUtuckFubm1HdDhpOEY3VTkzK2RWSGYyRGQ1ZkMyaHRtWmR1?=
 =?utf-8?B?TDEzRlJYTUNML25hQjg1TmhFTjNwQUV6M2MxNCtCOGM3OXZKVWRzenZZQm1D?=
 =?utf-8?B?VDVtbmhNNWErQmp5UE5kcktna2ZFTk5jWWJaVzhqUmFPWEowa1pNZjZRVUlI?=
 =?utf-8?B?YVBtYmJ4QlVIUEVCL0MvTGcwQzBkcVBFUFE2SHRzQlQwU0VySldDVDZ6VDZl?=
 =?utf-8?B?bTZLQ21JR2ViMFA2b0pWNmtEM015WlpmY1A4Z1dWcUJ6dFRiN2F4M2xzejFF?=
 =?utf-8?B?TkF3MXptWDdPaXdYZjVZVU05d3dvdE9BUTlSd05BclRYdUxSSk1NbEE1RStT?=
 =?utf-8?B?M09BMnpHWjNOUjVzWU5XR2RjVXRlSkJJazRoZVpQbzVTbDBFRmg0dTJjdzZN?=
 =?utf-8?B?L1NBamZCZWptWHRpNk1tMUx5dEs0Z0FnUnU4NjRBSTNqbi84VDlaNDJxVVdw?=
 =?utf-8?B?QnRZeE5aZW9wWDd0YWxlKzY3UTkrdVJEdjZJZG1xRXhhSHJVdTVmS3ZaNUJy?=
 =?utf-8?B?VjNYTWlKNnVCNnVrN2hKbE5Va1RXdDFjbnQ0bnRmZE9PNU1FU1ZMMEwraEdh?=
 =?utf-8?B?VHA1WUFKc3AvcENFWXhES3J5SUNvdUNJYVFYWHJaMWxjYnd6UkhtUW5UcXVG?=
 =?utf-8?B?UHQxOUQ4SXhWSlhnNWN3c1g5MGszUUNhRU0zVU9CZzhUalBlL0gxdVhJUkpJ?=
 =?utf-8?B?UDJIRnRoRzJhWW9LMHJoa2NJSHExa3VaMEt2OU9kckJ1d001bWZ0dEtuL0Jo?=
 =?utf-8?B?WXl4cm5pWXE4alUvaGpKRGMvZEtXRDMrL05lWGRmOW5KTXREdHluQWRPME1N?=
 =?utf-8?B?R3hGVHZubVdxY2t6bzlIalNkVGl1L2xOSmNGdlBSRzd2dWxaZFdxSTJ4RzJF?=
 =?utf-8?B?MVE1NnZ1S01Ga2Zyb1BZaEhPenB6T0xqRE4zSE15a2VqTXNQeGM2MUc2Y0NQ?=
 =?utf-8?B?RjRPK040N0Y3a20zSHlWSHNqMTRiZFNnemNUanIzRlNqOXRtbXkwVnYwcWVU?=
 =?utf-8?B?aDc1ZS91SFR1R2NNejZoemk1ajhFN1l3S2lxL0pVRTVHTXduZktMaU9oR3U3?=
 =?utf-8?B?bnNydFQ2a0cvUzBJWTIvalpFbHJQWjM2bHFZZ3ZDVGo5Y3JLcGRTWEVsSWY1?=
 =?utf-8?B?aHBBWTNYU29PZkZCY1dBNkVidnBhV0dia3B0a1J0ZHMzc2hWWElSSUFHc1dT?=
 =?utf-8?B?aTEvYmllOHJLMFJNUUhjeE52aXNWOVJQak1RVTNYMnZPcjVsa0dPbzB2OUFW?=
 =?utf-8?B?azZ5b0pMeWR2b28rL3UzdjRzSEtNSGlONGsvOXd5aXIvZUZNWjNoRExhT05M?=
 =?utf-8?B?c29kYzBiWUlNN1FJSWdhVUU5bG5hcC9uT1hneURUNEpRZlBTTEU1QWRVRUZK?=
 =?utf-8?B?VDNQc0dsOGR2R3RRaEpiaDJ5NmZrZk1JeW5TbE5YcFlSL2djczdJM3FKWDRG?=
 =?utf-8?B?Y3FBd1ZWNkJ1QWtUQmd2akRkaUdXZGtHdEJDcGlaeElwUjY5N0RZWkExd1g1?=
 =?utf-8?B?MTBrenZEUHIxaUhIaFh6TzRFR1RNenJQclgyWE9Nc1pMbmJzOUlkbEs5Si9X?=
 =?utf-8?B?RTMzQXBoTUYvb2ZKSkt1Nm0vMi9pY3NNQ3hNM0FwUjhRS0ZWbWdDZWttWjRK?=
 =?utf-8?B?WFlqZXZBN05ZMmR0bUJwUndBa3VtQ3o0eVRVWUFKc1M2Qm45dUNxVkpMYUgz?=
 =?utf-8?B?L3dHT1d0aU90NlZyVy9sVmxFT2hEK212WnZ6SXRWS3JRcHNWcmZwWS9NNGl3?=
 =?utf-8?Q?Tkp+zGESDxbCYq6o=3D?=
X-Exchange-RoutingPolicyChecked: Afw7TvNltUCJLpmSBc/+b6Z14gY4LDTGPcKwj1GK8fNJgJB8uOEkNpZ876UhtAfib8QECR2a4dJk9YZwp0I+soL/csHVEptx0k5KjnS+pM4h/+X88sa9OHTVWlppPeEzha/yHsZhcyMRve2RJIrYlvcOknP60SCa6NmtsboWO8iGmPr1lPx+z4hXh1/5znaBRIZ9Wr6qoGr1AFdzFulnlXcTVLD6J0dx8eq0oQQDYbFQPcbegoX1pDWb0xgEMIVlhzix6FauGbBwpLyGSdzM08Q6al1Bc8MTOFQaPpWHzoTCxB1IhWlKyhEepvfj8zxHV/J80d1zsrCrqN1VjUeKdA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 36b6d596-d9db-4161-873e-08de93b9d588
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 08:52:29.7282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7o9Za2VNXRDZU/krOYs4q5Onxn6To53Sv236kvaYrYWkJQ7w0gwCP9wJx8BajVwyMik9KFCuCEUkWxjMsq7Bg9OPK8949gdnhX8IMtyxM0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6389
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: BDD7C3A260D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 5:23 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently we take the Hail Mary RGB fallback for "4:2:0 only" modes
> already during the first pass when respect_downstream_limits==true.
> It seems better to try everything else first (like ignoring TMDS
> clock limits) while still preferring 4:2:0, and only if everything
> else has failed fall back to RGB.
>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 95bd38c620d1..6bc1689cbf93 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2314,7 +2314,7 @@ static int intel_hdmi_compute_formats(struct intel_encoder *encoder,
>   						       respect_downstream_limits,
>   						       INTEL_OUTPUT_FORMAT_YCBCR420);
>   
> -		if (ret) {
> +		if (ret && !respect_downstream_limits) {

Makes sense.


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   			drm_dbg_kms(display->drm,
>   				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>   
