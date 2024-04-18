Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6948AA435
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 22:44:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393E9113FD7;
	Thu, 18 Apr 2024 20:44:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MurGq/ZR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2286113FD4;
 Thu, 18 Apr 2024 20:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713473066; x=1745009066;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=AAOBNr4NHm80OJJ3Lnn40Nec36bGCbECgLOutwYcJrw=;
 b=MurGq/ZRfnpgRTx6yIyBo53u8Rfg6ewNEKGpWdmHo5Oj++M9ZVyt8meg
 rX+lZ2tCAJUmPLEKzuiT0b+WTw0en1aLvHV3EAmGn3LqBAQTZmI+WhPIY
 NsVW13i9k9trQ8928SxOJP6docfJEYACcI4wVnMIc6s+AZRAjDaTdjpGA
 WYsupc1nv4hTBIfYw17Abxe4jwVyLpy0Jm5+XFQyY03m17QytxnFIWeLO
 ZuXthiLYU5K8iQ1bdNC6pFB78UT0TaX76dN3YinwbLWYFZyWPI5ANrXJI
 5S0boBPRMb44Pdxl7QlTSOe+bcPNJmTg84LlG6oPeoRsxMQLJrqnn5drB Q==;
X-CSE-ConnectionGUID: otxBjv1hQbuzshUArW86cA==
X-CSE-MsgGUID: bxSuP9xWQOutrc8h4BHe5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20473843"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20473843"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 13:44:26 -0700
X-CSE-ConnectionGUID: mfTX9vp6T7mO0mZZB303pQ==
X-CSE-MsgGUID: Jz3UaBDGRnGA/03YtcPFdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23172245"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 13:44:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 13:44:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 13:44:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 13:44:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 13:44:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6EVxUNgkqkReCk/1P2/BP7QTzMdLI90iO3Lg7ApjwpL9iJe/VFLwzPe+TldvEV8+nsHBv2tOJnil0jXcu9hTXcjiJ2/J1nxVG4pxef24woqlGTGnG6zCqSgWpAoc1s2lT8a/X6MKHkIHIWPJ1m6DGS82/RMg0vSH1BteB1ihbKZPTI2hyUJkb9ZWpV8sssrUOLr5MdConTPK7nnfg/HoEVZilzOKPN7Arm87TsYy7ggKlOoB6+V9VbOptwvpyyymLmC4Z+MOOoRGgSNkVG/hQTN+sE3bxSaDDOaI0k7ObIdi7k1JEWTdPSK7a9QrmTlhnu88NWDQZVXxdv4swquCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vvi+e3O9vGW6VHugvoszeLtXBByyFnWioSishFeZJKo=;
 b=iphPWP76y2DIoC3dcwjEtu67/3W7W0Mkgq6qzWuk8z2b+djvVrPZRGGMmMFrdpTXPtmrLNrF3RH3yTy45Srd42fbZmrX1gFahI84GQBVhNT1HDeDpLMSCzeUGltKC1+zVmE56MKDC6D3z2C1pf++j6/YPWOz97+yPVHcrpFu5C4WqyAiSpqIIU13K5DhD7ol0+LNkDvKM2eLsWmOquOyU3xQQ81fPrlaTES4p4yDgTmSkMN3aMrg7R18EydeYTbLzt3y6mUgzXlphsPCtccmqGzoN48HiO4/qnzz0op6eYg5G40dBnzvxQxKH6dXYLBSSqJ900Dfoc/fxuqZTQIO2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH0PR11MB5233.namprd11.prod.outlook.com (2603:10b6:610:e0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.11; Thu, 18 Apr
 2024 20:44:22 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7519.010; Thu, 18 Apr 2024
 20:44:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87frviwhzz.fsf@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
 <f88657c63d698d339a7a1079f6c428ba9e6b6b06.1713450693.git.jani.nikula@intel.com>
 <171346797884.2007.8763877365097656146@gjsousa-mobl2>
 <87frviwhzz.fsf@intel.com>
Subject: Re: [PATCH 4/5] drm/i915/dmc: change meaning of dmc_firmware_path=""
 module param
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 18 Apr 2024 17:44:13 -0300
Message-ID: <171347305306.2007.9201915999997168779@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0048.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH0PR11MB5233:EE_
X-MS-Office365-Filtering-Correlation-Id: 09bef49a-c301-43fd-1b96-08dc5fe853ae
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: ZPeafIrpOIr+mAi7wbcJPhz6ly8g3blIFsbr+9oVqd5fSp2KEhAKZsWrChgCIWCzqbSB+0pV1qRYJBPYGoE5m3IGRzI80HHcr+VZphybVc4JJ33IF9SJ6mGgyDo/vvhr9h2huYxMHzN/aSZTzBe55P9zFWO0Wl/KD8gvgxBCLaPcsAAkp0VgtATuc6Q1mOU+ZHjvKEMcVLfkCunCEY16jxcIJ1KYHJcOvIAOVi4EM8bwj5oee9DXBl3BxTEIgn3cacbr0nseraVsKOLORIh2TsqZI05DN1NldAQ21+vhw9lY4N5C4o23qAubLi6Htdb3kDhVclEjWZ8CWbTzWjBu5zwGgMjmDPXe2bliLSOOmsWWb+jJ/5IdTWKSdZ9I+AburP+kCMLfqKfm3G1Qg+PyEh/GpjrvyM0uSKVrXu9YzPL6Bu2TguKyaDYtkujr/AqR3icjshC90LUaoyU9bUPje2hldQuI/7N0fmRR+E8mzU+L6/q+Cys/lwXynrRCIT1LlLLRmweQ3I6MlzcFrEuFascN0SYwhXpxB7btnXCTQVyIj1sM6MEu35y+4SsGvINkO+2Gt3a67/fX8pCtMxbZx5iwotl/IgGyhlDvYyQ45LWDjgmbAENMsUoDn/B/304A5C0PUUOM7+vQzmH8kz2xXnSpUgaZ6KiodgXz8Nx2VLM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mm5CVXdxa1JzdUhudzhCckExWGQ2aW83Z0lMV1duUi9pejFnOXZyQ0srNHkw?=
 =?utf-8?B?OElmQ05ONm5Ec0dDOFNiVXJ1WHRkY0Y5VzUxTGcrRSs0cHgxUkw1RjZETGFW?=
 =?utf-8?B?SU9tS1ZPNnBEdXVhWTdBVVpVTUpGZk9ocUdURGs3WWFZbWU2anhDOUVISXlS?=
 =?utf-8?B?aHZMUEF1dlpWM2NqMlUvenBEdTM0dERpanRsOXFJNW85OVZFUTF3a3RsSnV1?=
 =?utf-8?B?dXpmeXI5YVN6a0dDaytsRnVtNi9DcTE2N21NRU1uUU9HSEl0UHQwejRUbzNF?=
 =?utf-8?B?RHBpbHpnOW1HWmcrSWNpTXVPUnY1b2tIWk1RbUtoWFhrQmhNOElZVjRYK1cz?=
 =?utf-8?B?RjJORU5IYlZQeGpzcDZ3RnV5emNBeDB1NHhIUFl2cDlDNGdnV0JrR2owTFdO?=
 =?utf-8?B?YlYxaldJaGM5ajVuS0wxaitGbzE2NGVYSGh6ZE1vSUpUM1Vhak16aG1qRXpC?=
 =?utf-8?B?MFJrT01BZHl4WW5uTitXcHFOZWdEalcwU3I0OEZ2UFVKMVBnckN6ZVNCUnZl?=
 =?utf-8?B?TVpZN3NNaTg1VDZyL1ljMnRUY3Ntd0JtZXpEZEVoakx6S0FtWng1N01XcVJZ?=
 =?utf-8?B?Z3kxTEF2K21GZWRldTQvaDZ1SDRZdWZWU0lVWmhaT2dMVU43ZHRmQWR0ZWpv?=
 =?utf-8?B?VUxZQ0JoS3Vsek9EZTB2ZGJnNzRMZWg3V2lha1dJYjRqVUNQaHBxRE9ZQ0JN?=
 =?utf-8?B?NWpqSkNlNUEybUpLd1Vzem5XaVNoSWZRUzlmbzB2Y0RrMHFHOHptbnVsYnlQ?=
 =?utf-8?B?Y1FPOTNPNEJWYUlEMFZEMCttQUlLU1pBaXE4L1B1S2ZoUTRzSWZPaCtJTm41?=
 =?utf-8?B?dko2dW9adTROVzYwOUxURDZtZ3pVNnhOZWJIWGNRQ1FvRlp4ZVdkaUhIZHQr?=
 =?utf-8?B?aTU3ZTlvL3BteWI5UEYxYWN2Zk81ak5KTG5NNE8zc2tObXpPdy9mT09ucEpK?=
 =?utf-8?B?YllEc1hQRXVNYUtJTHAzUmd4dnJ5ZStYcmloYnVKbmhtRjdUTmRzNTRPOWZj?=
 =?utf-8?B?TC8xVHFCL2xoSStvLzFxUTJUSHpCeGNrK2tiUFJoSmFrNnlnQWgrZ3V5aWtO?=
 =?utf-8?B?dVhxUFUyRGx5U1grb1M3RFBLNjZ5dkRoek1PL2pPZXh1em5Md0luNGx1UUVK?=
 =?utf-8?B?Z3hSVCttb1Q4SDZOUmJYWFVzOHZxQTNOODFPMFhCNVhhbEo1TWdSclRQdE1x?=
 =?utf-8?B?SVBUSHU3bGorckttWXFXbVo5bmo4U0UwdDJ3MCt1b00wYVNwbVpLTld6VnFo?=
 =?utf-8?B?emJ3VC9jajErVXpHajhJdlNWVHJjZlltVVd2ZWswanpDaGhFWFB1Y01HRU0v?=
 =?utf-8?B?Y2VrRlpwVVZYZWRSNTdjcUhUYTNpRmFUM2lNajZxSjdUd2FLeG9TM29tOVZs?=
 =?utf-8?B?bFJHYlZzdnM0VG42OUxqNEdDVUNRUnVWdU1aVEwxTUNXaHlOOGJ3OVVaZ0Rv?=
 =?utf-8?B?S2hGbkpMUHpKTDM1TDZ0UHhxUk85S2hzL29XUDV4em5sV1pLTzNaZVByU2Z6?=
 =?utf-8?B?RkRTQ3Vwb2loNFBNVzBwaU9NQ0FSUCtzT2R4REdNWnNrMkZYTmhLeG4yNHJu?=
 =?utf-8?B?MjBoS1NPWmV4NXNGdGJoaU1hd0s0SDAweDcwcDkyRC9vVGdXbFhwb0FBWnBO?=
 =?utf-8?B?NDhlMzNiY1BzTnZNckNwMGMzZTZZVmgwS3dIQS85R1ZaaFYrZEY4K24wVmRO?=
 =?utf-8?B?L0ZiWWdmM0ptZ0djNUxCRGZQWjVpWWpnUVFKQm1OR0NHZlZtQWpHNXNzZFlv?=
 =?utf-8?B?ZzcvSHhlZE5ZY2RicTJZc2RJUXBaVThkV0NjVTdCWHhVQklIVzNFMkxXTjY5?=
 =?utf-8?B?YUJOZnBLOGlMdThVYUQ5U3lQQVNSNC9Ya244anduRXdqZGs2dk5OZnpkR21i?=
 =?utf-8?B?TlNtTXYvcmgrRTRnVllqUURFM1JwRnZ5djVkZmRRYlhBL3pwLzJpQ0R1WU5W?=
 =?utf-8?B?K2QySlBvYU1hcGhwMWJaYjJsaFN3RnQvbitzTjdnNXV4NlEraHQ2dWs5ZHBY?=
 =?utf-8?B?R3EzV1NBajZ5QXBBbURvUXpGZmJnVGdYaWZlRG1OSDNXd1RDQVB6dFl2enZw?=
 =?utf-8?B?dFhQR0VZTnRYWDRsNFovTFk1bGNBSXA3akJPWGFpenV2NWRKR1RsaWo3QUJw?=
 =?utf-8?B?dFc3MEtVMUFiTUhibEdDYWhHV0N0TytlTTVGNDBUbUhxNWdtVDNkYTNscUR3?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09bef49a-c301-43fd-1b96-08dc5fe853ae
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 20:44:22.3406 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v36OllUITu0EjSpH4B82kYlqN3dBKSaQwFQKzS5x5HpbQ8g4K2xuV+D7ClZeGOu8oEuMUbDxAkLcKbEkXJhXwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5233
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

Quoting Jani Nikula (2024-04-18 17:09:04-03:00)
>On Thu, 18 Apr 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2024-04-18 11:39:53-03:00)
>>>The distinction between the dmc_firmware_path module param being NULL
>>>and the empty string "" is problematic. It's not possible to set the
>>>parameter back to NULL via sysfs or debugfs. Remove the distinction, and
>>>consider NULL and the empty string to be the same thing, and use the
>>>platform default for them.
>>>
>>>This removes the possibility to disable DMC (and runtime PM) via
>>>i915.dmc_firmware_path=3D"". Instead, you will need to specify a
>>>non-existent file or a file that will not parse correctly.
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> drivers/gpu/drm/i915/display/intel_dmc.c | 20 ++++++++++----------
>>> drivers/gpu/drm/i915/i915_params.c       |  3 ++-
>>> 2 files changed, 12 insertions(+), 11 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/=
i915/display/intel_dmc.c
>>>index 740c05ce83cc..3e510c2be1eb 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>@@ -73,6 +73,13 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_=
private *i915)
>>>         return i915->display.dmc.dmc;
>>> }
>>>=20
>>>+static const char *dmc_firmware_param(struct drm_i915_private *i915)
>>>+{
>>>+        const char *p =3D i915->params.dmc_firmware_path;
>>>+
>>>+        return p && *p ? p : NULL;
>>>+}
>>>+
>>> #define DMC_VERSION(major, minor)        ((major) << 16 | (minor))
>>> #define DMC_VERSION_MAJOR(version)        ((version) >> 16)
>>> #define DMC_VERSION_MINOR(version)        ((version) & 0xffff)
>>>@@ -989,7 +996,7 @@ static void dmc_load_work_fn(struct work_struct *wor=
k)
>>>=20
>>>         err =3D request_firmware(&fw, dmc->fw_path, i915->drm.dev);
>>>=20
>>>-        if (err =3D=3D -ENOENT && !i915->params.dmc_firmware_path) {
>>>+        if (err =3D=3D -ENOENT && !dmc_firmware_param(i915)) {
>>>                 fallback_path =3D dmc_fallback_path(i915);
>>>                 if (fallback_path) {
>>>                         drm_dbg_kms(&i915->drm, "%s not found, falling =
back to %s\n",
>>>@@ -1062,15 +1069,8 @@ void intel_dmc_init(struct drm_i915_private *i915=
)
>>>=20
>>>         dmc->fw_path =3D dmc_firmware_default(i915, &dmc->max_fw_size);
>>>=20
>>>-        if (i915->params.dmc_firmware_path) {
>>>-                if (strlen(i915->params.dmc_firmware_path) =3D=3D 0) {
>>>-                        drm_info(&i915->drm,
>>>-                                 "Disabling DMC firmware and runtime PM=
\n");
>>>-                        goto out;
>>>-                }
>>>-
>>>-                dmc->fw_path =3D i915->params.dmc_firmware_path;
>>>-        }
>>>+        if (dmc_firmware_param(i915))
>>>+                dmc->fw_path =3D dmc_firmware_param(i915);
>>>=20
>>>         if (!dmc->fw_path) {
>>>                 drm_dbg_kms(&i915->drm,
>>>diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i=
915_params.c
>>>index de43048543e8..9e7f2a9f6287 100644
>>>--- a/drivers/gpu/drm/i915/i915_params.c
>>>+++ b/drivers/gpu/drm/i915/i915_params.c
>>>@@ -109,7 +109,8 @@ i915_param_named_unsafe(huc_firmware_path, charp, 04=
00,
>>>         "HuC firmware path to use instead of the default one");
>>>=20
>>> i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
>>>-        "DMC firmware path to use instead of the default one");
>>>+        "DMC firmware path to use instead of the default one. "
>>>+        "Use non-existent file to disable DMC and runtime PM.");
>>
>> Okay. But is it too bad to have a magic string for it? The up side is
>> that there wouldn't be error messages in the log if we had such option.
>
>Another upside is that we could also just skip requesting the firmware
>altogether, similar to what we have currently.
>
>It's just a small naming problem... what should the magic string for
>"disabled" be? Like, yes, that's the obvious choice right there, but
>it's also a valid filename. Who am I to say how people should name their
>firmware blobs. :)
>
>"/dev/null"?

I like this one!

--
Gustavo Sousa

>
>
>BR,
>Jani.
>
>
>
>>
>> --
>> Gustavo Sousa
>>
>>>=20
>>> i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
>>>         "GSC firmware path to use instead of the default one");
>>>--=20
>>>2.39.2
>>>
>
>--=20
>Jani Nikula, Intel
