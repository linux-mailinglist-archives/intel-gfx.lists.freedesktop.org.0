Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE4E5F340C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:01:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEACA10E3D0;
	Mon,  3 Oct 2022 17:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7165710E3D0
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 17:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664816465; x=1696352465;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=vW92Jk0gkmfuYOGtBFURse1Yp/0hpeDjR/KBSaDecCk=;
 b=GladgKJeswwhY05k4mcj1Tc4jBdYsoPJZKvoI7VF/FhanuHn92afdgRN
 k5I/r96jeQnqS+YPntcyIIQIrXVQAmeoNdNlVAYqJ3kscuvq6RTIcyb9U
 yy/hzXr2staKnz5Va7+wAE2wn4F5VtKYbcQ2ULAKYVnr/w+UFUmr2GDMN
 nEckx7eM6DvMAnRV1BJX1Pnurasa//i6smOpdZAZjTN5q//2LYc7GE1Zp
 f5b6BgkbufJDJoF658rQTeIuU07SNpaLbHKGr2oe+LmZ8mOYZ4BoYbv5o
 KYGlieNilUcqNY7CwuS/i8Wxql+ZqWMoRH6Ta5/gkjTmLe/Y9xinjV1zq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="329091620"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="329091620"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:00:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692140376"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="692140376"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 03 Oct 2022 10:00:36 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:00:35 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:00:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 10:00:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 10:00:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XlAFo7xb+R84oeZgaWSoHFAPqMj/krNoBGZ3hRPQt06KyeepxZAdRv4mkDSX7HgrG5mn54mjdMYcLfbhB+vV+VRwP+eIM/JCb7CnP970k83PRHQPyrMZsF8x+NMeVF4PU0/Tj/dn5DTuYUwhlLD0Al6L4WXW4cPR2lQZmue6qROrZMhiMVCrntgZsfPyNruHhs8OsGcpVXWDdwRPBYoEXStjFxtpWH94FFyj4bWEW+N/Y2Seiq7Ll6q5efpV7LnYmOxVZPZ05eEjk8YdKqyeCvZbcYBjjjVrTHnYa6lz70Zm3ce6fFZOAxL9TivfY7Jkzl4Dlqh/yRCGYIEIjpldXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vg/81e5ce6i6sVu9E3ghAeNuYNFL2SQTHuc8EGb/oCY=;
 b=QNh0qCPx6SDpiyjWZ4z1H0Pt0L6V2GKs47o0rhT89SxB1pkiN37VhSV7QHSsv/DxJYHDheegd5/ZcHqwtmBbDm0L3Gtmuc8m0lIttbSHe31m3tNP/fBjCZMM5ZgF6zC91v4NN/LHSOP5/T0FjmflqPSzbP9UuSvFgfYlH3x59F1seNxdxsCH0GCq7yshidV3Tsq75o14410VNShglOtAYLamaDVgfNxAaTcsRpYm/yAAfRrq5FjQZk728+qJTbOFLvX8tFwP6qDzmMrLI7lqo/eM1rnhOgN4SWua8EyNyI/6Kq+ZjN0kkGmZnClLsEamCFC/NXRfM3jp8cd/1Rr3jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 LV2PR11MB5976.namprd11.prod.outlook.com (2603:10b6:408:17c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 3 Oct
 2022 17:00:32 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 17:00:32 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 22:30:17 +0530
Message-ID: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0183.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::8) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|LV2PR11MB5976:EE_
X-MS-Office365-Filtering-Correlation-Id: 3307cdf1-d8cf-42d8-03d8-08daa560c83f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eQ3agzoz1tiCau+CnKAllp1Uh2nNA1rJUJTxX6HNDR8d6q6sd83MPisIQal5xtttLRFm03u9bPDwa0lx5CUMZNuxepihUcqH2jzacSKkeUym+odh77Iv2WiA3pR7d9vn9mS7mPGkp6tle3uTOZVLAyGWUcjqZBbwG8bhtvA8FK9USIsXkRefTBwaR+byb/VjmCa2yTlEyGv9bMmLdyrYXr+3alnq201nKd0X88wDfF80PqQYksJmccmFf4DzgX5vNJABwjtSSiDW7KTC90ym2TUc96XBabzpfL2AGgNiXo9908fo2xGzglg8zPvZ6PMcQgVuuEp7QvUqX2nD56PqdrED0O/tLgQsX4x1DCamLUvOlilLv4Qd7GA4HEVfmBlfdaIqQBFza/jVKaX9gCKZW3pLHaznRfJSdeccdFJZfeMo0MJyoQg/iyGTiiFxIBNonsjA/R7f2NJjWnc1Q8mN72mLFdYpIui2b77Xq9ljSFvN6oDEdPHJXEnBCGoTtD376EjH4oQrcgcbTxKLiclxWgfEPH7Sm7NEriDaBN/dIfK/mYv47naAAT9AsKY5u811C5ebtUlmGWqk2aDZackhWKeUuIVzlBJPhDnKbNirlOmX7bQ2bSGF5VTi2WAdgBaMmPsGOH21Vx3P+icS1E5XoWuaS3XIO4FG3zqp97beN9UPgRvimu1PdvBzyZJ3NdIUvl0yytxWxrFtm2zkx92tPQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(346002)(136003)(396003)(451199015)(82960400001)(1076003)(86362001)(6506007)(6512007)(5660300002)(26005)(478600001)(36756003)(6666004)(6486002)(66574015)(38100700002)(66476007)(66556008)(44832011)(41300700001)(2616005)(2906002)(8936002)(186003)(316002)(6916009)(54906003)(66946007)(83380400001)(8676002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2NwazMxTHJGUE5vQ2xnNFVINEI3VHVzU1FzOEtaMlhGUEN6WW5kSVhXaXRO?=
 =?utf-8?B?RzZVRTB0djkwOElTdlRiL3k2ZnlQSkk0ZDNtaFdYcUY2TXJTYlc3a2dDSmRD?=
 =?utf-8?B?REdUUjBhMkRZOW81N1lxQ0NuczNZQUVMMGgxYmtXRUg4cDFmR3VWcklBckNX?=
 =?utf-8?B?Mko0MWpxalUzR2hkc2VOamFlelZ5dmF0YW5raFNpczRCdjJBM1c4VGNIUEhO?=
 =?utf-8?B?Slo4T0xCZEdiK3FtUFB2YlNlY1draVZrWCt2d0EyTmVYb1d5N2xaSGhScXpD?=
 =?utf-8?B?dnYyU21EdFBCMmtkUVdWdzZVRG56V1FjYm56UXlUM285VmQxMnBUd1B0Qmp2?=
 =?utf-8?B?dDVBT0RzWkd0blNZTEJUSFB2OE0vdGtzMGdEbDg1K1ZPYnpJejV3Uy9SdXFj?=
 =?utf-8?B?VmExY3loUXQ3K0h0N0Q1bjFJbXB6VWZyVlF1Sm5LaFhyemV2UzNPa24vY21h?=
 =?utf-8?B?cjYrbndkWFdVQzQ3cFhLRkxpdUFpaWozeUszd0orVU9PUW8wOW9OaHVSdGsw?=
 =?utf-8?B?N2V5QVhyYW5oK1ZIM1RRazh1Z1U4aVJGdU4rRW5sWEV3aW9ZT1RmNDhIT0o2?=
 =?utf-8?B?UThZZlN1QkRIM2ZINUNabGFlWXpRcHhxY0YzMU5XaDZmM2NoWWc4dTd3Yk9l?=
 =?utf-8?B?YW1qSFBKQ2RWZXhWQkFGVkl4L0dlVUs5ZnM5TnFBVE85ZWFEVXNKcHZUNk95?=
 =?utf-8?B?Z2FiUGxwYUN4ZUh6RWo4eE1SbXRkOTVCUDJVbFN4TjdSTmo1S3pZbEF1UjUz?=
 =?utf-8?B?NFU3dkFoS3cyMk5tQXdyazJ5bnJyR3JBSXFNcG9GLzBYL1BwemY5d0x0VnYx?=
 =?utf-8?B?R0luS25KSUk1djlUbmlseG5uS3FwME1NTDIyb05EUzRUaTZSbnQ0alNucEpI?=
 =?utf-8?B?cGJITkFHRGkzdEVWUXJkSFdENWVZQVI3SHBaZitsaWdxVW5EMm5lZGVxZnJm?=
 =?utf-8?B?a0NjaGRmNERKV3ZTYWVWZ09TVmgyaTl6VFlxSnFlMlQwS3BsUFp0T1JIaGlE?=
 =?utf-8?B?ZnpTOG5Bd2RnWWV4S3ZBTWljV1RuMWdVRitKaTNqTFRXY3pSS1lVWmJoMnpu?=
 =?utf-8?B?U1UxMzF1MUpiSEFNajQxY3lycExyc2NHYXEyRWsrZFU5YXdMdjZXR1o0ZGpT?=
 =?utf-8?B?L29YNXdWUk9RMDI2VFBpRXVuM2VCektxUkVCUllhaitxQ250ZHBweTIzSk1q?=
 =?utf-8?B?WnlrNmthb2c1cGJFSDFWZ0ZydzFPdlFtV08xemxrWFkwS3ZTZU5PM0dKSzN1?=
 =?utf-8?B?dG53dGd5ZGNBUGZVYStBNnlPSE9qSEd6UDZEbGU1dm1lVVhpejhQc0Ryc3Z2?=
 =?utf-8?B?N0Z4NEkyV2swcVBnT1RRQUhFYWJBOUxBK2VLM3RqU3p1S0oxQ09qemNRR3lO?=
 =?utf-8?B?V3Vwa1VkMEpHNlBMejdlaDZLaHJCNmtKTlRZaUMzSDNtR0dNYjIvS1poN09a?=
 =?utf-8?B?SDVmVHo0SzR3SmFVYVRlL241a2g4Z3o3dFJRNll6Rk5ZWDNTODZjc3VnSFIz?=
 =?utf-8?B?VnlMa2RxYWZvRkhJR2lIVmFRZ3NRSWl5aWpGamJDK25LUHFHV1lGNTRLN1lI?=
 =?utf-8?B?dURpdjczaTB1UDI5WXVVUFh5T0pSZ2VuWXNSc01XUlExS0I3WkVXMXJ6eFZm?=
 =?utf-8?B?ZEdkajZtQWJlOEVCelFrVXlFUlpBVWVXSGxCYTVUUzJrbE8yYStXZW5QVGpj?=
 =?utf-8?B?WUZNN04vVkpvZGhXVWo0RkQ0MEVsRjd4VTNCNFdqdzdScmQxbEM5YlZ3OU1S?=
 =?utf-8?B?Y3doeHlZREZoYTNBNm1HTWJyRTRIKzFMWXBUWVh5aHkxN0tzVGxuckVYQjl2?=
 =?utf-8?B?R2VFWFJ1RVBUWkdYUi85R05nVUxCcjFpeVZ6d2dEWkxrYTBLRFVxT0J2eWpX?=
 =?utf-8?B?ZGs0Y0VHVzFRU0p6eWJaZWwxcnlicm5idUVJZVdkOHNLVDM4dWRTTGR1d1pC?=
 =?utf-8?B?V2NqQ3N5emhtdFJrYXpYNVd2dWNnWGRiWmFNajBxQzRianBqUFlkZExsZURM?=
 =?utf-8?B?TVhvaDl5SEFQckdSOWFKK3hHdE5BQUtUdjBscmV0UzJiZlhUS1NJNDJUbjlT?=
 =?utf-8?B?ZFlqdFhoMFVyVCtIZHpCdlBRSHFmemtxSWJQR2QwL0U1NU1SR21mU3ZpUnRV?=
 =?utf-8?B?UmN2RnNWbURXMzFjYzN2WkRPR3d1cWQrNU01OHBQWHpZWTJmK00vVjdwQkpz?=
 =?utf-8?Q?awM116tnuHC6B8eE9YeNQIo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3307cdf1-d8cf-42d8-03d8-08daa560c83f
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 17:00:32.4956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: egIaN/Lyeb8j7mmX9icrspNV5vGADTeSfmIo+1fAKyElJ+k6Tc0vne5Yq5oRKkJ3dht7+OY7bht4/EHS5OdlsSpT4JTRHZHmRtXN/Ezr805nzw5LqL6hXJoonUt/kxAp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5976
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v5 0/7] drm/i915/display: Don't use port enum as
 register offset
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

Prior to display version 12, platforms had DDI ports A,B,C,D,E,F                  
represented by enums PORT_A,PORT_B...PORT_F. The DDI register offsets of          
the ports were in the same order as the ports. So the port enums                   
were directly used as index to calculate the register offset of the               
ports.                                                                            
Starting in display version 12, TypeC ports were introduced in the                
platforms. These were defined as new enums PORT_TC1,PORT_TC2... The               
later generation platforms had DDI register offests of TypeC and                  
non-TypeC ports interleaved and the existing port enums didn't match the          
order of the DDI register offests. So the enums could no more be used as          
index to calculate the register offest.                                           
This led to the creation of new platform specific enums for the ports             
like PORT_D_XELPD, PORT_E_XELPD to match the index of the ports in those          
platforms and additional code to handle the special enums.                        
                                                                                  
So we want to make the port enums not tied to DDI register offset and             
use the index from somewhere else to calculate the register offsets.              
The index of the DDI ports in the platform is now defined as part of              
device info.

Series includes few patches at the end which does some cleanup and
fixing made possible because of unique enums for the ports.

v2: ddi_index defined for platforms starting from Gen75. Many platforms
from Gen75 has ddi support.
v3: Updated DDI_CLK_SEL macro to use new index for DDI register offset
caculation.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Balasubramani Vivekanandan (7):
  drm/i915/display: Pass struct drm_i915_private to DDI_BUF_CTL macro
  drm/i915/display: Pass struct drm_i915_private to DDI_CLK_SEL macro
  drm/i915/display: Define the DDI port indices inside device info
  drm/i915/display: Free port enums from tied to register offset
  drm/i915/display: Remove PORT_D_XELPD/PORT_E_XELPD platform specific
    defintions
  drm/i915/display: Fix port_identifier function
  drm/i915/display: cleanup unused DDI port enums

 drivers/gpu/drm/i915/display/icl_dsi.c        | 12 +--
 drivers/gpu/drm/i915/display/intel_bios.c     |  7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 80 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_display.c  | 12 +--
 drivers/gpu/drm/i915/display/intel_display.h  | 29 ++++---
 .../drm/i915/display/intel_display_power.c    | 40 +---------
 drivers/gpu/drm/i915/display/intel_fdi.c      | 14 ++--
 drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
 drivers/gpu/drm/i915/gvt/display.c            | 30 +++----
 drivers/gpu/drm/i915/gvt/handlers.c           | 17 ++--
 drivers/gpu/drm/i915/i915_pci.c               | 46 ++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  7 +-
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 10 +--
 include/drm/i915_component.h                  |  2 +-
 15 files changed, 151 insertions(+), 162 deletions(-)

-- 
2.34.1

