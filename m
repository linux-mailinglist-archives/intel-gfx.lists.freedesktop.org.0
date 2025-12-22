Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC9BCD6108
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 13:56:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5B5210E661;
	Mon, 22 Dec 2025 12:56:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RBAdkZQg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E64710E661;
 Mon, 22 Dec 2025 12:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766408174; x=1797944174;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=AxXTcTgXrjl/PTbkzV3LIidMkL6n/EVNzlB1HrM6+8M=;
 b=RBAdkZQgVAsZxKv/shZUE5SuVc2ffOGdw9Z4EZail6LWk5zvl6UwiVEQ
 bDb5WQ06DJG8wnpbURE6atYPJ0YApCYKcIutZCs0DWTCA4uchjG6VfQBY
 0mI1iCIqEAGavZ98XmcfxP/sC3EFamTVHPsaCukC+a4Yx6UB5iKOtFAcB
 2IwpmZVQpmQGdpcyrY842VHFQSKf+0kJHTz6y2mQUoPaf/KAZA65InPCB
 t53uhBeWwB4hRsBHApoKDwuxpp1CGaLkGlannYgmYAcidicA8LgemAn4n
 Q+hl0Uwi/ixzdXFWudjgc5SrtYDMTybWP9gVeTNSnS4Hr7YN4L9Khq4da A==;
X-CSE-ConnectionGUID: iNcTVS6TSmixHOUow+W/7Q==
X-CSE-MsgGUID: Lh5bn3gyQaWMeWTSmGyVVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="78896861"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="78896861"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:56:14 -0800
X-CSE-ConnectionGUID: XmNNVnGWR5iiIfaeMiAxSg==
X-CSE-MsgGUID: 1iUIAGFDTQixPbvmi3PEoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="230534275"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:56:14 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 04:56:13 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 04:56:13 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 04:56:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NEh4Z+dCoGsBjTPCu+FWqAdp+hsV7ohlXU47AMDgeacFI7lxhnmhY3oRQZPqyUeMbZwjU0+GVnhYQSXP4FtExZye4itBV3QlLS2wvn0bVDPifWoBzRlMYjl52JWXWgfd8FqgdZDMFZLbQe/hCVJTId35kNy8OIkzXrPaJqjk9wjFr+awXcfHZX5yxzLyI9HDToGaoP9m6hKEvuK4jh19Kd35P4ttNsMjbO/YRLra8W5GbmVrC6uvOX2IAs1oVNFmYIWffW5jtZ+YNyrMucQcqGZlzyl5o6LhRVWc9rFe7X/yj68sEKL6b8bdc/gdGqgsE55ZN1lHw2zlrAlMfImDpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tpIBEXky0VVGNt7caIsbRo+rNB9TWn+HTpS347dUotI=;
 b=LeBpYy5hi+AsaZpdgqTCINsadez1XdV6aOBmx5yD6BM99EEJQmieout3KFIRRm91aeeH2DgiFYWqOmeog/p6jMyBMa4EeXoMqvgyxwCXxGFN0S/pJRLm4hwnw2Cs0XHQz2nwLWDMuXU/MulgNC36UNq2sza0Vbxv0qxVOo5wZ1yFchV7fLlbEUez82PrEzDlvknA+La7rsb+f2Rq3ntkFIuee9F9JqfDDIo7hNFGdnAVoRHzylRgJf5hvFJPyD3JUw23VRBoRlmSen1tQ8RyBBd+w4mJ5zdlGERvYvo6kayQmcBQv3TdvZjygciVEN0b3zUsCWR87AtAaDjw8zOaUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7925.namprd11.prod.outlook.com (2603:10b6:8:f8::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Mon, 22 Dec
 2025 12:56:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 12:56:10 +0000
Date: Mon, 22 Dec 2025 14:56:04 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
Message-ID: <aUk_5GZQrDIDN8fK@ideak-desk>
References: <20251222044443.2443411-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251222044443.2443411-1-ankit.k.nautiyal@intel.com>
X-ClientProxiedBy: LO4P302CA0009.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c2::17) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7925:EE_
X-MS-Office365-Filtering-Correlation-Id: abcd74c7-6583-4b1e-f855-08de41597a9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vVkytxVB1M4swdr56ne2PU3xCSRsfAaismiPZJJf++zTLAAjxBJ98LKEb0Np?=
 =?us-ascii?Q?3F79Px9284JA1HBRdqfPdJs+r00xlqRF2l6xzPNEDXR81HvEe2+/wBw53lLK?=
 =?us-ascii?Q?OlMrDL5mCz/wST45N48izSSTbugfeni4mZCM83EQWSEtpQxkSzgdda0g1ycP?=
 =?us-ascii?Q?tlOXVPgUtpLvTKiM0zvsCriQT4ZHGP/V6xEozyiA7xItsaC7nyts9tNTbh7N?=
 =?us-ascii?Q?jVnlckK2G0ZuAtNA8Mnrz2cp+qwTpg11xqAL84KG8xZ3uh/JgYP3GbVSEv2Y?=
 =?us-ascii?Q?FtPudvfdsbjW1+pyjP6MYrsskk/I4Dp6euQwyn4SAwHYsZ7Tx8Zm79QdQl7k?=
 =?us-ascii?Q?ipB1ihm9EYCNXyEKBoKK8kM3F6PbBeYhBSzW81QkdoeH+utes2yIQsPslcLu?=
 =?us-ascii?Q?4L0dN+osxaAop2xspi7KTX8XwNg8I9QDnBlLU6EO6f/lpe6aj/NxeB3G6fqL?=
 =?us-ascii?Q?NyWzTbwJmZit+59awAUw63hR4+QbNjROSQZNHF+VEU91oQJnWTrz/d75/3Xd?=
 =?us-ascii?Q?fL5Sz1xOnH1HfM17wQ3y31xNDGGWe+G0CMft9rmlWNSt2ZHJlYT728zRav37?=
 =?us-ascii?Q?qD2aMb06oX3bYk/idczejhGbziw73YuoYzw3/KsJEi2xyMRLuy1/oDt+Yz7m?=
 =?us-ascii?Q?7mbvRhp9HEmFAZL08sQRfPWkU4moZ3XaePLs9Xt1kYfOrQ+T10sA+Xo0aPBV?=
 =?us-ascii?Q?ta5EyZtJW22on7umpVrmuxr66OwB9dNBnsMUeUpbXWnN9ceNmPe6syOMUZ5g?=
 =?us-ascii?Q?kRryD6UiaPyAgn4bxHfMgKKlqa4x5VyvsS0RDD1kQQ8cAGgoXwgiQUa0Looo?=
 =?us-ascii?Q?kjD3MaTIljHpp74iXLFoIRn/m7yNu5cTmEbzGrCIIeybRr/YdAvPtjuplBem?=
 =?us-ascii?Q?9JqBSkLOAxzhYlnx1V4h8JOEjcGUW4rjuuK1AOXMFzborI9gwPAYySYMp42I?=
 =?us-ascii?Q?akOpzLddL9MEgZ8pRLEE/S7NnlCtXM1vadR02NGIYdqv/pyqrR4VFUXZnUWD?=
 =?us-ascii?Q?ie7lC1Ef9CEZywwhYoMZb38DRZC1Dm0YMi66IZc74xd+mgAkYLEgVfYu+Huy?=
 =?us-ascii?Q?e9N8kmcwpKdqofM/T1TSOp0M34VWuKXRFLAE7QsP4H1FtaKmhP+QtFcT+C03?=
 =?us-ascii?Q?iPjqZ7NCDV4fTUTIiRib9yAf54wdNVWxpwa+cNvKpMDYx1cUDrRR+q6JwBdU?=
 =?us-ascii?Q?VY1CMwJInuOdC8vhZYWHs1bIlxlqK5eWgDAOXcx8YbUSgy2K2tGk1dBVNSdY?=
 =?us-ascii?Q?9uDbqkLp7HoRmgs+Z+8z9sFc1Qe6SipbMwvlzYlNjDJ4og4pSOkO39bE7nne?=
 =?us-ascii?Q?6G9Q3y3c8qWq2g6f0aItkA9o2r6HH4ZizjS1R8gvjNIVCef6sxWZerEVkEmh?=
 =?us-ascii?Q?vtYrbfPwaUazL3xXbDnZGgEFTWvefWSyP3Lm3HdBXnfS7d/qZQa3z8Teiuj1?=
 =?us-ascii?Q?XcGJZffC25Biw94Lb8ZxHbXBaRgG628P?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0wOHcA1CEPjudAnFDTMGVzw874cRBwTzXMLQde8LO6iPLEbLwH5Q34jyw1M+?=
 =?us-ascii?Q?2K1N5KnNzt54X79NLFoB5FeaENmCHbckHh7Vv8BgH7VfNFVrYNDv+yGz8i6m?=
 =?us-ascii?Q?v4+GZ+YXnPrwRo0oB9uDLiZCSWBmgCHsY7wq6OtXUwFv0kulUHP1WwSKcBKf?=
 =?us-ascii?Q?6eLc2B0Yd0mvKtxIphBmm9MqMF1fY59QiZOFynt91Ij6omNY+ro7UpOP2DEE?=
 =?us-ascii?Q?MXr8+OizQcBMFVOKCjxbjvDcDd83dU3JkkyevXtnshORRQiimwEsBoIZOF39?=
 =?us-ascii?Q?zsaiW9rHkaVjRdnSkY8VEzD0pZgL8/VITHv3pfixUZqj1y7MerQ5JhBwx90g?=
 =?us-ascii?Q?O5r4NJjTVpou91ejcJixehdJCN7KMHOErffa8HN4Vn8LUnIrDqFYR9RT7OsK?=
 =?us-ascii?Q?Le7Ls62W5euUO8YmRkjStVXyKoF2oLtRGZw4aETxy69df7kuHCJOFnaFuYXe?=
 =?us-ascii?Q?tPmei7OcZqr/zlODWG6jx23kpPCP4rKDHsz3cy3qM5C8EJlbkG05GzGa5nAO?=
 =?us-ascii?Q?dBHQyMKnusar2gjhPeTjaXX3Mmbemc2eh0nJyIfXUk8bw+HamFUDP4YGcSMm?=
 =?us-ascii?Q?7SHWlCpRH7NCcIBT04boHeuKMhxeRqYvNUBYAz4BKZE3RUVwq7A4deB4NmUB?=
 =?us-ascii?Q?jWEsF2hTePO/qXrX6wWRolajRAxGmwj3VGij3R+uROc435fz5HXRcNsPs0V/?=
 =?us-ascii?Q?a+Cq3/mzeuIImtvbCt3HGbG4cGO9lKloYWd9QeG7jNpMOO85RRgN5McZmDZm?=
 =?us-ascii?Q?RBYJvY9viXRrfW68YBqQ03DXoMRKKYUAGythqkhoEGFiWs8iFQXAClquUqty?=
 =?us-ascii?Q?nomDdcQriA3w6t6HbJ19Xjy7gqt0qNbtS7r7T+DC1pRlX3fTAnwkntggjns1?=
 =?us-ascii?Q?2Yxaxrc+TFx7HpmnwuqnyhHoVUytkprLhMQONoBk/Ny1wR0HzyJCNHn7J50w?=
 =?us-ascii?Q?ZTcO1hZ5jg77GXmXjGfqYkKKR11tEw7B80G37pJlpvBVeFC0ZHVdTye+wvgP?=
 =?us-ascii?Q?Sl3aVm3j0dcdcNbvMUgCYBhwc0nauDy6eVpECifUuBlcFCrs2uxSZM4PkYP4?=
 =?us-ascii?Q?J0baoQ88jGESgsPIavreiGYp1Ib0DL9XMuDj+cUjo4WKhir3HoaP1ki0WxDI?=
 =?us-ascii?Q?DKKxDelQi9HBqbiejYZY6aVk8shN8GxzsRw64lpdFuGeGYkdz4CJQv1phsPT?=
 =?us-ascii?Q?cnchuUKw4TSWPdaAm8yXgn+DSg1o60ULTllPtR9WjkKlNEgR3d7+ZYl8FmKl?=
 =?us-ascii?Q?NR2t+GpXmEHVLppSaqNaUO/GFX1LQCiuLhUFeXYMqBlZDdQrpz+8ydx4qHxr?=
 =?us-ascii?Q?lIwBQrZLQmhWV2bolzi957khdoDCNEom+B6NVgf6GJW1Z/bOTE2jRVrbsEWV?=
 =?us-ascii?Q?mTokMHlqsyDtpPScl1EElRZ9DOj9n8Ja7Xs584gWOqxlLpBUWFcRdI9jGzPq?=
 =?us-ascii?Q?Ty6mHIHxIoySiltMt+vDgCGWY7rNVIuoXLyO/9zHum3EkgHWWWDGtpzVahRw?=
 =?us-ascii?Q?lPk1YwgDnLKfImvcyVQh32x1GGcbsvzWzFZehZR3j/fORScV2aKFt5EIjE+c?=
 =?us-ascii?Q?kSzBCsZ6fQBktL8UXWMmXebxWj+lCyMJRMX0PWHaD0EVSoYG2cFU5h1JajpU?=
 =?us-ascii?Q?QHxEe48evjEKdlXE2tLDTk/AyhMQ+DQalN/7cpasxkruin7Bf/PaKWynIov6?=
 =?us-ascii?Q?Dfnc1f/tT+32CHlQciQPbodFBevl9J12roDxvRcOjEaZEXin6niBdns+9Ttw?=
 =?us-ascii?Q?4iJJGF9OjBfrvB7ePJa0S1gR+f2RU979SosMbi83RVN91uMWpp3C4SOjZ41X?=
X-MS-Exchange-AntiSpam-MessageData-1: GGTM5aSdY0vk5w==
X-MS-Exchange-CrossTenant-Network-Message-Id: abcd74c7-6583-4b1e-f855-08de41597a9a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 12:56:10.0623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zcjlpw0YA7cNcepyd3gCXMT6xkJfVP79kbfjmcLJ/pa6vZoFvcaRcf7O/+kNavVgSkUKYIQjIXrJMO1RteDFvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7925
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

On Mon, Dec 22, 2025 at 10:14:43AM +0530, Ankit Nautiyal wrote:
> When DSC is enabled on a pipe, the pipe pixel rate input to the
> CDCLK frequency and pipe joining calculation needs an adjustment to
> account for compression overhead "bubbles" added at each horizontal
> slice boundary.
> 
> Account for this overhead while computing min cdclk required for DSC.
> 
> v2: Get rid of the scaling factor and return unchanged pixel-rate
> instead of 0.
> 
> Bspec:68912
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 45 +++++++++++++++++++++--
>  1 file changed, 41 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index ad5fe841e4b3..b91cd009be9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1050,15 +1050,52 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>  	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
>  }
>  
> +static
> +int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
> +					      int dsc_horizontal_slices)
> +{
> +	int dsc_slice_bubbles;
> +	u64 num;
> +
> +	if (!htotal)

Should this also warn as !slice_width below?

> +		return pixel_rate;
> +
> +	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
> +	num = (u64)pixel_rate * (u64)(htotal + dsc_slice_bubbles);

Better to use mul_u32_u32() to avoid the casts and 64-bit x 64-bit
multiplication.

> +
> +	return (int)DIV_ROUND_UP_ULL(num, (u64)htotal);

Both casts are ensured by the compiler already, so no need for doing
them explicitly.

> +}
> +
> +static
> +int pixel_rate_with_dsc_bubbles(const struct intel_crtc_state *crtc_state, int pixel_rate)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	int dsc_horizontal_slices;
> +
> +	if (drm_WARN_ON(display->drm, !vdsc_cfg->slice_width))
> +		return pixel_rate;
> +
> +	dsc_horizontal_slices = vdsc_cfg->pic_width / vdsc_cfg->slice_width;

The above looks to be the same as crtc_state->dsc.slice_count, aka the
slices per scanline, could you use that instead?

> +
> +	return intel_dsc_get_pixel_rate_with_dsc_bubbles(pixel_rate,
> +							 adjusted_mode->crtc_htotal,
> +							 dsc_horizontal_slices);
> +}
> +
>  int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
> +	int pixel_rate;
>  	int min_cdclk;
>  
>  	if (!crtc_state->dsc.compression_enable)
>  		return 0;
>  
> +	pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, crtc_state->pixel_rate);
> +
>  	/*
>  	 * When we decide to use only one VDSC engine, since
>  	 * each VDSC operates with 1 ppc throughput, pixel clock
> @@ -1066,7 +1103,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	 * If there 2 VDSC engines, then pixel clock can't be higher than
>  	 * VDSC clock(cdclk) * 2 and so on.
>  	 */
> -	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
> +	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
>  
>  	if (crtc_state->joiner_pipes) {
>  		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
> @@ -1084,9 +1121,9 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>  		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
>  		 */
>  		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
> -		int min_cdclk_bj =
> -			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> -			 pixel_clock) / (2 * bigjoiner_interface_bits);
> +		int adjusted_pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, pixel_clock);
> +		int min_cdclk_bj = (fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> +				   adjusted_pixel_rate) / (2 * bigjoiner_interface_bits);
>  
>  		min_cdclk = max(min_cdclk, min_cdclk_bj);
>  	}
> -- 
> 2.45.2
> 
