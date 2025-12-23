Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B03B8CDA4B3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 19:45:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B893310E2B0;
	Tue, 23 Dec 2025 18:45:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tx536bb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BADE10E2A9;
 Tue, 23 Dec 2025 18:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766515524; x=1798051524;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=PJgkWuOIC7Mzwe9XHfZ4/OdfPzJyhGKGZIqzuSBNlTQ=;
 b=Tx536bb38PX6UvK0ol0r1nxEst7c10bDjUcA8VJY+GeGOievf0YIkl9k
 SrZjnd5Hwh4MOJf8rk7lALdupuida5nQDKEuUDgeCoi1wxitMtouKeIAJ
 3M2hznSzT3jVct5FCeldaloU0yJtu+XlJfpHmphglgMxs2Me6x3NywDZo
 8/tTFyVqOTkYGhB9Z/jvmcTJL7D7WTxVWktIFUOh94F8pdKnf22d9D2IO
 guhenRt6H75qSR8uobsnsMvako6R9QPQcH2IZyoxofOr8g5PTCUxGKxzZ
 pxa5/3H0ZmDN5SS3V695B4IQtqVDhMzCJfOL+syJiWM/J1abj2+6Xdn4z A==;
X-CSE-ConnectionGUID: MR9sFelDRNujK1SwbUrDcA==
X-CSE-MsgGUID: tcb/cPE7Sgqf1+3CJSULrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="93839900"
X-IronPort-AV: E=Sophos;i="6.21,171,1763452800"; d="scan'208";a="93839900"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 10:45:24 -0800
X-CSE-ConnectionGUID: MaauHxIkRGOguW+tVaqIKA==
X-CSE-MsgGUID: xIAZJytXS5KfBYA335nutw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,171,1763452800"; d="scan'208";a="199079890"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 10:45:24 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 10:45:23 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 10:45:23 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 10:45:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LRN9KcwFw9c7LKrSwY1rPXGA1mmopbgbihyw/vjz3NtEA4fK1H5ShcuRS5cMbkjer/Cn0+BWGZc+NARhK2/f47FIgvx5rPX4MBnrWFjaMybJ2FDu7o+Fiv4IlH+ljBzAEYKc9BtudaTAYLYxkAOPrVRWPfZ8QW6T77FF81hVDZY6nImCFxNSN1YWtnAwWov5hBRnhBW/zZ76JrOMSJzjpxKyCka+tm+NXFDS6SDbcCZrEPBGho11llYMO7YcgdYcKl3i8Ss7+Oo/65501JMUwsQY/RONHmDCd5Si97tnvYyoR0e8hkxiQ6LiqYcJPXwI+HyNBalT5Hzag8786LnvqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L+R+77qBG6ylNjF7LBXA18/T4QKayUS5gWMOIi4cV50=;
 b=L1+5oqkWHj5QMuBN0dqOONYHsiUlGrBObFIkW+A6XAd/S2H6hEMvlk2oe9qLda0MazyaH5bUkP5ok1gKN5y6vy4uPyRl4om/l+PDKVsFr//aIWAPP71nYhzsQM/xGhxtUTCEUu6lKZbtXFOTxv8z6kOpILulE72+RzjS61PxLm9wPPygmFgNUcObc9gbmNPjUgfgQyFQe9oiFOwnMnrU4UnqhqpQTA8kNC8zEMKtwyvRepq0DAPE4gbBO2KLHtNiBBHRyJwqzO++N/ybFazaN8rjTYIvWi7P6FKcGMD8GNssC8ai629FDuDpflzXDjKevzAbA3XkSYUeU0zURsQAmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB6043.namprd11.prod.outlook.com (2603:10b6:8:62::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9434.9; Tue, 23 Dec 2025 18:45:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9456.008; Tue, 23 Dec 2025
 18:45:21 +0000
Date: Tue, 23 Dec 2025 20:45:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v3] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
Message-ID: <aUrjPJaxbvhNhUv5@ideak-desk>
References: <20251223150826.2591182-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251223150826.2591182-1-ankit.k.nautiyal@intel.com>
X-ClientProxiedBy: LO4P265CA0152.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c7::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB6043:EE_
X-MS-Office365-Filtering-Correlation-Id: 16acd77a-30e7-4619-af88-08de42536c9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dGmSe9Ve1GWanOGfL3PkCMq+wG5KPhVHyHWqR0m1BiX7DugYow1sTYi995d6?=
 =?us-ascii?Q?K8d2irdA9wTG6520fmvhX165vpn0Ovk/DNSWYMZfAnoXwtmJxUL+WS3ITrUd?=
 =?us-ascii?Q?v+9A5lsHq4czkf4ZVjngp8l4TpfrXF+ecz7NSb3Hp7bC175Gi/tWMMh+OlTA?=
 =?us-ascii?Q?zLWUonbWMUlRHqEDBHvMouWHlGSBL783w7Jl0XOcW4MXJFuYu0I3cj1PIDyW?=
 =?us-ascii?Q?SVFdJ/Kv7epKb+KM4lnsrtooqAbYLv2K5CA1pV7togQo8bXNuEd7uKDo55MF?=
 =?us-ascii?Q?m0wmhd4cmRbSsudSW46MK3yuTv7kHPhJjIT276h4WyE+VRb3o7nHBcaMxb73?=
 =?us-ascii?Q?5LJgW38/dQk6Fr7+TwnEu5+VFS/fMVV0kBC5EJNFbVcTlje1XX6c19G2PjV0?=
 =?us-ascii?Q?iK2Rmk/0R8uOLTlDhEoZw7pKNYZEPyf32rU2+KO0KK+67TUJLIznMAcVhzV7?=
 =?us-ascii?Q?MawbfxWqpJKxRScvt1gFfP8oVZnTtti6Xpr2/HDJ9fx1IoGaGoGJRYf/fiVZ?=
 =?us-ascii?Q?QhKi6S8qr608/Qyy9DLHTqk5b34a9pWFmWwl9/XiF6UGFzBZj9skzYiFE4hb?=
 =?us-ascii?Q?QKNA/mo9fGaAyIocHi22gY+Fa57xgn/Qs1HN9lAY/IIMYWjakP8REd5EaViK?=
 =?us-ascii?Q?Wg/cixFt+giiNSka9Xue9BAqRDC5mk5xR9mRA/3ntwDG/s1S0kGt4G2Q+9or?=
 =?us-ascii?Q?/z84ytP5mh+Yru8HwXmG6/HdLpQ0dsZWsA9nTPOPshD16F6I4tVwM00XbCAg?=
 =?us-ascii?Q?Pwwn9A6x7r79FLYRui4Yjt5lk7qThTMde6hohFoIEnJs9hQVvJOmIwjsULIN?=
 =?us-ascii?Q?SX/S6pUHTnCt02MJz/8g55oFiJpwk3YGZ7cihVwBEQ3UYLezebJ5/ZKfYLoo?=
 =?us-ascii?Q?bsIV78HwJ5UiMCS4zTZJZ/Cy6o60UH18dGiFmtOZg0Dj0GpSY+htLxkak6Pg?=
 =?us-ascii?Q?/5oGHKOl8ttjrH3siVgIoQI3siqYNFz1evDPLhPaTlLNZ7qGAgEFeIkm/prz?=
 =?us-ascii?Q?1rp/8rNwonXb+l8P9O7j73pJjBtaM8pVaqoQl81ByD9SfuEsJp26WPZKikF3?=
 =?us-ascii?Q?bOJdBSEw4+Omg3i1GskQCYQ5Hdd1mJoqtZqN/WSHLQSwSKhA+cpi3vLz+V60?=
 =?us-ascii?Q?6CD/AmzrpV+LZxBscZUJ3a+ECxv/H3HTKCQu9EF8Ykq2vSCFXj749wZG8gmi?=
 =?us-ascii?Q?cqVKJAIwVJhCvife5Dntl5U0yDBvbMWvSL7FN5TSCQoujHTY/vH4BowdnjVz?=
 =?us-ascii?Q?AYkVrpXihLGV7rZGwPmiBtV4ztL4yDQOLXLW6yhtByimt8LaE0GAy970dF0X?=
 =?us-ascii?Q?YLhY6omgyYHFjF8ikypksw/hIPjY06rREAqrMNZTVklvE0I4VPda2FNepolk?=
 =?us-ascii?Q?3HhugEpbBABF7+nPebcVjQCyRd8mkN6zROxI5lS9XCOdkD61aeMHg/pPwc74?=
 =?us-ascii?Q?h+G3JtkRTj9YAbuH1Fz0FE+WUnQM+XSk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AdwEs8ED79RwvMBnzJXiPCgR91B2aKfTWd6XZs2vxgpIqqGh44OYS1wHqdpX?=
 =?us-ascii?Q?3nU7HsRuZc0D+mn8zldhEehWWOS8HTWA2b58DPqvn1436Xa3tl1sf4ZjOym5?=
 =?us-ascii?Q?ywDCjrIrh448JyYApBNOl1xrzEDFTKwqwLW9O4Y+ye2R6qdgksq8gd4krV1j?=
 =?us-ascii?Q?xtgikvy49kVaUobv+ZozErgVBsc6g4IB2QjFnAUqSnpF6L+ZeE51oFbpE7a/?=
 =?us-ascii?Q?UaXB+WpYWikRAA3bJtUf5jKjQR0Vv18UuFLGfuuH0f8HqW3INbB8/Ka8qEPl?=
 =?us-ascii?Q?wXOKvpDEga+b2bQxgFc8dU96OacjLVaq2JI+Z3SquGK9hvqA6X2r7tG0/0Vq?=
 =?us-ascii?Q?edYFO61YzDX0crMOP7zkWDxzx9Y0/cNgn4KzzdTLweGsxJSM89O2jaeT6meN?=
 =?us-ascii?Q?6UJeJwcI8fNxeJ7Ymgezo0aia4ENfaGgShZjrIFFtglvc/4OwTiuTZJpG5U0?=
 =?us-ascii?Q?riYf2x2fS2uns8LewqbssdCCjYL5Y9bL9deWy73nk4KCevqVxx7vqeC1OVKn?=
 =?us-ascii?Q?qOK9RK62RhrfB85dpUSxRpWDKQ0xRuTtVhhcukxH4TXWecy/ZEaB9yOeWveU?=
 =?us-ascii?Q?fxrUqSPKxf299Rw2dCi7d0l1TFQzJP8AQ45PY7YCV8Sart8qMYkilMiLu3/q?=
 =?us-ascii?Q?y1uqYoyZlDAhAHd2Bh9pxhdM/LS9tGLxX+FjdcS06MVgaxB/vqayQ2yBfnYf?=
 =?us-ascii?Q?wARdFeLHBPdsDXttjsco9RUs5IGjnVeCDJAJEGst9HvEvK8Z2xEXwjXm1p76?=
 =?us-ascii?Q?udJ2GNuOH8h3nhf+mgpmco7gLd8jPHTvTGO9+4Za4x+jWjR+PBpIIGWrsJ8J?=
 =?us-ascii?Q?MfGisXYRv16iqf4JRhlP3QKvVl4akjZHB9xFglOuC1cB+TAJCMVAY4md8Q/5?=
 =?us-ascii?Q?nhtEePyiZQtbreZcupzSn1ngdwz1SkuC/zzTkBIYg6XaYiLZjzOvtQ0+1PAO?=
 =?us-ascii?Q?g0YN+z9CcL+fUeEg6eUlmR3Q8y7R9Egv6HkCR7wMInHMLiWUQV5Exqed5a4z?=
 =?us-ascii?Q?WozHFuhJdnFvZVMQUirifJewTAEUn8+xxss4rMxqImV2VBjTdVmk5jwYwnLH?=
 =?us-ascii?Q?g0F1WPtJJBzaVP9IU6kG+ZPmLqTPOP4FygjF9iRXQqxfAZjRzYVIOlaUId+G?=
 =?us-ascii?Q?Z/6NSq0yLdY/sb08yzt4M/wVTcpmzKj+vjHkOx/tX3Dfk0MQeFvlZAgtt094?=
 =?us-ascii?Q?gBGeBFW8YOEzzln75blU1bmtoYe6T+s+uk/sJ6cnQOX16HKaGtInNo9gG+s0?=
 =?us-ascii?Q?aFAOLey39T09eOs/BY1xOkuIzTksEEZ6KgrZDXt+dTldIKFlOddU00QPjyUC?=
 =?us-ascii?Q?W6UMKIp/9iTKoiRlCFQ0Tg24qAGGCKGfMoCwy83RbTHLRWQ/Ubyp8iGTu472?=
 =?us-ascii?Q?PBvxk0RS3h5yca2O5MPFnUOb8Za/tU1IhxduzOYGmWbFHP6CSOoEnDL942Gv?=
 =?us-ascii?Q?3R1otgkGju3aeNt6kbjbD4/E/ZCwUKtwQAwDT5pT+VYmEJXxFzdcWbr+MRye?=
 =?us-ascii?Q?N9qh01vAzJXLkgxGhl//VO9gpKAVzHYNncOl9BdYyMt4ODuVY2ZTIqhAzCCd?=
 =?us-ascii?Q?dd9FaOksiMimWMemddpLrQ1shZAfJDFwBy37ded+oOcw4fi4ECd4/A40L2MD?=
 =?us-ascii?Q?ya9B20kXJXBNuPIhuZNqMkTpNMiEvyNfzCbFYYdVyL78T+003eHRmDfqjxEs?=
 =?us-ascii?Q?FiZ4SuL1eUgtfOOBvH8ltaiwoB/kkU8lZMjfPQvlWNWL222lz2dtZ2vNawHM?=
 =?us-ascii?Q?BUgMim0ScNQHGMdv2ZYOzOrXcj8PicNzE++OETwgZ6z6UziMvaApTFv9zZsi?=
X-MS-Exchange-AntiSpam-MessageData-1: XGgHLJMMaOngaQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 16acd77a-30e7-4619-af88-08de42536c9a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2025 18:45:21.0288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GjLD+NveWHsXRS5FeEda6RGYlyXwPCNefgJ4SGo6niLsGeTNP719lT1tC4CPPNL2NZiOnDq1pP7UEUHubmvuqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6043
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

On Tue, Dec 23, 2025 at 08:38:26PM +0530, Ankit Nautiyal wrote:
> When DSC is enabled on a pipe, the pipe pixel rate input to the
> CDCLK frequency and pipe joining calculation needs an adjustment to
> account for compression overhead "bubbles" added at each horizontal
> slice boundary.
> 
> Account for this overhead while computing min cdclk required for DSC.
> 
> v2:
>  - Get rid of the scaling factor and return unchanged pixel-rate
>    instead of 0.
> v3:
>  - Use mul_u32_u32() for the bubble-adjusted pixel rate to avoid 64x64
>    multiplication and drop redundant casts in DIV_ROUND_UP_ULL(). (Imre)
> 
> Bspec:68912
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 35 ++++++++++++++++++++---
>  1 file changed, 31 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index ad5fe841e4b3..5493082f30a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1050,15 +1050,40 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>  	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
>  }
>  
> +static
> +int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
> +					      int pixel_rate, int htotal,
> +					      int dsc_horizontal_slices)
> +{
> +	int dsc_slice_bubbles;
> +	u64 num;
> +
> +	if (drm_WARN_ON(display->drm, !htotal))
> +		return pixel_rate;
> +
> +	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
> +	num = mul_u32_u32(pixel_rate, (htotal + dsc_slice_bubbles));
> +
> +	return DIV_ROUND_UP_ULL(num, htotal);
> +}
> +
>  int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
> +	int htotal = crtc_state->hw.adjusted_mode.crtc_htotal;
> +	int dsc_slices = crtc_state->dsc.slice_count;
> +	int pixel_rate;
>  	int min_cdclk;
>  
>  	if (!crtc_state->dsc.compression_enable)
>  		return 0;
>  
> +	pixel_rate = intel_dsc_get_pixel_rate_with_dsc_bubbles(display,
> +							       crtc_state->pixel_rate,
> +							       htotal,
> +							       dsc_slices);
> +
>  	/*
>  	 * When we decide to use only one VDSC engine, since
>  	 * each VDSC operates with 1 ppc throughput, pixel clock
> @@ -1066,7 +1091,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	 * If there 2 VDSC engines, then pixel clock can't be higher than
>  	 * VDSC clock(cdclk) * 2 and so on.
>  	 */
> -	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
> +	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
>  
>  	if (crtc_state->joiner_pipes) {
>  		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
> @@ -1084,9 +1109,11 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>  		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
>  		 */
>  		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
> -		int min_cdclk_bj =
> -			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> -			 pixel_clock) / (2 * bigjoiner_interface_bits);
> +		int adjusted_pixel_rate =
> +			intel_dsc_get_pixel_rate_with_dsc_bubbles(display, pixel_clock,
> +								  htotal, dsc_slices);
> +		int min_cdclk_bj = (fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> +				   adjusted_pixel_rate) / (2 * bigjoiner_interface_bits);

The patch looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

Fwiw: I suppose when calculating min_cdclk_bj instead of
fxp_q4_to_int_roundup() the x16 adjustment could be in the divider for
more precision and the division should round up not down. However neither
of these are related to your changes, they can be revised later.

>  
>  		min_cdclk = max(min_cdclk, min_cdclk_bj);
>  	}
> -- 
> 2.45.2
> 
