Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD04DAF72B4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 13:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CACBB10E811;
	Thu,  3 Jul 2025 11:44:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l3HyqWLv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9933910E18C;
 Thu,  3 Jul 2025 11:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751543043; x=1783079043;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Esn0hgzaALbn28XNMUkxOjXusn10slUTTr3v6qgfv0s=;
 b=l3HyqWLv16sQ1zPdShObzkMrn+irk6wZNJvyLGJGpgBusVJOHYW1iVEU
 pD7UShz2UWSl7D3eQLe8eJ+R1WHgcUuXhXBnev9mtInZn/KSeMfoZW8NN
 u32slaNxRX6nmKnXjVJyDWD0RLCNjUv8LcHxMlGeKAvLEkWzGjpQ59hqO
 nOVGRCjPiNekKoall+jcdRob3+OpobCgBno7AykVjFtExFQpci8I6XOho
 u2RWS5d9h0WDwa4h8i1Iw6yC0V46BPD2kdhZ2VodUR0wkNxjxTvp3fvKQ
 /4aRxiHJfzwdaOkwBYe74TkmzKYGQmxia8eD6xnE3MbHwd3HUB5w3VZyg w==;
X-CSE-ConnectionGUID: tqoV0L1uRcCkrdguQ1b5KA==
X-CSE-MsgGUID: Yxmi/ADSSM2dxC/EuOLudw==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53984046"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53984046"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 04:44:03 -0700
X-CSE-ConnectionGUID: UrY53Ww9S7+Tr+teIKPP+Q==
X-CSE-MsgGUID: Kl/6QEfpTzKNFEjXXjh4yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154708775"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 04:44:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 04:44:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 04:44:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 04:44:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e4vQqXK6CD3pRvS5pgiRT079TTeJYQ/KIaq4kLmbeIf5FcBp0wEFuAcMtxOJ+kM2ONyautjp3ybO5cPLtw3DUCHvzJK35rfF6QxWeADLSqcMsgxpzLmWAZRkNkot6008mePNspz8mx/iSYq/W+PgKQlg13MVPnIDjTyEJFd80nCOpokH5gbbAhm+et+sijCIjwlmXQcaWB8AQKXvXEE5Qwz+5L00GH4Bb99D5NfmmnbywCMEypIRp+jQMD3yaW+QH5IGhiaZJb7UPGtUssJ6e59WfsYYNkijZSagxmLCHWBK9DIn8aNWzrvWoihFX2Bi7dJbbEwBlvyA5g1VCCc5rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNutrwxqtOa5wk13qTK0d9KKdTi4xQ+F/4AbDeQKD30=;
 b=JbSN1W0bXk5GQ+tWMeFufW1xUSs4MqtBEwSBOstUFbLuhsH3uHvMJyoqq0ITctPt3tx4HW/IYifZVbXAaIvFDxMwqeIZM+rKzlc9CldWwelZejgqhOFAAif5yyAxPPBQ5YHjt4I1Ch6dvzJzX7la2ST/glF55KQRmKYYVh/2c4Uv26gD4ynurQ39Z+XYoUTA0YKWduRL2Te9nRslcoxSRrquSoDtGiPD1MVr/5VQ38/RaOAtoMAE80iz0xTB3RJrZ+FOSp0FN0pfXyFdfWTsp1Lm/TrleKFnjMdDdHA2AG+QW8TPfM0uCe/A9hRG7Hd0QDBiybizD0Nkzvqor363Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH3PPF8B755DBFD.namprd11.prod.outlook.com (2603:10b6:518:1::d36)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Thu, 3 Jul
 2025 11:43:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8901.021; Thu, 3 Jul 2025
 11:43:59 +0000
Date: Thu, 3 Jul 2025 14:43:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@gmail.com>
Subject: Re: [PATCH 11/20] drm/i915/dp: Reprobe connector if getting/acking
 device IRQs fails
Message-ID: <aGZs-e-K8n7US659@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-12-imre.deak@intel.com>
 <625ce1c9c46ba93027fecadae4803fc86450ad50@intel.com>
 <aF0UbRD7DLIwZRYe@ideak-desk>
 <9ef664aa1e833ee6c3f97533da4a0d828a03f9f2@intel.com>
 <aF0kbmZ34PeclKW_@ideak-desk>
 <9cef5bf7a30fca73313e9b178bf65f1ac2842141@intel.com>
 <aF0nVObjLtsjcWBx@ideak-desk>
 <2512dc8ee95cabdc386b4de305f014e3ef5575a6.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2512dc8ee95cabdc386b4de305f014e3ef5575a6.camel@coelho.fi>
X-ClientProxiedBy: DB7PR05CA0023.eurprd05.prod.outlook.com
 (2603:10a6:10:36::36) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH3PPF8B755DBFD:EE_
X-MS-Office365-Filtering-Correlation-Id: 14a66822-1758-4274-314f-08ddba26e609
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Eky7zsbYykx3yBosNYdrbfwCbv4Lrixn9YT11cfcpoNiiIHnuTxYKvCWocm5?=
 =?us-ascii?Q?G3J7gp/DDjIQeOSfQNppKNc++227t19flAmhjrFqiDDElG+qCnAbb8f/9UcN?=
 =?us-ascii?Q?/iJqvXgLmBwhQ+hQAoastrL6Yp8gyHowL95juYzxTpN+sU+19SRUeKlc7xzA?=
 =?us-ascii?Q?yNxI7g7ypBe9U1+hEqQ4JjmuaEy+dA8tZD/MXYIpH+wy+RlsOn8JXWJV4BSO?=
 =?us-ascii?Q?DDHwcosdOHB3d12vSW29JQKwamx6GcabGG+jYEoMK2CVk2To4fFnv351jpfE?=
 =?us-ascii?Q?JCJ0zL8xWhEpnMoKgKnTW4sp0a/4Uf4cZGpXPYOst+pWlLvXPCTucO4ga/VW?=
 =?us-ascii?Q?9JdY+5qdrphR5N86BiXSN8WD0qaXXrpK7VlGF2lfiKCMVGjwVCBGKqWIObRU?=
 =?us-ascii?Q?UL4ZZ77rTi8f9kDy01P0Mu/3Zq8Sqp35G+ZAuHrvmkthVVRVzkRiSp7RFtFa?=
 =?us-ascii?Q?cI78pEBdA35kbUVbLr/+Km74sWKx29/piDpDA6loJqmXFwhvmCIzVTKCt+jv?=
 =?us-ascii?Q?PSIlJa/4XDZqnb/286WVxPx6RN5l+Q2TrHBNstXeWOpFUnOj7uHsSwo2qyR3?=
 =?us-ascii?Q?f9Xho75WWkiA9z5Nw+FZuujLz19Uoe0hbaMJ1DnwO0FHWZjDzsT36eTydfKd?=
 =?us-ascii?Q?U9YMcAsslQ3fqVxaL1kNCTyU5CJMI1/bciMZYhxsPkkGvlkBdYBCjco6vHVf?=
 =?us-ascii?Q?qIQgALglwPBE3ySOY8HCYlZDNaZ3ee3+ZIfkRSIlUr+OqzVPwoR/UAyj+Sql?=
 =?us-ascii?Q?eNfOIaKWA1EFLBA1XXubxyGZOQuLUFNI5gYoK2OGSypO0tqbiXLA4TJboi1A?=
 =?us-ascii?Q?kTCVwNdZZSAvnoZJlYsOe/WjnhUq788SPY6y5GrWi47bts4fAZzvY0wAJ2fB?=
 =?us-ascii?Q?HfizDXylZOF0bFGN2iz+ll4AkB/HRGWq98qbENYgSw0/BNzR5jIWTTixI1xC?=
 =?us-ascii?Q?RSkEMLwxfQpqyvCmWmWmdBN8ro0B/Akb5kjxEacZfP2lsTc/tNMDbtTxeA6p?=
 =?us-ascii?Q?4EPJDC4CQNJRYzcczvn/YCas99w7rz31HWrrNa7njL+4l3WcZILWHMPd8AKL?=
 =?us-ascii?Q?dzmq69Ofl6iczWpk3Yjd7Yzxn3g8MxovaXQQ3iMive/ph8U6ycou7feO1mGJ?=
 =?us-ascii?Q?5Tptf1RP4zyvE3JtxCdVzcqs1y866kf4OxOTa1EuVr5auToRk/9T4ltsqzxY?=
 =?us-ascii?Q?26xL0QJnVIceHwauItCfoLHq25BQ4s3LaUZ4Zhg0P/++DgYBgNAeKE6NCbtw?=
 =?us-ascii?Q?l4k+keJksy461Kpfj+5drr5VUvRfvkVZv3TGUeB67zF2gHoJE/4VTHbNFlrt?=
 =?us-ascii?Q?LnwE815v1lZPQwSHvLgNh393tWKL5P7eymdkUhIHPXjWQYj8fpz6u2EX8B0j?=
 =?us-ascii?Q?2xRzZLBk3RVprRqZDWs7HsML5K7CaK4nwVvbEUWyHrFHU8L9TqzDn/eo4Qjc?=
 =?us-ascii?Q?4qCOz2GbtG8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GpJXZgVBERJ+E3JbXVR/rmt0ow9XRIVFRjLvHMsV5VmuUpVGWO+VrLV7uem9?=
 =?us-ascii?Q?4u2nm1UaDyx9T87VQJEdSah1/sjGrTbGYd6c7bBFBGzUdNNUiGnaJS9/dDRJ?=
 =?us-ascii?Q?nFdVKvd4hUOfaUqcF0oqrVzc1ww0lYKPVMbVyWAh9LH3uaA3D23uyEXlkJDt?=
 =?us-ascii?Q?pGtIJfx0ClQM9WVy3eBjPZmaEYGl3PUQrvHDAhLxRYChOl4IjlQsZCyU/k63?=
 =?us-ascii?Q?evFRQs67pNTA1iw7lnLSKEHat/YbsC59cHhekEz+sbMz4dvCs/fyyf44LloW?=
 =?us-ascii?Q?T/l+53l9vrs0TkrDTeWCq+jlNJCM6TkvTDeayXaO7fUZqZRWvAOflVhNBSAU?=
 =?us-ascii?Q?CVeqmV90zfrb6M6igTY2MyGUqQ1UgnK/0VkS9taA9ri4UGyka+N8aDfFrfrJ?=
 =?us-ascii?Q?LKHSIlbMykhK2CsLaLVbGWH/g/MtkYG6wLB96wS7DqG+mgVbEzl8elJpNDrh?=
 =?us-ascii?Q?NwQ1dQ6jf5o5lrAJ+I/ubpwyfe0NsbCS7wx01kPjwaeSmFlIeWeafGLz8JyQ?=
 =?us-ascii?Q?9BcQtGtu3XwH/5c+TKZbINNhYPekMw/0ouk3IzpAoK9Igy9si2DZu8OA905S?=
 =?us-ascii?Q?Zc4/tseY9bt0GMaOu+1CKHifuL/j9waYxu4lLhW/BdTFf2lNv3s1Dt34jaty?=
 =?us-ascii?Q?97/NCkqjAgqFdb/a3E5Z+yHYb/8/5ri45qkM6YmqsHMM8JkvMdOG5B4ZnIg7?=
 =?us-ascii?Q?po0dV2qD1fUACMknPL6jTqsxgZYjThWpEfp8KXNAngwiPtllWD97Hat7Rrf+?=
 =?us-ascii?Q?B7ANbNtfG3Rd3XfBHwslmL1p+2yxAG8KWrZAQUG3NxKw3+f9Id7A3qQAXgap?=
 =?us-ascii?Q?/P3Og4uhmLdJ71rW4FsVE3cyDokmX6hSdmt66ZEn6pZMfklNRkKx9GERX8Gh?=
 =?us-ascii?Q?xKg3EvwyZfDaihIvJorsB2bJ/W0DmblbLjM7nLjC13kLtpQcvoFlLdkv02kl?=
 =?us-ascii?Q?L82OQprQwGC5m/+ky6KP1v4mLNQ6jDmd7cE/npKTR2xjpmouACsWE/QaS3hu?=
 =?us-ascii?Q?KhHR0vWWQEtxmn49AIu8ZR0n7yIcrjKrZxYfZix7OM5tqMF0/FaCaUpIwPm/?=
 =?us-ascii?Q?Qe3YDrW6NGXikIORfkaB+BoscPAucC8ANU8VKgdt3YLhE6VES1/fsYFxdEER?=
 =?us-ascii?Q?AxDkQGRmsqmY8m4Oj8tRn5afJfcGa1Qak1gaQ4+ylYlb9YFH8FMP/Oei4OpK?=
 =?us-ascii?Q?6TtoxIBIAPUOnbNVzpGMFOXPVoXeyQnPMq4oG48FV/sFVZQJ1Wpx8HGv9G1E?=
 =?us-ascii?Q?6zN5HOYa/aQwwYAT7BQkcdlfeHKqScnC/lTMf19YJPGtvQnHtm3ge6ru+BPs?=
 =?us-ascii?Q?gs1Or791uJ5j1gZiEVZnvxF2wDg2bbX8la+dGl2O18GlwIBHhF7b5rxFgPTP?=
 =?us-ascii?Q?Y3n2t7+yJ9Xb/gq6L6ubieNgWEDxOfsaCxiTG2Pc+R+XdQz9SEmvAU5Q4+92?=
 =?us-ascii?Q?6eGAHp3TblRUVka9yoPbkyR0cHvslLY7FPasYWyX6H0gfzNGZpPNECKhnTki?=
 =?us-ascii?Q?HSZyNkIL7HIXR0VAFtQ5Wj0uBV7XR8XX+7/Uin0Fg0TSAr0UzuA/HdbgCXke?=
 =?us-ascii?Q?MIfkcRFGwUreThG5pDtW9MLe258DXccIQmOoawhY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14a66822-1758-4274-314f-08ddba26e609
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 11:43:59.6544 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oRDaO3IqeDtWt+0Vse1+G0QTtq/EF1XFc7+vhFZTfMhPZ48ISDbGeiwC32EH+LWHT1VuAhaQIMEVvH6wHIWqhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF8B755DBFD
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

On Thu, Jul 03, 2025 at 02:28:01PM +0300, Luca Coelho wrote:
> On Thu, 2025-06-26 at 13:56 +0300, Imre Deak wrote:
> > On Thu, Jun 26, 2025 at 01:46:27PM +0300, Jani Nikula wrote:
> > > On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > > On Thu, Jun 26, 2025 at 01:23:12PM +0300, Jani Nikula wrote:
> > > > > On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > > > > On Thu, Jun 26, 2025 at 12:12:11PM +0300, Jani Nikula wrote:
> > > > > > > On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > > > > > > From: Imre Deak <imre.deak@gmail.com>
> > > > > > > > 
> > > > > > > > An AUX access failure during HPD IRQ handling should be handled by
> > > > > > > > falling back to a full connector detection, ensure that if the failure
> > > > > > > > happens while reading/acking a device service IRQ.
> > > > > > > > 
> > > > > > > > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++------
> > > > > > > >  1 file changed, 15 insertions(+), 6 deletions(-)
> > > > > > > > 
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > index 7793a72983abd..7eb208d2c321b 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > @@ -5393,16 +5393,20 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
> > > > > > > >  	intel_encoder_link_check_queue_work(encoder, 0);
> > > > > > > >  }
> > > > > > > >  
> > > > > > > > -static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> > > > > > > > +static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> > > > > > > 
> > > > > > > I don't think "check" is very intuitive in function names. Check
> > > > > > > something, but then what? Is it like an assert or does it do something
> > > > > > > active or what?
> > > > > > > 
> > > > > > > What does a boolean return from a check function mean?
> > > > > > > 
> > > > > > > It's not obvious to the reader at all.
> > > > > > 
> > > > > > I agree, but in this patch I didn't want to change the function name.
> > > > > 
> > > > > Arguably adding a return value changes the meaning already...
> > > > > 
> > > > > > 
> > > > > > > 
> > > > > > > >  {
> > > > > > > >  	struct intel_display *display = to_intel_display(intel_dp);
> > > > > > > >  	u8 val;
> > > > > > > >  
> > > > > > > >  	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > > > > > > > -			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
> > > > > > > > -		return;
> > > > > > > > +			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
> > > > > > > > +		return true;
> > > > > > > 
> > > > > > > Looks like true means the check failed... while usually true for boolean
> > > > > > > functions means success.
> > > > > > 
> > > > > > The function returns true as before if a full connector detection is needed.
> > > > > 
> > > > > But it didn't return anything before! And that meaning is not conveyed
> > > > > to the reader in *any* reasonable way!
> > > > 
> > > > This function is the counterpart of intel_dp_check_link_service_irq()
> > > > both functions having the same purpose, reading and handling HPD IRQs.
> > > > The latter one's return value is true if a reprobe is needed and this
> > > > patch doesn't change that, it keeps the two functions behave the same
> > > > way.
> > > > 
> > > > > The absolute minimum is to add a comment (mind you, kernel-doc is
> > > > > overkill) stating what the return value means.
> > > > 
> > > > The function name will change in a follow-up patch and I think that
> > > > doesn't require a comment on the return value.
> > > > 
> > > > > > > 
> > > > > > > >  
> > > > > > > > -	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
> > > > > > > > +	if (!val)
> > > > > > > > +		return false;
> > > > > > > > +
> > > > > > > > +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
> > > > > > > > +		return true;
> > > > > > > >  
> > > > > > > >  	if (val & DP_AUTOMATED_TEST_REQUEST)
> > > > > > > >  		intel_dp_test_request(intel_dp);
> > > > > > > 
> > > > > > > Whoa, it's not a *check* function at all?! It actually *handles* the
> > > > > > > service irqs.
> > > > > > > 
> > > > > > > Can we rephrase the function name?
> > > > > > 
> > > > > > I want to keep the function name in this patch. In the following patches
> > > > > > I will separate this part and rename it to
> > > > > > intel_dp_get_and_ack_device_service_irq(). 
> > > > > 
> > > > > Right, saw that now. But even for that function name the meaning of the
> > > > > return value is ambiguous.
> > > > 
> > > > All the get/ack IRQ functions in intel_dp.c return true for success.
> > > 
> > > Argh. You just said it doesn't mean success/failure, it means if full
> > > connector detection is needed?!
> > 
> > intel_dp_check_device_service_irq(),
> > intel_dp_check_link_service_irq() -> return value indicates if a
> > connector detection is needed.
> > 
> > intel_dp_get_and_ack_device_service_irq(),
> > intel_dp_get_and_ack_link_service_irq() -> return value indicates if
> > getting/acking the IRQ succeeded,s imilarly to
> > intel_dp_get_sink_irq_esi(), intel_dp_ack_sink_irq_esi().
> 
> Do we need to distinguish between when getting or acking failed?

No, in either case the IRQ shouldn't be handled and a full detection
should be scheduled for the connector.

> You may have handled the irq but failed to ack (theoretically).  Do
> you just abort the whole thing in either case?

If reading or acking the IRQs fail, which would be due to the relevant
AUX read/write failing, then the IRQ will not be handled and a full
connector detection will be scheduled.

> I still tend to agree with Jani that the idea of actually handling the
> interrupt is not clear in the function name. 

Yes, I agree it's not clear, but that is the current name, which I don't
want to change in this patch. In patch 13 I separate the function into
intel_dp_get_and_ack_device_service_irq() and
intel_dp_handle_device_service_irq().

> _get_and_ack doesn't imply that either.

intel_dp_get_and_ack_device_irq(), added in patch 13, will only get and
ack the IRQ, the handling happening in
intel_dp_handle_device_service_irq().

> But this is getting too nitpicky at this point, so I'll leave it up to
> you and Jani. :)
