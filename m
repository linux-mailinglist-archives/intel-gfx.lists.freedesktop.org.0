Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qbU9H4T4O2rogwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 17:32:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ADC6BFACB
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 17:32:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=m6ruIjuE;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A066A10EC2F;
	Wed, 24 Jun 2026 15:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C66410E8F2;
 Wed, 24 Jun 2026 15:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782315136; x=1813851136;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=JdnxcZ0HZfS0Zkcza691YB07YyhBaOaSRNUhsdttMNw=;
 b=m6ruIjuEUhXB2Do+YHpbHI4DBlEsT+oDhnu8aEFzxYp99LFK9wyTry9L
 QvEf2PAANfUmdTuiOEYCpYLXy6wAXcdTUjeP1jXslmXrFd2aRgnP4p1TX
 9olGqISee/Z8CXIa5gNtjgfTZLWlVzsEWyaVnA3UDFiFu5XmQ+A9HhSjf
 DLWdTjGwAvxKYyPBKMOIQmceDk3DJnKY7o8TGoxQyVRU5CaQ3UsvnzqE2
 oMif0iiDaRaH7ykIBVwhqO3OWIeodW7jLhDD6WibwiOT8msVdRRBmmNn0
 CcjHbkejStBlXiVrvftmv3HQE3cvDnYWQOFWjoZOtKvrqUx/E9io+KCbG A==;
X-CSE-ConnectionGUID: Fh8Y/b0JQnqqBZR+ehTTLA==
X-CSE-MsgGUID: KID0+m4pS9CPGAdHy5QkMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="86926545"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="86926545"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 08:32:11 -0700
X-CSE-ConnectionGUID: G02Iamf9RLehPRNuXm4fzQ==
X-CSE-MsgGUID: qdxiHTkpQXaWAT8PNSU1xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="288032437"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 08:32:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 08:32:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 08:32:10 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.71) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 08:32:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nHawuHpkrJnMl69i1+I6kC9N5FOuoGmx17+hZUfiukIwn4NCBEMuHw14vpnEnPGFw5bLQHxm1Ev60Lt8G6OltmImysxpHX2BXUdV9Urzx8u8yJZf6ITH/hkuGFxnbGgil2XbIqZ46XXOQscqhb6hrUc5j2Wz9ym2i4WocKfje9W2x+m1znaE5lIBzs7H3RxyKUgGye5yBXldefJB//r/oM624+mOPvLrnyxegFY6C9VwuBTMPumAV1PdIAKB+iBJRA9z5+zzfZkW+s2Og4hbus088rxvhhIMjylfS4DifCF1IuKlLywNnANJ0cxT3n3rBpn6TKQy8u56rAujK9ihCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3rVxr/SwbUuOP+rC45sRf1ziLz4sZ91zc71JfLCEe6U=;
 b=LievE+WLD0/rK+bt8SQW7qgVPI5ro6CCKrRE94EAjt3nTubrt33ZNvjA31i0qeN7BX2ZqmOWhrKRtpVkBhPC6jP0Ov1qH9UB0TbAdLezLsN6UTtghk8SsoUreFHMS1aV8InvftYa4UYn2Y7sbTf7hEcV+IgTnx3NLVF6zyWFd+plm2XRtago9rw4j2iZG4XL86Y+yyfZjP9mLkkEeEygc9rYjYpPMlzH8pH8BGdUUyy84/YMQU5wgWPoUnEtbqZQBUdAnh0A3zH14mP/7FFvUTk+0P+PyLgey37CUBpUqRfIfUpQ2MnZG6HJGf/3OyhfAGAqXTicq3Lg3W6+iBRDDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB6564.namprd11.prod.outlook.com (2603:10b6:510:1c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 15:32:07 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.012; Wed, 24 Jun 2026
 15:32:07 +0000
Date: Wed, 24 Jun 2026 18:32:02 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 01/28] drm/i915/dp: Rename intel_dp_link_config to
 intel_dp_link_config_entry
Message-ID: <ajv4csBlHgMpyvcc@ideak-desk.lan>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-2-imre.deak@intel.com>
 <dd3dd224-1be3-f921-5038-1bb6fe587732@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dd3dd224-1be3-f921-5038-1bb6fe587732@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DC01.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::30e) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB6564:EE_
X-MS-Office365-Filtering-Correlation-Id: b3471693-4b11-4407-1b6c-08ded205c001
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|22082099003|18002099003|11063799006|56012099006|6133799003|4143699003;
X-Microsoft-Antispam-Message-Info: HErABDCKG5eLERoXXmmyjKHzUI5sevLo8X1K0u35+lJ+XUAATyyyAV1bIeNivne+CzUfE1FyspmdmJ0s4J1ymkHfoUNIeX8xJfOW5Srf/iWcpXhRqsqg4CiZQASCtDLi8Y43GuymkpJNZBIO2uX5ZT+MLvQh6i4yoZgbgw62czpSvy3yoPSssyDFSw2k5S3W6HM5vgm7r0NrVq7cM9QDARKzqEAUWSSexLZiI1EIM7+0TWII11mhsev3xl01Xtgcn306jW7en4bTmXyEegm3KZKK0RLd3FoF7X/JSj+rKeIlH01jjo45+wAWYIdJjhN1+A08t+d1LDit+Rnwjw+5XzR9GRmBcLPwb/SB1idSwEEMnX1YSGChzWMP9mDU4z+egaV64jfAy6GRQ4zpA2foaFKMyprZzQjbUxo/9H15SRSa4SCEZQ1kY3PiyNBJFzYcgoPpLzyFYInJ5boafH7xKk70icc6SLxnwIPpHKiST0Bd4DPEeOuav5n/29FIlul0F/R5lqqiIH97RbESzZJNF/LPdwhZekqnzXxGzv9/NkVHYg8QdvLH9jCdBTKOLIPfrltvgIZJsgWXAF81tyOBSTzOF0mLA2KSv1mRk0rZ6xe8kHd06roMuC0aCjonhcPL2CpiE82Nea9ttp7fpEWSZurZOLC2UHqwiMP+3GTSb9g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(22082099003)(18002099003)(11063799006)(56012099006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTJpT09jTm5uekdHemdUdHYvS2VpbS9XVytOR29lVlMzV0tiMC8zRlB6c29u?=
 =?utf-8?B?Z0Y3RUU2MmRQZ2pKU3NHcE9aaFlQNVV5TnRNQUNVeEhZKzltSGRocG40VnlF?=
 =?utf-8?B?YU11TTVnaUx2NTRPN0pzQVlFSzFuK1huOE1OQWVlRGRpZEM2UExMOG1Objhz?=
 =?utf-8?B?V2QvOUZDU2h4SlF4RllTalFqMmFNa0UzYTg4c1R1bUFySEZCaytIMWpiaytW?=
 =?utf-8?B?Vm1iaDV6Zk9iMFFUR3BidHJ0Z3NOV3hHUjBKRGlrSGphZzFUWk5RRDJtVTJH?=
 =?utf-8?B?ZGZRZEg2Z3hYdTk5U0Q4SHFzTlhTNmt6QktubXhKeWFQeFNqZndkaStSV2hl?=
 =?utf-8?B?bFl0TzhmQzhlVTVFK01uREE4S2hnTTlGV2EyNHF0bGl1OVpHNzBOUkt0K3pm?=
 =?utf-8?B?QUY5VUNCYWhmTWcvRFp4NFJCRDVZR3VnUGtwZTByRFh1a09qUmxjY25xOUV2?=
 =?utf-8?B?ZE05STgveXNMK1AxOGxwRW0ySldIa0FXcWJ0SjJkc1VSVld5NlJrRUdKKy9p?=
 =?utf-8?B?dFl0UFp3WWxiQ0g3ZXlwbUJGdVdZM2xBQ0VXbTlDZzVnWXhBSDBSY2JGeWU0?=
 =?utf-8?B?SnZ2VEVkd2lYdkpLRm50MjNmWXBmUmk1d2phdWhMeFhIZEV0eDdQazlJdkZk?=
 =?utf-8?B?NkJMSld2Vkxrelo3cGtrVkI1d0hCR1hKd2VpaXJGTmg5V1MwcDVYV2dDbjAx?=
 =?utf-8?B?R0hWbHBoSklWaWluZUdoUUtKYlhGSTU2aHppOEtPZjU3M1N4MkxCbjV1MTFh?=
 =?utf-8?B?Q3VHbFFPUXhUelJxbzdNSDR0eTBWdmpaaVRuUmIyRUtkV3JDMDVLT1RneWtq?=
 =?utf-8?B?R3JnKzdZZWlOeDhJOVFBRVVTSUdpcndqVjlWRnRWYjZUL2NxYm1ZWm5ESkcv?=
 =?utf-8?B?SzhZRWVsQWdhQTRsSTlvZlJPWDdmbXRjRmFwSVBpQnhaOHhlc2hWbVRtT0Zn?=
 =?utf-8?B?bzR3K0tRUzg0SXJJVmh2OVcwQllhY1FreFBZdXRyV1E3WU92eEUzUUxNa1Rk?=
 =?utf-8?B?aGhUWjd5UHRUckRTS1lDNHZPUithdytWS1U5ZHEybzZYNVEwV215Q09aMXdD?=
 =?utf-8?B?NjdLQnlVTU9QQkVtTTRZdUlLR2ZudHJkZ3hRRWU1L1g4aGtpT0d5WlRjU3gz?=
 =?utf-8?B?bkMyajlNTURIdVJUenp5SXE5OEJsRVNua3NZU1kyeFJwWUUvUi9tR3RJN1hH?=
 =?utf-8?B?Ky8zdU5SQlJMZDlHMTA2bDhXbC9mRCtLY055SkEvVGFqRmFCbmF6NU9OZm41?=
 =?utf-8?B?NEhySXdJSkxpb1JiZTMzTURBVXFBYTVHTWlqK05yakRxeHNSUWloUi9uVzkx?=
 =?utf-8?B?TEhNS3hmQVM4WXN3S2tNREFGTzVwUEdDL3NwdzVhazkwSkpSNDJOSVRWeGEv?=
 =?utf-8?B?SU8zeGkvYjhnODhkYW9BSTkwbDdMck02OUhLOG82SUtIR0t1QjNnU05Mb3Er?=
 =?utf-8?B?UmJCZTc4ZXZaNkNKMC85eklEd3dablFBNWpIZDltZ05yUmVLbTZUWkd0Ym1O?=
 =?utf-8?B?VjNTd1VVVGk1bVcrcUVsQTIvazBpOXEwaTgrZ1dNUnlDRFlITzNBQlNJNUNL?=
 =?utf-8?B?VnBaK0lsSzY5MFlvRWlJYS90YmxKNDJIT2RNazJuSGRpYTZXZEcrOFpSRU4r?=
 =?utf-8?B?alFTVEUyanBaN1hPNXBHRGxhejVvYlRsakZOUkVxVVplOElya3licUlNeHBh?=
 =?utf-8?B?NTlPSjdORWVvREk2K2FCcGs3Z2ZaUmZxVUVmMGUwWlM2RDY2OXBCRndGem1I?=
 =?utf-8?B?Yzh3OGd4Z1F5VjJXL3BYd0ZzeGNJNjhGMElkQnU4NXNVbG55eVUxTWZjbDA1?=
 =?utf-8?B?Smorb254NWpQemIrSTV5SVJKd3dTYkpqWXd6VGVtZXkyZWQzS0lXVmIvVENs?=
 =?utf-8?B?WGcydGJVUXBiN1M2Z2RwMEdkQThacm9VUE41UGpkL0hrOVRManpGYnN6czl1?=
 =?utf-8?B?MW1pL2tZajRKdGphbzVaeGw0TDRoVHNyOXRaZmsxZ2dzYXlNTGpYMlBzNlJG?=
 =?utf-8?B?YTErbDdmRER2Q29abzdsMXdjVmx0WDcrdS9wbFlISDQ2ejJNVUluTklLb0pP?=
 =?utf-8?B?SUFrZURWOUE0a3VXR3ZNeDAzSEd4YW5vMnJTVkp1RXN2aEovQThsTXE0YS9q?=
 =?utf-8?B?T0RLSEE4dWRydU1HaEpGWWphOGVERjMyeHF6YjQ2Sy9hUUlDM2dTMnFkZnZJ?=
 =?utf-8?B?MzhxOXQxTkFFVDhrQXIxdmhScWwwM29XOHo3QkYwQnU1cFRib0hDT2FaVHA1?=
 =?utf-8?B?NUtpd3E5QzFxV0RJVFZhS1pGY3Jza2xaUHVGSW1tTVo1R1pIeFF5d0ZSMG1X?=
 =?utf-8?B?WnFFQWNiWm1hSXphK3FFT3pOTS9UOXBiWFhOSnFtYWdCT3UwditZZz09?=
X-Exchange-RoutingPolicyChecked: RCxC3R+Q+sii7qhlcHc2WrN1nX3b3EU+XhIpBDeoRyK0JeUQqLQIV/s6eb3Gqo55lVR8ftI6pHpf9gBMUjq792Wf2J+Y+b0q/EkuFnCfCjuznpueQ0qi2/rlX40r0GGbGZI4VPspLfrx06ONvsNq9dPni4UTMpzuZc4pBJYfHVA6JlI7KTK1LoQwwMt1EvsOgvbnfuI4ZeeBuxkGnVNouE4MKl5oLxZKuHyX2eItFCVIkLeg3tzjA5uM/wWIzmVuBWXflD3WQknyOCxwwXdBp3F4B/YrSnbXd2SbwlklMdXX2FbFl4z9WXguVk/ldhGZdImP1IFg6jNfkIQMXlAGCg==
X-MS-Exchange-CrossTenant-Network-Message-Id: b3471693-4b11-4407-1b6c-08ded205c001
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 15:32:07.3644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gEdz5/46TypL2vLG5/u4NQ0KY/w0Bn6TDADQe9HbF8bclaYu0HziG5mZtRInSvKWRwUdKbIG9Gy6qKpisJOsWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6564
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email,intel.com:from_mime,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 22ADC6BFACB

On Mon, Jun 22, 2026 at 11:53:04PM +0200, Michał Grzelak wrote:
> On Tue, 16 Jun 2026, Imre Deak wrote:
> > Rename intel_dp_link_config to intel_dp_link_config_entry to prepare
> > for tracking a link configuration in both an internal packed and a
> > public unpacked format. A follow-up change will add
> > struct intel_dp_link_config representing the public unpacked format.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > .../gpu/drm/i915/display/intel_display_types.h   |  2 +-
> > drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++--------
> > 2 files changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 6cd102a3b610c..c71edea145878 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1840,7 +1840,7 @@ struct intel_dp {
> > #define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
> > #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
> > 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
> > -		struct intel_dp_link_config {
> > +		struct intel_dp_link_config_entry {
> > 			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
> > 			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
> > 		} configs[INTEL_DP_MAX_LINK_CONFIGS];
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 3569e61e7feea..00eb3f5103383 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -699,18 +699,18 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
> > }
> > 
> > static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
> > -				     const struct intel_dp_link_config *lc)
> > +				     const struct intel_dp_link_config_entry *lc)
> > {
> > 	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
> 
> I'm wondering about s/lc/lce/ and s/lc_/lce_/ since I assume the var
> name derives from link_config, and now it will be changed. This could be
> beneficial given that next patch introduces back struct
> intel_dp_link_config.

Yes, this makes sense, but it's simpler to do that as a follow-up.

> Whether it applies or not:
> 
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

Thanks.

> 
> BR,
> Michał
> 
> > }
> > 
> > -static int intel_dp_link_config_lane_count(const struct intel_dp_link_config *lc)
> > +static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
> > {
> > 	return 1 << lc->lane_count_exp;
> > }
> > 
> > static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
> > -				   const struct intel_dp_link_config *lc)
> > +				   const struct intel_dp_link_config_entry *lc)
> > {
> > 	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
> > 					 intel_dp_link_config_lane_count(lc));
> > @@ -719,8 +719,8 @@ static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
> > static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
> > {
> > 	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
> > -	const struct intel_dp_link_config *lc_a = a;
> > -	const struct intel_dp_link_config *lc_b = b;
> > +	const struct intel_dp_link_config_entry *lc_a = a;
> > +	const struct intel_dp_link_config_entry *lc_b = b;
> > 	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
> > 	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
> > 
> > @@ -734,7 +734,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
> > static void intel_dp_link_config_init(struct intel_dp *intel_dp)
> > {
> > 	struct intel_display *display = to_intel_display(intel_dp);
> > -	struct intel_dp_link_config *lc;
> > +	struct intel_dp_link_config_entry *lc;
> > 	int num_common_lane_configs;
> > 	int i;
> > 	int j;
> > @@ -769,7 +769,7 @@ static void intel_dp_link_config_init(struct intel_dp *intel_dp)
> > void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
> > {
> > 	struct intel_display *display = to_intel_display(intel_dp);
> > -	const struct intel_dp_link_config *lc;
> > +	const struct intel_dp_link_config_entry *lc;
> > 
> > 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
> > 		idx = 0;
> > @@ -788,7 +788,7 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
> > 	int i;
> > 
> > 	for (i = 0; i < intel_dp->link.num_configs; i++) {
> > -		const struct intel_dp_link_config *lc = &intel_dp->link.configs[i];
> > +		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
> > 
> > 		if (lc->lane_count_exp == lane_count_exp &&
> > 		    lc->link_rate_idx == link_rate_idx)
> > -- 
> > 2.49.1
> > 
> > 

