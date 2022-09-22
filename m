Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 094A65E6C91
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 22:02:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90E110E1CC;
	Thu, 22 Sep 2022 20:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A0010E1CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 20:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663876914; x=1695412914;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3wz+OnFyCL/uZELyiSzceQsMk7XR55HcuKI7Xp2uJVE=;
 b=hvF62XhUibU97DbEorcKlTx95X1GH5gieN5WCBNgLLbngC6DmlUol/cc
 IhWwB2RyJCCNUvsKI8iW15qZZdt/XsH/az/xoS7yOanlHD4LWLPOOKwqE
 LiZon0L2SryNOBhL6OOuYz+gMtURmKTCLGQNKTx0ZPgr+aBQxJ6UtE6uE
 ogr38tJDiLhJSnIk3wbLkhlXQX8NK/AqUQ6lvmp5jjlyR6XLIJZ2MenBD
 5ozsMzlpYY7+6/Fn8+YJDwajF19hn/anAwZ42o1fOoAPdLNKDHOv/gJrD
 4GH8IXRLfTSXYi6kQ5PT+u+BSyNG67JP88mYOQ5J6s9ln6s4BPa+ZUhZ+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="362219969"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="362219969"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 13:01:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="653128514"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 22 Sep 2022 13:01:53 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 13:01:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 13:01:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 13:01:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H+0GCjYJxGsDSei1/2i1w1JZDVdjyCuVoXxOdXIMSJjxjjbY2uBfnZSXJnsiJzpmnMnN87zU9zhgyrB8yNMr0Ltgc5Bm36CLk1gGkeq7GUzfnE37pbgPX+T3vKE+cxaOBSlENUShIvrgd209xqPeouJlqDVjsY+JDagJXoSOw7SqkF6fM6YcsolK7MlJacibOm0RD4YcUVTjfWMjm/sPPSzzhPucEXdUa5Y+9vnPdvmKzfGmV0A4SUBN3yNnLya8O0Zq2XNlcQAGJ22GvTjwU0FiW7p8TXD3tpo8LKQN/8/MglECkRgAYcLX0IfRMJBOmlQqEiJRzDlhQR1Kdjz7fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d5OpawuHd3RhlXUpK5rj+XbU9kqxYenrtFr2XSz3keE=;
 b=aWJs+XUEprIWbptRo+BJ04x8FoReuLIWeXvfhgnQ8fCz4pSlUSEreMFv+G/H9ztr/qfrx7D4MDlIWu/SUmoFpvDh5JeQ58ORp6eUkKKjEjftncIEb7kPqtp+YArtDrlMLQmCTza6cUNt+wqgOYHFtxbhnyWxqSZ1x8Tyna/mHQliD2rDXKgf0NcGoBjGnfixUxYt4JWmrbahajuZIKDrjtNrxMpAZoNjCnxCW1xvU7ealiKrTCQn/6hOzTbulgFZapR2HocEXketDYDNYAAwv9KjWxhwlp3yLqX4CMngzq3qNaTEnkrPYxKYk0tkvtHmv8pdNhAjAwAJxkI0T4ms/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH7PR11MB6724.namprd11.prod.outlook.com (2603:10b6:510:1b4::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Thu, 22 Sep
 2022 20:01:51 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5654.015; Thu, 22 Sep 2022
 20:01:51 +0000
Message-ID: <68d3cbb5-0d3c-62f0-dc89-891361660742@intel.com>
Date: Thu, 22 Sep 2022 13:01:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.0
Content-Language: en-GB
To: Dan Carpenter <dan.carpenter@oracle.com>, <matthew.brost@intel.com>
References: <Yyxwn4XN6tnD1E6Z@kili>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <Yyxwn4XN6tnD1E6Z@kili>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW2PR2101CA0012.namprd21.prod.outlook.com
 (2603:10b6:302:1::25) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH7PR11MB6724:EE_
X-MS-Office365-Filtering-Correlation-Id: 276a2c87-d565-4fbb-c4ee-08da9cd54a38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AvcBjIqaq+7jTLqifNEjpmDUph6pYxgtYHWUg52R7OFIGbdFHhy5fLhxck5rOwZXhW71ViHWLQOphzLSVxCGmbLD5NAYSzfTqV6bb5K/qIUtlKMLHvyq/qwAaAc2Pi7A4cKr0vaW1ZFLWs0CysjPD37nYBdwHwmV6v03fXnM+/MHkkyPXc8vGAnWb5IQbOcbx6hGnoJZyZ9/0hdhKLkHiT/VMu/R/gjaSUNLgu8zGad5tOHT8xL4W0PD7t//OOLxsYvBIfs2LPtJ2mpN9qbvYRNcWevIe3uT5pbK1Uw13DapEPox8Ob1k5vTKckI48hhGP00LckpI+YOEPwWecuZR9GSrOM/F/luKO/w3MRjKxlZxeWw9mlOfV3GH18fOx5MKoJ2BY/2882Uf07K/NarpxStb9/fD/DXpFIB2uNtlZG6nEG6E0ErOIan/bRfdpTPqNnsKX3BQSHVIomJof2MmLvtfAUXZQVkVqqbz6/1mkERvR3u+6jar6N06qzI/e/0iLzUsq/TiswIPtiK5KkMJ0e4+kl0MVZOftGOxHsnP5h8NfrlDbABlwk255SrfT56K0UaqSxAuvaUgVic82UEkvIRqf7P7eyrRIUvpIsUNJfMHnFt5GaBPjJ6eZTNIEwzq8BZgZKxh+/fVT3//h+nheTMpLkCDJoUaYD4vqyFrfrBFlGBnSmNP9W4SMLv6F3OWN/L7X5kdE6ooNH1lSkJcysQBtpNTYAZv5ayRUIsnly++TEoiuNi74cliwzk4mGehVzKWi3ga7JDTB4sl4MsAWE4ntE7m86oKgw+lvPgxgQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(376002)(136003)(346002)(451199015)(53546011)(6512007)(26005)(8936002)(5660300002)(6506007)(6666004)(186003)(6636002)(107886003)(2616005)(8676002)(36756003)(2906002)(86362001)(66946007)(66556008)(66476007)(31696002)(316002)(41300700001)(83380400001)(6486002)(38100700002)(478600001)(4326008)(31686004)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWNaN0k5dDIrYjhxY1ZHd1FhcjRqaHBTRXU2RUpTRXV2K2VSRHNEMFdGSkRN?=
 =?utf-8?B?bXoyMGdoTlpuYjdtN04rSVRucytrVUgvZW9zUisxTXM2K0R6YVlLZnFzY3lN?=
 =?utf-8?B?UnZKVGR3YVpTUkQxbFM0UFZDLzVWUmFUdS9aUjkyTWNUOXg4akIyRldtN3Z6?=
 =?utf-8?B?TXRnZzVIb2VYSCtTdlBBNm03Y3hEQSt3ck9ZV1JobzhRTE9WN2psVmx6VTFk?=
 =?utf-8?B?M2JncW5wT0F3RVA2ZGhORW14YWV2eC9rQUx6eXorUkxLQS9abjNwS3pOOTZ1?=
 =?utf-8?B?ZUJTWVZTM1B5R2grYWRuNFhJelBTZXJBT2loQ3BIZnhDaU5EOEcwWmZ5bnBw?=
 =?utf-8?B?SndCWmpJQ2pjc2daNEpDcjZ2QTFZd1UwM2d5YXhtVENJZkRIV1BhWDc2Rkkr?=
 =?utf-8?B?TVA4eWpxWjdqcDF4eCtLTWVEcUt4NHJNdlBWQXhSU3Z5UHFZSXhqZ0pkS1Mx?=
 =?utf-8?B?NmNDRjR6T1k5Z1RYY3pMdzJBMkVraVBvUlUweUxoVFVSZWZwbGgrQWpSSVFw?=
 =?utf-8?B?ZHlZVlBzY3R0amM2OVUwZ1E2eWJxcXhjN2lZR2ZNS0pKNVFJdHcrWTM4d3BP?=
 =?utf-8?B?L0UzSlcycFFpdld6RlBPRWMwajBNYXNuVHYzOUl4T3RlUGl0Si84WGRPRFpP?=
 =?utf-8?B?RjNMSUNtbHJhNkdDbG52a3BsOFJib3NLVGV1NVlqSVdMV3M0VGNZaXNhVGZq?=
 =?utf-8?B?cFErS2R4VCtIbjhRWmtUcXNXYkZjcXErVUU2MW5SRkRkQ1YrSnBocWNkaW5H?=
 =?utf-8?B?RUNQdEdZdWNubUtoWlVBZXl1OUpQNmR1ckpaQTBaMXpjYU82a21scVdYZGJa?=
 =?utf-8?B?Z0Y0dlhrd2ZMTGdFR1VlZkxKZXd2Zzh5NiswSUU2YlJqL3FSWC9FQ0ZVc2Fj?=
 =?utf-8?B?ZEJSc1JoelBRdHZiOTdDUVZKUkxTcjNkSUFlTlowOWJhQU9zQTdTazR6QVk0?=
 =?utf-8?B?SHpqTk56bFdDSGk5UVBySkR2RmxaNlpEWkErckxRemFTaDgxVVI2bFVaQ2Vr?=
 =?utf-8?B?YTQxeXhIMDcrSlpTczVJc3hwQzUwVmZVaW16aW9EbmJmTWlpTEE3UEEzeU9J?=
 =?utf-8?B?Zi9LRHNONit3M293Y0lsWWhRb2FUNms5ZG9TVDNXU0dxT1lkQmYrWmRpb0k4?=
 =?utf-8?B?bm5kbmFhWUoxdW1UTGdGMkFPK3BseFhWOG1nSEw2eXVMeTNNdUpGWitvQ0Rr?=
 =?utf-8?B?R0pTeE54UVFlVU5lcjJGWFY5dDBkTDJwbkR0bGJ5d1VVUFpna05NVEE0Wk5E?=
 =?utf-8?B?cEhoNzJOMVVTOHowUUFSUTdjelNrQ05XUTRySEgwN0lrNjBUUHFmQXdNL1hz?=
 =?utf-8?B?c1JFYUlhRitSejl4VXZ2QWxQdTVDdll6eE9kd2dVWituUkZsODZXVW54UWRy?=
 =?utf-8?B?Y0dZdGFHVlhmTW41dElHWjNSZXZjU2czc3VkcVhRZjFKbldkUGlPb21sZ2RP?=
 =?utf-8?B?b2ZOR09YZGtVQnZsOG9kdExlQjhoUW5MbUNhVG50TmFkaEVSd21LeEEyTGJq?=
 =?utf-8?B?M3F0eENVT0lNTWlpbDl4WnhWeDVNSkNRVCtTRkt5eUdQYnFSaTYrQ0NXNHZ1?=
 =?utf-8?B?R2JrMG5ZZE5JaW04SndudmN6TlZBdzE1V1J6ckZ2OVYveGVXRy9HTTQyaDlS?=
 =?utf-8?B?bUpsN1hoZHRodHR3QU5GZGJFT1FDOFhQY29PRzJvdVhrOUtudzlqTDUySEhU?=
 =?utf-8?B?Q0toUDdKK29aWU5XWUJQUnRmdnlRN3g0Yk1vcTJNeUQ2WXFGelZvbDlTTFR2?=
 =?utf-8?B?R3lhRG9SSWdDWkxrczFuWmZoWENsMXdXZU9YMWx5Q2t5SU45Z2tPOVczRi9V?=
 =?utf-8?B?TVhOVSsvdDJvZEhyb0pzdTQyQTN5OGFoRmFpRG9UWTRNd0NZazJSdkdZU2g1?=
 =?utf-8?B?VjRpcVZ4b0Q2cEhxcjVmVmliTm1UQnVDeE9iME4xZ2toNTRYL25MaHBpWXNi?=
 =?utf-8?B?NytyUUdtY2RyNFIxQ1krdWJNTXhJOGZIa0NIVy9CdXhzcHdHdmoweTltRkRT?=
 =?utf-8?B?cXZBbUFSajZqK3U4RzdLc1NWME1tb0RBUUgzMnRsSGY2Z1EwZkQrc0d3UzJN?=
 =?utf-8?B?YkJYbS8xVmpnMlp0cis3Y1Q5TnV3VkZOQnBCS09SZjdRZTFyL250M0xWQjlB?=
 =?utf-8?B?cHEwbWVJMEcxekIrM0MrUmxJY3oxVTZBTXBoemNjYXRzV0kvK0ZnWE0wREYy?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 276a2c87-d565-4fbb-c4ee-08da9cd54a38
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 20:01:51.4954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KJ+N8ILRdqky1AFKOHxFXH2krnBEbDQ6u6CH5ZDy3ZYyEWVBdM+YHCnKF47ksfziSClAKywsxMZZVL2psFHT2Aoylg9pQmaUovE+z0LZLlU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6724
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [bug report] drm/i915/guc: Implement multi-lrc
 submission
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

On 9/22/2022 07:26, Dan Carpenter wrote:
> Hello Matthew Brost,
>
> The patch 6b540bf6f143: "drm/i915/guc: Implement multi-lrc
> submission" from Oct 14, 2021, leads to the following Smatch static
> checker warning:
>
> 	drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:752 __guc_add_request()
> 	warn: refcount leak 'ce->ref.refcount.refs.counter': lines='752'
>
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>      672 static int __guc_add_request(struct intel_guc *guc, struct i915_request *rq)
>      673 {
>      674         int err = 0;
>      675         struct intel_context *ce = request_to_scheduling_context(rq);
>      676         u32 action[3];
>      677         int len = 0;
>      678         u32 g2h_len_dw = 0;
>      679         bool enabled;
>      680
>      681         lockdep_assert_held(&rq->engine->sched_engine->lock);
>      682
>      683         /*
>      684          * Corner case where requests were sitting in the priority list or a
>      685          * request resubmitted after the context was banned.
>      686          */
>      687         if (unlikely(intel_context_is_banned(ce))) {
>      688                 i915_request_put(i915_request_mark_eio(rq));
>      689                 intel_engine_signal_breadcrumbs(ce->engine);
>      690                 return 0;
>      691         }
>      692
>      693         GEM_BUG_ON(!atomic_read(&ce->guc_id.ref));
>      694         GEM_BUG_ON(context_guc_id_invalid(ce));
>      695
>      696         if (context_policy_required(ce)) {
>      697                 err = guc_context_policy_init_v70(ce, false);
>      698                 if (err)
>      699                         return err;
>      700         }
>      701
>      702         spin_lock(&ce->guc_state.lock);
>      703
>      704         /*
>      705          * The request / context will be run on the hardware when scheduling
>      706          * gets enabled in the unblock. For multi-lrc we still submit the
>      707          * context to move the LRC tails.
>      708          */
>      709         if (unlikely(context_blocked(ce) && !intel_context_is_parent(ce)))
>      710                 goto out;
>      711
>      712         enabled = context_enabled(ce) || context_blocked(ce);
>      713
>      714         if (!enabled) {
>      715                 action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET;
>      716                 action[len++] = ce->guc_id.id;
>      717                 action[len++] = GUC_CONTEXT_ENABLE;
>      718                 set_context_pending_enable(ce);
>      719                 intel_context_get(ce);
>      720                 g2h_len_dw = G2H_LEN_DW_SCHED_CONTEXT_MODE_SET;
>      721         } else {
>      722                 action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT;
>      723                 action[len++] = ce->guc_id.id;
>      724         }
>      725
>      726         err = intel_guc_send_nb(guc, action, len, g2h_len_dw);
>      727         if (!enabled && !err) {
>      728                 trace_intel_context_sched_enable(ce);
>      729                 atomic_inc(&guc->outstanding_submission_g2h);
>      730                 set_context_enabled(ce);
>      731
>      732                 /*
>      733                  * Without multi-lrc KMD does the submission step (moving the
>      734                  * lrc tail) so enabling scheduling is sufficient to submit the
>      735                  * context. This isn't the case in multi-lrc submission as the
>      736                  * GuC needs to move the tails, hence the need for another H2G
>      737                  * to submit a multi-lrc context after enabling scheduling.
>      738                  */
>      739                 if (intel_context_is_parent(ce)) {
>      740                         action[0] = INTEL_GUC_ACTION_SCHED_CONTEXT;
>      741                         err = intel_guc_send_nb(guc, action, len - 1, 0);
>
> Should this have a something like:
>
> 				if (err)
> 					intel_context_put(ce);
No.

The ce has been marked as enabled above because the actual enable call 
succeeded.  This is a secondary call to 'poke' the context. If this 
fails, the context might not get scheduled in a timely manner but the 
tracking state is still correct. The context is now in use by GuC and 
therefore must be reference locked. And the 'context_enabled' flag is 
set on the i915 side to note that the reference count is held.

If you want to unwind at this point, you would need to send a 
CONTEXT_MODE_SET(DISABLE) H2G message (amongst other things) and only 
once that call has completed, can you call intel_context_put(ce).

I don't get why the analyser would be claiming a leak here. I'm not sure 
if it is just that the analyser is confused or if there is some other 
potential route to a leak. Is it possible to get more details as to how 
it thinks the leak can occur?

John.

>
>      742                 }
>      743         } else if (!enabled) {
>      744                 clr_context_pending_enable(ce);
>      745                 intel_context_put(ce);
>      746         }
>      747         if (likely(!err))
>      748                 trace_i915_request_guc_submit(rq);
>      749
>      750 out:
>      751         spin_unlock(&ce->guc_state.lock);
> --> 752         return err;
>      753 }
>
> regards,
> dan carpenter

