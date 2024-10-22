Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 530829AA0C0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 13:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7D110E314;
	Tue, 22 Oct 2024 11:03:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZo9QAcl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8E210E314;
 Tue, 22 Oct 2024 11:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729595033; x=1761131033;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=D+OScTfo8LsQvF9EDmJ4dVyWvOqqtNbSBXVwGidqtZk=;
 b=VZo9QAclhqnrTt6B6DT14N5hXQpoI6slDD2scteCsvqPV+WsigdXw1f3
 48c14cHaADOAaeYRsQJ4x3J3iWwqfnBofpQKfv0sJs9cwSoa04asgeYJN
 eQCNKTOr3r4BiaD51CzJ9HTgzUh1ewjETPDbCmRyyGNYd0a9w7VzHTjx7
 Pt7aW8gWxnafVI09drfqix2qRugxOARboIjAq1PoNIK0A9uQoqAtvP/Dv
 DEqLU0GtzA5sIE6Z2OgRbIbjC2vIc9Q1FzmZe2LsnQgVmh2GitFVgvMMO
 2X2gSh6VECz9erN9Z9JXLc7Y/8Q3e8m6fbz8uNSEc6Q84T8R3aV5uCHy+ Q==;
X-CSE-ConnectionGUID: Bi/fRlnoSE+dnuXzgTto9g==
X-CSE-MsgGUID: vzPPYErrSnSCHdT37/2tPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="16750811"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="16750811"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 04:03:52 -0700
X-CSE-ConnectionGUID: j/IHUSNSTIK+PrlrNM/GTw==
X-CSE-MsgGUID: TSI1yv0ZQqOgR8M/WlnmCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79907105"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 04:03:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 04:03:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 04:03:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 04:03:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ktxrg0/f2aijsDLBpdsC4dK/nc6VQ6vAIo9zrPlcQVmAMbNgv1D0nE143eCOX6OabnvRVR0tO9IT56aSn3D7sgmca+DlVKT64DGKpT8mistuy7vdfBdZlqr5XNSWJRMD8cdY1jYsDyYFJT2D6fIktS2gTf4CaXFbSWi40p28bQ23/8tPFKbiadQyRJt4ivmoRhsqM5Zc6wD2+vrg4iGbIA7ApVqR5Q3UY8Ej8PqKWugI1gM9FrH6fUB79n04l8tofkBf9Sa4X+bghsEIQZfsMrkAuDe75ZNiu7fabp6SFy2WWv1CUF/0KchI4AoUAJzSv9oJ74p0gmSR2BHpv6aPkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FfF8avHV5UjD8yVm62qLvgU8GbgEWYkNZo0coGanX+o=;
 b=t2cwRFweEID7h0XLPvbmO9+IZmF5KAd04pSl9wGT0evreaIrdxk3mFsHXh+6Q1LFGaGA0b0dpiF1BcBKodsBvNtTMciAb4jTPR7xjcapit66EaNsLEl9HNHl3bhvikPXy2Yhmegu9SSBt1aS7+Wi3E0JDcuC7mS0CdyGVPg//L40PMBiBOFk4Dxia++oS4EyjPFz5WevS2ElIz86GrHIxwlIW07BQIi2MxvYQW5O/J8BDce/gF0U3XFe10QBQLdJAt2RjWKw7qVt9aAAFxjSKUNLjQlsw7A2eNhXGn8RPGmNDKovRcpNNEZcF/aWV0pTTxVYH53xxmkgwaCxXM6LWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 11:03:43 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 11:03:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87ttd4v5ow.fsf@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-12-gustavo.sousa@intel.com> <87ttd4v5ow.fsf@intel.com>
Subject: Re: [PATCH 11/13] drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Oct 2024 08:03:39 -0300
Message-ID: <172959501916.3700.2271511841896515028@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0340.namprd04.prod.outlook.com
 (2603:10b6:303:8a::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN0PR11MB6135:EE_
X-MS-Office365-Filtering-Correlation-Id: 15805d6b-f86a-47e7-3b98-08dcf289315f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QlFrNWsxUE5EVUFoWjNLNGwrUkQ3QXVObEhZMUpiUUJOcy8zTGlPcFJWcnFH?=
 =?utf-8?B?WlQ0a0t6amFoZmZMMjh1SkQxdWZkM3RrR1ZCL2txYWQxdE1rbTV3bWRURVF4?=
 =?utf-8?B?QmlrMzNwaFlmZHV5b1luZmNMdTlabEZZalBKNld5OGNVN2ZDckttTE1Ya3Jj?=
 =?utf-8?B?c2FoUCtmZnpHRlF4Q1lxWFMyd0dMbVBBQytrSERUUTBrcWtVa3h5dnVBdjY0?=
 =?utf-8?B?ZWlISmJwWHBtKyt1dkZpdFpTYmJWKzlNYkNsNS9oTDlWVkZuSTJFODBqazl2?=
 =?utf-8?B?K3hmdTFJczRjaHRPNGpQNVU3emhMcWY0T09LS0VEa3cydzM1U20zV29tSHda?=
 =?utf-8?B?NTFHV2NSRFp4OW95RWViSnJHQ2tLeTZCWHd5cFJoZUc5Wlp6UVBMYnBhZm9W?=
 =?utf-8?B?dFZxS01mRkRuWnFGUWlXdkk3WkJKZCtORnN6QVBRT0FIT052YnBtWWllWG41?=
 =?utf-8?B?Mmo3VXd3RFVoSlpYSTBHRUVURmc1MTkzdEJYQW5OUE01eVlJRW5HaHdMTS9n?=
 =?utf-8?B?TE1kVnJRVVllMXZycVFmdHhlSkZWa2tRMlFUTFYyWFM2Z2hBNWZ4UTVIMVRB?=
 =?utf-8?B?QmI3eVVnM1lBRFAzOTllMFlsYnFQRmZDOHYzQTVlR1E5Yml1a0xnTVZRMEV5?=
 =?utf-8?B?NjExbXhNNHR5UXJxbWkzc3RNSDg5eEdzU1FZWHBOUGFhOUxTRFQzVVFHdkRq?=
 =?utf-8?B?RVdpcVcvSFdaUmN3QXFvVDFlZTlNcUFuSktBa3JxKys3YXEyNmtoRk9xVGJX?=
 =?utf-8?B?MFFoWUJnaTRMdndsZ2QyN045Z251bnhoSXgxNFRhbjBkQ2ZHVEdIdHAxU2FM?=
 =?utf-8?B?OTAyODB2NCtObzFZNlRneVl0emxIUi85TWhMb3NyNy9rQkVWZmsva2tJa0or?=
 =?utf-8?B?MXE3ckZVWjdYU3M0RmZ6N24wS3RXbmxIa1JVakdtbkI3ejhOeUo5RjRYT3hi?=
 =?utf-8?B?THFnbURFa2RDNUdTc3YyUkZBbjI4QzFtMkNCdGVYb0VkcXgxWW9BMHVmTCtt?=
 =?utf-8?B?OUVCQmFDKzZTSnB6NkFCcitKMGYvRm56QzA4eHQ0eU0wT0tBTEdud2czaEpr?=
 =?utf-8?B?aUFsdndQMXZJMUhEZ1JFdFREdXBEb09kMkphYkNPcVIvckJzMURieVYyOGlN?=
 =?utf-8?B?OHJ5WlZua3JKS0ZUdFR1THc0ajBpdDZCVllMQnlEV0IvNUJoZVJIYmlTc1NR?=
 =?utf-8?B?WHAxQmExalQ4T01FSmRHTksrMW11SE56QWFrVGltSkt5UGpFY3M4bzhKK25B?=
 =?utf-8?B?VWE0dzViRHlLZnkwM1IzaStLcnRBd1FES1MwQVZWenhVRFBiNG9ZMlNpSXVB?=
 =?utf-8?B?UUJJQjJ1T3hGWExLbU5pYnhHbGRsM2F0eGlXQkc1Z1VhM29kckRSNDd0ZFRC?=
 =?utf-8?B?d25abUh4c2dhWkJpRGxlb2phVTZMcmZmUGJoYUlUZ0xlbER5aE9UemRFWVhi?=
 =?utf-8?B?S0NNcExwMnlYRFBXWGNrMXk3N05zUjZyKzBuaVZKV1Q4NzdidGNLMW5yOGRl?=
 =?utf-8?B?Vk5GZG9paG9YWVgrV0dINDJpTWEyUzdCeWNvNUpwL3J5V3R0cGx4MG1Jem5B?=
 =?utf-8?B?OW9ic2NlMGcybUhRSURRbHhlWTJYMXl0OVJjMzk0QU1uenFvd1lESHlRVEMz?=
 =?utf-8?B?N2V5VnlZWjJYbXJ2ek9qT0xXVGcyOEJZNWwrWGlRdXdYdlQzRWJYejB3bHBq?=
 =?utf-8?B?VWhpbkFTcklvQVJZYjBwT3RzUkQ3UitOaVBrNTAwdElFZ2U2aWQvN0JtOFdP?=
 =?utf-8?Q?giZ8UfmkHV9YX6k/HU5TJDV+y2uuFAxCCr0YFpf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTRZcGh0aUtRZzRHNmM4SENBYUJvU09TeVdSdzhLNEpVNEU3NzM3V054K1FG?=
 =?utf-8?B?UGJqUjNjeEpOTTFRU05idU9wNzVQcmVWejBFNVhNL1pRU0J3NE9mS09kTDZ4?=
 =?utf-8?B?TEpPU2dwYmd1SnovS1h5ckF0aEtjdDh1dXlNY3lyRTBFYWs3cStFWER1Y08z?=
 =?utf-8?B?OEl0SCtVQndocTcyb1ozbzBiaXJ1WXVVZlhPTTl2aU9SUUJGN2Q0YzFiNVIr?=
 =?utf-8?B?SHRoWXk3N2dFNGREVWNzWFJ6cjVCMmJ1NzVPOXBzdDZiYTRpQW5scEpZaEtH?=
 =?utf-8?B?QXR2MENPV0xnZGVCR01kWXZjUWNZQ3ZORmFYZ3YxVm1mNGNaUzc4ejRWaGhD?=
 =?utf-8?B?M3VCYUIyWEVZdnIvMmd0SW1lYzVVMURJVnM1YWJzMWhLYmZXUXdtSWVJNFdM?=
 =?utf-8?B?S0YvZWtoWURkeFlkeU1zb1RvZTV6Mit4eEJIQi9BdmRjb1JkSTlWOUk0cnlO?=
 =?utf-8?B?M3ZWTDhlNDJySkRQcjBxV3cwQVh4b2JIM3k2c1poV3lEWEhTcWllcWU0RVFz?=
 =?utf-8?B?Um9laG1RdDRXVDFrekVRNTJNOGpacnB4WS9LVHQ0bWxqV2R2SVhJZE4rVWNP?=
 =?utf-8?B?K1ZLQ0dMS3pMV0p5SWdJWTVkb1FPT25YRWQxRnh6a1pQZG13NFhVZHRISS9J?=
 =?utf-8?B?eFc2NnMyU2lWcXlISlF6MzUrellWRWFvMkdWMURhNTJ0d0VkOHNzS1g5Wld6?=
 =?utf-8?B?WnRYN3Jjcy9TM05nQlNPRUgxaitPbW5VdTJuaFBZRFdnY0xXamZ2ZzQ3QS9T?=
 =?utf-8?B?UEEvWTRwT2QxWEtTVmJkTU9hcTBVQzRMa2FiMUZpS2Y5eHR0cXZaSzlYNUE1?=
 =?utf-8?B?Tk1xbW40dW5aZ2ZYM2EvKzZBa3YwZHErdEUrVUhGL3M4K2FpZXlQb21paldX?=
 =?utf-8?B?Z09qWTZab3h4bGVvb3czYnZ5L3Z6MmRjYmZaLzBYRlVxL3U2c0tmalJGZ0or?=
 =?utf-8?B?ekJqNEtJNU1NaGtPL3ZzaE5ubG8rVDlGYUoxU29BV0JZTGV2V1Y0NzZiU2hU?=
 =?utf-8?B?U2xqSHNOVytGZXo3djhZZzVPbmRCVXFIdC8ySVpMWHJPQVRFQ2I3ZHE4R2Rq?=
 =?utf-8?B?cEFqR0FwSHBHTEF1b2VXRUJLakpOSDBmaWdaRWlWWUMrSjM3VDJEKzZuWTE5?=
 =?utf-8?B?aGM1NXErQm5naTRQYUZ0bXFSN0hUbkw2YkxaQkdDL3JCOFk5NGpOUmJuTEI5?=
 =?utf-8?B?Rk00RGZNZFpQUWdTUXhiZnZIcXNDbHZuZTlqaWN0c0pCbUlNeGxxakZmVzcv?=
 =?utf-8?B?QzJxZkkyQXVIY1paSU5La0IreXVPeFBoODFEdXZjdTJWTER5eWFMNDZOM25E?=
 =?utf-8?B?aDc3R2tWanFvRzNUTUt0SlhSTjkwb0ZsaDJyNVBVTm0yMVVialp5MzBPbElJ?=
 =?utf-8?B?WG1SelV5bS9KZnVrZ0hVK2hhdVdMY2dCU3F3aVJaUHhtczZIbEEwK0NURElQ?=
 =?utf-8?B?UmtseGhpMk4yQ1Vsd1J1Ynp2cTBrUXhjZU90YlVBcnZNOGptWHJXQVBwS0ZL?=
 =?utf-8?B?U1dmYnI2SWQyTUNoRGpSK2VmVnBNcTNkSXZOU0wwQ3FBaThuVUwyeFhmUWFN?=
 =?utf-8?B?UktlTUw1cVhmNjM1VUZvWVhucTl6enNEWWExU2tRQm9Ud2p2VXlrclhBOC9u?=
 =?utf-8?B?NE50Q2lkSDlwSWwrZjk1OTJBbDJtOGp6RW44c3Nad3pLUFZyZW5DRUpUTmJJ?=
 =?utf-8?B?QWlYZHdycGprbktKSjNtWUdKemhGZ3ZyRE1xZlNDQkdOWlUwaXhQeS9sVkR3?=
 =?utf-8?B?ak9GWUJuOUZQME1valczZ0xsNVYrSWJ4enVHVXlRYjFINWw0eTkyUUpVOHlm?=
 =?utf-8?B?MTkyWGUvN1hUWFZ4OXBsVDRBV1I4UGkzYWg4aElnMFZoSm83NjlXZS9KQ0pY?=
 =?utf-8?B?TG5KaDdJaDlhMk1ORDFpK3phdk9lVHZBZ3YrdnpNOE9aRmJyOGtjdzFBNVV1?=
 =?utf-8?B?bmtYY0NCZFVPZnNpVnZ2REJDVnZ1aUNHMUorU0RYdHVKRGtSeGxucmg5TlpX?=
 =?utf-8?B?cEYwRVIwU2FwQXc4aTBxalJDa0ZsYVVhQTM1VmQ4WTUrc2hobHJXZHQ3bzBH?=
 =?utf-8?B?WTk3RVF6d1gwVWI1V3NEQzF1d3dEbC8ySndXdStLWGFnUDFRSlVZbGliRW0y?=
 =?utf-8?B?cG5vcHhNR1lRSkY1cktXUlI1Y2tTcVVpa2FJZGQwN1dxbkVGeStRVldqSlVl?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15805d6b-f86a-47e7-3b98-08dcf289315f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 11:03:43.5109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ojrw7TBkEMWffCWqyh4Xjc27zubZ496DauW1FaRGjSm5rQ+14qzt4Nv++JEPrm7XAwDeRU76n7LIhcFNTQEkIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6135
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

Quoting Jani Nikula (2024-10-22 06:37:51-03:00)
>On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> In order to be able to use the DMC wakelock, we also need to know that
>> the display hardware has support for DMC, which is a runtime info.
>> Define HAS_DMC_WAKELOCK(), which checks for both DMC availability and IP
>> version, and use it in place of directly checking the display version.
>>
>> Since we depend on runtime info, also make sure to call
>> intel_dmc_wl_init() only after we have probed the hardware for such info
>> (i.e. after intel_display_device_info_runtime_init()).
>
>Non-functional changes combined with functional changes. Please split.

Do you mean changing the call site of intel_dmc_wl_init() as being
non-functional? Or is it something else?

If this is about the former, I would argue that's not really
non-functional, because we are changing the order of how things are
done... But if making that a standalone patch is preferred, I can do
that.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>  drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 4 ++--
>>  3 files changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index 071a36b51f79..5f78fd127fe0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -128,6 +128,7 @@ enum intel_display_subplatform {
>>  #define HAS_DDI(i915)                        (DISPLAY_INFO(i915)->has_d=
di)
>>  #define HAS_DISPLAY(i915)                (DISPLAY_RUNTIME_INFO(i915)->p=
ipe_mask !=3D 0)
>>  #define HAS_DMC(i915)                        (DISPLAY_RUNTIME_INFO(i915=
)->has_dmc)
>> +#define HAS_DMC_WAKELOCK(i915)                (HAS_DMC(i915) && DISPLAY=
_VER(i915) >=3D 20)
>>  #define HAS_DOUBLE_BUFFERED_M_N(i915)        (DISPLAY_VER(i915) >=3D 9 =
|| IS_BROADWELL(i915))
>>  #define HAS_DP_MST(i915)                (DISPLAY_INFO(i915)->has_dp_mst=
)
>>  #define HAS_DP20(i915)                        (IS_DG2(i915) || DISPLAY_=
VER(i915) >=3D 14)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drive=
rs/gpu/drm/i915/display/intel_display_driver.c
>> index 673f9b965494..8afaa9cb89d2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> @@ -200,7 +200,6 @@ void intel_display_driver_early_probe(struct drm_i91=
5_private *i915)
>>          intel_dpll_init_clock_hook(i915);
>>          intel_init_display_hooks(i915);
>>          intel_fdi_init_hook(i915);
>> -        intel_dmc_wl_init(&i915->display);
>>  }
>> =20
>>  /* part #1: call before irq install */
>> @@ -238,6 +237,7 @@ int intel_display_driver_probe_noirq(struct drm_i915=
_private *i915)
>>                  return 0;
>> =20
>>          intel_dmc_init(display);
>> +        intel_dmc_wl_init(display);
>> =20
>>          i915->display.wq.modeset =3D alloc_ordered_workqueue("i915_mode=
set", 0);
>>          i915->display.wq.flip =3D alloc_workqueue("i915_flip", WQ_HIGHP=
RI |
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.c
>> index 8283b607aac4..f6ec79b0e39d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -250,7 +250,7 @@ static bool intel_dmc_wl_check_range(struct intel_di=
splay *display, u32 address)
>> =20
>>  static bool __intel_dmc_wl_supported(struct intel_display *display)
>>  {
>> -        if (DISPLAY_VER(display) < 20 ||
>> +        if (!HAS_DMC_WAKELOCK(display) ||
>>              !intel_dmc_has_payload(display) ||
>>              !display->params.enable_dmc_wl)
>>                  return false;
>> @@ -263,7 +263,7 @@ void intel_dmc_wl_init(struct intel_display *display=
)
>>          struct intel_dmc_wl *wl =3D &display->wl;
>> =20
>>          /* don't call __intel_dmc_wl_supported(), DMC is not loaded yet=
 */
>> -        if (DISPLAY_VER(display) < 20 || !display->params.enable_dmc_wl=
)
>> +        if (!HAS_DMC_WAKELOCK(display) || !display->params.enable_dmc_w=
l)
>>                  return;
>> =20
>>          INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
>
>--=20
>Jani Nikula, Intel
