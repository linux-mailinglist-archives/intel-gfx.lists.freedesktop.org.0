Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 560695EF783
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 16:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B98B10EAA3;
	Thu, 29 Sep 2022 14:28:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600CE10EAA3
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 14:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664461691; x=1695997691;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZncZgKohBe4w19JhNc7o+2olccXG1MwbSOMCcLq4wn0=;
 b=oA/2TY3qAFPy5I0paSgDtxD06bGLUs9bPCIBm9xWvH8TxjKXyFPre1Jv
 AwZRfdQyDTi1iJg1k98i7N4cd3vqi0mvJva8V0chS7Yq0DYpSM6mh0J/A
 mFMBNN81fLe5chn204WW772B31iqyYCYMzDgDSHl5n5Ogirafr0qwPykO
 Q87O1XG4knGOSppZT9y24zfj2o9cCucyniv/yUZ5+eaHHVgjbtmUxgKK8
 RMgEvXlbvq3+hPXjm/Ve/mjuB6aRzu8hF9rqu26AV6BeGtr3nOcEojz9y
 mOi0FEwUVx4ZHRnVytZwEMn0NSad4xQGPuycFRLub6llKJ5aQ1qfTZQ9u A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="302825700"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="302825700"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 07:28:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="747855334"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="747855334"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 29 Sep 2022 07:28:10 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 07:28:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 29 Sep 2022 07:28:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 29 Sep 2022 07:28:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hknw0u4B6gvXo8N6y/DriXKIZKcuM/sx/wsuAnGBfMr40VM4uX/vTh6yr8lk36wdjEPY2EvMDtZVSUyuYp8LemXWHXmvrnCykI2G9u8+E4yo/iCoH9KpLK3PeImDXhra8lZJ/yxvF6njFji214hdE1UA09u/TJh0LjbN592zgTZZuP1VB/Rqe5ayXVEK9O0EgmYVW0Lpfb9fDocvxMD1G9RitsW8Aigz3/JiXAZPdVrcNBYdW3R/6PtDjUoagDkKgeh08uDY7keRabf6Jny3N85+1Y0Hc3CsGvQ1igm7YMtzIZsUW7kMbQ8BIfOFOR7Hw72bhaq2kp3IgpYdcOxVTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qrn+Dln9SUPt965XJ1QJ0qjkZEh0NgxNBJNAlHbknSA=;
 b=GcF5CxyNFaOfDZnV7VtMEvkpCQb48Y2llAk3UQ8+2ybfbaFmMjrsVZeMKLwNt/KTTL8va1tKtIbq2ZYbb+ijryb8Cod770UjIsw3jM/LQur7/9hK9ttf3FKsKZMT3e+yhpgdXQ+kiuN2Yg5k2+fL8AseaEWlv34+wNB1pDtEUSgjCJwxF21cB5yOpMxKmxxtMrnaYXSu+CNCg+NY3ynte+UofhOh2zUT91FU7Yg/zSXrUNqbq3WBkbbMjbjw1b6chQmO41pAOGmFX4+IBKLoufPbdywwU3PH9Rjw6StlneGttFtq1wY74TqpE26Yc7LlXU+HZBuH9L9OtdQ8aeqAew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB4673.namprd11.prod.outlook.com (2603:10b6:5:2a4::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.20; Thu, 29 Sep 2022 14:28:08 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::280f:75b5:17ad:1668]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::280f:75b5:17ad:1668%4]) with mapi id 15.20.5676.020; Thu, 29 Sep 2022
 14:28:08 +0000
Message-ID: <744e3c1d-0130-a3f8-1137-f272805e9002@intel.com>
Date: Thu, 29 Sep 2022 07:28:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, John Harrison <john.c.harrison@intel.com>, "Andi
 Shyti" <andi.shyti@linux.intel.com>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
 <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
 <7039faf9-b2a1-9400-fdc7-f5dcd7a8dd9a@intel.com>
 <f34e60c9-17ea-56a0-acb2-bb8d97363993@intel.com>
 <c3af2831-d06b-5818-baf2-e88b4d1f6694@linux.intel.com>
 <ad885543-02f3-5a44-0d06-0ffe48cf29e2@intel.com>
 <ad22bd93-fcdb-3463-9915-1e4409618239@linux.intel.com>
 <e4200a76-f7e0-106e-cff9-5e58f27b40da@intel.com>
 <92edfe5c-17f9-9f82-7df4-d653c7899765@linux.intel.com>
 <a6c8ae15-c84d-0d8b-e6bf-a1e4a2914b1f@intel.com>
 <85255d26-bdd0-a9ab-7d6a-347e616ff279@linux.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <85255d26-bdd0-a9ab-7d6a-347e616ff279@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR08CA0031.namprd08.prod.outlook.com
 (2603:10b6:a03:100::44) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|DM6PR11MB4673:EE_
X-MS-Office365-Filtering-Correlation-Id: 8645051c-9603-406a-b117-08daa226d458
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q7Z/BzcI8u/vCmg70Chwgk1qcpFm3kfhBGkJyFIrr2ZL54e7lYhfSGuBgbEmvN/vfLNgM8cxIiGWzxuGsZcDyrN8yy6+lev7XLJWpFE8HHPhvXTM9NN4JpxRVj8FFWFCZWV6qK7WbGsJ+O2HdtgYiwtpLlCFlm1zkRGcT4FanCtAU8q2A1ThAEyUgcRLRkC7Ns8sDtj7CgidOMqiRnX3DqFNCTf9AS3sqSmz40fR1lMJjTexF3p4+98quFXPbZ8VNZVti8z3vDO8//cI4Vpdc7/ZwOsaajSVbMla+cJIS6G5zwGABATOz8OwcaaETYCJafd8RZ+6mKYuDvky69WMnMV+aDxlgnEVBetVnpEgqjM5ILmTYrmwv30qJWmAzS9UQLmQR810akuVeudJngkWvy3tDEbt/NBT00QU1pa5ESn7iHU/bju6Key5+iqXKvB6mWFQdqgj97EQc8QrYTt/YAFBFKCFubYCgKrcWxO/mqJj/InosO7Uqgx6T++DK0tZImMJXPkf2ka2gqn6ZBpsCgx/FYjs7kBitf9riBE4CPnsn3+7yVfZZtu2/XzoiNXZHzNPFP6MwP0fSx8q5ACdRoJ1DQhrQ56aT+VLPuPSj8YQdkesoldgufNydLAKxgJGQ6ZUm39gNjs+txvorggKmZdLPxKa/X0qL2B5Rh6gbYIfcyQBz104TpNL2h5VKV0Kf3+n/0iMtMu5DYpOFkzWoG0g5DyaXhT577rb21LXuFDyxtT+g5v7J80uR3CrNiMi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(346002)(366004)(136003)(451199015)(66899015)(6666004)(31686004)(478600001)(966005)(6486002)(6506007)(41300700001)(82960400001)(31696002)(38100700002)(186003)(86362001)(66946007)(66476007)(4326008)(8676002)(66556008)(2906002)(30864003)(26005)(36756003)(6512007)(2616005)(53546011)(83380400001)(5660300002)(110136005)(8936002)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXhxbVR0aVR3Qmw3NFFjV3dFWEd4V2JTRnl2SEhzL0s4cndQUzNRTUY4QWN4?=
 =?utf-8?B?S2g4NVA5LzdDU3RKZHhjb3h2clJtcHZmcjNPeDMya3NSdW5mQ21IMWtjYU5N?=
 =?utf-8?B?UHMrclZENTF2NnE2cVpORlB1Vm0xN0VqNG8yd052bGozUjl3ODU0dkxGUUtM?=
 =?utf-8?B?Rk1DQmJWWGRBZ3RmWDVuOHpyWUNNN0oyQWQxTVNJNWE2K21kQXdhK1prTWFQ?=
 =?utf-8?B?VDEvbFlueWFDS0MxQy9ZN2tVMUtvRVgyMnkxcDNOQUhuc3BrNHk3b084RHZW?=
 =?utf-8?B?ellNc0VUTUJRekJmSVJtdHMxQ2QxSEIxV0s1b0toSHhpTEl2ckh6N085d1JX?=
 =?utf-8?B?SGhQUmtDT1A3YVlBR05laHhaN1hxSHA5aS9kQjNrTUNadjI0ZUpPVlAwa1hT?=
 =?utf-8?B?elovQ2hkQUtxL01OTll1bTlOL0dmRXY0V3hNb2dFR0huR0M0ZGJzcG51YWtR?=
 =?utf-8?B?VzJ6eStlMDFzWWhXQnFSRUEyRUc1U1lLd0lJdnExTi9OSytvTjNiT0VUS0xa?=
 =?utf-8?B?Wmc4bVRjRkhCc1JXcWhxWlVPQjVOTWRkcG1uNjZwVnZuRFBsQUFXa3hzNHpv?=
 =?utf-8?B?ZkVIbnAreUNLaGkxMzlCV2dkanFVdnhCc3ZORmp2MVZPamtXaGNGNTkrTTNq?=
 =?utf-8?B?bU1VUjNORUhjK3dCUmtiMTAvVnFDN1BvcGd6SkZUSnk0K2NsRHBaSkNabllw?=
 =?utf-8?B?cTJ0Rkw2TW91MW5MRkRhRTU2cVZMenFWZGI4bE10Y25MM0NnTzBzTWRER0tL?=
 =?utf-8?B?YnFjZkx2QURNQVFJamQzV01DWmRnNWxrYWFBV0NIZElmaXBEbFFPWW5OM0VS?=
 =?utf-8?B?OU1rQ0xWL1dhSWZFUCtNeXhNQUtEbXluQVV4RmJXa1Z5ZHNhM3gwT1Y1bFhk?=
 =?utf-8?B?c1ZtVDRGQjdiWTBySUE5WWtWUmpPQ2gwbWZ5Z2dvRXFTYUhIclpYa2V4RXJG?=
 =?utf-8?B?M1l2QjJoWUpRMUM1cFhqaFpuRi8rY0Yxd2NPbm5qbXhZQklCVzV3cGE0akV4?=
 =?utf-8?B?THZBSTlIdFRBb3BZVWxkZmlyTFlpTTZhSStOSml6V25QNjM4dVJCNUFoVGhx?=
 =?utf-8?B?ZlgwVWhQSmlEdkFweHlyb3dGaEpFbW9xTmIxQWMzSkVkVlY2V2VzeW9xSW5u?=
 =?utf-8?B?Y0kwblNZQkk5ZDc4UXR4M0VTRWRtcjJNVWZJd25QSjgzRDZQczRpRmtCYW8r?=
 =?utf-8?B?Y1pSOWhlUm1KOVhIT05FUHFZWFpSUkVsRGJhTHhJYVgrMm9uSnR4aFUvRkE2?=
 =?utf-8?B?b25wQzdwaU1KK3Q2QSsxT3ZoS2JxRHkwQWtRb3lZOHBwd2QySmVUemV5NVNS?=
 =?utf-8?B?ayttMmxpSjlGOTNlYmRKYTBkTVRocDY3Q3B6eTZ5OStKM1FCKy8yZGFGMGdE?=
 =?utf-8?B?RTBFeGJvKzA3N3Y5Z3BPM3VsRnJPam44YU94dWR2ck12aUZXSEd1a3ZEc0NQ?=
 =?utf-8?B?OHVTVDFxbU9TNlVrZVp3bDBIakF6enR1SlZMai9YMDg0WGNGWWVnYnZoT3hu?=
 =?utf-8?B?TlB6cTlYVFl2ZkdJa3p2UXZoTmxMQnU1bmpyZno4bzBHNHdXVVc0R0QyRjdW?=
 =?utf-8?B?MVFnSkE3Z25SRXVHaXBPdVJ6ZURGSEhmYUxOWTNYMDRudXFqSTlpVkZuS3Rr?=
 =?utf-8?B?R04zN1AxWWFXcDNQUXNZN2g0Sy9VeG9hRno4U3ZueVZsd0E5TGRaREtJNGZQ?=
 =?utf-8?B?Q251VnRDMVQ4YkF2dng0d0F5ZHYzaHBDeGQzRDJvNXg5dWtEUXlhZHQ2ZTdY?=
 =?utf-8?B?K3dNZTdJM01vUlNzc08zU0k4U2RPUHVQUDFucjFmY1dxUFJ1WCtJQk5wSG44?=
 =?utf-8?B?NmF0UUZYcFVtUzBEcXdId2xVQWVjV1dCR0VLaUc2NW1kb2tOaVpUdDBjd2NZ?=
 =?utf-8?B?Mm85d050RFNxQld5N2J0MzNieWlja2JaeklWYTNwVUE3RDRlQmtTdk05QzV1?=
 =?utf-8?B?ZWlVMWRXNUwwN2pnSHRnYjFVam9BOWRKS1FIbndGRjBjWUNlem9PTVJTOHU1?=
 =?utf-8?B?UjlRZDJBQjVzMjR1U2lWVXNSbG1OSHZNeVh0ZHVZWk1OSzVKbEQxZHJDcldZ?=
 =?utf-8?B?YXlZNGZwWmM2c1JtRkNDdTIyaUozQitMWlZSSVhzWUpMM3EySEcxV1dobWRt?=
 =?utf-8?B?L3VVRitKbXAycHhDaHpMRUVZdDkyUXRZdDBpOEo3aEUxeHhpZEN4UHBwUnlv?=
 =?utf-8?Q?lb1/SgRKZZpVSIvvT2ZWapU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8645051c-9603-406a-b117-08daa226d458
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 14:28:08.3729 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SnGoY/wOQdErqgELEFlr+3sgUE1agqxm00u/SD09HGqHMxIeTo7IB6vQbt3OgsiytIP8VzzM+HJ7vH8CyzxRKmY0BXvApfnefyA36ZO9nxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4673
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: do not capture error state on
 exiting context
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 9/29/2022 3:40 AM, Tvrtko Ursulin wrote:
>
> On 29/09/2022 10:49, Andrzej Hajda wrote:
>> On 29.09.2022 10:22, Tvrtko Ursulin wrote:
>>> On 28/09/2022 19:27, John Harrison wrote:
>>>> On 9/28/2022 00:19, Tvrtko Ursulin wrote:
>>>>> On 27/09/2022 22:36, Ceraolo Spurio, Daniele wrote:
>>>>>> On 9/27/2022 12:45 AM, Tvrtko Ursulin wrote:
>>>>>>> On 27/09/2022 07:49, Andrzej Hajda wrote:
>>>>>>>> On 27.09.2022 01:34, Ceraolo Spurio, Daniele wrote:
>>>>>>>>> On 9/26/2022 3:44 PM, Andi Shyti wrote:
>>>>>>>>>> Hi Andrzej,
>>>>>>>>>>
>>>>>>>>>> On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
>>>>>>>>>>> Capturing error state is time consuming (up to 350ms on 
>>>>>>>>>>> DG2), so it should
>>>>>>>>>>> be avoided if possible. Context reset triggered by context 
>>>>>>>>>>> removal is a
>>>>>>>>>>> good example.
>>>>>>>>>>> With this patch multiple igt tests will not timeout and 
>>>>>>>>>>> should run faster.
>>>>>>>>>>>
>>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
>>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
>>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
>>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
>>>>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
>>>>>>>>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>>>>>>> fine for me:
>>>>>>>>>>
>>>>>>>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>>>>>>>>
>>>>>>>>>> Just to be on the safe side, can we also have the ack from 
>>>>>>>>>> any of
>>>>>>>>>> the GuC folks? Daniele, John?
>>>>>>>>>>
>>>>>>>>>> Andi
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>> ---
>>>>>>>>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>>>>>>>>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>>>>>>>
>>>>>>>>>>> diff --git 
>>>>>>>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>> index 22ba66e48a9b01..cb58029208afe1 100644
>>>>>>>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>> @@ -4425,7 +4425,8 @@ static void 
>>>>>>>>>>> guc_handle_context_reset(struct intel_guc *guc,
>>>>>>>>>>>       trace_intel_context_reset(ce);
>>>>>>>>>>>         if (likely(!intel_context_is_banned(ce))) {
>>>>>>>>>>> -        capture_error_state(guc, ce);
>>>>>>>>>>> +        if (!intel_context_is_exiting(ce))
>>>>>>>>>>> +            capture_error_state(guc, ce);
>>>>>>>
>>>>>>> I am not sure here - if we have a persistent context which 
>>>>>>> caused a GPU hang I'd expect we'd still want error capture.
>>>>>>>
>>>>>>> What causes the reset in the affected IGTs? Always preemption 
>>>>>>> timeout?
>>>>>>>
>>>>>>>>>>> guc_context_replay(ce);
>>>>>>>>>
>>>>>>>>> You definitely don't want to replay requests of a context that 
>>>>>>>>> is going away.
>>>>>>>>
>>>>>>>> My intention was to just avoid error capture, but that's even 
>>>>>>>> better, only condition change:
>>>>>>>> -        if (likely(!intel_context_is_banned(ce))) {
>>>>>>>> +       if (likely(intel_context_is_schedulable(ce)))  {
>>>>>>>
>>>>>>> Yes that helper was intended to be used for contexts which 
>>>>>>> should not be scheduled post exit or ban.
>>>>>>>
>>>>>>> Daniele - you say there are some misses in the GuC backend. 
>>>>>>> Should most, or even all in intel_guc_submission.c be converted 
>>>>>>> to use intel_context_is_schedulable? My idea indeed was that 
>>>>>>> "ban" should be a level up from the backends. Backend should 
>>>>>>> only distinguish between "should I run this or not", and not the 
>>>>>>> reason.
>>>>>>
>>>>>> I think that all of them should be updated, but I'd like Matt B 
>>>>>> to confirm as he's more familiar with the code than me.
>>>>>
>>>>> Right, that sounds plausible to me as well.
>>>>>
>>>>> One thing I forgot to mention - the only place where backend can 
>>>>> care between "schedulable" and "banned" is when it picks the 
>>>>> preempt timeout for non-schedulable contexts. This is to only 
>>>>> apply the strict 1ms to banned (so bad or naught contexts), while 
>>>>> the ones which are exiting cleanly get the full preempt timeout as 
>>>>> otherwise configured. This solves the ugly user experience quirk 
>>>>> where GPU resets/errors were logged upon exit/Ctrl-C of a well 
>>>>> behaving application (using non-persistent contexts). Hopefully 
>>>>> GuC can match that behaviour so customers stay happy.
>>>>>
>>>>> Regards,
>>>>>
>>>>> Tvrtko
>>>>
>>>> The whole revoke vs ban thing seems broken to me.
>>>>
>>>> First of all, if the user hits Ctrl+C we need to kill the context 
>>>> off immediately. That is a fundamental customer requirement. Render 
>>>> and compute engines have a 7.5s pre-emption timeout. The user 
>>>> should not have to wait 7.5s for a context to be removed from the 
>>>> system when they have explicitly killed it themselves. Even the 
>>>> regular timeout of 640ms is borderline a long time to wait. And 
>>>> note that there is an ongoing request/requirement to increase that 
>>>> to 1900ms.
>>>>
>>>> Under what circumstances would a user expect anything sensible to 
>>>> happen after a Ctrl+C in terms of things finishing their rendering 
>>>> and display nice pretty images? They killed the app. They want it 
>>>> dead. We should be getting it off the hardware as quickly as 
>>>> possible. If you are really concerned about resets causing 
>>>> collateral damage then maybe bump the termination timeout from 1ms 
>>>> up to 10ms, maybe at most 100ms. If an app is 'well behaved' then 
>>>> it should cleanly exit within 10ms. But if it is bad (which is 
>>>> almost certainly the case if the user is manually and explicitly 
>>>> killing it) then it needs to be killed because it is not going to 
>>>> gracefully exit.
>>>
>>> Right.. I had it like that initially (lower timeout - I think 20ms 
>>> or so, patch history on the mailing list would know for sure), but 
>>> then simplified it after review feedback to avoid adding another 
>>> timeout value.
>>>
>>> So it's not at all about any expectation that something should 
>>> actually finish to any sort of completion/success. It is primarily 
>>> about not logging an error message when there is no error. Thing to 
>>> keep in mind is that error messages are a big deal in some cultures. 
>>> In addition to that, avoiding needless engine resets is a good thing 
>>> as well.
>>>
>>> Previously the execlists backend was over eager and only allowed for 
>>> 1ms for such contexts to exit. If the context was banned sure - that 
>>> means it was a bad context which was causing many hangs already. But 
>>> if the context was a clean one I argue there is no point in doing an 
>>> engine reset.
>>>
>>> So if you want, I think it is okay to re-introduce a secondary timeout.
>>>
>>> Or if you have an idea on how to avoid the error messages / GPU 
>>> resets when "friendly" contexts exit in some other way, that is also 
>>> something to discuss.
>>>
>>>> Secondly, the whole persistence thing is a total mess, completely 
>>>> broken and intended to be massively simplified. See the internal 
>>>> task for it. In short, the plan is that all contexts will be 
>>>> immediately killed when the last DRM file handle is closed. 
>>>> Persistence is only valid between the time the per context file 
>>>> handle is closed and the time the master DRM handle is closed. 
>>>> Whereas, non-persistent contexts get killed as soon as the per 
>>>> context handle is closed. There is absolutely no connection to 
>>>> heartbeats or other irrelevant operations.
>>>
>>> The change we are discussing is not about persistence, but for the 
>>> persistence itself - I am not sure it is completely broken and if, 
>>> or when, the internal task will result with anything being 
>>> attempted. In the meantime we had unhappy customers for more than a 
>>> year. So do we tell them "please wait for a few years more until 
>>> some internal task with no clear timeline or anyone assigned maybe 
>>> gets looked at"?
>>>
>>>> So in my view, the best option is to revert the ban vs revoke 
>>>> patch. It is creating bugs. It is making persistence more complex 
>>>> not simpler. It harms the user experience.
>>>
>>> I am not aware of the bugs, even less so that it is harming user 
>>> experience!?
>>>
>>> Bugs are limited to the GuC backend or in general? My CI runs were 
>>> clean so maybe test cases are lacking. Is it just a case of 
>>> s/intel_context_is_banned/intel_context_is_schedulable/ in there to 
>>> fix it?
>>>
>>> Again, the change was not about persistence. It is the opposite - 
>>> allowing non-persistent contexts to exit cleanly.
>>>
>>>> If the original problem was simply that error captures were being 
>>>> done on Ctrl+C then the fix is simple. Don't capture for a banned 
>>>> context. There is no need for all the rest of the revoke patch.
>>>
>>> Error capture was not part of the original story so it may be a 
>>> completely orthogonal topic that we are discussing it in this thread.
>>
>> Wouldn't be good then to separate these two issues: 
>> banned/exiting/schedulable handling and error capturing of exiting 
>> context.
>> This patch handles only the latter, and as I understand there is no 
>> big controversy that we de not need capture errors for exiting contexts.
>> If yes, can we ack/merge this patch, to make CI happy and continue 
>> discussion on the former.
>
> Right, question is if the code in guc_handle_context_reset shouldn't 
> be changed to:
>
>      if (likely(!intel_context_is_exiting(ce))) {
>         capture_error_state(guc, ce);
>          guc_context_replay(ce);
>      } else {
>
> And if that should be part of patch which changes a few more instances 
> of that same check.
>
> But you wrote that doesn't work? And then Daniele said he thinks it is 
> because revoke is not called when hangcheck is disabled and GuC 
> backend gets confused? If I got the conversation right..
>
> I wonder if that means equivalent of execlists:
>
>         if (unlikely(intel_context_is_closed(ce) &&
>                      !intel_engine_has_heartbeat(engine)))
>                intel_context_set_exiting(ce);
>
> Is needed somewhere in the GuC backend. Which with execlists skips 
> over the context which is no longer schedulable.

There is nowhere we can put that in the GuC back-end if the context has 
already been handed over to the GuC, because at that point it is out of 
our hands. We need to tell the GuC if we want the context to be dropped.

>
> But I don't understand why testing did not pick up that miss, or the 
> miss with guc_context_replay on an exiting context. Or where exactly 
> to put the extra handling in the GuC backend. 

My worry here is that some of the bugs seem to pre-date your patch 
(which might be why they weren't flagged in the CI run), so there might 
be something else going on that we're missing.

> Perhaps it isn't possible in which case we could have an ugly solution 
> where for GuC we do something special in kill_engines() if hangcheck 
> is disabled. Maybe add and call a new helper like:
>
> intel_context_exit_nohangcheck()
> {
>     bool ret = intel_context_set_exiting(ce);
>
>     if (!ret && intel_engine_uses_guc(ce->engine))
>         intel_context_ban(ce, NULL);
>
>     return ret;
> }
>
> Too ugly?

This works for me if it fixes the issues. The no hangcheck case is not 
common and the user should be careful of what they're running if they 
select it, so IMO we don't need a super pretty or super efficient 
solution, just something that works.

Daniele

>
> Regards,
>
> Tvrtko

