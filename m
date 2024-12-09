Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0547B9E9694
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:25:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DF810E731;
	Mon,  9 Dec 2024 13:25:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yw7IlXsr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A02EE10E732;
 Mon,  9 Dec 2024 13:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733750711; x=1765286711;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=1jGnKN3LwCaGj8mkBp+Z1+nOG0nkXd6yHgJJIvNcddw=;
 b=Yw7IlXsrgcgsE9LdXxcpEVNDF+KGQybwvIFFSxwc8U5o//nYrHiTPZls
 bgewox6CAJjO8KORf5mah00Yv3Lkh69wfniS0uPDElTe+8tMRcmfQBY9s
 BPkEgzJDHxMxNCezda2vEStYwjDJt1vLDP1X6Bxn35l5nnfBo4mXqf2H/
 EiGittAibMugjEseYL479DYnBV15ImRoIWmD5k/xehpOgUDOPJPOppUW0
 CKFkd2NX0O/L/0l+g4pLCi7R1uSdJe5uxO3vdgNLdXzEnQdCx68jjp/69
 ilA1nGUc36D8Ppx8mv/Xxxf3FbzHrp836+gdOeJHgrhW7CY2d2Qi0nGeb w==;
X-CSE-ConnectionGUID: OwN2nlYsR2yq5Ww/S0XQzg==
X-CSE-MsgGUID: qO6BfkngQ0KCWc1V7gocSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="51460821"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="51460821"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 05:25:11 -0800
X-CSE-ConnectionGUID: ybrXqmxcT1KgZ6zYAHkfCw==
X-CSE-MsgGUID: zsygaNtvQ8SF4YVFuFoHSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="95417245"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 05:25:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 05:25:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 05:25:09 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 05:25:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XAm/LfEk3Az8p+vU6fpszquvFbTLlBus7uQq9ZXtauIBBlpI5HpjbCT8McrBnApI8mXzEnmeDnSPPqXt4clT6NjmqKwPXcGiFB1l2DN8Liu5O+UYMtG/SykloG8siE/C/mWg3HiXTeLo3JQKqlEoHQeSMy3oqTNFyhO9QFOP0bC9V5O218g+fHZMeAeb9N5p9UzoHkdMLvXYx28ETUFXgDBS/ub+JETNyA1ppBk5NUDhvVhmL+92yM824wdIynmzXWgWJ/ZIRjZSwKQn5ivyCePQRDnksbpLtrLRypLr4yIe6uh/2ICPhE1rEaeHcGOzDxYAbSa0AhGWf6St/FHC/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4994NjBjsorq3ecvXOjZ5//tPVlYN7Rwlw2D8oAHRuc=;
 b=bI5Q/LUUxuXhQ72mNlSCZdgmwZ4FPjQAHc/0YUgbE66e3CTmWQDL/poZV3OkaURI7fFCWMi/fbBvid+IOm+JEc5m3DyLUSvs2h2i4dljLI4a991IDA8pZLftWNbeszr56amfhl8SIAxl1sYu5re60duGK9Ncam5AR+j5+gk7GVFa0h5uxQFPtu8W6BMPk7wbWUwHP+TVA0vHXASYZGHUDyBO5tGlp4bm4TSwy+9lY/Ws987rgXAcBThAHYflKyKPZ0htaxQ/TYJlXl9gWaa4HQGQhGVuKmYvKTtiR+lMzDPMGERSZyfvNLgFzdLFjbVFw+aY1e8VB/ysX7QFhHyz9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB8479.namprd11.prod.outlook.com (2603:10b6:510:30c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Mon, 9 Dec
 2024 13:25:07 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8230.016; Mon, 9 Dec 2024
 13:25:07 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241209074702.3975702-1-animesh.manna@intel.com>
References: <20241209074702.3975702-1-animesh.manna@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Animesh Manna <animesh.manna@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 9 Dec 2024 10:25:01 -0300
Message-ID: <173375070100.1961.9282805722236534508@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P220CA0030.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::35) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB8479:EE_
X-MS-Office365-Filtering-Correlation-Id: 37a5314c-c3c4-474e-92b4-08dd1854e5c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TmwxcFNTQjVRR3NtMlBXeUwxSzVtUUo4VWhwRUsxL05kRlk5YUdXemRCN3d6?=
 =?utf-8?B?YkJobTJETW1nbHRZNWsxM2pPa2lFOTFBWGY1T0hXRlJIQWVHcHdnT3dSUnlR?=
 =?utf-8?B?VkVHY1BEY013M3pDU1NvalhnRW45T1JaTitiKzh1L0Ewbmw2RHZzY3NTcDNS?=
 =?utf-8?B?anFBamJmMlNib2twNVo1NUpUdmIrNUVvakp1SzVWN0RpMjYrTW5OVDc4bWVO?=
 =?utf-8?B?MFExY2RmZW9BUUhjU2dJay9Jdm14UVQ3RkVEN3czZkF2Vi8ycXhhTDRCazRI?=
 =?utf-8?B?SmM0SzM2NGlOb01WWDBZYitHWEVFdExBUkw3ZmlLazJZWmFQdlhrWnk5YW5M?=
 =?utf-8?B?Um9KMWMyN1FPQ0p6OEEzQndJbkVzQ21qTDNoNVozcEw5dkZhS3RUd1hlNnBZ?=
 =?utf-8?B?dXRuNk1BbzQ2Wm82S2dMSCtVSHE1dlJBZlFLMHB6MjFIQU5vYXV4c2FtY2sv?=
 =?utf-8?B?Y1JIcTdDVU55KzMxelZDaEJidHhzRzFaai9uMWI3eHpDOEN4ZnBvb3hwd2p3?=
 =?utf-8?B?d1B1TFhPWWRsWkVub0hLQ09KVmROOEhka2RtSGJycW9SbytmU3g1Wms0ZnNM?=
 =?utf-8?B?bEdQUlBWbG5sVHM3LzNXRkJtLzVUOUN4alp4WWxkYzhHRmhqZlgwekZKQ3ZD?=
 =?utf-8?B?Ukp4MzdSMjBCVEVJRngyQWpMelU4RnhRVnYzczllMFVxQVZjSVc4dHI0WHJq?=
 =?utf-8?B?MkEvQi9xNU1QazVtV0ZncS9PSzVETS9yM2psMjcxSHdWSFcyVzBIVFhtbmdK?=
 =?utf-8?B?ZjFrZWlsaGsyQ3d0QjdKOEUyZks3R3VWZXoxZXBqUVdBTjVnVllIeFNXZ2tt?=
 =?utf-8?B?eVMwdWRyU2lHNHA5UHpxOUFWclc3ZHNEejBlRFFweTdPbXoyZ1ZveVBZY28z?=
 =?utf-8?B?bHVtOHNUWXRoMzNWdGg2OUpZcGlsZWJwcUh6RTJsR2RvVVY3SWNvQ2c1cVkx?=
 =?utf-8?B?Y0dGditIT2t0Z3k3S3A0ck5JTVpBNkQ0MG9GMGRyeTR6b09ZZTdBY1BwM1Zq?=
 =?utf-8?B?eCtrWm9nYlJKOXRzbW4reHV1WkF6NkFsbXNrQUdOb0tRdDd1ME80KzNHYXVT?=
 =?utf-8?B?NXpkRk1jd0E1ZEpOUmNPV1QrTHNOM0JHa0pyR2FzU1ZhNmFJOVpScS9majU4?=
 =?utf-8?B?dTBsSWYxTXdwUUdSU1U1ZU5aMjBRQTl1NVVyUzd4Q0xpUFM1UzcrWllXSkV4?=
 =?utf-8?B?Q0YrK01qTWkwSEZUN0VCYnB6cWpRNXZySEwrYmdKTHZjaGxjeVpQbmdpUnhp?=
 =?utf-8?B?V2QxaDU5YURGdEVSODJvQTlTZUoraUNJVlpYUm1HSElvaE10L3V2bG9IaXlI?=
 =?utf-8?B?cllZTHN5MUxrMGpWRzVVbTBEL1ZuWGV2SkZucDJjYzE1bS9hR05CeW0zNzRl?=
 =?utf-8?B?SElaS3BlZXI1THpKUVNyMXpPQVRDbGJnVkc3MkZjcC9TMC9BanJ3ZDlOYXhw?=
 =?utf-8?B?TG8zeTJNTzhVUW1wL1A5QmJUd3JYMzRobGYxNDRQeFoyei9qTHllc0YyTFNr?=
 =?utf-8?B?MldIY09NWUNFa2J3cEg5SE9YN3MxdVhEd3lMUkVBMHdvd1UvWE14TTc1T1JT?=
 =?utf-8?B?UDZpQVdVSTBNK3pFZ2k0WVk1NGQ0ZjlPS3haR3RRcndWalFvTmtyY2tiUTNr?=
 =?utf-8?B?bUFJT3VMcjQydnpuS21vbVU2MEEwV0J3ZDdUTnJ0dXFleEZZY1YrQWRZOXVV?=
 =?utf-8?B?REdrbW1HRHRjS0tYTjR5VjdFampVNlgwTFZLNkpGK2dkMlpCMWU3T0FKV0pz?=
 =?utf-8?B?c0Y3cXQ4M0FmaGV3Nk04ZXJNek1uQ21NVlRxSFFSTXhkZzh3NEpRQ3BVUWJk?=
 =?utf-8?B?WWFKUmkzRFh0ZVJmQTFtQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0Y0ZE1vOVA0ZVRiRmUvUWFFNENxQjJac2plZzRDdmo3QUY3Q2w5Z2hoeGpy?=
 =?utf-8?B?NEhVc2VrcHdEakFWcWJXTHBiSUR6UXEyenNnaG85T0RZdUNVbmRoVTdvUktH?=
 =?utf-8?B?OWl1N3plVmdQV1J3cUd6VFJwWi9Nb2dQeEhScGR2bmhWcE5oVDdqRUh1clkw?=
 =?utf-8?B?Qkt3bnY0SzJOZDltdHlGTkx4YzhmeDAzVGY1ekVtQTc5Z1VVQXZTUU5ETldu?=
 =?utf-8?B?TUtCNnZaVE9Kc0xsdEJFeHNMT2Y2YnVhdWc3L2xKMWtkWkpiOEVZSHlxc1F5?=
 =?utf-8?B?NFQ3Q1dFNktKdTk4Y2dBOHpDbGFROUpNamhUbTQzSEVnSWR0TjVBYjVmaXlY?=
 =?utf-8?B?TDA0dEdKWmxuaWZ5cUs5U0NqcmZVUzRLbHB4QTVXQXRpUmdZNkU1OVdmN2I1?=
 =?utf-8?B?MkgvblBTbGxvTFB3dElLS1pqU0trVUlZZHFlNEFqSUxMWnBzZDlSVnpXZ01X?=
 =?utf-8?B?R2E4RklSamVCcFhCaU1WUmRPcmpLekdCUUY0TG9GcGVEOXF5NWhoWVVFbHpD?=
 =?utf-8?B?WVlIUzNjZEtUMkxRelBOMVNZTkx5YU12ZW5ZTU1OQWNKVHExNzJ0QkMrb2R2?=
 =?utf-8?B?S2R4YWZSU3VuTHhQa2VsemVETGx2TDFzUHBlT3hmVTQ4NXN1dGwycE9KbDE3?=
 =?utf-8?B?blljL1o4c3Z2WWtVM0N6alU4S2c2dXhRRUdQbXNsWlpvcGx1d3FkQTdDN0hX?=
 =?utf-8?B?ay9UajdJU3BTNXZteERnU3VzaWppWkpJNDAzN1FyMGxHemV0ckM4ZXZUbGFu?=
 =?utf-8?B?bElGM2xQMTBXOWUySEljNk9iQUJxT2FKQ3pDZTJHRFVCZlE0ZmI3NC85eEww?=
 =?utf-8?B?V2FEd1FFT1E2QlhmMmtQZ3pqWnFuZGZiYnBwVWtqSjFxZWNiZEc1SWxnbVBy?=
 =?utf-8?B?cUh4Rkp2R0RXdEpTR3Fwb0FhazhlbE94R1pHNzM1NkswT3FWMlN3VGdtRHZn?=
 =?utf-8?B?K1h6OW5raU5ZM3VFckUzOTJnQlNFaUVlTlV2S1pEZFhnN1E0dzFBOFFkS1Vn?=
 =?utf-8?B?aVFDVGNTOEdzc2lNbmV2OXpGRXErM2k2Y2ZvMkZpbElSTEtrS3ZVYTRwRnhn?=
 =?utf-8?B?Q1dMZDFLRzNjbFpvNkwxdmg4WXo0L2pFN05ITjNjZjlnY3UwMUpiQVJZNDhl?=
 =?utf-8?B?K1dZU29oQTR4QUt6Vno4Z3BTUUZ6UVc2K1JRb2lCSEdZbUQ1QzBRR000UG54?=
 =?utf-8?B?SDl3M3ErckhIdVIvTTRsMGZQZCsxZzhXRVhyL0JYdFRHODVqQW5nVFR5cTNR?=
 =?utf-8?B?eGhlQWloaHgveFdBbEpUckY5anVCdUVhYUdVWC9PNlI4NlB3em5HU3ZQREly?=
 =?utf-8?B?cmhZTmduVmhaRWRMODQ1YkdUZXZKVG56VWExNDlKY1FNUHZUZURveFhYWmY0?=
 =?utf-8?B?b0JaWXN5dnRiSmh5MUdhTXFMS01NVnNtbjIyTkw0K05WaVBNMjk5MUJXR0lh?=
 =?utf-8?B?K1NxY0VoWG5rZy9yaFllVE54NHdISE5EblVSWFZhUU4yR3plSEpqVnNyMTNa?=
 =?utf-8?B?cVc4aS9GWHVVL3RTc2xpcFF5WCtlK1E5cnJKZ2xSODJvaHZHQ3VxMEtrVFR1?=
 =?utf-8?B?TGcrdzNyQ0Y5RVBqdTBsMU4vZzJPVzJ1Q0M1Y252TURPeDl0T2tzaEo4VUI2?=
 =?utf-8?B?N0QwdjAzSlNqejZSREdMcnV2L0ovSFlqNXJuY1A5WXBIekN3anVUWFA2akFO?=
 =?utf-8?B?dFBWaHFXQjVDUEREMjJPMTRLTlVWcmhNZ09MM3VtaFpLZ2o5cmdhR0xoamFk?=
 =?utf-8?B?WXpCZURmaHNWQVFvRkpVWUFYaldGSjNpaWFzQWV4cjlOWXNuRmNKTmo2ckEv?=
 =?utf-8?B?OWJKREFId0FZTVVORWd4UVlGOWliSDBXZ1hreDRLeHRsV1hpRHBnRjVpdFNa?=
 =?utf-8?B?dmN6enpvRXh4YUowbmZiSVlrTk40czVQYnlCMmc2OGh3eVBlSm9FQ3JYUTM2?=
 =?utf-8?B?a3BreGJnUHRycXc2YWw0ZlJ3aCs4NldiSWpLK0VPR1BKK0JjZ2c3cVQweW1Y?=
 =?utf-8?B?ZXRtTThRdWFpOTVYdzVCRnNQdUJwd0c4eTY2TU1sZVFPSmJtMzVuTnVmUitu?=
 =?utf-8?B?cWcxTjkxeEloQXNGME0xd1c4UUdhZ2JvdlFsQldXOCtXWHQzcnp3RnBtLzgr?=
 =?utf-8?B?T3FtVjZDTDBFTzR1MzZ4RmgrUUFlZm4rVDlPaHR5R1hrYUl0ZmY0dGVYdEJZ?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37a5314c-c3c4-474e-92b4-08dd1854e5c1
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2024 13:25:06.9092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kUQEJQ4Nfar0ybu8lqezNNu5v3BgP4DQPUkN3AutdpRJtZUlzKsA68ZounOSf01yOoUu2SxaTCmCXQWK5REZBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8479
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

Quoting Animesh Manna (2024-12-09 04:47:02-03:00)
>The PKG_C_LATENCY Added Wake Time field is not working.
>When added wake time is needed, such as for flip queue
>DSB execution, increase the PKG_C_LATENCY Pkg C Latency
>field by the added wake time.
>
>WA: 22020432604
>
>v1: Initial version.
>v2: Rebase and cosmetic changes.
>
>Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>---
> drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++++
> 1 file changed, 6 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index d93f6786db0e..f6f7205e06eb 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -2894,6 +2894,12 @@ intel_program_dpkgc_latency(struct intel_atomic_sta=
te *state)
>                         display->sagv.block_time_us;
>         }
>=20
>+        /* Wa_22020432604 */
>+        if (DISPLAY_VER(i915) =3D=3D 30) {

This WA also applies to Xe2_LPD (i.e. display version 20).

--
Gustavo Sousa

>+                latency +=3D added_wake_time;
>+                added_wake_time =3D 0;
>+        }
>+
>         clear =3D LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
>         val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
>                 REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time)=
;
>--=20
>2.29.0
>
