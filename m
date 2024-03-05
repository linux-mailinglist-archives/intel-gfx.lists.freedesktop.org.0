Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA738721C7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 15:42:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F8F112B63;
	Tue,  5 Mar 2024 14:42:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i6M7fpV5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326D9112B58;
 Tue,  5 Mar 2024 14:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709649749; x=1741185749;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=e3lht/xbC3N6//5oTf+U0AjOg0KBV8C7StnAnFGoaEA=;
 b=i6M7fpV5mjJRsn/vVkfqy2fIMjqMNI/R99JR+VRU0HHvbFvLZKpAWP+c
 n8j4nA2evcsHJ2KeDtmV1dAP4PhwWcfH8do3KywGMCIxUjusfJxyy+4Vl
 08zLUQMSV0ySBh2giWgwgp6KsBjOSoEVchZD8adO+scm47WTLOnuuqT0N
 EYQG7114A2hRoR3hjwhkne3765AwWyiJNTHK23XzkMf6dq9zOgh1dnxXk
 UiRB8zwu+8p0GziaHApEpXkslx4AWxWrJq2WYAiKLcwyR9U++n2Uf9+MM
 bl4LRD/sxZRNAV2QbY0+gtQDq9VwaBiNlUyvpWNFO7mqbYp+5MYZp/XDg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="14785478"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="14785478"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:42:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="14073068"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2024 06:42:29 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 06:42:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 06:42:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Mar 2024 06:42:27 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Mar 2024 06:42:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PHlB5DHHDFq1KJ4waYvOER2hXUEuZ7/7Mfojavd4lQqG5mf08mKcB3OT42h5FR05cOjsSEjg1cg2b9601AqF78olFUuNAOip2m6VlYVdo2tHg151M5wCBHAxuxzu8J11NkiQmuZDzTk57s1xVxoHJYOzSza1pd4fdqcLpPt5wye5RKjWKzOblT8w9Jr2QNcoPJoQUABTv5BUPaU7RGGRpxr3kYGkdFhialRyOxLPs4K5cjhpyFuEchh63hDTYTxuQjqLnmm7ueW6qTE+UaIqagoP9v2TghC5WGDtZdBomAUzE8gAUT2nF+e02Cp8BQTf5M+kdrukqkDpcuiatlTLJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4FVFltzc0QaJU438Uh3sLg7K07eC7ivtjEYk9C4E8BY=;
 b=DvVTU8gOacJscdqDB14pGF/t3/kt7HVXnisOhKaD34JleCIUES26kljSdBbsNxjVG69tnYnGOY4iC0pq2fZimgBwZSBStUJdsnz+GiD1+aor/cEVTtXvihZ6iEUJJAJqE60hssh4Cq84I9hz2o6D7BOzjFc8QwHB/xnRrzjZ1i4+A/Bc1jIRsk2oI9H2nXxMiRs/QIs53JJtMPLEQkAwe5eTq81MtJe+8bkJI0cDvrSqeFdqtZtrNeVY+1Kpi5uSS4rCodWlol2202HvI+ACCXOa9YplRhT3uqKrFj/OPfPailNz1/PY7IBYOhTiHWom7s2JTfX6BBgzB6NRvGNSnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7720.namprd11.prod.outlook.com (2603:10b6:510:2b3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.21; Tue, 5 Mar
 2024 14:42:25 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b%7]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 14:42:25 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240304220419.GT5347@mdroper-desk1.amr.corp.intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-4-gustavo.sousa@intel.com>
 <20240304220419.GT5347@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH 3/8] drm/i915/cdclk: Only compute squash waveform when
 necessary
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, <vinod.govindapillai@intel.com>,
 <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Tue, 5 Mar 2024 11:42:21 -0300
Message-ID: <170964974157.109629.7925319002575504904@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR07CA0075.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7720:EE_
X-MS-Office365-Filtering-Correlation-Id: b9484a34-86b5-4986-27f3-08dc3d227953
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gMi4f8Xvewz3FaYLcwvY6tG5TbTnVTf3U/8KnGMBuIX6Q5G1mikRsPT+vjQUyCHX4krN3bn7ZSqsGC01pWIVlM0PNG1bWq7nI1PAiAzd0sqYiJ7xnSikkLSLAfyvqbIE4JfGl9yDAlH4X44elV3HdcXWXuAw3mlbobK1yYat/Bwvrpgfie1nsinSTg6izBuTl4guVOQK4V4kjP23z0fKsJFS3v9VNvskCz6wGFmVP8hAKP/RGz8UbFjYHNsMvZjfb511lVBcgVgajy6mWzuoBuRFiCAN+pCEXuTK1UIfp7poRewvWq5NAefExhvmDbGZS8QniiUZ78KQzpIDn5+Gb0aIco6HRGC49Dp0WY/935t3twupt0SiEISpEZ64WK+mHYJS4/flpvky4vsajYfyYj7E63Nl6tQ9Ef5RrntqHA4x/f1VgL15zRrZVhjFNGKVqkgLSXI+82XZuaVysgy+rMVLfPSEa8d9rn9TL4c625/XIg6Wwcb7GWA8wXoYoHfidFY34xbDJPjk2iqNl0QknYE22BO0w30+lU3VtuvvYJWIZnm84sE4ChH3XQzFB7BKYjkSV4ygOCZeXpVb3kYxfhDiHFZ02vPE6IgAaNPt06dusiPJGmsWXt4qNx2rbPiyBipQ5zmdB/2uAlhBrV6T4dVwmSsGIIgbapmB6OIo9zY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUVTMTdTck54WTlDaUU4aHhaV0V5V3ZadVcrY09IeDg5S3V5WHpZZUtEblRD?=
 =?utf-8?B?MnVWbDR5S1UxMGFhdzBYZ2N4dndqVzFmQ1VkbW5SQ2Ewd05oeHB4dThRTm5E?=
 =?utf-8?B?MVpPYmVTYnpqZE5jZms2UDFBZFU1WUdpTjZjQlpDN0FGWlNxNEkwa0dQMGFO?=
 =?utf-8?B?V1lXSXMxNlJuQjhRT3Z5bGk5b0RjbldjVXhCSUhDNVF4azZ6blhzT1Z6OWla?=
 =?utf-8?B?LzVMaFpIODZoTmZoK3FVMlRVTUlrVDc1aUZBd1J5bERHa2Y1VVlBaktpaFAx?=
 =?utf-8?B?ZnRVblpCaE1pcjF0VlVvNnA0VEdQamlMMUlZaFFpRHpxNmhtdVBYb3YrQW90?=
 =?utf-8?B?eFkvQlNzT0JZWTQ1VTBkN1dCV05zKzZReUN3OTVLYTVnTW9QSkQxcUpjVXA3?=
 =?utf-8?B?UThxdzRYRUdyNjJQVjdEdm5wdG9EMllLKy9Yb2VkSjlEbjBkOEVBODc4cjcr?=
 =?utf-8?B?RTRrbmRaRG1iVEpZUm9zd3RQeFJqemNOSmhUbytkKzhyTTlaaTRhRXJpR3Nv?=
 =?utf-8?B?bWN2TUlVRlpxZnhKZjVQQXBOd013eEJMMzhKNm1weHdBQ0V2K0pRTllEVVZt?=
 =?utf-8?B?NDgxN3g3d3VONVd5SVpVcUF4dzdsc1p1bCtteitkaTVwSVVXVytEOFB5QVZN?=
 =?utf-8?B?UFlmWXZkMlVRYUZqVHFHZFhlSDNXbUczVVhYUGVHRFFFdHhwOG1qc1ZtN2JT?=
 =?utf-8?B?dng2RHhsUVVmaVFqN0dMKy9ndUNQeUo2NnZ1WHZrTWRlOVBJcFVBdVAwOHNQ?=
 =?utf-8?B?MkM2ZUVMTDV3TjNpL1dOU1pqMERmWkFZWUVubndJMmgzakhIREw5bDQybXNF?=
 =?utf-8?B?ZlprTm1FZENZblc1UGYyWllOOHduRW5zSUprbjRFUm9iQVlDb3BqcC9nVWQv?=
 =?utf-8?B?d0QzOXhDcFVtZEFPUW1XVFVCN3VuaHNRTkp3ZEZ3aTZyK3JVc1o1WlRkdlF3?=
 =?utf-8?B?MmxNVUxQUjVqRWpEM3JMa3V0bGVuZmx3cDBNcXBvNFRNZ0dCaS83b0ZIK0xW?=
 =?utf-8?B?aHpGb1hsK3NvYUU2djJBQTRXT2RtUnMvdkluWXNDRWpSRS9zRWtvMnNkQWw3?=
 =?utf-8?B?NzFVN096c21WV1UrTHVQWFNJU3E0aWtnZW1Lb3ROcjc3VkFUZlRGUmRRR3Jk?=
 =?utf-8?B?U2ZpUTJJNkc5U014T05yZFl0MDdranlEbDJkUlQ5NElnOHZaSDdLbDNjMnM0?=
 =?utf-8?B?dmpOeHpJNCs3YVpwYmx3QUg5OHYvTnF5UVJNTDRQUDBDYzJXaWxXR2YybUd1?=
 =?utf-8?B?VlgycDZ5TFpmNFNVakRIemZWZzM5ZDJUVjkrT0FDVmtXT2RIbEZJRDhSb2R5?=
 =?utf-8?B?ZnJVNkR4Wm12SlNOUDFINkNvTjN0bThJZXlRUWZ4QzlSYzJ2Y0tBbkYybWcz?=
 =?utf-8?B?bi9tekhXTFE3WmdwWWVHTzMvNFZoYWlTdnRaYXhtTFIzeGtBTUZlTUhLNFlI?=
 =?utf-8?B?SldKQVAwcDJRNnM0by9rOWllaCtqRjNVUW5Ia2dCWXhJb28wY3IrVldlRlRO?=
 =?utf-8?B?anRwcXdhbDdSb0M4L3llZkNCVHJJc3V3NlZhaW1KSUVhOHlFMU9iQlUxNnEv?=
 =?utf-8?B?YXl2R2E0dndyTHFVQmRDOVlzdEJzbmxHd1JiMVEya1NBMEI1K0JERXdta2FL?=
 =?utf-8?B?d1FGQ1JZeUpkSUJwTmtFbHd1azFaTW95TVF4V2NhY1k4dncyZkgzNXpmcVNC?=
 =?utf-8?B?aEc1TUNGWDBhbXNKQU9taUdhWWd5U3g2OWdYemlkQXR0SkpJZ2RuRlRlbXph?=
 =?utf-8?B?MUpjVVNsdWx4dG1XTHE3N3NGT1N3NGdEdDFWUEtpZXEyaW11RGZaY3AyRzcv?=
 =?utf-8?B?Z1BLRGZsTFNwYThWSGRFTis4SmU4a2pyaUYrL25tUVRMaDNwbU5yVkN2ZFJI?=
 =?utf-8?B?Vm5tNEo0VGtnc040N1dVd1dOeFA0c2FINlhndzdvWjBvcnFJaEVzUitpNWZX?=
 =?utf-8?B?U08wNlQ5WXhDSm9rd2J0cEloNGtadXNibFRwMnVYYlVUZXMwNFFFaTlGVFFw?=
 =?utf-8?B?VUFYeTNNbHlxRk13c2lzL0tMa0hMVkcxeEdXSjRPUTFFdXQrNk9qUkp2c1Ey?=
 =?utf-8?B?S0Fhdk80M0t2Rm9FMUZaRXhzaHhnQ1J1YStqeEt6NW1Nd04zOTQyNTkxME1C?=
 =?utf-8?B?KzBTUStoRE9Mb2FBNStwVGpDUDlsMktOcnFYVzQwTlRIVVhKSmVKWmVrSi96?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9484a34-86b5-4986-27f3-08dc3d227953
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 14:42:25.4880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0qS+ncN8LZwndXn/+qlNdFSdJE4PDsEli1ENv10duAAxiY3UHAOhj9usBce0c3Ko1xm1hfYIVCU65NSHQgX+cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7720
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

Quoting Matt Roper (2024-03-04 19:04:19-03:00)
>On Mon, Mar 04, 2024 at 03:30:22PM -0300, Gustavo Sousa wrote:
>> It is no use computing the squash waveform if we are not going to use
>> it. Move the call to cdclk_squash_waveform() inside the block guarded by
>> HAS_CDCLK_SQUASH(dev_priv).
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>You could also move the 'u32 waveform' declaration from the top of the
>function inside the block too to help prevent any future mistakes of
>using it unitialized.

Yep, makes sense. Will do that in v2.

>
>Either way,
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!

--
Gustavo Sousa

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index bf84bf27213f..cdf3ae766f9e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -2023,10 +2023,11 @@ static void _bxt_set_cdclk(struct drm_i915_priva=
te *dev_priv,
>>          } else
>>                  bxt_cdclk_pll_update(dev_priv, vco);
>> =20
>> -        waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
>> +        if (HAS_CDCLK_SQUASH(dev_priv)) {
>> +                waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
>> =20
>> -        if (HAS_CDCLK_SQUASH(dev_priv))
>>                  dg2_cdclk_squash_program(dev_priv, waveform);
>> +        }
>> =20
>>          intel_de_write(dev_priv, CDCLK_CTL, bxt_cdclk_ctl(dev_priv, cdc=
lk_config, pipe));
>> =20
>> --=20
>> 2.44.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
