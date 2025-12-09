Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA76CB04A7
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 15:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA35F10E029;
	Tue,  9 Dec 2025 14:31:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLHeUauZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0B310E029;
 Tue,  9 Dec 2025 14:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765290664; x=1796826664;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=cZM+oq4SkyIzsqiyJYfND5uF49tQ7IAXCeGEFaS3SkQ=;
 b=MLHeUauZ71kpMBfO3MdxkGGAU+kQkIa4KaCUu6k/JL+5z+lKKEVGY9+d
 E29iXIld15QISvpghnQ5+Oua+1ajOOW8fqalIBc7TxvURcEBcc+56hZfT
 bflykeH+N77tsATHxH+b2m+3YJYIrbDvLHuz4CYmaPKAkfyrfg8uqDEiV
 b+24V76Q7APzXSP5rh1FNESfuWb6PlIetWsuPwsC4y4dUSqr+p1aA41CS
 prFqK5FB8Qfw+U1MCtjA+p2lsOxQF7SAaHztBIgISslBJx7tObHcD0Vs+
 2jMfbHo8ZL8/h2YS2MC7uVrgkaSYNOeDF5gveJ+lhkQAdYHk/S8YrvrT2 A==;
X-CSE-ConnectionGUID: NZdGOggNSkmuq0WgynZ8IA==
X-CSE-MsgGUID: 0XnPH0UPTqqrSyWw/d/hfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="78713854"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78713854"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 06:31:04 -0800
X-CSE-ConnectionGUID: J73Gm/5xS8CoUk7eCvcFCw==
X-CSE-MsgGUID: pA3524jITp6Xu+EU1ydiKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="201344395"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 06:31:04 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 06:31:03 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 06:31:03 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.23) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 06:31:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k0dQHrbicmM2qylGhiBMHmXvuxX+iW0f+S+wjkWCw1G0GE9SIXUU6uUdthpZAWUPxPSyO9AleIKhwXBgIOl86S3GkQvX/uIySmaRwI6Xj0UR7wBY+Iv8l1oEBH8nDU6/3jO08cTd0oYNGzuxuDYhZkFJ2u0CqjKuCgltTQD8zEQ4fkN+ROHrUeiyHB7tC8Qix9tJ0QYsbWHFfsVEiPzEQ6GuHYkNOWlYEilB1/lQR1WI7AfdKNVOh6/VP8mdLU1703YSW8yVnHAPRc6093AO157JP181LUuDIq3/hDdqt0SmJaAV3sYcUKBHwsmC7BstRShq5sZy9YSR0jKWE0GiOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/Fxb+alyqDbVmCj+hXbIrIJiFC4iYLddGfB8yeluLQ=;
 b=EXzVwJjYOjxh13Ky15fR3N/FA7ZKMCc7e3EQqBdwbk7zbwebNHevCumNaBIKAvs3GI0+McGIjDK9qteDgeVavc0Nf/wf6vHRxR5M7dMDDVWMKj7xU1ay/UFMdBqtMzvXRA/qno3S2yqBnFvbSa8s5ZQSvlbhNaEJqqmr6Qdqymz9ss4uSCEdyYdHK+fDEdR8eip7BFHKOFhBxr0bSRtIYwsZCQhPugBQiyZrDjnmjhW5jVDyE9UOrsIBT47rkiyT/SCDkCkkqkrnSU+gM5hltuL6xl7QGVkHHJZnrDRlLRHaYq9tMnYnEfbNuAGk2v8YP9VhGmMKfJ/kRZmPOLxGYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB6890.namprd11.prod.outlook.com (2603:10b6:930:5d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Tue, 9 Dec
 2025 14:31:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 14:31:01 +0000
Date: Tue, 9 Dec 2025 16:30:55 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 40/50] drm/i915/dp: Track the detailed DSC slice
 configuration
Message-ID: <aTgyn95RXq0vGstW@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-41-imre.deak@intel.com>
 <63569f2072a37d98818b6dac72b531077ffdea21.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <63569f2072a37d98818b6dac72b531077ffdea21.camel@intel.com>
X-ClientProxiedBy: LO2P265CA0012.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::24) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB6890:EE_
X-MS-Office365-Filtering-Correlation-Id: 7aaf5072-2eab-47f7-af36-08de372f9363
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?u3q0sgGxa3yFKf5nZi6QbO6Qd4Y6cpnNyiQqGsqSmyCMHJxMC2yxo/66LC?=
 =?iso-8859-1?Q?D+Zv/VZTPnTEe3I/LG0GaxiQ4lz2KCBRZDdS9Jd8SdGfTr3y3/f+Mx5xzI?=
 =?iso-8859-1?Q?/w7NQD2j3EO+JZOmr8rtqHQZgjC4FnOEyMCgVT96PFptUTQLYcn7M5gE53?=
 =?iso-8859-1?Q?gxDhmcCpJ9LWSXuCVxp8EmlzCPs8glfdc3PSXPs/Ff4I5NNySbPkWvNQYL?=
 =?iso-8859-1?Q?rDlI/dapgddy/JTgIfuvoyoqPuivI6n2+3oEG6+d4R3W/ITHeJszNHFON6?=
 =?iso-8859-1?Q?TT1bNhW+AhQ79bspeHc8VjN4mZnUoD9PghfdejLtviPTQif3qeK9RqgIyU?=
 =?iso-8859-1?Q?a6f44LnYXOVU8rgtS3588D2t4V6mYQC9smwM/oROKoZrvIgCTuKL6ygnOf?=
 =?iso-8859-1?Q?lNrdWcxF9RfdBaVUkUTiKuHpzfWyva+D3CrxhLJnrPuhKupUCcvVvb0xxM?=
 =?iso-8859-1?Q?V+VLqD3J2NxyeIv52A0wlnMJCKwC80hrIyjhJ3IOhl+C9cskAyUoOZ7HgL?=
 =?iso-8859-1?Q?xUK7syoyKLt8YO2f9TpmGvN3anIaLkR9ue7iQnls6J5Jp8WTHmlk85yo8+?=
 =?iso-8859-1?Q?OPcpWm6XYAy/7v9RIOVpwuOZO37V2sp2EriIJQ/Dj6P4D3LeZYg20HHPOz?=
 =?iso-8859-1?Q?pzi3fG+BhHB2eUwP973VxFsg3hVTFCILcI3VKOaWkc2V1V8W+OfR1P2PXz?=
 =?iso-8859-1?Q?eDYTQoOLYCdmJHoyVpzO5VOZCQE1xqBgQmmjSMy1TWoqQa57Di2EoTsk27?=
 =?iso-8859-1?Q?8/VKNn1od8l3rJT78Iak83QKKP9hAxhlP97GG3wFmYXRUe1L/5+r43pwbf?=
 =?iso-8859-1?Q?y6sAurzQIjNZyiD/EDINKEtvY+Z5VIxRLkwXSWDqSHOkvXm5mGUv/vkPLm?=
 =?iso-8859-1?Q?IMTKFUo4975sfbKD5eQgFLKm/CnrOx4CcpnZFbjuQ3Y/ghB34bFHCSbxbk?=
 =?iso-8859-1?Q?PcOThYgrkkFI5cGL2J01p3SQberJXfsE8ihX+KZ88mV5edklFm0GYR7E+S?=
 =?iso-8859-1?Q?gw/asaznCGp0I21u8tG4pa3iHVydwXpxsrflBffr5XiLPm41z+t2MLhZk8?=
 =?iso-8859-1?Q?bxN+ItlsQXkv/vympTnq+kow7fknL3hpT0Rg216pEBBnQp07XdOhBMlIdm?=
 =?iso-8859-1?Q?Z+E3o66EB/LnPlCic/qcLbium4rvxgYfn4PIZqinkS3SOHOUbUoHhfVbvq?=
 =?iso-8859-1?Q?RryGccGcjXpf8P3ut/4c85+bJUTmgpn9QNHUpeCejQ++/u57FNj5agWDHS?=
 =?iso-8859-1?Q?622a9/DVijpOWIrhIp2uzXRy0hHkA8QwwqsGNXFCwXPYfpJduRTPCMtMqC?=
 =?iso-8859-1?Q?tvqAOE0pTFXx8FLXG08wz4F5VH400wbEkX+qB/zOkoirJbO0OzlJ7uunOT?=
 =?iso-8859-1?Q?43eK7CxLaz7rAFrFKR1TQRJTkUYi4bqdWRbWKy/jYRm2PTcishEHCrGULr?=
 =?iso-8859-1?Q?GturTUgkdgpUBJC/cQAsavVG3YTV7f1celSN0vHDfY+1nQ2v70DGEqJ9zm?=
 =?iso-8859-1?Q?OLNeShoCDzPz1isODQK90g?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0GiGyA2ee3tJuGUGgc+8CDseoeK0Og3I6CloatZVjcmxw2VjZVIzr527PW?=
 =?iso-8859-1?Q?AEfA/jyE9ChW7MqVwMJ7+IVldunRPefslhfVvAGuv98OPD6NaKUZ0PqjuC?=
 =?iso-8859-1?Q?lRkNAYDP9e13xEhTAwUYhROzj20FQ9GvKAC7UqIxD8/GTn2YSquyZbMaJJ?=
 =?iso-8859-1?Q?7zB2uN+haKk00YAYdUeWtHSLQ++o1k1AdecR/gANkpmTdLSRA9v2W9sIyR?=
 =?iso-8859-1?Q?7mcelMzoijMOJ+VvXlqG90qopkM/3I1s0reSBOdWn+4SOePIHXzCRNcXE6?=
 =?iso-8859-1?Q?H3pJGtyr6PuNRxT9/TfGo3vRZmPw0i5lTQ2YCVkE+kKG7203lNWEvDAwJx?=
 =?iso-8859-1?Q?DG0WcuCmPS+MpgxZ4nrl5MLDdoDPoucw5dd3XaVvg90UmbdOJt8nBnbpnd?=
 =?iso-8859-1?Q?bA9c39C3NITWmnD3VlbFKl2eoV8RYo0Izul81x+LWkFlDmIRtT087V1gSv?=
 =?iso-8859-1?Q?R70JDCAv7GCU7Hpx33iBVB/oxWYPq27OiAioNfUTgfd5pzo5oJIXWjsRps?=
 =?iso-8859-1?Q?36SJCbKkG8cIwur71UIl9t1Fzqztwgyoj3uvwvEeI9hgMglcB+XfawxedJ?=
 =?iso-8859-1?Q?YTu+AKVZZg/DMSS1DDCCN/YHdAmAJJ71kEZO+xzn/5kYp6DiL4hUn5KF4p?=
 =?iso-8859-1?Q?SdXA0U0aPK5luUJUVqvU7Qt+XPPaLCnw/Y4BdUkQ9PJAZNQSIvzNzK+T2T?=
 =?iso-8859-1?Q?JC4dFlWkJZj6S4Tij89ID+VFu2nS6NC6wHuPZ20FXFOZiNjqDE5GPtTSPX?=
 =?iso-8859-1?Q?nR3qZz6XcoUjXhqaf4NP2b9uCcxm/SrmWklLV3JEvVEYofRdJdtkhinhGe?=
 =?iso-8859-1?Q?xfHyFQ+bJ56o8f22Fm0ajhbTTz/Tf9nYLkxBBHmiL4tDnCJTqvPpfs8x02?=
 =?iso-8859-1?Q?IrJyPhyQF40eXttBDlLVlL+mxF4EvBanx8NBHgLnAPsJ1vUWLjA4tYp3oX?=
 =?iso-8859-1?Q?Gvid0xWGzzJxgT7LGZTFYskyCCkuHLdGeG8OSYwZsOCv4fYE7W+BCyVido?=
 =?iso-8859-1?Q?LNsaK1rnyIG2NTvMpYRZqDma4tXRo7k5OFY1q/s85UuWy2xI72He/TiGpd?=
 =?iso-8859-1?Q?U6evyfmUx8j2yEzNXTauO9psltyVC7c07GJg/5okFRIO0TNaR81IsPUOTB?=
 =?iso-8859-1?Q?dUMwr/EYrnWjzEGfQXiZOigclI/tPf0s8Vi656voX18QbC7VNWfwZyfPwq?=
 =?iso-8859-1?Q?1OBzkkrZFBidDiNci59l5tnIsIHd8xwIq4C6wiGLBL8s3/6ngXyuIag3hg?=
 =?iso-8859-1?Q?bCjQGK8ZB9BB/9FzAhyeGDupKCmz0mWSdlrh7XIrAD73mj3qSX2/6n5Ew4?=
 =?iso-8859-1?Q?7lmHA+BOnkj0CtWqGi8Yv0NP32HIyCmPPm/7DHxumbUU9s+QmxCcw9gwHh?=
 =?iso-8859-1?Q?4LEuViiACzY6SEWsoOFkVFX8XhpXA9xvcUq399ydo73B7eJo9bH9F05+7R?=
 =?iso-8859-1?Q?GbZdC1sp4exf5ozyxMJXQWiuR20br/RKVVyN8Ai1IKAO125C8hPlicVU3Z?=
 =?iso-8859-1?Q?yOt7ARC6q+iDXM6fmTNY0OajmCJHqDYASW+FlDnHFXdp0ZG/bRvF7Qrrg9?=
 =?iso-8859-1?Q?Vm+knGzZB5OAHKH4xd0y59X7qG82RwGabL2ziIpseKEOensbeHwKmKShbz?=
 =?iso-8859-1?Q?NuOM0pJOOvARywgQA4/5MYTiXXzGH10JOZsbwmAxiqwRFrowvPWAYenw3F?=
 =?iso-8859-1?Q?EiYckL8QWN9neDQOuEDQxi2Q5++dFNoVtaZ5zIaK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aaf5072-2eab-47f7-af36-08de372f9363
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 14:31:01.0515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BXu0nqgpTmARkbH/Q2EOmyQXRkh1NJwIwydV1IqwOWoW9kuvo2yVDOmK6wM/rLQyy7Y6/TBFw0RDJC30k/gV+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6890
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

On Tue, Dec 09, 2025 at 04:06:53PM +0200, Jouni Hogander wrote:
> On Thu, 2025-11-27 at 19:50 +0200, Imre Deak wrote:

> > Add tracking for the DP DSC pipes-per-line and slices-per-stream
> > value in the slice config state and compute the current
> > slices-per-line (slice_count) value using this slice config. The
> > slices-per-line value used atm will be removed by a follow-up change
> > after converting all the places using it to use the slice config
> > instead.
> > 
> > For now the slices-per-stream value is calculated based on the
> > slices-per-line value (slice_count) calculated by the
> > drm_dp_dsc_sink_max_slice_count() / intel_dp_dsc_get_slice_count()
> > functions. In a follow-up change these functions will be converted
> > to calculate the slices-per-stream value directly, along with the
> > detailed slice configuration.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++++++-------
> > --
> >  1 file changed, 21 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 03266511841e2..d17afc18fcfa7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2356,6 +2356,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  		&pipe_config->hw.adjusted_mode;
> >  	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
> >  	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
> > +	int slices_per_line;
> 
> Why you are not using obvious name for this: slice_count ?

slice_count is not obvious imo. It could mean the number of slices per
line/pipe/stream. It's the first one reported by the sink.

> 
> >  	int ret;
> >  
> >  	/*
> > @@ -2383,30 +2384,26 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  
> >  	/* Calculate Slice count */
> >  	if (intel_dp_is_edp(intel_dp)) {
> > -		pipe_config->dsc.slice_count =
> > +		slices_per_line =
> >  			drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
> >  							true);
> > -		if (!pipe_config->dsc.slice_count) {
> > +		if (!slices_per_line) {
> >  			drm_dbg_kms(display->drm,
> >  				    "Unsupported Slice Count %d\n",
> > -				    pipe_config->dsc.slice_count);
> > +				    slices_per_line);
> >  			return -EINVAL;
> >  		}
> >  	} else {
> > -		u8 dsc_dp_slice_count;
> > -
> > -		dsc_dp_slice_count =
> > +		slices_per_line =
> >  			intel_dp_dsc_get_slice_count(connector,
> >  						     adjusted_mode->crtc_clock,
> >  						     adjusted_mode->crtc_hdisplay,
> >						     num_joined_pipes);
> > -		if (!dsc_dp_slice_count) {
> > +		if (!slices_per_line) {
> >  			drm_dbg_kms(display->drm,
> >  				    "Compressed Slice Count not supported\n");
> >  			return -EINVAL;
> >  		}
> 
> You could share handling of !slices_per_line for DP and eDP.

I do that later in
"Unify DP and eDP slice count computation"

leaving the changes in this patch simple.

> 
> BR,
> 
> Jouni Högander
