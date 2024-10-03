Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1502B98F354
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 17:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC49710E8A3;
	Thu,  3 Oct 2024 15:56:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gA9SCF3W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84B3310E8A3
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 15:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727970982; x=1759506982;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F7es7rBPNK0Fv5vtfLD3BjmqEs+DvddQy8rrjKGwAUs=;
 b=gA9SCF3WC5IVk8KcV9vcyUfgoIL+3DPn/NZoVXYGEmnkw+/8viqHtnJL
 YJcJrlLFCvDRNxLCH0DcQJqI7z+WucHPu4zYgqgcJljBV5mkSSOTbEZq5
 N5jXWfCQhOMdFH4lx8tpkEtMQdDL7qVvuON4ousMNZUq0h6DxzSR6A6Wd
 WeVFEZJ4EI3pNA45Lv1G65udP4it/BK04YKOEfdtetBNz/fhnPe8uZRev
 mWCQQVn3dJxUFafcZzKjaM/BqcsrRWK29cxg/NgnJTlQeBEFFwBwIrcCL
 t29kSkh6dK5flIRBHkHczV371PhwusE9lCWua06JlX0go6s8i5z5utRrv A==;
X-CSE-ConnectionGUID: 26unnni+SjOSxGLC3xRMGw==
X-CSE-MsgGUID: ccsP8no6STC0wBlk1XePXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="26684078"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="26684078"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 08:56:22 -0700
X-CSE-ConnectionGUID: npHy2H7SQhmWG2pyYw4aAQ==
X-CSE-MsgGUID: H12fiGyJQAG8gLNSQR2qTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74638971"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 08:56:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 08:56:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 08:56:21 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 08:56:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n/+Z/SQLU0PfS0wAtdcNFHivaSC8qVnCedDtn/5TqcLzjXUqhLm8cpqdB4bpe7nxyH+Ktckw5bZL5zF5WNRsVy2FqMpMhSaAvpFmarDvR3WOvSvbRLOsbca/YI85/4aSIPVhAyX8+uSdzRHPMPjrawqV+tNBevHwq4CExzEIMKuOBuT547BJwJxT2zmnKRJ8zvJQzvpDZ96FTMD459E3jikmTE5h4nxgPh2Hd1NZ54sjNRiEthxE/6+Vs9C1/XcqTTQyrNm7FGqnQPSECZeNCZ6Oxv+rPkVbrgmDS63CWswQadBUtatZcdiGxyBav/gkkCuniav87uDeDi5YTaqt8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=501cfKy494mr69ilql+oT5flmM/djWF6dA39RQtWCCk=;
 b=xDySJbQBZ4Kdagqy+frsPKbwLff5kJV6PVCJCvtWdM12WQT1bRPhUFDi6xBwPh9n607o6nbjp2mVgTQb+aSnZeeRpDAxEY9lFYmX1gBGii7l99OK76Y32ikukio3ddFr5lzME6UKUIUv9Ef1Lsp9ZXdECBCkUToEhrxU+oSnwpCeHcjSjpk3d6hvJqfT8zKTsgdwSLs8Y7Ursyu4oRL/trE2tJ83erF+ogXI3KY5a0TToqZRwreiQm6xTEs7CFpse95Qy5v8c47mq8xJcRVNv83z7SExyDY6pnJVG3XMPAmaKNpw98gN77PhTOb2x3gJco/0C2PGJ0WBovbh+4gbtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by DM4PR11MB6262.namprd11.prod.outlook.com (2603:10b6:8:a7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Thu, 3 Oct
 2024 15:56:19 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%7]) with mapi id 15.20.8026.016; Thu, 3 Oct 2024
 15:56:19 +0000
Message-ID: <55bb7824-15fd-43fa-a285-03533d693a66@intel.com>
Date: Thu, 3 Oct 2024 21:26:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <ville.syrjala@intel.com>, <sai.teja.pottumuttu@intel.com>
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
 <Zv57pzLX4ltH4w00@intel.com>
 <20241003142237.GK5725@mdroper-desk1.amr.corp.intel.com>
 <Zv6rGHmLiL5GrpKG@intel.com> <Zv6xBKixcWn_gJEW@intel.com>
 <a80d1e55-a294-41b9-8369-495450fa9c34@intel.com> <Zv68V6A_HTQihdWu@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <Zv68V6A_HTQihdWu@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0003.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::15) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|DM4PR11MB6262:EE_
X-MS-Office365-Filtering-Correlation-Id: d2dc8302-2f88-4b51-2364-08dce3c3eb31
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0V3aWZOWXdOcnFNcHBnL2poVVM2KzZFbW4welB5ZGZmVUR5aTNpRUt6M2Rk?=
 =?utf-8?B?bXN4VlBnT2NFQzZ4N0NadmFWRjFIRU5WS0x0cXo2OTJvY3VOV0VBdGJxZzkr?=
 =?utf-8?B?cGpYYnBydWN6SnZWOXV1bEpVbWdlUTd3dlJOUkg5MXgxSEMzc1hTQURGRER0?=
 =?utf-8?B?WkZYR2RLcHZwQXRXYkJaK3ZXd00wdTZVd21sVE50T21VRU1sWFFMSVp2YVFN?=
 =?utf-8?B?TDZ3dnFoTUVtYjM4MWJxN0poWEdFbzZaU29ZU3FOTERST3g0Z0ZyUkpYbDVy?=
 =?utf-8?B?YTVWeDhtYTVocVhLZHRVYk5jTy9zYXpGUmxiM0J6SFIrMVcxQjN4eDk5RUE4?=
 =?utf-8?B?SGJmWkFJZXlxYkpMOG00RmY2cm5GK2ZqakMwZk8vZmY1MXFUYy8wWm1jVmdp?=
 =?utf-8?B?UjNuWDhZYm9yWldiMWR6Mm44WUhCaXlxK3c2VTRaYWFlM3RrQVV6OHo0VjdV?=
 =?utf-8?B?TDFEVjNQSi9QKy8rdThETXRoamVRUHFYSklrMGl6WnFxbGg0NGpJSG5YMjFC?=
 =?utf-8?B?cjB2dXQzVkdlaW13SXRzeHJmSGozWHEvbzV0RFplRHpGcnpxNVBsK29mYmgx?=
 =?utf-8?B?MmcvOEJnb25tS0lhM2VCaGlNYlpISUxaYTF5L0JvRjhNYXNvcW9KMVQvUkdZ?=
 =?utf-8?B?VVBkdDBpK05hNEpYOXJkbStZWm1LQ2QzTmFjOHJMK2lZNGtTZWlEUHRhTDR0?=
 =?utf-8?B?empLWGVFRHRkcTczdDFrcUdTeFJySVhuTkR5bDh4b1pMV3ZxSVJMakF3TENx?=
 =?utf-8?B?Y2hXQjNNblpoR1UwRzBvTVk5Y3dMTXJxTXJZZlptSm1laVZyZ3Q2bm1Zamcx?=
 =?utf-8?B?aHlGbm9XZmQrMkJXWkR2UkhNWXJudDlGNkYyaGRUNjRVbXpYNUdBUXBJYVRB?=
 =?utf-8?B?dkdiL2d4QnhaYndVaG9LWDBFNDRaSVl0MEQ0eUZGelFRY1lKVTR1K3pvTEFK?=
 =?utf-8?B?NVFEVjNSeVNEbFVHNTBHcTlmcGdDeXZmN21abFhzVXNHblA0YWcydGVvbExV?=
 =?utf-8?B?UjgyaTNjR0ZEdmRUa1YzclN4WVFKUGFlcWhSTi9SYnJuSlArTDN0bXdQL0ty?=
 =?utf-8?B?KzNvcEpEZkxhdDh3eVNXbm9sNXZwZEZrcFdkbklNUlRCYXpXaGhJNzRTeHQ5?=
 =?utf-8?B?RFFJTCtHK1pERzl4QWJuZHY0K3Rqc21sUkZSTnZMcnA1eHd3TDQ3U3RhbWo3?=
 =?utf-8?B?bXFNeEJBS3lTWDM2WE9UY1V3eCtKdFNIeDdtVHJ5Y0p2aXROMkNiQlIyaDhw?=
 =?utf-8?B?ajNmVXZaejh0NWR2K0R6TnZvVWR0Tm5GajJNcmpsK3pkWWFiTXJldGEvajV5?=
 =?utf-8?B?aVBLbzRtWVRtdXdCay9IajIxTjY1WHRrZzVDeDVRWVQ1U0h4cjl0anhBclFG?=
 =?utf-8?B?VmN1bElhVEdjYUwvT0pYZHpFQThYTUJOWDg2SzRMcWZrZFhhSE5hRmloMG41?=
 =?utf-8?B?T2tzSHpBNUxvVEhRZWZOZ3Fod3BzWnZ1U0t1SGxZNU5CWmNDZDhpREMvdVZX?=
 =?utf-8?B?ZC9UY3VHSHVmaDZtY24yTkJaZDcrZ1ljRlNpb3FwS2szQkV5cmxub1J4RUFk?=
 =?utf-8?B?OFhWbnNTczlZYVd0VkpPQXMzdVpPYWYrQ0EzdDk4SUlWbCtndHlXcXZxNnkx?=
 =?utf-8?B?SFVpRnlHVUpKcEEyYmU4dmRPV3FHcUlkWFdlODVpQlB3OWQvMFQ5eUVTTFRL?=
 =?utf-8?B?OFhnZmdvemhJdHpvOXpHckVDOWhpSjhES1hwRkg0UHFXajlKbzVKK3JRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mzd0d2k0UDdHd3BLMUZZQ3pZZERNTTdSRFQ0bUlpc3hJdTVETFRmWWtoUXJJ?=
 =?utf-8?B?SUhQSk05YlVpVmdKL1U4c054aFN0TVRIRE9LQlc1ZjIwbVdQRVE5TXh6UXMw?=
 =?utf-8?B?c0tYS1ZKS2llem85RThDL0o0MElEY3d1WEhPVTFkR0p4ZjFTYVlRRXB5ejFt?=
 =?utf-8?B?ZUQyRXhmMUhRT2k2K1laUnJ2UGRZeUR3NEt1Y0NGa2UyQ1ZpZ3FnWWx0MjFp?=
 =?utf-8?B?cTJhSk1UU2U4K3l3U0pwSWQ5UUVQWHlQM05WWXNmMGY0Z09zNjJaVzBYbzRY?=
 =?utf-8?B?ODJwN2g5emtNYU51RjA2Mmd3L2xtMUxoUURMUTVWWXZOeGp2Q09KNzY2UGdR?=
 =?utf-8?B?eFpoWHdrZ0NXVm5BcXMvcElucHFoS2VoTkFxRkpRVVhKbVpneG1oL2lLT1dS?=
 =?utf-8?B?ak9CTEJxclNBellSMk1IdWJBSjJkbm91SGtxQTRCbjQ5VWwzN0w0QlRvZzJu?=
 =?utf-8?B?TXF0YjEwSkNkek1ZTzEyVGFZN1dqNy8xN20zZjVxeHNDWjRDclNUUnNER243?=
 =?utf-8?B?NDhRYm1MUmxENXBkM3J5NDlSL2Jya2J0UUlLVlJta2NCZi9SOXIzMWRwSDFr?=
 =?utf-8?B?WjBZTXJNcEgraFAvUXdvcWtMZ1djbnFhc213TndGdGRkWHFHaHdMNGV6Nm04?=
 =?utf-8?B?M1d6V2JPM3pYckZMNDFkTEJ2ZlBXVmVrYmJaa1hvbURiR1dVcDNjOVpIUzd6?=
 =?utf-8?B?VlJ5ZlN0WTBldzNoUnY5Sm9LM3oxTzl5VkNYR0NrV2NvTzVrZTNrdjVNdE9F?=
 =?utf-8?B?MVFNa0FTUjBYSnpGaEZBRWpIdmNSYmd1enB0Wnl5ZllVMHl5OWVIek5ucCs2?=
 =?utf-8?B?MzhJbFp2YlZ0WWwxZ21UWW4xdkp2TDVQZGZtSEdabEd1WEpZdjE3cTVUaGI4?=
 =?utf-8?B?ZXJ5blAxM3Jmb3VlY05pS0lOcXJzVDdFaU9qUFNDUlJja3lPaStKZjNtdFFK?=
 =?utf-8?B?c2NadHFpbUVRMWNZeEc3bnY0dG1hRWw2aTdOQ0JaelQxV3RNbUlZaXk5V0F5?=
 =?utf-8?B?OHJpSXVvM25HVFpZbnk1SGFHWmpkZGJvR2h4N1RLQnV5dW9JTDEvdy9YU0Rr?=
 =?utf-8?B?NTlFVFh6ckpkb1VJZ1ZPQlV2OHhQTWxEOFF3OERrUmswR216YnVxdmFNaitS?=
 =?utf-8?B?MlYxT0dCRVhaWTFDb2Q1SEl6ZjBGa2h5RElOQnhRdDc2Qjkzdy9KVEFBTURC?=
 =?utf-8?B?K0xoUEJvVnNFdkhUZWV3N1ZuT1NaeWl3b1piNUZReElNN05lRW5PUG1heVNm?=
 =?utf-8?B?ck1qM21LQVF1VmkwTjRBTDlkN2hWK2d2QUtCaS9xaGQ2ME5qVE1vM1ZGZEx5?=
 =?utf-8?B?YXBITGRzdHBnMVlzV2N3RHRYdzdsS0FRQkF4R0V1ekNFSXAwSmtIWStqeXcx?=
 =?utf-8?B?RkVNcXQvZ0twL1N3NlBBbDN1SUlwc3BhWlBFcmJQZE1maXhLVXhzNzBCRlA0?=
 =?utf-8?B?eXlzVFJYejdhb1IwWHh5LzJoZE9IcDk4M253OUhhR3RiRlBHbVRhTlNBS0lL?=
 =?utf-8?B?ZExaMkQzbllMcmZkUDFkKzZVZWFNS1RYS0JYeWkwRFBCUkFUNGZHY2hWS0xF?=
 =?utf-8?B?OVpGWERvL1hNVERjOW8xdXY3ZEc1cThmMDl4UHlha0Y4M2M0cWJsMHk0WjZ4?=
 =?utf-8?B?bEhxSVlFU3NIZkxjMzl0WDgrVE1NeE9KQzZzRzBScjhtZGxZQW9YaGZpOVhU?=
 =?utf-8?B?VFhpeWFvYklBcU5WdWJBWnhrOElubVkvUm15c0dXN2FnWlJ2bnpZK3dHellr?=
 =?utf-8?B?eHV0bjVPQTMwbFlucHJ5N0pJMjhWMnVJVnNsLzNsSnFMU2tCNUpjejVHckFz?=
 =?utf-8?B?QS8ybHdLSHJKVTJPT3FZbU9kbGFjUWVpUzVDaXM3eVpOQWcvWkF3M0RTTXAy?=
 =?utf-8?B?ek5DZzlNTUxRTjluNGNjTTRiZUROaWN0WTFobHJpeTF0amhwSHRkQ3Nxa3BJ?=
 =?utf-8?B?eDRJNXd4blRCeHdhRHdSRmtJa3ZPeVA5clZEQm0zL3BNZkZNdGpxZE1SeXBi?=
 =?utf-8?B?UFkyT2d6b3ZPTkhjc1BMVWk5TmZRT2RGMGVGa3YrTFcwcTE0eUdSbzhLTEp5?=
 =?utf-8?B?Ynp5SDlQRDhmRkYrQXRhdFpRNSs1TnhudU1ONUZwMlFsYzExTW9ERXI1T3lT?=
 =?utf-8?B?VHlDbkw0a2lveVpvbmVyZGEvbW9JdjIrelgyOExHNnBaS0NDNFJ4R2xsdldC?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2dc8302-2f88-4b51-2364-08dce3c3eb31
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2024 15:56:18.9857 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xEezhznY9XKLz7k2ytMfjtRycWEDTSNnryfQe0UYbsNYb38iQgHjUotGD7zfxZv1yVNtreFsyH7cABzJjy+HRWEKTXZb96Zbd5NX/Km94hU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6262
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


On 03-10-2024 21:16, Ville Syrjälä wrote:
> No. The current code already works correctly, and pipe_csc_enable and
> gamma_enable are not meant to be used on icl+.

So, if that is the case, would it be good to still have the 
icl_get_config function here and completely remove the gamma_enable and 
csc_enable setting part so that its clear that we don't need these in icl+?

