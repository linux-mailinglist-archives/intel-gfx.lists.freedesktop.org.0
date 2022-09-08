Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A63C65B1D3C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 14:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD1310EAEB;
	Thu,  8 Sep 2022 12:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8502010EADE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 12:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662640640; x=1694176640;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6y7gim1iphjFMOF++S6IDQCezDB/KL1nMnGvTKORm2U=;
 b=DnNUgbHqqRZoPgadtg63UMa3Kqijru9G6MTk4cOwl6BYQ9g81vOchI/S
 WzVMLJlkNiOBl+vwg5tbULkOXN6NDrthZrN571RePOx/hkL0/HjXEIMv9
 FGvQmPzVut2yMpYVUhQsJPQR6V2kgsSOoSIHZxw6wzx1l/FpKLbOAQph9
 kVKB/JhAi1vB+gQNZnrP7xLCbREphtNgeADkItbszgafa0jxDi4BOeFKD
 cm+PtD5OUWm0JefoS1DNvA4taPY3/cv07lTkPoohw+4B/dzjyFkAAgLXa
 n2fyDoVBN7Bc8qVNUrxMB61yYyw8U9YEQJ3VVaZfaHfPmm7tc9E513uYY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="383447220"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="383447220"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 05:37:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="943326841"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 08 Sep 2022 05:37:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 05:37:18 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 05:37:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 8 Sep 2022 05:37:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 8 Sep 2022 05:37:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPdQNcZ/WfTSLgsu0DTKcKSqpUsK+hQVSbtrhqrX6507yFABwJp147WR3+QlAMNI8mCREJiz7seZgoVCLYTMys2ecFMXO2OQOE1dH5d7fER72+A5z8x5Ok9znGIn/PPBv9yfWZkUU02TdNytScaUw5JX1FvF4f1Zw1IjPyuqwm4T42tgm+/Jl9+/PgQiqj+F9wepde2XiPEP/MqQKSLsNmjZy8ApWzRI/Hhk8T3ZGFPsR+BQgPop4o3B1VT/dfZ2iSFIVqCXpzoxFQULYtjpiRuKUizSBr2k4V3lD9gY+NiCGsJaUSQJYlQrvAQ9wMMbMSGXpjgDTUhXnvEROJGMRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xs/KU7Tw2B/c6KFQRlUtAq9wy2fs9Uyp1r8duQUGTk0=;
 b=nIKwsJzryuSjU1EievvdtO62//y0sXFmvkcO4KHJttm1q9J0cCDmTDn4j+GZFsYmFWAsMq/EtHXTmcUAELU3/CC20zHpHgjr4b0yyzOV8qF+4QYOG9wMkcTz2rmuSPeJTs57SMb0EvSwKiRUEZqW/qqbwBYju8eJZ7U2w6HTWaAW4+oYq2yipbN9tXq7+jtYzOBeLcu4FOUiVhHFy23W8Gk2hDn+3pprcNPJpgLsjzBSqxWIaVjskAT5UuUej36MSyRbZ950vsTKS/yVcWcnk5ZP8Ca24a1ergSrnCSUWvrG5xu8BrCBntT4aBTkMTzgDpIQkMGsdgddMvDX2F4Uhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5653.namprd11.prod.outlook.com (2603:10b6:8:25::8) by
 DS0PR11MB6494.namprd11.prod.outlook.com (2603:10b6:8:c2::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.11; Thu, 8 Sep 2022 12:37:17 +0000
Received: from DM8PR11MB5653.namprd11.prod.outlook.com
 ([fe80::38ce:5dd1:3d0:a7db]) by DM8PR11MB5653.namprd11.prod.outlook.com
 ([fe80::38ce:5dd1:3d0:a7db%6]) with mapi id 15.20.5612.012; Thu, 8 Sep 2022
 12:37:17 +0000
Message-ID: <4a2b75d2-4605-07a1-4b06-425aa09b4738@intel.com>
Date: Thu, 8 Sep 2022 18:07:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>, Ashutosh Dixit
 <ashutosh.dixit@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
 <e653fabb0b41552f988fbe38ae1d14b7db7f99b8.1662613377.git.ashutosh.dixit@intel.com>
 <YxnHFXN+w4IUfWXg@alfio.lan>
From: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
In-Reply-To: <YxnHFXN+w4IUfWXg@alfio.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0141.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::26) To DM8PR11MB5653.namprd11.prod.outlook.com
 (2603:10b6:8:25::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5653:EE_|DS0PR11MB6494:EE_
X-MS-Office365-Filtering-Correlation-Id: 82ed3f93-1d0a-4301-d64e-08da9196dd14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ho4t+TzXKDSh0P32qFxwS2T5+EDIVP8srtzQx6w97t2thK9GKCyZoq5HRyaGIoCtWL7J0Zyw2oQvqXU10I/WTLv5StLsfW1vNCEsbO0WwRzExH0HgamdysQ+LwX53sd7KO3H1iplxv1CV/ialk08jRdjCyRM/WcGUFcTy3JJE8PUXW/IeTzBQvMhajaC8gkHFFZz95eMKyjH/jsL15ce9EG/VpSNc3yNgIfVTbZy7t+yQjnUE0AJT3Wb5yhtM2DSLIfKDny6NwgH6GaOv7Fd+GB/o9eUW4MMoWOI9FpiArlpvD2JZJAMG3dXnRNIjmScs8ZCrVaIG8v/G58Xbg3ZhQNBibH/O4fDLOlfg2qMNbWybMI36PhVXTSh/r3SfgrcOx4sm+mT3vm4pwy6aFGHGFJpJeH7jxrnhuZthpklznVivxjgTscI4E2gyVx13724++cNDQrTQYvRil1xTBfOReA9tqMloestgIdWVqC/hSl04RCYrHw0X3BT6chtcUu7kaAur7NkWxKmEP7R3M3rKQhyAtcJGOUXNfEiPMl9+pmEsEjieD1VjV7BE6bvKo4L2mHixYhDGgNoyk9TLd1gTWlsDxCyePmLOKBQu5K8ANIlPwdglQGbYkiCuBt1JSNPQEtv+qEK9kFSK7uc4gNWILvCq+lJyRKRofpyAhCeCINu3G5Fkcf5lo+4IzDbA/HABt2jSLjlnfu8QV0CY8K4FSZupoQZQCzUHv5gHzLqrdL1v6Mq4VzzDxXa+97OkP+eu0CY+2VxWQcOe5kqDwHoezb8e9dU5jTif5PV8dhBxbk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5653.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(376002)(346002)(396003)(136003)(83380400001)(2616005)(186003)(66556008)(5660300002)(8676002)(4326008)(6512007)(31686004)(66476007)(66946007)(38100700002)(8936002)(31696002)(41300700001)(82960400001)(36756003)(2906002)(6486002)(6666004)(316002)(110136005)(6636002)(53546011)(26005)(86362001)(6506007)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3VMaGNMZkxhU3ZyMFI4cWMyWkpYQ2cvbjg0NnJtR01NMkxvdFowbUFFWHVR?=
 =?utf-8?B?MmVWZktUcmZFbkM2UDJQV2tkVUpzM3BoR1JRdGZzSWJxZjVxWGIrQjhNZ3l4?=
 =?utf-8?B?Vk5GY0JuTEVnMHJrTk1RbUFDTnBCYW1UUVRhNXdIeGtiUXFPVnVJdGZ0S3lz?=
 =?utf-8?B?UmxpTllZWnU4RGtCVFlBeFFsandXcWg1RmRobTNUbEZHa1pIUndpNUNFdVda?=
 =?utf-8?B?cmNicitUR3RWemt0UU1ucUorNHlUTVRNSDJJTmN4S01CbHFtbWJXVlVUNmlH?=
 =?utf-8?B?RVl5UXoxcTd3TVkyaFlYVE9QZ0JTblFjdUhmcTBNbGhXZjZnQXVJNk1zWjZJ?=
 =?utf-8?B?L09NK3lMeG9XTk1Qb0Nrb04vQ2RIWGNYS0JTTkVQMWorSmhTMGJ0VTFzclVU?=
 =?utf-8?B?V0FHRHloWEF6VGxCQVJZbUVyYVRZUVhvSWl2d3EzRFVVVmZTeEpWYVVVSkZz?=
 =?utf-8?B?WFE5WEUrT2s3dC9iOStCS0NERDlzNTJGbzZMM2NNZmQ4R1k0NHp3SzgrdE9I?=
 =?utf-8?B?WGttZE9oeVJHV1dEZW9sMWpOM01wQ0dCNnFNdkt0L3NML3Nkc2o5K2VjNkVs?=
 =?utf-8?B?T1BaRVc4d3ZjNit4clkrbm1POWZ0Z0c0VzJvS1NtM1ViQWFDWFdiRW03Wksw?=
 =?utf-8?B?NzJsaFBRUGpaZ3YvL0h5dngzUVA2dHpGUjJGNDdDaExOVEJTSHRKSWtBSktn?=
 =?utf-8?B?SnR0dmRYSEFqcTZGZzB3V0V6QTQ3Rk9FSzJJM0NkWFdFZWg4eHJzY3RNTnVz?=
 =?utf-8?B?QU84bmdzbytYeURzeHY1SEN1bjFjSkJsMmJOTmRpNE95RnV5aUVRWUpNR2N6?=
 =?utf-8?B?RDBPd1dTdTh5aFNnZWk2WjZGc3Frb1licGdEMi8vNDdicVZRVEc0SHpGeG9u?=
 =?utf-8?B?RTViaTdBYmN1SjNCTmlURkRtS0NHMzE0TWlWa25sMlJSOTZSTG5mQVNoWmxL?=
 =?utf-8?B?RG5nQkwzSW84bTNidjNuRkt2V3B4SVJHSkgwK0hBS3dOSlZ2cTJqUVd5dHlz?=
 =?utf-8?B?VzhWTXNXUVN1U1NIbkplanp0YVI2bXl2Q1pPemVzejdYRlNPaFd2MEV1OG11?=
 =?utf-8?B?NktFZXJxeTFGWVZ4WlB2aC9IRm1JWXdFeGQ2YzVQNU9BNnhudE9iS2VUVm9X?=
 =?utf-8?B?eUtPVEo5bFlkS3VQOTRRQWZaNTBOY1VKV05JRlFYLzVEV1JqMnJTUWdYSFdE?=
 =?utf-8?B?UkpiMElvRnlVU0VjTmhQMGowSDVMa3c4aFlxVUFpUDM3RjlqU014MTdDTFEx?=
 =?utf-8?B?N09TSXlUb3pVV25pQlFxT0lSbm1qcHlvQm1iMUxJRGRrOHdLVzNCNnJNajYv?=
 =?utf-8?B?STZ3eEZkRllnT3piT1k1K0pxWFkyZGlNNFZRNmlpL1FlZmdFVnBab1Z0K01t?=
 =?utf-8?B?TTJKSnArUFFzbFgrTFJwSk9YSTZNbVc3andSUVNrTnFoNzk3YWJ3ZEpxRUpl?=
 =?utf-8?B?UXlDVW9XSDd0WlZsYzcrNG1IUVJDMllabXFxTGlDY3c5eE9hMVptb2NvYWJU?=
 =?utf-8?B?ZW5LNUtGODNRcTRRYWFWaU5XSTI2VEcrVzlhcEx3TUNpRHRQTW5hR2JWNVZu?=
 =?utf-8?B?b1hBWWZzN2M1SVNKZkMrODhGZ252aXZuZEdGcDdoY1FPM2pYdmhMeTNOVHkz?=
 =?utf-8?B?SWdKLzQyNjRUV21aaERid3FuZEFNZlZWd2JiSjJIZ1hKQ0VGNUEyaUJBdWVp?=
 =?utf-8?B?cVlmckdFN29DMkE4REJ5ZHB2M3JaSDc0K0prcGpBQTdLbDZkNmJqMGFuQnhC?=
 =?utf-8?B?UVdhcDl5TWdQaUNRUUJpV29VYjBoQUxlYkNQNFpRUk0xVGlZMlVMckRkdDdu?=
 =?utf-8?B?NFNFY3ZQYmF2bDBzd3A4c0VkRW5ib2IxTGtzN284SHI5SkowQUpRd1FkZ29R?=
 =?utf-8?B?T1psS05KWElrc3RZdUlyK2ZoOTdNUHhjNG45bGhpUVNwdStvOHRSOWswMGNG?=
 =?utf-8?B?Y0h1WisxREpjRE5pa2w3OHp4dzhSUGNkN1FYUFFQd3hlOFFManZSNkdvTGRs?=
 =?utf-8?B?WU02aWJFbHFsUkkrQllKTTdUcVlXRU41eThpYWZWYU5WRkFRRTJrdlNESGhT?=
 =?utf-8?B?U0hRdHZxTHJGUWdoUlZYQndwNTgxVzlLVFZDdS83c0hsLy9qYlpHdzBSMHB0?=
 =?utf-8?B?dFVnaGVyWWhHLzNpS2dEdTRjdnRYUGQ1MkZxYjRKQ3FyQzMwa01velNDRmJN?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82ed3f93-1d0a-4301-d64e-08da9196dd14
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5653.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2022 12:37:17.1297 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cy/9vMR/AX3kaDCa5QAoFypODhoPlX1Cvkrruln8yOsyZjQ4dCHL3ayfTFNBBbRHvw1nHkCr/rZMOpwlFkIJGy9awLJFce7XFW2KyrL8BFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6494
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/gt: Fix perf limit reasons bit
 positions
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


On 9/8/2022 4:12 PM, Andi Shyti wrote:
> Hi,
>
> On Wed, Sep 07, 2022 at 10:21:53PM -0700, Ashutosh Dixit wrote:
>> Perf limit reasons bit positions were off by one.
>>
>> Fixes: fa68bff7cf27 ("drm/i915/gt: Add sysfs throttle frequency interfaces")
>> Cc: stable@vger.kernel.org # v5.18+
>> Cc: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Thanks Ashutosh!
>
>> ---
>>   drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++--------
>>   1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index c413eec3373f..24009786f88b 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -1794,14 +1794,14 @@
>>   
>>   #define GT0_PERF_LIMIT_REASONS		_MMIO(0x1381a8)
>>   #define   GT0_PERF_LIMIT_REASONS_MASK	0xde3
>> -#define   PROCHOT_MASK			REG_BIT(1)
>> -#define   THERMAL_LIMIT_MASK		REG_BIT(2)
>> -#define   RATL_MASK			REG_BIT(6)
>> -#define   VR_THERMALERT_MASK		REG_BIT(7)
>> -#define   VR_TDC_MASK			REG_BIT(8)
>> -#define   POWER_LIMIT_4_MASK		REG_BIT(9)
>> -#define   POWER_LIMIT_1_MASK		REG_BIT(11)
>> -#define   POWER_LIMIT_2_MASK		REG_BIT(12)
>> +#define   PROCHOT_MASK			REG_BIT(0)
>> +#define   THERMAL_LIMIT_MASK		REG_BIT(1)
>> +#define   RATL_MASK			REG_BIT(5)
>> +#define   VR_THERMALERT_MASK		REG_BIT(6)
>> +#define   VR_TDC_MASK			REG_BIT(7)
>> +#define   POWER_LIMIT_4_MASK		REG_BIT(8)
>> +#define   POWER_LIMIT_1_MASK		REG_BIT(10)
>> +#define   POWER_LIMIT_2_MASK		REG_BIT(11)
> Sujaritha, could you please check and r-b this one?
>
> Thanks,
> Andi

Looks good. I've checked the reg bits.

Reviewed-by : Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>

