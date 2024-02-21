Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1AF85D991
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 14:20:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782DC10E72D;
	Wed, 21 Feb 2024 13:20:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DVDxeu6i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0691810E72D
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 13:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708521626; x=1740057626;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=QC0rKVkuN9cJWMT8E7TZd72jrjf4vWdxS60Vr/Q07ew=;
 b=DVDxeu6iRWPv1I1eU5TOmL4MAG9DuvtMEH9uUwEmCC9C9gm/UCOCXPu+
 tEa9RI10poyBK2SJvT/MoozUG9+zfbCS1DTAuJWPPi+No5J6JjnrHEksm
 8+mp9K1M+ZIK1we0kJXTl8YpxpS1JLMSPeaK80InQcwyVdZJPHyTgcpEf
 8GliPWfQucJJerJszDgOltM0br4Lm2VvcrtpAL6J9tHcLuAA5ORrKIQGA
 zHeBTnfahi237rmKknSrgC1tT0PAx8T03uQGmKqG9x2BdAs/dunf2IvH4
 yT7dbuvHON4eSdYCi/69+Ygt8MWLXdq9qSGDcpyP1y3jmPtCZTaezp7ph Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="5633890"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="5633890"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 05:20:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="9724075"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2024 05:20:25 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 05:20:25 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 05:20:24 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 21 Feb 2024 05:20:24 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 21 Feb 2024 05:20:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwkQwNnsAcn0EMHIZCT4lnQcsVf/MJexicEE73MdKXb4FeRAVDqLAhVinD6i7c97LMcdBzH530jHmhD/i6ToXZtfhUNV21XJaagh3NFJCCT2qUK/DHYF5k/ZHBjpX77plLsXFpkSm/qYEzPGhLEDkGTBt/1xk7i7qj8iwtpWZP7y5IjLECTdZHNuYcPzzXt7IBaGv6oK6Qzv/+wuzRYyGv+UM3NLFffCb5xhTuzBUTBorKTnC6eKinoH9yEWD1g6F79eUQBBJjANlTlp5bOA9SU6chAEq69NaBjREcmjo5qaRxrGU3+0emMhOuYAWflKIqCWChcKi4Kd0s41+Zpc/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nM6zkPcPNIoIySyBcKea0WpN9+ZzfPMg/bssIBinaiA=;
 b=SuDVJOeCQwMl8BV+5bJjKf4ziAX49MJsY89Dfcc9qA6ewuSvLx155ujbKEg318Ri5fDUeKo6/XGJKpsUNtDfdDPRcwCSJFXeQtaEgSKMR9lpcD7xE3pFHcbaFCB/YzGHjhNqJnm19jV+GmWI/h/rMe39Bghl9i9hZsdyFxi9h2nap7iiDXWynZytQ1WvV4G282esB99sYsc70BHu/pP4FC9+lkH08zVtCVo6kJFYVg2cKVa2opVd6VGnU28p9uW64pkryCbXgPBHUbUhHQ27vr44hw9B/kNlwIlBIw9wy1Rj4GGsSsxctukPO9xGfP+4aO65Ot7lXwZxz3saF3+2uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB4772.namprd11.prod.outlook.com (2603:10b6:303:97::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Wed, 21 Feb
 2024 13:20:22 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7292.036; Wed, 21 Feb 2024
 13:20:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240220223030.78372-1-rodrigo.vivi@intel.com>
References: <20240220223030.78372-1-rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915: Fix doc build issue on intel_cdclk.c
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 21 Feb 2024 10:20:18 -0300
Message-ID: <170852161840.23070.10319913183255231843@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P221CA0020.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB4772:EE_
X-MS-Office365-Filtering-Correlation-Id: 06ffa3e9-8c8c-460c-4a41-08dc32dfdba5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JAmW1Q+VHmGu+5rAKrGfy76m3YlWr7QlcIJno4Qi9akLjhZ33RofMfuw7aZBnqvu51Yb+Bw8JepEKbpb0ClUA8Yc+BjTY62kBNgfKaUBAZ0z7GsVqSMq4vH/TbqVCPIFJd9ZQv/n7VMdDwmBOcKFAgcn9oDI+adf5raZzsXO4kBzv6Ur4JkF0ThSxEPCyk9FRK5V2BbTIuEfqu6HSM5ToFccDfc/FGJkETrHso7YE9ZCcr2/tVsQrVILI7UleiOa1WicyiKNz/JqtkpHHj2CiGTsieRyUjADH+jXvoa0ENa9TW8wzGsyN/uLpfRYBsLZ4dTD7Zehrcgm3ngOzafAFjsZ312ALkuUuETCWhUJzzgwf2Th/vkbMPjpHZ25OJzQroUVRUJIEa77d9BorvTBHh7DzhLHnCUABW+P2BuwpPua+Bz8s68wcVZWr805oK6xq9kt0qDZvXWzf8lK9ZAZ08QbwvIknPYo0WXR9QFTW4a4sm13C7JmN0teUcq3/RNJwa5ohP9WPsQQOpJaYV2Kh+GQKQSMUGAfTppcCtpeQGA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVRhOGgyMU8yMnJldW9WTDF2c2VKcllWYjQvRG41WmhMQmhkSHkwemxWWmVQ?=
 =?utf-8?B?dUMyUTliR3pIaHFLWWlQU01ORWFONTB2aUd4ZG1KdjV0bURLZWIvYTFUTFpR?=
 =?utf-8?B?ZEgzMkNReUM4U01iemxPLzg0dVdqbWIwV0w5bHpoMDlRcWFocUNPRUxEMktx?=
 =?utf-8?B?bUJnQXROeTI3eVAvcVFBOVp6YmFVT04yUEdSNy9hOVZJS3dSVDY4QTNibHU2?=
 =?utf-8?B?L2E4TVBMa3hoeU04emJJNFlwdEtNRjg0T3VYMXpteGpFanFXYkR6eVRIQW1D?=
 =?utf-8?B?amxzZVg4dDZ4dXcxNnhlVVZieU8zSSttNWkwL08yZGFrUGdzRU9SaFZ6UjJi?=
 =?utf-8?B?cjY1TlRCQW5MSDg0Wk5EM0greDZGa0lwNHpCK1RHUElKb0xQOG5PVnFMRyt5?=
 =?utf-8?B?Rjh2YXVJVUFtZnRlMUpCYmVWTi9PazJFckt3QWowYlh4NmJxWGtsMWh0ZVpO?=
 =?utf-8?B?U2JhY0oxRll4Y1U1MUZZZGFNdytEVG1SV1FXaWFwQ2hGRkFLY1p0bmtjRlVC?=
 =?utf-8?B?OXBIUE5VR3RobWlKWTBTbGpHYkRucjNuMmdjODRsc2VSVk9qMmEyM08wUUxT?=
 =?utf-8?B?SDQvV0JjWEpJUlp6S2piNi9YSmZWVkNVbEQ5T3NJZzRjZ092SndweHc3TFI1?=
 =?utf-8?B?VWV0TFVRWERVS3dTSUdUVnUxTUpENDBNNWFsTjh1UjlpRU16dTZjOFVDT3NR?=
 =?utf-8?B?VlRyYnhYYU9TUUJadHBGbmhvdGJaQnJsVDUyWkk2RUxSa1dwK0Z4YmJ2UUht?=
 =?utf-8?B?ZG1WUHBBVG1MVnhIR09OdFp4T2ZEZkhZR1E1Tjh1akQ3dUtRRnFLbkUwZnJz?=
 =?utf-8?B?RHJuL3hyaVBZR3htWHNPci9QUVJBV1plNjgwTW9iZWF4ZVFCQVM5SDZlQmhZ?=
 =?utf-8?B?RE5vRHZXUkR3SExIZDFNVDNKSGI5MUo5Y3Q4blFrRkxXQ1RtLzR1Z0QyOFg2?=
 =?utf-8?B?bHdiY0dRWUE4M1RlL3BvNFoyQTZrUmdMTDV2Sng0ZmNOdVRKQ1B5NHVsYlFF?=
 =?utf-8?B?VnhSdGRBSnlkeDYrdU9ERm85SnZUYjJKbXUxQVJoc1liMXZXVHRSQ3BpMGQr?=
 =?utf-8?B?SjdNNVZseHd1dGd6djB0OVdhYzNtNzBWRnlwYm5QNUUwT09pN1UyZ1VrUVdB?=
 =?utf-8?B?NmxQRWxTakVIV0FYWmtGaXRXOC9WWnp6MVg4UDY0azhqQVBXcVU3NkgzZUVI?=
 =?utf-8?B?VlcyUVBJYzhuZkVQNSs0bmtHN0dFUDM0VjY5K0tKYWRwUFdtUHVpcENSajk0?=
 =?utf-8?B?Ujl6NitkamNqWUI2bGdlOXlXWkhsQlJOdWJwazZZL3BoRDNXMGp0YUg0M3Nr?=
 =?utf-8?B?WEI0YUYwR2xoelpYbC9PemJETzJXN2lIM3owTFFKRzhJZDBSN3F5NmplbHZC?=
 =?utf-8?B?SWJCQ3ZjeGFxVFdySFVYcUlzaGZkUDhqU0FDc2pqdkZ2bjlpVE5iV3BaalR2?=
 =?utf-8?B?dTdySElhemtvRWY3SjAzd1JnY01rOTlTeGt4bUZ6T1pGMGdzUksyZytNSkY2?=
 =?utf-8?B?K2w5WUx2VGNXZXNGcWtKbUhxakVOK3BiYkhNbGxsYWJrSU40Z0xLSnFzTklN?=
 =?utf-8?B?VTVZWkNBYUhDMWs1S0dZYzI0NXdxZmp5VHNYUHFobk5VcGY4WEtBRVkzejM4?=
 =?utf-8?B?VFdZbWtsV3Nud0ZaSXBQaStGTDBrMGFFTVJkRFRZem00NlA5NHZaeTFUNmhz?=
 =?utf-8?B?aWtUemFJdkg2UktFc29Bcjgwalg2RUQ0MWxidUxSTE9lSVMrTkhaMWRXdDRx?=
 =?utf-8?B?WlJaNzFMMTZpN20xSHpESXAxWnE4RElkQm5IeWpuY3lteXJmMk41aXNJMU1R?=
 =?utf-8?B?d0M5emJpZ2lDV3RsZGFpYlFzK3Fic3YvdG9uOUJGbXlVZU90MWNmOWNWVlZF?=
 =?utf-8?B?WEFWZ0tDeGoyRjJ6cnNjV0d1MjFSUzJyS0NXY0JPRWJiWnlGc3RjQ2xobDA3?=
 =?utf-8?B?QVZOR0F2NmNkdkxFTWJoRkRiOHA5NjI5c3hkTkVudVRQLzNVckJNVXdqeXp0?=
 =?utf-8?B?bmlPT3FpNHNnZGdpSEtndldxYUQrR0xKemtYa2NBK0pXaEN6NE5QeVhnOC9F?=
 =?utf-8?B?ZmZRdFdScFpSck1hZTBHUVdaTFNQWXlPcW42RGtqT29wU1hoL0xEUWxZM25E?=
 =?utf-8?B?OEUvTHhLQTFQTXp3YnZwcjB4azh1Q3A3cmpiRm1TWkJUMVJOUWsvV2RWMVRV?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06ffa3e9-8c8c-460c-4a41-08dc32dfdba5
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 13:20:22.6276 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KkrF2YQjYnbVSzyDO0c9kqzOt6V9qgYWf8reqHMvvsP8yuBzKXNEpWhE7OhcuYGxzcw82S4CJpUMu+GRDqQ1Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4772
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

Quoting Rodrigo Vivi (2024-02-20 19:30:30-03:00)
>Fixing some doc build issues:
>
>Documentation/gpu/i915:222: drivers/gpu/drm/i915/display/intel_cdclk.c:69:=
 ERROR: Unexpected indentation.
>Documentation/gpu/i915:222: ./drivers/gpu/drm/i915/display/intel_cdclk.c:7=
0: WARNING: Block quote ends without a blank line; unexpected unindent.

Ugh... I wonder if our CI could do something like:

  make SPHINXDIRS=3Dgpu htmldocs

to capture those little mistakes we make...

>
>Closes: https://lore.kernel.org/all/20240219161747.0e867406@canb.auug.org.=
au/
>Fixes: 79e2ea2eaaa6 ("drm/i915/cdclk: Document CDCLK update methods")
>Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
>Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++++++
> 1 file changed, 6 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 30dae4fef6cb..42cbc3203d2c 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -65,13 +65,19 @@
>  *
>  * Several methods exist to change the CDCLK frequency, which ones are
>  * supported depends on the platform:
>+ *

Looks like this blank line should be enough to fix the warning and the
blank lines between the list items are not strictly necessary.

With or without the blank lines between list items,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks for the fix!

And it seems I have some homework to do on [1] before gets applied :-)

[1] https://patchwork.freedesktop.org/series/130016/

>  * - Full PLL disable + re-enable with new VCO frequency. Pipes must be i=
nactive.
>+ *
>  * - CD2X divider update. Single pipe can be active as the divider update
>  *   can be synchronized with the pipe's start of vblank.
>+ *
>  * - Crawl the PLL smoothly to the new VCO frequency. Pipes can be active=
.
>+ *
>  * - Squash waveform update. Pipes can be active.
>+ *
>  * - Crawl and squash can also be done back to back. Pipes can be active.
>  *
>+ *

This extra blank line could be removed.

--
Gustavo Sousa

>  * RAWCLK is a fixed frequency clock, often used by various auxiliary
>  * blocks such as AUX CH or backlight PWM. Hence the only thing we
>  * really need to know about RAWCLK is its frequency so that various
>--=20
>2.43.2
>
