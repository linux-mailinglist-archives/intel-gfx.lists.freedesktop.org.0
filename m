Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLIRHU57oWkUtgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 12:09:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF131B65F3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 12:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6280A10EAFF;
	Fri, 27 Feb 2026 11:09:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K2lMyDeF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64A410EB00;
 Fri, 27 Feb 2026 11:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772190539; x=1803726539;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p4NR1SI7hlDt9J4cP82KoFJwC4t3UL7N9fGs1pN24HY=;
 b=K2lMyDeFP2wDp3sHa9qpwRPLyiknHyqfNVaMPKRVMgM32eDKtfT8PPx0
 /8fd+nupUCJMF7qpzVjB1WdtyUj6PnVq9FM3D6Lg6zQGRCzumRQ7ci2qQ
 m0nNLczE7Pk+3q3lpAR0n19yZpgx03bFousPtWM0tepKRtmWBLjWQycI5
 LtHvDWazoiiSlRA721Z5CpdYgeOf1VmX+HtgwqTG24YT2yfYUXLKnf0U5
 7ifVblt39o91BUs/bnBuMGMlKG8F4hyXV4Fj0mQUQ3n5dP0LakfgOrypy
 pj/31yzT6pk4R0iqKQvLsTdSGxG50FsjvbtvBPysE8y3BhpI48j2n60HM w==;
X-CSE-ConnectionGUID: ifki8YCpQwiGR+xp8Geg6A==
X-CSE-MsgGUID: nQk04wxGQUig1TZEqmkolg==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="77110749"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="77110749"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:08:58 -0800
X-CSE-ConnectionGUID: uc30hcwWROyND0Duc2EEqw==
X-CSE-MsgGUID: 2nIerKi4Si+f9Jx2cukMwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="221017399"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:08:59 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:08:58 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 03:08:58 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:08:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kVRbQNxuBL7VVSdz1EE/FbQYgMBt/1biO9bNqW+jcWxHQRHob7+fr1Cvs8mM0kuE+LlkT/lFn64vcB4jK4SjDkplCf466+8Ah82tQI1JEj5z5f+Vz3AXpELgfkq6OxpJxCer/etelaSRwDV7WYhx/sR8N3CwREkR2Wg+B1W/aZUnu7/0VNGSmOujHrLxw7JYn7rcfOqFPOjnelMn9vLg/gg5MuVoeLZcm08bYrJuJyLZeiB99vVL3N+WpkPzySj/oGORa0TtJx0xJOJO4pWd3o6SKWwniyPwJKO6TmMm0hNEa0PHqL+yArf42eit6luAtV3sI7z0jVJgVWPMPGrvUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VR/kKQDl5xqPHlA6PLmx5q8qI9u8LJs34EAdW9dS+mI=;
 b=si6MJri3KoSk5GJ3xWNNLrlp8u+056KYZbIjSv1q32vIOEp3xhbcQecDI81PpNUQ+2Rgjs11Hv8KzVpKsVoP/uy4ZlP1+LzVVNv2PjYAeShToracDN4EoVssrixXLsR6PYoKYxenBhapSesHKhE86fSi54mVoRFDhwvCIK2VwfLaMfuJZoyTcoMD2dcSniE63IeLkT7PXjMwl9nal9dAD4X0WQw//Ze33HKVvTEDGY9s6z0xg5uDs+DkBE1Y/abRoEmga3x4Tt2nZ8Yx8kQs+lojykyc7HVsOtaX9SbSTU/07CzvcJV0tTsornYrJop8iB2dCOMxno+p8J5iasSb5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 11:08:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 11:08:56 +0000
Message-ID: <2b10339e-7619-4e43-a935-72d82cb44fd5@intel.com>
Date: Fri, 27 Feb 2026 16:38:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/14] drm/i915/dp: Add a helper to decide if AS SDP is
 needed
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-4-ankit.k.nautiyal@intel.com>
 <aaBm7JNiW1T7Mmfc@intel.com> <aaBuYixoTXRA64ga@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aaBuYixoTXRA64ga@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0105.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: 93a5670e-62eb-4849-d825-08de75f09942
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: y9bDKt1Pu3vJ/+HBPYbWO4IyF1cKyg26BOFbfv9SXaIwhiSKmGBqRq0makMil/bjr+opP6UYfhN4EEGxLNy0rQZ4xHcGSb06m3P3X/9aw2Pxxgz6jXgPPkjJoZprPPgD2uxyDe0xHEekIU160u0htgtx0bsBG0eieg+pMlGLUtR/YREZ00vCrf/MTaL8GDynQ0FCNyXyXp8r96nNukbprTEld7qKT0mn/6p91DI8H5g5sDklBBEd1RycqwXJDKAe+fg7YXXIj/Ge30pBfKmITNNI8mgeG0JoUFWF0vZC+naNktcP+DMoXkQV87YUvdJw4eAFn7Uay4xZEsps5Qar0zgnx2jKMvbnAlTlEFEdPkJy3b3hr8yCKG1hlYw9hLunsCVpqBiPzS1lC+sjgsmi2S6Qcuyv9nAAC6hHdtoQqgJMjS5fFTvyj3BLGV3/9SRwdhGmnNf6zuK48O8rMfpfmLYtcLN4giQoIhkryACFUgjludPK4LJ/14vfnaDeqN/MZH86DDgY/wtpHFgvLXfbsaYrzv6BIBtz0BYMMLWs2OzlAOiqt+wBg+3gLiZ1Cj1QcPbRxEu2+AlDPiqSxIeU6OdyDH7u3TG2t0ZVjrn4i1zSxo+q25CPTlMl0ZlmVUQRel6MhHtcLI4bz9zziFe2hIKwCXOlxe9IQ38tUrlupexVK0If/wBQmzxJf5YNON7Y0Yhd1RJ6ncIjhLOWmqbJpgSYiNJ2AIEz2V8ktJNh0k0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3JTa1FMSTFXZUVlT0lzZ3YyV1dsa3h2VkRxcFI3alRjcW1zdGRWNmQxUDl0?=
 =?utf-8?B?eDFxN2x4Q1Y3VTVXbS9zZFVzd1luMXhZZlMyZ0crdis2V2ZTMXRPRGlKTWk5?=
 =?utf-8?B?dTdkT2ZaTHpxb1duOEVFeEZpVUdFS250SFNxVk1WcUJDN3lodDVDUmhNR042?=
 =?utf-8?B?TFJUalZKOGsrWmlwakRLSlNzdnJVNThFUmpjZmxvRURBaFQrQ0Y0cXlJN05D?=
 =?utf-8?B?REpscmw1dDZsUmhkMEZlY3dUdVI5L2FqWi94TkVDZDJIVHgxK253WmVyNktJ?=
 =?utf-8?B?c1NjM3FXeUJlak55YlBNNUw2SXFPNlR0eU1lR0cra2d4WWYrKzB2UURObVBW?=
 =?utf-8?B?UnN2WDZRajlzODViZFNVZFFzUG5oa0FKbFlDZmZkUlNxTHFkZVl1Q1orTmRh?=
 =?utf-8?B?ZzAzZ21HbVd6WFZ5MWNkRDBlZ1hRV2djeWZCUis1RW9NODdLcXNhdy82NnNu?=
 =?utf-8?B?UXVtZ1RPZmN6YStJVGYvOGlHY25QU2wzOWYyRUFVUzZBZW90a2hDVHNQWmEy?=
 =?utf-8?B?Y2JRNEFxcXNKdW52K29UOHl4a3RiclpORDlVQTN1b2QwQXpLOHhjQU8vSk5h?=
 =?utf-8?B?L25SV1A3K1dYcDlCellNMUVueklOT3pTYlFEMGxVN0E3eDF1K2FzSGl0TVp3?=
 =?utf-8?B?THYxei83SS9wNXYvZWZ1b0xRa2FPUW5VTEU5WjZZaGx5NXJvUXBMcTE2K1VT?=
 =?utf-8?B?QnRUQmFQdXBYMUJNVkExMUREOEpTaUZubldiWTdVbUwrZVVNR2tqTGg5Tlhm?=
 =?utf-8?B?Q2FpYyt1ZXE5NVhaTWxOYURWTWJqUE5vUE9aN1gyMCtNeDVtaU84NTZkeVJ4?=
 =?utf-8?B?cTZrdmVqNFBIVERwYTBaRXVOTEdVUHdqaVNUcFNFc0JYRWJnUWRxSTZHUGxa?=
 =?utf-8?B?MjNVWGFSYmtCbnB5ZDdSTW9FS25HRlRDVUhrSzBvU0lYR0s1eUNLWG5OVEVR?=
 =?utf-8?B?R3ZiZDdtaFBYa05sQ05qK3AxTXdrOGZoUHNLOTZveWxPSWV2TU14ODFrVWhu?=
 =?utf-8?B?elhFbXZRM0F3SmFQTUdpYkZhOWJ1cXhWQ0w4dkZiSmJzVEl6S2dYdExzUHg3?=
 =?utf-8?B?L29tbzJBWktiQW42QTVqL1hrUUhMV1I4bjRkMitxNWRMQktRRzZqK0xiT2s1?=
 =?utf-8?B?RXRSdXZzRDdNUk9EaDJkRlRjYjhJeVNLY0c5WG9hdWpzRDM2aGhHdkJnS2la?=
 =?utf-8?B?dDJnK1FPZ2F2aHRIVXVsdHNYcEZDL0o1OHpjS0xLM09abEgzeXZsSTdvL2dC?=
 =?utf-8?B?MC90bHI3ZHJPZ1lQdjkwc2FvSmE0SjBHbWE3NUcrTmRvYmY4aDBsVDlyZDdL?=
 =?utf-8?B?ZS94TnRKK2F2TWtTTE1McDk4eHlYQUxtM1cxSE9wRktmanZadVRrV2RodVdx?=
 =?utf-8?B?cldwdFljWGtEcUEzVU4vamdCcFhvTzJxcmExTk9QWk00dXpMcS9nL1hpSkt2?=
 =?utf-8?B?UmpvSStDVitPUmowVHhWNWlpa0JNdmV2dUhEaEhWK3o3cXhxaGdibGd3SFNF?=
 =?utf-8?B?dUJoRVdkbVNFNjJBQWRRUW04M2ZydWRQelZMTncxKzNoc3krOFFGNHdyeG9W?=
 =?utf-8?B?SnBxcVBDcS80NGd6Z0NSQWZBdk1PVDlBTGZFTjNQZ2x3N0FvblppRDNLQVlS?=
 =?utf-8?B?dUZEbUxSMHhOSnYvUjJVdW55WkcrTnpYU0E2NmdBSmhBd1czWWVLU2V6Y2k5?=
 =?utf-8?B?UU9BaW1rV0JOSlQ3WTlHakc3VUVBbWZ6d3IwZ3pmOERraC9NbGtPMXVlelBV?=
 =?utf-8?B?dXdldnlmc1hVaFZGSThwUGFNeTFpNVJOd0JQYTlNbEU2cjhhdHp2dFUxaWJS?=
 =?utf-8?B?VkNpUW1YZWpVSldsSVBnNHJhZXhteXhVSCtBLzVCSHcvMnAvUUozQ2pQTFUy?=
 =?utf-8?B?TzZCWmJnbDhOQnkxZkJ3dUE0ZHltTVlrVis3SFZaYzFCb0s3cWRPdEdDejNC?=
 =?utf-8?B?bXJtQUlXQmwzQnRTdjlkcmVWQVdIYzFnNUxmZm4xTUpZZHV6SHhnYms1UTl1?=
 =?utf-8?B?bmFJaGUzL1RjVGEzMzNUQWdkQ2lNV0theUFwMTFEdExLSTJ2OUp3cCtxZ1Nv?=
 =?utf-8?B?a2dNUHdNbWR3bDhyaloycGVqcHZqSTBSRWJ2U1VUUjlUZEZzSTZpY25RT1JJ?=
 =?utf-8?B?QytzSWJvUnNvUVBnQ0ZIeHpSbEsvYngrbDU0ZGg3bUhqYnVDTWVqS1c5Ui9M?=
 =?utf-8?B?TmlFcEhVUnpEdXk3T1l0Rm5Eb1ZXS2hXOHp2QUJLSFd2VG5iOEZlVFBZT2l0?=
 =?utf-8?B?Rm9MV0pycHljaGRMdVRvN2g0QnI4N2duR1J3ajlLMGlLbkx4YWYyOWJuTFZ1?=
 =?utf-8?B?cnd6OEQzWE1HKzdiNkRycDNka2VKUitzYzRlYjdUa0hGZFZXQWQ2YzF3Mkov?=
 =?utf-8?Q?K1KTr7LDh11MXf+A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93a5670e-62eb-4849-d825-08de75f09942
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 11:08:56.0498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KtEQt8wWpmCo4xfHV6MSOYbTMR0pqxwqS8uvmBfE4VNEIE7ZnEEXxmuDv423hLzU2zcRwydItajF7bELpro1z4SXT/O1TeqeDGk8fTrYibI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: DFF131B65F3
X-Rspamd-Action: no action


On 2/26/2026 9:31 PM, Ville Syrjälä wrote:
> On Thu, Feb 26, 2026 at 05:29:48PM +0200, Ville Syrjälä wrote:
>> On Mon, Feb 23, 2026 at 07:14:20PM +0530, Ankit Nautiyal wrote:
>>> Add a helper to check if AS SDP is needed. Currently AS SDP is only
>>> required when VRR is enabled. However, there are other use cases, along
>>> with the missing case of CMRR, dealt in subsequent changes.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
>>>   1 file changed, 10 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index b999d8c085c7..65764ab0bb9b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -3111,6 +3111,12 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
>>>   	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
>>>   }
>>>   
>>> +static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
>>> +				  struct intel_crtc_state *crtc_state)
>>> +{
>>> +	return crtc_state->vrr.enable;
>> Since we don't support VRR+PCON I don't think we actually
>> need the AS SDP for VRR.
> Hmm. DP 2.1a does say
> "When the plugged DP device has DPCD 02214h[0] = 1, a DP Source
>   device shall transmit an Adaptive-Sync SDP before enabling an
>   Adaptive-Sync video transmission."
>
> So maybe we do need to transmit it whenever the DP device
> supports it.

Yeah I think that will be a better way.


> In that case someone will probably need to figure
> out the fastset stuff.

Hmm.. currently we are avoiding checking of AS SDP during fastset.

The fields will change as VRR will get enabled/disabled on the fly, so 
we are avoiding check for fastset.


>
>> And I don't think we even have a fastset path for this stuff
>> (or where is it?) so isn't this already causing fastset
>> failures for VRR enable/disable? Or maybe we don't have
>> displays with both VRR and AS SDP support anywhere?

VRR with AS SDP supported panels are there, (not in CI, but some resume 
machines have them). Till now we didnt see any specific issues.

There is a test kms_vrr@flip-basic-fastset, I will re-check this on such 
a panel.


Regards,

Ankit

>>
>>> +}
>>> +
>>>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>>   				    struct intel_crtc_state *crtc_state)
>>>   {
>>> @@ -3118,7 +3124,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>>   	const struct drm_display_mode *adjusted_mode =
>>>   		&crtc_state->hw.adjusted_mode;
>>>   
>>> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
>>> +	if (!intel_dp->as_sdp_supported)
>>> +		return;
>>> +
>>> +	if (!intel_dp_needs_as_sdp(intel_dp, crtc_state))
>>>   		return;
>>>   
>>>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
>>> -- 
>>> 2.45.2
>> -- 
>> Ville Syrjälä
>> Intel
