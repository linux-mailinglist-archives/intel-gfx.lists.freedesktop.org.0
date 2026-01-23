Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKeHKYfQc2kCywAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:48:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF68E7A4AD
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 711CF10EBD4;
	Fri, 23 Jan 2026 19:48:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gYWSTSfB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 425D110EBD4;
 Fri, 23 Jan 2026 19:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769197700; x=1800733700;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=wrOXEGxDVkEGfASz6ImHge5FMXmCNTLPc7asvWzMbOw=;
 b=gYWSTSfBPaRDn985cdepLAnjZR1723euXJLkR6xqMUYi0J7FxYHPcl7z
 gL4euui4oYPNv9HC4StGOXxo6Pd4qgqsSyBq7wS0ccTkxpq+y3pKp/FD5
 +2Rjk8tQ6QHbxR89yTl6PoAvTKvmLtz1ZsIerzzgrNXqOxbE/vSgoxhkT
 SkVpVlXhBDJFQTdFeWG+JKQmMBfBNPWTA/aBtNJjc1+pMpl+0ItHZqZH4
 VP0G7/WcVcAAgD6N6GRShAyhn+X4niDDPKTGx9/03pUDAlFm8aODS4wmQ
 wS2pphP4bkJhaOOo2JUvUS60B/cTfgAmhkf4C6w8VzhIFHSzZ88fP0QZ7 A==;
X-CSE-ConnectionGUID: 7LSWzu51TPm9YoeF50ioMA==
X-CSE-MsgGUID: upBs+Vz8T6aJMZsbYG3cGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="81896051"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81896051"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:48:20 -0800
X-CSE-ConnectionGUID: Mp3PdvVSSUC6+bKpLEor8w==
X-CSE-MsgGUID: u70t4fbURO+dOIW1if99gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="238360340"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:48:19 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:48:18 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 11:48:18 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.46)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:48:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NdOi7bPlb/7dQZUegdOzKULVmDszX7ON4PKIOaIeTPlsvp4Z+b+gyAF7vB+GUFyZpuFper/LsLvr/NLtgN1z3FMXGLacpjq+ZzltHB4jsJdygLnCXcHuF8xbLMWOcSlgc+/4w0vPmqmIGr/hLr8zSfJygCZ1ToXllOVRaPubKlBL9MP/947uGTt/cAGRSLt914nWKv9FLZeYepao15FXIV+wFvUaJPSd9+nuNWld4nAeKXvC1KINfZwfzEfe8QfR6oP/gBNyPgYyUBQawZaeWpfBFRLaVy15wYaGQ2xRnHhTkUJeebV+Jf/fL+L7Pvu5a4ziXrt2/Ejl+/724jPb1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yqeHvgLAGIdVJUT5dNBkBypJkqhJj4EDc56G1BXrIfo=;
 b=W8nENzdIKTVYYoIrLi6k0jnt8+d23LjTnjbaXy+BIFZmLNiuVSMkvYWxhNkotfjJd8y0LXUB1uXU+7R69KbMNTKxnvYAQq8Ba3Wb5ApV7mSvwgtwXpG0u0bkXC/avDFAmYnwdpycDzRlQuP+4PkyJciA1NdhXGZpmjXgpuQfzVBJkQHUlQ616bU59BzsnagisrKigrs1spmwQ6zo//tQMLJkzK2piOJVRS9ie/he8pEVszny4AcU39lJ5wGG31OfUJ2/FJpf3zHXlcbdTmeEeYKLQc/Xp8z/311wS0h0wB/4pNnBhnKhVY+P5iGKTDX43EvYp2FsgrgeBMvaebnkZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA0PR11MB7329.namprd11.prod.outlook.com (2603:10b6:208:437::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 19:48:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 19:48:16 +0000
Date: Fri, 23 Jan 2026 21:48:11 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH 14/14] drm/i915/display: Add upper limit check for pixel
 clock
Message-ID: <aXPQe2SaD-mDvksb@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-15-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260121035330.2793386-15-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO4P123CA0051.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:152::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA0PR11MB7329:EE_
X-MS-Office365-Filtering-Correlation-Id: 309c0c97-d533-4032-5f7d-08de5ab85a0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qvE/A/goF7eWZYOOE1gx9zRxfNgZXYWp0uvdx38tglKkl4YFo6AmYHpJgBIV?=
 =?us-ascii?Q?kZoCTb7SSnNljFBp6cUc67nSpEvdTihwNx6Y7vs8FsFMixQFgblcNPnnqeew?=
 =?us-ascii?Q?j6cSpOtGwx5lDAhobVACMZecryug4A1w5iufpxmC8niCBvtJZrHc3tOot7/H?=
 =?us-ascii?Q?f7hcpHm2fLyTcAhtkrTXY9FRfoMlwB9BIRxYLxSEo92Sn9Ao3O9yPn1RbfG0?=
 =?us-ascii?Q?Kg5+Y3oP4nl1JnE4Nw7m7xiaMT3i2znfV+WY4mQ1qnErwMWl0eEwhdnNq3QV?=
 =?us-ascii?Q?w3opzKu8g3r+uX72nYXwtoBoyO8PptMcRJkj/Vt5jxFHLonQvv4K7w2CZGPY?=
 =?us-ascii?Q?080BThzFztW5ADAnL/Xz7JLvgEXFc+GRJWSuZYPiCh4ozPlXwPtKVo1x3rgp?=
 =?us-ascii?Q?TYl0tjVjUOe8JqSN6voMc2XFcdZvYmqhb2DU2sCUm0E+okFiWAj5v2E3jSFg?=
 =?us-ascii?Q?Qu70j1l1G2ZTRHXCEFFecWGCWtKcE8MuFo43iGykcD8tAbXdOMUI5lNls0bZ?=
 =?us-ascii?Q?neMEH5tfjMA99e2cgw8n+s19fZkf7yBMe8zbQhwSgCitJI9f9/ZCm7AKv2PP?=
 =?us-ascii?Q?lXN87cqH+SW0GIcBm7lJsY5YZobygpqBsBYdCi+0cCaF9V5dSBlm5smW0d46?=
 =?us-ascii?Q?oG/KDyKs5ndKSn7vnLzMQ6znC5XBCog5gXPV22j7peXObFwAx5K3CkWxD0Ug?=
 =?us-ascii?Q?evWosheGrhk59jK5auMU4aIFp2AfqJsEujZCtMMkaHMlw8P0/a4i4oFtH67H?=
 =?us-ascii?Q?at3qNUeurm7W2V+zmWNXOJ3MGDSUZIKQoDV+R2tcuDGaPS30b7gdmcXFfRzv?=
 =?us-ascii?Q?P2hGNJeZ9XyR+XmyAR4O7HwYXSGi12QVQ7c/zsazv0FW/mOe1F0C8NYmZBzu?=
 =?us-ascii?Q?3lp78zdFL7YjyYyuIYJOO3DVJ3oDW2zIL9BLV8sGT33IxoKLCEzyu3gjUwVV?=
 =?us-ascii?Q?nH1zaneGeXHAtyS/bWbVm7314eCxHGTyq3E43XqV0v5wIPGO5heVOJyvuBrH?=
 =?us-ascii?Q?Sf4oIXf703hVpKu9AJkc/b0lC2ho6BVbB5C3tpiUYqKy4rP2adnz4Ab5+dcQ?=
 =?us-ascii?Q?U1TKgOxfiZ9Mirva/8jPfXs77xRrlMXMO239tZ5gfGJpREvMqM/+Wp1mKRIS?=
 =?us-ascii?Q?pmq4s89jtGkEoFjOYj2KfsE3cTy7WuWyqcLMwz24GQd9cl36eYuLJoJQ/AM+?=
 =?us-ascii?Q?1yC/6icDekRxz4gw8e/MvkGpQtf1/OYOVoOH3MxzHT5decNJlDsmMt/weJUI?=
 =?us-ascii?Q?phtZk90NcxMt9m6oHl2ce1zdy2lFjLAbAExuAomTA2TxEeSAkCquq2gcYMva?=
 =?us-ascii?Q?rHQsIZGyC9UWTji92fJC3FFA1U90lKFyK3nunE4IYKimp6HnEFf4nTYQYeGL?=
 =?us-ascii?Q?1NKVghirbKLIaf4RXv+VsKq0vXDexkVTb1kFlb1+57gSpYuTug6TJkMbFQ7y?=
 =?us-ascii?Q?1jr9pmN9wTwRXXrk+y+aaEcf5dpskVfZ9iPrjh73gI5x65zccKAbkMXnxpfd?=
 =?us-ascii?Q?BM+Ihv0KXE6pkN39Z2ZqCUlcbAu+HJB0yORaCk3WSzBUdQTjA1wKANUTSU5M?=
 =?us-ascii?Q?P2eCY6kZby7aXT3gHM4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IKTuqnanr+Is45umAvCbuQlyEtg7SgiDAZhScWmUdaqw/kh8/Zz+OwnI6J1U?=
 =?us-ascii?Q?eEqJTmhDAzqOCqLFSX1rBlgMWemsaC2BAAqIIt5+6ly92TzEdXrFZZQr+GL2?=
 =?us-ascii?Q?9hwxrxc5KScH2BBsx+lXnVKUANFK+iABzuJhseKIrJfWNZbf5CcGoc7tlGqU?=
 =?us-ascii?Q?2SXAIgxnuaHtl7FTALq7Gx084EY8zWdA0otrhPUZVFg7UX7kNVXiFsP/yIpK?=
 =?us-ascii?Q?6BbOvDjFcdcOKNFOVlgulLOnh7nc0mCEwQqtCxt5OAGJ0iaY5ntJZu/jePoJ?=
 =?us-ascii?Q?i0W5XopOfY7LjkMEya19tcoWRvJ5nR1ZxVzQxJpeNqj1isVvrwDSjcuB2RE0?=
 =?us-ascii?Q?RUDsSyba6I9I4ps38aUsrVQ4HAGgU/PliOJMhNK0UxyDCDJaTptAuNQ7lYxa?=
 =?us-ascii?Q?zg5jvJkFY8uPpBdaKE5GinvHWfOxqadt63IeW2Cm/C/4cHFG37T+iF6P1+Bl?=
 =?us-ascii?Q?Ux8RRyUNejBla3XjVb3jYHnmeDemcLsenOV/J42zsQYEUsbOiS2neFBLIMQ5?=
 =?us-ascii?Q?SZS7iM49FJjYw0E0vl1onwc5EBHAHLAfnX0muJ11H0tnLIWI/T++gjS4K7WJ?=
 =?us-ascii?Q?LGac1vxy808gNcYIlYdmR9bw4oWIqpv167YK46i6WyxkmvPZPzdIUb6a/3eZ?=
 =?us-ascii?Q?YNzqbGgJr4B6zYYeRui70lv9y5KYVTLyCvUA1CNv6Vye3IzoW8wJi7g25mN5?=
 =?us-ascii?Q?t07D0QOUkkoKb3M9tEVbY6jS0j+K2J623ecJZA9V16cVXh6rFRpyKEONdU6H?=
 =?us-ascii?Q?uE1kVddDEqHgeX75bMZfueo/3Fev+RsiS1jrAp4Fty6bvrA4fGhxGkSemqF0?=
 =?us-ascii?Q?SREEewXPFC81mj/W9Ni1HZ/f4TGMauObF/NzhoJkolsFWxTk10hGW2lwipAq?=
 =?us-ascii?Q?hb/iwgfyZPI6iAKVIcCskBrTNY96ai6PxN8YsTb26FoNSAbIGBmqtqzdcbds?=
 =?us-ascii?Q?L3oJtJgDlwHjP9xLrQgtRP9pHc90CjPKMevFnQPB2G5BENQ3xEIpnh7bzzaO?=
 =?us-ascii?Q?tehaAZa1XrBMJHI6WDheR1B3QvGocdNBCUwX7OQfquZnYxSbcGfCxgB9PiVF?=
 =?us-ascii?Q?+tGlWQ+XysuY80nf2cfwbUyx8kda++HM0KT9ynZZ9gmgbW4FHqcMUoqFMR8W?=
 =?us-ascii?Q?FNIso+oDo/9Ywx+uX05RCr0qvGKFJW0b13mPzmkjJTw4gE7lCoH6gK7dn+nD?=
 =?us-ascii?Q?WSAL40wXMV/TkcSvMtqJt5KLEhYambI7G7JDAgRQgQaH10weauVe2j3Kzr2I?=
 =?us-ascii?Q?9kswd2YvYzwlNVis5m2KvC+vRsa6xNahK7NYLCbok4Oy6nwYOUGA4lopzR76?=
 =?us-ascii?Q?+Yh8/hWGUTDzrkSA7tYVIaP7kv9s3dPh6ZFQsY4A3vz7IUX+R3rVdbhTRsjo?=
 =?us-ascii?Q?ARtSpyGYdzWaq378nLktYp1zuJApfSMJa5vRSv0sCMMjUJn9ykv3QTfSxWly?=
 =?us-ascii?Q?aIGcrGg7fLM2vRSGwghx3H5c72n9ETkU/9yrV17S0orksbcNqsPsaYcV22ov?=
 =?us-ascii?Q?dkr7/gL0km99glcTevYKJyr76/pWsaD4I02amB+dOM7pjpHoMnvfU7XXpgR1?=
 =?us-ascii?Q?lWdLsG109j6CThdGWGChg/cSgea7svidWvjqAgcW1Rj4y6GnZrRNrqS45WfM?=
 =?us-ascii?Q?XPiBdhjUzR+2Ei/xfmAB82wGcnzNd/5tu5Mjvm3LlZNP3M/jKpVfueYp/d8Z?=
 =?us-ascii?Q?0drJR2Be5kGSxjM93Xe/z3ovpzipQINj0yvoTUsq+1jSU0hHiQU9rOGjUAvC?=
 =?us-ascii?Q?t+w9B6Di4A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 309c0c97-d533-4032-5f7d-08de5ab85a0a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 19:48:16.5841 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mG/mznMoWpWPf8joeurz4RTFjpcpoxyTidWlSqMV3gLRd+3/jKnMyt+CIRBbGDG+3xY0TnZ2uWvf6I8C2yWmqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7329
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
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DF68E7A4AD
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 09:23:30AM +0530, Ankit Nautiyal wrote:
> From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 
> Add upper limit check for pixel clock by platform. Limits don't apply
> when DSC is enabled.
> 
> For the currently supported versions of HDMI, pixel clock is already
> limited to 600Mhz so nothing needs to be done there as of now.
> 
> BSpec: 49199, 68912
> 
> v2: Add this limit to the new helper
>     intel_dp_pixel_rate_fits_dotclk(). (Ankit)
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c      |  3 +++
>  3 files changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7491e00e3858..04021ad6b473 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8001,6 +8001,18 @@ void intel_setup_outputs(struct intel_display *display)
>  	drm_helper_move_panel_connectors_to_head(display->drm);
>  }
>  
> +int intel_dotclock_limit(struct intel_display *display)

The name should reflect that it's the (stricter) non-DSC dotclock limit,
so maybe intel_max_uncompressed_dotclock()?

> +{

I guess display->cdclk.max_dotclk_freq could be used as a base, reducing
it if needed.

> +	if (DISPLAY_VERx100(display) == 3002)
> +		return 937500;

While the above WCL limit is indeed in bspec, I couldn't find the HSD
for it. Windows doesn't use this limit either. So could it be a
follow-up to add the limit for this platform, to reduce the number of
affacted platforms until it's clarified why Windows doesn't use it?

> +	else if (DISPLAY_VER(display) >= 30)
> +		return 1350000;

This one for PTL matches bspec, there is an HSD for it and it is also
used by Windows.

> +	else if (DISPLAY_VER(display) >= 13)
> +		return 1200000;
> +	else
> +		return 1100000;

The above ICL-MTL limits are not used by Windows either and I couldn't
find the corresponding HSDs. So could adding these two be done
separately as a follow-up (even though they are listed by bspec)?

> +}
> +
>  static int max_dotclock(struct intel_display *display)
>  {
>  	int max_dotclock = display->cdclk.max_dotclk_freq;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index f8e6e4e82722..0009c305f140 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -488,6 +488,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
>  				    struct intel_link_m_n *m_n);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
>  int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
> +int intel_dotclock_limit(struct intel_display *display);
>  enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a6a1a803d860..bd8ba6db01db 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1456,6 +1456,9 @@ bool intel_dp_pixel_rate_fits_dotclk(struct intel_display *display,
>  									 target_clock,
>  									 htotal,
>  									 dsc_slice_count);
> +	else
> +		effective_dotclk_limit =
> +			min(max_dotclk, intel_dotclock_limit(display)) * num_joined_pipes;
>  
>  	return target_clock <= effective_dotclk_limit;
>  }
> -- 
> 2.45.2
> 
