Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D11B55A0A43
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 09:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F1289FEA;
	Thu, 25 Aug 2022 07:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 256E010E21F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 07:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661412480; x=1692948480;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7vWtmKIfPED/SvSTnUV5aNlYwEy2UBrQgkl/edtCQM0=;
 b=XV/WDVwH8MN8dt9VjURAO7XWVcWMaWOPmy0tPdhztQnDkjJ5+i+qsTck
 oZ0kh/qsqU9Ms0jC4l638JxIVkB0h1l5coLo/yHbVkuFu/XAL+TI+imrk
 +HXqyJ6z3VXmpdKRYRcbaFLnsLZwT1V5Zd9yJBbY+LNgaUOBuOqKBvnlu
 tX6oAYD5tf483ms0x63DpPrbrYZIHVkClfjdP1wiKWXAIChoh1TTCanwv
 foMnoVy/hcjieXUnJ6ujDOOSMfDTq6kuVRl1DrjwnhGUeYaVDcw1ji6oe
 18E3X+wUcFUNmBIShwIvjIyYcfrieexKsq/FszUYxC4cqyxsR73Hd2pt9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="380461764"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="380461764"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 00:27:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="670861123"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 25 Aug 2022 00:27:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 00:27:58 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 00:27:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 25 Aug 2022 00:27:57 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 25 Aug 2022 00:27:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XsWbj0Zz4z+/fkxbP2RzI5MAEx1M+zbug6L/RjeSV9mvdlL9TUZlsYLUKBKoS3Y3DKJ2z3BfAAM+lvLguEkM1jP5q7NgOtTJPFlVTFhDajybxuzIVNcBK8TfaW9ONPufve/k68cCPB/pVa7gzSl7PqUrmdn15XgLeP2l/9E0voTn9g0iTLyVD4tmbSMQi4ib+GTWDxJKfhIqs4LlxJRrw6vqeIFgCayczVfqjmRRQR3aswE1C0/dKzAvVgC2gsnS0QyvcfyywD05+Oh0pAcW8pgU03WRl23jj1HN0U0QO3xy7Sf69AcHe9Sn0swrRou/xvm8c41WZSCjzH0AEF2AyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NDjUPwHMFH66iKTDxXFyxQPyLGuNhfXA3qVScANr2Dc=;
 b=Cd8rphSsiRcpwhPKShr9T8WZRp3DeGeUV4J7MNx6d8L+1XkaCchCX8M0VWf+1+EihyWUDUp8erC54tSU1A4d9SdXQEZMBm0YGZgZjcJ9MKNpkjshrvNNC1KS+qs2CokqvvNsEPuy8SfGCyKEFKWPatTxLlHEKWD4AZ5ogSDGei6Uxwin4bLeR9ssQL4HD15OGHNkI3yK6B1if/3SsLn/+JUirCfjMFIQ1ABLXgVmybDcwVVlVxlqXyJ1D2lW4RMdgxMJEEq6xt+xJc2iUfG7nOtpFwx2uRf0W2T6JjGQm6e86mRJns63XxYtGFy/Cq3hJDYl0TX7W7Vv873mEEHP5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by DM4PR11MB5357.namprd11.prod.outlook.com (2603:10b6:5:394::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.20; Thu, 25 Aug
 2022 07:27:55 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::f4e3:c92:77e5:3de3]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::f4e3:c92:77e5:3de3%7]) with mapi id 15.20.5566.014; Thu, 25 Aug 2022
 07:27:55 +0000
Message-ID: <95f3d282-bc2f-acb3-d633-045a68de1125@intel.com>
Date: Thu, 25 Aug 2022 12:57:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, Guenter Roeck
 <linux@roeck-us.net>
References: <20220818193901.2974625-1-badal.nilawar@intel.com>
 <20220818193901.2974625-2-badal.nilawar@intel.com> <87ilmoo707.fsf@intel.com>
 <50a6d108-4518-c30e-5096-3ee921c75606@intel.com> <8735dnmgwp.fsf@intel.com>
 <20220823121926.GD203169@roeck-us.net> <8735dnkrpt.fsf@intel.com>
 <31f5e19e-1f74-9457-e9a8-b65a5094f1e4@intel.com> <87r117ja3l.fsf@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <87r117ja3l.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0006.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::10) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8fbbd87e-93fc-462f-3dab-08da866b53e8
X-MS-TrafficTypeDiagnostic: DM4PR11MB5357:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vphr9BnQeG3Tz8DEo2d5az7xwLob4w3mpETiUtyFYZx6LJ0Y2FlPMPTDk0pNfBq9OXjhTuo7xBCAxT296txlqZEAawZDgfxgJIfCMq6sFMli9cqVc5D9dQtVwyz2CQqElj702qO8t8Xo1ldDuz9mvYbU6nb/YYZ/CAqodqmTwZ+u4aI4Hv/p8dmENl7O6LuhRfo/u+UAnoUgzJzkVXUKvlB0vXqiAloy3aJrTTx81arIILQJ/b6PwXlTe1xVprTtnRNpvpANLugDbejvzQ+nRP3S5trQXBMw4r0Bcm/3Odp/RsAuz8WvWAqBQY7msFHg3XMhfu+Eqr6PTOeWuFGsnE8wwPTl06HGvAOK0ncNhVoCPdTUq2PeBUhQVfuXnk9CAibsHU6zON2Wqmy6aJFE+Se46m/OGwgmVk/e41kWBlgMmDkT9J6qAXXbGGhIV0k4wgf4vqDU0uE/H/9KQf1qJkcMTAQQaG5gwdOh3P6OiCfRkwUeYO+FxNCSL6xWPd5uMKeqySQ3ZRuhWjICGR7u7DTJJqCAtkqJSny6d0+TVD4uz76+POAgag6asYpn2YVFCc9uJmByRBCUhcCmbr+c51jy5dY5Q86KF71r28CqA/yiMSNFnHcsIEG7I1NBhYtE/QARJCCKSJyEKG+QuqEQQFewAGF8irhzWN8iO/bfxs6ZsOK5EYne8yzm+A6+p/FTj9ucDG9LsLiGOyQJqrGvxaTdW04BHE8FPH7DVtW7FoUAo4rB4aL0Z9zCu/BJ5R4jlGBGYNePCrJY0AN9Hk06tezMqCk233IM/fJcw10U2wM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(346002)(366004)(376002)(39860400002)(26005)(31686004)(38100700002)(110136005)(6512007)(316002)(36756003)(186003)(53546011)(66476007)(5660300002)(66946007)(8936002)(66556008)(31696002)(83380400001)(8676002)(478600001)(4326008)(6506007)(2906002)(6666004)(86362001)(6486002)(2616005)(41300700001)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2VmbkJkdVNjM1lEUkhnc01VMFVveW9TWXl1T2tXa3FRSzdPTWk4UHJmamdr?=
 =?utf-8?B?Z1hyOUtEVUZTT09TNktvYm5zbDRBbk53c043WU9WYWdVMCtDNEh2MFJiQ1h4?=
 =?utf-8?B?czEwNHBoSHhtcGNyYWFqdDRaalRVdW5OMGJUenNVZVNKbG9kQ1gyWTZqOWVX?=
 =?utf-8?B?MTdoV1hnZS81TDExeGN6S01tV1JrRXozRDJLMkFPc21YTCtkQisxNFlwZ1BO?=
 =?utf-8?B?aFFCeEdydFJqeGRwZU1KVFM5cXRmNHVlUUxaNzA3a2xuYjRzTVAvNXJBWTMz?=
 =?utf-8?B?cDJjcXNtTEdqcXg1UTVic0NiTTVnMCtmcGxFUWV2UEl6UDBGbXk4L2d5VmV4?=
 =?utf-8?B?OTdSMXk4RVJXOVBIaUFrYm5TYkRSM0Z1UmsxOU95azYrUWRnOEtHajRMdkxM?=
 =?utf-8?B?RkFWWHA2MU5TeXJiWDUrTHg3QkExczBnR1VrSlRJR1lUMkc0cXducGFYZkht?=
 =?utf-8?B?bVdNSGFZSjVUN3NENHpxSFJ2QW50ZWh4bDJWRzF0NnpPdlkzMFZmWnRndUVZ?=
 =?utf-8?B?ZkRyYk1kRTNacnk2UVdFckhZam15R0Q1dU1uMkM1U0srVDJ1M1oxUWVhTTlh?=
 =?utf-8?B?WnlEd3I3OUEydk1rVmdmQnBEd0p2anZmK2dLUGJodHRBMUpwWG9Ta2t3Q3lr?=
 =?utf-8?B?RzZmajBpMTN0anNNNXRtVUJMODlMMlp4dmFVMm50S1RzRFd2SXZEenRyMUhu?=
 =?utf-8?B?Vlk0cHQxenBXN1BRZ3QwVFZJM1RvMC9LYjQxOGxCQjY0SmZUMkd5UzFRQlAx?=
 =?utf-8?B?THdyUDBxOTQ5Q1QyVUhnRExGWCtKSm5XRnVzZkhLS0VGUVRuZGdtbzJFaEVZ?=
 =?utf-8?B?RXk4TUJ0ODNlWDJ4R1ltQnF6MEk1MktBcFdnbWoxVWJYUTBDN0swL3c5c2xH?=
 =?utf-8?B?T1lldWIvRHRiN1orUDJJSTl3d2luYUY2UXQvbjEzbktWZFJ4OWdSRXJqLzZj?=
 =?utf-8?B?N0JaOTBhYW8xdWdMenRDdmNrL3Rtbjh0UHZ4c1VTZU9VMmlkQ2Q5VkVTTUFM?=
 =?utf-8?B?RzVkbjg0WUV6YldrOGkxZlpGOWUzRXdnUHF6dU9URnBrQXJyY01YV05kM0Uv?=
 =?utf-8?B?OVIrLzRwY3F1RHNMUHhxR2x4VjFyajI3eVBmdzFvVTlpOTFUTHZoaEtFY1E3?=
 =?utf-8?B?UEZxanRTbkR6VXkxTUVOcjJuMUVMSDcxbmpHVTF3aTVydVNkTlRHMGZNZTM5?=
 =?utf-8?B?SUg0Ky96Z29zbjVkb2h2cXVqZkpSemptRlI0Tk8wK3RoWHEweWd1OXJ0RDRZ?=
 =?utf-8?B?aFZPZG1aVnJVZnRHZWlyenJZN1BYQ2hSY2pMQm5LRTQ5L3VFZ0dzMWZGVkth?=
 =?utf-8?B?Qm1zTENPMjVBU3J5WXE1OHg5bWl0eTAzQVhoZDlwYkNlRi9MS29vcDkrQWxQ?=
 =?utf-8?B?TFpYWGg1REdTMzRaeStxNVZncy9jSlhpRFBXTHBNMnlHTTQzUnhON3VWV3FS?=
 =?utf-8?B?Uk9KQWdlY09JZ2I4cU9HUlJzT0Y1Mm9HSWJGbkZOY0dpVlN3WU45bk5SWVJr?=
 =?utf-8?B?eUppTXJqK0s0R1JoTXFMQU1jK09mSG1uOVNJdXJxRGJLYm9seEl5NlVraWw2?=
 =?utf-8?B?Y2VBYVVEczFPRGlMdG9LS1g0dXVpc3dkTjBISVlFYVR3WWppMnF1dTNHcU9Y?=
 =?utf-8?B?VWk4c0Fad3hQK2JKd1p0RmZVeVhwUkZlUHh5dUR3OCt0V0RWQ1BmUU5jWks0?=
 =?utf-8?B?eG5JZExvQlU1T0phYitFWmVtUW9WdjEwL0t4MlFTVDhVUUFrV1phZHQ4VlZt?=
 =?utf-8?B?MjNzNnA1WmtSVXpPQUpLK1FkN1doU0UwME9qRWFyYWlraGJCdFZvdEtXWitB?=
 =?utf-8?B?ZGZpVGhlVUNNNXQ2U3RBREszSEk1aXpjRjVqRngzZWhUSUVzdEQ0V1plblV3?=
 =?utf-8?B?U2dTMW5MSnVwWnRuWGxzUUJ6N2tjUld6NTdkWXJ0NDZ6NXNySXRHZHpuWWJO?=
 =?utf-8?B?U0pnRjgrQk1vdXJHVXVyL0dDelZhUlhzYmNJcGp0ZVBtejZxYkJ2aDhobG5u?=
 =?utf-8?B?c0VxenVWcDMxTjBJdXFNU0VFT2w5a1gwcGFwZHhhWEcvR1RCclppYjZSdGtR?=
 =?utf-8?B?VFhHcjhwRUNmL0FjdTJ6NmxYekZaTHB3T3V5MHlCd3pudlNYeHozVnNFNXBL?=
 =?utf-8?B?THZ4Z3pkdnZGY1MreThIZmRGZ2QzQ2JSanJzdDcweGZhUnRnNi9MeEFMUDVt?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fbbd87e-93fc-462f-3dab-08da866b53e8
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2022 07:27:55.7616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uKp1qO6t3mbxmH6VC1Zk1HD8o0A+7BEPBHz1dX45LqsbsYCozxujrqy8Sf+H26lnxuJStE3RpNPKhz0XgneN1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5357
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/hwmon: Add HWMON infrastructure
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
Cc: linux-hwmon@vger.kernel.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 23-08-2022 20:11, Jani Nikula wrote:
> On Tue, 23 Aug 2022, "Nilawar, Badal" <badal.nilawar@intel.com> wrote:
>> On 23-08-2022 19:05, Jani Nikula wrote:
>>> On Tue, 23 Aug 2022, Guenter Roeck <linux@roeck-us.net> wrote:
>>>> On Tue, Aug 23, 2022 at 12:46:14PM +0300, Jani Nikula wrote:
>>>> [ ... ]
>>>>>>>
>>>>>>> So why not do this in i915 Kconfig:
>>>>>>>
>>>>>>> config DRM_I915
>>>>>>> 	...
>>>>>>> 	depends on HWMON || HWMON=n
>>>>>> With this change I am getting recursive dependancy error when I run make
>>>>>> oldconfig
>>>>>>
>>>>>> badal@bnilawar-desk1:~/workspace/wp3/drm-tip$ make oldconfig
>>>>>>      HOSTCC  scripts/basic/fixdep
>>>>>>      HOSTCC  scripts/kconfig/conf.o
>>>>>>      HOSTCC  scripts/kconfig/confdata.o
>>>>>>      HOSTCC  scripts/kconfig/expr.o
>>>>>>      LEX     scripts/kconfig/lexer.lex.c
>>>>>>      YACC    scripts/kconfig/parser.tab.[ch]
>>>>>>      HOSTCC  scripts/kconfig/lexer.lex.o
>>>>>>      HOSTCC  scripts/kconfig/menu.o
>>>>>>      HOSTCC  scripts/kconfig/parser.tab.o
>>>>>>      HOSTCC  scripts/kconfig/preprocess.o
>>>>>>      HOSTCC  scripts/kconfig/symbol.o
>>>>>>      HOSTCC  scripts/kconfig/util.o
>>>>>>      HOSTLD  scripts/kconfig/conf
>>>>>> drivers/gpu/drm/i915/Kconfig:2:error: recursive dependency detected!
>>>>>> drivers/gpu/drm/i915/Kconfig:2: symbol DRM_I915 depends on HWMON
>>>>>> drivers/hwmon/Kconfig:6:        symbol HWMON is selected by EEEPC_LAPTOP
>>>>>> drivers/platform/x86/Kconfig:332:       symbol EEEPC_LAPTOP depends on INPUT
>>>>>> drivers/input/Kconfig:8:        symbol INPUT is selected by DRM_I915
>>>>>> For a resolution refer to Documentation/kbuild/kconfig-language.rst
>>>>>> subsection "Kconfig recursive dependency limitations"
>>>>>
>>>>> *sigh*
>>>>>
>>>>>     Note:
>>>>> 	select should be used with care. select will force
>>>>> 	a symbol to a value without visiting the dependencies.
>>>>> 	By abusing select you are able to select a symbol FOO even
>>>>> 	if FOO depends on BAR that is not set.
>>>>> 	In general use select only for non-visible symbols
>>>>> 	(no prompts anywhere) and for symbols with no dependencies.
>>>>> 	That will limit the usefulness but on the other hand avoid
>>>>> 	the illegal configurations all over.
>>>>>
>>>> Agreed. HWMON should not be selected anywhere. Unfortunately it is, and
>>>> drm is no exception. It is selected by DRM_RADEON and DRM_AMDGPU.
>>>> Maybe just select it in DRM_I915 as well after all; in practice it won't
>>>> make a difference.
>>>
>>> And I guess everyone just does what I'm about to do now, throw my hands
>>> up in the air in disgust and resignation. :p
>> How about sticking to existing approach only. In my previous response I
>> mentioned that for combo which we want to reject CONFIG_HWMON=m &&
>> CONFIG_DRM_I915=y combo i915_hwmon.o is not getting build.
>> It is only getting build for below combos
>> CONFIG_HWMON=m && CONFIG_DRM_I915=y
>> CONFIG_HWMON=m && CONFIG_DRM_I915=m
>> CONFIG_HWMON=y && CONFIG_DRM_I915=m
> 
> Then please hide the IS_REACHABLE() within i915_hwmon.h and add stubs as
> is customary. Let's not clutter high level driver code with some random
> #if directives.

Thanks, I will resolve this and float the new series.

Regards,
Badal
> 
> BR,
> Jani.
> 
> 
>> Regards,
>> Badal
>>>
>>> BR,
>>> Jani.
>>>
>>>
>>>
> 
