Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5187A9FEF81
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 14:08:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D1A10E00C;
	Tue, 31 Dec 2024 13:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBtCdlbU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E87BF10E00C;
 Tue, 31 Dec 2024 13:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735650533; x=1767186533;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=WHP4pvlUIp4kyOqR2OusBsbUrnVfBOeBne9GsCNAenY=;
 b=gBtCdlbUMR+trx+K5Ob85k1bSbLlx42RSvsQRtkhX8+kEEcfIRy67xD2
 vkt1koje0/f7OqFOYPf2hnOEt9HQOjETcOghihzwP8+6c8Kjw8ZasvGuy
 ygAbU3U40t4tiYN4SHmrsRWKP4kkfDkDx7ixVgEYOrh9AXvV0HAzwggpz
 FRVzQv2b7Oc/d63FF9DOUrCFqLVsx3tWwgioU1v0ZFDsp1g16uN+tYfHt
 Dk3TLfV/2z4O7WbdNa1J/SHSHNrwJtgNEyHyTvwQm/QNWU4bJanSjaE37
 /Al0h25tPwZnpEeL9+4Uw8LCsPuBAmChU/DnKqoXOg+N2mEkApb5sERX0 A==;
X-CSE-ConnectionGUID: sEZgvSUdTcWAM4Isi8fFcQ==
X-CSE-MsgGUID: 8KRuUxj0SZ685Xl8phC0XQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="53333520"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="53333520"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 05:08:52 -0800
X-CSE-ConnectionGUID: FXBubmA9Tym0cybfo1LbbQ==
X-CSE-MsgGUID: 1ll8qLskTxKinNLpYR3NDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="131881880"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 05:08:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 05:08:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 05:08:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 05:08:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=THQQicuYDbdxwu9sB7CV8xTPWbxvweUJ9vkxr/mxGoSjLlMUQPPhf/qIEs4IP0Yrw/1z3bW8HEqCWcK8d3/AN7xMbpFJ44OWnj48+PSZYb7C6ig9c+Knt75MVUMeKaX03cQKNOghpXgjD5XmZYdj4px/Ff5faTkeG25QiuPgdEJIaqhoWmGqymacu3oFUtNMXVWlR8J3kcw8DN5gUshkjtZmA3mL/Iirdt3j02YZZ9ULz9YTrnIHfwbixTJBG+zBxsBIJHO7z41y3mdQ6990QePVfCnqEjd64ge8AwgvdYx8yRxYGogxOsJ4128TqFm06vtbbAsvDWhKKevORwIZ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o79NbAFMIAQOrsgK5D9wqgHlItMa1DtQ0lUCSi+skls=;
 b=y8pLn351zhg8bkd7PYp8liW4gjhI/y+bycusxt1TeBLqz3gfAoCZP8jBLBzr1MqJLzKj2fzlx5WOl2W6GGvk5KugY7t0bDIEbS6MUpad5XHXNJ8Va6FUbDbdTyPknyLWnMaC+bjxJiK8JjCsQ52vMw/8dhFijlDCfjugHdo4pyn+dSzP64rWkr8R9Z9bz4MiJnoJ+f7HJ3mKKiIw6Nx+j8HElIf5EywXP0WN/sokU9I8GMuJ+y5xOLnSAAOOn8OrN0HarROEfig8Ghp7EmIaEpkYVophiyj8m2XnXdprYhVaCkyHQ0HczwiSj3mXyajDoMMFJRruY8X4ODT46vk2lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB6096.namprd11.prod.outlook.com (2603:10b6:8:af::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Tue, 31 Dec
 2024 13:08:16 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8293.000; Tue, 31 Dec 2024
 13:08:16 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <152bf0fb81387e84a31cf472930980d6e70fea55.camel@intel.com>
References: <20241224165408.43778-1-gustavo.sousa@intel.com>
 <152bf0fb81387e84a31cf472930980d6e70fea55.camel@intel.com>
Subject: Re: [PATCH v3] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Tue, 31 Dec 2024 10:08:12 -0300
Message-ID: <173565049230.6883.15773928414485021480@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0336.namprd04.prod.outlook.com
 (2603:10b6:303:8a::11) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB6096:EE_
X-MS-Office365-Filtering-Correlation-Id: b2866230-570e-4754-20fb-08dd299c305f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UjBBUlVjOWkrbEZCMjU1RWFsZEJKKzB6bTNOSjAwZmt6Tm9IRXdER050VUgw?=
 =?utf-8?B?dldGSmtGMkJWdEUyY0w5ZkgvYitOYW5DL09hZUlIc08rMERVTmgrZFQ1NzZu?=
 =?utf-8?B?MVMwRDZtOWdyQmljdDFiRkI0dElKTytuREZmaTdPWEVaQUlPbXJSQ1Fha05O?=
 =?utf-8?B?TlN1YmhRYlRoQmxyMFVuR2Rlb1ozNDRXdm83MWVxcEpYWmVWVm9QaFB0dGor?=
 =?utf-8?B?bTljR1lFaTRqVDZ1Y0lYVEMxM0txemNlZzR2aGNCOENLQlFoaExGK1VDY0Ry?=
 =?utf-8?B?bmZDU0xxeEtzVFhNQkRKb3BUekJpa05FNU5zUWpFN2toMVl4bU5MMENNUTJ3?=
 =?utf-8?B?UzI1a2ZOVWg4Ly9vaFlzSWphS05oakx3UXZRMmVWRjNhckxFV3A3L0pMcXR2?=
 =?utf-8?B?SWZnb3JoTFcxQ2NuRmlvODVDckFEcEluL3I5V0JtS1MxQ3phRDVVUFFWKzRw?=
 =?utf-8?B?OGJrNzRPdkFPYWdBdUVGalF0M1VtN0ZRSG9ZUU0wckx2eWRRRHhmbms2dUhB?=
 =?utf-8?B?YjFZeXpGcGxpTkN0dVJ4UkpJL3Azb1puRUZiSHY2dEVMMS9TTzZYSFhMSGtV?=
 =?utf-8?B?MjBROGhnczJReUJ6YXVNT25rNll2TlQxZGp6cDVrYTZoMWxIOXNYQURUOVEx?=
 =?utf-8?B?MmprYkI4WEFzZllqVnZZYUJUYzg0Szc1bVptc2xQVVRzQ0dPQ2Npa2UxSS9Z?=
 =?utf-8?B?WGl2Ny83TU93L3YwQUU4NDVFSzJxNmlUSjNGdU5wTjFUTTMycDFkNW5LYkUw?=
 =?utf-8?B?THkyOGw1WmhVZzJ0MjFjUzBmTWdBYW9EK1BpSG1OVmJRa2RWYTV1RG4xT2Jo?=
 =?utf-8?B?SHZRcURhSDM2UlJkQ2FIN2tveFhTUmMxdTlHU3hyS0RSekhEZVdQNTdlZjVa?=
 =?utf-8?B?L1FHekt2eXdJdXlmMmVGRmhxdWgrZjgrWWpON3VhaEpDNWRWT2lzR3VwQTIw?=
 =?utf-8?B?Uzc3Zk5CVDhQdFlsaGZ4SmcwQTZCdGFGalJnemRWV0tEVWR5ajBFUVZWRmM1?=
 =?utf-8?B?cGtCYktIWjd3ckcvdUR6cUZlTE8rMWhydzRPKzNLbVN3SEVHSlhraVhadHB2?=
 =?utf-8?B?dThYeEFpYU5NNkM5czRuN3BLZGhOc0J3WWpPeERHRE5kejFUcm0vdGxUVWFE?=
 =?utf-8?B?dmJTc2h1cmErK2hRSldNVXNsc2F5QTJCUG5Gd3gzYXVDaWJtNjFxNFBPVFFU?=
 =?utf-8?B?dStMNTBGME1vbWJuOFRsbU5RQnFsNFVxWFJwMjlCVjhuT2VaYkRaM0FpUWow?=
 =?utf-8?B?Q3kya2tGdG82eXBTOUpnMUNaWUxlUThIbTgremtFRWRpUmQ1S3BMV2J1VlpZ?=
 =?utf-8?B?T0YxRkR1cktWRFlRVy9UZlJaZEVneTU5eldGVDBRWTJyeGtxcHBINEMza1Vk?=
 =?utf-8?B?R0pibDkySmlnRG9HZXhyR3dXVGRTYlhKN0R3ZFlCazZpQi8wYzFQTDFCd1lx?=
 =?utf-8?B?WWFFWVhWWlBkbkZYcitobVRlNnQzMFI4ZVkzSEJQd1IzcGk2eElVWm1tTEU5?=
 =?utf-8?B?alMxc3RLZzJINVJDMUNmQVNJWlRrNndVVC9BZDRhZFlMZ1BJRlpwbWROOTc1?=
 =?utf-8?B?SXE3SE0zV096ZWwzcEVJb2RjNGxtRE11VUx5bTNWUk0yc0Z6UXc1bnl6MGdI?=
 =?utf-8?B?TnhUSjVGYi8yMjYwTGJZRlZxSElGbU9WU0tzM0ZMaGRweGhhSXE0T2VYSjIv?=
 =?utf-8?B?LzFmQkIrTVp6QjAyRGVNSE9nODNKTmxZS2cwUVhnUDVGNEFjeFAyMG1RQUZW?=
 =?utf-8?B?c20yZjdvOHBKME04NVI1UUZhYXpJYzBBOUVPZEwwUlUwMFdsL1hIWnBtRWwz?=
 =?utf-8?B?cVpBUHRiUlNQRlFadHV5djY4dm5TSnN4OHBDd2NXMWhBb25yblBxVVVrM0JJ?=
 =?utf-8?Q?60+EbuQrjb1gB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnM4cXZhVUkrZXlpTUw2OFBaUDNxZ1N5cUVLVzFCbytyYkorN083ZFBoakxj?=
 =?utf-8?B?NHJvN2h6b1VQWGJudXB4ZlJ6OHpIekJEOXNSWVRRb2U1YVBIL2NYUTIvODE5?=
 =?utf-8?B?bUpzRVY0eVhBZGJTWVhjek9wYmx2VEdVK0YyMFEyTU9BQmYzcDEzTEhRZXZt?=
 =?utf-8?B?eXNFNkZDNWszcHI3QmdCNWlyM2QxZW1neVZ6eDhwOFRDWnVIUVNNb3dEazhJ?=
 =?utf-8?B?WGtmWmErMWRSNnV3b0NGeUZjRTRXK1FqSWJHMmVpWTZ6Wk81c1lBVW1sVGZC?=
 =?utf-8?B?TS80TVp2WGhsTkVMbzl5cGV3QVphb2JwL01nRXl2cUljcitFN01XM2RoK01s?=
 =?utf-8?B?S2tIR1VpemFpUmgzRzV4NFU2V2FwU2NoYUdaTUJWMzAwU25sYlZIY1RaNmZ2?=
 =?utf-8?B?NktUWWtTNTNLbUttNnRTQ3FKYXF6Z1BqaVlOVnQzb0dEaXRtYjRIaWczYjd5?=
 =?utf-8?B?aTVWajc5bGNmdTJrZW9pOEwrR0tKRFJKaklXa1ZCNnJrTlg5NTF6b2pucVFW?=
 =?utf-8?B?c0ZIeHpwSVlKTWRqcjFGMGtRWEFTS21mbWxzbURQNUEzR3hnVDJVSHJlcHRD?=
 =?utf-8?B?cTJxYndLbWJYVjJHL0YxOFNHL3lBcUE4YXNoa09RUHIyamdYTndheHFLdGhJ?=
 =?utf-8?B?eU9ISXJnMlZEQXZseUEvUEtRYnJRY0VDcWJuemVNd09yY3ExV1VpRFU0VCtX?=
 =?utf-8?B?ZEJPK1NiWmFjYlc4U0pBYzZYcklTUVg5T2xFQ3J5ZmR5NkpTRGNmQjFORk1j?=
 =?utf-8?B?M212K0tnYlV5UDkrN1JZUTZxVnd1aUFaKzJ2WUQyTzgxVHRTeFdIMFhpUGk3?=
 =?utf-8?B?a28ybXIzTTdxRElJam9wRGNYVEk1bUo4M25VVEdSYWJ1SnZvMHVpYXRHREVO?=
 =?utf-8?B?dEo4R1BiZWw1cjJOK2JNSE5FSkRMa1BFS2s0RmR5QUhDSWJvQ0s0RTRqZzVM?=
 =?utf-8?B?ZlBYMnlla25nbDhuRmQvRElBL2g5MGlTbngrVnF6b0w4T2F0d0NMWVhYa2xw?=
 =?utf-8?B?NXdrblgwZTdtbzZlL1AxWGdUNFNPOEtrRlQ3aGRxUVlDMmg1c3JhdHdielhT?=
 =?utf-8?B?RldRYUdtL2ZwWExhUU9OV2Q0T3JFOWxoOHR4amhHZ1cwV1RwV0kyQkxzSlY4?=
 =?utf-8?B?a212eTVST0pvT0RjRGdKVng3MWVrSFUxUlNEMTZRWFFQNWdwcGNybEtFRXBj?=
 =?utf-8?B?K3oyOWh3cFZ5VnN5T0hNQ2FVVitVa3Jja3FTVkYrc3BLVW5leWNHOFdaemI3?=
 =?utf-8?B?WGJrMkMza1k2bDVsQmlTUkJjZC9LbzhYVW41ZGJjRC80V0MzTVRRRkNYTGZk?=
 =?utf-8?B?WTQySXowWWdvdG93dFk1M0RROURIMVBzdzg2VTYwV1pRdHMrbDE3RVVMOWtK?=
 =?utf-8?B?Q2VtOGtMV2RPbjI1M0R1NFcxVGxVZ1RqSTg4alIrSU9ybk9RNm94MzJxUE0z?=
 =?utf-8?B?SlVZOUtBNms0bHJqRlVqTS9FNmI3ZmVCK2RHMkRSU1JPNlVDZTVyVm1Ta0hV?=
 =?utf-8?B?QjM5dzN4VG9wSDdTZUVkQWRwZnBtcCtWRWwxd2NtU05Pd1ZjL0ZJT25aZFdD?=
 =?utf-8?B?dTJUYUJkTTFhNHJxclA3eGw4VlE4UmwvcVRabWRIZk9YQVBMeENTZ01oSVJD?=
 =?utf-8?B?QVpMdUJaallpaWkwUFlGdzhRWHN2OWFWNTFraGVKYUYwcFZtL0dHQXR0TjB1?=
 =?utf-8?B?U2d3NGh2THdGc2VFejlJVHBHbERac2JvbUdveEZzNmtpZWk2eDdQSldzVkpj?=
 =?utf-8?B?S0FIeS9NSWZqb2lXZXhLQ1VyMExIQUNTTDlSeDFaZElmTWpPKzY3Nm85eGhs?=
 =?utf-8?B?OGxYL0pIQnVpd1JMMVVaT0pkeXM2SWF4QmhlclorU0xuK0dzZldDN0w2Y1JP?=
 =?utf-8?B?emNRTkZXL1FzaStVcURUbVFrYWJPRFRPN3BCZ2lUTVB3bE1wSVZOZzZzeS9C?=
 =?utf-8?B?WEx4cjZOc1dDaEd5OUkxWWtGRW81TVlVQVo2Rk90UGpLTVRQWnJKY0dtZEQy?=
 =?utf-8?B?Y3FzMGRpQVd1TzkxUDdpTkpOL0pLczE2WnozYzhzUFJKUVdPVDAyc1RndzlF?=
 =?utf-8?B?WXl5QWUraFEreWFkcXRYSVFpSHNoUVA2U2hCcXBYVHdlRmFybGJYZ3FVa09Q?=
 =?utf-8?B?VjZHUkl2d2d3RlI1c05TdFBkOFluZVM0YzBiMG5PcHdSNmFxcUNZZWFSMStL?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2866230-570e-4754-20fb-08dd299c305f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2024 13:08:16.2589 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4pwgLorb/ifvkIOGn7KGTi9aBghC2FgYhliRmr/bFJSa2SGLWfBnY25xX4ppD2QEyYdukrzxOjTt3Hbcn7ihOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6096
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

Quoting Hogander, Jouni (2024-12-31 08:23:58-03:00)
>On Tue, 2024-12-24 at 13:53 -0300, Gustavo Sousa wrote:
>> The CMTG is a timing generator that runs in parallel with transcoders
>> timing generators and can be used as a reference for synchronization.
>>=20
>> On PTL (display Xe3_LPD), we have observed that we are inheriting
>> from
>> GOP a display configuration with the CMTG enabled. Because our driver
>> doesn't currently implement any CMTG sequences, the CMTG ends up
>> still
>> enabled after our driver takes over.
>>=20
>> We need to make sure that the CMTG is not enabled if we are not going
>> to
>> use it. For that, let's add a partial implementation in our driver
>> that
>> only cares about disabling the CMTG if it was found enabled during
>> initial hardware readout. In the future, we can also implement
>> sequences
>> for enabling CMTG if that becomes a needed feature.
>>=20
>> For completeness, we do not only cover Xe3_LPD but also all previous
>> display IPs that provide the CMTG.
>>=20
>> v2:
>> =C2=A0- DG2 does not have the CMTG. Update HAS_CMTG() accordingly.
>> =C2=A0- Update logic to force disabling of CMTG only for initial commit.
>> v3:
>> =C2=A0- Add missing changes for v2 that were staged but not committed.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>> =C2=A0drivers/gpu/drm/i915/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 =
1 +
>> =C2=A0drivers/gpu/drm/i915/display/intel_cmtg.c=C2=A0=C2=A0=C2=A0=C2=A0 =
| 311
>> ++++++++++++++++++
>> =C2=A0drivers/gpu/drm/i915/display/intel_cmtg.h=C2=A0=C2=A0=C2=A0=C2=A0 =
|=C2=A0 38 +++
>> =C2=A0.../gpu/drm/i915/display/intel_cmtg_regs.h=C2=A0=C2=A0=C2=A0 |=C2=
=A0 21 ++
>> =C2=A0drivers/gpu/drm/i915/display/intel_display.c=C2=A0 |=C2=A0 11 +
>> =C2=A0.../gpu/drm/i915/display/intel_display_core.h |=C2=A0=C2=A0 4 +
>> =C2=A0.../drm/i915/display/intel_display_device.h=C2=A0=C2=A0 |=C2=A0=C2=
=A0 1 +
>> =C2=A0.../drm/i915/display/intel_display_driver.c=C2=A0=C2=A0 |=C2=A0=C2=
=A0 5 +
>> =C2=A0.../drm/i915/display/intel_modeset_setup.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0 5 +
>> =C2=A0drivers/gpu/drm/i915/i915_reg.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
>> =C2=A0drivers/gpu/drm/xe/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0 1 +
>> =C2=A011 files changed, 399 insertions(+)
>> =C2=A0create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
>> =C2=A0create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
>> =C2=A0create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile
>> b/drivers/gpu/drm/i915/Makefile
>> index 3dda9f0eda82..7e7414453765 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -231,6 +231,7 @@ i915-y +=3D \
>> =C2=A0        display/intel_bo.o \
>> =C2=A0        display/intel_bw.o \
>> =C2=A0        display/intel_cdclk.o \
>> +        display/intel_cmtg.o \
>> =C2=A0        display/intel_color.o \
>> =C2=A0        display/intel_combo_phy.o \
>> =C2=A0        display/intel_connector.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
>> b/drivers/gpu/drm/i915/display/intel_cmtg.c
>> new file mode 100644
>> index 000000000000..27491497f515
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>> @@ -0,0 +1,311 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright (C) 2024 Intel Corporation
>> + */
>> +
>> +#include <linux/string.h>
>> +#include <linux/string_choices.h>
>> +#include <linux/types.h>
>> +
>> +#include "i915_drv.h"
>> +#include "i915_reg.h"
>> +#include "intel_crtc.h"
>> +#include "intel_de.h"
>> +#include "intel_cmtg.h"
>> +#include "intel_cmtg_regs.h"
>> +#include "intel_display_device.h"
>> +#include "intel_display_types.h"
>> +
>> +/**
>> + * DOC: Common Primary Timing Generator (CMTG)
>> + *
>> + * The CMTG is a timing generator that runs in parallel to
>> transcoders timing
>> + * generators (TG) to provide a synchronization mechanism where CMTG
>> acts as
>> + * primary and transcoders TGs act as secondary to the CMTG. The
>> CMTG outputs
>> + * its TG start and frame sync signals to the transcoders that are
>> configured
>> + * as secondary, which use those signals to synchronize their own
>> timing with
>> + * the CMTG's.
>> + *
>> + * The CMTG can be used only with eDP or MIPI command mode and
>> supports the
>> + * following use cases:
>> + *
>> + * - Dual eDP: The CMTG can be used to keep two eDP TGs in sync when
>> on a
>> + *=C2=A0=C2=A0 dual eDP configuration (with or without PSR/PSR2 enabled=
).
>> + *
>> + * - Single eDP as secondary: It is also possible to use a single
>> eDP
>> + *=C2=A0=C2=A0 configuration with the transcoder TG as secondary to the=
 CMTG.
>> That would
>> + *=C2=A0=C2=A0 allow a flow that would not require a modeset on the exi=
sting
>> eDP when a
>> + *=C2=A0=C2=A0 new eDP is added for a dual eDP configuration with CMTG.
>> + *
>> + * - DC6v: In DC6v, the transcoder might be off but the CMTG keeps
>> running to
>> + *=C2=A0=C2=A0 maintain frame timings. When exiting DC6v, the transcode=
r TG
>> then is
>> + *=C2=A0=C2=A0 synced back the CMTG.
>> + *
>> + * Currently, the driver does not use the CMTG, but we need to make
>> sure that
>> + * we disable it in case we inherit a display configuration with it
>> enabled.
>> + */
>> +
>> +static struct intel_global_state *
>> +intel_cmtg_duplicate_state(struct intel_global_obj *obj)
>> +{
>> +        struct intel_cmtg_state *cmtg_state =3D
>> to_intel_cmtg_state(obj->state);
>> +
>> +        cmtg_state =3D kmemdup(cmtg_state, sizeof(*cmtg_state),
>> GFP_KERNEL);
>> +        if (!cmtg_state)
>> +                return NULL;
>> +
>> +        return &cmtg_state->base;
>> +}
>> +
>> +static void intel_cmtg_destroy_state(struct intel_global_obj *obj,
>> +                                =C2=A0=C2=A0=C2=A0=C2=A0 struct intel_g=
lobal_state
>> *state)
>> +{
>> +        kfree(state);
>> +}
>> +
>> +static const struct intel_global_state_funcs intel_cmtg_state_funcs
>> =3D {
>> +        .atomic_duplicate_state =3D intel_cmtg_duplicate_state,
>> +        .atomic_destroy_state =3D intel_cmtg_destroy_state,
>> +};
>> +
>> +static bool intel_cmtg_has_cmtg_b(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) >=3D 20;
>> +}
>> +
>> +static bool intel_cmtg_has_clock_sel(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) >=3D 14;
>> +}
>> +
>> +static bool intel_cmtg_requires_modeset(struct intel_display
>> *display)
>> +{
>> +        return DISPLAY_VER(display) < 20;
>> +}
>> +
>> +static void intel_cmtg_dump_state(struct intel_display *display,
>> +                                =C2=A0 struct intel_cmtg_state
>> *cmtg_state)
>> +{
>> +        if (intel_cmtg_has_cmtg_b(display))
>> +                drm_dbg_kms(display->drm,
>> +                        =C2=A0=C2=A0=C2=A0 "CMTG state readout: CMTG A:=
 %s, CMTG B:
>> %s, transcoder A secondary: %s, transcoder B secondary: %s\n",
>> +                        =C2=A0=C2=A0=C2=A0 str_enabled_disabled(cmtg_st=
ate-
>> >cmtg_a_enable),
>> +                        =C2=A0=C2=A0=C2=A0 str_enabled_disabled(cmtg_st=
ate-
>> >cmtg_b_enable),
>> +                        =C2=A0=C2=A0=C2=A0 str_yes_no(cmtg_state-
>> >trans_a_secondary),
>> +                        =C2=A0=C2=A0=C2=A0 str_yes_no(cmtg_state-
>> >trans_b_secondary));
>> +        else
>> +                drm_dbg_kms(display->drm,
>> +                        =C2=A0=C2=A0=C2=A0 "CMTG state readout: %s, Tra=
nscoder A
>> secondary: %s, Transcoder B secondary: %s\n",
>> +                        =C2=A0=C2=A0=C2=A0 str_enabled_disabled(cmtg_st=
ate-
>> >cmtg_a_enable),
>> +                        =C2=A0=C2=A0=C2=A0 str_yes_no(cmtg_state-
>> >trans_a_secondary),
>> +                        =C2=A0=C2=A0=C2=A0 str_yes_no(cmtg_state-
>> >trans_b_secondary));
>> +}
>> +
>> +int intel_cmtg_init(struct intel_display *display)
>> +{
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        struct intel_cmtg_state *cmtg_state;
>> +
>> +        cmtg_state =3D kzalloc(sizeof(*cmtg_state), GFP_KERNEL);
>> +        if (!cmtg_state)
>> +                return -ENOMEM;
>> +
>> +        intel_atomic_global_obj_init(i915, &display->cmtg.obj,
>> +                                =C2=A0=C2=A0=C2=A0=C2=A0 &cmtg_state->b=
ase,
>> +                                =C2=A0=C2=A0=C2=A0=C2=A0 &intel_cmtg_st=
ate_funcs);
>> +
>> +        return 0;
>> +}
>> +
>> +void intel_cmtg_readout_state(struct intel_display *display,
>> +                        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_cmt=
g_state *cmtg_state)
>> +{
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        u32 val;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return;
>> +
>> +        val =3D intel_de_read(display, TRANS_CMTG_CTL_A);
>> +        cmtg_state->cmtg_a_enable =3D val & CMTG_ENABLE;
>> +
>> +        if (intel_cmtg_has_cmtg_b(display)) {
>> +                val =3D intel_de_read(display, TRANS_CMTG_CTL_B);
>> +                cmtg_state->cmtg_b_enable =3D val & CMTG_ENABLE;
>> +        }
>> +
>> +        if (intel_crtc_for_pipe(display, PIPE_A)) {
>> +                val =3D intel_de_read(display,
>> TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_A));
>> +                cmtg_state->trans_a_secondary =3D val &
>> CMTG_SECONDARY_MODE;
>> +        }
>> +
>> +        if (intel_crtc_for_pipe(display, PIPE_B)) {
>> +                val =3D intel_de_read(display,
>> TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_B));
>> +                cmtg_state->trans_b_secondary =3D val &
>> CMTG_SECONDARY_MODE;
>> +        }
>> +
>> +        intel_cmtg_dump_state(display, cmtg_state);
>> +}
>> +
>> +static struct intel_cmtg_state *
>> +intel_atomic_get_cmtg_state(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_global_state *obj_state =3D
>> +                intel_atomic_get_global_obj_state(state,
>> +                                                =C2=A0 &display-
>> >cmtg.obj);
>> +
>> +        if (IS_ERR(obj_state))
>> +                return ERR_CAST(obj_state);
>> +
>> +        return to_intel_cmtg_state(obj_state);
>> +}
>> +
>> +static struct intel_cmtg_state *
>> +intel_atomic_get_old_cmtg_state(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_global_state *obj_state =3D
>> +                intel_atomic_get_old_global_obj_state(state,
>> +                                                =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &display-
>> >cmtg.obj);
>> +
>> +        if (!obj_state)
>> +                return NULL;
>> +
>> +        return to_intel_cmtg_state(obj_state);
>> +}
>> +
>> +static struct intel_cmtg_state *
>> +intel_atomic_get_new_cmtg_state(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_global_state *obj_state =3D
>> +                intel_atomic_get_new_global_obj_state(state,
>> +                                                =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &display-
>> >cmtg.obj);
>> +
>> +        if (!obj_state)
>> +                return NULL;
>> +
>> +        return to_intel_cmtg_state(obj_state);
>> +}
>> +
>> +static bool intel_cmtg_state_changed(struct intel_cmtg_state
>> *old_cmtg_state,
>> +                                =C2=A0=C2=A0=C2=A0=C2=A0 struct intel_c=
mtg_state
>> *new_cmtg_state)
>> +{
>> +        if (!new_cmtg_state)
>> +                return false;
>> +
>> +        return old_cmtg_state->cmtg_a_enable !=3D new_cmtg_state-
>> >cmtg_a_enable ||
>> +                old_cmtg_state->cmtg_b_enable !=3D new_cmtg_state-
>> >cmtg_b_enable ||
>> +                old_cmtg_state->trans_a_secondary !=3D new_cmtg_state-
>> >trans_a_secondary ||
>> +                old_cmtg_state->trans_b_secondary !=3D new_cmtg_state-
>> >trans_b_secondary;
>> +}
>> +
>> +static int intel_cmtg_check_modeset(struct intel_atomic_state
>> *state,
>> +                                =C2=A0=C2=A0=C2=A0 struct intel_cmtg_st=
ate
>> *old_cmtg_state,
>> +                                =C2=A0=C2=A0=C2=A0 struct intel_cmtg_st=
ate
>> *new_cmtg_state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        u8 pipe_mask;
>> +
>> +        if (!intel_cmtg_requires_modeset(display))
>> +                return 0;
>> +
>> +        pipe_mask =3D 0;
>> +
>> +        if (old_cmtg_state->trans_a_secondary !=3D new_cmtg_state-
>> >trans_a_secondary)
>> +                pipe_mask |=3D BIT(PIPE_A);
>> +
>> +        if (old_cmtg_state->trans_b_secondary !=3D new_cmtg_state-
>> >trans_b_secondary)
>> +                pipe_mask |=3D BIT(PIPE_B);
>
>On PTL this would mean we are always doing full modeset on boot? Is

No. Because of intel_cmtg_requires_modeset(), we only go through this if
we are on a display prior to Xe2_LPD (LNL's display). So, for PTL, a
modeset will not be required.

>full modeset really required when disabling CTMG? Bspec says:
>
>"Switching between the local timing generator within the eDP and the
>CMTG will require a modeset."

This is from the BSpec for pre-LNL displays (i.e. pre-Xe2_LPD). The
BSpec for LNL and PTL does not impose this restriction.

>
>Are we really using CTMG or is it just enabled?

The setup from GOP is using the CMTG with Pipe A.

--
Gustavo Sousa

>
>BR,
>
>Jouni H=C3=B6gander
>
>> +
>> +        if (!pipe_mask)
>> +                return 0;
>> +
>> +        return intel_modeset_pipes_in_mask_early(state, "updating
>> CMTG config", pipe_mask);
>> +}
>> +
>> +int intel_cmtg_force_disabled(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_cmtg_state *new_cmtg_state;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return 0;
>> +
>> +        new_cmtg_state =3D intel_atomic_get_cmtg_state(state);
>> +        if (IS_ERR(new_cmtg_state))
>> +                return PTR_ERR(new_cmtg_state);
>> +
>> +        new_cmtg_state->cmtg_a_enable =3D false;
>> +        new_cmtg_state->cmtg_b_enable =3D false;
>> +        new_cmtg_state->trans_a_secondary =3D false;
>> +        new_cmtg_state->trans_b_secondary =3D false;
>> +        return 0;
>> +}
>> +
>> +int intel_cmtg_atomic_check(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_cmtg_state *old_cmtg_state;
>> +        struct intel_cmtg_state *new_cmtg_state;
>> +        int ret;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return 0;
>> +
>> +        old_cmtg_state =3D intel_atomic_get_old_cmtg_state(state);
>> +        new_cmtg_state =3D intel_atomic_get_new_cmtg_state(state);
>> +        if (!intel_cmtg_state_changed(old_cmtg_state,
>> new_cmtg_state))
>> +                return 0;
>> +
>> +        ret =3D intel_cmtg_check_modeset(state, old_cmtg_state,
>> new_cmtg_state);
>> +        if (ret)
>> +                return ret;
>> +
>> +        return intel_atomic_serialize_global_state(&new_cmtg_state-
>> >base);
>> +}
>> +
>> +/*
>> + * Access to CMTG registers require the PHY PLL that provides its
>> clock to be
>> + * running (which is configured via CMTG_CLK_SEL). As such, this
>> function needs
>> + * to be called before intel_commit_modeset_disables() to ensure
>> that the PHY
>> + * PLL is still enabled when doing this.
>> + */
>> +void intel_cmtg_disable(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        struct intel_cmtg_state *old_cmtg_state;
>> +        struct intel_cmtg_state *new_cmtg_state;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return;
>> +
>> +        old_cmtg_state =3D intel_atomic_get_old_cmtg_state(state);
>> +        new_cmtg_state =3D intel_atomic_get_new_cmtg_state(state);
>> +        if (!intel_cmtg_state_changed(old_cmtg_state,
>> new_cmtg_state))
>> +                return;
>> +
>> +        drm_info(display->drm, "Disabling CMTG\n");
>> +
>> +        intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(i915,
>> TRANSCODER_A), CMTG_SECONDARY_MODE, 0);
>> +        intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(i915,
>> TRANSCODER_B), CMTG_SECONDARY_MODE, 0);
>> +
>> +        intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE, 0);
>> +
>> +        if (intel_cmtg_has_cmtg_b(display))
>> +                intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE,
>> 0);
>> +
>> +        if (intel_cmtg_has_clock_sel(display)) {
>> +                u32 clk_sel_clr =3D CMTG_CLK_SEL_A_MASK;
>> +                u32 clk_sel_set =3D CMTG_CLK_SEL_A_DISABLED;
>> +
>> +                if (intel_cmtg_has_cmtg_b(display)) {
>> +                        clk_sel_clr |=3D CMTG_CLK_SEL_B_MASK;
>> +                        clk_sel_set |=3D CMTG_CLK_SEL_B_DISABLED;
>> +                }
>> +
>> +                intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
>> clk_sel_set);
>> +        }
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
>> b/drivers/gpu/drm/i915/display/intel_cmtg.h
>> new file mode 100644
>> index 000000000000..4dfd31906d81
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>> @@ -0,0 +1,38 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2024 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_CMTG_H__
>> +#define __INTEL_CMTG_H__
>> +
>> +#include "intel_display_core.h"
>> +#include "intel_global_state.h"
>> +
>> +/*
>> + * We describe here only the minimum state required to allow us to
>> properly
>> + * disable the CMTG if necessary.
>> + */
>> +struct intel_cmtg_state {
>> +        struct intel_global_state base;
>> +
>> +        bool cmtg_a_enable;
>> +        /*
>> +         * Xe3_LPD adds a second CMTG that can be used for dual eDP
>> async mode.
>> +         */
>> +        bool cmtg_b_enable;
>> +        bool trans_a_secondary;
>> +        bool trans_b_secondary;
>> +};
>> +
>> +#define to_intel_cmtg_state(global_state) \
>> +        container_of_const((global_state), struct intel_cmtg_state,
>> base)
>> +
>> +int intel_cmtg_init(struct intel_display *display);
>> +void intel_cmtg_readout_state(struct intel_display *display,
>> +                        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_cmt=
g_state *cmtg_state);
>> +int intel_cmtg_force_disabled(struct intel_atomic_state *state);
>> +int intel_cmtg_atomic_check(struct intel_atomic_state *state);
>> +void intel_cmtg_disable(struct intel_atomic_state *state);
>> +
>> +#endif /* __INTEL_CMTG_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>> new file mode 100644
>> index 000000000000..082f96cad284
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>> @@ -0,0 +1,21 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2024 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_CMTG_REGS_H__
>> +#define __INTEL_CMTG_REGS_H__
>> +
>> +#include "i915_reg_defs.h"
>> +
>> +#define CMTG_CLK_SEL                        _MMIO(0x46160)
>> +#define CMTG_CLK_SEL_A_MASK                REG_GENMASK(31, 29)
>> +#define
>> CMTG_CLK_SEL_A_DISABLED                REG_FIELD_PREP(CMTG_CLK_SEL_A_MAS=
K, 0)
>> +#define CMTG_CLK_SEL_B_MASK                REG_GENMASK(15, 13)
>> +#define
>> CMTG_CLK_SEL_B_DISABLED                REG_FIELD_PREP(CMTG_CLK_SEL_B_MAS=
K, 0)
>> +
>> +#define TRANS_CMTG_CTL_A                _MMIO(0x6fa88)
>> +#define TRANS_CMTG_CTL_B                _MMIO(0x6fb88)
>> +#define=C2=A0 CMTG_ENABLE                        REG_BIT(31)
>> +
>> +#endif /* __INTEL_CMTG_REGS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 4271da219b41..098985ad7ad4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -62,6 +62,7 @@
>> =C2=A0#include "intel_bw.h"
>> =C2=A0#include "intel_cdclk.h"
>> =C2=A0#include "intel_clock_gating.h"
>> +#include "intel_cmtg.h"
>> =C2=A0#include "intel_color.h"
>> =C2=A0#include "intel_crt.h"
>> =C2=A0#include "intel_crtc.h"
>> @@ -6828,6 +6829,10 @@ int intel_atomic_check(struct drm_device *dev,
>> =C2=A0        if (ret)
>> =C2=A0                goto fail;
>> =C2=A0
>> +        ret =3D intel_cmtg_atomic_check(state);
>> +        if (ret)
>> +                goto fail;
>> +
>> =C2=A0        for_each_new_intel_crtc_in_state(state, crtc,
>> new_crtc_state, i) {
>> =C2=A0                if (!intel_crtc_needs_modeset(new_crtc_state))
>> =C2=A0                        continue;
>> @@ -7757,6 +7762,8 @@ static void intel_atomic_commit_tail(struct
>> intel_atomic_state *state)
>> =C2=A0                        intel_modeset_get_crtc_power_domains(new_c=
rt
>> c_state, &put_domains[crtc->pipe]);
>> =C2=A0        }
>> =C2=A0
>> +        intel_cmtg_disable(state);
>> +
>> =C2=A0        intel_commit_modeset_disables(state);
>> =C2=A0
>> =C2=A0        intel_dp_tunnel_atomic_alloc_bw(state);
>> @@ -8582,6 +8589,10 @@ int intel_initial_commit(struct drm_device
>> *dev)
>> =C2=A0                }
>> =C2=A0        }
>> =C2=A0
>> +        ret =3D
>> intel_cmtg_force_disabled(to_intel_atomic_state(state));
>> +        if (ret)
>> +                goto out;
>> +
>> =C2=A0        ret =3D drm_atomic_commit(state);
>> =C2=A0
>> =C2=A0out:
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 554870d2494b..d0b039114e2d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -354,6 +354,10 @@ struct intel_display {
>> =C2=A0                unsigned int skl_preferred_vco_freq;
>> =C2=A0        } cdclk;
>> =C2=A0
>> +        struct {
>> +                struct intel_global_obj obj;
>> +        } cmtg;
>> +
>> =C2=A0        struct {
>> =C2=A0                struct drm_property_blob *glk_linear_degamma_lut;
>> =C2=A0        } color;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
>> b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 9a333d9e6601..a126247eb6b8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -145,6 +145,7 @@ struct intel_display_platforms {
>> =C2=A0#define HAS_BIGJOINER(__display)        (DISPLAY_VER(__display) >=
=3D
>> 11 && HAS_DSC(__display))
>> =C2=A0#define HAS_CDCLK_CRAWL(__display)        (DISPLAY_INFO(__display)=
-
>> >has_cdclk_crawl)
>> =C2=A0#define HAS_CDCLK_SQUASH(__display)        (DISPLAY_INFO(__display=
)-
>> >has_cdclk_squash)
>> +#define HAS_CMTG(__display)                (!(__display)->platform.dg2
>> && DISPLAY_VER(__display) >=3D 13)
>> =C2=A0#define HAS_CUR_FBC(__display)                (!HAS_GMCH(__display=
) &&
>> IS_DISPLAY_VER(__display, 7, 13))
>> =C2=A0#define HAS_D12_PLANE_MINIMIZATION(__display)        ((__display)-
>> >platform.rocketlake || (__display)->platform.alderlake_s)
>> =C2=A0#define
>> HAS_DBUF_OVERLAP_DETECTION(__display)        (DISPLAY_RUNTIME_INFO(__dis=
play)->has_dbuf_overlap_detection)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> index 497b4a1f045f..3e1483814e8d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> @@ -25,6 +25,7 @@
>> =C2=A0#include "intel_bios.h"
>> =C2=A0#include "intel_bw.h"
>> =C2=A0#include "intel_cdclk.h"
>> +#include "intel_cmtg.h"
>> =C2=A0#include "intel_color.h"
>> =C2=A0#include "intel_crtc.h"
>> =C2=A0#include "intel_display_debugfs.h"
>> @@ -269,6 +270,10 @@ int intel_display_driver_probe_noirq(struct
>> intel_display *display)
>> =C2=A0        if (ret)
>> =C2=A0                goto cleanup_vga_client_pw_domain_dmc;
>> =C2=A0
>> +        ret =3D intel_cmtg_init(display);
>> +        if (ret)
>> +                goto cleanup_vga_client_pw_domain_dmc;
>> +
>> =C2=A0        intel_init_quirks(display);
>> =C2=A0
>> =C2=A0        intel_fbc_init(display);
>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> index 9db30db428f7..737a43916ac5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> @@ -15,6 +15,7 @@
>> =C2=A0#include "i9xx_wm.h"
>> =C2=A0#include "intel_atomic.h"
>> =C2=A0#include "intel_bw.h"
>> +#include "intel_cmtg.h"
>> =C2=A0#include "intel_color.h"
>> =C2=A0#include "intel_crtc.h"
>> =C2=A0#include "intel_crtc_state_dump.h"
>> @@ -702,6 +703,8 @@ static void intel_modeset_readout_hw_state(struct
>> drm_i915_private *i915)
>> =C2=A0        struct intel_display *display =3D &i915->display;
>> =C2=A0        struct intel_cdclk_state *cdclk_state =3D
>> =C2=A0                to_intel_cdclk_state(i915->display.cdclk.obj.state=
);
>> +        struct intel_cmtg_state *cmtg_state =3D
>> +                to_intel_cmtg_state(display->cmtg.obj.state);
>> =C2=A0        struct intel_dbuf_state *dbuf_state =3D
>> =C2=A0                to_intel_dbuf_state(i915->display.dbuf.obj.state);
>> =C2=A0        struct intel_pmdemand_state *pmdemand_state =3D
>> @@ -906,6 +909,8 @@ static void intel_modeset_readout_hw_state(struct
>> drm_i915_private *i915)
>> =C2=A0        }
>> =C2=A0
>> =C2=A0        intel_pmdemand_init_pmdemand_params(i915, pmdemand_state);
>> +
>> +        intel_cmtg_readout_state(display, cmtg_state);
>> =C2=A0}
>> =C2=A0
>> =C2=A0static void
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h
>> b/drivers/gpu/drm/i915/i915_reg.h
>> index 765e6c0528fb..b34bccfb1ccc 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3565,6 +3565,7 @@ enum skl_power_gate {
>> =C2=A0#define _TRANS_DDI_FUNC_CTL2_DSI1        0x6bc04
>> =C2=A0#define TRANS_DDI_FUNC_CTL2(dev_priv,
>> tran)        _MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL2_A)
>> =C2=A0#define=C2=A0 PORT_SYNC_MODE_ENABLE                        REG_BIT=
(4)
>> +#define=C2=A0 CMTG_SECONDARY_MODE                        REG_BIT(3)
>> =C2=A0#define=C2=A0 PORT_SYNC_MODE_MASTER_SELECT_MASK        REG_GENMASK=
(2, 0)
>> =C2=A0#define=C2=A0
>> PORT_SYNC_MODE_MASTER_SELECT(x)        REG_FIELD_PREP(PORT_SYNC_MODE_MAS=
TER_SELECT_MASK,(x))
>> =C2=A0
>> diff --git a/drivers/gpu/drm/xe/Makefile
>> b/drivers/gpu/drm/xe/Makefile
>> index 5c97ad6ed738..cd0e25fce14b 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -199,6 +199,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>> =C2=A0        i915-display/intel_bios.o \
>> =C2=A0        i915-display/intel_bw.o \
>> =C2=A0        i915-display/intel_cdclk.o \
>> +        i915-display/intel_cmtg.o \
>> =C2=A0        i915-display/intel_color.o \
>> =C2=A0        i915-display/intel_combo_phy.o \
>> =C2=A0        i915-display/intel_connector.o \
>
