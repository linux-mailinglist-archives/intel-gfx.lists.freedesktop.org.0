Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C85F59D4AC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 10:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED011B1674;
	Tue, 23 Aug 2022 08:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB9E9A9B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 08:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661244167; x=1692780167;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1sC+S9H1HUggoDzv9DBIuqEHnPUM0QIjOkT5OgBjuJw=;
 b=UnqpSUYtsZDCMsSdXlS6AJqi/ENOKICBC6Pp1YjdnAHPiQ4cy0+n36UG
 e9tedHN1vaDa1kkSX1yO8YtxIM1NKlZwv4WrTLYcxbXc+6+qKiXTwW4NH
 bkl+jBWoCOVS3oAkmcSKBBlOMS3oxqTRIjrdoWm0mY2k03FywCtPiWd8c
 BfbBz7PIE06+XwhSQdZ59fOo9uE9cufOKJ2oqigoLagg/EEnFVbzEtyJ7
 sxzYwtWtM/fMob+nXRBfczlwRR6l+Ja8UvwPXWfl7fZhEpKNrMk3+p72K
 Si258dRcCB5AL1O8QDhU/VNz5l0EOpQNtVP1Tj6JU+2MBkGIC93YESbXo g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="293629308"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="293629308"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 01:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="642365605"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2022 01:42:29 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 01:42:28 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 01:42:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 23 Aug 2022 01:42:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 23 Aug 2022 01:42:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RFyED4BaOqavO5zD/iIT6/WNICXEt8DvKJ1NZtR90iQKDHFYRdqdP1Gq3Yw+16GmCaCHiW9rdgeiIgKFm7egFGP9KGW28NionqD6DOXuhBAg+nkxOd0N/zytocqltUhGxvECGHfly9VxwSxpxo2UvDpEKANXxvVMXJP6mEcE/bZy8w9bw+CXy06aS09bhoTf1vhvuTDXnIp9QVPbNfRFAsIERS1vwCqPIQtT7feegC/sMFcZ0gyJCBTUOQI84ilGObRmyy4z/JZn65eV2hzqJhCxANx+MZV4N6u9oGGeDEfnMArLucdvrTxA7iZxoQ0DpMaZMP3gQmPxY/B43yPo+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pGCwYyA+wQCMcvPuwCVlDVK34KGHpbduJC5YohZCycw=;
 b=HJRl49vA2muMA19+ZLhR/mot49xqKReCYz6dVGcz0rDIcvQ3AsZcblZnTzd12FKLlIA22U9l6p8xtEyNfpf7m1xV5b13nFn5th3+SZX64TM+zixy+0yiMBLvQvHp6o7TZPVevR5MPT0aEmaCoHxrInSUAkiD1/W3tWV5RBYJI8kTdMiLA8tvcwDTx5TLkSetV25NiOuBQqG7yn1D+W5K7dstB4ExcbmjMbxZ8CDSZsVnBEbiZ2y55PZsPR+8DYs/FqE0z8jJR0CPE5bVkZmGrpmQAw4t11x9n0oChxgE8hnjhRZFOeeAX71dm6X65yakDoMZEP0kZ4IHXlZ5iMTsMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by DM5PR1101MB2075.namprd11.prod.outlook.com (2603:10b6:4:5a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Tue, 23 Aug
 2022 08:42:26 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::f4e3:c92:77e5:3de3]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::f4e3:c92:77e5:3de3%7]) with mapi id 15.20.5566.014; Tue, 23 Aug 2022
 08:42:25 +0000
Message-ID: <50a6d108-4518-c30e-5096-3ee921c75606@intel.com>
Date: Tue, 23 Aug 2022 14:12:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220818193901.2974625-1-badal.nilawar@intel.com>
 <20220818193901.2974625-2-badal.nilawar@intel.com> <87ilmoo707.fsf@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <87ilmoo707.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::18) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9a66fe5d-f84b-4c2d-5487-08da84e366c5
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2075:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j8hWJPS8yPFr4ti4/0Lb+vzpHYqQZxIuNhAXQaQdCXSbIzwfKxMOVlqF4QktU36A6O95Hlcv4U3Dc8xOc4FsQaxvunbGwn2dHo7oI22fC1jdf5cFOqkL9l9r0t8kBnUJogoVMGJZCiUzxMghteU8N1zEuX/kD+2q5OnA6QHWfKYT8NeB+osPwtqpd20jMAgKibKg9k5ghXtKxpP38/KaojlThcrHUdqJAb5Nyn+5DpaeX3eWL75TVlXqZJ5p+pyLPbWxaHqDZCZCilFicjpEmlGFqWDlLkVsHNMSbjlC3+f77H73/DaGksZV6j0Z4RRSm4NBIHGU8846AtureZ/efVuYXjkKfR6dJB8TIyt8jHa9mxG0VZ3yHQ8sISfuYw6nkAEYRV5Gil0NXCFRSaEuc3kjoYsjBybmJ7+DFDIhdE5EZVp7SBlhr70fZHZ78kiGZ3Ma4StZTCl3J6C9alsVtuGsBey6qlm8dSeYEjSgwlAP1uEf1qc4TdsLt2eBF30/e6TAuHRtWu/8VZarGJHvBdAnccCIZmNS4rDjSdy7ziEBbKkmxImj/4CWbn7HHQW0rSTKTTEip3T5B2nYaKARu1u91AZzeHgOQ7CHe/AYrP4HHMW5MWfhe/+7kP9db++KH0cSYKZvDX/C4YC3Owmr+Qy8VVW6ToKjWwiu+O4630kI8/fLswJLW0dislRtQyVVYzKSo8k0GXRYtUzIZ7caI9W/eBs8pz68tKCDp9XchLp7deYxNPThUBhvKF7q48j9mV+oPsPX6HuaWJ7bZD/tQNSTmQUi9ki/Z3G5/nxOfkM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(136003)(396003)(376002)(366004)(6506007)(86362001)(82960400001)(31696002)(83380400001)(6512007)(38100700002)(316002)(8936002)(5660300002)(66556008)(66946007)(66476007)(4326008)(2906002)(8676002)(2616005)(186003)(478600001)(41300700001)(6486002)(53546011)(26005)(6666004)(31686004)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDRPcW9aa1VKOXBXSDlVQ2dQSVdnaUxwVEJ2M1p2eWZwcEo3L2xKa0MwNDBG?=
 =?utf-8?B?dC8xeUpyYkh4cWRyWWl6dWNzeEplMUU3T0ZpOWhyVjdWelVReWczSWJMcGxs?=
 =?utf-8?B?QnZFbDk2ZWhQS3ZrcmpobUprWGFsalpaaVlIVG8xN0NZWDdpcWEwT1dGMEJF?=
 =?utf-8?B?YW1LTTVyaHVCejg2L2UrY0ZDUkV4STlJT2pMREdJSVZ1Y2x2THJPL05sL01W?=
 =?utf-8?B?K0pqbTNDREoreE1TUDFaM0UzazdabGVFZFB0T1NzRHpFZ3lpaVFxNEtIbmE0?=
 =?utf-8?B?OE9OK2lvR2w3ay9RSkJRNTBRZmhma0xOaVZMenZDK0xad29qc1dENE56U2tI?=
 =?utf-8?B?NnRuNG1LZVQ3Y2c3Q3QrSXU0WVU4Ymg4RDNDU0R6aS9FTzhsV1lkMmdzY09s?=
 =?utf-8?B?ZzZQMzV4dmVSdVJEc0gvbGJuNE5SSnR6bEdhV3RHRFh4aEwxZVVpdmd2aDRH?=
 =?utf-8?B?ektWcmw1ditDR3FxSm5NdGRHTkEvTkZINndHdWdXQmdvVitNY3hvTTB2ZWUy?=
 =?utf-8?B?S1NUQURidUR0NjAyc2VkL2xkeU56SjFBSnAwcExjeGxGUXYvTVU3cXR2YTds?=
 =?utf-8?B?WU84RGRZdVM4QityWTNESVBlYlhuVXpHTERaZm00OW5rYkJGVy92TkF3cmdB?=
 =?utf-8?B?ZVVKakkyL0JXM1BwR0JNSFdWTEt3VUpVUmZXZzdLWVd6OWpwa2tjM3NNdjRa?=
 =?utf-8?B?eENid1NFQVU3enV5bnZySkwxZ0lTZnlPNFh6Sis2R3l5cFpQOER1clB4SlRW?=
 =?utf-8?B?bGRVVExTVkc4T2ZacHFDdm10cnVOTVBBRGh5Q3JKWDFnNjEzODVxSllKU2Uz?=
 =?utf-8?B?V1R5Q3VwRGphSzVRYzd1aHNHUXJ6VThXZWFDa0hoRXd3QUNtdVBtY3hPcHEz?=
 =?utf-8?B?MzJLQktJTXR4bThHOUg1L25hSVJDWldzTW0xZVFqUDFjSkVGb3VtYVJWekNV?=
 =?utf-8?B?ODB3RHBtSGFKU3A0V2tKUGU1eEpBTG10RDM3ZzJEVUlYenBONDRCa3grZk05?=
 =?utf-8?B?R0Nta1Y0bTZ0S3JVaEx2aE5iQWlMTzRyeTltQmt4U0JYdXJrTnpHb1ZxVWhS?=
 =?utf-8?B?NTVvZDg4NXNta1lMUEpCTUdKTDdOWXVRbjVLY3pHdWRPQ2hOYURSbjc2T1RX?=
 =?utf-8?B?Q1RuQlFwQldDbEJwbXJhVnFLMVI0UmZKMzMrYTlMdC9GOUFDNWt6UGFkeXpi?=
 =?utf-8?B?b1c3VFhWNnBRQ3N5Qk9xazR6TWx4TmVjRTNkVlVXaDJnR1dkd1VmQjdteEFJ?=
 =?utf-8?B?L2FhQ1Jsajl5aVM3WEdONmpiTk9CYmd0MG40WFNLUytkMXU4TlVBRnkrVFFS?=
 =?utf-8?B?eTErd3JJMmJZU0o4eTRPa08zRnBSbWhodXBUb1I5NDNuT05WaHRKMVo0ZnVx?=
 =?utf-8?B?d0dGaktpMDVnb2lKUkFaVUdndnc3TmNwWWxGQkQzY0FwdSt1QjJPK1ZFMkJG?=
 =?utf-8?B?VG05WDA4dFYwZ25lYmQxVUFmZjFwTk5nQnM0U2dvMFN5bStkRjB2bFkxVUVG?=
 =?utf-8?B?ekdwM1NoY0ExSy9wSXhDV1FnaCtVelEybXJSVVYzd2hxNFUreitVWGxjMHIv?=
 =?utf-8?B?NllvVUY4OHM4VTI5d3c5UFo3cjJLSHNMOE0vTm93bUl4WmxHQ25TRmYzSUU1?=
 =?utf-8?B?TVdmRjhtSlJMbisyRi9ibU1NSGhYS2tYV2FLYXJmN3BPQzI3YnhpeUhuT2lH?=
 =?utf-8?B?RkljSW1UTzRJQVlvTU5NdlRhbjZQZUNncFp4OGZxeEJaY3FwR1JydUhnMDNJ?=
 =?utf-8?B?aVdPQ3FvTGZLRWdzWHFoMzZhSjBuUnkzclpKalJDUHdVMjAyNkV2eXBZaEFE?=
 =?utf-8?B?QXFILzFYVTF6RjA4YU9QQkoyNUYyeHMyVkppb1ZyOGFod1NwVzBuem9laDk4?=
 =?utf-8?B?VnlwSHMzYmdsQTdXanQyVGc3THJCWmZwenpNbGprZHA3QTltNWdwT1ZXSWI5?=
 =?utf-8?B?aGdTOWtidHJCRCtNRnhhdEI2d1kwa0dIc05ZaU91Rk50WFQrcGc0QTFnYVJw?=
 =?utf-8?B?TllUS056OStLUmlJdldYdjR6VzVEY1hVQ0ovdzFNMitTR2hnUWMwcnF6b21k?=
 =?utf-8?B?WTBYaUlhcjJ3L3pST25qSnY5bjJhN2dYNGUyT2ZjcDdTWTBxYjNUcmE3bGxk?=
 =?utf-8?B?N3VBWUNMck5RN29tV3BpMTg2VzBrSW04RE43RlE1Z09kdHRxemZsMVlmVEJX?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a66fe5d-f84b-4c2d-5487-08da84e366c5
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 08:42:25.2386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wIS7BnaBiO9H3SEeAy3emwffBd7NGYmkQTPj6as0BMnrteZv293vrWSaqnwzDn7vn2WdATeZKs5xSeroBrLmbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2075
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
Cc: linux-hwmon@vger.kernel.org, linux@roeck-us.net
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 19-08-2022 16:05, Jani Nikula wrote:
> On Fri, 19 Aug 2022, Badal Nilawar <badal.nilawar@intel.com> wrote:
>> From: Dale B Stimson <dale.b.stimson@intel.com>
>>
>> The i915 HWMON module will be used to expose voltage, power and energy
>> values for dGfx. Here we set up i915 hwmon infrastructure including i915
>> hwmon registration, basic data structures and functions.
>>
>> v2:
>>    - Create HWMON infra patch (Ashutosh)
>>    - Fixed review comments (Jani)
>>    - Remove "select HWMON" from i915/Kconfig (Jani)
>> v3: Use hwm_ prefix for static functions (Ashutosh)
>> v4: s/#ifdef CONFIG_HWMON/#if IS_REACHABLE(CONFIG_HWMON)/ since the former
>>      doesn't work if hwmon is compiled as a module (Guenter)
> 
> Is this really what we want to do?
> 
> In my books, it's a misconfiguration to have CONFIG_HWMON=m with
> CONFIG_DRM_I915=y. That's really the problematic combo, not just
> CONFIG_HWMON=m, right? Why do we allow it at the kconfig level, and then
> have ugly hacks around it at the code level? Especially as
> CONFIG_DRM_I915=y should really be thought of as a corner case.
> 
> So why not do this in i915 Kconfig:
> 
> config DRM_I915
> 	...
> 	depends on HWMON || HWMON=n
With this change I am getting recursive dependancy error when I run make 
oldconfig

badal@bnilawar-desk1:~/workspace/wp3/drm-tip$ make oldconfig
   HOSTCC  scripts/basic/fixdep
   HOSTCC  scripts/kconfig/conf.o
   HOSTCC  scripts/kconfig/confdata.o
   HOSTCC  scripts/kconfig/expr.o
   LEX     scripts/kconfig/lexer.lex.c
   YACC    scripts/kconfig/parser.tab.[ch]
   HOSTCC  scripts/kconfig/lexer.lex.o
   HOSTCC  scripts/kconfig/menu.o
   HOSTCC  scripts/kconfig/parser.tab.o
   HOSTCC  scripts/kconfig/preprocess.o
   HOSTCC  scripts/kconfig/symbol.o
   HOSTCC  scripts/kconfig/util.o
   HOSTLD  scripts/kconfig/conf
drivers/gpu/drm/i915/Kconfig:2:error: recursive dependency detected!
drivers/gpu/drm/i915/Kconfig:2: symbol DRM_I915 depends on HWMON
drivers/hwmon/Kconfig:6:        symbol HWMON is selected by EEEPC_LAPTOP
drivers/platform/x86/Kconfig:332:       symbol EEEPC_LAPTOP depends on INPUT
drivers/input/Kconfig:8:        symbol INPUT is selected by DRM_I915
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

make[1]: *** [scripts/kconfig/Makefile:77: oldconfig] Error 1
make: *** [Makefile:632: oldconfig] Error 2


> 
> Which rejects the CONFIG_HWMON=m && CONFIG_DRM_I915=y combo.
> 
>>
>> Cc: Guenter Roeck <linux@roeck-us.net>
>> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>> ---
>>   drivers/gpu/drm/i915/Makefile      |   3 +
>>   drivers/gpu/drm/i915/i915_driver.c |   7 ++
>>   drivers/gpu/drm/i915/i915_drv.h    |   2 +
>>   drivers/gpu/drm/i915/i915_hwmon.c  | 135 +++++++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/i915_hwmon.h  |  20 +++++
>>   5 files changed, 167 insertions(+)
>>   create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
>>   create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index 522ef9b4aff3..2b235f747490 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -208,6 +208,9 @@ i915-y += gt/uc/intel_uc.o \
>>   # graphics system controller (GSC) support
>>   i915-y += gt/intel_gsc.o
>>   
>> +# graphics hardware monitoring (HWMON) support
>> +i915-$(CONFIG_HWMON) += i915_hwmon.o
> 
> Moreover, this builds i915_hwmon.o as part of i915.ko (or kernel as it's
> builtin) even if we can't use it!
For CONFIG_HWMON=m && CONFIG_DRM_I915=y combo i915_hwmon.o didn't get 
build. It is only getting build for below combos
CONFIG_HWMON=m && CONFIG_DRM_I915=y
CONFIG_HWMON=m && CONFIG_DRM_I915=m
CONFIG_HWMON=y && CONFIG_DRM_I915=m

Regards,
Badal
> 
> 
> BR,
> Jani.
> 
> 
>> +
>>   # modesetting core code
>>   i915-y += \
>>   	display/hsw_ips.o \
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index deb8a8b76965..62340cd01dde 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -80,6 +80,7 @@
>>   #include "i915_drm_client.h"
>>   #include "i915_drv.h"
>>   #include "i915_getparam.h"
>> +#include "i915_hwmon.h"
>>   #include "i915_ioc32.h"
>>   #include "i915_ioctl.h"
>>   #include "i915_irq.h"
>> @@ -736,6 +737,9 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>>   
>>   	intel_gt_driver_register(to_gt(dev_priv));
>>   
>> +#if IS_REACHABLE(CONFIG_HWMON)
>> +	i915_hwmon_register(dev_priv);
>> +#endif
>>   	intel_display_driver_register(dev_priv);
>>   
>>   	intel_power_domains_enable(dev_priv);
>> @@ -762,6 +766,9 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>>   
>>   	intel_display_driver_unregister(dev_priv);
>>   
>> +#if IS_REACHABLE(CONFIG_HWMON)
>> +	i915_hwmon_unregister(dev_priv);
>> +#endif
>>   	intel_gt_driver_unregister(to_gt(dev_priv));
>>   
>>   	i915_perf_unregister(dev_priv);
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 086bbe8945d6..d437d588dec9 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -705,6 +705,8 @@ struct drm_i915_private {
>>   
>>   	struct i915_perf perf;
>>   
>> +	struct i915_hwmon *hwmon;
>> +
>>   	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
>>   	struct intel_gt gt0;
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>> new file mode 100644
>> index 000000000000..5b80a0f024f0
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>> @@ -0,0 +1,135 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#include <linux/hwmon.h>
>> +#include <linux/hwmon-sysfs.h>
>> +#include <linux/types.h>
>> +
>> +#include "i915_drv.h"
>> +#include "i915_hwmon.h"
>> +#include "intel_mchbar_regs.h"
>> +
>> +struct hwm_reg {
>> +};
>> +
>> +struct hwm_drvdata {
>> +	struct i915_hwmon *hwmon;
>> +	struct intel_uncore *uncore;
>> +	struct device *hwmon_dev;
>> +	char name[12];
>> +};
>> +
>> +struct i915_hwmon {
>> +	struct hwm_drvdata ddat;
>> +	struct mutex hwmon_lock;		/* counter overflow logic and rmw */
>> +	struct hwm_reg rg;
>> +};
>> +
>> +static const struct hwmon_channel_info *hwm_info[] = {
>> +	NULL
>> +};
>> +
>> +static umode_t
>> +hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>> +	       u32 attr, int channel)
>> +{
>> +	switch (type) {
>> +	default:
>> +		return 0;
>> +	}
>> +}
>> +
>> +static int
>> +hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>> +	 int channel, long *val)
>> +{
>> +	switch (type) {
>> +	default:
>> +		return -EOPNOTSUPP;
>> +	}
>> +}
>> +
>> +static int
>> +hwm_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>> +	  int channel, long val)
>> +{
>> +	switch (type) {
>> +	default:
>> +		return -EOPNOTSUPP;
>> +	}
>> +}
>> +
>> +static const struct hwmon_ops hwm_ops = {
>> +	.is_visible = hwm_is_visible,
>> +	.read = hwm_read,
>> +	.write = hwm_write,
>> +};
>> +
>> +static const struct hwmon_chip_info hwm_chip_info = {
>> +	.ops = &hwm_ops,
>> +	.info = hwm_info,
>> +};
>> +
>> +static void
>> +hwm_get_preregistration_info(struct drm_i915_private *i915)
>> +{
>> +}
>> +
>> +void i915_hwmon_register(struct drm_i915_private *i915)
>> +{
>> +	struct device *dev = i915->drm.dev;
>> +	struct i915_hwmon *hwmon;
>> +	struct device *hwmon_dev;
>> +	struct hwm_drvdata *ddat;
>> +
>> +	/* hwmon is available only for dGfx */
>> +	if (!IS_DGFX(i915))
>> +		return;
>> +
>> +	hwmon = kzalloc(sizeof(*hwmon), GFP_KERNEL);
>> +	if (!hwmon)
>> +		return;
>> +
>> +	i915->hwmon = hwmon;
>> +	mutex_init(&hwmon->hwmon_lock);
>> +	ddat = &hwmon->ddat;
>> +
>> +	ddat->hwmon = hwmon;
>> +	ddat->uncore = &i915->uncore;
>> +	snprintf(ddat->name, sizeof(ddat->name), "i915");
>> +
>> +	hwm_get_preregistration_info(i915);
>> +
>> +	/*  hwmon_dev points to device hwmon<i> */
>> +	hwmon_dev = hwmon_device_register_with_info(dev, ddat->name,
>> +						    ddat,
>> +						    &hwm_chip_info,
>> +						    NULL);
>> +	if (IS_ERR(hwmon_dev)) {
>> +		mutex_destroy(&hwmon->hwmon_lock);
>> +		i915->hwmon = NULL;
>> +		kfree(hwmon);
>> +		return;
>> +	}
>> +
>> +	ddat->hwmon_dev = hwmon_dev;
>> +}
>> +
>> +void i915_hwmon_unregister(struct drm_i915_private *i915)
>> +{
>> +	struct i915_hwmon *hwmon;
>> +	struct hwm_drvdata *ddat;
>> +
>> +	hwmon = fetch_and_zero(&i915->hwmon);
>> +	if (!hwmon)
>> +		return;
>> +
>> +	ddat = &hwmon->ddat;
>> +	if (ddat->hwmon_dev)
>> +		hwmon_device_unregister(ddat->hwmon_dev);
>> +
>> +	mutex_destroy(&hwmon->hwmon_lock);
>> +	kfree(hwmon);
>> +}
>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
>> new file mode 100644
>> index 000000000000..921ae76099d3
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
>> @@ -0,0 +1,20 @@
>> +/* SPDX-License-Identifier: MIT */
>> +
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#ifndef __I915_HWMON_H__
>> +#define __I915_HWMON_H__
>> +
>> +#include <linux/device.h>
>> +#include <linux/mutex.h>
>> +#include <linux/types.h>
>> +#include "i915_reg.h"
>> +
>> +struct drm_i915_private;
>> +
>> +void i915_hwmon_register(struct drm_i915_private *i915);
>> +void i915_hwmon_unregister(struct drm_i915_private *i915);
>> +
>> +#endif /* __I915_HWMON_H__ */
> 
