Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 188F8447A71
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 07:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6546F6E083;
	Mon,  8 Nov 2021 06:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7A46E083
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 06:20:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10161"; a="232015267"
X-IronPort-AV: E=Sophos;i="5.87,217,1631602800"; d="scan'208";a="232015267"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2021 22:20:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,217,1631602800"; d="scan'208";a="641315568"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 07 Nov 2021 22:20:17 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 7 Nov 2021 22:20:16 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 7 Nov 2021 22:20:16 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sun, 7 Nov 2021 22:20:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PKiQEhL8p6FQlV4Vd2kXchyuLeLB7ljVBq+7RobUhylyNKXiW13phX3tnb4ttV9Clo5xQ+I3D/JG9NulE09AT/T2fDdIbzTFtFtIBwDNhX52p2O0JkEsLPgpEIj6X/AvyiN6sI5R/WckF4rDt6xCN2TFzz7fKK2Zz5v4NGNHqTP7181ExaICAgIoanRyetxfQ1lWRMb09vbmM48rbQx2TzivAlW5zS0uM9EEaoI0jtd/+TcbK7vy6b9b9tmsp2VdEx0fnusoIFbo9o9s8kF4lsNrNcZi5CA3hl3HZc2umxRXGi73GhsPj8sQfZQFgJbxhWMT67pzNXAkVY2t5LivSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LMsVTSrXN0dllRR9A2ka6IeKYyZLP/UJtEyyj1IWu28=;
 b=mr+9gglG6+jpZKaED1GZmxkr2pxunIgbcfrDXXxlH2DAVM7e5rpoqbAeoESxUXHrjwVvd/xpbUPTIg/YLD2+tTAfa/qgzeVBDjD+za/4UxmRXrkRfJfTTsnVKFcydMvuahFfqq+XqbNQkmBbP0c22v4EbHlK9fO821VVDj4wzGEg9NeLWaXPwNI76Jnfmiy29HE6y8Aldc82NoFuKbqEfVG/lf3qleGoWggD0IUIolW+abfF438zF06//PasDds7fkKjNpihE6CvoTBI41aORe29/Z1YLC8j8SVMkeJDKXQ2XJSdGXgmuVb8Uv1N5QJ5vANku2LpK1gdajbn9q8Suw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LMsVTSrXN0dllRR9A2ka6IeKYyZLP/UJtEyyj1IWu28=;
 b=EgCNEKSRf8J7QjWcAC030Sh2ezPfBOGyQIVroLA4wNx5KJMvuSPClqA1dznN4a5sevx4LH3614xf8tXbTE1ebKOZjR04TJOWpJXDjT16JfgK1Vouaya32F6EhzFmGsqOVvBLan09BRTgUitCAZ/gsYLoojoZf4/xl+2GFUutO+4=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB3564.namprd11.prod.outlook.com (2603:10b6:5:137::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Mon, 8 Nov
 2021 06:20:13 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::b199:1b07:8782:4743]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::b199:1b07:8782:4743%6]) with mapi id 15.20.4669.016; Mon, 8 Nov 2021
 06:20:13 +0000
Message-ID: <9c89dab7-aecc-6250-01c6-ca1e7471364d@intel.com>
Date: Mon, 8 Nov 2021 11:50:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.0
Content-Language: en-US
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20211029060154.110038-1-ankit.k.nautiyal@intel.com>
 <20211029060154.110038-3-ankit.k.nautiyal@intel.com>
 <0d1a3a2ae9b04722baa81f05be5f55d7@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <0d1a3a2ae9b04722baa81f05be5f55d7@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BM1PR0101CA0058.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:19::20) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
Received: from [192.168.0.113] (49.207.199.121) by
 BM1PR0101CA0058.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:19::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11 via Frontend
 Transport; Mon, 8 Nov 2021 06:20:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c8567ca4-1b4d-46fb-9ff3-08d9a27fd2bc
X-MS-TrafficTypeDiagnostic: DM6PR11MB3564:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB35640EFF4A25129D82D10FFECE919@DM6PR11MB3564.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tekmlToJ62uzGyHfpyXHTCPr7cN6b8t7y0k4X1w/cTwNMQlhApZLosozfQ3Br5HHAgCsZkkwEg1E/dPmYzLpJHqRc5RiflEZxkDnbJCcAXculRDrN47Yd7dWxjmQHGxRGvtPClX9G8IKbvL/8uwj07LGfXarZ75nNpOK4mAkRvUQ4zvOwC4PtnqD3NtPk21LH2nboHNlRJRZQYCWqXMoy6FYjD8kPWw8vZk2qWvdKm7D0EvZKES4qM/uLdNpIig4KtD3Y6P2X114cWgBZlJLOfwY5T5LP/pS5EKRNUKhYtoJ0GTwfva+UmgkyE+dcRA+uigkaRALQ6gQuoLPsPNqK57Xfjl5gmQ/RUZFK2KyCOwrkFTCBkELgkxlkZOMXT99Vxya7nwfAynurFdWiOsYAOE2ul3514uPi57NLcdXaA5yrkXLObj6Gyak+Zy65ksGxfjgkcw8kuCLBYvvrTrmoVmpvjKCNk1fhgqpB/G1fUHAoGLAWjNAXzieooIQ9+nyNRZSj/X7ZCPZ98sjdJx+v5cVIw9s5OgnHl7l15GhDXff6EfGQdMCqTOGJBb6GCavWNd9cHFnclaKUHY4nPBErRqjvfO/XXXMGUOywvBEiIsDpfQRoZa8SFt1kLxPgrg6yPJloyaUTllhMDZR/uDav+mycdtqTpP3x5OTzfPIMuJ7jjED7XszwI3iUyK+b2wIrq/o4lcSSlOD171+zJQByoBou9bOt8G7AGh5DPnGDEU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(26005)(107886003)(4326008)(31686004)(6666004)(1006002)(8676002)(6486002)(82960400001)(186003)(2616005)(956004)(38100700002)(86362001)(2906002)(316002)(55236004)(16576012)(53546011)(508600001)(36756003)(5660300002)(110136005)(66946007)(31696002)(66556008)(66476007)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWxrMUpMZXlPVVpMS2pERlRLS1hrSUNVb1RIN2xUUERuLzRLaUFlY2pFRUVL?=
 =?utf-8?B?dWxPV1c3ZnN0akxodUY5NkpRZUpmUDFsa3k5R0MrUEhhY1JmU2U1bS9QSWQv?=
 =?utf-8?B?ajJjYlh3aUdveWloaEhSTU83ZWlFYitzN2gwQWgycXJwOVRFeFJleWtpSzNH?=
 =?utf-8?B?VHNBU2lidEw1RlY3L0RoOHBZYlVBQTZwcUtGVDNCMVpIQmtaU2I3MVZndmkr?=
 =?utf-8?B?N0trcFlNcFlmRUNxV1NmZ1NRc08rNFRKZnk3MDBTcUE0S09MNXNGeHp2SEtX?=
 =?utf-8?B?MnIyTEZJNHhlYUhXVXQ2bDZpbHJ0S0RCMEl2aVQvMExnb0xtSUxSVUJubm5J?=
 =?utf-8?B?V3B0d0FBbjZNenFBZkt6ektFZGlZWUtONFFWaGg3djVOU3RDSGkrVXlFRXdG?=
 =?utf-8?B?ZHZON3JsZ3BEUGdILzMxanpXZW5ENUZXR2dXVFVuM3lBRDVpWS9zcTQ0T1dF?=
 =?utf-8?B?VWxYR3hUS1EwTHJMemdHZ2tWTGYycDFOdlhzVy9SWXc2VXFkRG93TThxL3Bq?=
 =?utf-8?B?UVUvYXRmR2RVU1NBUXgvTkVNZTR2QlV4TzVBbEpRRTU3YmVoa0pwTm1hb3lK?=
 =?utf-8?B?UjhPVUw2dDV0aG96cDB3RGYybVNYYS9ackExNzN1elc4SlFlNU5zZkh2elo2?=
 =?utf-8?B?bk14aEFSVXptMXFLYUpyRUZsNW9QRDYxSkdZOUUrZ3hLanM1Rnp5a3VrYVdz?=
 =?utf-8?B?ek53dENHZ2pqa1FCbkFDTnVDa0RMMUhpTkRUVkVJbk1mSEYvNkJZVlVHc2x6?=
 =?utf-8?B?d1VDVVlQL096SzgydUR0MVE1c2R1VlZOMHdZdmdEeHlTd1BKSVRJdS95eUx5?=
 =?utf-8?B?bWhKejVCc1FDc1YrRlJYSytJYk9YK2RoeTB5ZFV0dnhWa0xxUmp4eklBcVFX?=
 =?utf-8?B?TjE5ZFArSDl3UmpOZGkxdllHdFBWUkFBSEx4ME1ZUElYemxtOE56TE5ndkpC?=
 =?utf-8?B?azZOOVduTS96SWRWc0hUbWxBZUY4NFF4K1EzS1liUmU1bUk5ZUpXeEp3Rjd6?=
 =?utf-8?B?MHNsdUtQdGpnY20raGdpTGJBS1NMazRiWXJ6RlAxcHFqNklxeTNMeUkvWlBH?=
 =?utf-8?B?Mll1Kzhib2VGak45MXBqcHNpUks1ZVFOOFQ1ZmFuRXNkTDVOVkZNNzhwdEpt?=
 =?utf-8?B?TUFTaGR6NXVqWVlzRHBjZnR1enFRNjJDdmJoMDdCczIrbFFibFYvQ2UwRjJo?=
 =?utf-8?B?R1pJcXZqbS9XWEgzNUl1MjkwSkgyeGx4OGJDcy94UWpXRXp6NHlmSEFkWmNB?=
 =?utf-8?B?UkJxc1NpUlNlTUo5RWZMNURQRGNpWFZNdWJwNnI2Q2xaTFFWTldHYXYwSzhm?=
 =?utf-8?B?WERWdUhFVXFsbWZyYk5IR1Fydit5bEdIZE5nc0UvWlpHQ0w3OStOZTJTUVhq?=
 =?utf-8?B?TjlobDIwb2RMbXdYRkwzWkRYOWFRZVZsdGU5Tjh5STBkdGQyUkdFWExRcDBQ?=
 =?utf-8?B?K01LUkRCVzd0T1pGS1FJU0k2MCtGTmcya2ZuMEFxa01IdnZYMlhUb2ZHRWFG?=
 =?utf-8?B?TTVmTkVyU2NpZ1p5ejVzV2FIaW1BU2VpWFNZTjhQc1oySUQwQW1hejNLU1BQ?=
 =?utf-8?B?Y0NuSlNKaUZUUWVZYVMzT2NUd0dvMFJhM0lTekNKTnFZUGMyMzNLdkN2WUdJ?=
 =?utf-8?B?K0pvcWdDdmRoTC9zV09ITk03QWI3a001MloxUVBuZkNrZDcyZnlTZWMyVUJG?=
 =?utf-8?B?dmdKalJZNlh5VUhOc2hmck9aTUUyc0d3MWNiZjJVWlo2Ulc3T09GNVdEb29W?=
 =?utf-8?B?Ym5MRVQvNHE3d2cxNkI3ZVVYR0x4aDRycS9YOUJpSHl4N0JnZXlhNjZkeGRR?=
 =?utf-8?B?UFkyME5oNU52WEF3OUNtNDF2NGk4UTh3dFRLaHdNVlpCOFVzVitpSmNQS29K?=
 =?utf-8?B?bUZEeDl5UzBwTmt3SWJmV3o4MlZ4T2RSV2EwZjVsKzNqQjVlaGt5eE1oMzRY?=
 =?utf-8?B?VlNUN3ZrZEVtaDFzdHdGcTNuUE84NDFGdDRkcUVKcTlHQVpyK1FBdktVcFgv?=
 =?utf-8?B?am5qVGNjdG5XNzlmS2txa1FoZ28rMHZkSTdNdTdqaUZ6Y0hKQmNCOEgwQnVq?=
 =?utf-8?B?S0poenFpSEh4OUUwdEoxOXNuRitWc0VFZTgzRlNVOVI5SmdiMm1uVTd5dTVm?=
 =?utf-8?B?ZEZabWlUSUNtWi8ybUl2VFBtTzZpSDZ2djJvdzJZcURBNjAwOThTYUhmQ1cy?=
 =?utf-8?B?R29iZDNmeGQvQ3Jsa3NPT1hoRUFUWXN5SGtoYlVmd2ROb0J6Zi8zc3NudVdw?=
 =?utf-8?B?OWVXa1poOXF3Y0hJaWpEQWJOa2lBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8567ca4-1b4d-46fb-9ff3-08d9a27fd2bc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2021 06:20:13.3004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a01bipBsskpODlB1ymDvI3R2dj25DHTG0VMEN3PU66t9I4u53QCpSbQ3dn3hwCJYK2Kgzm29qOxBlICWz8A7nIFQD/NM39r0CI8fE+xBw6k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3564
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: For PCON TMDS mode set
 only the relavant bits in config DPCD
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


On 11/3/2021 4:54 PM, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Friday, October 29, 2021 11:32 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Sharma, Swati2 <swati2.sharma@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>
>> Subject: [PATCH 2/2] drm/i915/dp: For PCON TMDS mode set only the relavant bits
>> in config DPCD
>>
>> Currently we reset the whole PCON linkConfig DPCD to set the TMDS mode.
>> This also resets the Source control bit and HDMI link enable bit and goes to
>> autonomous mode of operation, which is seen to spoil the PCONs internal state.
>>
>> This patch avoids resetting the PCON link config register and sets only TMDS mode
>> bit, Source control bit in the configuration DPCD.
>> It then enables the HDMI Link Enable bit.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 25 ++++++++++++++++++++++++-
>>   1 file changed, 24 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f5fd106e555c..3df35079580a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2287,6 +2287,29 @@ static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp
>> *intel_dp)
>>   return false;
>>   }
>>
>> +static
>> +int intel_dp_pcon_set_tmds_mode(struct intel_dp *intel_dp) {
>> +int ret;
>> +u8 buf = 0;
>> +
>> +/* Set PCON source control mode and TMDS */
>> +buf |= DP_PCON_ENABLE_SOURCE_CTL_MODE;
>> +buf &= ~DP_PCON_ENABLE_MAX_FRL_BW;
>> +
> I don't see setting this to TMDS, we should be still in FRL mode as bit5 is not being reset here.
> Am I missing something ?
>
> Regards,
> Uma Shankar

Hi Uma,

Thanks for the reviews.

The buf is initialized to 0, so the bit would be reset.

In fact in code above the reset of MAX_FRL_BW is also redundant as those 
bits are already 0.

So only thing worth setting here is the SRC_CTL bit followed by HDMI 
link enable bit.

I would remove the redundant line and resend the patch.

Thanks & Regards,

Ankit


>> +ret = drm_dp_dpcd_writeb(&intel_dp->aux,
>> DP_PCON_HDMI_LINK_CONFIG_1, buf);
>> +if (ret < 0)
>> +return ret;
>> +
>> +/* Set HDMI LINK ENABLE */
>> +buf |= DP_PCON_ENABLE_HDMI_LINK;
>> +ret = drm_dp_dpcd_writeb(&intel_dp->aux,
>> DP_PCON_HDMI_LINK_CONFIG_1, buf);
>> +if (ret < 0)
>> +return ret;
>> +
>> +return 0;
>> +}
>> +
>>   void intel_dp_check_frl_training(struct intel_dp *intel_dp)  {
>>   struct drm_i915_private *dev_priv = dp_to_i915(intel_dp); @@ -2305,7
>> +2328,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
>>   int ret, mode;
>>
>>   drm_dbg(&dev_priv->drm, "Couldn't set FRL mode, continuing with
>> TMDS mode\n");
>> -ret = drm_dp_pcon_reset_frl_config(&intel_dp->aux);
>> +ret = intel_dp_pcon_set_tmds_mode(intel_dp);
>>   mode = drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, NULL);
>>
>>   if (ret < 0 || mode != DP_PCON_HDMI_MODE_TMDS)
>> --
>> 2.25.1
