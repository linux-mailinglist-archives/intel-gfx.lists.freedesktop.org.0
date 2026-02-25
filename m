Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH9sHmDZnmkTXgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 12:13:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D53BC1964DF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 12:13:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6457D10E73E;
	Wed, 25 Feb 2026 11:13:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gf6rZEi2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66AF310E739;
 Wed, 25 Feb 2026 11:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772018013; x=1803554013;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+uo2mlHpl6XICu72gVhQpjSoXRE8YNM1NxK2vBvNA0c=;
 b=gf6rZEi2kngr3Ka2xUs2SEz2J18WBzGyT1E4UYGmGofbAhmkc2GIwo0T
 815XqW2mz9kw+DqT0U7ba94ROYsvnV08glvkuvceIfn5qeM5/PwoViUcr
 Mhm7kXLaWKFPKx8EmRA0Vxd7ef2bcoTP4oRJC856v65Zge3b1In5DvQMr
 ANLs75u7P4jzgZE+3X6MrXp0MQfFLqm7MmT2zcs0i8R+kOZNPAHO1ROW5
 +pCQYVCK1jACAj5P0rqKcagG2YG66fEedFJRnvzLTe6fN9uy+RjlHqqQn
 1aLHzQeYEsPilCwc51crJCEFl1Jzc5px3t4LnVKtx2YHyy8Vw+rAGD/Gy w==;
X-CSE-ConnectionGUID: 74jYTkyPS46+loqwdlq41Q==
X-CSE-MsgGUID: dOWIg4GvR6ujgSowNS8U8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="84145767"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84145767"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 03:12:40 -0800
X-CSE-ConnectionGUID: Pby3n1mZTISViDvdztzeKw==
X-CSE-MsgGUID: E1pMoyk7RRC27aB2aodhWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="246758378"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 03:12:40 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 03:12:40 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 03:12:40 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 03:12:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rasZmlI3T/Kb/4h+7K2hYSsohzFZTCCvxeK57S8OsFB+FEWzq732+pdKx7oYETK5KRV1EuVUpag7/8BYtpfL7DHmRQVPIUHNxjbyf8q74O9fWOMFQ6rdFNJ1V+3aQZhQpiSpQ/vs+ImctUvEDjZwDOkI64T+VfjsKCMwK1F6wDqsXTtEQgTmPHMo7qp7k68JxzHbTc2hBdenHcahN8r2Fsl1k/YOEwowLu0ZM0m9JUzHQiButK/x0qM/msb1QdL7BfcR1Rh1+jsVeFjQOv5QfpdIkuu9oxspku7WBfV6zpkGbcfAvgBBhc72E4DYdjUPo1NKiK+2tKsy9lZnc90Yxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+uo2mlHpl6XICu72gVhQpjSoXRE8YNM1NxK2vBvNA0c=;
 b=GMTyWCIwnXNQvx+J0zKg5VgS6SxMRZSJqpkYaO0XtYDwxxkkpgIUdVUsINE8mYkF98iGHQk+aY8xLivKuHxUNpLPwr3rU+GDxYAKNCmoxy2M2vRqR5HmakCTj6KXpEB7AG9SXSSaMhXcW1Huvve3YLuU+T3OwgNf+Lm662na8zga1FHrxw6jKn9kURH4gqV4SXlUzGazl0frInD0WZ7vlpVkig2G8C4yuWJB68tkadAkYijaETSzh9tkDozFnRgo+FCbTaoeUoIoUCi81znx4M353cWTHg0kbd7Ky7OMvZGyuYltu524LGq7qpD19eX10qqfSqBfGVexlUtBGHuYkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SJ0PR11MB6790.namprd11.prod.outlook.com
 (2603:10b6:a03:483::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 11:12:32 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Wed, 25 Feb 2026
 11:12:32 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v2 0/6] update the stolen memory allocation preference
Thread-Topic: [PATCH v2 0/6] update the stolen memory allocation preference
Thread-Index: AQHcoou1M3kB8I6iVEW6nR6k+kgrQrWTSgMg
Date: Wed, 25 Feb 2026 11:12:32 +0000
Message-ID: <DS4PPF69154114F821714E257DC8EB4D528EF75A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
In-Reply-To: <20260220170908.201422-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SJ0PR11MB6790:EE_
x-ms-office365-filtering-correlation-id: 1cbd6682-fc74-4507-e8ee-08de745ec5b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: GDjcSz5YaRJawisEBaEiX99k12U78NuMZ4t9TNwmVpCncAMlK2Q+Oxw1PriAu48sEUA7VjsEl06T15ll9ncMutnp+b39gL2mc59szlJbR5yiLO6fahs3V9+vfY41LjIDdPWw3q/CuNOHpkgZD0gLTeCpbGG6ZfKEx/oDevwQpjaTlEwOxl75eCeeT76Wn1je9shbAGx1kHYu8m0RfN0ErDPngF+tuYpOuTYG3YWEaSsB0SGEKIYi88kt1HVmsoNwMH4m/SrXuTGNzEkmY8t9qz+uGHNeSOjG6a18OBxTTItrhFyDwzOkoBYIXAfsvuxDEqf/JKvV9iD9Qg+NI4G3bO33ydYR6aaJxYeoJNCfdlzpmPCBEtBSE1qB/AIhyQwDLvBAkMVOYVX4s/d9zL3K+LEjeVz1U6gLLba+DX2tIBrMPP/KjXRWIhC34lQLDBkMw82v1GkwisT71cmoWeDLIFA98HIKfswegjDb7jRhRHWUtIREodiZDBgBUMf+DZmCp3l1qO3MosrMttbMHPkWawq7/7CoM2JIznaikC69vOolCix46U+8pUZG7CD0nchVlbhaChGPbfnqG3O9tfeMehP+R2IsJ4Xq6H4kRe6VdIBAj2OsueSf+Izth+ERlAvPIXQbOmf56j7HWxk8fsDzGpb5xMAJty0bwzo/WQKp8Z/x1pXgXrMEJzPyztBcFVfbjpu0iz8AeD4gDhzfg6LNzAuwrnNdHuG1naCNrG0qL16TWLSItsXljvaieRfkLU7YVIxjqez0LFGGAxxXlhneZ0e5d25gbJpW6xlPJmVvoxc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0cvNENZMVJVN2pNeW9YUXJIS0xQRndZdmF6cWxTWUZieXFvcXB2SEY2NXhz?=
 =?utf-8?B?bVVlRHlHaE5hVGNGajJJbElWY2pBNjhKVllpUUFnOU55Z1JjYm1XaGtZZVRk?=
 =?utf-8?B?MnEwZEFzN2Ird2YvaXJmKzJ3d2h3VmdkNlhNQlhvVUx6QW1nMXdDRC9KaU5C?=
 =?utf-8?B?a1pNQkJGL1RDWDhLbnltT2FnY2lyaUhzTW1CMGtERmtONEpLY3YxcjQ1QStX?=
 =?utf-8?B?VndSWW1ONFZsL1NVdkJ3bS96Q2dHbHFtZTMwQUZNcTZHY1crNTJ4V1poalNX?=
 =?utf-8?B?RWkrK0k3VEwxMHp3WkcrOHpUM2h2aUx0YWVnSThSelZlUDMyRXU0K2QvdmpU?=
 =?utf-8?B?bUNheTBGWW5SU1BvQmM2YS8vU2JrN3QzbTg3WTVZTzRRUGwydjk2V3pxU29G?=
 =?utf-8?B?alRrTEZ4NExRR3JQclZTSkpHQzZjNjBxOGpnV1FVOWtHS0tNL20wWkdsL1ky?=
 =?utf-8?B?VVNPRlc3ekRJcnBPMjFhdEo5M2RYWlh1TXBOelNuRHcrdDk2cGI2WXBOS1M1?=
 =?utf-8?B?bnJxamtuQUQ3Yjc4cDArbFNQNEIvUmRTT2tkeHFpVkVSbmxXRDFGYkhCNmlL?=
 =?utf-8?B?SkNGTzJxYmk2NGxFbnViRlFkNTdIQnlhY3g5UzY2aVBtVDU4TTJvN1BZZ3N4?=
 =?utf-8?B?YitkaWpOQ0lFSVJEaG9OQ2ZPUmpla3RQdStoK04xV25yalJxWmMrbEdZK3o2?=
 =?utf-8?B?WEZ6QlhNdm50emVPcXdoUzVmdlRvNUhDVC9hczVUaEgxZkFnSEE3WGVZdjJ6?=
 =?utf-8?B?K1NuUEFJamhUUGdSMTAxWTY1V0ZYamJ2OTk2UzB2TjRkMWg1QVNORXM0cTdn?=
 =?utf-8?B?V3JxK3ZDeWdhd3NrdThUR2ZwK2dJSTZMaGdsZUF2MFRFeFExZU5XTFUrd0wx?=
 =?utf-8?B?Y2NlRmh0V1p5MHcxZmVnS0JXZkN3U2tEVEI5R1lEcnJBZDI5NENIbmdNUFlT?=
 =?utf-8?B?SEJnTnJUN2RYS00rVHJ4TEk0aFI4OFd4NmQ5SGo3bXR2dHpYV1VtNGdHaWxG?=
 =?utf-8?B?VXM3eUY1Z0p0ZlFwYzAraStycGlDN3NlZmZJZVpBVjZyNmswL2FEalRVSWsr?=
 =?utf-8?B?NDRhYjZxamF5bVpSUkI2MzFBZGVzSm9HQ2R4REFvaGRRR29QQ1krajlyNmQw?=
 =?utf-8?B?OGpRVUNuOXJGVDlDc2IrZ3RsMXpUS1JLVUg5VjF6OUZBMEx2YURCZGhRYUUv?=
 =?utf-8?B?T2s4WUJlNVdKdlNlN0hIc1pIZG85U3diU2FiQmN5dGMvTHpUMkw4UHREZmJy?=
 =?utf-8?B?RWtML3U3NlBoM3pzMVFSUDIrZm5qWkVJVmw5QWtGWEp3WHk5Qk1NMi9maEFr?=
 =?utf-8?B?UFZON0lZMHk3SjVBTmdRMFI2Z1Q3eDZhWFBEZzZGVjhISU1pdGkyc0xlUWtz?=
 =?utf-8?B?OElWeTE5WGZHR3Uxd1JvaHBsb0dLeGZOV3VDcHRvNSttT1F1aFhsYnZNc0xD?=
 =?utf-8?B?SEpPY3Y3VVVtc05wU1FLZUZuZ1VHTjJVZEVnOEU0V24wTkZicm1nL3V5c1cv?=
 =?utf-8?B?ZS9rck4rM2tscXlRKy8xeFQ0bCtqVWhOd21ORStoK1JqMnQ0Ui9OM09BdFVN?=
 =?utf-8?B?Q2dOQmlpR1NndFNUTFM5dFFnQ3k4d25OSDBZTFV3aGZFQVNjUHUvUHEyLzNs?=
 =?utf-8?B?RmVDQWhBekh0d0YrMWRKeUZkVDJUMTFYTlBZUTYzNDRucHEwcW53MWNKY3N0?=
 =?utf-8?B?ZGQ5UDZWc0VpK0E3VndvL0lhNktxeDY3REFCYkUrRGM4ek9tMXN2cDJXeEJ1?=
 =?utf-8?B?U0pNT292dWlBWnp0RXMyaTh2RXdXRWNQNnpVajg1RFVWMGpLRFpFWW4xSDhm?=
 =?utf-8?B?RTJnRHdFWXFPQ2pMSWRZTXhKVWFrVmFudlg2a2xuc051YyswZmh3cjNqTFI3?=
 =?utf-8?B?ZEhEMDcwOEhRVThTekNUeWxjR0tXWnBJVFdDODZaZ2R3dmZ2RFlGY0J1dGx6?=
 =?utf-8?B?ei9Xb1RNNGNyYUNOV2R3aEJiaEVnK205SVF1WWVrUVJOVVFhMG1ubnRLc21h?=
 =?utf-8?B?Y0NxUVNBNERYcVNPTzJjd2VFKzFqb0lQNmdMMVIrcUdDU1JrTHFldGFyU1Iy?=
 =?utf-8?B?N1M1MlgxOXJrMEYvWHpJRVlyWnNQYk83Z09YQ3hacVIvbWtoTTdWNmRRY0xy?=
 =?utf-8?B?L0dUeFUxR1B6dHFnU0JFSnZZRk92UmFSOVRYQVJCWHJjVkFTWjYvNXJ6L0ww?=
 =?utf-8?B?L2UwY0tUUWI2cGdoMnRmS1NYZVdwbGZqdXZIQjJlQmRsUnFGQ3R4dW5WOHY0?=
 =?utf-8?B?ZkVSTnpXZS8yelpER1N0bHNVMm5oM3d3Wnd6eDJQWEs2YzhwblZKZnEvZzIr?=
 =?utf-8?B?L3ltRXVzVVBOM2lvejlKaXZpK2NXejJJSFkrUWtGY25hT1lUNXFaUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cbd6682-fc74-4507-e8ee-08de745ec5b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2026 11:12:32.5852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vNte2RkZFA7qIg8m+df7rPJcbCKEMwQaWExhlPAcuaHaWLrxEX3eM4vXycEXHYOuHda21vyjb5upwELPIZdxvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6790
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D53BC1964DF
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbm9kIEdvdmlu
ZGFwaWxsYWkNCj4gU2VudDogRnJpZGF5LCAyMCBGZWJydWFyeSAyMDI2IDE5LjA5DQo+IFRvOiBp
bnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IEdvdmluZGFwaWxsYWksIFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGlu
dGVsLmNvbT47IFN5cmphbGEsIFZpbGxlIDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT47IFNoYW5r
YXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
MC82XSB1cGRhdGUgdGhlIHN0b2xlbiBtZW1vcnkgYWxsb2NhdGlvbiBwcmVmZXJlbmNlDQo+IA0K
PiBBbGxvY2F0aW5nIHN0b2xlbiBtZW1vcnkgZm9yIHRoZSBmYmRldiBhbmQgaW5pdGlhbCBwbGFu
ZSBibyBtaWdodCBiYXIgZW5hYmxpbmcgRkJDLiBTbyBoYXZlIHNvbWUgY2hlY2sgaWYgd2UgaGF2
ZSBlbm91Z2ggc3RvbGVuDQo+IG1lbW9yeSBmb3IgRkJDIGJlZm9yZSBhbGxvY2F0aW5nIHRoZSBz
dG9sZW4gdG8gZmJkZXYgYW5kIGluaXRpYWwgcGxhbmUgYm8uDQo+IFJpZ2h0IG5vdyB0aGUgY2hl
Y2sgaXMgYmFzZWQgb24gc2ltcGxlIGxvZ2ljIHRoYXQgaWYgdGhlIGZiZGV2IG9yIGluaXRpYWwg
cGxhbmUgYm8gdGFrZSBtb3JlIHRoYW4gaGFsZiBvZiB0aGUgc3RvbGVuLCBhdm9pZCB1c2Vpbmcg
dGhlDQo+IHN0b2xlbiBmb3IgdGhhdC4gTGF0ZXIgb24gd2Ugd2lsbCBmaW5lIHR1bmUgdGhpcyBi
eSBhZGRpbmcgc29tZSBiZXR0ZXIgY29tcGFyaXNvbiBiYXNlZCBvbiB0aGUgcG9zc2libGUgRkJD
IHNpemUuDQo+IA0KPiB2MjogYWRkcmVzc2VkIHJldmlldyBjb21tZW50cw0KDQpBY2tlZC1ieTog
TWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiANCj4gVmlsbGUgU3lyasOk
bMOkICgzKToNCj4gICBkcm0veGUvZmJkZXY6IEZpeCBCSU9TIEZCIHZzLnMgc3RvbGVuIHNpemUg
Y2hlY2sNCj4gICBkcm0vaTkxNS9mYmRldjogRXh0cmFjdCBpbnRlbF9mYmRldl9mYl9wcmVmZXJf
c3RvbGVuKCkNCj4gICBkcm0veGUvZmJkZXY6IEV4dHJhY3QgaW50ZWxfZmJkZXZfZmJfcHJlZmVy
X3N0b2xlbigpDQo+IA0KPiBWaW5vZCBHb3ZpbmRhcGlsbGFpICgzKToNCj4gICBkcm0vaTkxNS9k
aXNwbGF5OiByZW1vdmUgdGhlIHVzYWdlIG9mIGRldl9wcml2DQo+ICAgZHJtL3hlL2ZiZGV2OiBw
cmludCBpbmZvIGFib3V0IHN0b2xlbiBtZW1vcnkgcHJlZmVyZW5jZSBmb3IgZmJkZXYNCj4gICBk
cm0vaTkxNS9mYmRldjogcHJpbnQgaW5mbyBhYm91dCBzdG9sZW4gbWVtb3J5IHByZWZlcmVuY2Ug
Zm9yIGZiZGV2DQo+IA0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRl
dl9mYi5jIHwgMzggKysrKysrKysrKysrLS0tLS0tLSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmRldl9mYi5oIHwgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pbml0aWFsX3BsYW5lLmMgICAgIHwgIDMgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS94ZS9kaXNw
bGF5L2ludGVsX2ZiZGV2X2ZiLmMgICB8IDI3ICsrKysrKysrKysrKy0NCj4gIGRyaXZlcnMvZ3B1
L2RybS94ZS9kaXNwbGF5L3hlX2luaXRpYWxfcGxhbmUuYyB8IDEzICsrLS0tLS0NCj4gIDUgZmls
ZXMgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pDQo+IA0KPiAtLQ0K
PiAyLjQzLjANCg0K
