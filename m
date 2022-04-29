Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 530E551451B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 11:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6F210FC19;
	Fri, 29 Apr 2022 09:08:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D06A10FC19
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 09:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651223327; x=1682759327;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mUCXpv454pX7lYCIco3AxcG5xqMDxJZgIheq2VIdRsc=;
 b=WREnH/0DQQALmXuflN/WqczQTvV3kGxcQr/9OQUtp3C1JazcxpBYU5Du
 9cKkDSRYRsyEjUvWYdUyoTGw5AEKvoXrkwfNR2ZXnWLdrqdhqt/6fEM2O
 fMywCVfdtkeUqzsMmIg9uITBSEXz1kGCPcPNbfT0vge5PD7Sv6zDU5tXQ
 Ylt/+vafCL/Wvs4QFaNt7eWaCD6x01FyrArOoNREMAaOQ4SUD71AvArsn
 Jk0TEAL6w7ptckvUbdIEWt04cH09U79fBNPOAj69hEDw0PRXy5UOKAcFl
 agrMzEVMHfuQUbr+CIr71Hnf7osdyVBi6XiUr58PcGkJ50t0XjPm1UH9c A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="265433384"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="265433384"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 02:08:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="534393599"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 29 Apr 2022 02:08:46 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 29 Apr 2022 02:08:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 29 Apr 2022 02:08:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 29 Apr 2022 02:08:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhgvrOSeVaNIZTA4JlHX6Zk/AED9cTke0gyttmzQE5qdiAHIz55RgZpzCKR3utrLiB7Nab3Hw+YF/rf9Fatja7xWRDYIJLeB9CgxMvEyGmfU6aiBTgQ3COsnD1ybbDbAt3lzGUu4FmGwmtN8uMyIsvhPwcL7EjisQqX1lRPOMo1MV+jLocGQgVvrzmcocosGMiyhSWL+nSAEWq5EKWsRCbeJ+OjzpRhHH71efP1zn7tvJ/w/SLdX87wg5vyo5WUyelFA32VPbfs7uVAz68OOEEwru6XOIJiilU8YgCcI4jj7Tv5qAXySuBgNyg4qgeP58wctnd5SbmRFW6SmTKL1mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=12LVyn4SqvOj8xZYO6mbD5OpFVlFbUFQlF7/RwO3FdM=;
 b=e9NLWS6kp1hTgBeYOfRMjC7mbm8KOVaZeS0CO72TDHvgKrvTI0PwnYllvWIqfPp1fklCz9IkN757+AjHCN9hZj7I2mnCe7/WvyFnZFYxN0Lx0ttHzSh+tw4U3xWUiIOPhNj8hDpJOxjaWCEoeJ6fAy3UPIK4EvZOcDW5GSBjvIarbAFpARwVacWIieQfX9iWqlrb2ApNq5BHXj+f8JYuTW+wwP2E5aHPg/yM3R/I+83RKhYagV3FLeuVUEGmLz4b5KT9cxd2/VCyoWiByWU3sU7ekc2q64WaPFfclUyZWr6Qpb1EGtDvN2slcGlOiNk/kB+JU1gRUsAb2SJdh3tH+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com (2603:10b6:a03:2d4::5)
 by SN6PR11MB3040.namprd11.prod.outlook.com (2603:10b6:805:db::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Fri, 29 Apr
 2022 09:08:35 +0000
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::3d83:3af5:c95f:e062]) by SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::3d83:3af5:c95f:e062%7]) with mapi id 15.20.5186.021; Fri, 29 Apr 2022
 09:08:35 +0000
Date: Fri, 29 Apr 2022 14:37:29 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Siva Mullati <siva.mullati@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <Ymuq0ctjWWn/LPJo@bvivekan-mobl.gar.corp.intel.com>
References: <20220404093125.73327-1-siva.mullati@intel.com>
 <20220404093125.73327-2-siva.mullati@intel.com>
 <YlgPhO3vNE9BHRGD@bvivekan-mobl.gar.corp.intel.com>
 <b41d8f08-77d8-71a4-4a13-04f6d4f5ae98@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <b41d8f08-77d8-71a4-4a13-04f6d4f5ae98@intel.com>
X-ClientProxiedBy: PN0PR01CA0006.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::11) To SJ0PR11MB4894.namprd11.prod.outlook.com
 (2603:10b6:a03:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ad5902f-9e3d-4d31-cdd4-08da29bfd6ec
X-MS-TrafficTypeDiagnostic: SN6PR11MB3040:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR11MB30408114C84ADF70D86DB6D79FFC9@SN6PR11MB3040.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oaFyedbMv+5DujO41SHQHlk3SoiP6mPDgkHngJtPJ7jWr10fuy5Ao+zBXvmJrW5vy3HNkxg5NptDgmq67fyi6/lqN36WXdB4OdL2B2iVKYpxV2JgvBRGzjRsAh4j1r5fv6/fzctNOoo64Tga4EsO6/PG3vdpSK+GLjcpZYklcO43CLENr5TN5z6DxgYpriThNQxJeiVgeqb92xl/um7LTBZcyKqi7/L24DcJpJZovP0FHnyThvBca7HRNjDIh2LaNEo5VrGqA1Qutx0U7XXiNCvVesrAuXo+XfujQ7v/Mw4Xcv28X7TrEjMFqgsJWV+7/2b8OFJklXATjdVGKz/3HSUD5uM9/M+OqIA3GM+njdIJ1l7lYhn3JFP/IVJftKa0ALXwxc1FlpRZcyXA/3BRc0hF6lJqpzBzH35MIn5eLFzaSulJPssOWoVVenzQ9Olc0G01oNP+MdvHQjhUTC7PUhXhB8HRQH4ckeWw4zbht3tpfE/BLCT8bGyGfVhPaVT+3Ky4qFX4iUiXMo/y2b0vhmQhBLFGXl8D2tJIpmb3WK8TMESaDhXaQwD+7obIUN6nJ47TJHUbwtG2ebyfvHxog3XK0GncxrWgro8gHedTtcoO0QIqfsuQqquwiUeNJp6miXtquRd8CdBMnoAqSOaNOA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(83380400001)(82960400001)(86362001)(6506007)(53546011)(6666004)(316002)(6512007)(26005)(6486002)(508600001)(186003)(2906002)(30864003)(44832011)(107886003)(4326008)(8936002)(66946007)(5660300002)(66476007)(8676002)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEhQbDY1RnRBSnZDUjZjOFRTSUNtZDNwdDQ4WE5OeXNSem1OTllMVThjQ3Ni?=
 =?utf-8?B?M2JrbXEzZmVqSXRZaG0rb1RibEd1VXk0U2dtMVM0OTRkV25PRXY5dmlidmUv?=
 =?utf-8?B?Y2VHRllzdzh5RGpDYndBb0dpNEYraWJ1NmpBVnBkeDE0eCtxV1U3cjRxSWFX?=
 =?utf-8?B?a1ZpM2VXdjZFeURDL1gvK3RnL2lUY2haMmdMRkxLYXhyNWx3cHZQS01ZVXpT?=
 =?utf-8?B?anRkQkxUZjBSM3FVdUZaQzBxU1JaM0dWeXNjcnBXRlR1NzF5bFFwT3Q2VE1k?=
 =?utf-8?B?aUxxQ1hnQkVwY3c3Y1VENlQwSUJJSGhPbHhYMVdMNmh4UnJudXFXaW5YalhJ?=
 =?utf-8?B?SmQ3a0YvZ3ZTNythb1E0clE2TStaRWMwdi9BYWJ1VFNOSmNsNXFrankwbncw?=
 =?utf-8?B?b3A2U1ZBUWJCa3VWQWtYYnJkdno2a1ZobldDSDQ3cDZhSGlndnVmdmtJZlVG?=
 =?utf-8?B?ZzBHa1FaSEpidWRPc2c2NDhSbWJJMGhaaWh2b1pBYk9wa2syZDQ4Uk5SOVJ6?=
 =?utf-8?B?VTlaN3hmWitYWEo5eWx3TUpIN2NYRHBxK0QrR3dtSU1qSnVvTlhqY0lOazZh?=
 =?utf-8?B?MWVWVHl0cjR2a2RuNDc0aHEyWitMQUFVS1I0UGVYcElPejVkTVB4T3Y3S3or?=
 =?utf-8?B?VnVwa1JjLzRxa3l4SXFLT0diaVlySlc1ZnZaVjBlSzI5NjJzbkpwWVg5TmJK?=
 =?utf-8?B?RVR4Q2tWWDBTQWlHbDYyM3RDQXpxcjlmYXl3V1YrekZ0Wll0WVk4T0NzNTNV?=
 =?utf-8?B?U01FeGM1WS94ZVJtK1pQQUlXOVNEMjhpUEZGUndSSXhtcFpvdVo5d3p5dzdo?=
 =?utf-8?B?cm9wcXh0emF2dVNiMW51WVhqYnplVDNBczB3SURkZTRCWU9pMzZ4a2MzNnI4?=
 =?utf-8?B?bDljbkN1VWdPZ2p3am1lK2tRRE1vdnBaaWlYSmc4aHhEVnVnWnowbTdBNVU4?=
 =?utf-8?B?NWp6SmtrdVliSTFpanRGcjhpWGhhL3l3L1dWS2RBam9xdzhnVUdvOVg2dVdr?=
 =?utf-8?B?VU5ubWxaOU9jeW1hdWpUV1lMSHpqcFdKVmVpUk1kSjM1OXJsajBVUU9iZTV1?=
 =?utf-8?B?ZVF6ME8vRjBzNkRNcHZjeS9wRlk0MnNaeWVSR3BHemo1SEliQWFMQUFQSXdo?=
 =?utf-8?B?Z090dkFwLzVaSmZZQzVkSy9jRzE5aVU4U2FSRzR3d01IMXpXQnJXNEhKamNp?=
 =?utf-8?B?M0RoZVkxblFWWTBGZmM4RDNyMWxXdHJJcFRyTFN0UUoxclk1TkFTWVZnSXlB?=
 =?utf-8?B?TTlzcDJLWGRHZ3p5Smc1T1RsSjJMVllUQkFmOW9ZOS95NUN2Q0owbDlwRjFR?=
 =?utf-8?B?UXVoUFpjM2ZTeDZkNEllb25IR0hGYk1mU3MvUytZUFRodmpzOFh3SFo4bXJK?=
 =?utf-8?B?QkVoZm9TMnVnQXFxUzZBdHloM2dOb0VFN3dXVXVNWkxWbXZ5SzFJY1liK2Zl?=
 =?utf-8?B?RXl6b0VmWmpjOFcwSm5CUWNxR1Fzekx0NjdnUkdKR3RuVEZ3Z0JIeXNvSnM1?=
 =?utf-8?B?SWN5YnVWK2xDaE1hR3U0TnVEaXFzRElXMDBjWGpFQW43d0hTSjdvSjlHQVVi?=
 =?utf-8?B?N1kzM0NnRE9hbWduS2xzZHl2aXc2NzBhRE0rbCtDWTRjdWF2Z0I2WHdINHBR?=
 =?utf-8?B?Rkt2KzFlV3ZHZmUvN0Y0VTRmTDNJRjViR2N1RG9mTmluWVJKTmptaTVCMFQx?=
 =?utf-8?B?THBUaFBrNlZuY3FaRXNWOFhyc011MVg4enJWWVNTdk51VnpOTVlQMExXWExa?=
 =?utf-8?B?QiswODQzNVNZeGZ2czEvV1dkbE5ndHpzcmNXTTRXZlhRQkNERDllVlZESTBz?=
 =?utf-8?B?NGtXOVArMFdiRm9YeG9PbUF0QjZpcTh4aXZ1VVhWdTIrOWxLREtLWG1mOW5o?=
 =?utf-8?B?bHFwMUpnZjh3UlBnZnhQc0xHWWFsMDMvblZwREZPckhLeStmSmlzOHVmMk1H?=
 =?utf-8?B?Y0VWTktPbjB6MU9tb2ZhelFYakhqcTFGKzlxVldyeHAzNkx6YWpxbmQ1TW5x?=
 =?utf-8?B?VTlhbjRjWDc1Wkc2MStHcXVlVTRZVjBwaU45ai9FcVg4S3ZxNEhReWlkNU9N?=
 =?utf-8?B?eWY2OU5ubk5ERE8wQXo5QnA0aFhhNnlXUjJQM1VWT3NoU1VwMzZVbDZtU1M3?=
 =?utf-8?B?OU1wQjU4b2hpWGJzb3p5Y1pIWVVXdHlSZnJqTVRJZFJSakZ6OG55NWhCYkIr?=
 =?utf-8?B?YUxSbEJlbVN2aStQNXFueGc3K25CdkxFQnF0dzRXWUIvYklYN0Q0cmRnejJp?=
 =?utf-8?B?NWNKTk1iUitqWVFUeU1ScCtKeWZhQ1FhdDRuK2E1L0tNaXoycHQ1aml0MDFW?=
 =?utf-8?B?Z3czM2U0RjA4L3B4dUxEeThhM0N5QjUzR0JOQ3BrZiszaHNKSHNGVldrM2l3?=
 =?utf-8?Q?CV883YJWBUOdJpfFVn5ThKo9VviGty1kwLBCbNft95hob?=
X-MS-Exchange-AntiSpam-MessageData-1: Sqxbqb1xjkv5sQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ad5902f-9e3d-4d31-cdd4-08da29bfd6ec
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2022 09:08:35.1275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O9I2IHleqxG41GQlh5EmokfIYLmyDh/7Qx+lYtrj8gRLOVjB7kSn66xY2U+IgpD9QSmBmH5Vy6bD9eFUeCC5YJAU3vHaxYbPZNiS0oiXCFo86v3F9E1zpnzjyViXifOG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3040
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Convert ct buffer to
 iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28.04.2022 19:43, Siva Mullati wrote:
> 
> On 14/04/22 17:41, Balasubramani Vivekanandan wrote:
> > On 04.04.2022 15:01, Mullati Siva wrote:
> >> From: Siva Mullati <siva.mullati@intel.com>
> >>
> >> Convert CT commands and descriptors to use iosys_map rather
> >> than plain pointer and save it in the intel_guc_ct_buffer struct.
> >> This will help with ct_write and ct_read for cmd send and receive
> >> after the initialization by abstracting the IO vs system memory.
> >>
> >> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 200 +++++++++++++---------
> >>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
> >>  2 files changed, 127 insertions(+), 82 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >> index f01325cd1b62..64568dc90b05 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >> @@ -44,6 +44,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
> >>  #define CT_PROBE_ERROR(_ct, _fmt, ...) \
> >>  	i915_probe_error(ct_to_i915(ct), "CT: " _fmt, ##__VA_ARGS__)
> >>  
> >> +#define ct_desc_read(desc_map_, field_) \
> >> +	iosys_map_rd_field(desc_map_, 0, struct guc_ct_buffer_desc, field_)
> >> +#define ct_desc_write(desc_map_, field_, val_) \
> >> +	iosys_map_wr_field(desc_map_, 0, struct guc_ct_buffer_desc, field_, val_)
> >> +
> > Did you try to make the change Lucas mentioned in his comment on rev0,
> > to pass `struct guc_ct_buffer_desc *` as first argument to the above
> > macros? Was it not feasible?
> It is not feasible.
> >>  /**
> >>   * DOC: CTB Blob
> >>   *
> >> @@ -76,6 +81,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
> >>  #define CTB_G2H_BUFFER_SIZE	(4 * CTB_H2G_BUFFER_SIZE)
> >>  #define G2H_ROOM_BUFFER_SIZE	(CTB_G2H_BUFFER_SIZE / 4)
> >>  
> >> +#define CTB_SEND_DESC_OFFSET	0u
> >> +#define CTB_RECV_DESC_OFFSET	(CTB_DESC_SIZE)
> >> +#define CTB_SEND_CMDS_OFFSET	(2 * CTB_DESC_SIZE)
> >> +#define CTB_RECV_CMDS_OFFSET	(2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE)
> >> +
> >>  struct ct_request {
> >>  	struct list_head link;
> >>  	u32 fence;
> >> @@ -113,9 +123,9 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
> >>  	init_waitqueue_head(&ct->wq);
> >>  }
> >>  
> >> -static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
> >> +static void guc_ct_buffer_desc_init(struct iosys_map *desc)
> >>  {
> >> -	memset(desc, 0, sizeof(*desc));
> >> +	iosys_map_memset(desc, 0, 0, sizeof(struct guc_ct_buffer_desc));
> >>  }
> >>  
> >>  static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
> >> @@ -128,17 +138,18 @@ static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
> >>  	space = CIRC_SPACE(ctb->tail, ctb->head, ctb->size) - ctb->resv_space;
> >>  	atomic_set(&ctb->space, space);
> >>  
> >> -	guc_ct_buffer_desc_init(ctb->desc);
> >> +	guc_ct_buffer_desc_init(&ctb->desc_map);
> >>  }
> >>  
> >>  static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
> >> -			       struct guc_ct_buffer_desc *desc,
> >> -			       u32 *cmds, u32 size_in_bytes, u32 resv_space)
> >> +			       struct iosys_map *desc,
> >> +			       struct iosys_map *cmds,
> >> +			       u32 size_in_bytes, u32 resv_space)
> >>  {
> >>  	GEM_BUG_ON(size_in_bytes % 4);
> >>  
> >> -	ctb->desc = desc;
> >> -	ctb->cmds = cmds;
> >> +	ctb->desc_map = *desc;
> >> +	ctb->cmds_map = *cmds;
> >>  	ctb->size = size_in_bytes / 4;
> >>  	ctb->resv_space = resv_space / 4;
> >>  
> >> @@ -218,12 +229,13 @@ static int ct_register_buffer(struct intel_guc_ct *ct, bool send,
> >>  int intel_guc_ct_init(struct intel_guc_ct *ct)
> >>  {
> >>  	struct intel_guc *guc = ct_to_guc(ct);
> >> -	struct guc_ct_buffer_desc *desc;
> >> +	struct iosys_map blob_map;
> >> +	struct iosys_map desc_map;
> >> +	struct iosys_map cmds_map;
> >>  	u32 blob_size;
> >>  	u32 cmds_size;
> >>  	u32 resv_space;
> >>  	void *blob;
> >> -	u32 *cmds;
> >>  	int err;
> >>  
> >>  	err = i915_inject_probe_error(guc_to_gt(guc)->i915, -ENXIO);
> >> @@ -242,27 +254,35 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
> >>  
> >>  	CT_DEBUG(ct, "base=%#x size=%u\n", intel_guc_ggtt_offset(guc, ct->vma), blob_size);
> >>  
> >> -	/* store pointers to desc and cmds for send ctb */
> >> -	desc = blob;
> >> -	cmds = blob + 2 * CTB_DESC_SIZE;
> >> +	if (i915_gem_object_is_lmem(ct->vma->obj))
> >> +		iosys_map_set_vaddr_iomem(&blob_map,
> >> +					  (void __iomem *)blob);
> >> +	else
> >> +		iosys_map_set_vaddr(&blob_map, blob);
> >> +
> >> +	/* store sysmap to desc_map and cmds_map for send ctb */
> >> +	desc_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_SEND_DESC_OFFSET);
> >> +	cmds_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_SEND_CMDS_OFFSET);
> >>  	cmds_size = CTB_H2G_BUFFER_SIZE;
> >>  	resv_space = 0;
> >> -	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "send",
> >> -		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
> >> -		 resv_space);
> >> +	CT_DEBUG(ct, "%s desc %#x cmds %#x size %u/%u\n", "send",
> >> +		 CTB_SEND_DESC_OFFSET, (u32)CTB_SEND_CMDS_OFFSET,
> >> +		 cmds_size, resv_space);
> >>  
> >> -	guc_ct_buffer_init(&ct->ctbs.send, desc, cmds, cmds_size, resv_space);
> >> +	guc_ct_buffer_init(&ct->ctbs.send,
> >> +			   &desc_map, &cmds_map, cmds_size, resv_space);
> >>  
> >> -	/* store pointers to desc and cmds for recv ctb */
> >> -	desc = blob + CTB_DESC_SIZE;
> >> -	cmds = blob + 2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE;
> >> +	/* store sysmap to desc_map and cmds_map for recv ctb */
> >> +	desc_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_RECV_DESC_OFFSET);
> >> +	cmds_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_RECV_CMDS_OFFSET);
> >>  	cmds_size = CTB_G2H_BUFFER_SIZE;
> >>  	resv_space = G2H_ROOM_BUFFER_SIZE;
> >> -	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "recv",
> >> -		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
> >> -		 resv_space);
> >> +	CT_DEBUG(ct, "%s desc %#x cmds %#x size %u/%u\n", "recv",
> >> +		 (u32)CTB_RECV_DESC_OFFSET, (u32)CTB_RECV_CMDS_OFFSET,
> >> +		 cmds_size, resv_space);
> >>  
> >> -	guc_ct_buffer_init(&ct->ctbs.recv, desc, cmds, cmds_size, resv_space);
> >> +	guc_ct_buffer_init(&ct->ctbs.recv,
> >> +			   &desc_map, &cmds_map, cmds_size, resv_space);
> >>  
> >>  	return 0;
> >>  }
> >> @@ -279,6 +299,10 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
> >>  
> >>  	tasklet_kill(&ct->receive_tasklet);
> >>  	i915_vma_unpin_and_release(&ct->vma, I915_VMA_RELEASE_MAP);
> >> +	iosys_map_clear(&ct->ctbs.send.desc_map);
> >> +	iosys_map_clear(&ct->ctbs.send.cmds_map);
> >> +	iosys_map_clear(&ct->ctbs.recv.desc_map);
> >> +	iosys_map_clear(&ct->ctbs.recv.cmds_map);
> > I think there is no need of clearing the iosys_map when were are zeroing
> > the complete structure area below.
> Yes, I have updated this in latest revision.
> >>  	memset(ct, 0, sizeof(*ct));
> >>  }
> >>  
> >> @@ -291,8 +315,8 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
> >>  int intel_guc_ct_enable(struct intel_guc_ct *ct)
> >>  {
> >>  	struct intel_guc *guc = ct_to_guc(ct);
> >> +	struct iosys_map blob_map;
> >>  	u32 base, desc, cmds, size;
> >> -	void *blob;
> >>  	int err;
> >>  
> >>  	GEM_BUG_ON(ct->enabled);
> >> @@ -302,9 +326,14 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
> >>  	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(ct->vma->obj));
> >>  	base = intel_guc_ggtt_offset(guc, ct->vma);
> >>  
> >> +	if (i915_gem_object_is_lmem(ct->vma->obj))
> >> +		iosys_map_set_vaddr_iomem(&blob_map, (void __iomem *)
> >> +					  __px_vaddr(ct->vma->obj));
> >> +	else
> >> +		iosys_map_set_vaddr(&blob_map, __px_vaddr(ct->vma->obj));
> >> +
> >>  	/* blob should start with send descriptor */
> >> -	blob = __px_vaddr(ct->vma->obj);
> >> -	GEM_BUG_ON(blob != ct->ctbs.send.desc);
> >> +	GEM_BUG_ON(!iosys_map_is_equal(&blob_map, &ct->ctbs.send.desc_map));
> >>  
> >>  	/* (re)initialize descriptors */
> >>  	guc_ct_buffer_reset(&ct->ctbs.send);
> >> @@ -314,15 +343,15 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
> >>  	 * Register both CT buffers starting with RECV buffer.
> >>  	 * Descriptors are in first half of the blob.
> >>  	 */
> >> -	desc = base + ptrdiff(ct->ctbs.recv.desc, blob);
> >> -	cmds = base + ptrdiff(ct->ctbs.recv.cmds, blob);
> >> +	desc = base + CTB_RECV_DESC_OFFSET;
> >> +	cmds = base + CTB_RECV_CMDS_OFFSET;
> >>  	size = ct->ctbs.recv.size * 4;
> >>  	err = ct_register_buffer(ct, false, desc, cmds, size);
> >>  	if (unlikely(err))
> >>  		goto err_out;
> >>  
> >> -	desc = base + ptrdiff(ct->ctbs.send.desc, blob);
> >> -	cmds = base + ptrdiff(ct->ctbs.send.cmds, blob);
> >> +	desc = base + CTB_SEND_DESC_OFFSET;
> >> +	cmds = base + CTB_SEND_CMDS_OFFSET;
> >>  	size = ct->ctbs.send.size * 4;
> >>  	err = ct_register_buffer(ct, true, desc, cmds, size);
> >>  	if (unlikely(err))
> >> @@ -371,31 +400,33 @@ static int ct_write(struct intel_guc_ct *ct,
> >>  		    u32 fence, u32 flags)
> >>  {
> >>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> >> -	struct guc_ct_buffer_desc *desc = ctb->desc;
> >>  	u32 tail = ctb->tail;
> >>  	u32 size = ctb->size;
> >>  	u32 header;
> >>  	u32 hxg;
> >>  	u32 type;
> >> -	u32 *cmds = ctb->cmds;
> >> +	u32 status = ct_desc_read(&ctb->desc_map, status);
> >>  	unsigned int i;
> >>  
> >> -	if (unlikely(desc->status))
> >> +	if (unlikely(status))
> >>  		goto corrupted;
> >>  
> >>  	GEM_BUG_ON(tail > size);
> >>  
> >>  #ifdef CONFIG_DRM_I915_DEBUG_GUC
> >> -	if (unlikely(tail != READ_ONCE(desc->tail))) {
> >> +	if (unlikely(tail != ct_desc_read(&ctb->desc_map, tail))) {
> >>  		CT_ERROR(ct, "Tail was modified %u != %u\n",
> >> -			 desc->tail, tail);
> >> -		desc->status |= GUC_CTB_STATUS_MISMATCH;
> >> +			 ct_desc_read(&ctb->desc_map, tail), tail);
> >> +		status |= GUC_CTB_STATUS_MISMATCH;
> >> +		ct_desc_write(&ctb->desc_map, status, status);
> >>  		goto corrupted;
> >>  	}
> >> -	if (unlikely(READ_ONCE(desc->head) >= size)) {
> >> +	if (unlikely(ct_desc_read(&ctb->desc_map, head) >= size)) {
> >>  		CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
> >> -			 desc->head, size);
> >> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> >> +			 ct_desc_read(&ctb->desc_map, head), size);
> > Can we avoid reading the head from ctb->desc_map twice? Since each
> > iosys_map read translates to memcpy, it is better to avoid repeating if
> > we can cache from the earlier read.
> Do you see real need of having a variable to cache value locally, considering the path is very unlikely to hit.
At first I thought reading the head twice just affects performance, but
after our discussion, I realized it can potentially mislead debugging.
As it is possible that head can be updated concurrently, we might print
a different value than what was really used in the if condition.
Printing a different value can mislead debugging. So we should print the
same value used in the condition.
Even in the original code, READ_ONCE is used only in the condition not
while printing.
> >> +		status = ct_desc_read(&ctb->desc_map, status) |
> >> +			GUC_CTB_STATUS_OVERFLOW;
> > Same here, can we avoid reading status since we already have it read. We
> > can do the same like how it is done for the GUC_CTB_STATUS_MISMATCH case.
> Addressed in latest patch
> >> +		ct_desc_write(&ctb->desc_map, status, status);
> >>  		goto corrupted;
> >>  	}
> >>  #endif
> >> @@ -418,14 +449,14 @@ static int ct_write(struct intel_guc_ct *ct,
> >>  	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
> >>  		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
> >>  
> >> -	cmds[tail] = header;
> >> +	iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, header);
> > I prefer not to use the MAGIC number. My suggestion is to use
> > sizeof(tail) since we need the offset in bytes.
> I tried avoiding it, can't use sizeof(tail). Here tail is just an index which might be a misleading if we use it in this case, cmds would have been the right one but this has been changed to iosys map. Currently updated with sizeof(u32).
> >>  	tail = (tail + 1) % size;
> >>  
> >> -	cmds[tail] = hxg;
> >> +	iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, hxg);
> > MAGIC number again. There are numerous places in the patch, where
> > numbers are used. I prefer to remove it.
> >>  	tail = (tail + 1) % size;
> >>  
> >>  	for (i = 1; i < len; i++) {
> >> -		cmds[tail] = action[i];
> >> +		iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, action[i]);
> >>  		tail = (tail + 1) % size;
> >>  	}
> >>  	GEM_BUG_ON(tail > size);
> >> @@ -442,13 +473,14 @@ static int ct_write(struct intel_guc_ct *ct,
> >>  	atomic_sub(len + GUC_CTB_HDR_LEN, &ctb->space);
> >>  
> >>  	/* now update descriptor */
> >> -	WRITE_ONCE(desc->tail, tail);
> >> +	ct_desc_write(&ctb->desc_map, tail, tail);
> >>  
> >>  	return 0;
> >>  
> >>  corrupted:
> >>  	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
> >> -		 desc->head, desc->tail, desc->status);
> >> +		 ct_desc_read(&ctb->desc_map, head), ct_desc_read(&ctb->desc_map, tail),
> >> +		 ct_desc_read(&ctb->desc_map, status));
> >>  	ctb->broken = true;
> >>  	return -EPIPE;
> >>  }
> >> @@ -499,20 +531,22 @@ static inline bool ct_deadlocked(struct intel_guc_ct *ct)
> >>  	bool ret = ktime_ms_delta(ktime_get(), ct->stall_time) > timeout;
> >>  
> >>  	if (unlikely(ret)) {
> >> -		struct guc_ct_buffer_desc *send = ct->ctbs.send.desc;
> >> -		struct guc_ct_buffer_desc *recv = ct->ctbs.send.desc;
> >> -
> >>  		CT_ERROR(ct, "Communication stalled for %lld ms, desc status=%#x,%#x\n",
> >>  			 ktime_ms_delta(ktime_get(), ct->stall_time),
> >> -			 send->status, recv->status);
> >> +			 ct_desc_read(&ct->ctbs.send.desc_map, status),
> >> +			 ct_desc_read(&ct->ctbs.recv.desc_map, status));
> >>  		CT_ERROR(ct, "H2G Space: %u (Bytes)\n",
> >>  			 atomic_read(&ct->ctbs.send.space) * 4);
> >> -		CT_ERROR(ct, "Head: %u (Dwords)\n", ct->ctbs.send.desc->head);
> >> -		CT_ERROR(ct, "Tail: %u (Dwords)\n", ct->ctbs.send.desc->tail);
> >> +		CT_ERROR(ct, "Head: %u (Dwords)\n",
> >> +			 ct_desc_read(&ct->ctbs.send.desc_map, head));
> >> +		CT_ERROR(ct, "Tail: %u (Dwords)\n",
> >> +			 ct_desc_read(&ct->ctbs.send.desc_map, tail));
> >>  		CT_ERROR(ct, "G2H Space: %u (Bytes)\n",
> >>  			 atomic_read(&ct->ctbs.recv.space) * 4);
> >> -		CT_ERROR(ct, "Head: %u\n (Dwords)", ct->ctbs.recv.desc->head);
> >> -		CT_ERROR(ct, "Tail: %u\n (Dwords)", ct->ctbs.recv.desc->tail);
> >> +		CT_ERROR(ct, "Head: %u\n (Dwords)",
> >> +			 ct_desc_read(&ct->ctbs.recv.desc_map, head));
> >> +		CT_ERROR(ct, "Tail: %u\n (Dwords)",
> >> +			 ct_desc_read(&ct->ctbs.recv.desc_map, tail));
> >>  
> >>  		ct->ctbs.send.broken = true;
> >>  	}
> >> @@ -549,18 +583,19 @@ static inline void g2h_release_space(struct intel_guc_ct *ct, u32 g2h_len_dw)
> >>  static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
> >>  {
> >>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> >> -	struct guc_ct_buffer_desc *desc = ctb->desc;
> >>  	u32 head;
> >>  	u32 space;
> >> +	u32 status = ct_desc_read(&ctb->desc_map, status);
> >>  
> >>  	if (atomic_read(&ctb->space) >= len_dw)
> >>  		return true;
> >>  
> >> -	head = READ_ONCE(desc->head);
> >> +	head = ct_desc_read(&ctb->desc_map, head);
> >>  	if (unlikely(head > ctb->size)) {
> >>  		CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
> >>  			 head, ctb->size);
> >> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> >> +		status |= GUC_CTB_STATUS_OVERFLOW;
> >> +		ct_desc_write(&ctb->desc_map, status, status);
> >>  		ctb->broken = true;
> >>  		return false;
> >>  	}
> >> @@ -803,11 +838,10 @@ static void ct_free_msg(struct ct_incoming_msg *msg)
> >>  static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >>  {
> >>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.recv;
> >> -	struct guc_ct_buffer_desc *desc = ctb->desc;
> >>  	u32 head = ctb->head;
> >> -	u32 tail = READ_ONCE(desc->tail);
> >> +	u32 tail = ct_desc_read(&ctb->desc_map, tail);
> >>  	u32 size = ctb->size;
> >> -	u32 *cmds = ctb->cmds;
> >> +	u32 status = ct_desc_read(&ctb->desc_map, status);
> >>  	s32 available;
> >>  	unsigned int len;
> >>  	unsigned int i;
> >> @@ -816,23 +850,26 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >>  	if (unlikely(ctb->broken))
> >>  		return -EPIPE;
> >>  
> >> -	if (unlikely(desc->status))
> >> +	if (unlikely(status))
> >>  		goto corrupted;
> >>  
> >>  	GEM_BUG_ON(head > size);
> >>  
> >>  #ifdef CONFIG_DRM_I915_DEBUG_GUC
> >> -	if (unlikely(head != READ_ONCE(desc->head))) {
> >> +	if (unlikely(head != ct_desc_read(&ctb->desc_map, head))) {
> >>  		CT_ERROR(ct, "Head was modified %u != %u\n",
> >> -			 desc->head, head);
> >> -		desc->status |= GUC_CTB_STATUS_MISMATCH;
> >> +			 ct_desc_read(&ctb->desc_map, head), head);
> > head read twice here as well.
> Same answer.
> >> +		status |= GUC_CTB_STATUS_MISMATCH;
> >> +		ct_desc_write(&ctb->desc_map, status, status);
> >>  		goto corrupted;
> >>  	}
> >>  #endif
> >>  	if (unlikely(tail >= size)) {
> >>  		CT_ERROR(ct, "Invalid tail offset %u >= %u)\n",
> >>  			 tail, size);
> >> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> >> +		status = ct_desc_read(&ctb->desc_map, status) |
> >> +			GUC_CTB_STATUS_OVERFLOW;
> > No need to read the status again as we already have it cached.
> addressed.
> >> +		ct_desc_write(&ctb->desc_map, status, status);
> >>  		goto corrupted;
> >>  	}
> >>  
> >> @@ -849,7 +886,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >>  	CT_DEBUG(ct, "available %d (%u:%u:%u)\n", available, head, tail, size);
> >>  	GEM_BUG_ON(available < 0);
> >>  
> >> -	header = cmds[head];
> >> +	header = iosys_map_rd(&ctb->cmds_map, (4 * head), u32);
> > MAGIC numbers
> >>  	head = (head + 1) % size;
> >>  
> >>  	/* message len with header */
> >> @@ -857,11 +894,15 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >>  	if (unlikely(len > (u32)available)) {
> >>  		CT_ERROR(ct, "Incomplete message %*ph %*ph %*ph\n",
> >>  			 4, &header,
> >> +			 4 * (head + available - 1 > size ? size - head :
> >> +			      available - 1), ((__px_vaddr(ct->vma->obj) +
> >> +			      CTB_RECV_CMDS_OFFSET) + (4 * head)),
> >>  			 4 * (head + available - 1 > size ?
> >> -			      size - head : available - 1), &cmds[head],
> >> -			 4 * (head + available - 1 > size ?
> >> -			      available - 1 - size + head : 0), &cmds[0]);
> >> -		desc->status |= GUC_CTB_STATUS_UNDERFLOW;
> >> +			      available - 1 - size + head : 0),
> >> +			      (__px_vaddr(ct->vma->obj) + CTB_RECV_CMDS_OFFSET));
> >> +		status = ct_desc_read(&ctb->desc_map, status) |
> >> +			GUC_CTB_STATUS_UNDERFLOW;
> > No need to read status again
> >
> > Regards,
> > Bala
> >> +		ct_desc_write(&ctb->desc_map, status, status);
> >>  		goto corrupted;
> >>  	}
> >>  
> >> @@ -869,17 +910,18 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >>  	if (!*msg) {
> >>  		CT_ERROR(ct, "No memory for message %*ph %*ph %*ph\n",
> >>  			 4, &header,
> >> +			 4 * (head + available - 1 > size ? size - head :
> >> +			      available - 1), (ctb->cmds_map.vaddr + (4 * head)),
> >>  			 4 * (head + available - 1 > size ?
> >> -			      size - head : available - 1), &cmds[head],
> >> -			 4 * (head + available - 1 > size ?
> >> -			      available - 1 - size + head : 0), &cmds[0]);
> >> +			      available - 1 - size + head : 0), ctb->cmds_map.vaddr);
> >>  		return available;
> >>  	}
> >>  
> >>  	(*msg)->msg[0] = header;
> >>  
> >>  	for (i = 1; i < len; i++) {
> >> -		(*msg)->msg[i] = cmds[head];
> >> +		(*msg)->msg[i] = iosys_map_rd(&ctb->cmds_map,
> >> +					      (4 * head), u32);
> >>  		head = (head + 1) % size;
> >>  	}
> >>  	CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->msg);
> >> @@ -888,13 +930,15 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >>  	ctb->head = head;
> >>  
> >>  	/* now update descriptor */
> >> -	WRITE_ONCE(desc->head, head);
> >> +	ct_desc_write(&ctb->desc_map, head, head);
> >>  
> >>  	return available - len;
> >>  
> >>  corrupted:
> >>  	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
> >> -		 desc->head, desc->tail, desc->status);
> >> +		 ct_desc_read(&ctb->desc_map, head),
> >> +		 ct_desc_read(&ctb->desc_map, tail),
> >> +		 ct_desc_read(&ctb->desc_map, status));
> >>  	ctb->broken = true;
> >>  	return -EPIPE;
> >>  }
> >> @@ -1211,13 +1255,13 @@ void intel_guc_ct_print_info(struct intel_guc_ct *ct,
> >>  	drm_printf(p, "H2G Space: %u\n",
> >>  		   atomic_read(&ct->ctbs.send.space) * 4);
> >>  	drm_printf(p, "Head: %u\n",
> >> -		   ct->ctbs.send.desc->head);
> >> +		   ct_desc_read(&ct->ctbs.send.desc_map, head));
> >>  	drm_printf(p, "Tail: %u\n",
> >> -		   ct->ctbs.send.desc->tail);
> >> +		   ct_desc_read(&ct->ctbs.send.desc_map, tail));
> >>  	drm_printf(p, "G2H Space: %u\n",
> >>  		   atomic_read(&ct->ctbs.recv.space) * 4);
> >>  	drm_printf(p, "Head: %u\n",
> >> -		   ct->ctbs.recv.desc->head);
> >> +		   ct_desc_read(&ct->ctbs.recv.desc_map, head));
> >>  	drm_printf(p, "Tail: %u\n",
> >> -		   ct->ctbs.recv.desc->tail);
> >> +		   ct_desc_read(&ct->ctbs.recv.desc_map, tail));
> >>  }
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> >> index f709a19c7e21..867fe13fb47d 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> >> @@ -7,6 +7,7 @@
> >>  #define _INTEL_GUC_CT_H_
> >>  
> >>  #include <linux/interrupt.h>
> >> +#include <linux/iosys-map.h>
> >>  #include <linux/spinlock.h>
> >>  #include <linux/workqueue.h>
> >>  #include <linux/ktime.h>
> >> @@ -32,8 +33,8 @@ struct drm_printer;
> >>   * holds the commands.
> >>   *
> >>   * @lock: protects access to the commands buffer and buffer descriptor
> >> - * @desc: pointer to the buffer descriptor
> >> - * @cmds: pointer to the commands buffer
> >> + * @desc: iosys map to the buffer descriptor
> >> + * @cmds: iosys map to the commands buffer
> >>   * @size: size of the commands buffer in dwords
> >>   * @resv_space: reserved space in buffer in dwords
> >>   * @head: local shadow copy of head in dwords
> >> @@ -43,8 +44,8 @@ struct drm_printer;
> >>   */
> >>  struct intel_guc_ct_buffer {
> >>  	spinlock_t lock;
> >> -	struct guc_ct_buffer_desc *desc;
> >> -	u32 *cmds;
> >> +	struct iosys_map desc_map;
> >> +	struct iosys_map cmds_map;
> >>  	u32 size;
> >>  	u32 resv_space;
> >>  	u32 tail;
> >> -- 
> >> 2.33.0
> >>
