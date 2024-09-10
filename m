Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A29972B53
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 10:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7354F10E737;
	Tue, 10 Sep 2024 08:00:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jrzFqXJk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D335B10E737
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 08:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725955202; x=1757491202;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pirQ/1XuCj/CzJ04rtl6hdwRpJnBDqiRGynt9MFa/Vs=;
 b=jrzFqXJktscXF99QpWhxQZX+yWt3sDGv4TQ7hlS4mQTI0wic2+9VPhBZ
 Kzk4TpyAURMBasu+iFfS6sWH8e8r5NNczmLdObsfpZYy4pV4AFdmtaNUz
 RCrFYGc8vekiZKcrWq/pOpb030frmZnZ/7DUs4Hpu8QE9lwCMJ53tRXWP
 +fgfwzOsrgS+m16WtzF+5iyumPS7Uf9JY5ChPsWpa+n1REf1CeSyjs4FE
 J8UP90KtL3Kk68YPwj54cidQT7+TYlnAuTaoE1Cn3zY6SfqwHKWAsp6/r
 z/f4fsn9tz7mlmEpeC4DC1wNoUJqB+O3eGjIg6XfXTNpHhE29tf5VHGaw Q==;
X-CSE-ConnectionGUID: +IvbbhUvTBaVo7uZfhyVhg==
X-CSE-MsgGUID: nDuoUf4OStyyhxZHIjtEgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="28464811"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="28464811"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 01:00:01 -0700
X-CSE-ConnectionGUID: 2bVcw4QJSnGzKswuR49PNQ==
X-CSE-MsgGUID: ek72gl0EQJqfsOxvHCSn6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="71068446"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 00:59:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 00:59:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 00:59:58 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 00:59:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YNaK/L0WmdcD+rWId5adX6MeKknJQt/ksqtsroyOCfXMk5swhfvQeTGQKS8iy3+4hA8xZM1p0zZvoT9jGTA/i71ojOCvnN9F+KZxzqkcyFfDUYVIHoZFHT6wUo4WUtRPPWk/PJDt9gy1KD1cNLrQeH2CXLohfl7RkFwEKUZclYbLnrvwcGznP5cLKhfZpi3wSVQ+HQLgpTwj+irt396GPZO1bRjYaCEGIEAd+T/TxhRYnZdSjZYd3q4JusmS37ihfUf+9bWiNWQOaPnuX0eZB6+aTz/Y6+399qiGLKyPepOHn6GlFrW6V5tEQS+ZNvfyoowuADEoKPQ5S+qeLbQZDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SVoMEv6ToArp3MsRFBCSyz+z5iMWXBvSRNIooKsjnlc=;
 b=ZVaefXRf0qsM4kiJQeJwC8X+qDjwSHhjVTqk3h1dpI+VLH4/V6lcEMp0AKw3AErxG1HhASooChCFbWQVTi2S+VEZCTuM8tW8j8AX4FxU42haueXw5Zz0IMbtqASGG9nJgZTpw3gCYFVONj/oZU5DwLlkPH3/OpnKDXsR1NteHI9WrnKkW8cgsfXYij7TwUxzvqdAlUFqTC4mvxfi5WtEf3WOVFiatCwMxT2GLTG9Iltr8obTkgzgAGUEAgZMx+0kDuRnY1NXMH8uAa7vOzEypODxLJSCu+XgisRR+cqDHpb6nnjvgN3LjDiVq4hJh5Y020nneQYSq9bYU9kl2uRTxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by CH3PR11MB8518.namprd11.prod.outlook.com (2603:10b6:610:1b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Tue, 10 Sep
 2024 07:59:27 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%7]) with mapi id 15.20.7939.022; Tue, 10 Sep 2024
 07:59:27 +0000
Message-ID: <8f854bba-c78e-4c81-a78d-04b385ff4641@intel.com>
Date: Tue, 10 Sep 2024 13:29:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pciid: Add new PCI id for ARL
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240910062301.2006782-1-dnyaneshwar.bhadane@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20240910062301.2006782-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0094.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::20) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|CH3PR11MB8518:EE_
X-MS-Office365-Filtering-Correlation-Id: fec00c17-f57c-450d-a0c0-08dcd16e7e20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RFFleVhxWDZEUzZVa1BGN2lwQmZYb3k1WGQ2bmtMQ09nQ1FEcUNTM2Z0VnJ4?=
 =?utf-8?B?ODNZNUViK2NsVlZwTWhGVmp1ZXJSaERmYzBKQXFyNzNjYWFiTGdjZmoyaWll?=
 =?utf-8?B?QTBadnRCNDlyQnUzYjdFc2h2Q3dWMEZ0SnFtOXpTaDduU09EZzZoR2ZpWTJK?=
 =?utf-8?B?RXErN1hFSWo4MkpPc0NybmpTcmNBWEU1Wm9EazlZV25Ld3R1cFlQMGVhd3Bv?=
 =?utf-8?B?SjBQT0FYSTNqc0MxV2kvTWFwY3Y5MjA0NFM4OVBrVVFNcHhzSm11K09KUzFz?=
 =?utf-8?B?MEI1NFRjQnJYR3QwNGpzUjZTRlp2U21kTVNGeTlZeFN1R3NSSWdERFowK2hq?=
 =?utf-8?B?MmN4TTNOTkdBSWdqSnBVWklYUTZjTFpUS3Rna3dSWDNOVlhLdE8rbW5hSEFs?=
 =?utf-8?B?QzQ5SDF2RE44QTF3Q2xueGczTU9tWGttdEtOd3J4dGNNVXNCeDl5ZUpZcFJ2?=
 =?utf-8?B?KzJkb2ZvbXR1cXpxRDZzV3pVOE9mWHdxa3BKa2hSSXF2TlQvSkJBTGVmZFhK?=
 =?utf-8?B?SHNucU5jZHFTNDYyYkthZ1o0RS9CNGQyQXhiYTIvYlRQQXBoUGZqbmlsYWhm?=
 =?utf-8?B?VVFNek01QThqVUdSZTN3WHdvalIwRHRnVDRnYy9DbVRTamxaZnhtSkphZW9a?=
 =?utf-8?B?VWtPNzVCN3gzU1kyNUxTYXQvNUtOeitzOER2YS9YQzRuWHJubURSZmFBNGFv?=
 =?utf-8?B?clhETHV1M0JHSDA2NzFGUENSb1hMQi8zNFhBbXo4K3VVSUpUdmQ1WUFEMFRY?=
 =?utf-8?B?bFJJN1B2aXY3dGpRdE5LOTg1TGdhbGpIRll3WFEydksyam9xUzRzRzlBTnVV?=
 =?utf-8?B?NDQyb3gyRGJSSFRNVml4emtkbWFKWUdaMmhONVhNc2lPbnJNMDdFWmhER2FQ?=
 =?utf-8?B?UENmRDJFd3VhSUgvTWVSTFA3amFONC9hV3dTM3RUSTdpWC9obkZZZ29EdE9V?=
 =?utf-8?B?b21FWXZsZmIrZVhvNHc2d2E2WEZwWjNYQVNqRGh2cSs3SGtZM2IySFhtU3oy?=
 =?utf-8?B?cUhIc0lkQm55WFhtejY2MHc0aXFQM2duV2d5d1NDcEVSdnJ0RzNTdGx6Zkth?=
 =?utf-8?B?UjFjRnkrRkdSRkRxVWovWkJ3NVc0R0Z4ZHNzSGY2eU9RY2t4UlZOelVYYlc5?=
 =?utf-8?B?dFJyOUpxVjAzbnZjem0vcGtGM2tYbFVUcmhWUXVCNFdNT3hFdzFJZnJ0VSs2?=
 =?utf-8?B?c09JUGtaYkVoRTd2ZU5LTTE2MG1nMlZqNWVrNkNJWEFSd1BiTVJEa3pydVVZ?=
 =?utf-8?B?VzVHRlBrMDhaelpHaUJZSTEvdzVZQldoNHk5TldWQ3VWQTVsNzIwSjQ3K2Yv?=
 =?utf-8?B?b3d1T0dqc2wvQzlzditOWWtURWcyNFUwRUFldDNVL2IzbG5QSW9lQzBJay8y?=
 =?utf-8?B?ZkxqNG1icGZMQzhoeWIra2ozQjNIWlJia0xCV0U3TVdiK1ovVzRDOStpUFpD?=
 =?utf-8?B?YmpmSFppWGxydWlqR1pnbDZMMEF5T3pxTWRRdmJIR0orTSs0RFc2LzJaVjIr?=
 =?utf-8?B?ejRIMTlMZUZHWkRUWDVFT0pLdnZ1ZSt4ZUc4WHBwK3BHZlc1dTRGSnlmSkxY?=
 =?utf-8?B?clNucG1OVTVuanF3WUVUdFpSZGRCUGJ6TjRRMGRLcW9jbTNrV2NXcm54Y3ZF?=
 =?utf-8?B?OGo0djBoanQ2U201WFRPdkRCTWxGQm00UzI3M3J3cGM0RnYxREU5REMzbkk0?=
 =?utf-8?B?OWhUNzdWRW1pd2JBdW5BTk1MZWs1WEppbVBRcWNlQ0crTERSeXBNMlczQnU3?=
 =?utf-8?B?ZVd2NWNyaEptSEgvVUF0SGtxREdqRTZzTTlkdUw4ZnBCUGdPZjNyL1ZnbXFn?=
 =?utf-8?B?VWVjdW5BRGJyeW1GS3hDQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3hsdFVJYzA2NzVSeVJic3I5Q1pSWmhXMzkvc1ZxRFVaY1FLUVhwMjg4NDJL?=
 =?utf-8?B?cEw1QjR5M0tTdWJERndhcTFaNHpQT0NPSzJORERLbmROZlVrRDdlU2JCOGg2?=
 =?utf-8?B?MnBiZldhNVl0bVdyeWgvSXdUT2Z1ZmlJNkx5ZHpqTE41MWRPZWkxVVorOU5I?=
 =?utf-8?B?SHk3TklLRlNDZEtLc1VBOW9PNm1aUWl1S0EwbWpTU1RFM0hvWTI5WllRK3Y2?=
 =?utf-8?B?QVhpcWk2RXdRd0Z6T0JTTHoySGZxbVdQMU9ZT0VTc0dUYkVvQ1V5aVdmQ1dH?=
 =?utf-8?B?OWlWTWRGNW9ZOThpeDBKczRCRDBuMmVja1VGUVQ5TklJVlJhbDlHVkFPNWUv?=
 =?utf-8?B?dEt3R21LMTI0aUNjRFkvWUFEalU2MlhlWG9yLzYrOFNjL01zM0pUc3gvWUFF?=
 =?utf-8?B?Z2tkYXU2MW5vT0J3VitjMlgxM3pudDE5K211T2NMSmU4ZEJSUE1TWHJGS3lT?=
 =?utf-8?B?eDE0eE1NdnhPSHVqeHhDQmhVVTJZQTg4WXl6ejFtTDhJNHZZa1BxSzVKWTRv?=
 =?utf-8?B?VFNjSlNJRmpXSzg0ZEdaVGpSeWR1MUpPbkpBTmlRV3pjVitQUG5hTlZvZmt0?=
 =?utf-8?B?bUtsN0swZVBjKzJ0Zjk1Zm5ZZUpIajdhT25pck84QmNVZm5xZkQzRDhDLytx?=
 =?utf-8?B?RFB1WEdxMFdITGE3Nk1qRmp0WTQvdFhlbGdTQWZVd2g2cXd6ZmRMZFdzQVFK?=
 =?utf-8?B?a2tNK1hpM2IvQUhxaE9EcS9DZ0tGMWMvMWk3bVQxV08wNTZEQW1FeEVuUmFO?=
 =?utf-8?B?dkdEdnNqT0d3ZS9kcGJrTlEzeUcrdTU0aEFLbzJkQlBzOFlMSDV4TVZTTUMy?=
 =?utf-8?B?RktVOWZJWXgvL1hCVnJVZ21xanh5QSsvZU9YanRIRHczbXlYa1Q4L1Z2cDF3?=
 =?utf-8?B?YkMwMzZhVzZ2cTJHSG1RV0xjeXZoZjE3WVFBajJNYUM3RDhHNlVPZjUxZXZU?=
 =?utf-8?B?N0hZczdzcSszWnpSUkJFZ2VzZDVFT1B1RzlXeTlQSTJEZGhKanFOenlrMmk0?=
 =?utf-8?B?ZXVqMVJKaDBoWlBBNjhzcFE1NFdoLzlqdVcvdVV6MnJkMFdadDdlMVBoWFF0?=
 =?utf-8?B?Qk1YN0xmeUdVeFpVK1B2MDBXc05tdmtoaDM0K21rbVNJYVJFNGhXYW5JZ2JN?=
 =?utf-8?B?THM0NTM2aml2V3FKTTIwaWRJTGkyTkdscWxWaUh6WE05K2Nab0h1N2FOMHQw?=
 =?utf-8?B?SDZBbHAzVzlibm5PZkFPMEJ6TGdPc0Z6UVM4dk93NHhFMmxPUmQxQ3k1ei9i?=
 =?utf-8?B?ODlUOFVJZTJ0alVSWUU3ZXZXRXNFeTUxa2J2MTFEYzNxVHF1UEpTY3FGbmdw?=
 =?utf-8?B?WG1PNkFkMnJucjFwRHVVbVhzWiszNk1GL3BGTDdEVG5rRWlYc2F5VnlReDVp?=
 =?utf-8?B?WFlseEhMWHo0YVlKdUh3MW81dUNqNjdHd3JzaUJhYkJWVXNpVkFPMXV2cE5j?=
 =?utf-8?B?cXFmd0RpU3VOVDhtVG0rVDl0dEJ1enRxdTMwK2J5NGZnYUcxR0NsQWp0MkRK?=
 =?utf-8?B?WUVNOHlvWThWMVNIOXNSQU9TYUEvek5VK21qK2ErTDFvRmhIcFI2RDhZNjN1?=
 =?utf-8?B?RFZDMFY0dWRwTnlGVXRoNVpHUFRvcE5YL3Zjbm9GK3dhRUZ6a3JqLzJQMFZR?=
 =?utf-8?B?NEdEK3ZvWWR3Y0d3Q0QrczViT2dJc2kwaThySVRHUllmWFRtRTRCZkRrdkdO?=
 =?utf-8?B?RHRmb0EwZms2eGJCMm5ici9RME51bjhUcFNyNG42cnJ0L1BkTnppZ1FxV0xh?=
 =?utf-8?B?R0FsYW5ZZlQ2M0xkeC83akJFV2Yxc0F5QWs5SEIycG1kVTkzV0orL0pIYzZI?=
 =?utf-8?B?ckxhaTd6UmtveTFXT2RiVXoxVzUzQmtMb1cwOGhWZTdNM2Y4THF6a0cyVGhV?=
 =?utf-8?B?OENSSmhvOFhtZHlFZTdnczJpK2RON3UvVnBHeTk1dURKWDdSeUZlcWRvL2Rs?=
 =?utf-8?B?VlozaTlORjBwbDFpZFhlcTlHRUNBOE9vRmRUM21YWmNJMFhvLzFBQ1lldENt?=
 =?utf-8?B?K0lCVk41SS83ajQwYTFYN2lBRTFGdFh6NjR3WHNjU3k4MEFzYmxYcGFLU015?=
 =?utf-8?B?b0ZVWTQzYmM3STFWOXVKeFZzWlBXUUx0dE1XczJJNkM1ck5CM1EwODFyTVNY?=
 =?utf-8?B?ZWxTQlErT0VJUGQ3SU5RMnpWc1diN1V4aG10T1hjUmpLYTVTRC9QYWJaUjgz?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fec00c17-f57c-450d-a0c0-08dcd16e7e20
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 07:59:27.3516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RXAylFDxP09azewBoD3SVoRCbcEadDSioLYXqq1L00L3FDgjmCH5YXv3K6SD5AL3S4lHRvMBQPf74vq0Ve2IMvjvWW6cpPUO7NEPGsPKG8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8518
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


On 10-09-2024 11:53, Dnyaneshwar Bhadane wrote:
> Add new PCI id for ARL platform.
>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

I assume that you would send another patch to sync this PCI ID addition 
in xe_pciids.h as well

With that,

Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

> ---
>   include/drm/intel/i915_pciids.h | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
> index cbb12fdbcb7f..02156c6f79b6 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -769,7 +769,8 @@
>   	MACRO__(0x7D41, ## __VA_ARGS__), \
>   	MACRO__(0x7D51, ## __VA_ARGS__), \
>   	MACRO__(0x7D67, ## __VA_ARGS__), \
> -	MACRO__(0x7DD1, ## __VA_ARGS__)
> +	MACRO__(0x7DD1, ## __VA_ARGS__), \
> +	MACRO__(0xB640, ## __VA_ARGS__)
>   
>   /* MTL */
>   #define INTEL_MTL_IDS(MACRO__, ...) \
