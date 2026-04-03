Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD8ECMKkz2mZyQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 13:30:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B5C393B07
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 13:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3141410E0C4;
	Fri,  3 Apr 2026 11:30:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aqEIshAW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E7D10E0C4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2026 11:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775215806; x=1806751806;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=njqij05ej3mB/RQQebGqv3omhMtTSus6c+xNhEtFNPk=;
 b=aqEIshAWlLkOlQEqFV2ojaTsx/Oc/GZH3ydZa5oamxT+7LmuQAArdeUp
 ijHZQmEIXy/Yyl/ZDd0LjTnrkLIYta6QGReSdgPyttSYUmbCg92ugCYjx
 NGPt+pDFFZEikcmZ9G03SBYSjJKvQ+4zro3ml/+zgTNZn66fT6KQS7dzx
 YV9b3TVhxFTZF8qC4emO/f38uKFsODqqjYnIVoUkMW2fLDaLnRfDMfDyF
 ReHC38VMnvSc8BlPpkghIGZ1aCEmV69W9m+F6rvVpOKUu8vU3Q5wDzZzy
 LsJb3HAJKgbqELp9y0QY33F6n+sk8tuR+BC1WXeM7igWcO+x8qVtvsvZo g==;
X-CSE-ConnectionGUID: /AauX1uHRNmgxqNsFsKVCw==
X-CSE-MsgGUID: SzMw+kTsRIqr6tiwGwj9oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="93861055"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="93861055"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 04:30:06 -0700
X-CSE-ConnectionGUID: pF4pBuNfTziyRn2ltUQCrA==
X-CSE-MsgGUID: yo48QIZXStWiNoUMc/64MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="226226256"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 04:30:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 04:30:05 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 3 Apr 2026 04:30:05 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 04:30:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B8FQU/ZrQeUuOPjcDE2p4E62hZKU8IzhksxO/+nIiu8sKZfjlGU+L9RaY3b76XJZsJJCS6wdUuFr23pXmrFIs6Nh5ve4MPaA0oeCp0lBBejit9SV2UVYvet5qYaXeZ8gjj2rIqSdnKBK1C+nUEYVRh5xERN+1cLv6n/SUx5SdtO/1tqLYqpWrvmb/tNUreg7BllzLZ3WXAHIBysc0ANjgUhMWKCKi5mPkRmSAd1aCFAE9Gh5ezy8UhR+bSEwgbCEoGMzJMD0rHE9hCJrV3NNcIeuFaExv4YmIr90bGTNQ1fTpWfLlw1t4fzghQSagRDcuDQCa+j5XvzN46CHm0PVSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4zKe4JU2GCf7+FWIcd35lxbQ94pVkuH5Zr5scVAx94=;
 b=d/WFKDTO/slouocDcEc28QfMT98/geWPEu9X9SOboxrDvPt8AG3drtZWHso+cbWowPtbZkYAx+G0f+oNHnDHOS9pKNzQppCEJz1UJcaHAl4LW9PqxMw5FCRRhbbkRBbDnKrmmJ4PJXGb155HKRZ4Tc6xRQwfyyInXcr0fH0desekg9X2cn8RCo0oHUJ9T9eNZs9RioNaCuj7cbE3xRCu1ZLCBzHhIDrKAHZdiGZI7bHlaz2M+bfVl3IY41+XgAMfGrJ7wLsDLvIuBf5itFH99fuxallVCl8S8HSJBorHmTOeh7JUpynmBsHrlLV6/iiG7hg0qCeGCHh5bAn2BAwU9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH8PR11MB6853.namprd11.prod.outlook.com (2603:10b6:510:22e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Fri, 3 Apr
 2026 11:29:56 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9769.016; Fri, 3 Apr 2026
 11:29:55 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 3 Apr 2026 13:29:47 +0200
Message-ID: <DHJHH6A10FVI.XM7NSCN99MSM@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [RFC v3 2/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <20260403090019.1933036-1-krzysztof.karas@intel.com>
 <20260403090019.1933036-3-krzysztof.karas@intel.com>
In-Reply-To: <20260403090019.1933036-3-krzysztof.karas@intel.com>
X-ClientProxiedBy: VI1PR0902CA0060.eurprd09.prod.outlook.com
 (2603:10a6:802:1::49) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH8PR11MB6853:EE_
X-MS-Office365-Filtering-Correlation-Id: 8077f238-1e00-4a51-c0c8-08de91745499
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Y4KVbHfEk2nG5peTZXGjWzfPSZqkh0P4trcPPyDPyGH7o/PA3KvUznQFc1rh6VHx52KomV3WwZqJzADAXOGnnCA+AsNawRS9E4f5XuqhNvD1SqQ6FwDxLi77pn6gFdpWrgtl7VXXOJNfz5bLiViR1zLGpV1o3kX7z8o9nzyNezq8nosdXCqrswVtDrafiGS++Sy4ZjfpqUFgAYqUw0RmKS76fyW+Um74VlwSdnd/zvWxxqOPkE//n7fJqMrwSXzUMMFmwGtNbbYk87Pe3KKXbsw938e/sVynlbpbZWhNyXVZrQ0zIV+cFFrB2T0tpV1j8iumygkGwCveEmIHp1b7a7Z7GQSFUYa60GYKD4h5+tYHDzt4gLTIO9q/AiaEG119/vjKWOMWx+ejwSPVww9SobifFM7mgxUjvM2z7bUoynUFkz3MkPIauK/6Yb3DxdMVMiIASiKyXQOa++qleEMYw58lQVYHHCDNgkUyXDiMSA7GGMFYWs1n5KCnXMQHMOz8lDNtiH2h+UiQoPinjM0UGAohesWxdJ5vD6Cc2n+tpJfYqMFxqUhneha/WED57pNB6DjY8L6c4vcJHLSS/YWVuH9Vg+hQWDIxLFwQD89ouGpRVb2sWQOjtKVYJiagkGKSVyLw6sPf5rl+dmZIkEjVigr74qKmouPVDSM8dJ+DOABzOSJgdQUonDac80hwQ6Va
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTRvTE5KTGF2OFJQODF1TGdmcGNpRGlSajhSNWxBTmpvQ3paUFNNbi8zMDZr?=
 =?utf-8?B?K1pVTThnNGl5K2ZQcFBVdHNsUFMyMXYrMWFxSmk2dFVnUFk2eFVrRTg1Z3VS?=
 =?utf-8?B?TjlYUUZvYlAzVVBqcEE3YnZ6M0VCSW5IQWdIS1pEclIrUGRPN0E3UzRDR2xZ?=
 =?utf-8?B?RjYxYkhrV2U3dXkxYWhaSjEzUG5JMGp4ZkV5MDlzbFhzejkzbW5JaEtQMUs2?=
 =?utf-8?B?Uzd0UTBCeWZqOEFZUEhMSDZFOHVRdG0yVWdtb01YbUQ2elg5Nkg5RHBibHpy?=
 =?utf-8?B?NkRkeVBWTE9OYVNkYW9rTWVQT21IMHFtYUYxQVV6QW1PTm43SktSZVI2LzFR?=
 =?utf-8?B?UHRmclFxNUJkN0luYmtFQ1ZCZDRpejFTVEdIMGJ4a04yZHllRHR4TTRPQXMw?=
 =?utf-8?B?bkV5ZUtscWlOdmZHN21Gc3FCUmkwZ09KMFE3VFlLL3pSQTNGUFRWdTg1UktN?=
 =?utf-8?B?NXJZYTRock55VnhaSjlldGRScEQ0VnlYTmtTRHp6NDRlajFibXNCVXg4U3lG?=
 =?utf-8?B?Wm9KSSs2MmFZRTBvVHIwV2RPTkExY0tDcWR3akhpQUIwYjhRbGE2WWR6RlQ1?=
 =?utf-8?B?VHdobzZsdGs0blVIZnRYci9pNDhaQnZJOS9tc1hHSzZsZGRnWngvMnMydUZx?=
 =?utf-8?B?WEMyVTh1OW8wcXdFc1RtVWV1bmJMcFhBNjFvcjN6dlpqeXZTcklxMUtFM29Q?=
 =?utf-8?B?VzAwRXpIUkZER1duSkFzS2RXNjJwZ25sOEpFUzVxMTFWdmhZWjUzcWpZVytm?=
 =?utf-8?B?ZHgzSDNnOWZwY1pkNEVLVDZLNlYreFFXY2Y0THFwZ1JnaUFiVTNmem5jNCtN?=
 =?utf-8?B?aDFKMnJpdEpBVWNxYUk4VGl1TVNaVEdoZld4WGFuaXN0N3RLNDNweXQ1bXYz?=
 =?utf-8?B?aG9iMVFyUEd3ZEJrTWFxYU5UcmxKK0FtNnFob0J6b1RHUzNrMVIwZ2t6NVJO?=
 =?utf-8?B?RWY0UGZtWWJKZ21uODRaVUM5NDdjWERNQURCeHUrRTlyYVpiU1hnYmc1M0g2?=
 =?utf-8?B?U1FkdjB5TENvMW44Y1pseCtqYzZGTlB6bVVHc0dKQ3BBQS9tWWNGWHRINWY5?=
 =?utf-8?B?V25Rbk8vNHV2d2pNaFJId2VET2pjN3U4L2VFV2RweW1xeWRXV0FMb1g5bXFp?=
 =?utf-8?B?a29aaXFlUGdtSHA0OFVFSk5PdmZwZGVYSFVUcVBFeW9Eay9rbDlqZDR0Nmhs?=
 =?utf-8?B?T0xoTmhNRjIrSVMyV3YzY1FxRDhkNXBEdEZabkxOcElBZVNldVdBRUJzS01W?=
 =?utf-8?B?V2dyM09PVjdLRC9GVjZpdUxhaytIVGR0YlFNakduY3Nzbi8wVXY2NjdJeVpj?=
 =?utf-8?B?MUdBaWlKWHVEdE5kZDRQczVTT2tJNkF5RXc3c25CZGJITm1admRnOUdFcXB4?=
 =?utf-8?B?ZmQyVDNaQWg5QzE5ZGIybHYyVUtFbWJOY3U1VU82Qll6TmhIM1VHcVZDWit2?=
 =?utf-8?B?ZDVhV21Jck1COVR3ZXp0QUFuQkJYbis0TitLVlFEU0lXTWxjMGgwS2xWMWEx?=
 =?utf-8?B?MGY4cDlFL0hhRmRqbWF0Y29TSjh4UkQrY2x3L09ocU43aU1vQXJldXNHVXJB?=
 =?utf-8?B?aktud2VSQnJEaGllMENCb1dzSVRiVFBxbEQ2NUNkM2hPVUIxZXAzWE9pY0xL?=
 =?utf-8?B?OXdNZzhpS21aY09yeFNCaVpMUkYrZDY5TVBmVDJNMDlhWCs1MVVIVXhucytu?=
 =?utf-8?B?cWVXMGhnaHZodFhDbmdwUkVCQVYya0o1VnVtbWdzeVVRSHBLMXVRWEpWbVoy?=
 =?utf-8?B?ZExLMkZYRG5qQ08xeVBrYnZVelp4SWZtNytwNDdtbkJya0R1U0lmN3N6VjJ2?=
 =?utf-8?B?QVBpMVM2eTBONHVMKzBSSisxZkM5UWxoRjVRaWVMYVR6cDM1Mm1pR1dUYjI0?=
 =?utf-8?B?UGxVNnVyTVR0SjZkS3IxUGIwWnJFNCtQYThsanJLR0VXK0N6dTZpeDNQZGJx?=
 =?utf-8?B?QzdHZGVQNnBXTTF1ZzVUKzBSTUptb1VmQ2V1c0FmeTZqSnFUR1M5RXhCdjhC?=
 =?utf-8?B?N3psd3ErVDBwMTNmZG4zY3BHS2hzdlM1dS9wYVVOQ05ncGIrRlFHdU1BK0VU?=
 =?utf-8?B?MXByUUF6S1Z4Z3IzQTdPdUVnMWhuYzdXc29EM3RycjBOQTZPVnEyL0piV2Vz?=
 =?utf-8?B?QmwwQlhGZlhpQzEzYitYT3VPT0tSUWdITGJMZWlSYWxnKzQ0ZGhOS09kNXpM?=
 =?utf-8?B?Um5walNjMGNFRC9NdUhUMmlPVWlrTjRiaHdBWTBLYUErRnlmOFFhTXNWWFdJ?=
 =?utf-8?B?VFZWREJFVzl3MURrWWdid2h0Y29iMmQyOVlZcTVPcVA0ZWNkREQxeGNkTitZ?=
 =?utf-8?B?YzBFcEZWbG82eVd6TE5wMGh2cmplU0ZFV2d6UDRLV3RUTjBnMEpaYVB1eFFn?=
 =?utf-8?Q?frnBhpX6h9kaBjfc=3D?=
X-Exchange-RoutingPolicyChecked: qWqkxzJQ3ZOURmI96FhzpY2aAj9ZHFLXkHEpHwiVIgG+wueyvdyobEGHiQxAuhyb613YCoavjJCMYXCRtqQ4C9pL/ypUEa4ImVlKLKa//cT7ZWIoD6L7PlB/uiLf0quof/DP9zZgFzUkdypEeuL9oTyabnkYNC/Jzbq269YRCEFypLJseHXAa6wtqYSq314QsXhdamixE5JNkHrSw2+0mYm5XfiSS4L1neuZ2GIL+qcEc7fcMO7q0r4CPLOXdF7La9mQ180KIyPt4zke8BvdEVRLZndr6gmvo3xaOcHk3U8OScx6VV+idpya9MNv8oQ163oR3cJ5tvHVw2PAX4yHTw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8077f238-1e00-4a51-c0c8-08de91745499
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2026 11:29:55.7209 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VqQACy0tKRqO263GARkYXpTBHTADBLY3h4WdeKONbuFWTuwEgznb4tE2awPdaprFHsV5l9GYe02sV/Dg0gtmRIugfSgObQjeJT1iQpkvWUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6853
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 51B5C393B07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Fri Apr 3, 2026 at 11:00 AM CEST, Krzysztof Karas wrote:
> Migration testing in i915 assumes current task's address space
> to allocate new userspace mapping and uses it without
> registering real user for that address space in mm_struct.
> On single NUMA node setups PCI probe executes in the same
> context as userspace process calling the test (i915_selftest
> from IGT), but when multiple nodes are available, the PCI code
> puts probe into a kernel workqueue. This switches execution in
> a kworker, which does not have its own address space in
> userspace and must borrow such memory from another process, so
> "current->active_mm" is unknown at the start of the test.
>
> It was observed that mm->mm_users would occasionally be 0
> or drop to 0 during the test due to short delay between
> scheduling and executing work in forked process, which reaped
> userspace mappings, further leading to failures upon reading
> from userland memory.
>
> Prevent this by making use of trusted task's mm via
> user-provided PID if needed.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
> Fixes: 34b1c1c71d37 ("i915/selftest/igt_mmap: let mmap tests run in kthre=
ad")
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> v2 (Janusz):
>  * Reword and shorten commit message to be more precise.
>  * Reorder variable declarations to follow upside down christmas
>  tree style.
>
> v3 (Andi):
>  * Prevent PID and mm leaks.
>  * Remove a flag and use mm pointer to determine whether to
>  release references to the memory.
>
>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 14 +++----
>  .../gpu/drm/i915/selftests/i915_selftest.c    | 38 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers=
/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 9d454d0b46f2..0752e758b01b 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1847,11 +1847,12 @@ static int igt_mmap_revoke(void *arg)
>  int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
>  {
>  	int ret;
> -	bool unuse_mm =3D false;
>  	static const struct i915_subtest tests[] =3D {
>  		SUBTEST(igt_partial_tiling),
>  		SUBTEST(igt_smoke_tiling),
>  		SUBTEST(igt_mmap_offset_exhaustion),
> +	};
> +	static const struct i915_subtest vma_tests[] =3D {
>  		SUBTEST(igt_mmap),
>  		SUBTEST(igt_mmap_migrate),
>  		SUBTEST(igt_mmap_access),
> @@ -1859,15 +1860,12 @@ int i915_gem_mman_live_selftests(struct drm_i915_=
private *i915)
>  		SUBTEST(igt_mmap_gpu),
>  	};
> =20
> -	if (!current->mm) {
> -		kthread_use_mm(current->active_mm);
> -		unuse_mm =3D true;
> -	}
> -
>  	ret =3D i915_live_subtests(tests, i915);
> +	if (ret)
> +		return ret;
> =20
> -	if (unuse_mm)
> -		kthread_unuse_mm(current->active_mm);
> +	if (current->mm)
> +		ret =3D i915_live_subtests(vma_tests, i915);
> =20
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu=
/drm/i915/selftests/i915_selftest.c
> index a1ccfde7380a..b6cd1063c709 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -186,6 +186,8 @@ static int __run_selftests(const char *name,
>  			   unsigned int count,
>  			   void *data)
>  {
> +	int u_pid_nr =3D i915_selftest.userspace_pid;
> +	struct mm_struct *mm =3D NULL;
>  	int err =3D 0;
> =20
>  	while (!i915_selftest.random_seed)
> @@ -201,6 +203,37 @@ static int __run_selftests(const char *name,
>  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=3D0x=
%x st_timeout=3D%u\n",
>  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> =20
> +	/**
> +	 * If the user passed a valid PID of a userspace task, then we may borr=
ow
> +	 * its address space to prepare a safe environment for the mmap selftes=
ts.
> +	 */
> +	if (u_pid_nr) {
> +		struct pid *u_pid =3D find_get_pid(u_pid_nr);
> +		struct task_struct *task;
> +
> +		if (!u_pid) {
> +			pr_warn("Could not find PID: %d\n", u_pid_nr);
> +			goto run_tests;
> +		}
> +
> +		task =3D get_pid_task(u_pid, PIDTYPE_PID);
> +		put_pid(u_pid);
> +		if (!task) {
> +			pr_warn("Could not find userspace task for PID: %d\n", u_pid_nr);
> +			goto run_tests;
> +		}
> +
> +		mm =3D get_task_mm(task);
> +		put_task_struct(task);
> +		if (!mm) {
> +			pr_warn("Could not find address space of task with PID: %d\n", u_pid_=
nr);
> +			goto run_tests;
> +		}
> +
> +		kthread_use_mm(mm);
Is it guaranteed that we are running in a kthread? If this is executed
on a single NUMA node, could it trigger a warning in kthread_use_mm?

> +	}
> +
> +run_tests:
>  	/* Tests are listed in order in i915_*_selftests.h */
>  	for (; count--; st++) {
>  		if (!st->enabled)
> @@ -226,6 +259,11 @@ static int __run_selftests(const char *name,
>  		 st->name, err))
>  		err =3D -1;
> =20
> +	if (mm) {
> +		mmput_async(mm);
Isn't mmput enought here?

> +		kthread_unuse_mm(mm);
Probably should be in reverse order, unuse than put.

> +	}
> +
>  	return err;
>  }
> =20




--=20
Best regards,
Sebastian

