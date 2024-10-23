Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 378DA9ACCDD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 16:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0DE110E7F8;
	Wed, 23 Oct 2024 14:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VbzlZOlU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D0BA10E7F8;
 Wed, 23 Oct 2024 14:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729694459; x=1761230459;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wAjxL4+4dvVuGaewRvdJJmzCIJcJn+1+74TsYT7o4BA=;
 b=VbzlZOlUCR8SRNxn2Ehz7Y60seXZr4V7Jb95QJMo4htNLIN1LvJbOOP5
 KV0peF8AWpssNpggjVkrZGHOYAx34AVgzheETEFx4Grc7JvAuQxk1/TsS
 wmRmq8Wd/cGJY10xKUsjdXNVPxYs/I7EAvKb41l8nSPY0ku0gx+bbn//w
 rSvtTiYVyP7WyZP8/MN8V6iCnbqRJ7g9re99G0KhvhYUmWpEV4Jw8R8Va
 mOqmr73mY1PhFdgdjbdbQfVu81DsXWqFwQJnoWs91DECUshqBlcMBbWiO
 jY26RcUCOFXBhSf8+Cs7EQi5l+B37/75zFQd2MPQ3Ed+PhAcifmR2UXHk g==;
X-CSE-ConnectionGUID: emNR5eoERqmINMQTcj429A==
X-CSE-MsgGUID: zAJQmABFRySbUb4pdcLxLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51827643"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51827643"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:40:59 -0700
X-CSE-ConnectionGUID: 8toCSYiSRVKLek/ye45LAA==
X-CSE-MsgGUID: axsfQBTJRo2XhYBTq0EUwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="117710588"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 07:41:00 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 07:40:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 07:40:58 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 07:40:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mvXO+pNYPrQg2jTG4qtpbaneDdNvfk3NozQQ6CT3VNKtsOyirwnil/Z0oRPrKSHYnh7WZqGkGtGj9ZA343wYYIa4hOS0+6nXOfyAPH9WAldQp/xcXCEzno+7ZpQv7kOZhG3W8QcJAP8PzPQKWSKJzhmK1sGnbFh4goEQc+jGrqPRnW8Vba52lz5/nvVmJQe15wyueQFFYfLWFBW7I75hUZHuGvwxOi0e++MzSsTLTbcoRXjW9vCHYP8QnJD+T5K0IyTcYFqLOJjQ2fbJpcAEUkJfjzOt+yEM9sCRZjCUEpll9QoYGJeu0veLGys2b+ejYgfLm1ertjmyVhDEQ2b3Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+9vavaDoTAKQSlNpNuvH1+m0oC2hJ7jg7NQHKp3g0g=;
 b=q1gpGr1WYqhYTmePZk8dXXE4AAXiAZpUCBbJX18Zr/MldfnPAd6UevZoN8fK2kbBOFtk0tqJOBsdzkfqCRnRDYpQI/Tc7VMhjyD50J/8DIgUqb72pa+qs8JAXvdh5RstWMQ+60877H9vRWQ5rvJtgnyIIASXo4mhYPS0T1RivY5pZ2EBSZtGlo9N5l1iV9GbGJXXbFC2niX92UXFDNRlZih/B1qvf35aydWJyBgAnihV8uLj+tLZocSwUfm7XcrloqngZvEv0CXgLlDP4GdpabJSDYIrDfQqs7j/RryvXpXHnJR4dl5TL65ivReMbbuSf/whJ2DcI1IRLqqUwZYB+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW4PR11MB7030.namprd11.prod.outlook.com (2603:10b6:303:22f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 23 Oct
 2024 14:40:55 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 14:40:55 +0000
Date: Wed, 23 Oct 2024 10:40:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 08/15] drm/i915/display: remove the display platform
 enum as unnecessary
Message-ID: <ZxkK8u5BW6MVl8qw@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <eeaa31b20670975479b8226d770f1559d966ef32.1729518793.git.jani.nikula@intel.com>
 <ZxfltspjmnJXNJd7@intel.com> <87r087t18w.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87r087t18w.fsf@intel.com>
X-ClientProxiedBy: MW4P223CA0008.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW4PR11MB7030:EE_
X-MS-Office365-Filtering-Correlation-Id: d64a39eb-9b54-4476-6940-08dcf370b293
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/wS4/coh7ynh+5aJecvizz39CGE9lNJ6sKldc8ky+Ab0TIn8Nc/wAx0dqO3T?=
 =?us-ascii?Q?MWD2QyUPCy5QJPBi0DYLSk6rsz5jTdIN1QYDlxkT2CVwgL+rRlGNiV+jQzj3?=
 =?us-ascii?Q?udJ3sHSVAMGVOUFtG7jzLYUAowDs29Os+Dm6yga7jehfGuN28dyZnP1RFYE7?=
 =?us-ascii?Q?CT3y5zOhgbJtrMYNUk9oTp7Esfeia65BFtWWMm0hitjW6DCihWWReAqQ8FkY?=
 =?us-ascii?Q?9WMG1KMI5TRJymEB6r5PCjOdc3wFUwjutpBeOMnbMcpfrCieCYF8Z0DiP5Cw?=
 =?us-ascii?Q?QQd26t+su3ZV6eF2R2rwT0bATrOIt+EkjQ9sFCXOh4dV5JizvYrdH3kWyAkz?=
 =?us-ascii?Q?KqJLbJEB+UvoFUKmdQ/yvyKGha53MxlDlnE819ACuj7R/HAt4FQxEzomXQC7?=
 =?us-ascii?Q?ZOxT+yACxyJssKqpX1Nk+x5Q3/9MvQlIjf6qeGtc2FYTaNFrLLz02lxai9+g?=
 =?us-ascii?Q?YnO23aSMgTba/hlgJIUy6FhIA0U5X+69TwIG57Q+4oOR9eEeciLcrALzILlw?=
 =?us-ascii?Q?6/BssvLL5t1rl9TLeQnD+4+LMoe+SmMoe9Hv1Uzu30FjtNwGrYSKm8mUK4h0?=
 =?us-ascii?Q?sR9nv4KNwCcS1lC31JOQNMj6gbDuzaWS/WjJXHth6Ym7HfgUQqYp8AbDbRT5?=
 =?us-ascii?Q?KzzgsdOhTNtd5W4Buas8MrV2wLjNAS0qd2XD5kwC7yRlicbXStxAaCnjW/S1?=
 =?us-ascii?Q?nccIci2P/0ofb5mxKCbtd80ZzDJ7V+AKBVsAH1sDLt8u6IG48Cv34KvaR+8q?=
 =?us-ascii?Q?XB603IFB6PBwaNbjH+9hDjVeajT4DNFxvDC9Qi1uMWUDlPL2jdY9l1OBabPN?=
 =?us-ascii?Q?/XCv3/ReciWryrFLCJur5+wErYJwMMr9Dlk+XTWkbzYPp2jSwABYsDSJrNJl?=
 =?us-ascii?Q?OPtoM6V463KOugSQ/07CGNL3tBAPpZD5rHIHtQXLQ03iy2owG/QQvw9yPVDy?=
 =?us-ascii?Q?RdnT+3+93PQx0y3XZ2/RJlj1hV4sOuhkY6mWbmp25o7VAl43XZTD5gbkO7VR?=
 =?us-ascii?Q?ddukl9iaUE8H1Z1B0nvNNJ+R08rq1ffPgYdviPWzqOPKMmQKWPnyW3hUv1lH?=
 =?us-ascii?Q?wj/N7HG774vBFClHwFd6C7BSH6t+B5VWTb9MTC2BoX9Rk1kTNgR1ebDvV/mS?=
 =?us-ascii?Q?jzdonCEIstBtWaA8WiaKsr05h7vXsdIxCE7sFihrZyuulFyHdLJpBxXBKgxj?=
 =?us-ascii?Q?AETBIp/D5rzyaa+9uP6bUxfsMV5lMac2hK9tS8BUZdKPyEyWgs829D2xnBHm?=
 =?us-ascii?Q?hETQ7ptHYEWaKETu+F3DeUS+Hzp0V08SIx42VdBbBbXy7PKdVxh+6J8884d5?=
 =?us-ascii?Q?gVw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3gfIoM6aQ+eyvKuHuFoeCXXtzZ5n6ZWOw+d8YmuDhZ0rQ2hhwTFD0EQL3wOl?=
 =?us-ascii?Q?uWMRbm4Cd8yejQHnvlVoUDItSjuU9gCd7DwjqF9UMTvGCf9fGL1XoTzxHfa5?=
 =?us-ascii?Q?TdZKBMdsmOXN+JRpJB1QfwmgFBFrFw1MiBWdN0jsEfq5C7G6OExAYzFXbuYt?=
 =?us-ascii?Q?yJGUx7rAEspoNIHOmsXZ/AcrZvpYEeT1ZXHJfjogNbGsGPOHNnsLy/WPw7Zr?=
 =?us-ascii?Q?PsYVpZa36B4IOKAe7bp3hsmke59XLM3bGZO2DfHzgG/B/N28uKM1Wne3CR2x?=
 =?us-ascii?Q?7LZbbmq172SdlDot9lfLHB/KPOl6OCp/oDsM1dZ5nW+V/GaI5W+QvNMtKi76?=
 =?us-ascii?Q?IE2RzjRGOzGb/w5wNKO478+fBG29TCcRa/9SFCEmySFKnkedaV/hmDncaw6L?=
 =?us-ascii?Q?xSmSXB6rnxNS3FTWZzUgufnsDnTzw2NAMfwB+61ZxcD4bKcSTObV/tn0VTOB?=
 =?us-ascii?Q?kRXRG0z9R/bG+zkZhCj5slbnBv4imy73SW4DE/YgLDnciqP7lwTwGcgFBLiO?=
 =?us-ascii?Q?tbAqFjrwkkExUjKWduXjJuT/dVGxlLXls/MkpZCUAe4LV6AKlCIxAr9C1us2?=
 =?us-ascii?Q?0TfczwCGcYWHrQn39fs5FCLs0115rkZqCz0QN0NBMreN+kyrT/ymH+0SiSjN?=
 =?us-ascii?Q?dxH5agMj+aSZQUKSto08vqg+QMJ25zrkHgqSd4AistqpLL4Gx2sNXYXq+5md?=
 =?us-ascii?Q?a7NQhTmy6o9ao7vCtr/O5xWa7bNMgW17WN1t2JFORN6pzVHkagBD6eAKaJ/F?=
 =?us-ascii?Q?A52h0DPEYWgAYuZ8KCEvXJx4Nls6yvQD7kYIDO/WgjNUh1n2ssSk4IO4IPML?=
 =?us-ascii?Q?ViUS36K5aYjaYokElb4JAUjYUDL7EGoR3lW++NUl2Nv752iPBPl6UtqWLJfS?=
 =?us-ascii?Q?rdgpBWliFb01esPC9GHKQhC9EF3m8zbl1X3A4bVFilpg9+CNCOPMtbHedRU2?=
 =?us-ascii?Q?0I2oHjhsdu36oynp13Do1HV0+kSkGUNr9ZQsXM4tUjXoeAcpXuWROgc8SL0H?=
 =?us-ascii?Q?bICMnxncF7YuBe2t5MH+fZl27XLrpH59jKo0SQVuotZVaDFpy49gu1EVE2G6?=
 =?us-ascii?Q?hrAgf3hELxj8aowGC600VnHGAOEmooa4GP78ffdJ/8R4eNc/RdmEvg8EdI0h?=
 =?us-ascii?Q?5nI3buo8qCxfZTGL56XCsjJduq8eLVz/soKJ4FqaSKgv/pmNbFkHfuG3McLp?=
 =?us-ascii?Q?5TvxISckFrTmD3eEWMj5hym9OWudaWfEvbBslEso2ZzJOVJh1iUrblYI0pZT?=
 =?us-ascii?Q?9OW2fOLPkIG531yqy5mTTS2wfeqA5Ms62vP+VO1vqsDSx4zsUOpLrrHcFcNn?=
 =?us-ascii?Q?gMoRPNyTbIFgXpL1b8iTSBEPAGgiJGhRL6pHvzlT94EbF0J2LPbPJN+uHkzl?=
 =?us-ascii?Q?o62pgFsin7pJVIjdB4BNWTGPDB7qDT0heiTJO9E2o0gJ2ZJiPyeS3yhrdHwm?=
 =?us-ascii?Q?RslHfIjstG/afMVmGRPWnFUfZ4WKhrTBOJfxqVo6vRgKU9h9WRx180zIY53V?=
 =?us-ascii?Q?hNFNfqA3V1lNuVY9IpZeAUoBm60YHz4tuNr8seinlL6Qg1EqGvSNy1h6B/Wg?=
 =?us-ascii?Q?9wZb6Lah4rqZfc7xh6Ukg+vDTwgd8834owIR7UKLnhMzFaKEXQAtvCJBVsQj?=
 =?us-ascii?Q?lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d64a39eb-9b54-4476-6940-08dcf370b293
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 14:40:55.1536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZH9RkhV1KXH/YVfNHg/ROUqb9Jvv07VeFdXvv4MujNU97/wCxPYjfjMrZcAag7lYaK4u2FYu0M1N9tE/1ZQwfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7030
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

On Wed, Oct 23, 2024 at 04:09:03PM +0300, Jani Nikula wrote:
> On Tue, 22 Oct 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Mon, Oct 21, 2024 at 04:54:09PM +0300, Jani Nikula wrote:
> >> @@ -1466,7 +1462,7 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
> >>  	const struct subplatform_desc *sp;
> >>  	const u16 *id;
> >>  
> >> -	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
> >> +	for (sp = desc->subplatforms; sp && sp->pciidlist; sp++)
> >
> > I honestly got confused on this... should it be a separate patch?
> 
> Well, I'm removing ->subplatform so obviously I have to check for the
> end condition using something else. I can make it a separate patch if
> you want.

oh, okay... I was in doubt if pciidlist was the right check to ensure
same condition. But taking a deeper look on it here again it indeed sounds
the case.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
