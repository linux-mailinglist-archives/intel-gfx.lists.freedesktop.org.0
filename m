Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D913BC381D
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 08:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A1510E02E;
	Wed,  8 Oct 2025 06:47:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e2uOwhcV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 878B410E02E;
 Wed,  8 Oct 2025 06:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759906060; x=1791442060;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=CN3Dnh6PpVSAmogxX4PmEOibr3kwzcd70OC32H+j3W0=;
 b=e2uOwhcVraKJuYy4EctHGEU38/09EwDdaHC5Trw7be4tmjZfeTLqYavy
 ATCXcjHGtiNcf55l1/oI8mg0UkoxEPs/uNNHath84DTbzo28MwqerLIfM
 GhZbDEzqC2Rh6x7+gzBzJ3loVeqLDIqY8FvsOmw+4bNSVhOTxI+4D+la0
 Nq2O/6HapCOmxri8t50uY+VS54zAuj5+HDxw9fFdxuvlWpDbbdMqQdxq5
 Lcaz87UDSJhSgZeUPIuakME8c2P+s6uXWfUjYaKdOxvOuNqvqpyBFOgkB
 8C0RJLQUHakplXnkdmLlE0FPeNEjHfI4S5f+VRMghcp4PrFclQ9sXwKwu w==;
X-CSE-ConnectionGUID: 38xFwMRNS4ieUyUYS2oczg==
X-CSE-MsgGUID: zPsJlLqNTpCg+BvWZedgKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="61298199"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="61298199"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 23:47:39 -0700
X-CSE-ConnectionGUID: ntVdXTw6RXKfvsCbRW4aNQ==
X-CSE-MsgGUID: YdK33fZ5T1uW5R1eqC9O1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="179614406"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 23:47:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 23:47:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 23:47:36 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.21) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 23:47:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ycVSZ8Ek8qg0w1yo3vwmovBAd1cotWW0JwtgTtUtQ+Bru78F/0sQ1YUOwHYZJcDay83Bz3b0BXW6FmlPbWt0EjZYCStRxkwLOJY1PBV2epnq+Ng9/aivIHPm+BHmcej+pljY03ncvLju21mjG904QwV3NhOm+2qyGqsaTSyWbfqrTDZ5rOx94QtL3PH/PZkh+n+LW1N5k8u3YDFhd8FSraJQuLmVt9wMH1/vGREo/H8PNDDMmeN7XXtGBVdfx+phy3Q0eeM8w9+Q8eRE+38dxr2a1grRXb1fCQ+6ltTp3/as8jCKDNGZKPKoDIquR9SItwOk/i57Fs3D07RBWjBhZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cfvqROYMceKwbS1/gGOz2rtQNJF5Uu9SmLc4VOWx970=;
 b=FoY5DkhDxcg+YG8nIguwyiyxcsHyWiADUBGk+WKuT6cPR9g0gjzZuLSKldqXEFEbC9oevAJ+dU/fqXQbA1wyefVSs1PmnmhSspObUdfcbXQ0fj/rC6tScEsNs5bZYrA8K7iyZgRQly5bktU/NM5G6OejrUqZ0q+ZTZALIY7gCsszzuvOz2M7OQ55LX8wmCIYt5w5SGiyvhutcklBT9Lh8AqhLDCf3vwMz3axLPGaUHvK5GnSHu6lkVdz8nE0G1+U66k5NK+x4h25LU++JkWIHXMhNloTfI77TlsnsoKXBJKu0mQ7bqa4doLCIloqhbXDVpBLx1bDtgSnIL5QN0ti0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM3PPF9EFFC957B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f40)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 06:47:26 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 06:47:25 +0000
Date: Wed, 8 Oct 2025 09:47:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/4] drm/i915/opregion: Flush asle_work during runtime
 suspend
Message-ID: <aOYI-cbvRVssZQ_L@ideak-desk>
References: <20250708160320.5653-1-ville.syrjala@linux.intel.com>
 <20250708160320.5653-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250708160320.5653-4-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: DU2P250CA0016.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:231::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM3PPF9EFFC957B:EE_
X-MS-Office365-Filtering-Correlation-Id: ea4a1872-8716-486a-4407-08de06368a66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?lWzBDSSHY5ft/02iiNWdxIxH5E3zOo7EqlFQ48xgluFWr1r14+cVSYcvvs?=
 =?iso-8859-1?Q?vHrA7GaAoxnx438yoQa5cjUoGw2Tt9yqG+LYzu43JCAc419neTvpAaTFKX?=
 =?iso-8859-1?Q?aua8WuH36Hl3TcxGnQa+6JGQs121cGsbdCxjkYWzThiiV6ce/WSv8p9g9x?=
 =?iso-8859-1?Q?F1SatEcW9fKKKe7ot/xbA6OOSxGzbznx6mk/HSfJon44HtAq7Gurtgfjbp?=
 =?iso-8859-1?Q?roVwf7rNeTwUbyTJdsQd890ImZJIFdpyx/82e4xQaj+Ml9u+cMN3pFtySq?=
 =?iso-8859-1?Q?+Bwvk/FXR9WrcqUDEt+B93EWLugZcd2nhVr5HMf4L/UNtB8Olkj3YivEMi?=
 =?iso-8859-1?Q?dwRoq39MzMFsFtLLqkGTlf265mWLsdz0y7B7arw7Foihhl6cDHtyYmJQmQ?=
 =?iso-8859-1?Q?XaTYgvokmP+fWFA2qS1RvFaKv9KDI2c5CzIqA+RUz9K83KRcbjHCXCPugO?=
 =?iso-8859-1?Q?aK1N0clroDIZ3FP7seYUlNe7oKUeuXzejdO3qv9Q/g2cHJPSU7vuBEqy+8?=
 =?iso-8859-1?Q?ASCzL8SDWlqxRRzKXnjiulYvw8gBuTd5wXZ7nnRxbvYqCUbjzHm2T8c9me?=
 =?iso-8859-1?Q?fr9l7lm48omH63l0k9Ob7+R70D3M4L1JZFF/HbeOel6+929gbiAQ8V3Eq2?=
 =?iso-8859-1?Q?GA+ZFbGudfFUYK4LHqSHNcoO9jzhWqIQleN89IPRwngw8WlVVTxAIbKHrm?=
 =?iso-8859-1?Q?itnhYfjTjVZFgu1ZaeRaBb5o0TAjGXI1xuy1rKDBi08aNEHMtMTX2Hr01C?=
 =?iso-8859-1?Q?LMlvwVLOby3rVu3V617Rm6iIeWspyiDWxGt35RtxRkp+DbVP7frNEjJBqK?=
 =?iso-8859-1?Q?+P+TBDeoLiP+t6snrLhb5QDpuYPOnqRpLZez/cFkMcpIzHcHY7tM+/d2RW?=
 =?iso-8859-1?Q?qGjiP6vmDxg+sAjomxbaYfol1nmnddqBQFLVzR8Lfe7Y4E6snaYHKVwyCR?=
 =?iso-8859-1?Q?0Vegq2k6cbcTBwNeAwn3krpCiv7HbE8+0VAjcuO6D572nLQPnvM2AWGDPP?=
 =?iso-8859-1?Q?+UMO7oSLPqAC93AaqBxlYhrPLKqsNUj30m6xrdh91rL05vxF7XZ1Hcpil2?=
 =?iso-8859-1?Q?kt65lmCiv+BGI5dwz8HLFwiP3y6dJR776PCKY0gUk0yIwH0MEBOGyGJq2c?=
 =?iso-8859-1?Q?L64hJ8Hj0nhj3mZwgiY9gIrnMxAgPpz1quWeaPH4AQZaMIDFKWEpqWB1PV?=
 =?iso-8859-1?Q?n8wsyCOX0ZnP1n7NNEcS3iGA5cylxWyARlgfK6Xv8GOLWd10+9PrLLLBFG?=
 =?iso-8859-1?Q?3qSLYuhsFWkYQV3y7XNU1RMIxRGXybJJ6sTNSUuuoVKahG87FOdM2CiC5J?=
 =?iso-8859-1?Q?s9I5pqMEggW4Xkagfwm2XahqvMJsKL2j1dNkO1LLXJ/eHaKvqLpQHXn+Ev?=
 =?iso-8859-1?Q?/5o3XnTtNlSbDnmZhZ0DSRGj5Zcws6dQy7mBK4GOcrCxyLI7VgnYPt0TFm?=
 =?iso-8859-1?Q?bMBabdxygIxTpZcWXGWmpR/11AY+znwbb32kou2V0JRgDItixdaZcoMFnZ?=
 =?iso-8859-1?Q?JuGXWHKcHt33il0giWeU3R?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?fSxfLIsAZ0wA/n1jGd5qtyiKkKaJZFqkZtP35Y55BEFE6w+6L5sQOZgkcI?=
 =?iso-8859-1?Q?g+v/JZ1J5POkfaCGWfFVqRr3yGPhcC+Hw0PxmeKcWZnJ/XZ6Ul04dDhspg?=
 =?iso-8859-1?Q?Gy1uOEBVlKycsdrgmLFJweAOtvIE5yNAC8R0AJKBtjRl7rWwsKrwRlZeab?=
 =?iso-8859-1?Q?XF+y7Eqy8rW11/ypoIm/ZdOEGyudrzxNh/nEBSmaKWucApRvY+OLJY7XeT?=
 =?iso-8859-1?Q?/etfr48LEvPwSTKm0tskx+gP/cc7oXF/DfP8qlNeme20SHgDT3o5vnweI4?=
 =?iso-8859-1?Q?a1SCzwDKCgexbuVTfVapG2b3VdvmeFgcLsngSlNtqxFnx6rh3uQE5h/pOM?=
 =?iso-8859-1?Q?hiOi0+PRz15nkHC/8tlR0Xo7aD1mvJPMHbOtGWpc+ybgt9FiFaxyM8e66Q?=
 =?iso-8859-1?Q?NZrlrQ5uv3+0rU8tEJITkxbIbhpf9jEOtI+Fr8wBYXt8QyrobkT0jqovN7?=
 =?iso-8859-1?Q?RqvAIC2zpoJbph/NyYfNUX2z6+7FJb1huX0lK5SuefTMOt3UImFRwrjAEm?=
 =?iso-8859-1?Q?LNHbK5mAx1FGiWEegIAlohPPcLS4gMbQI/lPKPKQF3frvS69HgwJ5yCeKx?=
 =?iso-8859-1?Q?EG7/ND4Ciq3Y/wsdX6DhCy8dti2BQWn7Pgm2GjEdAfI+w6e89kp87YmxpJ?=
 =?iso-8859-1?Q?lI4gAkXLtBz3DZ1sNP/khv80XXz/D2EUKQqQ5PZIenkkb3GoUbT4uKM2Uz?=
 =?iso-8859-1?Q?XCIbjoCkr+eQJEHp/g3Bt3luFiJjvcQmyWJo2IyNENCpCCHL0OEULIFM5o?=
 =?iso-8859-1?Q?0KzL7NIxu8QpZxYZiIMbDM7eDCW8+CEPBmc3UnHGfAZnQzeuetISURvBoL?=
 =?iso-8859-1?Q?QEZjenrlAMSoVoxrxmone497j3eXFXKqXkGmCzf96gndUiVzUTr4NHf8rp?=
 =?iso-8859-1?Q?tzkFG2+FDYZ2FgQGHjLUInh61wvZlARPzauWCjbDVbWjrPVvLJ8W2JzNxh?=
 =?iso-8859-1?Q?rqRHKl7ozcC64pxva93B0SS9LpV52BgisgCHSssl6PW+iKvbOPtfOhsbka?=
 =?iso-8859-1?Q?brvOjPUcm7IuLyGnv09kDj4r+k1sP1OLtMq4IDfATmSOxUqE1SMi0VDk9y?=
 =?iso-8859-1?Q?UBe4OzR6+8s02FhGY+4wXVsaOtXXMXFbtk3V0Z55TbldHb6X45o+JvmB7H?=
 =?iso-8859-1?Q?wSwC9gMRT2tqjK6P+PHWyCoVsKGl/BOeb9B7wvz421WI7gJIDfMXF0HIp3?=
 =?iso-8859-1?Q?xBPaPOZ58jhbmhuIVYG5uY53PZLKkZSDNCKNzoTTjZQF5lgroZAzYTF64o?=
 =?iso-8859-1?Q?6Z4zsgBC5tvXgOFfojAENVqRwje8zFslk3QnpxIJBNWGHRQG3Cis0S6nzJ?=
 =?iso-8859-1?Q?c60ZIuMUienr9VgADyInUgQPiqs+e4DFnHQTH1jDvT0chCmxG9vx9ZX96v?=
 =?iso-8859-1?Q?1oz19FsmRznqYF2w/SR4f94G0yMBFiHoj+uKkbUcJXFbACKGh+AssVBTDX?=
 =?iso-8859-1?Q?P8Tb6jaCN7hIWdS+A7hJyHRG6qurWZHNRWUKT+ckG7x5d32Ul5wiFIakZX?=
 =?iso-8859-1?Q?vcYRjWe3C6CglfMHiYm9ROMRC02veDc/0azU0OZihd5Gi5p+hivpd8cqf4?=
 =?iso-8859-1?Q?sfa/kOEZE6ugulO+RK0pdR8sUrrIRM3jtlODFJHuwtQRsdgFTTypeDn2qY?=
 =?iso-8859-1?Q?3OJlK5D4cjZUB8/kKOjO67r8NNpIWxSyTcwWjVUzJz9vxwtswFzSTUTbYT?=
 =?iso-8859-1?Q?hf3sDeAw0yHTm5NIJfIm56heX0veBYyE2rusT1g5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea4a1872-8716-486a-4407-08de06368a66
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 06:47:25.6616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nXcyzp6kI4yhCHSJNwoumM+lRCTgk1Q4gKFW3a/p7CKlgb6zHKszWk7ls6v2POvRLKvwcwnQ0h1a6bO7ju86KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF9EFFC957B
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 08, 2025 at 07:03:20PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For good measure make sure asle_work has finished whatever it
> was doing before we runtime suspend the device.
> 
> This probably isn't really necessary as long asle_work only
> pokes at the mailbox as it should remain accessible even if
> the device has been suspended. But seems better to play it
> safe in case there is ever any need to do more stuff in
> asle_work.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index e99616ea2ae6..08d36411668d 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1294,6 +1294,8 @@ void intel_opregion_runtime_suspend(struct intel_display *display)
>  		 */
>  		intel_opregion_notify_adapter(display, PCI_D1);
>  	}
> +
> +	flush_work(&opregion->asle_work);

asle_work() -> asle_set_backlight() takes connection_mutex and
runtime_pm references can be taken with connection_mutex held, isn't
that a problem?

>  }
>  
>  void intel_opregion_unregister(struct intel_display *display)
> -- 
> 2.49.0
> 
