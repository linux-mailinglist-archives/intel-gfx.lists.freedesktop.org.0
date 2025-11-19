Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 046F3C70B28
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D1610E255;
	Wed, 19 Nov 2025 18:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="YKqvl9tk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011029.outbound.protection.outlook.com
 [40.93.194.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5024C10E255;
 Wed, 19 Nov 2025 18:51:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w25qeJAPUAJpNw3UVcMiRUiwlhUq+z44zgxcE6TGqnsPr+fTYAINjJl3FaJc4Z5MoUyWwBbhasDCQWN8XHplZ2pkl1w2sw8cJ6vIb6Twij0sio6rUsqCxkc13m+qHX2temMv9WMcwwTl/mcjeB8SM5UZZ06JSsqicdevS6zLuSkUa8l4jbXo8RbfocDNoyevvBMTVduGxa1bUiBC4JQY+TnUSuRuygi4GDDKCTGkOLx/SXmyJ+tcouWsPyTE06VadXZ1ek1Dy155kmwAoHaqbJbEg6ARDb/f8gldwuOO6Q3LUSkEYk61YdAhLNoAaCbeVF82xRTtO6KcPcoDEr8h1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a8Ks9R/nu5xEpFwJSxPmuC/QToH5Mah1ugVKYST2cGQ=;
 b=Imx66TnsCscybcbjp9QGUABm24wOQqaQTkLYkI0BmXwRwC8GhLeTBzFYe5jqXI/Gz/nH5lxnG+kl0OFzpRkRCvPdU89UJNj7X6p8RgmCPDxt7NQsBrc/fTJES/xiHa4EMD7qVeg1YWCoNXzHY7OKnjaxHrNdd0oh6pOykh9EVEGMAeVOIHvO4BsK8jnC96c32z+1Vm5l9+c/IIWq9+za2eUOEjVCv7qrlezDT6rat7A8vZQsG1Pj6Geo0Ih+irNwvUo/Cqxxu7EFfdukoT2OoBKWAcXqpNeP1arRQupsfw6YzjKR0M8FyeiP3eXnlnPykqqXpPRfux9/7I+8Am67GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8Ks9R/nu5xEpFwJSxPmuC/QToH5Mah1ugVKYST2cGQ=;
 b=YKqvl9tkoBpGJW+wKUc+RKNwDBt3TI7EZYWM8vDUM49PmIUV4ib0ycTA1a2VNwwWLOs/MIA1KBP8mRV8psIe2O5B5BvYwDEeamtq4GeQ9SBjTgnvy8o3G1FVW0QLEOwlaBD6lntqAky2nmsEOgudE0vUIxY7sDSMq8tcxf1oJki/22xkuLIdbnN3uSrutW90HddVlJfzQzoAFRfrESt5fGprmw3af1a1BQc4TIN90ilnBCcvL8u0k00qY9ng3L7odmukHVPA2a0RxNdhb/8nvmQQlCqDRcpnYGxEEUiG/RI2gQpwylrpzVQ6PwyyKTQBgVyidwSO0Vg8uBNRpNpQ9A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by BL3PR12MB6618.namprd12.prod.outlook.com (2603:10b6:208:38d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Wed, 19 Nov
 2025 18:51:21 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 18:51:20 +0000
Date: Wed, 19 Nov 2025 14:51:19 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>,
 "baolu.lu@linux.intel.com" <baolu.lu@linux.intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: Re: REGRESSION on linux-next (next-20251106)
Message-ID: <20251119185119.GP120075@nvidia.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <a79fe616-52c7-4fa5-906c-382b5ff2226c@intel.com>
 <20251118161341.GC90703@nvidia.com>
 <0c3cd494-e42a-4607-896c-4c341f90c270@intel.com>
 <BN9PR11MB52760A6BE22F89D29685690F8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BN9PR11MB52760A6BE22F89D29685690F8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
X-ClientProxiedBy: BLAPR05CA0008.namprd05.prod.outlook.com
 (2603:10b6:208:36e::11) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|BL3PR12MB6618:EE_
X-MS-Office365-Filtering-Correlation-Id: 0218e72d-0ec8-483d-2312-08de279ca0cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?BR7il+usAFlUd44WhA2V86kCNSMifJ+xnn0TwXeHER09IsAyhMhUXQQ/eEzL?=
 =?us-ascii?Q?u1Dwh7N5Lsk7fXAu7iaFvshlHM8u5xYAjcsacvetGbcV060E7gwgY295rWOc?=
 =?us-ascii?Q?1Nj5Hoz8SJfOEjhrxuwwcqBO4wNadHzw+j6iPfqxufbJ35Yxh/VNc4HEAavT?=
 =?us-ascii?Q?Yy0z2G3+c86q4TpMNacbXAblYsONW4aZDy1e50QThwZE5zWuvIHmEVevycSk?=
 =?us-ascii?Q?EGLuKFlj4rqQJQQvTamRDGGjZnlt8zee7P78MbllEuEqD+xgIWHablCyankX?=
 =?us-ascii?Q?rGqOkvq5jcqC3A+2vwfzvdbpYNmsftbvYRkcIEjJ0xJ9QDcmxHHGcsd8pRc0?=
 =?us-ascii?Q?BEsNby2TU4DgVaV3w179TYaH7a0r/PjtuqxPJnDCwxkWUl5L+dvfB468rzyx?=
 =?us-ascii?Q?nedEJi8BkIEaWDCRvdR5QLejHTgsq5G6TrdQZAi9GfBi6yF8WzwXpYro4Jna?=
 =?us-ascii?Q?y/UYmUyPnwfrQKKVaDqkmRcgTRBAq3evsBYm+w5r8VGS/kWTt5yBI5DrCMpM?=
 =?us-ascii?Q?thwbCW9Nhwcrb8WE8ZS5h8zm0FFRuiGfaImrOhI+OfyFr1XBoCa631s9DZv5?=
 =?us-ascii?Q?na1jnF5Cev0b4LHmaup/NbR3qm0SKYl/38W04uwopaS2ckDJWQYYMnvoDZT9?=
 =?us-ascii?Q?tGd2Au7uhF02FVr81BAg4GAzpPN1Ylq/nkr7whNYJKEPIR6UywRVF/rXZp/n?=
 =?us-ascii?Q?2E51yTCLFJw604rzoj3MLbxMHhX6HSPf0AE6qRQTY7O25SNoKd4pdGWQV8YC?=
 =?us-ascii?Q?+C6F0WvIajgL2lgJmYKgPFAoTgxskyMHhqG+4Cvlne0giGz/RF0WN2KtctWy?=
 =?us-ascii?Q?Gz7X5vzrr4gajINGW0IZDCGuKJ1hDbVDHwzDWu3+xZtZPDFNmrUtmkJWgX77?=
 =?us-ascii?Q?fDaR680NXnHa/pNSajx/ChyWOoZBv6I5mnkO7PP/ajHBH1OHVVPUUY9YgtMe?=
 =?us-ascii?Q?4wmtGpaVM/a1hqtFgpGeI88ftizrSqA0XZpQ/PfdwALgC+XUtBh1XykKKPQs?=
 =?us-ascii?Q?XDFxz+scLtzBlpAjrspoodiuIRFjgEOscTa0vebUwcmYrxrqYUan8cAChCdi?=
 =?us-ascii?Q?BjeWBIm0QUXL2yl9/MbKEIAkeOZ+t/lIJYztBoOWQHYFQBU/0j0yBsEyRXNt?=
 =?us-ascii?Q?83ucHrmHnoRp4kvP7cJUPgGe2mpWWejP9yvc6HDlA5wSMFSCq5KbO77vaLUg?=
 =?us-ascii?Q?LFb5yoDQwLT7/f10MK6j8s9f4mWbcbbrZfTz72B8yH5XkTssf0LZIJzM4KuH?=
 =?us-ascii?Q?7giQix2ebv/7oEjhzGhbwAZtn36TEpz9XrfA7PuLE6o6lkeUBM0y6J6NaZrk?=
 =?us-ascii?Q?Q1heTWOvMf3wujmcOjRVg/93eawjbgho0elxvMMq5LuozCxsNv3DZ0OlN+8v?=
 =?us-ascii?Q?pdO9XayxaZXnXK6BhnVmyMuBc00Z6+NniBwEdE8pZJa2L4NEAEbNPWtMLFPR?=
 =?us-ascii?Q?mzTvQRSeij2r7N1LgUhHBYQ7u6GyTwJS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3613.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wQh8K2djiX/BMNKl3Cxn86ke3PV5upTQVjns7qDoqYHd0Titwfwbe4ze/6O+?=
 =?us-ascii?Q?p8Xd96Hcnjio5W1u+MyrkvlBNGD5GvOa3T4nhm+0ARqX+1rt/0SrLD6lX2pW?=
 =?us-ascii?Q?R2rH1Eit+cLw22UJGK58WR0jUg31oztjVJ3HLhU2N+ZUeZv7re1lYXMpsBro?=
 =?us-ascii?Q?8TMfPbwKQJ8kGC4Zjso3gG2DWRgW9Ilzq6us2qrI7h2//3U3FB9SFdii5yIS?=
 =?us-ascii?Q?pDhoTXPjW4S/n51stRZv4rVhIB+u1ww+wVEBvItY+/0CCjDgcrGW9BQonq8W?=
 =?us-ascii?Q?hx2uXsNzvEiGBLO5N7/Rx53ZpGotUk8mTqh2ufN+kpVDJFJWQVoNPFp6eEkr?=
 =?us-ascii?Q?RnrCPOB/J5YuggpYhB32suTnoFl0Fxw7/Gay9R9MnYOS0CdDAO2O18vSAB+L?=
 =?us-ascii?Q?ueDSx+nPV0H0Vgei/+3e7+d3yes5d8kv+xDisJWXlt5LTic2WP10+Zv+i7u6?=
 =?us-ascii?Q?1eXwgfhmKz9pw/AcMSjR5r7iGgHCjqTTaVjs/Z5xiwqMzuF6iLpfZQRCFvob?=
 =?us-ascii?Q?lLukTW8DwP3Rfx1LDl+KVjQ4bEe9MXVJ7Kk4u6CDwZ3hbTpyFnth5mz9r41X?=
 =?us-ascii?Q?yUBG7OEyaKj/+QfosUTO4iRIW09bWrbamsj2GCIc8ZkSduaB2gdQh5Ykezf8?=
 =?us-ascii?Q?u04x5SUnvRmFVs8hXVWXpSvYKMVs2Qib6TN77CCHHi6WxHcPud2GZ5Iqn7nl?=
 =?us-ascii?Q?fft23HHe1A3dRoUC/9cr0/W3s+G81aVOVyE8sp6BfA1l1Z6rrbNhRCf2aU0Y?=
 =?us-ascii?Q?KfZ+FgG0/efGKNb+b2MmUCWilYBTEzPTsP9fIL2PR1EX5jui+AJIExVIyzLB?=
 =?us-ascii?Q?/qlZO1IZpLskAzPzjJhqTzTpJiDNKwWvL6NXveHqXk//m8SL3/idhMoAcQuc?=
 =?us-ascii?Q?lB9MJpgC0rvC9Ke44OS2kYFWAnMmaIV8RYKwViUNF47B7MGqV5YJljwVOvXO?=
 =?us-ascii?Q?auOOTL6f8qvBMKgJx3j9VhC1zd7fmY6t8++ZhkTQ0jXXQcZNKMqlkm4tYpAs?=
 =?us-ascii?Q?gG81x9HFC304+PGKWBO8HWRdDMiE8Kv6iHRLIDlshmisY2F6L+OGoT/StAsd?=
 =?us-ascii?Q?shngKE7xnWYqseRFsy5TUbEmVLAlgRDwV96fJH1E1UfHUaji+fwozqiAF+a5?=
 =?us-ascii?Q?Mnj13AuammLQafuWGmtnW+FJ2RuxPymzwXfoz59gOAIBOtqKuxStR0F3WLID?=
 =?us-ascii?Q?E7FtzoQamQPQW7+do//SxvBdxiwcx7IQBK+JGnXLwJU2elgaRTm8bh6A9KCT?=
 =?us-ascii?Q?mdlltyBrDFUp/Ca+JZrx3V4JEEAX9CwVCO62FeB2Gxrd2u9EgHEgCGzHloyL?=
 =?us-ascii?Q?lAKTIP1QfpMFMYi2QYuEy5Ljc0hsVqGgnPll7t2L1Vu0uB9d+pYnNSyS8rxQ?=
 =?us-ascii?Q?rBI+zKTyzSU9kdzk/tc8d5tTimhRHkAe2yBTB41iaibarR2h3ubrqp4BAn/u?=
 =?us-ascii?Q?hM1np0ekS7ljUlNuNSpCN+nHMx4Ma3SRsq9M8hV8KKKO6k/G+C1YKbrLdcc/?=
 =?us-ascii?Q?al/6NfHdQQzH+R6Kh5kP+pgaWvFH8f5yoQSQsT5kptbOpA9umnfhZnE7Fp5K?=
 =?us-ascii?Q?JM+RXDmTONuHnxeZv0E=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0218e72d-0ec8-483d-2312-08de279ca0cd
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 18:51:20.1948 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0DKT64wKgsHs8tXip7ymMhPBFUZ2MSqevDobGQSXrVJeZFZ6fHWQsU97THZ87qtY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6618
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

On Wed, Nov 19, 2025 at 09:31:50AM +0000, Tian, Kevin wrote:

> old way:
> 
> 	if (first_stage)
> 		domain->domain.geometry.aperture_end = __DOMAIN_MAX_ADDR(domain->gaw - 1);
> 	else
> 		domain->domain.geometry.aperture_end = __DOMAIN_MAX_ADDR(domain->gaw);
> 
> i.e. both are initialized around domain->gaw.
> 
> but the new way has difference between first-stage and second-stage as
> Jason pointed out already.
> 
> Baolu, what is the number in "Using xxx-bit DMA addresses" when
> using second-stage?

He said 42.

Indeed Chaitanya's dmesg has this:

[    0.079787] DMAR: Host address width 42

Which I think explains the bug. The dmar->width is being ignored by
the driver except for that print.

> my  understanding of various 'gaw' fields are only about second stage, but
> maybe there is something we overlooked...

That is what the spec says:

  MGAW: Maximum Guest Address Width

  This field indicates the maximum guest physical address width
  supported by second-stage translation in remapping hardware. The
  Maximum Guest Address Width (MGAW) is computed as (N+1),
  where N is the valued reported in this field. For example, a hardware
  implementation supporting 48-bit MGAW reports a value of 47
  (101111b) in this fiel

Seems very clear it is related to the second stage in that paragraph..

So, I think what has happened here is the old driver mis-used mgaw for
the first stage:

	addr_width = agaw_to_width(iommu->agaw);
	if (addr_width > cap_mgaw(iommu->cap))
		addr_width = cap_mgaw(iommu->cap);
	domain->gaw = addr_width;

And fully ignored dmar->width, which happened to work because mgaw < dmar->width

So we should be using dmar->width to constrain the first stage and
expect that mgaw is less than dmar->width ?

Jason
