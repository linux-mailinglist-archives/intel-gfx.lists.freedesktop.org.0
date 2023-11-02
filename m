Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F047DF7CF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 17:36:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0267810E959;
	Thu,  2 Nov 2023 16:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAADF10E925
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 16:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698942974; x=1730478974;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=kzMEOwdIBaNn6eNI7tQEwudNfFzNxvbUXG5gfVSEXmw=;
 b=AfzReBFnr5yvuBOyyDb53H5fOcHr0WPVaTvIGGPtzCQDYzvuP7lGzxYb
 kHB9o+BQXQezENgEh8f7RB5y5BlrLT/sCugBB4yQFyYu0lSys41bxo1a6
 rCzCPShIK3x8dVwgc+s6NX5kpTBbLcnAIWF4eK9j+bYB6Otcce7kyeHN7
 eTDZW4UgfXV+miW3R9bEj7c2zmofWhrOOMnADlyEys2yYIyP5AX28uVEe
 NTNZW9JU9y33qhx54RbSrhCcGpcXAaqoVDtpWpPYdDPMnWjvJiqhAaoIJ
 K1li29IQRQA8MAxk0b44zQf8nFRz5BToPZPFq07qs6AnNFgJ10adOd+xw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="368099530"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="368099530"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 09:36:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="905052380"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="905052380"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 09:36:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 09:36:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 09:36:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 09:36:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 09:36:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BsEBnguPPpwkTYOk9rR2PX/1FrAIgUvB5+vQZm4poN70PdBhPWLa5U+3C9uxzSIUAoh8uXkP4nuETm2E15smwEKUNBUdp9YX4PBeWwK6gvVqiu4GIOxKZ1oDHleeFUqKDcQYjahA9SBxGBmNURHfuZD7k5SaNs7fsF/iE3T35R+WVeQvtEqLV4ovynjWrwAadrkkoitBQ0vKE/AR4PnLxBA2XXJAajLceV6HjhnHFJqm/tfIIVY9Fedq/aX9v6M4tXK5UCmx8Z5aMl7rPiAjSsC9SceU5n9nOjnqQf3QUcY6DCqrrxH/RmJorjhs/W0pb1ixtrvyXymHNqUd2Y94XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hdjTP00unvxfsHhnuZKOvnUtlXiIYo+xiCk70iQKDp8=;
 b=GEIpn5keZBh4zEuBH4VBsrhcgSTZhyXps1jQrtn3pvNhH3Iy0fJtXcFG5UHpch/pl9OFOkiiSkT/ukbCYNrzbYsHFHLWvl+o5wjEIto4495xHMfoXayjuM6/y4pPK4yS5ATvXUzkCnx8HC2g/vssp3XixPzTmQxEIX6ye2kvd3rS/GxbDHsRrfWRyYpLO4tUXSFikNKUxWtGCuGHGTjXqlq17JFre1CF4yvHT8kL3xKgQRhz6+D5V8hQbSGCw2bgGfVLYeCLcCcxj2xlndUys8dZrGMHJXK/bkwdAWuUvWq4CFVSfUJBlyKZnizlXLolGiqChqIJyQ3ciZzC6WcHFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by IA1PR11MB6267.namprd11.prod.outlook.com (2603:10b6:208:3e5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Thu, 2 Nov
 2023 16:36:01 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6954.019; Thu, 2 Nov 2023
 16:36:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 2 Nov 2023 13:35:53 -0300
Message-ID: <169894295379.1757.8337264188078916267@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW3PR06CA0005.namprd06.prod.outlook.com
 (2603:10b6:303:2a::10) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|IA1PR11MB6267:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f18f92d-0d9d-4717-cb1a-08dbdbc1ccb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yZqQZXC95vIF7Z6Ktm/bTMldXZFc3S/iBOWcnFwGTGLpEmOZNCYztbaM5GVM3tSFafTM3qfFhTgxwoNExW7e++DF7QhBf128RK/UE5kdY3xXZmvwJpgCuLmtvGkVajzEERPGDqrvOaxb8SwklYttYWIV8gWv3HAWe6mnlCtSHCNsqG6mU4nUGsv1wtlkraY5hx9IF8+V8212LKCf+yhxxv10mo/SCD1O3R6Qx3Abk4rxeWCCdmXsxV3EMQvCVminT0Yo7Fe7MK2TgVvU+5jooP4/jwlfGREnYfvc/3AqHDtkYj/d1PATPBv5rkIx/1PrJ8rSgoGhSvA8RRKI9QRalJqARe+IJk8JsnP2Q4NNPq2XoqMgFBtueu/3AfXrS7KtZ5U0/uqi/FPWUz4/O6BM9jwVL9DeMJ/XIRCPeCeaRjCfkQd42gf+NacDRICNEAa2+kXcwUtt4LBVKXJN6enShnvjeBL2eufVXY0vWjfJbIj0dhhhpA2AyZ3NbvoQiDCZDmiyMHZ0V5u4Zlm3bVx6C2ZDW9kuPnw2XZAhKYdCBYo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(136003)(346002)(376002)(396003)(366004)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(316002)(33716001)(83380400001)(86362001)(66476007)(2906002)(26005)(54906003)(66556008)(66946007)(6506007)(41300700001)(44832011)(38100700002)(6512007)(9686003)(478600001)(6666004)(4326008)(8676002)(8936002)(82960400001)(6486002)(5660300002)(966005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3VRdXBVWUErS3c4OXZ6R1BqM2xaaDB1VUlVQkNRK2VwODVqWWJFTUI1OS9K?=
 =?utf-8?B?d2QweVRhWE80Y1VrSGZlek5nTFk2Q2dQWGdZSzNGbUJQeXVrR29NaThpemsv?=
 =?utf-8?B?cVJlbENiRkNId0xLZXpyS3dSc1YwSjdXVXVNZUkvcmVtUEtQZ1VacXR5VjN3?=
 =?utf-8?B?V1h6K016L1J1b3YvNzFjQ0tvT3JIb2ZkODZqa2IxS21yd25QaDhHcjJPUXUx?=
 =?utf-8?B?eFdPR0t3bWtKSWJGcko2NWg1QlIvZVFmMDlXTmp2ZGpyODlpZ0RoZGR2aFZo?=
 =?utf-8?B?ZTlPRWFoS1VNZW5nTVM2RG1OZDE3NHFIdk1WV0Jna3gycFUrQ0NGMXp6MkxX?=
 =?utf-8?B?VldLZEE1aE9JbW05UGE1eW1XMHp1Z2diVjZ3RjNiRW95SDRhNFNkbXU4RnlH?=
 =?utf-8?B?TTNqWm91ZXRaRFFtTjBoWDgxMHJPanRuckZENVRyQ0xhZ0tjR1ZKUHNQTUpa?=
 =?utf-8?B?V0VIQ01WYWZ5eFJJU0Z0cVVmOGRjMEZwdHFYbWs2b0JxYWVCL0tKK1BtRE05?=
 =?utf-8?B?L3lEMmxXcnlMYkxpWlB2c2xpUGI2eUxkWFV5SXVHT3NKVWFaSmZ4RHJWckVI?=
 =?utf-8?B?L1BOaUl2WUNUQ1RJdVFlR3lnRDRvV1lxV0ExcGRTb2hBdnRPYUpqWUNsR3Fu?=
 =?utf-8?B?MUViU3FXbEgyS24rWFRLU3JYc0JRWVVURzcxTlRtVm9YbmdEQjlXSktacGJE?=
 =?utf-8?B?WFJhSG1JZVhLcURsUSt2NVBCNGVNdTJTd29tUy92dk9zUUN6Vm0xckVFS3NE?=
 =?utf-8?B?bjFsbHU0d21UNVlPbHZVMmRjUTBHM0ZlYmJJR0dCN1psSVowNlhxYnp3UG5N?=
 =?utf-8?B?NXZtRDJiN20vUW83cTV0d1JIVmlzV2NFVWordTFSV1pyNXZGSkdUUW5GVC84?=
 =?utf-8?B?eUk2em0rSzhOZlpTRGhsREd4SlFaVTdzcGRhQktFSyt5KzFoU2VCa21YYmpR?=
 =?utf-8?B?S3hrZFVHMDMzNzFNM1pKV01CYTcwMkE3WDhkK0dVNUxrZVBlN3lqanVFT3FN?=
 =?utf-8?B?SmJYdjk4L3NFRVRyL1RTUWhxZ29aaXd5N05PMCtGWGtXSU1GZ2RiS0dSQXBy?=
 =?utf-8?B?aDk2ODhPZVd1dTl6M3RoSjVHY3oraTZKMUpad2liazY1UDNxWXpjVVFQa21C?=
 =?utf-8?B?cDk4YWZmOTdxOW9ZV1p0SVJGZmlZcGlDUDIzQkJnL0l4QmI5VkkzTGFkSTF1?=
 =?utf-8?B?bmdzKzlyaGp2ejB0cDFkdnphMHI2Y1BMUEdnZmxEUU1aQU05bjM5NmFwQkxI?=
 =?utf-8?B?Y3A2cVBVeko3RlVNRm5pamcxN09JckJHQlBCalZSMDQwdTJYc2Z6VkV3elkx?=
 =?utf-8?B?U3o2azh5aGlsRmpJTkovWE54MklSMnhOWXZNQnp5eS8vWVBpRktjejUzdkpy?=
 =?utf-8?B?Vk13eXVhSHoxckhCNk5WWWtzRDltTFdOZTkyQ0tDNkxNQkxPTDVvdGViSThV?=
 =?utf-8?B?Yi9pWFR5U3ppaWtSTWZRTjNIdTZGdWhkaEVWWkJUSXQydHdDbXhGS3g3Mk5E?=
 =?utf-8?B?b3dtbkMrQVc2dElhT2RBUWhUTkxJcThsdnd1MVpRdW82U2crSnRVcU12RmVi?=
 =?utf-8?B?eFdJblJzd1N4MHA5b2NTMXU3NDB0K2txaG5iZFc1Q245SEcxWGhEK0REU1lu?=
 =?utf-8?B?NDVDTXRaeUxkWlBZUWpkS2s2SDM2VnI0TTcxbDJ1aVMwSCtqWUV4NVZ3ZnNo?=
 =?utf-8?B?TmhZNGpWOEZpQnlhOGZmV3FzSmVBSVN4RzdJUm5DMENmZEdxZmhwTDdnMHZN?=
 =?utf-8?B?VWxDN0xBNmJoVUV2Q3U5SzRrNXBVRURFUHAxeER1b3o3SERIUGNwbDl2bXBB?=
 =?utf-8?B?d2tVUzVkcWpBOHZGUk5CSkxtU3hyVUVZV25WQlgxMEFSNmVpM0szZzhnTmpu?=
 =?utf-8?B?UC9jSTFNRTdNdHI5STlMZHgvQW1CMTlhampVYmI5WSs4RVJWZFFmZVNCNEZE?=
 =?utf-8?B?ekV1MjVDYkRCWGlYSWNSMWFKTXNLKzJOVEg5eUY3QTFBeDNpbm02a1krb1du?=
 =?utf-8?B?dGhqNDFyd0JuQlQ0N2JvdURhYStJUzkxam1YeGFLWUh5VUZhaTBrYzhLSTB1?=
 =?utf-8?B?czVqNGE3RVlzVDdrZW5McDhwOGVOOFZIQlRybEpkWjVNQTBuQjdUWG5IR0E4?=
 =?utf-8?B?aWdPdzFjZzJNc0ZNYWM1NnVmYkx2WW9Ud0J1LzdEUTU4OWx1dlNHbWppU0Z1?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f18f92d-0d9d-4717-cb1a-08dbdbc1ccb6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2023 16:36:01.4107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RCI37abDKJ4YludSX8idXVd9GSnG6ognw7K78UvPso0Ni2sYM1dOkCfrualI066hfFzPe/ngqEeK2TImgJC80A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6267
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Radhakrishna Sripada (2023-11-02 13:06:44-03:00)
>Experiments were conducted with different multipliers to VTD_GUARD macro
>with multiplier of 185 we were observing occasional pipe faults when
>running kms_cursor_legacy --run-subtest single-bo
>
>There could possibly be an underlying issue that is being investigated, fo=
r
>now bump the guard pages for MTL.
>
>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2017
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/=
i915/gem/i915_gem_domain.c
>index 3770828f2eaf..b65f84c6bb3f 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>@@ -456,6 +456,9 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_g=
em_object *obj,
>         if (intel_scanout_needs_vtd_wa(i915)) {
>                 unsigned int guard =3D VTD_GUARD;
>=20

I remember trying increasing the guard, but with a much smaller multiplier.=
 So
it turns out that using a much higher value did the "trick".

I would add a FIXME comment here to remind us that this is a hack.

With the FIXME in place,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>+                if (IS_METEORLAKE(i915))
>+                        guard *=3D 200;
>+
>                 if (i915_gem_object_is_tiled(obj))
>                         guard =3D max(guard,
>                                     i915_gem_object_get_tile_row_size(obj=
));
>--=20
>2.34.1
>
