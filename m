Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EBE97728D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 22:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A192710EC3D;
	Thu, 12 Sep 2024 20:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvPDaMCG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9066C10EC3D
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 20:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726171452; x=1757707452;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xw+fNE3QsBwtpAYLexEoLYNw0a4oHtZ14WB19vw04Xo=;
 b=BvPDaMCGhvGmwzoXnnpcX0QxVN0AKHtdd1IFujsWQTIncSF1//LF0LJK
 xqeiUj/+wJ7Mj38fo2FSBAaVGxc2xihQGOk7rVcjX2pU9idNGBYRG8W45
 zH1th4ljyC1UYInxTwqwbmU39yn1lQrlVLsyyp2KlADpWBBK+KcjQKKuz
 dKD0XG6LNFI15Gs+jUlK4H/N+V1YpfwovhLbxUseH6bRdbnNz3j0sIYMU
 pMbsL+K/ybSzbhtFZb/w/ZrRS7BG1Xy37qpdOn2923dtL0OZBL7d4aUY3
 VBlnKWcw6zdRfWT85aCfoemdequqW0xMln/Kcvng+nNpBzNyNwbWfMfHa g==;
X-CSE-ConnectionGUID: +FIp0ZI9Rmqw3jR5Dy73GA==
X-CSE-MsgGUID: fhuXIztaTlG/BylPTCEiwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="24539399"
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="24539399"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 13:04:00 -0700
X-CSE-ConnectionGUID: 1E86DdjgSPaI8KobUnn27w==
X-CSE-MsgGUID: A/8CLWJhRS+bwwzP0ftXzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="67801733"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 13:03:59 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 13:03:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 13:03:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 13:03:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iO6Yi2PbKSKidsM2q/49MA0lkQLFpUGDb6jIQIeHOdD02j6v302b7FDmq69pyT1HyXQXM02B7dSV0wgEqmO3kqDWqy2gRGXVOssFuuNekicZMfvivABHXzFM1dx63KvvysMyhM4JZoGj7tVb4ACingF0jJZPf5Ulzx0DGHhxnwfouFjnatRjk5quLvFzv2QsJlgTc0yvVxJJbCeBca1cT7ITHb0IeF8fFoBIR4keeOMmTrJiLITTCIzaGVSo8hSQWXhYwCKp0YRTtEcYJAMclyP9YaL6xwFQkN+JuCrqiOlEtgVH6NlXJQB4kGNTVL9pR686bAruAt0DV8Uw5dtNbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LLzNuc4JFXwHcMMZrUEdb46uz348U47UrikylQckR8M=;
 b=PHasBWhQKg1UsApmK6e9Cvh4ret7OUoz13YAWrm66kYHk8PRd9VsJbp0hBPEICRJ+jdiBqAPQndgVK2kJi0sxKmByea0DR3pAC4jDcjqqqY2hY+ynIlLdCsHsWrvKg0vIxBpsRLepq9QJg7ZmDf79RyjCcLfHyc3daIPmumK+umGA6OpjcEVd8nKwf8zRTusgeODuJB2Ydld8LqPjxzk5A0qEwBCe1jSLlO15jqhmRTmfN48aoHuVeCt7VJhz7IM/D1GJ25b3pjlZAw13qdLPsLe+eKy4fXQO3N7jaZCfm/sQliyk/IX1toemlAgDtBw8u4JYEXl7kZ8+GbtwhQm+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CY8PR11MB7340.namprd11.prod.outlook.com (2603:10b6:930:84::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.18; Thu, 12 Sep
 2024 20:03:55 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.7939.025; Thu, 12 Sep 2024
 20:03:54 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/irq: Move irqs_enabled out of runtime_pm
Thread-Topic: [PATCH 2/3] drm/i915/irq: Move irqs_enabled out of runtime_pm
Thread-Index: AQHbBTjdiMyUss4F0060uQx4ZqE7f7JUki/Q
Date: Thu, 12 Sep 2024 20:03:54 +0000
Message-ID: <CH0PR11MB5444E3824008510F03B39A71E5642@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
 <20240912172539.418957-2-rodrigo.vivi@intel.com>
In-Reply-To: <20240912172539.418957-2-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CY8PR11MB7340:EE_
x-ms-office365-filtering-correlation-id: ae2af4d2-4d4a-4467-7c2c-08dcd3660773
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?217HSZwRFcweShgb+huirfz9MIN9WeUzrhxu43z2rJrHPk9od8pa4TwWmd2O?=
 =?us-ascii?Q?5eq5GjiDl/zFkOjYvdVMQf6TYaxrRZtfFDqjxheu1kEW0ot0nR6bBsff7Aa7?=
 =?us-ascii?Q?JcqzfG5yFp5fUQUpCnDbZFjYN1dfL8AkVJWGnaLLT4KacX5eQHY2C73t08x4?=
 =?us-ascii?Q?klfNS87iSBZiVaIy214kdt5UWCCgHh2gAzL4+Lix6ax4UQsYV6omortVAP/x?=
 =?us-ascii?Q?AI4MJS1PDWS3hTbjzvOt770WMZWuj5LR5b9XquKf4ERnhpNXXhOQoAgHOzRw?=
 =?us-ascii?Q?GmU391IgtgxHqYL6049m6/PVSn/c/ZpclEaEw2BzUvi/gyo+SewxF2VCqsug?=
 =?us-ascii?Q?R2AV0mtPTfbdAuhFnVGDewgpkSviQ3ctK52uufh3702RJ7rIXNEGctRC+EJz?=
 =?us-ascii?Q?j6mdczdipKkXFuh3CLKEAiWbvsW3DEbq4NcUiD2ycEDWBh2LZSId8aTVgCyu?=
 =?us-ascii?Q?7xGxIyHxRIKHpqvpztMCPtkjQAA2Xu75b9wKDLXInQ3SGKFKcBw2zmgg8wxq?=
 =?us-ascii?Q?6Me/v/Q89JBEADsT3BJW8hboJGgONvCLNMV12KEkarNxXqyiatShLlkPAX2a?=
 =?us-ascii?Q?QE1ysm6IyPD6o8FgXi0F59WczTck/2s54OUKb290mqBYUunE59ECF2QmOE4p?=
 =?us-ascii?Q?2TOughGHkjj+Er3qKaj2TOzE2TMcm06ievE25ibOwQf8SHt7R9TpTtE8P12h?=
 =?us-ascii?Q?iBk+Frj9OibtoMsaCDh5cZ+s0X+Q8ITi9OFQQBlRT5KwZX05TxEq/IHitCAF?=
 =?us-ascii?Q?LGs6oSwb95juLqu4w+Hy5C9l6Sj+tvTnvCpPL79l+G3QXTo0E9vEirq0apap?=
 =?us-ascii?Q?0hiBC90y4fgANtgCEzBdpF7OWsEZFnWIjyJMNgNVJYBReWTbTFpQDA+cnjOm?=
 =?us-ascii?Q?HBYsch6BdjTMJVxb475veMHizmL8rGkWsQAvAi+ehEZAnJxo4mEetxVuI8Jq?=
 =?us-ascii?Q?p9XzDz1aMOdlXEwjqxwlVaH0M/idrQ0OB0omXhZvp50Fzv0+baoGWDwimTkZ?=
 =?us-ascii?Q?q0ke//leRDm5LqoFy/JgEP6ZDjb0sY1kmE69qg7OSmyaxTCmu5/rq6lH7VkS?=
 =?us-ascii?Q?NSkRFbgEPo/BhcYchh0H6Z8pWUu9TtWXLKQOMRb5lgF2AgqCsknj8WNaNPUx?=
 =?us-ascii?Q?IipWi0XdBNGuxQvQ+q8qdf9M+Jn3EaiuePewQjpOMZkURlh2WRXv22Oj6QRj?=
 =?us-ascii?Q?/gql1hhqeWVu7NeOc2iGfm85ncThgitlwqsBfUE/ils/xdolvxVFrUQuuKnA?=
 =?us-ascii?Q?rWGi0FkablBVGp61IbOZDJjEbEKFiDSKArYrtXcKk3dqzxbBzphAWp83mWCQ?=
 =?us-ascii?Q?59RBamFBc27k/W8bpFghy4p3BFQMjpFeLbJMsGGNNm0lbh8GFXlkk78okXgG?=
 =?us-ascii?Q?pIGZaMAFrm4whCYrixzwAqfogXvkc3hGCnrvoiCVRGxeT7T1rg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IGk5OZ5cOW+G5zL+LO7TGt53S8vNA3Bpwrx4zrQlX92AfElaKmZkfuLD2x6c?=
 =?us-ascii?Q?5V416AhNkjTMlXTF1D0+UVA5G5l4DvGIG3VtkWik5MsgOa0I/zZTglD3oGUk?=
 =?us-ascii?Q?ct26exhyDrTuvSOzAkYCbOW3+1PnJydH6gGASnG5gEPJt2yVMagK7dUxNyvJ?=
 =?us-ascii?Q?dwlPbHHakOpZg8POneBFhB8Uia4azdhIM35b9RW+jvIlroB+YnjyXHyWzFye?=
 =?us-ascii?Q?/VOXlI4YXItzKr+lPlQlvWFCteY3vE6/bSTLL1bwAdKmaVE656HJoD3yMnQR?=
 =?us-ascii?Q?HPEb8A1t8K/RVnZA0FcNLwwBJQ1cvI57kMPtsv8dy6z72PeIUEkAaie4ejKq?=
 =?us-ascii?Q?jnZKKriKo1GEDqU5KYu02hqvsUgd9vmHV3MszoJYx8tfE52LFUdmJGgDhITu?=
 =?us-ascii?Q?bJxrY5ZdGR8qgDcHzXFJZtBl4nWJ+K0za5xq165dtWenrW5WdRc7GzZTw1Gq?=
 =?us-ascii?Q?oMTHDvJLmIsZTAAav0xStaH3ATB11NxjNhAxeYmFmaiXLulBFdw+lajE758N?=
 =?us-ascii?Q?qqr7bJmG16//Y45aDLaTqi5yvk8zyaHJj2nRQ5pbK9x9sv72iLglTzWXhcc5?=
 =?us-ascii?Q?UJ7mjjacyrW4w57AEw9uU6PgCEyrLsbOnHUZQpP2PMD/BUE5cwHR1XXDLPr/?=
 =?us-ascii?Q?F4IvmprexlCc+mzMbiLBKNU3SPwDVIvR2UCfrjRXBq35/5+YoTvrRKPspU/7?=
 =?us-ascii?Q?xZ9275Wds+haqNPEX3mfhXWpKkJS1b69gGRpLNQ6tcEV8wxPpLXQdVPxsgcd?=
 =?us-ascii?Q?UOt/fNQN1td/kZbcUoTj3zfl6W9N8MDOSVsS65a6PrUMgN8HLpytGthqXn0T?=
 =?us-ascii?Q?ldrViLvZw5Y0h92HHqWu/tB0aKeTjQ12jhwNZhtMY+7QLor9ZD3p5OT26Y9f?=
 =?us-ascii?Q?dX/2p7Q6dBACyJOyx+ckokwScWaMSfU3omL8MKvcakY/4tsbfjX/Ew2kNrSc?=
 =?us-ascii?Q?h5kvUACSRHoqJl7ubIc3YIO7sU19ErA5cKJ9XGINzR8hvjivBg1RR1OKUI49?=
 =?us-ascii?Q?CVRAu4iUIlxJ90exPu8jaVEcHGi73PaJMNtO9Aj+/gTGz6xv/VcojgiYr4mh?=
 =?us-ascii?Q?ydaUv+4B8ZdIQfTWIpzgdYO28P6p4dgmTsi9ZCKCc7FCyjOfh3qEM+2I6fOP?=
 =?us-ascii?Q?HMX24LmfgjfPBK+3LXKZZpdB39r3PvraPPk473Ufka51oaVmEF6l3qvj4EdB?=
 =?us-ascii?Q?poYQ5bxQUX0WFpu8SoCy9EjPZHCcuklhOTurICYwXZpo1U4AZRsoc3Fxotab?=
 =?us-ascii?Q?a0h6B1nrFk4NA0aLs5C9udtvX6BMr8jknauGrAbMEfWotIbtTG/Hhp1TflAK?=
 =?us-ascii?Q?hFkiyYET6m/CHrXsviXq1HXihaBdtFJXscec0uYsskMWgiOWWVl/Vx6EOWsH?=
 =?us-ascii?Q?R27NF3+L0PCW+y6miX4lkmqqcd5B32D3c5QpcK4eiUCCMOT3CVOQiN7Y7iHP?=
 =?us-ascii?Q?vDpTpcoOyircDJb0fmvMlfvrIfU6x/OGmp5oL0ryj0dgi//tLrlr4X3T6Dap?=
 =?us-ascii?Q?BNvZNvxPXTNBZzxs54Ur6FSCU+aIABG6YA/9ZnswUIjKXNKh3xRjT4WbT/NU?=
 =?us-ascii?Q?4VRrxG83ATRegdf/jWYJV38k7vRejR1F8uuf7mHM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae2af4d2-4d4a-4467-7c2c-08dcd3660773
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 20:03:54.4405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V5TVZmNz1igH7AMRCcgmYuS+C0DBz1zGk/+vTtlOFK5xWuBAy9fKhYHa522d9Ihj28fmzNRtJHoFJpyYFdJz0YDp+YURrYD/l7R3/v0P/hQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7340
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Thursday, September 12, 2024 10:26 AM
To: intel-gfx@lists.freedesktop.org
Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
Subject: [PATCH 2/3] drm/i915/irq: Move irqs_enabled out of runtime_pm
>=20
> This information is used in many places and it doesn't have
> anything to do with runtime_pm directly. Let's move it to
> the driver, where it belongs.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

I almost think it would be better to swap the ordering of this patch
and the previous one, so that the first patch would move all the
functions over to using the driver version of irqs_enabled, while the
second patch would remove the duplicates.

Or perhaps the two patches could be merged?

Not blocking, just a suggestion.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/i915_drv.h         |  1 +
>  drivers/gpu/drm/i915/i915_irq.c         | 14 +++++++-------
>  drivers/gpu/drm/i915/intel_runtime_pm.h |  1 -
>  3 files changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index aa3000349116..def3ca135406 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -234,6 +234,7 @@ struct drm_i915_private {
> =20
>  	/* protects the irq masks */
>  	spinlock_t irq_lock;
> +	bool irqs_enabled;
> =20
>  	/* Sideband mailbox protection */
>  	struct mutex sb_lock;
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 9f1a6f692dd1..2c0fdb5e05a6 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1404,14 +1404,14 @@ int intel_irq_install(struct drm_i915_private *de=
v_priv)
>  	 * interrupts as enabled _before_ actually enabling them to avoid
>  	 * special cases in our ordering checks.
>  	 */
> -	dev_priv->runtime_pm.irqs_enabled =3D true;
> +	dev_priv->irqs_enabled =3D true;
> =20
>  	intel_irq_reset(dev_priv);
> =20
>  	ret =3D request_irq(irq, intel_irq_handler(dev_priv),
>  			  IRQF_SHARED, DRIVER_NAME, dev_priv);
>  	if (ret < 0) {
> -		dev_priv->runtime_pm.irqs_enabled =3D false;
> +		dev_priv->irqs_enabled =3D false;
>  		return ret;
>  	}
> =20
> @@ -1437,7 +1437,7 @@ void intel_irq_uninstall(struct drm_i915_private *d=
ev_priv)
>  	 * intel_display_driver_remove() calling us out of sequence.
>  	 * Would be nice if it didn't do that...
>  	 */
> -	if (!dev_priv->runtime_pm.irqs_enabled)
> +	if (!dev_priv->irqs_enabled)
>  		return;
> =20
>  	intel_irq_reset(dev_priv);
> @@ -1445,7 +1445,7 @@ void intel_irq_uninstall(struct drm_i915_private *d=
ev_priv)
>  	free_irq(irq, dev_priv);
> =20
>  	intel_hpd_cancel_work(dev_priv);
> -	dev_priv->runtime_pm.irqs_enabled =3D false;
> +	dev_priv->irqs_enabled =3D false;
>  }
> =20
>  /**
> @@ -1458,7 +1458,7 @@ void intel_irq_uninstall(struct drm_i915_private *d=
ev_priv)
>  void intel_runtime_pm_disable_interrupts(struct drm_i915_private *dev_pr=
iv)
>  {
>  	intel_irq_reset(dev_priv);
> -	dev_priv->runtime_pm.irqs_enabled =3D false;
> +	dev_priv->irqs_enabled =3D false;
>  	intel_synchronize_irq(dev_priv);
>  }
> =20
> @@ -1471,14 +1471,14 @@ void intel_runtime_pm_disable_interrupts(struct d=
rm_i915_private *dev_priv)
>   */
>  void intel_runtime_pm_enable_interrupts(struct drm_i915_private *dev_pri=
v)
>  {
> -	dev_priv->runtime_pm.irqs_enabled =3D true;
> +	dev_priv->irqs_enabled =3D true;
>  	intel_irq_reset(dev_priv);
>  	intel_irq_postinstall(dev_priv);
>  }
> =20
>  bool intel_irqs_enabled(struct drm_i915_private *dev_priv)
>  {
> -	return dev_priv->runtime_pm.irqs_enabled;
> +	return dev_priv->irqs_enabled;
>  }
> =20
>  void intel_synchronize_irq(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i9=
15/intel_runtime_pm.h
> index de3579d399e1..796a2dcb307e 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -42,7 +42,6 @@ struct intel_runtime_pm {
>  	atomic_t wakeref_count;
>  	struct device *kdev; /* points to i915->drm.dev */
>  	bool available;
> -	bool irqs_enabled;
>  	bool no_wakeref_tracking;
> =20
>  	/*
> --=20
> 2.46.0
>=20
>=20
