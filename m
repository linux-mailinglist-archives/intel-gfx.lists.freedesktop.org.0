Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id P2bFKqwsEWrqiAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 06:27:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A105BD1D9
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 06:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE2A10E2BF;
	Sat, 23 May 2026 04:27:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PGANbB3P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8F910E2BF;
 Sat, 23 May 2026 04:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779510440; x=1811046440;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mxQWSa+1QrNapj1P57taRAqxAigmpJnCDyZYxvFP05Y=;
 b=PGANbB3Pepg7Z8xtjc4TzXN6iuazk5cBpBH7cDe8tXcpuo9hyk2lFePY
 apaYElCts/8LbILuytAD0W+1AoTpyfhmp1sUd4fYdwJCS4z2LDqEW/nX6
 U/GCX77CxL7FTcqyaOYp2SoUq4dkE457K800KRgFOmA0poa4/K/qrb4zm
 T4caPLKN6q1yDs9kIcFXLpgPZgPOza7TcecB9TL6myUNnjdtr+ZJyJUor
 7824y2chmhX4iraMZCqowOFHp/jUlhTl57l80x25Ajy9eMsMD2hLwq5FC
 176sNzOnN2zhvA2zv3SwCP8H/4FIxJRKPDMQdFaV2wKKgRSNkrZa4ftTK g==;
X-CSE-ConnectionGUID: 6eB1iwRKQJCbAn+oQDSaiA==
X-CSE-MsgGUID: dZ7MmZGuRMmvVeqseH2OSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="67959195"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="67959195"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 21:27:19 -0700
X-CSE-ConnectionGUID: KQ+cUPf6RGuVCWFK5Y93MA==
X-CSE-MsgGUID: 1HEjWcBYTUSBx+JjirXEzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="234732390"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 21:27:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 21:27:19 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 21:27:19 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.22) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 21:27:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mvGUMPpXkSUREPbTf4zDdZgaLOWKbJB/1e807GTByijjEOMMJ2IhEPNhADHtTQyeKAhQLxXAnuhrDJcUXUq3CbswOu6rzh/tkvFCYF8RYTBfX46ueol7cBj9o+jzNo9yV9StmWKimdx5yhYK11latQdGhggBSRkRx4ZwJ+SkhcjmOm4uIzAKX2z8qQT2Z7CeXkZb7eMTJ1FCDHxRJu9Q/yXNLGLEv7KV/2MSQyTBAfccTbzecYN+f57IKE4h7AKj8aI6YnoKHVW/TvEelfXJwHSCGCBpTaQFTnCpj2PzjNnSBGRJDlfU7dApy/hMuMEpzSuOhXiD/FZUEcOLNIor8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wbue23DmTcO1L782u2qaFlUTgNLABSqS8gddBf6OyLw=;
 b=JIqTE1TDkUWEUl0+7tQctjbJzIPoDEqLHheRiwx7DBZtUlmVkVfRhsPi5aCUKZrGIb9dDKNdt6RGXWaOqT3zTRRq83BobVVD6i1gg/rfKSYdSryDgq/3IjK7kvgescbhl5BffDYt/5Xy4HIEgq4wljXBXsIXOYM7RsDORs6ZMIQYJn2VNOuyGyamvqx6z/csbcNEAksyhS07ddMC0aq9aZdsRDV863xQnpnKJmC9E+Ax6+aYDkllKRiPP0Avocxbm/Q1T44FX801b9UW1U0HZRzHPDvfFgv5vWS+5i92NvcUt+z10Ux2G9C8+0Sxyi2kkR7GolxjWv+qhSDgq9tgDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6301.namprd11.prod.outlook.com (2603:10b6:208:3c3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Sat, 23 May
 2026 04:27:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.21.0048.016; Sat, 23 May 2026
 04:27:15 +0000
Message-ID: <3df48eb2-2bf0-4a22-ac52-a008e1fc481f@intel.com>
Date: Sat, 23 May 2026 09:57:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] drm/i915/dp: Split AS SDP computation between
 compute_config and compute_config_late
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20260518035502.2909359-1-ankit.k.nautiyal@intel.com>
 <20260518035502.2909359-10-ankit.k.nautiyal@intel.com>
 <ahB1K077Y6yigOIb@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ahB1K077Y6yigOIb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0109.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6301:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e794a28-1d38-43d8-f19f-08deb8839144
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|4143699003|11063799006|6133799003|3023799007|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: WHos0BDj9QCJxdJNKuSJNgyWW7vhM8Fw2UrvmPfp85/k+33eiNzDnkbA797BvZVX+RPxctWyeTS7a9Xkc1gvfS9WSDBsfRvBBXx5LQTm3xntaHMTBnstnubCxmShpVuZTKYYJN6+5i4BPCatcFQwstsX5v+YqfmWPxoar8eHdRGAnpms8M0NQ2VHIKPeavY/fnBVYihlNq9uNShzUWelTD//3eRKfmUehUSYEYnWJ8P7bc2gKg7+4oukKkkGdlksYAV6ihzYbHrzy6cQtI2f9Ab0IQdm6OnhNLYTgf9tuO5b4u+yhMZm0J7Je21HgtgKCFFFfbCN6m4IqjNSe16mJDCk81XtH+7j/jiu03w61/jifP16JYYWQqkZYMSYHjq/dRsQ4Pn/nhnLMaGww3I+RgSzc88PxfxuhA7ivKGeew+p9jWXGc0O6CQspg7qMLlLW24nQxP29jzPr2I/FSm4ihi2rfAG8hfsQlDKspUPa6q7/NzU1YIP4hHjabdg5Hqgz2qWGsr/JxKnS6ckY8Q00xSjXVENj+wg/Mp5Nvv9L2FW4P5EOQEMCx9XD8aPTLJniUSWNcXhwMLDLlr8JPhm25j2pakbaMlfn7lgJYQ2R+VY7cnmnexf253v7amxQBz1izseGMmYIEdJMfzjjkskyj9YGQlIGyTdWpkR6u5Wmhak+204pgLgafPbmMKtw0VK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(4143699003)(11063799006)(6133799003)(3023799007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3hWWkx0N2RNbXFiN25ETXZIYkhseXVmZjUyMEZnU3Jqb1JiWGVMTnRlZHlN?=
 =?utf-8?B?NzVRT09QOThTMHNsTGdnVXBCNjQ0Z28vTm9rQkN6V25NY1hKSkI3c1JzODFW?=
 =?utf-8?B?eVcvekwxRWJjMkJxZk44WnNiYU83TEdBWHhHeFVHbkR0L3NjdjZweUVyYjF5?=
 =?utf-8?B?bEdYQlU3VFJNQ0pZRmVxOTdoWmVqUWJVVCtMS2pZK01xSHU5T2tpSStPNHlD?=
 =?utf-8?B?OWdSMEhoWUpSMFZSY3JMdUxzL3hCdHkzK1BxRXJCVG5ucWxaQVdkUWs5dmh5?=
 =?utf-8?B?Rk91S3Frb1o0V3E3RlhBbGFybTVhT1hzR1lZaEpwNVFCQ29ETlp3aEsyNVd4?=
 =?utf-8?B?WlpIM0FBY2xDdmgvcnEwYjNBV2tpU1Rta2NxakVXQTFxL2M5OEhxK3NxR1Y3?=
 =?utf-8?B?Z3NHRVl5M3lmcTVSTmlTL3U0QlR5NEhBeElMZ3lCbytiSzdrWFl4ZlhzRXlr?=
 =?utf-8?B?WWdBRzlPa2xCZUJraFdHelNjVTV4NW9zcGFaMWNJSVdhbHB2VjdnS3NSM0o4?=
 =?utf-8?B?RHFGeGdmWFRJVFRLU1o5NDFDQmFSc2UvNmpISEpINHI5b1dhL3dQeTYxd1Y5?=
 =?utf-8?B?NWdvWCs4RVhEYmFRVUUzMVRnaisxdjdzTHhwTFBRL3R6aXFtQ3JnVjg5OG5G?=
 =?utf-8?B?UWdwd0ZnVUZmSmJjcEUwNFFJZ2wwcnR5ZWp5blQrK3BoL2ZvOWxWcEU0NjlP?=
 =?utf-8?B?YnFub1A5cFhod3EzeVZzejhpdHdOYWNpMEhzS1JaY1lDOUVaUy9mNDJGVWdS?=
 =?utf-8?B?Q09lNmQwcDc0WitZcGxrSE1tRHlPNjdvWGhIZkJDYThPVWwrL3ZJZ1creGth?=
 =?utf-8?B?UFZNNmlhRnB2ZWExK0tBRlpMUmxjbDgzMkhvRXhpUjdaMC85TncwVzErb0Yz?=
 =?utf-8?B?WFRPVGZDNXlOZ2FJVnVORjhIWWhPM0IvTitiUlpCWE1sNjZmL0JKZ3l0UHFj?=
 =?utf-8?B?RG5HNUlBUEtCWmJYOXpVd28wWkR2YzRGZllqYnZBUkhQNHdhbTVLemxjejAw?=
 =?utf-8?B?akN6OHlnZWw1UlorZjhOWkpkeDg5SGZCcFNQc0sxRVU0WFlkSEh4MUlxRFYz?=
 =?utf-8?B?WHdpMW1UN3Z4b09PWXlWNVIrYi92b1g5OEdzZ3haSUtLN1J2MkRacGxCZnBF?=
 =?utf-8?B?NkhyeUtveEt5QlNXSkRiTFVwOXhJVjdSTzVkZUpBTHhVMTlMcDlqb1lzcW5x?=
 =?utf-8?B?WGVlRHNTVmZwbFJ2allHRTZrUG51N2dRNWRjR3RnOEhZaGswS09LQUs0MG44?=
 =?utf-8?B?cFEwMmE3NVhlT0F6dWZSNnlXKzE4OEFlODRteFRaelFZKzJnMVBJM3lCN3o0?=
 =?utf-8?B?TmkyOGxHRmI4SnEwZlF3ZTdyQ0U3MXh3bWhpZ0VlamJUTWdzUW1CSnlkMWJV?=
 =?utf-8?B?UmVtUFZ6S2k1OWM3bkxqc0dtUm5QUFNSK3lBb3hxV2lUeDc4dlVXVUN5MXh5?=
 =?utf-8?B?ZmlDZ0RTUHNIdjZadkhuWTIwZlVkTW9PL2JsVGxmZFl1dHVtb1FoQmJ0dUlQ?=
 =?utf-8?B?b0JxTFc0SkdKT1BuQkUwRGJ3TGVkKzNndGpCb2hOa3VGZ3BoY1FBVkRuc3pJ?=
 =?utf-8?B?aHRLYnFPMHZFcEt5RTBEOEtMSUlnS25kelNzdzUzaVRZK3Zrc0l5RmZsaWtG?=
 =?utf-8?B?TUtLR3cxU2lqWGZWN1cwaGJRc1RRRDNNempvM1BCbTQ5TEEwSjA2bDNtcVZs?=
 =?utf-8?B?RTQ4WVJqZENQOXNNWEFaejRDcW1DQmJ6dFNjV0RmS2x1bFV1Y1lkYjRQbWxX?=
 =?utf-8?B?M0llSW04QUsvNExKT01PN1FoNFlaNGJiQXlXTFVkMkJqZGJGdWNsdTRZR1E4?=
 =?utf-8?B?VWJSYUlwRlRpN1pDNHhETDlyOHpHVmpxdGJ6bHdWQmlmL1Z4VzRzVkZJcFRa?=
 =?utf-8?B?NkNla1B4aW0rWm82Sm1ZZ3dCS0RvWlF0WUxVS3hwb3BtdHd0YWZwZWR3dUlB?=
 =?utf-8?B?UHBsNVpoR2t4VGttK0VZV1UrQ1Z5ZFpydWRHc25aYzVOMVNEeWlwQlkzWldi?=
 =?utf-8?B?YzQ3UHNEODdXdERUekxRbUllNVRzbXQyVGFWSkljZTY1ZXRhanpkYURKNVlQ?=
 =?utf-8?B?bFBINU9iWFRIanE2RFhkRDZLZ1pDNGluYnFnQnE3ODhXUlhMQXZVd0VmUXBP?=
 =?utf-8?B?SzVMVnA1REZvR3RLUFlGMURqT1UzZW5CMkhDai9yckdURVZpNGdGNmczcXZn?=
 =?utf-8?B?dEhjb2w0T2NYNzU5cVRvaWxMRG1MQ2FoTzhXQTQzVTBKMk9STnU0YVRTckR5?=
 =?utf-8?B?QW9MKzYrSXNOaGZCcVRDUWh4TFh1K1lqZE40QzJ4c2dyUmhCNEdxcUxaYnBS?=
 =?utf-8?B?dHpTdERvT1RRQnkvQnZJYVVFY1pXb2wrQ01ycVdjTzNJcWpsOEhrYWIzREVo?=
 =?utf-8?Q?GbUf0ldGZYTirbkU=3D?=
X-Exchange-RoutingPolicyChecked: iHj4SdrbDeQSsoEvJdP0cV6w3SnYtacDHi0gaFcpFB9iOXT109taMglDqNOV29F2ABYFCovnufM7qDu9d0seX3tUr0+QDp5tDSs8FjqUUSag9A0wswqnbACUPh5LP0R+CLDefRnSzkctymMAbC2P7J1kJLji9IlzfsqHoR33qA1ECjZ0G6JZ8AOE7/RevB5Ijcwm/2HdY/RGasp9rBG062k8kY93UhlIDMYrn+OSLZA53tc60ZfqklfT2ZO6qankImg5Ko6G4y6Is3kNsC8fsKK32Lntl3DBxDMTAst5JZ9UEedA2NBBSB9V4Uyy+BPeGeMtWyC1hRwhSBkCrPjCEw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e794a28-1d38-43d8-f19f-08deb8839144
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2026 04:27:15.3959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qDqJwi2iWMSPXoZOxLLXSrucMYojLB9MGPV4byLywPn+Hj8l4v8yNznRqOxwdtMFEImZI2JaHmNz9/imXHHqj/xr1resITyjerthv9EpTSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6301
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 98A105BD1D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 5/22/2026 8:54 PM, Ville Syrjälä wrote:
> On Mon, May 18, 2026 at 09:24:59AM +0530, Ankit Nautiyal wrote:
>> Currently we enable AS SDP only when VRR is enabled. As we start using
>> AS SDP for other features, this becomes a problem. The AS SDP
>> configuration can change dynamically based on VRR, CMRR, PR, ALPM, etc.
>> Since these features may be enabled or disabled after the initial
>> configuration, the AS SDP parameters need to be computed later in the
>> pipeline.
>>
>> However, not all of the AS SDP logic can be moved to the late stage:
>> the VRR guardband optimization depends on knowing early whether AS SDP
>> can be used. Without this, we would end up accounting for AS SDP on all
>> platforms that support it, even for panels that do not support AS SDP.
>> Therefore we set the infoframe enable bit for AS SDP during
>> compute_config(), before the guardband is computed.
>>
>> To handle these constraints, split the AS SDP programming into two
>> phases:
>>
>>   - intel_dp_compute_as_sdp()
>>     Runs during compute_config().
>>     Sets only the infoframe enable bit so that the guardband logic can
>>     account for AS SDP requirements.
>>
>>   - intel_dp_as_sdp_compute_config_late()
>>     Runs during compute_config_late().
>>     Computes all remaining AS SDP fields based on the features that need
>>     it.
>>
>> The late-stage computation is called from
>> intel_dp_sdp_compute_config_late(), before computing the minimum guardband
>> for SDPs.
>>
>> This is a preparatory change. A subsequent patches will compute PR related
>> AS SDP fields and enable AS SDP not only for VRR but for other features
>> as well.
> I don't think we actually need this. Based on what I see in the spec it
> should be perfectly fine to always provide the coasting vtotal whenever
> the sink supports panel replay.
>
> Also I don't think we support the "suspend AS SDP during PR active" mode
> yet, so for the moment the sink should never even use the coasting
> vtotal value we provide.


Hmm ok, I will drop this change for now.

Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 66 ++++++++++++++++---------
>>   1 file changed, 43 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 8d0d04f306a7..c1c6f394eb0b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3187,10 +3187,6 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
>>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   				    struct intel_crtc_state *crtc_state)
>>   {
>> -	struct drm_dp_as_sdp *as_sdp = &crtc_state->infoframes.as_sdp;
>> -	const struct drm_display_mode *adjusted_mode =
>> -		&crtc_state->hw.adjusted_mode;
>> -
>>   	/*
>>   	 * #FIXME: SDP/infoframe updates aren’t truly atomic, and with the new
>>   	 * cdclk->tc clock crossing we may transiently send a corrupted packet
>> @@ -3199,23 +3195,13 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   	if (!intel_dp_needs_as_sdp(intel_dp, crtc_state))
>>   		return;
>>   
>> +	/*
>> +	 * Only set the infoframes.enable flag here. The remaining AS SDP fields
>> +	 * are programmed in the compute_config_late() phase. We need this flag
>> +	 * early so that the VRR guardband calculation can properly account for
>> +	 * AS SDP requirements.
>> +	 */
>>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
>> -
>> -	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>> -	as_sdp->length = 0x9;
>> -	as_sdp->duration_incr_ms = 0;
>> -	as_sdp->revision = 0x2;
>> -	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>> -
>> -	if (crtc_state->cmrr.enable) {
>> -		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>> -		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>> -		as_sdp->target_rr_divider = true;
>> -	} else if (crtc_state->vrr.enable) {
>> -		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
>> -	} else {
>> -		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>> -	}
>>   }
>>   
>>   static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
>> @@ -7459,11 +7445,45 @@ void intel_dp_mst_resume(struct intel_display *display)
>>   }
>>   
>>   static
>> -int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
>> +void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>> +					 struct intel_crtc_state *crtc_state)
>> +{
>> +	struct drm_dp_as_sdp *as_sdp = &crtc_state->infoframes.as_sdp;
>> +	const struct drm_display_mode *adjusted_mode =
>> +		&crtc_state->hw.adjusted_mode;
>> +
>> +	if ((crtc_state->infoframes.enable &
>> +	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC)) == 0)
>> +		return;
>> +
>> +	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>> +	as_sdp->length = 0x9;
>> +	as_sdp->duration_incr_ms = 0;
>> +	as_sdp->revision = 0x2;
>> +	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>> +
>> +	if (crtc_state->cmrr.enable) {
>> +		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>> +		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>> +		as_sdp->target_rr_divider = true;
>> +	} else if (crtc_state->vrr.enable) {
>> +		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
>> +	} else {
>> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>> +	}
>> +}
>> +
>> +static
>> +int intel_dp_sdp_compute_config_late(struct intel_dp *intel_dp,
>> +				     struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	int guardband = intel_crtc_vblank_length(crtc_state);
>> -	int min_sdp_guardband = intel_dp_sdp_min_guardband(crtc_state, false);
>> +	int min_sdp_guardband;
>> +
>> +	intel_dp_as_sdp_compute_config_late(intel_dp, crtc_state);
>> +
>> +	min_sdp_guardband = intel_dp_sdp_min_guardband(crtc_state, false);
>>   
>>   	if (guardband < min_sdp_guardband) {
>>   		drm_dbg_kms(display->drm, "guardband %d < min sdp guardband %d\n",
>> @@ -7483,7 +7503,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>>   
>>   	intel_psr_compute_config_late(intel_dp, crtc_state);
>>   
>> -	ret = intel_dp_sdp_compute_config_late(crtc_state);
>> +	ret = intel_dp_sdp_compute_config_late(intel_dp, crtc_state);
>>   	if (ret)
>>   		return ret;
>>   
>> -- 
>> 2.45.2
