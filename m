Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891F47510C8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 20:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB8110E5CC;
	Wed, 12 Jul 2023 18:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7091E10E5CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 18:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689188078; x=1720724078;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tz7kpdHpFo4WhWl3KG9Z+JMzcJoK/Z8Gd/tN5laAW2c=;
 b=lfoj/sja5Y7nWlMXRNX1uf6me+CdG8xc+SbGqYxdS+7wOvxOyOncqObT
 u0S+m5yAdTT2smBCiU5GZbUWrAGrQnPvMuxsmKx5Ma2iiT/yS0zdV3A7d
 ehM0goCbd0/JE4OYr+d3Jauyzav4Mwl9QfHwz+0M5ayf71wpn8P+eGStu
 xmlVbDTXTITE3MxkYrAVcWEil2DhVsvbEnTnkOFiAMF473PYJL9A7mpB9
 5DB8xuAbFNdje/R5AVLUC8Tds06JuMRsQ6NJGsvPxkfnHNKE14ssR9CJ5
 bBIQo25gT3nUsQEgY5XcRASeypvPhLMRNqJ+qhKNVkgfOMlupfH7D3Esf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="395776848"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="395776848"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 11:54:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="725001473"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="725001473"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jul 2023 11:54:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 11:54:35 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 11:54:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 11:54:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 11:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fZK8chVZLY/yNmpBhYVI0B3qflG/UuD386quB8vAceo/wu30wBg2dPQTi5Y0koufMOvNS14eDx74Lw6xZU69Jr9AKTpLowHy+82xGYY3XkWtIHqt6a4d12nXU4HrfUe7iAd8+t7N3UZBEqAEsoyRI1of+MVSnRIxM2wXbqBPDZy3PGgwhob5Ueg2Se/WfSieRGgrzdi/Zt/ZkHJtyB8lyd1Xx6fxMzzdkxBK+Y5UhZEYuuCqDG2ms6is1l5UZQJWtv77NF3kp+TWO2ehcNV1+yR7Tlra2PpJmJjzzc/hqMMDJDkIaHag0TP2Mr6D0vENEw06hOu5Jy0UFo78EJ8SAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QX3767zdXh4tFIZlJiN0KGvb8k1WkL0d+vlgjHh17VE=;
 b=BChap2KHPLrRZjxe24QTOytafa4zcADuYcaCBwO7R/c51OJtMeJh9QL6QmPZPxT8LEu7sPuIVgtZc/szFZLxKY53eWmAzVaQKc8wefp/z52oUIeuSRigIPrMo9+0N3qzUmyMdqDGUwvCoB5kEPmXUAx0TcpHioYL06PQLKObB8FcMXCXlExZiQ/0lL0oXTFz+8dsW6NUEoLg89yM5ujHxE1RVmQE/hwu98+xT7lpKhpIz+4IRH77tVNaeZNwNoJw4pqr4PSqTZGMiI/wUBZQuSUQzicJX3xt/N/j6zdcSEUeVJSF0sgkVugkZKzdCjBdrf54llPUdpDJ+0nNu8PnLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA1PR11MB8576.namprd11.prod.outlook.com (2603:10b6:806:3b5::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.22; Wed, 12 Jul
 2023 18:54:32 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8a8c:99c0:4a8e:fcd5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8a8c:99c0:4a8e:fcd5%7]) with mapi id 15.20.6565.026; Wed, 12 Jul 2023
 18:54:32 +0000
Message-ID: <b1e2ccdb-e79b-d584-031c-5d71e2f524f5@intel.com>
Date: Wed, 12 Jul 2023 11:54:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
 <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
 <a9e34d7a-b22d-779c-67cb-88c69dc7ca6b@intel.com>
 <ZK0+NXmKnEzeUtTI@ashyti-mobl2.lan>
 <118e74c0-c1ce-fc6e-39f4-5518ace5d71e@intel.com>
 <6f981dd3-715a-6b7e-6c5d-d51610cddc88@linux.intel.com>
 <daeb0906-1b39-ebda-618f-dbce88f751bc@intel.com>
 <c1ebfb0f-f0d4-1204-750a-b169d4ddab54@linux.intel.com>
 <7db1b2b3-d496-1c70-a4bf-8ce08136fb10@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <7db1b2b3-d496-1c70-a4bf-8ce08136fb10@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0279.namprd03.prod.outlook.com
 (2603:10b6:303:b5::14) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA1PR11MB8576:EE_
X-MS-Office365-Filtering-Correlation-Id: acd99062-634b-4262-d7d4-08db83096de0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mUUfPIkETMMldFg1zDiwaTf+Um4TaZm7i3w6iIt5f1oevkyKp/zfvAxMQ/Z9vQDu+DgeQtGXFctRk/n+JhrJL/pmLoTqsArDt4XIVarg22PaUEuIy4z9vGPQl5F+lzyVjYenx49mQ2aVrHSZ/h+EOT8Hw3q18DZNByqbK1Nw/l6xFZdkz38rj2NrcI5TZmFnpu8mzBqriEYrByt68AVP+SL1WIH7o+0x9jVUNU+M7uXBpfbzrS5vDNuFuCK8K9/6IH2Q5ivCT6IBiKNiAbGn+EPpIHIDLA0IWHSpe85+Z80LWQvh1+1MyL3lCaZM1gQHzIHLa+3dmauH/v7Su4Te5eVVrIL4Y9k8Z5dA6Cm1dHVemj0P8aH7o3owS/jYGO9SLwuMNMjQSSD+uYsUgvQDavE48qPvVZeKo5lqiun3x7pNoD1Ko2dcLYKyo2nWzm1oeiJI4nH3tPn994b0idq3/bf6nqdqmXG197kZLNEVU8J68cCgLWh8reQduP7jJKGrTYO4Df/h+9O3+tvZhnwXcpDeYrcCkGeRD57MnMwN8eYkIUfKIdLCkeR9ZMbuoj8XgZKGfKI9FziG5jon9G/5SwAwYU10EZ/0hch8w1rRd1y69frQBk3w76rd514wbl16
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199021)(38100700002)(478600001)(82960400001)(31696002)(4326008)(86362001)(6666004)(110136005)(54906003)(66556008)(66946007)(66476007)(6486002)(6512007)(966005)(15188445003)(316002)(31686004)(41300700001)(186003)(83380400001)(2616005)(2906002)(36756003)(8936002)(8676002)(53546011)(6506007)(5660300002)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXdQV1A5cVpaL1lSaGZIMEZWNjgyaFVQTGxYU1IvOFlnNElsNkxMWENuS09C?=
 =?utf-8?B?QW5KbEZWaVFQYlZoSFNIbnVJUkkvVUk5NzBGUi9VOW1FNkN1dFpEUFBuRlZi?=
 =?utf-8?B?eXFJN3ovL05CcGpQYU00VGNrNDBiZURSRFdmb3p0YUJGSCtYQ05ablRmdEIz?=
 =?utf-8?B?dGxsSnFtbklmNCtTK0dGMDE1V2hhVDA4eGlUTzNsMjZKTjVwSTlSb2lMaXdB?=
 =?utf-8?B?SlZJR1NkRXY0dy9TMW1MMjM3ZmVaV3FheklLM3hCWlRKd2p5T0VFalFlTE5l?=
 =?utf-8?B?TlUwZy9jUi9ZczhVclFSeUluOExmZEpHdlA2NTF5cWhaVW15Z2ozWUZUK29m?=
 =?utf-8?B?cDVIMTI2aitDck9vK0hLcTZSV0RtOTdoRFhpSVpjSkd4RUNwemozY0dZK3Rw?=
 =?utf-8?B?bWtNemppZnA2eVFBV0xCZjNtVU9JaTc5aGhEQ0pHQWFOSzRxUms1OUhhdURZ?=
 =?utf-8?B?K0pCQ05OL1lCc3J2aTVIUm1WTnJmMU5WMUtqZC9yYUFjZ1Z6elZiYStXRytX?=
 =?utf-8?B?NFBUbVlWSGdyamJHcVdSQ1BGTnhpK2YwY3owNGhSbGd3Y1FoZjlrUnpCQXhM?=
 =?utf-8?B?clBQZmhGWUVZMDN5djFzZXFRck04WGR6TC9CWmNGRGUrTW9jd2dzQ0ZUVXBk?=
 =?utf-8?B?MG54M1BHQTRJcldMZU9qMXQ3ekdiZzlNc3V3dUpPa2dmTUtHRm9MODRYTkZI?=
 =?utf-8?B?dVBjd2lrWTRwb0ljZ3VYbEZCaVQ4NGNFM3VzQVhwV3k4TnN0dDFpYU9mZ3J4?=
 =?utf-8?B?SlY0U3Y0bVpZSDhzSU41T1F6T1pJaENhK3dkVkpUa2ZpdUxRNzMvbnJ2VlhS?=
 =?utf-8?B?alFlNUdFeTRVOGVIOGtXZ201d0lMK1ZrcnN4aW9MR1ZkR05Dd2pCTURVS1ZT?=
 =?utf-8?B?ZGZkb0NXcUZYVTdmcmlHRUZVNzF4dmczUDVCS1k5V05LL2VNalYxTzljNlZk?=
 =?utf-8?B?MXRpd0Z5VlpWaTYzRlBzZjU4R3dGWmJUZlpQMFowWkRRUXJ2cW10eW0wejlY?=
 =?utf-8?B?Q2I4OW5GbG4zandNVVFBeUlDaHVicTVYUEpKcEpCNGRYVHZrdjNXaDNVZWpq?=
 =?utf-8?B?KzdoVGhZbmx0UzV4bVF1bHkyWDN5OGNhdGROdnF2ZC9qVnlVNC9Zekx3K1RT?=
 =?utf-8?B?TFl2cVNMalhvUFIvTW03RUJMSHlxSS90alRhM0N0QnZhbnQ2aXNma1RSeVJD?=
 =?utf-8?B?MmtINHlLdkFYVi90c0p4MVBPckVwSmRkR0xMVlpsb01uRmFzSmtXSkQxVUZp?=
 =?utf-8?B?UklXaWNLMXJLbEh5M29IZGdlZGpkZmU3RWowRDZtenQ3bDJqV1M1ZzVpVlJF?=
 =?utf-8?B?d2Q0UnBqMzJzV21aNVYrUkVlaFFRVWNEMEFZZWZ1U2NhKzVXVW03VE40VFg4?=
 =?utf-8?B?UEU5aVBDWXoxc3hra3ZXeVUxREtGaHBKblVWRzV3ZFRVTkZkMmoyTUVFT0xQ?=
 =?utf-8?B?UEtWS0s2cXE4aE9KenFyVVZEVHNCbjRvUkExZ1RGUHJlUWhEQnZ4bTFFU2dO?=
 =?utf-8?B?dUtmNFNXNEE5SHN2SXN1Q2lwalFuTEcwak80R0Z6bGR5Yys3eUdIRG5CU3pp?=
 =?utf-8?B?YS9oMGdWUFE5eHRzZGNxNXZkeXpPckhlZGN2dTA0RFcyWVBHVy8wVnp2K1Iw?=
 =?utf-8?B?MDFhOFgrdXF0OXRKTDhKYStsYm5Zd0lNeEExLzlYaFdyQVRhRGhLS2E1VlV3?=
 =?utf-8?B?RTNZS1BnWE8xdS9aSG9wYkNibnpSMXBMbEcxaWk4VElFNW9pNmpuN0owRTZN?=
 =?utf-8?B?dGF5SVhuSGxyUGhKeWM1SHNXZVRDSnFFYkJSckRVWHVhNUVkWVlsRFg1RnJ4?=
 =?utf-8?B?TjBKUUFsaW1uSkI1Zi9RVTh0bmNVMk1VSlh6RHVlVEhlTVJ1c0MwaEdrNDhq?=
 =?utf-8?B?dmQ5RFlwNWxHK3AxWHpwOVdnNzJlWFY0SFAvQ21NWGRlVEtRMU9jdzlpblNQ?=
 =?utf-8?B?b0s4c3BaK3lJWDZ4QTlzWE4vOU1ad0VJdFhvSEdYOHJCRlQxRzVGanovd1pV?=
 =?utf-8?B?VzJHaUM1TGpYSHc0QzJicEhxWWZBV29PSDhoSktockNPT293OVRFaElUSWM0?=
 =?utf-8?B?anpaVVIvQ2RaOXFadHJuVUlUdDA4Z28wYTVya0Y1Q3gwS3NvaXJUZWVvTEdZ?=
 =?utf-8?B?OTRmOWNhUnJTcFE1OWtudFRDRmc5NjNjS2Q2MmIraVllQTVaZmJ4dHdRZjJ1?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acd99062-634b-4262-d7d4-08db83096de0
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 18:54:32.5875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s8Ab7E7nQ9R7hH/MCrQf3almIxrGLJs6NwBrp9/biC2ShFSdDVS4mUFm+COucMVBz06iml1KB/voZeRliTfPLj4vO6z6PHhozuykajx7m6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8576
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: update request engine
 before removing virtual GuC engine
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 7/12/2023 09:27, Andrzej Hajda wrote:
> On 12.07.2023 14:35, Tvrtko Ursulin wrote:
>> On 12/07/2023 13:18, Andrzej Hajda wrote:
>>> On 11.07.2023 17:27, Tvrtko Ursulin wrote:
>>>> On 11/07/2023 14:58, Andrzej Hajda wrote:
>>>>> On 11.07.2023 13:34, Andi Shyti wrote:
>>>>>> Hi Andrzej,
>>>>>>
>>>>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
>>>>>>>           1 file changed, 11 insertions(+)
>>>>>>>
>>>>>>>          diff --git 
>>>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>          index a0e3ef1c65d246..2c877ea5eda6f0 100644
>>>>>>>          --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>          +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>          @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct 
>>>>>>> i915_request *rq, struct intel_context *ce)
>>>>>>>           static void remove_from_context(struct i915_request *rq)
>>>>>>>           {
>>>>>>>                  struct intel_context *ce = 
>>>>>>> request_to_scheduling_context(rq);
>>>>>>>          +       struct intel_engine_cs *engine;
>>>>>>>          +       intel_engine_mask_t tmp;
>>>>>>>
>>>>>>> GEM_BUG_ON(intel_context_is_child(ce));
>>>>>>>
>>>>>>>          @@ -3478,6 +3480,15 @@ static void 
>>>>>>> remove_from_context(struct i915_request *rq)
>>>>>>>
>>>>>>>                  atomic_dec(&ce->guc_id.ref);
>>>>>>> i915_request_notify_execute_cb_imm(rq);
>>>>>>>          +
>>>>>>>          +       /*
>>>>>>>          +        * GuC virtual engine can disappear after this 
>>>>>>> call, so let's assign
>>>>>>>          +        * something valid, as driver expects this to 
>>>>>>> be always valid pointer.
>>>>>>>          +        */
>>>>>>>          +       for_each_engine_masked(engine, rq->engine->gt, 
>>>>>>> rq->execution_mask, tmp) {
>>>>>>>          +               rq->engine = engine;
>>>>>>>
>>>>>>>      yes... here the context might lose the virtual engine... I 
>>>>>>> wonder
>>>>>>>      whether this is the rigth solution, though. Maybe we should 
>>>>>>> set
>>>>>>>      rq->engine = NULL; and check for NULL? Don't know.
>>>>>>>
>>>>>>>
>>>>>>> Setting NULL causes occasional null page de-reference in
>>>>>>>
>>>>>>> i915_request_wait_timeout:
>>>>>>>
>>>>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>>>>>
>>>>>>> rq->engine after removing rq from context is (IMHO) used as a 
>>>>>>> set of aliases
>>>>>>> for gt and i915 (despite rq itself contains the alias to i915).
>>>>>> without investigating further, but maybe that code is not even
>>>>>> supposed to be executed, at this point, if the request's assigned
>>>>>> virtual engine is removed.
>>>>>
>>>>> Real tests show it is executed and the function 
>>>>> i915_request_wait_timeout is quite generic
>>>>> I guess it is quite typical use-case, the only question is about 
>>>>> timings - what happens earlier -
>>>>> finalization of i915_request_wait_timeout or context removal.
>>>>>
>>>>> The other point rq->engine is accessed after context removal is 
>>>>> i915_fence_release -
>>>>> there is long comment there regarding virtual context and reuse 
>>>>> retired rq.
>>>>> Anyway calling there "intel_engine_is_virtual(rq->engine)" is 
>>>>> risky without this patch and KASAN complains clearly about it:
>>>>> http://gfx-ci.igk.intel.com/tree/drm-tip/kasan.html?testfilter=gem_exec_balancer 
>>>>>
>>>>
>>>> Looks like a bug introduced in bcb9aa45d5a0 ("Revert "drm/i915: 
>>>> Hold reference to intel_context over life of i915_request""), which 
>>>> was a partial revert of 1e98d8c52ed5 ("drm/i915: Hold reference to 
>>>> intel_context over life of i915_request").
>>>>
>>>> Ie. if 1e98d8c52ed5 recognised the problem with disappearing 
>>>> rq->engine, then I am confused how bcb9aa45d5a0 left the rq->engine 
>>>> dereference in there after removing the extra reference.
>>>>
>>>> Could it be that the intel_engine_is_virtual check simply needs to 
>>>> be removed from i915_fence_release, restoring things to how they 
>>>> were before 1e98d8c52ed5? Could you try it out?
>>>
>>>
>>> I have already tried something similar [1] and KASAN bugs 
>>> disappeared, or more precisely gem_exec_balance tests passed. But I 
>>> have been warned by Nirmoy guc virtual engines can be created for 
>>> only one real engine (ie. is_power_of_2(rq->execution_mask) is true 
>>> but rq->engine points to virtual engine).
>>>
>>> [1]: https://patchwork.freedesktop.org/series/118879/
>>
>> Ugh.. Try involving media umd folks to see if they need a single 
>> engine virtual engine? Or we could always just not create it in the 
>> driver, I mean just use the physical one.
>
>
> In case there is single physical engine intel_engine_create_virtual 
> falls back to intel_context_create (no virtual engine), but in case of 
> parallel contexts there is special KMD flag FORCE_VIRTUAL which 
> enforces virtual engine even for single physical engine. So it seems 
> to be KMD concept.
>
> Anyway is it worth investigating how to make 
> "is_power_of_2(rq->execution_mask)" indication of dangling engine 
> pointer? It will not help in 1st case:
> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>
>
There seems to be a fundamental problem here. Object 1 (rq) is holding a 
pointer to a reference counted and transient object 2 (engine) but 
without taking a reference count for itself. That is a Bad Thing(tm). 
I'm not following the description in the revert patch as to why rq can't 
ref count the context/engine. Is there actually a recursive counting 
problem? Or is it just a lifetime issue caused by requests hanging 
around indefinitely because they are locked by a user process?

Either way, jumping through convoluted hoops to ensure the code does not 
attempt to dereference a dangling pointer seems like the wrong fix. 
Removing the engine pointer when the request is completed and no longer 
dependent upon an engine (but before the engine can possibly be 
destroyed) seems like a much better solution. And then making the 
request handling code check for and cope with a null engine pointer. It 
sounds like the only problem there is the above mutex, but there is an 
alternate route to that? Although why a completed request would need 
access to a GT reset mutex seems confusing. If the request is done, then 
what connection does it still have to the GT?

John.

> Regards
> Andrzej
>
>
>>
>> Regards,
>>
>> Tvrtko
>>
>>
>>
>

