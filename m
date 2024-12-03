Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD7B9E1744
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 10:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C802B10E30D;
	Tue,  3 Dec 2024 09:23:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hZLF/PDN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384B910E30D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 09:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733217796; x=1764753796;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fQ26+UFNVakhAT/8vgJYb+JCWnZ5NJdbc4zGJl7pvTk=;
 b=hZLF/PDNcBkrB9DkM7rvVcQskhGOT+kMVMDU+7n33GHwGFlkF1Tg8mMW
 qlbQ3kMiTaqTrM33SYXEbI5EZx7gkfAGbtklFD7NdYcgXnYDI8Hb4k+9v
 HNJ1G+6BC5B21L54ZH1BDXUEJVK6smADEDx4TEqNl9SXrIb2KBwX9CnYp
 Ah2c0t5DlDvgIw1n3T33WOBIUW8lfVphZ9HAghoRw/eqqESFFm2JPXbGx
 HTbhWn7f0jjCNyh+sorjj+Pz8FISnVysnKBLPEm4fK/3Rx/ePMTDwys+Q
 1sZMl0WVRv7xBVzAsXMb5OktCKiiicN8ggUhmm4ZKRASEdbUq1Cgyaa+B w==;
X-CSE-ConnectionGUID: zqIS2+UETuaW8yS5oybDrQ==
X-CSE-MsgGUID: MLv2IEHtQ6+cHbnzRpfjdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33551141"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="33551141"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 01:23:15 -0800
X-CSE-ConnectionGUID: 5oweGn3sRH+snoZ33tE/8Q==
X-CSE-MsgGUID: 6JFCzmSkR1KdGweiwDx+4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="98457938"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 01:23:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 01:23:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 01:23:15 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 01:23:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GoJkKPbPUS7vCCyfYOKKHkcBJJw2IzKGW2c3e9sRHPjGjkkHWJPIiWSR956rU8bQoAHSD/pOAzK/5emy+RR3N+8M6XiwYSXsMDpMlgYDzOYErkK0mC34+FzQPE1ZpxtJQYrAChyEroSIpo9oZpBEtz/qTVRCqIztd6UD7/t67U/TXEaI+I19wmRfhwHwkLkagxNLzq8ZvibEkGzbyI37cgxa/9MnmWsHS6VQykQzlRLo2vEcEYFLufsB2zUwn2RUPhnAm1XJjHZfXyG96xFXvlGrN12TE+bc/oS9/GY0iQRfbw+2Bnn9c8Q6DvvS/4vVMov3eMTNBq3ZvSjp9G8+IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BKEb/10EDrrS0NQ5qjWtG5cupkwzk+Cp0cFVXLdvJVk=;
 b=Hf65l3HSXqW7fISq7I1HYmnUmFwu9ghs0wRRzwxgy1BE6paQYm53Wz9IWna2Wsv+3xqR+t+cQEc72qMf1TTj6LphvYfMuiT5Vrz1Ae+PIawnl6+zbn5iWpe/CGpkbHpbp2jMGj5gCRNKo++BR9JAH8+3DbSsCOfHlmJft1Yz4sNYi4NQHF3u5DQuPdbiNlBVmy1B1BAaKiKq5qdVMdveYYINNlsGaLAvE0hS+QSziYZ5HIYufuy7GeCryhDVX29JSQ2Sl0gcq5JG6pwJJj2VM61rUYJnNrFN4+3UQmcXg37iG5e6lAKum12X/zzhhpGdyL7vSDyPr3CIhfuAPowG2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH7PR11MB8036.namprd11.prod.outlook.com (2603:10b6:510:248::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Tue, 3 Dec
 2024 09:23:09 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%5]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 09:23:08 +0000
Message-ID: <dc5330e1-d9ef-4f93-89e2-4318f64d3838@intel.com>
Date: Tue, 3 Dec 2024 14:53:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/selftests: Add delay to stabilize frequency
 in live_rps_power
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <karthik.poosa@intel.com>, <anshuman.gupta@intel.com>
References: <20241203061114.2790448-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20241203061114.2790448-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0170.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::12) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH7PR11MB8036:EE_
X-MS-Office365-Filtering-Correlation-Id: 10a84ed4-452c-491f-b2ea-08dd137c19b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TnZrb3VDVm1yaUpJM0ZBRVQ4RzlmUUJzdGRZUElBL0hTZ3hCN2ZwTzkvOU1r?=
 =?utf-8?B?TnpYc2hhNWtYTjBva2VxL1ZMNUJPS0RHeTdLbmlxamZ4RkFXUzZobWtmNkhj?=
 =?utf-8?B?Wm5wVUF3OGJhNWVrMXBCdUhKa3NnMHVLdkNDQzVNRmV0TzRVbFVMNzJhdyt0?=
 =?utf-8?B?QVU2aDNUWEN5S1NoRk90UTRJb3FjdXcxeG1kV1NGbkowR0k1akx3ZHlHSXNt?=
 =?utf-8?B?cU0wRiszTTM1bmJ2cnlMMTN3N2VrODcwaVpBcUZmeFJEYUhrWi81Ky9vN21i?=
 =?utf-8?B?bkc1YnoveTk0L2lmTGNrQ3VZMWlVVy9DbEM0dFh3SVBCMzlXZUQ0K2NVaDdu?=
 =?utf-8?B?NC9pMzBaMWJUcEVpODlJamxZQUpDclZZdXZMZUJCdnZPRXJmQXJlY3YyY2lj?=
 =?utf-8?B?Z1VvbzhQRzNUNTkwcmJmSXJldjJRMW9JUnBNRTBWVFZ6d2I5QnNqV1JPNkIv?=
 =?utf-8?B?U2RLRlUwZk9zbllvVmdNOWNzb0dJUFNZRllzVTk1dkZKSWFyb2EwV0EyK016?=
 =?utf-8?B?dlE0ODBmT0lYSnRjSXZYNzdMRnZ1ZzBJbGZad3NXOWRlRmVVSElzUUYyYkFw?=
 =?utf-8?B?MFppc3ZlSGY1WGJlMlpydEZJNThHclNwd2VRUU9ENnNMUmJxT3RmSUdGZGVE?=
 =?utf-8?B?QWlLRC9oTVhUSDlVZ3doUjJVeWZBcmJ5NG9DRm4zb3FyQXJaK3c1eGQrZUho?=
 =?utf-8?B?M3l5Q3F2Q2JoWEhmQlNnQ29yL1lzMlRlak9BQVRFV3lXYXF1ZnZvY045cUNC?=
 =?utf-8?B?UkhjUU5oOHZEc2tuelBHKzVwTDlnMS9HZ081OGtIckdVd3hDam1wVHZSdVJO?=
 =?utf-8?B?TG5FbXBSZjllS21SOUZSZSszNWJDektZTlNhNEFQVW1ETUpPUUJiSjNUS3JB?=
 =?utf-8?B?QmZMazNrS3oyZ1crUU9wSzhkUy9zRkNzR3JpSnJEVWlFR0ZJbGRHdjF0OSsr?=
 =?utf-8?B?SkJjQmE5Y1QrVi9IRStEaDVqOU42U2F4QVVZUW5OS2hZdUFpa3VxRGdORU4z?=
 =?utf-8?B?YngvbEx0Mk51VXZZNXFiUmNMQUhqTnVZdU5FWG1WL0RTMGdYejFNeG5TbVpl?=
 =?utf-8?B?Z040WlpsL0JDYjkxSGRlVXJabE8zV25FV1JGa0M0TnFjNGxYakhIYWdHWVln?=
 =?utf-8?B?THAzc2k0SlFQYnNoWnBTRXcyT2VsU1FwdEFDUythMjEzbWNuQ2JyV1FGVmYw?=
 =?utf-8?B?ZnRqbGY2NTJPeGtQLzZXSnZVNkVjWXY4cWJrMjE5M25mOW42c1JDRWJwalRh?=
 =?utf-8?B?MEEvYlduTmEwQlhlb0V3QjZYU0RZYlZZTG1pR002Q1gyRk5TV2k1dXZHOWYz?=
 =?utf-8?B?cVpwTURwck5XTHQvaFNpWnhHT1BXUlphRFQwYmdXSllaTWQ2Qm4wRys2Z25s?=
 =?utf-8?B?a1Myby9DNkNKU3lDK21vZXdGNHdsMWdSeGRHNmNHbTYwVElvendKNHNscUhS?=
 =?utf-8?B?eE9QcEMyMUZkS3dZYmN6ZTVMd1RaUU5FWlY2M1A0SEFuSWRaOXQ2Wi9kMkFH?=
 =?utf-8?B?K1RuQURaVklkRUVxWnNLNks2VnZyUlVvNmVDOVlKeTZQODhoZDkzT3ZuZU5J?=
 =?utf-8?B?VVBuT2lmb3NqaXNHbkNzWlEvYmpnMVRSZWQwVUpYdEVwbkRIeTFxblhjTHJJ?=
 =?utf-8?B?TWVUam9pMGc1KzliS1ppakV1NnNxL3cvakFZaFlwU0UxTHZWU05pU2xRUGRu?=
 =?utf-8?B?NWw4TUs4WWZEU1hNazhQckhINEU2OVllQzE2aytOcDJId2J4SkJ4cVpGbG9r?=
 =?utf-8?B?QWlXZWM3dWVwVnJGUXc1RndLNXFWTWRJMmpuczk1L28xRzd4UEhsVVdTQjQw?=
 =?utf-8?B?eTVnZUl2Vm9NNk03K0pLUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVpqa1hBMzVXSTVnYUJIeVA0VmVQYlhLRTQ5Nm9DN245eUZKRE1qWVpEclV5?=
 =?utf-8?B?UlRvUkpwdXVneFBkM3BFSHh5cVVVMEFVVFZ1SHJQWlVyMUdpbkp3S0N6UlpK?=
 =?utf-8?B?RTFOWEQxeWVSMm1OdkR5alZXL21KZlNJcXQwbGRmWDhPL3pQZGlKeFFXakNj?=
 =?utf-8?B?cGhsM09DajBRdlJjc2d5YUh6V0hYQ3lyUjViR09TWWdES0JPUDVxTjNtbHJa?=
 =?utf-8?B?ZVlvWWdGdEtSQ3hST09vYnlSUlc4bnp6M2kzbkhFMU14WVNDeVdocUxkVkxX?=
 =?utf-8?B?VHNYejloVjlJSlp5dE45Ti8ycVF2MmNCeDFvWFZkWjM2Nlh6aDB2K2crU09Q?=
 =?utf-8?B?SjZVNmRocnhNeG9YZHMyOGtLbU5Ud2lYV3NWNFNROFlSZ3ZjRzZXQ1RDM0ZC?=
 =?utf-8?B?NVJLU2hPZXhBSHFWZXNUdmlRYmo5WVUvclhia01NS0M0MWYvL2lrc3NuREdl?=
 =?utf-8?B?TjlqN0xCbEtBTDVnVURraDF0WkxjU1NSMnZzcWRla0hoaVdqRkRoeWI1eTVN?=
 =?utf-8?B?elJMWGh4SCtNYlk3VWVZUjhJYUxwdXg4TkZJVXNSbTNUTXd1UDA4SEkzbks3?=
 =?utf-8?B?MEpxVEVVbFhkQzN3b0VZdEhqTERha3FLTjk2VGdUMHM5a3NJcXE1b3RxMWpC?=
 =?utf-8?B?QkxsTEd4MXRiOHlGQkdyRWNteWVGQ1IwZFZXN2lmQ3NUZytNYS9nT29VMG1U?=
 =?utf-8?B?TFJpV3pKK21OYzh4Uko3SGhYVWRGWGNOR1kzR3RwSFpJaldUakIralZ1bmZh?=
 =?utf-8?B?MjNlWmUva3hzUFhBSzVHbHBYcG8wQUFRbDJrdmR6cEcrZ1B6NzRQY2o3UnlH?=
 =?utf-8?B?cUcwcjJiUU14SFJrMW93TkI3UkdFc0wva2U3eGlRakV0dlJRMzJvQ3RFTUxJ?=
 =?utf-8?B?aEhLQXovTzRCRCtFSTNia0Z5LzdCTDZTdjlhMjVraFJGWE0wcmNyS0Nadmp0?=
 =?utf-8?B?TWwwalo0TzEyU2lFYjFtTU9uV24yRkZvWHhIS0NPK2RLSmJHS25tNmVsRFhM?=
 =?utf-8?B?VkNIeG9qQy9nblVvdGRuWDNEYmJueWxtYWlDSDYzMUFvQi9lM1JWNVJOM1E2?=
 =?utf-8?B?ZjhiVkt1d1M3bk80aXhoRlJMRXhCNGZTY3lER2M5bUR0K2ZRUUswRkRYNEo0?=
 =?utf-8?B?N0ZjQ0ZpM2k4Nk9xYjZRcEE0c2U1eEtwVzZIQitHMWU1Z3FPS3Q5SzZQbDRQ?=
 =?utf-8?B?TCttcGc0NUU1Y0Q5ZVJSK2t0eXJpOWNWTmp5NThmamRjVDMwRHBBaDhwQ2JQ?=
 =?utf-8?B?UmgvRTlOdVcxS2NqWFo2ZnVJUW5Xa3EzRVVwMUJzelR6dy95UUxZVXl6TGJK?=
 =?utf-8?B?Y2ZIR0FZMDJqVlk0YzFablp1VmV3NHBOVTk5cTFjWFhTRXh1MDRXWkpEVEdF?=
 =?utf-8?B?c3dicnlPUVg2ejBRelJjNlhVTE1xZWhnY3REaC8vT0VlR0p2d3ZSMS9LRDQ2?=
 =?utf-8?B?WUZnRWxScmMyaWFNc0NCNnpyRG1FUUlkc1N0a252eTRZa3M0cXFUOWl1QndF?=
 =?utf-8?B?YkkrTWpreFpKdFN5aDM4N3VSeS83Lzk5eE43UjVkbHYrNlJiYmQ1YkZacG41?=
 =?utf-8?B?SUplMDRyRWQ4Yk9KZEJTOXlXU2tYWHZmYTJZbTdxcmExNFFCUkFYOVpiRUlj?=
 =?utf-8?B?cStVV0FlazVnSWFGWGFFLzZHeUIrNEhQR1JUUmRySWNLNXAvZExIUHBvSVQx?=
 =?utf-8?B?UmdTNFZ1L2hGWFpackI0czQyU2lZclA5OXZDcnp5ZDN6NElIRERWcXlRTXRL?=
 =?utf-8?B?eENkdklMQkhiVXRha2hxdHUyTkNMMjg2bm0rRllJMWs5dU1uVm4vZkF1OStt?=
 =?utf-8?B?V21kb3A2dGc2MzBDOEx3M2VvanNxVGkrZ0dHN016dUExVkFDcHNZKzBpbmtt?=
 =?utf-8?B?R1cxZmxpU0xva1Y4R1ZoQnVuMDhzSDVmclBkTEFEaTIzTEFRNWpiTHJMcnFV?=
 =?utf-8?B?TXlzc3d2enZiNm5PK0YzbHRNYVk4WGU0TE04dUh5QjRNa3lLZTNDMU92UGlC?=
 =?utf-8?B?b2lXYVl5TFFoSitYaTNYM0R6Y0F5WWdPQzkyM0lCRDNscWtzN0RSOWtycHlx?=
 =?utf-8?B?UGUzQ2xOWk5GdmlteFhBNElSalFDOEl2MThRemllQ1FaVmxQczJ4cXYzMWJl?=
 =?utf-8?B?RjBBR0VNcU16aTI0bEZPWjltV3gvaWRUT2YwckFpT1E2L0ltWVp2Z1lCYUpl?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10a84ed4-452c-491f-b2ea-08dd137c19b6
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2024 09:23:08.7710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8EPD+mR5kUj/SEGgi5oWHgZ/15j9l4A1tMhIRly2/LZdpN95vzRSXMqJB48ek6E9Ocv90kqZ9fiCUgG++ofAmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8036
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



On 03-12-2024 11:41, Sk Anirban wrote:
> Add delays to allow frequency stabilization before power measurement
> to fix sporadic power conservation issues in live_rps_power test.
> 
> v2:
>    - Move delay to respective function (Badal)
> 
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index dcef8d498919..c207a4fb03bf 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1125,6 +1125,7 @@ static u64 measure_power(struct intel_rps *rps, int *freq)
>   static u64 measure_power_at(struct intel_rps *rps, int *freq)
>   {
>   	*freq = rps_set_check(rps, *freq);
> +	msleep(100);

Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>

Regards,
Badal
>   	return measure_power(rps, freq);
>   }
>   

