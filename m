Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE41A1A5E5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 15:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9DE10E827;
	Thu, 23 Jan 2025 14:41:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MbKq7E+k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615B910E826;
 Thu, 23 Jan 2025 14:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737643301; x=1769179301;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=P/5RJMkBJAEsBOEMEeGFFxIDH+MSaV7xEZNr/U7OsqE=;
 b=MbKq7E+kBSeklM3ZpB42aWCwyNdHfla8+wmRtqe44rMLTxcMiL6SkqEg
 YaqlmzogNr1Npw++OpgdTPiKXNNu6uvf+drYZJXKC2vuSyeasLK+3B1e0
 GrQGeZguZNnzpn97lKNP1Dq+MsTJdYNRX33RRjtBqY1L5tsCcrzcw6o5a
 qyv4qDsVSzuoFdsf7bFb1Gj/Eq86+pJgAwgQBFByqCcHNXFzz+Fkz6xbw
 ByeV6kvxmKR2fvwV8wjmQgNQkgOx3uXw6h+wEmDtxazjqRZ99omsVhE6Y
 bNBkfk8x589bEIe3haSFPI1rijXiBGaL54FDkl0CaR+BVOROrZdOWwIAC A==;
X-CSE-ConnectionGUID: 4N6Y9buxRxCDrQpQkFCmIw==
X-CSE-MsgGUID: xQp69oo+TEmenHHCtVQKlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="41808557"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="41808557"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 06:41:40 -0800
X-CSE-ConnectionGUID: B2k1ZCu9SbGgMu25Er+d0w==
X-CSE-MsgGUID: KCy3yMKyRpuTKxwvPKMeOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="107588425"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 06:41:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 06:41:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 06:41:39 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 06:41:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PtdRxxYir+KGAuY+hNWre3/H1yOjCEqwcs+4MsuNf1PRgWDFEakYKizvuYHEClZol4azCB9HGbtwyrIMjMDlL0jnIlsRaMUz4pz8hbs+IdOdq26VZbhxPACMnkrZNn2UjDP3MYhjaPRBnFIftwZCrtfwk5uDIu1P1C9OfakwMtwbYsiuIW1IJYaPEtcJZfyLhporQwLZ39Kto25Oholuyz0irNOYnoU0DCFVEJZoqJSJNf3waHLHqerTiu/t/9dipuo6GsBmMLNTbhp4eAMzh8VZ1dhHO9WTgwdpl3OYp3jYzt7Ay4Rpwh9vCIt3/67xqL4BM33SV3mHKxMfMz4atg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gh3HtCOiaDI2IJNz9ckcN8DgbTOkrFnsMMtWfzPElaA=;
 b=O1zURFXNQbgLJISobCxQFbKF5J/aWnU5uEQ0H0Habp/LEud/Ms/gHuuzymvT7wq68hxyGKH979PNSSZvtSKo2jLo94Xho3QyDGa7gUL8jjC2oBP9tmmQjxKSpVNnXwaJCWxOo2f8hduQcCiq0gsWejqkg9vcACW7G7s8vrb7Q6cN5rJdKfGEn7Jk2KFdS2jhzt56xpaaxQBvVP2Rhg3l52PXd92ywOeqQ+zu97S6qlaA7g8WmH/G3ttmqGigZWLfTw1WwBfdwwrhgXMy+9QnzI3mpnnj34DnRU19baGK5DEV2aw9aF97pHdPHA3u75Ge00R3PzZbTk7M+19UUBVPww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB8808.namprd11.prod.outlook.com (2603:10b6:8:257::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Thu, 23 Jan
 2025 14:41:23 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 14:41:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <56e59e5c283bf749c8c047efc5f36d91459fae17.camel@coelho.fi>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-3-gustavo.sousa@intel.com>
 <56e59e5c283bf749c8c047efc5f36d91459fae17.camel@coelho.fi>
Subject: Re: [PATCH 2/4] drm/i915/dmc_wl: Add debugfs for untracked offsets
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 23 Jan 2025 11:41:16 -0300
Message-ID: <173764327664.34727.14226347289032890419@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0006.namprd03.prod.outlook.com
 (2603:10b6:303:8f::11) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB8808:EE_
X-MS-Office365-Filtering-Correlation-Id: d444703d-b525-4bb7-d71d-08dd3bbc0195
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZVk3V0N4akhheHRRc2JYMUV5ZXlxdmM2dC9QN2dMRnpVWjJlTHU1M0pDWW1s?=
 =?utf-8?B?Z2NJYWNYbVNHaTZMbWZQNm84VWw5S1JaUHUzVmJBclJNNElrclJXKzlkMnhO?=
 =?utf-8?B?TmNYeXlQQzkzK2ZxS0RQZi82dXU1YmJkdVhZckdRTVAxVUJNaFNtNTVSRUox?=
 =?utf-8?B?ZEZRY3lpSnZxR2FNVFJEdGNFM1hlMjBjSGYxMWlYa3RueXlRVm8wOFNLLzFx?=
 =?utf-8?B?L3NsVmN3V0UxR0Qwc3gvajhmK1lLbmFnSGxzU1A5aGlnVGlvWFNhTk90Z2Va?=
 =?utf-8?B?Qm5QV1dOSnl4MTRITEQ0VHVqTVRKZTVxOW43cktGR3V0UDROc3BYZEgxUFFI?=
 =?utf-8?B?Tk9jY3RUZ1VVbUdROHhaYXUvUnYrS0V6ZnpjcXhlQ1M1T0pQTkhKbUIrNmdE?=
 =?utf-8?B?aCtBeVFvMmR1aWFwaGpQY3BITi8vdC9tV0RNVXY0ZU9ONHdiRjZYUmcyalJT?=
 =?utf-8?B?Y0VNcURzV0Z2N2xCWURmSndKb2FKMFVLZEtTNzdxUWtEOENZVkdXRkpxU01H?=
 =?utf-8?B?Q3pmYVJzWGV5cXViT0o4RjgzcXFoYUhrazJaNk94azFkSWZUdHZqbDR5ejFH?=
 =?utf-8?B?ekNBUFB5TnhobENLNHZ3Tk1mSTNWYzBuL1VxRTBKT0xXSmdFdHdrSk9ScHhH?=
 =?utf-8?B?VXByL2tUV2YrWCtTWVFRYnMxZ0xxOWw3dktna1dFbGJMaERFUlVmUHBrMW1L?=
 =?utf-8?B?NVhabGY3cUY5SEV2K2NZdm0xNW5XVVRmRUxmMGZqZllnMEN2MDEyRmdQa1gy?=
 =?utf-8?B?SGpWOXErbk5HTUdhSmNRSEpFbVplYkVHeW9EdVhhb2x3T0ZwR0xrdmdCYSsw?=
 =?utf-8?B?YVFTMlJWdHI2QlEyT3daa3R5Z3VJS3NXWE1odEtzVE1lQ0grT2paenlyOVJq?=
 =?utf-8?B?a1hwSmZJZUlIbllxdGFOUDZmUEk4SFJmTzZLUE1pbzdJUHFwN2pvV3hEVWRj?=
 =?utf-8?B?VW5JQ0x1Qm5ZeWJNUGQrc2JsVklpalkrMThXRjhOYXd1bnZNQUhhblNsMGNv?=
 =?utf-8?B?T09pUm5QSFk4bWlBUTFBeWNFWDNPQ01EVG0ySmwvK3pLTmx5em1vVWtRVkdD?=
 =?utf-8?B?UFJLejJ1RnJ6SW8weUVMRG12dXo2MEJTNnMvQTZHRWNFQXJvZTlPRTE0MWU2?=
 =?utf-8?B?bjk5RkljdkhxRUtTTjRiUFo3RmlIWXNZMmQ0Q3hZSHdjb3dKOEVHZ0ltRlpI?=
 =?utf-8?B?Y0ZuRDhnVVZBRHdzeURWNWhwaTAwRWNqOW03Z2tpaEVUaG1OVXdSM2dxQUZM?=
 =?utf-8?B?VzRESllFdUtQdEl1ZnE0ZUdQSFZ3Vi81cUFQbUFBVnk2M0syeDk3ZGpsQTNw?=
 =?utf-8?B?aGpjWkxrd2I3aHNuSVc1OFQ3Q2I2T3ppU21pbEkrbEtzWkxJNHR4RGlMSVNw?=
 =?utf-8?B?NUlhUjQwTzQ5bmpyRlpkRjVFTEZMNnhOWmVOWDZwemFHTDQ0cEd1dy90YTRM?=
 =?utf-8?B?bHdPem9NQ0hKYmQ3WG5CZUkrZExnUDZ5UDMwMkJJeUdobElJK2xqTjIxSmFM?=
 =?utf-8?B?L0V2Y0VDdVVDZ0dtUy9taGZwMjhyc0lpVWdRa05VVk5reWdUbkNVVXBYVXgr?=
 =?utf-8?B?anY5N0tzekRvam9scUNTa2doT2hYQU9GVGZzTjE2QWhOdC9DQXFvVTV3TWZG?=
 =?utf-8?B?d09YbksyWFNRWGY3WDRGcEVBRkJmR1JLZEVBeS80b1l1WU9mNUd5eVRNMTlK?=
 =?utf-8?B?Qk96dURlU3M1c1BNMDNOUDVHZUJqZTV4bUFONkdOU1pWNlhYcWVJN1RIS1V0?=
 =?utf-8?B?azVmWXFOWWp6VERrRHZpYVBXZjRndEIzcHNMMWtFVlR2OW5XWHIvN3I3Z0hx?=
 =?utf-8?B?UnZ4SGJPUjhaYWNHKzRpajhrZG8yYjQ1RUkxdnQvYm5XelVQNllsTng5ZmRF?=
 =?utf-8?Q?q3vRS520dAsM1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnVLZFlzeGtzaWpuOHlqSkxRNE4xYVVZa0lLaWVFbkU0MVVadDJFRGlQZjFa?=
 =?utf-8?B?bmEzUDUyQjRpdzR5MWFmRXdKZ3hnc3lrQWJ2UWFqeDhkc0JsbDIxUERUdjcx?=
 =?utf-8?B?VDkzMEoyekFSTlhyZ2VZRUNkajFrU09jcUZ2MWc3SUZFblpKdFVGajlzQmM2?=
 =?utf-8?B?UWVvV3UwNkhLT3FwOUszcHp0Z3VjQ1BFMGVLWjh1UmFadjFxVEkxcnF6N1Zj?=
 =?utf-8?B?aTEyVUZKc25EVlBsekR0eHRwWVVUd2dpWUxyWXUvQXpuUnBUZWFiK2Q2UnlJ?=
 =?utf-8?B?S3BWNXFGQ3dhREppYloyR2Z2aVNIMjlBS292d3RFM2NERngrL1lkdEw2NUhR?=
 =?utf-8?B?Q3R0OGdkZkJUUS8renZZTUI2d0QzbmZ3MkJzODk4V3RyVkZza0Z1Qnk5dS96?=
 =?utf-8?B?NlFLRVBGcHJOcndUVUdBaUpPdUtnWWNTdnYzb3dvdVcvZmp3VVR1Y0NPUFdZ?=
 =?utf-8?B?RHA0V2c3Q1hXNXJRbVRLSGdnbGsvdC9FeEtNYzFoeFVpTjVjZHBGNGd1SEU2?=
 =?utf-8?B?VXQzaklBWHFBZlBBK0NLUmg4V0lHT1hhYzJIbnkvdVkwcGZGOGpiZUVVSVA2?=
 =?utf-8?B?YmpVUWRKY2dXN1BDMFZmakkzU0tFUFRJaFpNSjZYS1NLR0Faa2R5eFZ5a0Np?=
 =?utf-8?B?R1JRb2hqUUJlY3hsSTMwemZaNENVMUIyS1VBaDFCRFZQWFFMVXFRYmVTYllY?=
 =?utf-8?B?MzRjbjVnVDdBT2dSR2VaMk9tdGZ1ZXkzS2JEUnFKNXVXeXRncUs4L3B6TDE2?=
 =?utf-8?B?STZCdW95KzJUTTBOMDFDK3huVVNtSVoxZnpGcXF4YlQwK2xDbjJ3OXZwR2tG?=
 =?utf-8?B?Qi9mbHR4YjRXQkgzY2EwMEpsQ1pHVVBIUStObmR2eTQybmpyT21DSk9kdXYz?=
 =?utf-8?B?T1duZ09TSWdLdTZWYlFWMXI4U1BDU1Y1WU1vaWk3Tkh4SE1kRWhENmpwMXlD?=
 =?utf-8?B?YzR1em1DcEVhaVdsMTIrZ3pYUEcvbWhURnA1ZFJVT3lENHFuREliNEYrN2t5?=
 =?utf-8?B?WTZPNkVtVWRIUktPMDRVNHlsMVRVV09iRGg4Rnh0a1dVdW1objVCRDlsZUhT?=
 =?utf-8?B?NkpLVkYydjdpV0NiMHUxdElQMU9ad3ZWOEgyS0lkcnozQzUxQkZrbHlYTGR4?=
 =?utf-8?B?dE1MUlhyUG1NU2V6ckREZGt4QW5DS2h3eHcxSXhJNmwrVi9PeGZOd2R0K25M?=
 =?utf-8?B?MUhUd3RMc0wzcGVHSXdzRXJ1djdNRGc2ZkZMSXQ5TmlFT2I1Zjd5bXVwMkdN?=
 =?utf-8?B?TEhua3ZQZWZsMGFJR0FKNWhEd3RZeUdtZDVGMVQ5MzFPNWJnMHdOL1R1eHdq?=
 =?utf-8?B?Y0Z6SmVEZEwzSTlnWEZTY1BHNHZwb3NTb0NXZjU4a1Q5Y1ZBU3hoMEppcTlK?=
 =?utf-8?B?ZzVmL3V5VmRBVUNPYlgrckMySFFBSkdCYzFpZVlhY0xQeUVkVjlxYUw3bWVi?=
 =?utf-8?B?N0F0T1F4R2NiWjY0SDdVb3F2NGc4L0VWUzY5bnhxWXh5WVYxdGRiVjlwRXBR?=
 =?utf-8?B?NDRKYVFNeVRqZjdlcVZjSG9uT25YZlFRN1AveWVieS9jQnU1MW9DQ05UbTRk?=
 =?utf-8?B?eFEycWtRbklIemJuSzJhZmdFUmNJREVGSzVaRUF5NzBwRDhNM0NsSXdsSWY4?=
 =?utf-8?B?ZUtXeUR0SVZvWGtFZmQzblEwS2QrMU5DMkRFVno1bTcxd2d5ck5UR3g3L1Fz?=
 =?utf-8?B?N3d1Y0tUcURqaTdZV0JKcFAyQWhoYUZvU3dZekNSc1ZBSCtUc1liRDRVN21r?=
 =?utf-8?B?clpmMFkzUTRwck5GN0tZRCsyaEVtQytHUjNrL0V4U2JyNXZoY0V0SUtueXll?=
 =?utf-8?B?MVZVWHpaYmF2aGFTVHFYR1VZZk03bjI1VFpMd0QzaUwrR0Q5clNHbFlteEhy?=
 =?utf-8?B?Rm5NSkwzNm5YNGgwTkJ2V0dNRmQ3Ull5MW5kYzQ1Z0dZVmNaMVpkU29Da20v?=
 =?utf-8?B?dTh4R21DMXJwcnBhZXovVW1aMnQ3L1gvbzdMVjRRWHo5OFJHSmdaRUY1eVYv?=
 =?utf-8?B?MTQ5Z2NpWXAvZ1NvSldBL25oaUppUmhjcXhNbFd6VFN5Vjd0dldFZVFmOUEy?=
 =?utf-8?B?eUlucE5YcktJdExkb3BFSFc5Q2VuUm1UVW51cVV0azRPVlZEYUxreHZyWFBw?=
 =?utf-8?B?SDR5dGRQa1RSakJGQ3R4aWV1ZjkwNDNzZzZLSDBCc3g3aWlISWxjQ1pMVmI0?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d444703d-b525-4bb7-d71d-08dd3bbc0195
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 14:41:22.6433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lh4SWecs2FZ1Y85oPk/z64kU3c9dUatmIkYDZg9YVAUgfTOvz5SRQXs5wk8EIUYEG1JilQQKETfqVRfsaduu1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8808
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

Quoting Luca Coelho (2025-01-22 06:06:00-03:00)
>On Fri, 2025-01-17 at 19:06 -0300, Gustavo Sousa wrote:
>> The DMC wakelock code needs to keep track of register offsets that need
>> the wakelock for proper access. If one of the necessary offsets are
>> missed, then the failure in asserting the wakelock is very likely to
>> cause problems down the road.
>>=20
>> A miss could happen for at least two different reasons:
>>=20
>> - We might have forgotten to add the offset (or range) to the relevant
>>   tables tracked by the driver in the first place.
>>=20
>> - Or updates to either the DMC firmware or the display IP that require
>>   new offsets to be tracked and we fail to realize that.
>>=20
>> To help capture these cases, let's introduce a debugfs interface for the
>> DMC wakelock.
>>=20
>> In this part, we export a buffer containing offsets of registers that
>> were considered not needing the wakelock by our driver. In an upcoming
>> change we will also allow defining an extra set of offset ranges to be
>> tracked by our driver.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>
>This looks great overall!
>
>A couple of comments below.
>
>
>[...]
>> +static bool untracked_has_recent_offset(struct intel_display *display, =
u32 offset)
>> +{
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        int look_back =3D 32;
>> +        size_t i;
>> +
>> +        if (look_back > dbg->untracked.len)
>> +                look_back =3D dbg->untracked.len;
>> +
>> +        i =3D dbg->untracked.head;
>> +
>> +        while (look_back--) {
>> +                if (i =3D=3D 0)
>> +                        i =3D dbg->untracked.size;
>
>If size < 32, you would check some values twice, right? Probably not a
>real case scenario, and it wouldn't matter much, but it took me a bit
>to wrap my head around this.

Nope. If look_back is greater than the current number of offsets, it
will be just reset to that count (see the "if (look_back >
dbg->untracked.len)" above).

Note that the number of valid elements in the circular buffer is tracked
with untracked.len, while untracked.size is actually the capacity. Maybe
I should have used that name for the member instead?

>
>[...]
>> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, =
u32 offset)
>> +{
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        unsigned long flags;
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>> +
>> +        if (!dbg->untracked.size)
>> +                goto out_unlock;
>> +
>> +        /* Save some space by not repeating recent offsets. */
>> +        if (untracked_has_recent_offset(display, offset))
>> +                goto out_unlock;
>> +
>> +        dbg->untracked.offsets[dbg->untracked.head] =3D offset;
>> +        dbg->untracked.head =3D (dbg->untracked.head + 1) % dbg->untrac=
ked.size;
>> +        if (dbg->untracked.len < dbg->untracked.size)
>> +                dbg->untracked.len++;
>> +
>> +        if (dbg->untracked.len =3D=3D dbg->untracked.size && !dbg->untr=
acked.overflow) {
>> +                dbg->untracked.overflow =3D true;
>> +                drm_warn(display->drm, "Overflow detected in DMC wakelo=
ck debugfs untracked offsets\n");
>> +        }
>
>Couldn't it be useful to print overflows every time they occur? Maybe
>convert overflow to a uint to track how many times it happened? (though
>maybe this is a bit overkill).

The warning is just to let the user know that the buffer doesn't have
every untracked offset that has been seen since enabling the logging.
The best thing to do in this case is to try a bigger size or try to
reduce the execution to be tracked (maybe a smaller test case).

I'm not sure how providing a count would be useful here.

--
Gustavo Sousa

>
>[...]
>
>--
>Cheers,
>Luca.
>
