Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B0B9D0A63
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 08:47:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011CD10E1CA;
	Mon, 18 Nov 2024 07:47:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XUUkzvun";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A6710E15E
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 07:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731916036; x=1763452036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=d62ruSUJoH7NhmV6YqomMuIStFXsmAPWjztWns4ddck=;
 b=XUUkzvun7LbwAPyuweN8nRM7/daxnF1x/Y922uDlbQ4HAxH7R+v1EMfY
 gHt7Ht+Ms8/zRsWRmKPoymotglex+U8RM/V2WObtJZYCZJDCgfG1RFEsq
 X/OyoRT7JJwZm1gutKufy75H3d4ZkbvPBEjcvANihi+YG9MDDLeby3LxY
 IjFPZmZsPi+b15ym5abwFK4N7r6dATYEUMu35suJ1PjefAqsG7SlwlYJm
 cfNQio3mWanR9fAsfR3PjBrBTNiNClZ38RnTJ3FS50WpQMd9WOqfBlAtD
 qeUkJuaY/1Pz/U0oj164L1weXaCk2nwpFW8qTFHyUCGpJLApRmmzl/k7x Q==;
X-CSE-ConnectionGUID: RwIfTsRITA6Onj9gzbQLXQ==
X-CSE-MsgGUID: Rq9g3ILaQ86+LaJ2kp7hsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="42497361"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="42497361"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 23:47:16 -0800
X-CSE-ConnectionGUID: xskUBuljS0uFA7EVsiOUFw==
X-CSE-MsgGUID: 1rqvvLM2Qui0GkKaApPMkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="94088359"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2024 23:47:15 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 17 Nov 2024 23:47:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 17 Nov 2024 23:47:14 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 17 Nov 2024 23:47:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VOdhOunNV+Xkn6O66WwWpIv6sG6Az3XK3ABI6siJdaLA2cf4M9uc2dfd+twLD4iN9X/EJG5noqEfrtO1AvVjL05Y1mF05bYD6U4/U7wrqDRhdKOHfeGHGDcE9W89M8XuVDQ0prq+8J8shvsgFDzqKVQhoy44zGIDJo5SOw/auuoc3BOzYCZTxUkWgQ1T+Nwy9LLyxaYfveN1VSWUPVDC+2mehOlv34EgxFjYwfX58g8cTPBRzp7o54ok/eBVEHtuotln/2V8NKkyK2goOG0930SD4S7hujAqCecvk+y/D3u3GlAfc3sEvJS5GU2Gq/NaRtqUhlIP30uYfbAomocGeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d62ruSUJoH7NhmV6YqomMuIStFXsmAPWjztWns4ddck=;
 b=KjfGM80G6KQEZdpeprrf5h8xqrwrlsz8P5Gs70Wj8zdB3dCOxYNU95+MA1ec2EXIEbnocv+XSJSP0id4s73e6xwbpihfcchuVG1Bp7yylEl+suXDT4WzDzB+J/SmCvkQC6cezS83V7O4BmhA0lAt2umciskFzJhfXSbnIyQysCSSzWYZUDP/T1H9oue/dP0PtaYRNvuJ9S5WaPZBsofUjNCu/LsBRt/quKyDirOxVgymyBUA2Zgn5OBriiqgMaG8P4n6jNRNHzoLeCsoU6h4ze1Yb6gFgQUnsuh/RLXnaEyYExbLR98OeSsoHPFQRNz+ryknDdChSsEGZiPr5Q49Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Mon, 18 Nov
 2024 07:47:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8158.017; Mon, 18 Nov 2024
 07:47:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/9] drm/i915: Allow async flips with render compression
 on TGL+
Thread-Topic: [PATCH 1/9] drm/i915: Allow async flips with render compression
 on TGL+
Thread-Index: AQHbGng0oH9/qGNGs0+pmu6Zyq25rLKVzZaAgAaVKwCAIIRugA==
Date: Mon, 18 Nov 2024 07:47:06 +0000
Message-ID: <43e0379cb57f36190722a952205f72197a24dc73.camel@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-2-ville.syrjala@linux.intel.com>
 <b94128a3954a0f2165d6e1d11cd55683a8051d73.camel@intel.com>
 <Zx-p8J73fe-RwDe2@intel.com>
In-Reply-To: <Zx-p8J73fe-RwDe2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5036:EE_
x-ms-office365-filtering-correlation-id: 5ceee1fe-423c-4596-47d8-08dd07a53360
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eFZXbU9sNGtXVWFwQ2N0aXN6cG9pWXZBYk8zbE4xR3NpTU1XR05tNzV5WGJF?=
 =?utf-8?B?bGlRa0hHQk8xTWx1SmtTN2xaOG02RndybHRtQXJIVUREM2hWYjd6cGo4VThv?=
 =?utf-8?B?MEVNNzRKVkJ4Tyt1UkVHSHR5aXVpSVVIOVVVUnNuK3FsWGxxL1c3NGFqOE9C?=
 =?utf-8?B?ME5jNnZ3SU1xK3ZPRDI5V2lkOE5QcEwwb0VVd0JzUmRjbzNWZU5kZW1zUHlQ?=
 =?utf-8?B?WGdrbEJGano5MFhGM1ZvSml1VXQvKzcxVmVnRUZDYUdRNTdOZnlrbzYwZmc1?=
 =?utf-8?B?Sllac2pYZHYvbnlqejlJOHVISkNlT1N1cm1FSHV6cWdxcysvemNzSEJ0Zzlh?=
 =?utf-8?B?eTZhYldsbDNkaUU0dVdpM0MrNURkcHR1cGtwYTQ0emVmY2tDQXI2bTcvOExR?=
 =?utf-8?B?Um5JZlJSWERoU0YxZGgwNm9FN0hjVW1GdEJyM2RQcWJMWWxlek9kTEx4NmJm?=
 =?utf-8?B?aThJNzd1QXNiTU52dUZPcjFPUGNPMVMrRXVqejBWaEFvQkZhOWxmME9YdW42?=
 =?utf-8?B?emlRb2srS29CaGZ1VGNSak9WazZJeDQ0Vis0Y1hiVHlqby9vaHdZRVhad2ZS?=
 =?utf-8?B?UzlkZ1I3VmdyZ29oazFQTm5nZ1NCVzd6SERCL1JtOWVSaU0wVmZkNWJXZXpJ?=
 =?utf-8?B?ZGhoV1NDWDh3dVFRNTJubGlVRnRhYW9uUVE3UWxKZDFjdTEyZVlVUFIzWXZl?=
 =?utf-8?B?bUIzc3dtc3d1NTlnOWgweDhWaWZmSHVyTWJwYlRtdkQwcTZVb3lJNEY0RGpw?=
 =?utf-8?B?MXAzdDM2dW4yczZHODg1TFBTSmQ4YW1JOGNJMjdValVOV2FpcmIwTjh0eEg2?=
 =?utf-8?B?dDRhZXRBT1d2SzBkU1Jta2YrcXhQNDZGT242eGtLSklpZzZCS01OOURVZmYr?=
 =?utf-8?B?eUZTOXpSSHBkd050czd3V1FyOGJEVTRoN3FoOVcrRStDL2xpOE12STlRVUZC?=
 =?utf-8?B?c0ZaS1VmS0ZzcXZ2YXU1cUxXMTJ5L1FmcU5MMXBKSnRUTGt5SUE4RFJ5S29K?=
 =?utf-8?B?bkpQZDFnd21SWCtRZk5KTXlyN3ZFNC9jK21LZDhhZkprOEgzRm1YUzNDMkZZ?=
 =?utf-8?B?RDRKeUxIaUZRbFVnRTF2TUU3REI1T2F4a0l3WG5kdWNxRy9WcWRCS0x4dWhk?=
 =?utf-8?B?Tm93SkYvbkJha0RwejVnVUFmQlRvNmd3S1BQRFR2RkFnZk9UTEdXNm9hMzVS?=
 =?utf-8?B?ODBQWVRURGRTeUN2MnZNeVh0eDJtWDUrZ2JJUGxYcHB4YnVDaUF4bVJCVysx?=
 =?utf-8?B?MXc1UmJFWkUzWTdJaWk2bVFLdHQ1WnZCeE1PRHh0cWVYeCtRT0kvS2pZcEVQ?=
 =?utf-8?B?K0FkMmM5S0phOG9RdVJYNnVONFhMd1hrRlcxV2pLVm5KN05vVk5IZHR6c2Qz?=
 =?utf-8?B?QlkwVHA2cUk3Y1ZpQy9PdWV3S2pTT3BPbE9DQVM1YVVKSTU2L0hBQ0Q3VnVV?=
 =?utf-8?B?QnU5STB2RncxcXoybDNzbWJQWmdyNitzNUFaZjArcnFlcS9Ca1Q5ZXl5dURt?=
 =?utf-8?B?d3RhTXF3T0htU2ZBMFFpWmpVVm0yWW5wa20vVUJaRlRyNFJhYTBnTERwRC9I?=
 =?utf-8?B?VVZDaTJhZ2pOU3VLMU8wL1B2TDdMazZWT2MvSU1YQWNreEIvTTJiYW52N0x3?=
 =?utf-8?B?MVR3bEx5cml1UEVZRE5lLzc0U3F4QWwxTTBpa1cvZHROUHlnZE5pZmNFOTRo?=
 =?utf-8?B?S0FLdUh5ODkzTkZuS3RCRjcyYzBQNVJlTjN0RTd6TVNoV2ZqQ2ZFbEtNWUFG?=
 =?utf-8?B?bXdvK2dMbUxOMkttZDlNN0lNMUJrSng3L0tYU0dqNGp0OG1LbzBSZUkzQ1RC?=
 =?utf-8?Q?Zfr+ZnMf7hnphLy9elSq9Tk+JYdhilm78fOJU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?by9VZFdPQ3UrUUtuYTVCUWo4MmY4NHBJVGhFeEEyNW1SSDVKdlZaTXp0ZzlN?=
 =?utf-8?B?T29NOHR0WUxoQ1dPNC9VUGdVeFFZOUtxTnkrL21sS2x0OXIyZUZjdGFaOTAz?=
 =?utf-8?B?NXdrWDRnYWJUQ0VIMTJYVjloMnowWTJJMG5VNDlvNTlrcjkxV0p0dkEwNXQr?=
 =?utf-8?B?N2JuS2RpMytkR1hyelJVQTZDTVFvc2l1aGxpbENXQ0FPMmZORFpqTEw0aU5h?=
 =?utf-8?B?R0xhbnQrNjdxZHlCZ3dNV1lod3hlaktVbGVtamdYNDREN3NXNmtjVDREdjhZ?=
 =?utf-8?B?N2dMZk9kVlF6Y0ZUZElqVlQ0ODdYRDNnaHkya0c2dXV5WngwUVFxQ2FGM0NM?=
 =?utf-8?B?eEFiR2Nodk00VXlkQm41TmRtM1RNRWxBY2hTQ3JQYUxXeG9yeGxhL2JWOFlr?=
 =?utf-8?B?RmtETFFTaDJhRUg5MUxiQTAybHFlTGs4S3VraWpQTjR0WG1BSXZtZ0NLemVq?=
 =?utf-8?B?VG5qckJxS1V3NlhGUFVDd1ZJZU5Jb3RVcHdNQm1FT25WbnB6WGRhV1BUWGQr?=
 =?utf-8?B?OU41R3V6YkgrL0NDa0huSGs4TEFRcUlNTnpkdVZ1VlE1ZG5pSkw1bDBTUmJR?=
 =?utf-8?B?NlBkN3BONFo2VFBkMWhxcTRPNEFYeXRLV0EvR2xRb0o1aEtkams2dTFEU2FY?=
 =?utf-8?B?SExKQXF6UG1ldE9wZUJuMitDUWxMWlJNOFJaOUxXa3dUV0RsVUM2RCtjT21P?=
 =?utf-8?B?ZUI5S0cvNHI4VzhZS0FhdVZGNGE0bTl4ZHRiTk9hSVRNcUVqZmxCVmJ5QmVF?=
 =?utf-8?B?YXp0aE1ldTFnSTliOUNTS1VaWDZnVGl0VUQ5Um1HdTNVaVNXcUh1NGpDU0Iy?=
 =?utf-8?B?djJiZnVxZDBKcjBpcm5qOU10c0lUUWc4aG9VcmM4VU4ybEplUGljbm9PYTRU?=
 =?utf-8?B?YXNYc2NtMUg2UjNoTElVNEh5SjJFQTM1VjZaMHdiSWpXTHhPTGhNcCtKa2VU?=
 =?utf-8?B?SmYweVFLbndXRnpZL1FWNFQ3MXFiMjNxcDZnY1NLb2Y0UWo2LzNqc2JyOTY1?=
 =?utf-8?B?QmFOQW1kOEVhOHpYdHpURmhZeU9UdTFpOERkazF3RUxQUFU5NldZaXZKYVZv?=
 =?utf-8?B?Z1ZHTFJhQmRqOTFQTEZaQUw1cW1YYzZxWWw4WHd5dVVPWTJsTi9PTlZJNzNj?=
 =?utf-8?B?TlhCSWtVQThmTEpvU3ZOTGFoNVpiK1VWTG4wMEhmUDFTMVg2dTJiajh6cHg2?=
 =?utf-8?B?NGw3ZUxzWUIzcFExQTlsaXdWU2pMYlFOZ1JITmRtR1YvaERaQzkycTYyWmFW?=
 =?utf-8?B?Q2kyTkhOSXRkQUc1cFZZUjlhQTBNUnp3T2RyZ2tUWDFwWXZmaUhEWnRVbFpt?=
 =?utf-8?B?YkJ4emZIOStYcmRkQktLMTZXTmtrdWdWVWdBYkZ5ZU0rbTFGMGlPU0xSdUta?=
 =?utf-8?B?RDRSajdGVFRZakpKckU3NWlNWVRJL0pad3kzRHBOTzZOcGFjaytPSkltQXV4?=
 =?utf-8?B?aWxYazRiaDNtMmtmRnFRRXgzOGszWjVHcFBFRVJ4c0pEbmtOSWFnZ1d4MTJX?=
 =?utf-8?B?d3Avc3ZXN1NHUGRQRGx3NmEwN0RheGYvS0M3R25ENnpaUzVwSVYzZHpTUHVK?=
 =?utf-8?B?YVo4WWM4NkJSVVB4VWVvVlVlVmYrR2tFTjk1ODU3bFdHYjdnMFNXaE9qRUFE?=
 =?utf-8?B?TGFMcG9pRmRoSloyTUlobWNSd3dSUmttaEx6c0lWbmZoY0E1cWZRVUxvTVNh?=
 =?utf-8?B?QXo1R0wxSC8zRW44a2hKTzRlMGZxV25INTZHVmpVNS9XOXRBQ3pMbERHV2Jj?=
 =?utf-8?B?UVAxLzgzc2ltV0ZhK0xUVUZ1YUpsMkQ2NDVERUtFT2p2U3Z0d1pWS2ttOWpL?=
 =?utf-8?B?aVU3WkRLUkRud1ZhbmtWcy9xcGZmL3k0NFcyWWxUU2FsVG03RlcwSEd6cGlF?=
 =?utf-8?B?LzYvU05VVmxFSXNDL3lsamc3RWlsOFZvM1BhV2pHZXF1Snpha1NUYU1pdGpZ?=
 =?utf-8?B?clI4TldvS0RsMnovSTRBSlJyL3N3ZnU0bmRTdmxzVWUyVWFkelBNRzhLSU0v?=
 =?utf-8?B?bm5Deml5V2Z4RE5LWHUrVm5aNlBVZHJKR09VdjdCZEIra1BCeXJlRlpOZjhE?=
 =?utf-8?B?ZWFFcHYrdmc5MEZrNjBiRkE0ZTJFU0JyMmQxbXhja1psZTZQeTQySlJtMS9Y?=
 =?utf-8?B?d2x3cDFhK0J2RHlMV2hUbjBHbUZ2bFRwWHMycUZQNjVCdVdkb3o2LzBsT0hU?=
 =?utf-8?B?bGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EF1E412398E5894DB0D7E3A4A3B30F16@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ceee1fe-423c-4596-47d8-08dd07a53360
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2024 07:47:06.9274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I2v8MEST6RTHNUtpWUOtvfVVFa2Zr9Y4N2yhfa9nAyO67NFGOWeHgNwNjW6uOPczoB7ngrdo7+hQVhsp4qVaZC0VXnAxIcHq3nZrRwX09J4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
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

T24gTW9uLCAyMDI0LTEwLTI4IGF0IDE3OjEyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVGh1LCBPY3QgMjQsIDIwMjQgYXQgMTA6NDE6MjJBTSArMDAwMCwgSG9nYW5kZXIsIEpv
dW5pIHdyb3RlOgo+ID4gT24gV2VkLCAyMDI0LTEwLTA5IGF0IDIxOjIxICswMzAwLCBWaWxsZSBT
eXJqYWxhIHdyb3RlOgo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+ID4gPiAKPiA+ID4gTG9va3MgbGlrZSBDQ1MgKyBhc3luYyBmbGlw
cyBoYXMgYmVlbiBhIHRoaW5nIGZvciBhIHdoaWxlIG5vdy4KPiA+ID4gRW5hYmxlIHRoaXMgZm9y
IFRHTCsgcmVuZGVyIGNvbXByZXNzaW9uIG1vZGlmaWVycy4KPiA+ID4gCj4gPiA+IE5vdGUgdGhh
dCB3ZSBjYW4ndCB1cGRhdGUgQVVYX0RJU1QgZHVyaW5nIGFzeW5jIGZsaXBzIHdlIG11c3QKPiA+
ID4gY2hlY2sgdG8gbWFrZSBzdXJlIGl0IHJlbWFpbnMgdW5jaGFuZ2VkLgo+ID4gPiAKPiA+ID4g
V2UgYWxzbyBjYW4ndCBkbyBjbGVhciBjb2xvci4gU3VwcG9zZWRseSB0aGVyZSB3YXMgc29tZSBh
dHRlbXB0Cj4gPiA+IHRvIG1ha2UgaXQgd29yaywgYnV0IGFwcGFyZW50bHkgdGhlIGlzc3VlcyBv
bmx5IGdvdCBpcm9uZWQgb3V0Cj4gPiA+IGluIE1UTC4gRm9yIG5vdyB3ZSdsbCBub3Qgd29ycnkg
YWJvdXQgaXQgYW5kIHJlZnVzZSBhc3luYyBmbGlwcwo+ID4gPiB3aXRoIGNsZWFyIGNvbG9yIG1v
ZGlmaWVycy4KPiA+ID4gCj4gPiA+IEJzcGVjIGNsYWltcyB0aGF0IG1lZGlhIGNvbXByZXNzaW9u
IGRvZXNuJ3Qgc3VwcG9ydCBhc3luYyBmbGlwcy4KPiA+ID4gQmFzZWQgb24gYSBxdWljayB0ZXN0
IGl0IGRvZXMgc2VlbSB0byB3b3JrIHRvIHNvbWUgZGVncmVlLCBidXQKPiA+ID4gcGVyaGFwcyBp
dCBoYXMgaXNzdWVzIGFzIHdlbGwuIExldCdzIHRydXN0IHRoZSBzcGVjIGhlcmUgYW5kCj4gPiA+
IGNvbnRpbnVlIHRvIHJlZnVzZSBhc3luYyBmbGlwcyArIG1lZGlhIGNvbXByZXNzaW9uLgo+ID4g
Cj4gPiBQYXRjaCBzZWVtcyB0byBiZSBhY2NvcmRpbmcgdG8gY29tbWl0IG1lc3NhZ2UuIENvdWxk
IHlvdSBwbGVhc2UgYWRkCj4gPiBic3BlYyByZWZlcmVuY2VzIGludG8gY29tbWl0IG1lc3NhZ2U/
Cj4gCj4gVGhhdCB3b3VsZCBiZSBtb3N0bHk6IDQ5MjUwLDQ5MjUxLDQ5MjUyLDQ5MjUzCgpXaXRo
IHRoZXNlIGJzcGVjIHJlZmVyZW5jZXMgYWRkZWQ6CgpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gCj4gPiAKPiA+IEJSLAo+ID4gCj4gPiBK
b3VuaSBIw7ZnYW5kZXIKPiA+IAo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmPCoMKgwqAgfCAxNAo+
ID4gPiArKysrKysrKysrKysrLQo+ID4gPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmPCoCB8IDE3ICsrKysrKysrKystCj4gPiA+IC0tLS0KPiA+ID4gLS0K
PiA+ID4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5owqAg
fMKgIDMgKysrCj4gPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+ID4gaW5kZXggZTFmNjI1NWU5MThiLi4yMWQ0MTJiMTU4
ZTggMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4gPiA+IEBAIC02NTEyLDYgKzY1MTIsOSBAQCBzdGF0aWMgaW50IGludGVsX2Fz
eW5jX2ZsaXBfY2hlY2tfaHcoc3RydWN0Cj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
IHN0cnVjdCBpbgo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhc2UgSTkx
NV9GT1JNQVRfTU9EX1lfVElMRUQ6Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRUQ6Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRDoKPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VO
MTJfUkNfQ0NTOgo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJOTE1
X0ZPUk1BVF9NT0RfNF9USUxFRF9NVExfUkNfQ0NTOgo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9ERzJfUkNfQ0NTOgo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EXzRf
VElMRURfQk1HX0NDUzoKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXNl
IEk5MTVfRk9STUFUX01PRF80X1RJTEVEX0xOTF9DQ1M6Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFrOwo+ID4gPiBAQCAtNjUyMyw3ICs2
NTI2LDggQEAgc3RhdGljIGludCBpbnRlbF9hc3luY19mbGlwX2NoZWNrX2h3KHN0cnVjdAo+ID4g
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCBzdHJ1Y3QgaW4KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gPiDCoAo+ID4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG5ld19wbGFuZV9zdGF0ZS0+aHcuZmItPmZvcm1h
dC0+bnVtX3BsYW5lcyA+Cj4gPiA+IDEpIHsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGlmCj4gPiA+IChpbnRlbF9mb3JtYXRfaW5mb19pc195dXZfc2VtaXBsYW5hcihuZXdf
cGxhbmVfc3RhdGUtPmh3LmZiLQo+ID4gPiA+Zm9ybWF0LAo+ID4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBuZXdfcGxhbmUKPiA+ID4gX3N0
YQo+ID4gPiB0ZS0+aHcuZmItPm1vZGlmaWVyKSkgewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICJbUExBTkU6JWQ6JXNdIFBsYW5hciBmb3JtYXRzCj4gPiA+IGRvCj4g
PiA+IG5vdCBzdXBwb3J0IGFzeW5jIGZsaXBzXG4iLAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBsYW5l
LT5iYXNlLmJhc2UuaWQsIHBsYW5lLQo+ID4gPiA+IGJhc2UubmFtZSk7Cj4gPiA+IEBAIC02NTY5
LDYgKzY1NzMsMTQgQEAgc3RhdGljIGludAo+ID4gPiBpbnRlbF9hc3luY19mbGlwX2NoZWNrX2h3
KHN0cnVjdAo+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCBzdHJ1Y3QgaW4KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1F
SU5WQUw7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gPiDCoAo+
ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKHNrbF9wbGFuZV9hdXhfZGlz
dChvbGRfcGxhbmVfc3RhdGUsIDApICE9Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc2tsX3BsYW5lX2F1eF9kaXN0KG5ld19wbGFuZV9zdGF0ZSwgMCkpIHsKPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIltQTEFORTolZDolc10gQVVYX0RJ
U1QKPiA+ID4gY2Fubm90IGJlCj4gPiA+IGNoYW5nZWQgaW4gYXN5bmMgZmxpcFxuIiwKPiA+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHBsYW5lLT5iYXNlLmJhc2UuaWQsIHBsYW5lLQo+ID4gPiA+IGJhc2UubmFt
ZSk7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIC1FSU5WQUw7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4g
PiA+ICsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIWRybV9yZWN0
X2VxdWFscygmb2xkX3BsYW5lX3N0YXRlLT51YXBpLnNyYywKPiA+ID4gJm5ld19wbGFuZV9zdGF0
ZS0+dWFwaS5zcmMpIHx8Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICFkcm1fcmVjdF9lcXVhbHMoJm9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5kc3QsCj4gPiA+ICZu
ZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0KSkgewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3Bs
YW5lLmMKPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxf
cGxhbmUuYwo+ID4gPiBpbmRleCA5NTU3YjA4Y2EyZTIuLjBjMDlmNzZmODM2OSAxMDA2NDQKPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5l
LmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMKPiA+ID4gQEAgLTUyOSwxNSArNTI5LDE4IEBAIHN0YXRpYyB1MzIgdGdsX3BsYW5l
X21pbl9hbGlnbm1lbnQoc3RydWN0Cj4gPiA+IGludGVsX3BsYW5lICpwbGFuZSwKPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkgJiYK
PiA+ID4gSEFTX0FTWU5DX0ZMSVBTKGk5MTUpKQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gbXVsdCAqIDE2ICogMTAyNDsKPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gbXVsdCAqIDQgKiAxMDI0Owo+
ID4gPiAtwqDCoMKgwqDCoMKgwqBjYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX01D
X0NDUzoKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURf
R0VOMTJfUkNfQ0NTOgo+ID4gPiAtwqDCoMKgwqDCoMKgwqBjYXNlIEk5MTVfRk9STUFUX01PRF9Z
X1RJTEVEX0dFTjEyX1JDX0NDU19DQzoKPiA+ID4gLcKgwqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZP
Uk1BVF9NT0RfNF9USUxFRF9NVExfTUNfQ0NTOgo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJ
OTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9NVExfUkNfQ0NTOgo+ID4gPiAtwqDCoMKgwqDCoMKgwqBj
YXNlIEk5MTVfRk9STUFUX01PRF80X1RJTEVEX01UTF9SQ19DQ1NfQ0M6Cj4gPiA+IMKgwqDCoMKg
wqDCoMKgwqBjYXNlIEk5MTVfRk9STUFUX01PRF80X1RJTEVEX0RHMl9SQ19DQ1M6Cj4gPiA+IC3C
oMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfREcyX1JDX0NDU19DQzoK
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChJU19BTERFUkxBS0VfUChp
OTE1KSAmJgo+ID4gPiBIQVNfQVNZTkNfRkxJUFMoaTkxNSkpCj4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIG11bHQgKiAxNiAqIDEwMjQ7
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYWxsdGhyb3VnaDsKPiA+ID4g
K8KgwqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9NQ19DQ1M6
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfTVRMX01D
X0NDUzoKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURf
REcyX01DX0NDUzoKPiA+ID4gK8KgwqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9U
SUxFRF9HRU4xMl9SQ19DQ1NfQ0M6Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9GT1JN
QVRfTU9EXzRfVElMRURfTVRMX1JDX0NDU19DQzoKPiA+ID4gK8KgwqDCoMKgwqDCoMKgY2FzZSBJ
OTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9ERzJfUkNfQ0NTX0NDOgo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9CTUdfQ0NTOgo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9MTkxfQ0NTOgo+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiA+IEBAIC0xMTkyLDggKzExOTUsOCBAQCBz
dGF0aWMgdTMyIHNrbF9wbGFuZV9zdXJmKGNvbnN0IHN0cnVjdAo+ID4gPiBpbnRlbF9wbGFuZV9z
dGF0ZSAqcGxhbmVfc3RhdGUsCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcGxhbmVfc3Vy
ZjsKPiA+ID4gwqB9Cj4gPiA+IMKgCj4gPiA+IC1zdGF0aWMgdTMyIHNrbF9wbGFuZV9hdXhfZGlz
dChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUKPiA+ID4gKnBsYW5lX3N0YXRlLAo+ID4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaW50IGNvbG9yX3BsYW5lKQo+ID4gPiArdTMyIHNrbF9wbGFuZV9hdXhfZGlzdChjb25zdCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUKPiA+ID4gKnBsYW5lX3N0YXRlLAo+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBjb2xvcl9wbGFuZSkKPiA+
ID4gwqB7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUocGxhbmVfc3RhdGUtCj4gPiA+ID4gdWFwaS5wbGFuZS0+ZGV2KTsKPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gcGxhbmVf
c3RhdGUtPmh3LmZiOwo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmgKPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuaAo+ID4gPiBpbmRleCA1NDE0ODk0NzkxMzUuLjE4
YjQxZDEzZjBiZCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfdW5pdmVyc2FsX3BsYW5lLmgKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmgKPiA+ID4gQEAgLTM3LDQgKzM3LDcgQEAgYm9v
bCBpY2xfaXNfbnYxMl95X3BsYW5lKHN0cnVjdAo+ID4gPiBkcm1faTkxNV9wcml2YXRlCj4gPiA+
ICpkZXZfcHJpdiwKPiA+ID4gwqB1OCBpY2xfaGRyX3BsYW5lX21hc2sodm9pZCk7Cj4gPiA+IMKg
Ym9vbCBpY2xfaXNfaGRyX3BsYW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
ZW51bQo+ID4gPiBwbGFuZV9pZCBwbGFuZV9pZCk7Cj4gPiA+IMKgCj4gPiA+ICt1MzIgc2tsX3Bs
YW5lX2F1eF9kaXN0KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQo+ID4gPiAqcGxhbmVf
c3RhdGUsCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aW50IGNvbG9yX3BsYW5lKTsKPiA+ID4gKwo+ID4gPiDCoCNlbmRpZgo+ID4gCj4gCgo=
