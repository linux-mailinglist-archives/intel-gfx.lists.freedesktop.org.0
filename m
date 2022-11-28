Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4046463B630
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 00:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CF610E355;
	Mon, 28 Nov 2022 23:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEDA10E355
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 23:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669679902; x=1701215902;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=81/xnWZFZJAQZMdiDo2TGjVaTvTemHisA0T5dHc3Wro=;
 b=Mw21CiW9s83okcTK7Hyq98DUqeJ3VuJNMI6CctlONBFJXan3tK9k/r2Q
 Oy3shiBjpt8slZjJ0yOHhtXdfGlnFX/aBC5wRycsxFc+kReXvVBq4Rl64
 vpbBHm/YBLYlnveEWsGOHNv4cFQoEF4bwbxVlJV7RQMo98gYK9RETBcgw
 BWx7tmGKdzMTWITB1ri+7xYmk1OZdIstNveKmwP+V0r5dDDRj61NcfEL9
 13qqR6B6Ukdr1DwgFCrQaF2bVRtH7l9g3ONtUdRGpLVuevrA4/PXb3xhN
 ogZqzSRclPI/yUON4/vxd7vkPfFgsmD+2b+uTt00BCRwcORv5V63lcKnC w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="302563438"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="302563438"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 15:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="818012417"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="818012417"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 28 Nov 2022 15:58:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 15:58:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 15:58:20 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 15:58:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BYBWdsadDDSy0OM9itfZfhGrShouH5zRfQA3Gid1TwwvuJ66vp7TMrDpSH1s3wWcHOlkhRDvLr6IRMWHJOsBZwPRMy//1RF5mYkmEL9xB2aTkd9ItXb+oTVXpbZt5HsrGgBqhIdAWk/9m5QBWf8kprbJ3XSpM6Hceh+FFUQwtWxm4VlGoMN33EdjwYDmk7N2Sqrunm3dSvLUGtTluNUooT1Vo0essmu6m172eJKF4KYmIysgSWqnjOhs1wDdXJJlg560rTc/aKA4AXAfGkqICxDJ+2CWcUZG6cjRrEh9FKkfmzPoxpU+zVuVpBwGiDNumNG7ptkK/QIu95ewYg6aLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/eoEb8VlYdG9yiDdOZ2EnmXSwiBYnvWc6poEpIOlpqE=;
 b=geWVhrLnA1MCteEY3H91vUz+v9gzhrlR1RLSbMMS46HvAkyLuC71wkBHHwuNmyNEHQbuit66+cP2g74o1PAy1qeH1cCuH9SQvAObELkafKZUUA+glNT//UgKtQOpRwF1hgHgvVACeGbNrcg3N3e/dtW2lTELZxWr+WIjrn2b9TDSW1tDLAgUosb+oBl09smfRjs1F9GarMnLvontxLeM70alQiHS7kmQCk860HmAPmQREBcs/Drm1Ps4td9ypzH58QteEcBls+VrN63q0MeHZehfhAwdkZmZVs6rcT28SOkKbVWFpVFTynz0haoPvWJNZaYCVokY3E9uMlwkabIIYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by DS7PR11MB6294.namprd11.prod.outlook.com (2603:10b6:8:96::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Mon, 28 Nov
 2022 23:58:18 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd%8]) with mapi id 15.20.5857.023; Mon, 28 Nov 2022
 23:58:18 +0000
Message-ID: <cefefc14-0698-5049-a88d-5fcf09aab8b1@intel.com>
Date: Tue, 29 Nov 2022 05:28:07 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: "Yang, Fei" <fei.yang@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <e65f3bc9dc0f90bc95bd529d2822568ac596be28.1669629369.git.aravind.iddamsetty@intel.com>
 <BYAPR11MB2567D3C27AF5E87453E722FA9A139@BYAPR11MB2567.namprd11.prod.outlook.com>
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
In-Reply-To: <BYAPR11MB2567D3C27AF5E87453E722FA9A139@BYAPR11MB2567.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0210.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::19) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|DS7PR11MB6294:EE_
X-MS-Office365-Filtering-Correlation-Id: 7bb9c1d4-7f88-4897-3dd9-08dad19c6ba0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nNz/PiYqGo/oZa8b72WPdZTMKOaxmROgkpmz7wC+Xvkee0pqs1qc8svk+RthPpAjj3pja/jfOyY1tZDJUfNailxzw5QFL/d9KCFlmMTTrg2zB6qtlf976BeN3oaFWXcbOw3PPY0IOjCWA0YZ1up8owQSm5qYO5JOelkRuU1DvnadbWAjhZWjNdfyjLUf+oEUCReskvNwYl/9rZm1X3yMi1n48ewPj0dUZoUdIUkZE3KmqGLbHdcdz0XdhmqYNg18/dO1aoudBjt51bPa/vyr7de9TMniVV0jZ74xysZodtyyweg9gwVcN1ZLbx8geyaGnZk3J3jgYtG+0WVwC6eoITJo+DX2yeDaBjSNbTgYiZAi2a+2M6TCZxT4qfhqXos8QeiUSh/jM2l2FWv4vAX3pDYsYsuP8RcbqbRcoSox/N1yoBK5LV5larT709kpbnHFJghwTMaYNu4FlprwHIs1T+jx5O2p4+uOpj/+KCb0fRwUB3aEY20YRHn+di+UkLLYOCo5v4VW3Jq81DsvkS8nAI/CHoMMxJQ+3HFWNESfP/IdOR3d9Y41qkM1iRZ/vIRWsx0rUCGSZiDOHacR8nHdQlaHYtWxoGyfqp3wdP1JibqzE6bU06capcWfn1y9OULs+m+c9/hd5ZxnAnP18lvazexmdGQEn3owxARqXSormK9OqWfl/DHJ8GDrhBh6YjU7KbOFqz3leiN1s4RaNU/FYe7xxZHED5d1Qjd4yXuDl9M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(366004)(346002)(136003)(451199015)(478600001)(316002)(2906002)(66946007)(6486002)(110136005)(54906003)(36756003)(6666004)(83380400001)(38100700002)(82960400001)(107886003)(26005)(6506007)(53546011)(86362001)(31696002)(6512007)(186003)(2616005)(5660300002)(8936002)(41300700001)(66476007)(66556008)(31686004)(4326008)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUlJUG9Dbjl4QWtJTUxNc3IvQzJKRTJBRXZBbmxTUWtGVjZoWkIxUXFPSzI0?=
 =?utf-8?B?MkFvMlBhdlJMZlRJcjUzZ1l0aGJ6Q0hoeFluYys5YlRocFg1czZ6NndzZ3k5?=
 =?utf-8?B?U0lTd2o3U3JBL2tEbDNYT2tOUHRlMUFISUpiMHhWeXd5TUNudk04RUZlcWJ3?=
 =?utf-8?B?V1NqbTMzd3BTUUZPSjNaY3A0NEZIMHVoc3FhK2wvN2FtVTJSMVVBeStFNmtM?=
 =?utf-8?B?QVhLVHlOVHZBVXRBcVNmOE1LYVZhbjE3MjgrOWNhV0Zqcm40OTJVZXVWaUZk?=
 =?utf-8?B?a0cwRWx5bjdrSUdhMTNxWHk1Sm9HU2QxTlRmSzdiK2NLOStIZkthQVNpN1Jy?=
 =?utf-8?B?NllIR3V0bVQxNXRTczZrQS85RlJwd091bXdGM2NpUktESUpYajNnUlQ3MHQ0?=
 =?utf-8?B?dHBxY2YyUzRDZGNrRktGYzhkWUNCVTMvczdGcjMvVDlOQWpGaG50Y25aZGZt?=
 =?utf-8?B?bFJ6TzJtNVdmMzR5dmI2aVdaVlZkVlNwNGsxTjBDcUw0ODBPZ0hSWlQxbUlj?=
 =?utf-8?B?WkVMMGc5SFVpTnlOM2NsZjMzcWJhaEdwcFB6bS9pa3p6VVQxbklSaDZCWUEx?=
 =?utf-8?B?clJMVWt0djVBNUswVU4xMWxZczVJbE1mc2JYUlhJVzRqRDBOUWh3OVJMR1Zi?=
 =?utf-8?B?cnZvSm04bkNaS1FyMFNvakJvYTJtSlo2NUNGd05yejBybnJ4Z2tVeGZIMEtw?=
 =?utf-8?B?RUsxQndqZFZIUkdRMXNYM3pVNVhMS3M0NTRUU3V4Zm1mTGtUSDdZUlJBTTdY?=
 =?utf-8?B?RXFENVBwNUdsZi9PU3p0dGVUSnZKMGJycGdJU21vZFpNbTNLeTNOcmtVTzYz?=
 =?utf-8?B?T3BKNCtKSHUrd2hocGpvbFNvMXFFeFFvZHlvTHpHSEF3KzVyT2Y0cU1SRDAw?=
 =?utf-8?B?NnNMYWhRanFWSzZtbVg3cUhaTTFBTitSYklaTTk4ai9SOFp0UWVaU3VWZVJw?=
 =?utf-8?B?VGsvWGtweEgycFhYemUyMW5Yb1hFMis4ekxLc2pYM2xaSUUzci9MRWJGc3c2?=
 =?utf-8?B?VmVzM2U4Yk9WZC9sWk1oN0lNRXlyT1dPT3kyRkltZWtSRTNid2YwazBHNHlH?=
 =?utf-8?B?Y0UzZnhzUkVuMFBhUVdRMGp3SVUrRUxjb1VXcUNva2YrUWlsVGRNdGh3TDZV?=
 =?utf-8?B?cEp5L1dYandkNDZGWHpVU09hYk5WL0c2TEU2ZTFoZ0lVUWZlUEVocUthaHVI?=
 =?utf-8?B?djBkM0N1Z0pmRGxhMGZiM3JEUUY1cVdwTzR6clRJS0hncVYyRGtBb3FnTkps?=
 =?utf-8?B?RWNIV2l6U1YzcnltcmtSdkpRR0tFUUdlMmdDUWFOUUoyR2hoL3hXSWhYVW1Y?=
 =?utf-8?B?bDIzWjZkdG9hU0puS2JoNURERkZRblYvbFJNTjVIaGJKUnNuYUZkRDdtTEdZ?=
 =?utf-8?B?Zkp2dGNBNkJJdVhuK1pmTEYyZldrblgvQ3RIN05FSTZRV3dWNEFtdzFWUmw0?=
 =?utf-8?B?R2xBWWRIK3J3T3ExTnlTZEhSNTdZM3N2cUtFK2ZHUEQ5VTMyWVNJbWh3N3B1?=
 =?utf-8?B?ZnBwNlBxY2p3dlJ1T0ZRT29FU3dsOEMzdUZXTklVQXpkR1dDZFMvTzd6c2sr?=
 =?utf-8?B?T3E1SkpDelFPZG1rcDh1Ynhkd012M2NhcGxwalNwZmhhSlg4WE8xQWFtRit1?=
 =?utf-8?B?bEVEOHk5b296OTVuVkp1WW9vbUVDMjZaUFU2RitLUU50dG1oL3RMcW82Rzdw?=
 =?utf-8?B?OGdRQS9BN1lUZEhJcWJQaHBpdEZORlU0SU05ZUdOMXV5Sjg3d0hmS2NnT3NE?=
 =?utf-8?B?SEFnWmVCZVMzQ2N6YjdKTWgzTEhYdkNSOHQ0Um4wSVhuVmtEemg2Z3lkYzZ5?=
 =?utf-8?B?K3dpN2FqYTVLT3UrWnkwRDdZK20wYU1DckhwazIvTnJVK1BWTVQ3OG9CVEVV?=
 =?utf-8?B?RkhkY0QwaGQyWWs2UVdyalpERnBENlRMMGVGQ2t5M2NjbEFsWGhHMHl0OTgy?=
 =?utf-8?B?ZGJwL3dlMVR2eVhnNndIZjhxdThDVFZxK0luR2lRd0Z6d0kwN202SjVnT1Rt?=
 =?utf-8?B?bVdIS0FiQ3c4SS9yUThUcmt5bHhzZmJFQUc2L0lVZ3JnQjhQSU5wNmJibmdZ?=
 =?utf-8?B?NGdJQVdXOG1Oak1jV0hkSUd3ODM3VWhTRi9WTWw3dDJ6RkRSamxPR3Z3UTVX?=
 =?utf-8?B?WXcxUEgzcXB3dGpDSE5VNzAxanBKRjN2K3Y0SnhiV0EzR2Jld3lzQkFIU3B1?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bb9c1d4-7f88-4897-3dd9-08dad19c6ba0
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 23:58:18.4299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lnOU5Wl1l5wMjy61e502Qirl0RUJgMtF4gVMItdqipX1wKEm5yAjeuscoMGvDU2u+G7t9smYhRpYXt15enYEz2poL2h228Odw2V5uoTB2ag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/mtl: Define new PTE encode for
 MTL
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 29-11-2022 01:22, Yang, Fei wrote:
>> From: Iddamsetty, Aravind <aravind.iddamsetty@intel.com>
>> Sent: Monday, November 28, 2022 2:14 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; Yang, Fei <fei.yang@intel.com>
>> Subject: [PATCH 2/3] drm/i915/mtl: Define new PTE encode for MTL
>>
>> Add a separate PTE encode function for MTL. The number of PAT
>> registers have increased to 16 on MTL. All 16 PAT registers are
>> available for PPGTT mapped pages, but only the lower 4 are
>> available for GGTT mapped pages.
>>
>> BSPEC: 63884
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Co-developed-by: Fei Yang <fei.yang@intel.com>
>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dpt.c |  2 +-
>>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c     | 43 ++++++++++++++++++++----
>>  drivers/gpu/drm/i915/gt/gen8_ppgtt.h     |  4 +++
>>  drivers/gpu/drm/i915/gt/intel_ggtt.c     | 36 ++++++++++++++++++--
>>  drivers/gpu/drm/i915/gt/intel_gtt.h      | 13 +++++--
>>  5 files changed, 86 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
>> index ad1a37b515fb..cb8ed9bfb240 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>> @@ -298,7 +298,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>       vm->vma_ops.bind_vma    = dpt_bind_vma;
>>       vm->vma_ops.unbind_vma  = dpt_unbind_vma;
>>
>> -     vm->pte_encode = gen8_ggtt_pte_encode;
>> +     vm->pte_encode = vm->gt->ggtt->vm.pte_encode;
>>
>>       dpt->obj = dpt_obj;
>>
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> index 4daaa6f55668..4197b43150cc 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> @@ -55,6 +55,34 @@ static u64 gen8_pte_encode(dma_addr_t addr,
>>       return pte;
>>  }
>>
>> +static u64 mtl_pte_encode(dma_addr_t addr,
>> +                       enum i915_cache_level level,
>> +                       u32 flags)
>> +{
>> +     gen8_pte_t pte = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
>> +
>> +     if (unlikely(flags & PTE_READ_ONLY))
>> +             pte &= ~GEN8_PAGE_RW;
>> +
>> +     if (flags & PTE_LM)
>> +             pte |= GEN12_PPGTT_PTE_LM | GEN12_PPGTT_PTE_NC;
>> +
>> +     switch (level) {
>> +     case I915_CACHE_NONE:
>> +             pte |= GEN12_PPGTT_PTE_PAT1;
>> +             break;
>> +     case I915_CACHE_LLC:
>> +     case I915_CACHE_L3_LLC:
>> +             pte |= GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
>> +             break;
>> +     case I915_CACHE_WT:
>> +             pte |= GEN12_PPGTT_PTE_PAT0;
>> +             break;
>> +     }
> 
> How are the PAT indices greater then 3 being handled for ppgtt?
The default cachelevels we have will use upto 3 indices only, and also
presently we do not have way to select PAT index, when in future we
support setting PAT Index via VM_BIND we shall extend this as well.
> 
>> +
>> +     return pte;
>> +}
>> +
>>  static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)  {
>>       struct drm_i915_private *i915 = ppgtt->vm.i915; @@ -427,7 +455,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>>                     u32 flags)
>>  {
>>       struct i915_page_directory *pd;
>> -     const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>> +     const gen8_pte_t pte_encode = ppgtt->vm.pte_encode(0, cache_level,
>> +flags);
>>       gen8_pte_t *vaddr;
>>
>>       pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2)); @@ -580,7 +608,7 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
>>                                  enum i915_cache_level cache_level,
>>                                  u32 flags)
>>  {
>> -     const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>> +     const gen8_pte_t pte_encode = vm->pte_encode(0, cache_level, flags);
>>       unsigned int rem = sg_dma_len(iter->sg);
>>       u64 start = vma_res->start;
>>
>> @@ -743,7 +771,7 @@ static void gen8_ppgtt_insert_entry(struct i915_address_space *vm,
>>       GEM_BUG_ON(pt->is_compact);
>>
>>       vaddr = px_vaddr(pt);
>> -     vaddr[gen8_pd_index(idx, 0)] = gen8_pte_encode(addr, level, flags);
>> +     vaddr[gen8_pd_index(idx, 0)] = vm->pte_encode(addr, level, flags);
>>       drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr));  }
>>
>> @@ -773,7 +801,7 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct i915_address_space *vm,
>>       }
>>
>>       vaddr = px_vaddr(pt);
>> -     vaddr[gen8_pd_index(idx, 0) / 16] = gen8_pte_encode(addr, level, flags);
>> +     vaddr[gen8_pd_index(idx, 0) / 16] = vm->pte_encode(addr, level,
>> +flags);
>>  }
>>
>>  static void xehpsdv_ppgtt_insert_entry(struct i915_address_space *vm, @@ -820,7 +848,7 @@ static int gen8_init_scratch(struct i915_address_space *vm)
>>               pte_flags |= PTE_LM;
>>
>>       vm->scratch[0]->encode =
>> -             gen8_pte_encode(px_dma(vm->scratch[0]),
>> +             vm->pte_encode(px_dma(vm->scratch[0]),
>>                               I915_CACHE_NONE, pte_flags);
>>
>>       for (i = 1; i <= vm->top; i++) {
>> @@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
>>        */
>>       ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>
>> -     ppgtt->vm.pte_encode = gen8_pte_encode;
>> +     if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
>> +             ppgtt->vm.pte_encode = mtl_pte_encode;
>> +     else
>> +             ppgtt->vm.pte_encode = gen8_pte_encode;
>>
>>       ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
>>       ppgtt->vm.insert_entries = gen8_ppgtt_insert; diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> index f541d19264b4..c48f1fc32909 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> @@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>                        enum i915_cache_level level,
>>                        u32 flags);
>>
>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>> +                     enum i915_cache_level level,
>> +                     u32 flags);
>> +
>>  #endif
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 8145851ad23d..ffe910694ca0 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -237,6 +237,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>               intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);  }
>>
>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>> +                     enum i915_cache_level level,
>> +                     u32 flags)
>> +{
>> +     gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
>> +
>> +     GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
>> +
>> +     if (flags & PTE_LM)
>> +             pte |= GEN12_GGTT_PTE_LM;
>> +
>> +     switch (level) {
>> +     case I915_CACHE_NONE:
>> +             pte |= MTL_GGTT_PTE_PAT1;
>> +             break;
>> +     case I915_CACHE_LLC:
>> +     case I915_CACHE_L3_LLC:
>> +             pte |= MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
>> +             break;
>> +     case I915_CACHE_WT:
>> +             pte |= MTL_GGTT_PTE_PAT0;
>> +             break;
>> +     }
> 
> PAT index 4 is valid for GGTT, right? which means we need to define
> MTL_GGTT_PTE_PAT2.
No, GGTT at max can use 4 PAT indexes i.e 0 - 3.

Thanks,
Aravind.
> 
> -Fei
> 
>> +
>> +     return pte;
>> +}
>> +
>>  u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>                        enum i915_cache_level level,
>>                        u32 flags)
>> @@ -264,7 +291,7 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>>       gen8_pte_t __iomem *pte =
>>               (gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>>
>> -     gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>> +     gen8_set_pte(pte, ggtt->vm.pte_encode(addr, level, flags));
>>
>>       ggtt->invalidate(ggtt);
>>  }
>> @@ -274,8 +301,8 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>>                                    enum i915_cache_level level,
>>                                    u32 flags)
>>  {
>> -     const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
>>       struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +     const gen8_pte_t pte_encode = ggtt->vm.pte_encode(0, level, flags);
>>       gen8_pte_t __iomem *gte;
>>       gen8_pte_t __iomem *end;
>>       struct sgt_iter iter;
>> @@ -984,7 +1011,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>>       ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>>       ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>>
>> -     ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>> +     if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>> +             ggtt->vm.pte_encode = mtl_ggtt_pte_encode;
>> +     else
>> +             ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>>
>>       setup_private_pat(ggtt->vm.gt);
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index 43bf9188ffef..450ed0541d0f 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
>>  #define BYT_PTE_SNOOPED_BY_CPU_CACHES        REG_BIT(2)
>>  #define BYT_PTE_WRITEABLE            REG_BIT(1)
>>
>> +#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
>>  #define GEN12_PPGTT_PTE_LM   BIT_ULL(11)
>> -
>> -#define GEN12_GGTT_PTE_LM    BIT_ULL(1)
>> +#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)
>> +#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)
>> +#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
>> +#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)
>> +
>> +#define GEN12_GGTT_PTE_LM            BIT_ULL(1)
>> +#define MTL_GGTT_PTE_PAT0            BIT_ULL(52)
>> +#define MTL_GGTT_PTE_PAT1            BIT_ULL(53)
>> +#define GEN12_GGTT_PTE_ADDR_MASK     GENMASK_ULL(45, 12)
>> +#define MTL_GGTT_PTE_PAT_MASK                GENMASK_ULL(53, 52)
>>
>>  #define GEN12_PDE_64K BIT(6)
>>  #define GEN12_PTE_PS64 BIT(8)
>> --
>> 2.25.1
