Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC3856B6CB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 12:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EAC10E6EC;
	Fri,  8 Jul 2022 10:06:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D6910EE56
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 10:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657274778; x=1688810778;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XORR2xYRbV2VaB/vK/W22cneZQg2k7mP+hVGMt8hPJ8=;
 b=fZaCDdppDnhlgTZ+4Vsgws4AG6NcU51mggOE4lItprT/wSmRIKMkm5OX
 UUHwBWGo8nv/j7OzNayIOhU7uKZDXQXXgL9v0UfoD9REAbTs0esH1NrQd
 DyOTosql9LOjT//o/sLCFMuZjVceAqRnoFRtj30LlA2xvT6+sbPE5I04E
 hPRwiKwRRzvQ5tJz1m6k9Oz6qLWTAv29g/z+oxEFk+RX9ov320LpMKFiF
 oBzj2PR/Nz/WdhSFPctFrIlIyHKk/SG5n3dks4hNE8xJ2DQyYETTr9YGR
 r7sODsw5htzbdKYjWVC9Vi7aZi2luyghntRJ+m4GitokXpR8qO1qgqGKs Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="284269862"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="284269862"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 03:06:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="591525163"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 08 Jul 2022 03:06:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 03:06:15 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 03:06:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Jul 2022 03:06:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Jul 2022 03:06:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iwORrz/PZJnSuvEQ7i3NbVypmUdVLLW3HBCMZUCGTrOa8b/ZC4ujSepYrnqyz7fRa9dtpyW5fA7egnCXoLA23uYIPMPCaPW4v7Rd8G7Uh4a4/cXRe3tNKDEL7ETO7QdK/EIxULWiNtHdQ4uvnNdH/zqSkA92rUSoPnwjpfT4LOGQrR74JQS8/1823l+zkS24hVX9TR3YTRZYdMViRnq8Jr0q6qwfnSNAhSlcJw5bFB6IFELpxJQNElOaHituHQAfC3cVm7ZGjOhTgM9OUI6k9W2nGKb0MMejhmH6VNaa2dSUsLGgCngo/bXMgPQ1wxLPg87iUm+erM/dD+DnKnDwuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6rABe03aDGFUXDlhKsGSSeqY8yBl9Gj46KE1YMWDEEk=;
 b=caxkCmbX/Z59EnthmeVM1UqcPPEAFvZpTSM25Wr40klDJbqAuWISv4oAi5Baf20THiPo+kLqYdEWgZxuH5ZjMfw9qVpmEglrpoXaSZXXLFVvsAglI3XajQ0J7e1bq+w+OvKdQYWJYQwzk4yMGnlnjRAWXDZnu+pvm7N9m7BjpypEvwqgYeTmoE338J20xiptUHaipsDhbdt9IQPLgZapArZ1fkFB2Wo9+qEbACwaButbynZBvdH0zbrgmA5ELHO2kK+iv0o2SYB55GGtpOwVJhLe4WtK9kNRtbfsCdCPZlPsSiGCmxpNYTfHui7B3fipGIvViM9pM/sVrj4EU3R5Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB3356.namprd11.prod.outlook.com (2603:10b6:5:58::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Fri, 8 Jul
 2022 10:06:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::f56c:97ff:6b9a:7dcd]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::f56c:97ff:6b9a:7dcd%3]) with mapi id 15.20.5417.020; Fri, 8 Jul 2022
 10:06:11 +0000
Message-ID: <c758d7c0-cb11-7135-2048-a197998ac2da@intel.com>
Date: Fri, 8 Jul 2022 15:36:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220707052712.2033748-1-ankit.k.nautiyal@intel.com>
 <DM6PR11MB317775DC2D990594E3297055BA829@DM6PR11MB3177.namprd11.prod.outlook.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM6PR11MB317775DC2D990594E3297055BA829@DM6PR11MB3177.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0194.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cf31c081-9555-4756-6daf-08da60c97c28
X-MS-TrafficTypeDiagnostic: DM6PR11MB3356:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 85yA9clDuxb6nxFQiPVErNzD1oGaiKdSXBrS4vVZmffssMouXe1uTUE/DS3H0LV3LhWuc4oh90XPH/P9BswnDyQScIBzdizb5uyRz9T2H9lbaPo3jv4tVDzBhx6pB9GlwgBXqCs+yaCODacO+7X2QQ4MkFcXBfkGuRewQUAQKNe4GHKTkCx9pszBzxQYt2GaekZUWZ2k5uD7+FZnlzjwkDCzWbZlt/oBtnz8xrh02jWUdN7PP5Yv/4rvzTE5Eh7eoamRLZsA9TEpAvwuYMbZYjxS+vA5GKEgQKzT0lyb6whArYWyCa8cxvmilweNTwhCet40oWIkQWw5gygdf7Hf+nJlia7ql+7NKv7OebD86zZTjD4nICyZ07p8xEMCRN0uEO09SCFgvB2YwtgDsBMnVjeYdx3HJJqJpJS0K/TX1gKEGMjS0/F0FGVkByn+LfQF6VtRLHS9nU6Agr6ZMBYK2aoeBSBkFZJHgY3pdqdmj64xEBzEcTgmBsIMB+Y/Uy8FjRyL/UqZ7VAzbe6LdkirKR0BVaVrVfKjJlOoCT91WyauE7kjX+J9ucfLha8TEar5gc5Oqb9C03z6zd57j2HOzQitZsA9oy9sBsU2nhSYCrn/KYWugCks+thN1MqpfUCvIsJHiSJd4Hg8MXBcURMyfN9+ahvRtd/qOuwuJ8W76a5AIz2nOl6SR5aevbWowLrQPVJzt/h8vGztcS4FliYTQYzzGn4HBUVvjiuiz1Mb4i0+/pjX4X7RJMJKRrqjXRtpYcCsloaCgp4yI6LwFzv0/D0X/l3OVhcyxsa+Fq9omS/xGf1mJkjlsm9Uu5ara9BUgZH2FUb+Oh8In8XNEp8iVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(366004)(396003)(39860400002)(136003)(83380400001)(2616005)(36756003)(186003)(31686004)(38100700002)(2906002)(66476007)(26005)(8676002)(6486002)(66946007)(110136005)(66556008)(6512007)(8936002)(5660300002)(55236004)(53546011)(6506007)(82960400001)(478600001)(316002)(6666004)(41300700001)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ky9WenBVWDFyWmlHTzNvdkZOc2o5TXdKWnk4dzdDdWRZVTFXc0JDbmtGV25H?=
 =?utf-8?B?L3BpSWJLdjQ2eXNwaFduang2NWNCUGExUEI5QlFmTlhFRWRRUlRTaFJRUWpu?=
 =?utf-8?B?RUlDeEI2YTFseFVtSEx4bXlJUnVPRHhEVDlHeFVLRThveXF5QlltZGJSYSs2?=
 =?utf-8?B?TDBxL1N6WDVtVWxlNHB6ZytMZ2xEVEJGeTlGbUtSZGpsaEZkaXFFbGdKeXIw?=
 =?utf-8?B?R0R4Rko3T3VsZkdURURvaTEzNWxWbzNzN2ROQm96bnZKTElaVW83bEhUWjVT?=
 =?utf-8?B?LzNVeVhscDltZ2s1TzNtMG1lZmpJTUtNdm5hV212cjdENXUwZEY0d244YjRa?=
 =?utf-8?B?RFlRR3d3aW1ETXdNd3liUUFrdlVUZ1NVaWNsVDZyZ0NFUFJnbU1xM0JabzRH?=
 =?utf-8?B?cy9QN3NqNGV2cjhnM01XOWNqY1dMZWJXMzhjUUpjbmFPU01TdTJwZ0llbjcr?=
 =?utf-8?B?QjgrcDNuRGMzK25OWmo3R3ZsNUYrWTVNRkw1K3Qrb3czK1ZyQnc4MFdtWU8z?=
 =?utf-8?B?MFlFQUVkcy83bU5VNFU4cEN5MHYvaTRkSzYyS3pwR3I4Q2JMbXBRSDBSZDVt?=
 =?utf-8?B?ZDlpWlF4UytmTkY5bktNbGRWU3E0TnVjT0R6Z1AxQ1pYcW4yM2RGaEpiZmth?=
 =?utf-8?B?TTN1RmRBVGFRR1B3MTVlK0tzUEFtQ3M0blhOa0NuQUdWVXMxZGN4d2VobCtX?=
 =?utf-8?B?YWEzTFJqRVd2YXRQS2xWb25seEk2NzRpeW50YnhTWVVKeGNVc1cvekN3R2lD?=
 =?utf-8?B?QnZlbGxwTFNVejFnL0FqWUNzczY4RmdOb1Ayb2FaNkJFU0ttbEpSWkw2dnRh?=
 =?utf-8?B?b3BKUEhCSXQ2QnpIVVd0SjVkdjY3QW5tZkxFYTJ6RGlqQUhlUlJ2S0JnQlRV?=
 =?utf-8?B?aGkwQVVpd3pJUFgvVzBZa0tmRWlmOXRWbXFFL211cXVpWnpZZVJPL2xPWjcw?=
 =?utf-8?B?WHUwbytYNEEraGdRSkhaVlRKT0p5eFJiYmxWQlZoV1FPL2Rzdm5lM0pNd0t6?=
 =?utf-8?B?VU9MM2YzdXN4L1piWVY0Q2ZWdGtwankvRVdNVlpUQUUzaHplUTNyMEZzY2h6?=
 =?utf-8?B?SEtwczVaanBkdzBrbTJiNGFvaXBob29KdGoycUNNUUpadFpIcC9pN0wzZDRL?=
 =?utf-8?B?TEV0MWloVlQvMXcydGtqMzNwdHpXMldSUGV6Rmt1dUJKZ0tHa21CVHFzQXFz?=
 =?utf-8?B?OUxBNWxaVEFCZDZ1aC9wUVpxMFR1NjNXaG9jbFJzWWZlb2c1RDJtZnEzQUow?=
 =?utf-8?B?a1JQdkVSWHdSWjdXQlFOaDhFQXVmekhYUVR1ZGo1cTN3OFladFlMQzF6SHRZ?=
 =?utf-8?B?ZW1EY2ZWeXc1TTVGUWRsOHdScnY1d2tlTzNsbFJCLy8wcVJEOHpaay9WNmt6?=
 =?utf-8?B?bmlETURrVkhSTTFjdU10Nkg5cVFQWjg0cXlhRGZMMDlvdXpQRUp3NEI4S1Yw?=
 =?utf-8?B?ZHJGbnMwTEM4b3N6VDBtM3BZcytqc3VZbVJQR0pxSnljL0Jaa2NBYjllOWxj?=
 =?utf-8?B?Qyt2TElhYmtBVmpMSDMyb0YwTC9sZEtEZ2xnQy9VUTQ5Mks3TXlFMGhRN1RS?=
 =?utf-8?B?Z1lqUEdrcXhGK2VjZ1FsWWQ2Tm9VNG1lcTM1c3pXSlVqOHRoc3ExcGg3ZG5R?=
 =?utf-8?B?amRjWTZFSmhmeWhCZG9RU05BSXE2M0ZJWGpVNTNpMGhUUEhBcEpMZU96SU9q?=
 =?utf-8?B?Q3hudkNRZFRjQjJPZ2NzVm1zd2JrNFpZVHAzeVF2Mk9QMGpFVWEvN1JXRUg1?=
 =?utf-8?B?Y1BkbDdKYlh0VWFNUFRnK0wvWHJ5TExVVWVCL2NUVFZTeFNKMWRvZTNmNlBR?=
 =?utf-8?B?K2Jxc2djYVQrWTZ6WkptZHpSaFUrRkZkaDA4RHdpOHBxa3N4TkViZ0hKRG1o?=
 =?utf-8?B?bmpVSUx3OEwvNmFoVzkzZXNWOGtaT2lnKzByZWlES29TUTFRbXhPSzFQVkpV?=
 =?utf-8?B?ZDVZeHc4UnRvcml2RklkUzFjZm9vVjFPMnd5a1puTE5LNDJHaFNjR3p1K2ND?=
 =?utf-8?B?RVRRQlJYZm9vS0R2WVEwRmNocUQrNVBCTGZLOHl2ZmxESjRwT21PY2xHT3lh?=
 =?utf-8?B?RnNHUUlhenl3anVEbks4VDdIb0JjSDRqZDVsL2xMSE92NnFnQlNyaU15dnMw?=
 =?utf-8?B?YUxuUWQrMUhiUWt5cDlKeWRUanMzdFRWZ3J1enJHNzdnNTNvQU9qSUc3WU5K?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf31c081-9555-4756-6daf-08da60c97c28
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 10:06:11.7344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OYlvoynvlIeSJSBx3BL5FX3Cb40tmFoUvd6FUfY58RtDfu9IkrvXK0Gl99G9TcJUGbOYZSC6sHqrSKfZfdcW+Jo0yEO33r0bd8ndH3FvVa0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3356
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
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

Hi Arun,

Thanks for the comments.

Please find my response inline.

On 7/8/2022 9:30 AM, Murthy, Arun R wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ankit
>> Nautiyal
>> Sent: Thursday, July 7, 2022 10:57 AM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
>> HDMI2.1 FRL
>>
>> HDMI2.1 requires some higher resolution video modes to be enumerated
>> only if HDMI2.1 Fixed Rate Link (FRL) is supported.
>> Current platforms do not support FRL transmission so prune modes that
>> require HDMI2.1 FRL.
>>
> If the hardware doesn't support FRL then it basically blocks HDMI2.1 feature.
> Then it wont be possible to use any resolution above 4k60 is it?


Yes right. As I understand, the HDMI2.1a supersedes HDMI2.0b, and so the

platforms  supporting HDMI2.0 must now pass the HDMI2.1 CTS.
The HDMI2.1a spec introduces Marketing Feature names for 4K100, 4K120,
8k@50, 8k@60 with suffix A, and B.
Suffix A meaning mode supported without compression, and B meaning, mode
supported with compression.

There are CTS tests that expect these modes not to be enumerated, if the
source does support the given requirements.


>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 21 +++++++++++++++++++++
>>   1 file changed, 21 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index ebd91aa69dd2..93c00b61795f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -1974,6 +1974,20 @@ intel_hdmi_mode_clock_valid(struct
>> drm_connector *connector, int clock,
>>   	return status;
>>   }
>>
>> +/*
>> + * HDMI2.1 requires higher resolution modes like 8k60, 4K120 to be
>> + * enumerated only if FRL is supported. Platforms not supporting FRL
>> + * must prune these modes.
>> + */
>> +static bool
>> +hdmi21_frl_quirk(int dotclock, bool frl_supported) {
>> +	if (dotclock >= 600000 && !frl_supported)
>> +		return true;
>> +
>> +	return false;
>> +}
>> +
>>   static enum drm_mode_status
>>   intel_hdmi_mode_valid(struct drm_connector *connector,
>>   		      struct drm_display_mode *mode)
>> @@ -2001,6 +2015,13 @@ intel_hdmi_mode_valid(struct drm_connector
>> *connector,
>>   		clock *= 2;
>>   	}
>>
>> +	/*
>> +	 * Current Platforms do not support HDMI2.1 FRL mode of
>> transmission,
>> +	 * so prune the modes that require FRL.
>> +	 */
>> +	if (hdmi21_frl_quirk(clock, false))
>> +		return MODE_BAD;
>> +
> Instead of setting this frl_supported as false, can we get this info from hardware, so that when
> our hardware supports it later it would be easy to enable this.

We can have something like:

src_supports_frl()

{

/* FRL not supported in

return false;

}

Later we can add check for Platform when HDMI2.1 FRL is supported and 
rate parsed from VBT.

Regards,

Ankit


>
> Thanks and Regards,
> Arun R Murthy
> -------------------
