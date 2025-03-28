Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F23CAA750C6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 20:30:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58CC10EA7F;
	Fri, 28 Mar 2025 19:30:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z39E/SVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70C7810EA7F
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 19:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743190249; x=1774726249;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0PikSnvVL7QFZEp+RVU2Buam3oOXA1w/HZK+y0Rkun8=;
 b=Z39E/SVGaQ4n4f7RfC85zVsi9xMDFDBLrcP9JjmS+n6CXMRrCMtSzMaX
 If1wa3SbjITwRZiVwnYE8x9zUmi/oZfWLXNltDo6STiYuy6lJNxns2eNP
 FSVV6uoWrubZ9xkKbKwDsxPYWWRF0BvThv6zRG+zrHKKqJAnO3XP8CU+r
 T0JeYTqSilp2Z2RDmFn1g3gQSzVPbRWn+F1tMLAXvt9YHEDfRTsNkmC56
 ceaNU25bVes3U1iyq2+86PpkQo+AIJhttq9lt7lFFfnOHPgUoRYCW5Umz
 sRK3MCZEREpoAE6Jc9geVo4/qS8C46V90X29Se+apoFDhhwRd8hVpEZb0 w==;
X-CSE-ConnectionGUID: VPAIibwJTWyqWT2nN13pSw==
X-CSE-MsgGUID: htXrGZhSRWSFicw90wfKFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="43721533"
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="43721533"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 12:30:49 -0700
X-CSE-ConnectionGUID: rA8Ikab8QxywWBf9aqsq0g==
X-CSE-MsgGUID: NMv6LsXfRhi5jey9FRWUcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="125758503"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2025 12:30:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Mar 2025 12:30:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 12:30:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 12:30:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EeEY98JxRRMiKJiDWmBIlfRx6/8pmp91PPQzUQGMQpXx/6C6RIW8zq9NpBwy5VCy76+qhCXOc3lRggfCPCPNtPx0/2e5JAkdpnDaA1FU5kta5xk83z6VeRNQXcB6JExH2fWsCJIFoAW7RpS6Fm5IvV4j0wSVcnxrEVUR5WkL4kLVYDzROFfZ+CPV1VLzA3kD3eqDV6UsjwyBpQlpTsOpSB5EdyJDYXDFdwNRkfnu+V2SM3FcNgNIH5CRpPqsNz3j+vZk4FKAU2C7Tmz6oaCob/13ebJQp7Ohmt1Atmw6ZhYDcEVWoHNfkk0/8DWBoi4jI5i0t+iZmc7tNHm+w7xzeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tr2wHoqmH55q5CZxd4JKb5g1Fq+NMewM8Iah31rJYvQ=;
 b=e3QNEpaX4Rc990LrW2YQG1yG1YikmY8N/SdrPVusNYVhpTdDVdbB6LRp2ENc/+4iP5xh39wJZ01BNNZDu/rlv+lME0UMyMvVrOpuM9H2+eEEbyjoZXfUQG/RJ4XssaS1kGttwlXBChNWPNHpzsjt/BNu7vCl1v+7qozGlVUkVvBRD97Q3mFtSF4jTvvs4r/R9NMjdXrIV2uRa2fap0x5zOYhZfafQcEUN2td0Tsi2Nwh+W5MZ1rocuXoCsAn5HClUVqDJQUMOWQdDV1fF7eOHmXyCWxftNjVJ8k6u0L/NQ/oXGTcj7DnZ4CwaSSo5pcQ0tfHDmY+CjSVTqu+K4C1Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM6PR11MB4675.namprd11.prod.outlook.com (2603:10b6:5:2ac::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 19:30:18 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 19:30:17 +0000
Date: Fri, 28 Mar 2025 15:30:14 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] drm/i915/display: Fix htmldocs build
Message-ID: <Z-b4xv5IfbQHMHgm@intel.com>
References: <20250328180829.25892-1-rodrigo.vivi@intel.com>
 <Z-b2_YjBpZO9Ip6p@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z-b2_YjBpZO9Ip6p@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW2PR2101CA0035.namprd21.prod.outlook.com
 (2603:10b6:302:1::48) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM6PR11MB4675:EE_
X-MS-Office365-Filtering-Correlation-Id: 486ca80a-b0f6-4d2e-c50e-08dd6e2ef8bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xe8iuhFMbiqAj1CB+6tW8pVap02sizPN6A9L196HM8vKavGbE4Wt1hulv45F?=
 =?us-ascii?Q?UYi7ndCc1SgogxRmsz25KPYHJdNoKyopWL23y3N3d/EYY7qfIO+zCp50qfbr?=
 =?us-ascii?Q?MhYyb+paTRyAfuS9wExcZ20XnPipDJRpGty0VK8SdS1tTF0e47gEkT3ff1l5?=
 =?us-ascii?Q?LziTvtOfTFJnI8Oz3gqBtWTJAC3R5XOwiHS+wLJmOrCRLcpqose16nhxk5i+?=
 =?us-ascii?Q?U5dtaz6eSjVTgM31izPdEGHq+JDAcgZQa+idwbF1Yy14DhKwiGda1U97AKMO?=
 =?us-ascii?Q?/AMwxznUmQDWVb0OyPc1vOudwbF1/tyvQcNk1etrptIchbwim4fJyA5cvUqc?=
 =?us-ascii?Q?Z+dN9O1d95DHIMPgz2ymh6RO6q8JKJCsDrvvtgzLFv7XL+ZK36lJWzGhiHzm?=
 =?us-ascii?Q?Zie+3jBAvkjIYhzMdo5nnkY/KX2+sp67QWq20dIaZEHmnewLPZs0CsWkrT3H?=
 =?us-ascii?Q?SPhUqq3nW8LrfLMI1MA9fZW/UBM8XZaYuA/dFY9LtVw9PMPI+eVjNM90mRWJ?=
 =?us-ascii?Q?2RiOz4RP2TY/lZRvw/77MEBJWV6j7sItme3wzKhAi7xL/cX6x+bs/KbOlYFQ?=
 =?us-ascii?Q?v+RHY9wl4aLzB8do1Kw2/tF//VdEUCQwUqHYqSFwoIq4DVNS/JUeCcTdV4nf?=
 =?us-ascii?Q?pzN7/B7jv89iF30PfnJ18GPdekSIo4C9s4mwnm33ptuXMyje0XcP3XS4uynX?=
 =?us-ascii?Q?tvc94Sy+FG9yMEA7Esrin0LsBAoU/GZw5NM2uQkKV85fTOHfAQJR7gN6+1uq?=
 =?us-ascii?Q?gmVWfB4gRgisF9+bqnvTV4PYbvFgj/MVZd2dq5HJ5rVbhS3/JWKaYvcWSTD0?=
 =?us-ascii?Q?wTxdvMjY/VOhTATFGaXPM6Q/iIEeo/GY+8N3b1TpCu+wkm9vpGU7KS10Sk6F?=
 =?us-ascii?Q?hwZBEyGFtijMQA+45bkO9QrGikvtCb3WsFg6XOk8SO0qhY+y8Q4t1ID7rEhO?=
 =?us-ascii?Q?ZD2EEHd7cnNHyJZ+akJmoOuImUHit/eTq3mMVUz9vHbVCVr9EkZgEPiaML/f?=
 =?us-ascii?Q?GFZM/xUaYqmcBm8ZrW1xasvooZdw/pnYWEwv7N2YyU+HfDSe5pF4MXZoUTNe?=
 =?us-ascii?Q?UtwSyhOAH+5ZM8B7j/f+ANTvvWu/K89rWFTCkbDeKmJNSK6BS+3iMlwo74YT?=
 =?us-ascii?Q?WMXsEQfHhAnlTsepKmpqkucjk0nU4xjxV1ZYSwoGQyuYXdQRg/qxjIXCsJO2?=
 =?us-ascii?Q?iNYnqXl80BUifOGronxHUHv2vKJzJiydmcl5WPuzG14qdxvs4FmHEHK1deTa?=
 =?us-ascii?Q?TKdqUq9X2k8yFRcgmmuy9g6pQERTpul2xIuK3pFjfQ72EAXOnRF5K2pPe5vW?=
 =?us-ascii?Q?ZR/0Vy0gkseOHBxr2iRW17LQcYxNbX20Q4yhqUuGrMQ17g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/TIbwe3kyo3L9KMXFH1ZxT/21KReFbcCT0/eVEPtQzu5dM8/sW0Q/Z+e0FKs?=
 =?us-ascii?Q?KA/vW3rnAwYq6jEZj+Ju7RoM6Pe2J9q0DtmRCOPLcNWryonxVaxZOmJmR0Jx?=
 =?us-ascii?Q?g3Z8nLqyA+vTjTvWSm2j8aG6or2IA30Wopvf461ZAgYIj+4p+sUpdjRZHD0o?=
 =?us-ascii?Q?fc8jpefTcByegBpFnF2GzV7LRvedoMGXHF7rabO8A1DLhQweBSuMe4reRqq/?=
 =?us-ascii?Q?9y5FRO84v5hfhFf8lkO+IB+MCDx0eTB8DLpiaty2tivVgofgU5yiVyNuS43w?=
 =?us-ascii?Q?fNmjgDU7O+dUrqEyL9CrOxYPzbs8dYknfULefd4pKj6wN6849GCwss+iVE5I?=
 =?us-ascii?Q?GoeBaEij5b2MT1uFzfTs7E3GI28lFHpLLPFr+DoucppyaZsHlVfB8zYrta/L?=
 =?us-ascii?Q?pWNFp7hpDhmm8DpIMsDiFDrAu/Te2GflZeXmTByZf4xPLwDAZ9mOEO5U5gue?=
 =?us-ascii?Q?Ex52p87vLoWRtKFsDKacUXGmBSroTWnLuUK8h74mHCD31N6LicvjRXK9GNzn?=
 =?us-ascii?Q?FMKO3Lk4Oa6hSArpm5CMAx5RDQTaZfUoyNL2KC12EEgPjK61wQREnVl8mvJz?=
 =?us-ascii?Q?/O9C1ypu3j+BsXFYPqWavlQoAJdlJZWSaGJfbHp5ssOuJz1M+3R8GbS2OzTe?=
 =?us-ascii?Q?zdX5E1T/Pzb1OEabDMstOhxle166TShj8Cd3OSSLfiFMj/q8aBj+tt+eMBt3?=
 =?us-ascii?Q?u4pywNrHH3mH50A6BB5Tkf5YaHJISUXPkFFc06x8cilh3uy5mS1+am7SccU8?=
 =?us-ascii?Q?LRMlPUydEjNoQBdt1XWYeT6OSTxCtIEiSyyg58lr/ew5RKWvIRtYLAEz7IaN?=
 =?us-ascii?Q?K2Wjn/B+tMqvJqEQRLVHKKyxarRYtItIgfxwmaIjJb2IVRDcKEKt2j/KZlNa?=
 =?us-ascii?Q?dA0JTF6JgN2hv44WrYKqS26xz9giWHHlIUQ7qMnqlmR6iEOGQh6RCcrAKvt/?=
 =?us-ascii?Q?o9JxUyO+mhnAEcH8g8G38VEwAJwB6xd8Qk/JF489Vfh1eow5BcVQopJiSa3w?=
 =?us-ascii?Q?YB7xji1Teybd05TGyz7M0vj4lPsK3AETiT6A8Iecp1GmRsH6tr9+5zeh6LaJ?=
 =?us-ascii?Q?0Dy2rIsKlWQF6FKV9AsXOIrG6GKqK+kYMcn+xn2e5HkJfBfXmEnYXKLXjaP7?=
 =?us-ascii?Q?99IfucFhwFCV72OsX2Ybghvqjrh+ZnYoKpQoemUFzOcMHIEjXSKziw3jTpow?=
 =?us-ascii?Q?dw02gfnQsX2fU96yHrU3kz0UbPQOPRnD/tQRYx74YsiChU+UGFr4Yz6JLf7K?=
 =?us-ascii?Q?AzFdVSrPqfsZEYQawzcBto80su3EwQAIVJG6azgSmAx1hx71U6zcUGTmwcvJ?=
 =?us-ascii?Q?CcFGIpjG0618gQyhomwPo6t6ABtA+c2TgffAJGEsJgY72LrNv2GEZpqHUtYb?=
 =?us-ascii?Q?u6sZVVs8QK+LwMtk7n6ucBLXhoUj4m0uwn5PW2f7/U18XdiP9q6nl2LP6phb?=
 =?us-ascii?Q?LZWPbm2Uy9nAG9FgpFUFbbBGKglIo/GErvHyx4OzHvC2dljQAV1pqo49GAyz?=
 =?us-ascii?Q?n3F0ztsiocv3XuBQ70hy4uzk5fGkzg+JKaD198BT6zLSxftysn5X66M2DwZc?=
 =?us-ascii?Q?FfISeV46vpxWyPpNcj9OdzlR7yxTJ6TpjVket7my43Di1IQiCbb3GvnCiC40?=
 =?us-ascii?Q?uA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 486ca80a-b0f6-4d2e-c50e-08dd6e2ef8bc
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 19:30:17.8853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q6MxAqtLN1m9dlhJRCXpZaluD4MBuRxj/sTJcfAXM3LuuRzBSE/hkPRUu2IR6KBwxkfkPjVHj9QWgexwyPTaEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4675
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

On Fri, Mar 28, 2025 at 09:22:37PM +0200, Imre Deak wrote:
> On Fri, Mar 28, 2025 at 02:08:29PM -0400, Rodrigo Vivi wrote:
> > Fixes a wrong documentation block indentation:
> > 
> > Documentation/gpu/i915:141: ./drivers/gpu/drm/i915/display/intel_hotplug.c:1080: ERROR: Unexpected indentation.
> > Documentation/gpu/i915:141: ./drivers/gpu/drm/i915/display/intel_hotplug.c:1082: WARNING: Block quote ends without a blank line; unexpected unindent.
> > 
> > Fixes: 0d77a3e0ea90 ("drm/i915/hpd: Add support for blocking the IRQ handling on an HPD pin")
> > Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > Closes: https://lore.kernel.org/intel-gfx/20250312232506.47451f83@canb.auug.org.au/
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hotplug.c | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > index dce9cde03d70..0f5068d2389b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > @@ -1075,15 +1075,15 @@ static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin pin)
> >   * Blocks the handling of HPD IRQs on the HPD pin of @encoder.
> >   *
> >   * On return:
> 
> The closest documentation I found about lists in a kernel-doc block is
> the one for Sphinx at [1]. According to that an empty line is required
> here (i.e. before the first list item) and then no need to add extra
> indents for list items. Tested that now with 'make htmldocs' as well.

doh! indeed! and I had already faced that and came to that conclusion in
another opportunity...

> Using that fix instead:
> 
> Reviewed-by: Imre Deak <imre.deak@intel.com>

sending v2 right now, thank you!

> 
> [1] https://ikerdocs-sphinx.readthedocs.io/syntax/lists.html
> 
> > - * - It's guaranteed that the blocked encoders' HPD pulse handler
> > - *   (via intel_digital_port::hpd_pulse()) is not running.
> > - * - The hotplug event handling (via intel_encoder::hotplug()) of an
> > - *   HPD IRQ pending at the time this function is called may be still
> > - *   running.
> > - * - Detection on the encoder's connector (via
> > - *   drm_connector_helper_funcs::detect_ctx(),
> > - *   drm_connector_funcs::detect()) remains allowed, for instance as part of
> > - *   userspace connector probing, or DRM core's connector polling.
> > + *  - It's guaranteed that the blocked encoders' HPD pulse handler
> > + *    (via intel_digital_port::hpd_pulse()) is not running.
> > + *  - The hotplug event handling (via intel_encoder::hotplug()) of an
> > + *    HPD IRQ pending at the time this function is called may be still
> > + *    running.
> > + *  - Detection on the encoder's connector (via
> > + *    drm_connector_helper_funcs::detect_ctx(),
> > + *    drm_connector_funcs::detect()) remains allowed, for instance as part of
> > + *    userspace connector probing, or DRM core's connector polling.
> >   *
> >   * The call must be followed by calling intel_hpd_unblock(), or
> >   * intel_hpd_clear_and_unblock().
> > -- 
> > 2.49.0
> > 
