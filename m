Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2836F0D12
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 22:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C21F10E0CD;
	Thu, 27 Apr 2023 20:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3267010E0CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682627093; x=1714163093;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=NiG1R6reXmmw+ZfYz/luEUwLAQIIihN/Kw+4U229hLY=;
 b=f7MbX0csO52V7OnAkARB5vaEwY6ffRkiM2kCHuF8mDJ2X42yJA5Dl3TS
 WQ3531TFKMGkp+KdLBKcKev1QYpJMrUnzUhk4Gz0Lrw29vlURdnKVtcGs
 98YPWQXi/BRBbqlPjpNTQnM6R/L/gQEdMxyCk98mCrCpT/FdTF8gS+hKr
 nLGGe8G5JblhSB2ena06HXGs7uCzcbyvXrVG089E4EtlddpeRKW8W6X64
 nIkLGE8SknR3bnMzPmIfNENi40iqDHRRy5kc7dEkaVC1LWwYPrWTg/ANj
 mp5iXWVycNhfNGSQNt684a9NVeL+wPfQIZyE5LSPeJKmWgtFR0kmZHzP0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="327178463"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="327178463"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 13:24:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="697241129"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="697241129"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 27 Apr 2023 13:24:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 13:24:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 27 Apr 2023 13:24:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 27 Apr 2023 13:24:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=APUipkQ/omcdF2r3ZjkFezc3bm/dfrRx4IqhC5cK/XUYf0IUzvikGd5NsnGqxBpKjSOa1gisQTXs1+tPBJ/3DT0Z8Gmax2tS2QDsLBkGsKZDp03tUhbQiPy4/cjaTWidphNLRHnKBxG1qT8GXGG4Vv4lWs/V24sUUDjoH6NJ9fQjHirItKhJBTt07KqT/qwJOsyQNl4kx7Yp+YdD/khOX7GNZC5+dXLHiJJHvE9mBJbaAPxrmD+OJ6hYMQjze7H58k0A26ekx4JH1m8AglFv2V6uFTudx0SkmiU543d37yYGaxiExP/DzHguvpcYLXccmp2XcX2E8Vaiw22oJSv6Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VcjjYQwFzUH8GmpOhG39h5zA7aRR0Xp3qaQecwlEe3M=;
 b=YE950oUWhjPDKGO/6156jyooA6VKc3FL/6xBwuMPiF0NEilLoB9Tik4RVHxN39cAwM+gsIpbdgh0IN2qbawDx+tfDVJLNV0KdFrmobOmvpN8u0r3K0rO6+sa9bmfALW6AMqEAIy10p/OuZAjC069DBQcvN6AuVqWQGrI3IDLyt/+kvIVbp4TGTc2IlVzVqCo1AhYMLZU+SNWXSO7hx+M6Y8WPrWufOPqe8uRU2Lwfuzx+I6FKoeSkancguI6OuHUpEPJUE/2gG/XYCdP9aquzCEBUuX9VS/hRV5uPQtf6CXp+DhGiDczIvFaXw9NRZYcGMV69o11UVPKj7g2dZyO5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MN0PR11MB6086.namprd11.prod.outlook.com (2603:10b6:208:3ce::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Thu, 27 Apr
 2023 20:24:49 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 20:24:49 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230427150016.1566833-8-vinod.govindapillai@intel.com>
References: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
 <20230427150016.1566833-8-vinod.govindapillai@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 27 Apr 2023 17:24:42 -0300
Message-ID: <168262708244.338531.17809194296977573819@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0386.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::31) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MN0PR11MB6086:EE_
X-MS-Office365-Filtering-Correlation-Id: 24494908-1507-4294-c164-08db475d72a8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ROgjIvyUaJYCkQDNZHl9IXPwmPdyPNxcWK8VrB9pcCafX3E8+a1ueZu5amODvmfzQX5P6njHN3KPC2lE7z5vLeAsm+uuquR0V3SXZLuyHn2ReHTb2aJkdT8BC3tazGo9zkIeqHw24sGVA0aIsNyNJ6w51WyX5Yk6HpVIWkt5FrFYQ/K8TRDTKr6DABB6fY5i8p4wcjvCAcdHH1w51D3eqiY9VVxTmph37PToHRZWW3jkdEg3pN0oysCCFfVB/g+WoWx1Cv6wt8sZRjAvhJmMFU+NFfekpXA2urpxa55mYpvNX8Ay7y8Wvn9h9yiiXwOllokdHq7hWFnDdTgDo3R+Cibgn8ezcc6uHAxFHHPCejTznQqvuoGGWYFjpIFvDF1fQAK2x2zvrIIA8wEL5OVvkGZOGWg1r7I3LrrGafrIfAMtLdHO+g0rDOpcUyVpuFU1NxGQD3AF/F/wEWCkZg8AF74+aNIqjPwlbGioNFnlaI6+hQkG67SPbBr0R41DTazH5jjZlGXdz6PGjTAW889wzg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(136003)(39860400002)(346002)(396003)(366004)(451199021)(107886003)(6486002)(6666004)(966005)(83380400001)(6512007)(6506007)(9686003)(30864003)(2906002)(186003)(26005)(478600001)(33716001)(316002)(82960400001)(4326008)(41300700001)(66476007)(66946007)(66556008)(38100700002)(86362001)(8676002)(8936002)(5660300002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TW93NHIyV200dCt4SU9uYVRZYUdnZDZUYlhQU0lUTi90MVF0bURETlQwelBN?=
 =?utf-8?B?UWNMY3gxa0o1cWNiN1dDcjdwQm9OZUNGQ01paG51amFpZEd3eFozRTRXRnMw?=
 =?utf-8?B?UU1xeGZIWnlsZmg5c3JXeVZ4ZnBvMVlFQ0ZlSUtkVEg4cEhkNW1IWjhIWTVC?=
 =?utf-8?B?N05SSEZxS0pnM2xjL3A5Z2d3MTE3czlDcGJkYndqTmNxSUhDOURDM1dUcE9w?=
 =?utf-8?B?aG5RbGx1bG80d3ZnL0ZIRUcrQVdiSG81SDFJSWZHdnFhS3BDSGFWbll4YnJo?=
 =?utf-8?B?a3lBdVV3Z2xmQ1U2V0VRYWRlMUdNSGF3dXZCUTIzRy9IOFBsZmVqT3BpdVlx?=
 =?utf-8?B?S2wzQ1hETElpUUNkYVE0c2xEbXdtZ2tQV0RHRUs1NHBuNnVKZjBWUGxVb3FJ?=
 =?utf-8?B?VnZrWTB6K1NGMFZPQjVUd0pGUXI2R2ozeHJ1eDhvVVA0VEdLZ2tsRlRhSmR4?=
 =?utf-8?B?eHFZUEM3RExvRE51S0tGSnEwSVl0QUs4d29UV05pZDBBbW8wd1loWGZKSTRy?=
 =?utf-8?B?b1dsU0RaK1ZxditYSEZLZDkxS1FwSTZLUWowUjV5ZFgzT2xrSjFEdlIrR3Fp?=
 =?utf-8?B?Vk1SVlpDeUdkbE80dFI2dUtRZDVjTkwrbUJ3SmZoOC96eTE4aTZxMnRCUzFC?=
 =?utf-8?B?MWQyaTFVbS9SbDYrczRZK1lYUG5VRGgrUm0zTXZNekIvUmFrRm94OFpzRVU1?=
 =?utf-8?B?VjAyeUxNUmF0c1RDZWJrVGM3TStuZmVCWTIyREE3YWwzcEphMmV0V0tYSXJB?=
 =?utf-8?B?dGRxd3Jnbmc1enA0UThJSmhOT3NDWG9xTmZKRTU5Tzdnck9ueHRzVG9CSjhQ?=
 =?utf-8?B?dCtXSURTU01mNlphN202Mmk3bHJ5bHNCL01kc3RXL1RoSFhTOXg3M1RFUDlh?=
 =?utf-8?B?SDlnRHhEdWlXb0c2OUdEN1ZRMnNHUlduNEgwQXRTVHh0cTJENUVHM2g5Wk5G?=
 =?utf-8?B?MHAyUkpHVUZZMU5OWHd2NHZudnlCRWJ5TFB0RG14MmIydU5GbmFUQ2VuZ0E1?=
 =?utf-8?B?MGZVdHRGSFpaVlh4LzFPV3B5dDVVOW9FM3daTkZzNHVMQmZ5TGpJc3orWEoz?=
 =?utf-8?B?VHdOZUJMSjhxVUFoRnBWTUtGUlQ1dHh6cmpxSkxseXA5L1loV0sxcHdPeHA3?=
 =?utf-8?B?ZS8weVhMM2FTSEVHV0V5cnRDcmd3cUhGNHpCNldLMkdsRkVHcFFrTHBXaWVs?=
 =?utf-8?B?bFZWYmJTSHd2RG5BdzB6WlJrUk5qWk1VVmgxejBtNzZtM0hvL0poeE5FSms3?=
 =?utf-8?B?TkhXWUVBelNQbzZtQ0pRdWYvYjBhNlZRcU5qZUUvQzNnMFF2WGxya1JGdTc4?=
 =?utf-8?B?ZUZIcVQrc0ZqM1NSd2Q2VmxmSUpPRVNzNWJmamtLNUxGK08yRlR5ekdEUlIv?=
 =?utf-8?B?TXgvLzcyS2JhWjNGSmY2WUxpZ3VrTmdrOG1lLzUzOUkxQzhHbmJMdU1Ia0w1?=
 =?utf-8?B?TkE2bkgwcERLRm1aMFR1djNJUXFPdkZlUUdTQnBhWTFySGxhREZKRXl0NGdp?=
 =?utf-8?B?WlBTci84aVI5cnZlOVVYSENqSzdQaStJTlVkSFlrdFZDR2VFaWowQ0JabG5B?=
 =?utf-8?B?VS9YdjRZNEZISlRTanJPc00rZC8ybTVUenphMm14eHk0Ujl1dWw3emJXTCsz?=
 =?utf-8?B?TFZNQjdTRTllRGJLRWd5YmJrKytSTXpQVlVvWEZvczNnS3NKVllraktaUWRw?=
 =?utf-8?B?Y2ZBY25jRGJGcmVpTXV5VWZuQWJhMWk4ZzExaHBGdmcybUJDUzgxdzczSXY1?=
 =?utf-8?B?MXpjd2Vtc2RkMWZYRTRTVG1CTjFVZ01RamJPMVVZNnJuQkFRSUxVeHBhWTFC?=
 =?utf-8?B?S1BSRjRwelNLZitHUXYycnY4Z2hIbGFjVWJwQW5nSGU5SXdZa2g3ZDI4Y3Jk?=
 =?utf-8?B?eUdoSFI2QUxFdjNRRVZ3SjU2WnJHVVNRZzczdTl5TUpMN1Y4Q25wdTlXM0Yv?=
 =?utf-8?B?MGxYZjVPV3dFTXMrZUJlYXVYY2FFUm51dEZjNCtwUDNvaElVa2xFYUtrZUdx?=
 =?utf-8?B?aUxsV3FZMWJiTEVPbXRQa0s1cDJVay9TbXFFaVdmNHM3NEdYNG91dHZVNTFp?=
 =?utf-8?B?UHdKS3l4YklIdFluOTBNMHZyVGRVWGNlRkhib3lUOCtPV091dnJHMzJFQUZs?=
 =?utf-8?B?YVd1MXlZQXZacGJydWxSV05LWnEraUJZcVNMeXF0UXdGUU5sYmkvMjdWSEg3?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24494908-1507-4294-c164-08db475d72a8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2023 20:24:48.9531 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6+j6AvVe2Cau2vErR6zh5Bat6+U3VD1r61YWw01Wbe6ihZimp6dP4UMJAd9xQRohPkMqji+fRzFYGsjdQSxWMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6086
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 7/8] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Vinod Govindapillai (2023-04-27 12:00:15)
>From: Mika Kahola <mika.kahola@intel.com>
>
>Display14 introduces a new way to instruct the PUnit with
>power and bandwidth requirements of DE. Add the functionality
>to program the registers and handle waits using interrupts.
>The current wait time for timeouts is programmed for 10 msecs to
>factor in the worst case scenarios. Changes made to use REG_BIT
>for a register that we touched(GEN8_DE_MISC_IER _MMIO).
>
>Wa_14016740474 is added which applies to Xe_LPD+ display
>
>v2: checkpatch warning fixes, simplify program pmdemand part
>
>v3: update to dbufs and pipes values to pmdemand register(stan)
>    Removed the macro usage in update_pmdemand_values()
>
>Bspec: 66451, 64636, 64602, 64603
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                 |   3 +-
> drivers/gpu/drm/i915/display/intel_display.c  |   7 +
> .../gpu/drm/i915/display/intel_display_core.h |   6 +
> .../drm/i915/display/intel_display_driver.c   |   7 +
> .../drm/i915/display/intel_display_power.c    |   8 +
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 455 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
> drivers/gpu/drm/i915/i915_irq.c               |  21 +-
> drivers/gpu/drm/i915/i915_reg.h               |  36 +-
> 9 files changed, 562 insertions(+), 5 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index 9af76e376ca9..eb899fa86e51 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -281,7 +281,8 @@ i915-y +=3D \
>        display/i9xx_wm.o \
>        display/skl_scaler.o \
>        display/skl_universal_plane.o \
>-  display/skl_watermark.o
>+  display/skl_watermark.o \
>+  display/intel_pmdemand.o
> i915-$(CONFIG_ACPI) +=3D \
>        display/intel_acpi.o \
>        display/intel_opregion.o
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index bf391a6cd8d6..f98e235fadc6 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -99,6 +99,7 @@
> #include "intel_pcode.h"
> #include "intel_pipe_crc.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_psr.h"
> #include "intel_sdvo.h"
>@@ -6306,6 +6307,10 @@ int intel_atomic_check(struct drm_device *dev,
>                        return ret;
>        }
>=20
>+  ret =3D intel_pmdemand_atomic_check(state);
>+  if (ret)
>+          goto fail;
>+
>        ret =3D intel_atomic_check_crtcs(state);
>        if (ret)
>                goto fail;
>@@ -6960,6 +6965,7 @@ static void intel_atomic_commit_tail(struct intel_at=
omic_state *state)
>        }
>=20
>        intel_sagv_pre_plane_update(state);
>+  intel_pmdemand_pre_plane_update(state);
>=20
>        /* Complete the events for pipes that have now been disabled */
>        for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>@@ -7070,6 +7076,7 @@ static void intel_atomic_commit_tail(struct intel_at=
omic_state *state)
>                intel_verify_planes(state);
>=20
>        intel_sagv_post_plane_update(state);
>+  intel_pmdemand_post_plane_update(state);
>=20
>        drm_atomic_helper_commit_hw_done(&state->base);
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/g=
pu/drm/i915/display/intel_display_core.h
>index 9f66d734edf6..9471a052aa57 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -345,6 +345,12 @@ struct intel_display {
>                struct intel_global_obj obj;
>        } dbuf;
>=20
>+  struct {
>+          wait_queue_head_t waitqueue;
>+          struct mutex lock;
>+          struct intel_global_obj obj;
>+  } pmdemand;
>+
>        struct {
>                /*
>                 * dkl.phy_lock protects against concurrent access of the
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers=
/gpu/drm/i915/display/intel_display_driver.c
>index 60ce10fc7205..79853d8c3240 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -47,6 +47,7 @@
> #include "intel_opregion.h"
> #include "intel_overlay.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_quirks.h"
> #include "intel_vga.h"
>@@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i915_p=
rivate *i915)
>        if (ret < 0)
>                goto cleanup_vga;
>=20
>+  intel_pmdemand_init(i915);
>+
>        intel_power_domains_init_hw(i915, false);
>=20
>        if (!HAS_DISPLAY(i915))
>@@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i915_=
private *i915)
>        if (ret)
>                goto cleanup_vga_client_pw_domain_dmc;
>=20
>+  ret =3D intel_pmdemand_state_init(i915);
>+  if (ret)
>+          goto cleanup_vga_client_pw_domain_dmc;
>+
>        init_llist_head(&i915->display.atomic_helper.free_list);
>        INIT_WORK(&i915->display.atomic_helper.free_work,
>                  intel_atomic_helper_free_state_worker);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 5150069f3f82..f5c5a486efbc 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -20,6 +20,7 @@
> #include "intel_mchbar_regs.h"
> #include "intel_pch_refclk.h"
> #include "intel_pcode.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps_regs.h"
> #include "intel_snps_phy.h"
> #include "skl_watermark.h"
>@@ -1085,6 +1086,10 @@ static void gen9_dbuf_enable(struct drm_i915_privat=
e *dev_priv)
>        dev_priv->display.dbuf.enabled_slices =3D
>                intel_enabled_dbuf_slices_mask(dev_priv);
>=20
>+  if (DISPLAY_VER(dev_priv) >=3D 14)
>+          intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
>+                                      dev_priv->display.dbuf.enabled_slic=
es);
>+
>        /*
>         * Just power up at least 1 slice, we will
>         * figure out later which slices we have and what we need.
>@@ -1096,6 +1101,9 @@ static void gen9_dbuf_enable(struct drm_i915_private=
 *dev_priv)
> static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
> {
>        gen9_dbuf_slices_update(dev_priv, 0);
>+
>+  if (DISPLAY_VER(dev_priv) >=3D 14)
>+          intel_program_dbuf_pmdemand(dev_priv, 0);
> }
>=20
> static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>new file mode 100644
>index 000000000000..df6429e7059d
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -0,0 +1,455 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright =C2=A9 2024 Intel Corporation
>+ */
>+
>+#include <linux/bitops.h>
>+
>+#include "i915_drv.h"
>+#include "i915_reg.h"
>+#include "intel_bw.h"
>+#include "intel_cdclk.h"
>+#include "intel_cx0_phy.h"
>+#include "intel_de.h"
>+#include "intel_display.h"
>+#include "intel_display_trace.h"
>+#include "intel_pmdemand.h"
>+#include "skl_watermark.h"
>+
>+struct intel_pmdemand_state {
>+  struct intel_global_state base;
>+
>+  u16 qclk_gv_bw;
>+  u8 voltage_index;
>+  u8 qclk_gv_index;
>+  u8 active_pipes;
>+  u8 dbufs;
>+  u8 active_phys_plls_mask;

Is u8 enough for the mask? The enum phy shows 9 possible PHY_* members.
Also, I think having BUILD_BUG_ON() somewhere in this file to make sure
we have enough bits would be nice.

>+  u16 cdclk_freq_mhz;
>+  u16 ddiclk_freq_mhz;
>+  u8 scalers;
>+};
>+
>+#define to_intel_pmdemand_state(x) container_of((x), struct intel_pmdeman=
d_state, base)
>+
>+static struct intel_global_state *
>+intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>+{
>+  struct intel_pmdemand_state *pmdmnd_state;
>+
>+  pmdmnd_state =3D kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_KERNEL)=
;
>+  if (!pmdmnd_state)
>+          return NULL;
>+
>+  return &pmdmnd_state->base;
>+}
>+
>+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
>+                                   struct intel_global_state *state)
>+{
>+  kfree(state);
>+}
>+
>+static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
>+  .atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
>+  .atomic_destroy_state =3D intel_pmdemand_destroy_state,
>+};
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
>+{
>+  struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+  struct intel_global_state *pmdemand_state;
>+
>+  pmdemand_state =3D
>+          intel_atomic_get_global_obj_state(state,
>+                                            &i915->display.pmdemand.obj);
>+  if (IS_ERR(pmdemand_state))
>+          return ERR_CAST(pmdemand_state);
>+
>+  return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
>+{
>+  struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+  struct intel_global_state *pmdemand_state;
>+
>+  pmdemand_state =3D intel_atomic_get_old_global_obj_state(state, &i915->=
display.pmdemand.obj);

Wouldn't it be safer if we returned early here when pmdemand_state is
NULL?

I think to_intel_pmdemand_state(NULL) pmdemand_state just happens to
work (i.e. still returns NULL) because the "base" member is at the
beginning of the struct. However, we shouldn't rely on that IMO.

>+
>+  return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
>+{
>+  struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+  struct intel_global_state *pmdemand_state;
>+
>+  pmdemand_state =3D intel_atomic_get_new_global_obj_state(state, &i915->=
display.pmdemand.obj);

Just as with intel_atomic_get_old_pmdemand_state(), shouldn't we return
early if pmdemand_state is NULL here?

>+
>+  return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+int intel_pmdemand_state_init(struct drm_i915_private *i915)
>+{
>+  struct intel_pmdemand_state *pmdemand_state;
>+
>+  pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
>+  if (!pmdemand_state)
>+          return -ENOMEM;
>+
>+  intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
>+                               &pmdemand_state->base,
>+                               &intel_pmdemand_funcs);
>+
>+
>+  if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>+          /* Wa_14016740474 */
>+          intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DIS=
ABLE);
>+
>+  return 0;
>+}
>+
>+void intel_pmdemand_init(struct drm_i915_private *i915)
>+{
>+  mutex_init(&i915->display.pmdemand.lock);
>+  init_waitqueue_head(&i915->display.pmdemand.waitqueue);
>+}

The functions intel_pmdemand_state_init() and intel_pmdemand_init() are
both called from the same place. Furthermore,
intel_pmdemand_state_init() isn't only initializing the state, as the
Wa_14016740474 workaround is programmed there. Could we have only the
function intel_pmdemand_init() and incorporate what
intel_pmdemand_state_init() does in it?

>+
>+static bool pmdemand_needs_update(struct intel_atomic_state *state)
>+{
>+  bool changed =3D false;
>+  struct intel_crtc *crtc;
>+  int i;
>+  const struct intel_bw_state *new_bw_state, *old_bw_state;
>+  const struct intel_cdclk_state *new_cdclk_state;
>+  const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+  const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
>+
>+  for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                      new_crtc_state, i) {
>+          new_bw_state =3D intel_atomic_get_new_bw_state(state);
>+          old_bw_state =3D intel_atomic_get_old_bw_state(state);
>+
>+          new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
>+          old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>+
>+          new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
>+
>+          if ((new_bw_state && new_bw_state->qgv_point_peakbw !=3D
>+               old_bw_state->qgv_point_peakbw) ||
>+              (new_dbuf_state && new_dbuf_state->active_pipes !=3D
>+               old_dbuf_state->active_pipes) || new_cdclk_state)
>+                  changed =3D true;
>+
>+          /*
>+           * break needs to be removed, if some crtc_state dependent
>+           * parameters are added here
>+           */
>+          break;
>+  }
>+
>+  return changed;
>+}
>+
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>+{
>+  struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+  int port_clock =3D 0;
>+  struct intel_crtc *crtc;
>+  struct intel_encoder *encoder;
>+  const struct intel_bw_state *new_bw_state;
>+  const struct intel_cdclk_state *new_cdclk_state;
>+  const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+  const struct intel_dbuf_state *new_dbuf_state;
>+  struct intel_pmdemand_state *new_pmdemand_state;
>+  enum phy phy;
>+  int i, ret;
>+
>+  if (DISPLAY_VER(i915) < 14)
>+          return 0;
>+
>+  if (!pmdemand_needs_update(state))
>+          return 0;
>+
>+  new_pmdemand_state =3D intel_atomic_get_pmdemand_state(state);
>+  if (IS_ERR(new_pmdemand_state))
>+          return PTR_ERR(new_pmdemand_state);
>+
>+  ret =3D intel_atomic_lock_global_state(&new_pmdemand_state->base);
>+  if (ret)
>+          return ret;
>+
>+  /* Punit figures out the voltage index based on bandwidth*/
>+  new_bw_state =3D intel_atomic_get_bw_state(state);
>+  if (IS_ERR(new_bw_state))
>+          return PTR_ERR(new_bw_state);
>+
>+  /* firmware will calculate the qclck_gc_index, requirement is set to 0 =
*/
>+  new_pmdemand_state->qclk_gv_index =3D 0;
>+  new_pmdemand_state->qclk_gv_bw =3D
>+          min_t(u16, new_bw_state->qgv_point_peakbw, 0xffff);
>+
>+  new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
>+  if (IS_ERR(new_dbuf_state))
>+          return PTR_ERR(new_dbuf_state);
>+
>+  i =3D hweight8(new_dbuf_state->active_pipes);
>+  new_pmdemand_state->active_pipes =3D min(i, 3);
>+
>+  new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>+  if (IS_ERR(new_cdclk_state))
>+          return PTR_ERR(new_cdclk_state);
>+
>+  new_pmdemand_state->voltage_index =3D
>+          new_cdclk_state->logical.voltage_level;
>+  /* KHz to MHz */
>+  new_pmdemand_state->cdclk_freq_mhz =3D
>+          DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
>+
>+  new_pmdemand_state->active_phys_plls_mask =3D 0;
>+
>+  for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                      new_crtc_state, i) {
>+          if (!new_crtc_state->hw.active)
>+                  continue;
>+
>+          encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
>+          if (!encoder)
>+                  continue;
>+
>+          phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+          if (intel_is_c10phy(i915, phy))
>+                  new_pmdemand_state->active_phys_plls_mask |=3D BIT(phy)=
;
>+
>+          port_clock =3D max(port_clock, new_crtc_state->port_clock);
>+  }

As previously noted in https://patchwork.freedesktop.org/patch/530495 ,
I'm under the impression that this loop would not let us account for al
active crtcs, only those currently being touched by this atomic
transaction. Am I wrong to assume that
for_each_oldnew_intel_crtc_in_state() would only iterate over crtcs
touched by the atomic update?

>+
>+  /* To MHz */
>+  new_pmdemand_state->ddiclk_freq_mhz =3D DIV_ROUND_UP(port_clock, 1000);
>+
>+  /*
>+   * Setting scalers to max as it can not be calculated during flips and
>+   * fastsets without taking global states locks.
>+   */
>+  new_pmdemand_state->scalers =3D 7;
>+
>+  ret =3D intel_atomic_serialize_global_state(&new_pmdemand_state->base);
>+  if (ret)
>+          return ret;
>+
>+  return 0;
>+}
>+
>+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private=
 *i915)
>+{
>+  return !((intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &
>+            XELPDP_PMDEMAND_REQ_ENABLE) ||
>+          (intel_de_read(i915, GEN12_DCPR_STATUS_1) &
>+           XELPDP_PMDEMAND_INFLIGHT_STATUS));
>+}
>+
>+static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
>+{
>+  return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &
>+           XELPDP_PMDEMAND_REQ_ENABLE);
>+}
>+
>+static int intel_pmdemand_wait(struct drm_i915_private *i915)
>+{
>+  DEFINE_WAIT(wait);
>+  int ret;
>+  const unsigned int timeout_ms =3D 10;
>+
>+  ret =3D wait_event_timeout(i915->display.pmdemand.waitqueue,
>+                           intel_pmdemand_req_complete(i915),
>+                           msecs_to_jiffies_timeout(timeout_ms));
>+  if (ret =3D=3D 0)
>+          drm_err(&i915->drm,
>+                  "timed out waiting for Punit PM Demand Response\n");
>+
>+  return ret;
>+}
>+
>+/* Required to be programmed during Display Init Sequences. */
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                           u8 dbuf_slices)
>+{
>+  u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>+
>+  mutex_lock(&i915->display.pmdemand.lock);
>+  if (drm_WARN_ON(&i915->drm,
>+                  !intel_pmdemand_check_prev_transaction(i915)))
>+          goto unlock;
>+
>+  intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+               XELPDP_PMDEMAND_DBUFS_MASK, XELPDP_PMDEMAND_DBUFS(dbufs));
>+  intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+               XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+  intel_pmdemand_wait(i915);
>+
>+unlock:
>+  mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static void update_pmdemand_values(const struct intel_pmdemand_state *new=
,
>+                             const struct intel_pmdemand_state *old,
>+                             u32 *reg1, u32 *reg2)
>+{
>+  u32 plls, tmp;
>+
>+  /*
>+   * The pmdemand parameter updates happens in two steps. Pre plane and
>+   * post plane updates. During the pre plane, as DE might still be
>+   * handling with some old operations, to avoid unwanted performance
>+   * issues, program the pmdemand parameters with higher of old and new
>+   * values. And then after once settled, use the new parameter values
>+   * as part of the post plane update.
>+   */
>+
>+  /* Set 1*/
>+  *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
>+  tmp =3D old ? max(old->qclk_gv_bw, new->qclk_gv_bw) : new->qclk_gv_bw;
>+  *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
>+
>+  *reg1 &=3D ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
>+  tmp =3D old ? max(old->voltage_index, new->voltage_index) :
>+              new->voltage_index;
>+  *reg1 |=3D XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
>+
>+  *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
>+  tmp =3D old ? max(old->qclk_gv_index, new->qclk_gv_index) :
>+              new->qclk_gv_index;
>+  *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
>+
>+  *reg1 &=3D ~XELPDP_PMDEMAND_PIPES_MASK;
>+  tmp =3D old ? max(old->active_pipes, new->active_pipes) :
>+              new->active_pipes;
>+  *reg1 |=3D XELPDP_PMDEMAND_PIPES(tmp);
>+
>+  *reg1 &=3D ~XELPDP_PMDEMAND_PHYS_MASK;
>+  plls =3D hweight32(new->active_phys_plls_mask);
>+  if (old)
>+          plls =3D max(plls, hweight32(old->active_phys_plls_mask));
>+  *reg1 |=3D XELPDP_PMDEMAND_PHYS(plls);

If plls > 7, we would be potentially programming this wrong (e.g. for
plls=3D8, we would setting the field to 0).

>+
>+  /* Set 2*/
>+  *reg2 &=3D ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
>+  tmp =3D old ? max(old->cdclk_freq_mhz, new->cdclk_freq_mhz) :
>+              new->cdclk_freq_mhz;
>+  *reg2 |=3D XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
>+
>+  *reg2 &=3D ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
>+  tmp =3D old ? max(old->ddiclk_freq_mhz, new->ddiclk_freq_mhz) :
>+              new->ddiclk_freq_mhz;
>+  *reg2 |=3D XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
>+
>+  /* Hard code scalers to 7*/

I think this comment can be dropped: the hardcoding happens in
intel_pmdemand_atomic_check().

>+  *reg2 &=3D ~XELPDP_PMDEMAND_SCALERS_MASK;
>+  tmp =3D old ? max(old->scalers, new->scalers) : new->scalers;
>+  *reg2 |=3D XELPDP_PMDEMAND_SCALERS(tmp);
>+
>+  /*
>+   * Active_PLLs starts with 1 because of CDCLK PLL.
>+   * TODO: Missing to account genlock filter when it gets used.
>+   */
>+  *reg2 &=3D ~XELPDP_PMDEMAND_PLLS_MASK;

I think we are missing the ternary operator here to select the maximum
value for the pre-plane case.

>+  *reg2 |=3D XELPDP_PMDEMAND_PLLS(plls + 1);
>+}
>+
>+static void intel_program_pmdemand(struct drm_i915_private *i915,
>+                             const struct intel_pmdemand_state *new,
>+                             const struct intel_pmdemand_state *old)
>+{
>+  bool changed =3D false;
>+  u32 reg1, mod_reg1;
>+  u32 reg2, mod_reg2;
>+
>+  mutex_lock(&i915->display.pmdemand.lock);
>+  if (drm_WARN_ON(&i915->drm,
>+                  !intel_pmdemand_check_prev_transaction(i915)))
>+          goto unlock;

According to the spec, we should wait and timeout after 10ms here.

>+
>+  reg1 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
>+  mod_reg1 =3D reg1;
>+
>+  reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
>+  mod_reg2 =3D reg2;
>+
>+  update_pmdemand_values(new, old, &mod_reg1, &mod_reg2);
>+
>+  if (reg1 !=3D mod_reg1) {
>+          intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                         mod_reg1);
>+          changed =3D true;
>+  }
>+
>+  if (reg2 !=3D mod_reg2) {
>+          intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
>+                         mod_reg2);
>+          changed =3D true;
>+  }
>+
>+  /* Initiate pm demand request only if register values are changed */
>+  if (changed) {

Nitpick: we could have

    if (!changed)
            goto unlock;

and dedent the block below.

>+          drm_dbg_kms(&i915->drm,
>+                      "initate pmdemand request values: (0x%x 0x%x)\n",
>+                      mod_reg1, mod_reg2);
>+
>+          intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                       XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+          intel_pmdemand_wait(i915);
>+  }
>+
>+unlock:
>+  mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static bool
>+intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
>+                       const struct intel_pmdemand_state *old)
>+{
>+  return memcmp(&new->qclk_gv_bw, &old->qclk_gv_bw,
>+                sizeof(*new) - offsetof(typeof(*new), qclk_gv_bw)) !=3D 0=
;
>+}
>+
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
>+{
>+  struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+  const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+          intel_atomic_get_new_pmdemand_state(state);
>+  const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+          intel_atomic_get_old_pmdemand_state(state);
>+
>+  if (DISPLAY_VER(i915) < 14)
>+          return;
>+
>+  if (!new_pmdmnd_state ||
>+      !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_state))
>+          return;
>+
>+  intel_program_pmdemand(i915, new_pmdmnd_state, old_pmdmnd_state);
>+}
>+
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
>+{
>+  struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+  const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+          intel_atomic_get_new_pmdemand_state(state);
>+  const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+          intel_atomic_get_old_pmdemand_state(state);
>+
>+  if (DISPLAY_VER(i915) < 14)
>+          return;
>+
>+  if (!new_pmdmnd_state ||
>+      !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_state))
>+          return;
>+
>+  intel_program_pmdemand(i915, new_pmdmnd_state, NULL);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>new file mode 100644
>index 000000000000..0114f4e0225a
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -0,0 +1,24 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright =C2=A9 2023 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_PMDEMAND_H__
>+#define __INTEL_PMDEMAND_H__
>+
>+#include <linux/types.h>
>+
>+struct drm_i915_private;
>+struct intel_atomic_state;
>+struct intel_crtc_state;
>+struct intel_plane_state;
>+
>+void intel_pmdemand_init(struct drm_i915_private *i915);
>+int intel_pmdemand_state_init(struct drm_i915_private *i915);
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                           u8 dbuf_slices);
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
>+
>+#endif /* __INTEL_PMDEMAND_H__ */
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 2b94b8ca8ec9..907fa3aee179 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -41,6 +41,7 @@
> #include "display/intel_fifo_underrun.h"
> #include "display/intel_hotplug.h"
> #include "display/intel_lpe_audio.h"
>+#include "display/intel_pmdemand.h"
> #include "display/intel_psr.h"
> #include "display/intel_psr_regs.h"
>=20
>@@ -1986,12 +1987,25 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915=
_private *dev_priv)
>                return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
> }
>=20
>+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
>+{
>+  wake_up_all(&dev_priv->display.pmdemand.waitqueue);
>+}
>+
> static void
> gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
> {
>        bool found =3D false;
>=20
>-  if (iir & GEN8_DE_MISC_GSE) {
>+  if (DISPLAY_VER(dev_priv) >=3D 14 &&
>+      (iir & (XELPDP_PMDEMAND_RSP | XELPDP_PMDEMAND_RSPTOUT_ERR))) {
>+          if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)

I think we should have the (iir & (XELPDP_PMDEMAND_RSP |
XELPDP_PMDEMAND_RSPTOUT_ERR)) part as nested if statement here.
Otherwise, when the interrupt did not happen, we could endup checking
for the GEN8_DE_MISC_GSE even when DISPLAY_VER(dev_priv) >=3D 14.

Even though we know that iir & GEN8_DE_MISC_GSE would be false in this
situation (because both XELPDP_PMDEMAND_RSPTOUT_ERR and GEN8_DE_MISC_GSE
map to the same bit), I think having that one checked only for previous
display engines would sound more correct semantically speaking.

>+                  drm_dbg(&dev_priv->drm,
>+                          "Error waiting for Punit PM Demand Response\n")=
;
>+
>+          intel_pmdemand_irq_handler(dev_priv);
>+          found =3D true;
>+  } else if (iir & GEN8_DE_MISC_GSE) {
>                intel_opregion_asle_intr(dev_priv);
>                found =3D true;
>        }
>@@ -3742,7 +3756,10 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>        if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>                de_port_masked |=3D BXT_DE_PORT_GMBUS;
>=20
>-  if (DISPLAY_VER(dev_priv) >=3D 11) {
>+  if (DISPLAY_VER(dev_priv) >=3D 14)
>+          de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
>+                            XELPDP_PMDEMAND_RSP;
>+  else if (DISPLAY_VER(dev_priv) >=3D 11) {
>                enum port port;
>=20
>                if (intel_bios_is_dsi_present(dev_priv, &port))
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index dde6e91055bd..60c007aea1ce 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4426,8 +4426,10 @@
> #define GEN8_DE_MISC_IMR _MMIO(0x44464)
> #define GEN8_DE_MISC_IIR _MMIO(0x44468)
> #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>-#define  GEN8_DE_MISC_GSE         (1 << 27)
>-#define  GEN8_DE_EDP_PSR          (1 << 19)
>+#define  XELPDP_PMDEMAND_RSPTOUT_ERR      REG_BIT(27)
>+#define  GEN8_DE_MISC_GSE         REG_BIT(27)
>+#define  GEN8_DE_EDP_PSR          REG_BIT(19)
>+#define  XELPDP_PMDEMAND_RSP              REG_BIT(3)
>=20
> #define GEN8_PCU_ISR _MMIO(0x444e0)
> #define GEN8_PCU_IMR _MMIO(0x444e4)
>@@ -4512,6 +4514,33 @@
> #define  XELPDP_DP_ALT_HPD_LONG_DETECT         REG_BIT(1)
> #define  XELPDP_DP_ALT_HPD_SHORT_DETECT                REG_BIT(0)
>=20
>+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)           _MMIO(0x45230 +=
 4 * (dword))
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK          REG_GENMASK(31, 16)
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)                    REG_FIELD_PREP(=
XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK               REG_GENMASK(14,=
 12)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)         REG_FIELD_PREP(XELPDP_P=
MDEMAND_VOLTAGE_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK               REG_GENMASK(11,=
 8)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)         REG_FIELD_PREP(XELPDP_P=
MDEMAND_QCLK_GV_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_PIPES_MASK                       REG_GENMASK(7, =
6)
>+#define  XELPDP_PMDEMAND_PIPES(x)                 REG_FIELD_PREP(XELPDP_P=
MDEMAND_PIPES_MASK, x)
>+#define  XELPDP_PMDEMAND_DBUFS_MASK                       REG_GENMASK(5, =
4)
>+#define  XELPDP_PMDEMAND_DBUFS(x)                 REG_FIELD_PREP(XELPDP_P=
MDEMAND_DBUFS_MASK, x)
>+#define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PHYS(x)                  REG_FIELD_PREP(XELPDP_P=
MDEMAND_PHYS_MASK, x)
>+
>+#define  XELPDP_PMDEMAND_REQ_ENABLE                       REG_BIT(31)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK          REG_GENMASK(30, 20)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)                    REG_FIELD_PREP(=
XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK         REG_GENMASK(18, 8)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)                   REG_FIELD_PREP(=
XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_SCALERS_MASK                     REG_GENMASK(6, =
4)
>+#define  XELPDP_PMDEMAND_SCALERS(x)                       REG_FIELD_PREP(=
XELPDP_PMDEMAND_SCALERS_MASK, x)
>+#define  XELPDP_PMDEMAND_PLLS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PLLS(x)                  REG_FIELD_PREP(XELPDP_P=
MDEMAND_PLLS_MASK, x)
>+
>+#define GEN12_DCPR_STATUS_1                               _MMIO(0x46440)
>+#define  XELPDP_PMDEMAND_INFLIGHT_STATUS          REG_BIT(26)
>+
> #define ILK_DISPLAY_CHICKEN2   _MMIO(0x42004)
> /* Required on all Ironlake and Sandybridge according to the B-Spec. */
> #define   ILK_ELPIN_409_SELECT REG_BIT(25)
>@@ -4671,6 +4700,9 @@
> #define   DCPR_SEND_RESP_IMM                   REG_BIT(25)
> #define   DCPR_CLEAR_MEMSTAT_DIS               REG_BIT(24)
>=20
>+#define XELPD_CHICKEN_DCPR_3                      _MMIO(0x46438)
>+#define   DMD_RSP_TIMEOUT_DISABLE         REG_BIT(19)
>+
> #define SKL_DFSM                       _MMIO(0x51000)
> #define   SKL_DFSM_DISPLAY_PM_DISABLE  (1 << 27)
> #define   SKL_DFSM_DISPLAY_HDCP_DISABLE        (1 << 25)
>--=20
>2.34.1
>
