Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0F5BC6B23
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 23:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B536F10E8DE;
	Wed,  8 Oct 2025 21:34:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mX6jqxmb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F6010E8DE
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759959294; x=1791495294;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=7ehN+8P5/boFoVL3R+LPlPC1e1wNYGnocuNp5sAGr1s=;
 b=mX6jqxmbOew6y9NL/9kv4X0HMSYC8oMo/hguO+KRcGSXrWSWnwisaeF8
 BkMDslgrGf0yD3Ps7Mkf/6tICJX1OT/sSZ8nSNQIsTYRlGisQ1oDwb8xv
 jfdKRW32AKR7/q5gVrWWiDCyBAuvgwZf/pQfr9aAzuFK7N6rd1BNwi06O
 D/d+XzBPNQdq/EreBrLttPP8RzAALQ4HyAZGgh0tW1qydhx7g1LhrInzL
 78XEwD0yAW1/iJXjTvaitjF8E8Fpp/pAJ54vZ7Q1VFMZToxRji7JEMEuq
 8KKxS9ANj6TrngHtmrBaYAUveD0qyn9oyHPfZqFkcGHG7Mj61SsdusIPR w==;
X-CSE-ConnectionGUID: WqXvdP4NQyW0EODoX+zMVQ==
X-CSE-MsgGUID: HahO0MUMSMeiO1AdwACQIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="49725723"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="49725723"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 14:34:53 -0700
X-CSE-ConnectionGUID: Cnhx8OVkS/CzuTGByvkrsQ==
X-CSE-MsgGUID: 29EniE5qRAqnniTNXfr9Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="179664223"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 14:34:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 14:34:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 14:34:52 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.4) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 14:34:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OKmwRkesstgF6hW/+MFD71oLuTnDEdQBKUrNOAGGcDPub4U/Zf6RMS416JMXYoAuYui8UW6PHQ/qLmcPK7JXSVJsEH1zYziQO7GccoytHGl2M2NUIYx4q9E+VbnSEfEOuLrR3DCWJCWZ5F1p4GwKM1PXcTtHv4iHZ6WxWq0/jPqK7oWIjAT95fbcCFy2UpesxUV6Kjl6iK8apCMc5+LHlljcH96lKCgJQ5rEZudDvWp2Ev63+mC6MvsBw9IItyAauAmWDA3WwVCkPp8E0F2Yx7tMuCEpgGSEe7EsJBwfILuoEzkw1NCMifaZSKxC7Ws4CAayzD1co8eWB+HkQm7Ssg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WHtjDM+4AXlK1yFq1Oj8Gpit+WlLGHQvzU0S9p3mrDM=;
 b=awScj1WmkWlPnYu90UcZ04jJsKeTQAlcgci2WIJUfKh+eMjLDo4XQsxWqHuhtNcRlNBEe313x8w2KDhGk45x+/gcA0MtREXiKevB9kMV2tayhuI8taH5zUJzt33P4q2fBSL3AWqujfmzJRMsspipxGEK8gpDfofF5EO0CkX/vyaD4cDuzsq0VvQWOAydaeENVfMZj0YQAsL38MCWjknBngFv6eC+O2R2hGc3qaBHBzwYGkgocgLTlejojY6aoXJuCcYqzmkJIMS5lqJohxwUJ9iGjh5IWsek3FjQca5xe4/iT7oTViLI1DvddopWHbDaSu1oVZ5Vvi4XNjxBx8whhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SN7PR11MB8283.namprd11.prod.outlook.com (2603:10b6:806:26c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 21:34:43 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 21:34:43 +0000
Date: Wed, 8 Oct 2025 17:34:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
CC: Matt Atwood <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915:move and rename reg_in_range_table
Message-ID: <aObY74gMUQwr__a2@intel.com>
References: <20251007212447.941389-1-matthew.s.atwood@intel.com>
 <20251008165334.GA1207432@mdroper-desk1.amr.corp.intel.com>
 <aOad4gBFCtuKcbsh@msatwood-mobl>
 <20251008173713.GB1207432@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251008173713.GB1207432@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0101.namprd03.prod.outlook.com
 (2603:10b6:a03:333::16) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SN7PR11MB8283:EE_
X-MS-Office365-Filtering-Correlation-Id: 06acd0d1-8a15-4b2a-02cb-08de06b27e72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?hdSPhMX6RL2YHBEkrgL/ib46cXGHvQkLkRYNAEDruMGFDYiI2f5RlxOK4g?=
 =?iso-8859-1?Q?sRyWN7esdKMsf21DiIeXKtFev+cHtUt9/HBNfTOwOuRuxrXRXEAJb0BbmM?=
 =?iso-8859-1?Q?DN/tkuRyOb3HX7FikoBMgmsyLsyenwUm7fMRuXwf2Z97Gw4BC0rzJrHJNC?=
 =?iso-8859-1?Q?nBN9pM3Yo5MEInR2e5n0oXrEGBlQ5gIpi5+fNx5me0hCDcfsIhMM8MD/Br?=
 =?iso-8859-1?Q?jUkRlMCNVJODe4AaIjCxp9rCaF1CRuYe9Z5zzDLj/QjMmD1G5/7wE48uSj?=
 =?iso-8859-1?Q?Vs6onFRfzhwIpHNX0L2BRVCoMsjiw6VWAuWN1uewkS/4mCZ/0qigt2BHIn?=
 =?iso-8859-1?Q?cNKTkNihjJ8thBWh5boCVekTEMEBGjQZ1lekEFLtaaQoAr2wdtJ9hvv2I+?=
 =?iso-8859-1?Q?3Xe8J8TakmWbea3MzmexKg2j24uqzzdlU834DqZOoAlPd1KiJ++Znz9h8U?=
 =?iso-8859-1?Q?2/eBAgn54jOTwrnhq5G50DaityoC84ONJ56QjZwhF2tjLFX8yyp6PsvIjg?=
 =?iso-8859-1?Q?RkzR8acdec19zxruzkpmswjThxaW0X8rOXGqhza6uABekwqfIIfqPcEABk?=
 =?iso-8859-1?Q?p3hTXfPDx7dKo1fNJ9ZT+KUOqEsQFzFOH8VIJsFS2jgSSPoM60L2qsIgeo?=
 =?iso-8859-1?Q?luWyJ70DHUNIAwap01pwMSlEKhuOdsNAG9nmLpeNHIisMKWj/h8bQKGwP1?=
 =?iso-8859-1?Q?1ymxmgV1i3FaTU/D2RyrOgjQdbCDo3LIATdzJ2m5XP2EtvO2mKOj7i9xmZ?=
 =?iso-8859-1?Q?T5eBcq/RUVQ3DEuMQXwo3a6ycrR9ngDw3aApmVNNOydFCAP93iJ8QlY2Ws?=
 =?iso-8859-1?Q?LahXY6pCABMsXBkslkuSw79D4XbvaFSnaDG2ft5RDjipHQOSLJMb3Z+4Ff?=
 =?iso-8859-1?Q?i3bqIE1SIoe5Y8BoJFt8YsCq7sGLfNuEZCFxRzLYiFGDHfpg9OFQ2UxIPT?=
 =?iso-8859-1?Q?t2zEDrS5GZAdL03cdLBqD1LEGb8jdXi2WRqiv0CHESv4+sExBquN+kg4xO?=
 =?iso-8859-1?Q?QpHiAczFc7BYqkqlrG6uSwjNrRHUycZjVwfbRfzeJvVY+ofVV4Ems4qVlV?=
 =?iso-8859-1?Q?LxHpgqfeShLHaHvYK5jAerHsm/oKBel2+95TBWBrzXVN6mUJ8ANsrcuN7j?=
 =?iso-8859-1?Q?HHDJcJqJ7ME5R3NFaXfbAXEOZ1z93q8B7ho9NAQNeD7PiSjESWUSKTaSUM?=
 =?iso-8859-1?Q?K84vituF0ZkgskbHQhiRSolEnC+3T768pnZmTxXAqithYHlk1mMGRHX1k2?=
 =?iso-8859-1?Q?ovyVYFOFS3tg5i2BquitUcn/d97SfA/qtv36k68517tq17NB6/LYKdzqH7?=
 =?iso-8859-1?Q?uSse0q4+IiQQUn30JCjz0/Yj2+OJfkNfp0ywSPEtl+lO6lip+w73yT313I?=
 =?iso-8859-1?Q?r9OkNjjLUU2XH9qq+Zk/XIRcEL7TmmmsoFX0me1RB8d77E3wJJpyayag66?=
 =?iso-8859-1?Q?YWUPsXR/IrabSILkrgz+iDOKZmYo97E7hfoubF+0K1zllTS0W+WXFO0jjx?=
 =?iso-8859-1?Q?+TvdD/ZzXgCjq80Fvs7Jwj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ETGZoXNYuEnosfkQqP/qeme/2e5YMhWkGOaM8+v4oHn4R2R5Lh2ic3I4Kv?=
 =?iso-8859-1?Q?SQCoYMF+/MMkqLfocBfrrMfmDQ0sKEjd3mQUXYzw7hXD/OA6dSGCHJUyR+?=
 =?iso-8859-1?Q?DwX/1cyDqAG/6Ptkzy0NMTWbcznsiUHi28nBwBLUJSq5K7xxFNYzrtga7W?=
 =?iso-8859-1?Q?2c8XrdUpFIqM6fpTEe1tjPXONVN5aO7BRz1wMj1oVN29zSq6dAPDToRL71?=
 =?iso-8859-1?Q?nRyN3RJsKDkZ0tD1LTW6lD6bGX6RL0ZJm7ELRmV8o2jvsG4UhAtbUzb2JC?=
 =?iso-8859-1?Q?bHrC6QPNHVfhQ4tjPaL9SVI0Xjvanwf2jT3asUZXGaC7+HFzAP8mMQa060?=
 =?iso-8859-1?Q?tGx+D9zDlLzBvUW11Q6dUKlvVgPF4gTGwFiD1J6dIPLyEmY+w7Azk7bx8M?=
 =?iso-8859-1?Q?UgcPFRdZQfqUlvt015r57G4LkJk0uHLZkSy5g9Hnmac5ppYIEFu+htjT6G?=
 =?iso-8859-1?Q?iMJQ0mcUIo5EenCelp9ArfyZ9kmWE3Zv+ZRJdWQLnMwMSZkBVdSoXAfM7z?=
 =?iso-8859-1?Q?Sw4MGbUcH+cPyCQDxYFezIZz1Kg1n0JulRMiOIJ3fn+2L3M1s/O0jEC5VY?=
 =?iso-8859-1?Q?N74v3JFjVSA3C9IiSPXHb7ZrVLt0KFZfzXuFSt5K+NKDPmjDbYEk7IEHjq?=
 =?iso-8859-1?Q?d6DjrjGz3/Z7prCBQE0MAVjt7oYFKIyHu4h8UWzRyInKLoGnkanDcB0Kju?=
 =?iso-8859-1?Q?omDc1NvzHpNBluguasIXuMpMULzrHsCt9E/x+WfWvp8k9sR+QC77S2woSp?=
 =?iso-8859-1?Q?KEzNsNs+WqE9PDkAbTY+D7NZzeQPmvM6GKVS5w7kBvQkaaVV/SI8kpLP8N?=
 =?iso-8859-1?Q?GO6JmUd0N7OI+N3AWbmvZAEmbA7AaYVByEHty25Jb+zVgrpONExEvjkBsx?=
 =?iso-8859-1?Q?Brw+dc1JbIPtS06huDdV/qXfuVWK1EOFAnBr4GzNK2VVoP5XSMERLRah5W?=
 =?iso-8859-1?Q?EjUibh1BH1m93RG7LbrczVUUC/T0WhECf9Wn5e0NK8EhL7tApk8nVNNRYC?=
 =?iso-8859-1?Q?JPMIMSuMmM0bBgfrU+LPsC889kJJcVTbohpkJWU+Z6UDYqGH29Jttf8cBL?=
 =?iso-8859-1?Q?YX1VdzkKCwsJ2R16SSfBrKxj2QJLi6uAe12BqmN5GMYHfxsPlX47+8qeun?=
 =?iso-8859-1?Q?E+uJUYyTQKUHkj6DYdqqMPxhMNZasmtp4XLBhWIMhOaCyB3aq2BbkhYgb8?=
 =?iso-8859-1?Q?gxrL3EnIrqck6DKy2qEf7g+YKC25eBqWyr5Spt0uGeTYIVnP+qx/hHmnRC?=
 =?iso-8859-1?Q?PJ38XvSQe3BXgFZh4aTnVACBV8Uami0EqppyyGQKhgEE+A8x9Fuj9Upfvn?=
 =?iso-8859-1?Q?gm6n9pjpYX7VzVkZzFjVhvYjVLGKAGwTw+d0d5Nf9L7kPzZ4+TruqOK4eE?=
 =?iso-8859-1?Q?bcg8M9YoAW7ODvAxdqjFogZ1bK0evQVwaOCViEFX76piyUH4UDMiPHfbOS?=
 =?iso-8859-1?Q?ze3U4Bsw3kUx7m0epeldOO3CXoIOliUh+vTp56k1efzSlfpaSxkdMvDS1n?=
 =?iso-8859-1?Q?eYfoHbHXsKZp0OyIOMryqPZbkeNly3XZLQncUdBCkFDpEQLSinyvnry5Vj?=
 =?iso-8859-1?Q?+nK7bnGYnCj8Ct2VoTXrIAXBiSD8IOEFxGUtiZt9j91tW7NsEydWn68BsV?=
 =?iso-8859-1?Q?1MkxQffOhk/1KScVKf2/9coa7YqWytVEp5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06acd0d1-8a15-4b2a-02cb-08de06b27e72
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 21:34:43.2041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EDvTGlsiqApYIfqbifvxOLO7LHC2N0ue2LONj8EcxDBwqMAEZk0i5rNbhmwNjTWynsK9a+9ZzxsvTB5xC3eE4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8283
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

On Wed, Oct 08, 2025 at 10:37:13AM -0700, Matt Roper wrote:
> On Wed, Oct 08, 2025 at 10:22:42AM -0700, Matt Atwood wrote:
> > On Wed, Oct 08, 2025 at 09:53:34AM -0700, Matt Roper wrote:
> > > On Tue, Oct 07, 2025 at 02:23:36PM -0700, Matt Atwood wrote:
> > > > reg_in_range_table is a useful function that is used in multiple places,
> > > > and will be needed for WA_BB implementation later.
> > > > 
> > > > Let's move this function and i915_range struct to its own file, as we are
> > > > trying to move away from i915_utils files.
> > > 
> > > It looks like this is a new revision of this patch from a couple years
> > > ago, right?
> > > 
> > >         https://lore.kernel.org/all/20231129205122.3464299-1-matthew.s.atwood@intel.com/
> > > 
> > > Even though it's been a long time, it would still be a good idea to
> > > include a patch changelog so that it's clear what's been changed and
> > > what review feedback was/wasn't incorporated.
> > Sorry, I will include it if theres another version
> > > 
> > > I'm also wondering if we should be thinking about moving i915 to use
> > > 'struct regmap_range' and existing functions like regmap_reg_in_ranges()
> > > rather than maintaining our own i915-specific versions of the logic.
> > > regmap in general does a bunch of other stuff that isn't relevant to
> > > i915, but it seems like we might be able to re-use the type definitions
> > > and basic lookups to avoid reinventing the wheel.
> > This is doable but just requires a rewrite of the current implementation
> > as it's not a 1:1 conversion.
> 
> The idea is that we'd eliminate 'struct i915_range' and related
> functions and just use the regmap types and functions instead.  It looks
> like the main difference is that the regmap lists are size-based, while
> our lists use a sentinel to mark the end of the table.
> 
> Although I did just notice that even the basic types and helpers for
> regmap rely on CONFIG_REGMAP, so that might be an argument against
> switching over since we'd need to add an extra kconfig dependency, and
> most of what it brings in isn't useful to us.  But probably more
> something for Rodrigo and the other maintainers to weigh in on.

Cc: all other maintainers.

I could easily be convinced either way.

I like the idea of reusing something existing and this helper and struct
does fit to our needs.
I don't mind having to include another config dependency here.
The part that is not good is to bring a lot more than we need :/

Perhaps the really right thing to do there would be to split regmap
into a generic map part and the support to the other different bus stuff.
Then we start using the generic part.

> 
> 
> Matt
> 
> > > 
> > > > 
> > > > Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/Makefile               |  1 +
> > > >  drivers/gpu/drm/i915/gt/intel_workarounds.c |  1 +
> > > >  drivers/gpu/drm/i915/i915_mmio_range.c      | 18 +++++++++
> > > >  drivers/gpu/drm/i915/i915_mmio_range.h      | 19 +++++++++
> > > >  drivers/gpu/drm/i915/i915_perf.c            | 45 ++++++++-------------
> > > >  drivers/gpu/drm/i915/intel_uncore.c         |  1 +
> > > >  drivers/gpu/drm/i915/intel_uncore.h         |  6 ---
> > > >  7 files changed, 57 insertions(+), 34 deletions(-)
> > > >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.c
> > > >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.h
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > > > index 78a45a6681df..e5819c4320bf 100644
> > > > --- a/drivers/gpu/drm/i915/Makefile
> > > > +++ b/drivers/gpu/drm/i915/Makefile
> > > > @@ -26,6 +26,7 @@ i915-y += \
> > > >  	i915_ioctl.o \
> > > >  	i915_irq.o \
> > > >  	i915_mitigations.o \
> > > > +	i915_mmio_range.o \
> > > >  	i915_module.o \
> > > >  	i915_params.o \
> > > >  	i915_pci.o \
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > index 7d486dfa2fc1..a3c08bde9b2e 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > @@ -5,6 +5,7 @@
> > > >  
> > > >  #include "i915_drv.h"
> > > >  #include "i915_reg.h"
> > > > +#include "i915_mmio_range.h"
> > > >  #include "intel_context.h"
> > > >  #include "intel_engine_pm.h"
> > > >  #include "intel_engine_regs.h"
> > > > diff --git a/drivers/gpu/drm/i915/i915_mmio_range.c b/drivers/gpu/drm/i915/i915_mmio_range.c
> > > > new file mode 100644
> > > > index 000000000000..c5484b16e28a
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/i915/i915_mmio_range.c
> > > > @@ -0,0 +1,18 @@
> > > > +// SPDX-License-Identifier: MIT
> > > > +/*
> > > > + * Copyright © 2025 Intel Corporation
> > > > + */
> > > > +
> > > > +#include "i915_mmio_range.h"
> > > > +
> > > > +bool reg_in_i915_range_table(u32 addr, const struct i915_range *table)
> > > 
> > > I think some of the feedback about function naming from the previous
> > > version was overlooked.  If we have a file i915_foo.c, then the general
> > > expectation is that the non-static function names should be
> > > i915_foo_*().  In this case, it means that functions you expose here
> > > should probably start with an "i915_mmio_range_" prefix.  So maybe
> > > something like "i915_mmio_range_table_contains()" would be a better
> > > choice.
> > Ah, the initial feedback I got from Rodrigo was that the original
> > function name could give the impression a function was more generic then
> > it actually was. The name I chose her was getting the struct name
> > (i915_range) into the function name. I can easily change the name
> > depending on what the community wants. 
> > 
> > MattA
> > > 
> > > Our existing code isn't entirely consistent about following this rule
> > > (especially for i915 which has a lot of historical baggage), but we try
> > > to follow it when writing new code.

My bad on that. But yeap, let's try to be a bit consistent now and not
get inspired in the bad examples. The file-name is a component name
and should be used as prefix on the rest. My bad, sorry.

Thanks,
Rodrigo.

> > > 
> > > 
> > > Matt
> > > 
> > > > +{
> > > > +	while (table->start || table->end) {
> > > > +		if (addr >= table->start && addr <= table->end)
> > > > +			return true;
> > > > +
> > > > +		table++;
> > > > +	}
> > > > +
> > > > +	return false;
> > > > +}
> > > > diff --git a/drivers/gpu/drm/i915/i915_mmio_range.h b/drivers/gpu/drm/i915/i915_mmio_range.h
> > > > new file mode 100644
> > > > index 000000000000..c3c477a8a0c1
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/i915/i915_mmio_range.h
> > > > @@ -0,0 +1,19 @@
> > > > +/* SPDX-License-Identifier: MIT */
> > > > +/*
> > > > + * Copyright © 2025 Intel Corporation
> > > > + */
> > > > +
> > > > +#ifndef __I915_MMIO_RANGE_H__
> > > > +#define __I915_MMIO_RANGE_H__
> > > > +
> > > > +#include <linux/types.h>
> > > > +
> > > > +/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> > > > +struct i915_range {
> > > > +	u32 start;
> > > > +	u32 end;
> > > > +};
> > > > +
> > > > +bool reg_in_i915_range_table(u32 addr, const struct i915_range *table);
> > > > +
> > > > +#endif /* __I915_MMIO_RANGE_H__ */
> > > > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > > > index 1658f1246c6f..b319398d7df1 100644
> > > > --- a/drivers/gpu/drm/i915/i915_perf.c
> > > > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > > > @@ -219,6 +219,7 @@
> > > >  #include "i915_perf.h"
> > > >  #include "i915_perf_oa_regs.h"
> > > >  #include "i915_reg.h"
> > > > +#include "i915_mmio_range.h"
> > > >  
> > > >  /* HW requires this to be a power of two, between 128k and 16M, though driver
> > > >   * is currently generally designed assuming the largest 16M size is used such
> > > > @@ -4320,18 +4321,6 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
> > > >  	return false;
> > > >  }
> > > >  
> > > > -static bool reg_in_range_table(u32 addr, const struct i915_range *table)
> > > > -{
> > > > -	while (table->start || table->end) {
> > > > -		if (addr >= table->start && addr <= table->end)
> > > > -			return true;
> > > > -
> > > > -		table++;
> > > > -	}
> > > > -
> > > > -	return false;
> > > > -}
> > > > -
> > > >  #define REG_EQUAL(addr, mmio) \
> > > >  	((addr) == i915_mmio_reg_offset(mmio))
> > > >  
> > > > @@ -4421,61 +4410,61 @@ static const struct i915_range mtl_oa_mux_regs[] = {
> > > >  
> > > >  static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> > > >  {
> > > > -	return reg_in_range_table(addr, gen7_oa_b_counters);
> > > > +	return reg_in_i915_range_table(addr, gen7_oa_b_counters);
> > > >  }
> > > >  
> > > >  static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > > >  {
> > > > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > > > -		reg_in_range_table(addr, gen8_oa_mux_regs);
> > > > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > > > +		reg_in_i915_range_table(addr, gen8_oa_mux_regs);
> > > >  }
> > > >  
> > > >  static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > > >  {
> > > > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > > > -		reg_in_range_table(addr, gen8_oa_mux_regs) ||
> > > > -		reg_in_range_table(addr, gen11_oa_mux_regs);
> > > > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > > > +		reg_in_i915_range_table(addr, gen8_oa_mux_regs) ||
> > > > +		reg_in_i915_range_table(addr, gen11_oa_mux_regs);
> > > >  }
> > > >  
> > > >  static bool hsw_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > > >  {
> > > > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > > > -		reg_in_range_table(addr, hsw_oa_mux_regs);
> > > > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > > > +		reg_in_i915_range_table(addr, hsw_oa_mux_regs);
> > > >  }
> > > >  
> > > >  static bool chv_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > > >  {
> > > > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > > > -		reg_in_range_table(addr, chv_oa_mux_regs);
> > > > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > > > +		reg_in_i915_range_table(addr, chv_oa_mux_regs);
> > > >  }
> > > >  
> > > >  static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> > > >  {
> > > > -	return reg_in_range_table(addr, gen12_oa_b_counters);
> > > > +	return reg_in_i915_range_table(addr, gen12_oa_b_counters);
> > > >  }
> > > >  
> > > >  static bool mtl_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
> > > >  {
> > > >  	if (HAS_OAM(perf->i915) &&
> > > >  	    GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> > > > -		return reg_in_range_table(addr, mtl_oam_b_counters);
> > > > +		return reg_in_i915_range_table(addr, mtl_oam_b_counters);
> > > >  
> > > >  	return false;
> > > >  }
> > > >  
> > > >  static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> > > >  {
> > > > -	return reg_in_range_table(addr, xehp_oa_b_counters) ||
> > > > -		reg_in_range_table(addr, gen12_oa_b_counters) ||
> > > > +	return reg_in_i915_range_table(addr, xehp_oa_b_counters) ||
> > > > +		reg_in_i915_range_table(addr, gen12_oa_b_counters) ||
> > > >  		mtl_is_valid_oam_b_counter_addr(perf, addr);
> > > >  }
> > > >  
> > > >  static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > > >  {
> > > >  	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> > > > -		return reg_in_range_table(addr, mtl_oa_mux_regs);
> > > > +		return reg_in_i915_range_table(addr, mtl_oa_mux_regs);
> > > >  	else
> > > > -		return reg_in_range_table(addr, gen12_oa_mux_regs);
> > > > +		return reg_in_i915_range_table(addr, gen12_oa_mux_regs);
> > > >  }
> > > >  
> > > >  static u32 mask_reg_value(u32 reg, u32 val)
> > > > diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> > > > index 8cb59f8d1f4c..aea81e41d6dd 100644
> > > > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > > > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > > > @@ -35,6 +35,7 @@
> > > >  #include "i915_reg.h"
> > > >  #include "i915_vgpu.h"
> > > >  #include "i915_wait_util.h"
> > > > +#include "i915_mmio_range.h"
> > > >  #include "intel_uncore_trace.h"
> > > >  
> > > >  #define FORCEWAKE_ACK_TIMEOUT_MS 50
> > > > diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> > > > index 6048b99b96cb..6df624afab30 100644
> > > > --- a/drivers/gpu/drm/i915/intel_uncore.h
> > > > +++ b/drivers/gpu/drm/i915/intel_uncore.h
> > > > @@ -123,12 +123,6 @@ struct intel_forcewake_range {
> > > >  	enum forcewake_domains domains;
> > > >  };
> > > >  
> > > > -/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> > > > -struct i915_range {
> > > > -	u32 start;
> > > > -	u32 end;
> > > > -};
> > > > -
> > > >  struct intel_uncore {
> > > >  	void __iomem *regs;
> > > >  
> > > > -- 
> > > > 2.51.0
> > > > 
> > > 
> > > -- 
> > > Matt Roper
> > > Graphics Software Engineer
> > > Linux GPU Platform Enablement
> > > Intel Corporation
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
