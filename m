Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F01F344C4D8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 17:10:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CDEB6EA13;
	Wed, 10 Nov 2021 16:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4696EA12
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 16:10:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="256396029"
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800"; d="scan'208";a="256396029"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 08:08:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800"; d="scan'208";a="602252072"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 10 Nov 2021 08:08:26 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 10 Nov 2021 08:08:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 10 Nov 2021 08:08:26 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 10 Nov 2021 08:08:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CHsiihStaZhxSIh0+04IBceHN7WtoK1HNYnAZvjKIzRsijSefdf9wS8Rufdzxn1sew3Woi1xzAyRsYvvhhcTNtWk2sBe5mifvNDgvmEgpCcQp4Gb4Nd/JV407oUpSKdoPU4N+SZJphvDKH5mJoQUqCni6O9RVBI0/77+k2fCUG6JgpxokOk862y574ieLgIovQX71L65eFpYRDQfj+qqdG7/MwEMDTfZfHaahGHQye2LY2dTgvDKB0wOh3NQorBu13K5DwkpAbzswIR9BEwMvsUw9Lv1PyxnnXkxg9oNK8qz3tIDpGxrk3DWjGtaPmHZTUW3HhS85H/TNASmaC0u+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VsOtxD4fi/Dv7GopeFWp2ww6EpS9i2MUWObBNjd7XQs=;
 b=TLN99DTJi1mT1IqEgHdoqPZa0DMAxq0k+6n2D7KidxcQDHcBsX5P3c9pe/STHZ4BhuNLTQTLDmKtxiCAt4yWN5ihxt9ZhXhEveoZUz6Z5AvzQniEzZ1MaYZN/wjBGIlIbscOx4vilC6hQatSmBVwyGNgM21rvA//EtJGjtV32USPM+hwCBq4xoMjU1S9UEqIBiR8189PseK2zLUZSwX5DKl7zBLPozjtzB2WEQVP4QzH/6Vjk/RBaTD1Xou+Vrq4RX/JtEhXxvAZtXf6Vp7X8a6C/tb8iuvRCIJ2Ph4nrOhqcNDyQEwrpDC98DJgiwqC916TpbnJZdzUk+2VyFLRSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VsOtxD4fi/Dv7GopeFWp2ww6EpS9i2MUWObBNjd7XQs=;
 b=lcdImQVBuCnQoAB2zHdCrOaYRVBZVzExmMg5Qml6YmxGeLcCO6/mERmTOAmltC1qzjb7G3btFmMzjkDIvjtIrKcRZzXlkWBgMXdRrR2/Ik05hBz8ekiCl4r+YSoTctzGIc4SEtHT2/hjzkuCptxLQ0fd9JcJBn+iIzq0ZZn4Y8A=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM8PR11MB5702.namprd11.prod.outlook.com (2603:10b6:8:21::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.13; Wed, 10 Nov 2021 16:08:00 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a9be:a6bc:6d1f:3068]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a9be:a6bc:6d1f:3068%4]) with mapi id 15.20.4690.017; Wed, 10 Nov 2021
 16:08:00 +0000
Message-ID: <feb0009e-e935-9eaa-56c5-86f28d0fdda7@intel.com>
Date: Wed, 10 Nov 2021 08:07:58 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.0
Content-Language: en-US
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
References: <20211108105617.3522809-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87h7cm79g8.fsf@intel.com>
 <SN6PR11MB34214435060D405A81BBA0F1DF929@SN6PR11MB3421.namprd11.prod.outlook.com>
 <87czn97sb4.fsf@intel.com> <ae685443-78b3-53d1-a190-a291904c8b1b@intel.com>
 <PH7PR11MB5819015D8575F22FD114754CDF939@PH7PR11MB5819.namprd11.prod.outlook.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <PH7PR11MB5819015D8575F22FD114754CDF939@PH7PR11MB5819.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0380.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::25) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
Received: from [192.168.1.65] (99.72.232.53) by
 SJ0PR03CA0380.namprd03.prod.outlook.com (2603:10b6:a03:3a1::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.16 via Frontend
 Transport; Wed, 10 Nov 2021 16:08:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e1997cb2-06f9-4d01-8335-08d9a46444c9
X-MS-TrafficTypeDiagnostic: DM8PR11MB5702:
X-Microsoft-Antispam-PRVS: <DM8PR11MB5702005592E9CB60CA72650AF4939@DM8PR11MB5702.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X/L9osScMR8esJV1nR2gIJsI20wa4z+pqAb1bf6F2gTulFbOusQGJtnWD4nQAN2m9Q/iJJLT9Q+IOs95BoDPa6ReT0cfYHRnN09/ptXNisbwj8hFJx2I3W2wHQ5ZHZea6C5WyPW55h3Cg/e8BOGhT4EhXt1v68COuslpLWyjU7LeX27zD0GX0qSoypNXEGs5/S9q/P+yyKAlJK4UMsd82wmxclMhoK+dBh3cPCfRc25oWnWTdTm4NNbqXOSfCUcaI+V4X/Rhbfzq/x8ciuUqBxCXKd1zjS9P90FiulRDQvS64LT0N3bQpHxvufwuTN4eeOxwwgqw/+GTThZfNrHonl5gN0vzjnCBTG4NZ/tfQ4X0msPFnr8tE7obRnRGjcdHCBXcArH3B7y0CVKZ5i5s7SyT3dvAwCU62A1nWrIpoX0xOvmn9Vk70I6efThGPID+2oIFCD5ruorQAXcAxrGnB0/nTdlLtk+K6nzqyZPTZE4YO1znekt7jz17Omk1u3rbuW0StJG3igqGUS+7msmlHEEzSfz3DsHv8v3M+s1SZykwUZHqzLYNPkI/3KrUr0h5bO0G3kD28ldJwvHJphRkxGBRJGUaC7orUv78juq+R5f48kQ76N/N9+DmYT/GBV8+QS5wD5U077IReU/78kueJWz+4xf2HZdYv6KfplZF9BvfQLsCf+SWSL4AOsJ+FgZMBJj5S26MeYK22P/1DJPK39xC6TSN87ZgW5dkS7/iDms=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(16576012)(53546011)(15650500001)(38100700002)(2616005)(8936002)(86362001)(508600001)(956004)(31686004)(31696002)(45080400002)(316002)(6486002)(26005)(66476007)(66556008)(36756003)(8676002)(82960400001)(4326008)(186003)(66946007)(110136005)(5660300002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z05Bd0diYWNZb3B0bWpuUmpHSXdrc2UyemxkKzRLT3JTb3hwQnV2VjlMT2Fw?=
 =?utf-8?B?OWh5M0NtTW1oVm1GY1JTQm5KUDAzM0duK1ZsMWRoOHc5WEVob3VrN3JDblQ3?=
 =?utf-8?B?UG1ZUFhGK1VCSFJrS0RSeDRDTlhBYVgraEZoZUpQOFVpaFN6R2hJclI2UXlr?=
 =?utf-8?B?Yk0wYjc5cW5HeUcya051MlV0VDQzY29mWjhjZVJmRFNFd0U1NjFnV1prWjNW?=
 =?utf-8?B?V1gvK3ZSaHRDUGk0dmkzaVUrZFdpK1gwYU4zdjJOZlpwanJpU1ZlUkNNdW9O?=
 =?utf-8?B?Q0s2TXhOOVhpNStDUDdselZzRXd5UzcvVnZrSmtKNHRjRzJTWnZhejBxSFZD?=
 =?utf-8?B?UVF6UE9xTW9PYWYwV2d3N3dQbnVSaFdaMGxFRHNIamJtU0VYRFhOUWtqYXAw?=
 =?utf-8?B?Rjdwam02NTUrZkVTSEtDQVlvRUw0SG1NOGl6M2NkVVZnMVprdU54MldCZzBP?=
 =?utf-8?B?T3plcW56TkVqeldlRVg3OVNoWVBLU2s4OXdrdGtWRTBOT2FWd0k3RUp1RXRR?=
 =?utf-8?B?OFdkYTdIaGJvL0tpOTVxdnBQNFgzckRzUHRVVzRhZHNnZjRQQy9yZ3d1YWtV?=
 =?utf-8?B?OXhNNWdzMWp4alZoUjN1WFhIMGUvWkNJWjRFN1Bnd0U4dTdFd1IxTWV3RHJP?=
 =?utf-8?B?NXJ2RUdXR1ZsT2dyRndrVU5VN0RkK2J6VWRuUDFZUUIxTHRySFNLU1I3a2V1?=
 =?utf-8?B?MUZPWVRvN1RHWDJ3TXFxd09RbHI1QlRscEk4SnNxdldaOVBHa0FTMDFrK2xu?=
 =?utf-8?B?dlZxSzA1VlcwUExyVDdNWUFDS3Z1SlFEMlNlVU9MekVzanMrOEhVZ3BZL3Jt?=
 =?utf-8?B?MWtKcDlPSUV3NjNyQ24yTFBxYk5YUjFLYkZaVWhzL3JEZE0weU1JOEZLdWFo?=
 =?utf-8?B?dlhkUlBjODkwejIzM1BKcEdxdXkrMVhOK0FEQkNHQllGYzVXWDYxcENwcEJU?=
 =?utf-8?B?K3cwSkxzcTNIWHhEWGw3dk9yZ0xLTWFxcit1THg0T2JwWDBPcXBqWklkWkFH?=
 =?utf-8?B?SlU5NVpEbjgxVUFCbVdzdGhEWmhXNmpqSVNyZ1hES3ZnWVFnQUtnZXcrMGMy?=
 =?utf-8?B?cmlzTEkveE1VQWlJMkNxNm9lT0FvbDZhTHdQUnRNMmV6SU5rRXZXV2RWS3Vu?=
 =?utf-8?B?SFdZcUErdWcxbWU0WE9KdE16TlVtTC9vN1AwenJEeGF4R2ZDRGVRc2k0RFh3?=
 =?utf-8?B?cFpTczRvRm1xaEdOeGxSeDlidG5DNE40Q2ZGaUR1V1dCTk1OZ3hxY0lpZCtC?=
 =?utf-8?B?VzV6aU1SY3lxWGVranp2YTNvVUc1K2ZRamxuNSt1UmRhKzFtWTNEaHFKSGVn?=
 =?utf-8?B?NnpjY3NoU1Z5ZFBSUE5KN0Q0SEVmOS9CaitaWnlRQ0NsdG9RNzZhQjhyTDB2?=
 =?utf-8?B?cEMvUXVIZDJjUnJ6S1h5M3l0bFFXRTBQRjBERi9BbDVqRW14ak9xc2pCSzM2?=
 =?utf-8?B?aGVpQ3JCZHJEK0g5TGttMVVXcnFOMkFxZ3ptdEZ1TVFuOUtBby9DMTBWTGtw?=
 =?utf-8?B?UVFxNWV4TWYwNEVtM3NzcXBFeG1ZTStTNzFocEQyWEc1em1HdDBNMjNaRFNI?=
 =?utf-8?B?SDRDSzg0SlNaQWFXejVINDlWb2ZNK0pCQU9ORkNxTEV6UVRPYlhnNUJWZlZX?=
 =?utf-8?B?NnFrWE04M3VtOVVXWVNWTDlOU2JwVnNDWExGZm9ja0NVSUt0dE5aN2NIQWhW?=
 =?utf-8?B?bk5uUVNEOS91ZE5oY0lEL1huZzJPU1JmeHdiMEQrRnBzR2ErSGNkNHlzelYx?=
 =?utf-8?B?aEc2S0g1K0wxcU0vVFN4T2MrWE1uM2laOG5uQXJWL2lNaVQrWGFWYklXYlkr?=
 =?utf-8?B?aWljckhEcUhjbUI2WjdJdFZ1emc1eHlMSUdmRldiaUE5K004TW9ZcWhxWDlP?=
 =?utf-8?B?YU5FakJudVM0QzR4N1M5TlF2SlJRWFM4eURRbGhHSjBQMDlLZUxPTVNlb2dU?=
 =?utf-8?B?STZYUGFSd0dXSTc0QnRkWHhwaUl4WWpWK0U4Mnpwc3l2cFcvSkVYcHNmN0kv?=
 =?utf-8?B?SGJUOUJwTmJmUEppS1h6VWRSUUE1M0dNdGx6ekJSM3hMQ04vYnUzb0NKdWc0?=
 =?utf-8?B?NWFXTEdaUk1NRzQxVExMcEoxR09qRDk5c25ZV0xjNjJoQU5VM0JxcmtwK055?=
 =?utf-8?B?Z01uNGVzK0RoNEZFd2xwN3doYUJKMDY2RGVNaTVOVGNwMmJ6K3FXV0xlNThl?=
 =?utf-8?B?YUQ4K0NicDc5bUl6WlY5bE5XaFVMK2hUaEFZR0drYmlBRURzU1g5S2pBNG5S?=
 =?utf-8?B?U2Q0dEE0cFNUMlphTGloY01kdldRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1997cb2-06f9-4d01-8335-08d9a46444c9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2021 16:08:00.8701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rPLFdNBDX7Ep1HJLsJAuKxTUS+x1oaf3gp8gRsI86/+Tpthp7KvNrisMpWo/3nOrhnDcV4B8GHKSSS9sOL+K3ZIKvjdy3zOxj2to5nKQtBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5702
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Hold RPM wakelock during
 PXP suspend
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/10/2021 5:33 AM, Surendrakumar Upadhyay, TejaskumarX wrote:
>
>> -----Original Message-----
>> From: Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>
>> Sent: 10 November 2021 03:05
>> To: Jani Nikula <jani.nikula@linux.intel.com>; Surendrakumar Upadhyay,
>> TejaskumarX <tejaskumarx.surendrakumar.upadhyay@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Hold RPM wakelock during
>> PXP suspend
>>
>>
>>
>> On 11/8/2021 10:32 PM, Jani Nikula wrote:
>>> On Tue, 09 Nov 2021, "Surendrakumar Upadhyay, TejaskumarX"
>> 	<tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>>>>> -----Original Message-----
>>>>> From: Jani Nikula <jani.nikula@linux.intel.com>
>>>>> Sent: 09 November 2021 00:37
>>>>> To: Surendrakumar Upadhyay, TejaskumarX
>>>>> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
>>>>> gfx@lists.freedesktop.org
>>>>> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Hold RPM wakelock
>>>>> during PXP suspend
>>>>>
>>>>> On Mon, 08 Nov 2021, Tejas Upadhyay
>>>>> <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>>>>>> selftest --r live shows failure in suspend tests when RPM wakelock
>>>>>> is not acquired during suspend.
>>>>>>
>>>>>> This changes addresses below error :
>>>>>> <4> [154.177535] RPM wakelock ref not held during HW access <4>
>>>>>> [154.177575] WARNING: CPU: 4 PID: 5772 at
>>>>>> drivers/gpu/drm/i915/intel_runtime_pm.h:113
>>>>>> fwtable_write32+0x240/0x320 [i915]
>>>>>> <4> [154.177974] Modules linked in: i915(+) vgem drm_shmem_helper
>>>>>> fuse snd_hda_codec_hdmi snd_hda_codec_realtek
>> snd_hda_codec_generic
>>>>>> ledtrig_audio mei_hdcp mei_pxp x86_pkg_temp_thermal coretemp
>>>>>> crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_intel_dspcfg
>>>>>> snd_hda_codec snd_hwdep igc snd_hda_core ttm mei_me ptp
>> snd_pcm
>>>>>> prime_numbers mei i2c_i801 pps_core i2c_smbus intel_lpss_pci btusb
>>>>>> btrtl btbcm btintel bluetooth ecdh_generic ecc [last unloaded:
>>>>>> i915] <4> [154.178143] CPU: 4 PID: 5772 Comm: i915_selftest Tainted: G
>>>>>> U            5.15.0-rc6-CI-Patchwork_21432+ #1
>>>>>> <4> [154.178154] Hardware name: ASUS System Product Name/TUF
>>>>> GAMING
>>>>>> Z590-PLUS WIFI, BIOS 0811 04/06/2021 <4> [154.178160] RIP:
>>>>>> 0010:fwtable_write32+0x240/0x320 [i915] <4> [154.178604] Code: 15
>>>>>> 7b
>>>>>> e1 0f 0b e9 34 fe ff ff 80 3d a9 89 31
>>>>>> 00 00 0f 85 31 fe ff ff 48 c7 c7 88 9e 4f a0 c6 05 95 89 31 00 01
>>>>>> e8
>>>>>> c0 15 7b e1 <0f> 0b e9 17 fe ff ff 8b 05 0f 83 58 e2 85 c0 0f 85 8d
>>>>>> 00 00 00 48
>>>>>> <4> [154.178614] RSP: 0018:ffffc900016279f0 EFLAGS: 00010286 <4>
>>>>>> [154.178626] RAX: 0000000000000000 RBX: ffff888204fe0ee0
>>>>>> RCX: 0000000000000001
>>>>>> <4> [154.178634] RDX: 0000000080000001 RSI: ffffffff823142b5
>>>>>> RDI: 00000000ffffffff
>>>>>> <4> [154.178641] RBP: 00000000000320f0 R08: 0000000000000000
>>>>>> R09: c0000000ffffcd5a
>>>>>> <4> [154.178647] R10: 00000000000f8c90 R11: ffffc90001627808
>>>>>> R12: 0000000000000000
>>>>>> <4> [154.178654] R13: 0000000040000000 R14: ffffffffa04d12e0
>>>>>> R15: 0000000000000000
>>>>>> <4> [154.178660] FS:  00007f7390aa4c00(0000)
>>>>>> GS:ffff88844f000000(0000)
>>>>>> knlGS:0000000000000000
>>>>>> <4> [154.178669] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>>>>> <4> [154.178675] CR2: 000055bc40595028 CR3: 0000000204474005
>>>>>> CR4: 0000000000770ee0
>>>>>> <4> [154.178682] PKRU: 55555554
>>>>>> <4> [154.178687] Call Trace:
>>>>>> <4> [154.178706]  intel_pxp_fini_hw+0x23/0x30 [i915] <4>
>>>>>> [154.179284]
>>>>>> intel_pxp_suspend+0x1f/0x30 [i915] <4> [154.179807]
>>>>>> live_gt_resume+0x5b/0x90 [i915]
>>>>>>
>>>>>> Changes since V1 :
>>>>>> 	- split the HW access parts in gt_suspend_late - Daniele
>>>>>> 	- Remove default PXP configs
>>>>>>
>>>>>> Signed-off-by: Tejas Upadhyay
>>>>>> <tejaskumarx.surendrakumar.upadhyay@intel.com>
>>>>>> ---
>>>>>>    drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 ++++---
>>>>>>    drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 15 ++++++++++++---
>>>>>> drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 18 ++++++++++++++++--
>>>>>>    3 files changed, 32 insertions(+), 8 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>>>> b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>>>> index b4a8594bc46c..d4029de1c80d 100644
>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>>>> @@ -303,7 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt
>> *gt)
>>>>>>    	user_forcewake(gt, true);
>>>>>>    	wait_for_suspend(gt);
>>>>>>
>>>>>> -	intel_pxp_suspend(&gt->pxp, false);
>>>>>> +	intel_pxp_suspend_prepare(&gt->pxp, false);
>>>>>>    }
>>>>>>
>>>>>>    static suspend_state_t pm_suspend_target(void) @@ -328,6 +328,7
>>>>>> @@ void intel_gt_suspend_late(struct intel_gt *gt)
>>>>>>    	GEM_BUG_ON(gt->awake);
>>>>>>
>>>>>>    	intel_uc_suspend(&gt->uc);
>>>>>> +	intel_pxp_suspend(&gt->pxp);
>>>>>>
>>>>>>    	/*
>>>>>>    	 * On disabling the device, we want to turn off HW access to
>>>>>> memory @@ -355,7 +356,7 @@ void intel_gt_suspend_late(struct
>>>>>> intel_gt *gt)
>>>>>>
>>>>>>    void intel_gt_runtime_suspend(struct intel_gt *gt)  {
>>>>>> -	intel_pxp_suspend(&gt->pxp, true);
>>>>>> +	intel_pxp_runtime_suspend(&gt->pxp);
>>>>>>    	intel_uc_runtime_suspend(&gt->uc);
>>>>>>
>>>>>>    	GT_TRACE(gt, "\n");
>>>>>> @@ -373,7 +374,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
>>>>>>    	if (ret)
>>>>>>    		return ret;
>>>>>>
>>>>>> -	intel_pxp_resume(&gt->pxp);
>>>>>> +	intel_pxp_runtime_resume(&gt->pxp);
>>>>>>
>>>>>>    	return 0;
>>>>>>    }
>>>>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>>>>> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>>>>> index 23fd86de5a24..3f91996dc6be 100644
>>>>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>>>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>>>>> @@ -7,8 +7,9 @@
>>>>>>    #include "intel_pxp_irq.h"
>>>>>>    #include "intel_pxp_pm.h"
>>>>>>    #include "intel_pxp_session.h"
>>>>>> +#include "i915_drv.h"
>>>>>>
>>>>>> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
>>>>>> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool
>>>>>> +runtime)
>>>>>>    {
>>>>>>    	if (!intel_pxp_is_enabled(pxp))
>>>>>>    		return;
>>>>>> @@ -23,10 +24,18 @@ void intel_pxp_suspend(struct intel_pxp *pxp,
>>>>>> bool
>>>>> runtime)
>>>>>>    	 */
>>>>>>    	if (!runtime)
>>>>>>    		intel_pxp_invalidate(pxp);
>>>>>> +}
>>>>>>
>>>>>> -	intel_pxp_fini_hw(pxp);
>>>>>> +void intel_pxp_suspend(struct intel_pxp *pxp) {
>>>>>> +	intel_wakeref_t wakeref;
>>>>>>
>>>>>> -	pxp->hw_state_invalidated = false;
>>>>>> +	if (!intel_pxp_is_enabled(pxp))
>>>>>> +		return;
>>>>>> +	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm,
>>>>> wakeref) {
>>>>>> +		intel_pxp_fini_hw(pxp);
>>>>>> +		pxp->hw_state_invalidated = false;
>>>>>> +	}
>>>>>>    }
>>>>>>
>>>>>>    void intel_pxp_resume(struct intel_pxp *pxp) diff --git
>>>>>> a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>>>>> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>>>>> index c89e97a0c3d0..f2cf3117ed93 100644
>>>>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>>>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>>>>> @@ -9,10 +9,15 @@
>>>>>>    #include "intel_pxp_types.h"
>>>>>>
>>>>>>    #ifdef CONFIG_DRM_I915_PXP
>>>>>> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime);
>>>>>> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool
>>>>>> +runtime); void intel_pxp_suspend(struct intel_pxp *pxp);
>>>>>>    void intel_pxp_resume(struct intel_pxp *pxp);  #else -static
>>>>>> inline void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
>>>>>> +static inline void intel_pxp_suspend_prepare(struct intel_pxp
>>>>>> +*pxp, bool runtime) { }
>>>>>> +
>>>>>> +static inline void intel_pxp_suspend(struct intel_pxp *pxp)
>>>>>>    {
>>>>>>    }
>>>>>>
>>>>>> @@ -20,5 +25,14 @@ static inline void intel_pxp_resume(struct
>>>>>> intel_pxp *pxp)  {  }  #endif
>>>>>> +static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp) {
>>>>>> +	intel_pxp_suspend_prepare(pxp, true);
>>>>>> +	intel_pxp_suspend(pxp);
>>>>>> +}
>>>>>>
>>>>>> +static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp) {
>>>>>> +	intel_pxp_resume(pxp);
>>>>>> +}
>>>>> For the casual reader, the pxp suspend/resume functions have become
>>>>> an impossible interface to use correctly without digging into the source
>> code.
>>>>> Separate runtime suspend/resume calls *and* a suspend function with
>>>>> runtime parameter?!?
>>>> Hi Daniele, would you be ok if I add runtime arg? Please let me know what
>> do you think.
>>> Err, please *avoid* having runtime as parameter.
>>>
>>> BR,
>>> Jani.
>> Might be better to just open-code the runtime_suspend function, i.e.:
>>
>> void intel_pxp_runtime_suspend(struct intel_pxp *pxp) {
>> 	if (!intel_pxp_is_enabled(pxp))
>> 		return;
>>
>> 	pxp->arb_is_valid = false;
>> 	pxp->hw_state_invalidated = false;
>>
>> 	intel_pxp_fini_hw(pxp);
>> }
>>
>>
>> And remove the bool param from suspend_prepare. No changes required
>> for the resume.
>> Note that the change above requires the function to be moved to the C file,
>> with an empty implementation to be added in the header for when the PXP
>> config is not set (basically the same thing we do for the pxp_suspend
>> function).
>>
>> Daniele
> /*
>           * Contexts using protected objects keep a runtime PM reference, so we
>           * can only runtime suspend when all of them have been either closed
>           * or banned. Therefore, there is no need to invalidate in that
>           * scenario.
>           */
>          if (!runtime)
>                  intel_pxp_invalidate(pxp);
>
> This needs boolean in suspend_preapre.

If you're open-coding runtime_suspend, there is only one user left of 
suspend_prepare (the one with runtime = false), so we don't need the 
boolean anymore, just always call intel_pxp_invalidate unconditionally 
and get rid of the comment above it.

Daniele

>
> Thanks,
> Tejas
>>>> Thanks,
>>>> Tejas
>>>>> BR,
>>>>> Jani.
>>>>>
>>>>>>    #endif /* __INTEL_PXP_PM_H__ */
>>>>> --
>>>>> Jani Nikula, Intel Open Source Graphics Center

