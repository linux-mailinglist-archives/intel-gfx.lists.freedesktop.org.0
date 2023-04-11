Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8B36DE774
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 00:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BA9510E06E;
	Tue, 11 Apr 2023 22:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D982810E06E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 22:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681253278; x=1712789278;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=FD+cU9ij76ugFHv8uM44DCXRcV2KeR9oYf+AfixWU7I=;
 b=Ii6b8CSwsc0oaW1+mcypVCfZ8QSfeOXGORwReFHTNqp21IuWQoVv4Wlh
 EChnwPTazxIjGSWPg61w6OCpmkkpOsmOawN3m2TnQBkdOE4zkEGKu8kZO
 Cssx4KvGoK/UKYplFfzr0M8A2vpbjJJmOzZwJlX9lFvxMwR7uvce/KbXe
 MqRwtFQZKmgFoOdtcNI6UYtaCBSyF0m8gKPoDVT/ZY55odpIVw+Tpfn/y
 3kZKl7+Rh+N/1XGkT2Bcz8ugzojBhU8AA55Waz11u6jxW7BBTYMrWdi0E
 dy2wQnD49hHOeoNgMuPZajS/ViUGqBHFS+bPJBoApVZEPVCgxO+e8WDnr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="346425563"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="346425563"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 15:47:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="863071713"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="863071713"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 11 Apr 2023 15:47:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 15:47:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 15:47:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 11 Apr 2023 15:47:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 11 Apr 2023 15:47:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SytvqQgkL5G5jO4ogk70ZFEZ72H1Nre1uj1oVptH/iWvY0EIyCGm8N9VtT2eZYPHFx8vyEg8lxNPt0D/7Jc/LlcvNQEX+yLEjRcOqfwucK/q/BfjCD3coFuWUVfV8oamapga/LJSLLDKf6O03pocsdt6otK736Anh9xTqNYn9/xOTtpd2kRXxTKJ3DcFPU1tauX1QofmD2UFyctCiGMbs7qksl0fvnyC90T3bF+/e8bWD95xr9XD9UU0aWzX3Wg7lc/PI1e71j3/24UF2G5LNcsMnLN2xzCCfgqfnnC92oaXbjoo4hDB34tiTWmxtf01eu1SN8sb55nbdSkx+q2a2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XVn/5epwm5z/JEtei6eiWTUos4xp5bus7LxvvAxhTWU=;
 b=c02+4jYe75r5JRQasvb41hSKhWe4pJD6ZMMHQXQ9KxQPoiis9MOwS+4nImWkpnTx7C+/FatW6jqaCTQ2GqLhr2/1N22432TiNwCRS3GnoWOpvszSe9lTbSLysWld6xzSiGXp/zfYrhcDgSOHsqpzug2WjiWnlYX8G2vSR8d3Qvre7ZY+Qu9Lh9Hr3zaMpSThmc9s2VY70DISCFz1ZaBkRZ8EixeJDHUyN/8UiBRofAvt4+bmLst3mufZkl2WfJdyUnV484K4UNoEUdCj6BJ6NOmUarvnGwg8a5a7RWLnTveIAC8zE787bAEnrtrmmV2a8/N7isiTloQrZosehjXg7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW4PR11MB6934.namprd11.prod.outlook.com (2603:10b6:303:229::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.30; Tue, 11 Apr
 2023 22:47:54 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6277.035; Tue, 11 Apr 2023
 22:47:54 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230403085043.2219092-1-mika.kahola@intel.com>
References: <20230403085043.2219092-1-mika.kahola@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 11 Apr 2023 19:47:45 -0300
Message-ID: <168125326577.3326.16288863179121640086@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR11CA0101.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::42) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW4PR11MB6934:EE_
X-MS-Office365-Filtering-Correlation-Id: 6de6027a-344f-42d9-8d9a-08db3adec939
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FhMHwXCHGTmJJHgvp7wnufx2KpHDJf6FZgGTNOKxsOMMTFMu4D7JZXcEWfjXRDfjgYKmGcEaeHKQrlL1P239hwIMrzkpNf8AvVv40dtYOsdzL5Nrs3TC7GipeM08SJJvt8Goph2sdZNuyFHGsTs5hw+hL2xPX8+5RqxqY3/0RlJp9OiHWLkOigZeQ1ES4mg/Q0TLNIAWmgMbpWoIjG3fnRe4Ka8T8kAA+adcMWzi4i/3+XRFi9Nz5cNeCTysoV9Z5aJICodbahoVAMpKS9WNRBEqEvaQuXkgE9vNCmLw+5q41/18jXh/xQwq+Ny5U/mU9D803xwex597NqB1U0DsHnt8+KXx4yKgJ+oHpfb6H0bsXiMGnoDGFTRSIDh2QESpuUQZx0d0pKwRtfIAIUz8iiLRBDMIswUGD01Zp7IDDrUWa2dlDQZVBuxzZwhJCTKcdrvkdYkhIGZpXLlADwqnK17/knKBf2BvkteO0cioDsoallFxA8C86YUMYpgqKuwXR9ysL0BeO6KEY28UI2LObR9vls+YXapBfw1cV/GgI8uCw6TPbXlBdyotrgENLxLn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(376002)(136003)(346002)(39860400002)(396003)(451199021)(6486002)(2906002)(478600001)(83380400001)(107886003)(54906003)(30864003)(33716001)(5660300002)(6506007)(316002)(9686003)(6512007)(6666004)(26005)(41300700001)(8936002)(186003)(66556008)(4326008)(8676002)(66946007)(44832011)(66476007)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekFveXpGSXJLTzVtNm1SQnBaV09FV3pyQWhSN1RTd2VKV00vdVJ0RzFWKzNy?=
 =?utf-8?B?K0JINU8zTWdsbXFEWXF1WC9VTzl2b2xsV0UrMjFrdkI4Q0VrbC9iZEQxTlFY?=
 =?utf-8?B?L0pkY0VmZGRiQkJMK2FCcEpSK0dPUFlOUnlqczFuQ0pBeTdVMnR4bGdkRUl0?=
 =?utf-8?B?ZElnTytRcUwxSHlRUEkyZ0hrQmQ4Z3VUWUI1aW96K0U5bUliRGJtb0NkNXFR?=
 =?utf-8?B?K3hnUDdMSy9uR0U0MFlaeEI3cXFnbXpydmM0MmlMblNHM0FtaXRLSGxkT3Fj?=
 =?utf-8?B?aVVyQVlpcDg0SUpOaGRSOC9YRmZvL0NyMjRyUzVkR0RUSnpkajc1ODNDcUZt?=
 =?utf-8?B?cEpEYkxNSUprNGM0QVN4Yll3YTlhSmNoK29FdXMxUmxOYUY1NnhLSi9vZzlx?=
 =?utf-8?B?cDNpTmY5TGNiWE9SWXdWcTkwSFpFZFJORVlnK2JwR0V6SXU5NVN4cXdFcjhu?=
 =?utf-8?B?eEUyL0RkQUFSMVVUaENNNlhIOTFUV3VPTG0rd3hYNVd0MW1hL3lidmxDTEdI?=
 =?utf-8?B?cWxuVEkrRnpQSWpBcVduRW0wSGgwYVNDSkNxcThheVIzVE1EaUV6K2JtM3dn?=
 =?utf-8?B?TFVxVElZRVp5d0lTQkdMT0V2WGlUY2N1TU1aeGswM1B0T3pxUWhCV2cyZmNo?=
 =?utf-8?B?OW9oUUIzcUJuaVNUWWc3bzhzK2RzekJobytoOTJGNGpnVlFLc3A3Uk9wT1pk?=
 =?utf-8?B?YTFoL3VyTjJTendFeWROOGtyZmhFS1ZSdnlyZWdhUjg5ckp6am5rbjlEZTZw?=
 =?utf-8?B?T1RISlJ5MmVzcE1qcGUzTEV4d0I0Z2NwTlZrZUlsdS9DaExsZ2tUTjNOMDJo?=
 =?utf-8?B?T0sxd3Y5ZjVkMU1WTGREcTRzOTdHTzA3R1FIOThiR2F2eEpJQlhWV1h3MzJZ?=
 =?utf-8?B?dDJQYVFQMERJK2Nsbjc3Vks1WW1DSlNlMXlnZ3MxMXdpK2FJN2pFa3dva0xN?=
 =?utf-8?B?OGZZZEphdWR5QVZvejhyTVpsaldMalY3V3N5Qk96Z0oxK3hMeTAvaFpmZHk5?=
 =?utf-8?B?SjdLa25EN3ZxTTR1L1FrRmQvc2MyQkI5U0U5ZWVEdmxhUjErcXpLbGtQTHJN?=
 =?utf-8?B?NE1ENEhRa21HNnZuQ0JCU3hlWldOWkV2NTRaemVuNWpPR0ttMlBYb2ZPdTNs?=
 =?utf-8?B?U2VyVmpTMTZSbEszVWVocUxVeHhmb29jaEFSVVdlcGZSUUd3c3pEWjU5QVpE?=
 =?utf-8?B?ZVNiblQ0U2JDNTZLZGloOWdVdGdLelFmVU10a2ZuZ05sRW1oNDA0WVF0dmJl?=
 =?utf-8?B?WCt3USt3UDFDZ3l5c0ovTDZoUHpYWmZlQW9HYXVmaGM0cFdzRVd3YjE2MnZB?=
 =?utf-8?B?Tk1SQU45WDFYcEtTMktJcHNrOXhyVGJxZlFQVVZzdms2WTh0Y2ZuRjN2T2pk?=
 =?utf-8?B?bE1ZbTlMY2t2cHoxd1VlZk1aN0x0OHM1RmhtWlZxdkczTkVERjNubFVsVzNE?=
 =?utf-8?B?QlJJMXVtSmR4bGdSbDMzTUtiTWhPQ1R1aEZReWREcVV6dTdHaGMrSWJXaDU3?=
 =?utf-8?B?TGNKZk9ubzZHSjVIRnBJNGV3bTVXbFpyR1g1cHBQdk1NL1ZXaC9lQkJEV2hR?=
 =?utf-8?B?bytuMHViTTI4ekV3UHhQWUxhYzNmUWlzMXdodDZyUi9IQ205TzYzRXFDdFU5?=
 =?utf-8?B?V2Y5WGlOcUhDQkVWamZOcGlKRHEwMHRiWEpXbFdQbzJKQUhmdW1OMUEyRzNs?=
 =?utf-8?B?bDRMWXdDRjZNVFFsK29OWEJGWlZaSkVtV0dWbW9jL2traUVNcEZVUFV1S1U0?=
 =?utf-8?B?R2N0d3llV3FHK1h1aUxCL015cCsyNGxnV1B0V1NDMTM4ZjN4SFNQbnlHaXV6?=
 =?utf-8?B?b2lJVDR0aTBMaDhxSDg0S0tydTNFTGc5TVQwakU3blJRSWh4eFMzSTdtZEZo?=
 =?utf-8?B?VmY5emdJaG9FTmV6bGZJQXFsUk5BL2llNC9STVlRMlRaK21TQ2Nha1BGTmtJ?=
 =?utf-8?B?WEQyc1I2VGg1WXg0MTNJT2V6Y3NlMW5IZGxpTnh1dzA1S2NvZDBBWitpd1Vt?=
 =?utf-8?B?Yy9pTnNnSjVFdUNsMnpyaDlvNEFoSEt6NlBLUkZ2djRQNUVNSXFCaFVRdndD?=
 =?utf-8?B?dmErSW1yUzcyV1hTa3NCZFRZYnFvNzhXbXRBSFliVnlNY0phWXNENHhpU3BZ?=
 =?utf-8?B?MEVaamxtZUNjMkpzSVVscXp0c01Xa2FZOWFmSERUV2IwcU1LbGpjQW90b3NY?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6de6027a-344f-42d9-8d9a-08db3adec939
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 22:47:54.1939 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WmB9UVRI9qqFgy4Gvd5C1qKQih/rO89Kb0xE5n2v4VUTpO07qPP2cFlPAHHVIVTJzmOKOisF8KFbIox/77BfBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for PM DEMAND
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
Cc: Lucas
 De Marchi <lucas.demarchi@intel.com>, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kahola (2023-04-03 05:50:43)
> Display14 introduces a new way to instruct the PUnit with
> power and bandwidth requirements of DE. Add the functionality
> to program the registers and handle waits using interrupts.
> The current wait time for timeouts is programmed for 10 msecs to
> factor in the worst case scenarios. Changes made to use REG_BIT
> for a register that we touched(GEN8_DE_MISC_IER _MMIO).
>=20
> v2:
>   - Removed repeated definition of dbuf, which has been moved to struct
>     intel_display. (Gustavo)
>   - s/dev_priv->dbuf/dev_priv->display.dbuf/ (Gustavo)
>=20
> Bspec: 66451, 64636, 64602, 64603
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       |   4 +-
>  drivers/gpu/drm/i915/display/intel_bw.h       |   2 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  14 +
>  .../drm/i915/display/intel_display_power.c    |   8 +
>  drivers/gpu/drm/i915/i915_drv.h               |   6 +
>  drivers/gpu/drm/i915/i915_irq.c               |  22 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  33 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 293 ++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.h               |  35 +++
>  9 files changed, 412 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 202321ffbe2a..87c20bf52123 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -746,8 +746,8 @@ static unsigned int intel_bw_num_active_planes(struct=
 drm_i915_private *dev_priv
>         return num_active_planes;
>  }
> =20
> -static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv=
,
> -                                 const struct intel_bw_state *bw_state)
> +unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
> +                          const struct intel_bw_state *bw_state)
>  {
>         unsigned int data_rate =3D 0;
>         enum pipe pipe;
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index f20292143745..17fc0b61db04 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -62,6 +62,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>                           const struct intel_crtc_state *crtc_state);
> +unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
> +                          const struct intel_bw_state *bw_state);
>  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>                                   u32 points_mask);
>  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b53a1d969344..ee7ca33123b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -959,6 +959,9 @@ intel_get_crtc_new_encoder(const struct intel_atomic_=
state *state,
>                 num_encoders++;
>         }
> =20
> +  if (!encoder)
> +          return NULL;
> +

I believe callers of this function expect a warning to be issued if no enco=
der
(or more than one) was found for the crtc. With this we are changing that
behavior.

>         drm_WARN(encoder->base.dev, num_encoders !=3D 1,
>                  "%d encoders for pipe %c\n",
>                  num_encoders, pipe_name(master_crtc->pipe));
> @@ -6767,6 +6770,10 @@ int intel_atomic_check(struct drm_device *dev,
>                 ret =3D intel_modeset_calc_cdclk(state);
>                 if (ret)
>                         return ret;
> +
> +          ret =3D intel_pmdemand_atomic_check(state);
> +          if (ret)
> +                  goto fail;
>         }
> =20
>         ret =3D intel_atomic_check_crtcs(state);
> @@ -7411,6 +7418,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>         }
> =20
>         intel_sagv_pre_plane_update(state);
> +  intel_pmdemand_pre_plane_update(state);
> =20
>         /* Complete the events for pipes that have now been disabled */
>         for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) =
{
> @@ -7523,6 +7531,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>                 intel_verify_planes(state);
> =20
>         intel_sagv_post_plane_update(state);
> +  intel_pmdemand_post_plane_update(state);
> =20
>         drm_atomic_helper_commit_hw_done(&state->base);
> =20
> @@ -8250,6 +8259,7 @@ void intel_init_display_hooks(struct drm_i915_priva=
te *dev_priv)
>         intel_color_init_hooks(dev_priv);
>         intel_init_cdclk_hooks(dev_priv);
>         intel_audio_hooks_init(dev_priv);
> +  intel_init_pmdemand(dev_priv);

I think intel_init_display_hooks() is meant to call functions setting up
function pointers, right? That would not be the case for intel_init_pmdeman=
d().

I think we could rename intel_init_pmdemand() to
intel_pmdemand_init_early() and call it inside i915_driver_early_probe().

> =20
>         intel_dpll_init_clock_hook(dev_priv);
> =20
> @@ -8476,6 +8486,10 @@ int intel_modeset_init_noirq(struct drm_i915_priva=
te *i915)
>         if (ret)
>                 goto cleanup_vga_client_pw_domain_dmc;
> =20
> +  ret =3D intel_pmdemand_init(i915);
> +  if (ret)
> +          goto cleanup_vga_client_pw_domain_dmc;
> +
>         init_llist_head(&i915->display.atomic_helper.free_list);
>         INIT_WORK(&i915->display.atomic_helper.free_work,
>                   intel_atomic_helper_free_state_worker);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 5e85572dc8e4..04c172b5c17b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -19,6 +19,7 @@
>  #include "intel_mchbar_regs.h"
>  #include "intel_pch_refclk.h"
>  #include "intel_pcode.h"
> +#include "intel_pm.h"
>  #include "intel_pps_regs.h"
>  #include "intel_snps_phy.h"
>  #include "skl_watermark.h"
> @@ -1083,6 +1084,10 @@ static void gen9_dbuf_enable(struct drm_i915_priva=
te *dev_priv)
>         dev_priv->display.dbuf.enabled_slices =3D
>                 intel_enabled_dbuf_slices_mask(dev_priv);
> =20
> +  if (DISPLAY_VER(dev_priv) >=3D 14)
> +          intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
> +                                      dev_priv->display.dbuf.enabled_sli=
ces);
> +
>         /*
>          * Just power up at least 1 slice, we will
>          * figure out later which slices we have and what we need.
> @@ -1094,6 +1099,9 @@ static void gen9_dbuf_enable(struct drm_i915_privat=
e *dev_priv)
>  static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
>  {
>         gen9_dbuf_slices_update(dev_priv, 0);
> +
> +  if (DISPLAY_VER(dev_priv) >=3D 14)
> +          intel_program_dbuf_pmdemand(dev_priv, 0);
>  }
> =20
>  static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index e771fdc3099c..2a73e726c6ed 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -250,6 +250,12 @@ struct drm_i915_private {
>         unsigned int hpll_freq;
>         unsigned int czclk_freq;
> =20
> +  struct {
> +          wait_queue_head_t waitqueue;
> +          struct mutex lock;
> +          struct intel_global_obj obj;
> +  } pmdemand;
> +
>         /**
>          * wq - Driver workqueue for GEM.
>          *
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index c0888cc88d04..636033bb9650 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1913,6 +1913,11 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915=
_private *dev_priv)
>                 return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
>  }
> =20
> +static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv=
)
> +{
> +  wake_up_all(&dev_priv->pmdemand.waitqueue);
> +}
> +
>  static void
>  gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  {
> @@ -1949,6 +1954,18 @@ gen8_de_misc_irq_handler(struct drm_i915_private *=
dev_priv, u32 iir)
>                 }
>         }
> =20
> +  if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR) {
> +          drm_dbg(&dev_priv->drm,
> +                  "Error waiting for Punit PM Demand Response\n");
> +          intel_pmdemand_irq_handler(dev_priv);
> +          found =3D true;
> +  }
> +
> +  if (iir & XELPDP_PMDEMAND_RSP) {
> +          intel_pmdemand_irq_handler(dev_priv);
> +          found =3D true;
> +  }
> +

Two comments here:

  1. Shouldn't we also make sure that DISPLAY_VER(dev_priv) >=3D 14 before
     checking those bits?

  2. Intuitively, I would agree that XELPDP_PMDEMAND_RSPTOUT_ERR and
     XELPDP_PMDEMAND_RSP should not happen at the same time, but to be safe=
, I
     would replace the above two ifs above with something like below:

      if (iir & (XELPDP_PMDEMAND_RSP | XELPDP_PMDEMAND_RSPTOUT_ERR)) {
              if (irr & XELPDP_PMDEMAND_RSPTOUT_ERR)
                      drm_dbg(&dev_priv->drm,
                              "Error waiting for Punit PM Demand Response\n=
");
              intel_pmdemand_irq_handler(dev_priv);
              found =3D true;
      }

>         if (!found)
>                 drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n")=
;
>  }
> @@ -3315,7 +3332,10 @@ static void gen8_de_irq_postinstall(struct drm_i91=
5_private *dev_priv)
>         if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>                 de_port_masked |=3D BXT_DE_PORT_GMBUS;
> =20
> -  if (DISPLAY_VER(dev_priv) >=3D 11) {
> +  if (DISPLAY_VER(dev_priv) >=3D 14)
> +          de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
> +                            XELPDP_PMDEMAND_RSP;

Although the sequence for PM Demand in the BSpec does not mention it, there=
 is
also a PM_DMD_msg_error bit in the interrupt register. I wonder if we shoul=
d
handle it as well.

> +  else if (DISPLAY_VER(dev_priv) >=3D 11) {
>                 enum port port;
> =20
>                 if (intel_bios_is_dsi_present(dev_priv, &port))
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 8d26fa2765c1..7f8e750665ed 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4783,8 +4783,10 @@
>  #define GEN8_DE_MISC_IMR _MMIO(0x44464)
>  #define GEN8_DE_MISC_IIR _MMIO(0x44468)
>  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
> -#define  GEN8_DE_MISC_GSE         (1 << 27)
> -#define  GEN8_DE_EDP_PSR          (1 << 19)
> +#define  XELPDP_PMDEMAND_RSPTOUT_ERR      REG_BIT(27)
> +#define  GEN8_DE_MISC_GSE         REG_BIT(27)
> +#define  GEN8_DE_EDP_PSR          REG_BIT(19)
> +#define  XELPDP_PMDEMAND_RSP              REG_BIT(3)
> =20
>  #define GEN8_PCU_ISR _MMIO(0x444e0)
>  #define GEN8_PCU_IMR _MMIO(0x444e4)
> @@ -4847,6 +4849,33 @@
>  #define  GEN11_HOTPLUG_CTL_SHORT_DETECT(hpd_pin)       (1 << (_HPD_PIN_T=
C(hpd_pin) * 4))
>  #define  GEN11_HOTPLUG_CTL_NO_DETECT(hpd_pin)          (0 << (_HPD_PIN_T=
C(hpd_pin) * 4))
> =20
> +#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)           _MMIO(0x45230 =
+ 4 * (dword))
> +#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK          REG_GENMASK(31, 16)
> +#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)                    REG_FIELD_PREP=
(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
> +#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK               REG_GENMASK(14=
, 12)
> +#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)         REG_FIELD_PREP(XELPDP_=
PMDEMAND_VOLTAGE_INDEX_MASK, x)
> +#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK               REG_GENMASK(11=
, 8)
> +#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)         REG_FIELD_PREP(XELPDP_=
PMDEMAND_QCLK_GV_INDEX_MASK, x)
> +#define  XELPDP_PMDEMAND_PIPES_MASK                       REG_GENMASK(7,=
 6)
> +#define  XELPDP_PMDEMAND_PIPES(x)                 REG_FIELD_PREP(XELPDP_=
PMDEMAND_PIPES_MASK, x)
> +#define  XELPDP_PMDEMAND_DBUFS_MASK                       REG_GENMASK(5,=
 4)
> +#define  XELPDP_PMDEMAND_DBUFS(x)                 REG_FIELD_PREP(XELPDP_=
PMDEMAND_DBUFS_MASK, x)
> +#define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2,=
 0)
> +#define  XELPDP_PMDEMAND_PHYS(x)                          REG_FIELD_PREP=
(XELPDP_PMDEMAND_PHYS_MASK, x)
> +
> +#define  XELPDP_PMDEMAND_REQ_ENABLE                       REG_BIT(31)
> +#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK          REG_GENMASK(30, 20)
> +#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)                    REG_FIELD_PREP=
(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
> +#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK         REG_GENMASK(18, 8)
> +#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)                   REG_FIELD_PREP=
(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
> +#define  XELPDP_PMDEMAND_SCALERS_MASK                     REG_GENMASK(6,=
 4)
> +#define  XELPDP_PMDEMAND_SCALERS(x)                       REG_FIELD_PREP=
(XELPDP_PMDEMAND_SCALERS_MASK, x)
> +#define  XELPDP_PMDEMAND_PLLS_MASK                        REG_GENMASK(2,=
 0)
> +#define  XELPDP_PMDEMAND_PLLS(x)                  REG_FIELD_PREP(XELPDP_=
PMDEMAND_PLLS_MASK, x)
> +
> +#define GEN12_DCPR_STATUS_1                               _MMIO(0x46440)
> +#define  XELPDP_PMDEMAND_INFLIGHT_STATUS          REG_BIT(26)
> +
>  #define ILK_DISPLAY_CHICKEN2   _MMIO(0x42004)
>  /* Required on all Ironlake and Sandybridge according to the B-Spec. */
>  #define  ILK_ELPIN_409_SELECT  (1 << 25)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index c45af0d981fd..877997e4141d 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -25,6 +25,10 @@
>   *
>   */
> =20
> +#include <linux/bitops.h>
> +
> +#include "display/intel_bw.h"
> +#include "display/intel_cdclk.h"
>  #include "display/intel_de.h"
>  #include "display/intel_display.h"
>  #include "display/intel_display_trace.h"
> @@ -40,6 +44,14 @@
>  #include "intel_pm.h"
>  #include "vlv_sideband.h"
> =20
> +bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
> +{
> +        if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))
> +                return true;
> +
> +        return false;
> +}
> +
>  struct drm_i915_clock_gating_funcs {
>         void (*init_clock_gating)(struct drm_i915_private *i915);
>  };
> @@ -124,6 +136,287 @@ static void glk_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>                    PWM1_GATING_DIS | PWM2_GATING_DIS);
>  }
> =20
> +static struct intel_global_state *intel_pmdemand_duplicate_state(struct =
intel_global_obj *obj)
> +{
> +  struct intel_pmdemand_state *pmdmnd_state;
> +
> +  pmdmnd_state =3D kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_KERNEL=
);
> +  if (!pmdmnd_state)
> +          return NULL;
> +
> +  return &pmdmnd_state->base;
> +}
> +
> +static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
> +                                   struct intel_global_state *state)
> +{
> +  kfree(state);
> +}
> +
> +static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
> +  .atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
> +  .atomic_destroy_state =3D intel_pmdemand_destroy_state,
> +};
> +
> +struct intel_pmdemand_state *
> +intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
> +{
> +  struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +  struct intel_global_state *pmdemand_state;
> +
> +  pmdemand_state =3D intel_atomic_get_global_obj_state(state, &dev_priv-=
>pmdemand.obj);
> +  if (IS_ERR(pmdemand_state))
> +          return ERR_CAST(pmdemand_state);
> +
> +  return to_intel_pmdemand_state(pmdemand_state);
> +}
> +
> +int intel_pmdemand_init(struct drm_i915_private *dev_priv)

As general recomendation for the whole patch, we should name pointers to ou=
r
private struct i915 instead of dev_priv, specially for new code.

> +{
> +  struct intel_pmdemand_state *pmdemand_state;
> +
> +  pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
> +  if (!pmdemand_state)
> +          return -ENOMEM;
> +
> +  intel_atomic_global_obj_init(dev_priv, &dev_priv->pmdemand.obj,
> +                               &pmdemand_state->base, &intel_pmdemand_fu=
ncs);
> +
> +  return 0;
> +}
> +
> +void intel_init_pmdemand(struct drm_i915_private *dev_priv)
> +{
> +  mutex_init(&dev_priv->pmdemand.lock);
> +  init_waitqueue_head(&dev_priv->pmdemand.waitqueue);
> +}
> +
> +int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
> +{
> +  struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +  struct intel_pmdemand_state *new_pmdemand_state =3D NULL;

Looks like this initialization is unnecessary.

> +  struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> +  struct intel_crtc *crtc;
> +  struct intel_encoder *encoder;
> +  struct intel_bw_state *new_bw_state;
> +  const struct intel_dbuf_state *new_dbuf_state;
> +  const struct intel_cdclk_state *new_cdclk_state;
> +  int port_clock =3D 0;
> +  unsigned int data_rate;
> +  enum phy phy;
> +  int i, ret;
> +
> +  if (DISPLAY_VER(dev_priv) < 14)
> +          return 0;
> +
> +  new_pmdemand_state =3D intel_atomic_get_pmdemand_state(state);
> +  if (IS_ERR(new_pmdemand_state))
> +          return PTR_ERR(new_pmdemand_state);
> +
> +  ret =3D intel_atomic_lock_global_state(&new_pmdemand_state->base);

I was looking at the other usages of intel_atomic_lock_global_state() and i=
t
seems we do that only when we change the state of our global object. Should=
 we
really be calling it this early for PM Demand?

> +  if (ret)
> +          return ret;
> +
> +  /* Punit figures out the voltage index based on bandwidth*/
> +  new_bw_state =3D intel_atomic_get_bw_state(state);
> +  if (IS_ERR(new_bw_state))
> +          return PTR_ERR(new_bw_state);
> +
> +  /* firmware will calculate the qclck_gc_index, requirement is set to 0=
 */
> +  new_pmdemand_state->qclk_gv_index =3D 0;
> +
> +  data_rate =3D intel_bw_data_rate(dev_priv, new_bw_state);
> +  /* To MBs then to multiples of 100MBs */
> +  data_rate =3D DIV_ROUND_UP(data_rate, 1000);
> +  data_rate =3D DIV_ROUND_UP(data_rate, 100);
> +  new_pmdemand_state->qclk_gv_bw =3D data_rate;
> +
> +  new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
> +  if (IS_ERR(new_dbuf_state))
> +          return PTR_ERR(new_dbuf_state);

Looks like calculation of the mask of active pipes has many users now: PM
Demand, CDCLOCK and watermark related code. Maybe we could refactor the cod=
e in
a future patch so that we have a single source for this value?

> +
> +  i =3D hweight8(new_dbuf_state->active_pipes);
> +  new_pmdemand_state->active_pipes =3D min(i, 3);
> +
> +  new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +  if (IS_ERR(new_cdclk_state))
> +          return PTR_ERR(new_cdclk_state);
> +
> +  new_pmdemand_state->voltage_index =3D new_cdclk_state->logical.voltage=
_level;
> +  /* KHz to MHz */
> +  new_pmdemand_state->cdclk_freq_mhz =3D DIV_ROUND_UP(new_cdclk_state->l=
ogical.cdclk, 1000);
> +
> +  new_pmdemand_state->active_phys_plls_mask =3D 0;
> +
> +  for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_c=
rtc_state, i) {
> +          if (!new_crtc_state->hw.active)
> +                  continue;

Unless I have misunderstood how for_each_oldnew_intel_crtc_in_state() works=
, I
think there is an issue with this loop: we are potentially ignoring CRTCs n=
ot
being modified by the atomic update. This could get us the wrong values for
ddiclk_freq_mhz and active_phys_plls_mask.

While active_phys_plls_mask could be handled like active_pipes (i.e. using =
the
old value as initial and cearing/setting bits using the new states), I don'=
t
think the same is true for ddiclk_freq_mhz.

Since ddiclk_freq_mhz needs to be the maximum port clock value, I'm afraid =
we
can't escape having to check all active crtcs, meaning that we should proba=
bly
iterate with for_each_intel_crtc() and use intel_atomic_get_crtc_state() so=
 we
ensure we get the state for each crtc.

> +
> +          encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> +          if (!encoder)
> +                  continue;
> +
> +          phy =3D intel_port_to_phy(dev_priv, encoder->port);
> +
> +          if (intel_is_c10phy(dev_priv, phy))
> +                  new_pmdemand_state->active_phys_plls_mask |=3D BIT(phy=
);

Since both C10 and PM Demand patches are currently in-flight, to make patch=
 flow
"synchronization" easier, maybe we should send a separate patch doing
C10-specific stuff for PM Demand after both C10 and PM Demand series are
applied?

> +
> +          port_clock =3D max(port_clock, new_crtc_state->port_clock);
> +  }
> +
> +  /* To MHz */
> +  new_pmdemand_state->ddiclk_freq_mhz =3D DIV_ROUND_UP(port_clock, 1000)=
;
> +
> +  /*
> +   * Setting scalers to max as it can not be calculated during flips and
> +   * fastsets without taking global states locks.
> +   */
> +  new_pmdemand_state->scalers =3D 7;
> +
> +  return 0;
> +}
> +
> +static bool intel_pmdemand_check_prev_transaction(struct drm_i915_privat=
e *dev_priv)
> +{
> +  return !((intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
 & XELPDP_PMDEMAND_REQ_ENABLE) ||
> +          (intel_de_read(dev_priv, GEN12_DCPR_STATUS_1) & XELPDP_PMDEMAN=
D_INFLIGHT_STATUS));
> +}
> +
> +static bool intel_pmdemand_req_complete(struct drm_i915_private *dev_pri=
v)
> +{
> +  return !(intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) =
& XELPDP_PMDEMAND_REQ_ENABLE);
> +}
> +
> +static int intel_pmdemand_wait(struct drm_i915_private *dev_priv)
> +{
> +  DEFINE_WAIT(wait);
> +  int ret;
> +  const unsigned int timeout_ms =3D 10;
> +
> +  add_wait_queue(&dev_priv->pmdemand.waitqueue, &wait);

Looking at how wait_event_timeout() is implemented, I think calling
add_wait_queue() and remove_wait_queue() is unnecessary. In fact,
wait_event_timeout() creates its own entry and adds it to the queue (and re=
moves
it afterwards).

> +
> +  ret =3D wait_event_timeout(dev_priv->pmdemand.waitqueue,
> +                           intel_pmdemand_req_complete(dev_priv),
> +                           msecs_to_jiffies_timeout(timeout_ms));
> +  if (ret < 0)

Looking at the documentation of wait_event_timeout(), the returned value sh=
ould
never be negative. I think the correct check here should be (ret =3D=3D 0),=
 which
indicates a timeout and intel_pmdemand_req_complete(dev_priv) still evaluat=
ing
false.

> +          drm_err(&dev_priv->drm,
> +                  "timed out waiting for Punit PM Demand Response\n");
> +
> +  remove_wait_queue(&dev_priv->pmdemand.waitqueue, &wait);
> +
> +  return ret;
> +}
> +
> +/* Required to be programmed during Display Init Sequences. */
> +void intel_program_dbuf_pmdemand(struct drm_i915_private *dev_priv,
> +                           u8 dbuf_slices)
> +{
> +  mutex_lock(&dev_priv->pmdemand.lock);
> +  if (drm_WARN_ON(&dev_priv->drm,
> +                  !intel_pmdemand_check_prev_transaction(dev_priv)))
> +          goto unlock;
> +
> +  intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
> +               XELPDP_PMDEMAND_DBUFS_MASK,
> +               XELPDP_PMDEMAND_DBUFS(hweight32(dbuf_slices)));
> +  intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
> +               XELPDP_PMDEMAND_REQ_ENABLE);
> +
> +  intel_pmdemand_wait(dev_priv);
> +unlock:
> +  mutex_unlock(&dev_priv->pmdemand.lock);
> +}
> +
> +static void intel_program_pmdemand(struct drm_i915_private *dev_priv,
> +                             const struct intel_pmdemand_state *new,
> +                             const struct intel_pmdemand_state *old)

Looking at how this is implemented and called, I understand that calling th=
is
with old !=3D NULL means the update is for "increased values" and, with old=
 as
NULL, means the update is for "decreased values". Nitpick: I would leave a
comment just for clarity.

> +{
> +  u32 val, tmp;
> +
> +#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
> +  val &=3D (~(XELPDP_PMDEMAND_##F##_MASK));         \
> +  val |=3D (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f=
))); \
> +} while (0)
> +
> +  mutex_lock(&dev_priv->pmdemand.lock);
> +  if (drm_WARN_ON(&dev_priv->drm,
> +                  !intel_pmdemand_check_prev_transaction(dev_priv)))

Shouldn't we actually wait and timeout here? If so, we could probably do th=
at
inside intel_pmdemand_check_prev_transaction() and rename it to
intel_pmdemand_wait_prev_transaction().

> +          goto unlock;
> +
> +  /*
> +   * TODO: Update programming PM Demand for
> +   * PHYS, PLLS, DDI_CLKFREQ, SCALARS
> +   */
> +  val =3D intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
> +  UPDATE_PMDEMAND_VAL(val, QCLK_GV_INDEX, qclk_gv_index);
> +  UPDATE_PMDEMAND_VAL(val, QCLK_GV_BW, qclk_gv_bw);

I couldn't find instructions in the BSpec regarding SAGV for "increased val=
ues"
and "decreased values" (differently from other sequences like Voltage Switc=
hing,
where there are separate PM Demand steps for increased and decreased values=
).

Am I missing it? Or should we instead just use the new value here
unconditionally?

> +  UPDATE_PMDEMAND_VAL(val, VOLTAGE_INDEX, voltage_index);
> +  UPDATE_PMDEMAND_VAL(val, PIPES, active_pipes);
> +  UPDATE_PMDEMAND_VAL(val, DBUFS, dbufs);
> +  tmp =3D hweight32(new->active_phys_plls_mask);
> +  if (old)
> +          tmp =3D max(tmp, hweight32(old->active_phys_plls_mask));
> +  val |=3D XELPDP_PMDEMAND_PHYS(tmp);
> +
> +  intel_de_write(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0), val);
> +
> +  val =3D intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
> +  UPDATE_PMDEMAND_VAL(val, CDCLK_FREQ, cdclk_freq_mhz);
> +  UPDATE_PMDEMAND_VAL(val, DDICLK_FREQ, ddiclk_freq_mhz);
> +  UPDATE_PMDEMAND_VAL(val, SCALERS, scalers);
> +  /*
> +   * Active_PLLs starts with 1 because of CDCLK PLL.
> +   * TODO: Missing to account genlock filter when it gets used.
> +   */
> +  val |=3D XELPDP_PMDEMAND_PLLS(tmp + 1);
> +
> +  intel_de_write(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), val);
> +
> +#undef UPDATE_PM_DEMAND_VAL
> +
> +  intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0, XELPDP_=
PMDEMAND_REQ_ENABLE);
> +
> +  intel_pmdemand_wait(dev_priv);
> +unlock:
> +  mutex_unlock(&dev_priv->pmdemand.lock);
> +}
> +
> +void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
> +{
> +  struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +  const struct intel_pmdemand_state *new_pmdmnd_state =3D
> +          intel_atomic_get_new_pmdemand_state(state);
> +  const struct intel_pmdemand_state *old_pmdmnd_state =3D
> +          intel_atomic_get_old_pmdemand_state(state);
> +
> +  if (DISPLAY_VER(dev_priv) < 14)
> +          return;
> +
> +  if (!new_pmdmnd_state ||
> +      memcmp(new_pmdmnd_state, old_pmdmnd_state, sizeof(*new_pmdmnd_stat=
e)) =3D=3D 0)

We are comparing the whole structure here, including fields specific to str=
uct
intel_global_state (which are modified when the state is duplicated). As su=
ch, I
thinkg this comparison has potential to yield false positives (i.e. making =
us
think that the state has changed while it has not).

We should have a function intel_pmdemand_state_changed() that compares only=
 data
specific to PM Demand. The implementation could be done by either (i) compa=
ring
member by member or (ii) combining offsetof() with sizeof() to get the corr=
ect
slice of memory to compare with memcmp(). I would go with (ii).

> +          return;
> +
> +  intel_program_pmdemand(dev_priv, new_pmdmnd_state, old_pmdmnd_state);
> +}
> +
> +void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
> +{
> +  struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +  const struct intel_pmdemand_state *new_pmdmnd_state =3D
> +          intel_atomic_get_new_pmdemand_state(state);
> +  const struct intel_pmdemand_state *old_pmdmnd_state =3D
> +          intel_atomic_get_old_pmdemand_state(state);
> +
> +  if (DISPLAY_VER(dev_priv) < 14)
> +          return;
> +
> +  if (!new_pmdmnd_state ||
> +      memcmp(new_pmdmnd_state, old_pmdmnd_state, sizeof(*new_pmdmnd_stat=
e)) =3D=3D 0)
> +          return;
> +
> +  intel_program_pmdemand(dev_priv, new_pmdmnd_state, NULL);
> +}
> +
>  static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>         /*
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index f774bddcdca6..2663bec408c7 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -8,11 +8,46 @@
> =20
>  #include <linux/types.h>
> =20
> +#include "display/intel_global_state.h"
> +
>  struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_plane_state;
> =20
>  void intel_init_clock_gating(struct drm_i915_private *dev_priv);
> +void intel_init_pmdemand(struct drm_i915_private *dev_priv);
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
> =20
> +struct intel_pmdemand_state {
> +  struct intel_global_state base;
> +
> +  u16 qclk_gv_bw;
> +  u8 voltage_index;
> +  u8 qclk_gv_index;
> +  u8 active_pipes;
> +  u8 dbufs;
> +  u8 active_phys_plls_mask;
> +  u16 cdclk_freq_mhz;
> +  u16 ddiclk_freq_mhz;
> +  u8 scalers;
> +};
> +
> +int intel_pmdemand_init(struct drm_i915_private *dev_priv);
> +
> +struct intel_pmdemand_state *
> +intel_atomic_get_pmdemand_state(struct intel_atomic_state *state);
> +
> +#define to_intel_pmdemand_state(x) container_of((x), struct intel_pmdema=
nd_state, base)
> +#define intel_atomic_get_old_pmdemand_state(state) \
> +  to_intel_pmdemand_state(intel_atomic_get_old_global_obj_state(state, &=
to_i915(state->base.dev)->pmdemand.obj))
> +#define intel_atomic_get_new_pmdemand_state(state) \
> +  to_intel_pmdemand_state(intel_atomic_get_new_global_obj_state(state, &=
to_i915(state->base.dev)->pmdemand.obj))
> +
> +int intel_pmdemand_init(struct drm_i915_private *dev_priv);
> +void intel_program_dbuf_pmdemand(struct drm_i915_private *dev_priv,
> +                           u8 dbuf_slices);
> +void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
> +void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
> +int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
> +
>  #endif /* __INTEL_PM_H__ */
> --=20
> 2.34.1
>
