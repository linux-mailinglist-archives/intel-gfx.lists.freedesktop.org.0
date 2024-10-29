Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80679B4AFD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 14:32:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56E9810E661;
	Tue, 29 Oct 2024 13:32:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HIyFwG0W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560BB10E65D;
 Tue, 29 Oct 2024 13:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730208777; x=1761744777;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ne1B07jG04AfhtUMGh6EvEZAYlMdWh7lzKyegxzpKbc=;
 b=HIyFwG0Wqi5f+2V1YuDdQ8A+kGqSfU4DCTCn97zVgZ6dygOgnzJE3+qf
 NtLIjf/Ss5aprZBbr6l8Q0PNun9zEximSv5u07yX1+SSYrrKtUai5keCP
 cG7jSMYjZTIbPr9Btb7jqcJQWm99K3UtBuhW+hxA+ugG/N7ivgFbYi910
 tAhb6lceMj5i1aaSvrHlIAyU++rGWWVJ4lrd9zFJVIGckp54/E+CfH04W
 H8Wz6IKd5f+SO264OLB4SXxJnshw55q1zmbg9hsQEQlhtUf8qjZwuzJnq
 k6vkIMftTEEzVzUTNfrf8oV6MeLYLdbSMD8GSuG6PqOEzCUf7VIvLWlpt A==;
X-CSE-ConnectionGUID: rhQuTZSwRR2lohIlidI1Fg==
X-CSE-MsgGUID: hgYBqyN6TGuEVlO/h8/q/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="33645295"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="33645295"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 06:32:56 -0700
X-CSE-ConnectionGUID: lxOsGVDwQkOn9LEK3Qbf5g==
X-CSE-MsgGUID: anrROpioQZWsVa3cQgU5vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="105294704"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 06:32:55 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 06:32:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 06:32:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 06:32:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I6gZxYH/lusHwQBUeAszVw2q3NeMfD2r/dXUvtRI5j4cIC8d9eSLJyq79+NxoR0xBDz6R67NiPBf4/B0fkCkf2Eu6QdxRoRwsW3h6+sJyC8SSul93DBA2XHLhp5uyqo8BLUmDqejquRk4H5JgNRYNnOpAbxvboYZz3UzUcGI2ZJc7+TtffsoHcLdPGWpbdlEBXbbq2nn5lFPGHSp9+PETH7QL2Y/pAXzDmGOXJ7jGSUKT06q3X/AIgZ6omDcuGw4KjUT/MNekuPasU0jswoEgIFwy4jDw4NJaOBpFWFbkuI1fV5lTNpunLbplV1IR7bBFozcVS2Ip4t4+ONSblis7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s5bLAnJ+3kgm+lA4miYmS8adjuBhjSyaGj41CXBPc8A=;
 b=IKhRZCGaFaUIutpxeOqX7bT2FeGli2TERwz32dga3MVglsa/GkmRhZ17GvZafEqP6HTn7Yt2NRnu5/pbEj/3EerGjjIqGwLVEBAiLKtkiOktgmnT2njSBbijMgLHGgcIAOOvfodJAHOHioi5rMv9YJyyh4WqWSlwSQr1V7zmuwrrJtQ136wa9ZDtPAG3ZIQFoTedMi+qVYJqOK6+xnPuhRWNc/TOWxDPSLIHb9BOFk0YKEyJawPtLvNdh5JonaBsulAfOtP9WvHlTHZRvYjvH9qo8QLhg2zj60fWJxEReqWAptoqjmbnlVvYwd+ngkg2KCxSckjcPyq5BWCB/ceOaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 CH2PR11MB8815.namprd11.prod.outlook.com (2603:10b6:610:284::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Tue, 29 Oct
 2024 13:32:51 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%6]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 13:32:51 +0000
Date: Tue, 29 Oct 2024 09:32:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v2 0/3] drm/i915 & drm/xe: shared PCI ID macros
Message-ID: <ZyDj_yreAKZ4piap@intel.com>
References: <cover.1729590029.git.jani.nikula@intel.com>
 <Zxe_BOBoy8H_ub09@ashyti-mobl2.lan> <87sesfnvfs.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87sesfnvfs.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0379.namprd04.prod.outlook.com
 (2603:10b6:303:81::24) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|CH2PR11MB8815:EE_
X-MS-Office365-Filtering-Correlation-Id: cd7a2fb1-0147-44bd-2893-08dcf81e2fab
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KzOnCRX0+P1SsgHxmOgvqMef+oNKkGfoa1kSaLYKutNlvrzDiF5/EoiADmGf?=
 =?us-ascii?Q?G6kxit4BV6sv2gaKX1S7psH9+pjzIIY3AZVIqI/LAvUPuzhuf8X6ybuVbdcj?=
 =?us-ascii?Q?sEo6roUqblMefo52CQlvL7rnfi06obDDwokfH8WamvRsnB+uZ9AKhpE1omsr?=
 =?us-ascii?Q?7mbU4f7Ou05URh94W0brJyZIPsdiVonOAMWzlF8JULvxgtpLmtfgZGcIeOqk?=
 =?us-ascii?Q?EUtuw59xCF6NL5SuB1LEUvmJR6QZkVkNMUu493bQ51ZMBlcLQyhrk8HbxG3J?=
 =?us-ascii?Q?2a/2bfmfPedKt6qbFU3yoS0ecewjExVO7OD++vAjxbxsyCgnAbzRE3zELHzc?=
 =?us-ascii?Q?uCfVPfJuUdvDmeY1HNdY4CGMecn/qlMtNxNTw006MGtFiuENrzWPVYTRcc+y?=
 =?us-ascii?Q?DHqj9tUV/LVke9e8nyfrO+ltxvwJvDqj1+LN2JE0k94s3YASqv4isgZFhiJn?=
 =?us-ascii?Q?xEUTPQRtosuXRoH8AFWET1DgVvHu92xXF5WZjCU1gNaOIbakuvx7c7KCe5j2?=
 =?us-ascii?Q?fKfuzAY5+oGkmmHU2kyMCRtoDAzux+Y4/ceB3p1MLJEGjxop0DotZH7007ni?=
 =?us-ascii?Q?IV8aI6D3keC3iHQz9hLrGhlHhvYU015auBVOFW8bRJBwOyA182siM6iU7Jvk?=
 =?us-ascii?Q?0x0a+xJZJ3Bd9/YQu4LrU8phRPaIOi6APW6OgxPqTmPUPqhwJnUI9+WoLhXk?=
 =?us-ascii?Q?E2+MYKJjSvHhdo6QViX5Q460lKK5KRpqg+szuVOgPU6qbHoAD3cik5Uvk5oE?=
 =?us-ascii?Q?HPq9oygit57tYg6ALBLrKbxkJplUJlJiUpxNd+9Cu/PnOLBYMmdAuMm9nCZy?=
 =?us-ascii?Q?a+aXlSfuNr81xxFOfFx+BGb5BIrcyXPMRGvxh1JpOUYIszBHFARQ2+0jDV62?=
 =?us-ascii?Q?xTnHnKG2/AGh/IKNDQsie7YwnP/yT7aazCCzyqsVAi5Z1V7BnRimWv0B63XH?=
 =?us-ascii?Q?6KQm/XHd/0lFq0gqxV9ORHOTVv4y1lJXjVxRZYfN3R2EJK1qc/v/J7R+KksB?=
 =?us-ascii?Q?VZ+zXJ6aYAGwA/nTpuET5kPtpwAtbWowBX3ANZqwIIZgptYecmiI2w/65lqf?=
 =?us-ascii?Q?d478Zl7GcXZCXig6koz52aUloX/BA/XCQDWfHW8xfu59ABZ0K8GhDl2341Wt?=
 =?us-ascii?Q?/5lIyQKuA1oxQDXL5XdJu43HOm0GtYst140lyb3ZckIsOXMIoIc0SUB4tCM/?=
 =?us-ascii?Q?gTMRzsKu099lMt2NwlQi47frZAYp+nX2/+Ads/62U3UcrZFvLTxt7JzxUvhh?=
 =?us-ascii?Q?ixQp86IUVZSW0lLSaD2zAh9M+s/5Bwh9OJsaDdj/Jv6Pl5c6xpaRFRAqGpeo?=
 =?us-ascii?Q?7280jGjLEgbueoMEkuymjT6u?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1+FmO46Yz4z3J18R3F1jnaczR55Luwob+qoxjd4+RRx5XxfK8qr42O1WccX0?=
 =?us-ascii?Q?mC7qJm7b7oeiB697uWeWILJ5blJTOzFC8OWrzemDLKrwKUTAyXbJrmjIjKyG?=
 =?us-ascii?Q?SOWK3u7Y1UpLs+JG7baCVkQu92un5yEh92e3o8VktgI0/8FL/cIHoKmOFU95?=
 =?us-ascii?Q?9SiXlt7bkUBll7C5BrkuWvIk7y49HBnMI12Mp+Umgs8HoI+TANYr+EYP5LsJ?=
 =?us-ascii?Q?JB2umiZGwjWDKsCue6/FEH5cP3HoQEKeIfcp5KWPQUfTdgbg5pxSAYvNyM+D?=
 =?us-ascii?Q?Clv2/2QGrqPcEaiuadpUp4uc8bvV/QcCdFwFdZAlD+U1un6ZoHKMdfaGQ4s4?=
 =?us-ascii?Q?+PSMb5DhCMdFbE+w+mvszR1sqLLZlQOYPVYkVZrVXIaBb6jJBFC6G2gt7urj?=
 =?us-ascii?Q?p7ToiXr9m3cVwmiMrT3EcngUiO9T1M0Lm9vcf+srCeuBGkQnigcLVnGcYfTo?=
 =?us-ascii?Q?iFHdhZag7VO7jXEssBiFjfdZSwB98qBWivRQ2HfyU3CCbBN09R068OPqgnHl?=
 =?us-ascii?Q?z8Rj+m9VTkCp5M2uvuMU4aqOJOtU/VnGwQwZuM9BZjXAQxZEkt7UDSyAqHul?=
 =?us-ascii?Q?VK8DsG7KQa6E1tx094TvuEmCIsyDFW+eg1mHLEGYT3s+pxSX7o/ARFKr7iZr?=
 =?us-ascii?Q?mlCQ+ZS+NsnPO7fQzxFWgwLtURIs/5sChOz6sLorzSCbJYI/43qdpo6ytzN3?=
 =?us-ascii?Q?uOFrRbzPkgd+9R7Kx9Mx7XC98kEugzy3Tqx+zGt/HMrJf+fbETYhZW7FBKBr?=
 =?us-ascii?Q?m0AX51IRSbu6J7YBRnFdVE1fuyizUEJ6A4rH1IbQpxBM67dURBiCM+o8RsHQ?=
 =?us-ascii?Q?XPWIPEGpS8itnJL7LdOzXaDQD5B5kry02I6Fq+KnhyUCRPd3zAO2RuuU8IJP?=
 =?us-ascii?Q?2KnILzGwShADBD2UeIbW7axSZj96AtejgKBNKb8r5VZhfFhRKOWiWmBRsQSe?=
 =?us-ascii?Q?YI8HG212JQRx7JFaTa5rdJAayowpghcipVdhiDToU9SnkHIOPepu93LcDq7T?=
 =?us-ascii?Q?XgytBjnYprWQ3mOlDdzPR4VnkIYq0xB+fxoM+aBZvy7O3vdjlqG59MOn7fZU?=
 =?us-ascii?Q?FmKS9AlOd4v0ph4h5qgfkrKQUGdWoRL/HCX49p2p+AKArhG0IAJyMyRBRvM+?=
 =?us-ascii?Q?fXKLRp61oeLILxLjMoznbzx32iGEUB0aasV+VIcCbIZ9+g3AWdKgyWbZ+fR6?=
 =?us-ascii?Q?PIEFALBCcu8ZO4e62Y70FkPjBqX2qYv74vfzBDXFV6n2PTEIARqZULUlWzk4?=
 =?us-ascii?Q?TV9VrYJ88/Us5vuBGydDEPcGETnXTQKsB9143yvTMW+sl8A5PR2CiP8pInfq?=
 =?us-ascii?Q?CSOpJ32uNjwKTyBjHakjWpViL0RwSVX7KQLVU+wdqNHda+R3Fb0s0yHIPAOk?=
 =?us-ascii?Q?4ipLgQPVqU6KNeVtpELhXzqCvyQfQ0iD7N6sdKrYhS5C0frBi3fceD3LPVf1?=
 =?us-ascii?Q?Jloly8W59WyokiWhlsZLdfp2rEJyjOsn/i+x/m9jRuqM0iktzPz9gJiwX6yB?=
 =?us-ascii?Q?dyP/y4GRR+saYJFhBSiXh45tmpDBDG1X1VD6xc0X/ui1NGMBI9GRHsWYD2zq?=
 =?us-ascii?Q?Nb9yTCE0vq16T5IGtCgALLpAjWMXgP65Dl3Pib6jH596hGXWQnWh/4dVgGPn?=
 =?us-ascii?Q?sw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd7a2fb1-0147-44bd-2893-08dcf81e2fab
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 13:32:51.3728 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xPBn2o3WOj1v4qFXCuGJvOwdSDPnmz87o0dB41861NRvvb75AAgIXg1C3bVXY+7U5Os35c83vKjRXAlfyBv5Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8815
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

On Tue, Oct 29, 2024 at 10:51:35AM +0200, Jani Nikula wrote:
> On Tue, 22 Oct 2024, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > Hi Jani,
> >
> >> Jani Nikula (3):
> >>   drm/i915/pciids: add PVC PCI ID macros
> >>   drm/intel/pciids: rename i915_pciids.h to just pciids.h
> >>   drm/xe: switch to common PCI ID macros
> >
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Thanks. Rodrigo, Lucas, ack for merging via drm-intel?

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> >
> > Andi
> 
> -- 
> Jani Nikula, Intel
