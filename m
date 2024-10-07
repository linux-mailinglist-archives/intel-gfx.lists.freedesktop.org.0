Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56A399379D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7837710E0F6;
	Mon,  7 Oct 2024 19:49:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ou8MgEKe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5D810E0F6;
 Mon,  7 Oct 2024 19:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728330567; x=1759866567;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CVTTtIh/GiCgw5wB/0FH7R9zRKDHjhjpUUnqpAJM7QA=;
 b=Ou8MgEKeS0g8dy07pGSdxVqMnHqLBMLrWsxkZfysScjaS5aSSBEMDVwm
 6lc5V4MLWktrPy5cIm11liVW3tG1PatkLOiwPE+iK1nZ1GkarJnr6wnqA
 vwfJhS0d9+NIQu+PjTEnY09uGx8PiUe/6VPa/PZRbn8oyCNvgCaNqD3Zs
 YbVUTcBuUlHV6xkDg9BL258vYDUFZRVYoFj92bR3dr0nkgrHaOkresBbA
 KgMlABhe3G4RrxGQLW4HuWKI1SQ3RI7PlJ+lLPFUAZFodH4Ubd+O7O6eK
 NiGVKAC3YFv+6I12EOWF5reyHqob1yfypf9nJyhmt/ULRPGjB3cLk6ulZ w==;
X-CSE-ConnectionGUID: ghNfda8tQG6pC/gG8aoE4w==
X-CSE-MsgGUID: hfXOHXLJRoWWFC4r3NHzpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38098773"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38098773"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:49:21 -0700
X-CSE-ConnectionGUID: q0W24LG5QcWHMapzeztSIA==
X-CSE-MsgGUID: Uy4Z/0KZQCOBCCh90QLQsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="98910859"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:49:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:49:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:49:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:49:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:49:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:49:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ie2fB6pQtrpCcKTIM9lrufWCYABwYMK2/zVF0pI0YSn1FuiM6KSsXsHMYMgsLBqFx8hestm/SxIq2v7X+WEg/0mBl8GDR5qXmh1lBUyiaeaoc+KVl/b4OJTzDNe/38xaILzsQAc610dVw0XIaupfkkYz3hxuEgOVt7YrzyF+aWotSoco2s++OFceXDzBXqomuybkYgFNM0V/mNIc9XYlO3WewVnjISctw8ykg+DbHP/kkZSF3wYQfnHjdvG8xpj03rnovhVVBqMpoR2QIij6a5VLe0IuBo8IGtj2oNKoZ5to2Xp99Pw7AXpPm1jv+56rkcz0sd6MgOcnNDbEtRQeuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sKwtzsJU25dt6q1ZGFBGY4rSazX54v+/tm2Z9OXRISQ=;
 b=w0jqCCiKa21bEm3qacd4X6bJr91qGGUy+d7qUnCpnMWI7to3iqI5b6GJTiEja7Srs/m/Xk3MVZNQhKVqKnjxRbLme3wFg2vrZlonTC3jD262MIyGL25IqjGaDEcQv+dSkMxd8OsfpYiNC0V2+fejQDwpmzTGdDGkowrw0naMT0PxpcwclHT1nawitKaRi32xwjv/I7IrPiFXJHW7A5U8GIwqbnVAWjvWiv9aLbc2URSca+mle2Ws3gtGK+kMwNiVEivLlEuXDqixO7q/qJiqoTB773Kjjcu/4X5MxGovMtTL7MXft7v082ehTZDrh0gncLOsbiW8/no//lPX5iklkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB6564.namprd11.prod.outlook.com (2603:10b6:510:1c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:49:16 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:49:12 +0000
Date: Mon, 7 Oct 2024 15:49:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 04/15] drm/i915/display: join the platform and
 subplatform enums
Message-ID: <ZwQ7NUN3RC3J8a9F@intel.com>
References: <cover.1727699233.git.jani.nikula@intel.com>
 <0c385a0ff098d14116f7b2d0bd5de10dc5196d64.1727699233.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0c385a0ff098d14116f7b2d0bd5de10dc5196d64.1727699233.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0055.namprd04.prod.outlook.com
 (2603:10b6:303:6a::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB6564:EE_
X-MS-Office365-Filtering-Correlation-Id: 33e55aaa-ddc1-458c-479a-08dce7091e0f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7MMq7AMaN1W8m7n09RQRLe4DVLmn0rEPcnfGSL7ZOIKv56zGOiYUqEwF8fiP?=
 =?us-ascii?Q?Rob4AoS/BmX2ZlXP/p2hP4s9bipar8qNGjSDjo++i52+IyuZJogvPh+yNWVp?=
 =?us-ascii?Q?J4zdRmoFQlxnmnX7EW4opsS1HQJwmS/yn2KZegSseijgt9Rdkg17AnOGFCz3?=
 =?us-ascii?Q?pzXRqaKNv6Jm55DmyLb4Z0sXYFmYGn0SsrN4RDJJZ7t79sX/qxHyf3zSXITV?=
 =?us-ascii?Q?n8GkFPuWt4/tgoxJn2XCiDR61XFEx+bLjg+cfcZECia0cEkFkf2RS5Awd3zR?=
 =?us-ascii?Q?JlsCT5e1pVHXB+E3kOUkO37kyAR/tPiZcCzV7SXZ8MIxtZZFW6Ok/sYUgmP5?=
 =?us-ascii?Q?QxoVVtP8Z9NqpG2dzDsGaLq4hB5oGghEntt2rqqRvryRd+ZCDdpyZInX0l4Z?=
 =?us-ascii?Q?Q4Iil6tGXPIQJuhbp6JnPoFWUWV+P5/BsggmMKc4kbH2ixYV/yXgiFLsMKIs?=
 =?us-ascii?Q?fw91NDbY3EfzXU9y8UwFQR3Qd4feFGMtfsiAlwiiTQQ0UtJfwOszZSlQhY9L?=
 =?us-ascii?Q?EwFTwee60AFwFWDtvRysRlWEeYYROPvHG9aUEtNk9dZ4YIBw1CaSFz/TKbk+?=
 =?us-ascii?Q?s3jH+PCxtRu9ZIdb4LPETnEANEqrahA9OdVT385zqGa1EVL20eMKqRk9l+VE?=
 =?us-ascii?Q?7JtIqFMHLUdyoccJ9c/O86Az5fpunpZrP5YqY43QRcGUph4dz9dfBHB8Nziy?=
 =?us-ascii?Q?qcz8Aw+T85KW4RBbZMcJuMQ09E+uZVSvuwY7gK28WOW201cGo+Bji7mjPbGn?=
 =?us-ascii?Q?7msAwgydhYNJAOvWfu9FoOPWxgNGbWxvhCcLOu57oqdxG50oT98fMxJoFSaJ?=
 =?us-ascii?Q?g9rTIOkMAhbrAITguyjcBTG7itq0mu+TDpw+zhpSqQq6aXDahzNU3y8raTp9?=
 =?us-ascii?Q?R/m1ILWKs4BTNvYdgfV7SEIT2YRyOLH7Q/x1rBhlxozF8gZnY6azkCwDJfb+?=
 =?us-ascii?Q?gORnaKXTYRvLlgKSlyIOrtfPQHjjhx8YB6bBbY5z6l4zQ4RO7ljii68H+fNH?=
 =?us-ascii?Q?LtjRQ/EA36ekHNmrywx7L+VAMQDp1LNrfeNY2ZBnl79ZEtVXtlXVU2ngsLui?=
 =?us-ascii?Q?w7h7356YGZGX6CE68zZP4OrERjcW2mEY2H6THiKg60Do89MtwNw42hlZGqXz?=
 =?us-ascii?Q?J0IJsPpQGCfoOkRQPuhFPez8LEz/Gz/4RXMIZV9a0tDRyGpNP1bo+uCNlgEy?=
 =?us-ascii?Q?SW3NLh+V9BwsELFeJFPNnM82VxCYapbg20u1zf1K3C/TZfl2mIM0OpK8E9BM?=
 =?us-ascii?Q?VHFwD3LuHUP9pxE7g5vC+cUbNvtMqmODdVvaImwogQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8tRrOFc0AmbmBdHwYVMHzoIQo5YPrqLkRyLebZhmJV9wzIJV7vN3j40rDry2?=
 =?us-ascii?Q?VSnsfKv973YR0YUXHK/zyeUVkTWlU6/gi+xFt/Je6ihdt/Anza9vjv96mkjw?=
 =?us-ascii?Q?AsnnUfFQ95QpTsfRBgeTVq9lqlOY8ay4fF4f6soVuFOj4ObV+FMi87HKlFrf?=
 =?us-ascii?Q?vLypt1YFKJscfUxd0B5lLNlL3j17RedlHVD/+zioNexfZZUB09LQFx2b3zmG?=
 =?us-ascii?Q?9T16yS1bF3v+zDIgXWAFso2FIZ68YTPA1llZ/9OteNnVUOUbI5i+tORfGxI/?=
 =?us-ascii?Q?LgU5ixleWgAw/SXaINw7znTZ4WT2zeaJIbo6ehVojt/Wyi4MDe/aF8huEyaS?=
 =?us-ascii?Q?LPFzGkvBEAIk+5tRgragEtXpKEtoekjbXKQbC+9BEnjpb7TiFplMiAA8FoTt?=
 =?us-ascii?Q?iAHe6UAu7EtGbvFwRhPJM3i8wCq9CCUSdJU9kb0+SjwT20sOSM43uHsVWm1/?=
 =?us-ascii?Q?lsm85owwjNqLElodzO8m78ZPpdOOE+Q7utCAG9k7bSIzDJ+g3PxiSPV1+ykW?=
 =?us-ascii?Q?yTX2O9ws9his4sFRMw7FV4OWaDQHRFw7goDc4z8cIts0boX3jOzt5RBvES5j?=
 =?us-ascii?Q?tqs4EJAMe1lQZisWxKgpSTNy2TKqMlB+o4lVU64TaJK9p3Fh2POzr7AvMPRb?=
 =?us-ascii?Q?/2ysEl3e/gQmlXzEFh0uoWefXKKb1kbll0lqu8hXAcaZAZAf5IICWoH9c31D?=
 =?us-ascii?Q?073sW2bgMzaqCnEWecEh3JIG2Mb3mEdjgZCPVhelVY4Rdy1bJKl2QeYhJUXy?=
 =?us-ascii?Q?1mopXbzK3XYL6IULxlICGapdz/yP352cMzpKsb61nFeHBYxO8KDCm0R6cC5o?=
 =?us-ascii?Q?e7Tj/sNBHnBvnnpREDREzdarUNnrcNzMxpdXCrugovcl9OEeIdSVFVqgh66K?=
 =?us-ascii?Q?ClZ1L537xSXE8CijEnTW5bSVZgcqNvNDRX1i7Fra7r3k9UDOQp3PbcRlgVNP?=
 =?us-ascii?Q?ElF5l3Nl0+sVld8NLQP6AdV7rtEFwp5ISIuT76O04n7qGxc1z1V8q77/tzxx?=
 =?us-ascii?Q?mvUgDbNQlUSnFzimaCdJ0uHvRbjEWNu1Lr9gp7ZudKkQrZZi+CtUBRaitqTk?=
 =?us-ascii?Q?xByJploFMMm4GF+Ha22DfKaEAW+SvVSM9V2blpDnzRXeT/OnB3OQO7udOV55?=
 =?us-ascii?Q?KP7LESvGE7CD0nV/CMixqDHr5VYd/kxzVB+izS284ux57yDS8iqDToqmvhJy?=
 =?us-ascii?Q?RApZY2vCjEsofqRI25DA0iVVq97ECvtgV/u03z1GT7YBNPSsVmNznd5YKfNZ?=
 =?us-ascii?Q?L6tSpueDBYogsm6MnNTf3fhUOExgrQkIxSAT9LV+6C3KnFpEeSb4trXauUkv?=
 =?us-ascii?Q?G4QMHoMDvDAXL08/gbxhQ4aMl+oGVwEc7o5gcLvgrumockmbI1tIj0v1UJdX?=
 =?us-ascii?Q?D9LPJOI/k5lnM9TN1RbHjaEWcKzALMdybV+wnjdsN/scnOteNQhfSdWHDTCp?=
 =?us-ascii?Q?EuW4O77HlWDfuFWqglGR4bh3UouseATPaFifPIdgb5VH56B9NuliavE66hD1?=
 =?us-ascii?Q?g1s6bXxntYW2zThIyY5LtADBTf0zHXKWBVYAQG2Jcq+ZSkq318kDVai2HRQc?=
 =?us-ascii?Q?DUK4XdH7kxhW70rOWQp4GeLHLVr26HM4zaTOJOJvtRfEF9ZdJ4f4p2QKwCYr?=
 =?us-ascii?Q?0A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33e55aaa-ddc1-458c-479a-08dce7091e0f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 19:49:12.6398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zDPMWOje8ohzr56kxzabp2ujDtTz5gHdyQldaNkobIgDShKpblEM02WY4YjahssZQqtnqQUOJ5S1AJia8FgdUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6564
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

On Mon, Sep 30, 2024 at 03:31:05PM +0300, Jani Nikula wrote:
> We'll want to use the subplatforms similar to platforms. Join the
> subplatforms next to their corresponding platforms. Update the comment
> while at it.
> 
> v2: Put the subplatforms next to the platforms
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_device.c   |  2 +-
>  .../drm/i915/display/intel_display_device.h   | 54 +++++++++----------
>  2 files changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index d311edbfc069..ab98a69b84a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -31,7 +31,7 @@ struct stepping_desc {
>  	.step_info.size = ARRAY_SIZE(_map)
>  
>  struct subplatform_desc {
> -	enum intel_display_subplatform subplatform;
> +	enum intel_display_platform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
>  	struct stepping_desc step_info;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 1cc1a2de9e6a..dc425e2661bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -14,7 +14,11 @@
>  struct drm_i915_private;
>  struct drm_printer;
>  
> -/* Keep in gen based order, and chronological order within a gen */
> +/*
> + * Display platforms and subplatforms. Keep platforms in display version based
> + * order, chronological order within a version, and subplatforms next to the
> + * platform.
> + */
>  #define INTEL_DISPLAY_PLATFORMS(func) \
>  	func(PLATFORM_UNINITIALIZED) \
>  	/* Display ver 2 */ \
> @@ -42,28 +46,49 @@ struct drm_printer;
>  	func(IVYBRIDGE) \
>  	func(VALLEYVIEW) \
>  	func(HASWELL) \
> +	func(HASWELL_ULT) \
> +	func(HASWELL_ULX) \
>  	/* Display ver 8 */ \
>  	func(BROADWELL) \
> +	func(BROADWELL_ULT) \
> +	func(BROADWELL_ULX) \
>  	func(CHERRYVIEW) \
>  	/* Display ver 9 */ \
>  	func(SKYLAKE) \
> +	func(SKYLAKE_ULT) \
> +	func(SKYLAKE_ULX) \
>  	func(BROXTON) \
>  	func(KABYLAKE) \
> +	func(KABYLAKE_ULT) \
> +	func(KABYLAKE_ULX) \
>  	func(GEMINILAKE) \
>  	func(COFFEELAKE) \
> +	func(COFFEELAKE_ULT) \
> +	func(COFFEELAKE_ULX) \
>  	func(COMETLAKE) \
> +	func(COMETLAKE_ULT) \
> +	func(COMETLAKE_ULX) \
>  	/* Display ver 11 */ \
>  	func(ICELAKE) \
> +	func(ICELAKE_PORT_F) \
>  	func(JASPERLAKE) \
>  	func(ELKHARTLAKE) \
>  	/* Display ver 12 */ \
>  	func(TIGERLAKE) \
> +	func(TIGERLAKE_UY) \
>  	func(ROCKETLAKE) \
>  	func(DG1) \
>  	func(ALDERLAKE_S) \
> +	func(ALDERLAKE_S_RAPTORLAKE_S) \
>  	/* Display ver 13 */ \
>  	func(ALDERLAKE_P) \
> +	func(ALDERLAKE_P_ALDERLAKE_N) \
> +	func(ALDERLAKE_P_RAPTORLAKE_P) \
> +	func(ALDERLAKE_P_RAPTORLAKE_U) \
>  	func(DG2) \
> +	func(DG2_G10) \
> +	func(DG2_G11) \
> +	func(DG2_G12) \
>  	/* Display ver 14 (based on GMD ID) */ \
>  	func(METEORLAKE) \
>  	/* Display ver 20 (based on GMD ID) */ \
> @@ -79,31 +104,6 @@ enum intel_display_platform {
>  
>  #undef __ENUM
>  
> -enum intel_display_subplatform {
> -	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
> -	INTEL_DISPLAY_HASWELL_ULT,
> -	INTEL_DISPLAY_HASWELL_ULX,
> -	INTEL_DISPLAY_BROADWELL_ULT,
> -	INTEL_DISPLAY_BROADWELL_ULX,
> -	INTEL_DISPLAY_SKYLAKE_ULT,
> -	INTEL_DISPLAY_SKYLAKE_ULX,
> -	INTEL_DISPLAY_KABYLAKE_ULT,
> -	INTEL_DISPLAY_KABYLAKE_ULX,
> -	INTEL_DISPLAY_COFFEELAKE_ULT,
> -	INTEL_DISPLAY_COFFEELAKE_ULX,
> -	INTEL_DISPLAY_COMETLAKE_ULT,
> -	INTEL_DISPLAY_COMETLAKE_ULX,
> -	INTEL_DISPLAY_ICELAKE_PORT_F,
> -	INTEL_DISPLAY_TIGERLAKE_UY,
> -	INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S,
> -	INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N,
> -	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P,
> -	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U,
> -	INTEL_DISPLAY_DG2_G10,
> -	INTEL_DISPLAY_DG2_G11,
> -	INTEL_DISPLAY_DG2_G12,
> -};
> -
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
> @@ -211,7 +211,7 @@ enum intel_display_subplatform {
>  
>  struct intel_display_runtime_info {
>  	enum intel_display_platform platform;
> -	enum intel_display_subplatform subplatform;
> +	enum intel_display_platform subplatform;
>  
>  	struct intel_display_ip_ver {
>  		u16 ver;
> -- 
> 2.39.5
> 
