Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F83CAFD818
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 22:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3684F10E6CC;
	Tue,  8 Jul 2025 20:18:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MdSGIK6E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF74810E699;
 Tue,  8 Jul 2025 20:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752005894; x=1783541894;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=/pCVfsRAhbLOuOjbtzG16rMZOxou/izUn9WmP66Yvb0=;
 b=MdSGIK6EiaalUNzvXeEbKsB25bY7PPvs0sb7m0SH+xligLfcG+7JdFZ6
 UaaScPIHPx3N6nSLP1bNbU8TYv/G1Q/gdLiIe75v7mY6QNtBUNLjLhS5J
 YDyE4GsbpSUA5SSjvRsCPErVv/GysLjONxLnklEHUbP0PF2Fhj+hrFgPz
 osFdwnT+JeyQOi8bEY3IGRnxjxZghnk4yE+9VRer8jIiUxTJJFhMPisF2
 bzcd4bnfR0mHqHpAIKXaVUK7pSspvRYEMFFTANPc3sExSgCQ/VshNnFaU
 rAzCZSLacoI/trpyn4GRBT8UWV/q9gMQD+3Njp3mHXJSvwbqiPo4iAhv5 A==;
X-CSE-ConnectionGUID: Zw/rGUhbTjGPWMlCbc0ZGA==
X-CSE-MsgGUID: 8fgZ891nS5CDybtYPoIC7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="64508539"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="64508539"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 13:18:14 -0700
X-CSE-ConnectionGUID: zNtcQN8OS5+d5zl17LRMwg==
X-CSE-MsgGUID: haUexjgKR8G8vy4HSkSjJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="159618894"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 13:18:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 13:18:13 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 13:18:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.72)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 13:18:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JL1v3IPnK/MnHeikXYddsehYApZfmBx5gmmtJu1YMI0IvOkqvp7N8WGihMgy20CUpzrwJIe5/zv760R/+uSpOVlCPvXOj0RvsgIeQDGneNLS6y7kVXgsJ0hY8frf+25jJ9HJjynpR/o2+RvPITdAtukYSSnzDgrJnfY7oUCW1697Jo+KYoylKt9vCnyOv+D3qEA6bRANK3l/SxvoyACvBkniBzIhyLltWF71v31Nd2NYRoz3AWSTe+g9O95o98ixhUoNlkM01wg0/4RNTb9PU9b6r2oxmdJkhe2lZiVIPuhSoiMZxB6VA7C6OIJ3W0PkjQVMPCS2ja0YCX/Sgcxu9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U6a+lZYpvUtluQ9Q1f6Z2hPBXhUtlluzLwkiIuP0mpQ=;
 b=aJzqVVgtTgX51jYKkqQ7FKGiPQaIiAPEMH8O+y7DkG9rfgo+hKw96wjUNzyLrg0MUt2Xtynlu7yphMf9TTiBDz5QiJUvBxUr4TE2Qxgpn6SxhkJSeampOfqPnwRJpaelFO+Rj2Waie14XBVo/g7AXUG1CRPoFvy8hyJfX24oQn4oRbuGRE38PFn/5x8N7II01BPrIrqmckk54x+o1bJl5Sa17JyUXuRCcM/vCP0YrofiaIZhjat8TPH/AGwSQNzojFQP6rh2P6vfyOb1T+G2vVailqrGojM6+o2O0/mscZRFz4tOex7bgk+YD/IwupTZgZaiJBlLizG3uyZiVbdCrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA1PR11MB5876.namprd11.prod.outlook.com (2603:10b6:806:22a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.22; Tue, 8 Jul
 2025 20:18:10 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8901.024; Tue, 8 Jul 2025
 20:18:10 +0000
Date: Tue, 8 Jul 2025 16:18:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2 is
 disabled
Message-ID: <aG18_m9rQfM2Zbbh@intel.com>
References: <20250707104733.1874797-1-jouni.hogander@intel.com>
 <20250707104733.1874797-3-jouni.hogander@intel.com>
 <aGvhRapKppSGxbCa@intel.com>
 <d97d56076845e8c728f19c1f0db429e97ac26656.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d97d56076845e8c728f19c1f0db429e97ac26656.camel@intel.com>
X-ClientProxiedBy: BYAPR06CA0026.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::39) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA1PR11MB5876:EE_
X-MS-Office365-Filtering-Correlation-Id: 1246f8c9-13a3-4f0b-6e23-08ddbe5c8efd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?2A6hsvRMUWT+hoGDxMSVPyrxU8uFTUoRjfKGv7KFHUaUKtApZtSWG4+WGx?=
 =?iso-8859-1?Q?D2E/wnmZIixiRAHTVQ5yPV1u7C8Dy45f8zl/oOhNp7QhM8MYh0OqdD8pd4?=
 =?iso-8859-1?Q?sUc7D7Gh7C3vN4LbMXXyKqfd3C8+lEzh3clPghbfadw0KPD7HpSBlEV52I?=
 =?iso-8859-1?Q?MGErFHv2lFpcShut494kAh1uN7yqqAupiI9AYwYko/OsK17Zm3GAKjngjG?=
 =?iso-8859-1?Q?WDvK7nb+Ro8vxrHyijRPhbUcbYqod3mnCBiOm3uuhqYzS1QDQ08FYeQuO3?=
 =?iso-8859-1?Q?X0iJrazQ0PLRE5HT9jN5gIxX8OXx8iZIuJoFEXPV/TksgSpM93zk1F8zQc?=
 =?iso-8859-1?Q?qr+rtbnw+1NiB24J0DAxpy+B7z1aAsrn246faxse01JVipLvi4a+ryTQP7?=
 =?iso-8859-1?Q?dUy0EZSyqfMglBGKA0gFPUhOKChwm7jG4MTl/dGTFoRkrDmnuSrF2lkn51?=
 =?iso-8859-1?Q?gbzjZkhOwnHbZiqax3urkefd3P+AIgoA1QYwOvKZ9s7BNjSXnBeMeLj4AD?=
 =?iso-8859-1?Q?/mGK3u67apjFadn2ESxPdmdouAi6zIP8sY1cznOCz6zbtOE6tqLcSnbrZY?=
 =?iso-8859-1?Q?gG1DeCPE8pWZjpTopZVlIwlhgkwpFEEFox7/qDe5orHMof7txifA/0gSWD?=
 =?iso-8859-1?Q?8LaGIcWLAX3z7jYZPRJ7mLgEd5V4NRY/ZWF/OBu08+yVZF+nReTtk2GL45?=
 =?iso-8859-1?Q?jvRIjMeWQyYJbfkCCeGs7DTpXDEDrGwQsp3sIVlU9od8ol/D5cjadgUBm7?=
 =?iso-8859-1?Q?4nQeDalua5u96Kyltg3gFGmPOBCFwk2xhQ7rU/dB5mv/9Zsg+eIs4sfYhV?=
 =?iso-8859-1?Q?j2FKuZ3SivM/Ze9EvVMaSg2e7i0yP5ekTgAg8CvtlBLU+fnd/YDiXmEnXU?=
 =?iso-8859-1?Q?fE2/b5bNn+HgWhTC3TZsCBaOv+u55G+n54uEMUQFIHC6D2MK7K8p3q2fc/?=
 =?iso-8859-1?Q?cwkjCt4xYQINr32wpKnC9o6abNXpII0NFnpa7EusTNNqARRC2HekG+vnD7?=
 =?iso-8859-1?Q?hvD/f63O+q0nGQWAsA1+5nCkzfREUvz4GIMSXAPQdE3PFm9o/i71zkwpKN?=
 =?iso-8859-1?Q?uTsVERNznGlILdY3fBEqm9cZp5Q8hl3SnWRmdFR8dFqiTe25VIDAECYT0i?=
 =?iso-8859-1?Q?qLWsEztqj9zfIbX5NAqs67fRum6G+d/AEyKXswBAM/26L7gWpDfuyWqLZv?=
 =?iso-8859-1?Q?cxULcWO67xPd9FrFGbu8Xk3SfPvAfZbXRgy/plzXF2pwbNLX92BabNIs8Q?=
 =?iso-8859-1?Q?usipe5JAfPVAoobVmf5HNyVsvtiIqjl8E7u7MoJ5w2XO8bOkEnm4HvZmyT?=
 =?iso-8859-1?Q?vySz6fLYmIW2oLtoPhKjuZqA/bBU7r9TmiFe713AKQaPQlrsZ5q+bwyQdK?=
 =?iso-8859-1?Q?4pqhaPEWwzSb2t7DHG1eXSLe7IIe7OTayqZoFRPx4HOq5HqDDKTEBrLFhr?=
 =?iso-8859-1?Q?MS3CLKovj+jgPmuQNaZiKVah5dV8NLo7P6J3460PPD19Z04WvEcKNXr0Vp?=
 =?iso-8859-1?Q?c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?MBKKc36LFjE6h1KqN2FT8KYbGt+NW0rv1LR1nmEnSVNtrU4bBDaaIIKTIs?=
 =?iso-8859-1?Q?MlVGWMgUS56JPucSpuevYpPOj3PspTMnS5Ke/QHQ0XUxB9vuvhTOC0cudc?=
 =?iso-8859-1?Q?YJ2aKMQ3MDvoA3OATs9h3YoOl3x9ipz7MQCQwPTjjtliW/15qjcGd7sBEm?=
 =?iso-8859-1?Q?wgT7SZZdnplgRDjHWckwGW4+tzfXJdph2dVjZfFoEc/+kgyIXeERW/sjFo?=
 =?iso-8859-1?Q?pKletHhuqKlkyNuBFEz57W6F+ZyjQibcqiUwLJ0hNPIotzZzxfji/lmXTK?=
 =?iso-8859-1?Q?zd9QHpVPFpRCwb97phuJiSwcIsLMoxHszGJf/Z53BOitQBuGOTTajAi6xK?=
 =?iso-8859-1?Q?b1Wk6WGpGUWajO8Xd3CT6DqzKr6MWFfaguSyGYjMq2oqAkISSHxQLU5kCY?=
 =?iso-8859-1?Q?dUgojc+ZbpcBRbIxi1vyKWLcekRvdGRhGrwNfwf5Ged5q4ZIc4gJDpwoaM?=
 =?iso-8859-1?Q?M8EvnT3ES25P5SZc+mC1EZosMhIkSPfE1By6OpWhyMEAXAUOjFiVtdXJRJ?=
 =?iso-8859-1?Q?JTra5v92ZiRF5kTyPtlVKsHVIW9W41iB5RMAeeKf+fjezi7ECUv0cjJQG/?=
 =?iso-8859-1?Q?5sWyEpyhudW5LXQERVIoW4331EzTq3xT8GppZgdth9xea1xbzkHBP32Dmx?=
 =?iso-8859-1?Q?Ls7ckYxT/YbjHPfpUI+DbiolrfLxKMQBBRkgqs9rKxjws7LQOnAEHuvxpN?=
 =?iso-8859-1?Q?FgWPtDoqH5dUv4yhXbmkA1lxL+NqbV9+tO2A4yqF4QbEyeXE0OkpvkmiXr?=
 =?iso-8859-1?Q?GcVUZ2iGg5eBs86AnrKhz1ixR6tRgdCQWEEw0sTlV9G7OqC0thJxvv6uv3?=
 =?iso-8859-1?Q?eDFXXiEOIFIrvjVgXpscylW3jlAnC1OemS9raxM2FlCRW4UoqSrGJiClh4?=
 =?iso-8859-1?Q?F72HpkYvSwE/FoWWmeLqHR/qJv6Ty2bZTScEuhq4b8I9ULbj0eNA9xWMfm?=
 =?iso-8859-1?Q?eJl1QGg1zGFP7wLGz37kkx7rip+YuNKoWsbPnD9byrFrxQv/c/LDbK2LTL?=
 =?iso-8859-1?Q?tgb/qjXFH/ilDgOdeHnVT3r7StTXYV4+/5/FRVy8fLSBgZQBCrWzpNLVzs?=
 =?iso-8859-1?Q?sOUtoJ6363saVNVvkEiqj7UxMQF9jxibhP9dVSnegAtgF72ksYqpkY6uFC?=
 =?iso-8859-1?Q?DynHy+td5cD6W+kUwqPuzfAOn8O+DRZ3P2tQ2LnqydysGrziXqGGUy/FYL?=
 =?iso-8859-1?Q?Sw5JBnJ3mKDLaewYfD+VV4xKLkVEFKsuAApC0UTUKH/Zfb73smfo2Rk+qB?=
 =?iso-8859-1?Q?bINN7sLKjPaq7vITrjgtLKhkag2AurmaJp2YfKFawFQvy924vNDMISNfRD?=
 =?iso-8859-1?Q?Lgv1NfRnvn1otnW+1j8/XWDRtIyJ9v6dxccfQ2BgssuEMKWLTQnowqAPv/?=
 =?iso-8859-1?Q?i/OGHNLkAYnfWTmSl5i5wHMS4wZTp0HSDSZsltoJAu23H70Ez2ZzJ392GR?=
 =?iso-8859-1?Q?1LlMf35i2HCCI8DWV1fxiAJ+pEWTNhwjZlycpaTCtI4krs1TLWeE8g3+F2?=
 =?iso-8859-1?Q?E05zoCfyb3HVuYYbNsWcU7cyad6Y7EmGXpqI6J2JUVqVvwiK7kkAEZFdMs?=
 =?iso-8859-1?Q?a/5i2jJC2iSwPEo16Uo+D2/tINAcWgrT7GVGCYyp/Y+LsO3EN8pbqr93dd?=
 =?iso-8859-1?Q?1vnVaVSz253Mtc5QLkp7ZptEIMmTc6ww5WK09fWSHCvDvBtAzBtUfRAg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1246f8c9-13a3-4f0b-6e23-08ddbe5c8efd
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2025 20:18:10.3785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B4B0koW8uTFg29FOV4vQTIDmxBOspN/xTQ28mhykuHlOHuA92CgjcK5Yyx+Pf6kakbU9rRpAx1X1W1fIVvgoNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5876
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

On Tue, Jul 08, 2025 at 05:39:08AM +0000, Hogander, Jouni wrote:
> On Mon, 2025-07-07 at 11:01 -0400, Rodrigo Vivi wrote:
> > On Mon, Jul 07, 2025 at 01:47:33PM +0300, Jouni Högander wrote:
> > > Currently disabling PSR2 via enable_psr module parameter causes
> > > Panel
> > > Replay being disabled as well. This patch changes this by still
> > > allowing
> > > Panel Replay even if PSR2 is disabled.
> > > 
> > > After this patch enable_psr module parameter values are:
> > > 
> > > -1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
> > >  0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
> > >  1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
> > >  2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_params.c   |  3 +--
> > >  drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++++++++++++--
> > > ----
> > >  2 files changed, 15 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > index 75316247ee8a..1ba17ea40bba 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > @@ -116,8 +116,7 @@ intel_display_param_named_unsafe(enable_fbc,
> > > int, 0400,
> > >  	"(default: -1 (use per-chip default))");
> > >  
> > >  intel_display_param_named_unsafe(enable_psr, int, 0400,
> > > -	"Enable PSR "
> > > -	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
> > > +	"Enable PSR (0=disabled, 1=disable PSR2, 2=disable Panel
> > > Replay)"
> > 
> > What about a bit mask?
> > 
> > PSR1 = BIT0
> > PSR2 = BIT1 (PSR2 infers PSR1 enabled)
> > PANEL_REPLAY = BIT2 (also infers PSR1(and 2?) enabled)
> > 
> > (Peraps even bit3 for early transport?)
> > 
> > This is backwards compatible because
> > 
> > 0 = disabled,
> > 1 = up to psr1,
> > 2 = up to psr2, (no panel replay)
> > 3 = up to psr2, (same as 2)
> > 4 = panel replay on
> > 5 = same as 5
> 
> Original problem behind my patch is enable_psr=1 having impact on Panel
> Replay. First I thought I Fix this by just ignoring enable_psr on Panel
> Replay. That would mean adding enable_panel_replay parameter as well. I
> didn't want to do that. We have user wanting to have PSR2 specifically
> disabled but still use Panel Replay.
> ->
> I wanted to have enable_psr legacy values working as before without
> having impact on Panel Replay. To have this I choose this meaning to
> values (bits):
> 
> 0 = disable PSR/Panel Replay completely
> 1 (BIT0) = disable PSR2 (allow PSR1/Panel Replay) (up to psr1)
> 2 (BIT1) = disable Panel Replay (allow PSR1/PSR2) (up to psr2, (no
> panel replay))
> 
> I left Early Transport out here as disabling it means disabling Panel
> Replay as well. I also didn't want to make this parameter too
> extensive/complex as we have separate debug interface to bisect PSR
> features (/sys/kernel/debug/dri/*/i915_edp_psr_debug). Using this
> disable bit approach is also easy to extent in future as needed.
> 
> Your idea is following better meaning of "enable_psr".

Well, but your idea captures better the issue and the backward
compatibility. Let's go with your definition, but ensure to document
the parameter like you described here above?

> 
> BR,
> 
> Jouni Högander
> 
> > 
> > >  	"Default: -1 (use per-chip default)");
> > >  
> > >  intel_display_param_named(psr_safest_params, bool, 0400,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index a2b5688f0c82..3215a11baa66 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -254,13 +254,15 @@ static bool psr2_global_enabled(struct
> > > intel_dp *intel_dp)
> > >  {
> > >  	struct intel_display *display =
> > > to_intel_display(intel_dp);
> > >  
> > > +	return display->params.enable_psr != 1;
> > > +}
> > > +
> > > +static bool sel_update_global_enabled(struct intel_dp *intel_dp)
> > > +{
> > >  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
> > > -	case I915_PSR_DEBUG_DISABLE:
> > >  	case I915_PSR_DEBUG_FORCE_PSR1:
> > >  		return false;
> > >  	default:
> > > -		if (display->params.enable_psr == 1)
> > > -			return false;
> > >  		return true;
> > >  	}
> > >  }
> > > @@ -269,7 +271,7 @@ static bool panel_replay_global_enabled(struct
> > > intel_dp *intel_dp)
> > >  {
> > >  	struct intel_display *display =
> > > to_intel_display(intel_dp);
> > >  
> > > -	if ((display->params.enable_psr != -1) ||
> > > +	if (display->params.enable_psr == 2 ||
> > >  	    (intel_dp->psr.debug &
> > > I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
> > >  		return false;
> > >  	return true;
> > > @@ -1415,6 +1417,12 @@ static bool intel_psr2_config_valid(struct
> > > intel_dp *intel_dp,
> > >  	if (!intel_dp->psr.sink_psr2_support)
> > >  		return false;
> > >  
> > > +	if (!psr2_global_enabled(intel_dp)) {
> > > +		drm_dbg_kms(display->drm,
> > > +			    "PSR2 disabled by flag\n");
> > > +		return false;
> > > +	}
> > > +
> > >  	/* JSL and EHL only supports eDP 1.3 */
> > >  	if (display->platform.jasperlake || display-
> > > >platform.elkhartlake) {
> > >  		drm_dbg_kms(display->drm, "PSR2 not supported by
> > > phy\n");
> > > @@ -1517,7 +1525,7 @@ static bool
> > > intel_sel_update_config_valid(struct intel_dp *intel_dp,
> > >  		goto unsupported;
> > >  	}
> > >  
> > > -	if (!psr2_global_enabled(intel_dp)) {
> > > +	if (!sel_update_global_enabled(intel_dp)) {
> > >  		drm_dbg_kms(display->drm,
> > >  			    "Selective update disabled by
> > > flag\n");
> > >  		goto unsupported;
> > > @@ -1664,7 +1672,7 @@ void intel_psr_compute_config(struct intel_dp
> > > *intel_dp,
> > >  	u8 active_pipes = 0;
> > >  
> > >  	if (!psr_global_enabled(intel_dp)) {
> > > -		drm_dbg_kms(display->drm, "PSR disabled by
> > > flag\n");
> > > +		drm_dbg_kms(display->drm, "PSR/Panel Replay
> > > disabled by flag\n");
> > >  		return;
> > >  	}
> > >  
> > > -- 
> > > 2.43.0
> > > 
> 
