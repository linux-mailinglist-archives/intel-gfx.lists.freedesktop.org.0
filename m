Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2505759E87
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 21:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9546110E11F;
	Wed, 19 Jul 2023 19:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A34110E11F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 19:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689794890; x=1721330890;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=qGDj8fDbdoTv2jum0twFjvqWnOP+gjIdmTZ5aJdfasc=;
 b=R5okmo3zxsyFJ0QpLD417Fd0Nf/j9iGXkcgjTMXJChjgcAyFTbVYfWss
 JbSRl1X54tQm8M2qcVV/5I73WpSRtaq1FwP3BmCQiCJjgshQ7JHepc59a
 SDDEXWESnxWfmfmbPkc8wg03wsKlKZNhqNi8EM2Dc6qzesxzoBPYx/pEI
 pHoSV6yGC9F30xou9eZcrGxakna5xj8H/H5y11vZg3ZUbz6jCNcMsRma8
 LV3LvFyiEsEHZgo+oJ3GUTBkuALHhBDJU3weX6jS0f36wmhAptlRP2xaX
 YZXHwKLNmOr7SahD5gI2WYb55VlZxbTaVMQs9dQqjKVW+iENtTgBlB0nJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="346144495"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="346144495"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 12:28:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="701373579"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701373579"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2023 12:28:09 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 12:28:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 12:28:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 12:28:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GP7Kpsc+254NIRAOzUe9WRoyb/Y0k8s3N+ehfTSMibCp7iVLschILqqI19t5S2q0R7QovUh4lbQP+UdzkrtHfQwE1GmX9Vb5dPalCGFk4G3SX/rC+rx3p8J7G7yJdwbtJFrWQ7BLc63XZCKMXvKkIB/JolM++T90rkRuVbmu6lLLDsuaqyw1nhZccDioNLEVf5G2P61CQdRLQSAl49lHS2gVE53Ntvt1SOyGNL4WZ1P/OYgaaTc/JIoc5G69IcA7V/n/VCsDEXrEELtOOm7laLivAx3HJfvmu61wXzA2kmjZqQFaFHrm9quwQ+uPEHJaKDpLxSY6q+7wgXv6dvLhpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uwi3f+8Hr7ZmnMh1WrfPPAko5gFsM9XMXekZj5+1iyg=;
 b=k21hSS/171+faip6dQc+GkPOrKG7q5vS+1t10VwqhGX+yzI0h0NjUpCxYrVrpKnYg6qXl/1y/xxFjj7meMHtNMNxsk7n0XMXhrgBlFP1lyF6brkK1J9Qz6GwIF7NCyhUQqRXeZrYlWldzx9Hl7u6++10ernVOZfMxP0KLNTeuPKqYzWw3SP8Ui8hsn1LqZUjmq0swa7RiIYzlY2EIssY0S/X0d1Hcov8NTKYGZ5fmrDAyxjfr5J+qNyWQoF0qqbrSvpIEeVjXIvNYP2XT2p93KxfcelPScCCQDtuTsgYT73fguovT6lOB+onT0C2FvOrArgR1vV2XIIACqtLwu8LCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH0PR11MB5362.namprd11.prod.outlook.com (2603:10b6:610:b9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Wed, 19 Jul
 2023 19:28:07 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 19:28:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230718222753.1075713-16-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-16-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 19 Jul 2023 16:27:59 -0300
Message-ID: <168979487925.1692803.16077026740607826616@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:303:8f::10) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH0PR11MB5362:EE_
X-MS-Office365-Filtering-Correlation-Id: df92dc62-0cf0-4d53-5d4b-08db888e45f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZDXTXHRXU5WvYpKLCmw35mw49Qqjl0rcvUqDTePHVgu1otKVmvnTattZyoY/Va0oV4/fKocHdsda7aAqHOcH3St173FgYMsZwqi5GwQ5tXU/nz3hkyF50dZPyx8M5zmjAqQOHLqJIds0m96KtZisjGMm2wgHGUi32T3BlmVJzOuor6qKvyM3i47zsNze/s2WqaX5WEf3wse1n8eQxdLnGXtOItK6SpXgeNe9824ghZuWyocnRs2jpKgseAi8xd5knjDXWj43hHiUz534IkA43yDC2ycqq7yvticqZdC0F9BzOcN7uxQ4hwD8zWrcwzwhyj3QPFa5nY0LzbV7rl1B0AtzxQQ2/7oliRsx20ow/Qd0MiiQegXhZyGXXqtQxb3UQJT5HJmtD/COChZC0Dlwl9BrRw1rwXPG3VcP8lFQBDudOs3pHHkkejI8U1xAQWdXbG+5+lKd4mAi2LSyPirP2c2WAJxv2VicxICXbau3HZecAbX1iQCiFK6WjRfCIc+8nAGUucYeTmiU8jbCRISClbTtXU9lAk5ZPoPVrAOrukzqMe+0tcKBsk+93T3qp8e9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(136003)(39860400002)(396003)(346002)(376002)(451199021)(66946007)(44832011)(6512007)(66556008)(9686003)(6666004)(6486002)(66476007)(107886003)(33716001)(2906002)(316002)(8676002)(8936002)(4326008)(5660300002)(82960400001)(6506007)(38100700002)(186003)(26005)(41300700001)(86362001)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnU5TE1Nd3A3Q3Z6Tnd5U21ROWRRSWlHRjRiVDVWYWhYYmFqMnVKY2lhVDU2?=
 =?utf-8?B?cWtKUENKeGFBYU1yNTdiSnpTTTVwZDhKZWdyMHUzbXZ6dytHTzFKVTNqZTY4?=
 =?utf-8?B?enYwblV3Tk1DK01kdGpFNHNWV20wNC9hYmh5amNBdEdoZjNySmNkaHBrOTVS?=
 =?utf-8?B?VzBUcUhpdXlDOGJIcTVJc3J0WXJjOFpuMUhTYnJ3dTZ6SVhqczR4RjFGdDEx?=
 =?utf-8?B?N1cxdDhzSW1HN3FMUG1USTFLczFFcEt6QysyWTR1cXpTeWFYbjRwNlZsZ0ph?=
 =?utf-8?B?c29zSXc4OXJmN3daN2V0TDRuQmV1RlBDbERSYmFVWTRqRUtvd0VYK0o5OG5x?=
 =?utf-8?B?eG9vWU1iM1pWL3ZiUDR5VFpobnJ0NlIxUlUzUmQ1UjNHQnNMMlVzSU51cTR6?=
 =?utf-8?B?SE9LbUQxbStQWFRzUnJmS25uNW5BaXcreGFmbVlsYlA4cXJVZCtITG0rS3pR?=
 =?utf-8?B?RlZ0NGo1emtwckVGYmRGdUI3RGQ0VmlaUEN3TkdjaVpBR3VLeFZ3N2JrWGo2?=
 =?utf-8?B?YW8zMnNLRGpTRi9RNEtWVzJ0L0RVQytEVnpYWjRGczA5aVliVXQveDRRSUlQ?=
 =?utf-8?B?SzhWY05mSHV0Y3JKMkNKbHNwaDZlQkhGZkJWWXB2WWN2RXB6b1NzbTkxcXd6?=
 =?utf-8?B?MmQ1djI4R3ZPcFp1ZGl5UXJNMXlmQTJNbmZWRkF1c0h3VE1HQ3A2eVFjTGln?=
 =?utf-8?B?WE1qRjNHaWFzd1ZYSVFKU1Vvb0p3clpjQm5LdGVtWGU2MHkxM29PNHRtSzNV?=
 =?utf-8?B?WDR0MExZWVFEZDlIcU1TSUxlVGd3dXFoaDhoamwzVEZhNUZjZ1VsYktHaHQ4?=
 =?utf-8?B?UGZsakNIMXNWY3QxMjhOR21WaGpycTVCWXBJRXFMNzVEWTZQSXV5bkJDV2JY?=
 =?utf-8?B?RUlZZ2pDNWlNQ2E5K1JPcEpTTjVQdlU4ZUwvK1BjeU9SMUNzeG5DN0dKSEpI?=
 =?utf-8?B?djlDN21zZWNnRFJDaTFvYmtJa0twdG9ES01reHM4OVNnWldMdkU0MU1IMHFa?=
 =?utf-8?B?a0VZVEM0YzhGY3c1d0Y2T2drenNOOGF1NlZ4ai9JNVppeWYxRGxKVW53ZnpP?=
 =?utf-8?B?N082dlpLRDdVa1dtS0hrRlpSTlFSaVNZRU52Qy9RdUgweFh4elFucDZKbTAr?=
 =?utf-8?B?OHh3ODVaQUxLcWcrQ1Y0VUNtSCt1cDF1VGExeStmM3c1UGJCeE9vN2lGUjdN?=
 =?utf-8?B?QURDZ05pSk83cWloQmVpZHZBNTVkc3J3OTAwa2ZRMHh6NW1hOUJqcjZEODZy?=
 =?utf-8?B?dHhqTGNOeEdKT0YzY3JWZHJDSXZIb082Z0pCcXd2bHhsU0RtYVp1VC94TjMv?=
 =?utf-8?B?emQ4TnZKS2g5MEVjc0J0ank5aUlYYk51cVZvaUFYd3VpTjgrWDJTUWdveGhq?=
 =?utf-8?B?VndSdCtackozWC83MTZmUi9RdWZTcUNKT0lkM0h5Zm5Zc2JaMFptajQ4MWw3?=
 =?utf-8?B?QUtCNHJkZzU0MkJ4UHhOSjdWZGpJdHJyVk1TaXB0QVRCSDNQMkFBbFJRRzdF?=
 =?utf-8?B?blN4OTVBMVFHWTBPbW1JazlPNUpMYVBYWnlha1duRTlXNlk3L283OU5RN0hN?=
 =?utf-8?B?WDF4cjRjOGV1L3B2c2lZLzMyQlA3Q2p3RVI0aXowZWxYQ29jeC9EdEtaRlow?=
 =?utf-8?B?dkw4RnRzSlU0dEJRaXJmQ1htV25xekZUVC9CQnBoWFlTcDJ1ejk3eWFDdlpo?=
 =?utf-8?B?T1E3blFveFl0UEM5V1hZYjhueTJIcGttaTZEeEl0UmRTVk1qQjJkdSszZjNa?=
 =?utf-8?B?aTB2TjM3NGg3RXQ1K1krVEQyZ0pFa0VGWEc1Sm5XN2NPaE1jZjV0c3RvSURm?=
 =?utf-8?B?UnVMWnhxL3YzZG1hbERWQnVHS2VZeDNEak05dktnZlBNc1pDaGZrWTJQQ0Qw?=
 =?utf-8?B?VUVqamtJLzUzYnJKT1NGQXh3czNWR20rS21xaGR6SUVJN1FLcXZaMHo5Vng0?=
 =?utf-8?B?clFNV0cyWWIyL1VDL25xbGtwd0F4TjF4Vy9uUVkvODBtWXUwMWpHNEFXanho?=
 =?utf-8?B?ekdGeDloQjhQQVFQSm56a2tBdUJqMWkwUDN6ZkNPM2p4MkY0M0o5UStsUHFJ?=
 =?utf-8?B?YjRXbURWQVNQMkFiL1E1VzNJSmhoMWFRdE9UcGxiNU1XZ2xSZFVFMGdRUXM5?=
 =?utf-8?B?ZS9reGhnUUgwV0xtRy9GZDE4SHZkT0RWNlBEUHhUZmY0cDhROW4vUmVkTVo4?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df92dc62-0cf0-4d53-5d4b-08db888e45f2
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 19:28:05.1397 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IsMK/FrWvKpcyvouJibme/jVfsrpUz0m3f89QeWteeV8Ffw/9oW7DguJ3bLW4b10uotNYwSG+bXNzwG/773+OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5362
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/mtl: Eliminate subplatforms
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

Quoting Matt Roper (2023-07-18 19:28:00-03:00)
>Now that we properly match the Xe_LPG IP versions associated with
>various workarounds, there's no longer any need to define separate MTL
>subplatform in the driver.  Nothing in the code is conditional on MTL-M
>or MTL-P base platforms.  Furthermore, I'm not sure the "M" and "P"
>designations are even an accurate representation of which specific
>platforms would have which IP versions; those were mostly just
>placeholders from a long time ago.  The reality is that the IP version
>present on a platform gets read from a fuse register at driver init; we
>shouldn't be trying to guess which IP is present based on PCI ID
>anymore.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/i915_drv.h          |  4 ----
> drivers/gpu/drm/i915/intel_device_info.c | 14 --------------
> drivers/gpu/drm/i915/intel_device_info.h |  4 ----
> include/drm/i915_pciids.h                | 11 +++--------
> 4 files changed, 3 insertions(+), 30 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index cf72c34bca10..67cd9914bf33 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -581,10 +581,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
> #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
>=20
>-#define IS_METEORLAKE_M(i915) \
>-        IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
>-#define IS_METEORLAKE_P(i915) \
>-        IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_P)
> #define IS_DG2_G10(i915) \
>         IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
> #define IS_DG2_G11(i915) \
>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i9=
15/intel_device_info.c
>index ea0ec6174ce5..9dfa680a4c62 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.c
>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>@@ -206,14 +206,6 @@ static const u16 subplatform_g12_ids[] =3D {
>         INTEL_DG2_G12_IDS(0),
> };
>=20
>-static const u16 subplatform_m_ids[] =3D {
>-        INTEL_MTL_M_IDS(0),
>-};
>-
>-static const u16 subplatform_p_ids[] =3D {
>-        INTEL_MTL_P_IDS(0),
>-};
>-
> static bool find_devid(u16 id, const u16 *p, unsigned int num)
> {
>         for (; num; num--, p++) {
>@@ -275,12 +267,6 @@ static void intel_device_info_subplatform_init(struct=
 drm_i915_private *i915)
>         } else if (find_devid(devid, subplatform_g12_ids,
>                               ARRAY_SIZE(subplatform_g12_ids))) {
>                 mask =3D BIT(INTEL_SUBPLATFORM_G12);
>-        } else if (find_devid(devid, subplatform_m_ids,
>-                              ARRAY_SIZE(subplatform_m_ids))) {
>-                mask =3D BIT(INTEL_SUBPLATFORM_M);
>-        } else if (find_devid(devid, subplatform_p_ids,
>-                              ARRAY_SIZE(subplatform_p_ids))) {
>-                mask =3D BIT(INTEL_SUBPLATFORM_P);
>         }
>=20
>         GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
>diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i9=
15/intel_device_info.h
>index dbfe6443457b..2ca54417d19b 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.h
>+++ b/drivers/gpu/drm/i915/intel_device_info.h
>@@ -129,10 +129,6 @@ enum intel_platform {
> #define INTEL_SUBPLATFORM_N    1
> #define INTEL_SUBPLATFORM_RPLU  2
>=20
>-/* MTL */
>-#define INTEL_SUBPLATFORM_M        0
>-#define INTEL_SUBPLATFORM_P        1
>-
> enum intel_ppgtt_type {
>         INTEL_PPGTT_NONE =3D I915_GEM_PPGTT_NONE,
>         INTEL_PPGTT_ALIASING =3D I915_GEM_PPGTT_ALIASING,
>diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
>index e1e10dfbb661..38dae757d1a8 100644
>--- a/include/drm/i915_pciids.h
>+++ b/include/drm/i915_pciids.h
>@@ -738,18 +738,13 @@
> #define INTEL_ATS_M_IDS(info) \
>         INTEL_ATS_M150_IDS(info), \
>         INTEL_ATS_M75_IDS(info)
>+
> /* MTL */
>-#define INTEL_MTL_M_IDS(info) \
>+#define INTEL_MTL_IDS(info) \
>         INTEL_VGA_DEVICE(0x7D40, info), \
>-        INTEL_VGA_DEVICE(0x7D60, info)
>-
>-#define INTEL_MTL_P_IDS(info) \
>         INTEL_VGA_DEVICE(0x7D45, info), \
>         INTEL_VGA_DEVICE(0x7D55, info), \
>+        INTEL_VGA_DEVICE(0x7D60, info), \
>         INTEL_VGA_DEVICE(0x7DD5, info)
>=20
>-#define INTEL_MTL_IDS(info) \
>-        INTEL_MTL_M_IDS(info), \
>-        INTEL_MTL_P_IDS(info)
>-
> #endif /* _I915_PCIIDS_H */
>--=20
>2.41.0
>
