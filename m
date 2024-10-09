Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C17A5997563
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 21:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 271DB10E7D2;
	Wed,  9 Oct 2024 19:05:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FKfqt+Iv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4525D10E7DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728500753; x=1760036753;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3QKajYyV3yNlqt/vXmELOMX5JKm1YuHr8JvcF0PHVgU=;
 b=FKfqt+Ivj3lodeOLxb5XhE6V2WmI1SThCiGTHpNld6zgDcLLxLyKqNOz
 0S2R63RDQgv6RbrBHR8pRhjCec+aprbhKTdYT3/sMGIx1bA3n4DcYX6Rr
 HgXoT2jHYxe3+QAR5557h0tYBa93UUq5R1yi6Ogj6ZVg6yMWUp9mVUvq1
 0lLMfvAdgH3ub34oVPUs7/VgPj9jnr8FILqddpvPUXeS0rqfGn3d/d/hr
 sL1RVYLxR12FOn8x8nDq/ul8kgfVqF1AIUkPKPLPNcOsUrOXKRUR1aVfH
 xX+jH0pqEc29sG4B5NW8AQA/w66yoOBskf9yj3/NROQ0hIiqYlXDC4Dz/ w==;
X-CSE-ConnectionGUID: D8NGcfQ+RzKQWkSNJwbfyg==
X-CSE-MsgGUID: PlmGpJy7R4CtIuVmuy6iQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="45343247"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="45343247"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:05:52 -0700
X-CSE-ConnectionGUID: jbyhI2J/RMaeg7XBAPQGaA==
X-CSE-MsgGUID: xSNfTBShSZ+9dNsahPIizQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="107197112"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 12:05:53 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 12:05:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 12:05:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 12:05:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 12:05:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qm6m6TTYBj4evj1g22bUbYcPlQcfk10wYht7UPIA+jgrNXST8q3yjMepAPEPWwmOYw7Hr/W1RCBWsapP31aLo68il0AteG6kaVujMkDSjtI14TOdYOQOfaKFLwsqDS5C+0C0+4bB14CsfatflboNURxiu6GbOSGvi55j/jhaS35OaCw/nusD576dMyliSepB05S/tHbGZSbYD8bHqr7+yxQiBCTGSHDx68u4wiHS9+sXM1qzKUO0EsMhGKShmMHlKwi9cvmKiF9s/zlxvv9J39EzMZTc8QkgKIQ01wkICD+/X5ewXJsjZTaOIW8qa/I+o7aGRdX0/Y7Qz1QZntD/kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3R/DDGm4OjJ8GSWsgO0xc04W20UzsAoMn+FjY/oYRzM=;
 b=WoS+d7jwEK6mPXnYVIEDq3pn42BySc0kVYykPbf47O09KNjEtVRBRbYI38gPxvicyCBuOh+LGnEeLxo8gZ1n1ww+JLY9DYqkRWFlWa3YTRMZvtksNirPvUKzh71ltFXcM37rVrGF/FL68F9QV3ARZA7G0/piD5rJ5cdXLazQ8jMTL1HXtUgDb7MXZqLXbFhlJ9lSjaP7shgV53TcWxdbT2lUsjd1ft+0WAXRnUO301MpVrM60kbAploKPyte7M0miY8aEt+bFOrRoqOn5QoxewPU778XoS/Xsax0xZENKbF1/anT/1PzCeoMREUcGyNPMxVtqaE0FSqNrEFQzEFUZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MN0PR11MB6231.namprd11.prod.outlook.com (2603:10b6:208:3c4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 19:05:39 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 19:05:39 +0000
Date: Wed, 9 Oct 2024 12:05:36 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <andi.shyti@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <riana.tauro@intel.com>
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
Message-ID: <20241009190536.GV5725@mdroper-desk1.amr.corp.intel.com>
References: <20241007122424.642796-1-raag.jadav@intel.com>
 <87ttdmbj8l.fsf@intel.com> <ZwZ7ZrcBObuIrPqh@black.fi.intel.com>
 <871q0pa0kv.fsf@intel.com> <ZwaygLe1WIgkL2uE@black.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZwaygLe1WIgkL2uE@black.fi.intel.com>
X-ClientProxiedBy: BYAPR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:74::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MN0PR11MB6231:EE_
X-MS-Office365-Filtering-Correlation-Id: 1271f042-691a-4a5e-72b1-08dce8955d5e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?W3M2MpBHfP+9eTrZHldd9iSoOL2q3EIYNeENo5vH0uj2I8v4t2CA1JRdv2cq?=
 =?us-ascii?Q?ge8a2AxMMJz5HRfgWhfTUpC6yNkWDnQfIHGANzInB7pSzaPeVo+1iJ72Q1CV?=
 =?us-ascii?Q?cTc4zr9eLHCdIBIZEpUYOe8kv817sOo9mr42H5lB72XL1IUOJs5EWOjWkVH8?=
 =?us-ascii?Q?DjqlTNFq9unhnYgUWSFz8HIQFxcDj/lHu5psmWrEK5AmjlMZF4YoR0FCFai2?=
 =?us-ascii?Q?HlRIVfs9zwAHJ2CmJeHtFTI/clvpoK9IPuwlRj8dFAJMNCo24otcI7CGdxaU?=
 =?us-ascii?Q?rCPgTtUZgq1IvUkBQyR3nCUEqRGAASKie2d7s7w9y9jPTZv/5PX9YwooRP/v?=
 =?us-ascii?Q?cYX8Ust6lryivfurcFH87Q1Yk3ADm3PWINy3cklLW3tG+FK9vbKPgNdi/PtQ?=
 =?us-ascii?Q?FlFJTqH+5swKhJWLkv44pmYzgw3Dbu/4RamYvfBDATvHcPVC2O/Op4nYRLot?=
 =?us-ascii?Q?KcONLd36Hd/8aCCQUPTquqwMVzEXBWeP1TV5vZLKaoUISaxwXjuHeRcnc3eT?=
 =?us-ascii?Q?R8c3b93Uc56AamNGmyIcfHH+UzVR7LQT7mTCODniQMYmGAeB95OkgYHu7Kxz?=
 =?us-ascii?Q?W/mrAMGwsBwCZ+b+JT/FaheT2U+BdFral1BrjEHyP6XxRjj2X7xcccPyqXlQ?=
 =?us-ascii?Q?Zb/2kcl3gdENPTowQ1c1BtyGgllROnOuPaazphxCskPC1ROQNJKkjz4iekFf?=
 =?us-ascii?Q?g1xqBsX/Gh8CM9/xVfXfrmkD9rQItHKV8ZokbZ0A7QDMeD6kdfQXYEvvgygX?=
 =?us-ascii?Q?WMlM8rWWS9XqNNAOpTB58XsRfghUKruAiuP/+zT2W1llx3AID17mef5IW7Vp?=
 =?us-ascii?Q?lqjWkCJp+wIbVLSoxXUw8JxekeJS2Zq0CF1ubnTrAzgHF/5LoN9ojcCzmmJQ?=
 =?us-ascii?Q?o1pl9c8qEvwgwsa8IlGUIjI8UdYyNFLEQl36yysJVx3m8crc2s+f+9RajyIR?=
 =?us-ascii?Q?v3hnMnICWiIwFvM2mCxY3Z0YupRluEEg+CwnNR4k10UKVJe6CNGDMaulTQX3?=
 =?us-ascii?Q?OCzPO+DvNszQCocldg1dlZBEPj1yZJu+udQy/5umraidPnfyyHInEf1qQnu5?=
 =?us-ascii?Q?hETq0nW40Gj9p42XEx10myNOSCzNO5N1No0YLkev91ypDwjUqriuC3h62RCh?=
 =?us-ascii?Q?5LeuLJOJbQHibs8enj0qwWU3mR9beo+TjbEukF9fEXYLhNZNAvIQ5S2T28cn?=
 =?us-ascii?Q?05aM1p90LVLivYw2/OgEiKFjzcUVsZ6wLxrihIN4QCwuE2DZRj8f/xM3Zq38?=
 =?us-ascii?Q?ICflF2bnG2QbYRaFXYBluwd9f2iQcAUOSnE1rq5MEg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4MRMh3MtiIAcQ1/F690LpvSeKNK8XGD0ZoeOyd21s2B24rUmfMrMKpx+GsHK?=
 =?us-ascii?Q?FFO6o/qO1x/t6+cHMJJiqSM00Z4NSUbKe/n0PEy7sqrxXQlT5aIq9ehP0zFm?=
 =?us-ascii?Q?8fsccyWwQTGNY46uWlOKw58bixrCus7yGBwyTcFtyJqK3Q9g8917JPbkkNMf?=
 =?us-ascii?Q?bFL+GldqCEmqnHbVjyZ9y/jFLdIU7AjA3qxWyktJHwkXx7XjMFHufVseKX2t?=
 =?us-ascii?Q?rJfSj8epjsNBpPYJ1PTvtEU85WJgXddEHdfxsu5r003v8WAihVDHiD9GUxeR?=
 =?us-ascii?Q?i31BjrJHjpdp4KJuM2g+g0XYcALdZg0Cs6KEMnC6aPBIFW6tWqalIEszbdFO?=
 =?us-ascii?Q?xhRCzZvS+c3wTHIgnIhiYrJ1uhMWMf1jWHl+whOUQQPRd2n6dKaAuRbgC8mm?=
 =?us-ascii?Q?UoKXR1iOmP8LOPw7zxftZ6N+TLBSiUeog0q3ICMZaPfOLrvkDN9p3WPzcWsV?=
 =?us-ascii?Q?rfR+dLR2IFYoi6VY55ajJAZ/cQ+/fAkWKdXqMAQZI/F1x9785J+WtXn7Z5Yd?=
 =?us-ascii?Q?bsRme1ofrItF9Y9Ix3ck922Ngpdj8rBSC0clLhqhRK9fdZhjn5eJWV8rgIHG?=
 =?us-ascii?Q?5RDeLjGtQhGDtjHxfUqlOAWvbw9buNg3EfffhvGo4N14R8wt1zem39GyJZqL?=
 =?us-ascii?Q?tSoxeKfO+piJkVST/0i5gHSZrJZ02QdT6SjNOmS1/PzdIIVwYOQbb24TyJcP?=
 =?us-ascii?Q?ZFcWiRWyMZcuKKpKeO8UkqG16U6dM0KG4s/PT2faBPYuBip6ov6woAlz7dhV?=
 =?us-ascii?Q?7ZGWuv8KXCfIJdYIHFcJ3FEV6dYsA2gm8lu710ourocB7K9Dxzn3O98YLvPE?=
 =?us-ascii?Q?dIfuQbRK2Vu0OlHdVmYjF7YqcFix+3frtHwt+GA24PiYn8HTCNkO4L9P4CKy?=
 =?us-ascii?Q?XTmRw+hwGB3e2W9celkF/8fSSGtk8sAEVWux2Tf4sGsPph6qOHTGjS1y3Pvk?=
 =?us-ascii?Q?HneYWQUYy3xFyq7m1eu0nyLhM8A2toncsNL8IrEUrwOLQuggnlunSpnXLCwN?=
 =?us-ascii?Q?V108PQoFyotfyGpEWri2OCLVb0wJ6mQiE2vV55xk1M4/RLLzyEQSKJ51qKvG?=
 =?us-ascii?Q?QmCH+NbaTLLHKMR2py+OS2gIW7CTpj75wPlgE4uMYkHpdYGQozaHMCGEULm4?=
 =?us-ascii?Q?2Qdgqreew463TrI7Kk1L8aufu1T5kqSy1C2AvNbVmxOs9OQPRj0IV8Io5dA/?=
 =?us-ascii?Q?ZeHoseIjvXonxgDERSsaiZ0bTkEDQIZ6/HBgGvS2LzWQzXxtFt6AaF25ucsj?=
 =?us-ascii?Q?JyzgEfXI+E5Tl3jhp6a0aCBc6mnmxQkYW+ckVhrJj0TdyNE0LgXy0yNBIti1?=
 =?us-ascii?Q?RRbJbg/z40bMsqlUJZLVJYKb5Ke9feeX/LmkTeLzZ+5FVQbAQVGbNCsPiWNz?=
 =?us-ascii?Q?IMveWwXFfAjPl8PAVOy4chrfJQv6H+DZZlPv7ycj13thtVYgfxB/E0dHX5ys?=
 =?us-ascii?Q?VYxg/S/ZSucXADDaxS6Pby5g6Va6xxEdAMbggb+LZl6TIfGcLDXxMTG+fxmx?=
 =?us-ascii?Q?xKDDEiQBub5sOet+ecH1CoEeZI7YYlvFk+lU5+YSm9BTyBw1QSoo0OZwj7dK?=
 =?us-ascii?Q?c03w9SHzZURQ4ROulvYc1WVgBv5wXm7cp41oX1wh48jwDmSxiI2EvDEts135?=
 =?us-ascii?Q?fA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1271f042-691a-4a5e-72b1-08dce8955d5e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 19:05:39.5833 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oFMC8kc+tLO9kS6AmOl/7vURZLQEdbXEvBqF1degdNQIkrD9qPvtGEXSfZvcFt+Js4L/AZwQgDOYivtpIQ1+4EvovrCmgW7Xr1+jkyIlAIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6231
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

On Wed, Oct 09, 2024 at 07:42:40PM +0300, Raag Jadav wrote:
> On Wed, Oct 09, 2024 at 04:05:20PM +0300, Jani Nikula wrote:
> > On Wed, 09 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > > On Tue, Oct 08, 2024 at 08:24:42PM +0300, Jani Nikula wrote:
> > >> On Mon, 07 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > >> > +
> > >> > +/* Wa_14022698589:dg2 */
> > >> > +static void intel_enable_g8(struct intel_uncore *uncore)
> > >> > +{
> > >> > +	if (IS_DG2(uncore->i915)) {
> > >> > +		switch (INTEL_DEVID(uncore->i915)) {
> > >> 
> > >> Even using INTEL_DEVID() is a no-go. There are currently four users, and
> > >> even some of them are too much.
> > >> 
> > >> We try hard to abstract this stuff at a higher level, and there must be
> > >> zero direct PCI ID checks in code other than the table driven device
> > >> identification. Otherwise it's just impossible to figure out where we do
> > >> platform specific stuff for each platform.
> > >
> > > Even if we use pci_match_id(), we'd need an explicit list to match against.
> > 
> > Well, we don't use that for individual workarounds or hacks either. When
> > you think of using something like that, see what git grep says.
> > 
> > > Any better way?
> > 
> > You probably need to turn it into another subplatform, and add it in
> > intel_device_info.c. You're probably going to need to rehash the
> > INTEL_DG2_*_IDS PCI ID macros too. That's how we tell platforms apart at
> > the PCI ID granularity.
> 
> Which would be controversial since the ids span across existing subplatforms,
> which we don't want to break.

A single platform can belong to multiple subplatforms.  So it's fine,
for example, for a specific device ID to belong to both the DG2-G11
subplatform and the "do extra G8 stuff" subplatform.  You'll just need
to make sure you separate out the G8 subplatform into a separate 'if'
statement rather than trying to include it in the current if/else
ladder.


Matt

> 
> Don't we have quirk mask thing like display?
> 
> Raag

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
