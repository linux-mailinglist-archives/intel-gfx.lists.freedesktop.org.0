Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A7F9B0F95
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 22:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B567110E0FD;
	Fri, 25 Oct 2024 20:13:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MmUNfexh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AC6210E0FD;
 Fri, 25 Oct 2024 20:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729887193; x=1761423193;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=balVTNY4YNKUaTuuH31CNBzjI3AHjrN0g8nbizA8zfQ=;
 b=MmUNfexhfV4BF0CNrA0zpJ2yHK7AJywxB69GOTpqSSMCIDeMQKSpZz2Y
 v8/EBDmV7S2OAZgP2HMytRQcY81pXkEy946MjPchg4ShTlJ3fzttM4+L1
 RGA6FQRy5f9OhC6sCD5k9RATb69CfIda9/AgmRdq7QyFtUmM6qWnQCyh1
 3/Hs7HzjiKXmUNospoZJYbeghQjzNNPG3/E8DUy/5XTxrd6kce8GkebeT
 FzaComE4ZE9VYECIqwH02tQ7ZAutIZ6riilCs0bx88xr7V9gCQVbx2bSG
 zp7Vu/HFLaRh+YHbVCtqkWYEXj9vx5pKr6644omcM6n4/Rqbnfp2BXLGk w==;
X-CSE-ConnectionGUID: XPlwmSrQS5ypbifw3cwtIQ==
X-CSE-MsgGUID: q0AjYpRrTX6G4cuYMGORWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40672461"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40672461"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:13:12 -0700
X-CSE-ConnectionGUID: hSRx2lHjS/+xgUnUPs4nDQ==
X-CSE-MsgGUID: jEkYg0h9QbGNahRRc6XxQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81321297"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 13:13:12 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 13:13:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 13:13:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 13:13:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LKMmwjenDrcuQtdHRgpoDx+POW3HkDb6qict2dgwGyTiGSjlCHJMNRruPQ0h/aPokkowY0mDAG/4xaO3V7eKENfvDLv3OlUVvBME07Cgmq76S3XsMW0gUL5WH9WBcZhczcbEu/TkxR+NSSpt1saStCp3MmhlLZXf2IuCRuU0LMNEg9ObiEIl8f5t6hdhN7u5KDa1AJ/aLWtG0WOB9ew/w0o+dYPAl6yoV4Lh69rt1h+z2Cj5FBVHwKn+kAg2YTuGsquNdfaHAWirMXcmZkNqoY4ZlL2CKx4q0Km8tmzGBryENo5IzukMB8c3axupJ+IbXHDhokI4ngyYdclb81itNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O/x2+KYx+Bs0orLaKr7+jfATcTRCJolP0wLLWDLDxT4=;
 b=M0a5s4jgVzf086mmMAbYzsVxScMtJ2L7tMwZzxouvNHmL8VtgvWMo6xGlbNMBAJMePTPfNebdFyA+ePPRlxKymWg0dcQJ5lSkx0dBgSbQ9X4DG6b+kojun1w5WkBxFN8zFLWvubcbZm9QCZJfAWNLgodKjgAjR9v/La0GKg4VxdAg4kZ56dGtCGxTz+dJZUh+e9yQuJ2srGe+GaPGvmwsbwMZ+iXgw2gaIvn/y8PIGeGEYVfekz+Uq1w79YeK+HNngoH3xXCulkO3oHKb3Brm4/PRQVzc8+/ue0ih0aFaVGlNLY3NztYc0DVRfe+cxistQraHkL5NQxSAcENtBS2Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Fri, 25 Oct
 2024 20:13:09 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 20:13:09 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <af1f74e92773a150ce4e2ddc553ac00c415e4671.camel@intel.com>
References: <20241022155115.50989-1-gustavo.sousa@intel.com>
 <af1f74e92773a150ce4e2ddc553ac00c415e4671.camel@intel.com>
Subject: Re: [PATCH] drm/i915/xe3lpd: Load DMC
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Fri, 25 Oct 2024 17:13:04 -0300
Message-ID: <172988718477.1548.4659688903753258338@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P222CA0008.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::13) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6123:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c6e1f90-c728-431a-9988-08dcf53171c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nzk1dUNOUjdJTE1mZUxDNG9hVWFTOE11enR0akpGVExLUmpleTVHZFNQMGN4?=
 =?utf-8?B?cll5dnZwM0ZOYlFqTnlCK3hLbEY2c1YvRnNRRm9ibUZMalJ6L01wZUQ5R1RM?=
 =?utf-8?B?dWhyZnVPZE44Z0FsUTVtSGpLUmZVNGZPZVhsQ2dUWXc2L0t3RE1PdEZ5VnBr?=
 =?utf-8?B?U1ZtSXMzWlo4SXVPbTVKaGE2eXBBdWlzUFZLZmtCWkRhdk5NNC9iK2I1WldM?=
 =?utf-8?B?OXp0NGo4QXFhU1ZSc202N1Z4R1Q5bXQ1N056QVkrMXZMUTA4UmxOdEpERnZr?=
 =?utf-8?B?eXQxL3pNRGhqRUE5SE1uT1k4R01YTXNlc1dtbFAvc1YrRkdiTVRhcDlmQUdW?=
 =?utf-8?B?U0o2dXhoN0gyKzRkRzJac2x5dFdTUEtoakQ3Y0hCMmNVYTRIWmduV2wvL09a?=
 =?utf-8?B?a2xQRlFtQ0huMjYzemdkRUNSNGk5TU01bEFoSkJwWko3cklHcHZNSzRhbXFJ?=
 =?utf-8?B?MlltOWdhWDFVdG9tM295TXpRQ0NhazBDS25jZ09jZ2JjSXBMUWV1TWpBbURh?=
 =?utf-8?B?TjFiZ3JZY1hGQ3E4Z2xLOE5TZUtScFZBVGt5WDdaZFFOZTBhK1pTYzFZWW4z?=
 =?utf-8?B?eTdnZXlRM0RwNEtMZHJjeUlack5qalR3bGZzZEtlUTRZMk1LNlZ4YXc4MUZG?=
 =?utf-8?B?RXF2bXFCS3BVUnRpKzhZN3VrYWFuMTRoQi94dXl6M0FxR1d6Mi92bDdjUHMz?=
 =?utf-8?B?WjdoWE54ZEExNHMydCsrTmJCTVlQSmVBWFZ1b0FramZKT3ZlRVp1cEIyRkV3?=
 =?utf-8?B?enFlS1lrd0l2UmlRdUg2UVluMFF1eXpwVXpwbUh1YVlNaWhGQktnTXN1ZmNw?=
 =?utf-8?B?dU84TlFHZ0FJYkI5dDhvZUovUU8xRlprWU9wZ2pSd2JWOU1YS0xxWTVXVnIx?=
 =?utf-8?B?cnhJZDg3NXo4SE5sRmRuYnVhVmVDb28wVHJHSTdVdVpBbFpiZnFLaXR2UVkv?=
 =?utf-8?B?K3IxWUd3S1g3dDRJMTc1NUdhUXVlUDlsY2VmdjgrT1dkWnlmNkVQdFo1NmQ0?=
 =?utf-8?B?WDE5eERjVWUxMEdzSGc2T0FBVjFCd1FZamZPZitrNDVzaHpTSDNmMms2UUpq?=
 =?utf-8?B?c0RBUmFnQ1ZLWFYrRXRHbURwZFBkclo3bXd2dThjQzVEZG42cFdpSUFvYi9B?=
 =?utf-8?B?M29tdCs1UThaMzY3S21RVUFOb0orZVdkQkxPYW9uWVg4eWQ0WHBESmQ3c2Ev?=
 =?utf-8?B?YTZFdGo1Z2pocUJ1QkF1MUloRGhobnd1WFlGZzM0c2JteCsySWtaTlJTcWdC?=
 =?utf-8?B?MWR0TVFmN3ovdHorbkgrdnBROTU3elZRN1lZNnNYcmY4UFJrSTNIZnRhMDc0?=
 =?utf-8?B?MGllam1pbmxBMDdRL2pVMnNNVVBaRGd3ZjEwQW1EVllxa3dXMURKTzEwd0gv?=
 =?utf-8?B?M3FGbFpMZDVRSEFBUEpYWkV0YjZ6d21RK1hPNE05ekdPTTdzalBnVHVHRmw2?=
 =?utf-8?B?RmZldmd0Sng5K3VaV2l3ZTFDUXFhekJKaDlEOXM1djBpVUdZOGFKaEFCUTJt?=
 =?utf-8?B?cVFaRW8yTS8rcDQvUHdzRTZnSDdxNGMyU084QWFDeVlPVVY4RnVaUzY5TmR4?=
 =?utf-8?B?VWRRcmRQbGpEb2tya0tRRDhHZ3RDZ1RvVTlkbXlMbncybFg4L3Z1OHR1VDZh?=
 =?utf-8?B?emhISzRmNXFnMUpKWFpQeUNkRmp5SmNRUlhkOTRaeDdYRjBsZlozakR1dmRh?=
 =?utf-8?B?aU5wSHk1bjM1ZW9nR094WGJvWmFoTWNEeU1YTVA0NEl6dGRXaVVMRUwvS2RF?=
 =?utf-8?Q?9rsUqgmiGk/h0OL/yI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTZCemh3UGMvbVQvWjFpV0UvQ05QWS9ubUVuNjBpcXFTTVFEV2pEdFoyaUhB?=
 =?utf-8?B?L2ZjdzUyMGdEVU1kYmdBQWp3NkFVSURjREdTU0VGM2VpV3FhRW4vMkhXSFZE?=
 =?utf-8?B?czIvU2lXeDg0d09rVGxKQUg2ZEl1ZUdicUdVMGRxQUJ4bXJlbTVaM0dXNWkx?=
 =?utf-8?B?VFhIKzU4MTgvak9Cb2M5ZW8rbkpDbHF6N3ZHS1NiVU96K3J4b21lOHoySDJ3?=
 =?utf-8?B?WFZiOGdOdmJWbzRLeUNodzlhTTJ1SWVKalhQa3RoRndxQTJpVUhHdU9vSVhj?=
 =?utf-8?B?V3h4NFJvMGJHejNoWUJBVVovWkFYdEl0VkZVTUw2Nm96bVFIb3l5eS9DQ0VH?=
 =?utf-8?B?bG11d1RuR09WWHBHcVlqOS93MTlNRlJQVnpZVVVHY1Q2SGdRK1IxZGdnM1Yr?=
 =?utf-8?B?THc2K1BTQk0yYU9sZmRrcWpLYkk3UFQrUytpVkRFY1RiOEFpdWFybkIwL0Zn?=
 =?utf-8?B?UW5VbU54QWlSeEF4V3lDQTJsWlZwb0pKUTQ5cG5za1l1ZTdOUHRvZmREQUwy?=
 =?utf-8?B?ZGpmK0dxOGQxWXZqeGU0bWJlMlIvd0RtNU1yZmFHbzJBaVpIRldtMHBnUjNL?=
 =?utf-8?B?b3hEc1A5M3pYVUZSMjY4NVJKeVNEdDNDRGJoT2k2eVY5ZkFYZ1ZWOC85T3N1?=
 =?utf-8?B?YmtDTS9GVVlCT3c5dTRENGFkZzNBUEpPZXJPcWdtc2dsTmhUVVl1Ky9PYUEx?=
 =?utf-8?B?MzcvWUZTV0JRSjdnTHJvZG1FbkV6dlNlZUVMcjZPa25Hc3BtQ3l5emtTcFM5?=
 =?utf-8?B?OEVJNVc5VXhVczJlczg2OUd0ZnFKWGEzSlg2dEUvcUViL1R6NGxpVC82N0ty?=
 =?utf-8?B?SW9XNzNOcDRZVzlPSGNNNFZNaFphWDEvOWJlT2lyVGlUOWhtdGlTbEF6UHFB?=
 =?utf-8?B?QW5DK2xIL25SVW5HN3F0T1BkTmZma0twZHBlUklXN1UxMi9qKzNxUWVFci9Q?=
 =?utf-8?B?VUlJUFovUDMxa2Fjb2dKL01xQjl1MFZXb2tpRDFJSFZWTFp5UkFaeUNKelNv?=
 =?utf-8?B?ZlNOZnUxMGF3dFpkL2g5UFZxWUN5RVEycU04amFQd0p0aU1hOWkvbFZxTWd2?=
 =?utf-8?B?MWZWNzNwZndVYk9oOWdncTd5VFVrelc5aHJ5SEwyaVNXUGgrMGVtSzR4dXRB?=
 =?utf-8?B?K1MxRm1PNnovdWxjQ21Nb1NyWGh3VzNRdFBqN0ptc3ArVHV3dkp4NHRsMEFi?=
 =?utf-8?B?cm9Od01yL1NsY3k3RTBMaTdnd1RIRk9xMHovZnhqOGlWT1RhNnF5VjNaVyt3?=
 =?utf-8?B?ZjcwaU1XNmpzTTZLYURKeE9kTENiakZwSytIdjlYby8xVEU2TjJscDJMUGlO?=
 =?utf-8?B?NTNPNWxmTVFSUlFZL0RINTNHUWZPZ09tWm5qdHRBQndzY1NpVmN2aUN0WU1k?=
 =?utf-8?B?NEF6WWNGc1NSZWNjYnVNTGtwUVVnK3BPdHNFVytlMjUrcmd2cHpPSHpWNUN0?=
 =?utf-8?B?L2d0Ujd2OEp2Ry9KTmpNandjMDY0OFkrYTZUdGtyV0NTMWo0MW9FS3BQcG50?=
 =?utf-8?B?cmw5bkxBMXlucnBFalNOTjhPWUQyZStmd3R1eGUxd3A5Rmt0dGRNSzlpZkpw?=
 =?utf-8?B?VXpEdnlESWZaRmpKZVpocllaa3g5MDBoM2JCWXlhbkpBZmNEcVZkaFBIZXA1?=
 =?utf-8?B?cGhRQzFPSEt0RVE3V08zOGU2TXlXaUF1cVlSVms1RTJtRWIydmNxWDUveGN3?=
 =?utf-8?B?NitsUEZWaHdqdU1IaXI3THMvdjlwWmVLbnlDVGxXenRWRUZHU2lISjQrV2Iy?=
 =?utf-8?B?VU1nTE9yQklIeWxTeFg2YytjZ1ZnWDgwNUhGMWlaK2xJaThnazgrdmdvaG55?=
 =?utf-8?B?dXFEOWtJWFIraFRKdFVHZWlBS3ZzSThrbmFvajJtSTl0djFmdzFzUkVGSFA5?=
 =?utf-8?B?RkVRUU1kVTdFd2FIU3hWeU1IZ0w0Z0IzZTBueEt4MmpSWG00OWFDZit5Q1NR?=
 =?utf-8?B?bHpVNGVGTHlzSjVzK3dCb2ovZzV3TU5tdWswYVlYa1FuMGR6TEhkNXY0eUZ0?=
 =?utf-8?B?bmNPcWNUaldtL0paRkJNcjJySWtLL3pWV0VpS3Q4by9FZDQ0OXlobXlWdVpx?=
 =?utf-8?B?QisvODZ6c2tjUnZKcndSdjBMeVRkZENBS2NnbGdmM3hrUUU2dTVYZ1R6ak5H?=
 =?utf-8?B?YzBxTHFZK1hBRGF2UkZXV0UzMTYzandENDZYcjViWEtzSy9ZQ1FTMDk3UGVO?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c6e1f90-c728-431a-9988-08dcf53171c9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 20:13:09.2413 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5GdcwaJ6MucnSTO8R2wIWBtQORQroTjL69Yo31hmk7lg9+shmM7vAVP3kpv0Zg4LKfkzhhjrbAkV1XSotH+zDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
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

Quoting Taylor, Clinton A (2024-10-22 14:43:52-03:00)
>Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>

Pushed to drm-intel-next. Thanks for the review!

--
Gustavo Sousa

>
>-Clint
>
>On Tue, 2024-10-22 at 12:50 -0300, Gustavo Sousa wrote:
>> Load the DMC for Xe3LPD.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 48bbbf8f312c..5392b68627ae 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -113,6 +113,9 @@ static bool dmc_firmware_param_disabled(struct intel=
_display
>> *display)
>>  #define DISPLAY_VER13_DMC_MAX_FW_SIZE        0x20000
>>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE        ICL_DMC_MAX_FW_SIZE
>> =20
>> +#define XE3LPD_DMC_PATH                        DMC_PATH(xe3lpd)
>> +MODULE_FIRMWARE(XE3LPD_DMC_PATH);
>> +
>>  #define XE2LPD_DMC_PATH                        DMC_PATH(xe2lpd)
>>  MODULE_FIRMWARE(XE2LPD_DMC_PATH);
>> =20
>> @@ -168,7 +171,10 @@ static const char *dmc_firmware_default(struct inte=
l_display
>> *display, u32 *size
>>          const char *fw_path =3D NULL;
>>          u32 max_fw_size =3D 0;
>> =20
>> -        if (DISPLAY_VER_FULL(display) =3D=3D IP_VER(20, 0)) {
>> +        if (DISPLAY_VER_FULL(display) =3D=3D IP_VER(30, 0)) {
>> +                fw_path =3D XE3LPD_DMC_PATH;
>> +                max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>> +        } else if (DISPLAY_VER_FULL(display) =3D=3D IP_VER(20, 0)) {
>>                  fw_path =3D XE2LPD_DMC_PATH;
>>                  max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>>          } else if (DISPLAY_VER_FULL(display) =3D=3D IP_VER(14, 1)) {
