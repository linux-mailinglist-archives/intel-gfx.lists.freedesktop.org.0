Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BE5B524CC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 01:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B3C10E2B8;
	Wed, 10 Sep 2025 23:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mUX8d1JB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB7F10E2B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Sep 2025 23:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757548188; x=1789084188;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nIent7XEKoSbTnYZ18jZmKc5mC46PXn+uO8HQ+ycRZE=;
 b=mUX8d1JBvvKj3UqHeORKgP0YmFEKC89UkIKcgRDuqYGTmLqEpmG314Jp
 e0GNQZORCicgXaqxHDnYho4N1IcVxcKTrv3IXkwCbDqW0a90Yu+MNmMtZ
 vIsW1DhfoBNE2Kex4qgZVTxytI37U6qvBOoJdU1fAZANExYiUACMoIonx
 lZQLxsUaPnDYHFW1fNv1+aKw2zMyacJ/7QTiNFhofHjtymKtNaj0CTVOa
 d+CenutUujSV9Phn1NVhdkaItTsrj87w2lWZi8SwwR1MmqhsEYHyFQAIv
 x0Xy2Oqr6rjtbkcDp0waipKCaELBfAZWOKx4vOeoMwHvvKHY9UCQ616kD Q==;
X-CSE-ConnectionGUID: HQVzOF1cRk2bcaxUL4Rk7g==
X-CSE-MsgGUID: YfmjmBDrTNmWplgOUTY1uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="59563712"
X-IronPort-AV: E=Sophos;i="6.18,255,1751266800"; d="scan'208";a="59563712"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 16:49:48 -0700
X-CSE-ConnectionGUID: LOMz2criQduEDBPVCpsK/w==
X-CSE-MsgGUID: iy5ZU4UpR3WTj41Q0ju/Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,255,1751266800"; d="scan'208";a="204308392"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 16:49:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 16:49:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 16:49:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.75) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 16:49:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hoU6jYm68riNCUOBpW8qIAktSAMJfp4/ZEJ8okaSCfBjrd+sCMeBZRhx+CtSLSQbdZUHB6BGI8DhBeEorS0C4Zm//2YSpcl54aThC77z+BayIMn8Of3OJuvyuPE4pI6W++UHRqhO+ysDZaRpax/j1e8ioA3VSiN6eF9lE7WDjLpuWXqCcM26D/CGOF5yYQ4gLF8OEp3Hx6IxySYZDcVn905TQIOYsUrEwFW/v+8htTMv+KZJEoDJ2T9tDagw8NWOYGP/rKYbuTdsG/smPzlupSSIPeITjZmJjt4EpUi1xrZza4PuCHn785+A21SoFG7NGxX80tDoUwNlP2mjkr1dvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZWnXxpbQNhfgLDeQaRmgClTuhFzgBnNGChzZ/4Y+l9Q=;
 b=BfzpdlqmPReDumwgw1VHrMKQ4xq+I702quUaRA8ipU/Jmqh6ovH/onCScpa+v2ZeilcQBQu0fUbfWS0M+jg+ZkmcC4OIEl9Aflog+gnqfzuzKyxELpd0sKVMHa3rracSiyy0ZSxv558wBL/3pHKXDHLscGDkLnruHwcAmCfgBJABFjODiqb3r54pxwRBTC8SIhR7xg98m235GpBj3WVR0RDlDoIDEzxF+4Ri7gb925DgP75gfODSBqcmkXZNHZbIum+wbMc9bu4Lzaes0Db48CZ9BJRWrCCqHxomwnGexyRW+g/vsRBVfRZSG9MLyI3Y4UXac4hpWTNRwch+g8xtuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by MW5PR11MB5787.namprd11.prod.outlook.com (2603:10b6:303:192::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 23:49:44 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%2]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 23:49:44 +0000
Message-ID: <dc52f1cb-9c23-4225-a0ee-cd7593b34c8f@intel.com>
Date: Wed, 10 Sep 2025 16:49:41 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/slpc: Update min_freq_softlimit when
 ignore_eff_freq is enabled
To: "Anirban, Sk" <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <riana.tauro@intel.com>, <karthik.poosa@intel.com>, <raag.jadav@intel.com>
References: <20250909132808.1708812-2-sk.anirban@intel.com>
 <3971a679-1bf4-401a-9df6-9632c596de41@intel.com>
 <da9a3936-fb21-4495-bdc7-fab5f71c6fd4@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <da9a3936-fb21-4495-bdc7-fab5f71c6fd4@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0112.namprd05.prod.outlook.com
 (2603:10b6:a03:334::27) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|MW5PR11MB5787:EE_
X-MS-Office365-Filtering-Correlation-Id: 154ae965-17fa-4333-79dc-08ddf0c4b780
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RllyQXpaU2NiSTZjS1kxRXNzcEoxR09ibm5rZkJ0KzlnOUVOZVEzeWVCaXBO?=
 =?utf-8?B?TjFVRytCeklUUzhFUXRrVUdWQVkwWGJsQk5ieGhXcC9hWko1R2wzbld4dkti?=
 =?utf-8?B?NEluVkFubXV2b3k2NjdYdXNXNm5LSVNqaldIOVo4TmVLdkJOUTJ0bElRVHVM?=
 =?utf-8?B?WmJkMWtkWWU5aWUzYy9CY2t2ZUd4WUMwNFJzblB4cmU0dmswZEtlNS92L3JR?=
 =?utf-8?B?dFdVTWxRQk1aQ2Y3QnBuVWVxMnRWaG12aTl4UHJrUlZDNlZzME1pdDBsRnho?=
 =?utf-8?B?NlBQNXcyVFA2ZlhSWlIrUkUvWDRjK3FDbTFqdVdGTE9pU1ZGMmt2SGY3ejJ2?=
 =?utf-8?B?ZU85aUFOazRYNGZ3Q1dIUGlKbW96b01Qb0RyN1k3OFVhMWFiZm1TbHFoZGlR?=
 =?utf-8?B?N2tHeXRWOTRzdUJUQTR0S0FOZUZtY1J0ZXlIYkRRcWltcFF5bWhaMlJtMDkz?=
 =?utf-8?B?eGsxWlo4TzBKQ2VmNjhqdGdyUUFvb1dzQmJQQnRBMXFtemxUd2x4aHVqWkNV?=
 =?utf-8?B?UTRSWXNTd0JWRGdkOEF1SXR4aVNwbmUxc0M0V0NqaFRHSVMrcGpnTE5QZ1NE?=
 =?utf-8?B?RnJGU3pLSkxWY3VTcUU0Y0lMWkpqbmZWMVpTQ25vWTBlU1M5MkpYSEZUWFpq?=
 =?utf-8?B?VjEvdWY3SERzMUdrMVpCdnJtcmlNbHZ1ZHp5OXdIc0E0bk93dkVwM0RQanJi?=
 =?utf-8?B?YzYzVnRzMXN2Q1c0emQwa2N4RXVSekU1QkF3Nmt2TUNPMDVJdFh0aHZLalNt?=
 =?utf-8?B?SWpuV0NvSUE5VVpSWWxpZVF6T2o3ZVVXTU5tYUNPMk1yQzlIeUhXZlh4ZVNx?=
 =?utf-8?B?SGZhVHo1bmN1ODFqeWlDeXAxSHlmNHYxSm9YdXZPODdEZFVJUTRJbS9CdmJH?=
 =?utf-8?B?RGUyQ1pNNEgxdW81MXBxTU5ERmxyRDB1UHRJaDEvYkgxOS94NDYwR21Mb2VU?=
 =?utf-8?B?UVZGUjdqMlBmU3pSbmc0S0pIc1BxMzhKVHVCRzlVNHY3U1VtdWhJZ0kzME5h?=
 =?utf-8?B?R1NQZy9kMWxGeVB4bHpCNkZzYTQ0eDUrdVJLU1J3cHZzRTE0MHJIL0VyRDVQ?=
 =?utf-8?B?dEQ0QTdmZ3lOYzg3Q1NwaE1QejJjUUMwMnY1U01YOEJGajlBUzd2SVVQM3Y3?=
 =?utf-8?B?U29oRWV2WjVWQlFZOVQ0RVlKVmdUN3pVczBPeUJaeER5dit6eXNxU09RbUJJ?=
 =?utf-8?B?emhUWURFQ3UrNG1mR1JzdXJiWWt4bDJpbk5uS3JVM3M5cDRQZkJ1b1h0Q3hP?=
 =?utf-8?B?dkEyVkdsZi91THo2SHl2TXJYRkcvRWNMR2lBNERCWDNBWktBTk1TRll1R0pi?=
 =?utf-8?B?aU0wbnA4RFhsMTR4RkdkdmxUNTZnUVdPYi9ZOVRVRDhac3FSUDdYMHpXT3dL?=
 =?utf-8?B?aS85ZUhzWG5BMHppdGdNejc2UDkwc1JBQzFtOVlpSEZKSVl0STB1cXFwbFlt?=
 =?utf-8?B?NnFOZ0xVYzJ4TGVKQmxWUm1YaVlRRHZqanRyNXBPbFFHeGVoWVpFa0lkS01u?=
 =?utf-8?B?MWlDQ2hQQlRQM3U2WlVRMVo0bUx5UXhtSDc1WHZJWWtCOXIvRmE3QThLbVRj?=
 =?utf-8?B?eis5bUo1UisxSndOb2VYTStveEFOY1BhV2toalBVVlVhUUJuVUFFcXlOZm9o?=
 =?utf-8?B?R3RNVE5kYkNaZDRJeWlXWFNXd0NjZFpyNkhoRFR3Mk5rNTVQVU9QZHV3M01T?=
 =?utf-8?B?K2diRGdDU3VxRkhOd0U5Z3ZQcWxxOGpaZENKeUwxUGd5bnlMUnhKbjNqUGlX?=
 =?utf-8?B?elJBdDZwQk1KTGlEVng1NnVxanRvYnRUNGhaemJXcTdZSElMOTdBdFhaNHcx?=
 =?utf-8?B?b3FTanNITWZtSlhqRWthODg2K1JjNjJFREd5dEJkaW1iRUdOR3lDb3c1ZEp5?=
 =?utf-8?B?aFRwWW5Vd3JSNFVzbXNLWXJrMXNpMkNxcjdJVUhYWnl5RVZaK1ljOXliRkR4?=
 =?utf-8?Q?EycrSiXM1W8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anE2dVpjVEgwY3o5SXByNDc4YVFKSTBPTGpVWS9yM05iNkFHb0FHb2pqckdS?=
 =?utf-8?B?Ym9HSkxaZy9VOVBLWEhxeWVsRDFid2VscWc3OFlrWWN1cGtvMnUrL0M5RGM2?=
 =?utf-8?B?YzZOL3MzYzdYbEZxUnJvaUUzeDliby9kcUNYek5sM3hNVkFFMmk1bDAzejdG?=
 =?utf-8?B?TmhjaXQ4NW40bFpMcDFsRXpDM0t3RzBLc3k5YTEvbHg2SHhNb3ExaTFiM0Vn?=
 =?utf-8?B?RHlFM2FCUmcyeHQ2NTR3cFdiUXJPL2QzZk81STBRWHpEMnJqZm5tUE9ZczRl?=
 =?utf-8?B?VmI2cVZKWjlvQjZqeStLNE1iTlFHOTdFb24yYTZudjdRcXduSTdOMHN1dzhk?=
 =?utf-8?B?OWZQb3YzSVRCVWFNcENsK1dUWWdESUxRZGFJNUpVVVc1M0wwd094cXJPaTI0?=
 =?utf-8?B?RzNxU0lRV1hDOVhNcnhFUkd0Y2lYby91OVZiRmkvNWJSamZNWjhKMkpTU2pZ?=
 =?utf-8?B?ZDRIZGhYV3N2REc5dDFOblFtZlVrWkZ5ZWI1Z1NhUDRoczEweFp4RFovY3pr?=
 =?utf-8?B?dHIzZGMxMUJKakdsSlgwc3RjZkJMZjE5YUo2Y3IxemlnT1J6M25lMnBaYmFG?=
 =?utf-8?B?ejNiSTNuWGt0OHo5RWZMZHU0WWFLalhMTysxb2JtdFZFTUhnTGcrQTdOTml5?=
 =?utf-8?B?cythMzdGczN1THArSWFxU3JPYlhOZ1pYcFBFNXIvNUx0WDdQVVBlbG9PazNR?=
 =?utf-8?B?MXpjS01xRGdvVTRQVW9sVWp5d1BJQmZGQ3NVMGlReGUrYk9Fb3dRMUduR2tv?=
 =?utf-8?B?MG0zbTh3NGo2NkJLemVRazdLTFcwTUJSTWgyVUQxUjVDQTI0UUpGazFBQm94?=
 =?utf-8?B?cjM5REFRWDBwTlNTdGxIRkJMY0Qxb3kySnhoOTErRDVDQUltUkZkODJ6N2xu?=
 =?utf-8?B?WktsWHhoc2FuMUt5N0FueHFrNmt2QTdyYVZobWVLeWw1NnRuUDkyOTNTWk9y?=
 =?utf-8?B?RVdnS2xOdkk0MVNkbUlLOWkwKzB6bThzVXVnREFlOVRIck0ycEoweCtvVGdy?=
 =?utf-8?B?QWlzdjlaWWZnc0hhYXhIUmROT2w2dlFvU1NVOHk2VThjMGt3UVZta2swSW9Y?=
 =?utf-8?B?VzA5VHZxWENtT0RBMHNCdXQzaVBVUTc1Mi9qZUFOSm9DVm1QS0RMakpaTDVZ?=
 =?utf-8?B?d3N6b09sNWhxTjU5UCtTb1dhbnpIMlNpc3Bka1FmeE40cnIvR095NFRnc0hK?=
 =?utf-8?B?N1huZklGNFNlSFF3ZUFEenpZT0RlM1BaMUpSNlFsR0RNdWFLeDdKYmpGZzBO?=
 =?utf-8?B?S2YrZnp5RDNYWnQ0ZDNKUXZwTXVDV2VPTkExNWZpZzYyeW1YajU2cDVISThr?=
 =?utf-8?B?dTUzblYzd1hDbGZ3bU9hODFDWndZWXlHeTFFQzBUMHUrOUJ3K0crWS9xSUhE?=
 =?utf-8?B?b1NHNFRuK3JwNmtuK0xGUzlCbWlyUWRHT3MzMnF4UWQ4ajNKMlBBZ3lVQTBZ?=
 =?utf-8?B?YUVwWGpyZEU1MkxkZ1RBMmNRUDhCZHFaeU9UYmFRQko5dFZOZ0lNY01ROUxR?=
 =?utf-8?B?Y1QwUkh5dlhYcXdTRTAyRlZBNmFjbGFQbm5FekdtWEpqQjJldlVOSXd2NFpU?=
 =?utf-8?B?QnF2azlVZklmK0NvNmNPUHNDa3hSQnZHTkJySklLbk9YZDMwTUhJZUhjNGJD?=
 =?utf-8?B?VDJ4RW1ISE1wcThjR3Jzdnd2TUYrSm83QjY0YW1nSC9nZjNPREU0R0oxUXg1?=
 =?utf-8?B?SjlhMnByakNmVTlTanlnTlhrTXN6eEdldzVWZVVkdjgyUU5wclA3MDg0YnRM?=
 =?utf-8?B?N0xNaUVZckhvRUFIQWw0WHRaQ0lGa2tSMTU0eXBwRzc0Q2pKTVlpV08xb2FM?=
 =?utf-8?B?MDRlU3BxYmtqMlJka2NoK1hVVkZET1dZb09qZEp3bmVhZHJhM1ExaDVEOU8y?=
 =?utf-8?B?ZkZMYVk1eXhwMXFuQ01ORWtQeWx3UGRPOWF4Y1J2QXRud01nQ1ZkV2Y1NHZX?=
 =?utf-8?B?NHRSRzZDVzI4U3hYTHBybHVvSi9YSDAzMlI4ZVZmcGROS0kyMUdVR0psTmg5?=
 =?utf-8?B?Q1dJL2dvM08zQXpvWnM0aTEwd2U4bkVyemJGa0huWno1QzdtNmphNWxDc1l5?=
 =?utf-8?B?Um9iUjVtaXE2ckxDVG9MQlBnTHFNbnU4dWQwUWcrTjRpTm9WZ0oveE56bzJW?=
 =?utf-8?B?eU1XaGxkREJGTElBNjIwRzB6N2JybUFxQWQydE5ic2puOXVJM3F4L2NNUDI3?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 154ae965-17fa-4333-79dc-08ddf0c4b780
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2025 23:49:44.1048 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7/JLS3Jpw2rhUR6KhEcv6hifhd7PENklnryfpj4LhnJ112at9AtKIBfgfe+zvM8DsSVEDUGF2l8rOBRqmcHAgs3Oy+XgZGQKmci6aYPQZxQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5787
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


On 9/9/2025 11:22 PM, Anirban, Sk wrote:
> Hi,
>
> On 10-09-2025 04:07, Belgaumkar, Vinay wrote:
>>
>> On 9/9/2025 6:28 AM, Sk Anirban wrote:
>>> When slpc_ignore_eff_freq is enabled, min frequency is set to RPn but
>>> min_freq_softlimit is not updated, causing sysfs to show stale
>>> values.
>>
>> sysfs(get_min_freq) does a query_task_state and then displays the min 
>> freq. That shouldn't be stale info. Within slpc code, we are using 
>> min_freq_softlimit to track user changes to min freq. We shouldn't be 
>> overwriting this when efficient freq is toggled.
>>
>> Thanks,
>>
>> Vinay.
> While fetching min_freq, we currently return slpc->min_freq_softlimit 
> from intel_rps_get_min_frequency. However, if the internal minimum 
> frequency has been updated to RPn, imo this change should be reflected 
> to the user as well.

Are you seeing an issue with this? min_freq_softlimit is initialized to 
RPn afaics. So, changing min_freq to RPn when we disable RPe should not 
affect anything.

Thanks,

Vinay.

>
> Thanks,
> Anirban
>>
>>>
>>> Update min freq softlimit when ignore_eff_freq is successfully enabled.
>>>
>>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 5 ++++-
>>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>>> index d5ee6e5e1443..07fa0423b1a3 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>>> @@ -495,10 +495,13 @@ int intel_guc_slpc_set_ignore_eff_freq(struct 
>>> intel_guc_slpc *slpc, bool val)
>>>           slpc->ignore_eff_freq = val;
>>>             /* Set min to RPn when we disable efficient freq */
>>> -        if (val)
>>> +        if (val) {
>>>               ret = slpc_set_param(slpc,
>>> SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
>>>                            slpc->min_freq);
>>> +            if (!ret)
>>> +                slpc->min_freq_softlimit = slpc->min_freq;
>>> +        }
>>>       }
>>>         intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>
