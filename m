Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6727A252D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A23910E663;
	Fri, 15 Sep 2023 17:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8946A10E663
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 17:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800161; x=1726336161;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6VwZCmViMvOJLOCW0pfmdu/D0xsM4wI1NJ7nSK8yvxw=;
 b=PDAv4qbzmgkqp+UbEaMWPkhVbfkYIXgv/M/LKwSHxLZlyRS6A+hW8A9U
 OpUmnlxxdyCqM1o6mwyVO5lsgkHYalm57iQtlt5JA8LbNtHdIUB7+LIcX
 EQCzXrvH63gR9hOxKsFWlWlnfqiFYTWmUvV/vSXX4ndte5XCx7vf0J98A
 YggDFfahen5iicv0EOTlVVCuXz1HAE4r6dC1Dqn1zKpGUSIjmmqSL4WQK
 GA7ExUo/voc1lVjJCtr9IuSWK4oQ+73PK64VjhdhwRmNIJPDH4xi4cgHb
 33ezrLzWvO5gpKJsNbtkX4npbFe3mrslNAmdYh1I79DFJmHCl3p61C3OA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="378219773"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="378219773"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="748282626"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="748282626"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 10:49:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 10:49:20 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 10:49:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 10:49:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 10:49:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D1fgFgf2xQlYcVkYf3IbnY6DGUFqmZ99IEfxnzs0UiGUWM2z1glC7t+xVFSJRM3c+AQc3m6f8OCa0dTxMJK0ha3Qd11hmDBoaMjfr6jTDC7YEqkiQzhqgx8bkZU4x/7yq4Yes9MqCj66u2mh/SYjk5M7BO2xv5dAEjCvaC8Vd8VQYzyJcYFiPAvAwqY3hU1jU2avECAYwAkga0MFAMlyyPPwK93UM7VNj4rtgxTsiW0j4DWotUJuhsTRQjKwiV0pfUGCL2b6ITILDC4s1A4VYryuFzf8Zuz4RbfIaPfIdd3A3eGJnrjx3/zQubCSXCVcjMuTTlw6oESmUvYyZz6xRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BYOA03JyXQQpofl/KH3adyh2AzFAB4Vdk8kRdtbccCY=;
 b=HFwJBwboBnNuxcPskv7TI/DUOlfUrcyck+FnmTivVE4c9JY6oG5QT5jzeetDl4ScSSAObAm8gln0RpXLkRNzBWPtxgqOlD2yeYHEBHwx6+ALeMciHBT8w2fyuKtEKlhL0bRUoOgmOSZXRXPFoSdpL8qXBFFQZ7CBA3oAXO4U/W6FqMdkxCOIlrg7ZA62ry8Legs5dlyQxGTAV8YUi/zwyryKYSP1cAB8TZUMHZvKh6DvedxDytSm+120c077OHFzwG6RiVjx6FdWWAnZTGnbkqlOODjWnpMsbRCigokO2SKLTJbn1WykkYiEwPVv7VY2ZUg8HZAbRoba+E2S/ha12Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3398.namprd11.prod.outlook.com (2603:10b6:a03:19::19)
 by IA1PR11MB6444.namprd11.prod.outlook.com (2603:10b6:208:3a7::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Fri, 15 Sep
 2023 17:49:17 +0000
Received: from BYAPR11MB3398.namprd11.prod.outlook.com
 ([fe80::110f:4bac:8cd9:c359]) by BYAPR11MB3398.namprd11.prod.outlook.com
 ([fe80::110f:4bac:8cd9:c359%4]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 17:49:17 +0000
Message-ID: <558b50dc-40e3-8b14-b340-7bd0d65bb3ca@intel.com>
Date: Fri, 15 Sep 2023 10:49:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
From: "Balasubrawmanian, Vivaik" <vivaik.balasubrawmanian@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20230907001549.81262-1-alan.previn.teres.alexis@intel.com>
 <20230907001549.81262-3-alan.previn.teres.alexis@intel.com>
 <3c729821-a96e-7d9c-9172-4c1ea8fb17ab@intel.com>
In-Reply-To: <3c729821-a96e-7d9c-9172-4c1ea8fb17ab@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0103.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::44) To BYAPR11MB3398.namprd11.prod.outlook.com
 (2603:10b6:a03:19::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3398:EE_|IA1PR11MB6444:EE_
X-MS-Office365-Filtering-Correlation-Id: cbba1a25-482f-4e9a-b3d0-08dbb6141546
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ykyPj2RvlIlRzHSLL++H/DjaKYKL7FaQ2rEtpdDkTy5eImPh/CAPGw8Tq51/cVq5fLbg9pOU9vTWzJQSLKF52vIxw0vB8DAlJlwoqpI3wNUCd3Kl3gnunnZQNxhgysjHqYei9QS/qyLGILD0Xiuesa6dOUiiXdSiCDumxlukqkpH9GGyRNzp4IoJ9E/fwsc2k4O8E9ZVxFZ3M+kY0b7uOnXuL5pR8coTgBPcWfPVymQXkrEHE70eqF358ePnjGoHJRY+gHTE7duxx7HfZbYLqkSrL6hcz4Aim0MGq/J4io8LEZGSSO81ylzQjUTd2synd5AD6DTdXU5LvG+Q5qysPaT5ZYJ2vvzz2jk/uAb5vlUkIZsWJd+qc2d0te23Z1Fpt5IFy5wEUf2/zQYZbuASlgNDl6/Tl2xLlR8Tqemcp4/v36a9YeF9Le9AJHQ/SdT3QZsxXLYvSQLvr6d865SzdO8kNpMamoxhoD9bJ2j/Jfg7cirLZhArehaGMNO+bgXf6YS4liE44W81LBWIqs+00SeH21PnY5/+7BIDR/cLI9pdn0Mx0dyX01RT0BIdPuq3LOuXk0Oq5h0eNm7aGfcXWOyyzhLVWgPoIIdoLP9MAvLCpABjQlyGDyFxm7iruFwNamlmLqkVnKdhP5+jcdgFkA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3398.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(376002)(136003)(346002)(1800799009)(186009)(451199024)(86362001)(83380400001)(53546011)(6512007)(82960400001)(2616005)(31696002)(478600001)(6506007)(38100700002)(26005)(41300700001)(8676002)(66476007)(6916009)(5660300002)(8936002)(36756003)(15650500001)(6486002)(66556008)(66946007)(2906002)(316002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blgwQURTS2RIdFhJaHlnckNiOTJVYXlnOUhEMmtRYVI1V0ovMWFFVERrU0ho?=
 =?utf-8?B?RndDbktuZllNL1NZcXJyTzkrRC9UUUtRMUE3U2E4MHlzR2VTVDQ4SHRTS2l3?=
 =?utf-8?B?RWFsOHFJend4V0dTUGJzSytwOFA4bExYdFU1aVJlcGRtNm1qTm8xZ20zdHU2?=
 =?utf-8?B?dTMrbTRTMGVJT1krKzV5bTFrbUlLcHdyQU9maVBHRXVrNVZmWUdEVzR3dzdL?=
 =?utf-8?B?bTJxcmR5enovQUJoSkdSUkdmazY3R2RudHJNVnRYdmUxcE80QWQzVnk3cWpw?=
 =?utf-8?B?azdoYitJZklsV0RFRUs4SjlzVnhoaTFtRGsrQ0NkcVdvMEZFUjkvaVV6UzI1?=
 =?utf-8?B?dkM4cm5DSU54ejkzczUveFlxNkdyTFhyaG1leURVU0txSkUyU1lHWWJscUYr?=
 =?utf-8?B?YjdqUDl3MWVJb1R6M3g0REZFWFlpY21Vd250d2ljVG5nRlZxdDJkQW9zZlZX?=
 =?utf-8?B?d3F4c29OY3l6M2JiRm5RTGZ5TU15bG5vTkJ5R0UvOVVsTXlPR0ZPRzRSWU9K?=
 =?utf-8?B?L05ZN0NkL2tsUFFRNy9UMWlJL3g2UytScU9sZnVSYnMzbEl6MDQvekFpR25C?=
 =?utf-8?B?ZjhHS3lsRXBSK2NYaTBkWVVYT2JuTGxDUlEzanpEUkJnMGN6aGlMdERwVmhI?=
 =?utf-8?B?ODhBZG42ZnhxZTZnY3BuU1ZWNXFaOWdCL29JSndDZFZMeWlkRS9pQzQrVk5J?=
 =?utf-8?B?WmV3bG9nUnpIZ2lzaUZ2aXI3b1YwbEtNdGZVQXEycHZ3L3BqRkhNcWtqZ0RY?=
 =?utf-8?B?azhiMnBsdFAvVlhZdFRTZTNvUHM3dFJGVEoxYSsvNndZWkF4c0kySmo0SHhY?=
 =?utf-8?B?cGpQRWtPdysyalBxUmRTbjlBTUp5ZVh6Q0JpZStOaGlhMlJiUGY0alU3Vnl3?=
 =?utf-8?B?M1BUMklNamo5U2kralloa04wajRxTmtvSmtmdkVNNzA3TXVsVXV1UXRxWEVY?=
 =?utf-8?B?ZGNpcitDbmRibWE4YXRhTDE1TWx3QkJSalBzZ2QwcnpUTkpvaEovb1IvNnR1?=
 =?utf-8?B?eUo3MGtLZ2V1RGk5Q0VSZWpONkhodms5bklMRm42eWRGSXJCUGEwZE81NVFO?=
 =?utf-8?B?bEE2M25HY3k2c0tVcG4vZ0pYbU9VZVpMdlY4eW1UYWpqb3BRYmczRW1iSmV1?=
 =?utf-8?B?UjI2MkhMeHhVWVgzU2NUU0Qzb3dvUGFhVGpJQXF0eE5vdlp0VVE4cGZvdXVx?=
 =?utf-8?B?NVR6emxBTUZwVUsvNDk2elNPQlhEekhEei93OVhyVGNsTitHaVhYQUFwNU4y?=
 =?utf-8?B?ZzZHakJPSUdQVDExUGVNREI0aFlCQThkQzdHK2hTOFB1ZUVlcDdoOEdhSTBQ?=
 =?utf-8?B?c0ZuZUVSbDA3S3Iwc1kyYjZhVGdlZ0VDM0dWU1M2MnZPUXVSbDEwdjZnSGFE?=
 =?utf-8?B?ckh4YW5FVytETzhRZnlTQ0RzWXlYOVJjSTljeTRNMmMycmNKL1RmNk90NHNL?=
 =?utf-8?B?QWcvM09ZVm9SeEloTXZzNzNibkw2d3k1MHFRQmF5RWx1eDV5ci9LdERPVTFi?=
 =?utf-8?B?cEZhY2FMY1MvVHNMWkZrS1NncGQ4RWZtaFVjOVVteHdJdTVIakFyR0x6elNG?=
 =?utf-8?B?d3ZmWHAwcHFGQXpjV2Q5d2J4aWdkUWptUXFKcEdURVlDY0p2ek9GbWRDVWcy?=
 =?utf-8?B?a0pMUWp4V3FPdzM3M1N6OTVxTGZlS01YUFZ4SUxKYmwxeDh3M1RNOTd1QUNR?=
 =?utf-8?B?eUZSV3FXRWFlV1dNTk0xVW9XS2dkdkNMWWJSUE81SFpjYnJGTTI1OXFsRnRl?=
 =?utf-8?B?MlA4L2pUWTZuRGtaeXJRQ0Q0RmF3eUxKa3ovajRjNkhVU1RYUEVKOFV3UzhP?=
 =?utf-8?B?R29xZkk0NFZXUUpqTnk5MG53UzJiZFZ0cWNkcWtLWE01ZXhCRFZWL2JmRElI?=
 =?utf-8?B?UXU3YU1WaVBFNVprZXA5Snhsc3FJZDZneGNiVEJKeDJZT0JHaW5kUmVHTkxh?=
 =?utf-8?B?eFRrWWJ5T2Z0ZXB4ZUg4R0huV09nM1IyWDA1cTB0YktaMGRuWFdHR0VVWXo2?=
 =?utf-8?B?MnpBaW5ENDFZU0dPVzdVTnBwcmFuUTVPMzJMN2V1WnRxYncvektSV0ZiblNm?=
 =?utf-8?B?OFdWMllPQmpIWUVhR0FMOHVKOUhYOE5jcklEek0zamUyNEUwRWhCV2JDYngx?=
 =?utf-8?B?TjFUcE1BeVdSY05UY25QTGM0U1FvL3dVY1RpS20zUVJYZ2wwOFdwZmdiMURZ?=
 =?utf-8?Q?3aq2vXjsXdRBhsCwU0xx3yk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbba1a25-482f-4e9a-b3d0-08dbb6141546
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3398.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 17:49:17.6789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GPJ+xAbH5doQoQdb4/0VIuwjCrxB7XtiauCmFY69Cf6SSEYtKYhfGhvLxMsaVRG0Hi6cNU2cg6/2EfeemCJ2nzdSBnEwtbDHc7Khb61J4Ec/iKiaDs9Bnh5j3Ckm8aHI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6444
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/pxp/mtl: Update
 pxp-firmware packet size
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

On 9/14/2023 3:28 PM, Balasubrawmanian, Vivaik wrote:
> On 9/6/2023 5:15 PM, Alan Previn wrote:
>> Update the GSC-fw input/output HECI packet size to match
>> updated internal fw specs.
>>
>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h 
>> b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>> index 0165d38fbead..b2196b008f26 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>> @@ -14,8 +14,8 @@
>>   #define PXP43_CMDID_NEW_HUC_AUTH 0x0000003F /* MTL+ */
>>   #define PXP43_CMDID_INIT_SESSION 0x00000036
>>   -/* PXP-Packet sizes for MTL's GSCCS-HECI instruction */
>> -#define PXP43_MAX_HECI_INOUT_SIZE (SZ_32K)
>> +/* PXP-Packet sizes for MTL's GSCCS-HECI instruction is 65K*/
>> +#define PXP43_MAX_HECI_INOUT_SIZE (SZ_64K + SZ_1K)
>>     /* PXP-Packet size for MTL's NEW_HUC_AUTH instruction */
>>   #define PXP43_HUC_AUTH_INOUT_SIZE (SZ_4K)
>
> Reviewed-by: Balasubrawmanian, Vivaik 
> <vivaik.balasubrawmanian@intel.com> 
> <mailto:vivaik.balasubrawmanian@intel.com>
>

