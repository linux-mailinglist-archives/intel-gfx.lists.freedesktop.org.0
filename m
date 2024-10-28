Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C1F9B30A0
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:44:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC9410E1EA;
	Mon, 28 Oct 2024 12:44:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HUK78PHC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CD3910E49A;
 Mon, 28 Oct 2024 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730119473; x=1761655473;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=waOcRJVX6idTpfTRlMTBbaBZAk3NqAgFGWOzCxbh8vM=;
 b=HUK78PHCMYQ5PoQFB196JNWwJz3FsltFKJMDJnKs008vwdIPzz8ggjo9
 hdIpZtf1iE1JbzuGLxGM88unyGlLMPkvK4pBWIBOWPeQx0E0vGf031vdd
 ycQsHTO0bL2CszZTfz93ubcAPE1Zlm+L3h82lO6DGYgCtBUbnqpcRB8Ow
 CdKlInYIR40Pte0rRRUI5Ok6qtVDz60xeWb4bF3jygPkOh1hzsAnEUR95
 A1exFVxsOn1RShq6lSX9Foo9TJCEsWfg2gj+PqGvZlErWrg+cqxb40Hti
 Ze61h7ijuUgSTp69UXNzWtlaosepVQ6lItMsatin7epEKsG8MMuA5KsRx w==;
X-CSE-ConnectionGUID: cxWL30QqS1y2OqokyC+XgQ==
X-CSE-MsgGUID: Ye39euZsQe6iRFtBv4VPbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29615197"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29615197"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:44:33 -0700
X-CSE-ConnectionGUID: /MnNvCAlT2CqJ74ZsXEBSQ==
X-CSE-MsgGUID: jlMu6TqHTQCZxMwksj4WnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="112439993"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 05:44:33 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 05:44:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 05:44:22 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 05:44:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EXuA67Iq6X+T6aF3fLTCR6r5KUwpuYyL9R/IDbgn+7yHWH5TEO4W0HIHJbdprtEiLuVJxsx3+7X0zgzKz6szGjIhwSut/60IcR4LwI6xwnewgfj3xoUjcxfw/MNyzUsmV/8MGF0JevL37T1OhQmW+BeCze7Unan3yUZkWZGcoEc6JElbWq8kvfcbEFp6T3oaiQtv0xIE1IRETf1cTh5/ibl5M2C8lTVTdrvEdZUWToOcjmxDu9/IvONviKwFJ4CLn9CE4fIoye62W+QCZsRk9pIPRWO0Y8KPwHhN5B/2IM5LtA8LTRYPfKdx1syMWPEzDM7yaLyGyQvPzPEhzBXpqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/xxz3559y9KC+oWZn+9qoKyC9rAmYMEqfWGdKpCbwg=;
 b=nO5AZ028RfviY+jAYMu2KqYHnHUkDgBwLqHt8rPleZS2rEXsvka9YJ3+09qdi7zMATGjndhVlEMhCZkJYNrWzp0su4nLIwIIpE2Ul70bRCyEewsUGUn28dlgzpmlL8EtSolyqw1PfFOhKszTsJl2zBd23vL5/lRP2tZv1lkaiEfquV4PEfetSJ51dwYI+lDFU2D8gpjaOP/oBZx2QLdFjbfHi51gyxY7abOg/C7LvznkXogAaB2Ue9eFAfX8XwQLlLRxpZFqTLrqvGxxlKXoq/Xt6hjzuNI8dnbOE+mwsKH6gE8o9krMePsncFyI2plYCu93k5U/rWXqcTt9KZ8brQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6499.namprd11.prod.outlook.com (2603:10b6:510:1f0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Mon, 28 Oct
 2024 12:44:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 12:44:19 +0000
Message-ID: <9bea7900-aa6a-4b2a-b82e-4e83bb7e728f@intel.com>
Date: Mon, 28 Oct 2024 18:14:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/i915/psr: Change psr size limits check
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>
References: <20241028074333.182041-1-suraj.kandpal@intel.com>
 <20241028074333.182041-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241028074333.182041-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6499:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e301ebd-e017-4954-27e5-08dcf74e3d46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q3NKNUtic3grTVVJU2svL2R5S2lCNGVuamtCQUw0NDZ3NWtIZWtycDRNV0hx?=
 =?utf-8?B?UDhoS2JHV01JdjQvVncxcytWM2xJK2tWR09tZXNIUEc5ckdybUNoSjhPUXds?=
 =?utf-8?B?Y1NYRWRiNWdaZDNUdEJnNWM4VUFJWmVzRktRWlZDa05oVEdoRGVXdjFGZ3FP?=
 =?utf-8?B?YVhyVTdwY1RNTi9JODFQY3JFMUJJMlh3clNiVnJMdHR2NTZzUDJEOXkxbnY4?=
 =?utf-8?B?N0wrWlYzYVdnWUxRVytUbDNSRlc4SDdxd0ZmcmU5RW1BTTFmOGFqWWFQbkxY?=
 =?utf-8?B?LzVyTUxYeFBCZmJuYTlWck5ZUXdwQzM4OWpaUEdXUHZDTStiOVltWjc2NVpW?=
 =?utf-8?B?SHZ0ODN4R1oyR0syY1lwMWoxUG8rbmFnRHBjNjFRcWhmWk9PcFdpcVBKOUZh?=
 =?utf-8?B?cXNPQ2dmM0hXa0VSOVFVMXhrM0x1ZzRtNEloOE0rRjBrSDBEKzdiVEFVYmVT?=
 =?utf-8?B?dWthT0xJdFd2NGFQTmErYXFlaCt0bXlJbEw5d0dGbGtscTV0QkNkQXprL0d4?=
 =?utf-8?B?MVRWMkR2OUdaWlowWFdBU0Z4Tk1WTWhBSlROb01mOC9ZTWhMcktIQ0Q3Rkk5?=
 =?utf-8?B?bVIraHlMQkNGcUl3dTF5YndEZmFqQlZmYVE0QnA3b1hEVTlSTWlDWVRTOWJC?=
 =?utf-8?B?QlI2Vjg1bklxUWdxT0hZQ2pVMWtISEJQTlJNVnBabnEzV3d4amRCWkx5RUQ3?=
 =?utf-8?B?Qk8xaXcxb1pjQnBrNzJsZWduSVptOGtuMysvM0RyZHhES3UzaVVZaW5NbGlT?=
 =?utf-8?B?Nll4Ui9EL0E2UWJZYXNwbmhmUkhURjlEalB0ZXdRM1BqaEVXV1FaVWNGdkpJ?=
 =?utf-8?B?TFE3Sk5mVTA3cjFLdkh6TUJ4UXdrVVYxRlV1aEpodndFdGZrQ2pMUlRzakJ3?=
 =?utf-8?B?eVdKNWJWUXM0TStXWG4vaU9leXNvZjVlRzlUcmpRT0xaN1RSRmJuWlZYUGZX?=
 =?utf-8?B?TDUxeHZUeDZnZ0dGak9lRG5EKzlVbUxVdmd6bWtyQVB6TVpZZ2kxbVFEKzNo?=
 =?utf-8?B?SlpEbTNUMFhqOUFFMWFkTzBidG1CUXNNNHRVYnRqMXBOTjNYOXlSNkdOWVNn?=
 =?utf-8?B?ZTF5LzIxWWY1TWtkV2VwZHZFZkd2ZjlJa0puLzdWMnE1MEZjaWt5K1ZJa1do?=
 =?utf-8?B?SkU4bDRiTm54RmRLNkNGbmNYbkxpMG1kNDV1dzJwODFIVnF6b2JCZll6TUJY?=
 =?utf-8?B?VHJFbTdIVm5tNzlWc0ZiUEpCZzBTTEVONExWWkxCMUZMdFJMc3pjMWFvSXB1?=
 =?utf-8?B?cXJpcmdqbjdPYTkrVW9ySEdLNlIvVmQzYWg2QlB1ejl5cU1EdUVaeUxTL3NK?=
 =?utf-8?B?MnZlUGdOTjlRaC8vR2RoYzdidTQ2VTYzdjZLNWFveXg3emJjekVxTjIyT01I?=
 =?utf-8?B?RzR0NGRoOHNaVTNNSGZML0J0UEw2YXBZSGxTWDlnY01rZXlvUG9wZzRPWW9D?=
 =?utf-8?B?V282RWRINXNSdGN6dHVlNnFNMktuY2QvUkJheFJSZ3VQeUFzZmdmeU1BeGEy?=
 =?utf-8?B?ZU1mL1AyZmZLbFpPaXBnbDVCcHBkSHFKaWVhdldmMjhUU1JweVJ4eUVLZVBJ?=
 =?utf-8?B?eFdDQU5PNFBnQ3RNcU04d3IwYjY5Ulp4OSs4cWNiSzd0UURZTTRsbFhEVDJS?=
 =?utf-8?B?enA3UWtYRHNtNXJtWEtWRHJUZXIxeXkzbXJ2NGdQYnRMaDBMaGZ4UHAwTjRC?=
 =?utf-8?B?RklWazVVNzlGS0VYMkFIOCtTRFl4cW1SS21uQ09FMldleTNHRGFjUkRYMUNN?=
 =?utf-8?Q?UK8IyxJ0k4MfOkxVHIq+3wP3IRjYeoten+f1Jjt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmkxWE5LU0VXUGZ5c1kwbFNhd3RxUjJaUUQ4MmhycmlDV096NE1RQk9OZzlh?=
 =?utf-8?B?V0diWkh6K2dPZVNtR0hQdE14SkhTS1RSLzdBK29LQ2thbDZGSFlwbGx2RnRy?=
 =?utf-8?B?VXN0Ujl2cS9GeUF2MkN2UHlGQzAzVGhDOUJXVmJjQm0zT1NrejA2WHc2MGx4?=
 =?utf-8?B?QVpxZElvZzR3bDZoSi9CczVyUXRWbFhmWkQxSjlmYmRBZ2tQSnR5SUcxc2Nn?=
 =?utf-8?B?OGlDMDhKNDdNdU1BOG9Ua2x2cG9nYmZFdWUyeU1jUm1QdXFkYmJLVkUvNlhH?=
 =?utf-8?B?K2E2T1dBamFBTjJJYllBZ01IK0g4bWpnMlNPTm5vVE84S1NmSnZnNEV0YS9t?=
 =?utf-8?B?UUlKTmJybUkrMzNWRDFVL3JWRklQMTlPTEFnWnlVaWhSdzdka1oxL1YrK0RB?=
 =?utf-8?B?djlkakZRY2VsT2JDMjlCaFljN1pZemIycjZJS2k2UzQwWWNPQmJxSEJ6TEt1?=
 =?utf-8?B?NzNTdVlHNHhrWmpMbE5KMXBxTk1mMHVHcXdWeHVRMTB4SEcwUXEwa0ZMRUlS?=
 =?utf-8?B?azdNTTlmdkNPSFhxZGR1cDdIWVFYMWtuWmZQckJSbnk5NE11MmtzN3cxak5G?=
 =?utf-8?B?TnJaSGF1RmFVRUZtY1o5TEVhU1NVeGJMdTE0a0RrODNyZENZUmI4ekI2MjdW?=
 =?utf-8?B?K2FEdGdwazFtektpYm1ZYi9uUWw1K0Zqd0NqdHpWQXA5cm5zVmxoWE5Ja0Vh?=
 =?utf-8?B?azZET3FEUXdVSXduQ2JFZC9Oa0w4aGtKSnZweldKRHF3emdvMFBNMTRaQ0pK?=
 =?utf-8?B?N3M5TkhjSTdDa0xaSjIvSTVUWWE3NVU5TUZiVEcrdGZqQ1EwSGNSb1NDZTls?=
 =?utf-8?B?K2FxNGFjUVRlNm5KUWhQMXpDcS90ek5tOGFxZmJSVWNVcWlqa2N1NTJSUHB1?=
 =?utf-8?B?UjlIa3FhdjVnc3kwV3pNcVl6K0ltMHIwMkFublUxVHUxei9HNU9YWjdUYnNT?=
 =?utf-8?B?SXNZN1VUMVRyUWpkeDVDZk9vTFdMRlprYTg3U3FkMEU4dDhxanA4R0REb3Rn?=
 =?utf-8?B?eFBuWktxVU1CRTdhYk5zVjhtM01IZ29UOHJ0NGtwMkRBZ1pjTXdOaXRNUHcr?=
 =?utf-8?B?NzFDZGNmWFFNYmc4cG8yd210VEphb1drMnJSTG5zSENEdWtwVmx1UmV4MEpG?=
 =?utf-8?B?QWdjcnJFbmdkcEt1TXV1N1lRM0puOTdJYklmUVFIWXc5d3BZWUlXd0lxV2pU?=
 =?utf-8?B?dlowQXpxTE1yc3g5UGo4SXUwN0lsMWFaZTV5V3pjV0xBOFkrNzBNbU53MXZw?=
 =?utf-8?B?bjBhZGxXS29yb1JMekJjZlZISGpqbnNDa0RkTEREaEplMWVpbU5hS0xTYzVy?=
 =?utf-8?B?YnhIN3VQL1dOZXRJKy9LYmxuRnVnK0lQTXRBVjN2bld6Z2YvL0VCRm8vL3ZY?=
 =?utf-8?B?VGVqT0ZwVkZ0czBWTXdBazZvSmJvZkdyejBxTytuaFFlYVVFS3h0NnFMdEF0?=
 =?utf-8?B?eFZOSGFkREZQWjc5eHJEcWxaZytnak9ORFdQQ2pCZ0x3MTYya2RlMlZxdm5j?=
 =?utf-8?B?WUdpNjljeWl6aFhKUFNCY1hsQUQySnk3dkZYcjV6MzlDanVWbmplU2wyRndQ?=
 =?utf-8?B?SDVpRGNWbnFtNkVLT1psQnRObWRzQUo5d2l2V200M29IeUFKaUNnNUFQMmlR?=
 =?utf-8?B?V1E4RkFaSXF3bnRKRkxRZ0IyTnFjcUtCdE85NUpmdkpPK21KcGp4RmVxOEVG?=
 =?utf-8?B?MTdBTTg0RnVxUDkxRFRkblFUdnpjdnc3RHNlUDM3N0QwTE1mWW5JREduMDRN?=
 =?utf-8?B?ZU5LaHBwSUlRbW5DYk41VzJBcC9KQ01DclBNejBtbUdVQmtFT0xzS2htVGZV?=
 =?utf-8?B?VU8zYzJRS3lzQy9HbFVERnovOUQ0My9IaDgzeG5kQ09uUmEvZ1pqc3FuMFR3?=
 =?utf-8?B?SjZHZnluemNIVDMraE9tY2R1MHc3bVRFUHlydlROWkFIWHI2QWFyU3dyMnRD?=
 =?utf-8?B?YjNPL3d2c24yOXArVnYrcWVOalZsaU5kSHgyN2p2LzdtV1JrU3NScHVzeEll?=
 =?utf-8?B?dHY5V1B4TW5INjVIaEs0ZkxCWHRpVDR6ZmR0ZERXVWhrblR4Q1ZEMnJjNFBM?=
 =?utf-8?B?SjBBQkNRZG4xZVNtaGkvWUVXbFgvdnJrTlYvQzRTM05JeHphdjFCM1VWam93?=
 =?utf-8?B?YXNYNmxFc3JJOW8yUzQ5dWF0azBMVnU4U3dWK2JDbis4c2dDQTd5b0xOWFAr?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e301ebd-e017-4954-27e5-08dcf74e3d46
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 12:44:19.1180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IJewxlQuNmLNFEWnm/IqNu81jb6CCOt/2y5ZSVh3vgVbGg/ip+KQF7Eft4P3W92SiVxTYvgJkqWRr1NaHMNEXzjPrZHQTG6I1ZgCNSWV5+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6499
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


On 10/28/2024 1:13 PM, Suraj Kandpal wrote:
> Change the check to only check for psr size limits till Pre-Xe2
> since after that the psr size is equal to maximum pipe size anyways.
>
> --v2
> -Check only size limit until pre-Xe2 [Matt]
>
> Bspec: 69885, 68858
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4176163ec19a..7bc64eae9c8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1453,11 +1453,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>   		return false;
>   	}
>   
> -	if (DISPLAY_VER(display) >= 12) {
> +	if (IS_DISPLAY_VER(display, 12, 14)) {
>   		psr_max_h = 5120;
>   		psr_max_v = 3200;
>   		max_bpp = 30;
> -	} else if (DISPLAY_VER(display) >= 10) {
> +	} else if (IS_DISPLAY_VER(display, 10, 11)) {
>   		psr_max_h = 4096;
>   		psr_max_v = 2304;
>   		max_bpp = 24;
