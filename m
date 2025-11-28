Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30074C90ECB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 07:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1124E10E0EE;
	Fri, 28 Nov 2025 06:14:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FjdQ4tHF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E5510E0D8;
 Fri, 28 Nov 2025 06:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764310446; x=1795846446;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tOIEWjHDhzOKMW11zMTJtF08pCL41sbsZBBjxOmSTU4=;
 b=FjdQ4tHFq2NiRybm1xClZx+Pi1ykuSsqv+7nuPGPTc+W9kaKy/h29lg1
 VpIdyp0K+uPBHgoncQstFC0bThdBAjb1W13XuYqFKUaZuzvQX7t6f7l7N
 rsEYr2wGSzIB/y0sjzDO7m9L/HJrHJY5Kp9W0S0P9LfAK8lyefgVEHqsF
 sQzAnmYrKKK1APfxg9t8MBoILY4khA0+8QLJKHLFD7FZAWU7Otq69WpnR
 vfcS/zRonltGHgEuavdTkNWcEvaNDok7RLiPerUnlOMqON4Rlv4Qmc4pt
 7XjEwg//MKRl049u2euKxceswqRoj5W0JNifp9V7QybfJLIjyKHkEbCPE g==;
X-CSE-ConnectionGUID: i0A1XnP0RnOknUiqsHy5kA==
X-CSE-MsgGUID: owg61j9RQgKMzej+TFJEuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66240766"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66240766"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 22:14:05 -0800
X-CSE-ConnectionGUID: uDtFBsd8R1WSSA4eDkXDew==
X-CSE-MsgGUID: Wg7dsecvSpOrGOSByZH5jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="198342241"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 22:14:05 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 22:14:04 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 22:14:04 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 22:14:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pVi8g2RuVnP6h5R5e2pXO5dixOmcvdloyaEKhOmpv8CG3ninSXNO9rJPOYd6rqMgE5O5fNLL3Jj9ndOey4ht02/RnKz/nZIDdt/w8BHrT/qLDFnekQcH4VHN34n39y5t0i433yZjHxRihmMEhyOAUBv5ieGAzcB07pswlMyEsqFfwWhTpy3kG6tWUP6QkdfI3NZNglg5MTv8B6YtFNyC90LfJwNqheaOb9qQsYofG3iFqKMQ0VoP1v9gInZ58Di38gtMB/oMjHWHNjeGXv+9dgghl3lVh/DRlzSeYufFCUcMq3reN+1CN6WQJmHdi6zh7R9BOcIwVeq+nbJLYNwetA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T/facoKydsqfQceqfGQkZEdtz/v0F+okVReFFMw4ZLM=;
 b=vPtrJ7LWe0WscpfVHE/m3PydeNuhJVy7OO6V7PGUmRJcUQx6JpVNP9wrRQA07UJ2AqUvHeqC9/pf7rHdz0jMi6gEhF06a0QpSsSDBDBeqm1eR55coYIPki8+AB8EGxmmW3j1ddLYjwRYi+iu5MtoqtWcKI213AIlFkC5g1ltocjpvyMV3qLZK8BBdvhNPf7Jzy/LDrmOR+par/pNyJXlz1w7qQKuw1d1dlNNC2cbufmfK1JxVP9q8gLJCIHT5TSoW+eFv1TgjaktMKaJ1XtX4EtAQnkJgfzXrpW0yWzQ/xinmejR/aMxtC0ckNpE7zN/LsYoNPcvirO0z7GEQuEY/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7151.namprd11.prod.outlook.com (2603:10b6:303:220::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.16; Fri, 28 Nov
 2025 06:14:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 06:14:02 +0000
Message-ID: <53405ff4-21f3-42f7-a2b1-5270639654b6@intel.com>
Date: Fri, 28 Nov 2025 11:43:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/crtc: Expose sharpness only if num_scalers is
 >= 2
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20251124084629.3322714-1-nemesa.garg@intel.com>
 <20251126084152.3905905-1-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251126084152.3905905-1-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0141.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d2::6) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7151:EE_
X-MS-Office365-Filtering-Correlation-Id: 4db13444-8cd7-4d15-85c7-08de2e4552c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGRERHBYRDFKU3RaUDQrQXhwdzdiRU0yVE9sTTF2NmluYTJNWitNUVFjZzlP?=
 =?utf-8?B?MG5RTkdFYXhaWDZiVkpJSVI5MjkxUVNibWVOdElhQSt5UWpFam9YZ1BPVUsr?=
 =?utf-8?B?UnFwSWdMK0lHcjFTU2d1SXdPTXQyS1BSc2ZhZzdoaEJBdUNrTmVzYlhvS0pm?=
 =?utf-8?B?L09PUmljcXRGbEp6Nk5JRmROOTVJUEdHK3pQa3JnQXRlVW4yZDdiYlN5eHV6?=
 =?utf-8?B?ZCs3UDVUNGRpTitBT3QzNFQ0TTJaL1FzYnljazdnOEkzRUtKQmpjcTJDZ3M0?=
 =?utf-8?B?YVZyeHhaRkFWRm9KSGJXUVprOUVGak03b2kyS3ZRTVpkaXRSbWYwV2tJSTRo?=
 =?utf-8?B?MFBXbUVrWmtRMDBJb0RmaWV3RzhzWEhwMlZDMXhJZEJXM1BHY21tclZYNlla?=
 =?utf-8?B?SlVOZVlpMFZvNmxrWU5jWnNDZmF0UE03TkJHU2JCdXBDWjVZcEovbjVXZmpy?=
 =?utf-8?B?VWgwN2plbmlZbkRXVUFWY3Vudlh3TXp4dVBrOVRsaUhRN1k2WTNxQ05NV3BL?=
 =?utf-8?B?ZGdHbEFOaU9ra2JYTDZzWmxXOFBlcjRmUjNqZmxvN3J6c25RbEdwcW1IQlFD?=
 =?utf-8?B?cFN1NmFSVi9UR1cvVnJPeE9ZV0NaQ1lXNUdpVTJLQno5NFZYL2Ixa1N0Qk4z?=
 =?utf-8?B?Q0FXaGhpVEVoTWNnRCtVYlBSVHRia1NscUZtRjFwY2p0UnJGZWtKWitXVFhj?=
 =?utf-8?B?NG9MYW81N3JFRXE5R0NjL2pwR3cvSThIMTUwQXY4VEJ6VUhNYU0weWlhSXpn?=
 =?utf-8?B?ZEVkOUVOWnVKem1XWURoZk1jeVFNMVYvUEVXbG50ZEFVSmtyYnlqOS9HRDBz?=
 =?utf-8?B?NEpqNVBhQTBYY2hBLzY3bWJaMmx4QU9mekRQVStvUGJaaFJnNitkUWpRL3dR?=
 =?utf-8?B?bFNrMEZzczRmS0VSRFk5WkJNdzArQVVrQjFyUCtvZS9xRXY4OTFDNW5PUjc3?=
 =?utf-8?B?U2U0U3VadFYydEFySkptTnlpaThjcFZiNFhZeCtjWUlwbEFCQWp6ZlBYNjBM?=
 =?utf-8?B?eW1ST3RsVm1BZWdkMXViU1BvcUpCeDh4WHVjMWFjQ0dNSTlXVE9GUFJoaERD?=
 =?utf-8?B?alBDQlN5VEl4R0FXUnZZMG0wSlVucUdCQTVWTFJQTWFqTlVvWnNRN2NDTkxZ?=
 =?utf-8?B?M09hbkEyUU9TM0Q0UkdadDNsdHhtZ0lLSnB5UU96cElabTNQbTc0WGVUaHhh?=
 =?utf-8?B?NzlRWk1VWUZ6SjhlYjV2ejVhZHVHbGk4Qy9ldFZYWjdzRm95bjdnUzNBcjdT?=
 =?utf-8?B?ZzBxdkxGYXRjekVZbEE5bjJwVXc5eGM2MzJnamZoR0RLdVNhdUtCbWVWcG5w?=
 =?utf-8?B?b3FsL3FmM3E3ZkdGTFUrZUJ0U0RHR1UxU3BkVXZkS2Z6RjUya1REVnpVWjVw?=
 =?utf-8?B?Tnh4a3puZWRHZUd0NmFQMy9PbFlhRENDZ2YvNGhwdjZDRng4Lzh5TXVFeFg5?=
 =?utf-8?B?aWZzNFV2dk9zRmJkbkJFQm9PR0ZhK1BNRmpxbTFqODdNSGFiV202T2RDWGZ1?=
 =?utf-8?B?N1lsRDVUa05VbjJEZlhGWG94bE5EK1BrWU83QVVqTko4dnk5YkV0ZmZpcC9j?=
 =?utf-8?B?MzNXczRWWk9uajk5Y0Jac05RR1Q0WGNsSDVqTXM5aVZOdE4vNU83bnQxNjRJ?=
 =?utf-8?B?Ymd0Ylk0bStjcFRJRTRDbnJrVWtiSkJMNXVOUmY4TGptMEh3Z1lHSFNkdENE?=
 =?utf-8?B?OU5udW9GeGRFWjlMKzU2RW1FU1dmZStVR0p5WW02RklFRVpNYnNXNG5mb3p2?=
 =?utf-8?B?d2laOUtla2tqVnVsSGIzdVNUbmxtMDJMV2pCVDkwblpKNGZGV3BOV0toM1JX?=
 =?utf-8?B?TWZxWXUzSUNwUGt0blMxWWFmdnhZVldURkZsWGVmaXRHYjdKQlVlR0NUOHEx?=
 =?utf-8?B?SlZRTGNMMm9UZDYrdDVlSU5mR3hJNDAzRDcyZEJ0c29rMWlwRzZmRmJZVDU1?=
 =?utf-8?Q?IpdspX5MpPi3qPD5eTUiEU2/X0WYVw7D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEpQQnF2NW9kN2hsWjJ5bUpqak5kNnI5Vk4wbFgwc2Y1Nm9RQ0dVY3VwdUhm?=
 =?utf-8?B?YVZGakxTVjI3WWZUVHJydmpNcE81RHc5UUhTRm5RWCtKNGxIdDdUbVIvUkI0?=
 =?utf-8?B?cENXU3dibUJoWUhlNXlSUmFHa1JEVUkzMXlGUkp2cDc2QkdOZFVrRFoveFVN?=
 =?utf-8?B?ejNqYmo5WDZvT2FSaGp5ZWxzc3pCMlU1a2t2T1ZOQ2REWGxaUEI2bFQ5M3dq?=
 =?utf-8?B?ekJCZnVGVTF5SklEQ0tsUEtaWWlyMjNCMDc5a2VEai9rcTdsWTFleFNmRlpC?=
 =?utf-8?B?Ky9LQkdnZFhGYlF0R082VnMzOVNIeTlCTEIrTG9FTXFpVFY1K0dZclZPSkNC?=
 =?utf-8?B?N1puTnVDd1Erc2IxdzR3czF5OUZTT0kxYmQ5MmRjWi9nRnI3SzEvalFzMGtW?=
 =?utf-8?B?bGJoRUt1aU1uR2dsbFdsQzlCQ2lPMmpHa2xIRTlHcXJ3dG9xbER0RVNOR2pQ?=
 =?utf-8?B?UFFPZjFnVStva3paTC8reFFEYlR1WE9zTU1VdkdLMDVQMVEvSm5Nc0h5QkJW?=
 =?utf-8?B?S25yUjNtU096emdhWHZibmxUcTFNQjFpREZKUGhISkhwc3N2aDhCakZJc092?=
 =?utf-8?B?RkE5SHRpbDQzRkdha0dLaU5mRU5YZ0FqdVJ6c3lObUFlOHhNb2Exd0RPMnY5?=
 =?utf-8?B?TW00RnVWdyttZ0VOai9vQTJNSlgxTm9JZmV4bWpPS0hVVVlNQTZMOGpwaDRH?=
 =?utf-8?B?WjBRRWhmSGx0MHBwWXdDUFVQSHFXK1dxY25YUTRJbWtkV1JzRXptL0cwZ3U2?=
 =?utf-8?B?WDNmbllFSWpNWmh4eDJBbWV3MUczd2M2bUU4ZWVRMTVjcHZuNmp5RnVVQU1H?=
 =?utf-8?B?REFjSVYwdDJKMzZQZjZLNjJQQmRxM1ZKdXFyQ0QvaFFKOGZBSFFvN3FRVVhJ?=
 =?utf-8?B?TlZhVzRhaEJ5eFg2aGEzTHp0YnIxNHhFOHdneXNWeTdNZ3FzcmhrVlRMRU13?=
 =?utf-8?B?UktSRVlhYTYxUVk4SWNrS3BWVlRZQ24vamJUd285QXlNbjlaVVdYYUMwM3BC?=
 =?utf-8?B?QzZSdUN4TjV2b0puQ1hWV2p3OG5rYW5vSG9GT0JnWEM3Qm5SemZJS1lwM3Bn?=
 =?utf-8?B?ekQ1S0p3aUo4dWxPa255c3J6eERMK3hYSVhQMEVNcE1ybWJRLytXVERyM0th?=
 =?utf-8?B?MG5FeGhEYnVLNzQ5Wm5STU1SaWJXM1cwZmwvdER0NnhZNVhpODVhSGtuZmE0?=
 =?utf-8?B?dlFrcERMUWdYVzFwekhWcElLNXpRR0FHelozUU1QMFJ5dElYYk0yb3MycnVG?=
 =?utf-8?B?QWxqYy9SR0Q4OEFLTHN6NWQvVzZuU2lWSzNMWW90d3l2ZGIyY1E0a0ZGVmhY?=
 =?utf-8?B?T1VSdWtHM2xHc3pQY2tQelNKeGRNcUlsdGNmeUJCelZzbVYyenN1WjFMd0ZC?=
 =?utf-8?B?MEN1L0E4Q1RkNGlzbGxjTXhqT0plWHZTTGxwbjRTWEl2UGZWOXRwUER5ZU41?=
 =?utf-8?B?L3lQODZveHdOaGZaM3RqK1hWalVweWwxdWcyRHowL2FLWTlpekdFalgxRG5n?=
 =?utf-8?B?S25MYlUyWjNtOXRudXViNk1XdXZHOVNOTm9JSTRhU1I1UElaRU41bmJlQzls?=
 =?utf-8?B?OGFmMHZadmI3R2ZrbzRXTC9iVDZ4ak12VXRicVE3T05FbkJtUVdVdGdpVXVG?=
 =?utf-8?B?OGQ3SVFHUDF3Z3ZoaWYwRituUzdxbTlhMzZmZUFwL0g1RDUySExTdk9NMlNj?=
 =?utf-8?B?eVdLbGlSaHZ0dVIvbTlXekJSaVViUzBrN3N2Rm1DYW5COUVQQko3K0pTeEsv?=
 =?utf-8?B?QnB1cm5IcWF2dmw5VnU4YmtiUVBxeGFXdEhnWkF6QUwvL3pJN3FLK1VGV2J6?=
 =?utf-8?B?M0xGN2E4aEMyWVZhUXNPMW5XSTcrU0ROQWZVdUtrT3dMTXVMOUt1VlZYdW1H?=
 =?utf-8?B?aTdVOGV3Y2pMeVo4Skt3NzBmSENyUWY3cjFZTlo5UFRnVyszcXhRMit6K0xq?=
 =?utf-8?B?RXFFS3RVa2puYjdkdmFyekE1dkNqbmVUVll5dndxUlBIeUxhV3JIcHVxeGNK?=
 =?utf-8?B?TExuek5xc2JldGNhTEVFb25xT3dMdVRHMTlRbzY1VGZNdXpheXVFdTJkdVFU?=
 =?utf-8?B?UEdDQkhCelo4MzlRYUIrbnAxTDE2bzJnRDIxYi81KzZiTFpkVHEveUduMTZP?=
 =?utf-8?B?NnpOeUYva0M2WjdrMzJNWC9tWmtIVjIvS3B4eWhXOGRRUFRnUHF2KzRDSWNx?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4db13444-8cd7-4d15-85c7-08de2e4552c4
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 06:14:01.8324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VNmiTnSHCwva7Oo66UpoImnhM9LPOpqmIOwxRm9u4m9gSMWHOHRvxWYgv1jNFrOaQ9obSwtdexUgY0csysxSbDU3+WkKHN7txo7uQXZ1Y3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7151
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


On 11/26/2025 2:11 PM, Nemesa Garg wrote:
> CASF requires the second scaler for sharpness.
> Do not expose the SHARPNESS_STRENGTH property if
> the CRTC has fewer than two scalers.
>
> v2: Modify header and commit message. [Ankit]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 153ff4b4b52c..19743ae09f78 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -395,7 +395,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>   
>   	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
>   
> -	if (HAS_CASF(display))
> +	if (HAS_CASF(display) && crtc->num_scalers >= 2)
>   		drm_crtc_create_sharpness_strength_property(&crtc->base);
>   
>   	return 0;
