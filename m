Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B3D4C78CF
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 20:30:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F1810E19A;
	Mon, 28 Feb 2022 19:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 331AC10E19A
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 19:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646076613; x=1677612613;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=BBRxjW6GsOpVQWC8n9EVCNoHyhoVB8aQ1mJEgA3ZlXw=;
 b=HHeHER7gB9dzaG6Ix845ZcFUE6TJGfm/AUplGSbUOHHdclGpSSLgoly3
 Td+CCSxzSpjue5HfGbRbrTQPUZzulVwSKGka0pCsko4zyGUyyL+T6xkhO
 zaQT+YhLeakrjaaGPvxuf8ndopwGOV0OyV9dHm+ol7CvCbYNqjCy3yDRF
 FpYebTm2v1w2MGj5UkbnXZmsWjQzB7RGt6sweyATSbrsEP3e0b4jRwSjG
 ctuXzLjBTW1J7opu4IH++rEMjnsBI+vkn3Mxk2EsFJ+rNzPP/XjkSCrsr
 tmAJ6UCh63wO8C6+/IFnVhc3RiQhtDFu2RC2RSasU+4t1Jx5MM05CvytC Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="339402837"
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; 
 d="scan'208,217";a="339402837"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 11:30:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; 
 d="scan'208,217";a="544842816"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 28 Feb 2022 11:30:12 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 28 Feb 2022 11:30:12 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 28 Feb 2022 11:30:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Mon, 28 Feb 2022 11:30:11 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 28 Feb 2022 11:30:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UJcy0x10PULxSV1m9ZE26/fIH0Qf1d/myJr/4AeT2UrGN+TpJoxnxghtpKDQLBw6CrCZ+X4AP0TSbUHLwRZMSySuG8teTGLTmObDPIHGiKWW6HyHekqOHnlE3FZe/kQqD+wYW7iNCxVyFXGCa/K3+u+5M0w4Ml1euE0RGAuFefDdiWyqV+stXI/dc8oWsPMJ724CpZtqKbL2feRvXnawViGPyuc+zJGC9p1Bo/K2t7ZHmymmqfKjOhaZfflEJbpfrzzXDvXt69Vylogw/VmObn6XlBeW4FgfG5xYaFcTULOlLvfnUMw9Zgr7f54RN01aG15CMH2VQsZ1lgDQCxPTKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TQOSv5nDDVPcKPlSHGizvJTjg3anHaDjVu6s2kxjwxQ=;
 b=H3KUj9QJLk/+i2TrTpGF0quLOSk35z4vP7AmPozpwosd45xQyThfHvCIjNu/JGk+l2fb8hUZcoe7yBT3oE2ZNkWKukbfibFxF3tr/vLFEDYZjjQC18J/pLzDkSh18+/JQAeSFv0D9jaQQ24+1o5/zsxDkFU6ivf+0nIeddO0HeeDv8UnruIHzANgU+2IWxjEQ9MZO1ZKTi5V4FASKG5F4zVSGH3fSu4XsAZcIGC7OU9PbAnI6rZjUiGDZ+oj1RKWFu2wVs7JGp/Uf38JJKoxS35M/nvKh8MyZ1JUJUXkLBS3sDzJY9ORN0mmwZAYpK1rpotmaxxSur0XXwp6NAqiGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BN6PR1101MB2211.namprd11.prod.outlook.com (2603:10b6:405:51::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Mon, 28 Feb
 2022 19:30:09 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::dd36:1843:a629:4ad7]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::dd36:1843:a629:4ad7%4]) with mapi id 15.20.5017.027; Mon, 28 Feb 2022
 19:30:09 +0000
Content-Type: multipart/alternative;
 boundary="------------wVxqAAs0TuS618Nagoheuw6j"
Message-ID: <f4db2508-9621-c7ef-6325-f5d7eadea56b@intel.com>
Date: Mon, 28 Feb 2022 11:30:05 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20220225000623.1934438-1-John.C.Harrison@Intel.com>
 <164576421291.6271.13654738824286534554@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <164576421291.6271.13654738824286534554@emeril.freedesktop.org>
X-ClientProxiedBy: MW4PR03CA0206.namprd03.prod.outlook.com
 (2603:10b6:303:b8::31) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 252524e8-bcfe-4228-f118-08d9faf0bb11
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2211:EE_
X-Microsoft-Antispam-PRVS: <BN6PR1101MB2211379F20568C8C0B719DE4BD019@BN6PR1101MB2211.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8zhl/IE0akMklCHvv33hbFrRo4T6WZ30D/5hVC+fz1eueJ6gQ3Zhtt43DMpLP6wRtoEkZZ85JW9kI8LUwUlskhqpkHVJKeOi69QVbN7mLhRsVgocD/R5hG+4wq46c3o3aGFTLrPgDVfb9SneOvjppSS9NdQEKBDNd43SxLHVwIeGsKsm4SO4Df9zhQbr5LliMpjSjRtbksJn0g0zZOHQKiZv0KGmWn9XOr+hiRW14J305Tm5cnWt/AjCNEi9xU0AqQSrTHAxE/4k4MXP2stp7ZUfdkErTs5h4M9U1B0wHn+LfrnSoz+v7zsa8/fujjyrsQLMCy5Mjf7dr6ui230OwLGL7ZjQWWbC4TBTX64NpWDiWnMlhy1fq1RyqYGjJs+BmO7zTlH5HEog09w6aVljpdY0mvAVEBJ0h92x3XRdXMIJ7epiujVuddlCAxusFJXzj8kXwBb5shPk00Ys4dTfO0nUrDwwCR0MLMOnwgQDGptmaNtZ+mp1VIRGsuecXnEYiZbDKRAeMx5hp75oIRgmzLlVS3qs/ns5KtmVamVKgxcuulMvyeX/32U6GKcM8CpmKCwBIz9AtyQvnlyvK2WmYy7QwOljrXHBCVCNneZIdk4pXz6rnrePErxY/UfZCPc67IfZ2l5pFotnjMMxQWigyvuj552BKuuhfq04zNii5eOhPvaXsmj8gQ9slGlSqdcXc6Ihy1d1Sei/YpSbxJG4YhXbTd95Svh6HSSRHFr3bvVz9rUoAlD8Ck7U5kkSDoVzwAzeNJpHqxEIBnbbAjLb+JFooWgBBrqPcyQViiMN4vJAn2OI7DubZ9z3QrmgPS2TBTGvhRQHNMEQCZIv79VXnzBGftp4KdI/dspRnh5Eb0M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(31696002)(508600001)(2906002)(31686004)(6486002)(966005)(166002)(36756003)(83380400001)(6916009)(186003)(26005)(30864003)(316002)(2616005)(82960400001)(8936002)(53546011)(21615005)(66476007)(86362001)(66556008)(66946007)(33964004)(5660300002)(38100700002)(40265005)(6506007)(6512007)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3dUMlJKQnNIc3l1OWNhYlc5bGE3OTMwVUpHc3hIbFdyN3JpTFdyYlNxSkY1?=
 =?utf-8?B?NmdZd0htU2U2OWFDUk4xUTdSN0NIRUxNRDBiNkQ0ekN3eWNtQnJCQlNmbGFv?=
 =?utf-8?B?aUE5dERSeWxaWXhYQ2xSWHNvbm00N2E5YXVBSVJxdWVVbTNYMmFzSjNnN3ZS?=
 =?utf-8?B?ZVVVbXBuNERoOEE2VUR3cVo2enVwTFFUb01PRkw0OHJwQy9vOE40UDkyQ3JB?=
 =?utf-8?B?WWZieHRVTDdJREphZE94WE5DNlFNR2ZXN251empFcVlCa1A3MDFnTENCamFY?=
 =?utf-8?B?YlBjZHcvQ29UUnVOWUlaanlRbW0xNHlHRFEzR3pUNGh1K2gxNmZXc3A4dS95?=
 =?utf-8?B?LzZvbEZRTUc0OFlvZkMxdEExb1FlYnMrVHRoODFPcWlwMjJZYWs4U1hlSjJT?=
 =?utf-8?B?U3JDL3AxaTRaNjhyaXVIbEVaM0trOFl4RXNuNzZHUERFOG04NTFqYW52dURP?=
 =?utf-8?B?UnNBOUJEajN6UFpoakdRS1lnNHI2QjNTQTJmR2tKQjFIMDhoZDN2RkQ2Vmhy?=
 =?utf-8?B?RWhzYVExb2xYM2xRVmJ5MjZoZnNWRHEyT2NvT01WRmhlcFBCZDMwNTFpUzFE?=
 =?utf-8?B?a3NMR1IrQjRuQWhOU2g0SnlWbXRUZ3dkUW9JaS9nSm45VnVLL1htKy80cWRu?=
 =?utf-8?B?bFE1amVmcS9aYXc1UXR6NWhlV2Y3ZVQ2YUtGa1JoUm9hZ2xxREpCbG5hNlI2?=
 =?utf-8?B?cjR5bno3KzVzM3FXSCtJd2d6WHc4di9yVlJQd2xTYXZMQlFHZ3ByS1d1RmNi?=
 =?utf-8?B?dklhWjBYRDBpSnBVeW1lczJKNXFHQVp0aHZlZkVKa2h2QlM2VG9NZk13dGEx?=
 =?utf-8?B?b0dJRGl0N2hkZVpyNk96b0lBS1pkUGpESTJoQVNvN3hNWVRqTlhKNENuZTZZ?=
 =?utf-8?B?SEh4amM3T3pRLzRmMW9VMzM2QStUUmxQODhCcjRCaVlRT01QMm8wNzhnUEpS?=
 =?utf-8?B?eEs5NE0wZTE3MlIwMkZtUE5SbVlYaHVCdWNlWEVSOTQrNUdpeEJTb2pxT0xI?=
 =?utf-8?B?S3UzOXhYRDEraHN0UjM4eFJqeEE4YXFydW9aSWtZa08vaFBza3ZIWXk2UXRP?=
 =?utf-8?B?OEtMN3E1VnZhaXo5OVJPeU5vMVZ4R2crYjc3QVA1dnF5aFk3aDJFTCtRbXBS?=
 =?utf-8?B?M2NzbmpsZ3dyMUxtWnh5aDRLTlQ1Zzd3QUFjbVkzT0ZMSnFzcVk0U3JTRU96?=
 =?utf-8?B?SzQrbWhDL0hHTTRFRlRSV05PNnYyYTYxSkpNSnhDdFUxeEZ1bnBsc25uQ0ht?=
 =?utf-8?B?RlpGSytNdXliTUZrZlJLa0Z4N1c2d0E4UHVZZm1TcTJwTVI0RGpFYnZUaWJM?=
 =?utf-8?B?MGc5WHV5Tk52d3B5ZG1JUFV4TWlQaVNhOEZRWC90cXRQMHczMVIwOW1BdHhk?=
 =?utf-8?B?b210bVROYVR6ZkpkTDRSUGJNRUxQN2syYlNna1Q3UEFSTjNHL0YzU1BMUW5v?=
 =?utf-8?B?TFB0WDdVNDRjWmtYRFRsMTdmZXgvNGpFTVBIYUVNNmRhZTlsWHk5N2FrMFNO?=
 =?utf-8?B?cmgwWGlQWlNxbnJrQzN3S2tQZmxIT29hTmhIaTluQmdxREp3SjAwN2M0ZkM1?=
 =?utf-8?B?NjhTd2RKUWpVWFh3OGVhWXBtT09QZ2ViU2xqOE5mTk5PQ09sMEJZcm4zZVhu?=
 =?utf-8?B?U0NldFN0eHc5Z0tEZU5BQnVyekw3YlcwYm41OXhZYitSMjJQeDJNeGZEVVNh?=
 =?utf-8?B?eTZ0a2ZtNjROeVE4ellNdUtzQUxRN1JYSFdyRVA0OEh6NlRpOFhFUTZZUHhE?=
 =?utf-8?B?UmwvQ3NwUG12bmZIMVNSbjhBZSsxUHROcnkyUjg0SFpjblAwZnFLaE1SUVQv?=
 =?utf-8?B?UytHMHRNTDVLSEtvNWhpeWxuU2xFSW03U2hCNEZhVjFwQXVCejZZK1JYWGtU?=
 =?utf-8?B?T0Z6K0ZoVWgxaEM1eU1USFlnTTJnK3dwRDdqM3JQRWVhTWZibHVGbDljcmNZ?=
 =?utf-8?B?R3B5QS84V3NKK3lwb29aTlMzNWZNUWNhcXJYMzROZlMxT1BEdGhwV1BuclZW?=
 =?utf-8?B?b2Zxcnd3QTRBZ3VOdTg0UXlWYXlrQ2ZPanR5eTBTemNkWjJEN05oMzFjTWpj?=
 =?utf-8?B?NnVlVXI5aldqQ3VYc200bzFmdnFPUVkzVnQ4eGdzdSt5bUdrWXNReFRTR0F0?=
 =?utf-8?B?VXhsZDdZMVlINy9ZNjFzQ1B4bWNEL1VvU1NnYjVKQVl1V1R4NHcweWxvc0Y5?=
 =?utf-8?B?cGtmUFVnbDJZOW5uYzgzS25sbVZrVFd5RmRIbUpwaHBlV29uaXA3WHdkYjgy?=
 =?utf-8?Q?4R5jBil2Q7z//oXFV2JgxaHYHMxCSbeynKwgcWCcWs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 252524e8-bcfe-4228-f118-08d9faf0bb11
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2022 19:30:08.9902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3c5AUQQf536ENxDMFOgOitfP1yRWSLg5ja5YOI370JtEtGhKIInUTeFVGPSzVqKmKUarNfTQQj9fTSuBVUyOyw1tGufqX5RQNeCakLwDEEQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2211
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?p_work_for_next_GuC_release_=28rev3=29?=
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

--------------wVxqAAs0TuS618Nagoheuw6j
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2/24/2022 20:43, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Prep work for next GuC release (rev3)
> *URL:* 	https://patchwork.freedesktop.org/series/99805/
> *State:* 	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11285 -> Patchwork_22404
>
>
>     Summary
>
> *SUCCESS*
>
> No regressions found.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/index.html
>
>
>     Participating hosts (39 -> 41)
>
> Additional (3): fi-kbl-soraka fi-cml-u2 fi-pnv-d510
> Missing (1): fi-bdw-samus
>
Not a GuC platform.

>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_22404:
>
>
>       IGT changes
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * igt@i915_selftest@live@workarounds:
>       o {bat-adlp-6}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/bat-adlp-6/igt@i915_selftest@live@workarounds.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/bat-adlp-6/igt@i915_selftest@live@workarounds.html>
>
This issue is being seen in other CI runs and is not related to this 
patch set (https://gitlab.freedesktop.org/drm/intel/-/issues/5068).

John.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_22404 that come from known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@amdgpu/amd_basic@memory-alloc:
>
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@amdgpu/amd_basic@memory-alloc.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +17
>         similar issues
>  *
>
>     igt@gem_exec_fence@basic-busy@bcs0:
>
>      o
>
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +8
>         similar issues
>
>      o
>
>         fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html>
>         (i915#1208
>         <https://gitlab.freedesktop.org/drm/intel/issues/1208>) +1
>         similar issue
>
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>      o
>
>         fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>
>      o
>
>         fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>
>      o
>
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@parallel-random-engines:
>
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@gem_lmem_swapping@parallel-random-engines.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@verify-random:
>
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@i915_selftest@live:
>
>       o fi-skl-6600u: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@i915_selftest@live.html>
>         (i915#4547 <https://gitlab.freedesktop.org/drm/intel/issues/4547>)
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o fi-bsw-nick: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#541 <https://gitlab.freedesktop.org/drm/intel/issues/541>)
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886
>         <https://gitlab.freedesktop.org/drm/intel/issues/1886> /
>         i915#2291 <https://gitlab.freedesktop.org/drm/intel/issues/2291>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o fi-snb-2600: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921 <https://gitlab.freedesktop.org/drm/intel/issues/3921>)
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_chamelium@dp-hpd-fast:
>
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_chamelium@vga-edid-read:
>
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +3
>         similar issues
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>  *
>
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>
>      o
>
>         fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>
>      o
>
>         fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>
>      o
>
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>
>  *
>
>     igt@prime_vgem@basic-userptr:
>
>      o
>
>         fi-pnv-d510: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-pnv-d510/igt@prime_vgem@basic-userptr.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +57
>         similar issues
>
>      o
>
>         fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@prime_vgem@basic-userptr.html>
>         (i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>
>
>         Possible fixes
>
>   * igt@kms_busy@basic@modeset:
>       o {bat-adlp-6}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/bat-adlp-6/igt@kms_busy@basic@modeset.html>
>         (i915#3576
>         <https://gitlab.freedesktop.org/drm/intel/issues/3576>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/bat-adlp-6/igt@kms_busy@basic@modeset.html>
>
>
>         Warnings
>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o bat-dg1-6: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/bat-dg1-6/igt@i915_selftest@live@hangcheck.html>
>         (i915#4494
>         <https://gitlab.freedesktop.org/drm/intel/issues/4494> /
>         i915#4957
>         <https://gitlab.freedesktop.org/drm/intel/issues/4957>) ->
>         DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/bat-dg1-6/igt@i915_selftest@live@hangcheck.html>
>         (i915#4957 <https://gitlab.freedesktop.org/drm/intel/issues/4957>)
>  *
>
>     igt@runner@aborted:
>
>       o fi-skl-6600u: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/fi-skl-6600u/igt@runner@aborted.html>
>         (i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@runner@aborted.html>
>         (i915#1436
>         <https://gitlab.freedesktop.org/drm/intel/issues/1436> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11285 -> Patchwork_22404
>
> CI-20190529: 20190529
> CI_DRM_11285: 937927c7022766ecf991e0071ae055412fb3805f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6357: 6546304ecf053b9c5ec278ee3c210d2c6d50a3a6 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_22404: 37c28be29e05b5e657ef7af27ad66663572b865c @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
> == Linux commits ==
>
> 37c28be29e05 drm/i915/guc: Fix potential invalid pointer dereferences 
> when decoding G2Hs
> 4b839cd8ff4b drm/i915/guc: Drop obsolete H2G definitions
> 2e4825998d7d drm/i915/guc: Rename desc_idx to ctx_id
> ca0a6df84767 drm/i915/guc: Move lrc desc setup to where it is needed
> ca382658ad6f drm/i915/guc: Split guc_lrc_desc_pin apart
> e097ea51e51d drm/i915/guc: Better name for context id limit
> db962e75d633 drm/i915/guc: Add an explicit 'submission_initialized' flag
> efef2220446e drm/i915/guc: Do not conflate lrc_desc with GuC id for 
> registration
>

--------------wVxqAAs0TuS618Nagoheuw6j
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 2/24/2022 20:43, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:164576421291.6271.13654738824286534554@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Prep work for next GuC release (rev3)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/99805/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/99805/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>success</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11285 -&gt; Patchwork_22404</h1>
      <h2>Summary</h2>
      <p><strong>SUCCESS</strong></p>
      <p>No regressions found.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/index.html</a></p>
      <h2>Participating hosts (39 -&gt; 41)</h2>
      <p>Additional (3): fi-kbl-soraka fi-cml-u2 fi-pnv-d510 <br>
        Missing (1): fi-bdw-samus </p>
    </blockquote>
    Not a GuC platform.<br>
    <br>
    <blockquote type="cite" cite="mid:164576421291.6271.13654738824286534554@emeril.freedesktop.org">
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_22404:</p>
      <h3>IGT changes</h3>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>igt@i915_selftest@live@workarounds:
          <ul>
            <li>{bat-adlp-6}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/bat-adlp-6/igt@i915_selftest@live@workarounds.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/bat-adlp-6/igt@i915_selftest@live@workarounds.html" moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    This issue is being seen in other CI runs and is not related to this
    patch set (<a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/5068">https://gitlab.freedesktop.org/drm/intel/-/issues/5068</a>).<br>
    <br>
    John.<br>
    <br>
    <blockquote type="cite" cite="mid:164576421291.6271.13654738824286534554@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_22404 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@amdgpu/amd_basic@memory-alloc:</p>
          <ul>
            <li>fi-cml-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@amdgpu/amd_basic@memory-alloc.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315" moz-do-not-send="true">fdo#109315</a>) +17 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fence@basic-busy@bcs0:</p>
          <ul>
            <li>
              <p>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +8 similar
                issues</p>
            </li>
            <li>
              <p>fi-cml-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1208" moz-do-not-send="true">i915#1208</a>) +1 similar issue</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>
              <p>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)</p>
            </li>
            <li>
              <p>fi-cml-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)</p>
            </li>
            <li>
              <p>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-engines:</p>
          <ul>
            <li>fi-cml-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@gem_lmem_swapping@parallel-random-engines.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-random:</p>
          <ul>
            <li>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live:</p>
          <ul>
            <li>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@i915_selftest@live.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547" moz-do-not-send="true">i915#4547</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>fi-bsw-nick: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541" moz-do-not-send="true">i915#541</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886" moz-do-not-send="true">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291" moz-do-not-send="true">i915#2291</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>fi-snb-2600: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/fi-snb-2600/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-snb-2600/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921" moz-do-not-send="true">i915#3921</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@common-hpd-after-suspend:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-hpd-fast:</p>
          <ul>
            <li>fi-cml-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284" moz-do-not-send="true">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@vga-edid-read:</p>
          <ul>
            <li>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
          <ul>
            <li>fi-cml-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278" moz-do-not-send="true">fdo#109278</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
          <ul>
            <li>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>fi-cml-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@kms_force_connector_basic@force-load-detect.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285" moz-do-not-send="true">fdo#109285</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
          <ul>
            <li>
              <p>fi-cml-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278" moz-do-not-send="true">fdo#109278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533" moz-do-not-send="true">i915#533</a>)</p>
            </li>
            <li>
              <p>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533" moz-do-not-send="true">i915#533</a>)</p>
            </li>
            <li>
              <p>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533" moz-do-not-send="true">i915#533</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-userptr:</p>
          <ul>
            <li>
              <p>fi-pnv-d510: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-pnv-d510/igt@prime_vgem@basic-userptr.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +57 similar
                issues</p>
            </li>
            <li>
              <p>fi-cml-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-cml-u2/igt@prime_vgem@basic-userptr.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301" moz-do-not-send="true">i915#3301</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@kms_busy@basic@modeset:
          <ul>
            <li>{bat-adlp-6}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/bat-adlp-6/igt@kms_busy@basic@modeset.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576" moz-do-not-send="true">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/bat-adlp-6/igt@kms_busy@basic@modeset.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>bat-dg1-6: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/bat-dg1-6/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494" moz-do-not-send="true">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957" moz-do-not-send="true">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/bat-dg1-6/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957" moz-do-not-send="true">i915#4957</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>fi-skl-6600u: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11285/fi-skl-6600u/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22404/fi-skl-6600u/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436" moz-do-not-send="true">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11285 -&gt; Patchwork_22404</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11285: 937927c7022766ecf991e0071ae055412fb3805f @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_6357: 6546304ecf053b9c5ec278ee3c210d2c6d50a3a6 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_22404: 37c28be29e05b5e657ef7af27ad66663572b865c @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a></p>
      <p>== Linux commits ==</p>
      <p>37c28be29e05 drm/i915/guc: Fix potential invalid pointer
        dereferences when decoding G2Hs<br>
        4b839cd8ff4b drm/i915/guc: Drop obsolete H2G definitions<br>
        2e4825998d7d drm/i915/guc: Rename desc_idx to ctx_id<br>
        ca0a6df84767 drm/i915/guc: Move lrc desc setup to where it is
        needed<br>
        ca382658ad6f drm/i915/guc: Split guc_lrc_desc_pin apart<br>
        e097ea51e51d drm/i915/guc: Better name for context id limit<br>
        db962e75d633 drm/i915/guc: Add an explicit
        'submission_initialized' flag<br>
        efef2220446e drm/i915/guc: Do not conflate lrc_desc with GuC id
        for registration</p>
    </blockquote>
    <br>
  </body>
</html>

--------------wVxqAAs0TuS618Nagoheuw6j--
