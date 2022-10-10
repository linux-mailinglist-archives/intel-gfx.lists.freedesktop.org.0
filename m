Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF41E5FA464
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 21:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F9810E2FF;
	Mon, 10 Oct 2022 19:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B891010E2FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 19:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665431780; x=1696967780;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=v2T2XETDnQO/iyWOFKvqW7sg3gZ3vVr6Sepurd6B1rA=;
 b=QbH3PY0Zcnjye78H0upeww/6OCJ5uS4MhmtbQN44A/+vAo3aTkOH1kep
 //bCKS2G1GuZ7XmMzTGGWUYHae7MwZZz7h0MIWK0ON/FN2NDal4bEz6Ky
 2aFg9Dt1S/Ewn8cjIdNE47hh5CCAYM24tFOL2YeGcetrEyDPMP65/OP7Q
 bJTkmxA01+2x/cXePXgMEXzw6GxTO/FBo0/5MzUi5MWwSgdXcEwtfguLK
 rjK2LxknZQJsJPmvGex/fIWqu4mJOd2E7dxJ5rXp3DxFucNq5U9i2p9Jb
 ifeFP7VZy9xhTe/2ZenDUJ11AWaBh6HdWSl7L9dJDhir/8q65yob2wdwi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="366311570"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
 d="scan'208,217";a="366311570"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 12:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="626092817"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
 d="scan'208,217";a="626092817"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 10 Oct 2022 12:45:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 12:45:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 12:45:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 12:45:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 12:45:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O78PvMXOG0on/VJ61OYoCl46oS2rqzzpdXH1QYmFSgFCUkexn4aq1bLPHB7/c2C6VluuXodKWWOeOB8zT9UW4rqyLcPAHoDYRqFQ7lP42SGRA15O1FvesAcQauvgyQQvCSCNYLaV9573bCG6l6PBRbOsLde8TKXaht7MAIjt5oMmUUvZ3M3F7jEQm4BhA/C5Z1XtQMdpeHhlkrx4RAQVtZyl66LHuN5zRTI+L1LlR75rdTTl20Rs5RchcSIsgk0H2BjvY/9COAHvsSvbgBhuFTCvJFmOldANLhVoxv86Jnfrywk9/m+Udc27z9hTwlVQHMyvIVx3U3xDKZ8DWgjbZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u1teg8p5GZ2q2mXgbAOWXRfdbzmTaXG3dkhqf5zJUWo=;
 b=f1bqWjdfkDEdrqlwTIZGP5t067feAPuAkjmN924HgZTrEBDCkrjobcnY+87WI+yTIuAHAr7r18Io9sTXp7+8MyjrQeH1MQDptz9FkPNqx1zagb9hV/X2Ay1PrXZ+HuJsibZmOjiZ8J8u2MjMjj3DVyXpxrHQX3vtm9y1cZYLjOrKMeG6P07hEhDEES54NbhjQTymSbv0FBHgF23nOCjCrDChJC/55+Bm89+YZ7RaZtpWkxE5tkg7sqvB3+pNgo8TVaRqKDIEtORI+LCGmmCZ0e7sX4LQWXLYS2xrw5HwkwPsk8U4IGYwNSmMvHlVQE5I2330uCkzR8FpzHA5yijJtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH0PR11MB4837.namprd11.prod.outlook.com (2603:10b6:510:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 10 Oct
 2022 19:45:00 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5709.015; Mon, 10 Oct 2022
 19:45:00 +0000
Content-Type: multipart/alternative;
 boundary="------------UHpeFW6MuckaXMT00xGKZFQr"
Message-ID: <5682621a-d507-39f2-58e1-5a646d31adc9@intel.com>
Date: Mon, 10 Oct 2022 12:44:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
References: <20221006213813.1563435-1-John.C.Harrison@Intel.com>
 <166509481464.5838.16580429148593384568@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <166509481464.5838.16580429148593384568@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0385.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::30) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH0PR11MB4837:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e86fa6d-c6ee-497b-f2de-08daaaf7eb1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1nI4Kjb6Zdn5XvaoNkpxAOwMd5eNT/lW6HCoG3TKX2Lbk7B52QQoD7zcMxL2zjQmMpj0QVVB0YOQSFj9TZ54bPwblnpbr6pg51Pi7zRjVHXSXKP18aRDaeNNwg2qW1VUe0r82eskTjoq0rYLHujixId/2kq6Ez9prIMSfXMMfL+jL4/RMjcwgzt7/P00cfNRXUPfuKpfYNKHnOU7rn2SpSPkSqinElM+qlif1VXdSpJptbaqH879si9I/hkO9UcrzSi9lWfBNi2hBo34NtbyjaUNmdlDtNNcgaacr/FLWAhnobPCTdFfHobRIm26T1OfvaF57EU+QC/EEpF95K72m5AB3LdzBxUwcdfPN+vjl72cvTocbaPszeFe3iowDjRQVXZq1aXO9GpWpywGHMX4Cg+LoNu3gip+y1pGw+t/V56hVETzjciFbkDw8Rm/SsQXlmyZPkjXdHdwXYTv5Qf6acCyOKV9we7uvbZ/dqhgT8fH581nDjJow0ce5eKf0I2xwTdpLEgMyH6KOpKEva6kve2XzMLGuZrYZKH8SeDcxcx28COqjhMJ2GNXDyHa4WJjzpwoJhHHToqF4CStuV3nD35v1CfH+IqnRxUofj1yaY8BT3WAdb22EDYx9BATvd1VrcDwg0x15wTPncufrTgfgJcj5fAmooY0it4evP5h+ARGGH6ajx3+tg+zuIkndsQTsVhNetuSPRcGhOWKJQ5dWkUdC1kGvjRtrvL9skEbeU386ArnFL5Ka+jylPsCwCYFwblcl5IrUJBWbM3BUA2NXE6UbxlYvqmzhIXCG6v4qxSRk7H3xM0vBeG43BdwTwtJU3C+OCR4TXB+AivJ3N1MwHQuGRxiNW4p/kNyApHCDKk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(376002)(366004)(136003)(346002)(451199015)(2906002)(186003)(2616005)(166002)(82960400001)(83380400001)(36756003)(31696002)(86362001)(38100700002)(478600001)(110136005)(33964004)(21615005)(8936002)(31686004)(316002)(6512007)(5660300002)(26005)(30864003)(53546011)(6486002)(41300700001)(966005)(66946007)(66556008)(66476007)(40265005)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b290U3FDcDhVaUg5ZjEwR2pBNEJGUGJ6TmJkM3BPMGpwSmhvZWxndnlmdndP?=
 =?utf-8?B?Nzk3N1ZNaG5PeWNST3A5dzFaMkZkU3VrRm9aeXJBRlM1d1ZVTWFxdG0xRS8x?=
 =?utf-8?B?QXZYaXBoREpFMTZNYUVuMk5DU2NlWnlLTXNlSyt4V3dwZG1mUGl0N2FMK3Zn?=
 =?utf-8?B?TWp6c3lWU2ZMUnpreThRemh1VDkraGlvZnBWbjUzWThHY2xmd0tyR3FvNVBo?=
 =?utf-8?B?OWZ5QVI3Q3FEYmc2clM1TTdTN2dmN3VGMkRJQWVqZWRTRGRGaWVNaDFELzhU?=
 =?utf-8?B?S3pHVFhjcWJDNTlkcDBhQUxZdEovWU5vK2N4NWhSV3FQNkUvTngrRGFGR1pl?=
 =?utf-8?B?TmxBY1B5SUhUaTFCTHVWUTViWDIwa2pwdGNlTnFaVVA5TmlrVjRPNDBTNk1T?=
 =?utf-8?B?QmRseUJuRTQ2NlV1STExLzZqaG1adjV3ZDBZZGFUZ2hxbU5QeWdzb3lPNC9w?=
 =?utf-8?B?SjRxck55Um9VYjR4eTVMTHRBTUhkN01kMzg2OG5XbndQdVdwM2d1djJMc0dh?=
 =?utf-8?B?MXdhUVhzTStyazdYM2NwelhkTTFmWWdXSjVPdU10bWtHUkMyQ0dac2lDeGp5?=
 =?utf-8?B?dm5HVnZtSDRUUjF2S1g5eHBQUjE0RlJrcGZoN3ZHU3VvM3E0T2llVXp0b0J2?=
 =?utf-8?B?dnpFKzRQa3Y2TVhwdlFzbkJOU3U1QlVQMStacG16YUtvOEJ1UFBsSGU0a01r?=
 =?utf-8?B?NnRENDhRbnpZYmY5a0tiTmw2N1NvOWJuTjNESFp6TWtxTEh2YkhyTjZGY3F0?=
 =?utf-8?B?K3hlUzk2K1N4eUM3R0crRUZVQlZKbTExd3dib0creEpjTUJKRmhqVHZBQUhT?=
 =?utf-8?B?MlJXUmM3b0NpR2k3MzFabFU0Z3FoUUpJT3BPRU5hby92cUlQOFozenB2TG0x?=
 =?utf-8?B?ZUlpb3RHb0tneit6Qm00YVhPQXNqU25YblVNT0l6M3UyK1RUbjRKZHd4a1ox?=
 =?utf-8?B?NzQ0RG95SHZnRmFwc3Ntdk9jLzhZZ0lCVnZlWS92Sis4NHM3M081MHQ5NFVI?=
 =?utf-8?B?Zk5sd05DQVgwQStZSG9EbTU1S1lTTkFqazBMQUtMdStQZ1lvNWtFdGRNQzNo?=
 =?utf-8?B?dk1QNFRyazh1eUZoWVFac1J5YVVRczd2L1VVZFd0eVg3aThtNVJLbVVwVUE2?=
 =?utf-8?B?ZHB6Y2R6Q0FySDZEbnBLdzE5eUZTU1Rvdzdxd09PZlg1Y1F5MU13ZHZlNkZS?=
 =?utf-8?B?OXRRMXBHSThPRmpVd2RKZFFwVGpQUUsxMFdSRGxNR1NzUTBxTVVHQjJWbDBD?=
 =?utf-8?B?ZUwxM1p1NGdtbUpTbzFENHNFSmFyWTZFYnhNQW9kb0lLZnZiMHAvRFE3MHJL?=
 =?utf-8?B?RUpmYjhsV2tWVng3dEhmUFluV2xXWFdpNjJKNUVqdEtvUWtwNWlDaVZoeDJ3?=
 =?utf-8?B?cHQwU1BaczY4QjJkSWcvS2tGUVIwK2M2R09oamthRWw1K2FpYmNIM3cyZC85?=
 =?utf-8?B?Rk04UzVZTTlwTW80VnA1ZXE0M0pZQVFET2Jua3BzcUo5TERoUERSYm1palVr?=
 =?utf-8?B?WTBVYjVNUjUxUmhLc0xibTZFdjViSHBhRjJVdVpNK0ZVMng2QU9ibnlWaUVD?=
 =?utf-8?B?am10TU1NbTdNYkd4STJBR3c4bW1pUmltZllmVnRZV2FSUTJWdUo4QTBobGN3?=
 =?utf-8?B?Y3dqMC92RHRKV05ySjJQL01Hd2M3WXhUVGpHSEE4R3drWlFIVjJMalozK3dl?=
 =?utf-8?B?U3dJY01iL292emgxaFRTcVVybFB4WEdUKy9UczBvVEovMnJGWjdkY2c3RnYr?=
 =?utf-8?B?azJsZ1kwMUhiMGZkcjd2bXZIZmRjNHFQeTcvSWg3OFpTK1E0L0ErdmdvTStU?=
 =?utf-8?B?emVXWTdnYnpUSGhjaDBKUHRSRTQwQllKM2lpenFReWdGbnZyWEVtcmdpNGpL?=
 =?utf-8?B?MkEwenVESVpJeGxTNmVackVNTUdDbEhwOTlLSG5BTWxGTEhzYm1IZzVXb1Ja?=
 =?utf-8?B?alhnanVjWFhwVjl5NlI4T3NaTmtFZHZDeGxvY0xxZ3JWVWExbngzb2N4cnN4?=
 =?utf-8?B?eVN0UGVoK21OZzR1T1NrbTNLS3YrTHRRY21QaGZkZ1NBNmtXQjZaeWVjL1ZM?=
 =?utf-8?B?RVFtOWRkSXNVa1BpSFMwWFRWRDVPdDhCNTZ0ZlZ5T1d5WlVUVjRVak9EV211?=
 =?utf-8?B?KzNTYmlSZFdpajBhVVFsTTIwNlVYTmkxOC8vVVI3WHZUWGtpZ0dqeDF1UGpL?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e86fa6d-c6ee-497b-f2de-08daaaf7eb1f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2022 19:45:00.6448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MlzO2KVAwd19BhaOkkM9MCYWRuVlG1wFo8eM8RST4lunItO1ZYUX/LcBr0K7gMkRcWbyBrxSL0h5+XocBOAb/cztHzz0jYhyzxxRUWIDkdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4837
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW1w?=
 =?utf-8?q?rove_anti-pre-emption_w/a_for_compute_workloads_=28rev8=29?=
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

--------------UHpeFW6MuckaXMT00xGKZFQr
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/6/2022 15:20, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Improve anti-pre-emption w/a for compute workloads (rev8)
> *URL:* 	https://patchwork.freedesktop.org/series/100428/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12223 -> Patchwork_100428v8
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_100428v8 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_100428v8, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/index.html
>
>
>     Participating hosts (42 -> 40)
>
> Missing (2): fi-ctg-p8600 fi-hsw-4200u
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_100428v8:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_selftest@live@migrate:
>       o fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-apl-guc/igt@i915_selftest@live@migrate.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-apl-guc/igt@i915_selftest@live@migrate.html>
>
The logs seems to suggest the test just stopped (with the actual dmesg0 
link being corrupted at the end). Seems likely there was a kernel panic 
followed by reboot. Given that this patch set is only affecting hang 
detection and recovery and the migrate test is not supposed to hit any 
hangs, it seems very unlikely this failure is related. Certainly, all 
previous revisions of this patch set did not any problems with the 
live@migrate test.

John.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_100428v8 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_exec_suspend@basic-s3@smem:
>
>       o fi-rkl-11600: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html>
>         (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>)
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o fi-hsw-g3258: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         (i915#3303
>         <https://gitlab.freedesktop.org/drm/intel/issues/3303> /
>         i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>      o
>
>         fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>
>      o
>
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc.html>
>         (i915#4078 <https://gitlab.freedesktop.org/drm/intel/issues/4078>)
>  *
>
>     igt@runner@aborted:
>
>       o fi-hsw-g3258: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-hsw-g3258/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>
>         Possible fixes
>
>  *
>
>     igt@i915_pm_rpm@module-reload:
>
>       o {bat-rpls-2}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-2/igt@i915_pm_rpm@module-reload.html>
>         (i915#5537
>         <https://gitlab.freedesktop.org/drm/intel/issues/5537>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-rpls-2/igt@i915_pm_rpm@module-reload.html>
>  *
>
>     igt@i915_selftest@live@gt_engines:
>
>       o bat-dg1-5: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg1-5/igt@i915_selftest@live@gt_engines.html>
>         (i915#4418
>         <https://gitlab.freedesktop.org/drm/intel/issues/4418>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-dg1-5/igt@i915_selftest@live@gt_engines.html>
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o {bat-adln-1}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adln-1/igt@i915_selftest@live@gt_pm.html>
>         (i915#4258
>         <https://gitlab.freedesktop.org/drm/intel/issues/4258>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-adln-1/igt@i915_selftest@live@gt_pm.html>
>  *
>
>     igt@i915_selftest@live@requests:
>
>       o {bat-rpls-1}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-1/igt@i915_selftest@live@requests.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983> /
>         i915#6257
>         <https://gitlab.freedesktop.org/drm/intel/issues/6257>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-rpls-1/igt@i915_selftest@live@requests.html>
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>      o
>
>         fi-rkl-11600: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#5982
>         <https://gitlab.freedesktop.org/drm/intel/issues/5982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html>
>
>      o
>
>         {bat-rpls-2}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#6559
>         <https://gitlab.freedesktop.org/drm/intel/issues/6559>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12223 -> Patchwork_100428v8
>
> CI-20190529: 20190529
> CI_DRM_12223: c53a5e48e0405a63cda64682304cd8b391025be3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7002: 523844c74e7da6b39d856596c28a92f04172035f @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_100428v8: c53a5e48e0405a63cda64682304cd8b391025be3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> e774225914cc drm/i915: Improve long running compute w/a for GuC submission
> bfcef6af116f drm/i915: Make the heartbeat play nice with long 
> pre-emption timeouts
> 4141fa7b0427 drm/i915: Fix compute pre-emption w/a to apply to compute 
> engines
> eff9e2347441 drm/i915/guc: Limit scheduling properties to avoid overflow
>

--------------UHpeFW6MuckaXMT00xGKZFQr
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 10/6/2022 15:20, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:166509481464.5838.16580429148593384568@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Improve anti-pre-emption w/a for compute workloads
              (rev8)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/100428/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/100428/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12223 -&gt;
        Patchwork_100428v8</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_100428v8
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_100428v8, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/index.html</a></p>
      <h2>Participating hosts (42 -&gt; 40)</h2>
      <p>Missing (2): fi-ctg-p8600 fi-hsw-4200u </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_100428v8:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_selftest@live@migrate:
          <ul>
            <li>fi-apl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-apl-guc/igt@i915_selftest@live@migrate.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-apl-guc/igt@i915_selftest@live@migrate.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    The logs seems to suggest the test just stopped (with the actual
    dmesg0 link being corrupted at the end). Seems likely there was a
    kernel panic followed by reboot. Given that this patch set is only
    affecting hang detection and recovery and the migrate test is not
    supposed to hit any hangs, it seems very unlikely this failure is
    related. Certainly, all previous revisions of this patch set did not
    any problems with the live@migrate test.<br>
    <br>
    John.<br>
    <br>
    <blockquote type="cite" cite="mid:166509481464.5838.16580429148593384568@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_100428v8 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@smem:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375" moz-do-not-send="true">fdo#103375</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>fi-apl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334" moz-do-not-send="true">i915#5334</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>fi-hsw-g3258: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303" moz-do-not-send="true">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785" moz-do-not-send="true">i915#4785</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@common-hpd-after-suspend:</p>
          <ul>
            <li>
              <p>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>)</p>
            </li>
            <li>
              <p>bat-dg1-5: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078" moz-do-not-send="true">i915#4078</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>fi-hsw-g3258: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-hsw-g3258/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@i915_pm_rpm@module-reload:</p>
          <ul>
            <li>{bat-rpls-2}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-2/igt@i915_pm_rpm@module-reload.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5537" moz-do-not-send="true">i915#5537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-rpls-2/igt@i915_pm_rpm@module-reload.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_engines:</p>
          <ul>
            <li>bat-dg1-5: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg1-5/igt@i915_selftest@live@gt_engines.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418" moz-do-not-send="true">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-dg1-5/igt@i915_selftest@live@gt_engines.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>{bat-adln-1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adln-1/igt@i915_selftest@live@gt_pm.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258" moz-do-not-send="true">i915#4258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-adln-1/igt@i915_selftest@live@gt_pm.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@requests:</p>
          <ul>
            <li>{bat-rpls-1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-1/igt@i915_selftest@live@requests.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983" moz-do-not-send="true">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6257" moz-do-not-send="true">i915#6257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-rpls-1/igt@i915_selftest@live@requests.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>
              <p>fi-rkl-11600: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982" moz-do-not-send="true">i915#5982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>{bat-rpls-2}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559" moz-do-not-send="true">i915#6559</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12223 -&gt; Patchwork_100428v8</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12223: c53a5e48e0405a63cda64682304cd8b391025be3 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7002: 523844c74e7da6b39d856596c28a92f04172035f @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_100428v8: c53a5e48e0405a63cda64682304cd8b391025be3 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a></p>
      <h3>Linux commits</h3>
      <p>e774225914cc drm/i915: Improve long running compute w/a for GuC
        submission<br>
        bfcef6af116f drm/i915: Make the heartbeat play nice with long
        pre-emption timeouts<br>
        4141fa7b0427 drm/i915: Fix compute pre-emption w/a to apply to
        compute engines<br>
        eff9e2347441 drm/i915/guc: Limit scheduling properties to avoid
        overflow</p>
    </blockquote>
    <br>
  </body>
</html>

--------------UHpeFW6MuckaXMT00xGKZFQr--
