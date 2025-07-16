Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159D1B07747
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 15:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEAE10E7C3;
	Wed, 16 Jul 2025 13:47:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dyTII5HV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EBF10E7C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 13:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752673653; x=1784209653;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RYSAXDzuUSbwuovAZweFcKQrYjVUhhu7iKxjkxi6jts=;
 b=dyTII5HVDXu0AV7tutsjdFvh5yhQ20T/smWfU0zsiBStFW8FTzzxfpcA
 jNnqAPsdoQqvn2CW56WPado5Xqd45wlVO10YVWcJbxUF5lGpDVFirXBl4
 CiVdQmYoy2ChXe3J+12iOlDea0NAD2ZOua596xbbKMeoVeAzu+k4vndNN
 0SA2FGWeKLDHQ8rYuFwE3KvmdJ1q0yqhxiNmtAixM39xqDbUXP+IWO8bC
 dk6c0F3YaBvOAvJkF0NcOq0sm1VKedEBEYHAwGMpBeb4PJPdSrLYcF7Ib
 vyearQJjaoCcO7LP/OLaxBvw/xuHZopY+UsWAAV9WiO9xqROY4EdP/sbn Q==;
X-CSE-ConnectionGUID: 5VEAEVkoR0WZe6b23EXcDQ==
X-CSE-MsgGUID: Tr6bpoPhQfmhogDiThhZaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="72492491"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="72492491"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:47:32 -0700
X-CSE-ConnectionGUID: 07dvTlQASfSj1PrfIhLLYQ==
X-CSE-MsgGUID: weB6fqVvTc+52xseMBp6Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="188468210"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:47:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 06:47:31 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 06:47:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 16 Jul 2025 06:47:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M6aPLmReiUDG+agDL/fSNgF0J05qbmZ2KW4uqErsUvEjE0Z/WUT2fk9s8yempA+bEFPosgRRi0NKksVmYjZLM3BpsetAppHg9aCZnGi3MzT6SVSY9v5in5BwfGbP1fEvkCUhqpSLPe0nS39JTK3mWdKoygA5d5cTtwM9dg1REOB1jMyH4yewdPPxMDeYZX5w6HAOrUq4A22nCncNlCKfo1VFdVQWC/EqhP092imUwbIEimU9Hl3CuL6ukQv3Q9KdGsvb9TCejCo8EbMh+fu4zCWiG+oK/ILONJrKtATwrOek+Uw2Af1vjSeC4rJA4ITCLrjmMHhv2k9gmMTgXBbkAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5UcmSxzSMm4iyxHjwlfvpw0MuvLwmxyec6iiGxWR/54=;
 b=M9Nco6pk6UmbtoEVXmsdBX2WDGpCfQ7ULERFnQuCKZ84ez6WXWnuvD51EduOXNbWAT7Vy5AiZyUESkEivg2daY5LWMME9A2c97sONgXoDue85PRnw7hyqqS9VfsMfGGJV8ErpoDTFOCTW7CcLcjvqJTbHFKU2sfe8BbRkdH6bry+OCDkaVv0xu8aOTz0m1Ms8D9NoE3duLje3DZ+hUPixUUfaOzHRVUIa5V6+kPuYwhp7s2zjcm2+Vll646r+4CNfC0AH71+4xWEBhb+pXr5Pab+xNP/1PodGI8Kb3bhylav4VjeN7zj9NSVJ0MCzBIulChGLUeBPFV5AfD/lHnFPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB7662.namprd11.prod.outlook.com (2603:10b6:510:27d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Wed, 16 Jul
 2025 13:47:28 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 13:47:28 +0000
Date: Wed, 16 Jul 2025 13:47:19 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>
Subject: Re: [PATCH 2/3] drm/i915: Add braces around the else block in
 clflush_write32()
Message-ID: <ngr4desu7xlkg5ja3vtvkwvdeznrhx7iej6wn2cx4c4lb3swt7@4yixyjhef4vq>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-3-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250716093645.432689-3-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: VI1PR04CA0130.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::28) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB7662:EE_
X-MS-Office365-Filtering-Correlation-Id: 277a00a1-7116-4ff4-6b57-08ddc46f4de8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eFpWM0JkYTZLUlEyMTl2LzhYYkN0bXVjWnVZTTBwSnhwRWxRa3U4d0VUSVZR?=
 =?utf-8?B?Z2VVeFhsUnVleXBJaXJBRU5PMFJBeU1OZnZmUDExckdiVmt6K2JXL3cwell1?=
 =?utf-8?B?RTZlTkJFdE1sTktXdFBXanVodUZoTU1kOGNaV1Y2ZlRPdFE5NHE0Z3I3SXg3?=
 =?utf-8?B?Vy9IZkp6eWZqRlc2NE1HV3hRUHQyRmh0MXZmREtiY2psL3cxbEtQeXBLN3Mz?=
 =?utf-8?B?VVJOTkoxbVVibWR4TlcrODJrK05mMS8yOEpOL3RnKzRQb2tFdXp4TzF2YldJ?=
 =?utf-8?B?VnE0TWQvMitZcDBFT1JVM1RoNDZmL0JxMDA3SytYWHQ3dHFLSktVYVhSTEJS?=
 =?utf-8?B?RGhPNEVSL0ZuazM4R0YwRDFjelRGd25tOVBCY3VsdnNhdzVKdEgxWnJja01k?=
 =?utf-8?B?UkMxNlg4NkNnQVZYUEp0cWFZYVNhVnZOaTg4RGRvc2djZjY1ZmpDWHh3U1Jm?=
 =?utf-8?B?YmNJUkZURHhLaVk3VlA4RFMwQk91MHZZbldKZnFCZHhjYk8ranFhTVhwL1Ji?=
 =?utf-8?B?NUJ0MVYvUkFVUjlpNlA5YXpYSlNmem1iN0toUTIrQ3lKak03Y2ZvTmlZYjMw?=
 =?utf-8?B?eUVNaXM2WFV0S1A1NVRLYWo5bmdCRzJTSi9iekpaV2RDNUhJMjhmcmFMZVho?=
 =?utf-8?B?WVN0OHFObnBFOUFITmxZVlBNcHVhZUJCUC91aXo3THQ3bWZkSzQwSm4yUzZM?=
 =?utf-8?B?a2dOM1IvNjc2elpEUDBQdmhhUDhZUnJGWUQ3c3BoMDhtNWI2MlVwbGNpeVJX?=
 =?utf-8?B?WWw5S08zSnlaTm8xZ3RBQnhiNUVYRVJhU1QyRVRKbmxVeG5PWXRYNU5Nc3Jy?=
 =?utf-8?B?ZG5qMTJTaFF3RHQ5ZkhpOVNJc05HV0szdWplOVh0UndsZUhpc0dZMHlNVG5h?=
 =?utf-8?B?SWEyQ1JFdWUvNHVhcVRMeVdaWjg4bDVVaGpTQldpMkg4a1ZKUE9GRmZETU9C?=
 =?utf-8?B?M0tuYVNoMHhuYm1GMHFCYi9aV0p2NU9yMmJReXNickxJSERjNTJyM3BUNWgy?=
 =?utf-8?B?b2d0Ujd4TkRiS2VyditnRTRVL1BkS25CNmdHYSt3NmtYOTVHbS84NGZOanBT?=
 =?utf-8?B?ZGxNU0xPU3hSY0xVakY0VjFReGtISElFZUdJMG1HL3AvcDViNmNBbGdBTnpu?=
 =?utf-8?B?ekhOaWFmeXdXUW9MaTViQURMd1phWmZrUXZXWmVZZkErTzZRbXN0dHFBUTkz?=
 =?utf-8?B?dlZqVzk4UnNrVUROUGhvdWJBVC9rb01zWnl2QUpOWFE2ZGhSMGVyREdody9L?=
 =?utf-8?B?OU1NMWMzdlJ3QkJFS0tMbWJQTDJkeEZsVi9QbHVRMUo4bFRUWHh2SE04ZUNk?=
 =?utf-8?B?WkFQTWJ2aGVGZlVNazJoQXhpU0tLd0ZTeHRiVGV6bGdrSUUwTUVWaFUxUVN0?=
 =?utf-8?B?NElPeEhQSGQ4VUNoNjdWeXVFVmhTWGlOb1BPbVBEOVJQZjF6TVVkS1N3akVX?=
 =?utf-8?B?aHE4WFlJczltY1VEczMzaklQMWcwemFLVmgzYWxNSXNFYm5XQm1QRkNqL3Rl?=
 =?utf-8?B?VTJLd1dxVEtTNHc0L0M0SG5aN215UlowSXMwbGlaWUJVTVR5QjA2K2l0U3g2?=
 =?utf-8?B?MldJUC9Ka0ZzNTRZOGdzeFA1NkVmU1JpU01SRy9DR3A4MUFTdG4yZmVYU1hm?=
 =?utf-8?B?K2lUT3Frb1BTSHR0V1VUQWVVQU0xQ0N2RVJHcEo5bGUyS0RHeWtaRTA4RkdI?=
 =?utf-8?B?THBUMHBEbjczazQ4SmZBMHpjUzFONDI2Qm1nMUlXWHVrT2ZGaVF0K1hjNHho?=
 =?utf-8?B?dTVEaVBvdWR6MXlJSkpIbmMrRlh2dVBVRHo1TDBTcmVLWFVUazFzWHlnZFFE?=
 =?utf-8?B?eVB1TXArU09xalowN3VpZ21GbWd1aEZFTjlJOWtlQ2ptbWpZM2ViZURVa0hR?=
 =?utf-8?B?c1BQdGRKR3dYbXpNMklXVXdCU2Uwcm0vcngvdHJJaHUwLzVwcmt1ZFBUSDJW?=
 =?utf-8?Q?DJriiHbS4Vc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWk0NFJFZmU3NitxT2Y0RGRFalkydDAreTZTam5vM2tzM1lvclUvelkvU2VQ?=
 =?utf-8?B?NDVsVVc4dkRmWXhLWlJmdnhMaVlJQlUxckRUQXBIRzVVeDEzMzZBVUZRUjlN?=
 =?utf-8?B?NlozQjJhK0orUUdjK0ZRVnkyM2htTjE5TWI0TzFYZERCYWM1RWdaR205eU1a?=
 =?utf-8?B?MHJSa2NkUHNFODhPaGgyQXlDd05RRE5URDF4b2o5UHhGZi9KYXlERWY0QmRI?=
 =?utf-8?B?aHNZa05JMjF1cDIrSzRCaUtwSWJKNlUyVC94K3JJVHl5Tnl1Zm1EckJRSmdO?=
 =?utf-8?B?T3V0bFFhZDJNSzBNdFIvYzQ5bUl1cFcxN0JVU0txTHF4dzRlY1BpU0xaVFow?=
 =?utf-8?B?K3RXV2RsZ3JKb3RyMTRlcmVuNFg0eEd1aERZc05nMWR2elRINmxyR0JIMU5q?=
 =?utf-8?B?cHhLaE9FOU9SL2FNSWlqbEZxNTJ5dHdkQkxjSXpoSjRGOXdWNG5RY1dUc3kr?=
 =?utf-8?B?b0o0VG00Q0lYQXhTMTVSb1Vsd2hqSVMxTWVPZ2Q2ZlJSbmVBNHkvL3czaHdv?=
 =?utf-8?B?dkJsK1AyVXVCQXI0Rmc1Z3dTSnY2WCtnMDVYdE4vTG1NZE5hZjdlTGlWSXhu?=
 =?utf-8?B?T1pEeGhLaGtXeXdwTFF0M0dWSFdQWnVvd3Y4NnRJRk9WWGZLOEpmTUVmeVRC?=
 =?utf-8?B?dmVIQjU4aWRsbHhZUTRtTXQrQmNUVTJKdzRpeVN2bXVEcFNqWVFnYjhxTm9u?=
 =?utf-8?B?K2Z3OXZvVFh4a3hrdndybTMyWjQxUkdjK2pCVjRYMHgxQmlLQlJqMEFtNDVk?=
 =?utf-8?B?ZFJ4TjJudGNzZE1ueWNSTU9zODhXWnA1Z1VQdDNmYU5vZDZaVmtKLzdOMmkr?=
 =?utf-8?B?c1ZHbFhqNTQ2b085cEZ1NnFpaUpoYTBqUDhOLzUrZ003dm4rRnhlemhjeElq?=
 =?utf-8?B?N240NWxDbUFiVWNWdUMzV2V6ZXZLMkY0RjBNU1UyamJJazcycFJYd1B4NGJT?=
 =?utf-8?B?MHA1R2Zsb3QwcW9wVm9iNTRsbVc0OGFhM2l0N3dmNTlWOE5henJqSGpLakdT?=
 =?utf-8?B?d2orQWh5aUlkcUk4Yi9YK0dDMU04cTdCTXNKaWVFUnZUS1I4KzBLSVhXMW9Y?=
 =?utf-8?B?d1NWWUpmakErU2E4V3RielgzaUM3bW83K2kraUJ0MTFtVmFNVDZ1QiswYVA5?=
 =?utf-8?B?WVhyaE1oQTV5K2VrZHh4UkEwUmU5UE05S3NIUDFtb1lMWG9FRldnU1djMmcy?=
 =?utf-8?B?TG5IY2h1UjZZZHYwZ3FhK0pNcDd4TSs2emkzRG1JbGZRazgxUkpFVGhkNnpa?=
 =?utf-8?B?MzVPdzRmamJweWl1QjVIMjdBNGpoNXBXNFFVY25namtlRTd0OXZqRDVEUmF1?=
 =?utf-8?B?c3lGa25UWWduYkEwbUlnSkRrTVM2blFtLzVKTk5hdy82TTFiUjk2R21sQWF6?=
 =?utf-8?B?b0RRT3IvOXl2Y0E3RjNNSnd6ODJQMXVpRldyYVRqL0d0VytlMlFHc2I5OVYr?=
 =?utf-8?B?aU1BZkVnSEdwUTBjWGtDZnpESlRTeVpHdEU3OGtOYzlDTW1KSXVFOFEzWHg0?=
 =?utf-8?B?TmNqQzZ0ZWg3Qm96TGlHTmVweVFkZXNtc3FSTEtsTDRvYjY0K0szQzZBb2V6?=
 =?utf-8?B?ODBEUTFxWnpMa0lXWDhTbDYwS0VLeHlRSkZCYTJ4Z0lFaEZmUTZTSkJZZk5J?=
 =?utf-8?B?UEpvNk5qbXB3aHRRb0J3MVFlTEtXQ0xjU0RrSDIxMVdZR1RJYlE2VFNJYjFT?=
 =?utf-8?B?S0VYUVduK1pPSWVuYzBVSGw4ZmVrbklpb1BTMHVJWkFQdHc4ZUdZSzVNZmdz?=
 =?utf-8?B?N1BKeHNiNVJkTmlTK1VJWTcvTEZVTUhNT29GcUs0NXFyTldSSUxwMXJHM0Jv?=
 =?utf-8?B?K2hSMXRuamJCeFJkcTMyR1Q4NUE0aXYrcGtTZjlDNlRFNG9DTUlYK3Z4MlFM?=
 =?utf-8?B?NDFVcmt5aTAzakdJZStUZVNEcjlVcXdFZDdYZHJzeFJJcjJDbEM2QUlVVnJq?=
 =?utf-8?B?aHVQbUdFT2RJbDQyMnQ0Qk5zbm1Ca0I2TzZ3TWJBZmRCQ2lrM1Jlak50WmJz?=
 =?utf-8?B?WUhRMEgwRzg2ek1kYkZHMVBBTS94S1pGbUJ2VEd6WHB2RktYS2pLbXpxYWF5?=
 =?utf-8?B?emFKeE4vdk45MTN4cWM1OXcyVThMd0J0eUQySHBwZ2VOekVad0xscm5QeCts?=
 =?utf-8?B?Rm5HZ2RDdldJNlN6NUNOaTNzcEM1RUlhUmlGSkRiaU4vN1dVRklsaWJ2SDJ0?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 277a00a1-7116-4ff4-6b57-08ddc46f4de8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 13:47:28.5368 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pdht0qARP1h1RkMfIYrGlkEquTiZqFWAzQugx7Iz2k09e1Btt8j6aN9umQsxjgQfflmwCMzGdoByRWPOSl1/zViZyCxVo1TWXztD4CywbVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7662
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

Hi Sebastian,

I think this patch could be dropped. The brackets do not improve
readability in this case, because we deal with only a single
line of code in the "else" block.

On 2025-07-16 at 09:37:18 +0000, Sebastian Brzezinka wrote:
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index b2d940e89bbb..b2660445bb51 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1382,8 +1382,9 @@ static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
>  		 */
>  		if (flushes & CLFLUSH_AFTER)
>  			drm_clflush_virt_range(addr, sizeof(*addr));
> -	} else
> +	} else {
>  		*addr = value;
> +	}
>  }
>  
>  static u64
> -- 
> 2.34.1
> 

---
Best Regards,
Krzysztof
