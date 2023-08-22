Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FA67848F6
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 20:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC98F10E3C2;
	Tue, 22 Aug 2023 18:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFDD810E3BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 18:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692727327; x=1724263327;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=8r+ZqcQVNeqSfuenRhvMFdckFde5KXIHjR2Z92/1fvs=;
 b=En9/7AMKho/vmpSyqztFpjbI0i9AgbcP5nWKO6zbb4detTrnWC9YAP84
 UC7fZdQh4V81ZN11bcOvG/HEMyIjfaDvW0TPKsQ7WKrv547qZKhLgi1bR
 USfQuAJWorRIBPeQwdcbetPA7CRAax6YKNeNedkDh15wAtt7V2cBbbHT4
 Weg4DtrnZnL3z3EUOxNZ+5kpwxPrtnCYxPDaR/UT78m7BJruA3pU+6uMH
 xGaRAjl3rZFn2zq6VXkWSai7PzE6CbkvVz6Xr6E3/RPwYD4mD8rf6jw1/
 un+crK4xNSDkdyVRh7hxVqrTIc+g1lp+7UiT8GsRqhHgDNIZRe4VLEgrX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="437889387"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; 
 d="scan'208,217";a="437889387"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 11:02:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="736322187"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; 
 d="scan'208,217";a="736322187"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 22 Aug 2023 11:02:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 11:02:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 22 Aug 2023 11:02:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 22 Aug 2023 11:02:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jaoovBackt0EUMtcSfWNsxR6Qhoa1dBQKqpJqSJGgEqfDEyZRnKZBlFM0sc/OQ4+eF7arrII0FrxN5sNV3khSQK9iwJaf0Vrz9KcdwIUp2dJQCLfACRgxZAzyrcvI80RNEf5/JvAhJBAD7CZ3OTZCZ2CMDWQXFGYum62s0q3unHCo+y52dWKMwVTE8OEZFn7dfx81Awu/urP7nOHPe8VkyU+lAt9vkIVv7NrCh0FgjF5Wum9mCjX/RSTWAfkL3bZgVHYt+ysFTFlvSKp5b2m8KkisHiWMRi6QyQ8tjPCeSgWXttRVdmyrzgdbTXl+TpSlbWr3J6c43zZe7qtE8N8ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oij8rQ6ml7doKoFn6Dsb998oAxeDLTBf/mJlY8cTxx0=;
 b=lqEE2DB1y1Jsk9v2DXCTOfPKRt6Gyj0XW9LH9zA+z5E9OWrBR8w+ASg6t5GLcXVGVXyVmH8Fd89pDEmzKTQPrSvyCM/lBHwM95ZkLa1D+pxnGDWb7MaKlqy1tD9R1G1bmjDyT10mEM463K2NqNrpKtg7Yd9Mn6NlnaVUTfS/RhxB7/FsiSte16QfpsVCpHlq+2uN97am2XIy62ZLZMtC34ugT7BLOJQRwf3Rad5jjI2iU5Vjz/BJW5w0FnrW/kVe+iEjLDY4q4QEFY1trP6AjnHYKE/XH8Uwns5vGRJFattZ0dp/ifrnqtdOvgTZwSgg9XumSr8tDNB09aiZRFpg3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA0PR11MB4527.namprd11.prod.outlook.com (2603:10b6:806:72::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 18:02:01 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::6bdd:6fe1:4045:c26f]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::6bdd:6fe1:4045:c26f%6]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 18:02:01 +0000
Content-Type: multipart/alternative;
 boundary="------------zw15aISZwuoRHnIHBKNTmISh"
Message-ID: <b052c46e-cdee-4ca5-81a7-168f3e7c87d9@intel.com>
Date: Tue, 22 Aug 2023 11:01:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20230816003957.3572654-1-John.C.Harrison@Intel.com>
 <169214975246.10286.10012517068170349119@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <169214975246.10286.10012517068170349119@emeril.freedesktop.org>
X-ClientProxiedBy: MW4PR03CA0148.namprd03.prod.outlook.com
 (2603:10b6:303:8c::33) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA0PR11MB4527:EE_
X-MS-Office365-Filtering-Correlation-Id: 93d911d2-4867-46d4-cd46-08dba339e2a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gRwVeyqnlRutqJAy+qq0yvQG/yJdyyx2y7c30eiIVhIioLbr/q2azr3AVtyaWE6BSRLfW1No1ouGTn+vVkBP8lQmJj4qYxD3b3uud1i09fYclgl55QUPMYvAh3/CKVV/nq9NJ9KcI3ONBFnP76Dzdyk8LgdMI4oGbTVEJzlZ0u8B6s3I7SDNPvw9epDlwiBBMghvDPSYu1pOEyTqOkfxwEFjfyDpKjc44RAnqKK/qh7FwhxgYP0FYvvdsttaQmB3ugN3olI78KeNZFHq50LxFbRDNUZA7lEmm0nXRRipXtJ02Ot62yVJ0W47quYsPJkQIprX2Ajd1LQG5GNOa9c38Uv4NpwI8iTVoC0lyTaMYgmYqYQw+4dY83eVT6uRWXGA/D0cSbSQ06YGfhWUOEcO03g5+9epMn591mx/Ib8B2y888hfdkb902GZU1bRdFm8CxZs2/dCu1wV2AQSrLw36v4HmDLn9S8j25x9RY+SSQS/B9a1zTBq5+PiFBJ5o9cnX1Y25C43EXOna6Qzp58Fa/3N1k0ZsTRiwwdsyIwU58DuH5GQ04SznLPoyLRhlAT9vDRv/3ASyKB9ShxHBCiGE+z2xv5TbsvM1KpYB3VbHPAFginTxDTolYxJgYXs/ZN9rNxxSImJbADacyoCaBhp2PggkYX7NTc+ZAam0Th8wflU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(6916009)(6512007)(66476007)(66946007)(316002)(66556008)(82960400001)(8936002)(2616005)(41300700001)(36756003)(478600001)(966005)(38100700002)(6506007)(166002)(53546011)(40265005)(6486002)(30864003)(83380400001)(2906002)(31686004)(86362001)(33964004)(31696002)(21615005)(5660300002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXluM3cwdElWTG11clNTQWlmSFczUlRtNG1IWnVtWEFxZTNiY2J2QlU1MC9D?=
 =?utf-8?B?Nlk0YkpZQUVjZ0NIQVFrdnhRUktZMm1nSFljNVFtM3BKWFZlZXF6bSs2eWdo?=
 =?utf-8?B?bHU2VXRDcS9KMkVINlc5d1VVZ1FISUkwM1Uva3VvQXljcHVHanRjTVdYNjFp?=
 =?utf-8?B?aFhXY2w2RGJ4K3JwWDE2TUVrc0M3ZWFISHR4Rnc0bTVxeWxNb2loWXBhaTUz?=
 =?utf-8?B?Q3c5NW1xbWh5WFBZYkZNdXhQZXg3NlRYYmsvbmZKM0NHamFxVVcwUzdiYUhV?=
 =?utf-8?B?N2V1K3hLZFJoVzZjNmV0VXBUMjZTQ3JkWkNXampKQmVHaUlkanVoZjRoQURW?=
 =?utf-8?B?Uy9ibCtKRkFQdEJJMzVlWklDdlZJNFFLbDlQZkNIL0p0Ny92Nzl1WEZvNmp5?=
 =?utf-8?B?MWpuc21ORnZ2WXZEVFRLWDhDR0lBcHp4Q1F1T0MvYSs0VDlhQ3Q5cW9VSDVo?=
 =?utf-8?B?bDZHeTgxZUJ1WFZPOG95Mm9tZ2RMR2F1MkdzVG9UNzZ4MWtiRzNJRXV3YmZw?=
 =?utf-8?B?TkNWd2F2ejgzckhmUEpyVEhLNFJKQ3hINzdZL3ppQkVtS1lYYnRmL2F4WjlR?=
 =?utf-8?B?MU1PR3RyY1V5ODIwdU9ndDBKaWhub2kra3BrL0J1UStiMnh4eVdFTU8xcUVw?=
 =?utf-8?B?Unlld3VsbzBNaFpENlRWelRmRUl1THhEcGdmVUYwckE0SXhPKzRtNFgvQTBT?=
 =?utf-8?B?dC8zLzRZTFcyYUwvclBOaHg3OGRQSXZmUGsweGQ0UGFIWCtSRjkwK0xyaHJa?=
 =?utf-8?B?QlRFRzY5amIyRnRJUnB4SU5IditqL3hiZ0E0RFVsWGN5dmtCbGwzNjM1OFBT?=
 =?utf-8?B?M1pWWW9TVVVoNktOYmpncUZOWkdDSFV6U3Bub0pYNWkxd2ZyUXhwbGx4dzgw?=
 =?utf-8?B?RGJHb05DNVl5YWhJYVpzUW5IWEw5Z0FGbXdYaGFyejFmbS9LZUxJRDNWL2Zy?=
 =?utf-8?B?WVB3b3BRNHVEQW1vdmFtRVFFYURtSHovOGwwSTZla3dDUnZrUk1jV2JrdFk0?=
 =?utf-8?B?VUNzL2ZqUXUvdk9ESWdiOXlJNHRjWVNHeFMvcnphVHc2SThwNStKMGdVVkxL?=
 =?utf-8?B?UVVDY0xFV29mMnFob1NVOUhYQXk0R2czU3VuTWZqUWI2R3dTaEhsR0ZDRmZH?=
 =?utf-8?B?UmpCRUtLNnU3VEl4ZlNLWVhkK1FoR2p2bGJDSlNiTkxqYS9hcmdKcDdRdTgy?=
 =?utf-8?B?NHgrM3J2cVhYV0hwOGxteU00ZU8xTlZRZUpYYm9EeS9FRndZNlJFLytHVXhS?=
 =?utf-8?B?ZzJxMjJ1MFlzTXhFTDBzWEFRL3c0R3lNQUhzY3lyZWZudzBZMGp0UmlEOGhl?=
 =?utf-8?B?RW5heWo5eVh5YllkSU5YY1lqOFgrNzlXR3NjUHpsMm5sYUN2NjUvN3A0Q1Nm?=
 =?utf-8?B?cmRiL3dQSTM0SGxMbFYyRFY2MHhLM0E2ZU1RU3ZST1pUZWJYOER1bUJ4SzRx?=
 =?utf-8?B?YWRnYkxURldOTGxuMk1FblJpUTBXcVA0aEVJb2JNQXl6a08vMXp2VS9RdU1v?=
 =?utf-8?B?RTdLMlp0OGhFemVybm80R1ZvdndZNE0wSTh2ODM3b09vOVBRSUZGYy9leWRu?=
 =?utf-8?B?OE9zZ0tVeFZnbWF5aE0rYy9ZcFNocFdSNEVPOEVkS1VDdTFNbUFlRUE1N3N5?=
 =?utf-8?B?WkJjRTNaOEFZZE1KRmxOaTFlNzZUTnBsdzFVMGpGNXp5bFZFczlQd2NMcGtT?=
 =?utf-8?B?NUVSVEUzZjBvMDJmZ2hDRkt0Q1dUYUlYQkUxb2RxdVI0R2NDOXhIK3NreXJG?=
 =?utf-8?B?aFlJYU1GeUpGeG1oZU5aTEg5bzFONnZGWW80VWFONnpFTUpwUXg0UDdKSFZy?=
 =?utf-8?B?Q1lDRE10MkxHYlZQc1FrdlZjeGRBcURMVkJKd3J1OEkvc05DQkNiYmdVcFFj?=
 =?utf-8?B?eGUwQTd1cGZldUlLUTdUVkFDUlA4SnFPUHBRNlYwblZCMW9VUy9YdTVqalRD?=
 =?utf-8?B?RFpkNkhzVkxGWnpvRWxHLzVRMXFMWTZxRXVna0l2MWQwVityWERqUjFDMlVI?=
 =?utf-8?B?TGJ0ZkVmaDkyVEhwdmJXMW4vU3d5Vk1qaDY3dTlEQ1dBaWRhUjk2ejhINTBw?=
 =?utf-8?B?ZnlXeTdFbDRvaDY2MlZRakJoSHJrOWRvTHZxVVNCZXdBdW52b2dKQW9IbHdO?=
 =?utf-8?B?ZnRubFQxZWNEWnp0Zm9GYXNKY0lRM3MzeDY3bmNVTlM1ektsc28yVDd3RHBJ?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93d911d2-4867-46d4-cd46-08dba339e2a6
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 18:02:01.5902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QHVg5V7oNr97Gg7joGVD0NYoByyZGcV0+XIQi6CwP/hTD/bLJieOKbWoOokN/gehOvwgEE0pMQnDwAJrnTwjTWwGRRMS9XWKvoK/QRJZLq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4527
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Force_a_reset_on_internal_GuC_error_=28rev2=29?=
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

--------------zw15aISZwuoRHnIHBKNTmISh
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/15/2023 18:35, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/guc: Force a reset on internal GuC error (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/118890/
> *State:* 	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13524 -> Patchwork_118890v2
>
>
>     Summary
>
> *WARNING*
>
> Minor unknown changes coming with Patchwork_118890v2 need to be verified
> manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_118890v2, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/index.html
>
>
>     Participating hosts (40 -> 39)
>
> Missing (1): fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_118890v2:
>
>
>       IGT changes
>
>
>         Warnings
>
>   * igt@i915_module_load@load:
>       o bat-adlp-11: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-adlp-11/igt@i915_module_load@load.html>
>         (i915#4423
>         <https://gitlab.freedesktop.org/drm/intel/issues/4423>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@i915_module_load@load.html>
>
Some kind of display PHY failure. Not related to a patch about the 
handling of internal GuC errors.

John.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_118890v2 that come from known 
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
>     igt@debugfs_test@basic-hwmon:
>
>       o bat-adlp-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@debugfs_test@basic-hwmon.html>
>         (i915#7456 <https://gitlab.freedesktop.org/drm/intel/issues/7456>)
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o bat-adlp-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@gem_tiled_pread_basic.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>  *
>
>     igt@i915_selftest@live@gt_mocs:
>
>       o bat-mtlp-8: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html>
>         (i915#7059 <https://gitlab.freedesktop.org/drm/intel/issues/7059>)
>  *
>
>     igt@i915_selftest@live@requests:
>
>       o bat-rpls-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-1/igt@i915_selftest@live@requests.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-rpls-1/igt@i915_selftest@live@requests.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983> /
>         i915#7911
>         <https://gitlab.freedesktop.org/drm/intel/issues/7911> /
>         i915#7920 <https://gitlab.freedesktop.org/drm/intel/issues/7920>)
>  *
>
>     igt@i915_selftest@live@slpc:
>
>       o bat-mtlp-8: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@i915_selftest@live@slpc.html>
>         (i915#6367 <https://gitlab.freedesktop.org/drm/intel/issues/6367>)
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#6645 <https://gitlab.freedesktop.org/drm/intel/issues/6645>)
>  *
>
>     igt@kms_chamelium_frames@hdmi-crc-fast:
>
>       o bat-adlp-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@kms_chamelium_frames@hdmi-crc-fast.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +7
>         similar issues
>  *
>
>     igt@kms_chamelium_hpd@common-hpd-after-suspend:
>
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html>
>         (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>
>       o bat-adlp-11: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html>
>         (i915#4423 <https://gitlab.freedesktop.org/drm/intel/issues/4423>)
>
>
>         Possible fixes
>
>   * igt@i915_selftest@live@slpc:
>       o bat-mtlp-6: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-6/igt@i915_selftest@live@slpc.html>
>         (i915#6367
>         <https://gitlab.freedesktop.org/drm/intel/issues/6367>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-6/igt@i915_selftest@live@slpc.html>
>
>
>         Warnings
>
>  *
>
>     igt@i915_selftest@live@requests:
>
>       o bat-mtlp-8: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@requests.html>
>         (i915#7982
>         <https://gitlab.freedesktop.org/drm/intel/issues/7982>) ->
>         DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@i915_selftest@live@requests.html>
>         (i915#8497 <https://gitlab.freedesktop.org/drm/intel/issues/8497>)
>  *
>
>     igt@i915_selftest@live@reset:
>
>       o bat-rpls-2: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-2/igt@i915_selftest@live@reset.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983> /
>         i915#7461
>         <https://gitlab.freedesktop.org/drm/intel/issues/7461> /
>         i915#7913
>         <https://gitlab.freedesktop.org/drm/intel/issues/7913> /
>         i915#8347
>         <https://gitlab.freedesktop.org/drm/intel/issues/8347>) ->
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-rpls-2/igt@i915_selftest@live@reset.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983> /
>         i915#7461
>         <https://gitlab.freedesktop.org/drm/intel/issues/7461> /
>         i915#7913
>         <https://gitlab.freedesktop.org/drm/intel/issues/7913> /
>         i915#7981
>         <https://gitlab.freedesktop.org/drm/intel/issues/7981> /
>         i915#8347 <https://gitlab.freedesktop.org/drm/intel/issues/8347>)
>  *
>
>     igt@kms_psr@primary_page_flip:
>
>       o bat-rplp-1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rplp-1/igt@kms_psr@primary_page_flip.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) ->
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-rplp-1/igt@kms_psr@primary_page_flip.html>
>         (i915#8442
>         <https://gitlab.freedesktop.org/drm/intel/issues/8442> /
>         i915#8668
>         <https://gitlab.freedesktop.org/drm/intel/issues/8668> /
>         i915#8860 <https://gitlab.freedesktop.org/drm/intel/issues/8860>)
>
>
>     Build changes
>
>   * Linux: CI_DRM_13524 -> Patchwork_118890v2
>
> CI-20190529: 20190529
> CI_DRM_13524: f69ef04cfdd4b810e790bef365001e58e2d1037f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_118890v2: f69ef04cfdd4b810e790bef365001e58e2d1037f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 5bc0c4defb7a drm/i915/guc: Force a reset on internal GuC error
>

--------------zw15aISZwuoRHnIHBKNTmISh
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 8/15/2023 18:35, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:169214975246.10286.10012517068170=
349119@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/guc: Force a reset on internal GuC error (rev2)</t=
d>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/118890/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/118890/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>success</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_118890v2/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13524 -&gt;
        Patchwork_118890v2</h1>
      <h2>Summary</h2>
      <p><strong>WARNING</strong></p>
      <p>Minor unknown changes coming with Patchwork_118890v2 need to be
        verified<br>
        manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_118890v2, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class=3D"moz-txt-link-freetext" href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/index.html">https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_118890v2/index.html</a></p>
      <h2>Participating hosts (40 -&gt; 39)</h2>
      <p>Missing (1): fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_118890v2:</p>
      <h3>IGT changes</h3>
      <h4>Warnings</h4>
      <ul>
        <li>igt@i915_module_load@load:
          <ul>
            <li>bat-adlp-11: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13524/bat-adlp-11/igt@i915_module_load@load.html" moz-do-not-s=
end=3D"true">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4423" moz-do-not-send=3D"true">i915#4423</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@i91=
5_module_load@load.html" moz-do-not-send=3D"true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Some kind of display PHY failure. Not related to a patch about the
    handling of internal GuC errors.<br>
    <br>
    John.<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:169214975246.10286.10012517068170=
349119@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_118890v2 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@basic-hwmon:</p>
          <ul>
            <li>bat-adlp-11: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@debugfs_test@basic-hw=
mon.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/7456" moz-do-not-send=3D"true">i915#7456</a>)<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>bat-adlp-11: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@gem_tiled_pread_basic=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3282" moz-do-not-send=3D"true">i915#3282</a>)</li=
>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_mocs:</p>
          <ul>
            <li>bat-mtlp-8: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html" moz-do-no=
t-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html" =
moz-do-not-send=3D"true">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7059" moz-do-not-send=3D"true">i915#7059</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@requests:</p>
          <ul>
            <li>bat-rpls-1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/bat-rpls-1/igt@i915_selftest@live@requests.html" moz-do-n=
ot-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_118890v2/bat-rpls-1/igt@i915_selftest@live@requests.html=
" moz-do-not-send=3D"true">ABORT</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4983" moz-do-not-send=3D"true">i915#4983</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7911" moz-do-not-send=
=3D"true">i915#7911</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7920" moz-do-not-send=3D"true">i915#7920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@slpc:</p>
          <ul>
            <li>bat-mtlp-8: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@i915_selftest@live@slpc=
.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6367" moz-do-not-send=3D"true">i915#6367</a=
>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>bat-mtlp-8: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@i915_suspend@basic-s3-w=
ithout-i915.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/6645" moz-do-not-send=3D"true">i915#66=
45</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
          <ul>
            <li>bat-adlp-11: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@kms_chamelium_frames@=
hdmi-crc-fast.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/7828" moz-do-not-send=3D"true">i915#=
7828</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
          <ul>
            <li>bat-mtlp-8: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@kms_chamelium_hpd@commo=
n-hpd-after-suspend.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/7828" moz-do-not-send=3D"true"=
>i915#7828</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p=
>
          <ul>
            <li>bat-adlp-11: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_118890v2/bat-adlp-11/igt@kms_cursor_legacy@bas=
ic-busy-flip-before-cursor-atomic.html" moz-do-not-send=3D"true">ABORT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423" moz-do-no=
t-send=3D"true">i915#4423</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@i915_selftest@live@slpc:
          <ul>
            <li>bat-mtlp-6: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/bat-mtlp-6/igt@i915_selftest@live@slpc.html" moz-do-not-s=
end=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6367" moz-do-not-send=3D"true">i915#6367</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-6/igt=
@i915_selftest@live@slpc.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@requests:</p>
          <ul>
            <li>bat-mtlp-8: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@requests.html" moz-do-n=
ot-send=3D"true">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7982" moz-do-not-send=3D"true">i915#7982</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-mtlp-8/igt@=
i915_selftest@live@requests.html" moz-do-not-send=3D"true">DMESG-FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8497" moz-do-not=
-send=3D"true">i915#8497</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@reset:</p>
          <ul>
            <li>bat-rpls-2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/bat-rpls-2/igt@i915_selftest@live@reset.html" moz-do-not-=
send=3D"true">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4983" moz-do-not-send=3D"true">i915#4983</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7461" moz-do-not-send=3D"true">i915=
#7461</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7913=
" moz-do-not-send=3D"true">i915#7913</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8347" moz-do-not-send=3D"true">i915#8347</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/=
bat-rpls-2/igt@i915_selftest@live@reset.html" moz-do-not-send=3D"true">ABOR=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4983" moz=
-do-not-send=3D"true">i915#4983</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7461" moz-do-not-send=3D"true">i915#7461</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7913" moz-do-not-send=
=3D"true">i915#7913</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7981" moz-do-not-send=3D"true">i915#7981</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/8347" moz-do-not-send=3D"true">i91=
5#8347</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@primary_page_flip:</p>
          <ul>
            <li>bat-rplp-1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/bat-rplp-1/igt@kms_psr@primary_page_flip.html" moz-do-not=
-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1072" moz-do-not-send=3D"true">i915#1072</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/bat-rplp-1/igt@kms=
_psr@primary_page_flip.html" moz-do-not-send=3D"true">ABORT</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8442" moz-do-not-send=3D"t=
rue">i915#8442</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8668" moz-do-not-send=3D"true">i915#8668</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/8860" moz-do-not-send=3D"true">i915#886=
0</a>)</li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13524 -&gt; Patchwork_118890v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13524: f69ef04cfdd4b810e790bef365001e58e2d1037f @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_118890v2: f69ef04cfdd4b810e790bef365001e58e2d1037f @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a></p>
      <h3>Linux commits</h3>
      <p>5bc0c4defb7a drm/i915/guc: Force a reset on internal GuC error</p>
    </blockquote>
    <br>
  </body>
</html>

--------------zw15aISZwuoRHnIHBKNTmISh--
