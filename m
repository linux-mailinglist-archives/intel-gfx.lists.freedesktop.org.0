Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5190B782B9F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 16:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BCB710E272;
	Mon, 21 Aug 2023 14:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2007010E27B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692627788; x=1724163788;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/asCyS2BODs9+xf4OOzV7fGtmrqEE4ml2pE0gRzfy54=;
 b=hFxqAbXPPNqVgqHp64Z305Kc9ghRm28B4QIyOxglC+g6Sc/7hCeNVkDI
 +AAR/bCjsNdNyorT1GknqDGyAvTSL+o5O15iNv+NI+MTG9OdkYZNnXHuj
 fr+zc9DYEYXgn31WVeuvpfYwl11+gykkPQU/+mX2ef/FcmvULyNu/Qasp
 wUoi7Ed5PAIqosi6J/xMKWLL2IbRvhvPxOP4Pf4UijCj3cwY5eWTiGYVG
 NIZ+oYVAqX2aYSJUTOuYP/WT89z/H0ehyLlWa7c4KrBdE+t0YEPNZUPU/
 relvrBPIKo3+Y0V9U1DXwHldrr6fqQeJeezaALeSIhD6dQeuWSpAxY7K4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="404608322"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="404608322"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 07:23:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="770966352"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="770966352"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 21 Aug 2023 07:23:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 07:23:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 07:23:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 07:23:03 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 07:23:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OAk+5O9x8DiG0VBJAT6oX03Zrjx2Ng0Jcdap94Uml7dQ7de4N+frCzZEBczvC6FLSftZjR47LFxGgtlGAoyz5aAbKHsV0Y0kj8oruq4UsxcQX90sA6NHFV7ro66sw86tvmSvytzMBxWS/gF7hrdseCUM670d8CYVoj2JmCL2WgRbiBOvp+WOLhG5nFgN1dsux8/AS31HXRejnG7ua1V6MAOQW9uBnmEy4YwPvAmnutWmh/OsswichybC8zOmKNV2ehIhNB+KXqkAtD8n13pW/MavjQGr2B+6f2kwH1W6pHGOz0hTdSHT+ku/KjLe+MOEIrItoTP1mGL+SxSBOhkXNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b6+ZEQc1z6l9GqKaS2cpOs28jHMiMEGHSo1gPgsUKYE=;
 b=Fc5GEu6PeBPTdMhtK6YrPFV02du7kRNoM29JmI4tl1wN+FHqBTMm9yB1qL2jjVTVLetQyVBuqQSsQns6vG5TCvuvXqMPfsKKjP50hGneqOwlv9PwuMI4y7r9dz5WF0itdbuavZecWPpp940ZsmQakarnLZiyET9h82nRFumM+DZ5QT0RxV3bG5ZH/O/jQIGE3Hf58s5K84rs/i2J7dXV7ZH/JmeT3jzpVGoK/O7u6AqwRpqZAUrt8TzrkawVfRQzWU4X4WwLbG2JT/iWFKOWHGw5j6BSfsMyNHiY3Zm0v+BglLS9+xlRn2WqL9mDN5HcwSfAn9sVVUWaKNhWIzLdww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 14:23:01 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 14:23:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <169262771531.6257.6447899629254711214@gjsousa-mobl2>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
 <20230814200632.56105-16-matthew.d.roper@intel.com>
 <169262771531.6257.6447899629254711214@gjsousa-mobl2>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Aug 2023 11:22:56 -0300
Message-ID: <169262777656.6257.1076168658596186891@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR13CA0023.namprd13.prod.outlook.com
 (2603:10b6:a03:180::36) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY5PR11MB6257:EE_
X-MS-Office365-Filtering-Correlation-Id: 353d2c27-e5f6-430d-29c6-08dba2521fd4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ga8rasxdCbxh0Srrp6MKA/4q/3+lyXpzxAT+FyDWsRPGr9Nn5U8lbAa+EznliNB7E3TFWjS/DWUJyiZhbPKVfy4YmQsT/6xWuKqukdLaneZb2lF5QjQJl71yHT/0+/j3iA/BOOXrCLt5CvT+8rF8P8A6VsP9E1Tltr3neMaWrwnc4hPf/bEUSgTbnmz5tMdc9GpdALM1vUUvfdoc6wGZzcEkBpHJcDTqMqKPCoST9rRo0KZglrY3SoOhnWBlF1XRr3xNkNjO46BOP2ynlmFunu5Y9viEE6ZB3lZVeYBRl6Iwdu5WDJlvIIcRap1gomQYfTg4nbz4bOxvZi6oQDPxiq8XzZq1/OfTWhV/vfyL8qFa5bJNsUXMvhEEVmhYtqSrqufnp0iNrkFd6TChWcn/Lm0MSNmQPAWVC0+KAbWf8v2iMb5ZL9Pls/wUHibGU8vCRZmUW0zF/UUwVtSBn9Npb62J1alZl0Vz9Q2O9PfXenvMoOi7c44B49hd3McLY3wdzDKMsDWJWECa7Lp/YJEsr3QpP/d7lElWiy8TNv9WyjAZnoENDThDhHItg6L5JwuS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199024)(186009)(1800799009)(2906002)(38100700002)(6506007)(6486002)(83380400001)(5660300002)(44832011)(26005)(86362001)(8676002)(8936002)(107886003)(4326008)(316002)(9686003)(66946007)(6512007)(66556008)(66476007)(82960400001)(478600001)(6666004)(41300700001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2NlNVVTRU12UDNYa25JVGVyL0xSZDhCUWwrYWcwb2RqZlBmK2pNeXNtemFt?=
 =?utf-8?B?TDBhWkgzSFlTNkdsSzU2aUl2dlZ2R3dSZW5vTDVCMWFJSUdXTW5FeWUxbllp?=
 =?utf-8?B?b20xYTBweVl4aEJHMDZ1djJsQjNIUTZWditBcXp2WjFKVGFxMlplZHpCU1gx?=
 =?utf-8?B?ekhUUXl6aGZ5MVdDUWR2a0N1NHU3WG5mam94VUhGaCtuOWlBWndXTTRiQkdp?=
 =?utf-8?B?NGtYdlM0L1FSdmFnYk1kQmN3MHJVdFVDSU9yUmNkKyttOEdPV3JYZm9qSVlX?=
 =?utf-8?B?eFlKQmV1SmJUVkthZ1JrR3hoekJ4NjdDb3RjT0M3SGhBQk1vNjRUV0RKL0M4?=
 =?utf-8?B?U0F5cEQvNTZkeHdsenR2eDFKYlV0ejI1cEhValFNcC9lMCtXdlI4azJ0NG5I?=
 =?utf-8?B?TWNiMlZrTmYyMXp2cXBwYWFSaXYzeVFZWWJuNjVQL0JOZDZtREFnWkN3WDZ3?=
 =?utf-8?B?Vlo3VE1VMWR5YTFGQm1BMXlhOXdFVkp4bkFWZXhXRkJNRXptNjZGM1FwV3Zs?=
 =?utf-8?B?RWJKK1UwdEdsRVNsY2ZHYTRzOVo2SzMvclZkNXlIenBOT1ZqUXpNalpjUFMx?=
 =?utf-8?B?K2pXazlib21vM1VhMEZQQWMvWk5yVlo0YkJib1UvbS9mcWdFSTlkWkVDRGdl?=
 =?utf-8?B?RXJWRTlsT24vUWRhTWZsYnR2MnR5cHhQWGptMlRLNFcvRXplRTEvVy8wM3Q5?=
 =?utf-8?B?T3I4TWtSQzNDdUxqSEhjUGFMWEFWQkZZWUtxWjZCZUMwZUU5Y3ZJa2g5UlJZ?=
 =?utf-8?B?ZkJ1SzhkUjFQaE1GN0tTd1czYjZFUkJXT0l5Y0dBVFpVb3B0N01sVTZ2NjZT?=
 =?utf-8?B?NDVNRFQvKzdvNE1BYnNDSVgzYzlVZlpDUjNvL2dUYXlyRU0wMXRNeUY0UDlW?=
 =?utf-8?B?cXJCSjUwOGFxaFVpV0p3VXJrUk9YWVlCUFdXdEI4QlhQbUdjeXJjYTdqNnNI?=
 =?utf-8?B?SXBwZVRGZ1loTTZRaFhWZlVvand2ZXpXd2tMbzJnVW5QSWlBMnlzMjNVK2dk?=
 =?utf-8?B?N3ptY2R6Um5Qc2lvQi9OcUJDUGZqN0ZldzNlWE9sZ2NHVldoSDRYeVZxWnRz?=
 =?utf-8?B?bVJHdTlYRXRqby8vVVdnemp5WTRJS2k1ODdVSmd5ejhrTmZZYktrYUNVZkYy?=
 =?utf-8?B?RkRjNVd1MFVmNUtSMlc3QWRMbXMwQ016TDZ3bVZxYVlCZmtCQ2MwTldTWXNH?=
 =?utf-8?B?UzNrZ0hJeWhReld6Rm1wRDJSZmR4YXZPOFdJU05sY1lKUjlvdk1keDd4QWhI?=
 =?utf-8?B?anE4ekQremNkaWJtZU5QNHg0cHhkRWE3dDVzL3ZURDRlcWJHcEt5M3kwNjFz?=
 =?utf-8?B?anhNMHZjQXN0WWRpeitUTm04QXNMRUs5ZGthOGNPUExGYTFaTnpjdW1wQjRn?=
 =?utf-8?B?cFVxUU5VMUh2czQ0ZWRZUzMwY1dSeHRDdDVEQ29qM254NmJmazJtZ3VYM2t1?=
 =?utf-8?B?L2JRUHlxZjcvMmQyeHljTG1uYTJ5RFd0eHNHWlZsbFplRm1NNGhObWxBSUZV?=
 =?utf-8?B?Z2c1NEdFdGh4ZmNaRy95enI2WlNKbDU3OHVzYlRGUW9jOUxMUW9SKzlGUWpp?=
 =?utf-8?B?N0djQVgwSWFPSXVmcFVkY2ZadC9kWVFQMUxjRXJGMnAxa0p4enNkZjB0YUEz?=
 =?utf-8?B?U0c0TzdJQWhVSjh5ZkY0ZzF2YmNYUk9nc2RjVml1SW5WZDNuMVM0TjVkNTFL?=
 =?utf-8?B?cWcxV25xNTF0bVY5NUlsd3NqUmxOb0VBekZweGIybXFZV0JxZTRQdU5SMjl6?=
 =?utf-8?B?MS9FUFRZOUhvalUxdUxQZ0dranhLK2tWR1RHcHB4QXAxQnBHSktxaTdtamRr?=
 =?utf-8?B?MkhXSnArK3lJWnhSZGp5YlR0aUFRYVJVYmhuWTlPNnE3eXZOYXR6REZ6RnR2?=
 =?utf-8?B?bUQwWXRrTmtHb29ScjVBeXdBRlNZcjBsTmNsOHhPbDlLeDJsQi9zdkJFRHZC?=
 =?utf-8?B?YWNTRlgxYk55NmF6azI0Y0NXNnJhKzdNSGVxRnlJQ3hFOW8zeCtoZ1pnc3Er?=
 =?utf-8?B?YVc0bUJtd1pRRTM2TmFWSC9ESkhTczBvdE43WGprWXV1NnZyazhNRG96c0Qx?=
 =?utf-8?B?Y1BpU0NGR1p2QmNtK043TlN1U3N0MEpUOWY2Q1NiMzRLT1JhdjlTcWpuVzd6?=
 =?utf-8?B?T1ByMnV6RmVMbzVwK3grT0dpTUFPUTlJelNnK2hlS1lPbDVkejFQVm1RbnBF?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 353d2c27-e5f6-430d-29c6-08dba2521fd4
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 14:23:01.1381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PUC0+KyWeLOGSN8O4yiNZPAC8X67tfKsUK60yrlx6CmXi0+jSRlvLpjnmtZaZ/xkFhk6ghIcEgv2f9xIGQmekw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 5/9] drm/i915: Eliminate IS_MTL_MEDIA_STEP
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Gustavo Sousa (2023-08-21 11:21:55-03:00)
>Quoting Matt Roper (2023-08-14 17:06:38-03:00)
>>Stepping-specific media behavior shouldn't be tied to MTL as a platform,
>>but rather specifically to the Xe_LPM+ IP.  Future non-MTL platforms may
>>re-use this IP and will need to follow the exact same logic and apply
>>the same workarounds.  IS_MTL_MEDIA_STEP() is dropped in favor of
>>IS_MEDIA_GT_IP_STEP, which checks the media IP version associated with a
>>specific IP and also ensures that we're operating on the media GT, not
>>the primary GT.
>>
>>v2:
>> - Switch to the IS_GT_IP_STEP macro.
>>v3:
>> - Switch back to long-form IS_MEDIA_GT_IP_STEP.  (Jani)
>>v4:
>> - Build IS_MEDIA_GT_IP_STEP on top of IS_MEDIA_GT_IP_RANGE and
>>   IS_MEDIA_STEP building blocks and name the parameters from/until
>>   rather than begin/fixed..  (Jani)
>>
>>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>---
>> drivers/gpu/drm/i915/gt/intel_gt.h  | 30 +++++++++++++++++++++++++++++
>> drivers/gpu/drm/i915/gt/intel_rc6.c |  3 +--
>> drivers/gpu/drm/i915/i915_drv.h     |  4 ----
>> drivers/gpu/drm/i915/i915_perf.c    | 15 ++++-----------
>> 4 files changed, 35 insertions(+), 17 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt=
/intel_gt.h
>>index 636fd651b8b2..abe9fe4a3bd9 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_gt.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>>@@ -25,6 +25,20 @@ struct drm_printer;
>>          GRAPHICS_VER_FULL((gt)->i915) >=3D (from) && \
>>          GRAPHICS_VER_FULL((gt)->i915) <=3D (until)))
>>=20
>>+/*
>>+ * Check that the GT is a media GT and has an IP version within the
>>+ * specified range (inclusive).
>>+ *
>>+ * Only usable on platforms with a standalone media design (i.e., IP ver=
sion 13
>>+ * and higher).
>>+ */
>>+#define IS_MEDIA_GT_IP_RANGE(gt, from, until) ( \
>>+        BUILD_BUG_ON_ZERO((from) < IP_VER(13, 0)) + \
>>+        BUILD_BUG_ON_ZERO((until) < (from)) + \
>>+        ((gt)->type =3D=3D GT_MEDIA && \
>>+         MEDIA_VER_FULL((gt)->i915) >=3D (from) && \
>>+         MEDIA_VER_FULL((gt)->i915) <=3D (until)))
>>+
>> /*
>>  * Check that the GT is a graphics GT with a specific IP version and has
>>  * a stepping in the range [begin, fixed).  The lower stepping bound is
>>@@ -42,6 +56,22 @@ struct drm_printer;
>>         (IS_GFX_GT_IP_RANGE((gt), (ipver), (ipver)) && \
>>          IS_GRAPHICS_STEP((gt)->i915, (from), (until))))
>>=20
>>+/*
>>+ * Check that the GT is a media GT with a specific IP version and has
>>+ * a stepping in the range [begin, fixed).  The lower stepping bound is
>>+ * inclusive, the upper bound is exclusive (corresponding to the first h=
ardware
>>+ * stepping at which the workaround is no longer needed).
>>+ * "STEP_FOREVER" can be passed as the upper stepping bound for workarou=
nds
>>+ * that have no "fixed" version for the specified IP version.
>
>I think the same comments from patch #4 apply here as well.
>
>>+ *
>>+ * This macro may only be used to match on platforms that have a standal=
one
>>+ * media design (i.e., media version 13 or higher).
>>+ */
>>+#define IS_MEDIA_GT_IP_STEP(gt, ipver, from, until) ( \
>>+        BUILD_BUG_ON_ZERO((until) <=3D (from)) + \
>>+        (IS_MEDIA_GT_IP_RANGE((gt), (ipver), (ipver)) && \
>>+         IS_MEDIA_STEP((gt)->i915, (from), (until))))
>>+
>> #define GT_TRACE(gt, fmt, ...) do {                                     =
   \
>>         const struct intel_gt *gt__ __maybe_unused =3D (gt);            =
    \
>>         GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),             =
   \
>>diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/g=
t/intel_rc6.c
>>index 58bb1c55294c..748b0c695072 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>@@ -526,8 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>>                 return false;
>>         }
>>=20
>>-        if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
>>-            gt->type =3D=3D GT_MEDIA) {
>>+        if (IS_MEDIA_GT_IP_STEP(gt, IP_VER(13, 0), STEP_A0, STEP_B0)) {
>>                 drm_notice(&i915->drm,
>>                            "Media RC6 disabled on A step\n");
>>                 return false;
>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
>>index e0e0493d6c1f..42a86483c694 100644
>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>@@ -662,10 +662,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>         (IS_METEORLAKE(__i915) && \
>>          IS_DISPLAY_STEP(__i915, since, until))
>>=20
>>-#define IS_MTL_MEDIA_STEP(__i915, since, until) \
>>-        (IS_METEORLAKE(__i915) && \
>>-         IS_MEDIA_STEP(__i915, since, until))
>>-
>> /*
>>  * DG2 hardware steppings are a bit unusual.  The hardware design was fo=
rked to
>>  * create three variants (G10, G11, and G12) which each have distinct
>>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915=
_perf.c
>>index 04bc1f4a1115..2ef8addb0cfd 100644
>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>@@ -4223,7 +4223,7 @@ static int read_properties_unlocked(struct i915_per=
f *perf,
>>          * C6 disable in BIOS. Fail if Media C6 is enabled on steppings =
where OAM
>>          * does not work as expected.
>>          */
>>-        if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
>>+        if (IS_MEDIA_GT_IP_STEP(props->engine->gt, IP_VER(13, 0), STEP_A=
0, STEP_C0) &&
>>             props->engine->oa_group->type =3D=3D TYPE_OAM &&
>>             intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
>>                 drm_dbg(&perf->i915->drm,
>>@@ -5332,16 +5332,9 @@ int i915_perf_ioctl_version(struct drm_i915_privat=
e *i915)
>>          * C6 disable in BIOS. If Media C6 is enabled in BIOS, return ve=
rsion 6
>>          * to indicate that OA media is not supported.
>>          */
>>-        if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
>>-                struct intel_gt *gt;
>>-                int i;
>>-
>>-                for_each_gt(gt, i915, i) {
>>-                        if (gt->type =3D=3D GT_MEDIA &&
>>-                            intel_check_bios_c6_setup(&gt->rc6))
>>-                                return 6;
>>-                }
>>-        }
>>+        if (IS_MEDIA_GT_IP_STEP(i915->media_gt, IP_VER(13, 0), STEP_A0, =
STEP_C0) &&
>
>Hm... i915->media_gt could be NULL, right? We should probably add a NULL c=
heck in
>IS_MEDIA_GT_IP_STEP().

Actually, in IS_MEDIA_GT_IP_RANGE().

>
>>+            intel_check_bios_c6_setup(&i915->media_gt->rc6))
>>+                return 6;
>>=20
>>         return 7;
>> }
>>--=20
>>2.41.0
>>
