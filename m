Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5CDCB9294
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:39:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A2F10E315;
	Fri, 12 Dec 2025 15:39:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IoxkiaKx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7993610E315;
 Fri, 12 Dec 2025 15:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553981; x=1797089981;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=RyUW2Wb01+CmidtN75XePz1Y+Mbqro9doJPwhrTqwMM=;
 b=IoxkiaKxzM0LfImHuerVy3wPKPfQ2wlpI40C0CN9bJCwpPH5O17tGCQL
 UuzSbT725apZTonPrOHmEL0lZQ6uuASmI6rokJ++Dbzub6ErhassnUnqQ
 mTQhgByfB8YSgmV61rfCCp7B3wCyxVQK99qfi8qp0pGJliPGcz3KQZ/6M
 QAJZjA5+9bncjl0mj5MKQ9AVsH/S9E3aB7cPX1HZUXBISY7o1lpcffmMT
 II1WOjc/jySUbNUoHZjDCT4pJPQIkgWs85+ExB3z5RUsOAWYUJBK600sq
 ei7j7Jw3+lNPOm5aHPlPTYcXFvNCiFOGE55hrzWp1TZkJwHNd9oYTy8+e Q==;
X-CSE-ConnectionGUID: z3RRDY4BSm6Abjdj79O2DA==
X-CSE-MsgGUID: gl2zCfFNTNOI/a+m1PKWtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71403539"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="71403539"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:39:41 -0800
X-CSE-ConnectionGUID: EL6O7ddpRAOrjHVPYFvdsw==
X-CSE-MsgGUID: nmqBgyX1SdWbN004+MLutw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="196402691"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:39:40 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:39:40 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 07:39:40 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.7) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:39:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fZK3LU+AkjTswQoDciPtfQ+ic7tCHkwJlmb2Q9KSgXUiRfEIn7OEah7T29OB2lr1zU7PkGylW8O/G8pgW0pLmiTA2EEvI4EL48MyQgvQ2is5Ci0uwZXXI5lf4Op2DUVQ1aouwa9gEelMLGASMlBjXZirTpDESXN6ciaDv5IUN1CAZyJuw+xU237LYW6KN0CAbTR6UgfBdZMVX8EVqF7Yecvs5qVRW+/Ym8lYkj+3W+loYQzXV9p/L+r3iPZsnx95b+qG954zlv49zkiJgmByUipOcrv1fnbW1qv8QDacKzDX5Z8Ov6jEBoNv+kxCeZP+lA1ASEdkEeybyVat5L42RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RyUW2Wb01+CmidtN75XePz1Y+Mbqro9doJPwhrTqwMM=;
 b=p3iHrIFRkhjU+T2bRm0yS6HZ0fTRsX8XpQYgQRo3+25jljIAQe49NMO4jqD1bd/gzWW0EI7mu/H/5EwBi1Q1HFK7dv144PhkMCKq9dHL+bL/v8uv60WA8p8EzH+8pZw3oGdj76Gub+uLjJj0YGp47axd8mZ+GRFrWxtI/uO8SNEJGPHdVCIXpb56+SeCA6TZgqBl/tn2es9Lzlxhw1WWBxDd4N0yjGAz2l7g4e8tpsSFEQrTaaFNdH/d997m3zJjzspHnVq4rpPuPn+jdwz0sytsdSpXCpEyj10yuIbGU91etOC+bU7dmPAKoPlXNrDSAQ3T0+tAl4YsD+S9U8z0/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY5PR11MB6138.namprd11.prod.outlook.com (2603:10b6:930:2a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 15:39:37 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:39:36 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 34/50] drm/i915/dp: Simplify eDP vs. DP compressed BPP
 computation
Thread-Topic: [PATCH 34/50] drm/i915/dp: Simplify eDP vs. DP compressed BPP
 computation
Thread-Index: AQHcX8eyU+Drpql/vUijvsqG1Bj8iLUeO3gA
Date: Fri, 12 Dec 2025 15:39:36 +0000
Message-ID: <1922779cbbc63598e266f0fd875347af788ec3ef.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-35-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-35-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY5PR11MB6138:EE_
x-ms-office365-filtering-correlation-id: bbca30b2-054f-4555-9282-08de3994a7a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?KytoQlQrUWJLT3hhOXlpT29HZTJPYUFIOG9pWlBpWmptQnB4alNqckt3Rm85?=
 =?utf-8?B?U2xXdmdndmc2R29mMHdsTkpRT250V245M2VNNnAxWWY5QklNZ0hiM2NiVnlv?=
 =?utf-8?B?YjM2VmhGNGt1Vzg5ZzVXZDhUN0doS0ZkaU5DbmpubFkxUTgvOWdkWmNpcndu?=
 =?utf-8?B?UE5ybHRuRWNnRWJwQ3BXWlFJTjVNS2IrR0RpdjNKTGYvWmExbXEzcVB2bDJL?=
 =?utf-8?B?d0l3dW9rU1BuK0pYaW5KQmVYeEN2aGcyaG95bTlpc0hhYjI5WTJZRUIxbExq?=
 =?utf-8?B?Ky9MQWtITkNoa0tzYStKdVlpTzczRHhQSXlqeGJ4UThrbDduaG9uNmNaY3Z0?=
 =?utf-8?B?MzlTbTlRd0xkdm56YlJGTnVsVTlDYzB0emhEUThCYVQ1Y2NjQTFmV1o2L1hy?=
 =?utf-8?B?V3IrWjJSTCtkcnhpbHZ0dW1Ha1hwanljc3Y5d25UUnlhdm1BNVo4b0pRQnBX?=
 =?utf-8?B?WktncDFJV0ZkU29uN0FzRlYvcmZxOXo3dlI4MHpzdFE2UFlWTm9mS1hGUSt3?=
 =?utf-8?B?UlpaRHdNNlJmc2ZoWUlMS3h4QXFlQktRanZWNTFWWk9kT2FQMnhWU3hwTzhz?=
 =?utf-8?B?c3ZTSHFqblJPVGs3c21RRmdTZW5TMUNqVEJ3Rm1jcUdtV2Fab3U4WDRjNHYw?=
 =?utf-8?B?eWtLQUxtSlpTRnZmc2E2ZGxqLzNDNWFKNW5ZRE5WaXc0aFZPakU5MUVjYm5h?=
 =?utf-8?B?aDNkMHJqbHNLNXZNWEw3Ukw3dXJYbFVHdFVsdVJEclg4b2VIbWZiUW5jcmJU?=
 =?utf-8?B?Y1FXQTJRbm5ZM0pFVU80bHB4K3pBL0lNNFR4aWJteHRGMmQ0TFlDanZMQnhs?=
 =?utf-8?B?NFB1SkUwU3ZDbUlMQjBhMU1Ic203eTBoY0dUa0xLdGt2Yng1UjdGOGltZm52?=
 =?utf-8?B?SUU0VWVrb3J2dHVUKzVIOGQxc1crREs3Z2QzWW1LSTVuMDFVZ0I3Yzl0cWlP?=
 =?utf-8?B?c0J2bm5leVBpU25Yb1JSaE9lanB2SFJTTjRxVkRoQ2VwRkFxUGljTG1lWVZu?=
 =?utf-8?B?V2JmNFNJRGxOTjhrUkU1S0s0aU9QTWRjRnp5a3RXdnV0R0tUTThERGdpVHVs?=
 =?utf-8?B?MlczN0d2QzhPNHEyNWM3ZGxRSGRndW9DSTFVZmdmQmNWejEybXF1dTVWYkN3?=
 =?utf-8?B?RXdKOXZCNnpoa2E2NVp0K2oyajh2WXovb1FSeUhTSnpNcGhiblhqR2ZjaVg1?=
 =?utf-8?B?cnAxM1ZRU2VjVWZYUzBtb1h2RTRPdHZ6bE5qbHJMS2R0anJ0enhGRC9XWEJx?=
 =?utf-8?B?N2xVZ1cxVzFHTnUxVnNKN25zbXBHald4TGZCWU1VYUFweDcwS1N0SmRscGNk?=
 =?utf-8?B?bi92d3F6UVFEbCt5MzJ6WVlmc2pFT2ZBYmRDaTlWQWVCaUR6ZkpqaW15NWFY?=
 =?utf-8?B?V2FNWWVIeFFJdGsyMVZoWDhCKzJuSjI0cDNaOEVOL2FNWWd1OWpBUGROWmRN?=
 =?utf-8?B?VnJ1K0JuQUhKM2NUWFJUVEFCNnRCcUhSbWRXeWVoeDJEYXU0MEdGalZHTGM3?=
 =?utf-8?B?S0FTb1R0M3ZPbklpK0FPa2oyNVMxdldnV2ltN1RXcUo4WmtidmtHSE1sWFow?=
 =?utf-8?B?UzZxeWt0RkZ3ZHZDRUNHV0RKbFp4cTFYV3RlZDd6MXhsWGJDRlBsT3h0Skhu?=
 =?utf-8?B?WitQclNFVWJIZ2Zqb2xpcXNBTGMxK2ZobDJnTHhWUnlqRGxzZkVlb2U1L0xX?=
 =?utf-8?B?MVdYZjhCUWI2bXhlblhGZjRPN3dMUkUzVVJKdndoeWZQWC9xc1A5eFZsTXJo?=
 =?utf-8?B?OW5wSldjeEhyYjlTNDlXRkdGT0pyb3ZqNEhXbGx3Zy81MU5NTmVSWG02MGV1?=
 =?utf-8?B?eXRmeXhPWGhMeTljZUpmUlg0L3JVVGE2bkdDVjJoY0praHhyRFlwUjRSa0FR?=
 =?utf-8?B?STQ4dHZBQWZ4b3YvQU96SHMvakU2Yk1HV0ExY3cwK2xCT3prR0MzclpQNitN?=
 =?utf-8?B?eldKbmMxWjlXeGFndTVFY2NQaFNqQW5ramRBRGFjYnFKekFaSk80MTl3YS9T?=
 =?utf-8?B?SHIyTkVxKzRrMVl2Y3BXWTNJMzk0NndnTDlOaDdrdXMwbC9pemhjVmNDNXZP?=
 =?utf-8?Q?Lghmxj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mkc1amR2dDNEM3hPcnBKeWxra2RaZ3FLQjJFdVZ0TFNqZzFVZHNvUkk1OFpB?=
 =?utf-8?B?MXpLd3QxdFpRTXN2VlZVWVFsYW12OHoxUlJodGZQeGh0TlpIdk9nSjJkSWU3?=
 =?utf-8?B?N0dsYncvZzU2N2tqWmZsZnFEMVlqbVRYblBDWjUyZ1NjZmsxRk1Ndk1wNXB3?=
 =?utf-8?B?UTY4Z3pnOFJmTXUxakNRWkRuMXhHblRxWFNsWlNRMG5vUXg1Z29oV1Y4RTJZ?=
 =?utf-8?B?eXBrODM5ak9ocXRicEtaZllvckhuOGhwbndzYnJSTGl3bEU0cFRIK0hBTGlU?=
 =?utf-8?B?bGNodzNQNW14N0JzS2JCbngrNy8wM0RwV25YcXFTcFEwZjFlS0Rxa0MrclV0?=
 =?utf-8?B?YldLcTRDL0prTGZPRk9WSnlVbDl0ZjdIU1pZbUZvRUlqNUJnSnphWVB5NmNk?=
 =?utf-8?B?MFE4dmhiZDZvWmc1aEZPOGdVMjFFbHpFazlqczZ5L25NS0ZMODh4VC95Vlhr?=
 =?utf-8?B?OCt2M09vV2JtR0hKRjBReWxydlpXU3hzWDA4Q3VoTS9YTzRvYW1DK04rZGli?=
 =?utf-8?B?d3VJUFJrMU5NSHJlekltWXNYL1FvcVJPUTNhTExHTEFCMGZGUVdkUkp2NnAw?=
 =?utf-8?B?MllmRkE0YlY4Z1NVSHBoWG9XcWY0c212RUJFbFdkNHpUU3p6OVJUVkg3S0x0?=
 =?utf-8?B?blZLUndDZS9yV2lELzM5Si9MREw3QmZWa00ydTN3Q3JYcS9TZ3BNdkhKMVB5?=
 =?utf-8?B?VGdNdDNoQUMvMnRKamlwOWI4aStRanc0L0MxdVlTL2x6STFxQkJGTit5V25w?=
 =?utf-8?B?Tkd0MVExWTRJVjgxUGsvaUxpdThTSG5XODZqTUo1ZDBiY09tcGRqTVNyMHJa?=
 =?utf-8?B?ajBpR1ErWnVnaWE2YVlIbHZxbnVoOXk1YVY2ek9tNFVtaFBKb2lsbTR5WnEw?=
 =?utf-8?B?OHpWSXhpWGRBT2ZWZHRwUkY3SDd0UVNpTWlMdDZCQUcwYnF3aForeHo5TG0v?=
 =?utf-8?B?eDc4T0VreFVHUDdTNEdUSmgrYjJWTXhOYklrNTRCYWNkV3hDdVp2QjR5WWtT?=
 =?utf-8?B?SWVlbW13M1FDSWdJTUxlLzhoV2dGYmxxQ0laUk0yZ2plTjZ5b3JoOFI0c3d5?=
 =?utf-8?B?TCtuY0YzcUxtY0h4VFN4am80bThVOEhwKzg4Rlp0VjJqVjdHQW10MjNxRFps?=
 =?utf-8?B?WEozSTBzOVFLTXkxdVpyZHpQemQ0TGFtempGSUFVclY3Y3gyMHZDSFFCWEhS?=
 =?utf-8?B?MGgzb1RPcGJOWjlGVHZKY3hRTjJGMkZ3TW1yS3NzR2U2aTdMVVJnMTdPTDN5?=
 =?utf-8?B?N1YxamhVUTRpR095bmcvQXBpdjlleUIva042eW90UDE0cG1XbExHYlR5K0lE?=
 =?utf-8?B?dWg2d1dUQ2hnUU1KR3dWV1FQdTRZejRwbVFPdFhRcUVxN3Nwem1sbCtRV1Bk?=
 =?utf-8?B?d3ByemtCR3FiZWk4RzJsOVIvN0xuTXJHQlF5eUd6V1lNZGlFTzJhY2xQYjIx?=
 =?utf-8?B?NzYrYkR6NkNoU25SLzZ5UWQ0YUMydjgxaHo2aTkyWVBSb3NzUGZYb0UrN1Zz?=
 =?utf-8?B?L2JPZ1FQVGRlaXZOOUhBNDZyUDVjenNKL0FxbkY5OVdhSHJmNkNNajE1WGJG?=
 =?utf-8?B?Y21PcXN5aHhKdUkycko3ZFUzNFpSc2s2TVVRSHdJVlkyTDhnRThLb0ZKTGxK?=
 =?utf-8?B?akhxYUJPUllWVU5UQ1E0bGZHTVJ0SS9acW5DdmlkTG9mUStCVWUyVEZCRU8r?=
 =?utf-8?B?QklzUmY4OE5LTnpVYWRocC9wM3RYQXJ4WDNZMU5lMDMzUUJPTjllVjY1ek95?=
 =?utf-8?B?MXRMMFpXaGZqak1RVVdTRnZGR3dUb3BacUN1bEpKSEhlOEpxR2hKOTlxM2lJ?=
 =?utf-8?B?aE1mSWdPbmYzWE8yTUpnVHJrdmVYaVpIMmFBbGJoWkZWMC9nTEp0S254MWdw?=
 =?utf-8?B?RG1PWkVWYW0xY0Z3a3pna3VXYUZZcXp3SkMvVnNPWXAvUTVPU1ZGTGFpWHNS?=
 =?utf-8?B?OU5WZkJlNzhrRnlWUVVHZWhheVRGVkY4WTVaa21UYkNjSXlYMUN0R0hWdStk?=
 =?utf-8?B?M29OSk1ndzVWL2JRa3l1OXk2ZnczeDJvbEZERVRyU3pleTRiZXhDUVQ1L0p5?=
 =?utf-8?B?Sk52bUlsdS81eWtlTkRYQmd1Wlo5VlNyTk10aGRwVlIvemdhKzVrVTVxK3Nm?=
 =?utf-8?B?N2lCZ1lMTkhWcVp1VFA4WDQ2dnZvUGRJMkd0cXpGeXdxSkNGczJGTnlXZU8w?=
 =?utf-8?Q?iU0MSxcBQoqL0tuP1s7Jqyk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C31B00863C38DF4FB5BA39BD7C5E5BDC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbca30b2-054f-4555-9282-08de3994a7a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 15:39:36.3950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DdfILsvNE5421s1sfbp2n4RwAfcgjJ3nXpj5ib0RW5oy3UQtvNmy2eNw/QLNy5yk/r3SPsVjoU3rKr2xWk20sziGpLurJ/zDd6P8/oFNMWc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6138
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IGlu
dGVsX2VkcF9kc2NfY29tcHV0ZV9waXBlX2JwcCgpIG1hdGNoZXMgbm93DQo+IGludGVsX2RwX2Rz
Y19jb21wdXRlX3BpcGVfYnBwKCksIHJlbW92ZSB0aGUgZm9ybWVyIGZ1bmN0aW9uLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAzMiArKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDMwIGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkg
PHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggODEyNDA1MjkzMzdiYy4uZGU1OWI5MzM4OGY0
MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAt
MjMyMSwzMCArMjMyMSw2IEBAIHN0YXRpYyBpbnQNCj4gaW50ZWxfZHBfZHNjX2NvbXB1dGVfcGlw
ZV9icHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJcmV0dXJuIDA7DQo+IMKgfQ0K
PiDCoA0KPiAtc3RhdGljIGludCBpbnRlbF9lZHBfZHNjX2NvbXB1dGVfcGlwZV9icHAoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwNCj4gLQkJCQkJwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gKnBpcGVfY29uZmlnLA0KPiAtCQkJCQnCoCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0K
PiAqY29ubl9zdGF0ZSwNCj4gLQkJCQkJwqAgY29uc3Qgc3RydWN0DQo+IGxpbmtfY29uZmlnX2xp
bWl0cyAqbGltaXRzKQ0KPiAtew0KPiAtCWludCBwaXBlX2JwcCwgZm9yY2VkX2JwcDsNCj4gLQlp
bnQgcmV0Ow0KPiAtDQo+IC0JZm9yY2VkX2JwcCA9IGludGVsX2RwX2ZvcmNlX2RzY19waXBlX2Jw
cChpbnRlbF9kcCwgbGltaXRzKTsNCj4gLQlpZiAoZm9yY2VkX2JwcCkNCj4gLQkJcGlwZV9icHAg
PSBmb3JjZWRfYnBwOw0KPiAtCWVsc2UNCj4gLQkJcGlwZV9icHAgPSBsaW1pdHMtPnBpcGUubWF4
X2JwcDsNCj4gLQ0KPiAtCXJldCA9IGRzY19jb21wdXRlX2NvbXByZXNzZWRfYnBwKGludGVsX2Rw
LCBwaXBlX2NvbmZpZywNCj4gY29ubl9zdGF0ZSwNCj4gLQkJCQkJIGxpbWl0cywgcGlwZV9icHAp
Ow0KPiAtCWlmIChyZXQpDQo+IC0JCXJldHVybiAtRUlOVkFMOw0KPiAtDQo+IC0JcGlwZV9jb25m
aWctPnBpcGVfYnBwID0gcGlwZV9icHA7DQo+IC0NCj4gLQlyZXR1cm4gMDsNCj4gLX0NCj4gLQ0K
PiDCoC8qDQo+IMKgICogUmV0dXJuIHdoZXRoZXIgRkVDIG11c3QgYmUgZW5hYmxlZCBmb3IgOGIx
MGIgU1NUIG9yIE1TVCBsaW5rcy4gT24NCj4gMTI4YjEzMmINCj4gwqAgKiBsaW5rcyBGRUMgaXMg
YWx3YXlzIGVuYWJsZWQgaW1wbGljaXRseSBieSB0aGUgSFcsIHNvIHRoaXMNCj4gZnVuY3Rpb24g
cmV0dXJucw0KPiBAQCAtMjM5NiwxMiArMjM3Miw4IEBAIGludCBpbnRlbF9kcF9kc2NfY29tcHV0
ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJICogZmlndXJlZCBv
dXQgZm9yIERQIE1TVCBEU0MuDQo+IMKgCSAqLw0KPiDCoAlpZiAoIWlzX21zdCkgew0KPiAtCQlp
ZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gLQkJCXJldCA9DQo+IGludGVsX2VkcF9k
c2NfY29tcHV0ZV9waXBlX2JwcChpbnRlbF9kcCwgcGlwZV9jb25maWcsDQo+IC0JCQkJCQkJwqDC
oMKgwqANCj4gY29ubl9zdGF0ZSwgbGltaXRzKTsNCj4gLQkJZWxzZQ0KPiAtCQkJcmV0ID0NCj4g
aW50ZWxfZHBfZHNjX2NvbXB1dGVfcGlwZV9icHAoaW50ZWxfZHAsIHBpcGVfY29uZmlnLA0KPiAt
CQkJCQkJCcKgwqDCoA0KPiBjb25uX3N0YXRlLCBsaW1pdHMpOw0KPiArCQlyZXQgPSBpbnRlbF9k
cF9kc2NfY29tcHV0ZV9waXBlX2JwcChpbnRlbF9kcCwNCj4gcGlwZV9jb25maWcsDQo+ICsJCQkJ
CQnCoMKgwqAgY29ubl9zdGF0ZSwNCj4gbGltaXRzKTsNCj4gwqAJCWlmIChyZXQpIHsNCj4gwqAJ
CQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IMKgCQkJCcKgwqDCoCAiTm8gVmFsaWQgcGlw
ZSBicHAgZm9yIGdpdmVuDQo+IG1vZGUgcmV0ID0gJWRcbiIsIHJldCk7DQoNCg==
