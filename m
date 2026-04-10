Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Coz+FTE12WnwnQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 19:36:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77113DB1D8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 19:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE2810E9AE;
	Fri, 10 Apr 2026 17:36:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kNAINmbw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11B1A10E9AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 17:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775842606; x=1807378606;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IrFI32gNDhYHKuK03EQRBXOH9EX4xz9nfL15lg7EUTs=;
 b=kNAINmbwnvrCaiXtCA38Q538+slZciXg510oqcXiE5muWXYiBuUegXtj
 mvLVKB1uNOZa+HBDOZpTMx7ywLkseoPKL/RxEYXRoo7DWfD3Pboex1J3u
 2MUSWX1yfd53glYab1Q2JoLZKidHdKCkpr0jxc2hpcwK4j5p7Bzt7RBOF
 LTIo943kDrsimE5b9kWFW32LoDkgftnqe7Znk+Qlh4EbPtoa2Ea18GnSW
 42hHuJAMnooH3WMlDmr7k8NuNlqKVKjATrTx6MuSmQ2tpAKtMaXxKWq3L
 iWsHxvUfkpWOwCWXAbdIBYOOnlWtY69eAzxo3IOnRpCXM8iTi3C+LuRo6 w==;
X-CSE-ConnectionGUID: 9dF59mxpT6iDALpWEvfFMw==
X-CSE-MsgGUID: 4C+bZqIyStaqDpSuTUUx/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="102327729"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="102327729"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 10:36:46 -0700
X-CSE-ConnectionGUID: tI6bnD/xSnCwglvSFhtJrg==
X-CSE-MsgGUID: W8WFbakfT9iLGCBJA8Pl8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="259608593"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 10:36:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 10:36:43 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 10:36:43 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 10:36:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MYnqXTevNMDlQaR5N+emlP4TEvfvcw9+L5k4F3y1VnLzihyun3IpK1VR/4Tt6DXxC8O0Q3zbdlQpNAFC00uoz0K3ZyarJCJBohaxHTu/PzBPX/a1DUcbSz1Hb8lqUvF3KiDIXMxKuX7inJZjIO3EbPSSyUbzguuGhuLDcYo5whYMMfRaPIEktLGcK9fna/R8Le6rImvxBDBOFI4yoTgjT+eBAB60U/qu4tgypAWAgb15ZaNoI31oJipsZVq4UR2LqeAcLuVsXv4GdP8p5OE8XvM/2OlWBPbKNA8ndAiHy7g5A8aHbruK/j+w83euLcEWdDDsgZ62b1xXHb3VvtPRkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GevcYmOVcy1t+NZbPfkAjkSMEDR8NKsKYQKoB/Sr/kQ=;
 b=SHo50fcxetkkqthSN1tUv6hmYEwPKi0yqBvjUcQxqkuR3+fUruuJA2HJJoDVMKeqXfwaCFsdBalHXxz5mulbOIisgH7IQ5o8ihDorgJ+xdQY4UVIC9shD4teQQuUuF5I4QMS7cZkoueVYFXqOfq6X288cBVP4wX4mw6flNbMCmgeY3Ry6aOrALnTgAFTFaVsinfrnjP2LMYUluIZALj2RCbrZo0cPJGi+4A3H9zhLMZS4qs5dn03Hfz2KrUkj6b0lUOGKu9uAOFgDBxgcQ3fpd0dIjBY4c82Vr7g74ywurGAIUbAdgh8xWWCgGmoQX58X6aqOBjtNR6zEitsT+XUhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW3PR11MB4715.namprd11.prod.outlook.com (2603:10b6:303:57::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.41; Fri, 10 Apr
 2026 17:36:40 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 17:36:39 +0000
Date: Fri, 10 Apr 2026 10:36:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/bw: Deduplicate intel_sa_info instances
Message-ID: <20260410173637.GF6301@mdroper-desk1.amr.corp.intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-2-23c53afa7db0@intel.com>
 <20260409232630.GC6301@mdroper-desk1.amr.corp.intel.com>
 <87fr52x445.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87fr52x445.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0171.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW3PR11MB4715:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d54b7fb-d81f-4543-ffd6-08de9727b915
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: d0+opadFPtIxPHcIkuktsycU7iOuVLErjiPRbQRxYrjjjQ2b0IjtrQSHo8/PUkeGcEraCDjtcsC40XrkuwJp7WiYkpJ205UqoxG3UTwPzdlgvhEPjQDLgbsBlhMfU/CG/UI0x0lN2ZyIRTc9iwA9xCJKXppqn6Xon3dxQwI7MdR2VaAlkHVqIGdFNQaqvszQbTzj4y1PYeNpIg5ryCOgt1D1vQacb4dTZGZcT/f9j0nQ/W9j5JlGF+tRZplW0gHKT7yjjjKUrDh+7ojJh/wCPPpAZspl74sYW09zHgemGH8ugXQvk9/9/ZWyZIlYvJ49EU3OFVCsAMfSYmuuAEAM4WxJ6Ac3iNZlwjuw2RT/J+ln8Pc139zkaYW7M4dxkYqdvM0O5NMMuQvFtxlnqCtOz23n7sL18S6xqOfa8XEcr0j/bsEb3ijWvqfuh1GqO+5bVJHJOyUCA2R6Jd4rkU6JjdZ1pjg+8gDIn1ZbMwlA9TGdaxVFEj2H3+7v2b9b38JFExfpPfXIavFjLB0IBL/a/o0qzcFr+ayC7i3OOHJHOKomZMKvVAiKErDr2q+HtJV47HmMZUFxmpxV08T9UwZbOCUvCPIygb1f+ntBX7fMmHDqJ9JWKPtDdBR/rSJlGgRYgXuDf+UHUGntayt5tqeDL+GlAsBiDFIp+LXMRdLsXad7KaTxO/Kk3fpVYyJENujB86ilGJI77vvD9UJ/rq7lm0WGZPOAxcxrUhLD0RZzf1w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aYBQhs85hToUI2v5uIxWGL7stT4tgfqaVcCZFJjONJ5wEafFJCNAgsrCsprG?=
 =?us-ascii?Q?oIVgeKEQrXjTjxSUPB8dsss+kz2CsVCPgy109CTNMY+Gu32AhmWRhWJ4RBdW?=
 =?us-ascii?Q?hfPotvwBj0MGJ36RQIG4XGS7LSypJkXj9dbJeFNWuDm9lCIDdrLFSo1N2BoO?=
 =?us-ascii?Q?v1tcdX6FiG/SGs++ynsdyZnrw80CCq2sF2snmcMT14M8SlVoSVVwAWWPV7ul?=
 =?us-ascii?Q?QVo4ai5nSaMrhJ4fHQsc4KhsBvrZOwukWRPT0nZkPwCUwI2wOH4/2yhWscLE?=
 =?us-ascii?Q?0sDHD0hcYZBFQtDxVmqGsWeDMRZ0mt5QSleiojrr1VtM/Vahf4MgUvfsxrCM?=
 =?us-ascii?Q?Y57STvhkkmhbCwLpI6XpSm/+gNZ3rPvoG3vCd04B666XvvkafcFPImytvlyw?=
 =?us-ascii?Q?SYufVorhJTGZ+SCk6nw/vg41OK89XFiRRjvTutNHNS2XUjWNwehcE+E6S1hU?=
 =?us-ascii?Q?Kx97/yMfYr/GEKtXkvR+syvKXGXyRgAqC2avckYiN02kRWkgNfLeT6Z8GCrX?=
 =?us-ascii?Q?O0ggv1dhyABvAXSvHugBlCom2wWyJWqVhREM/anEOuvVDPEBv97YeNBPnWAu?=
 =?us-ascii?Q?Co3USjlKpsvi0MyHrzIub+qOsGTt0OwyeJ79IhSEkOKGUX1NmN0fPyMUpjJH?=
 =?us-ascii?Q?b4k3ZlsncUzBia21J2a6jr+fxFatovYUyol/X33fH1uSi5sWqsJyc9tCwqp0?=
 =?us-ascii?Q?7SfoUiKXnKSkW2M+znN9piG1TS05Ne58j/ecVqBNiTXQAaYRE6vPUItmW39h?=
 =?us-ascii?Q?SBJ4NZ4BaZJBsBOJUI/ry9GX3ke1bRvEUGCibNCpG+cJmbXW73c2Qp/f/kVX?=
 =?us-ascii?Q?8aIqHb/oBkUMsxkhy66ijIoEIC2hwacLZl0aDukV/ft9HVdJ50YJbQvQixbZ?=
 =?us-ascii?Q?T1+Y1406ZFSGcfno32W9QvRqqmMOvdXlGk4NSeOADC7cbqtzFbomH5AeCOrg?=
 =?us-ascii?Q?8PjBvej3p7GS9cwKDTIgx61hz/qI7QrIoCrWLZDn3TrqTecJSfCo+D+9jsXf?=
 =?us-ascii?Q?CpUVo3Z7YaI8lkFEjKXTTe7brqLSJB3H3me1BIxzI92HzqkMdC9Z0l9chlZH?=
 =?us-ascii?Q?o/zzUGnQjFJIVSsqIMmpTIKlP65hST5ghI9jLv05Vjwhbj75i5/MflFPF/3D?=
 =?us-ascii?Q?RWI51FGaQWquLkpBdGfjT/3usDPeYAzOIICWmbxG8uCYohOV+8fS/5vc7k1R?=
 =?us-ascii?Q?bngcNdnLi5S7r7L7jKBpHqqu0I2kLgxUglIXou19zOjM9/SoiT7UrpDwf6Dg?=
 =?us-ascii?Q?E0UT75/LT41821GtXiAeApIx+7CoPE3jsJ6nQsjY1zgEIgIpQxOJ0+ciBvtU?=
 =?us-ascii?Q?zUk0QPzposnQQ805swEcPj3+A02V+QsQlyFSxWamcgflD9sV7vaZV4YFwRnE?=
 =?us-ascii?Q?4m5Xras3vk32Q1m0P6YRQJLChhN4T58BdrOVFv5JN36Cylzr5L2xizlj5XlX?=
 =?us-ascii?Q?gd3dNdJGtJ1JcbrAjd3J2JCaODgXffvYG5BVb4fyb00CveRAMdnNv0NveJQE?=
 =?us-ascii?Q?zGloP7CHr6QKs5pAn51q39/C2/z0zGTkJqMWuVUH0ER5TATYrmB1MBtkJpta?=
 =?us-ascii?Q?VSWfkTVOkZZDe/gzi2g/S7l2tVE6zoW+POgS5jr+lJKnBdgXi9oZVX8SLYXJ?=
 =?us-ascii?Q?4J2AFfXygJEFNqM0QdQiJl2EaLabMP3aTxPk72ApDl0r+563r1othX7pU8q0?=
 =?us-ascii?Q?yagY5wgsJma6u/Z1PZiMauNU5Kk2JtV9DiSdCVcfpPJ5sLoHWjRKCUtv7/K1?=
 =?us-ascii?Q?PkuxQnX+MWRqOccGJdTh7iqqRV1SkgQ=3D?=
X-Exchange-RoutingPolicyChecked: rvXqXHaxJ3a0cWFy00YvrtH7L9jEes5pELfB4rILzbeEQxJmtrm2UubP+Fs2mTRKrYGpdYgsy7rF1dmYZPH8v1s4eWNzsRRF63mVhJJiQM9n94XnWWq63zHybMY3j65Y2vO3mYB0P5QSe4jzC8slzYWrjBxM2LoZNW0gQe8pNn0UtMBB9c1b4DCkkXOhQDNk32xbvM25ETUkl0GnQTWttWkqDV/7eGO10z8f4cQ6EGwdD2BDUmbL8dxCg2MN1XDXQo/k7kewcpdIEDn44+ApggL8YtoEpRWz3vY9xQkqvgT3AyLxxAc5c/DNk4ACYSYyWxH+QwOAilI8vU1iI45XjQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d54b7fb-d81f-4543-ffd6-08de9727b915
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 17:36:39.8927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2T49UEP8QdKnMo7cCv1caUrHArTSOKAZlKfq1D7h/kfX+nb6Gb2Fsufl1AC4CZ+0prYusmejHLzViYr1RiskaO8ZesCW5hOlpOl4/9bGVRo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4715
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gustavo.sousa@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B77113DB1D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 11:49:14AM -0300, Gustavo Sousa wrote:
> Matt Roper <matthew.d.roper@intel.com> writes:
> 
> > On Wed, Apr 08, 2026 at 03:53:00PM -0300, Gustavo Sousa wrote:
> >> Now that intel_sa_info contains bandwidth parameters specific to the
> >> display IP, we can drop many duplicates and reuse from previous
> >> releases.
> >> 
> >> Let's do that and also simplify intel_bw_init_hw() while at it.
> >> 
> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bw.c | 44 ++++++---------------------------
> >>  1 file changed, 8 insertions(+), 36 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> >> index ed840b592eff..654876215ace 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> >> @@ -516,27 +516,7 @@ static const struct intel_sa_info rkl_sa_info = {
> >>  	.displayrtids = 128,
> >>  };
> >>  
> >> -static const struct intel_sa_info adls_sa_info = {
> >> -	.deburst = 16,
> >> -	.displayrtids = 256,
> >> -};
> >> -
> >> -static const struct intel_sa_info adlp_sa_info = {
> >> -	.deburst = 16,
> >> -	.displayrtids = 256,
> >> -};
> >> -
> >> -static const struct intel_sa_info mtl_sa_info = {
> >> -	.deburst = 32,
> >> -	.displayrtids = 256,
> >> -};
> >> -
> >> -static const struct intel_sa_info xe3lpd_sa_info = {
> >> -	.deburst = 32,
> >> -	.displayrtids = 256,
> >> -};
> >> -
> >> -static const struct intel_sa_info xe3lpd_3002_sa_info = {
> >> +static const struct intel_sa_info xelpdp_sa_info = {
> >>  	.deburst = 32,
> >>  	.displayrtids = 256,
> >>  };
> >> @@ -903,25 +883,17 @@ void intel_bw_init_hw(struct intel_display *display)
> >>  	if (DISPLAY_VER(display) >= 35)
> >>  		drm_WARN_ON(display->drm, dram_info->ecc_impacting_de_bw);
> >>  
> >> -	if (DISPLAY_VER(display) >= 30) {
> >> -		if (DISPLAY_VERx100(display) == 3002)
> >> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
> >> -		else
> >> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> >> -	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> >> +	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> >>  		xe2_hpd_get_bw_info(display, dram_info);
> >>  	} else if (DISPLAY_VER(display) >= 14) {
> >> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
> >> +		tgl_get_bw_info(display, dram_info, &xelpdp_sa_info);
> >>  	} else if (display->platform.dg2) {
> >>  		dg2_get_bw_info(display);
> >> -	} else if (display->platform.alderlake_p) {
> >> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
> >> -	} else if (display->platform.alderlake_s) {
> >> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
> >> -	} else if (display->platform.rocketlake) {
> >> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> >> -	} else if (DISPLAY_VER(display) == 12) {
> >> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
> >> +	} else if (DISPLAY_VER(display) >= 12) {
> >> +		if (display->platform.rocketlake)
> >> +			tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> >> +		else
> >> +			tgl_get_bw_info(display, dram_info, &tgl_sa_info);
> >
> > It seems strange to need to need to drop back to a platform check here
> > on something that's supposed to be tied to IP version.  But if I recall
> > correctly, RKL was a bit of a strange frankenstein platform where TGL's
> > "gen12" IP got backported onto an ICL-style chassis, which caused it to
> > inherit various ICL traits despite the new IP.  It might actually be
> > more clear to just re-use the icl_sa_info for that one and leave a
> > comment admitting that yeah, RKL was an oddball platform that didn't
> > really follow the rules.
> 
> Huh.  Yep, using icl_sa_info sounds good; I totally missed the fact that
> rkl_sa_info matched icl_sa_info.
> 
> >
> > We might also want to rename tgl_sa_info to "gen12_sa_info" since that's
> > a more accurate description (and is the last version where we're allowed
> > to use the "gen" terminology rather than the new marketing names for the
> > IP).  By similar logic, "icl_sa_info" should become "gen11_sa_info"
> > since it does indeed get used on the other gen11 platforms too
> > (jsl/ehl).
> 
> Sounds good.  Since I'm renaming the struct type name to
> intel_display_bw_params (to indicate that those are tied to the display
> IP) in a separate patch, I think it makes sense to do the instances
> renaming there as well.  Ack on moving back to mtl_sa_info here and then
> doing all renaming in the patch that also renames the struct type?

Yeah, doing all the renames in a dedicated patch sounds fine to me.


Matt

> 
> --
> Gustavo Sousa
> 
> >
> >
> > Matt
> >
> >>  	} else if (DISPLAY_VER(display) == 11) {
> >>  		icl_get_bw_info(display, dram_info, &icl_sa_info);
> >>  	}
> >> 
> >> -- 
> >> 2.53.0
> >> 
> >
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
