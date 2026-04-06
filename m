Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOajGhF002lviQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:51:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A763A25FC
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDFB510E20E;
	Mon,  6 Apr 2026 08:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HE28aawT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7767110E184;
 Mon,  6 Apr 2026 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775465486; x=1807001486;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HnnxCwO26rQxiNoy1yu/agxL1eySj5JvAUn4/ramhpE=;
 b=HE28aawTlyRzcCPnazf9qQfnfoSwCFrON0+ZK1hGB0E4AGHsoIdB8Kie
 xxHEExrxA/7lGXyz6IOIN1teQ1a94X0JK5zrQvCnYDCzQiNfhpPR1IfAQ
 87fOgJU2RO/6SlfihRCZBFsmtRk3UnDZ/8fkvegoiz0M1jSNVzE48bHGQ
 A+DOhYSTCCdca6hH4Ap2Ti2lpG24x5Q88ge1l449S9/F942Z61JrxZ0q3
 uiEhnhnj1VPq5oj+ak9gVbIzxfWIqi9ePoh8NK3MMBzivZuM7NggtjsI1
 xRT1T4CH/DDwIqWFq5qct1ZLKkFUy3f4vsU24bb8DDhViWrKtDZpzO/uV g==;
X-CSE-ConnectionGUID: 7rWnWNC0SlizN4DhGB1s7Q==
X-CSE-MsgGUID: o62YJAGOSk+tThtBf5kiGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="76605768"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="76605768"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:51:25 -0700
X-CSE-ConnectionGUID: bsb8PCYRQjC81lnMphTcxg==
X-CSE-MsgGUID: /xziuo7WRxeJh1dPvWxTJw==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:51:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:51:24 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 01:51:24 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:51:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aKlGpE7+c9N/LRm9dFXmVrTuBAQ76XFQePzKwavJhbijbIW0/ifLsfyAOwiUASMGIdfORnQcXP0lVWCtEQGWSNKYXzgQmd4iGfC9/Rnx9OEy9v+qgRWLjS3GemwCZHzxgU1bsUmdly+myDeYc/H6szoqe+LwQQGT2WQsmrFuAJt/UcWEdKB2jqFfT/KsWyusjiZyoheF/Cc671lvrsyV0w6rh3ul/opifBtPiAhxZebpmrTdSgYvWZqVas7l5VfPgDvK/qxXzZN7GROofqNmYOhJjumfk3sbw894yTMbhTMqakFGHjiWgurDly7wiK/SGeathe6e1qZd1xUobd1HLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o4mMLLjVu5aRU9gZInC+8Ho5Wog7/rhAMP417EcHvIs=;
 b=Fjlbmmh1xvmyPD3TEC7HeJLAXMS/EA7qQcCkdhfyeofQRlolkyvr6nJ32PYSWy+5m17seTqWK/ZyaFXKMJNc0mmnB04za86/reM6Qnfa6Gr44SNmZkEleCEpCKUYCWUp7KVnFKYijrZePNDemWAGzlwr18u6HTjdrjq3PTXZpFSjo6jbWytd19fhr4KgFIvi6kDr5y2ARRx6L2fCBhZxYWVThQmV2k0QUSnkUFbPm7l69LkbnOvpZIhLxut6/gIcvo1K4djbx6oyp902vzkirDiYSKesHs14LxvdfSWbGLWKXUogYX1UE3UYO7ah0e4qrdRN3DgJeNHWJ5O/YN0hUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6389.namprd11.prod.outlook.com (2603:10b6:930:3a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Mon, 6 Apr
 2026 08:51:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 08:51:22 +0000
Message-ID: <c413f47d-86c3-4122-ab95-3173e0b39f83@intel.com>
Date: Mon, 6 Apr 2026 14:21:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] drm/i915/dp: Validate sink format in .mode_valid()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-8-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260330235339.29479-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0185.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6389:EE_
X-MS-Office365-Filtering-Correlation-Id: ebe3c83a-b227-42f0-979a-08de93b9ad6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: WlRKb4O1lNHvYq4bRE40H/X7TkKPbBinQJnXbpTSSwSzl55tyQ/kYbpERqYO3/wdXc0tMuW3HV/KBGnrg8EdCkLXJYXgAkubzJeARUUldX/ZoLbBXah69c1jthT9JpOHOutwiAlVNrqBLhRsNNQDFw9G1PffQACLQlec6HSwVZjj7XahkLQameHnnfDDn1PSlvXkGvy/3eHEDwT8vqpnton3+a+iKX1DlvPSw9y9tKzKmf1IBMczCz6I/QneqNNu/aLl/TomdsMhDdxOtPmkTahdh4gXhPvteDv+9F4FPwgw9kZAy7jCbPrtTahNF7p1vfWj1jxEhlJ0xUbKv7uTg4uQmsQ+G9fWiWPti1qQnnohiwioSmNHrJMImUXzcd/VtnD9OxWrgSi48FkxvOuWRv7PHS8n9tfxFH5JluobjZPhCRARYcW+e3ZjMIobEAkfD+6l5KxvRLshNwKEVYwCY+mmbLxlSJh1FSjMkUu/1LDz/UY9yqonJe4vd9T5SjSKoq0514fv4wDH+PrNFcXcxm0B364bd0ecMR8wiPSaae89krZ5EpbNDlWQ05K9lsohxjVy8WgmU1WoGZ0ZIOFv0CF5sNL0dLvme4plIKpwW8r7ai4ypxdLabVE4CLT1vAjMhYt29PXdgz7TitH5BMlOUyBEY4d2N4PIUT9eLMUk72mTG6JbJeknWBLJI5YBZKeLCbSd/ZxA4wc646W7VUfgVEgenfVo3N4zA01jQN9su0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0VZU1l1VE9ad0U2ZmJ6NUFnQkEyTTR4WUhKTlRjbDVZL3hoWnJRN2lZcHc2?=
 =?utf-8?B?bjdYcFJQdm90OE9ORUxBZ3J6QkFnVWl2VzEyQkdWZm9EMWc1TDZEUis0R2RB?=
 =?utf-8?B?TEcwaTNqUmhzQmIraTBrUEZTQ1N1Q0Jac2cydUhTTktaQnhVSWt3TUhSMUlW?=
 =?utf-8?B?cFVxMVlvVDlxc2VQSXd5RmpJS05xeTFUNm1seWgyYjdLMkYxN3dMWEZGQUxB?=
 =?utf-8?B?S0xTN2pYRlo1UWdyUUhsaSt4c0M3Si94SWpQREF3cmhoZmxnTjBoZlo3Y3JX?=
 =?utf-8?B?UHpTQnk3S29RK014eEw0aEYwUE5CUVNJUXdWNjQ4emw2bDU5OXNLTHQvcGxq?=
 =?utf-8?B?V2NVaUlTZy9oNnFxRWNzY3N4NWhvUndIMFNGYzdqczltQ0lnbjdWUi96ZlMy?=
 =?utf-8?B?YmF1WVVBV1B5Nmw4VTQvV1pUdVlVY1dGeFIzV1NZelJIYXU2YXR5YzhWcFM1?=
 =?utf-8?B?eFRjYXRmUnB2RHBqcHF2bmRrYXRJd3BManhEMG50eVBEQm15bkN0ZndwYmVD?=
 =?utf-8?B?ZDZxTVNwSFVyN3hDc09TNzFFc1ZsZnNwQmVsTkFBekRYRlF1WTNacUhEdEds?=
 =?utf-8?B?MlVMQXpURVZCUTdxMTgway83emhnOUpHZVRjYzVzdmhOTmJvVFJPRnpSUGdN?=
 =?utf-8?B?UHZ3Nnl3T1FZUFhvVEU5Q0RJVWFOZDBIblhIbFB1NUNsVlRoZUVRaHdxN3FJ?=
 =?utf-8?B?UEEyUmpvOEhFamU5c3F0OWZpZHZWQ09DVW4xL080cjQ3NGJreUNBQnk1ejFo?=
 =?utf-8?B?aU5DZ1MxbW9TU3V4ZDFVZGRUelJiWUgyMzFwVys4bW0ycVpTYjYxcHBmbEk2?=
 =?utf-8?B?aUxvVnhjdE5pVXZoMktCakU3SkZyeUhxelN3Y3ZhOGxDZGFhSm9lZXVlTlpC?=
 =?utf-8?B?YmVCc20rNVJwUTZYazBaUHNPTkM0YTZZMnpnUUJqclZSSVAxMUdOL1ZmNUVP?=
 =?utf-8?B?RkhkdGJkak5LbzJCYlJFSVNrOGdKd3JCWGFnOGl0RDBsTE5OSXpPODlSTTVW?=
 =?utf-8?B?M0d1d3VJcDJLU0dBU3NxVGp6d3VQaGxPZDNqdWgyd0RyazMwRncxaHBSempJ?=
 =?utf-8?B?SXREZFF5cEVPS0dsOGpEbklldGhzTHVBYmZVRFRVVEcrMlRORGFobVJyNWYv?=
 =?utf-8?B?cVFZOVZSZUpqVzQ1cnoyYlFRYlo5UXlRazZqaWVXbHNSdEdMeStNVnhIUmx1?=
 =?utf-8?B?WE9SQ2VGdDdFa3dTVm5oSm9GMCtiSHNLd1kwV0NaQWQxUUxHYVJSVUVWR2Iv?=
 =?utf-8?B?QW5MeFRqU0czbU5HMkdDdy9lemNtbkxGL0k4RVVaZ3orRGN2Tzk5Q0dzZlVT?=
 =?utf-8?B?Wk43bzNnN1VnUXJMTnN2bG1CeVhYM2dTWlJQaU1aZWo5Y09qbGtBMmZ6SnRl?=
 =?utf-8?B?ajhMZXI0WlArMFhJRTVlYnFtMVREeEpnZ0lSQkM0WHhQcVU5TVE3cllRdlhl?=
 =?utf-8?B?Ykc2NFF4TGJXQ2IycHFySkJRR2lDQXdQeFVRTUlkN1VaWmtWYkdoejVOcEho?=
 =?utf-8?B?cVY0aHhWOU5KZFdwaHI0MDRvK3E4cS9iSUlDSzM1R0lFV3dZQzkrTmpwekd0?=
 =?utf-8?B?NUpBaUIrY1ZkOGF2UUNwV2VGK3FmdTlIdmJxNnVLV04rUVRHNzMzL2cwV2oy?=
 =?utf-8?B?eGE3ZFV2Smk5cXlRdjFHcGY2bnp2Y1RWZm50dXFpZ1gvNURBSkxPN2IvTTB2?=
 =?utf-8?B?bTNtUk5JRkJJd016WHgwcWJPcngvclg3NVhsVDVjWURlWU9uWUsvRG9Yeit4?=
 =?utf-8?B?WDBHNGRMSHpTelBaRVgweXJ3MlhnU0d6eEc4SzJUVEVNZnBHWDZwMzZEVTVR?=
 =?utf-8?B?ZDN1ckFEbkk4eDQ2UXhrdHhrUVlWUWF4RktPUS84MXVmaVFHMGZFbjkvd3BS?=
 =?utf-8?B?YytEK1dYaThwVDYyNGNEd01zdXRkQjRLM1dlTFRYNXFhNlh2RmNpWUNsaTBG?=
 =?utf-8?B?YSswcGtHZTBqd3E1Y282bjFhZnFOTjROUngyejRHK3hkSmY1R0dveTdaMEhn?=
 =?utf-8?B?cTh4NEVJTnYrbzBvM3hhcFl4QXpuVWc2WXEzTTV4ZDRHcEhMb01QdGZ1bUcz?=
 =?utf-8?B?WVdwTG9QdzVUNkJ1RXU0RER4UDg5a3hwYm1EcDQ3MktONDR5emJzQUpCNWkz?=
 =?utf-8?B?bGZpWjZGVHRrdlJzV0dDNUdnU2dybUxqQWdCMUpnNks0UTNmMDFxUWJXR2FR?=
 =?utf-8?B?aVgydloyc29lYzhEVThOYXM0NGRXbEw5N2VXcmpGbzBLSXdxOE5pLzNvUGRF?=
 =?utf-8?B?TDkxR2lNS2dyV0xMOXB0Q1FkSzdqeXp5blhXcUpIU2NYTTdRS1NvSjdDOUFk?=
 =?utf-8?B?OHA2Y2Y2L2NpV2dzYmFwTzNTN0YydnpQSDUycjIxRDRZUzcvNjhOWFNtdjNo?=
 =?utf-8?Q?0vBn1EgNy6KMre3g=3D?=
X-Exchange-RoutingPolicyChecked: ddPWHobEsx/qz7XfvSn3OlcRFqSXAMYzq3K9S7BqSOOxv1S1VI8waeUY1bwdPyiWyEY79Zncrxe73k2KCXimeusMO97oHwBvoMwqAK4/qBFUWv/0rmo8IDY4cjd1BiWuWPoJe5DxaAf643zGwiVzqolvGJFQ1IfWWIEbbDeYpmP479FQxY1hNygCcNGtrsbia8OVaC7aRQfRLv7YVksTBxtFMxyD4HtTBj8LkY/uSsf1FN+/rabvYN79QY/SRFgRkEgDFL86eusfkFaG0mh9mkSsGmITJUn3h4HZcJCSiNuO1bH873tzLL4eFlM3PRaJZalFQNLiGLVhp6Osq1LyCQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: ebe3c83a-b227-42f0-979a-08de93b9ad6d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 08:51:22.4513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ya1fKtZ1PRtK9PUy8HipTsuCoOY3q+ONrP1JT8qF0sxaqInwWoj4EAqZQIhdbtPqSMvm1a8cfJydyo5SNio+i3g7O2zCiyH6YUNM0S3JYX8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6389
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,collabora.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C1A763A25FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 5:23 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Make sure the sink supports out chosen sink format. I suppose it


s/out/our


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> might be at least possible that some PCONs might not snoop the EDID
> hard enough and filter out all the modes that they should.
>
> Also if we ever want to add a similar "force DVI" knob to DP
> outputs that we have for native HDMI, we'd need to manually
> get rid of anything DVI sinks can't handle.
>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ce40d38557e1..ed89fbcdd549 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1466,6 +1466,10 @@ intel_dp_mode_valid_format(struct intel_connector *connector,
>   	int num_joined_pipes;
>   	int link_bpp_x16;
>   
> +	status = intel_dp_sink_format_valid(connector, mode, sink_format);
> +	if (status != MODE_OK)
> +		return status;
> +
>   	output_format = intel_dp_output_format(connector, sink_format);
>   
>   	max_link_clock = intel_dp_max_link_rate(intel_dp);
