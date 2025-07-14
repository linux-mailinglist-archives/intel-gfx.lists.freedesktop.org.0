Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7332DB048D5
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 22:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D57C10E365;
	Mon, 14 Jul 2025 20:51:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K05KCIWq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D7F10E35F;
 Mon, 14 Jul 2025 20:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752526295; x=1784062295;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=rLMueioxM7WojKL7clzEotPstnued/uYIYz61QHm86s=;
 b=K05KCIWq4yaSYvP3L0ziPtw9yUE2Gcno8kJt3yGnxjrvldozFdJu9j/Y
 cG6S99quffKtKgIEpHzu87isVVJY5wvNJi4IIOX/3DqZwfiiYtGDTyqsM
 sVvyvrXc1kmuqo1m79u/pU2OzDQ0s7eK93UrywVeuLA2v+Jcf34vdJNPG
 i+S3GNm5Cyt2VyjWvxhSHY4mBC6o+4NUvQPKKTEswqHAx8o5EHDTniQ/O
 azokiVzArFmE7mH2N6p4FK0Ip3CvcTb8Y4hH4N7Li23hMm+1LLvHE3m4s
 U5i7Rq2ELeYpK5eOwSyBa49ecsJPfBGhhHFkf7rSicQjF5ZLb4LYJN2SC A==;
X-CSE-ConnectionGUID: 4gCs9uPKQn+M6IGxqDOAqQ==
X-CSE-MsgGUID: nzTf6zajRZO0ZXivSDoM9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="65798605"
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="65798605"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 13:51:33 -0700
X-CSE-ConnectionGUID: f0TfOQnPRb6dplscQ1Uzzw==
X-CSE-MsgGUID: VCr+h8u7Q0OexpZewaIALw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="180731895"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 13:51:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 14 Jul 2025 13:51:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 14 Jul 2025 13:51:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.58)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 13:51:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fHMh0yfIVllZP5IE/VpZBb4UwG7vxZqUqnM1zuGCMjKzD6FpDLStFxv5BpOfS6T0kKbybZSe+eG/nNio1K4NlgaQxZX3MMYO7pAPJ1IRJEv5sKek0FjqekomGzKQmUsNkCRfonx3pWvFq+JRrz72hBgWPoBqj/5D5n/cMKupbv3MNvtKOr+a/Grwg29uXw9UnL0KEEYtR0O88JZVL3X/ExltAeldjymlUcjjP7/XCDBoXGBpcMgUZ8GIrwqiqKj/RXA89MB24Fa6GuUDlas7893ajSlev29EMt/YrhXZRlZuENrrExcKtA9SpfS8rvPnzoY1yWYQtkqlp5XIS/xPaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eDXUMbKC8xomMWqzBbfj0g8CQ9AfIHq3cOFvoojnZBM=;
 b=X6h5Y74IdV+fqFVDXFDO4ky8ij3PpyWPu2F7Whh+ONscye4hXL2sYVctH6/X7c8OUqCeORNNZ/ZiHz5JZGS1FRS7yBBNuNIur3cCM+TWJ/WwGqay1qMxk3bd8Hc0YL9l6u15vv26uZX7QtfnlcxZuilfEnCpTzBH9r6oBmck86sqIPDDM/axBTh3GAVfGDOHXILZvEqUwlcwzOCbIJje8dPbUQp5XshzUvR+98vL3gThImg6iKvsQSBAdRTpzcqJ8WCAEB+YlTrxJIFUoQtL12byYBDkbI87SjPTKoGzpc5uJ/UyMhHn5uW/Idpz8MQx0gRMSusgrNaU2y9TEt2LPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ2PR11MB7474.namprd11.prod.outlook.com (2603:10b6:a03:4ca::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.33; Mon, 14 Jul
 2025 20:51:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.028; Mon, 14 Jul 2025
 20:51:11 +0000
Date: Mon, 14 Jul 2025 23:51:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <matthew.d.roper@intel.com>, <dnyaneshwar.bhadane@intel.com>,
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: Re: [PATCH] drm/i915/display: Add power well mapping for WCL
Message-ID: <aHVtuhwmBdXt3hfd@ideak-desk>
References: <20250714055344.3825881-1-chaitanya.kumar.borah@intel.com>
 <175250567065.1809.3544809721458903787@intel.com>
 <175252267874.1809.10923766878963295870@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175252267874.1809.10923766878963295870@intel.com>
X-ClientProxiedBy: DU2PR04CA0242.eurprd04.prod.outlook.com
 (2603:10a6:10:28e::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ2PR11MB7474:EE_
X-MS-Office365-Filtering-Correlation-Id: 48a5686b-2216-49fe-37fa-08ddc3182a6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sSl7o1auox9/Eiu5+qlPmXzVdtcKImG3ksFMN/WWdeq6h4WdLpHZwRPqt+hl?=
 =?us-ascii?Q?nOU0hYMJQjmC5bp5Oq4vRTnRFYHle0sA8tFMj6ZY1tS52+abiE6HHedkC8lq?=
 =?us-ascii?Q?MUNElNU1Hmjm0odEu+hpom8ZuF8Ag3XlBEK+6bhDwDiuTtXNhrFYJX3IFpya?=
 =?us-ascii?Q?/DcJzKyZd5XFnut1Kutn2gVbN/WzT7iSPZzr6Fl5Ug0aES1nu7hid0e+D3F6?=
 =?us-ascii?Q?p/2UpmBaLfsc7Zso+tXcQKUhA8PklsWLrCefhyhIqdaBSizh7Ntr4a+1oSwi?=
 =?us-ascii?Q?pKvSPegH6rnDeKHriuUK93rPHBA56ciVLY5WX09d18MrSzbMZ3HP2Kcazj5S?=
 =?us-ascii?Q?wDAMWvSd5Z4MrghGUP5OEVNAHTUeEWgl11i/8uxkXoragyBdI6nhGx6Z2Dtc?=
 =?us-ascii?Q?PNz7jvEuJyRtrH190z1rlOleeNpRINQyA3jypRzyIR8fiTYmcXsCvr9iHQSd?=
 =?us-ascii?Q?nBjvsjGROwHE2WLquBh7XjR2EZnE8VHwgBf8muHQY49rcfrwGN8qvb+wJ4he?=
 =?us-ascii?Q?TFewkNksyKpTzKlQqJ6lntvFesLr30XGQMbNoeKxhTdqf+SfBO53gOcpqHOY?=
 =?us-ascii?Q?X5BGm+T1nAkyi6T2kcGYgDS/5dGka5cpygAfT0/Sr/CDo+3y08Ul3Ia83WXE?=
 =?us-ascii?Q?GyidjcV27sy8lDBMw6KeAWCNZSOq2Be5Fyxku3+nU+rBjAzcx1I7KU+cx51s?=
 =?us-ascii?Q?rD5bkWqMuyk0kL/JRaYFDSbGjbEiUy13IzOlpUB3LTCDWEYwV3tBTuwdAiYq?=
 =?us-ascii?Q?F9/zE0KZ2h4jcncQUTupjRmz0mVJtnnpLIx6E8rgwcWOWD9AMg2Oo6L50K5Q?=
 =?us-ascii?Q?WOCNDs5hvYoi3j7H01bjK8pV3WMF/AI7HQGseJKAnS3tZOo9guz2mGocm/tE?=
 =?us-ascii?Q?y1K7s4KTmiLy12PbwkGDWyNnA4XMzlwr1KNskY+ECE4mhMAFrbVYZExshFs9?=
 =?us-ascii?Q?0ZWUL7ECYLHf67dLEjzX6MOM+D+Hk6elwkCG5slcHqn4+uLzhrMzgmqAc+kR?=
 =?us-ascii?Q?xIDEYzJDtCbbVDlI0FSzbB5k2rDNCZF7FL4FpsYFjzT7iRXILlxkf5ZPZ7Ns?=
 =?us-ascii?Q?1+l3o6BP+6N/d+TIdCxuQs5b+Iv+LzHKYgO7Cxxm//M35XOuZ1vaQsIY3kB2?=
 =?us-ascii?Q?wx4ExM7vPGKtQ2km4EJgnIk5Zn4yU7bRFtNUOuxoETkd6PXHStAcMm376auG?=
 =?us-ascii?Q?7HnkCvuCJbGA3tV/EUuwgu1N8/QgxAr+cBdhXcOixqckVOwyoG3hH7qCjr9M?=
 =?us-ascii?Q?yWGTCkn9TeAAT7+/yCO0dQOL3W+lkE9ioFyqdDbCESD2nYF8ObCwTefZSu/d?=
 =?us-ascii?Q?AakTxTpIogQzh3L1IxiEW+N9iSIkklDFmgODdvuiaCidBIBvz+1b9DKu+Up2?=
 =?us-ascii?Q?0ceu9TyQkvvLQr1ZCsPb7YJtK6XoqMzTH2+NjlQsocXBsUxpkVtRkRGgUogn?=
 =?us-ascii?Q?oPmbQjSZATE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OhkYeebKuqcZ0/DpKG2cuEeE0MgnVnGOt/DaXYJaa+SjWccr8zyJ5lOG+W15?=
 =?us-ascii?Q?mzZDDwFWVv8f0zlDjn7ZCTeXh8MLgGjNBx6uMubqrJDCQfOYtKJGcJzb5Whp?=
 =?us-ascii?Q?D/bfvA5PU7mfl5vi+4rDZXmd2jholKykpaUuC1WPZf6XC2NCFD2Wm1CjYnzU?=
 =?us-ascii?Q?e1U7oqlA47MphWVdh1FlfkLPGpzXCmCeWz4XJ1fGE7gzsqfrXliBTycJjBzF?=
 =?us-ascii?Q?xdp476s+eegZMW3nKu8CNMWiy2hB5Pynk0YG9W+xNm00IEtnkJL4gu/Y2zpq?=
 =?us-ascii?Q?55h0dhz41xqTDOaD34SGYw+ok5ucLQAAHNUzdhOc6XvHWm/nmr1PreIjkHmR?=
 =?us-ascii?Q?zdNYvQf2U/tmldueFihyMHWpnOndRzeqyspgxUSSG7EvhaEvwFKrfJ85cBpG?=
 =?us-ascii?Q?f9/5cFwOuku46HZ9IV49vl3l5YRbsiivpKnzy71fefyW1J1NxcRWxaIphmLu?=
 =?us-ascii?Q?IcETAEXGi9i6uXc3SECJ6ezPMEe61RDCIApX+SxzvSVyWOw45i4GH06f5TOz?=
 =?us-ascii?Q?Pt0VVset8a0IBW0GJ7CsXHWZ4MQjHtJHi8lYzaiHkZBkaS0jAnYlxo+hlCFC?=
 =?us-ascii?Q?/0svLeaEdc0rue4PMJG/4kMb6AZKsykgeIt/jKqHRHw3Vci1OaYJ8O9ZhQ3L?=
 =?us-ascii?Q?AHPHn/ZD9OhFVoE5Nq5r+FzRapWpzzLZRoCGzQvjJfn77bDhWY7yBLF+Y11G?=
 =?us-ascii?Q?aazHNmg4pi+oD7i3tQnESiHsDVvc497E7/Dan9XtO9e2jvDZ653cNqgV1vbS?=
 =?us-ascii?Q?8ixeBpSIjESgLe4ZAHhnahj9Dn8X0hySrM2MD/SYCNuQxjCEoIDSeWtV3A7Z?=
 =?us-ascii?Q?SwasVZ5WN997FIZ46dXH3Ka/FAtajlyMzraWLOZyNiKfYAVEUbksf4Y0TG/M?=
 =?us-ascii?Q?Mbhjq/1Jb8ByC3CDAiwEqKrems1OeTJ3oTlupLLaQXtiTxdrhWsj/x/r9w2G?=
 =?us-ascii?Q?7pGQbEcouNF+MRfnaXAIEPApABeCy0RnOc8O8XpHTeMp+7AHiijriogjgWIM?=
 =?us-ascii?Q?VvOV4yz6cNztJgFRI2gX+e+/PZekfLjIJP4oG9l3Ql5QI5TDFcWNtnbgmDu3?=
 =?us-ascii?Q?EuIA/C5BF1xA039qVOblVhRG0bVCkHJTUfuRowOYakgiaMciuK8Lg9qARqOd?=
 =?us-ascii?Q?tNy6xR0m63nMCo1C0+V0v2N9+AkIQj/i/cyuaL6kdUEdtpAv/invvVw9Tw1o?=
 =?us-ascii?Q?kEDn5NBRXlMQE61iyL/VONZk+tiOQQbkBkxGpU/6OxnN4BKK9iakCZtYJUYC?=
 =?us-ascii?Q?0mrlqMNHmJPaXKsFe4cVyC8mA7V/eHVyOD05eC182EFEHFsBVUpvnJp30SKz?=
 =?us-ascii?Q?dSedxgY1y1w9XuVDw4ey9E3e2wnmqo/MSPkdlhf2frSSJeZRrtf2nwDH/RRn?=
 =?us-ascii?Q?HQx2x9Ad+gUicDjCaktnyG2MEQYkZRJUdUyB88noQofVB7FFsqwwKpO/bRsZ?=
 =?us-ascii?Q?LtdxlrV4ibFpKBFogkjJ/xF0ueSIASWrnbXR7jVNyaHv32QiqPkKgUtWfyh0?=
 =?us-ascii?Q?iCXeV/doZ5T8Uixf06VAUoCEZ922H2tfddIOUUtUFQQAgggyAHQEElWsF6Ri?=
 =?us-ascii?Q?m8k529bnF7X8PcqP1N2n98PB+1ouAPf8ZipGrGy4hJzptrBPKDLmu/QuDUjI?=
 =?us-ascii?Q?L1px/lLVu21FY+d11i73/oRYs8ZMKVr1t7G3ZtlU/LCx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48a5686b-2216-49fe-37fa-08ddc3182a6b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2025 20:51:11.6729 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sn74+cUV91JUvf9KYZ8wm5RVfAAGhwCJ3CnwlrgElCfZuTNMKwfs3ay2aRrhcjy6bwoP+HNPIaBeSEw9d73uHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7474
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

On Mon, Jul 14, 2025 at 04:51:18PM -0300, Gustavo Sousa wrote:
> Quoting Gustavo Sousa (2025-07-14 12:07:50-03:00)
> >Quoting Chaitanya Kumar Borah (2025-07-14 02:53:44-03:00)
> >>WCL has 3 pipes, create power well mapping to reflect
> >
> >I believe display fuses should reflect that, right? I don't have a WCL
> >handy to check that, but I believe so.
> >
> >In that case, I believe a better solution would be to filter out the
> >power well mapping during initialization (__set_power_wells) based on
> >the availability of the associated hardware resource (display pipes in
> >this case).
> 
> Hm... Thinking again, I think even this solution wouldn't be very
> robust. If, for some reason, a pipe-specific power well would need to
> power stuff other than the pipe itself, then a simple filtering based
> only on the info about fused-off pipes could be buggy.
> 
> For some context, this patch come from the fact that we would get
> timeouts during display initialization, right? I think that comes from
> the fact that we do intel_display_power_get(display, POWER_DOMAIN_INIT)
> during initialization, which tries do get every power well that
> POWER_DOMAIN_INIT maps to, including pipe D's power well, which is not
> included in WCL.

Not registering a power well by using something like

static bool has_power_well(struct intel_display *display, const struct i915_power_well_desc *desc)
{
	if (desc->irq_pipe_mask &&
	    !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display)->pipe_mask))
		return false;

	return true;
}

in __set_power_wells() would prevent enabling the power well via any
domain.

> Ideally, we should just make sure that power domains for fused-off pipes
> are cleared in power mappings, but that doesn't really work because
> there is no real hierarchy of power domains encoded in our driver. It is
> just a flat structure that maps power domains directly to power wells.
> 
> Now, I'm not sure how involved (or worth it) would it be to convert the
> existing infrastructure to a hierarchical one... I wonder if a simpler
> solution (but that does not involve hardcoding a new mapping) is
> feasible. Perhaps we should treat POWER_DOMAIN_INIT as something
> special?
> 
> --
> Gustavo Sousa
> 
> >
> >That way, we do not need to hardcode different mappings for different
> >variations of a display arch.
> >
> >--
> >Gustavo Sousa
> >
> >>HW. Rest remains similar to Xe3 power well configuration.
> >>
> >>Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> >>---
> >> .../i915/display/intel_display_power_map.c    | 58 ++++++++++++++++++-
> >> 1 file changed, 57 insertions(+), 1 deletion(-)
> >>
> >>diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >>index 77268802b55e..23c59b587f78 100644
> >>--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >>+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >>@@ -1717,6 +1717,60 @@ static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
> >>         I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> >> };
> >> 
> >>+static const struct i915_power_well_desc wcl_power_wells_main[] = {
> >>+        {
> >>+                .instances = &I915_PW_INSTANCES(
> >>+                        I915_PW("PW_2", &xe3lpd_pwdoms_pw_2,
> >>+                                .hsw.idx = ICL_PW_CTL_IDX_PW_2,
> >>+                                .id = SKL_DISP_PW_2),
> >>+                ),
> >>+                .ops = &hsw_power_well_ops,
> >>+                .has_vga = true,
> >>+                .has_fuses = true,
> >>+        }, {
> >>+                .instances = &I915_PW_INSTANCES(
> >>+                        I915_PW("PW_A", &xelpd_pwdoms_pw_a,
> >>+                                .hsw.idx = XELPD_PW_CTL_IDX_PW_A),
> >>+                ),
> >>+                .ops = &hsw_power_well_ops,
> >>+                .irq_pipe_mask = BIT(PIPE_A),
> >>+                .has_fuses = true,
> >>+        }, {
> >>+                .instances = &I915_PW_INSTANCES(
> >>+                        I915_PW("PW_B", &xe3lpd_pwdoms_pw_b,
> >>+                                .hsw.idx = XELPD_PW_CTL_IDX_PW_B),
> >>+                ),
> >>+                .ops = &hsw_power_well_ops,
> >>+                .irq_pipe_mask = BIT(PIPE_B),
> >>+                .has_fuses = true,
> >>+        }, {
> >>+                .instances = &I915_PW_INSTANCES(
> >>+                        I915_PW("PW_C", &xe3lpd_pwdoms_pw_c,
> >>+                                .hsw.idx = XELPD_PW_CTL_IDX_PW_C),
> >>+                ),
> >>+                .ops = &hsw_power_well_ops,
> >>+                .irq_pipe_mask = BIT(PIPE_C),
> >>+                .has_fuses = true,
> >>+        }, {
> >>+                .instances = &I915_PW_INSTANCES(
> >>+                        I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
> >>+                        I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
> >>+                        I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpdp.aux_ch = AUX_CH_USBC1),
> >>+                        I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpdp.aux_ch = AUX_CH_USBC2),
> >>+                        I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpdp.aux_ch = AUX_CH_USBC3),
> >>+                        I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpdp.aux_ch = AUX_CH_USBC4),
> >>+                ),
> >>+                .ops = &xelpdp_aux_power_well_ops,
> >>+        },
> >>+};
> >>+static const struct i915_power_well_desc_list wcl_power_wells[] = {
> >>+        I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> >>+        I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> >>+        I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
> >>+        I915_PW_DESCRIPTORS(wcl_power_wells_main),
> >>+        I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> >>+};
> >>+
> >> static void init_power_well_domains(const struct i915_power_well_instance *inst,
> >>                                     struct i915_power_well *power_well)
> >> {
> >>@@ -1824,7 +1878,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
> >>                 return 0;
> >>         }
> >> 
> >>-        if (DISPLAY_VER(display) >= 30)
> >>+        if (DISPLAY_VERx100(display) == 3002)
> >>+                return set_power_wells(power_domains, wcl_power_wells);
> >>+        else if (DISPLAY_VER(display) >= 30)
> >>                 return set_power_wells(power_domains, xe3lpd_power_wells);
> >>         else if (DISPLAY_VER(display) >= 20)
> >>                 return set_power_wells(power_domains, xe2lpd_power_wells);
> >>-- 
> >>2.25.1
> >>
