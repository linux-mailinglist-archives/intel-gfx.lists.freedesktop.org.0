Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAF494D0CE
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 15:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB7910E0DD;
	Fri,  9 Aug 2024 13:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Odd6uYac";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE3910E902;
 Fri,  9 Aug 2024 13:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723208742; x=1754744742;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=4yQVIQ0dwkNphWdNVqRhK1Uwdwe+0MbvexFR2QxN1lE=;
 b=Odd6uYacasc0EQW8Gce2A+mxpg4ZnLcFXUHHF92OGWF7A6S+XFbX8sdn
 u3Djc2Eam3b1csukznPP3nIrNuTHeElIwhjJSSDRd4YuYd0+U6hXb9og4
 +cWMUTpoCv4Usr4MmO224oC4Q+kFzIRgNzI4yHBCQo/PJoOUkoESW4JjK
 lv8nruTtbmpFFINByHFnhnvQQyx5IYpmL9MREN9BVU4aTGiJjUXjqsk9d
 QYw3Atrcn6c6WddQINVVU8L357/q2rq6ja8zkuEpytnPYfejbnzWLWNO+
 +JN0gDjDh4Ahqp2bgiILXwutd7VWMrAPxHNeIsrl4La0A0ZQNJgwG8wAt A==;
X-CSE-ConnectionGUID: BBTRDi4gSpGWHV+XWPcvtQ==
X-CSE-MsgGUID: R/OVj6DQQgKOnhd9IgeUzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="31956355"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="31956355"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 06:05:41 -0700
X-CSE-ConnectionGUID: 5guFxaTeTCyIUm4JG97xbA==
X-CSE-MsgGUID: i/jhJmq+QW6z0peIPv1OxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="58129824"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Aug 2024 06:05:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 06:05:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 06:05:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 9 Aug 2024 06:05:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 9 Aug 2024 06:05:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wwp6G9xF4s9EOktfnxn4NvA5mIRCWHken5Vz1mehzwWGghqatN+dOOvohI+lbwK4By2eq9YHyl9Tx6tCR087lUphaLxGuMypYOXn6FMdX6ma4wHuD0Wjq9ge7Mo+Hx/+PJVMLHZbC3RZChs2l0cpIpftik7hIH6n/VmC1cUYcxxuZYrHON/vKM0DRup150LRGHpopmMbQWeuoyyLyHVLRkXabZkFGCYj4udRzc1MpIqQvuqzPRuW6Nj2tBiTyHXz7x3yemp2SXRVUtCk1eIdA4fZWVuJ36MXH+Oew6BVAnfe9Vx1d+1x7MqjQ40FxLQ1NZq6T/y2BE2d82HIT9gUgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o1JVALyBlQmUWpMJ3UsM6YoQvhIB6lT5wLPUR8r+Yto=;
 b=rQSpdRvHeu6LrFpCoz+ipkU9qfp5yo06X2LIUPgRo+4OnJP2Cwe0jEXSlp6vuev+G+oPCm52VOyJOYt8QOqbwQ+1lJ/BXfDHYSD93dEzzWARvuh4w7vBCalPourfC1EJCf2UYWk7MrLKgQcu6bgNmosM65m0nakFYHMkpqpf4Ld/0ZiZsMv4L3N27zDILemYNsWqbhTec2Y0I22kJq/UD9z48DxJayig3lF5yGJhpkk3i1j8N/oJyu1N5Kx0/6b3QY79Fyrra7TbitK+kN4Zp7oCjq6bjy65dDj6dKZ08ktKwJ6dciGuHo9vRjBhqQU8WRyVGns7s/ARmE2vUzc+Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA2PR11MB5177.namprd11.prod.outlook.com (2603:10b6:806:11c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.32; Fri, 9 Aug
 2024 13:05:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Fri, 9 Aug 2024
 13:05:36 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2425c7660659c94a96ba42078d237da8a032984d.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
 <2425c7660659c94a96ba42078d237da8a032984d.1723129920.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 09/10] drm/i915/hdcp: migrate away from kdev_to_i915()
 in GSC messaging
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <lucas.demarchi@intel.com>, <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 9 Aug 2024 10:05:32 -0300
Message-ID: <172320873261.4788.16374142199020710106@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P222CA0025.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA2PR11MB5177:EE_
X-MS-Office365-Filtering-Correlation-Id: b0f1aa38-ab0b-4c5e-3b68-08dcb873f5e3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eHViUFd5bzBQSzhiblpjdExrdXFaYlBVMkk4UUlSWE5kajNJdDJMK09pUE4w?=
 =?utf-8?B?MnRtMTNhdDNzNmRXRXJvWGZsTWdSeHE5S0toY2QyZDRGOGRQYWc2ZXExVUJo?=
 =?utf-8?B?TjdEcWhQMkM1OUFwbVJINGZ5SFd4WnR1YTNVaDZHQzZ3UXMxOGhaQWtlc0Y5?=
 =?utf-8?B?OHc2dGNJQWs3ejNGSVh1Nm11WlI0RThyY2pVOG1hcTlOOFJNYWFNQ2g0ckZU?=
 =?utf-8?B?TW5uUXRuTnFManVyejVJSUdrZ1FIQXh3cG9jN2ZnU0tKL3Z5dmppVkFUZWZD?=
 =?utf-8?B?QTdKb2hDWVZYZ3gvSTBnT1JXczFhRE0yejc2a2FGeklNL1lEOWt1VHdmK3oz?=
 =?utf-8?B?SXBiaXlJdE5hYng0NjJMRlBlK3J6Q3NRSDQwLytVZ2Rhbmc0ZzljYlZNVllw?=
 =?utf-8?B?NStiTjdHMEdIc1g0eWpaaXp4QXhPVkh3R05yeG11RmdkNXVwWER3VHp0NE9k?=
 =?utf-8?B?V093QS84dlVKMUdvK1BRdEtaSGQ4dmViZ0d3KzZla3VoOTJTVThrOGhDRFNW?=
 =?utf-8?B?TmVYZ0paMkM4K0JyWWRUdFYrTFQwRE1nbEI4eGpwUjYrb082MTNhTm5aVWtW?=
 =?utf-8?B?MmFGREFLWWtQK3VpQStXRFViMEJPdjk3cDEwaFR6REpNUnErbWhaODFubUFL?=
 =?utf-8?B?WVFCcTJEa1h3SkQ5NkpDc202emNtcEh6VWNWWklRZGwxamJydkhNMDhvMjBF?=
 =?utf-8?B?bXUxQTBLb0FaSTFGQ08yY2R5c1dvSWpmdFhESE9vb01lMUZOMm5uakJ2Q29m?=
 =?utf-8?B?dGZFUkRMY3NyOGo1VGdkYmI1QjZBb3U1V1gvaHFtN29Tam45V09lVjNMVW8y?=
 =?utf-8?B?U2NIeVBZYnU4bjJzVHk1WHZNTDZsV3N3L1pwdkgyUFYwVFdJdTZNbXNLL240?=
 =?utf-8?B?WFBBbTUyUy9BNGg0TTl3TmNUdVJFR3R1MzIzTVBsL1kwSW5xVUFtY1BvSWFO?=
 =?utf-8?B?aWM5cFd3LzNGeXE1ZUszeHcvVlNuTDVSTDcrOUU3d3MxUHBYaWJNZWNRaFZu?=
 =?utf-8?B?K3BhUkU0UGc3LzVZb3hCeTVwdmlqeGs4WC9hSFFWMGpRSmJ5dklWUmVLbkdh?=
 =?utf-8?B?K2x1MEtUSk5lRmF0bmdjN21tRHl1ZHBPOHdRR0s1dUJaeFFuV3dvbThFMERu?=
 =?utf-8?B?cGY4R3pHNk91Yy9BUEdpYm9wQllwdFlaTEZRc2dGN2lIZk1OUk1Qd3ZWTHlo?=
 =?utf-8?B?Y1hiWkQvMlUvNlBWZ0lpcjlWS3dJWU1idXZ1dlpUNmd4SzhicmZQSk5jMXpr?=
 =?utf-8?B?eE1ETHFNcVErWGhlU2xCQXA0cVNBNnFYbzRnR0VMTm8vMHdpUWE2cU10dGpX?=
 =?utf-8?B?VXBrSXhwbXZJTXhHWDdwTlM0UHhsTlJhNk5oekhBV1BibFpMQXByT0JERnpo?=
 =?utf-8?B?TkVHVXQvVUcwN2RDeEVBWEpqOERveVQ3NVZmQWRTKzlHYXZyRVEwNmdCck1a?=
 =?utf-8?B?M0tVL0U3OXBTUGkvdERJSVdYRXdQaVgrUzMycDltclVNQVJLWkdmd2V5aXhI?=
 =?utf-8?B?TEdOYVVrcDZObkkzc3U3YWU0QXhyMlJNS2djbGQxbzJHc1E4NTVWYmt1Q0g4?=
 =?utf-8?B?N0NVSzNpamxvSjhsN0ZQNEpHbVZuSWxNWHJYUmFRRy9uNTNvaFZmLzVxV3Rn?=
 =?utf-8?B?Um1pc2VINUVhcFExc1cyVUw1Zy9oSXc0YitDbGJ0NHZSNjZGL1RFSTcrdUM1?=
 =?utf-8?B?dGtoYkxQUmg5cS8yQk42TklRaFBEcXYrMTVqcHVQZ0lKZmZoZGE2VHJ0L3hv?=
 =?utf-8?B?ampOVFdzd2JJS3NIeVpmRUhSMjd0dVRnMXlIZklKTUJkSUQxeENXUnUrKyto?=
 =?utf-8?B?aTAyQnFkZ0FOZm9wWWFsZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzdCYUpINnVja1BDakhXMXlyN1lFYldHNW9wNEdPVEJjQ1grczFGK1g0U2Fo?=
 =?utf-8?B?Vkd3aUphcmJBV0YrYnA5cENmY0hoaGgvaXpLZVN5ZHhxRzhXVVZmNVU4Y3Vo?=
 =?utf-8?B?NHM4VGxyQ1dDY0JoSUVEZDZadnlsM2NQbGE1ZGVxVXFYc1VFalI2NDRDR05F?=
 =?utf-8?B?TWRGbUZUOGw4RUNJMERxalovVHBuc2M2ekViQWV3R2lvQ25yZi9YaEV4RWkv?=
 =?utf-8?B?cERMc0RucGtrdFZadVBnS1JoSm9BZjByRUczVTltUlpKaTh2ZHZpM2xvZG01?=
 =?utf-8?B?MkxTLzJIdCsyS1RyVkxUWDVvK0ExUWt4ZTd5eDhHbTR5ZXBjQlhNekYzMTkz?=
 =?utf-8?B?MmRxdUlDVlNaMi96OU0yOTZjWHVpV0NyOHFISmxhZnlzakxjMmc3S2xpYTNX?=
 =?utf-8?B?RDZvajY5QTJxM2lZTXlFd3dCT1ZyOE4zMjhIKzI2cGxpVkhod0FNR1VqZUdM?=
 =?utf-8?B?ckNxQnUvQ2JGSlFteDFpUDQzdndJdHJiQnVQM2FHaWJxbUN2V0ZwYVJWU2lC?=
 =?utf-8?B?QWpEdWNpaEJ5QVg3bUZyT1ZtRlpzejBUalhZWWxoMktmNUtyUEdDaFIxMThO?=
 =?utf-8?B?VmNMenVwK2pRT1RKMytVQms3N25ucng0UzNWZHJJUGlFYno3R0lrcFJCQUNp?=
 =?utf-8?B?SnpRMTh1YUxQa014VmlKRVcvWDNzSnpDZ0loS2dzT1ZGeTFmTDArL1c3VGo0?=
 =?utf-8?B?c29OL0MrQ2ZxbXdreWtvbzhNbUlVa1M4bmpzcTBMZkVXK0Y3YkV5ek96cEJQ?=
 =?utf-8?B?eE5JZEU1ZktXSXJPb3BBV1pnYmtvc2cvb1VSVmhnVnE1dW5TcHMyS2xyOWpI?=
 =?utf-8?B?b0VDN0Ewck9OVkdQM3Y3RTd5RHg4c0QwV0twOXE1MVhQbEwrNVFxTldXajl1?=
 =?utf-8?B?dm1OSkRwQmxpWkh0Rk5BUmVJWjJScGZiayswNEQ1MGx5bmlUaE5BT1grdTNh?=
 =?utf-8?B?VW9pRlpxK0NzVUF5NURLV2xId010b0FWdXdNM0lJOUQ2Y3BqS0g3ZTZobTJD?=
 =?utf-8?B?Y2gvbXgvaDkrb0luaDN4MldPL3ZiY0JydWVVRFNDaU5PK2FMRE1qdU4zeEJC?=
 =?utf-8?B?UFVFMUdDZVltKzF3OGY1dW9LZm5mcWtkbFFxUldiRVZ4K2JyUUhiSmU1aTFp?=
 =?utf-8?B?eUdSc2EvZXl0MjU4M2NpeCtTQ3NaeWQyZzc4cmRkMm5LY01EY2pMSnBkaGgz?=
 =?utf-8?B?eU4rUUY2SEtrb2t4bFpxVWN5ZDlxT2YwVEk0cWpOUVBVRUNEZ0lNNjk2ckgr?=
 =?utf-8?B?bno0Vm1iNmVYU3Bsc05FZmh6RmlwZklDYWdWMHJ2NWZLVEhaaStMUS8ydXNv?=
 =?utf-8?B?SmZ6VnBGWHVCQXg4ZjV6WlRuWW9xem1yVU9VYUdLUnB2cXo1R1dEaWJTalNa?=
 =?utf-8?B?WEI1bVA0czQwZmhlZjNTbTM5cFY1ejIyY3ZIcUxQYlQxSnhnUzFKOVNLQXlq?=
 =?utf-8?B?Z0NBUUI3S0VOOTNQK0tSaXFWTVpUeUwybHI0RkwxaWl4QkNZR1dNT3cvaW9R?=
 =?utf-8?B?Tzg2OU1VekpWVzZXN1AvbExyWjcyUjVmdi8xdHVDSFBnN0t1d1BsNWt6Z1B2?=
 =?utf-8?B?d3laUDhmR0dUNmhEeUREMVJiS2ovWnozZDNJeENvTE85UkRHaStwY01PSFps?=
 =?utf-8?B?K0JMQlh2K2svTlFMYVVLa2tiUHpyWlluUGVGSjkrdjkyNDBCUm9OTFNzN080?=
 =?utf-8?B?MURaemN6Q1pveUlRUllEb2JaNTRvb3YxQkp4SGVJOXBhWGlDMWVFSTF3elky?=
 =?utf-8?B?S28rc0dMcjRIYk0yOWJ3SWYzMTlMOHErUExWZEcwNUUzN0pvNzNNWjRCb1BM?=
 =?utf-8?B?OGVQWVVPcTdueWgxbTAxd2FhVHlvM0F2WmU3VWpuc1czNWdDMHBFdnBXRHdJ?=
 =?utf-8?B?K1ZKdFZsdkFrNlhJS0VXOWsrb09IM0pDOEpWaU15UXhaVjV4bENWdXlSaTdU?=
 =?utf-8?B?dlIraXFiUkdoSi9CeWc0aVpuWWVnSlRZRVJvNkdINTlsNVhTRlFLSjVNZER5?=
 =?utf-8?B?QWIyS01TK2RLSTVLaHdDbkp4WDYzZEU0RU8vNzBuY0ZkbjhMckZUVXdyd25z?=
 =?utf-8?B?ZzU0UGtNR21HRjFBUG9wT0VMTnBjVE1UVTF2YU9BUmlKTzQxb0w3RE5GaDI2?=
 =?utf-8?B?MjF1L24xVk1LeWdidllYc3N2Sytadkh0OUpCL08rRGFXNzhDSDZSZDBVNnJ0?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f1aa38-ab0b-4c5e-3b68-08dcb873f5e3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2024 13:05:36.9121 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SS93b2unbjRxfQqNZ4YUG6iXPWkAbhAhI0dfZeDuyfOXEvw3YK+gTGRG+HR7Rg20JbEiBSKXLcibRCfpgpTdaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5177
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

Quoting Jani Nikula (2024-08-08 12:15:54-03:00)
>Use to_intel_display() instead of kdev_to_i915() in the HDCP component
>API hooks. Avoid further drive-by changes at this point, and just
>convert the display pointer to i915, and leave the struct intel_display
>conversion for later.
>
>The NULL error checking in the hooks make this a bit cumbersome. I'm not
>actually sure they're really required, but don't go down that rabbit
>hole just now.
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
> 1 file changed, 45 insertions(+), 22 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drive=
rs/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>index 6548e71b4c49..35bdb532bbb3 100644
>--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>@@ -7,6 +7,7 @@
> #include <drm/intel/i915_hdcp_interface.h>
>=20
> #include "i915_drv.h"
>+#include "intel_display_types.h"
> #include "intel_hdcp_gsc_message.h"
>=20
> int
>@@ -15,17 +16,19 @@ intel_hdcp_gsc_initiate_session(struct device *dev, st=
ruct hdcp_port_data *data,
> {
>         struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D {}=
;
>         struct wired_cmd_initiate_hdcp2_session_out session_init_out =3D =
{};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !ake_data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         session_init_in.header.api_version =3D HDCP_API_VERSION;
>         session_init_in.header.command_id =3D WIRED_INITIATE_HDCP2_SESSIO=
N;
>@@ -72,17 +75,19 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct =
device *dev,
> {
>         struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D {};
>         struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =3D {=
};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg=
_sz)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
>         verify_rxcert_in.header.command_id =3D WIRED_VERIFY_RECEIVER_CERT=
;
>@@ -135,17 +140,19 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, str=
uct hdcp_port_data *data,
> {
>         struct wired_cmd_ake_send_hprime_in send_hprime_in =3D {};
>         struct wired_cmd_ake_send_hprime_out send_hprime_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !rx_hprime)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         send_hprime_in.header.api_version =3D HDCP_API_VERSION;
>         send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
>@@ -183,17 +190,19 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev=
, struct hdcp_port_data *dat
> {
>         struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D {};
>         struct wired_cmd_ake_send_pairing_info_out pairing_info_out =3D {=
};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !pairing_info)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         pairing_info_in.header.api_version =3D HDCP_API_VERSION;
>         pairing_info_in.header.command_id =3D WIRED_AKE_SEND_PAIRING_INFO=
;
>@@ -234,17 +243,19 @@ intel_hdcp_gsc_initiate_locality_check(struct device=
 *dev,
> {
>         struct wired_cmd_init_locality_check_in lc_init_in =3D {};
>         struct wired_cmd_init_locality_check_out lc_init_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !lc_init_data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         lc_init_in.header.api_version =3D HDCP_API_VERSION;
>         lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
>@@ -280,17 +291,19 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, str=
uct hdcp_port_data *data,
> {
>         struct wired_cmd_validate_locality_in verify_lprime_in =3D {};
>         struct wired_cmd_validate_locality_out verify_lprime_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !rx_lprime)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
>         verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
>@@ -330,17 +343,19 @@ int intel_hdcp_gsc_get_session_key(struct device *de=
v,
> {
>         struct wired_cmd_get_session_key_in get_skey_in =3D {};
>         struct wired_cmd_get_session_key_out get_skey_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !ske_data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         get_skey_in.header.api_version =3D HDCP_API_VERSION;
>         get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY;
>@@ -382,17 +397,19 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struc=
t device *dev,
> {
>         struct wired_cmd_verify_repeater_in verify_repeater_in =3D {};
>         struct wired_cmd_verify_repeater_out verify_repeater_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !rep_topology || !rep_send_ack || !data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
>         verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
>@@ -442,6 +459,7 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
> {
>         struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
>         struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out =
=3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>         size_t cmd_size;
>@@ -449,11 +467,12 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
>         if (!dev || !stream_ready || !data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
>         if (cmd_size =3D=3D SIZE_MAX)
>@@ -504,17 +523,19 @@ int intel_hdcp_gsc_enable_authentication(struct devi=
ce *dev,
> {
>         struct wired_cmd_enable_auth_in enable_auth_in =3D {};
>         struct wired_cmd_enable_auth_out enable_auth_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         enable_auth_in.header.api_version =3D HDCP_API_VERSION;
>         enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH;
>@@ -549,17 +570,19 @@ intel_hdcp_gsc_close_session(struct device *dev, str=
uct hdcp_port_data *data)
> {
>         struct wired_cmd_close_session_in session_close_in =3D {};
>         struct wired_cmd_close_session_out session_close_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         session_close_in.header.api_version =3D HDCP_API_VERSION;
>         session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
>--=20
>2.39.2
>
