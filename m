Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2753F54CB70
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 16:35:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6073610E80A;
	Wed, 15 Jun 2022 14:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22CBC10E80A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 14:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655303742; x=1686839742;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AzQSl08gzWUIYTlpxoog/V/8yvPopMJmWK328X6Tqy4=;
 b=eHL28YMl6j1W7cUAj6m8gxRXt43yD0fSq8+Bo+al58IR7FwbEcFLoolh
 bu60vFm74wYvj+9HO6AOZbqQKNf/DnaW7p6rSxxSKTtfQHE/23SFd4ZnR
 BlzUUlolea9/Cz5Gc2MuvY8KWswkbgSZoTNShaqUupXBAHA3D9/+w9QOD
 v10+pF4xqMYiW3jlADF6Mpsdbo6pYK+PmD8nZIrmrVflrvSbEJ07XTQuU
 BHL8L4lNnhnajHBJ6ffDeCVVymet3Fx6q2fK0NEA16fgZfL9I+/ar/mdW
 ou71Iy6ndzrWYLqAKyO8Fe1ueAQskvZUnB3DkyZxeUh5cQUdzUl9GABvF A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="259441943"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="259441943"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 07:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="911692888"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jun 2022 07:35:41 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 15 Jun 2022 07:35:40 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 15 Jun 2022 07:35:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 15 Jun 2022 07:35:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 15 Jun 2022 07:35:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LMojK/ZCGKvB4erLSW6W3xpGzl7eq16S5HS0JOdm0clMi08af4+icnw66q7nasTQKZSXRv73viOnXC2mNE93A6F2JpJnPplbSQKfW8/Y1KnwRuGNF0bEwRw85YDrqaGOpOiHhrfW9gR1q3ispEkaiUIn96lXFFHoE+1ofnvXnFhSvZINaSQzAXZk7tdEwiZjptMMZ3Ebcsk+WieGq9mrAqLHBbyq+gQUIEg8DNPo3osXSiaanVFwHGMUEdeYbiK/XH4f9LfNiaNLKgoXREoPrbnlORADau0WcxPeqOCH4PqCTOOiFRL3b7Uzs//LHTgZnKyHtekVyOYMcISGCBlN5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5cr6isQdaNsH0nHrg8+NQj9vkx385+RyfI2mi98kSg=;
 b=Fq7txAxmZE5pqJrNhfi2Ug70kAgdoKKwldmV9xv7giApqwMTjOud4AIq2En3DSv/tYRpSjY3KDjiU8SpgjzzNl6hDNeax9oHO71beuQ36Xce41HDEuzsiIEb9nMu5cjoHCoLVU1Yaj9r+O8JJdloLPWSybN14mmETGNwpLptiEYOkLClqP/EOYq7N0jbaq3ZhVbE8eChMZ8Z2ckIXmKCj/Rmt1L5FBpKRPLfcIPidm4bVxLl74R00rve4xDZIMWi8jXV5vKgdKETduVLWnh7oKo7I7gWbTRPPiTWmT2L2lZ8loCq37OLc5N+mURurEhgF91LC2o7pqBtc8hhyhZ+0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM5PR11MB0059.namprd11.prod.outlook.com (2603:10b6:4:62::37) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.19; Wed, 15 Jun 2022 14:35:38 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf%2]) with mapi id 15.20.5332.022; Wed, 15 Jun 2022
 14:35:38 +0000
Message-ID: <a22c3db5-5958-b4c0-3719-485e22ebfbce@intel.com>
Date: Wed, 15 Jun 2022 07:35:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Ye, Tony"
 <tony.ye@intel.com>, <intel-gfx@lists.freedesktop.org>, "Zhang, Carl"
 <carl.zhang@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
 <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
 <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
 <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
 <954db3a4-e8c9-e157-5211-aceec87dfd9d@linux.intel.com>
 <4a7f6abe-e479-a3d9-8615-e52a2863733c@intel.com>
 <c565a81a-d86c-a5fd-c97e-27bd1459da6e@intel.com>
 <05a33039-ed2e-3364-6036-197955abacfc@linux.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <05a33039-ed2e-3364-6036-197955abacfc@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0254.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::19) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f3c035f-2818-458a-ff4a-08da4edc508e
X-MS-TrafficTypeDiagnostic: DM5PR11MB0059:EE_
X-Microsoft-Antispam-PRVS: <DM5PR11MB005942AB43F8CF22C5CBD674F4AD9@DM5PR11MB0059.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kMXWrEXxHbdcVjKR/BX+ibfeCVZUoDqIhoXDiwTezc2a2caF3bA0FwxCJHQgX0Xikq0U7YDIRSvlbWeVqj0upqFLlzoXqPTue8CA3hN/apvJK6z3Nj2Bl9FGSsV1KZknksx0KCMye30+wYHzdJQ9+9y7vIWVETaOSR1XocPytkZCjimIAaPa+uWkJ/cBpWC46tcrZV3v6xrHu9zO+08YnspOFiajEPrElvLNfsSjDqZOR4ZBz/bjaX2YUYuo8tXbA403KzQOEqIV/dyJtzJVrw0354tQlo+nMrNI1jVZAVjeAO+eIxhwY+NG6yr1GIm77Mx2qDtsDPFLa2KsOn4mIRMel7vq7Mk9IG59dow+CnCbXNmNiVxFFYFhd3iTsUsJNnYwuLAKkVDeSfWetB6pZtarv4wxLQ7KJpZgw7nbd/eiUXp4b/RsNyjgkTVb452WvTn4GmT9wrJREeqf5btl2HQrCZq+1yMhaVxjn1ZG6D0zaYj0txCrV/3aAlw08DtGGCsSXMI7fC11opS4tG2CzDMIob153YmAUtR/883fbTMvY3UE2ZLxoGCIgG+ObZPnCmA4BCy/llB7SDShmLjwVy2lav+3YnJgwDNYIl6pfJgVjNVNn71pGkVO5IUDHTGqdCg0qlgNEwET4a85fykHBa4t40zc9T1K4YaTyjepWPwuBH7TZi8L7pB10xjSbvpukSQiFFFHtzSWZ5xn3bAxRB271sXL2Ov+Vd4lUdZz/Q6H4q9tfRZNEB7N/fOex15v7/L8ub4QbICcwGJFTdXOyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(36756003)(8676002)(86362001)(4326008)(31686004)(26005)(82960400001)(6506007)(5660300002)(66946007)(30864003)(8936002)(6636002)(2906002)(6486002)(316002)(110136005)(66556008)(186003)(54906003)(53546011)(6666004)(31696002)(66476007)(38100700002)(83380400001)(6512007)(2616005)(508600001)(60764002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXp1dmdLSFBXNjRHS01lRTJVcXA3MmJFQnhFU29GYXNiUlU4bHo3RHQxU3Fq?=
 =?utf-8?B?dUx3MkpyT1lkS1g4OW5KT3pFUTE1VDZoVFNGQmJKM2pUUStzTTY1eEM2U3Nw?=
 =?utf-8?B?WFhaek45WmprUndmZFZmcGhJWndmem9OZmhLQkw0MmpycmVTUU1aQW5ZQUxG?=
 =?utf-8?B?RjUzcklEY1lidmFaZW1sU3BvQXRJcDE4UGdTWTgzQ1pVajlzRHE1c0VhM1Fs?=
 =?utf-8?B?OGR1RUpvZGMzckhiaVRKYWZLV1d5eHpZbDRnaXd1YjBvQkN5aVFVaG9tdStu?=
 =?utf-8?B?SHk2SUlaYThQeTJ0MmdWNDF0Ykx0YTBDZFM1MHFwUkNnZW9kSUdnMDdHVFZF?=
 =?utf-8?B?MUVZa0YyZkpSR3Budy8renBhSm1HeHZWTFZWU0djMTIrMWhNb2dFcFJUUEdF?=
 =?utf-8?B?eFZWMUhVSkpEYjIvWlRNbDFwV0xIU3E4cldub05TQk9tTFZOZVRxUGtzb0Qw?=
 =?utf-8?B?L1d6OXBSbG1Sem5WZFgvakhEblZESmx2Sm5NMjFyN3lzeC9ZMnBMcEZ3RDdN?=
 =?utf-8?B?OEVSa2UyMW5wSHZBajRPeDUwTlJ5TEZDejFJMXpBZmlIVGFTRFFRTEx0SWVt?=
 =?utf-8?B?dVBlcktWUlJJOGJrQWoxUEloa1Y0VGk3TVBsdjdYMlh1MnV1S2ZGZGlMTGZG?=
 =?utf-8?B?K3lUMTBTdEdmZzIrM1RoQmIzejhsRGRxaWprOFlSQStSWUhvVzZwSlJ4T3ZT?=
 =?utf-8?B?d2x3WWxaRExRb1UvUXNNNHRCSWUyNzZ6TlFIc3UzbWxld0JaZUU5dFVQMHlR?=
 =?utf-8?B?dE1aNXZZM3BZV296OHlBNWJBM0hwbjg1a3ZCT2Z1TEVwOUM0YjRCWEEyT1g3?=
 =?utf-8?B?SHJYRjBkT3UwS3Q4bUpxZlMwZFBvMU5EMXMwYi95QXl2UkdmUzd1QU1hd0xI?=
 =?utf-8?B?U05kUXVPcXY1SHBYaDJ0VFFJTUxUSE1PV09Hc3BONitJOWZLUDVuTnRUSUtl?=
 =?utf-8?B?Ny9CQk1oNGtsWDBuVGZBdXhUaXB6U0s0cm1iNnl2R1NQb1VBaHV4aVZrNlB5?=
 =?utf-8?B?aEVkNzZpTFNaYlhZbHNoYTdvbWFxbGlrTGlIZTI1NUdmYms0UHB1b29EaDRa?=
 =?utf-8?B?ZmN6VW1EYVRvSkVheGkyQXVsMjdFTXkrWDk3VlVlTDBiMzkrQjcvd2VWR2Nh?=
 =?utf-8?B?OG42ZzhEZm9QN1JIMWhDc2VZVUJXWFdFWHdQRFlBeDJEK2c2SUxWUWY1eEVs?=
 =?utf-8?B?M0FNZTEyUkpTVmczcGFyNjI5V1R4Tmt3bTIyVS9uTW9jUHJLK0ZKc1VVUzhn?=
 =?utf-8?B?SktLWTdKWkdtMnJVbmlFNzdFNUZMOUxBM3UzMU5GT2syd1RXblMydTZtdUV4?=
 =?utf-8?B?eGo5RG9WRjg1a1ZlS0dvN29OelNWMmNPbjVYUFczaTJ5eUI1Z1JrQU9vQUxR?=
 =?utf-8?B?K3BLSENhTzZOOVZrdEZDbHhuQ2RsVytTV005S1BDS2ptRGl6TjVNbjVpdGkw?=
 =?utf-8?B?ZjZRUExRZWk3MTYzdTNJS0syNDFJLzhBam9yTlVpOFl1UDNyVDVveUFDdVFT?=
 =?utf-8?B?cFZCOGhjRWNwWCs5ZjU4TDJIdXVieFR1TFErMUVmdjByN29XVzlRWEZIVDNP?=
 =?utf-8?B?bUZUeTVLbTBXL1dKT2IvWFJSNVhBMVo5QWZteXRwUm1OdU5jYzl1U280NkRu?=
 =?utf-8?B?L1R2MXNJRFVKU2s4SVZBOWtxcVVwdTVtcitVNVRiY1FVc3Y2YzBiNTJxODNj?=
 =?utf-8?B?SmVyQXdXaFNMQnJiTEtMNElwM3pPQTNIRnk4NUl5V0VTNlRiMWFPTFVQTm5T?=
 =?utf-8?B?VTVlb0huQUE4NDZiZ2luMkxoRVI2L2R6TUZNMmNVdUFxVmYxYVNMRVNxRUpH?=
 =?utf-8?B?L1VYNEVjR2FBWG5YWWRaczhQNEhKWjRSQkJqSGFjOCs5Y0IvR3pybCs3NkxW?=
 =?utf-8?B?YXRsVVJneVZ3Y0VrMTNuMDlXVDJRM3lMbjAvYTVRbmwrb0VxbmJ0Vkg3dXp2?=
 =?utf-8?B?Yjd2azgxSHRGN1dsR2g4V3daM21kYVQyOWErSTc0MUltangxM08xYjZJaVUz?=
 =?utf-8?B?YTFrY28zVFU2ZU1kcDZoSWh5ODBzNUlIN3M2WDhpMU0vRitNd0poMWpkM3BE?=
 =?utf-8?B?WjIxTmNLYnF6blppZlNUa25qV2lza3JmTXhYVW5NMDBybHdQeXplUTczdWho?=
 =?utf-8?B?UGtCRENxSUJTR0VXbWJyL1kwTG9VQmZBQ3UwYnBhVk1Nem53YndlWGZKc0Ru?=
 =?utf-8?B?aE9sQ0VnWFJVTG0ydytFV0YvVWhicVBDTVlPLzhVNTA3UTdqUHFydnRwUHli?=
 =?utf-8?B?QU1SSzk1eEJWcXZ6UEluQUVsOXBKNktyQVZrc2pDZi9FMk9aZXBYK1BINkQ1?=
 =?utf-8?B?Vzd0ME5pTDJMUEZJUEthbUZrS3BPNUxkSldsMkVHN2djSHo1YVFnQktlZDA1?=
 =?utf-8?Q?B7b+OvtYfSEKOvglKAB+e9Tx9Spo+3atQABX4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f3c035f-2818-458a-ff4a-08da4edc508e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2022 14:35:38.0166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WHWLuTJdXAiNUPrUsYU6NpNH0b+Zw2CjQlzmmU9hW4i1WNZGVxoSeaSI0Fv9Lm9QwqHhRjrmIYe8MeFAv3M8XpKNL3YDHDZlS2ZNvVwQi58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0059
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 6/15/2022 3:13 AM, Tvrtko Ursulin wrote:
>
> On 15/06/2022 00:15, Ye, Tony wrote:
>> On 6/14/2022 8:30 AM, Ceraolo Spurio, Daniele wrote:
>>> On 6/14/2022 12:44 AM, Tvrtko Ursulin wrote:
>>>>
>>>> On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
>>>>> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>>>>>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>>>>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>>>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>
>>>>>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP 
>>>>>>>>>>>>> command. The load
>>>>>>>>>>>>> operation itself is relatively simple (just send a message 
>>>>>>>>>>>>> to the GSC
>>>>>>>>>>>>> with the physical address of the HuC in LMEM), but there 
>>>>>>>>>>>>> are timing
>>>>>>>>>>>>> changes that requires special attention. In particular, to 
>>>>>>>>>>>>> send a PXP
>>>>>>>>>>>>> command we need to first export the GSC driver and then 
>>>>>>>>>>>>> wait for the
>>>>>>>>>>>>> mei-gsc and mei-pxp modules to start, which means that HuC 
>>>>>>>>>>>>> load will
>>>>>>>>>>>>> complete after i915 load is complete. This means that 
>>>>>>>>>>>>> there is a small
>>>>>>>>>>>>> window of time after i915 is registered and before HuC is 
>>>>>>>>>>>>> loaded
>>>>>>>>>>>>> during which userspace could submit and/or checking the 
>>>>>>>>>>>>> HuC load status,
>>>>>>>>>>>>> although this is quite unlikely to happen (HuC is usually 
>>>>>>>>>>>>> loaded before
>>>>>>>>>>>>> kernel init/resume completes).
>>>>>>>>>>>>> We've consulted with the media team in regards to how to 
>>>>>>>>>>>>> handle this and
>>>>>>>>>>>>> they've asked us to do the following:
>>>>>>>>>>>>>
>>>>>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load 
>>>>>>>>>>>>> is still in
>>>>>>>>>>>>> progress. The media driver uses the IOCTL as a way to 
>>>>>>>>>>>>> check if HuC is
>>>>>>>>>>>>> enabled and then includes a secondary check in the batches 
>>>>>>>>>>>>> to get the
>>>>>>>>>>>>> actual status, so doing it this way allows userspace to 
>>>>>>>>>>>>> keep working
>>>>>>>>>>>>> without changes.
>>>>>>>>>>>>>
>>>>>>>>>>>>> 2) Stall all userspace VCS submission until HuC is loaded. 
>>>>>>>>>>>>> Stalls are
>>>>>>>>>>>>> expected to be very rare (if any), due to the fact that 
>>>>>>>>>>>>> HuC is usually
>>>>>>>>>>>>> loaded before kernel init/resume is completed.
>>>>>>>>>>>>
>>>>>>>>>>>> Motivation to add these complications into i915 are not 
>>>>>>>>>>>> clear to me here. I mean there is no HuC on DG2 _yet_ is 
>>>>>>>>>>>> the premise of the series, right? So no backwards 
>>>>>>>>>>>> compatibility concerns. In this case why jump through the 
>>>>>>>>>>>> hoops and not let userspace handle all of this by just 
>>>>>>>>>>>> leaving the getparam return the true status?
>>>>>>>>>>>
>>>>>>>>>>> The main areas impacted by the fact that we can't guarantee 
>>>>>>>>>>> that HuC load is complete when i915 starts accepting 
>>>>>>>>>>> submissions are boot and suspend/resume, with the latter 
>>>>>>>>>>> being the main problem; GT reset is not a concern because 
>>>>>>>>>>> HuC now survives it. A suspend/resume can be transparent to 
>>>>>>>>>>> userspace and therefore the HuC status can temporarily flip 
>>>>>>>>>>> from loaded to not without userspace knowledge, especially 
>>>>>>>>>>> if we start going into deeper suspend states and start 
>>>>>>>>>>> causing HuC resets when we go into runtime suspend. Note 
>>>>>>>>>>> that this is different from what happens during GT reset for 
>>>>>>>>>>> older platforms, because in that scenario we guarantee that 
>>>>>>>>>>> HuC reload is complete before we restart the submission 
>>>>>>>>>>> back-end, so userspace doesn't notice that the HuC status 
>>>>>>>>>>> change. We had an internal discussion about this problem 
>>>>>>>>>>> with both media and i915 archs and the conclusion was that 
>>>>>>>>>>> the best option is for i915 to stall media submission while 
>>>>>>>>>>> HuC (re-)load is in progress.
>>>>>>>>>>
>>>>>>>>>> Resume is potentialy a good reason - I did not pick up on 
>>>>>>>>>> that from the cover letter. I read the statement about the 
>>>>>>>>>> unlikely and small window where HuC is not loaded during 
>>>>>>>>>> kernel init/resume and I guess did not pick up on the resume 
>>>>>>>>>> part.
>>>>>>>>>>
>>>>>>>>>> Waiting for GSC to load HuC from i915 resume is not an option?
>>>>>>>>>
>>>>>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume 
>>>>>>>>> can't start until i915 resume completes.
>>>>>>>>
>>>>>>>> I'll dig into this in the next few days since I want to 
>>>>>>>> understand how exactly it works. Or someone can help explain.
>>>>>>>>
>>>>>>>> If in the end conclusion will be that i915 resume indeed cannot 
>>>>>>>> wait for GSC, then I think auto-blocking of queued up contexts 
>>>>>>>> on media engines indeed sounds unavoidable. Otherwise, as you 
>>>>>>>> explained, user experience post resume wouldn't be good.
>>>>>>>
>>>>>>> Even if we could implement a wait, I'm not sure we should. GSC 
>>>>>>> resume and HuC reload takes ~300ms in most cases, I don't think 
>>>>>>> we want to block within the i915 resume path for that long.
>>>>>>
>>>>>> Yeah maybe not. But entertaining the idea that it is technically 
>>>>>> possible to block - we could perhaps add uapi for userspace to 
>>>>>> mark contexts which want HuC access. Then track if there are any 
>>>>>> such contexts with outstanding submissions and only wait in 
>>>>>> resume if there are. If that would end up significantly less code 
>>>>>> on the i915 side to maintain is an open.
>>>>>>
>>>>>> What would be the end result from users point of view in case 
>>>>>> where it suspended during video playback? The proposed solution 
>>>>>> from this series sees the video stuck after resume. Maybe 
>>>>>> compositor blocks as well since I am not sure how well they 
>>>>>> handle one window not providing new data. Probably depends on the 
>>>>>> compositor.
>>>>>>
>>>>>> And then with a simpler solution definitely the whole resume 
>>>>>> would be delayed by 300ms.
>>>>>>
>>>>>> With my ChromeOS hat the stalled media engines does sound like a 
>>>>>> better solution. But with the maintainer hat I'd like all options 
>>>>>> evaluated since there is attractiveness if a good enough solution 
>>>>>> can be achieved with significantly less kernel code.
>>>>>>
>>>>>> You say 300ms is typical time for HuC load. How long it is on 
>>>>>> other platforms? If much faster then why is it so slow here?
>>>>>
>>>>> The GSC itself has to come out of suspend before it can perform 
>>>>> the load, which takes a few tens of ms I believe. AFAIU the GSC is 
>>>>> also slower in processing the HuC load and auth compared to the 
>>>>> legacy path. The GSC FW team gave a 250ms limit for the time the 
>>>>> GSC FW needs from start of the resume flow to HuC load complete, 
>>>>> so I bumped that to ~300ms to account for all other SW 
>>>>> interactions, plus a bit of buffer. Note that a bit of the SW 
>>>>> overhead is caused by the fact that we have 2 mei modules in play 
>>>>> here: mei-gsc, which manages the GSC device itself (including 
>>>>> resume), and mei-pxp, which owns the pxp messaging, including HuC 
>>>>> load.
>>>>
>>>> And how long on other platforms (not DG2) do you know? Presumably 
>>>> there the wait is on the i915 resume path?
>>>
>>> I don't have "official" expected load times at hand, but looking at 
>>> the BAT boot logs for this series for DG1 I see it takes ~10 ms to 
>>> load both GuC and HuC:
>>>
>>> <7>[    8.157838] i915 0000:03:00.0: [drm:intel_huc_init [i915]] GSC 
>>> loads huc=no
>>> <6>[    8.158632] i915 0000:03:00.0: [drm] GuC firmware 
>>> i915/dg1_guc_70.1.1.bin version 70.1
>>> <6>[    8.158634] i915 0000:03:00.0: [drm] HuC firmware 
>>> i915/dg1_huc_7.9.3.bin version 7.9
>>> <7>[    8.164255] i915 0000:03:00.0: [drm:guc_enable_communication 
>>> [i915]] GuC communication enabled
>>> <6>[    8.166111] i915 0000:03:00.0: [drm] HuC authenticated
>>>
>>> Note that we increase the GT frequency all the way to the max before 
>>> starting the FW load, which speeds things up.
>>>
>>>>
>>>>>>>> However, do we really need to lie in the getparam? How about 
>>>>>>>> extend or add a new one to separate the loading vs loaded 
>>>>>>>> states? Since userspace does not support DG2 HuC yet this 
>>>>>>>> should be doable.
>>>>>>>
>>>>>>> I don't really have a preference here. The media team asked us 
>>>>>>> to do it this way because they wouldn't have a use for the 
>>>>>>> different "in progress" and "done" states. If they're ok with 
>>>>>>> having separate flags that's fine by me.
>>>>>>> Tony, any feedback here?
>>>>>>
>>>>>> We don't even have any docs in i915_drm.h in terms of what it means:
>>>>>>
>>>>>> #define I915_PARAM_HUC_STATUS         42
>>>>>>
>>>>>> Seems to be a boolean. Status false vs true? Could you add some 
>>>>>> docs?
>>>>>
>>>>> There is documentation above intel_huc_check_status(), which is 
>>>>> also updated in this series. I can move that to i915_drm.h.
>>>>
>>>> That would be great, thanks.
>>>>
>>>> And with so rich return codes already documented and exposed via 
>>>> uapi - would we really need to add anything new for DG2 apart for 
>>>> userspace to know that if zero is returned (not a negative error 
>>>> value) it should retry? I mean is there another negative error 
>>>> missing which would prevent zero transitioning to one?
>>>
>>> I think if the auth fails we currently return 0, because the uc 
>>> state in that case would be "TRANSFERRED", i.e. DMA complete but not 
>>> fully enabled. I don't have anything against changing the FW state 
>>> to "ERROR" in this scenario and leave the 0 to mean "not done yet", 
>>> but I'd prefer the media team to comment on their needs for this 
>>> IOCTL before committing to anything.
>>
>>
>> Currently media doesn't differentiate "delayed loading is in 
>> progress" with "HuC is authenticated and running". If the HuC 
>> authentication eventually fails, the user needs to check the debugfs 
>> to know the reason. IMHO, it's not a big problem as this is what we 
>> do even when the IOCTL returns non-zero values. + Carl to comment.
>
> (Side note - debugfs can be assumed to not exist so it is not 
> interesting to users.)
>
> There isn't currently a "delayed loading is in progress" state, that's 
> the discussion in this thread, if and how to add it.
>
> Getparam it currently documents these states:
>
>  -ENODEV if HuC is not present on this platform,
>  -EOPNOTSUPP if HuC firmware is disabled,
>  -ENOPKG if HuC firmware was not installed,
>  -ENOEXEC if HuC firmware is invalid or mismatched,
>  0 if HuC firmware is not running,
>  1 if HuC firmware is authenticated and running.
>
> This patch proposed to change this to:
>
>  1 if HuC firmware is authenticated and running or if delayed load is 
> in progress,
>  0 if HuC firmware is not running and delayed load is not in progress
>
> Alternative idea is for DG2 (well in general) to add some more fine 
> grained states, so that i915 does not have to use 1 for both running 
> and loading. This may be adding a new error code for auth fails as 
> Daniele mentioned. Then UMD can know that if 0 is returned and 
> platform is DG2 it needs to query it again since it will transition to 
> either 1 or error eventually. This would mean the non error states 
> would be:
>
>  0 not running (aka loading)
>  1 running (and authenticated)
>
> @Daniele - one more thing - can you make sure in the series (if you 
> haven't already) that if HuC status was in any error before suspend 
> reload is not re-tried on resume? My thinking is that the error is 
> likely to persist and we don't want to impose long delay on every 
> resume afterwards. Makes sense to you?

This series does not stall any submissions on resume if there previously 
was an issue with the HuC load (the fence is left as completed), but 
we'll still attempt to re-load the HuC in the background if mei-gsc and 
mei-pxp are successful in their resume and call back into i915. Does 
that work for you?

Daniele

>
> @Tony - one more question for the UMD. Or two.
>
> How prevalent is usage of HuC on DG2 depending on what codecs need it? 
> Do you know in advance, before creating a GEM context, that HuC 
> commands will be sent to the engine or this changes at runtime?
>
> Regards,
>
> Tvrtko

