Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93404A00894
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:26:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3661610E881;
	Fri,  3 Jan 2025 11:26:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b90OWoih";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B050C10E881
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735903599; x=1767439599;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uoW5h3FfdtYFv/7gnVItnqEjHpC+zLzTqg7o9/NRIvc=;
 b=b90OWoihdJr4YWvhPuWP43/qIKIX0U4ecW+z3qOCcRzDuO9TIEePuDtp
 DsI4tUloQ1IDruzUAmIUGE1dGFMTtiMfOhAOf4TnSRYRKjRgkqgni3SIw
 WENH3GA7Cl/E46XYbTTDKCw6kpiY8G/jz2xFRgTRRWbIX+GeNszKRSU4m
 fMEUNTDsTvQS5XDq7uoL6iAZdO5SCCdhNWHUEzB7Xj+LeZA/rLZ5R1Y33
 F1IINMEO48ao0tbiyMpkqosr+eb8xWqvuAY8AM93ZVCzrFxkTvdb78Aiy
 57GtzZZLc1aFIQmJ89AccnK8uun9eBxLpg2TzK7kpRnSAwVsjpeBBltst g==;
X-CSE-ConnectionGUID: Hfe5/Ay/QfKj9fkk84lbkA==
X-CSE-MsgGUID: LCevcBt1T262STAI5PS+xQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="53561774"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="53561774"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:26:39 -0800
X-CSE-ConnectionGUID: SeoX8Th+QLa/o98+57I+yQ==
X-CSE-MsgGUID: LwoT5F+6SOyGmAqy9pQTzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101639425"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:26:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:26:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:26:37 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:26:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lib8zGo95axcSeGiR3g3mrYjlLH2wFTkyR4U+avm6ioGqJhDb8S3XIXJL/j4nqLyCl3dwemkuSb7/dkHHWWEliUfDJXQWyXQcFAL1Zxl6y4IcYaYP2x/8wcfYvUo5i/PeOXM2lBVqqWxe/RB3ESTDofXqNQY1fN3SFCnLOA85D70jZd2Y6NKIE6NE6uV2xrflrsynIIySUMixxlOq2+uFlLKp5s+eQrm8PXUmcp0BxFU/zWD/9joyXxEose7BOFM9pbGPM0kIg1dplElKI9rUiThBEHC9it1aYES3uhtTyheux4l1d85nu04efyNr1kc6BuNDEOfkC0QFT6OYKJD1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eXcjrld64HsVhlZ4QqcFr/KF93CPs+uwdrx3I5V/UxA=;
 b=xdnM+U5vZ6oHmJrVXePusK0djGrNMymP1bLGsd5MWxQUXrt9+w+YiTK1zMzxH2O5X1SyirGfW/Z3voRMwVJaXOBcaWHPd25FC6zhcEkybpDLQIt77PHzwxx1Nza5miR1afAn7k1ylS/zXLoeFjQYAACZUhsnAPXGIDRTtNPky3QeUZlubbYH9JBayGCYXdNuPLsOGY0JhAweTg9Jnp9CkXO7+yFvAbm8xXNeZzCMlueXy1VT2hFv/cPxQyp9+pWLsGpqcgEHJymmpz0lVLOGnPZINspxl/6IVuCUAcSFfSxyJNX7rj5rQPVbBnxrxBEYjF0pq2FIAcaKa8+I3g2XZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4698.namprd11.prod.outlook.com (2603:10b6:303:5a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.14; Fri, 3 Jan
 2025 11:26:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:26:31 +0000
Message-ID: <ebd20d3a-588e-48ad-9638-87d70a7b27f1@intel.com>
Date: Fri, 3 Jan 2025 16:56:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/18] drm/i915: Check vblank delay validity
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0144.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4698:EE_
X-MS-Office365-Filtering-Correlation-Id: 5eff4c93-7395-4f49-5da2-08dd2be978f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTJiK28xcmh6Z3lwZ3VoRlV4QzlUeFJGbzFlUXRXVzhlWU91djFSMEFQZWhE?=
 =?utf-8?B?L2ZuelVjZVd4SDVOaWw2TW56ZG5oNFd1UEc4R1VJWlJRVkRlN1lBd0NDek5T?=
 =?utf-8?B?cHR6ZGhlY29RNkFEbGtKSmdXckNsL1krWm9qb25SNmZtT0Q3d3A3anRqM2xk?=
 =?utf-8?B?N0N2OVVFRlkvaE51WGpldVVIN0QrOVFMMVdjSW1xSCs5akhBQ1BoS1I5c3JQ?=
 =?utf-8?B?T1ZEbHJZa2dqYlFVMDdPYkxQUUprcXkwM0hneWE5dXByOTByd050MGozMmdM?=
 =?utf-8?B?ZHhpVDJmdk51TVI0bFVRV3JFT0w5NFYzZXZPWVE0eGltbGJRL1pJdmYvaEhS?=
 =?utf-8?B?eUlqUW9HdmJ0c0d6VkFkR0ZTbFN0VFNDdUJDOWdVUU5BUGtjTDR3VGY1V2Y4?=
 =?utf-8?B?SDhBcjFETkdHOFgyZm45RHBOYmtOTlpEWjBEd29qdDhXSWNUNEFKZGJRR2NQ?=
 =?utf-8?B?KzdNUWM5c1dHc3VUbGZRSDIydE5WRVlYOHhFT24rTFlSdloyUXdlSFRRNE1p?=
 =?utf-8?B?SVR6dlRpY0c5eFRacnpYMlZoZUZzWmltOWVmUUNDYUZhajhnSFhhWHA4NVdD?=
 =?utf-8?B?NUdrdGY4eWpDSVFkc1J4dW5ibVhtSi9aQUduNitwaXJ3M3pNMEJhNmZ2dmgy?=
 =?utf-8?B?dnRkUXRvUXgybWJlcVJKam5IVHBTSjAyZ3JrS3hOVERTK0UwOW10ZkdxT3ZX?=
 =?utf-8?B?N1RPaEtGMVlocGlsNVp1TlZhK2RPUSt1QUFaZlp4Y2JuUzdHUFJ2Ny9WOGVz?=
 =?utf-8?B?Uy9VZlNFQzJmNklPSE5aa2dmQ0J5RnlwWTdQTjJBWnJsK2tQdlh6ZlYvVE0z?=
 =?utf-8?B?VEJVUGxXTnRPdXdPcVFkWXI0ZFNzMnU1WlYxS3p6anhrODZlZHA4dDlEMTVx?=
 =?utf-8?B?VTRxcnVUU1U2Zm1UTzNKYm9TcitJeURtSWxnaWtTdFFGdHVHNnhGeCtJVXFJ?=
 =?utf-8?B?bkFldGVtRXhXenVlRkNkWE9iNVVNQnNmbjg4dDlzSnd1czdjbUhJVk5ZalBY?=
 =?utf-8?B?OEl0SmpoaTBBbHFSWUI2TllneGV0TUYycWV0V25VSFhzZ2RPblN1aXFjWUJl?=
 =?utf-8?B?OXcvWkkxbU1Tbk53TGFXZVJ5UGlDVGZ2NUR3dmVOdTh5V1JlRklONW1QUVI5?=
 =?utf-8?B?cWgxUGdaSFBtTitNWFgyYTNMaUNCMUlNL0R3WHBQZ0pvUlVtUDEzUDZkMGZm?=
 =?utf-8?B?aTFGeURsMUdTUTdrbkhsVUtFSnlwZ25oT3M4UStaNnZobE9qWEY0czlaaDVY?=
 =?utf-8?B?Q2x4Y3Zja2E2OXIvSGs1VmFXSlRZY0Q5UDVEd3RSTjQ4ZCtvdmcxbnFmckZu?=
 =?utf-8?B?MmRGdlJubGMzVG5aWk8zWkI3cTN4QTd6RjZSSzljSW5CNGhDQmtRMWlvOFNa?=
 =?utf-8?B?S3IyaHpteTJoOVBtWk5TUDJPWkVEdW8ycitwSThsOXpLYWhPSEtEWmlhc2VU?=
 =?utf-8?B?NmZobkNpUDJ6WkxDcnJCLys5bjNXZDJmQUxoNFBOK2ZobVd0WnhZdW9PcUpX?=
 =?utf-8?B?cFhOTXNXS1crQ1BpM1lSN1Zna3Q2RE9PNVJzcXJITjd4RFBUcnhRRlI0RHFE?=
 =?utf-8?B?azdpNlA2K0R2emxkSFZSdnYxYURHVEtTUFNsNUp1UFhXVU1PSlE5TStWRytt?=
 =?utf-8?B?RjZwWEQyWGxzUmtyaDNZanpVTUJ6dXU1a1pGT0JwUTdIOVM1VTJmTW1USzkw?=
 =?utf-8?B?QUpiUUNaWnZNVDBYL1JzOUZYYWFCWm1NQndTNXZ0WUpXK1p5Rm1Nd1BObjdB?=
 =?utf-8?B?M1VaeWFrdEQ2eHlOSVIzMlMvY00yNG5zbWg2YXV2SXUzOENVbytkNWhOK011?=
 =?utf-8?B?dEtWaGJMaXZwWVNiT29OOVVEaGsyK09jc1ZwcmQyVFZmWmkvcjQ5dit1Q25k?=
 =?utf-8?Q?pDUhNyxYWEAt5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDlRRmtSbHk5YzU1VGdTOXBHQ1BCdHkyNS9ib2NDckVCNFc2c0VGZGZTdENF?=
 =?utf-8?B?bnUvMi84K0J1OWEwS3YrNG9FNEdFOWFGaEdQRWNWYWlxYU9maVE2MlArd3gy?=
 =?utf-8?B?Y0RDM0dQc29iZGdjU0lKeC9jb2xWRWh2SldLeEZRMHJoamR4cXNXQncvei84?=
 =?utf-8?B?ZEZHK3FqWW9sSUNUMjNSVjI1d3Q0MEFiTC9KOE1NS01aN3NGbzVZT3RRN3NS?=
 =?utf-8?B?bWYwOWI2cFNvaWx1b3IrQ214N1YrbzZ6Q21Pa2dEOGpiMFFQaEp1RnVaWlIv?=
 =?utf-8?B?WGZMTXU0cnltMUh1U3RPaURQcWxVakR6cTJiU2k3Wkw0T2VxMWNsRk16S1pz?=
 =?utf-8?B?Q3owbUxaOXJQV3V3SU51b1NSdlN0WWtKalNSMkRXdFA5dHo0NWgxb3hyb011?=
 =?utf-8?B?ck80Tjk5QzBQN1ZTc2ZGN1BZSjhrQ2EwME5leUtkK3F5THRERXdkUENZMzNs?=
 =?utf-8?B?aWRyQlozYUtpcGJWcllIeHNieEprUzlVME5oR204azBCdTEvanhHWldkYmVW?=
 =?utf-8?B?b3lPSzJhY2xnNHl2QlRVSzlHZFdwOHlLZjlmMlRoM3NJa2g2ZTYzWUtFc0Qz?=
 =?utf-8?B?ZHRwcDJCYVdOUnVGR0FKLysvbHUxTEJOdDl5NzlPSC9vNitNcW5jQ01KQnpu?=
 =?utf-8?B?Ri9MTldOdTNoQmlhVjhrWkppSW0yQ2pvbkkraFlsOENKd0xNOUxIRm1id1RQ?=
 =?utf-8?B?UjJtUHBJWTM3SVNSNGRENWhiS29SUC9IRjN4ZDMra2NabVUwRTJCUUdhNkVM?=
 =?utf-8?B?RmdRWUN1cUlDSjhkRWVwejBiR2ZHKzJrV1ZNQWZUR0ErZHNudDBpRzNJK0li?=
 =?utf-8?B?M0s4U0NPNmFGYkZHSm9lUWpFclpWUHMwZDB2R3FlMGtJUzBBcVF5TS9EeERO?=
 =?utf-8?B?SmU0ellxM0ZkYi9STXo2MXVITFRhT0VtVXU2b242c0xOdWl3Q01qRXBHM0lr?=
 =?utf-8?B?SHZ4d2dhR1hndnA2UThjTDgxZW5CYXEwWFl1YVJxVGt4S2p5aVIxelhXOE1G?=
 =?utf-8?B?T1g1WERyelhlLzA1SVJJV3ZheTNkUVB1cGJmckNSZGJ4QysvWHdwZkFiNXpN?=
 =?utf-8?B?eEVlMTlwby9IQ0ZpRnJPUjZ1U1RmOHZVckxIenREd2RMdndlZ2R2RkZmc1VV?=
 =?utf-8?B?Zkxld3Nxc2tDanhQd1gzZFJuZVptaEQ1dUd5RFlnNndKTEwxRUhPU0E4UzRB?=
 =?utf-8?B?ZmRZR24wSzcralpWa1V3cUxYWWUrMUEybUJwclN0SXQ0ZzZidFF4SzJhMjRF?=
 =?utf-8?B?QllWck04RzMxbTllU0YwN2FZcjhlR1IwY0xFa1cyaWpZSU1PUzAydlNQN1Np?=
 =?utf-8?B?UU5jRkRZdG9iWmZuT0gvTmxqaHRKNlg4YVMxV0Uwd1NyMWY5dkw1ZFFzU3c4?=
 =?utf-8?B?bGtPSTlRSG1tTjFZVUNrWkF5ZURITHNDNldlVUtTOWk2a0dab3hzNGpWNE1O?=
 =?utf-8?B?ekJST0g3Z3g1a3locm8zVGNRTVNONmVjSlQxZ0IzMW1VdXdWL29pS1NObkQ1?=
 =?utf-8?B?MW1VdkRkOFJzNkZ6S3VoT24rS0NTVU5PVTRWcGJzRVYxZ29haHhtV0tmUmMz?=
 =?utf-8?B?dmNFbjJUTHZuOGJrSHJ4RUJjaDFWZmJaVXNYcm9DMElXbysyZTlyTGpDbE0x?=
 =?utf-8?B?TDJHSkxQL2YvQ25MY1Y5Yy9udHE0RXdJNXU3WStST090ajJLeGlCLzR0Tjlw?=
 =?utf-8?B?U1JRQ3JDWExjMWErK1BBbkNDY0wvWGJqajlwbWxHa28welJJUFNOQjhNRWpD?=
 =?utf-8?B?b2ZxczY2QUJxZ1J5ekg3Wk4yZjhqV2NDa2x1L1dwQlpoU0Q3Wm1jdDVWSk5p?=
 =?utf-8?B?d0lSVFIzL1FlenFmUU14NjRVT1B5dnJNeUw4U3dBdW5DenRBbU5INDU3L2NJ?=
 =?utf-8?B?aXF2TmR2SnJSWTNraFVVTm9JM2RWMmQ5UnNDTlJZdTRZeldkUnprMUtjb3k0?=
 =?utf-8?B?UCtGa0pRd01veXlJeWJzcjBIcmw5VzcwaGRQNE9obFFuZ2xqZmJ4bGd6QVhy?=
 =?utf-8?B?UmJuUFA3UmJqeGo2amttSlN5WThaQlhPNFZrUllCcDNyaDVEaXh6RlRCV0x0?=
 =?utf-8?B?RG5XN2h3ekQrK2JHOC9FZE1PR2pPeCt2RFFlM0dSOWlpMG8xTGVTYlh0SUVW?=
 =?utf-8?B?K1QrSnBxazRYYnR3dGtJU3MralR4cFBEZnRmVWExWVNEbjEwNkFEOUlnT2l6?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eff4c93-7395-4f49-5da2-08dd2be978f2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:26:31.6404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kieem0nNPxpoU8qTW6xhCrCBgFD1TfEpHYAyr88ZJ1smjya+sZCfTpnRb8puwicSjqu/xLC77eBtfDgIn6V9HUEQpSUvO3CnLF6GN40cBPw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4698
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


On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Make sure we have enough vblank for the computed vblank delay.
> Supposedly we'd reject things anyway later if this gets violated,
> but it seems niver to do some basic sanity checks early just
typo: nicer
> so we can't be sure the basic relationship vblank_end > vblank_start
typo: can
> always holds.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++++++---
>   1 file changed, 27 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ff907afa6451..22b5eacda0f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2633,17 +2633,40 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
>   	return vblank_delay;
>   }
>   
> -static int intel_crtc_compute_config(struct intel_atomic_state *state,
> -				     struct intel_crtc *crtc)
> +static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,
> +					   struct intel_crtc *crtc)
>   {
> +	struct intel_display *display = to_intel_display(state);
>   	struct intel_crtc_state *crtc_state =
>   		intel_atomic_get_new_crtc_state(state, crtc);
>   	struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
> +	int vblank_delay, max_vblank_delay;
> +
> +	vblank_delay = intel_crtc_vblank_delay(crtc_state);
> +	max_vblank_delay = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start - 1;
> +
> +	if (vblank_delay > max_vblank_delay) {
> +		drm_dbg_kms(display->drm, "[CRTC:%d:%s] vblank delay (%d) exceeds max (%d)\n",
> +			    crtc->base.base.id, crtc->base.name, vblank_delay, max_vblank_delay);
> +		return -EINVAL;
> +	}
> +
> +	adjusted_mode->crtc_vblank_start += vblank_delay;
> +
> +	return 0;
> +}
> +
> +static int intel_crtc_compute_config(struct intel_atomic_state *state,
> +				     struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
>   	int ret;
>   
> -	adjusted_mode->crtc_vblank_start +=
> -		intel_crtc_vblank_delay(crtc_state);
> +	ret = intel_crtc_compute_vblank_delay(state, crtc);
> +	if (ret)
> +		return ret;
>   
>   	ret = intel_dpll_crtc_compute_clock(state, crtc);
>   	if (ret)
