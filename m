Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDeBETqPeml+7wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:35:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE336A9A1F
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:35:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5923510E776;
	Wed, 28 Jan 2026 22:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BaPS/Yh8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6566810E776;
 Wed, 28 Jan 2026 22:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769639735; x=1801175735;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=4SqCPqNKVtot6/HBI8D5O6sZIbAM41vo7y4Rnh1UUT0=;
 b=BaPS/Yh8F/9K45uxX9kkCcQI3lcjHycu30m+dBBKUQmo+6yqjvFbCDZK
 oeykzCTD9xfA2z3isrqkHEdHG9ra0OIxFOrELhSqo/AvxP6ET6f56sn8e
 +DNj3iGX0m/9/6tO/TMVT18HY+8AhY35ZqLhTV9cFCms15ybTFV3jWMSq
 +Z+QZhGjXBy8AoBXItYZLE/x8HY7VP63g9043Kj/BIoc5zwTEq+cYiOna
 vkoF245OPjKZzxDY/vSKsbIv9qBpm2opzkUqWgtBvrV9GTL7/MfO8dsMP
 vBjLlp6QmS7InDv+Cxe0x/DwnDlp4G/ol8XjZP94092P8LvL9d+PnvW+4 w==;
X-CSE-ConnectionGUID: o5vS8fm7Ty+qfpcpNnl6rw==
X-CSE-MsgGUID: r61a30oZRdmTufSs3NQuAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81594659"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="81594659"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:35:35 -0800
X-CSE-ConnectionGUID: wERo3D1WShWkYkS7KR9Xgw==
X-CSE-MsgGUID: ozcJRMY2R4+/NPwlV1Mi1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208629985"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:35:34 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:35:33 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 14:35:33 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:35:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yG5y0F6Ps9w1SxyBmnD2o+QgReE85Ss7ZWLoQcz8P+DYLvDWdvaDpaoQsOBMHbMEncNYM1UGQmfgzA0wvzCCCmVCiph4SlP0r37VgHK7UIGkiZAkIkyE+g8YDit4zo5yx1f9tVT8BWk05f4Zay7GCSuHBbMxJGLtT66CfUUQRXyZfrdwYa/3MVUuNc4KZlNSY52DkZQbw46ro86asdKtN/6ZroAR5g2vt+9DGEfOKIywr8RTqu4junR/QvZI/5rKvckeaaSbq6aa8Wd0oEANdhoIey9Lcido/tKT++8HViCZ8FFZd0zBVILooJI7D1M4Rh53em1wiGpNjmlPGLtFKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bL0fFV+8ARq1SYjWNrtaciXrTUzsYBd3KQJomo9kb2Q=;
 b=NglextiBrOsGynOrTvsKLw2E1e5axjLFIiX/6rfjN+tzVVlh5Z42gMu+gqR2/2MGnkXWRr4f+3KxS1viziOIqeZERIbwO8faNODrnTHVcsKbWZ2nX4AjwyLPEUaDAVjWXepNWq1y+IF8mXQwh8+0nA2LpLn0bjwv2tijquvAJF6BG/QjJVrFquvzvxg6NlC2laxTIO7fTj8//Cld5Vb9e/qm9tK8kiZWMJKRG79adJVlf62JV63sldTz2HuEHaCgr06gM/ziTE/PmBfrQ/mzLViydkWgOC6/XurhdeaBdhe+yAhPevg9JgOabbj5hpNkEg/w9Krj7x9kb7V2CWv4MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 by MW4PR11MB7053.namprd11.prod.outlook.com (2603:10b6:303:221::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Wed, 28 Jan
 2026 22:35:31 +0000
Received: from CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e]) by CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e%7]) with mapi id 15.20.9564.006; Wed, 28 Jan 2026
 22:35:31 +0000
Date: Thu, 29 Jan 2026 00:35:27 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 13/16] drm/i915/dp: Account for DSC slice overhead
Message-ID: <aXqPLyiXrzRTKUw6@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-14-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-14-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0070.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:270::8) To CO1PR11MB4834.namprd11.prod.outlook.com
 (2603:10b6:303:90::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4834:EE_|MW4PR11MB7053:EE_
X-MS-Office365-Filtering-Correlation-Id: c79ab600-9ffc-4fd5-955f-08de5ebd8b80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5DvCtPvL1cZ7ytQsX5yEx2NhxdwOatVBBctKc53qDxhS+HQ7EtXtvI7rjE7c?=
 =?us-ascii?Q?/zZUfi7YJH8LY5++i6AqFOzXDC6pXh4+HuIs0xpOz+T85OLDssDV58ejq/5j?=
 =?us-ascii?Q?pmUjE5Ctecn2YKhjCZjoUJeDD2a2ZZSyq0ThWWmaixaBJs5eyQ3xfzdFcEkz?=
 =?us-ascii?Q?jEqIpVeMeDqodj6Qb100IgO6vrvlucmDcNYcGHGtsx8MnsPAGOnCBoAXDVNk?=
 =?us-ascii?Q?w7zEKIJOCF8tzh3ul1/mVeE8o3YiL2XjX8zJ99DVb8aUjTdT0Cq9qqnpORP6?=
 =?us-ascii?Q?zHZr4Wawe+TYfjrt5NAWrNhdFu6DPY+vuR4BRXXDSkzTWk20ttqwWJmZWVO5?=
 =?us-ascii?Q?vA4UdVuij4o0SnwWywycnByyLbFWa2tlfcST3OVZJD1Zf0cv29VdfA70n0hW?=
 =?us-ascii?Q?IYtEOMq3ytbEIEtjhyVEW0GHAyTuZk5lYLx80GId/+/pCUht7bLe3pHwzn9E?=
 =?us-ascii?Q?x1M6rd9yKtPKCZZIJ2aJyGk/+Pyzz9JYXgmofTzdxmVp+rsMMDYDawr6dVrU?=
 =?us-ascii?Q?93rVyDT/fowApxDtdrOSFsPNzliNaEAk7xp0Mh7Dd7+zqJJmokWGMQfOxj+N?=
 =?us-ascii?Q?mG9I25IVKn7ljPOQx/tb/61aF/b42sXtjkts46RzpWcQ68QJ7hwxV8yRwkCN?=
 =?us-ascii?Q?8VKkIOUpgVi67Hh7DAWfG9JsXjDqYXkmKi82NVCKJdUC9oIBA7hLjoCeB/20?=
 =?us-ascii?Q?pDsR9qWKvWaxEJ1sgG8wI8oATi6cSlF6izNRhmo5sdS+Dx7GdbCnxYElv++H?=
 =?us-ascii?Q?upSFGP4BlLYHGm7b/YSC1lAbb21Yln/wF3jwO6w/e2UrsGpL/Fr4kcWtp2XC?=
 =?us-ascii?Q?oK95r1ZR4iH+NbaNLGUShZRt9G3t3yAL/IAGAaMB7F8yEavYIgdNSNUtAb6O?=
 =?us-ascii?Q?alpileVH4f8+TIBthaKXFJKNSOgM14JJFa2x+5782H5G2dw+a1GqQQZ11o/P?=
 =?us-ascii?Q?og9DRr9XI9P6YWtCnBdtGRZmk7Ui4yBlnuuAq0Kbg0nxyOKw0Fk9KEDAVCoN?=
 =?us-ascii?Q?bi8UCqfFx6dmAKhWPPyF7ucWWhvlTDVuf0HZFEYnejJEEcyrqf+IaO3oxPe+?=
 =?us-ascii?Q?s1c5r/DnQBeDKSd4ny5RzaEkImosW8fgBX4+4hgCZeNn7EzF24rJdQhaWo0f?=
 =?us-ascii?Q?qI4ixe6q4H9vqodnrTogm7VdyCuOhp/98Tp3F39mh1sw4J6ele0Ev3IGD9+9?=
 =?us-ascii?Q?rMRJUn3UagrT2/AMSKmLsegrQ/y1r17G8C0l3NiRccrug3mMDZPEl4LTpevM?=
 =?us-ascii?Q?6KQXiqoheqreOVQd65eJNAB037Eg3z4wE5ouRNIcQ9YbvURSVnYaisaIxrT0?=
 =?us-ascii?Q?j8iK95MwhbTco3hFA3mEMY9wvQFajys8yj3CGMhf70iqj2IV6h/72ldDOS3D?=
 =?us-ascii?Q?HDdql0nFsIdWmX/OqrNcG03VDv968KIMHPKj4+XtJPangtN785UXMzfyT0yv?=
 =?us-ascii?Q?2KS4A2RWkr46gdxkAgPoeYNrvGZ1+8IkLYkFuaNytgHm6rnWhbeEjFgjx9Ia?=
 =?us-ascii?Q?pFnZgFaNl4uojO7JJHKiUL3R4loWdLWqnU9nnOKeD+fAY5jmqXY5Nne5Cg?=
 =?us-ascii?Q?=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4834.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rsqxl43Bs6q0IL3+Q66IG+gjXIAVCGllildrmI9pS/DdWY8dMWneZKYOc4Al?=
 =?us-ascii?Q?Dtz82IU8eAfqcE8fuQJO//zrMS0d65crS5OeKp6NZcLayCCFngD0SVDuIg1J?=
 =?us-ascii?Q?RmdQjPdavoouJ9u3xfc2aa53Sk32vTxFZisb27El44lcO55jyVZiAFZOgo5q?=
 =?us-ascii?Q?puImcUmyTqkJkMc1q3q4584UeSXJ2bnSUmig0NCFvxV7bdml8E5kVUUozqEW?=
 =?us-ascii?Q?ZIdoZRxtO92ykFDBsrVDk1qQoAkJ2qSEOfJ6JZfAazJli+UZiRDghU6/qT+4?=
 =?us-ascii?Q?K/EdWQS+x3VyFB9hcTxVxJyzHEYOJGupQgfjq+Dx9J11Zr0mE2rFoGNepVh0?=
 =?us-ascii?Q?msOGpcanasDBGz1I5ghapPNwuI+wLyO5TkP+b6jdu5f1Nmr5EUXCLzmdyshN?=
 =?us-ascii?Q?gT7ypDDJ0tzKCCMs3J/x8rAMQe9eNvakglCmuitC0I3Efa9zNRG3DjPjlBwu?=
 =?us-ascii?Q?qJ/L/HdAC0+d1Ce3enl/HK3bcagqTfrcvM924aa/Cy/UHPlybnDQrJ5tZJG7?=
 =?us-ascii?Q?IHGLR2NqzO62YWmpLlOtjvvnBcvsN/z4+eAEVithq/uesvLPUcRT8gFyo60y?=
 =?us-ascii?Q?C9EMiIKwY9ZSHtWoi7NJGqWSI1cMpvqQxETf1V0+IbE89S1dHyn+SOTJPG5U?=
 =?us-ascii?Q?NAz05fvo80RRUz+bzYgQV3vWYiQIlZ5ZeSJd9U9tbxWNHJha6yHp38esAQrh?=
 =?us-ascii?Q?gjXxBpu3skMgPrFRPVxHwGq7GGv1h6NveGVL2pM0LS4+WSIlVDATyfLBZb5c?=
 =?us-ascii?Q?bvyHnWbPCVmSnAWN5AYwSFUM6WUn3j8aLl/x3PjksYdITPEHxV/ltNP95wFn?=
 =?us-ascii?Q?NuVGWXgFoSZQHKhreVlEJNGtsR2qRAuvl2eAtBhk4SiwUaoSdN5AbAN6eUrj?=
 =?us-ascii?Q?7U7OaD9WdumZkiFPIqVDnvKKpu76+VLTEWsGNrOhYS5v967/+8iSdogTVRL0?=
 =?us-ascii?Q?/FHVa5fu9RHAB2T3VnvNlcGSciZtRPek+FGjm+m3pS9gO12q2Y30VC2Pirqv?=
 =?us-ascii?Q?N74EBAzAd3YQuv+3Jqv6C4bEVNGoqwvUnr4uRkKP2J8NHZ0htZAaF6vvrdmR?=
 =?us-ascii?Q?xXF7Yhr4ZsgcNAehz9x/XDun4aVMP+lninmfylfda41tnsq12aTTk30OJ329?=
 =?us-ascii?Q?xrs9ffmLc8WlRCQIbCewgKm6AI5hB/4xpp8Q+zRr2w5ez/kE4t6KHyJiFI70?=
 =?us-ascii?Q?he5LTrQ4tPfJ+0fsB10SH/v2S9akC5v9CZFl5tw3t5QQXnKlJ/LBoOyGabfi?=
 =?us-ascii?Q?O9nHgU7R+bE7pHOG0wnns07TxFeFJzogBMjz8cXRzENDpRSv6cLNk1RHc1rc?=
 =?us-ascii?Q?v3SLJlxGxwmgZgE1sjtGaqJHzCdtI9UXk0ss59tdZ0MnnadgCSMzoetkXYfp?=
 =?us-ascii?Q?hXwhMUSe9a7QA0YJrd3R9OJedFNiuifWWW/mOFRmv9KLX84PnSz3Gm7H27Wr?=
 =?us-ascii?Q?tBjfkZn4qHgpC4vcpmVuN3EvL4OLwUtjg9xN6oh+baQBg1zSgGnL04u8s9NX?=
 =?us-ascii?Q?B6ZD5hOwDZbpn1UADwMFWlS6aYgtMhk1dN+2ZlV7oPbul5ei7TuBGsaGQ5Gm?=
 =?us-ascii?Q?oOkenmzb3qjzkJE2lhHEcbvyqO/AmbdO8dRRZAkxo0bJaU/kVEn1EnU1Ixyq?=
 =?us-ascii?Q?Tb4gLqDierSuZGFE/0KdY59jUq3rsqGsk36zNVaVklSg0+3K4jwa5u8G1Oxu?=
 =?us-ascii?Q?YO5XK4X6wBTdzzeFyP0S4mmzDHeJx/Ehq2uN3pVgSuJnDUET5TfDwA3pOBDE?=
 =?us-ascii?Q?p8fCaA129w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c79ab600-9ffc-4fd5-955f-08de5ebd8b80
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4834.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 22:35:31.7049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 34/P85/KJwuXRUEvt0cRrL6+WOHZmfV03Z6wM9nJ5+/j36rFx1XpUZUwbLFXbS7LNdmKMaEg2KtkytcDHBdz9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7053
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CE336A9A1F
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:33PM +0530, Ankit Nautiyal wrote:
> Account for DSC slice overhead bubbles and adjust the pixel rate while
> checking the pixel rate against the max dotclock limits.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 19 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_vdsc.c   |  1 -
>  drivers/gpu/drm/i915/display/intel_vdsc.h   |  3 +++
>  5 files changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0acb3b64cf27..c1ff92367808 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1451,6 +1451,8 @@ bool intel_dp_can_join(struct intel_display *display,
>  
>  bool intel_dp_dotclk_valid(struct intel_display *display,
>  			   int target_clock,
> +			   int htotal,
> +			   int dsc_slice_count,
>  			   int num_joined_pipes)
>  {
>  	int max_dotclk = display->cdclk.max_dotclk_freq;
> @@ -1458,6 +1460,12 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>  
>  	effective_dotclk_limit = max_dotclk * num_joined_pipes;
>  
> +	if (dsc_slice_count)
> +		target_clock = intel_dsc_get_pixel_rate_with_dsc_bubbles(display,
> +									 target_clock,
> +									 htotal,
> +									 dsc_slice_count);
> +
>  	return target_clock <= effective_dotclk_limit;
>  }
>  
> @@ -1592,8 +1600,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		if (status != MODE_OK)
>  			continue;
>  
> +		if (!dsc)
> +			dsc_slice_count = 0;
> +
>  		if (intel_dp_dotclk_valid(display,
>  					  target_clock,
> +					  mode->htotal,
> +					  dsc_slice_count,
>  					  num_joined_pipes)) {
>  			status = MODE_OK;
>  			break;
> @@ -2827,6 +2840,7 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
>  	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> +	int dsc_slice_count = 0;
>  	int ret = 0;
>  
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
> @@ -2878,10 +2892,15 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
>  			return ret;
>  	}
>  
> +	if (pipe_config->dsc.compression_enable)
> +		dsc_slice_count = intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
> +
>  	max_dotclk *= num_joined_pipes;
>  
>  	if (!intel_dp_dotclk_valid(display,
>  				   adjusted_mode->crtc_clock,
> +				   adjusted_mode->crtc_htotal,
> +				   dsc_slice_count,
>  				   num_joined_pipes))
>  		return -EINVAL;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 78fa8eaba4ac..beef480b7672 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -230,6 +230,8 @@ bool intel_dp_can_join(struct intel_display *display,
>  		       int num_joined_pipes);
>  bool intel_dp_dotclk_valid(struct intel_display *display,
>  			   int target_clock,
> +			   int htotal,
> +			   int dsc_slice_count,
>  			   int num_joined_pipes);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index f433a01dcfcb..bdf2f09fa03e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -702,6 +702,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	pipe_config->has_pch_encoder = false;
>  
>  	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +		int dsc_slice_count = 0;
>  
>  		ret = -EINVAL;
>  
> @@ -731,8 +732,12 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  		if (ret)
>  			continue;
>  
> +		dsc_slice_count = intel_dp_mst_dsc_get_slice_count(connector, pipe_config);
> +
>  		if (intel_dp_dotclk_valid(display,
>  					  adjusted_mode->clock,
> +					  adjusted_mode->htotal,
> +					  dsc_slice_count,
>  					  num_joined_pipes)) {
>  			ret = 0;
>  			break;
> @@ -1531,6 +1536,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	}
>  
>  	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +		int dsc_slice_count = 0;
>  
>  		*status = MODE_CLOCK_HIGH;
>  
> @@ -1556,6 +1562,11 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  			 */
>  			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>  
> +			dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
> +								       mode->clock,
> +								       mode->hdisplay,
> +								       num_joined_pipes);
> +
>  			if (!drm_dp_is_uhbr_rate(max_link_clock))
>  				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>  
> @@ -1580,6 +1591,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  

The if (!dsc) dsc_slice_count = 0; part you added for SST is missing
from here.

>  		if (intel_dp_dotclk_valid(display,
>  					  mode->clock,
> +					  mode->htotal,
> +					  dsc_slice_count,
>  					  num_joined_pipes)) {
>  			*status = MODE_OK;
>  			break;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 642a89270d8e..7e53201b3cb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1104,7 +1104,6 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>  	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
>  }
>  
> -static
>  int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
>  					      int pixel_rate, int htotal,
>  					      int dsc_horizontal_slices)
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index aeb17670307b..f4d5b37293cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -41,5 +41,8 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>  			   const struct intel_crtc_state *crtc_state);
>  int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
>  unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state);
> +int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
> +					      int pixel_rate, int htotal,
> +					      int dsc_horizontal_slices);
>  
>  #endif /* __INTEL_VDSC_H__ */
> -- 
> 2.45.2
> 
