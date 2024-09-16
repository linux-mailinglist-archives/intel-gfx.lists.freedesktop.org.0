Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1334597A567
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 17:37:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC96810E037;
	Mon, 16 Sep 2024 15:37:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZMvuuuZq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB01D10E037
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 15:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726501041; x=1758037041;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WDbQewGDvQvG2HevLnk+XIDgeL3SsVqKT5y/JtQZXpE=;
 b=ZMvuuuZq+izY547jsU3W4ySQAY7/iQJAiVVfWO24rMiIfz5N+YS+dZSs
 5RS1k0eGmW6NWYD4kAWHW/FIvTBBJVGudSkNEv8zIFzPGrF/Q6YNn4icP
 LZe2W7DZDdiOKLV3tEQondSXpjFvCJ3OzgQL9xEmhTyCyw5sVDNhj0KH7
 +2H6OgeetaDZ6WSG3E7UncNhLGDLF3O6tYz4i23QlNCg6dGvNJ39bFx3u
 V2ItdviQcgxUyu/VGivgPVP0q6mc7hpqnX+kMYZiAAzMs9lzWeyNMlG84
 8zdzZhI4m0dOAF/JbFoK7xc9bZTJiynEK+RWwUUEImKCYsPuLlTlb7AOv A==;
X-CSE-ConnectionGUID: hghMDmWxSgmRGWtu9HJ44w==
X-CSE-MsgGUID: XUGh/IhjRYK5pmNvRS1KcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="35912801"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="35912801"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 08:37:21 -0700
X-CSE-ConnectionGUID: Z2zMwELmThKfJUriPhi83g==
X-CSE-MsgGUID: 8q4M9OWUTXqFHXrOAmZn6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="99766868"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Sep 2024 08:37:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 08:37:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 16 Sep 2024 08:37:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 16 Sep 2024 08:37:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GtW9pewcoblJOUW3P3lMOH5jLurshxsfe6Wp1EF/yzZDZF/ZJBkArMo/IeqrsklIxn8ig8kZTxR62HeXd8cG633g357OH5J/jCG0rYD80Bq2nqnmkzpHsOo34aUNaod8lGtFHmQCpoz3OVXtPZ1sIBIwQSgYpyZYBeQywOMlQeDFA9n+S9Bww5mu9lBSKa+eR6Vs0cevvRfXBKLkP5EZwfQoqyvsY/gaDsKTiTljlu19ENzju6kwcjOhEkJ8L9zGazKItS1rfX7KuRX4Z0nVnm+uGO5a6vzsa7Kqe6T5mrCUXClcgFyoNshKj7VVBb7p4/N/ftz912TB76ICuXM5qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z49bwJ0Ev8dxhuRB+6MyQGSSgxUdfey+Glgj+2+bmcI=;
 b=RQ90VWqJJHSKjHtT8qs3pRSWs0irGsmj7CSlbiXDzr58MB1jEnPi5FD0nMHtPT62O4uIZr/Rx/dxN2y4/4YhAB2hMhXtH4t1I7w4tptgzlprrUqGDH1TmhKNKYTXn5kTWNg7/F3BEQWM1795FFGZo1kqD+s5Yz06Nyt38vLtMDp0CfEn5ubqBn+Q1i4KrSGFdFDys4oDBWw5fQnVRGgIOkHb44p89eytE94zO1IoEaM8vFaZ31b+3MFvfQX3KuGwAIXeteBjqMAkvKfUaq2RM/cnO0U0NxRlv3+sMXrwfLuaqWOq7wTYX674mleZN+cjDY6cZ1P2ezNDeAdm8G8p4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM6PR11MB4754.namprd11.prod.outlook.com (2603:10b6:5:2ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Mon, 16 Sep
 2024 15:37:17 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Mon, 16 Sep 2024
 15:37:17 +0000
Date: Mon, 16 Sep 2024 11:37:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915/irq: Rename suspend/resume funcitons
Message-ID: <ZuhQqXMrTgG9xXhA@intel.com>
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
 <20240912172539.418957-3-rodrigo.vivi@intel.com>
 <rrd65omm4ldoimnilv4kcsyvjxc6rtgeiybjnh4mfl2b3lkt63@3wb3s5qpwm6k>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <rrd65omm4ldoimnilv4kcsyvjxc6rtgeiybjnh4mfl2b3lkt63@3wb3s5qpwm6k>
X-ClientProxiedBy: MW4PR04CA0192.namprd04.prod.outlook.com
 (2603:10b6:303:86::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM6PR11MB4754:EE_
X-MS-Office365-Filtering-Correlation-Id: d556ebf2-084b-492e-12bd-08dcd6657193
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UH+kDZkyOlLXY8/q3mo+2WmKUhpuczskJK9vaurxvrVcqSMSgLWrTdNlRY0f?=
 =?us-ascii?Q?f03j6FDloahYFnSL8+vWLbQYqQz+6srrXR75L4/i/VJ6qpGx95M+p0n9GLUq?=
 =?us-ascii?Q?z1R2ZUMLZUjf/JeC3Qo61q/wRg3wXzOkbl98oMJgixo8jT2uA7UOu2toxMs6?=
 =?us-ascii?Q?8UBpFra27pBPYBMGzbY/gno+LuADKnIAJbraq4bX+HuAmyduKE0L6qsl7OYy?=
 =?us-ascii?Q?yH4qOE++/1Y03d2PNJ08sxwzSknqRLzcJ4bdqwVzfEUknih6cQM1UB+SQbc0?=
 =?us-ascii?Q?LDdonG8Rrqoi+5qCm2UeC2UMN+cNlMIJkdlrU8gCCLv+jOpritMyWvTxww5b?=
 =?us-ascii?Q?D+EN5VrqgDivVWQzlf8x3X+DxYRZO542T0CbBiNG56YiHt/ooeUKUeL9yENM?=
 =?us-ascii?Q?kH5UYXhPW1N3ot1XMxLdsW9FPTCGVFBqkWvv+aw4ESCDqrouOjpE5+0Yw3rY?=
 =?us-ascii?Q?nbmbuSY3QN6q3LhDBiC3STbmmcSWSCGt1XvHaf9cZorTBQN/YEtSZPjvC7mB?=
 =?us-ascii?Q?9funBJ4POT84IzG2RWcRJdGONUv/Ez0tqptRsRWCji6lGVa3B9u8+/kpuMU4?=
 =?us-ascii?Q?Taqy99hltoNnJxzOIf8z9KcghdXt5kpMBK3lSiuYSKjldGR0y8TMZOn/qqBJ?=
 =?us-ascii?Q?83q+eNapcMT609xvAx6jmpsVoKEctoSkUtcRPGfMVZg49pLT8h7XJdLS0tLH?=
 =?us-ascii?Q?pmQ5CvOtutNjGCNjbuchknmkMY8G7O7l9weDgCdQwnKD1fIJ/j/XvVp1UtQF?=
 =?us-ascii?Q?r54BHkpWAQwjKLZFMFP/bOON/crfuF/lQrXYSvuHLMpqPFlMRLi5fn1IE8N9?=
 =?us-ascii?Q?xYJSl3ODpW8C18ZE7prIVYEi5Krx/o7jvlWkXJ4k4eDwfjgfHlJUzkznx0Ec?=
 =?us-ascii?Q?hFuuEvHgfzu/L0fKJKHV9yYMAEv4VImukSdyou7PPcexHVEoEtVWqArZPryu?=
 =?us-ascii?Q?Of0Et7i80A3ohfbrZ7pcLvlStOMgW13wfqmLfTOJsbz8dn2+uBsy0rBmuIfU?=
 =?us-ascii?Q?zdHTIi7TGgfXe1imtxIHOJe6OElmhpIzh9zWe9Q9W5YOuy2DaMEUmkTNO86M?=
 =?us-ascii?Q?c9dISxfA6NIUsI1/c4w/8jybjyLC8miVVT2SlHFnr+tr6Jzaeln7aTARqn5f?=
 =?us-ascii?Q?s4B3iCN5f7RZ3Tj8mwfxw3aytXxiTe25Ij2EbIDp+5xdIRDZAYNDykia2PS8?=
 =?us-ascii?Q?TmiNyUizi8SCK8OJEKjNAnMBTbEOmHbcpND0RFCly2F9iDtzvMOJBv+VOLqQ?=
 =?us-ascii?Q?/bGTjvs4Gs7JX+8e5Pz2s1M6FS38S+6A5o/GWNCQi+l9uhMRQf0R3Wiu5Aa5?=
 =?us-ascii?Q?+BCqpIXdEYjXvxCt34pfsAP+AAjyxBJDq0akSqyiQZ2mfQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cEzgWWyVSJlne0g/333C4N1PVH3d64Eiswb6lKohzzuAk8Yf9HClW4KcjrXE?=
 =?us-ascii?Q?X9V7oS9DpkZvG4aWwRLs63cBDWkqOxxguYTKkKgQCV3GBJTB97Ml9/ELIPiX?=
 =?us-ascii?Q?I73S4jYJzzr6U0LkGDG43tv7tRqi7aH27vQGbtBu8ESdi+GOgu7VtjWkTGw3?=
 =?us-ascii?Q?irZM8Uzq+IGCeTdrAU1uNnxAsy2DaXP+Qf82eVUmCiXEqWfxUxTg4rWDrHQU?=
 =?us-ascii?Q?IlH/N9mf1T6Fw0t7HVOUK7mbrxM0UY+JAYhiCtJcNqNCKlA2XOv37zfocoKM?=
 =?us-ascii?Q?x7NRBFA6ConoBHarP+qaXGsRWQs9Sr+DAHwjg5iojKzQVbINgkl8PKatCCFT?=
 =?us-ascii?Q?WZEDtKTEvfaJymLmm+jxKdnWl4nR2Fvu8AmXSnEywWEhCAY7Lnm8hErT/nBv?=
 =?us-ascii?Q?9IjvVpq2GP/d7PBwnWxDpE1TeNKOqJJG6/u0eg9X7202UacqLvVAHu5RMb5/?=
 =?us-ascii?Q?VYl/16jAEAsrwXdkjNMOju5UNpjxpYKVBWwNL2WPddo6xPgXkzEKONuv6qVG?=
 =?us-ascii?Q?7qhqiu8/FfiaRFC7sM+MHHZTMCuBnfH5+BhqTzehiu6y2gS9QaIJfAMgcFpS?=
 =?us-ascii?Q?3MuIgjJTrumRBGar/vG0X/taMZn8RmmQ+LTQDwJ1SVZ9p+0HgII+HMU8lWLv?=
 =?us-ascii?Q?cEtxdHXOGX6l1idAx5frocAF9xT8gd2yBNLXOeNEhW1/8QN8xO49d2dGT5oI?=
 =?us-ascii?Q?VtNtjnPPdCzUeLHQ7wcg96FVEAMNnRfhVeSAryZT1TgKFEoJ1xxeE7sTHyNp?=
 =?us-ascii?Q?X9kahOHHJZK3thdmHriw1WlKAy7g21G4Ag2Wj41XfSQSWnrV5cjC0Bla6r90?=
 =?us-ascii?Q?7sCQ/AbsA7SNWLdxWfrvm4OGnwjTunqlKu10npBTb901uwRIUJiCtU0xxtzT?=
 =?us-ascii?Q?2T8+tCCQspskC2k+e3UFhO4hHMiZh1QQqJSP2VsGSpRaqBaGEbntQ0fdibvs?=
 =?us-ascii?Q?Qozd7sJNsTr02shxuqOopmHgtWofOXi0wBoOYf7tdM0QZpjBEuMHipZjuBaZ?=
 =?us-ascii?Q?PJZySaolphutmbNfQ4fEevwdzWo9ShLYvF3FbAuJYNZ3QH0KNXAhyXfEs6gG?=
 =?us-ascii?Q?NphKcUiBgy1yq4Ca49x74feoZ2u9b49F1cpKd74UGEflDwJj0ujIFaETaGdC?=
 =?us-ascii?Q?zbPJu1vfZ27VsKG4v6e9W0hRrXP0cKc6iXVAxR2/a+douMWLS3YXlDRyEgSR?=
 =?us-ascii?Q?tslVS8nxtHHdGgrZTiJvrJxDWqkT2U9wgOqn7c/pMsT5QBpLHEf6esSXYAjb?=
 =?us-ascii?Q?gQdDzMVkJbHdDqEDmODAz6G7AP/bWQRJ1jYePkbu0KX3ngj9l2O//Th1vqXy?=
 =?us-ascii?Q?5UD5ywY7jlsJX+E8ebcypYFpwzIlVQA9Lmaahr0PJHr7NNJ0b5vQWB9OKU2W?=
 =?us-ascii?Q?mb/YnWz4d9/7qMubScIvoIkc2ep0Te/NawqcQESwiucIapq+qlErZ6SoaEkx?=
 =?us-ascii?Q?BIOmSavJ6hd48vr3mZFicCxsbE4z6RoAwnznGL/Kqk/J27ZcYZ/cdqccG3LB?=
 =?us-ascii?Q?XCZwILzAN8kL8QPkZANjF93r2Xu8gVDA4BuwS57pyKoua9LT7+OvplpkrEAk?=
 =?us-ascii?Q?7Oz8drXF+XDJ0YfGg/5wa65yyWHzY/qRzh/j44Ix5thf1qWP2BiqlKOu6YOK?=
 =?us-ascii?Q?CQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d556ebf2-084b-492e-12bd-08dcd6657193
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 15:37:16.9659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aphxM6FffjyF4a1vKyCF+E3IurmPN0eGiRHSD1Jhn0QDvyjhOW9xOld6xmmxifp1AkyFM98vgzTW4i44flS+QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4754
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

On Fri, Sep 13, 2024 at 11:07:33AM +0200, Andi Shyti wrote:
> Hi Rodrigo,
> 
> On Thu, Sep 12, 2024 at 01:25:39PM GMT, Rodrigo Vivi wrote:
> > Although these functions are used in runtime_pm, they are not
> > exclusively used there, so remove the misleading prefix.
> > 
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> A general note, please add a cover letter even if the series
> looks trivial. It's important to have an overview of what the
> series does.

You are absolutely right. I'm sorry!

On a 1 or 2 patch series I don't like seeing cover letters, but
on a 3+ patches, specially on the first submission I believe it
is important.

And it helps maintainers to writing the pull-request notes later.

Thanks for the review and for the note,
Rodrigo.

> 
> Thanks,
> Andi
