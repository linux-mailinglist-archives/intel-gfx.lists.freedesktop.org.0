Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30858A14F26
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 13:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFF1210EAE2;
	Fri, 17 Jan 2025 12:31:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bAHX3xV0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B90C10EAE4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 12:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737117082; x=1768653082;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WtSDV3Dw6dqP6n54gWiLAzNHVMCE4JjqNAH9nsJHax4=;
 b=bAHX3xV0fFnNVB+5RRSJrShysC0r13VZa0b49LHa2AoxE0E/250BL07t
 tyl4invYrlT4IoNXp8EFVNWC+pOMolPaWsGF8A5dZU80PM4H5ShbReXPR
 A61q0BSSYvVYkdKlZyFTQRFnRVY9oeQbXouKoJPvcg/3dBFU8xR7YWirp
 v3CRBPk80g0yN1YsKfuAhJvEG/wF1eGllMuw0omqf9LTdiIirxHqhGBLC
 y3qmmt+sbhttz4bjyk2u+C3IlT2jstAlTrQJXD7LrsegD1yjeJNE6XoiE
 hLiqRcFESNCMXtLe+KsydXLV4f3zentu+deD+EVUhdAm6qVSOptfybBdv w==;
X-CSE-ConnectionGUID: VLlqxmhlQPuVJAHGFcjVXg==
X-CSE-MsgGUID: OrPv5Jf8RxaCsXVhhVqUgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48131731"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="48131731"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 04:31:22 -0800
X-CSE-ConnectionGUID: thFQv9whSLeNoUnpNW9B/g==
X-CSE-MsgGUID: T8XL020eQ7K/pO+zthxYjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="129054802"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 04:31:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 04:31:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 04:31:21 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 04:31:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pIocAfSs33MGnqDacnMxKkKraO7FdJ+NKQbMEjUGmrix/p2Ufgjwn7NReYyhp3yz+JdMy/YEHqMvKRlN99lUwgKQCJDm6e2soPFkdgkYafRyRuIdaol1O82jwTLji3OWbiHlG7/LBetbMEG48LlSQrrusJDlIheMA9LB6DAVuJ8PLK2IYREd8bd9k1MZIa7kzfQTt1ezoZgi8Gxt4a2RZNlzloyTAwVbQuC2OBuG7YWV138TPPuWXt5aaJkCoBXu5kIvzJvJ0cELArfTxCQ1XWqc/HWh/+r5f3PJHkjksWy5U2LfPtWjU1o0Us2FhiSb/DEtPqdVDOk8A0ae3t4zNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i5UBR65mNAqYLnRsDXDDhe6SsxeurAlf6cVnBtt8Ok8=;
 b=wMLSl/kIdg8JbaB8frP5miaRq4y4/5ZLxTFpQxcXvNUs8jQKTV4hohpZ5gevnC12dQOZ1wpMI1M4LrfoxtkO4siOe3b4x/6cstKsR1SCDPRMd198igZF+607fFYXCocXkn7uKrm8dWOACWm73U4nimt5LCw9BDnDKtuWc+oIUZKsSDxxF7i/2enFr7pX3LCctahJNcBGVOkjdmLVa7QQ1tLnDv+5arwfkFRthT1bqDCuVJ2xpmNgBMacYwlRJ5gwkxaW1+f7LMLXPoLVWah+WmxFvfqyo2J5KgNpmgG2FJ23g6StgswgjGjchiPLxd/09J8IVMyP7uZc0UZ4cfUW6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6944.namprd11.prod.outlook.com (2603:10b6:806:2bb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Fri, 17 Jan
 2025 12:30:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 12:30:36 +0000
Message-ID: <68ff70c9-94cb-4f23-b934-bdad348a212a@intel.com>
Date: Fri, 17 Jan 2025 18:00:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250117074124.3965392-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250117074124.3965392-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250117074124.3965392-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6944:EE_
X-MS-Office365-Filtering-Correlation-Id: f8e8d41b-e784-4edf-fc02-08dd36f2be59
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M012SzJEOEJiZ0Q0U203L3Z3VEVXQVNlRkNDNksxb2o2T1drV1d2Y1NDM2hB?=
 =?utf-8?B?RHBqYlBNb0dZVUlmQWVIbjlCNTEwKzZJRVJxRDdYS3V4WU1IdW1BK1BLSE1v?=
 =?utf-8?B?WUJyK0Z3UDRXbzNyWlZ0MVJkcThPNlgvWUZqejZXWkpSblVlRW5GMTdhUk5X?=
 =?utf-8?B?NUNIMnRYWmdEd3Y5Mkp1clZmK3M2SFE1Q2VMZE53SGtEOXRQWE1xUlNpbnVC?=
 =?utf-8?B?eWViWHlYUkw0TDh6bitieDJhZVlQWnI0akl1OU5IVktLRlFFSGJReklCZDlZ?=
 =?utf-8?B?cW1QdXlvYTNmNUdFY0NmU0ViSG9BQ0h1clVWN3VSaDNwMG5xN3RQY1gwenZU?=
 =?utf-8?B?UHFiKzNyNDNWSHF3Ti9ZditYWW1NdGZPZFpyUFV1dFlYVWQrM2FwT1lRR3Az?=
 =?utf-8?B?V0tad1o1VjZVNFd6emJ6ZEhpRVJzZGNmR1lGa1pnRURGRVAwOWNTWUV6bkdT?=
 =?utf-8?B?RTh2RkZqdzdoZjNzaXhZbmVtamNSVlFzZTcvUXZUMVoxblNHUUZzWEgzUlJP?=
 =?utf-8?B?ZkVUa1BxUXQwMXJLMFNmZkk2L2hyVE5RS0RXUzY0c0pZaTBwdk1kMWZ6VGJF?=
 =?utf-8?B?Z3ZkOHIzRml4VzJPZ3hBbGhQajlEd3N5elBNNnB0V1RTRDA4NW4xTENWakRF?=
 =?utf-8?B?RVkyWXlJc2FXYjlZQUlpWWxkZGlQeklXTGJXY1RocmRIbFZKZjhNZjZIQ2k4?=
 =?utf-8?B?S1JrT1g3MVdtdmxNSWFxS1lWUXNQZWRkVlhrL2pTQ1lZaXJiRzZTM0lBL0Qw?=
 =?utf-8?B?WE40OHkrVkZzYy9jR0c1aWkzZ1ZXMVgyRWdJRVhkSldIS2NEcXlnYVVLNVpw?=
 =?utf-8?B?djhNR2VpaVFVVk1NNjMxUUx2ZVdTKzNlaTRjSU0yY2tCcDFKYXdoSXN1b0No?=
 =?utf-8?B?Szg4THFXNFMyM3lhanY2THNaUDVxYXFpc3F2bkxKRU5Xa0UreXhVUXlSR2xq?=
 =?utf-8?B?cUd3b1YxMHNqTU45eERIbEY3YVEwakw1dkJkejlJMlI5YzlycEk5UW95cFNs?=
 =?utf-8?B?L1hkYlY2K2FCdjJ6MUIvM0dsclkwdkNHemc3SVR6QnNDRk95WjQ1Q3NiaVdW?=
 =?utf-8?B?d1VKdmhRNUNZTjBLMzlkSVgwbDZncDdwTjhhT2YrUkxORWJZRERXdWlGbVR2?=
 =?utf-8?B?Q0VSUDY3cEdURkVpNkljdmcyR05IR2FBYkNKbFZXMHFHZDJVdEpJMmpOd3JY?=
 =?utf-8?B?c1d4RVdKSFFCZk01V01jd1RIY1FRZ2pDT3B5R2E1aTc2NkxVUXloQyttZzh1?=
 =?utf-8?B?ZVNqOGt3blVhazhlclpZVFdlL3ZreVVoMWZ2bzVzNTFubDBxcDBJczBnT2tD?=
 =?utf-8?B?clMzbFZsVGVEMEdHZEtoeEhXR0JEdWc5a25GTm9jUlVGL3RxMkd2UzlwVnRp?=
 =?utf-8?B?Y3lZR28wdXN0UDUwT1cwZnJxbXcvTUtZNHk0U0dHMEM2K2JwWm5FR0pmY2U5?=
 =?utf-8?B?ZmMyMk1qaDg3bXFiR2hXNzJYejJyTFRiM3drKzhHcFFRN2trNHAyc0ltcFh3?=
 =?utf-8?B?VUc0VG50QXN2cjdwMHlCOE9kcS9Sek1hL3pPbXBjcnJtN2RkQTJjVmNUejdY?=
 =?utf-8?B?VTZMWXZ1MnRieElWaFF6eng2cFRnVkt4dDFCK2VzYlZPOFBvU1dCT0JvQVcy?=
 =?utf-8?B?Y0doNDhLdVdIclFwM1pqeUovQTlXb0xCY0NIQlBBaVluTFkwRFJZK0ZScWlj?=
 =?utf-8?B?ZDd1bTlndjhjMzl0MmhIVkQyVWdxMlBZMU5vc2l4bDZGd0pkNnJMclcrSGhD?=
 =?utf-8?B?czFKMitvRHhYMGhGMnBoSTE1dlMwVUEyU1FwaWxvVmU0YzRaYmE3eThaQTlv?=
 =?utf-8?B?bFc5V25CRGZvakZuRjZ6akNNaWk0SFhuOUtXMUtnYUlUdy9BNGZYQTN3SkZP?=
 =?utf-8?Q?zhO7191I1BkZM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amVvVkZDaU1rb2JzZ0lkcmxMMkRoc2hOSWpKcjVEdk8xbjJWZkx1TjUzc2tM?=
 =?utf-8?B?dlFhWGxJZ1ZSNE9vVHdvS3d0Y3EzdEd6M1EyMTR4ZnpuRmtQZWZlT29YUnlP?=
 =?utf-8?B?WFJ2eTFrWDJTYU1FWHVNUUxIK0EvRWo0UktmeUtoaTJMTDYvNkJoS05PK0tv?=
 =?utf-8?B?WkxuRnpCTmxQV05EMkxMVkJ4N211T1RoYXpaN08xNGlVN0N5VG1XdkxsK29B?=
 =?utf-8?B?YlZKN2Y4RVB5YjJ3YTlzdHpQeFpHR3NGZHpuOWhNeUpqWjExTGp0blZXdnI3?=
 =?utf-8?B?L1VYdHNLQkhVWjNGU1loaEJUZXJsVXNsNVpvUVl0eE0zTzhBSGVpTHV6OFNV?=
 =?utf-8?B?bWJuanpIYlBCcG5DMG1UVUQvVW5vcTJRS0ExUmZ2cTQwdFl6VGdUYlF4ejFX?=
 =?utf-8?B?QysyMEVDTVVYUlJDeFZvdS96NDYwUDBhdXFtR3NwMUV5K1JxV1dPNGdQRkRS?=
 =?utf-8?B?M1ZmNThBcWdYZDk1VnZOQWUwcUFYMEdtKzc5VFBqM0MrV3hwbnlLdXhhbGRj?=
 =?utf-8?B?RVZmZ2pxeHM0d242S1F4M0NzSDRZWi92aWNzOFJoMDV5cEtUUURJWkFscG1O?=
 =?utf-8?B?S3FSdEhJNkE3elNOdmdvWVFRTkUzc3cxbDhaMmJOVitnNWg4UEpIL0NiQ1hu?=
 =?utf-8?B?RkgrbjVXWVY0MUxEZ0JoMVAwRTVtb1N2dnF2UkU1eG9GRzRBMVYvb2w0dUt5?=
 =?utf-8?B?Q0hlZVhKakdvY1lsWEFXU0tCNS9LanM0d0I3cU14Uy9ZVU5MSDNJNWRpamx6?=
 =?utf-8?B?dzBZb1M3Q1lsV2lEMmczV0JaQmRzeGNTR240TzU4L0ZlUmlabzZIdG5qckJ2?=
 =?utf-8?B?TkZJTEh5eGxGbEk1RHdBdGcydldJTW9pWTEvWXk0c1oyejlFS3RjWklMZDhG?=
 =?utf-8?B?QU1WeTJoYkpING9nR0ZqaFV2SEg0Rk9pOXlrTS80WE5URGxZeFNueGNxcTRo?=
 =?utf-8?B?K2UyQ3laUVlUb3hxaXlCOUkrcTAyazQ0QWhHdkhwbkgwOFpxSUN4UE1Fa1BL?=
 =?utf-8?B?WlkzYTNMbUpqakVtQWMyUXlFRU9qZlUvSDcvem1rQ3o2MSsyS1MxUGlyWjRJ?=
 =?utf-8?B?TWIwRTZnUFdwT0FWYXNueXZEellSN3hSVmlFZXRnaHhvU1NFRXpXVDY4YldG?=
 =?utf-8?B?WHpmcDV2RnBSTHQrZ1pIUTdLTHR3ZGdPQSsydGsvY1dYNlJmMzhhMlBpc3Yy?=
 =?utf-8?B?QWI1Sk15RHF1bmNhQy91QWtIMVU0VDZ1RzZESFUyWkRTVURBb2Y2S3NOTG1n?=
 =?utf-8?B?UkRNcEF4cko5TGxtckVMd2JpcC9GWkFCVnR0U2F0bllJZE1nWVpvNjdPdlh2?=
 =?utf-8?B?b3NoVzltK3hyeFJqOWZxcnQ1ZHZNZUdXTVJOalpXWVFQQjErOHlrcUN0N2dl?=
 =?utf-8?B?ZFg0UGhYVGdwYmcxZG1jakdERC9wbU9obElPTFdPRHhUczR1NjB4Nmx2djlx?=
 =?utf-8?B?SC9SUHpWeEpUNmJmUXhKRjBwQXJTdXQ5T1NOSzdwNERiRWJiVVJRaTJiallr?=
 =?utf-8?B?elpJWmVQaXliaUNMN2lsb3RUT0dJZzQrL1QrQUdLeVhSMUFjSFBScVh0VGxr?=
 =?utf-8?B?aGxPNXFqUnNmanNvSkhCWm8yWkdQcWtTTG5EVUdJV2FvSE0xTS9Zcit5WkNk?=
 =?utf-8?B?RDgyTFZYZGxadStmclBwcS9ObzBDTEFaWndSVjFtVnV2ckd1clNtT01aM2hJ?=
 =?utf-8?B?SlJOT0VxTDZRb21JQ0RxaEZNV1paeXhyb1pSdzZ4OWt5ZTd4UkRUa3hOcFF3?=
 =?utf-8?B?T2lQdWVzZEFycDNzbnlIWVRoYW1xN3ZPeS9zMmI3bmE4TXVrRUFJcEdDZC9M?=
 =?utf-8?B?TjlPMFZoQytKSGt5V3FvT0ZaUS9FTmk5cEQ2TjlIWGEycUllNk1zUVZWdVZi?=
 =?utf-8?B?NXo0NndJaHVxVTVhSFNzZ1l6bFNDUFVGb0ZGUjY4d3AwNi84bWI3eEpDNGdv?=
 =?utf-8?B?QUNRcHlVOUxxYWsrMlhMM0sxbjVWa0JLS016cnZaa005dVYwblBSL1J1aXN0?=
 =?utf-8?B?OTNYMGR4Nkt1SDNEZmxqY1V0a0ZLL2Jsdk5OOEJka1pFQTNValdqVytvUnpq?=
 =?utf-8?B?bmpFWHJ5MXR1Mm56Mk1WOUxnZVB3TUs2VjkwNGxoWlF6KzBEd0h4Nmc2ajBX?=
 =?utf-8?B?OUtRZnpCNEdIbVFTUlFtVGNRdGZEQWZBMkxEQXQ1KzE2aVNzZGNhSE4wV2Rx?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8e8d41b-e784-4edf-fc02-08dd36f2be59
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 12:30:36.4796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /QJwh8xdnS1C51CH3yz269pfUSQraVQIxoHd/aBR8QpqoGvvlxY1lj2LWuxd+VIijIYcExeyPh5pcCgkkktcarXC9jFl62a3joRNstaLZ+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6944
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


On 1/17/2025 1:11 PM, Mitul Golani wrote:
> High refresh rate panels which may have small line times
> and vblank sizes, Check if vblank size is sufficient for
> enabled scaler users.
>
> --v2:
> - Use hweight* family of functions for counting bits. [Jani]
> - Update precision handling for hscale and vscale. [Ankit]
> - Consider chroma downscaling factor during latency
> calculation. [Ankit]
> - Replace function name from scaler_prefill_time to
> scaler_prefill_latency.
>
> --v3:
> - hscale_k and vscale_k values are already left shifted
> by 16, after multiplying by 1000, those need to be right
> shifted to 16. [Ankit]
> - Replace YCBCR444 to YCBCR420. [Ankit]
> - Divide by 1000 * 1000 in end to get correct precision. [Ankit]
> - Initialise latency to 0 to avoid any garbage.
>
> --v4:
> - Elaborate commit message and add Bspec number. [Ankit]
> - Improvise latency calculation. [Ankit]
> - Use ceiling value for down scaling factor when less than 1
> as per bspec. [Ankit]
> - Correct linetime calculation. [Ankit]
> - Consider cdclk prefill adjustment while prefill
> computation.[Ankit]
>
> --v5:
> - Add Bspec link in commit message trailer. [Ankit]
> - Correct hscale, vscale data type.
> - Use intel_crtc_compute_min_cdclk. [Ankit]
>
> --v6:
> - Update FIXME comment.
> - Use cdclk_state->logical.cdclk instead of
> intel_crtc_compute_min_cdclk. [Ankit]
>
> Bspec: 70151
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 50 +++++++++++++++++++-
>   1 file changed, 49 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index f4458d1185b3..c8e540dd66cc 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,53 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_atomic_state *state =
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	const struct intel_cdclk_state *cdclk_state;
> +
> +	cdclk_state = intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state))
> +		return PTR_ERR(cdclk_state);
> +
> +	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
> +				   2 * cdclk_state->logical.cdclk));
> +}
> +
> +static int
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
> +	int latency = 0;
> +	int linetime =
> +		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> +					 DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
> +						      crtc_state->pixel_rate));

This seems wrong. As per my understanding, linetime in usec should be 
htotal * 1000/clock.


> +	u64 hscale_k, vscale_k;
> +
> +	if (!num_scaler_users)
> +		return latency;
> +
> +	latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 4 * linetime);
> +
> +	if (num_scaler_users > 1) {
> +		int chroma_downscaling_factor =
> +			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
> +		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
> +
> +		latency += chroma_downscaling_factor *
> +			   DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k),
> +					    1000000);
> +	}
> +
> +	return latency * cdclk_prefill_adjustment(crtc_state);

The function can return ERR. We should check for error before using this.

Regards,

Ankit

> +}
> +
>   static bool
>   skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   			int wm0_lines, int latency)
> @@ -2299,9 +2346,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	/* FIXME missing scaler and DSC pre-fill time */
> +	/* FIXME missing DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
> +		scaler_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
