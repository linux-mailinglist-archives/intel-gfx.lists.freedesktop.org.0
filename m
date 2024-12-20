Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A8A9F93AD
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 14:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6C410E390;
	Fri, 20 Dec 2024 13:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DuwmcIIb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1819E10E010;
 Fri, 20 Dec 2024 13:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734702866; x=1766238866;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=OIBWPCPWb9LANuhRYONr9w04jGs6zNJ5T2vSA5JMJMo=;
 b=DuwmcIIbxWQRYfJM/3koVG0SQzhgpkN8/2kI+N/USVUzp6/aI0uedRxG
 ynkZP0eL7w0xWf5BbJzhpZXLXcAPwD1a6AFbWqNuTHkTSkni/pQbGiCSP
 YYK+J7xjXRblllhI/JexRWV7AXeeDz38FEiUut36OC7LR4wzrXE5LPUe8
 4Ot3+IIVW106is75LzuaHbCdQEdI2GvJhGZIFTgp+Y3Hh/1/a6cp5cw0I
 FhDhaFmP4qFuyKf2ySg8eCIVLK5a8GUXCRgBPz8xyBB9LiAmAwzuhRmqH
 1W8Wrj12Jy1CPXp906iawNo81U7SOUwLEhhEKOcGQjXk+kguP+49ZlxTx Q==;
X-CSE-ConnectionGUID: yuTU2NyqQFqG8dGkY0TOZg==
X-CSE-MsgGUID: iNbuS3d3Sn+cH0aE6gmjlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="39036440"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="39036440"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 05:54:25 -0800
X-CSE-ConnectionGUID: OnB/YvTdSuiNPhmAQCDCvQ==
X-CSE-MsgGUID: u8ok+XN/RAWDYcu7IrzDvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="103500786"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 05:54:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 05:54:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 05:54:24 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 05:54:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sAQh62JcZLWirWfF+WFiiWjy6vCuhQzp4vMP+jjnFtsM4s8VaJWktlG6y5KttYQRLHhC8+hth9+BvGvYkhoTTL/+WemL50pq1V7aMBgg2EJZch+ITaYwluLMqWHwAoDw1Ajo+EfMyOwLoiHPMKLb5Q/ohPLEYOClK+lI+7d6DIPSAbnHRqegKNp2NYo9PrCIpIEqGTlXWEErQI2QcfzC4Sd2JbVw9w9c+jlvUNj2ojh2SEAjcj/kNJlG/NuMeaDxr+on+Y4YhTMHOflV8M4S1Fci6o8lz+TVNNGgLMcI96XXjAoPqMoVQPPVHo4u9o3qW69H+MgMoqX4luCSVePA+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+VeT/sKIL76gwDn+NxH0YsfnG5MyIfdDtxe/HtiyKbI=;
 b=VcDxCpH675GlSR8+fmYzArjAybkaZ/4s4DQvgCv5iUQKFfh5WeQPXVqBNELNVGvSSDDdi9lXMX0Dw7N47nz4I9CCOhHRynrYAS0Zf1XXvxcBJI6T4V0iSNknpQTKdGLgiMTMjpOi6GR6YdNPHpTiQHWEm7XkHXc0KQMP4BSTmdqUGbsPOYtihtolbxjXq6SDBCdpH+VSWSpDQGnFl8ZyejhY59RDQEE50ZQBhOMweT+zYtEwBn8/CCoMDEAJELzTL+mnxZSwYhGD/eOjjLTZuPHqBH2pObhnP01h13W+lNX0WyJ2BU+//rEpq88MB/ZUqlNh0xcR1BbbNazTxKySuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH0PR11MB5234.namprd11.prod.outlook.com (2603:10b6:610:e1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.16; Fri, 20 Dec
 2024 13:54:22 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.005; Fri, 20 Dec 2024
 13:54:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87o716pwle.fsf@intel.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-3-gustavo.sousa@intel.com> <87o716pwle.fsf@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/display: Add infra to reduce global state
 funcs boilerplate
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 20 Dec 2024 10:54:17 -0300
Message-ID: <173470285774.2440.7585312979612500951@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0310.namprd03.prod.outlook.com
 (2603:10b6:303:dd::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH0PR11MB5234:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f52858b-9599-4198-a51a-08dd20fdce5b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dngyOVAzaVdwb2tSUFdNUUJHMlBDdUtQYVVpZDZuT3NGQmdhNlA0UTJjc2hr?=
 =?utf-8?B?bjZUc1dObkk1WE9MY2RrWEMra0lCdmFpdmhkRzlCRXJyZW1JZWdTUXdnV3FO?=
 =?utf-8?B?YU00VGltRUNhTTliVFUyNmJwTmhuSE9PdDJoUEI1R3ZKbHhBUmZaUGkxOFVz?=
 =?utf-8?B?NHhoNEJSZm5lZld0ZHZBdGR5MTgwT2h1UUdaNjl3UE1LVjlaanltK05XdDAw?=
 =?utf-8?B?b1c1ZnFVTEpQZ3B1bm9vOGZZSUliVXlqYmEyZXQyaFVhZ1BpRXFxVzlmelZF?=
 =?utf-8?B?VmxjOFl2S3VodEI5RWZHOGZPZTg3aXl4M1c1Vi84N3JqRnZ1dzB0UFpTeVBQ?=
 =?utf-8?B?MFpwOEpjbzBIV2YrTFZLY1FkdWgzYXNHZzNGSUwwZ2JCYTA4TEdwUDZTYUJa?=
 =?utf-8?B?T3lrcWc4VVBucmdrNlY0NGdJTDBXeTlqVjFvVWhDWHBKNWFHa2VrTnM1NmFR?=
 =?utf-8?B?dGl3UTZ5Sm5NNExWenprZDI1dlM1WVREd0dXcTZCQmt4UzVlbW15RHUwRk82?=
 =?utf-8?B?RitwMGNNM0FiYkZuNUwvYmZueU9kL21sVkxCaTYxaFlrVTdkYjI1UHd1VzEy?=
 =?utf-8?B?dzlOODE4UkxLaVVodFdmVnppWHJEZ1Y4a0FtclhjZHFBb1hvazlmTkIza1BX?=
 =?utf-8?B?dGVKdzNHemdYY0JhdWlIRjdGeTNkSTF5dStKQXpVTmpLNjd2TFB0WDh6NWZ5?=
 =?utf-8?B?dFF1RklxYjRUand6cTRQM1NnRWNaMm4wak9GdkVabWpDVDJnMG9PVndHaGJZ?=
 =?utf-8?B?T0E2Y2o1N0xlaU1wQ09uMXNQQnhCQmxPOW5RRi9OTVMyNFNxTVhJd1QvdHBX?=
 =?utf-8?B?dmxuQWw2NkVocGM5VFFvUHNZSFQ0d1pZV3hjZVpkZmx3SWlQcXUyYXdmRm0y?=
 =?utf-8?B?a2RFeE5uUEw2VUwwZzQ2bGV1dVZaL1pDUmhieTc0dTBnTHF6VHUzS0pmajd6?=
 =?utf-8?B?RjR1ald4VmVjeTEyc05hSlk1aTFwNElhaXZFeUhUbk1iT2l1Q1dVSzY4bE91?=
 =?utf-8?B?Y251aUZpS3RCdUxqemRvSEFmd2gwU2xReDdiM0l5ZmdnZTN3MlZuUnpqd29s?=
 =?utf-8?B?K1h4RlZRMGRDMHZ0N2FxeDRhcnJic2V3cGwveXYxclliWVo4M2RXTXV3ck8v?=
 =?utf-8?B?KzVuQm9hMEx1WTFvZm16a1BUTXBqbHZYVWdZV0hZZ2dmaHpQOTdMTkU4RU5s?=
 =?utf-8?B?bjRMcUtHU0lHdGFWaHdFVDRPLy9vbWRwbHFFbGY4ODhJRDkvM0RTaWtEZDJS?=
 =?utf-8?B?dE9lOUpsdDV4T2VlNnQyUHlZaEZDSVRmc1hTNG90R0licEYxTHZiMU1IRk54?=
 =?utf-8?B?OGd1c0FLM0MwV0xSY3d0cCtEQjIxUURaY0lwMHBvZUJ1NDUrT1krYXpKRFNK?=
 =?utf-8?B?TmRGZm02Q1ZleGZubGdWMnQxV1FpYTBDL2xiMEN5aDdCK0dxWkIwdlBZaGF0?=
 =?utf-8?B?U0hic3lMYStGYlNydDNQWmgydzhPaVk3cGMvcWNVUTV5OXVtRS9mZ1E1a1Ey?=
 =?utf-8?B?Mlp0Q3lCNEwzVW41TFQ3V0V4clhTSmwrNitGUUtrem5uZlNIWDBzcnp3dWNH?=
 =?utf-8?B?TWVHRDhpRktzWEYydUF5TFliQWhqYmRFNkFDSzhBQTh2LzdoSEpaN3hFM0kz?=
 =?utf-8?B?NjNGOHhValRFNGdzRnJEUERkeDA5TlA1U3FPTnVhdEIxZFpiZlNjZEE5V25n?=
 =?utf-8?B?amp4RUlqU3RhMFpNazFxQlo1N1I0bGJBYU1NTTFMeHViVVI1ZGwxeHJIWU1v?=
 =?utf-8?B?QXZ5b2ZNSUhEb3o1UzZzQlluOXMxQ1BRc3N2YXhwcjh1VENDeENaQklDUDIr?=
 =?utf-8?B?N3FqYTk1eUZ1YnNWUFZWWEZHNzYraDk1OVhQUDNFVEVHbHFkV1B1dTF6dC92?=
 =?utf-8?Q?CgqzHqywGr0uA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ykwrc2FwZnZOZjFRamlMZXVHNHQwektHaVZ1cFdpV3lVYldHd2dVSFlBQk9z?=
 =?utf-8?B?ei9FZlo3Ynd2MzNzRnVieFlJSXNQa3JxY0l2NFozTlBnWC9jUmtiWFBzM01i?=
 =?utf-8?B?eUkxUVJ5U2tYRC84RXg0QWxWbUZndVVRZnNSaGpTMkxTMitOY24rLytXbXM1?=
 =?utf-8?B?YXlYUTRrZ2hyQVhQZEJQRXV2RnVvc0dZTWhzZzBRNDF3MDNWOGEvNkRtSEht?=
 =?utf-8?B?enNPOFpXczZodGNsS2xLOHNuWGJLRlQ2OGZuN2dBV1dqbGpiVkxnS1l3RERo?=
 =?utf-8?B?dkdVM0F2UDlORGEyZEloYVJiTUlJd1c3SUtrVUVlWjNzMmxVRExYMloxQnFq?=
 =?utf-8?B?bnJPQ0x2eUlGd0tIcDJCVDZrVFlHVHlDRHpHeGdpUjNSOVRDWVhwMmp2L3Jh?=
 =?utf-8?B?ZGl4RzNqSVgyNURBNnhvZ2psbU5FYTd5cWdEZnFaLzFEUDlCd016TzF4ZWNP?=
 =?utf-8?B?OWEwQ0g2dEVORHI5T3dLMHVWWEQwM1oxKzRubzJDSmtmbmgvMkdTREd6UTBE?=
 =?utf-8?B?aGdicVNqOFBzSEJqN0pwdVUxb3FTdHRjOHVsZU9xQkJqYnR3Vm94cjdYejla?=
 =?utf-8?B?YWdzbXNzWUdjcWRWTDBHamtjSERTQ3lHVjB3RG0rb2xTeGx0VFNzTDFJMFJ6?=
 =?utf-8?B?VWcyaHI3bkxUbGlIdHh0K01BRHloV1p2OEUvdExSeE1jV1hlZlhQYWtpeFNK?=
 =?utf-8?B?UnVISkF4UTVxOWkyVUdiczhyT20zRXBvS0FETEh0bm5mVWFZNHJ5WEFlZ1NF?=
 =?utf-8?B?UUJLSGxPUzM3VEtXSU40OGVYYUw5eDJYWTROdmhmWll0bEVhTU8xOFJYb1Ay?=
 =?utf-8?B?MWlURUxsNS9rWlJZanMwRk1NN2ZKck0yeW51Ry9oUVNmWFVhZ1dzdFJ2NE9L?=
 =?utf-8?B?MHNTbkdoeWhxMElCK1VvT1NLbFkwSjNNem1STFc0cWk2N1djdy9jZHRQcyts?=
 =?utf-8?B?MHdYa2lMUHhvZmJEM29ZU3lqMGIrOHc2Q1JXai9BMEI3dmZkelphemcvdng4?=
 =?utf-8?B?K2FqUTM5N3IwZkFONmNIRlFySEJOS0pRZ2hkd1lNblpxNWV2a1BSdERmRWpF?=
 =?utf-8?B?cVZCdTlwZ2dXMUpGODNLZC9sa3ZOMTBieWRMa1cwU3lmZ2UzMlRwQnlUWE9K?=
 =?utf-8?B?Uy8rZ1NnVng3RlQvZDNOYmJUci96TTFNbVZSYnlXa0pvUlR2ak5QcXBXV0Jr?=
 =?utf-8?B?dUcxRndxSHlnTWpJZ2lkekk5VFFiQzkxclhDbS9sY296N3Jlc1E3UVpzVEJP?=
 =?utf-8?B?Vm9WOWdXRUw4TThta0VOTm9mRllLUnB5ZXNSMnROell2UUJ2cEttWWxFd1hw?=
 =?utf-8?B?ZWZDcHhHaklYQVN1ODZkV2ZialpwYWFLMXJiRlVYSGtWclVQMWdBVnJhNkwv?=
 =?utf-8?B?dVlINElWUDFDU1dFVFV4UEYxTVFvbmRnRm1yeTZib0diOHZqajJpUXE3eVEy?=
 =?utf-8?B?RlhXU1NXVlBqSjY0WGFaZmlHR1djL1BOOEV5a0dMY1ova3oyMTVxU3M5QThz?=
 =?utf-8?B?cDRWUDVqdFBETzFOZFYzbUV2dHF2Z3JEUUhFYStIVHBjeUNYZzY2dnFQcHRE?=
 =?utf-8?B?aVo3ZFllancvd2JIdXQ3SFdRQ1pmZFZqSEpYaDIrUGd6aFpNUURFYmtEL01t?=
 =?utf-8?B?YUlmV1VxYXdQS0VBeWdQbkt3UHQxcVNxZEZiK1oyVmgxSnlQOXlwVXNiVGlT?=
 =?utf-8?B?enFRK3JjcUhMcFpFUW5EL2pwYkFkcW5VVVFrVDBNMnUwOUJPTlJ4ZWwwY2tl?=
 =?utf-8?B?YWJBODNXL0ZNeHIxczh1NzdOTUNLVVB2OG1kQlBZRG9jSGc5YjdOUS9FaytT?=
 =?utf-8?B?K0FsQ2RxT2dLdTV1NFl1UTQya3IzZDFISGhFWFVBdW9rbWE3VnJDYjJFaTBD?=
 =?utf-8?B?WFpLU2VqcXhseDI5aENsVW5oV3hWSjFhNDJ5RHFvNjR3bmdGclNZQnBNcmpG?=
 =?utf-8?B?VW83ZlBxazR6d3Z3bU1nNHlYNStQUklldVNVUzA0K3RoVjF4a1lhNkp6VWND?=
 =?utf-8?B?MDdRbHNHem04REVMQlI0Z29Ea2hJRk5jWVFMaDRWZFE5SXZtbmZnMzJBTHNN?=
 =?utf-8?B?eENNMjZkNWJZWWY3YlNWUi85ckxEdDN3dG9QNkU0SXZKbkdzZzFJMm9vUzFK?=
 =?utf-8?B?ZElHQy9OMXUrT2VLNGhhREwzVnFNaUI5YlVxeG9ycENPdWRuRmFDMHhRZDdy?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f52858b-9599-4198-a51a-08dd20fdce5b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 13:54:22.0330 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kFZtCMgxcNfaeGYgdsoAfe9/6M3wvjYihYSIHlDMpzYs3UIV+ra3ZKlpQzSXuh9ajnpqFN/h8N3lffxuwrnckA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5234
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

Quoting Jani Nikula (2024-12-20 05:50:05-03:00)
>On Thu, 19 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> If we look at how the members of struct intel_global_state_funcs, we see
>> a common pattern repeating itself. Let's add the necessary
>> infra-structure to allow reducing the boilerplate. We do that by
>> adding common generic implementations for each member and adding a macro
>> INTEL_GLOBAL_STATE_DEFAULTS() to be used when initializing an instance
>> of struct intel_global_state_funcs.
>>
>> That way, a global state that does not need custom behavior can have
>> its funcs structure be initialized as in the following example,
>>
>>     static const struct intel_global_state_funcs <prefix>_funcs =3D {
>>            INTEL_GLOBAL_STATE_DEFAULTS(struct <prefix>_state, <base_memb=
er_name>),
>>     };
>>
>> , without the need to implementing the functions.
>>
>> That doesn't come without cost - we will need to store two size_t
>> members -, but that cost is arguably justified by the simplification
>> gained.
>>
>> In an upcoming change we will put that infra into action on existing
>> users.
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_global_state.c | 41 ++++++++++++++++++-
>>  .../gpu/drm/i915/display/intel_global_state.h | 15 +++++++
>>  2 files changed, 54 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers=
/gpu/drm/i915/display/intel_global_state.c
>> index cbcd1e91b7be..4b4c33fa99fb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_global_state.c
>> +++ b/drivers/gpu/drm/i915/display/intel_global_state.c
>> @@ -59,7 +59,10 @@ static void __intel_atomic_global_state_free(struct k=
ref *kref)
>> =20
>>          commit_put(obj_state->commit);
>> =20
>> -        obj->funcs->atomic_destroy_state(obj, obj_state);
>> +        if (obj->funcs->atomic_destroy_state)
>> +                obj->funcs->atomic_destroy_state(obj, obj_state);
>> +        else
>> +                intel_atomic_global_destroy_state_common(obj, obj_state=
);
>>  }
>> =20
>>  static void intel_atomic_global_state_put(struct intel_global_state *ob=
j_state)
>> @@ -164,7 +167,11 @@ intel_atomic_get_global_obj_state(struct intel_atom=
ic_state *state,
>>          index =3D state->num_global_objs;
>>          memset(&state->global_objs[index], 0, sizeof(*state->global_obj=
s));
>> =20
>> -        obj_state =3D obj->funcs->atomic_duplicate_state(obj);
>> +        if (obj->funcs->atomic_duplicate_state)
>> +                obj_state =3D obj->funcs->atomic_duplicate_state(obj);
>> +        else
>> +                obj_state =3D intel_atomic_global_duplicate_state_commo=
n(obj);
>> +
>>          if (!obj_state)
>>                  return ERR_PTR(-ENOMEM);
>> =20
>> @@ -382,3 +389,33 @@ intel_atomic_global_state_commit_done(struct intel_=
atomic_state *state)
>>                  complete_all(&commit->done);
>>          }
>>  }
>> +
>> +struct intel_global_state *
>> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj=
)
>> +{
>> +        void *state_wrapper;
>> +
>> +        if (WARN_ON(obj->funcs->state_size =3D=3D 0))
>> +                return NULL;
>> +
>> +        state_wrapper =3D (void *)obj->state - obj->funcs->base_offset;
>> +
>> +        state_wrapper =3D kmemdup(state_wrapper, obj->funcs->state_size=
, GFP_KERNEL);
>> +        if (!state_wrapper)
>> +                return NULL;
>> +
>> +        return state_wrapper + obj->funcs->base_offset;
>> +}
>> +
>> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *=
obj,
>> +                                              struct intel_global_state=
 *state)
>> +{
>> +        void *state_wrapper;
>> +
>> +        if (WARN_ON(obj->funcs->state_size =3D=3D 0))
>> +                return;
>> +
>> +        state_wrapper =3D (void *)state - obj->funcs->base_offset;
>> +
>> +        kfree(state_wrapper);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers=
/gpu/drm/i915/display/intel_global_state.h
>> index 6506a8e32972..e47e007225cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_global_state.h
>> +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
>> @@ -8,6 +8,8 @@
>> =20
>>  #include <linux/kref.h>
>>  #include <linux/list.h>
>> +#include <linux/stddef.h>
>> +#include <linux/types.h>
>> =20
>>  struct drm_i915_private;
>>  struct intel_atomic_state;
>> @@ -15,6 +17,10 @@ struct intel_global_obj;
>>  struct intel_global_state;
>> =20
>>  struct intel_global_state_funcs {
>> +        /* state_size and base_offset are initialized by INTEL_GLOBAL_S=
TATE_DEFAULTS() */
>> +        size_t state_size;
>> +        size_t base_offset;
>> +
>
>Gut feeling says these should be part of struct intel_global_state
>rather than struct intel_global_state_funcs. Keyword being "funcs".

Yeah, I kept wondering about this and even considered a possible rename
of the struct type, but thought that would be probably too much just
because of two fields that should be considered private.

>
>They would have to be passed to intel_atomic_global_obj_init() and
>initialized runtime. That's a downside.

That sounds okay to me, although I would prefer something that
would not require explicit calls to sizeof() and offsetof().

> But then you could do away with
>the funcs struct altogether when defaults are used, and pass NULL.
>
>And you could also drop INTEL_GLOBAL_STATE_DEFAULTS() which I don't find
>particularly pretty.

Yeah, passing NULL seems like a good idea as it allows one to even skip
defining the funcs structure, but I think dropping
INTEL_GLOBAL_STATE_DEFAULTS() would make this an "all or nothing" type
of stuff: if you just need to customize one behavior, you will need to
define the whole structure explicitly.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>          struct intel_global_state *(*atomic_duplicate_state)(struct int=
el_global_obj *obj);
>>          void (*atomic_destroy_state)(struct intel_global_obj *obj,
>>                                       struct intel_global_state *state);
>> @@ -26,6 +32,10 @@ struct intel_global_obj {
>>          const struct intel_global_state_funcs *funcs;
>>  };
>> =20
>> +#define INTEL_GLOBAL_STATE_DEFAULTS(type, base_member) \
>> +        .state_size =3D sizeof(type), \
>> +        .base_offset =3D offsetof(type, base_member)
>> +
>>  #define intel_for_each_global_obj(obj, dev_priv) \
>>          list_for_each_entry(obj, &(dev_priv)->display.global.obj_list, =
head)
>> =20
>> @@ -96,4 +106,9 @@ int intel_atomic_global_state_wait_for_dependencies(s=
truct intel_atomic_state *s
>> =20
>>  bool intel_atomic_global_state_is_serialized(struct intel_atomic_state =
*state);
>> =20
>> +struct intel_global_state *
>> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj=
);
>> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *=
obj,
>> +                                              struct intel_global_state=
 *state);
>> +
>>  #endif
>
>--=20
>Jani Nikula, Intel
