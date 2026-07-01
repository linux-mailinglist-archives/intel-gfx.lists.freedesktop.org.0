Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Vn8hLk4zRWpx8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 650DA6EF4B1
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Jdf5lQt9;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D0110EFE8;
	Wed,  1 Jul 2026 15:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB08410EFDA;
 Wed,  1 Jul 2026 15:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782920012; x=1814456012;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Ng9TaKNmPMo/q5taJEDGQahwga89ig93tL+H9j+KNu8=;
 b=Jdf5lQt9JKtNBBzIe8lagMsxxtAmdjIURLLHflWq+zeFxCZzPEom9vz4
 lnMXlLZeyy2kAhcHetCVYz8k6P5v/jfCmmZCaDQ6DQVUftgovvpZ8/e6t
 iQoeWSeffVcGx5FxelWMrAhi/HYzkAJNDg6CvY5yTdvyfFufeNAKleqaI
 li4WPwpBAN6qFc4OO+501IZe8WHHTB8KQi21bI/HN8xqLqV0fR6qMKevv
 6iJW6XyhjqavI0OSbx8xzKmPuf5H2lULYZy08FS7z5bhE6vtgEsaCE7gZ
 7dsUVKqB+UbiafvlVVcOIazmc2QVUhZkZ6tZu+v15dHluEMPGPBamxJA7 Q==;
X-CSE-ConnectionGUID: TUoaLew4SoCUgyLDAxXfCQ==
X-CSE-MsgGUID: KO+hOACJQ62nYLcZax6S9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159279"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159279"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:28 -0700
X-CSE-ConnectionGUID: KLL8EoMJR72q/Lzxi4qpgQ==
X-CSE-MsgGUID: ANpBOKe5R5SOD7qJpIc/uw==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:26 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.66) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GWpVHKhigMU/qKRYP65yS9ZpqfqNNvPryf78FEG70DNL+HZqBq0QEu2LgPksahinH0CQBkepWOXdbwbdaOvlyBrmYLkpCHgFismw6GpeFC/mbQcXf/0Z3H9lvB8OmSKOn6eGwjqEPy987avkFBvfG4pu7Q8EeqNwtG6jYjkx/nYc0dQurUiFDRJoG+NgKlSByRXBHGBPdKl1TMOJT67J41+ymlM2YpnOU+68DJ47/nmlHbgWCCjymkuFFqtj3wzmO0OiUgMdXCL5ak7FCNKQFolWWLIo/4QXtLUusmQaG6MvrpsznS8HhBb/+GfCK+z2Eplo9ftf0zCc5zulSvBwxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K+SyXukTtFX9f03vnnI5Ig7Krh7x6nwQL4wBFbna+6k=;
 b=EzbPaEKTs1EE1rzAJV/KKoA7G/E8P3J8Xb9NvOhUVRy5sQfKpdnzQ6fI7s7tHoh5SmQP/XBdKGu5VDPT2OOvmPijcUE4KJAsNNWdAqUfBbH5+tdBy+5wcFY1hYz3zblsfMYDgisvBqnziLPediD+t45kxYr+bSzFebnHrurg6Zr3Bb9LUHQ60KOuuYaf0yIsgayxbdy8PK3VHWA7F9UqhJzwUH21oB2oCRVpXjDNGOgMvBpSghPjENMMp9cbFVv2WXM2xLvu9r28H5yMJwGhiqOcPap+EEUeU9XmJr5f0asM/f+u7yS2sIf1reGvUi1ECvfY8NlMA1JlenA3jaRuPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:12 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 27/34] drm/i915/kunit: Add DP link test stub
Date: Wed, 1 Jul 2026 18:31:56 +0300
Message-ID: <20260701153204.4124150-28-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY8PR11MB7826:EE_
X-MS-Office365-Filtering-Correlation-Id: a7da6363-9786-4586-08ce-08ded7860f1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: TdfyWOINAg7kbo1sYUp3Jgm3HQ6mdzAifew5+qLa3JfNBLXZ+KPgZ+b5L9+XZv2HR+zRSA0dm8CvyopaeTCv31WxlMtQvlFAOktrZ8sx9oZQo5kNG6WL9O7BHAOfypgrSrT30NuULTAdilaAf71wCo19soeAib20qJMXb9wUmd/JyrB8+ASOtobKUGwzUgiMuQS8ADY/zJ3iE8si8YUmKGdbfHxFY3vQjc2jgQgILkeEn1zdYXyrjyDS7jKtMGzK+63zlGuW3vtLQNJIHA6R0T+ls/lDY7oEPcv0qCoxzmxfYaRdRjWqSeHYLR0QSWUihQNIHUPbg5pL1jhI0NZpKGfYcAVKvRE1YLD/nR0FcX+Y72GqglvKfIgGxxtl5qdHQqBS4LrsueOsKAMv5nqk1JoNA0X5/APQaq5zCUFA0yAXOFt8s3kxm1Mr/z6jH8HVZb2+hpHfY9dWFDdHa8KE4jalLJifd7SldK9f4EyFEe7GC5gSOAoO7n9hUreDdWQnew1siRFuM9oaQFoJf0N9CVuIwyQjK+YpiaD5qZW965QbjjNd8uCPouYQnyvat+s0Q3TKQgZmPX1MpkObYrlh5B/eY91w9WeRVbUOXl8KMFv/Md1UqJlE3oVKWDiccnXF+JA2queXxrZ5SHSXy5DS2m11bAUAogkZBDnkmJzFV1Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aU1sUkIvRDMvTTdMSEtQL3hRSlpPQ0hUQnpUZzRYaVBkYjRseXcyUXdNY0Uw?=
 =?utf-8?B?V3ZXMndrSGMzWVNYbkhMWm8wZzlxRWNrNnZpdjErR3FpMmN4L0lUN29JY2cv?=
 =?utf-8?B?eE81MDVpbHFYQlZpdnp0SFpvTVd5M2NXaVhLNmdZU25xMFVxTUJxT0MrUUhk?=
 =?utf-8?B?a29ZL0I4SkZObEdONVFTY3oyVWp6UVVZS2FmUnFRUzJSWmhtci92ck04STlO?=
 =?utf-8?B?TkkvUE0zY3JKeG5RSkZ1NTJxbWFreHJGU0VNY1ExKzNFVGFBNmlYaElldDha?=
 =?utf-8?B?SkdWSE1YQm9ub2x1N2NuSVE4dHhZeTFIcEppWkZ6cUo2S2p2S3hXVFB1M3dJ?=
 =?utf-8?B?Tmg4V1pRU1VDY1dYSkNvRWFrUnlrendkWmw5S3llb1ZnK2NZT3VSZGlPb1Z1?=
 =?utf-8?B?cllSQURhd0Z3aVVlc3JLcGVVWmptelFJTW14Uy9MWGJIUEQ4Uy8xWVFKTDBG?=
 =?utf-8?B?QTJNMmUyTlMwaExXaVNyenJSeldDTzVDYmhqL3lRVWN3eGwvQlRvSXl6NkVr?=
 =?utf-8?B?R0ZEZjY2NGk1U2ZsZWVCY2lucmVHVmVzdVdUSW9PaFdudmNFb1IzcWRmYjJ3?=
 =?utf-8?B?Y2ROOTZoaFkzV1dZTE9jMXdxSmRHbkFLS21ZQkNudjdCRFErYmJnWjBwaGww?=
 =?utf-8?B?WHFoMGd0N3M4azRSWFZDa3BSUFVnVnpLU2dFZE95anhkQ05BeTJWaUQyR2ov?=
 =?utf-8?B?K0pRaVZsN25TbTFMYlZtQXRPTzdoNnRtUWJaOFh4V0NmWlg5cE8vKzZlQTJq?=
 =?utf-8?B?dVRzVUJEZmRnSFBMSVk5SjZjR1RNSGNFZlhnZHp6NnJWMHRwQU1taG9zR3hX?=
 =?utf-8?B?ZXpSL2xxSVQxSGZSV1RHcTAwV1hFSHp3YlRqWXExRGFVL1Jac3REN3gzeXhv?=
 =?utf-8?B?NnFPaVcxYTJaVUs3aWdTdi9ZSzZVOE41NXZDdzVBSHRhVW5FUHk4Y2FLa0VV?=
 =?utf-8?B?Qm1oQzE4cTFZMCtKWmVPbEpFbEJBei9EK3dxeGgybmx0VU5xVXBDMk9OelB1?=
 =?utf-8?B?VVZ4d1drS3owL2hzbEhhdzVqUlZKY0FmdWNiQVpQSnZhRE5FbFVZaldEZGNE?=
 =?utf-8?B?TGcvM3BMK2lEdW9EbmRwY3Z0N2dNQWFyRXZrNFd3elIvdTUrN3Z5N3BXR1FF?=
 =?utf-8?B?aGlBY1J6bGdIdzNkdFlXdEhYYVhaM21lOXppaEtRQkNsdGhIQk15SGIxcjJ5?=
 =?utf-8?B?aTR4cmRRaGsyemQ1dzFuQXhETzFlZDNpdHJnK0RrUC9mNDJPMkI2Wmd5Z2tX?=
 =?utf-8?B?SlNjTE1XWm9kanhLVStrVE9oMjJIbGEwVHFCNnU4R0Fqa2xSODlySUh0WmxB?=
 =?utf-8?B?SFFtR2VjR3A2Rm90VngwVm5vM2Z2MUxGZS9xMDZFWkc4WUhKczhxTzIxMS9M?=
 =?utf-8?B?bDBwbmI3OW0yLzFqOVlwYnhXMndKdDZnVmZGVGk3bjRwRmJJWk1kSVlOc3RS?=
 =?utf-8?B?ZDg0bVZ4ZVUvQkFWUHl0a3Axa1M1SjhSTDlBdTNhczFTK1NZWi9CaXJxUlFa?=
 =?utf-8?B?QkVYOG42MFdWam5ZWnhWcE5OQ21jb3V6SmFmZXd1UENDRy9zNnIyTVVDUGJS?=
 =?utf-8?B?aGdpMFg5M0ZMWGFQWENhOUovaUZ2S3BUWEo2QzJSSm5aa2JJRFBlaFFXZUVL?=
 =?utf-8?B?bE5wQzZkWG1NUUpHVTRBQUFvU1lKVDNURnNteFV6U2tPV2duS2VjWHVjckJP?=
 =?utf-8?B?TEZGSWtVTy8xQUZSSGkzR1R3czROTVREYldNNE4rYTZRNXQ3N1g4Q1ptU1hP?=
 =?utf-8?B?MzZvT0UwVlBTZ0I3UWtsRitxN2VCZHZleUdRR0R4TXEvNEpBaEovQ0NVY0or?=
 =?utf-8?B?Y2t2NkRDOUFpVXRNZDdHaTdLeG1hMVhTOXR4Nmg1UzZ5dEUvM01kU3BGenRQ?=
 =?utf-8?B?VnMwSWVlVjBncVNra21yMDZhUW0rUWNLdFV2bHZZL0lCTDd3Vm5jalNmMUZo?=
 =?utf-8?B?anIxaC9UT3JUVitQWkJqYWhZeXRJazc5dUpEMm9aNWx3SGc1Y296ZGZSYnBO?=
 =?utf-8?B?UWxNN1ZlYVRxMFI2bUQwVnoraDBaWkQ4WWxhMGlvdU04L01laTM2QkZGekQ2?=
 =?utf-8?B?c3hScmhIR0V5em1jWjNROWxxZDZZdE8vNVNPNEpwSHBVaDJnbkE2N09EK04r?=
 =?utf-8?B?ZmpBVE1EbzBHdTVnRFdMTytjcGREaFpRdUJGQTFKRFBNbytNaHRoUmtHWmZo?=
 =?utf-8?B?SWU2bVE3YkM1UUhtbUhaN0lTUzRVUit0NE5sODRKVkpockkxK3J1Q2o4L1lK?=
 =?utf-8?B?OUpYWStRZkhXaHZwVlRsS1pGbW9EVmxnNVUrZmQ5ejYrZFh5S1VRcHpTS1J1?=
 =?utf-8?B?bnA5T0R4KzY2MnZGM05GbElFOEIyOWU4SzROK1Y5aW5IaWV3WitqZz09?=
X-Exchange-RoutingPolicyChecked: geCCBXMY85ZO/TUxqKl7HUah3/SBFgPsm5uYrtWdZcES8FeXslGWS87YoZ71IDbukI5eTrff0f/zTNoBU9DA4L68blbre3/wwI7r69RaiBAYaniZJa1qSlgGl91F8l+skaYhrqKP4zxiZyW8+HTw2efqk+dR/dQ1zszqQV+26LR92VQkN94iNWxaBTw9Oqh9xtPweVgqHzSJwFBoyOP9cVN/ggOnk9f2x2bXkBgogX4K1+PFggJfXqFw6TotJkfDD+4Lw8JHVmAgbjD1j3T5V7YzcTsEiQ6bRfK8PpgDnsdun2+51JzsbpH+3HBBMCddKoXuUKYOC65X5LS8YAjWeA==
X-MS-Exchange-CrossTenant-Network-Message-Id: a7da6363-9786-4586-08ce-08ded7860f1d
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:11.4230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JHqqS0z7IagYMiii8lBQZQ3DDzL34t8zdGDO0VYJXYrqDywOonjnqvxHwspueJIIvFP1vF8HY5bp0dQOFlEXqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7826
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 650DA6EF4B1

Add a Kunit stub test module for DP link test cases.

v2: Add missing module license.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  2 +
 drivers/gpu/drm/i915/display/tests/Makefile   |  7 +++
 .../i915/display/tests/intel_dp_link_test.c   | 47 +++++++++++++++++++
 3 files changed, 56 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/tests/Makefile
 create mode 100644 drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c4de717505d73..a83fa8be0aba1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -386,6 +386,8 @@ i915-y += \
 i915-$(CONFIG_DRM_I915_DP_TUNNEL) += \
 	display/intel_dp_tunnel.o
 
+obj-$(CONFIG_DRM_I915_KUNIT_TEST) += display/tests/
+
 i915-$(CONFIG_DRM_I915_GVT) += \
 	display/intel_gvt_api.o
 
diff --git a/drivers/gpu/drm/i915/display/tests/Makefile b/drivers/gpu/drm/i915/display/tests/Makefile
new file mode 100644
index 0000000000000..ad250974160f6
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/tests/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+
+subdir-ccflags-y += -I$(srctree)/drivers/gpu/drm/i915/display/
+
+obj-$(CONFIG_DRM_I915_KUNIT_TEST) += i915_display_test.o
+i915_display_test-y = \
+	intel_dp_link_test.o
diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
new file mode 100644
index 0000000000000..62e1844605ac5
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#include <kunit/test.h>
+
+struct test_ctx {
+};
+
+static struct kunit_case intel_dp_link_test_cases[] = {
+	{}
+};
+
+static struct test_ctx test_ctx;
+
+static int intel_dp_link_test_init(struct kunit *test)
+{
+	test->priv = &test_ctx;
+
+	return 0;
+}
+
+static void intel_dp_link_test_exit(struct kunit *test)
+{
+}
+
+static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
+{
+	return 0;
+}
+
+static struct kunit_suite intel_dp_link_test_suite = {
+	.name = "intel_dp_link",
+	.suite_init = intel_dp_link_test_suite_init,
+	.init = intel_dp_link_test_init,
+	.exit = intel_dp_link_test_exit,
+	.test_cases = intel_dp_link_test_cases,
+};
+
+kunit_test_suites(&intel_dp_link_test_suite);
+
+MODULE_IMPORT_NS("EXPORTED_FOR_KUNIT_TESTING");
+
+MODULE_AUTHOR("Intel Corporation");
+MODULE_LICENSE("GPL and additional rights");
+MODULE_DESCRIPTION("Intel DP link KUnit tests");
-- 
2.49.1

