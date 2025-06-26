Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E835AE9A37
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 11:36:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD9E10E887;
	Thu, 26 Jun 2025 09:36:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kAbwBBDo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384D810E887;
 Thu, 26 Jun 2025 09:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750930598; x=1782466598;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=j/YoQ7HsrViseg9fzsDTixiyo8G+7XfMacqS+fP0b1U=;
 b=kAbwBBDodjxl3VQyfQiBesQ8BdnCnKMDu8Axll3/k6xqoUi5Wr5BSIPe
 MI8jTAfK9hRDLuqyRpXW+e6heU8qGbNa3WQVth3DK71j1cPwlrUbjfoZq
 Q+hfU5VylGJR3YQgNrxVLjrBVxHEDVt7llLqxNzFeEl59vtUlKA+j4hsy
 ESj+4vzbqdG8HTe6GQv7O/PncwatvphZerpSF8JBGVWNu3aPraQOr84w2
 4o2DfCc5wRCdSJWpKlakjBuouCMYqd+eKVQCAKi2sDophvD5OX+5s25hg
 UBwW3ft1VEKv38LCu0SAvelQlEx9ZWdPjGsQSnp64gnoTB8YvARRB8PMq w==;
X-CSE-ConnectionGUID: opH1OZdBSX2vepGWA7juRg==
X-CSE-MsgGUID: tbYJ7sbFQSKaDIqoU5pHtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53186151"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53186151"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 02:36:19 -0700
X-CSE-ConnectionGUID: jln4PTHgR5GSxla4rkN1Fw==
X-CSE-MsgGUID: omEsuSl0SOi2Sv3iXC03lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152972112"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 02:36:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 02:36:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 02:36:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.69)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 02:36:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CVl8dXEaJX/2C9GwkTp2xfei+GbkFAQBhIdFbzgk0xHSbWxU+WhpTqYWjAbDSpMI7ouLETiJFs5OKBx8Qt7pYnxRDXdr3pVg0CimWkpN6EX9ghCqvV+OqVh/j6gCIuS0whkNjnExPr225SoEtjsAjuVUMHjO0oSt3bJ1GvRPCmZlhzrfxqL4sJnMPORS9P19Yz5Q4AlP+e7JBDlEcwuiYH0IGDsxlAiHw54vz8mTXTYnlw6qgESurYf4eVGkKXFAGIGWDSlcjPd8FH91aVBkWcJt/qY0soWacMpNyqrZ4ThVGNfjvt509YBxNVPdEhWBANCeIbQ162Z78/47q8ktrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oarbKqW2sMoRLWR0cDPPd3pj5zbLHQ0Xs07oZZFXwto=;
 b=vpWLBFDbYd5n5S+LvEgI0qtjCYbXncAwOKwu4oGDm2DfHVPS8Elu0Ddz1qvERhDQ1v8Z3h7MTgojakjfBOZ4LekaQgNxxrweoHQkaZ8M+mA2fr6k/FCBRXdB8dRYPQiMfvKKEDx0eoOoRBb6qgVDw1/hC+Ic5NjtbRHSi2hNMDv9AKLEHXAL8Knl0505kfdiurzkge6GlNC6OaFco2nRmOu7FcXflZ8zpLbuJWHCC2r9yckVBh127T3usKX0SpGZwR6J1Qh3JvwFKyvCR6aHMj5ZWzaURY6vZbB84ARFge+x1yt5j+zOG1ggeqVRTZye3Wl/YHFzNd1C5w8LeQV6pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB5239.namprd11.prod.outlook.com (2603:10b6:208:31a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Thu, 26 Jun
 2025 09:35:48 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 09:35:47 +0000
Date: Thu, 26 Jun 2025 12:35:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@gmail.com>
Subject: Re: [PATCH 11/20] drm/i915/dp: Reprobe connector if getting/acking
 device IRQs fails
Message-ID: <aF0UbRD7DLIwZRYe@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-12-imre.deak@intel.com>
 <625ce1c9c46ba93027fecadae4803fc86450ad50@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <625ce1c9c46ba93027fecadae4803fc86450ad50@intel.com>
X-ClientProxiedBy: DU6P191CA0007.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB5239:EE_
X-MS-Office365-Filtering-Correlation-Id: c309c831-2f2d-4d41-5a8e-08ddb494d46c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tb0amspAKhbvothUcre3lAIbgGdrPwmYqbUFKcC41ja/aYRunOl5Hr7t4FU6?=
 =?us-ascii?Q?mCyIozHCJK1PmGp8gIPFqDziN9Ih7J0AlLnOHxvSxCWmNbyUx4iqRq4jVtEY?=
 =?us-ascii?Q?jUE599re2dhzPe97dy/d+MAgUHVPoLNscuWExd+13KY5MFM85XtruT48itT3?=
 =?us-ascii?Q?bch/P2SnAKYMREFEo03ODLW6PPCEEahT5BPep1UkWXaORtFgOZWY+9aGWB0c?=
 =?us-ascii?Q?TbFxg52WnTBgdOsBYDMxW5fwNAibULlXhx2uZd8nvt2MiP7tdNA2PqJ/EqoR?=
 =?us-ascii?Q?R3VOfqBUAZ4WT7wxHrfXcPutM9FRYDGokf+G3yYcag7UQYqMQMIKdBbAvsu7?=
 =?us-ascii?Q?zK4cKH3YkdxHjVaGoBISGLpOXC5+DKj1Hfga7N+VHMUsTpwB5iQnDLebdoLJ?=
 =?us-ascii?Q?RhJu191pJvDzj/iW2eMwB3pm3v3eNAWVtH1Hc0u58ngRQ0EDiqX55CKeyBtM?=
 =?us-ascii?Q?5TQgDUozQEh5zWUkJKktn/uhYyx9BdcNJKye6bc1kTFAF+OEJY8yDjhNJQbu?=
 =?us-ascii?Q?cgjOdcSWdbyx+u/pE+AkAwY3OquuwnnIA1gOR86lbIliViUTxqe48TJwIhMc?=
 =?us-ascii?Q?h83HPBgHKeuL4z4mjWmEF6luhOnEtyksDxV7U16mNCPV/FN4/+w0EBpdSLUA?=
 =?us-ascii?Q?GaiqmwwaYB9YbkTVM1bgGLnaTv7c7s+RAsaEdCIqUlKFEegm4tyV5JwQC/lP?=
 =?us-ascii?Q?xNf7jLsVQL7EOJKzd5q+OMGP//qK1JL2q4P0/lHJlnb2TsqeiXaioVGGQ8qi?=
 =?us-ascii?Q?69G5gRTPfvVCTTUfJreq7HSVpNgp2SAbmMn5hKzOPbfbkws+xwwtmLzT8Lx/?=
 =?us-ascii?Q?QJ04t83G8FuD4SVnb5oLFf3L+CVT4NqxYAezmjSBvOxFsKS7WJ20rJU8gBfa?=
 =?us-ascii?Q?moKn0BJL7DRdSnaPfnqtrqSd4dkvwDAXUbUkLNFVbvZyT1c1qtjm6qc7l01H?=
 =?us-ascii?Q?W1RDhH5mnUOl+2v4MqmXsHL67BmYDzDZMttY+qKrC42Wfl3CmpEB3LV3RXCW?=
 =?us-ascii?Q?Olmm0cScqiURspOo6e4G2fxI3HvGctvSMRmI2Wu77zXZXhzLHvQVhwWUKsZx?=
 =?us-ascii?Q?A5dIxdHjq/D8bc8WEOJvX/O/G55qz0HjvvTmrwdSJBvW8DSfXedHxSADH6tM?=
 =?us-ascii?Q?V2fD6f2kxFQefiAT08PFXGcsFYim4G37nHTkbMLd4OmwdZV5UcYiP8g7woFx?=
 =?us-ascii?Q?1HNOXWXAzCTXit0ojh9ggaWzHsnoaK1CTzRJtUOKqKbOD+vg4uylFNnlH0hW?=
 =?us-ascii?Q?fD3SOPILMdY8ZZOhgnKIFJIsmgberM4mODQxfFKUkXLZjFBSoG1YngYBNXvz?=
 =?us-ascii?Q?IwjfNx6LLZA+hk/WTRfpfSpF4AN84ty91tCCQFO9AywtXhqBUNoJzUurBkTh?=
 =?us-ascii?Q?JZqL+6VvxbM1cBTQ/N9jJD5OvRVMbQJJTc6FPBufTL+FIgXBgQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lRMrXJzOY3SiAWzZ5sUdT48v0utiyh1zjUOz/N2/NlRlZpyssBFT6wbzn9Uy?=
 =?us-ascii?Q?qNok2urMXG+8F/R822buLQ2dGlZDZ6dm9ZLhQLbmylFEzOLZ/8VNuwtVLxNv?=
 =?us-ascii?Q?6mdktSE9vVtqUYoJnuWuYC/92QloVDtuNJdj12kVIJwBVyujARONC5nCRsaE?=
 =?us-ascii?Q?bEBqTVMDy5VCBT+lRs01uSY+D9cgc10ZgncosxvI/s1d9owGL4fYE7eqHUDX?=
 =?us-ascii?Q?+Pc9cebjr9Xi5zu1td8A58JHcQ9cb6ZG8v2b3vCSkQXvhtropE3ofvBWJp7h?=
 =?us-ascii?Q?2clkn+p223uGjv7Ok/d5UiR9rbOP7yg/lUC7irKf/yDanl9jTZAW7FsHn8Ha?=
 =?us-ascii?Q?+RV5WxVjD9stWpp1repLTwN84M5VBOxGkIXnnkf9rgyAIBDsREpr8dFcaLE0?=
 =?us-ascii?Q?ll3I7Z0i6e/hM0P/6FC4qe/JyxukncFVjeTbtseCQhlzU73cxgOKBEi1CUDC?=
 =?us-ascii?Q?Q+Nq5oCDZVXtQFAlUPNkMWWTtU0pr3Il6nZjwJeMiKAUnI+52UwY2KRSvT+9?=
 =?us-ascii?Q?Azi2a5lKtFAWLQREyas0h2SfP0GBm+tmsYMGWuAhU4xrz82+P3I7cRHE5PhC?=
 =?us-ascii?Q?JIqKjuEufO5ngEEzxyRAwqeEWXRSCDlEaSRXNsWSizzuZOhbepdxwtO/Kx8Q?=
 =?us-ascii?Q?NhWhRZfYcEGz9oReCHB2mRmanbOdR2faHzOR8KcF2C7xbjYAyodSLgWe+MnW?=
 =?us-ascii?Q?R9loxZuqfULT9ywcofVOoyJcWcfOnn00veTy/fAb+6+/b7o/4pEYbzeVBdRa?=
 =?us-ascii?Q?yYtlF28GSeM8f/DRoLLFFKcUNi47U42bdfLPo+l+Eizml2iprxlFfzN8Q6i3?=
 =?us-ascii?Q?t8LJdU3S/lfFfR0HuGcz2EiGZti8mEi/HK9URAUT6cQdsrV3LaRaohJ2EKFf?=
 =?us-ascii?Q?Z2TL0Gq5KolKYMLZVZcnlkCRGehEX4Us/tdPDp8cxMBTBzyiyOhe7ao/fJfR?=
 =?us-ascii?Q?HbrIOf5rSqeRZzgx+3Y+n6+xdPkIMtvw2Rxe1LXz1F4a7IqOMSYilSv686F7?=
 =?us-ascii?Q?wL9xmfR2ucRgMl4x+SzYelKp2yE+Z+KDJdyKnPXu0Tp1b/Bji3RLOF1iCb/2?=
 =?us-ascii?Q?yVmLWMEcAEHXE2VM5Ld0Moz6I1S5gWH+fWjMRPqWtxLMBHITjEfY8vBdLCcm?=
 =?us-ascii?Q?NDOBtbbIgtQU5AyVkJQw4KQFymnBdjFz4N5/+9ErTj+6QEhuCnsQJ0dflxmt?=
 =?us-ascii?Q?ClWwyCv6KGxNa8WtO0rZPkJ2lgSqIHonUDkblUE49WCF6FZMXY33emDwB+Nz?=
 =?us-ascii?Q?nDtm6l/ZdylxMUt7mgeK5bjHwxLyV956saRUaHuI0CDihTje397RhgLNc2Ut?=
 =?us-ascii?Q?H3a2kTi5GDE9awIv/Pxvm8NlDlaSgjM325/Fz7QwGBbqcIOtQjvRo8gz8IiJ?=
 =?us-ascii?Q?Mj1edKKMri+M48Jw2oClWhJ2QAXYFiR1aZBaNplzXMNRIV0WCYhLal7X9cZq?=
 =?us-ascii?Q?SaiuUIRi2uMHR/+HTraSoDMGO8muParsXlAcnFuucWdgltGk/smjq6g/l65R?=
 =?us-ascii?Q?L7P56IW5jWeOZbepYkZlP4raU8+9tMF4Z0S4g1qOX4MaDSnyCKs6BdGaY2fm?=
 =?us-ascii?Q?K+PgHTfb9JKNCnh5/7rWL9MLBQqe2eDAQ+Kqgd1I?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c309c831-2f2d-4d41-5a8e-08ddb494d46c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 09:35:46.9378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: szNsfPWLLiL8FL5b8STPb9NvdyLZP2jTksjbncRo5awcs/Uxp19rnskgqeiaz786Hz7PbU/hqW2aj+pE4P7SEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5239
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

On Thu, Jun 26, 2025 at 12:12:11PM +0300, Jani Nikula wrote:
> On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> >
> > An AUX access failure during HPD IRQ handling should be handled by
> > falling back to a full connector detection, ensure that if the failure
> > happens while reading/acking a device service IRQ.
> >
> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++------
> >  1 file changed, 15 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 7793a72983abd..7eb208d2c321b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5393,16 +5393,20 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
> >  	intel_encoder_link_check_queue_work(encoder, 0);
> >  }
> >  
> > -static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> > +static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> 
> I don't think "check" is very intuitive in function names. Check
> something, but then what? Is it like an assert or does it do something
> active or what?
> 
> What does a boolean return from a check function mean?
> 
> It's not obvious to the reader at all.

I agree, but in this patch I didn't want to change the function name.

> 
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> >  	u8 val;
> >  
> >  	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > -			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
> > -		return;
> > +			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
> > +		return true;
> 
> Looks like true means the check failed... while usually true for boolean
> functions means success.

The function returns true as before if a full connector detection is needed.

> 
> >  
> > -	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
> > +	if (!val)
> > +		return false;
> > +
> > +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
> > +		return true;
> >  
> >  	if (val & DP_AUTOMATED_TEST_REQUEST)
> >  		intel_dp_test_request(intel_dp);
> 
> Whoa, it's not a *check* function at all?! It actually *handles* the
> service irqs.
> 
> Can we rephrase the function name?

I want to keep the function name in this patch. In the following patches
I will separate this part and rename it to
intel_dp_get_and_ack_device_service_irq(). 


> int intel_dp_handle_device_service_irq() and int returns maybe?
> BR,
> Jani.
> 
> > @@ -5412,6 +5416,8 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> >  
> >  	if (val & DP_SINK_SPECIFIC_IRQ)
> >  		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
> > +
> > +	return false;
> >  }
> >  
> >  static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
> > @@ -5476,8 +5482,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
> >  		/* No need to proceed if we are going to do full detect */
> >  		return false;
> >  
> > -	intel_dp_check_device_service_irq(intel_dp);
> > -	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
> > +	if (intel_dp_check_device_service_irq(intel_dp))
> > +		reprobe_needed = true;
> > +
> > +	if (intel_dp_check_link_service_irq(intel_dp))
> > +		reprobe_needed = true;
> >  
> >  	/* Handle CEC interrupts, if any */
> >  	drm_dp_cec_irq(&intel_dp->aux);
> 
> -- 
> Jani Nikula, Intel
