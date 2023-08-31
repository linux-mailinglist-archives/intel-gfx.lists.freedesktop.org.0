Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B601978F2EF
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 20:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EFF10E6B4;
	Thu, 31 Aug 2023 18:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E99010E6B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 18:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693508139; x=1725044139;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S5ZJzZGhPO7+io7B6jiOzjuTlk5IMcDNpsbu9yYRYjM=;
 b=hqVBQBhsVbfd+xZl9ErBLSthcRnE21sDyJxyTfWlXeBJva+7+TQXLCp0
 w4wWxuHXllKs6/zaqdrGr+7JLMT4njJJbqnAdIBj5/NPR//pf+rDsJUCT
 ZzBPtZ+4HEuLKB8KKT6BvjJR6Ptc2z82KFeJyBvI6bZqHUoLxT/Mpa96w
 dSHsL//BPoCCDLPuA48ijHDmf4IBepToOWNIJy7G7ZPyHBSLPszfHdoF3
 0ewOyZzpuVXrKK9QzbS/7LrItjkufeZzr7x58zbD66M83tLSekbR9uRYN
 GjRtQ95OwIN+hVLTJPF1U1jEeWmgFE9uvwPumXBLhTTskGyQlYMgaeatc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="440019896"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="440019896"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 11:55:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="689459009"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="689459009"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 11:55:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 11:55:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 11:55:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 11:55:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kLJCIRb1SYxC2Rtj0vCvNoJJLQN/ywrFq+v/rDSjwdeUSVdMz3DBO1yk6022C6WdJsj4ifQbcuIATQAmP2NoXk8Qj0UexiJjtp4VbXsTAVS34XuNpcpnI7ZXe+dDOCJ1qkaMoF4itFju4ZOB2rBbp4aIHohYzq6+o9uBEWZByaUwy33/Ivg94WLz+uwBXQtz+gh00NACmOP62t9x7NAjegTFTsVuB5Jv0kMPyxflZZ9GORiLUozk5lwSvjOJFj+lTE2CiExlk3x+4unxIiCX6YjwDI7Nz+xg4rZCbmMhdALmBmvzfob1qdz73GW9f5qJybpGR1ky/gbpucJ81MNYDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xmZkC9XDk0x6x2ZbQLNqdBDHCuPbHusx5U85HeDZucI=;
 b=kBmvzYMzo1Fxex3pTNk3nWdCFkHRo1YLozFggghOSIfUBfcjtgve0I2N02Y8wZSamI0oQg6QWKmIl22y2zqiL5cpoRU1J/xZjP6n2AaQ14NtTyE9a0bDzfwt2o0WUwPOixGkX6cDVsew7Wh5hzFDYaOCx210Jez6eh0oxRe7eI7t4YVb4D1znzxjC684OIt2WLU+UBBG13oI2yzerC8O4oPJ/OnRgR3NRH/Gt+mXpplGZkWg1Y46LM+zV+koafyj17sPdFVoS3DX9C7r/6IxpuJeoIcRQtIdH3uxTfw2GDaT6b4EQOiYVFNGjlQzJR1+VmxqxiTxcE4OVcQvixwg9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.22; Thu, 31 Aug
 2023 18:55:34 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::903:6057:ad84:aee0]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::903:6057:ad84:aee0%6]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 18:55:33 +0000
Message-ID: <ee56312d-c043-51be-0e46-922bca69e8c2@intel.com>
Date: Thu, 31 Aug 2023 20:55:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Jonathan Cavitt <jonathan.cavitt@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
References: <20230831150955.36525-1-jonathan.cavitt@intel.com>
 <20230831150955.36525-2-jonathan.cavitt@intel.com>
 <20230831174047.GT6080@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20230831174047.GT6080@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0122.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::6) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: 21029322-3976-4d96-a444-08dbaa53dacf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tpteaLBpOug9DETYcfqK3/RbdJlsi3TnOlvzxhZ/vzGhTXmh6Td/VzSnfgzESXe+G27aTswyqSbZbAF4/fBJ6hOtd8GdSdNInWQBHUn0TpoylG+uagllgLmyduvyZ+tcTneJNjw3IQkw3PTebpKloBloB8o8c5am5/Fq4PXDraA7oSmcqLU+M+rFfISXPlxRdZKxY1Q02nfjFacsNeGM6H6Mh4qvaV+1FmhC+pny6ssrxxvf+k/1Sx9R5evUoy8EM9NdZUoEAGY8Gzq9owK7JJyQHVR5ASqOWwfbbLQHHdMTKCqU35o2O+u2T7ywf8UQWlDV9yqUWsR4SwVk9gVB6ShJGcXen291UO7VJ4vs2F8h/KawiU08g38UXDtv9pZRsBNOv3rQWwn7vLXgpcxqlKbN4i94dcoRvFCTeUS71Yt23YNTBYcFiaq+DxlQ/TxKcwFZN7swOuMw8Mn0lOl9cwDsyUjoL9hFgQfEroonnRABvP/3WzHRfA3IijeotSCMsSxh8Gde+0uMN0EAbXVq75jzz69QrV99PfXCy8dAeeVxyIo0AcQd3VoGi7IujP1q/LbfXj3OKIwky9yXNlUGnMHN8EoFv2dfa21Vf7IN6Ixy8dv9UCEBzK6V6tlw4g/nP6RNOAbe/zZDS3KUMIo+UA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(346002)(376002)(366004)(1800799009)(186009)(451199024)(86362001)(66476007)(6512007)(66556008)(41300700001)(66946007)(31696002)(2906002)(6636002)(316002)(4326008)(8676002)(8936002)(107886003)(2616005)(26005)(44832011)(36756003)(5660300002)(30864003)(83380400001)(38100700002)(82960400001)(6666004)(478600001)(31686004)(6506007)(6486002)(53546011)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXpoY29LWSs3VW5ZM2FwSnVxOTh4SmlYS1d3T1VkMWROMERwakhIblNjTkJF?=
 =?utf-8?B?dlBPbFhRMkY5cjM4anA4SFJBL1lreDJvOWtxWnJQS0tBUEpBV3VNMnJPQ2wx?=
 =?utf-8?B?WXlwMTQ4SHRESmEzWDhiUjVFVUFNWXZtaG5ZR1FkalRlYmdBRU9qTTY4c1J0?=
 =?utf-8?B?UVVoUFpTcTFvazd1cjdFNFdWSVJmc29aQmJ5RVlSNzZGSHRYRlNPTXJiYlQ3?=
 =?utf-8?B?NmZsaVBycnhvb1lqS05GZ0orRk40VHRQSEZEc1pCSGVWQ08yR2dqejBibk1i?=
 =?utf-8?B?VkpGRTNSSnpCWWZjNlVBMGZ5VjhuQ0JQRnEzUFJwaklEZzNQbUx6NWVuRmJN?=
 =?utf-8?B?T2p4eElXdjJvSGcxMmEzOFNGcUV0YkJDNm9sNUxHeExHcDJVSVN3dXRsZkRL?=
 =?utf-8?B?RUdodUQ2Z3B3K1d1UDZRdlNrZFVjVFpVdGZIdHVGbVgvekhyZlhQRFYrVWta?=
 =?utf-8?B?VStXNzF4ajhKb21ibWIwemVoNXhiT1Q5UlNZSmpFVW9zem01WHpwYTVPTzdn?=
 =?utf-8?B?aXNlY3ZSN2RvWHY4dE9vVE1yMXZQZGFrZHRQSzlSK2YwUURKQjhxNDltTUdw?=
 =?utf-8?B?UFhES0EzNFNpNzRuaEd5OVJzOXY1M0tEK0Vad202Y0VBUGgxQVphanc5SlZm?=
 =?utf-8?B?dFVrWXlpQlJESkw3ZmtnL0Q3K0NoR3NpL2s4SnBkL1lFQnhJNFpybTBWWXUv?=
 =?utf-8?B?VmozQUdwMlB0ZWJPT3RTcnJBSmQ2RGRxM0dkUXNESlo1SUZWeTBkTVIrNlhL?=
 =?utf-8?B?bVRJS2ZnbjRqbTUxMUdIb1VIMDdhY2NIRytoY0JoK0VMU0pudjlJYm9SM3R4?=
 =?utf-8?B?NjNkR3V2MDAvWFFmeXZzeG5lb2ZhZWtHRTd0OGZlUmRGeFdmRFBESGRibnNR?=
 =?utf-8?B?Vmp4U0MrSzRiSEZUS3Y4b3dBS3V4UkpDZUVPSXVibVVRU1MwZWhiZ2ZXMWFK?=
 =?utf-8?B?VG1sM1BtVEJjMVVoNDdyMFVxSjlmSWI4YWdMa2h4bUtJMTZ2ZzJpSFlYWkpG?=
 =?utf-8?B?V0FDeGJjUHprYWN5UVFSeFZvWFlyZm9qMWkvaTI4aktqRVZzVkRrVEdSeVor?=
 =?utf-8?B?Vk1XeCt1UGpZZ21pbDhUdllHa1l4Q0dkUnFzTmZsN08wSkFXakdERStQZ2hq?=
 =?utf-8?B?VUlvWk1LTzgvNHYxay93OC9wdjRxd204Z05sd1JpWTg1bFRxWllUYXc0SkNC?=
 =?utf-8?B?NW5GQWdEdFlDaFF2SkxhL3I5YU53bndLVVNrb05GNkxuZ2lwZTVxNFBVWFVz?=
 =?utf-8?B?eFdMa200SEt4bkxSNmRhcXVzZ2c2V1BxUkhLamcvTnNsZC83eXRocWJQR2Rl?=
 =?utf-8?B?Z2g2OWkwTW00YjlwTDZsSkd0Mmo5bk92UTI1bXRyMFZQVjZXVTRDdHg5ZER4?=
 =?utf-8?B?SnIwVUR3bmVzMUF2c1ZoSkVpdm8zNWpzZnhNbkhHWVRJRWwrWWNDd01QdFJO?=
 =?utf-8?B?cSt1TmlvSHpTM0NCS0M0WHppdmtsSlRGMXhvQ1BsNGd3ZmpuTWlzMTJ6MVBn?=
 =?utf-8?B?UnV0RUFmN2YrYzNYL0gxY3I0RVBMKys4aHl0ZDFlbGYzUUhldy9GWWV4RnhQ?=
 =?utf-8?B?RTlBT3lzeVVERTBFWGJ0aEZDcGZSWm8zd2lsYkxJUEtENzYxKzVYcFFOOXZO?=
 =?utf-8?B?NXF4dGwya0ZIM0lXcmhUZk5IUXV4anVjTU1YekpuR1E5bVhtUjY3cDZOOTFo?=
 =?utf-8?B?cVc1Ri9ZQ29VMkQ5QnJoRHVLdHFnMWJML3lmSEhjUThzbUk5NjNSOHpHcE9u?=
 =?utf-8?B?RGJNRlliT21nSW9HalJZTUZhTTREbDJsM1padG96WDdNV2xtcmVBWGx0d1Jl?=
 =?utf-8?B?TmtBTDZxK1dwdkg0U2NITENDcGlIc0dKbUM0WE1DVkpwOHlnT3VQeHRMdU9C?=
 =?utf-8?B?aWV2WVRDT3FOSHYxSExoL2c2ZWRxQ3E1eDcwcDQyL1NLcmtBZ3lRZDdNeEx1?=
 =?utf-8?B?UWxuNTFoL2JuaUpMSjNRWFhiMDE3Lzl6MUtwZW9kTEd5M0wxaWZFQnVOWVFN?=
 =?utf-8?B?V0plVXY0bzNtaTlncUpWU1d5UVJYVEoyUkJpZ05DTldzMzdFTlg0UGFOVzZT?=
 =?utf-8?B?dURNUG5IZytVSm5LRnNyYmFOT2drekY2TTZFUHVsWVpxeDI0bmxDVUhyK0t6?=
 =?utf-8?Q?kWne9dMqa2wFN/6wfqa61niA7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21029322-3976-4d96-a444-08dbaa53dacf
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 18:55:33.7693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Prm8egiqggAX/FmYDXZcRCLEA0kVJESWDT0McV+t1FwOYa4HK61jcokCJbkpRMyrnKyal2k2oWYsTvoJcGeDjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
 tomasz.mistat@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/31/2023 7:40 PM, Matt Roper wrote:
> On Thu, Aug 31, 2023 at 08:09:54AM -0700, Jonathan Cavitt wrote:
>> From: Nirmoy Das <nirmoy.das@intel.com>
>>
>> Apply WABB blit for Wa_16018031267 / Wa_16018063123.
>> Additionally, update the lrc selftest to exercise the new
>> WABB changes.
>>
>> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
> Drive-by comment:  since Nirmoy is already listed as the author of this
> patch, we probably don't need a c-d-b here.  However we do need his
> s-o-b line.

This needed to be amended with  git commit --amend --author=Jonathan 
Cavitt <jonathan.cavitt@intel.com> --no-edit

I wanted Jonathan to take over the authorship as Jonathan is working it.

Regards,

Nirmoy

>
>
> Matt
>
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_regs.h |   3 +
>>   drivers/gpu/drm/i915/gt/intel_gt.h          |   4 +
>>   drivers/gpu/drm/i915/gt/intel_gt_types.h    |   2 +
>>   drivers/gpu/drm/i915/gt/intel_lrc.c         | 107 +++++++++++++++++++-
>>   drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 ++++++++----
>>   5 files changed, 160 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
>> index 6b9d9f8376692..2e06bea73297a 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
>> @@ -118,6 +118,9 @@
>>   #define   CCID_EXTENDED_STATE_RESTORE		BIT(2)
>>   #define   CCID_EXTENDED_STATE_SAVE		BIT(3)
>>   #define RING_BB_PER_CTX_PTR(base)		_MMIO((base) + 0x1c0) /* gen8+ */
>> +#define   PER_CTX_BB_FORCE			BIT(2)
>> +#define   PER_CTX_BB_VALID			BIT(0)
>> +
>>   #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
>>   #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ */
>>   #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
>> index 239848bcb2a42..40cc0005dd735 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>> @@ -83,6 +83,10 @@ struct drm_printer;
>>   		  ##__VA_ARGS__);					\
>>   } while (0)
>>   
>> +#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
>> +	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
>> +	engine->class == COPY_ENGINE_CLASS)
>> +
>>   static inline bool gt_is_root(struct intel_gt *gt)
>>   {
>>   	return !gt->info.id;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>> index def7dd0eb6f19..4917633f299dd 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>> @@ -307,6 +307,8 @@ enum intel_gt_scratch_field {
>>   
>>   	/* 8 bytes */
>>   	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
>> +
>> +	INTEL_GT_SCRATCH_FIELD_DUMMY_BLIT = 384,
>>   };
>>   
>>   #define intel_gt_support_legacy_fencing(gt) ((gt)->ggtt->num_fences > 0)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> index 967fe4d77a874..1e0c1438f2cd1 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> @@ -828,6 +828,18 @@ lrc_ring_indirect_offset_default(const struct intel_engine_cs *engine)
>>   	return 0;
>>   }
>>   
>> +static void
>> +lrc_setup_bb_per_ctx(u32 *regs,
>> +		     const struct intel_engine_cs *engine,
>> +		     u32 ctx_bb_ggtt_addr)
>> +{
>> +	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);
>> +	regs[lrc_ring_wa_bb_per_ctx(engine) + 1] =
>> +		ctx_bb_ggtt_addr |
>> +		PER_CTX_BB_FORCE |
>> +		PER_CTX_BB_VALID;
>> +}
>> +
>>   static void
>>   lrc_setup_indirect_ctx(u32 *regs,
>>   		       const struct intel_engine_cs *engine,
>> @@ -997,7 +1009,13 @@ static u32 context_wa_bb_offset(const struct intel_context *ce)
>>   	return PAGE_SIZE * ce->wa_bb_page;
>>   }
>>   
>> -static u32 *context_indirect_bb(const struct intel_context *ce)
>> +/*
>> + * per_ctx below determines which WABB section is used.
>> + * When true, the function returns the location of the
>> + * PER_CTX_BB.  When false, the function returns the
>> + * location of the INDIRECT_CTX.
>> + */
>> +static u32 *context_wabb(const struct intel_context *ce, bool per_ctx)
>>   {
>>   	void *ptr;
>>   
>> @@ -1006,6 +1024,7 @@ static u32 *context_indirect_bb(const struct intel_context *ce)
>>   	ptr = ce->lrc_reg_state;
>>   	ptr -= LRC_STATE_OFFSET; /* back to start of context image */
>>   	ptr += context_wa_bb_offset(ce);
>> +	ptr += per_ctx ? PAGE_SIZE : 0;
>>   
>>   	return ptr;
>>   }
>> @@ -1082,7 +1101,8 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
>>   
>>   	if (GRAPHICS_VER(engine->i915) >= 12) {
>>   		ce->wa_bb_page = context_size / PAGE_SIZE;
>> -		context_size += PAGE_SIZE;
>> +		/* INDIRECT_CTX and PER_CTX_BB need separate pages. */
>> +		context_size += PAGE_SIZE * 2;
>>   	}
>>   
>>   	if (intel_context_is_parent(ce) && intel_engine_uses_guc(engine)) {
>> @@ -1370,12 +1390,92 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
>>   	return gen12_emit_aux_table_inv(ce->engine, cs);
>>   }
>>   
>> +static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce, u32 *cs)
>> +{
>> +	struct intel_gt *gt = ce->engine->gt;
>> +	int mocs = gt->mocs.uc_index << 1;
>> +	u32 addr = intel_gt_scratch_offset(gt, INTEL_GT_SCRATCH_FIELD_DUMMY_BLIT);
>> +
>> +	/**
>> +	 * Wa_16018031267 / Wa_16018063123 requires that SW forces the
>> +	 * main copy engine arbitration into round robin mode.  We
>> +	 * additionally need to submit the following WABB blt command
>> +	 * to produce 4 subblits with each subblit generating 0 byte
>> +	 * write requests as WABB:
>> +	 *
>> +	 * XY_FASTCOLOR_BLT
>> +	 *  BG0    -> 5100000E
>> +	 *  BG1    -> 0000003F (Dest pitch)
>> +	 *  BG2    -> 00000000 (X1, Y1) = (0, 0)
>> +	 *  BG3    -> 00040001 (X2, Y2) = (1, 4)
>> +	 *  BG4    -> scratch
>> +	 *  BG5    -> scratch
>> +	 *  BG6-12 -> 00000000
>> +	 *  BG13   -> 20004004 (Surf. Width= 2,Surf. Height = 5 )
>> +	 *  BG14   -> 00000010 (Qpitch = 4)
>> +	 *  BG15   -> 00000000
>> +	 */
>> +	*cs++ = XY_FAST_COLOR_BLT_CMD | (16 - 2);
>> +	*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) | 0x3f;
>> +	*cs++ = 0;
>> +	*cs++ = 4 << 16 | 1;
>> +	*cs++ = addr;
>> +	*cs++ = 0;
>> +	*cs++ = 0;
>> +	*cs++ = 0;
>> +	*cs++ = 0;
>> +	*cs++ = 0;
>> +	*cs++ = 0;
>> +	*cs++ = 0;
>> +	*cs++ = 0;
>> +	*cs++ = 0x20004004;
>> +	*cs++ = 0x10;
>> +	*cs++ = 0;
>> +
>> +	*cs++ = MI_BATCH_BUFFER_END;
>> +
>> +	return cs;
>> +}
>> +
>> +static u32 *
>> +xehp_emit_per_ctx_bb(const struct intel_context *ce, u32 *cs)
>> +{
>> +	/* Wa_16018031267, Wa_16018063123 */
>> +	if (NEEDS_FASTCOLOR_BLT_WABB(ce->engine))
>> +		cs = xehp_emit_fastcolor_blt_wabb(ce, cs);
>> +
>> +	return cs;
>> +}
>> +
>> +static void
>> +setup_per_ctx_bb(const struct intel_context *ce,
>> +		 const struct intel_engine_cs *engine,
>> +		 u32 *(*emit)(const struct intel_context *, u32 *))
>> +{
>> +	/* Place PER_CTX_BB on next page after INDIRECT_CTX */
>> +	u32 * const start = context_wabb(ce, true);
>> +	u32 *cs;
>> +
>> +	cs = emit(ce, start);
>> +
>> +	/* Skip PER_CTX_BB setup when not needed. */
>> +	if (cs == start)
>> +		return;
>> +
>> +	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));
>> +	while ((unsigned long)cs % CACHELINE_BYTES)
>> +		*cs++ = MI_NOOP;
>> +
>> +	lrc_setup_bb_per_ctx(ce->lrc_reg_state, engine,
>> +			     lrc_indirect_bb(ce) + PAGE_SIZE);
>> +}
>> +
>>   static void
>>   setup_indirect_ctx_bb(const struct intel_context *ce,
>>   		      const struct intel_engine_cs *engine,
>>   		      u32 *(*emit)(const struct intel_context *, u32 *))
>>   {
>> -	u32 * const start = context_indirect_bb(ce);
>> +	u32 * const start = context_wabb(ce, false);
>>   	u32 *cs;
>>   
>>   	cs = emit(ce, start);
>> @@ -1474,6 +1574,7 @@ u32 lrc_update_regs(const struct intel_context *ce,
>>   		/* Mutually exclusive wrt to global indirect bb */
>>   		GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
>>   		setup_indirect_ctx_bb(ce, engine, fn);
>> +		setup_per_ctx_bb(ce, engine, xehp_emit_per_ctx_bb);
>>   	}
>>   
>>   	return lrc_descriptor(ce) | CTX_DESC_FORCE_RESTORE;
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> index 5f826b6dcf5d6..ba0d6293ddeac 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> @@ -1555,7 +1555,7 @@ static int live_lrc_isolation(void *arg)
>>   	return err;
>>   }
>>   
>> -static int indirect_ctx_submit_req(struct intel_context *ce)
>> +static int wabb_ctx_submit_req(struct intel_context *ce)
>>   {
>>   	struct i915_request *rq;
>>   	int err = 0;
>> @@ -1579,7 +1579,8 @@ static int indirect_ctx_submit_req(struct intel_context *ce)
>>   #define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET / sizeof(u32))
>>   
>>   static u32 *
>> -emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
>> +emit_wabb_ctx_canary(const struct intel_context *ce,
>> +		     u32 *cs, bool per_ctx)
>>   {
>>   	*cs++ = MI_STORE_REGISTER_MEM_GEN8 |
>>   		MI_SRM_LRM_GLOBAL_GTT |
>> @@ -1587,26 +1588,43 @@ emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
>>   	*cs++ = i915_mmio_reg_offset(RING_START(0));
>>   	*cs++ = i915_ggtt_offset(ce->state) +
>>   		context_wa_bb_offset(ce) +
>> -		CTX_BB_CANARY_OFFSET;
>> +		CTX_BB_CANARY_OFFSET +
>> +		(per_ctx ? PAGE_SIZE : 0);
>>   	*cs++ = 0;
>>   
>>   	return cs;
>>   }
>>   
>> +static u32 *
>> +emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
>> +{
>> +	return emit_wabb_ctx_canary(ce, cs, false);
>> +}
>> +
>> +static u32 *
>> +emit_per_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
>> +{
>> +	return emit_wabb_ctx_canary(ce, cs, true);
>> +}
>> +
>>   static void
>> -indirect_ctx_bb_setup(struct intel_context *ce)
>> +wabb_ctx_setup(struct intel_context *ce, bool per_ctx)
>>   {
>> -	u32 *cs = context_indirect_bb(ce);
>> +	u32 *cs = context_wabb(ce, per_ctx);
>>   
>>   	cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
>>   
>> -	setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
>> +	if (per_ctx)
>> +		setup_per_ctx_bb(ce, ce->engine, emit_per_ctx_bb_canary);
>> +	else
>> +		setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
>>   }
>>   
>> -static bool check_ring_start(struct intel_context *ce)
>> +static bool check_ring_start(struct intel_context *ce, bool per_ctx)
>>   {
>>   	const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
>> -		LRC_STATE_OFFSET + context_wa_bb_offset(ce);
>> +		LRC_STATE_OFFSET + context_wa_bb_offset(ce) +
>> +		(per_ctx ? PAGE_SIZE / sizeof(u32) : 0);
>>   
>>   	if (ctx_bb[CTX_BB_CANARY_INDEX] == ce->lrc_reg_state[CTX_RING_START])
>>   		return true;
>> @@ -1618,21 +1636,21 @@ static bool check_ring_start(struct intel_context *ce)
>>   	return false;
>>   }
>>   
>> -static int indirect_ctx_bb_check(struct intel_context *ce)
>> +static int wabb_ctx_check(struct intel_context *ce, bool per_ctx)
>>   {
>>   	int err;
>>   
>> -	err = indirect_ctx_submit_req(ce);
>> +	err = wabb_ctx_submit_req(ce);
>>   	if (err)
>>   		return err;
>>   
>> -	if (!check_ring_start(ce))
>> +	if (!check_ring_start(ce, per_ctx))
>>   		return -EINVAL;
>>   
>>   	return 0;
>>   }
>>   
>> -static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
>> +static int __lrc_wabb_ctx(struct intel_engine_cs *engine, bool per_ctx)
>>   {
>>   	struct intel_context *a, *b;
>>   	int err;
>> @@ -1667,14 +1685,14 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
>>   	 * As ring start is restored apriori of starting the indirect ctx bb and
>>   	 * as it will be different for each context, it fits to this purpose.
>>   	 */
>> -	indirect_ctx_bb_setup(a);
>> -	indirect_ctx_bb_setup(b);
>> +	wabb_ctx_setup(a, per_ctx);
>> +	wabb_ctx_setup(b, per_ctx);
>>   
>> -	err = indirect_ctx_bb_check(a);
>> +	err = wabb_ctx_check(a, per_ctx);
>>   	if (err)
>>   		goto unpin_b;
>>   
>> -	err = indirect_ctx_bb_check(b);
>> +	err = wabb_ctx_check(b, per_ctx);
>>   
>>   unpin_b:
>>   	intel_context_unpin(b);
>> @@ -1688,7 +1706,7 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
>>   	return err;
>>   }
>>   
>> -static int live_lrc_indirect_ctx_bb(void *arg)
>> +static int lrc_wabb_ctx(void *arg, bool per_ctx)
>>   {
>>   	struct intel_gt *gt = arg;
>>   	struct intel_engine_cs *engine;
>> @@ -1697,7 +1715,7 @@ static int live_lrc_indirect_ctx_bb(void *arg)
>>   
>>   	for_each_engine(engine, gt, id) {
>>   		intel_engine_pm_get(engine);
>> -		err = __live_lrc_indirect_ctx_bb(engine);
>> +		err = __lrc_wabb_ctx(engine, per_ctx);
>>   		intel_engine_pm_put(engine);
>>   
>>   		if (igt_flush_test(gt->i915))
>> @@ -1710,6 +1728,16 @@ static int live_lrc_indirect_ctx_bb(void *arg)
>>   	return err;
>>   }
>>   
>> +static int live_lrc_indirect_ctx_bb(void *arg)
>> +{
>> +	return lrc_wabb_ctx(arg, false);
>> +}
>> +
>> +static int live_lrc_per_ctx_bb(void *arg)
>> +{
>> +	return lrc_wabb_ctx(arg, true);
>> +}
>> +
>>   static void garbage_reset(struct intel_engine_cs *engine,
>>   			  struct i915_request *rq)
>>   {
>> @@ -1947,6 +1975,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
>>   		SUBTEST(live_lrc_garbage),
>>   		SUBTEST(live_pphwsp_runtime),
>>   		SUBTEST(live_lrc_indirect_ctx_bb),
>> +		SUBTEST(live_lrc_per_ctx_bb),
>>   	};
>>   
>>   	if (!HAS_LOGICAL_RING_CONTEXTS(i915))
>> -- 
>> 2.25.1
>>
