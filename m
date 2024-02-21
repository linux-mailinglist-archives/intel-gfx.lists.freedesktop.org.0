Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F82F85DA2D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 14:28:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D9810E742;
	Wed, 21 Feb 2024 13:28:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OM59Hwrt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8825710E743
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 13:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708522109; x=1740058109;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=o5Wtk4Im9tFv4Q9VFBHH2eQHZwXWPBqJzw/VrV01Rw8=;
 b=OM59Hwrt59QdK3Qi6MO2BMS7bXg4rdCLRSBKBRLmtknuv9uORJZ9toXx
 ZxTx+OyTHnBnhUMION+66ewTtBZboZEDBkv3P5VgUnHzBFqJG0LDR/kJM
 kSZ4+38/WgO3KJDDizDOTfvgftge5AG5ybI7PKYDoPlA3c7u8hqRu68OM
 CTO4cZH6shK+MjKHzil83KbezeMuZyGPp9RlFGu/4IWxxjIfB+ZQioQbK
 fwok7j1MnDUWnM6yC/+ICtQfxNLT9W8N1xRIt6ZHbaYkbB2lVfSy1brqk
 uK9TpMhpBXy1MOXRsVHsQkyRyLrdkf4xgqZV7ClvH1mWqN43txEWaoDus w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2820757"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="2820757"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 05:28:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="5106875"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2024 05:28:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 05:28:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 05:28:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 21 Feb 2024 05:28:28 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 21 Feb 2024 05:28:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=USn60o90vjaSuB7VMkwwaBPUPyCxZi3W4NXlVWrGUlqJm3m+bASTwMOynjM6ZKr3NTSBVGo62pz11C6fAmlqRk8S5nGZMJ8kX9bhy4T+JrkcCnj/F952Q9pwDYFYN30e6MDlFgIgvhRDLos28lv77MY8rgIXnv2IGM4CDW2KE4dfJaOGJDm+Ra0Kfpi10qsx62eBSJKQRe0V++GpqeLoCxvVmTCgwpzFNqHe9ELHZGTmssPTn4+1SAU2T+xDIwOso+5ySit/xWuP1XQ0loiovKPEKIONOl1KA1wvqtxeGR23i+4OE+S+G3imViD46vDZkiDLb5PrDzIsHeE3kU8q1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XUx7V1ZCb3pPlVtKZakwHIY5+rc9gxUTyFPZq8TKSds=;
 b=O80dyP0dAuwM9d+9LkOG7wCQqRtNOQNalXoeNDDbhe4tVLwdCAMj1ztU3KmKAOjpL4DHpu+DzGB5nNtH65bGFxzHfwoEU+BGntgxc2iqVmpxJ4RXRSjXECMFETFbNtv2FMe7HjJZC8dtyzw/tGatuqQdVU3ga0wudqdVFvmF21W4nmcAo/Pxua8j3DFMZmjnURftL8YH/v3WLmBnSCMoqOt4S9T60Ntj1dBb5vHOP+dxlHF4fFoWNGvaxf+F3fKO/ILJhdGPJBanU9348Egk8Oqb80lF3uD6CA0xtJvyvXUXK+XuNzfVUfLJa28rnCwJop02eR50ptOeh+HN+4+40Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB4776.namprd11.prod.outlook.com (2603:10b6:510:30::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Wed, 21 Feb
 2024 13:28:26 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7292.036; Wed, 21 Feb 2024
 13:28:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZdO2IfxEHGCcD1AJ@intel.com>
References: <20240216164524.188750-2-gustavo.sousa@intel.com>
 <ZdO2IfxEHGCcD1AJ@intel.com>
Subject: Re: [PATCH] drm/i915/cdclk: Document CDCLK components
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 21 Feb 2024 10:28:22 -0300
Message-ID: <170852210280.23070.10133277253360308796@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0204.namprd03.prod.outlook.com
 (2603:10b6:303:b8::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB4776:EE_
X-MS-Office365-Filtering-Correlation-Id: 30e6b479-7348-48cd-eee4-08dc32e0fc12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aRI0TP3l5Du7sW/RoUJOWBe9SYLzQY9XGNcEiigsTw/IxSlQYrkiomWq14FbFhoajkjktbA8OB+Qa5Y0YQxN4gPWc3x4AHrW7iGpvXm0dzCeA4TQtcFd68QdPtA22bMTBjLCBvQUrEgv9+QKPwDJkLlRxXDrL/q3XI0h1CkLnLuY/3NYcJb67h++dBtPpN+WIfpDLCoFGVogXPcsKWsHmuGrt5ZJhXKIx+WghrVL2LvAuwoLheSomnkCliOcsk1QHoovFpBxds+jkN+87KqNxY/2jYkAReTYRlZfOGPnXpU8+qEVDyB7k5NI0ZOTq51YJMs/t2Ukslx79TlWhG8r3KMjGuHDV3mUOIvOHJsOVWQpaOJ2xR60+gAjcvgKjkHNnA+eKekxfASElXLUzt2eRAO3tp2uOB3akYjrDXkdPdvRGEKVQMzyvz1ZnKM2lVQLqAXaBn01aibDBgvSpbEsAFqnWeGl0gDVJFckcDndC8Vu3JnMCpmtu1JthnqNZx5Fv54hurjVCBSw9mnSfKfpJeBWqgriNtJZoOP0Jph/N04=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnZjV2xoYTI2VWZpaVpIRFI1K2ZTaW5TZmMwdGlrSC9ldzVOWHR4TnBsWWRh?=
 =?utf-8?B?M0hBWCtFYlJFTG1PVXdjcGw0MGdwdlk5c204VzcvMVFEK05NOHhaYm5LcWhN?=
 =?utf-8?B?WU01UzYxYW16VGp4OWxEQmNGdm1LcmZ6SmkzZWRzWlBWNTkyKzlneVdmZkd4?=
 =?utf-8?B?cXltcWlicFpjNStqd3N3dEtjYi93dnZMb2pETWhDRk1KeUdnSkJiQkR3YXdF?=
 =?utf-8?B?ZGNGKzJ6Z2laVmx6S0ZDRkZKdm9yRmE4dDhsRjRicGdPK0V4dktkL1h2bzVW?=
 =?utf-8?B?ZXNrcUlsemVLUjVYN05wYmNSekJpQS9YV3U5b0p4VWlvWW9UR0pmN2lvZ3J5?=
 =?utf-8?B?Y0ZiWWh3TDg4YlViOUlhZGt6SjltK1NWci9mK1dzQldIM3VuUlhwRFpKU2Nk?=
 =?utf-8?B?ekFvNGpiS3N6VTFkS2l5RW1Cdng1SDBIclN6NXkwTGV3RFhCWEJIMVBCd2FH?=
 =?utf-8?B?K1g5SFdWWnA5UkxLdFdaOHRiR0lWdkdEOGJMTzdOTUp5aGRxZDU1RTdLck1x?=
 =?utf-8?B?bWRuZU9tRW0wU0VPN1pVTmNkMGZkRjNLYjB2Mi91ZjZpR3pCM3Fpb1hWbjR1?=
 =?utf-8?B?UXBteCtkdnBRMEx1OUtrekIzc21uZys4blJ5eG9MTWs2UndOSWY4TnJTUUtN?=
 =?utf-8?B?emhuMWExQnBmR1AvMmxBWDFkb0tDZUdxODRlbUhvc2s5YXZKeTJrRVk4c2xo?=
 =?utf-8?B?dFFVajNXM3ArWE9mVEVCSUUyc2tFVHFuK01CbVlqYlpKWm1vQ0Y0cTVuNStX?=
 =?utf-8?B?ZVB0Y1R1a0V4TEE4ZENIUkREODBLU2lKWFp3MitWUG9YOEJwYzl0ZE5XYklF?=
 =?utf-8?B?T015dFVpV2NiNEIzRjdOTms1R3hrOFpIOVNTNTV0SjhGWklCWDFOYTJBdUY1?=
 =?utf-8?B?VFhzNkNVZlAxeFY5ZitxQ3NvZDZFay9SaVI2amx6UVo1SFE0U2VBcDBWSUps?=
 =?utf-8?B?NmF4N2pPKzJhdWVuVXAxeHc2b0VNK3NaZ0lKczJ2TURzMDhUaGI5STIyaHE5?=
 =?utf-8?B?a2dCMG9nck9tY0dtTW12UFVITXJLRE1Fa0hPeVl1Vm41YU5YSTZRbVkyN201?=
 =?utf-8?B?blFSMys4R1FWekVzTmVXeUJqVzJJeVBoRUlCSkpEMSt0b0dzTGtkTEJwbmJB?=
 =?utf-8?B?dTg2Nktva2JrdlBRVGVoTTBKYU81L2RxcWZLaVo3bGZyZVBzSjRQa0gwbzly?=
 =?utf-8?B?MjlDcld2djhsODdsY1U5YUlxN21CZTBsTDdCYzhWY0xyMUtia0pvdjc0WTRq?=
 =?utf-8?B?ZVpLKzJGQjI5V1o5U3V1eXcrb0lycy9nNDFSZVg2QllIWGw2NDIyK3pMbU0y?=
 =?utf-8?B?RnFLUnpyS3kxQVRwUllQTG1makNLM000RGk5RGdNek5RNVhVQjN6RGNFa2h1?=
 =?utf-8?B?b3FnL2RoQXZaRmxPMnBidXJJTnN1ZU5MV2Z5bXFkei9LNGJSMmhGWmsxTTc0?=
 =?utf-8?B?SzRwblJPeVZwVS9kNHlBYmNKMmJGcFRGS2tPbSsxOU5LTnNMMTc3MTkzTUZq?=
 =?utf-8?B?NVhVV1ZrTHRMek5PWGMzYnlRYkw1SWN5b2ZDNThWLzM0UUViZHVYd2VhU1JL?=
 =?utf-8?B?YmQ1NmtPeUVuL1ovUmJDMjRkZVBUNXRjRXA5eHhIZWpjWGh2MDBwWlBKMzJ3?=
 =?utf-8?B?V3JsWWcrRnJEUkNJWkc2WUdwMzRFVmxSQUU5eDR6S25EeVhFNXBNK2VvQlFO?=
 =?utf-8?B?cHVRYlVsNmZ6TTFVczEvM29iYk12blpqUXlndUxBeFlSL29LUlRYQWRRNHJI?=
 =?utf-8?B?aFNEcFR0RlY3Yk02enNvOTNVa0tMT29sWnVmWEtWNU1ib01rUXF4U2ZFeWNM?=
 =?utf-8?B?cXZ6bERsMjcxRkNIM29XTnB2MTA1MFVpSk9JWUlMUGhqSGg1MTNjNTd0d1pV?=
 =?utf-8?B?Y1N1bkk3OW9VYU91Zk4zazJ3RXNqVEdWQzN4OFowVkpjaDdWOUV0ekpKbXVC?=
 =?utf-8?B?Kzd4RFhFY0xPeis3b2pOTkhpcnFZOXgvOElySi9zeG9YZU0wNkVxQjUwT3Rs?=
 =?utf-8?B?R28yeTJtZXkzNGFLYzNKWnpuTjcwUCtzOXBqNXpmcDIrLzMxYllNNVkvM3l4?=
 =?utf-8?B?NDJTeGkyY2VRRFVoY1lHY1JnYlh5NDYzVkRFSnBxcXFTVVhFSXBldWVnWFdT?=
 =?utf-8?B?MzJ4elFsT2NIdlRpbjRmTVZXM0gzMHZrMStMSFl1SGpDdExTVXhWZzdRTXk3?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30e6b479-7348-48cd-eee4-08dc32e0fc12
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 13:28:26.4983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m2quAoJVfUUMjmSxUvQEBTPgpNu/lmTngERn8nuIOsRqcxUWeJnVfExYwtxZL5Dkj2bYCf3J8O+OaTmQaB2/3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4776
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-02-19 17:12:17-03:00)
>On Fri, Feb 16, 2024 at 01:45:25PM -0300, Gustavo Sousa wrote:
>> Improve documentation by giving an overview of the components involved
>> in the generation of the CDCLK.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 25 ++++++++++++++++++++++
>>  1 file changed, 25 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 30dae4fef6cb..ef1660f94e46 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -63,6 +63,31 @@
>>   * DMC will not change the active CDCLK frequency however, so that part
>>   * will still be performed by the driver directly.
>>   *
>> + * There are multiple components involved in the generation of the CDCL=
K
>> + * frequency:

Looks like we need a blank line here to get `make htmldocs` to parse
this without warnings. There is a similar fix[1] that's currently
in-flight, which also adds blank lines between list items, but that
doesn't seem to be strictly necessary.

Let's wait to see how that series gets applied so that we make a fix
that is consistent with that one.

[1]: https://patchwork.freedesktop.org/series/130159/

--
Gustavo Sousa

>> + * - We have the CDCLK PLL, which generates an output clock based on a
>> + *   reference clock and a ratio parameter.
>> + * - The CD2X Divider, which divides the output of the PLL based on a
>> + *   divisor selected from a set of pre-defined choices.
>> + * - The CD2X Squasher, which further divides the output based on a
>> + *   waveform represented as a sequence of bits where each zero
>> + *   "squashes out" a clock cycle.
>> + * - And, finally, a fixed divider that divides the output frequency by=
 2.
>> + *
>> + * As such, the resulting CDCLK frequency can be calculated with the
>> + * following formula:
>> + *
>> + *     cdclk =3D vco / cd2x_div / (sq_len / sq_div) / 2
>> + *
>> + * , where vco is the frequency generated by the PLL; cd2x_div
>> + * represents the CD2X Divider; sq_len and sq_div are the bit length
>> + * and the number of high bits for the CD2X Squasher waveform, respecti=
vely;
>> + * and 2 represents the fixed divider.
>> + *
>> + * Note that some older platforms do not contain the CD2X Divider
>> + * and/or CD2X Squasher, in which case we can ignore their respective
>> + * factors in the formula above.
>> + *
>>   * Several methods exist to change the CDCLK frequency, which ones are
>>   * supported depends on the platform:
>>   * - Full PLL disable + re-enable with new VCO frequency. Pipes must be=
 inactive.
>> --=20
>> 2.43.0
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
