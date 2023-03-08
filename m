Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF936B0C8F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 16:24:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F06C10E5FD;
	Wed,  8 Mar 2023 15:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A9F10E5FD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 15:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678289056; x=1709825056;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SKrLsQ737RyP255NhT6ZAT8g4OzvbMEWOET+HLVKskU=;
 b=SokDaaA/ZqLZDFa0n+BjAr/SNNzxDiQW8X7qlbXQzGGoy5/jmOvQodiK
 vH0E7kVG3Nwlq4Hszt6u7ciVWTcP8N7KjZxN1NVaSTtGqRS4XbE0mirWp
 mr2LsjimzMU67nUghacAVynDGwBF6twEtpvFCpPJtJ5ganbJ6Yuih7ar3
 ptfbU8r0OCYB6m+UwsXeO4XowQAmqNIi9QkPhQ5isV2W8a81PdfUg3WEJ
 ZNCp6sLqxxOlc2nQQSXM6o54bzNt0Kzw+o13Zjlv+lZZrgM0qGdjfdizQ
 hySLQG6G6oMnuXfKJYIG2Pffsbfr3UBbM5s1JKM0xKB/knmC7hYe0S/Pb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="401001773"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="401001773"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 07:24:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="745945509"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="745945509"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 08 Mar 2023 07:24:15 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 07:24:15 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 07:24:15 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 07:24:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ox/CWo3oluV9MxSDWKnZpv9u0qFiO0cQAP/PCq/Xn6/WOE8QznM9SHNVUTgFrY05uvlYZvSCRSWHSmriMMO292An015X9L+8ILej8jE1VdLY1tO7nUaTWnbfIAe/QNQ/Cw3KLp3nmKCTfzxSnb5Zv+IQ0BiX2Ke1vgk6ZqqCCSUFPI962NOk8fqLFHsNS7FU22js5/PGlT/5U94rC1wm/PKIELAmk5CwuZQM5awkdM1IwLiw0d9PrWoGKwbz3jh6qO5MoSp5G1ss1Uw2gMnrPsuDr5AvWKoJ41hoIakI3F6e772UgjY2/Gmpa7CGRzFTPOe5YViOBL1Xtfxspkac2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UDdLJCim0Wz73m1njJDTa7KfuUdNT9OQiBK7QxX65M8=;
 b=AbqAUq/QEf7fXlCMY9cduxKpQXlAdYOYon3TSiwYiF4Oy/sNbZpF0+b9RoUu84NpYmcInr7Z6Kv2j7SOcN/3sR190Krq6cE2NoUGx8j5H9I8bqgrz2xB+JYU+rlfxBIl9befaeRMVJe1XyBFCfB/pvy8FHOzHlB7rHqgsNk1kEqjK93JcInfHfXM9e7yMlvBOwGeQ0Ko3a+R4hkTgZNjznPTXUaURXZoaTlzswrrF8xrfl9nIlvpVtUzbggQGeLdWJpELahDi3tO1RZ08JDJ3DjMtQo9kuaof1zsIo/Bqw5K4JHzj44MvADZZf18N5JFivw7sG16okAU/s/QRh6NxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH7PR11MB7961.namprd11.prod.outlook.com (2603:10b6:510:244::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Wed, 8 Mar
 2023 15:24:14 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68%9]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 15:24:13 +0000
Message-ID: <b0ef1d69-c31d-85bf-cfd2-49c32d89b011@intel.com>
Date: Wed, 8 Mar 2023 20:54:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230308102109.2386712-1-badal.nilawar@intel.com>
 <20230308102109.2386712-3-badal.nilawar@intel.com>
 <ZAiNxOZ0Vhqou/1n@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <ZAiNxOZ0Vhqou/1n@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0051.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::13) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH7PR11MB7961:EE_
X-MS-Office365-Filtering-Correlation-Id: 65ac706e-0e82-4aa2-1f38-08db1fe92c20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F+t5+3SI87CBPGsd6rG4DQ/fy1UCofEW5VLrtZWtKUUIEwIFknncp333IaYoByVpOKm6S2z5P9GVkJI1yKtsXlOPEobmVdmyjGF4NOXKCTSNTbQ9TiFIsXiRSXVS3pbAcZlqae9/YKBklYHLt442VV2+TxSztTWRwSQFxoocyx1drYCAQwMmPyTBv9UfeoTy8qgkkgrrUn59GVsAUIEBbbiHN+3XqNDAYWVkAwhIEBeZPV0/dbpONSXlNaOkfVbfpWCCmrvqsueqNr0e88F/aPj7HoFkma6dtnyIlCGc+mLIi27dpSxdq3Vd/B7QuNjsbgiVLoNHZSUvH0VRCxeahxaegzBpaS/TSF554CGk/higEVAGNCb5xC2iEmgTohXwCs0NZTuWqI5mYNNTIwdLfBJEeEF7RfqKHvmYlvYjXCgadQPZAMnPeeTnxn5KR2xsnF+juqfR6F0Fqx3GQI7f/ObrswALTT0oe1PFdMKDNZ6tESk84njfd1xfyXWXh3dlkJodBjQ2OZYG/xmG3uahv/ahZAUlUdDN/VDl0aCb7popAFp+XYeaaLtUhvP+7GvXaLJ0Fl0REDFbaTn5BCfYJtZ0F/bCvzLC+3SWsXC256TBjQYvT7fUzNoHjYvjCwAogtAzyvT2UYqMigcZRha3M7e+eMcQYEMw74uhwdkmy9z/eO1GKSShgFSLFxMrRabzpF16j9tr7gbbsjyPzXBxjb2ye7W7Cr6f9W8mrXBLuAQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(366004)(376002)(136003)(39860400002)(451199018)(83380400001)(478600001)(186003)(36756003)(6636002)(38100700002)(82960400001)(66556008)(66476007)(66946007)(8676002)(4326008)(26005)(6512007)(2906002)(6506007)(53546011)(2616005)(6666004)(31696002)(5660300002)(107886003)(31686004)(316002)(37006003)(6486002)(41300700001)(8936002)(86362001)(6862004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T29zL3lWMnZ2dGhrTFBWTmNlcVZ3MHpPNW9wNi82Q20wWWxjY3dTdDRoVUtY?=
 =?utf-8?B?dWQ4QzVBSmtHS1dvSHZUY2V5NzgrTUdpUTBBeHlqVXFtbVczcC9YaSttTmYw?=
 =?utf-8?B?S2YzRWYwektmQWg4bktRNFBsVlE4alJDYXNOeng2ay9EQi9BUkh2bVQxZG04?=
 =?utf-8?B?YU95NW5YMXB0U0RSN0NEd0NhelZHZG9YYmcyUnFyM05haVFDQ09UeWhnMDZ3?=
 =?utf-8?B?R1lOTTNlUDExUHovcGNjdmVzU2ovN2F5SDBwNnBVUmsvS3l1ZGlkQ1ZVNktl?=
 =?utf-8?B?L05ZbTZhTDZ6b3gvbzVXNVBkSGY1YVlWSUIyQ2ZKRGgvS0RDZmdhdnU0QVJ1?=
 =?utf-8?B?T29rUUpVMW55Wmp0cGtBdytxcFFlUEFuamFCSnpFZVRxRit6NzdkOVFlbDMx?=
 =?utf-8?B?VmdPeXlqb3BlVTRid0hoRHUrdCtFOFJndXN6dURmaUxMOXA5OS82MHp6N1Q1?=
 =?utf-8?B?bjQ0OHBFbFNTY0RTWEt4OWc4ZTFvZk9PcWhrOWVMTGg0MkZ5Nk1zQjFLRWQv?=
 =?utf-8?B?VUgyMlNUQ09pSFdLZ2FBQUZIRVQ1RGJKRzhzWnNheFhuM1ZLNXFPWlVHeW1R?=
 =?utf-8?B?NWxtNitoenJ2UjNBQm1kNEVCNGI3SHFkZ0p3d2d1SEpaZGh1YUJGREFzVUN1?=
 =?utf-8?B?U0VLb3lDbmdjMzVNSk9FQ001bTB1enljdCtQK1JQVDlndmhVTGNydG9mdGFU?=
 =?utf-8?B?TGJMUWxLdWU1WFJEZmtNb0Iva0lVOXhFbXo0Y05ZZW5obHRiaVlHTVBaNUVV?=
 =?utf-8?B?Q2hMQ3ljTnNleUNlRnZEV2M1cnZsa1puV2x6UnFoZW53RE0za2hVakZ1RjZS?=
 =?utf-8?B?N213YVRIdmFLNm5JQ2c4Z2ZOd0Z2SXZtbFRFMUdYUGJjaldQTDZCdFBiU3hS?=
 =?utf-8?B?eUJtU3NNVHpKTVMzNi9tZVRRQ3NFOFpnalBEZUg1T3ZobGZycVFXcERqZUh2?=
 =?utf-8?B?K01GRmU0WTMvUHM3QTMrMDBBd1NEK1ZZQ0l1R1NKb2lsUiszMjFuOXJDNVlt?=
 =?utf-8?B?U2Z0OFdHT2JDdGp3dkZTUTEzNGZFZFl3VWNIKzUxME9aTGxrdWg3dGdoNzBR?=
 =?utf-8?B?SkVYaStnRW9OWHJEOFo5MTVoamVTR0wvcmVCa0lFdk9ZekhVV2JtN1F5Z3pR?=
 =?utf-8?B?VEIrZG5MbXdMVW82NVdxcVU5NHFTU3h2M2tKYlZkR2plRUFpQk9yVktUNlA3?=
 =?utf-8?B?S1RJWDdhU0pITE5sSlNZMENGL0hobjJVK014aDBUdllvRkxPMXE5THVGYmVT?=
 =?utf-8?B?ZGE0OEVOUWNWc0hQN01MZ1hKcDFBeDI0V1A5M2lCUEhWTUZ0eHNPalpDNWhR?=
 =?utf-8?B?NVRWd1F5L1BPUXVXdlhWTnBDblpSUWRJcnBpTTFQMTh0QU1JVnQwZlZzNnl2?=
 =?utf-8?B?WlpuRk1mTTdRQlR6NzlaaU1ybUJ0MDh5S0ZYNE15LzB6bmJNcE9pUmNnSys2?=
 =?utf-8?B?RThKand3Qjk3VW9ickwwNTJtcmc5bGFkdVhva2N2T1FVN1N4eXdVWnpBY3JE?=
 =?utf-8?B?TFVGcERzL0JTSlNaMGhrQUZHaDhUODZnNjBPZlFQU2Nueldydjh4K0huU2JB?=
 =?utf-8?B?MVFwb0xoRk1KM29QSTdnaVEwM0lKNWVCUU11WWJEcWdXSUpUbkFRZ3htK0xp?=
 =?utf-8?B?bUZ4QWhzZE5hbEk1WlJhdFFMWEw3N21OWG1xWU43ZjJUdFhFMFgxdVhWb21w?=
 =?utf-8?B?ZnY1SDhNSnVjRHZ4eDNkTE5tZW9UYittWHJ5MktZejVSK3hHQXp0NkcyUTZZ?=
 =?utf-8?B?dHErTExCYjRWNzZjTHdnWlRsNTU2cE5NczRORnRkb25IT2NpY0lWbFVFUjF4?=
 =?utf-8?B?UWNVMS90RGg5YmFKN1ZmcVVaUGJFdE5oTTFDV1BVR3ovSkpXT0dtbTlVYWxD?=
 =?utf-8?B?amx5YTdEZ1RQbkpDbmdrL2F0SEplQUZRS1pWZHhXTjdRR1h6QjVIQ1ZWQVNv?=
 =?utf-8?B?aWJmWm9MSkpCQUZ4c0IxUFJjNnpHYmROcUFpT0pORzJ1aXY0MytMd2wxdXRT?=
 =?utf-8?B?OS8wYXRaWnFSMElaU2wzalRIc3BWM2ZtejZndDVJWncyend3MVVsQ05rMVBj?=
 =?utf-8?B?dGRNL2dhOWUvdm9sZjlLNG1sU1NDakhqTHB1ZXNoUUh5NE5WdGw5YTBjQUM3?=
 =?utf-8?B?T2t0eU1iODJIdzN4d2V5dW54R2JkazNVRTVudjRVUXRqWlpXOC9PbnZ2VUxV?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65ac706e-0e82-4aa2-1f38-08db1fe92c20
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 15:24:13.5593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zSPpP7D9tQj1M/IbMBbb9PJx8Gbz6mFoqYwhujHAS+eXfd/4NZBL3DX01eVn8/4uF96cKYS1WP/SfT2ewb0xvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7961
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Disable MC6 for MTL A step
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
Cc: gregory.f.germano@intel.com, intel-gfx@lists.freedesktop.org,
 srikanth.nandamuri@intel.com, hima.b.chilmakuru@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Rodrigo,

On 08-03-2023 18:59, Rodrigo Vivi wrote:
> On Wed, Mar 08, 2023 at 03:51:09PM +0530, Badal Nilawar wrote:
>> The Wa_14017073508 require to send Media Busy/Idle mailbox while
>> accessing Media tile. As of now it is getting handled while __gt_unpark,
>> __gt_park. But there are various corner cases where forcewakes are taken
>> without __gt_unpark i.e. without sending Busy Mailbox especially during
>> register reads. Forcewakes are taken without busy mailbox leads to
>> GPU HANG. So bringing mailbox calls under forcewake calls are no feasible
>> option as forcewake calls are atomic and mailbox calls are blocking.
>> The issue already fixed in B step so disabling MC6 on A step and
>> reverting previous commits which handles Wa_14017073508
>>
>> Fixes: 8f70f1ec587d ("drm/i915/mtl: Add Wa_14017073508 for SAMedia")
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> 
> This patch should probably come before the revert itself.
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for RB. I will put this patch before revert.

Regards,
Badal Nilawar
> 
>> ---
>>   drivers/gpu/drm/i915/gt/intel_rc6.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> index 5c91622dfca4..f4150f61f39c 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> @@ -486,6 +486,7 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
>>   static bool rc6_supported(struct intel_rc6 *rc6)
>>   {
>>   	struct drm_i915_private *i915 = rc6_to_i915(rc6);
>> +	struct intel_gt *gt = rc6_to_gt(rc6);
>>   
>>   	if (!HAS_RC6(i915))
>>   		return false;
>> @@ -502,6 +503,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>>   		return false;
>>   	}
>>   
>> +	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
>> +	    gt->type == GT_MEDIA) {
>> +		drm_notice(&i915->drm,
>> +			   "Media RC6 disabled on A step\n");
>> +		return false;
>> +	}
>> +
>>   	return true;
>>   }
>>   
>> -- 
>> 2.25.1
>>
