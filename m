Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAK6DKYSnWkGMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:53:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9530D18124C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:53:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D3510E32A;
	Tue, 24 Feb 2026 02:53:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KWsrvG9c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3DC10E32A;
 Tue, 24 Feb 2026 02:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771901602; x=1803437602;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P69cPIcnU+noCYjLHJ17v8a4+JQFjEVoXUZBN3L6DzQ=;
 b=KWsrvG9clpwV6grD0Ac/rRRV9oquJy3DZOK+Ct7bb6bsqGG0w38sbXDV
 WdKt3UF8MfKCi2SKB/2ObXaLfKMHj4xamWhnBOfbT8XhAxtBRnQrEp2Cj
 jZVfDhJimggZ8s9imaIr/LzzWxJj15HeHI/xVaggx+doaqjPheKzRTPYR
 OkWn05Zg/CFV/euap8eG0apBD5Dg4MyGQ8RchMwI2tL71KOGEexQEH8v7
 ifCQgE/k2Lvk2brqXxz9ycfXb4BL7Ou8UbczQIBUq9kNJ+s0pxi2L53oW
 yge3tRcFkXtwdWP7+ESLaopAulpptFwy+vZKHC3GBmcxRiVttcABjXqH4 Q==;
X-CSE-ConnectionGUID: qu8LDwVoTjujFqp3ogMdqw==
X-CSE-MsgGUID: belz9v1NSqGd3GQgEocfZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83620709"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="83620709"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:53:11 -0800
X-CSE-ConnectionGUID: GkGzTeafR/Se3c2EgcPGDg==
X-CSE-MsgGUID: U1vR2n+YRqu88QPAAPByoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="253484509"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:53:10 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:53:10 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 18:53:10 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:53:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QItOitKIdZSuLQrukupkwzrfjOb++UBuwzsRV9dTmr4XKzVrZ6BBFEqhe0MehVEDkSjJspvNlL/m0mXo2Sx3UjBUVP2ChrKaUm0xi0OdK3hCiBn9ei9jir1rIJ4WzH2XF5j6lYWSRcrClZ7/tENgJ0j4cPiXLDGxpSMVhUyFiILuQbKanjutVHj3VlnSpY4NfHggVjU2SBLqxqaePJI7bcb+szio4r8ZmBriVxYpDsY9ktQN+xmIMbwDSU1e4SrobH2MXXDbVyYa7OryiuWX+5N8q3dWtxe6NvkC8mfUl0lz1ctf3M5V2e0+O5jdm0irnGVFe8A75ysVmodRpMMm9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ggwuo99MaTELmJQM1i77n3Z1d1KJw/gYi9Wc9TiBe+o=;
 b=JFyzvhBmFpCBVMDyhGOC1ZavliCU/yPd23Z5XoV8eO1zDkiqZzkJI+XczzznvkgWKhLAcQeqKagpJubDZGy/0X5W48IpatF+1HvXuwOu8gxVEBewcHnbtb3ABowISvlmc5aqPFiE3GcVKzQBWCxkLaM98NbmhyJelRPqblTT3laCcA5Yj1d3OeYPYDA7+vwsAFloXOAckDEoUUlVeLdz/rvEUoQ3uUzmvVkHj4ED3HvKopdIU5V2z87JE2tcsNMiP3guw9XSB1Zk9P38uZWqrbEfE4TIVo9aH1DLqVv4YnHdqJFqisFp0/UEHDTyR7uPWGfl0tMnRUXTfDgX7GPNcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB6265.namprd11.prod.outlook.com (2603:10b6:208:3e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 02:53:02 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 02:53:02 +0000
Message-ID: <b8f9999c-c19d-46ba-8066-4471496ef058@intel.com>
Date: Tue, 24 Feb 2026 08:22:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] drm/i915/backlight: Use intel_panel variable instead
 of intel_connector
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260220050217.2453681-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0041.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::17) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|IA1PR11MB6265:EE_
X-MS-Office365-Filtering-Correlation-Id: ef917873-176d-4535-ad29-08de734fd37b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHZMUDU1cEhNeHlZczMrOTRjRCttaitWdnRzZk4vQ0lCSENxREdCVUt4WGEy?=
 =?utf-8?B?cC8wYkd3RCtXT1RFc1NKMGV5dE8veUVtNnpkdGhqbEJqRGJTMUNuclhaT0lV?=
 =?utf-8?B?a2p3RjB2bzgwZkV4a2kzMWEwNksveEdwajN1THFtaHByM000MUJYWnJjRUhu?=
 =?utf-8?B?dzBIcTlUeldvVWRjeDAwNTRMRjVBRzRZcVFPeldlenQzYmhvdGIxSWJjOW03?=
 =?utf-8?B?VVUrUEFhZTZzYlBFY1ZON2o0SEpMRTQ0bHY5REtoYWMzUys3SGh5dGtSQXF1?=
 =?utf-8?B?eVdEQjVtbUhZMEhvbEZtaW5Zakg4QzZOSjNaK3cvWTRQcWNJMkRwWGhpOGRj?=
 =?utf-8?B?Q0prZ3RjUFVNcno3bGJhT0J0OVNtVy9veGwrN0loTU93d29vL0ZGSmpNL0Fp?=
 =?utf-8?B?b1RxQUdFYWhBaWxHRWFSRkVZMXhLSy9tM0x4cVJja1k1aUhQZGVhWFgvQ0lI?=
 =?utf-8?B?VEFiSWpNME0rdnZ4TnBnajhENXM3SWJTQ3A3YUViK25ob3NPeGxySmRMMTVF?=
 =?utf-8?B?Rll3SHRyV0w5d1J0UUk5ZUpTRnFMVWRZVEhIR3dOYldtZFF4cnc0MUVSY2ho?=
 =?utf-8?B?bzZxS0RBa3RiKzM3T0prUndtbjBBVGQyeTIxZURKajc1SDVCdWltTDdLRDVq?=
 =?utf-8?B?ak5BK0dFVW9UV2hibzV2VWdUR3k5YjZ6Yjl3T1h2NW1CMHpmV1lmNFBoKzAr?=
 =?utf-8?B?NVNQcktoRTZXUkpPWHFOWW80bmlvdnM0ZjNNTnRLYWNxdEc3ak0xNEk1M0Rs?=
 =?utf-8?B?NTRuREptVTBrOE0yYW9qR2d2RkhlMEo4YkJZWmd0TXJRUTZVamZSOTVyV3hv?=
 =?utf-8?B?eGNnQ3Axc2toWE05eDlFbzB3dkVJaXVNTzNlZVpBMFhxY0hGM3h6NEpleFEy?=
 =?utf-8?B?Nkpyb1lzOE5HWFZscmJXa2N1aEY5WVVvd2lvVjZmeVdyaS8wSDVOWjRJT3Rk?=
 =?utf-8?B?TGtYTzdiN0lzU29XTW1yYnBqOGNJYkZENGM1blBFMFFKTXBxSFpGZjBBNzdC?=
 =?utf-8?B?bmN3REc3Q3RXaVZTK20wT1FyTkdYWEE5L0VRQ0t4T0xwNGlOcGdMdHR4Ymts?=
 =?utf-8?B?THZIOVloRDhUL0RGaENFcm9aQWkyMHRmS0hiSHhNWHlhcTNhM2hOYm4veFYx?=
 =?utf-8?B?TGJyR2hYeW91U3cxd09tdDNFd0lsNjVLc2pNNTAwUGEwaWZIcm1vK01jWnBP?=
 =?utf-8?B?T1ZmbksvTlkwc3g1aU42cS9DakFINmd3TmRFQ29aOVoyS3Vac2FaN29ZRVVp?=
 =?utf-8?B?dk14Y0pWZ3hNV09SU0RTOGY5OElKRlJXZzN4NkQxVXpBSmUwMGs4Ymo3MnEv?=
 =?utf-8?B?dVJVOXZjRVlxUjQ2Z0RnczhwZStCcnpPMDQ3Z3E1TGNVU1VNUi95U1dzbmYv?=
 =?utf-8?B?SnYvQi90UlhsdUQ4d2dxbWFKVTBVMEhYM25QS3RPRmZNKzRFSUxmU3FzRTJx?=
 =?utf-8?B?SitmbFQ3SGV2UTVKRU4rOEhWVGRwdWpTampna2xyaWtQSjlMKy9iNDdyNnRE?=
 =?utf-8?B?b3cwNktFdjlaMVdLTjR5VnJPTE5vUEhwQ2JnaDRhcjlCT0RrVFVVdGFGa1F5?=
 =?utf-8?B?KzhYd0hXei91SFdnMUo1dkJjTjFQRXN3aDF0MjdHZG9WV2pMMDBNTnJ3L2dG?=
 =?utf-8?B?dXVsV1NodmRWckU2eXhrdUROekVSYTFpVm1NWFBxQ1VsOGtZeFovVmdDbTFO?=
 =?utf-8?B?dy9DK3hYaXhiMjJRR1JwVHJDQjVLdTdwa1lzcnZKSE9pS3E5bmk0OVdkcDh4?=
 =?utf-8?B?ZWxvcEEyTkNyOTZPWkNmaFVtVG5UY2RwTkVlOEI3TVJJcHFZRmYxNjF5SXZV?=
 =?utf-8?B?OWFYSDJOZ2FRYVUrNzFrODAyamFIMW5ldVdRSjBJTkF1aXo3YzBZQlQyZmZP?=
 =?utf-8?B?aXhIWDNwemF4ZVNJOHE5Y29INGFuL1dBMnByTWJBNzAxR3dLTVFNRzRGSFVL?=
 =?utf-8?B?TkhnTTdRdTlMd3g3WnpjbmdqTUZYdkdxMlN1elVFTzZXMFIycmNWRVZiMUFL?=
 =?utf-8?B?cFFlSGRqWUswZE5jbGsyQ3NwcFlUTnBwbkovMUNkNjhZcE1GRFRBUkVoNUVh?=
 =?utf-8?B?ak4xQWlGREd5dC85UzdudFVLcldJWU5kZWNiOFlQTVNQUUZmeUowZDJwUThH?=
 =?utf-8?Q?FKsw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWFWRXY1QUxZVm9ndlhXSkozUjdUZHVnQ1ExMzRldEExaGRzMkl6bC84ZlBv?=
 =?utf-8?B?SGUxSERUbEw3ZTdKL2RVbkdqYjZLS3JOY2t5M3BtdmVSSkxEMURiRm9rNW10?=
 =?utf-8?B?L1g2N0E2RVNhRnpRMkg0Q2ZPWTd5czlmUXUySWQvNkRVOXFVM0FaS2lRdXBt?=
 =?utf-8?B?RGpuendRWGlmeWp2SWlMVTNMUzRDamVONnVxY0x2UGMrTXArNUdoNzhVVm1N?=
 =?utf-8?B?SlM1eGVlS3I3QzZXMkpLR21oTjZEQ1gvRzVRLy9tWVVPRDd1cldtWXNJUUx2?=
 =?utf-8?B?c1FjaHBrTWZ2TUhZcWpveTAyL2lTaGdUUlNFaU9FekdqbkxjOE5ndmVTKzJR?=
 =?utf-8?B?UFovTFdFME02UFpSS0l0UlRiK0h2eUtyZm9PY2FnaS9QSFI0TzViZ3pia0Nr?=
 =?utf-8?B?cmppNmZOYUNQTGJXWVQ3bXIxZnJhVEhPMUJuRUdNQ1A1RGxrbDJHWXpjaEpv?=
 =?utf-8?B?emxLNVlTeVE0akI2QkxsVVppTkpFclNCS0Yva2pnQWljR0FHcnAzVXg0Q3B6?=
 =?utf-8?B?Z2NkeW5lVzV1bjR0bzQraUpsRVBtazh2Z0lSQnJQWEVCSUUwYjNIS3VYMWhK?=
 =?utf-8?B?ckFaL2hsYndGTGpTemx0MTB2UTFGb1AvdHpGOGhDT2dXUHFBNkdCT2Mwc2J1?=
 =?utf-8?B?d0VUMHNnSXRXMzJvbDBwQVQ3NTdFVE9yVWxFOTRFNlpoeUxmWXlhSmZiZnNl?=
 =?utf-8?B?MTdTcjg5MzV6dWtrcDRyalJNbDJITHM3KzhVZThvRmdSeDNqc2grcnhjbzli?=
 =?utf-8?B?Sy9ndDNqVlRxd3RvNHpkNGFRa2lSeDVUTjFQL2xnS1dPSXUvRVBMaDFyYlFL?=
 =?utf-8?B?MHZ6aTNGN0IyZ2xwZ204YTNXU1U2SytIMGt2a2I5RnlyeDIzYWJDeFVrZXBB?=
 =?utf-8?B?M0FUQStuamRLNHJxcnJwQkZZL0xNdlFHc2R6cWpLWVVHYmN3ODNUbXNPUHJ5?=
 =?utf-8?B?SkFKZzB1ZHRrY1dSNEtSZWlIa1k1eGNnWFR1OTJBUDRJcVRVbGVhOVpwcEt4?=
 =?utf-8?B?UFhleUh3SVd2MFovRnlaeWpNU3laNytqTDd6RjE2WmVPNENGdWZxY2w0U0NV?=
 =?utf-8?B?YklEMXVrbFhENGxpNHpYWENXeXppZ1QvVS95bi9DNnBENlA3dG54bnJxVUVW?=
 =?utf-8?B?ejQvR29KNFdMekJ2eFpCWkZmNkt1MGJNR1ZHaUJIdGllZmJRTnE0YWUzL0dE?=
 =?utf-8?B?YWU5TjgzZXhsenZGTVErQVNGSlkzWnZqSkxGcER5ZlpqL0xEZysrNWwyNXNs?=
 =?utf-8?B?eGZTTTk0KzVVeXZrUkxtUlJpa09MamhkaXJlRzNxNzl6QlltWmdGTm83OXhj?=
 =?utf-8?B?MXJaVnY4SFA2T3VvOU05eENkTERycDJaZ2VLZS82dW5YL3RNdVNLUVg5RmFH?=
 =?utf-8?B?OGFRSmNJeExHRkhEZFJuaHp4WmQrdVcrczY4L1NSclYrV0t4T3JYMVQ2aXk2?=
 =?utf-8?B?VkdiNlpSWW5IU3JycUlSRHpWZEtMaUVnV1pOMXUvZGVJaFRVSW9rTGgxVElD?=
 =?utf-8?B?dGFGS0gveUt0RmJBZU5NWTh4Y2xmTEplcWtnZ1BQYW5Wa1pXRXlpejJ6N0Rv?=
 =?utf-8?B?SEdLMkU4cmcrT2IxTVlTRDhTOURXRmI0b3lnUHFBTVQ2b1k2blcrWS93eUNa?=
 =?utf-8?B?SzBuTllUM3czYUYrYUIyTDQyck5Cc2xFUXg5cnlhSHd5NlpJZ2RDTzFOQ1p6?=
 =?utf-8?B?Q0ZxYzhuUnRGZmpZVjVmMjVNNUYyZk1MVkNaSVM3Z2FjWkI5ZllXaXVvb2I2?=
 =?utf-8?B?aGQvQzZob084cFlnT1MrQ1FtanJKMnA5SWV3ZzNIVUdHSU1FU093OUxKVm1a?=
 =?utf-8?B?VTRaQ2tqdGcxRG1qTVhtYUFJRUZ4VjBGTE94WHhRVjBVT0dlQU40MW9ieW5J?=
 =?utf-8?B?QXJiQXVsS2ZlYytZV2Jvb3R5WHFibWFzQWlVNWVPY0FIV3VwYStrbFFFanhR?=
 =?utf-8?B?aUZlTnozOXZQdEFhdlhvQzRmTlJ1TEpJYWNRYUw5RDlFL09mYm5sY29IUG5O?=
 =?utf-8?B?empSeWNLTHIvVkh3SnNDYjFHSVFFR082QWwycWZUcHYzOStHWW45Z3ZJcng2?=
 =?utf-8?B?ejZSQlhZcVo0RDFIa25ucSs4Z0thV3hRcDFyRWVYckdNOEJweSs1L085WnlU?=
 =?utf-8?B?dGpWcmRuc01PMkFPMStHUWJHUllmeHl1a09jcnpnc1lXZkhiTVoxRnNIN096?=
 =?utf-8?B?TnJ3bzNvdllBc2dpNnl5UytzellBN29POVJKUWN3MVlkQThWS091YkVKS0ha?=
 =?utf-8?B?QjVHL2VDOGQrVWxoNzBXWWFHLzlURHdEYWkzMlNCcVNZSCtLVFZCMzgwL1RL?=
 =?utf-8?B?QWFUYUdrUWhHT3FDWndDNTlreGdzZlpwNWVPSWZoVlpQM1RFbVV3d1dNRFEw?=
 =?utf-8?Q?32D/p1rz+L4mbFOc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef917873-176d-4535-ad29-08de734fd37b
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 02:53:02.4403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JFX6/g+r8f0lIAo0fsqS+OeDXLaJ9al4p2HWYT6U4QKCSzLhriylUFTk3fMCiruol31P5TUK86oyzykN27duXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6265
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9530D18124C
X-Rspamd-Action: no action

On 20-02-2026 10:32, Suraj Kandpal wrote:
> Use the intel_panel variable since it has already been declared and
> looks cleaner.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index c40ce310ad97..05d6d033f60b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -459,7 +459,7 @@ static u32 intel_dp_aux_vesa_get_backlight(struct intel_connector *connector, en
>   		return val / 1000;
>   	}
>   
> -	return connector->panel.backlight.level;
> +	return panel->backlight.level;
>   }
>   
>   static void
