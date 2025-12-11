Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD3BCB507A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 08:57:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6AC10E77F;
	Thu, 11 Dec 2025 07:57:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wwxpeb1h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D47210E750;
 Thu, 11 Dec 2025 07:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765439830; x=1796975830;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:references:in-reply-to:mime-version;
 bh=SFdzUPR7IcV1slY58TQM0vpyuWen8kcvvg3QH6kjTVM=;
 b=Wwxpeb1hNfgc3IHp+tkfZC/BRT8tRB2Z5g4O4jv68xUlp5EIZRp5hnMv
 TNY7Pco4Ok6Qlv63V1v5gLYw02eKtJ9TP3lx5kp3QGeNfdxF759V1/lzF
 CPm8P0FPTNe28E6QZRgXcDiLbEoP937sTunScvE7rMdREPNWMTkYXhGoQ
 92H0bMAAFgF9tbTNVLb2Gqd+f6b89W0BI5EHRQEmN07jxQx7LyWN2ow45
 +MODYlX8ZtjxtkOaerxTsphKr2Gpz2hHaS+OyclM13dwwO6nwpwrcTe/y
 FpPcd/QSQaxPOIpAtXDZbNItq3cYo96UhiHHciP3quiQx9PkKUvj95RkI Q==;
X-CSE-ConnectionGUID: wE5oZB7nTZ2QSlU/c5y0iw==
X-CSE-MsgGUID: 80aLvdikRWqo80cIGFa4sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="54964763"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="54964763"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 23:57:09 -0800
X-CSE-ConnectionGUID: 5qRzQTXaSuuAZXKbP0J/3A==
X-CSE-MsgGUID: bRkeQyVWQwuAPrMCMc1sZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="196341976"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 23:57:09 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 23:57:08 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 23:57:08 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.22) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 23:57:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DtSz5EzOnQ7xnBwgoR+M2hAL+ey2j8frrwAW8XYlVvbQf2q4OinxMCiAQIlf8T3Y9eDta7Er8iRPc/AHaLBwYZKijnWcogZ/qPiJyIAdTTaiVWHnSEfMUe8O4YXNGhTwT/Gc3w18NiSGHIoSv9YSJw3oDMVJck0naHTjlMZCJlHQyickdpeCIlYekrmFXk8Q768mRIakgLNBTMEWzo0KBcYY9VikI6cHKlX/Ntr/oFgB5cyPV4/IqwXUTt+p97pogFfuLhPDy5KGgA5m0wlbIzu95pAYsaL+/lD24PN5MDZllaxyPIPSHG9ktRwh5fGWdj7/QE6h1n1tRB3uW9lSbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w0SENG5+2ePnWF07FFJ0rFeHtBHzfbLGaDMfkgDlmqk=;
 b=lhAAHGsGnf/Nx00KKE4Av6ki4WOrAB09AIVPABrdPcDLv2tuqbxj5JBqd8FcwxQzHKSKokBWEQteJwRSQRmxDhC52uJrTOjkE7YNhsUwhjSap5A4Cfa62f5+q/HE7le4wj0b2UtbLbdsESgV05cKzuQz+H9XENC4PyBTgVTbAsvaoY/2vorsDYgbNBTy8beLFICb+zB2rlDTNzoHugpZtnyTVI8Ws0urZxJq1EBKHKYkoFQRBw0g/NWAQNNqhgN4+G4DDYeH+w0FeOC7mFzwFz7gGMDJbLstfvS2musMUTaMn5vLwAdy4p3okZ6kvPJ2v1TQ6/kmZt0cPe+SBKRb0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA3PR11MB7416.namprd11.prod.outlook.com (2603:10b6:806:316::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Thu, 11 Dec
 2025 07:57:00 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9343.011; Thu, 11 Dec 2025
 07:57:00 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 11 Dec 2025 08:56:58 +0100
Message-ID: <DEV86O4M3CTQ.2Z2OK9F9QP2WE@intel.com>
Subject: =?utf-8?q?Re:_=E2=9C=97_i915.CI.Full:_failure_for_drm/i915/gt:_use_design?=
 =?utf-8?q?ated_initializers_for_intel=5Fgt=5Fdebugfs=5Ffile?=
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, <I915-ci-infra@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <11fc31f6068cd0bb8b02ebe01d8a17914866e853.1765377880.git.sebastian.brzezinka@intel.com>
 <176541444111.75555.15493319275830747859@a3b018990fe9>
In-Reply-To: <176541444111.75555.15493319275830747859@a3b018990fe9>
X-ClientProxiedBy: WA0P291CA0007.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::11) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA3PR11MB7416:EE_
X-MS-Office365-Filtering-Correlation-Id: 67df0bdf-b857-497e-56b2-08de388add27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1lGbE5PYUNYekJjeHMyenQxRXc5dU9XU1pUVVI5UnVlWDFmY2QxVGJGTlM0?=
 =?utf-8?B?azRyQnVQemdWaEtVbWRRazgzeVM0SDVLdTc2cjhxeFhhOHFuci9UUGRtcFRB?=
 =?utf-8?B?MDRpYVhTd0QwaE9uTUZ3RlRCZjh1RGNuYVBwN1dZUnd4Vzl6NHVVcjRMcVV3?=
 =?utf-8?B?WUxpZThsME9YTUczaW9zRFB5RFU0cThiL250cjNwRW1RZy9GaTBXVFdmMTB6?=
 =?utf-8?B?b0ozVFZhMmRFenNNVi96eXpvVlo3VTVMT1UzQVp1WUZCc1VvNEUvQ2hTSlFB?=
 =?utf-8?B?VjE3T0NBRkROR3M1RTFHQlYzeHhJTnRhUTdGakRWTy92ZFdKQUVoSGNrNzhW?=
 =?utf-8?B?L2g0RjIyTXNUR0xkc2JMYVQvZ0ExaXp3RU0xenM0ZEdKWHlBZ1MxdCtqWDZM?=
 =?utf-8?B?eENKK0lGTkJCSDROYUFObEhma1diMTNvd0xkNnFMZlNWekw2TXFIYUovK0pW?=
 =?utf-8?B?L3Rna3ByR0JTQ1JaMmx0WE9zRjFJOEw2OWJ3NTEzN2V3THlzTXFvTGd1ODc3?=
 =?utf-8?B?M3FMMGhFVEZuVVUxUEIxTXRKc3BmZnZwdllBT3V3OHNNT2trUTlkZjFLNkp6?=
 =?utf-8?B?WlNOVzRFbDdKNVhmaFB1dSsyZkZtM0N4L1NQYkdka2tIazBsV0pNQjI0OUtv?=
 =?utf-8?B?RzltYXd2ZlZLSGJSdWgwVGEzUGFZT3lkeWJON1VQQ0FaekJMcTZ1NVVyOHJo?=
 =?utf-8?B?OXlUSUw2SmY0dGl0MHhjd1NTR01JMnNMWGVhUG9PN3dTdmNXZU5tcUFXM2lX?=
 =?utf-8?B?LzgwRk9SNmlySnFJREd4Mmo2L1JuRWw5a2Y0TFJSV3hGMDdzTE9TQU1jY2Rv?=
 =?utf-8?B?ck05b0t0YndWOTRDSXI0c2JFQnZqVzhaTnc5Qll3aklFUytRSGh2alNnSkgv?=
 =?utf-8?B?M2VRd2V4MlZhckRZQjhZTGx4NXcwS1U3UzZzT01jZ1JhQUJQYXNNWFJYTU9r?=
 =?utf-8?B?a2JxcUJDV2swdFFqNkRZTXVwNVZjcmVvd3pxeGQzWEE0dDlpMitYRkx0YnI5?=
 =?utf-8?B?dmtGV0VCa3htaVJCNDhTMzlQeTBleDlZVDVpeU94bnFWMU1LdHlIL3NURXRL?=
 =?utf-8?B?R0tHOUd2cTNQbXlUTTFSalFqU215S29sSGo3QnZsamRLWjBNbVR0ZWZPVDBH?=
 =?utf-8?B?bkdmaUpqSWkveStFNjRTQUt5YmpMdEphWkdPWXVWYVp1TmI2S1hmV0VnMlJU?=
 =?utf-8?B?aUY4cXJPQkk4V01Rb2Q1T2h2SWo0MXhidEpkOTE2M0UwN1pFRmFVRzEyN3pM?=
 =?utf-8?B?SUM3bERiMnBnTS9vQ2FPOGYwSDNiTThNcFF1V2E2TWlHOTZIUDRLR2RzekdF?=
 =?utf-8?B?UlB1SGVwT1VaamszVkorUFg4Yy9RSmo3WVI2RUV3cGtaRk91dEdITm9qQXRr?=
 =?utf-8?B?ODV3bmpRQ3cvM054YWtyQVZpaDBWZDVDYk42cUgzSVkzeStsS2NFdGVldThz?=
 =?utf-8?B?UTBOQjRNNnJzTEJBYWRvR0lwVG05YkpzbkFKd3pudWE4MlYvWnFXaWw3bnJu?=
 =?utf-8?B?UDFrM2xFVGZ0eTNpcWd0Zld2bVRjTGxRdDYwZzVEaUJJTEJRZTIzN3lrM2Zn?=
 =?utf-8?B?Qks0UEZlTEdoWkd2SnhnRFpNcWNSYzYxb2hVRjM2MFpzaEUwaW9PRE4zKzVS?=
 =?utf-8?B?ZHpzaGN2bE9LVnRQM2hwQlBEUkUxeklHOTZIV3p1aEJSdjAxcUtKK1FrOE5L?=
 =?utf-8?B?MTlpYUNpZVB0cktoamFTbzZNT1NYaFFNM25Kb0NSbGZTOEU0Z3duZzlOTnVV?=
 =?utf-8?B?OEtheGNRTWVsM1pYbXNkMlh3TDRMa0xMdTNyaVR5WmNKaTFYblpOeGQwSWJG?=
 =?utf-8?B?ZVpXYldZTFBSWi9vSkpwNnVWelVsUjBKZnNYczVDcUxvaDRMdE15UEx1UWZD?=
 =?utf-8?B?L2F2TmxEaFZyQVdRQUxTSnVpWEF4aGFNZzU4dzNka3FLbENRcUp3TEY1SzA3?=
 =?utf-8?Q?gwGidO1351k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmdhWlpjTXBhYXFpM0NvR0dzTE56c1RuK3JPYVQ2QzA4Ukprem5ReFFRdlRw?=
 =?utf-8?B?ZkcyRTRJbittMm5JdVh1NXVXaHBMSnFZYjl0NFBNM0Rxa21saWdYWU5tTGxm?=
 =?utf-8?B?c1ExakdsMng1dFVza1hjWEdQeWF2NHRJLzdiZnBWaXZlcW9uQUJmM2t3YzNE?=
 =?utf-8?B?YktNK1FKaXlBeDZDbXMzanlQRU03MjRKRUFZdVNXSEZ4aHU5WCsrdkNpOHhs?=
 =?utf-8?B?U245VHAzUVpSRjJuV3lrQWZQK0tIeWlseFQ3YmdYeEE3NkNtdmZUMDJLZjVy?=
 =?utf-8?B?R0w0UjhEWS9Ba0NBNENrSU8wMEllZ092elRFcWV5bG5Mc25OTTJlWDArZ2xP?=
 =?utf-8?B?LzNETHVTV2djTUlVQzJxWmFQOXM2Snc0b1ZQR3NRdTc3NkF2aUdEL2pFL1Zp?=
 =?utf-8?B?S0VqRDVQWHdiL25hSm1OWk5oQ2VMcXU4azRTZUxqTzNVRjFlWjBhSlkrM2lG?=
 =?utf-8?B?RTMvWUt1VDZnUkVRVDBRY2l4WGw5RVFwV1ZVcmV1N2NwaHcyU0lQNUZEbk9j?=
 =?utf-8?B?VmRlc0wxQVYyV2ZBbjY4K3pKeWp5c0FSMnVYTGd1T25xajVMSmdiRXdINzNm?=
 =?utf-8?B?eTA2dW42TjhvTmxadU4yM1ZVOUkvMDhXd3NYdUlPTndwWGFsbmJGb0wzcWRB?=
 =?utf-8?B?Njd6NVM4QTRjeURrYUJmTHFsdnptSFZTZ2FLMkYrT0ZobHgyL2daQkk0VUgy?=
 =?utf-8?B?cFNBWXJGOHJCY3JFN2pxY3doVDhva0xpM3ozR3laRC9xenNlSHJYbzJBL0ZK?=
 =?utf-8?B?SFhNR2tsZkQzdWR2TDltVWEvbE1NRjl5MnlQcXRmUmwzR3BlQTF2ckNjWnJ0?=
 =?utf-8?B?QUVqdVE1VWcrVjh0b21qMXJNVThJckVRYWhJbWhqSzZBcmhlVG1nYU5Zb2F0?=
 =?utf-8?B?WFduMDdZaFAxTk93NEVnRkxuaXM4dW5jL1FzZC8vNlhuU0NZVUU3K3dGNjdO?=
 =?utf-8?B?REJZNTBMazdBc2V3OGZKSElDK3YyR3U0anlqMnpWMjdmd3RpUHIvc0VFRWxz?=
 =?utf-8?B?cHBQVlo1QTl6VHhPc05wb21BTVJwdVRPUERuTk91WTZiMk0vRmZORlFCckxU?=
 =?utf-8?B?aENHNFZseklaYmJycEdxZE54alMwMWJkNjB5QWh4eFdMa3VQeTZ4M3J2Ritq?=
 =?utf-8?B?YTdYd01oRUJQdHI2cDlMYkNZa0pVM3c3V1NBeHdhMkgyMDZFOWhUeENLTXNX?=
 =?utf-8?B?UU5DdXBnTjc4S2ZINHJzWGc0NUJkL3hPUUxlK1N5b1VHaDN1YmNobUNwR1NK?=
 =?utf-8?B?dUdOeit0NGxzV25lMTBmVlBzL2ZWaS9PaHRmakN3Vk9GdFp3STJmcGc4Qk55?=
 =?utf-8?B?L3h0NGZqaklhblFjR205RmNCQ3ZHM0loL2xsZjJqQ0dtdWU1RUUzcHhXc21l?=
 =?utf-8?B?MDBrSEpUYnJxcCtabGdlbmFYaUhNam9kUFlkdEZONmh4cUJ4Mi8wK3Q4NDdv?=
 =?utf-8?B?WmdMUlhJS0tjY01iWmlaMUpTSmdVZXQzYVVqd1VnYkdmc0dyNDlua0lzNGlM?=
 =?utf-8?B?T1NiSXgzUWdPVWJEL0ZtTytDQmM5NkM0NGt2SW05SkVOeEk5bWhZWllBUnJC?=
 =?utf-8?B?dlZ3UWYxMUN4UXBqeUdWTVNDYzJNZ0p5c0hvMTB6VlNwZ1pVQ1pZMVR2M2cv?=
 =?utf-8?B?eU5KcVVyZGxVVXpSS212a1Y0US9xUGdGMGo4bXI2eWdzRjhNb1RvcHBzOGZD?=
 =?utf-8?B?azB3RHVJMXUxQ2NjeUwrVFMwK3ZhakdGcUtvNUxsSUtxNWYwR3ZJdjlycmdz?=
 =?utf-8?B?Wm14a0pFZzhyVURqbElHdjYxRExOcGk3N0tyaHc0c2x6MkVoVEJMaVFUbW5I?=
 =?utf-8?B?ck9UU3owdDk0RXdVTnRVcDNqc2hyclMvb2grSTZKZ2tEb2EyNTBtTXBrSEoz?=
 =?utf-8?B?aHBTK25wRmdpLzZwUFRwSGVLZ2tJaytjWXo0Mk9HeHdkZmhPRC9IbGgrek1u?=
 =?utf-8?B?Yno2KzJrTTlQZkpjc0ZZeUxCYWdWcHlISHBlL3R2RTYyVHVMZEdKSGZYTEVB?=
 =?utf-8?B?V0ZQakdCOE5zajlCSXA0REF2WlI2V0Fjd3hkV3A4SHdhT2hUVmg5K0wyM0I5?=
 =?utf-8?B?Tit6bDhHMjVHY1Y1NytqYUJkYUxWZk9WKzF1dTJRNVFXaGJodHVpQjEvSUQx?=
 =?utf-8?B?Q1lVVHZhZGh3QWpTek84dUFwcEQ4ays3RWtBdEhFQXU1WlorMm1OOW43c3Fl?=
 =?utf-8?B?cHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67df0bdf-b857-497e-56b2-08de388add27
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 07:57:00.1722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yyPOCQA7XFSsaoJd90cIfm9HVFLC1X4bxZKjN3jG/1E39/PXVuICuwZ82KQI///lw2ZcJFpVkgHVIjgpBxLPEzAwNvUodiCtj6eFHcG0D7w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7416
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

Hi Ci-infra team

On Thu Dec 11, 2025 at 1:54 AM CET, Patchwork wrote:
> =3D=3D Series Details =3D=3D
>
> Series: drm/i915/gt: use designated initializers for intel_gt_debugfs_fil=
e
> URL   : https://patchwork.freedesktop.org/series/158761/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> CI Bug Log - changes from CI_DRM_17656_full -> Patchwork_158761v1_full
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_158761v1_full absolutely =
need to be
>   verified manually.
>  =20
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_158761v1_full, please notify your bug team (I91=
5-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in=
 CI.
>
>  =20
>
> Participating hosts (11 -> 11)
> ------------------------------
>
>   No changes in participating hosts
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork=
_158761v1_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@gem_contexts:
>     - shard-dg1:          [PASS][1] -> [INCOMPLETE][2] +1 other test inco=
mplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17656/shard-dg1-1=
8/igt@i915_selftest@live@gem_contexts.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v1/shard=
-dg1-13/igt@i915_selftest@live@gem_contexts.html
>
>  =20
> #### Warnings ####
>
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-dg2:          [SKIP][3] ([i915#4538] / [i915#5190]) -> [ABORT=
][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17656/shard-dg2-8=
/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v1/shard=
-dg2-10/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
>
It appears the warning, which mentions an incomplete Git status, is unrelat=
ed to the patch I sent.


--=20
Best regards,
Sebastian

