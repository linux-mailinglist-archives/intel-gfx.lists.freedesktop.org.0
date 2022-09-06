Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAEF5AF4AD
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 21:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C298810E1A2;
	Tue,  6 Sep 2022 19:47:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0798510EA60
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 19:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662493621; x=1694029621;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZqPwxyqX8qMJpyMSp9HkjjAszZLQqQGInfoX5AxIFDk=;
 b=GsT42UV82InivbucSwV57qhi7AWtGTZ+D+CY8nw+PjL5gVhrbPR1Dx7D
 JiVwgTQdlY1Ir09G4aUxAK86SNI/kFpc9ycJHANIYLUCv5tuf0EjIXcrp
 6cmVqSWG0ZEyTqUWAv+0ci19qk5JaPflgJUr1y8M/d0EcFkmLBS633vyy
 S4uyZ0CeuxIprJZEwr272Xggpp5pJqQz/4LEq7KNNCWzZx5kmCuwFwqVI
 e6xYovd+asxNvVD+EOQ7j8fhjacilpyErxgyWO5HcJhxTrGGB1foKY4Ln
 C+HWguSPZOvGBorgRFgv1Mtip+SjnSSasbBtepSx8j1GwoITgu1c7n9nO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="358404929"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="358404929"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 12:46:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="647348088"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 06 Sep 2022 12:46:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:46:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:46:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 12:46:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 12:46:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChbuA93i8+6yFwSYnC3EgPsI4ZHsXmf7mdkirlUmALRM0E3kYVmZvwKGmAx6Li7EsHr24j67niEQWwmt7mZQmadXnlyNYvD3CAcnMYSNVUGRyOVWHs489Y7KbP0IAB3y2v6A3x4wO9NB2aqkoCJCbiUr2rjuc/vqMXWyKAvzfYUTNGnmg3zMOhcx3F5sGe6vosWkK4hJQhKOt7e7ESqlGOZkJmuTHb62hzc9vWebu6BcWlfzT2PPnVZhh30mjIhTQ9I4OovoEcokT8wL0UIK/RejBI8knR0B1IcbNJsuxH2ZSNG7A0Vj1RC8Cnk7JMo4xNmWGkAcQjDBklPt2LY4Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QClEHNxrrDMXR+K9+apIqr2mT9Eqc5dcAthocI67xbE=;
 b=QJnTXvj4724xtRvZp65dw23Z7t5WufLjIceyjEBKNWpa65MWhxdUlFWFwmEbMO+9qh+nfEXyQye8Rm3JhpvBzC8t7vMSY3hQL3p7gEPCXE3HKUgN4gs7HOUUnVZzVIrkWfpqjf0R2XGhkbnXubyS1/EjnI5FLxV1TRhjfg+WPQnX8MULOKzhVteap/l59gk3fkOwroPVm3e4s2e6MTYoUzuyuoZKDPt6c9N56PjX8Cgs20ElFVxO6I9j4JYdSEdHOmN1tUmMHVzqBdCUMNXfnVGkTTAYeYbwIsHVnu/2FpjKRV1z6jTZJM2f0rvrk77mtv61MN9C/sH1JaYj7RBgEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BYAPR11MB2695.namprd11.prod.outlook.com (2603:10b6:a02:c0::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.16; Tue, 6 Sep 2022 19:46:39 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:46:39 +0000
Date: Tue, 6 Sep 2022 12:46:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <YxejnZCHt7nhKqRB@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-3-umesh.nerlige.ramappa@intel.com>
 <7862e250-59b7-f966-820f-5e6ee7afc306@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <7862e250-59b7-f966-820f-5e6ee7afc306@intel.com>
X-ClientProxiedBy: SJ0PR05CA0118.namprd05.prod.outlook.com
 (2603:10b6:a03:334::33) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 43394f96-a828-4f09-981d-08da904083d1
X-MS-TrafficTypeDiagnostic: BYAPR11MB2695:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UYUnasosEcn53MX4TzibzM+BpWtU0X16s+4SJUFW6AZDjZjJIKAIcmClw0KY+/6F9IZrOPnT/AVeUEkygvojya6R1FKIoNJD2Ew78wAQhQcAZaIR/8YmuwpX/FWZ+9zERL/9tlGaZsJVrRR9fl/s07gzB+T/xTlAS+7X6o4olvWRZMaIEZYZeIf7rJbSslOjNKewz/317Dzjb7ul1zXm9mghMFvRVgCNgL46UvEOYi1Q25BgK6hD8tTy3qPVq253YKP4FWvevHAzK8NIHVmch0+1iTvI1qZ08Cvhph5RhSPfYm2LZhvXHGeCe9SxsHwPNafOSHaIkWl10J4v+aDvz5Eo+c+X3FgOkWB6tAshk7qXw0Kx5/AvzhhX08z58Nq+QoO6nyXOjZqXHTyTuetLico6vu4W3Tmz6spu+PFvIPp5EwUgGjiRYHG44nrt12woywkbgUU6gegb+kgmniyrSAdQhEwqV4rTkBr94jaY/UMQAx/FGsZa5CPcazdfTIp73AnS11YDNhBCnY2OOfwNqfygnVGDZ/xS5Sm2hP2UWkgJNn/C5qSGGf6gqvn6V/RORw89sjbAJXQNdrnJeTNeHtP7seUbykW5rV0g19Q3YK4ZiSMRj58bimOkSvOBK8Ty3FXuXI7UIV16xoXdsiwrZ29nXmV0V0nIBI4WpLOMxWZ4mw2vWZyL8dn3sMKZN/Cc5hDiLG1rPagAaFx2HUZdZIl+bhfIHeIcjzhh2SuRcrCOTvplzhfZ5Zusn0SMONxs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(136003)(346002)(396003)(376002)(39860400002)(33716001)(83380400001)(66946007)(6636002)(316002)(4326008)(478600001)(6486002)(66556008)(66476007)(8676002)(86362001)(6506007)(6512007)(186003)(9686003)(5660300002)(2906002)(6862004)(107886003)(8936002)(41300700001)(38100700002)(26005)(82960400001)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWNGVFJJQWVPbmlkVFVhWEhBemxXdDk3aVhmOGFYZEZOZFB1R1Y5alhGM0Nt?=
 =?utf-8?B?MFZab2oxeGlaY0JJSVlZYzFTNVo4S2ZPay9MZ2ZCOEcvbFdXVHY0ZTk2QWI3?=
 =?utf-8?B?UCs4eWpuYitSMms4alRzOFFmK29VQk1LcTlKQmM2dFFUYzYrVWpQVGptaWVY?=
 =?utf-8?B?elErQjFrVHNoYnRhSWIxS0hDQlM5d3RjYzFKZVkxQjE4OG4wSDBPSFRKWnJq?=
 =?utf-8?B?NWYwSVkxMzluQ1lKRGdpV2QyNU5CWkwvTjNOam1yT2t1WE9oUFhsT0gvUFdO?=
 =?utf-8?B?Q2c1UlpmT0J4eVY2Q3pPczJxQWtTN1R4UDZCNk5mdGdPTWVhMW80THBvK0JL?=
 =?utf-8?B?K2JGNmlUeGxZWGhURDljNC9XMHErREpadTJIM1ZEK0tYS1Q0M0hjbEQrbE43?=
 =?utf-8?B?S3dObXAwQ2pOM21ZSkk5NXdNRTc5UnkwYU03K3l5dTZuSVlNVDNwdjl6NjdN?=
 =?utf-8?B?alcxMmI0b0IzcVhSQm1vSHJrWEpYYk12RndpdFVhRGYvN0x2SnRuTlB3VTQ2?=
 =?utf-8?B?K0VTQXY2K3d2WHJwSWVaUnpGNG1DOXVzcW8xQTQwUXpWRVlZZDBlU3ZGSWlV?=
 =?utf-8?B?dXZLR0VzdmRhNWdkWTlEVHdNMUpjV3FWQ1UrSm8xVWNpV3A4TXEzVU5DcTNB?=
 =?utf-8?B?dXpjLzJNNWxKeTRuZDM3NUZlOUY5UkovQXB2Z2JTNUs1bGpsOVV3MUlBTUYx?=
 =?utf-8?B?RG9sVTNESFh0TCtnb20ycXR0OTcrY2JGZzVGaTJzTVhHYm92VFJOQ25Pa1FP?=
 =?utf-8?B?TW5DYVJsYXd2ZTRsZEYydDl5VDlJUFBIMG41VFczR3RzeS9GeHpob2V0R2pU?=
 =?utf-8?B?L1U5RGM4VktUbitMR1ErbGRQY2l1V0ZPUnBhNy8rVEpLenk1RjFOM1U0M3hv?=
 =?utf-8?B?M3VrZkIvYy80UGhYNXFxYXJ6c3ZmajNLcVNuM2RxOFdBZ1RiY2srcWVSeEM5?=
 =?utf-8?B?bUU0YWZ5Z0NXQmdrdGIwKy81SHNKa2ZWV0pHR0Y3VGsvSGpOdWpaVlV0REZZ?=
 =?utf-8?B?S05HMGFhaEpCSWRuZUlibldGZkJ4WXN4NjBzeHpKNWlsWldzeXJLeUJadWQ5?=
 =?utf-8?B?RXlZWVg0bCtqNnlLNUJVSFNabE5HTkZlS0hTVFF2bmlGRTNpMFErVXdiV0cr?=
 =?utf-8?B?VWhLVE01a2NBbU9VL3B5QzZBVTFtZk1iaWdyakQ4RkZDN3VoSmRFenFGUUdX?=
 =?utf-8?B?N0FFdWVvSUNoY0R6cUlGVHVUUWJsZlNRWVMrTUtCU09tU0pIeWxuMmRHMjU2?=
 =?utf-8?B?TkhjRE1KNE50V3pnRVBYMkJ4Y3h1M09yVlU3RVBLWU1uQXB5T2l0NkpXbWRl?=
 =?utf-8?B?ZHJkSGNNT3R6ejloVGxQYm8yUUdzdUFhamdkTHNKa2wzazBxN0xCbTFkeFhU?=
 =?utf-8?B?NzdJZ3A1ZHRpUnYvdVpYQkhCZEJUUUVVSUw0R2tINjBjTDh6OFNzbHhNSXll?=
 =?utf-8?B?L2FtTTRZQXNzU2VRY2prcXRtQldVbm9waXFsYW1qMzFDRmlFM0pZSiswOGVw?=
 =?utf-8?B?QVV2K1dIaFh3MUVJL0xlb2t4Zi9vNzBnRjNhR3FsV29aY2NMSFY1RXl5aGpL?=
 =?utf-8?B?SjZQQjltWTRqNTZ0RE41dHpOR3BXMXRUekxpa3ZycXplY2liNUg4Q2Flbndj?=
 =?utf-8?B?N01WZUZhR0oyYVFFdHNKTlVpMTRQR3VOd2Z5bzZHRzROV0VCYThpenVvbnly?=
 =?utf-8?B?alV4cnl0M0J2eEdaZmdrYlZLQlp1MGptb1A2VWVRaHFwRTQzblU5V1RxUmhk?=
 =?utf-8?B?TW9BL2lIbThwQjI3WVRqVXpic016U3R6Zy95UmtiOER2NDJTcnc0RGNkaEFq?=
 =?utf-8?B?T0tQZlZiZnR4ZENBcjlnSElBNklrUk5VUnF5K2xHSVhyYlYvNlJkRjlyWjBP?=
 =?utf-8?B?MFhVcWRoUWtySmRZUkQyUUdZb0xBM0IrbUVKRFFoMzBDdkNSKzFPV0tmd0Zu?=
 =?utf-8?B?K0o0dTN6UHJvc0ZRZkVuNTdlMU9VaHc4eHBNMXBhU3JxVGVjc0JZNU50T1hk?=
 =?utf-8?B?ckdYN3JxRjVpTlBDY2RWRnAvam95S3NLZXI1amVyektEaitVTUFJdW1wYytV?=
 =?utf-8?B?c0lZRTdrUCtZME82ZUdlckJiZ0ZwRTVvVHhwVHdVRWE3ck9VMURzSGwxOWVC?=
 =?utf-8?B?WlRIZ3JTTWhIejVWeUZaTEdXTGk2Y3pjeFA3U1JBTUF2a25wc3QzMURqRSti?=
 =?utf-8?Q?+kKI9D6/hIiu9yIAiYf6uy8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43394f96-a828-4f09-981d-08da904083d1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:46:39.1454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Plwro93BYGA65FZonuRE+NZJc8LUSe2YuEhMfFnDU9Nd9e/ryi6FoxfvUWmQgxjHlwqm9yzCh13nXgKNHIEvgXBgi+LZ5cVpp4t3D+NAhYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2695
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/19] drm/i915/perf: Add OA formats for DG2
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

On Tue, Sep 06, 2022 at 10:35:16PM +0300, Lionel Landwerlin wrote:
>On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>Add new OA formats for DG2. Some of the newer OA formats are not
>>multples of 64 bytes and are not powers of 2. For those formats, adjust
>>hw_tail accordingly when checking for new reports.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramampa@intel.com>
>
>Apart from the coding style issue :
>
>
>Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>
>
>>---
>>  drivers/gpu/drm/i915/i915_perf.c | 63 ++++++++++++++++++++------------
>>  include/uapi/drm/i915_drm.h      |  6 +++
>>  2 files changed, 46 insertions(+), 23 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>index 735244a3aedd..c8331b549d31 100644
>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>@@ -306,7 +306,8 @@ static u32 i915_oa_max_sample_rate = 100000;
>>  /* XXX: beware if future OA HW adds new report formats that the current
>>   * code assumes all reports have a power-of-two size and ~(size - 1) can
>>- * be used as a mask to align the OA tail pointer.
>>+ * be used as a mask to align the OA tail pointer. In some of the
>>+ * formats, R is used to denote reserved field.
>>   */
>>  static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>>  	[I915_OA_FORMAT_A13]	    = { 0, 64 },
>>@@ -320,6 +321,10 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>>  	[I915_OA_FORMAT_A12]		    = { 0, 64 },
>>  	[I915_OA_FORMAT_A12_B8_C8]	    = { 2, 128 },
>>  	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
>>+	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
>>+	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
>>+	[I915_OAR_FORMAT_A36u64_B8_C8]		= { 1, 384 },
>>+	[I915_OA_FORMAT_A38u64_R2u64_B8_C8]	= { 1, 448 },
>>  };
>>  #define SAMPLE_OA_REPORT      (1<<0)
>>@@ -467,6 +472,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>  	bool pollin;
>>  	u32 hw_tail;
>>  	u64 now;
>>+	u32 partial_report_size;
>>  	/* We have to consider the (unlikely) possibility that read() errors
>>  	 * could result in an OA buffer reset which might reset the head and
>>@@ -476,10 +482,16 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>  	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
>>-	/* The tail pointer increases in 64 byte increments,
>>-	 * not in report_size steps...
>>+	/* The tail pointer increases in 64 byte increments, whereas report
>>+	 * sizes need not be integral multiples or 64 or powers of 2.
>>+	 * Compute potentially partially landed report in the OA buffer
>>  	 */
>>-	hw_tail &= ~(report_size - 1);
>>+	partial_report_size = OA_TAKEN(hw_tail, stream->oa_buffer.tail);
>>+	partial_report_size %= report_size;
>>+
>>+	/* Subtract partial amount off the tail */
>>+	hw_tail = gtt_offset + ((hw_tail - partial_report_size) &
>>+				(stream->oa_buffer.vma->size - 1));
>>  	now = ktime_get_mono_fast_ns();
>>@@ -601,6 +613,8 @@ static int append_oa_sample(struct i915_perf_stream *stream,
>>  {
>>  	int report_size = stream->oa_buffer.format_size;
>>  	struct drm_i915_perf_record_header header;
>>+	int report_size_partial;
>>+	u8 *oa_buf_end;
>>  	header.type = DRM_I915_PERF_RECORD_SAMPLE;
>>  	header.pad = 0;
>>@@ -614,7 +628,19 @@ static int append_oa_sample(struct i915_perf_stream *stream,
>>  		return -EFAULT;
>>  	buf += sizeof(header);
>>-	if (copy_to_user(buf, report, report_size))
>>+	oa_buf_end = stream->oa_buffer.vaddr +
>>+		     stream->oa_buffer.vma->size;
>>+	report_size_partial = oa_buf_end - report;
>>+
>>+	if (report_size_partial < report_size) {
>>+		if(copy_to_user(buf, report, report_size_partial))
>>+			return -EFAULT;
>>+		buf += report_size_partial;
>>+
>>+		if(copy_to_user(buf, stream->oa_buffer.vaddr,
>>+				report_size - report_size_partial))
>>+			return -EFAULT;
>
>I think the coding style requires you to use if () not if()
>

Will fix.

>
>Just a suggestion : you could make this code deal with the partial bit 
>as the main bit of the function :
>
>
>oa_buf_end = stream->oa_buffer.vaddr +
>	     stream->oa_buffer.vma->size;
>
>report_size_partial = oa_buf_end - report;
>
>if (copy_to_user(buf, report, report_size_partial))
>	return -EFAULT;
>buf += report_size_partial;

This ^ may not work because append_oa_sample is appending exactly one 
report to the user buffer, whereas the above may append more than one.

Thanks,
Umesh

>
>if (report_size_partial < report_size &&
>    copy_to_user(buf, stream->oa_buffer.vaddr,
>		report_size - report_size_partial))
>	return -EFAULT;
>buf += report_size - report_size_partial;
>
>
>>+	} else if (copy_to_user(buf, report, report_size))
>>  		return -EFAULT;
>>  	(*offset) += header.size;
>>@@ -684,8 +710,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>>  	 * all a power of two).
>>  	 */
>>  	if (drm_WARN_ONCE(&uncore->i915->drm,
>>-			  head > OA_BUFFER_SIZE || head % report_size ||
>>-			  tail > OA_BUFFER_SIZE || tail % report_size,
>>+			  head > stream->oa_buffer.vma->size ||
>>+			  tail > stream->oa_buffer.vma->size,
>>  			  "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
>>  			  head, tail))
>>  		return -EIO;
>>@@ -699,22 +725,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>>  		u32 ctx_id;
>>  		u32 reason;
>>-		/*
>>-		 * All the report sizes factor neatly into the buffer
>>-		 * size so we never expect to see a report split
>>-		 * between the beginning and end of the buffer.
>>-		 *
>>-		 * Given the initial alignment check a misalignment
>>-		 * here would imply a driver bug that would result
>>-		 * in an overrun.
>>-		 */
>>-		if (drm_WARN_ON(&uncore->i915->drm,
>>-				(OA_BUFFER_SIZE - head) < report_size)) {
>>-			drm_err(&uncore->i915->drm,
>>-				"Spurious OA head ptr: non-integral report offset\n");
>>-			break;
>>-		}
>>-
>>  		/*
>>  		 * The reason field includes flags identifying what
>>  		 * triggered this specific report (mostly timer
>>@@ -4513,6 +4523,13 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>>  		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
>>  		break;
>>+	case INTEL_DG2:
>>+		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
>>+		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
>>+		oa_format_add(perf, I915_OAR_FORMAT_A36u64_B8_C8);
>>+		oa_format_add(perf, I915_OA_FORMAT_A38u64_R2u64_B8_C8);
>>+		break;
>>+
>>  	default:
>>  		MISSING_CASE(platform);
>>  	}
>>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>index 520ad2691a99..d20d723925b5 100644
>>--- a/include/uapi/drm/i915_drm.h
>>+++ b/include/uapi/drm/i915_drm.h
>>@@ -2650,6 +2650,12 @@ enum drm_i915_oa_format {
>>  	I915_OA_FORMAT_A12_B8_C8,
>>  	I915_OA_FORMAT_A32u40_A4u32_B8_C8,
>>+	/* DG2 */
>>+	I915_OAR_FORMAT_A32u40_A4u32_B8_C8,
>>+	I915_OA_FORMAT_A24u40_A14u32_B8_C8,
>>+	I915_OAR_FORMAT_A36u64_B8_C8,
>>+	I915_OA_FORMAT_A38u64_R2u64_B8_C8,
>>+
>>  	I915_OA_FORMAT_MAX	    /* non-ABI */
>>  };
>
>
