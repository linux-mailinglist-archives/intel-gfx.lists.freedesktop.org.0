Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9015FBA2C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 20:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3160A10E853;
	Tue, 11 Oct 2022 18:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5ED10E853
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 18:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665512373; x=1697048373;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5iKyQh9rrNO4Nax8R4LaQfZUIQeemlGCExiDTLF6Sb8=;
 b=Xh9JnHBOHv4+e8QVdYXAPp5fPQTlzM+8Is0UP656CjS1/n26j3hNRtDc
 Pvkou/oNs6068/D0LoyAG8zv0FXwZxDfd3PE0m4RLAgpu3vbFt7FOzGyB
 CzNHkf+2yFSXsx0/YU46Yl55nm9AEySCLQmbuDVL5DF31LygSSUFXjS2b
 CqeFUHtgPXy1maiTpSpBCcZJP3ZaQLhUfn5Yqok4wyVeBvZcTecmKzaPQ
 V8+E5KzpQuH3lu4vixRR89bkjIGlWQULEnnCjhz+QL4AIFYNJiRCgmEdX
 Xq+to/vg3yHXAb8uSq0FOU9CC1/hRb6EhqhHXXFLOK+YeCE/kU2esATMi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="331076824"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="331076824"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 11:19:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="751834237"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="751834237"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 11 Oct 2022 11:19:32 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 11:19:32 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 11:19:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 11 Oct 2022 11:19:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 11 Oct 2022 11:19:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oEdyoJWAmPCg62k/JqjleNqXyzKVEInASXcReoLq2/rRnd9UG/eTjYDap2bsljMzHYzjOL3kmpdZTqYLfRzqAcp55k25Ol+wJS1fwhkr9Afk5BTapEbwkYiLgVFClhiTL1HBgg/quLiUxgCP8Pq2PsD/ZFFHhnGU2sB7fO/5lyqxjWaZX7fG5TbdxxXYGEzzX0e+ESC/LRQpyg8BNd6Ohsn+5h/6M7HOAeTpNuqF92b1qjmbEJjDJbpHRYc2BcRhIxjyRk8+RQdkUg05S/PWmdoGQePCK2pxyw94LQdGI9cBfJ0+rGTrFXomKtH08O4ab5z+ndGafKfbZf5wMSH8mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sqzOBDguiuZTkF3WqqWDjtUlJ26Lpw+4BWdAMBB7J08=;
 b=hZNkEz3ZgnXZDnhf6izee2YQ22/YgFeU/g9t4UGFJ2oUGWwAcoo4nTDoZGn3MoKKwue2OGUoH2AZXzc/4Me8ZFUMftFPZVf0BzZP4jeXZQXd4xHKUDxUB9Rhmx++JijuX8il7/D1aEHR10xfibHKSFf4RBIy9jg9PQNHM2BhySt8xwxQMqUkYLsZp6E/EXY7hWNv9Uhip9T3iKBPG5IzAOz3Sr+qsIlkHLB6lWNWDLDyyfqU/EJAmtXHLNXDLwk7atPs1vf0cG+LdgbyB3ouwykv8zIFnziM1M2kC9WYNpJbRmw1tT4PMIDeFdvsS31tZ1WdYyi0/V5KUoliOiiPoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH0PR11MB5659.namprd11.prod.outlook.com (2603:10b6:510:ea::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.15; Tue, 11 Oct 2022 18:19:29 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::c072:cd8d:ce60:30cd]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::c072:cd8d:ce60:30cd%3]) with mapi id 15.20.5709.021; Tue, 11 Oct 2022
 18:19:28 +0000
Date: Tue, 11 Oct 2022 11:19:17 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y0WzpfANBRB8GWN4@unerlige-ril>
References: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
 <20221010181434.513477-5-umesh.nerlige.ramappa@intel.com>
 <87y1tmw8vf.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87y1tmw8vf.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0116.namprd05.prod.outlook.com
 (2603:10b6:a03:334::31) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH0PR11MB5659:EE_
X-MS-Office365-Filtering-Correlation-Id: fa87b2da-4c40-49c9-92d0-08daabb522b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RVHrskZdDbq5RqR0i4UuHL9QOJs5cFyMNaptYzhT7CdUd/SNfza34v0imj8WAoyUYuCVbXCgq0DPdDFgOXI8ROgJJqfEyXnEgxrLMYg6y4Dm7CfGlVzwu+YSKxo+g6GMRG1rt8+1rPOs9yTHZNvIflbFBIcRM5NszcFP0Xea3J1qi1IycrKSUVhsFOjF5XBJRPESx5R75xTMjYJsl5cLUUNQ2eolQTruV7uUBFCdHtd6goyT8T2iA51pShfxrctOEoMygi1wjvYmRVRnXFOvgU0e5QVNswSNVu3H9hy/8uq6Ydeq9nADwffO84CLhuXECOcxybU4rSXMKUs9kiXrAqE7tb2xumeYtB+4fy7By+LOu4de560SvuqsDqsHwUdcKvwTbCYoUQnIVsAxx1tQ7g9iER9Rcvmc/4XrJaJNg6as5tbHFTe+kybbrUU8eA3VcdiiAlPB7aBQpo5vJvXaYqEOK6yiMwGeICvO4GQx5c97z/M3BhTHH15ktfjA7JqYnWWb5+Gkp4QsJ+pwMrniaOTIF5Mp8hq7ZHiha9KKcuJcA7rK9RdwOHGaZRd1SdIRuMQcBIw1PaAnNaiF0iWefkPJGyv/aknEhL1yN1UZSxBdmEt2kjOmZzTJp7KJcUBNOJAIEFKNfrzHYRibl30LJRhLZL/uWEv3G4w6lHZujG4KxK0Q3kx2TGgQ9c0bE+ZR3scThZtAkdLcteEcFa1J6Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(366004)(346002)(396003)(376002)(39860400002)(451199015)(5660300002)(8936002)(6666004)(26005)(6512007)(2906002)(9686003)(186003)(30864003)(316002)(6916009)(6506007)(33716001)(54906003)(83380400001)(38100700002)(41300700001)(478600001)(66556008)(66476007)(8676002)(6486002)(4326008)(66946007)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlNtMm85TVBuaFlHRnAzNElxUmdKWjF1aHY1NGtuMmxjY0E3dEFKZXpWb0Qw?=
 =?utf-8?B?eDhtRDRWTHRQS2VxQ2IvK0hYNVU4dlBYK2dFUzVzUVJvUG9BNzVFUVY1Tyta?=
 =?utf-8?B?YW51eEhiajRieTJkK1JzZ1MvMWdnaU1BMGZxcjJreHU0djlieVlnbW45cTRS?=
 =?utf-8?B?eGdCZThYOUVmem9td1JqdVRId0NLMUZURnhKY2pQVGhidGNkcmY1UVdkUlpU?=
 =?utf-8?B?RGVDMVRVeG90ZXV6bHl6M0IvR2x6VzJYQTBYbHZVQ3VOSmVCSHFhVEJSd1Ru?=
 =?utf-8?B?VmtKOElCSEJKekhsV3JUUjk5RVhwYnpBUkdZRTZtSnFrck1iOHNDdklVRDF3?=
 =?utf-8?B?d0xNUjd5b3ZKdkRZbWQzYTExSmVHdC82MWxvbk9yRXJWYVpRWmlYOS9ySk9U?=
 =?utf-8?B?UWJZWUdJNWN5OUZYem1BOXJmd0ljb2FKVUpHRnNFMjhydGozYktxd1VhMGp3?=
 =?utf-8?B?L0NCV1JEV1Rid2Q2UjNQbUxrTXZ2MjlJTFZ1RFJMdWp6V1lTdVhOSmtCeXVv?=
 =?utf-8?B?N1RYV0ljaWJmZEJPcGpGZjZWK0FJS3BZa0c4NEdSOXB5QTFrb3NwZjRTN2dO?=
 =?utf-8?B?czl1akZxMTB6MnlOMTJWSDk2aERPSFBUZHpJeGlmNFoyOWxkSzdIamFrU0d3?=
 =?utf-8?B?aHIzTDZmYUdIMUErcjQ3RDA1c0NHWlRWSDNZUHVya1dmaU9vYkhNbW1kWmhJ?=
 =?utf-8?B?a2VCUW1wVEFiTytiQzl2MmNHODN5Q25RQlR2RnNkR01mbS9Mc0tCdjRzSzdL?=
 =?utf-8?B?UG4zSFdOUk1FMGxPNE9MSSsxVlFyT00yeFZtMExCOW1BM2xMQk1UYjkwY3Ro?=
 =?utf-8?B?cVZZQXBNUmZheUVNVEtpWitiTlJBL2E1emNoUWlURG1FWmhjNGtOV0I1bllr?=
 =?utf-8?B?dzkwNWJrdy92SVJyeHBHVWE3YzQrTko3UDkxU05WMnEyRnlVcVBEbTh6V0ZZ?=
 =?utf-8?B?WUtzVnpmKzlJQzRZbldlOHZEUWZENS9sc1JsK2JESWZvUkcxWE1ON0RuLzQ2?=
 =?utf-8?B?MFQraDQ2bVRad1c3R1FGUkNGcjJMVEhlQXZZcXd6dk1CNWpSMDVVdStPUTRt?=
 =?utf-8?B?U3k3ck4xM3lPRUtKZnNwb250aU9yandtNGg5YlpLVWphWnVBZ3FxWWVRbXdx?=
 =?utf-8?B?MTNRejY1MTE1U2V4R2tNUklXMDk4WFBNNUxJK0d0RWdqTjJQTzdKWHpTV2VB?=
 =?utf-8?B?c0Vua1dEenlleW5HdVQ0T0YxSG1LWXBVN0F3RlI1czlYY2hmTEE2MEU1Q3NY?=
 =?utf-8?B?R2dKYlhKZEduNCtidU10WUxBQkJnR1YxYjNjWERFdHA4amZhM3JnMTVzMzNB?=
 =?utf-8?B?aS9FUzJKZ3p2SHQyZU5NdzcxOVNsRksvV2U2NHI3WExjSjJpYXMwOTR0REZi?=
 =?utf-8?B?eTltQUNvaWFNQ09SdE92Q0tEdlBpcGREeGtQT2RpUTdOc011eVhiN1R2SlZo?=
 =?utf-8?B?dUJ1WVllMUN2RDJ2dlRDeEZlZXdUa2JKNEJ3RERIQ3JHblVwY0ZpRDU1UG8x?=
 =?utf-8?B?SWs5Z0ZzNnFURDZvRUFoZXh0YWx3VGh1WkdzUDZWRjNENnhmRld4dUVuVWE5?=
 =?utf-8?B?NWtta1l4YysvamlvcEZXS0tHK01FMnhJL1o3REpuNCtXWXppUmh6VEI3dzVI?=
 =?utf-8?B?c1ZrTmh1ZmJPamNTWTZTVFl4SVNNT1JFeGYzNDBYemQ4djhnZXU3L1V4NnNM?=
 =?utf-8?B?VWtLa282bElKbU44amsrcW4yTkpRcm5seUxiWVA0aXRYT05pNTdyV3NqSjhI?=
 =?utf-8?B?dm41dE80QkUwU3BBdnhDUWNwNXFabzVENy9lMG1WdmdDTHYyQmt4MVkzWXlM?=
 =?utf-8?B?eTVsWjFlRzRzTGc4RllaTGpQaU1vQS95RWYvRjlzdjQ1RVhmcnhBQ3ZrN1Nz?=
 =?utf-8?B?YlFJS0RxbG4yU1JKT0hJUWhXenFsWUJMditTek5TbkxFaUV5em9rZVRmRWo3?=
 =?utf-8?B?OGIvT2prZHgraG9pNlRXOHRTUzkvb09JdHBnbTNpOUpidmFmQmwyRWcybk53?=
 =?utf-8?B?NTZXSXdHSVZsdWhGaVFDM1RobkhKTy9oRlRpZUtPRFErM1N1L2VHVW12MDhl?=
 =?utf-8?B?aVpiZk9RYnJnRTkwV1RzQVhmd0IzRnBEZDdjV1dPQzhVSlRIOEhUSDhhdmVx?=
 =?utf-8?B?UnBaa0lQa3Jqc1ZNcUxLa2oxYThxZUtndGJ4Y0hnZHRTazBabUFMdFBmSThl?=
 =?utf-8?Q?GRtNOHxRnbVqUGOiBdixyyw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fa87b2da-4c40-49c9-92d0-08daabb522b6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2022 18:19:28.7573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qUhQkVatRGxkLRX42lXC+A1YYGCjVGZ5DFKKS/bt1OFgAkLEUsPElaP1bS8GcocOVbEvW656b7eOLSYCjX83jDaspBR2ZvzRWYxWCv08JGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5659
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 04/16] drm/i915/perf: Determine gen12 oa
 ctx offset at runtime
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 11, 2022 at 08:47:00PM +0300, Jani Nikula wrote:
>On Mon, 10 Oct 2022, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
>> Some SKUs of same gen12 platform may have different oactxctrl
>> offsets. For gen12, determine oactxctrl offsets at runtime.
>>
>> v2: (Lionel)
>> - Move MI definitions to intel_gpu_commands.h
>> - Ensure __find_reg_in_lri does read past context image size
>>
>> v3: (Ashutosh)
>> - Drop unnecessary use of double underscores
>> - fix find_reg_in_lri
>> - Return error if oa context offset is U32_MAX
>> - Error out if oa_ctx_ctrl_offset does not find offset
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |   4 +
>>  drivers/gpu/drm/i915/i915_perf.c             | 154 +++++++++++++++----
>>  drivers/gpu/drm/i915/i915_perf_oa_regs.h     |   2 +-
>>  3 files changed, 129 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> index d4e9702d3c8e..f50ea92910d9 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> @@ -187,6 +187,10 @@
>>  #define   MI_BATCH_RESOURCE_STREAMER REG_BIT(10)
>>  #define   MI_BATCH_PREDICATE         REG_BIT(15) /* HSW+ on RCS only*/
>>
>> +#define MI_OPCODE(x)		(((x) >> 23) & 0x3f)
>> +#define IS_MI_LRI_CMD(x)	(MI_OPCODE(x) == MI_OPCODE(MI_INSTR(0x22, 0)))
>> +#define MI_LRI_LEN(x)		(((x) & 0xff) + 1)
>> +
>>  /*
>>   * 3D instructions used by the kernel
>>   */
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index cd57b5836386..b292aa39633e 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -1358,6 +1358,68 @@ static int gen12_get_render_context_id(struct i915_perf_stream *stream)
>>  	return 0;
>>  }
>>
>> +#define valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)
>> +static bool oa_find_reg_in_lri(u32 *state, u32 reg, u32 *offset, u32 end)
>> +{
>> +	u32 idx = *offset;
>> +	u32 len = min(MI_LRI_LEN(state[idx]) + idx, end);
>
>I don't understand any of this stuff, but why are the offset, index and
>length u32 instead of just, say, int?

I can use int, but the ce->engine->context_size is u32 and we are 
parsing the context image here, so I have just used the same type for 
offset, index, length.

Any guideline/recommendation to choose int over u32?

>
>> +	bool found = false;
>> +
>> +	idx++;
>> +	for (; idx < len; idx += 2) {
>
>I find the initialization of idx and len confusing, and thereby the
>entire loop too.

Considering that the context image is a collection of MI_LRI commands 
with each command having this format:

dword 0: MI_LRI
dword 1: reg offset
dword 2: reg value
dword 3: reg offset
dword 4: reg value
...

oa_context_image_offset() and oa_find_reg_in_lri() are parsing this 
context image to look for a specific reg_offset. Once the offset is 
known, the OA code programs the reg_value for the context.

Thanks,
Umesh

>
>BR,
>Jani.
>
>
>> +		if (state[idx] == reg) {
>> +			found = true;
>> +			break;
>> +		}
>> +	}
>> +
>> +	*offset = idx;
>> +	return found;
>> +}
>> +
>> +static u32 oa_context_image_offset(struct intel_context *ce, u32 reg)
>> +{
>> +	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
>> +	u32 *state = ce->lrc_reg_state;
>> +
>> +	for (offset = 0; offset < len; ) {
>> +		if (IS_MI_LRI_CMD(state[offset])) {
>> +			if (oa_find_reg_in_lri(state, reg, &offset, len))
>> +				break;
>> +		} else {
>> +			offset++;
>> +		}
>> +	}
>> +
>> +	return offset < len ? offset : U32_MAX;
>> +}
>> +
>> +static int set_oa_ctx_ctrl_offset(struct intel_context *ce)
>> +{
>> +	i915_reg_t reg = GEN12_OACTXCONTROL(ce->engine->mmio_base);
>> +	struct i915_perf *perf = &ce->engine->i915->perf;
>> +	u32 offset = perf->ctx_oactxctrl_offset;
>> +
>> +	/* Do this only once. Failure is stored as offset of U32_MAX */
>> +	if (offset)
>> +		goto exit;
>> +
>> +	offset = oa_context_image_offset(ce, i915_mmio_reg_offset(reg));
>> +	perf->ctx_oactxctrl_offset = offset;
>> +
>> +	drm_dbg(&ce->engine->i915->drm,
>> +		"%s oa ctx control at 0x%08x dword offset\n",
>> +		ce->engine->name, offset);
>> +
>> +exit:
>> +	return valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
>> +}
>> +
>> +static bool engine_supports_mi_query(struct intel_engine_cs *engine)
>> +{
>> +	return engine->class == RENDER_CLASS;
>> +}
>> +
>>  /**
>>   * oa_get_render_ctx_id - determine and hold ctx hw id
>>   * @stream: An i915-perf stream opened for OA metrics
>> @@ -1377,6 +1439,21 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>  	if (IS_ERR(ce))
>>  		return PTR_ERR(ce);
>>
>> +	if (engine_supports_mi_query(stream->engine)) {
>> +		/*
>> +		 * We are enabling perf query here. If we don't find the context
>> +		 * offset here, just return an error.
>> +		 */
>> +		ret = set_oa_ctx_ctrl_offset(ce);
>> +		if (ret) {
>> +			intel_context_unpin(ce);
>> +			drm_err(&stream->perf->i915->drm,
>> +				"Enabling perf query failed for %s\n",
>> +				stream->engine->name);
>> +			return ret;
>> +		}
>> +	}
>> +
>>  	switch (GRAPHICS_VER(ce->engine->i915)) {
>>  	case 7: {
>>  		/*
>> @@ -2408,10 +2485,11 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>>  	int err;
>>  	struct intel_context *ce = stream->pinned_ctx;
>>  	u32 format = stream->oa_buffer.format;
>> +	u32 offset = stream->perf->ctx_oactxctrl_offset;
>>  	struct flex regs_context[] = {
>>  		{
>>  			GEN8_OACTXCONTROL,
>> -			stream->perf->ctx_oactxctrl_offset + 1,
>> +			offset + 1,
>>  			active ? GEN8_OA_COUNTER_RESUME : 0,
>>  		},
>>  	};
>> @@ -2436,15 +2514,18 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>>  		},
>>  	};
>>
>> -	/* Modify the context image of pinned context with regs_context*/
>> -	err = intel_context_lock_pinned(ce);
>> -	if (err)
>> -		return err;
>> +	/* Modify the context image of pinned context with regs_context */
>> +	if (valid_oactxctrl_offset(offset)) {
>> +		err = intel_context_lock_pinned(ce);
>> +		if (err)
>> +			return err;
>>
>> -	err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
>> -	intel_context_unlock_pinned(ce);
>> -	if (err)
>> -		return err;
>> +		err = gen8_modify_context(ce, regs_context,
>> +					  ARRAY_SIZE(regs_context));
>> +		intel_context_unlock_pinned(ce);
>> +		if (err)
>> +			return err;
>> +	}
>>
>>  	/* Apply regs_lri using LRI with pinned context */
>>  	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
>> @@ -2566,6 +2647,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>>  			   const struct i915_oa_config *oa_config,
>>  			   struct i915_active *active)
>>  {
>> +	u32 ctx_oactxctrl = stream->perf->ctx_oactxctrl_offset;
>>  	/* The MMIO offsets for Flex EU registers aren't contiguous */
>>  	const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
>>  #define ctx_flexeuN(N) (ctx_flexeu0 + 2 * (N) + 1)
>> @@ -2576,7 +2658,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>>  		},
>>  		{
>>  			GEN8_OACTXCONTROL,
>> -			stream->perf->ctx_oactxctrl_offset + 1,
>> +			ctx_oactxctrl + 1,
>>  		},
>>  		{ EU_PERF_CNTL0, ctx_flexeuN(0) },
>>  		{ EU_PERF_CNTL1, ctx_flexeuN(1) },
>> @@ -4545,6 +4627,37 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>>  	}
>>  }
>>
>> +static void i915_perf_init_info(struct drm_i915_private *i915)
>> +{
>> +	struct i915_perf *perf = &i915->perf;
>> +
>> +	switch (GRAPHICS_VER(i915)) {
>> +	case 8:
>> +		perf->ctx_oactxctrl_offset = 0x120;
>> +		perf->ctx_flexeu0_offset = 0x2ce;
>> +		perf->gen8_valid_ctx_bit = BIT(25);
>> +		break;
>> +	case 9:
>> +		perf->ctx_oactxctrl_offset = 0x128;
>> +		perf->ctx_flexeu0_offset = 0x3de;
>> +		perf->gen8_valid_ctx_bit = BIT(16);
>> +		break;
>> +	case 11:
>> +		perf->ctx_oactxctrl_offset = 0x124;
>> +		perf->ctx_flexeu0_offset = 0x78e;
>> +		perf->gen8_valid_ctx_bit = BIT(16);
>> +		break;
>> +	case 12:
>> +		/*
>> +		 * Calculate offset at runtime in oa_pin_context for gen12 and
>> +		 * cache the value in perf->ctx_oactxctrl_offset.
>> +		 */
>> +		break;
>> +	default:
>> +		MISSING_CASE(GRAPHICS_VER(i915));
>> +	}
>> +}
>> +
>>  /**
>>   * i915_perf_init - initialize i915-perf state on module bind
>>   * @i915: i915 device instance
>> @@ -4583,6 +4696,7 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  		 * execlist mode by default.
>>  		 */
>>  		perf->ops.read = gen8_oa_read;
>> +		i915_perf_init_info(i915);
>>
>>  		if (IS_GRAPHICS_VER(i915, 8, 9)) {
>>  			perf->ops.is_valid_b_counter_reg =
>> @@ -4602,18 +4716,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  			perf->ops.enable_metric_set = gen8_enable_metric_set;
>>  			perf->ops.disable_metric_set = gen8_disable_metric_set;
>>  			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>> -
>> -			if (GRAPHICS_VER(i915) == 8) {
>> -				perf->ctx_oactxctrl_offset = 0x120;
>> -				perf->ctx_flexeu0_offset = 0x2ce;
>> -
>> -				perf->gen8_valid_ctx_bit = BIT(25);
>> -			} else {
>> -				perf->ctx_oactxctrl_offset = 0x128;
>> -				perf->ctx_flexeu0_offset = 0x3de;
>> -
>> -				perf->gen8_valid_ctx_bit = BIT(16);
>> -			}
>>  		} else if (GRAPHICS_VER(i915) == 11) {
>>  			perf->ops.is_valid_b_counter_reg =
>>  				gen7_is_valid_b_counter_addr;
>> @@ -4627,11 +4729,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  			perf->ops.enable_metric_set = gen8_enable_metric_set;
>>  			perf->ops.disable_metric_set = gen11_disable_metric_set;
>>  			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>> -
>> -			perf->ctx_oactxctrl_offset = 0x124;
>> -			perf->ctx_flexeu0_offset = 0x78e;
>> -
>> -			perf->gen8_valid_ctx_bit = BIT(16);
>>  		} else if (GRAPHICS_VER(i915) == 12) {
>>  			perf->ops.is_valid_b_counter_reg =
>>  				gen12_is_valid_b_counter_addr;
>> @@ -4645,9 +4742,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  			perf->ops.enable_metric_set = gen12_enable_metric_set;
>>  			perf->ops.disable_metric_set = gen12_disable_metric_set;
>>  			perf->ops.oa_hw_tail_read = gen12_oa_hw_tail_read;
>> -
>> -			perf->ctx_flexeu0_offset = 0;
>> -			perf->ctx_oactxctrl_offset = 0x144;
>>  		}
>>  	}
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>> index f31c9f13a9fc..0ef3562ff4aa 100644
>> --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>> +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>> @@ -97,7 +97,7 @@
>>  #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1
>>  #define  GEN12_OAR_OACONTROL_COUNTER_ENABLE       (1 << 0)
>>
>> -#define GEN12_OACTXCONTROL _MMIO(0x2360)
>> +#define GEN12_OACTXCONTROL(base) _MMIO((base) + 0x360)
>>  #define GEN12_OAR_OASTATUS _MMIO(0x2968)
>>
>>  /* Gen12 OAG unit */
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
