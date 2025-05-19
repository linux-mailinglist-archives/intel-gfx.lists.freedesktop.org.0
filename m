Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BFAABC000
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 15:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD7610E087;
	Mon, 19 May 2025 13:55:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PnkJDVDP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EA6910E087;
 Mon, 19 May 2025 13:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747662941; x=1779198941;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=YDliROr5gQdtQKgLcR8hRTsCxvYv+Qgc0chw0RCaDnI=;
 b=PnkJDVDP0d4d7iVDwDJBw9VduRO5Ylf9dT+5SFY8QjNva9kbVoOiuFm0
 w+tC72yWVgx3rU9jj08IC2RvAVosKdM7cayOUHGPMnxBl4VmnS+qem/SY
 HbvLhTNXDCnWPSuNPnRFwju4x0P2do5XnYsoiAnbx0DCAxyd8Uw41/Qf7
 5ID2l6O3uEK9Kk+mNTZRq00EH4pElBPuXkoZJxcHC7DI8bXUbdNlbGYeu
 l9Mbzk8AsHLkiJmw5ysGDUChMBt1pIk/T5KubnLbNaPDd89N1tpssxrXf
 k+4DvQVocIrNIeMzZXp+xbriGi1nq3dkes1W/pLz5Kd8hx0yutjX8XHIf A==;
X-CSE-ConnectionGUID: SeuROBRMT3OKhic19HXq3Q==
X-CSE-MsgGUID: 4S2uL3wVS4qE2ohAY4gAtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="66976040"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="66976040"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:55:40 -0700
X-CSE-ConnectionGUID: glRjDEglQw+4ML2zfwOTRQ==
X-CSE-MsgGUID: g4eyJTnvRKa3CpN8k6ZCMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139870725"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:55:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 06:55:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 06:55:39 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 06:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xuACI+nZArYubnJlDKstsZ74nDWJAvwbp6wAYR/zfnsfiSVVd9D5sWzHZylyfT0JasIS7s5u51coXWUSaQzY9fFfxzvYXe6DBXCok3k4JJI+i31A+feG4c2A2RlM7W1xX0KAZ6i9+bykesMFu/NlKuwy8h15VZ27jDZehveieUqg3QjDj+ikb1FTMVdFnRYt35Wiytxrmd/YHhymDt3no8L6W/kDCoEB7WryK8arDO3pdE3lCpNQiXNRp2BPfKg2RiztiejpVc9UFojeFaGX8xQ083pG5b6HZca8f9nfRp5frYu2KKTFby46DpiBD2yKlZCSdCMDZ79T5YW51YzNeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gKVHVQ0E2Cy1ZoO1/oq8JGYthfMHSy5pye/wq6q7ONk=;
 b=LLfqQLp7CXGpwCESx4zU0tovyx+cD5EymC0sQ1cMk+9yAKRz4yiULB+ShsZOorg+B9DdyPV5K2wTsqNtRXmksx/sMG2uAFFg31MNlrrF49DH6R3X7GXf22HGZ4fXWSLxm+JMSMZgFHTSlS9PfXRMM4dpvXXaATxvWNASyVJvbg+2tT4kJzFNB7pbMEgvgrhVOgMKUxMFn/Wzg9OS91moUvjVHmlXpRcmzP+W/DOmRVeqtLjlJtuUW3LnyQYctTgcJuStlqTFO1Xzs9QQTkB14CjC0mq4oM2ZQGtfPq1nk+5GUnkQhs4FcCIrflRvwMgaCC9HNERX8rvsG3AIhywe4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7406.namprd11.prod.outlook.com (2603:10b6:8:136::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Mon, 19 May
 2025 13:54:56 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8746.030; Mon, 19 May 2025
 13:54:55 +0000
Date: Mon, 19 May 2025 16:55:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Mika
 Westerberg" <mika.westerberg@linux.intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH v2] drm/i915/dp_mst: Work around Thunderbolt sink
 disconnect after SINK_COUNT_ESI read
Message-ID: <aCs4OSXcwCIPiqgK@ideak-desk.fi.intel.com>
References: <20250516170946.1313722-1-imre.deak@intel.com>
 <20250519133417.1469181-1-imre.deak@intel.com>
 <87zff8u2pn.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87zff8u2pn.fsf@intel.com>
X-ClientProxiedBy: LO4P123CA0060.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7406:EE_
X-MS-Office365-Filtering-Correlation-Id: 00b9e364-8f53-4127-4d24-08dd96dcbc92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?i01q8BZBWuZtfsL8GW7fhyvZgY7SDFWaTRvsUgg+ld/QwbKyVdimU5qNONFp?=
 =?us-ascii?Q?xWTEbLnz6r/IELcr5nZ4XUHSqt6vkAz/LQSNzVFsiJ9rLh8PHbzsY2DrRTJa?=
 =?us-ascii?Q?6dKIWVRwv2HMdrrPa0Ll3cFKkBtsBiNEMVjqHIQfOQpB/+PXrq/WPWYzedjG?=
 =?us-ascii?Q?LCzjMvxHpqJDX/bMKVx+30LDWkNYKmHr/ZnWJ50lIJ1ldxuCMkiqdumbIp3v?=
 =?us-ascii?Q?Jpt4ozHZ0xE78OD//ttBQwKpMUru1rO/sWBWOm5vjamO2wiCONDc4nAvnYlZ?=
 =?us-ascii?Q?eTft9HBIoFWwwdu1Lk87bfVVz3DRjLDlacmN6CUfLEHgH2RWh5V9jtyNkZ+1?=
 =?us-ascii?Q?3H/A5e3rxIoqvOkRhLxP+Cmcuh6Dfbx8ZvOIL1T1U713o6KiVdpRIXuSyNZx?=
 =?us-ascii?Q?Rp+VAz6Z1W8omLzXZWzzYcUs2a3/diAoB1a/utGqGR8RwlQer7azH26kgWog?=
 =?us-ascii?Q?tqU+MfWDEFWiJxtv0A8G2maQh9nm9r/GOpUR5B9DpbfcX7qdExYp/0gN6X1h?=
 =?us-ascii?Q?qjJV+R6hOJVDNGEuXvACMfmJcNpBj4wzVYB6BLcTEQBDP2s89TgwhvcewWAK?=
 =?us-ascii?Q?YXfU+gW03nBS/kvtqtwU9GXZSpdis79vmovQAlnkAzwn4wBJY4vOnfBCaRGN?=
 =?us-ascii?Q?ntS1EqSOQ1gXPtwSudI0oNBeIxB77GD3mOZFZPQ4TqKdqHBRl2evNlIe5n7f?=
 =?us-ascii?Q?u3dVTnnoSHsaZHdzY+YRok8aZQs4Tb6kFWsDaijs3GChqfbS/PvlI8dzvQtz?=
 =?us-ascii?Q?Badsgq7F/DeRijt0KaV2CudL8cUZtQqbLABK8lMgkX2UY5+fsnxyP01ffCHZ?=
 =?us-ascii?Q?W+jElb/dpCWlEOdTgQD783S5DUbDYmbKASx/sXMKe/Y3Iix2IDUScJg8332O?=
 =?us-ascii?Q?k4WWNIZheNfsfMS2JEgYbmT0PeS9JMzvS+4rnKGEo4+UF+1zXhVcOVTVyQtf?=
 =?us-ascii?Q?q2w2ndI6CVw3+X/+s18rrun8f5t6H73CK7hrsh6GYnoLf11pYd1OkYpFj30b?=
 =?us-ascii?Q?666slxRXwgg7j7snB9eHS2KxhYRsJtF8KGH1MfBRraP6Ro8MLBYtk5YG933A?=
 =?us-ascii?Q?tOOUEBUtPjyuu2hlz7uCtzRopH02d2yhkKlrfieEqSAl2dSCuwbM9ANHzM6a?=
 =?us-ascii?Q?WIWYdaBsZ0+IqqS7gq5B7juTTMPvJLp7wiLsAr7WOI0heOQIT9hYjkh6SeW7?=
 =?us-ascii?Q?3UQ6uIW0GJKrQM1FbYReLvnE/lXrbmMEhWxPOg57SVKCcI66heOHliBprhod?=
 =?us-ascii?Q?4Ydd6gIcja6xe74S2BLLw41AtUcwxm9we1wAVwCt+Re+oqLZAGt4zFJKan9w?=
 =?us-ascii?Q?K4blRT8Zda8btEXP2HQrLc1LQPrEYya2qQJ8hRWCb7+jysmWJrjtBJ4rN22s?=
 =?us-ascii?Q?9kXSzZc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+54JIsKEMnpmexDwxC67lGLqaqeK7+GZA8fhTtMF7xJfsXPgXZaTG6lC9mhj?=
 =?us-ascii?Q?QOpTkf4TKGOGI7gHg/SgRPGTV7Tb3fCZoUeUz2ilqNDjYxIA+/Kgp3d7mWqP?=
 =?us-ascii?Q?I/SuweTpYw7BQ2icppZ59mcCLkivnUC2iMuC29kdRjyygQBF5KuV4woTbbMg?=
 =?us-ascii?Q?e+Y47C5aX5UiitlwpeozBhWaJh/zkBjvK95qTmr1UaV7QDynaRGyW0z4V3hr?=
 =?us-ascii?Q?3qEFhgzqkJKtmC3QCx58VfEmyMSzFx5xTVjT51AumbqCVhO6tOsHZaY8I0OK?=
 =?us-ascii?Q?m5dgsBYUI5tlrYJySWuMojZEvvnxsDC/rT7Rz65z2KUu82okmx2wMSKfbfFy?=
 =?us-ascii?Q?/OpfTISi9Rnl+mmvkebBBcmJSjOUov5l99wVfEO7Zmm2RQK4AGiejGZPGbId?=
 =?us-ascii?Q?zg/oMWMJY5Pm7zx7VkTjit+kiLMIgG9ujIdIyNd9aRSD64DGNaA5RWka5Xmd?=
 =?us-ascii?Q?Lq9dg27XdHgAE/DhgWbTr3ByuJxulsAQsZUJ006bW2wvZHueGbW2X/nc4F72?=
 =?us-ascii?Q?/wKTV7x9Zveutrv1jF+9hkDB8GMx7/XP/1ic9zDXKDwkVAEEfElBEHM8TkFR?=
 =?us-ascii?Q?0/zSTQw1dv7YD30KxDFg0lQesNVw8jJvOaLS0JdCH4hV9grC4UxVfwrj5/i7?=
 =?us-ascii?Q?IQs3K+pJEe+efiak32iC0t7c5Y2wxrnFUiUJuFXffEfxC5drpOQibfUsLWtb?=
 =?us-ascii?Q?kshXBOuRg/cOdBp1XHLVcbEjd8YJJgXS9N1LMObEi4ZmVFPNvaNZzEREMugG?=
 =?us-ascii?Q?+UUApUmnrh9cuDxNKMumWMue+TxLxReKmY3wVaAl2vpyU9ns2swxYeMSXTmR?=
 =?us-ascii?Q?zdnDK4aH1FxEUJoTEWxMDbFGIbgfowBF76FbkH5/D8C4tpUYW80IM3vG8kkH?=
 =?us-ascii?Q?01w+ucr/QYMap2+dO3AOCHFHax4hn/ltuvk5bs6KHtzXtTpWMVvI+XWyCrZd?=
 =?us-ascii?Q?oVmCa4MV6a+BuyXgdFX+EusA3cH3JPKrM3DaF3c42tJ2Dajg7FEpNlcUidz2?=
 =?us-ascii?Q?4RC+rk+YKZwLPzvmxM+7sMitge4Ds4RQPQR9nXOtTy9vmWjZAadiWOeUKtrE?=
 =?us-ascii?Q?WNMcbogI2puvI9UcOR8YI+yBFQF2tjf387q+uXsWymUJgi7pwBnA3iMS6vFS?=
 =?us-ascii?Q?IcWg82Psl8G3LAk0yCiOFVhacUeBbCWGpyjv4WpfMMSfmtHGhWlqTA4UclW6?=
 =?us-ascii?Q?326BSXW08+9rJdrC7YgsAFJ2+WeDMtmehdDtNeymNvSly0PFeFwPjO53JvSE?=
 =?us-ascii?Q?+vyMLDEuf0dvTOSybW8qx3scLUmFHuu2OgPPBD+M2o3oVl7Jv9bDjbsrDXgK?=
 =?us-ascii?Q?bGjYn/q6NK1RkD+ATldibBu0q7khzCW72NQ/D1GdvMtFYlDxbleRa+nZfPqy?=
 =?us-ascii?Q?KxIgnrCzILQVVwJ+9ngmQzJozSFlcPHr/E4JHIg+UBFv9jWvdEffm8OO6LAB?=
 =?us-ascii?Q?X/ioBSvEQCwOmo+LWb4O6QP+TP94c7D6iig2wQ6210L7+ZvNiDnKgLzJ+L7V?=
 =?us-ascii?Q?TfQnwniaRbeHRhX9YoxxeeFysDaq/BT3+UmxWvGT9sCKKq9/Na+VbxSWLLpL?=
 =?us-ascii?Q?1A7LqSUo1/RXTlwzOqJ/TRwQXodMxP/bmeHtxxq0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00b9e364-8f53-4127-4d24-08dd96dcbc92
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2025 13:54:55.8334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UCxtWGf5W8UPPLlm/k8C8khHH3LmDxU6E0MNxwOq6XPWHVYU3nN1KjcyVMjBT85RyhfMT91wLVNWdyt7TpChcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7406
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

On Mon, May 19, 2025 at 04:53:08PM +0300, Jani Nikula wrote:
> On Mon, 19 May 2025, Imre Deak <imre.deak@intel.com> wrote:
> > Due to a problem in the iTBT DP-in adapter's firmware the sink on a TBT
> > link may get disconnected inadvertently if the SINK_COUNT_ESI and the
> > DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers are read in a single AUX
> > transaction. Work around the issue by reading these registers in
> > separate transactions.
> >
> > The issue affects MTL+ platforms and will be fixed in the DP-in adapter
> > firmware, however releasing that firmware fix may take some time and is
> > not guaranteed to be available for all systems. Based on this apply the
> > workaround on affected platforms.
> >
> > See HSD #13013007775.
> >
> > v2: Cc'ing Mika Westerberg.
> 
> In general, please don't resend just for the sake of adding a Cc. It
> triggers a full CI rerun.

In this case I wanted that as well.

> BR,
> Jani.
> 
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13760
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14147
> > Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 21297bc4cc00d..208a953b04a2f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4538,6 +4538,23 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
> >  static bool
> >  intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
> >  {
> > +	struct intel_display *display = to_intel_display(intel_dp);
> > +
> > +	/*
> > +	 * Display WA for HSD #13013007775: mtl/arl/lnl
> > +	 * Read the sink count and link service IRQ registers in separate
> > +	 * transactions to prevent disconnecting the sink on a TBT link
> > +	 * inadvertently.
> > +	 */
> > +	if (IS_DISPLAY_VER(display, 14, 20) && !display->platform.battlemage) {
> > +		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 3) != 3)
> > +			return false;
> > +
> > +		/* DP_SINK_COUNT_ESI + 3 == DP_LINK_SERVICE_IRQ_VECTOR_ESI0 */
> > +		return drm_dp_dpcd_readb(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0,
> > +					 &esi[3]) == 1;
> > +	}
> > +
> >  	return drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 4) == 4;
> >  }
> 
> -- 
> Jani Nikula, Intel
