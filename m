Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811738013C1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 20:54:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E659F10E13F;
	Fri,  1 Dec 2023 19:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08C9E10E13F
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 19:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701460486; x=1732996486;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=SE6SvB4USPSLR8U/GRIQt2/3DtDobTYKkBkEXqxG3bM=;
 b=BkUZXH4lhF3vAPhIFz5glCfdzN1A+2/OmO/U6fAnklutTs0NgnDm4boF
 dRJ5ZmE2kxa6svYxQd+Dyvjqqok7VPKDTBSZ9nMYZpT9ExZrcSmbw+aMJ
 DpvQoXJ/8JRnxA6bmRi15OsfxGWO0rNGnwthhppv9QuIP9iNc8Ayvwwcq
 F7CiaYs6kJ2eVjXbu0azlz++QzhSwVyLG17bX3a95O8PY5wbkgvOY28xz
 cn45irCbtI8An5vl9n8VZKZ3SW2zmHAThN7pwWN37+oJLVcmuvE+07leP
 08l71fT/W85++eGVbMU4UUsV3OZ05QgjrkeOlmZemVGPORg1A+nHRucwc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="6832037"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; 
   d="scan'208";a="6832037"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 11:54:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="798840893"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="798840893"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 11:54:45 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 11:54:45 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 11:54:45 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 11:54:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mhdzGnmRV7BwIwojM6v3Em5WM2IpB55CnRObFuAa+3tRApjv8f2jpMoQpGmbCn6jZbXTKRO/ky1dKEC+e+encnFZUHJ7MnMNX795SSGT1p04kJAVBjER6+ZQQ6qwPv2PoAqpMDRF89ov2oubOkzkNLyJLBvrPrhsqpU7ZutQERYO1Fznu1LNNG5qSyYs0NBTKwJRSlNnUt6f2PKRg2eqbqfhZJsX53wdj6C5ODEJDkooL/4h7dT2EycqPn9M56L6LVMIS5V91qeRGXF3eBDx3YRq7eIQquiymsNlHs8sy6UvkAzmcPGLNQCYlN271x5vCrBl3zkHC+FwSUuuzvKWIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dVjCUVHEQC0VNtHAGP081srRSibO+NkUFCW8tQe5IAk=;
 b=KehuQ6UnivJF1gR01i0X4s8jahI5Qd2J8XpxrFNwHJ/QRqcw/xI+qSatiygZFO10uaZXFPdhk5MCsEn/oJcZ7zSi/2FgLQdDX94Z73NC+4h6nodTYAGxVuorJbf/dpPVzFDXQZfI55MC22uVa8n65ZZ3TE/b7HgNlxO57iClJIvOP0M2IMupGvEiLIUC5hs9/Ss5XQXvNslD/HZHG1oh1hoYC6En8dE2pXGBYIivHmT5drpJ7HzOkNwguhJSgcf9F8zo7c4Lg3ZQa03FeNAPbgxdmU8rBe6lNfxy+Vo/U2/bnAwXOzcC+bGmgSP5gQPz+cJfQjVvRD93Oj2EwueCag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB4784.namprd11.prod.outlook.com (2603:10b6:a03:2da::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 19:54:43 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 19:54:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128115138.13238-2-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-2-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 1 Dec 2023 16:54:35 -0300
Message-ID: <170146047554.30932.9967600170736269769@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0153.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::8) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB4784:EE_
X-MS-Office365-Filtering-Correlation-Id: 585efaf7-27a5-489c-17a1-08dbf2a75c2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +uzPiZiTww5XvF/+O/UzvQtHLloC02Ol/iWDgvmTs+bmfUn3nbl1IxwF/5ISuwhDebaezO63GkyxfJttJz+J5fbtfhbE2zXjOScMxpEIUNA/0NnC68j7v11RPh/8gRH6UU3tHeGwgrM+NoJ9bdPdnunVAQshdlHQCCIYGOHCDotj2ZIBBsX99mbamGMoroBGTkGUVSyruB+lPznqx7kHqhtoTCqtzmOYIwqYUgMZRPxYzincDKbufZf/Q0KFU4BkydWZktOaZYyotbajWmJNPdrlbryPq54BaY7UttTq+3b554dXNye9xIa2ERHGZMO00JQ4pMxvKL68LQ7nF8qc920xF3AwllDUnwrV/XGkL1hTJK+D5a7wLP8Uu1nQstUDWpz6IJ2EOfVCAjsj+UHBaL5+g0my5JULaNlLtg/yjg1HWn9otBo0rgjedMEy1+5Mko/i/IpHO34v2v+mca4gaREQyo9CqgYlPU7QgPPzV/s8moxbxpYVTI7HDSZMB9eAnepo6FgU0w7Sr3WXFXyBiqHXF3omB9wFCFDdI/ls3EqvXBuZgG5rQLMWFZ0eJ2wL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(346002)(366004)(39860400002)(396003)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(86362001)(26005)(6506007)(83380400001)(6512007)(9686003)(6666004)(5660300002)(8936002)(8676002)(41300700001)(2906002)(4001150100001)(6486002)(33716001)(44832011)(478600001)(316002)(66476007)(66556008)(66946007)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGI4emRZSExBQXkyaWJqazZMa2N3ZE1rbml2Snd2TUM1UG5najFUS3BSNXZp?=
 =?utf-8?B?RDZvK0VqbGVlMmYzbjltdkJvMWxzSGxLOE1kYnVxMUlNQ3Z3TUk5Z2pQbS9r?=
 =?utf-8?B?djU0L0tzWDh1QVBjSi9sWXJXdE03azhTRWFOU2lSUjUvY0ViS3BYV05wVEtP?=
 =?utf-8?B?SllwaXVDSWo0TlNlSk14amZDNEUvSjBpS1JaQURXcy9rTzVDcjdFRmNCU01V?=
 =?utf-8?B?Y01KN0VsaDJtOUZwMmpleTJya0VvYS9hRmRQT2c0NlhkRE1SSHVqdjVGYU9j?=
 =?utf-8?B?ejJYM3M0dE9ISHdFem5WVlIrVHpOMVJaOGZsODgvUTIvTlZ6ZmhZRXNkRkZJ?=
 =?utf-8?B?TTI5RjNBekZCM2ZvZ05QODRSMXZhT0l1cnZzU1V2R0dDYnlwa21mRmVOcVQ0?=
 =?utf-8?B?bWtwN3pFSUg2amhlWHdkeWwzWW9NY2l6VUZLODRJa3gzc3BtVGtXWVZ5V1Jh?=
 =?utf-8?B?Y2NPTk94ZkJTbnFELzc5djhPOVN5Z3cyUEpWRCtickFGVjRIYU5GOStNeU1q?=
 =?utf-8?B?MWZaQzg5NFV1NVNLVVRFZHFaRFVGbVd5MDZhV2JNY2pxV3VWSkVsUGh5dWx1?=
 =?utf-8?B?eEc0dGFzeG5Zdk15UmZpS1ZJNUJSeTdWWXRHNk9ZWHJQS3JPSUV3KzRDNlpZ?=
 =?utf-8?B?Tks4MVpQdFpqNURTY1loVVRFcE5SSnphUTFXUVJ4V09hUWhhSWQvZGpIN2pN?=
 =?utf-8?B?R3lSNFdTd0Y5cld2ejc2TCtjcEhyekhmQ0ZxY01JcEExa1pvWUl1WEpzNXl5?=
 =?utf-8?B?U09wb0VPL05RNmdYQVNUc2p1aDRpSkE5N3lsbnl3OSsrWHB0V3p6QnNGSVR1?=
 =?utf-8?B?OWhVVzlRQWlnS25TSDIvUXlUdEQwbEFNSDhWTStXcUFBa3kxUVQvckhjdmJP?=
 =?utf-8?B?elp4VnpFcWI4VHhGcVhUVFJPSENYRlNYbHBKNjlrQW8vSm10cVNGa2NjeFdo?=
 =?utf-8?B?Yk14QnNKK3huVEl4RzlraGZJTlZKVUV4eE4xY2p0VFhjMUFiamx3R2ZhdVVR?=
 =?utf-8?B?QkZaU1QwRnYxMkN6RXVRUkROaVlFZVlCelY0T29oQXhKRWFaemNYVWdHU3lZ?=
 =?utf-8?B?cXhBdDNCZDhYS2IwZlVaTitLS1FaVWR5TjlkcG16RmRQcENTR25EZEVTc1VL?=
 =?utf-8?B?RE4wYTl4ZzJxamp1ZkRaR2hBKzBGc0l1eEF0d2VoZDFsZWdrVXJlekJYL0Jl?=
 =?utf-8?B?YUNIN3AyQ1hKUEwwTnVaNmZhUklXZjJqRGRxQS8yM0VvNmtnRnlNcXNSWkxR?=
 =?utf-8?B?Z09GSVIzQkNzUkU3citCNHY4d3VOSzR6K0VmTVJ1WHdyeGtBMEhoa0xzdEk2?=
 =?utf-8?B?L0xMZ2FJUGxoVHRSL1NVMUFIaXhSS09EUWkxL3llM0RaZml6alRCYWpuMnpW?=
 =?utf-8?B?b0FNeUxlUDJpZEFWeDlrNE4xZm1LMDJyMVJQOUNwV2xsOTJBZVR3dmRwNXA1?=
 =?utf-8?B?WUlwZ1NRNWErekgyWVkyaEdRVGUybG1mblBtTUF1VXZpTnFHaHNqc3dwb0J2?=
 =?utf-8?B?ZkQyYk9PQzM1NVNHT3NXQnNLZ0htc1JKcWlBUFlON2NJWHdSWmJPak1IcWY0?=
 =?utf-8?B?R1B6ZVJkR3BobjhSS2k4VDUxTGdCbEJiNURIVXBQVHJHcUtQT2pqNnpuWTdo?=
 =?utf-8?B?YmM0ZTNxbzR0Zm85K21VUE9Vb2plbHdobTIzcGR6TFBuODNNRDkyZytWa0JC?=
 =?utf-8?B?OVZBVVdPWVFZdmhaQmlEOE93M3hTc1NmejZrcVpRV2djeCtPNlNmRWNxZGpQ?=
 =?utf-8?B?b1VCUFRzcmRJNkNoSHFrZVFOVjlueGQ1Y1kwbklqZWc2VUpPZmd6NlFYOWc0?=
 =?utf-8?B?b0FuWmlQVzMxSmoyVVpGdlVROWMrYy91QWNwRFlXQk9ONzBrOGREMmEvVHEw?=
 =?utf-8?B?cmlqT2o2VkVJN3pyTWgySHhlL1lNNDRXcDZXUzIwelZ4RDZiOGNMSlhYMWRl?=
 =?utf-8?B?TWdLOVdDL2xZMkUrYTY3cGpyTkR3VjVWZFlGbFFCWkVxR2lQQ1hBUEswc1Nu?=
 =?utf-8?B?OCtXR0xtSkhQN3RXc3Z5WnlwWjZ1bHMvZUR0V1UrS2FVRG4rY3ZicktrWTRz?=
 =?utf-8?B?RzkrUjBEbDF4MWxOdkdYcjZwV0t1Uy82R09zdmFHOUpaZnNaZmFYVUR4NFA2?=
 =?utf-8?B?clBjdGNCeWMxRXc2M0J0YUpHK2FhWVZsZ05DSlpYdDZYNllMOCtOcS8vTU82?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 585efaf7-27a5-489c-17a1-08dbf2a75c2a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 19:54:43.2415 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lf2hreu+SOgngsbNpkwgDtj788cuCN1C3nFUXk/cgsVyilS7tiBFSN9eC9OwJgQ2+c+TGapP3nkXUmgOqozTvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4784
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/cdclk: s/-1/~0/ when dealing
 with unsigned values
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

Quoting Ville Syrjala (2023-11-28 08:51:31-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>cdclk_pll_is_unknown() used ~0 when checking for the "VCO is
>unknown" value, but the assignment uses -1. They are the same
>in the end, but let's use the same ~0 form on both sides for
>consistency.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index b93d1ad7936d..0dca29ec799b 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1180,7 +1180,7 @@ static void skl_sanitize_cdclk(struct drm_i915_priva=
te *dev_priv)
>         /* force cdclk programming */
>         dev_priv->display.cdclk.hw.cdclk =3D 0;
>         /* force full PLL disable + enable */
>-        dev_priv->display.cdclk.hw.vco =3D -1;
>+        dev_priv->display.cdclk.hw.vco =3D ~0;
> }
>=20
> static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
>@@ -2075,7 +2075,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_priva=
te *dev_priv)
>         dev_priv->display.cdclk.hw.cdclk =3D 0;
>=20
>         /* force full PLL disable + enable */
>-        dev_priv->display.cdclk.hw.vco =3D -1;
>+        dev_priv->display.cdclk.hw.vco =3D ~0;
> }
>=20
> static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
>--=20
>2.41.0
>
