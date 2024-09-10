Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F753973C82
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 17:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18AF10E85E;
	Tue, 10 Sep 2024 15:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ReiDdUWI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE21A10E85E;
 Tue, 10 Sep 2024 15:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725983004; x=1757519004;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=dfDZYYQGb/imT9aatr/vpI6XvHZWzm3LLYIir9pFEB8=;
 b=ReiDdUWI1Klc0FaWEgpGh0byBduaSi6Hqsv6SmUArai1YIbg0GN9tV6R
 zxoNCM1ZYtFkAmdOFRMx5tcMVrPWlEBH4K1GzID6A4SooLGPSz2lSfAIx
 Art8uO7W96t7kW9BVN52yYjNqIdKsaY7tuVGQawbu+NgEmQgyT6VXcGP4
 lOAomSeGQNvkdJaxs8EMwaTa4+9mxWpm2OzYdQ6BZsdUe8w9eiLmIFwEE
 YQnkF7DFy1Uniwm7DDgVx4WaawVoXN0FMCTUo1EyqWkxc3Ue6Q39S8nFZ
 DA6NJumghYfcW3OAl2G5ypAFhdjdjaBK76/5yl4iZsb5DDgbUW5S+NCWY A==;
X-CSE-ConnectionGUID: Osze17J1QVqW2rDxGPD6aQ==
X-CSE-MsgGUID: XYCy+CWvTayv4DNClDrx4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="28476955"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="28476955"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 08:43:24 -0700
X-CSE-ConnectionGUID: 3LIdIYhTRpm+0GGahgQY6A==
X-CSE-MsgGUID: 7vtRV3BOSO6FQZ4J/UKEbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="66785536"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 08:43:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 08:43:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 08:43:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 08:43:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lII7nX9I9YAMqVCDnX+AsQN+velMd4+ioo0JtktJw/ollCiAGkvJypBBEikOoGdZLK4X/oGCh5EtVxNk/2bVKsJZDFzu053/ktLousApXe+ky/SmDsPkS6NjFQCGIYWS4Ei+Xu3M3GTzTu94sNkIH1mGBVfY5kCZPWZs0IXy/c3Wn29/ydjq0+M0T23OKsP2C9Zne1lsjVfoA2UbOyw/eyg29PPRBln8wQxQgabeAsLlZP7ppzpi6hJ9WUHbSlF6xNTTcZcTnsSVxheEqJydLvgSt5z7zTemfZgkqYKjtheshby1Y59uY1bMKp1f9+Rlun9GJje9RFhF1hp10fjnyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yyLC5FwkiUtGHZlI/nyuFwh9N+KIfAAO8jK0dBGSAQI=;
 b=Hkxz4NC8qIVuJhnyrwx7yI2NPfNT4f3YHKL9yBLvIdGidFMdcYQchnUuu0qeoQrhHaC4cZYOB2SKRx86NbnFCBIKP6mlHDSy3T8ZPtcvAnlVgRzXu/Q/aEuBqkXP+8k5pLTTryiw5zjSlHMNa3Tu3NTh5LWm0nX0PiaiVmbDkeYXKVxSBHuxajGXZ7xVCQng9lZYXIsjl+LgbrkblotDvleudAMIxH9txa0dFyU3TzLl4FjbAjI5Zghk0qT0Mz3GhZ7gbTrqhAjqru5Z+2AjAxbDuNJjTezrzVM/z6eqEMTb0ACCYCuI0jxiqmSXb2oQwi/sqYYqPizZrNoTleCC+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS7PR11MB6013.namprd11.prod.outlook.com (2603:10b6:8:70::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.21; Tue, 10 Sep
 2024 15:43:17 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 15:43:17 +0000
Date: Tue, 10 Sep 2024 10:43:05 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Daniele Ceraolo Spurio
 <daniele.ceraolospurio@intel.com>, Tejas Upadhyay <tejas.upadhyay@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, "Alan
 Previn" <alan.previn.teres.alexis@intel.com>, Tomas Winkler
 <tomas.winkler@intel.com>, Alexander Usyskin <alexander.usyskin@intel.com>
Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Message-ID: <3zgu3edmrjum2rbhu7tv5xo7xans2uper7qn3lswca3nsc4tdl@gevqfr65js4g>
References: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
 <ZuBfwqpIX4HAGwb1@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZuBfwqpIX4HAGwb1@intel.com>
X-ClientProxiedBy: YQBPR0101CA0051.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00:1::28) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS7PR11MB6013:EE_
X-MS-Office365-Filtering-Correlation-Id: a71c662b-3e2d-4067-b6b1-08dcd1af49db
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?ptv8vAwLM+y2iDFhKSXCAlfPiPf0aMSBii/AQjgeQ1MbkOTOphDnxZQj43?=
 =?iso-8859-1?Q?wdt/JSrVK8NctdyEwP0+dCxzC/qftajKvTGzSCJ8JL9gyFWPqIukBTAoVL?=
 =?iso-8859-1?Q?u9BOnKtHLE3uQE+JclM15dAaAUqaeJX1rQY1ly79rnCMCyJiOPJoQ4fXj5?=
 =?iso-8859-1?Q?+BWe05EQj9xmdX4tvLGZlkGM3iJnbEf7NELgJvRgwt/Yv45hvQbht7WhFj?=
 =?iso-8859-1?Q?CbjXOgG1KYf+hncz2VfbCDRXb2pWYvSb+19gzSjCvt2l5SR4ud3muOZNPa?=
 =?iso-8859-1?Q?eaECOdHnEVwOYI8VrtmvB9UYIdxyh38badLaXGUpF/4NRHEkU4ovqdlQ8V?=
 =?iso-8859-1?Q?8VJCvZfkwPx8kXM3A308aKj3tb1aT/mW5op7rqceIpKpvcmj/cIUXEzuI/?=
 =?iso-8859-1?Q?LScFAh/lNf/boxXrzCFm6eV7SYQnZ/WjWNUVp9JPHkZF/SJKGthz57JYw6?=
 =?iso-8859-1?Q?4Bj9AOFC6mjN+PMK9jhggWh12jJMf2z8mHeRnfdaPz8M9uTkERjli5MBXe?=
 =?iso-8859-1?Q?Az1EXq9Vyw8Ogk+bW103xKgHw2h9SqKAutQQS4LIfMpJMSL1KoAOYgopm7?=
 =?iso-8859-1?Q?rQ6wmWTYs+f7Tm5XzeemLzIZ4/safEQXSOVMK33fxBiocVUW9TMIO5OuD7?=
 =?iso-8859-1?Q?DkJUo79Slu5qeUuDOo11HBXf75u4EaDwNAz4QTh8xY+RXY45smLUQu8SR3?=
 =?iso-8859-1?Q?Ty/ufgGXNaC9cFsV6Lfr7phbpZOuvppXCkFcQZP0WvheRzloRwIWyeVOg+?=
 =?iso-8859-1?Q?KMEWRTdxQkSrCLHPtKKrppZMaCxGkiTES6lmNXfp7dqSmpYhpNdEBdVFc0?=
 =?iso-8859-1?Q?gV2Rrg4EkESVGJ9YhHYnFEHv8jbdU7xOz2kZamhPQ7Rz5QXnaiQ8UqgmEc?=
 =?iso-8859-1?Q?srcz05FM1LXAPKR14C3ff+tZ19OZ35cDP0mmgst0in077L7bwpqMWVuY1v?=
 =?iso-8859-1?Q?r9rJWFrbjFxnak1x3rp+JkQKEBhoEDVXFZYO3o75cfN3L41dPIWcZqq2D+?=
 =?iso-8859-1?Q?zNQFVqgzLCjSknTXcET6bFVDgXOViIiEBXUtC8gGagXPu/UVwbFraK8Vu0?=
 =?iso-8859-1?Q?5ti5cX2j62lpcVbAbmWAxssuCqBW2BzAITMc09fSp0MWZAPk0GC6Y5QfEd?=
 =?iso-8859-1?Q?04GHnGlX0wgyw01ApjrMXJDIzat9Yo61aQ51OKxjYOS4CPBHMLH5BLJNFV?=
 =?iso-8859-1?Q?+/p1r15sGZc3nbOLESlQPoM8sfl7r3v7f7Fgeb7qhG0VtP5YZ4pMLZ2dMh?=
 =?iso-8859-1?Q?0Ufz08gKdW75DiLhSTdQCc37C4zkxgxV2jeMe15d/eEowv/V4K6TLnwRy+?=
 =?iso-8859-1?Q?/PGIWCFUqm+F0xwTJwZiyFznXRVGwo8OH9Du0gOzMg9b/aORct5qURfn+4?=
 =?iso-8859-1?Q?ghLQZ0DcKX3IEgE5quUsz/TNDOlWqUnw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?skknxGN3uHFYGAh/MFgj2XVRHrKPdBW/uWvVwXTfl/VvWiAWQoTPAiMsKE?=
 =?iso-8859-1?Q?SYoyXDWNdmRNiWctt5jQqgT+VvZn5/X5zfJ7lw4U19kEncvbyJTsjfbuLp?=
 =?iso-8859-1?Q?O8ua9LhKY282MVLNcZiyLhrOYZ3bZw3PfRHCYMa75FFFxKpEktOEDgcX5U?=
 =?iso-8859-1?Q?+3VOfMhuv8bSxy206tM332OY+0awcoxPoW0144rRhBNsvhsfgGKMeNwo3d?=
 =?iso-8859-1?Q?sE45MAv6BAtcoQQLqF681BM5rdKVuvbHHNJS/NE4iZf+a+c1QIpG9NjEgp?=
 =?iso-8859-1?Q?c5QLUHiLBQ1s0fJjq6LZb/lYvECTbxVickkNGtZi1/RM/8wyEbQhdZoMkc?=
 =?iso-8859-1?Q?UisbCnJ1MjFy4BOHmjnD5pMGiJaMKqWsIhuFO12X9OP467vSEmKaqEB5ph?=
 =?iso-8859-1?Q?MAIE8MWSPkEUqzX3b/Vum5VUhAfO832SSmjxMibAIhKFqgK1o6oNVG1DX7?=
 =?iso-8859-1?Q?1LLD5cm8EGQIRS+M+BWDgvZUr1Ugj5x8WGLhkT33qBAAoRcbjJ5X6w9Pgc?=
 =?iso-8859-1?Q?7ySVe5wDshELghdymY7+mPDK6eIUgELTUTFSIBJ7vdfNb1qqTnxNtpLsh8?=
 =?iso-8859-1?Q?0tnalygHu+X5XJWTpQ0a9FkSrrGBIUgjO5nSX75hk1Z5yrtyV87B22Y3vW?=
 =?iso-8859-1?Q?qK5FTp0MBKlqbGqLZx92mkH6iNZ3JL2V5fXxi2CXo2te/vLmYcBu2kaNkw?=
 =?iso-8859-1?Q?oTKI2aX6ORhYiTH91MAmYpI8b/6aYax52MDPeOdHVt5i++Jw4KIcLYGcDA?=
 =?iso-8859-1?Q?0xjhOY16f25R/yc5Dvk/H62k0iaTE6Ao4c99bo+/ChT1BxGcvmMcu3w9w0?=
 =?iso-8859-1?Q?6vaITBdgLJ0zJxNIqIoXlFv9H8pz4r/L2XH43dEYAblwu7zJyIoiyWgxGj?=
 =?iso-8859-1?Q?J3RPaXdZ4FL/3Ysm8Z0yxq5bhGSGnNe+u2lSr0LsKmMUpmMimG+4voncjS?=
 =?iso-8859-1?Q?j+kS5mxuqbFzKgnJzZm5BgEk8rUEDjKm+k6bsk8qnmDXnfQmAKVP+jAYiz?=
 =?iso-8859-1?Q?HYjXoLUx08z/PC/ZRrCsK3+Fn2xwZulrqInJyIyHbhYOKJUJWYy+rO3O1x?=
 =?iso-8859-1?Q?5Zx/Sd2SsST9w0P5t7Xm8hFoLOR1JlWSAcN79Z7VWd0CNbKLdl7mX4nPWV?=
 =?iso-8859-1?Q?nJ5eeU7QInpxe/9hRS+lK1/5C1YV885Ky8Gs/kZ8dbGA6DQr7QJTg3XvG0?=
 =?iso-8859-1?Q?XIARgRsafVn/go1/++e5L9ceGoY7qRKK2eQTy3Uk1RVPusIzq+j3Ws5oFv?=
 =?iso-8859-1?Q?lxVgXE2QcK1PXNKB2XN4mWvjt1jrxbMSitkTtnqz3envKmbrv5pMV0sy8k?=
 =?iso-8859-1?Q?UaYS1IWN85KcBlIIN7cSdrmO6KDOX6st8xkePKN7KbNfgu59sUcOuJAdCs?=
 =?iso-8859-1?Q?8vKp74AAT5n0wrlqo10tBHKhsO9Aa2E24F70wXWH4zcQDtLf//z+23uyyb?=
 =?iso-8859-1?Q?F2UHRuN8kbxcFEW8+SNtc0ELNwGkJSdHoSMYqZ3r+BVXkQVQ95lt+82QF7?=
 =?iso-8859-1?Q?hCczAwHZ0CyiE4rJSE90Wyf2BRGUyOOTajIJY2AdkbnmEXJScLlGwfsv86?=
 =?iso-8859-1?Q?900vSq18E075j6bWiMbiio5yUeglJTZj/68EyBOt5HfaynF3eYgeEoOxnS?=
 =?iso-8859-1?Q?vlOmdOqA6XLIdyRFzihKYnMvgNBYMoXYWz75X4Vhs3vxamTKDM+cEtYg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a71c662b-3e2d-4067-b6b1-08dcd1af49db
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 15:43:17.0894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z7ERFzKP/bPDoA9g+nXZfkI0ZTy6n2OD1joedSWauZuKWjOMKs/TBLi5yMgT+iAgVO2uw4Ug4isold7N50+QxG5+I4cTmExf6CLrseMzryU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6013
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

On Tue, Sep 10, 2024 at 11:03:30AM GMT, Rodrigo Vivi wrote:
>On Mon, Sep 09, 2024 at 09:33:17AM +0530, Bommu Krishnaiah wrote:
>> This update addresses the unload/reload sequence of MEI modules in relation to
>> the i915/Xe graphics driver. On platforms where the MEI hardware is integrated
>> with the graphics device (e.g., DG2/BMG), the i915/xe driver is depend on the MEI
>> modules. Conversely, on newer platforms like MTL and LNL, where the MEI hardware
>> is separate, this dependency does not exist.
>>
>> The changes introduced ensure that MEI modules are unloaded and reloaded in the
>> correct order based on platform-specific dependencies. This is achieved by adding
>> a MODULE_SOFTDEP directive to the i915 and Xe module code.


can you explain what causes the modules to be loaded today? Also, is
this to fix anything related to *loading* order or just unload?

>>
>> These changes enhance the robustness of MEI module handling across different hardware
>> platforms, ensuring that the i915/Xe driver can be cleanly unloaded and reloaded
>> without issues.
>>
>> v2: updated commit message
>>
>> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_module.c | 2 ++
>>  drivers/gpu/drm/xe/xe_module.c     | 2 ++
>>  2 files changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
>> index 65acd7bf75d0..2ad079ad35db 100644
>> --- a/drivers/gpu/drm/i915/i915_module.c
>> +++ b/drivers/gpu/drm/i915/i915_module.c
>> @@ -75,6 +75,8 @@ static const struct {
>>  };
>>  static int init_progress;
>>
>> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
>> +
>>  static int __init i915_init(void)
>>  {
>>  	int err, i;
>> diff --git a/drivers/gpu/drm/xe/xe_module.c b/drivers/gpu/drm/xe/xe_module.c
>> index bfc3deebdaa2..5633ea1841b7 100644
>> --- a/drivers/gpu/drm/xe/xe_module.c
>> +++ b/drivers/gpu/drm/xe/xe_module.c
>> @@ -127,6 +127,8 @@ static void xe_call_exit_func(unsigned int i)
>>  	init_funcs[i].exit();
>>  }
>>
>> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
>
>I'm honestly not very comfortable with this.
>
>1. This is not true for every device supported by these modules.
>2. This is not true for every (and the most basic) functionality of these drivers.
>
>Shouldn't this be done in the the mei side?

I don't think it's possible to do from the mei side. Would mei depend on
both xe and i915 (and thus cause both to be loaded regardless of the
platform?). For a runtime dependency like this that depends on the
platform, I think the best way would be a weakdep + either a request_module()
or something else that causes the module to load (is that what comp_* is
doing today?)

>
>Couldn't at probe we identify the need of them and if needed we return -EPROBE to
>attempt a retry after the mei drivers were probed?

I'm not sure this is fixing anything for probe. I think we already wait on
the other component to be ready without blocking the rest of the driver
functionality.

A weakdep wouldn't cause the module to be loaded where it's not needed,
but need some clarification if this is trying to fix anything
load-related or just unload.

Lucas De Marchi

>
>Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>Cc: Tomas Winkler <tomas.winkler@intel.com>
>Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>Cc: Tvrtko Ursulin <tursulin@ursulin.net>
>
>> +
>>  static int __init xe_init(void)
>>  {
>>  	int err, i;
>> --
>> 2.25.1
>>
