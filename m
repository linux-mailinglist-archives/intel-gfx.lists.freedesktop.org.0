Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BBF48DF8B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 22:23:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C72510E3E0;
	Thu, 13 Jan 2022 21:23:50 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F5D10E3E0;
 Thu, 13 Jan 2022 21:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642109029; x=1673645029;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WK8/T8jSFSPnSAyvjBNVUA+31ypsOXre5zPxeIoQN6U=;
 b=AGx5tINv+qSlGHzPdCGjTYZXDjfgDwHZqAjlUOJ1lVyenrczZbRPqKVt
 lTulpkOJ+cL9WoSjppMhp86z1uBHdCpM75iI2bKdhn8cMxQoTqtWe3z7m
 CR184Ivg5TnbLtQD+1/v2QpGtuqOTw9tMB7idrQ/ydEsC1ck6qEgxn+Ug
 ZREb6z1+0m3yugGspGYY+0ouEsLY0SYTPJRdEV4l4q7juvnU22x2dLspR
 KVp3yieALlBI9+ANiqup1RsqUAxCSG3djTpzZGJJgCGLmHWdVFPfZ/c/S
 n5sJs4XyR6Jk/Xu1RtULhuAwDdg/JsQDGseVVMmUxgPN17jBgcMJq3sLz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="241677445"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="241677445"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 13:23:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="529851460"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 13 Jan 2022 13:23:48 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 13:23:47 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 13:23:47 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 13:23:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bLaNWR4X8OkQ9MquvG8TZd404V3QXAORccXiF1lSuKpVmStE6LcTt+HZ9g1Skl2o5t4BiL3nPjY+YE0mtYuYoXrw7zOlXbPZavkfZ7feuPskACsvqNmahj3aiVLBuzu+7B3QrGUEa/FVnhCJ1oSEl1YKzr0kfH9kkUuAL0iGwWHMl5GiwwPY+Hmy4CZscpjCC+bZ5mZoNdSbjaK06eCDLIv1ZGkYYQ8E54MXWM96xn5N6D4U33LTBLZg+aeXOy4+/UihourZ4U7GcGk3Rf+gKk+3Cnq5Qr0F2oJ63xVZz3D2yOj7j6mCOaeURlyiP/B4adQ2jnBLK/QmUBiADo46vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GClXuk9z69LqaXitXVSr0N1RLlwQ41vtiyT+lIR8TIw=;
 b=oap/kdd7JgPWwNzOXcxgsSh6cAsJz6f2QjEjArXqqdPMqcf29Vwx2BjZut846YMu3wD2purR03/yeZRXohnZXCzYA9KhxkNZ2UP5RFNZOLKiGMv/lO03fz59pd7IrHApMOis3gg8SEWIbwx03vvGmbCGmyzC04ZDEyKicaUQYl0cFWR2UbW0Y0gXR/a46iuXBnD8qe70PqtextmOIzgjR78M+8v/oyoGcD0I1Wy+6g1FUdt+gS+WCsXIhK0ImF/3EFC7pa+g4FLMhcZ+7uH6ghrf7T4ofOwaYjGF5KFgZP+1VqEBUeagsqtz1ktxkeZzVraqghl7FDm3bP5+REw/QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BN6PR11MB4035.namprd11.prod.outlook.com (2603:10b6:405:7a::38)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Thu, 13 Jan
 2022 21:23:45 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5%5]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 21:23:45 +0000
Message-ID: <2e41be37-fe29-36e4-b55e-d50c0b2c3948@intel.com>
Date: Thu, 13 Jan 2022 13:23:42 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.1
Content-Language: en-GB
To: Matthew Brost <matthew.brost@intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-13-John.C.Harrison@Intel.com>
 <20220113210617.GA31450@jons-linux-dev-box>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220113210617.GA31450@jons-linux-dev-box>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CO2PR04CA0196.namprd04.prod.outlook.com
 (2603:10b6:104:5::26) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec30a0f5-d2fb-4287-ab11-08d9d6dafafc
X-MS-TrafficTypeDiagnostic: BN6PR11MB4035:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR11MB40350C1EC9259BFC72CF3945BD539@BN6PR11MB4035.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:147;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vgeRKQbpnwgiSx30acasqIYcI3f8KqYTFJSPHBLKpgAOCB8hTkL3/Ly3Fed/E+l/nae5cPslOg3ndSdtYYolsoXT+KOHrPPywbF45dMTHW9ReqKeQC8EHGg0CQagP4EHb23JINh7RnBpIYTgooHhnQH7ActbYwfQDmggQssjiGud9x4UhJD3gXOFrhBhhtx2j6o6I3bwqEgoXQh/RqulfOQlmUwHMWKk459iNd5vadOh2u3+7JRXBO1gZ0ecPAeRBXFsIQBGwstNMmhrijBhZ943z3T6GSNm0BY+XN+TKEsSVkSffxq0HiBNv1UFVqUzAYKOKzcsfppkLNQQP9mTJaNMbDkuIsUCpIayTYGF1eHN0HbSHlF4jArGe+F7jTzz4UFEpFZKiDzTsdpYKQohyV65PMFx15Xe4ozwldslwe8AXH0MwnJkF9geTi7o4QfigzeYqLmoKjFYnt6QPpZ9GGMFmgMTc+eYcXsEpltbx1pWENq9rxX2fQPVLieyVoL7h24bTWEhkA94+Mmt4J/iSK4YlfO0KFp3MWxAgzeV3f3iOi6/28utHEt7sjFSl+eoV09kpL1X54mAAq99MjlOpASPZPf5QEXtOQ1xSPcEn90s9PuATDH7ASvy0mcDPJAcF+/LIwAcaV7g19z2IWDOlRgIhSDN1ATlsK8MFjFcariaYybrsmdrPKo5/ZjVWZlHC6JK0Gl1IYNh3IhKwciY5yezylgjQmsabwrD8a7qPv/glGCV0gr9h4h4m2SaUxiG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(36756003)(2616005)(53546011)(5660300002)(8936002)(6512007)(8676002)(4326008)(450100002)(37006003)(31686004)(6666004)(6506007)(2906002)(6486002)(38100700002)(6862004)(316002)(82960400001)(31696002)(83380400001)(186003)(86362001)(66476007)(66556008)(508600001)(26005)(6636002)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2tHbHI1YmdsdW9hTmJtd2krRDRBR0haQnV2YnN3bnJlUldPSTM4eGlmSkk3?=
 =?utf-8?B?SG42bWdnQnBSdVF4YXdmYnl4VWsyUGRRazh6cDd5Y3hOZ0QxcW9YV1BNL3Fy?=
 =?utf-8?B?c0JwZ1JNOVBJc3hlVEFra1B3YTVlbmZrWVBnVFNRS0R2RTNaakRWMmlZdTBQ?=
 =?utf-8?B?YmV2N3RydzAveEMyZ0tTNzROUXVVT1BzUVc3a0k0MnRYN2VCWGRlajI0NmJu?=
 =?utf-8?B?aUh3czRSVEI0Y1liZlpMeW8rUXE5MjFSU0k5YWhXckQ5WW1jV3F3TWRQbHM5?=
 =?utf-8?B?WTAyOXd1ZVdUMktCZEdhcE5Wakp5RTdEaEJsZ3FDc0JVeEdHWlhZbkxrUGl0?=
 =?utf-8?B?S3JCYjgvNkdCYzd3SnBvUVhyeU1xL2tWTDFETGlpUWsxTmVxTmtrQk9zckoy?=
 =?utf-8?B?QWZ1SmZtSUdRZis1UGhoenVPanZNQTN4OWlTbDBSOUlRL2RmZzBYSE83Wks0?=
 =?utf-8?B?UitIZm1YSW5mUWFNdUFocTFTUzV2SnN5b0QvaS9mM0diSFBHQmRIL2Y0Zk0r?=
 =?utf-8?B?cks4YU9ZL2twMXpFZmpBMjNEUko5Zmh6TUZJbC9YM2lmNHgvRlhQQWYrYVRI?=
 =?utf-8?B?ZlBqTTd5RWhoeEowdUVlN3d4L1AyaFNBbXQycGZTbDdmRDUyTDdmWGlsWTRH?=
 =?utf-8?B?MzZWTExKUVhDWmZKTjVXekpaSkFqZjBwU1ZwSnlpVWpoL213cThvVXFFcUdN?=
 =?utf-8?B?aGdlOHNxM3U0d29rZ3pxM2ZhWTVrQlNKdlJqV041ZEJZRWRxS1VzeFVvNEF4?=
 =?utf-8?B?ZS8wdjRCdnhpZStDczhIT3E2YTFrejMycTk3dE9YRG9vN1ZaT3RGNmJBUkt0?=
 =?utf-8?B?dk1lMGl1M0JWdW4xK3BqcXk3RGwrdG44a2VNalpKVzBZNk1MZmpFZnlyNmJT?=
 =?utf-8?B?VTlCUjh1Wmg3SFVJVjAzQmV6bGZkWWg4SHNsQlV4dFRJQkU2Ty9QQUllVUVU?=
 =?utf-8?B?WGpZaElKWk9WUStjZ2ZzVnhxSlVQZ1hGTmlBR1VaMGJaT1d1TUNOVDU3NmRV?=
 =?utf-8?B?M2FrQ0NMTzExaWhUK3F2S1huWUtrSHcrZ2FLZ0RUSm95blpqTVo4Qkh4S0dK?=
 =?utf-8?B?RHd0ajB5clBoRzlrek9CSHpwMXdWZVpUNUl2eVdFdXY0Y0k4clhPNFJOUk9E?=
 =?utf-8?B?OW1xak5RVGowdXRYaHFPQ2JyYkdIbStncEtacFBpdFRwcFlxdGJUcUgwZlM3?=
 =?utf-8?B?UXF2UjBWTzdtUmhYRXUyV0VLeVVERC9zYVNGWVF0ZDVlUnFIc1ZtUitzRkxZ?=
 =?utf-8?B?RmwzMVBSUE43RmcrMU02a1VPNHd2a1E3WXlCaTFtdHlaemFQRmZrK3FjZVBD?=
 =?utf-8?B?T3pCdUkxNzVEQXE1b0FyMXZLS0FmRS9Odk5rdVd0SHBVRTAzSTY4MDZTelJo?=
 =?utf-8?B?cjRzNTAwS2lDYmEzS0w1MjQzSm1KaWZ0RUZsWjlJanBNLzhGdEJkNmUvbXlm?=
 =?utf-8?B?aE1Qc0NDMmJHaktnR3hFZ3RFbDNsU0crQ1BKSENUSTZPV3Z3K1NYWlJ1eXVx?=
 =?utf-8?B?YkFYMVJZSVdhNzJzRldaMU5jVmtHZ1czeDh0clpueFN0T1dCVTlhZG5wWTNx?=
 =?utf-8?B?Y1djTHNmdzM5N2piQ2x4My96ZmFVYUdhSVJVN2ZBRWZrRktvMjFKVlBiRUJm?=
 =?utf-8?B?SGZSanprWGNCRm1ldzBhdytNRVk5R1pQZWZ5aXg4SDdzU2dQYitMU1poeWpU?=
 =?utf-8?B?K21Jc1RHb0ZoazVIbFNIOVB4NGx0OFVkMGNNc0NLNC9FRHVaSFpTTmduN1hq?=
 =?utf-8?B?QzVCQ2YzRmtNWG1GR09pWXAvNElTdFhRcmNGTThHMDlpcTZSM0tSM0tyUW84?=
 =?utf-8?B?WWNhem40a21NZm1zNU9oOXlBUE9xZVJrY0hmZzlHc0JaVVF2Y095M2xFYi9m?=
 =?utf-8?B?bUJKWUtjb3p3MTdBejltRThyK0xBOWZaVkpuOVhkYmtHZVBwUzB0UGtwNktM?=
 =?utf-8?B?MVB0N2JlaWJVelFic1gwdW1seWVZWFh5N3MrMGhrU2Y5NlhxTkJDK0pPNTF0?=
 =?utf-8?B?ZjVJWmx5aTFDRkdEMEVBZHVZeFlPMWJhYms4YlIwdWR2QmZDNzU0Sm13cHpF?=
 =?utf-8?B?ZkU3N292eWduZ2lYQlRaeGMvdlptVnlkbDhyRWNRb0VqZmw5YU5PWXdUM2Fr?=
 =?utf-8?B?ZzJlNGZYMnp2aHZqS0lWODZQSEZjdDZsdFptYVBGalBaNDhpUmZmWXBmNVBh?=
 =?utf-8?B?QnNGNlRQRVA1U3M3OTZWMno2NlVNeHYvcHRPSHlZUnZYTWVUaGJOQUQxYUFk?=
 =?utf-8?Q?WYzflVJ6Nyz3ISIR4kcx3WLV4rZU4SN5/bbBvU/lYU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec30a0f5-d2fb-4287-ab11-08d9d6dafafc
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2022 21:23:45.3275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kwACKBYQejqczUbLWwRGIejDUqn0zLPeqzxPAijU6I8QFJM31CYao+NsO6crB27krUaENCFRMLEy8juSG2B3NiVHSXhuR+fKNpD82RWZeOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4035
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 12/15]
 tests/i915/gem_exec_fence: Configure correct context
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/13/2022 13:06, Matthew Brost wrote:
> On Thu, Jan 13, 2022 at 11:59:44AM -0800, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> The update to use intel_ctx_t missed a line that configures the
>> context to allow hanging. Fix that.
>>
>> Fixes: 09c36188b23f83ef9a7b5414e2a10100adc4291f
> Typically I thought the Fixes comment was the sha from "git log
> --oneline" + first line of commit message from that surrounded by ("").
>
> So:
> Fixes: <small sha> ("<message>")
Oops, yeah. Not sure what happened here. Brain fart most likely ;).

John.

>
> With that fixed:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/gem_exec_fence.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
>> index 196236b27..5e45d0518 100644
>> --- a/tests/i915/gem_exec_fence.c
>> +++ b/tests/i915/gem_exec_fence.c
>> @@ -3139,7 +3139,7 @@ igt_main
>>   			igt_hang_t hang;
>>   
>>   			igt_fixture {
>> -				hang = igt_allow_hang(i915, 0, 0);
>> +				hang = igt_allow_hang(i915, ctx->id, 0);
>>   				intel_allocator_multiprocess_start();
>>   			}
>>   
>> -- 
>> 2.25.1
>>

