Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA00831912
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 13:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865E210E79A;
	Thu, 18 Jan 2024 12:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0167710E7B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 12:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705580688; x=1737116688;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=pQ2eSxdckNhvfrmWFzzicvcHubpIwMDHBMRTMOsM5bk=;
 b=PuBZK7VoDpLsWVNz0F+DKH0znZpz5gr8rvAMZqV7UrToYeg3CtgVAPD4
 mTuSIsDPv8p3TVgILl+Kbsn3UyNC9vqapgxTVBFNEX1yfqziMAB7O4rTX
 UOJvUxswo2Fy2vtBmZyry0anRkUappVKNHU2Pwua1/D+sx8+i+DseoDJx
 9Y4Ji6jwZcR5FF76cZW8WUl9SM89RhwYvb36yBC1W1/fbzPUIYWFgdd+Q
 EeO82xakDVQDYNWB7sW91g2vZvo9h53MnXLjGsKp9kBp9/OSTVStfBnju
 UdiLtotaylA0sf5JOJ9Tz4SqeLKdCBX65MVYtJAIxg5gj/z51uwP/GqcS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="335118"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="335118"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 04:24:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="398503"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 04:24:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 04:24:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 04:24:46 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 04:24:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ndfq505ZO1x/GVpq4IGC9c5L7qD54maGmWIUYJztH7MUxKaJWPNaykGaUe3XcorP/N3/jfZcszq9Ew8aDkcMePQxyf9ZYl8sSh53E7bTRLIb+vf9aeck2RiC4Y1NUWRAS+S8OxsgNc7hQiewNdJju0jBjVB+GI8AkMIk358nODC6KAhZJ4lM3q6bS4Ihf9MSyiY3YJ3KLXYz+7s00OrGTcmHWK5VLFFlutYCzo8e+Ze7/+wiOXUK2jseX8e0BavHs0Ww9AH3fyz+KdhCAombEs0Xwqu0Z/eWk7R01Qm2ck2svwhGMhghPcD9EZX0OI/N0OfbZz1l02E3GcJZQ9GmWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1iAfefLTdZpvQS+HL1LxBHWB/faqlUXaHCngAWffYms=;
 b=Epy8zNOr8NxMtJLulPnrdZid0CCkRSnCp9jDif4mZe+3NQAmVKhHbIMM3Qw4Yuf1jwToBJ5Xa/OHMrxYpXiKiSR3DvG1y4IJzy+S4ur07/rvB7xLfkhVFA5U27omxslAuWwUHL/JvPqU0sMei2uDF06gYliO7uYjM3hVCALIsuZaZJf16mB7rmrVBUzKS2X5nD2h66nl395nbJwp1jtr28exivCnKU3HM3ida/GFVBmThsu0s1yIXUssV9WKiS2uLs4s+M53B0MdXDEa4+ttN6v+TtuUL/TMNuw4IXqCNR5BxjLaGzPuVE2qgb8fg4FXIII1EOs1CO2ZniFv9Uh9uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7766.namprd11.prod.outlook.com (2603:10b6:8:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Thu, 18 Jan
 2024 12:24:38 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793%7]) with mapi id 15.20.7202.020; Thu, 18 Jan 2024
 12:24:38 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240117155718.3439-2-stanislav.lisovskiy@intel.com>
References: <20240117155718.3439-1-stanislav.lisovskiy@intel.com>
 <20240117155718.3439-2-stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 1/3] drm/i915: Add meaningful traces for QGV point info
 error handling
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 18 Jan 2024 09:24:33 -0300
Message-ID: <170558067324.5826.8773703137258986551@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0095.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7766:EE_
X-MS-Office365-Filtering-Correlation-Id: a2d1afc1-a428-4d7b-a3de-08dc18207043
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vIPOSyWQV3jFgWAKM2A0//0HQw/Pye0me06QCYkymVXHmt1ItzPgIk5Vm0j2neYrUboDKwzZF78f0gbiA7fTdSXOVkwpwmCZ6uyuHdkXP0KPhzJnxJDgp/jUm4ZonbgvygE2WeyTvcP9CKc2YIVzHmqU89KyEsW+Oh60Xbrj55Uu6eWfP3z+ENKNBoDxMjkOdXASKkEEZ+NF8SkM9GZjPZ+MAKqUyQ1KJ7+qJsYQ8XX2HQZoKFp8IuC+l/85cgDF4Xp6suLK4lQJq4JwhW+KY+TENh5C+BLImcx/ZnP2GUsJi6tMJh30Y0ocTBruk11qiBQPzt++kvBZ/zAZQ9UHSn/gMHOCoscVChOH1+ET4Jd99vg6D0S1b/bcy9DySzrJ+TBcuCRsM99kd0xxCxE9TS+da5cNjr+yMRQvc2ha2v76B0z1SIhyGzw3xeYcIAGLvZYGRmRYZdsKhcrnwjOWpQI68fu+pkm8upzOJz+vqFO+ESEkVPDIw1GbIQLnf+R4mPQ0YXI5Ym2UzCvEwR35CKQntd+SPB+/TqObv5nY/9r7thnLPvC1quSuu8hPIkNv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(346002)(136003)(396003)(39860400002)(366004)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(26005)(6512007)(6506007)(83380400001)(6666004)(9686003)(5660300002)(44832011)(6486002)(2906002)(33716001)(41300700001)(478600001)(66556008)(66946007)(316002)(66476007)(8676002)(8936002)(86362001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmVXc3h4amc4aERhT0JwbTJndldGY09IbGlJc2p0aExubk9pVEZmUzVwR2ds?=
 =?utf-8?B?RG9wZVY4WWZaR3FKQ25UVHVCNUxXVUxGSzJVMjZJK1UvOFhFSmhpYnVVS0hz?=
 =?utf-8?B?U2Zzd1JaQ1M5ZXNhWmVkTndQRElmOHJVMlVoa003NTF2aXhDNXhqczdKUG15?=
 =?utf-8?B?RnlBczg1UDVwVW10LzJwS3FaVHRZejJjdE9SZDlQL2tJOUNzbDI0Z0R5WjNY?=
 =?utf-8?B?UTBCczBSamlJL1hGSXI3enhablIxaS94U1FHYlhJeWdZejh0MkY1OTkyTUhL?=
 =?utf-8?B?TGxPUVpDdVNrWm5PdDV3ZVBSY2QxMVlPL2I5YlU4UVZVakVpQWxZZnZzOTl6?=
 =?utf-8?B?U3d2WUU4VmtsNitLa3BBWDN2d3pXL011TU1KRzB6WUhQWG8zbS95ajBDZWM2?=
 =?utf-8?B?bnp1dldqZlVwV29FWW15d0VHcThYU25EaEphZHd4WDBhZ0JRT1VEQ29xeXA3?=
 =?utf-8?B?dUZzcjhGSWZvaEtVdmtyb3BmK1FPTW1SREJBeXR2cDFkOXlHM1dzdXNIMEN4?=
 =?utf-8?B?MEJQQkZmeStmQmMzZlNWdDVlZG1kaDVkeWNremwzbnp1ZlVwQkpnYTZYTXdj?=
 =?utf-8?B?KzFBWVpwOUEzVGVJNmtuc0FoQTQxVHdrajlkMnozZ3ZFekdUNnI2SzFkckgz?=
 =?utf-8?B?NTk0TktmVVcxSlZiYlpJVEpFbUxvd1NXL2FPTVcrTGhiN2tOZ2RsWUVLUkVa?=
 =?utf-8?B?M1BvZElReVZEaUJ1ZWxnYmZYS0s3T3hpQzVSVzEydHRneTJNTkJIVThSUFlZ?=
 =?utf-8?B?Ykc2VmpXN1phK21JWDZ6UWZCWCs0cVRUcjF6ZWVWYXozcFhibW9LeFdlMmV4?=
 =?utf-8?B?Q1NFWGJnL29lY0ZxbEVaL0E4YVlndVQvTjBHOG50Y3VaOGNsRzhLdklRa1Bs?=
 =?utf-8?B?NFdxSjk5aGVVTjlWYzBhODlMTnRRaS9pS2xZWWsyWG9yWXZ2ZnV2VHNneURF?=
 =?utf-8?B?Y0lKTy9sZkpxbk12U3d6OENxQ1RyWVNaTmJyR0Z1OGFOTFJNSGlrcUNZU09B?=
 =?utf-8?B?cDRBaThhcDFidEU0NngzL3M4NzNmUjFqaHNQM0tiL09ZQjN1dGpQbjdtRk43?=
 =?utf-8?B?aldKT2V6dkdXSEdvU0J4bTl2V1A4VVhzLzdwODlqRlhxck1tMktrOHhHa2F5?=
 =?utf-8?B?dkRPMHcvbXVqSHQvTm1NOWVrMVVYcjZvbmhURUdwcGgyejkzMm01ZHpOTzRD?=
 =?utf-8?B?b3ArOFVYL0k0K2FWK21zbHVPUTg1WWcrS20zU1NzakNMZUkycEFJZGRXWERs?=
 =?utf-8?B?TnNZUnpqUXRTempYQngxdG1tWWIvaUJjUHpnUE5OTTN0UGttSHM1dE9jMWFU?=
 =?utf-8?B?eEZISGlWV3E3Zjc4dmVabW9sK0U1MHB0Wm90bStSNEtLSGNvSTloTnJZL3ZB?=
 =?utf-8?B?bjZLYXVBRmhmY2JROXlTd2dxY3hZdWtVeFRvakxDNzMrOHArRFdjRnB4S3Rw?=
 =?utf-8?B?cklUVXJHV3g4T2pObSt0REFxKy9wRnM1YzJZY2t6Mkd5bXl4NTNNRityZ2dT?=
 =?utf-8?B?MkpaMk1xTEhqTkdFWTY4UnZHWHNHekhtdUw4cml0aU92ZFhNeGJPb3VQMkt3?=
 =?utf-8?B?SzFqZ2hkdHNpSVh6WVI5cEJWZG1OTkh4UmM3M2h1OHBWQnRMbVI5NFJBVkcr?=
 =?utf-8?B?T0NHMVhRQmlQUzlxTnlac0ZsbFdPZnhSbzk0WTByc3NwMGtYK1RNZ2E2dk1Y?=
 =?utf-8?B?aldNYUsxT2kxeWQ3Z3lhN2RRaGUrei9rVmxzVGhiaXFLNjJ5ZlhPTkZEUkpN?=
 =?utf-8?B?eEsvUmM2OXdRUjdKSk9kTHNsWmpFSGFqMmM4OElxaDgzRnVKYUNFZzEvQVhG?=
 =?utf-8?B?UmU2U2hFY29UZlZBQ1YwM0VQTVczWGd4Q1NWV3JXRDdNMW44UGlnVXNRc0tX?=
 =?utf-8?B?WTJSdlQySGFsa25FK0FvTnJYS0FzZDhnbWVlemRCdmFUcFRJYWtpbUE1elpl?=
 =?utf-8?B?RTNVend5ekk2MGd3aDk4bjBsckVIbFB6NkVnYVBlcHRGVEhtYWpVQ2lWTFdr?=
 =?utf-8?B?UWdmN2lwYmtmWHBzNzRKYzBGUWRSOUE5YnZqclU2WXNiSWlCQitKNVdLeDVX?=
 =?utf-8?B?eEx5UjhxanZ2MDkrMkZxWWpEaVhBSGY5RkFWY0JEYkNHMERueTQvY01GeFkx?=
 =?utf-8?B?bFZmdGtxQU54RWNleDlpeUp5c2xqZjlrZUhBelVVTzkrQkxFTGpieFBnN0FP?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2d1afc1-a428-4d7b-a3de-08dc18207043
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2024 12:24:38.4305 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KbOa+pbBbW1d8b7IwEBFigMAuKMVUlrBz05C2SgVIXjciLKHdcas/J2w2Dw3241dnk/IKxt0cxNKT51dDFbNHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7766
X-OriginatorOrg: intel.com
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

Quoting Stanislav Lisovskiy (2024-01-17 12:57:16-03:00)
>For debug purposes we need those - error path won't flood the log,
>however there has been already numerous cases, when due to lack
>of debugs, we couldn't immediately tell what was the problem on
>customer machine, which slowed down the investigation, requiring
>to get access to target device and adding those traces manually.
>
>v2: - Make the debug more generic and move it to intel_dram_detect
>      (Gustavo Sousa)
>
>Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
> drivers/gpu/drm/i915/soc/intel_dram.c   | 2 ++
> 2 files changed, 5 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i91=
5/display/intel_bw.c
>index 7f2a50b4f494..77886cc21211 100644
>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>@@ -290,8 +290,10 @@ static int icl_get_qgv_points(struct drm_i915_private=
 *dev_priv,
>                 struct intel_qgv_point *sp =3D &qi->points[i];
>=20
>                 ret =3D intel_read_qgv_point_info(dev_priv, sp, i);
>-                if (ret)
>+                if (ret) {
>+                        drm_dbg_kms(&dev_priv->drm, "Could not read QGV %=
d info\n", i);
>                         return ret;
>+                }
>=20
>                 drm_dbg_kms(&dev_priv->drm,
>                             "QGV %d: DCLK=3D%d tRP=3D%d tRDPRE=3D%d tRAS=
=3D%d tRCD=3D%d tRC=3D%d\n",
>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/=
soc/intel_dram.c
>index 15492b69f698..e957be5bfb35 100644
>--- a/drivers/gpu/drm/i915/soc/intel_dram.c
>+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>@@ -681,6 +681,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
>         if (ret)
>                 return;
>=20
>+        drm_dbg_kms(&i915->drm, "Num qgv points %d\n", dram_info->num_qgv=
_points);
>+

Could we use %u, since num_qgv_points is unsigned?

Aside from that,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>         drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_cha=
nnels);
>=20
>         drm_dbg_kms(&i915->drm, "Watermark level 0 adjustment needed: %s\=
n",
>--=20
>2.37.3
>
