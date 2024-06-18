Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6879790C690
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 12:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA72D10E61D;
	Tue, 18 Jun 2024 10:23:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eqd5wAsl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05B5810E61D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 10:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718706212; x=1750242212;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vJPN9/PDeDIlLtxYaqisSOFzRW3DhC5cTcd8TrhmnmU=;
 b=Eqd5wAslllSakq207br36e4StkPp/sMXECUxlSED61/MQQpjodOWhvfU
 FQJpZEyN+1RXhttHo4XgCqlhSY5SZygOT8sElcY/Su4j/wvaz28cbxcKD
 7ef2hpIfbH5NZCGBJW3hauacpY+fYDISj0YMRCrBj6to8jWigLqh2xJ+x
 KwnE61N3RMJrN7ZKgYTXxb6NN/DrvuZgPdMlmnuhBsf7Lt0j+EHzFZ68x
 nRcy2W52VL7jiBN3RHC9Z95oENaolLhuXNvhu4g8fb+PrBn0anHQoT5vP
 rJ/VF892fcdG4yLJ44Hk2WZOe0Gr3Yy5etko5Seotl711RFFca2QVN6w9 A==;
X-CSE-ConnectionGUID: mmqmDqS/T2qqTSGRaWvw6w==
X-CSE-MsgGUID: SdNRIKk3RqqTrEZz6VnBvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15716669"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15716669"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 03:23:31 -0700
X-CSE-ConnectionGUID: T93/qOdbRbSmfnFjBDe7Cw==
X-CSE-MsgGUID: Iu6s9ESlSAu5vhT7FULuvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41430715"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 03:23:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 03:23:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 03:23:31 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 03:23:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=df7mW5ncDcm1c52ECb2MpLUiOMrbD2OoSfhaDoGUtgK9B3VmPJ384saGsfVqiaMSiJ3eb0bq7nlaCTllmHO7DC4S6za46bXMmv8lcdAo25vmEhZTynJX33H5Oxp8LihxZnoCClaGD/uT7qSARRMvx0+bhzJKOW0/dC9zmp+2AcGNSDateQehv8PLfLYRkzH1+bOY0ec7siH/dPyO39Uv8DCa/JbxzqSvpUwty0NXKLhYoJQjM6sxBQKRdqf/PEZeIAmUczV6p4BfJ3vsQUaQPlKm8zwp0M5YimQ9ELiII1uPKZxWsqg4w7B382yDLUSzM+2ldfS7drxS4A/q22W0MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vJPN9/PDeDIlLtxYaqisSOFzRW3DhC5cTcd8TrhmnmU=;
 b=Te+ZMF1Io47lGTjKeOKTYBS5wBgVQJX7d87a7jmkyUCd8XfX+rorbx9tgmitdZE4wpV402V2w1o0XRYjvYCyvwdofoqq6snh4rLa8F4Ikojt4VCWNiHFgJHNwgQIXluG5453EyZ/WcPLySaza9MIqu6WuBXvpLfk4a0iNtRgHhjYagpOm2mjQa2SVsDRCdIq5zV5UQBBkO/hfSQk97GLtfm63GHBbdI4E1i4IquV9IDCpqp5Io31vO8cyuFmq4tVmGS6hSuaNKhqU8fWOF1aryeSaKPfR8P5M7K1gV6TsYWOGnyRM20bZwjxBTSm94EXRg5LTUSJG6V3mM/9PqdAZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB8316.namprd11.prod.outlook.com (2603:10b6:610:17b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.21; Tue, 18 Jun
 2024 10:23:27 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%3]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 10:23:27 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH 1/9] drm/i915/psr: Set SU area width as pipe src width
Thread-Topic: [PATCH 1/9] drm/i915/psr: Set SU area width as pipe src width
Thread-Index: AQHawUC2cqm4wPeVxUqwL0Ka72vZ4rHNUHlQ
Date: Tue, 18 Jun 2024 10:23:27 +0000
Message-ID: <MW4PR11MB705432272D94773E3F01643FEFCE2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
 <20240618053026.3268759-2-jouni.hogander@intel.com>
In-Reply-To: <20240618053026.3268759-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB8316:EE_
x-ms-office365-filtering-correlation-id: db7638b1-3978-42cb-2b00-08dc8f80b143
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|366013|1800799021|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?Wnd1K0FkVWxMcHZUUmROSUQyZXZwbGJaSDhrOXVacUVuUC95SHBPUnI0Y29G?=
 =?utf-8?B?NlRCdDRPWVp5SW5EUlJoOE9SU3BmdHJtSkxnZGVkTC9VcENaUVpWcmJ5WTh5?=
 =?utf-8?B?YTg0SXMyZktQQ1lwVmZxRXppMVE0Y0p4TjZ6dzMzMkFQQlkvcERidjNCQzJi?=
 =?utf-8?B?ek9JeE9KSFJKRTJyUXR3RWlwT3NPOWZKd1MxbHRSSVdMY2J6WDFqbElGbDI3?=
 =?utf-8?B?anpzdVlVOForNzdwdVVEQ2hvd2QzbXVyVEpZMUZrQ3lqd2dEWklkeFUwcFEw?=
 =?utf-8?B?VS9nSXFJTCtkY3RDVC9zdy9obHhZdWdUckgrVGJDZEVOcnI1cWl0ekFpZGR3?=
 =?utf-8?B?dml2MEkra2QxcUZCRXB0d0gwaGpNVisydUtDNkEzMWpVM1l2dWEzOHd3N3FX?=
 =?utf-8?B?dTRVNDdYSm5BR1ErYWlncFQ5bkkzdjFFTnRNUnVScHpLSVhmV3B1c2lyTUpr?=
 =?utf-8?B?TGJMZ2RNdTYwMi9nSVhOczIwa09EVjVBczFiMTBSSlo5MDJVa1RQVVZGRTNP?=
 =?utf-8?B?MG96RURPOEMxcGdIZFhNSHVmajAzQ2w5bG9Yam1wdU5WYTczeE9NZThwRWNu?=
 =?utf-8?B?V3Y3UE9JOEVtcngwMUM5UVI3TDNmcWxLVVZiZ1hNbmZVcXFta3hqMTM3WnE0?=
 =?utf-8?B?UUZGOHVCWVBSSjJqOTkxdW1WbDZwczBUWndlQk0vQTR1TGhYTGsreExmVzFI?=
 =?utf-8?B?NE5sRk44MHJrMlQwcUlJOGlId2VVaFAyV1g1amtJYUs3ZjBYdFFRd2c4N2xo?=
 =?utf-8?B?eWpWV3hYR01kSFJ2N1hLTzBNdXZ1L3lvYjUrcmd4OFNOV2EvZDAyRTlRT1N4?=
 =?utf-8?B?eFBLZngvbE1uWVBCMFdKWUdQbTRNRkZiZ1lVbjM3bFkyNmVQYkRDVlFqMmtp?=
 =?utf-8?B?UVJqUVJmZVdVU3psUHAySzVyZUx6eG5DT283ek9HYml2NGVXZjJiUmI5MzFO?=
 =?utf-8?B?V2VpWmJ6QndVQ3k2MExGdGpBQ3pFRkYvZ0lTNWxiaU1SQzROdXlnQlhjeGVT?=
 =?utf-8?B?MHEzZXpFbFZpYzlYcFJscklkZDlCaDZrUzNmZmJvbE9PUWpHWTRwNmwyeWJB?=
 =?utf-8?B?TkIza3JvYmZqOHlYVEFvZkUzYUZtZW1SRXdLMkFEM1VxSGpkTEdEVFMxZWIx?=
 =?utf-8?B?WmxTYXMzMnpUaVEyOFlxRzF5NUt6bWhzKzdnaWlrWFVaa2hGMGw3OTdCSGhr?=
 =?utf-8?B?VFpCc1UxTlFPME5LNzVlS1ZyS0NUWE9CQXNQcVRvSllJa3VWR2FzcDQwTm9q?=
 =?utf-8?B?b1ArNTQvRGxMRDk5aFRVdjdkaW1OZWdIS2RuZFNJQmNPZE5xTGNoeFh6elgz?=
 =?utf-8?B?MFc3SFdkRkNzTWNOUVZiSjVtd3MySmdDU3ZZYjkzYk8rNVVTbVJqWWNoOVBx?=
 =?utf-8?B?cFl5YjJUR1FxbTJkSUNzYlZNL2FNbmdqYW1ZU1FZZ2ZVb2lzZy9oWk9hMGNx?=
 =?utf-8?B?YXJ5VElJT0daeEFZZ3VvR1FaU0pFMFhRZ2oxb3hzU2pOejFXd2hYSnJzRkxZ?=
 =?utf-8?B?YjVYaTdLaHNaOGhrRGVxb01RZ2E0Q2JMTkpIOTN1YnUyNHhYN3dna09RNVRO?=
 =?utf-8?B?UzdTRzJ1YkMydzRQaHl1dzRBZk9XRjJVL0lOSzhKZ2ZkMzB5VWRSLzlsd2k4?=
 =?utf-8?B?MzFuVGwzVEVDOVF3cjNLWEV6SmtxSVcweTAxUnJnS2FWbmpIUit1NGNpSGpp?=
 =?utf-8?B?NjNQSkRLdEJ6eDArY09HSGdXTDk1Tmh2Wi9LeEUyWjNEZStoQUsyeU1CVy9P?=
 =?utf-8?B?NURaS0t1TWY3N0RwendBN3ZsajVZR3Z2Y1NYTURhNjAzMTAxaE1WSG1nWFVL?=
 =?utf-8?Q?ZV4Dy5MFSjBm4WBguhPEz4k/YAoitoaS/4cUw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(366013)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d3kvR1NZbUFqNEhJbGVmQ3Joc21rYzJkWUI2T3J1K1ErK3ZVZk1xZWl2dU90?=
 =?utf-8?B?TzF6STZPUEYzYTM3R2JQYUd5UzF5c25EQW1xK0xGbmRQaVMzb3ZOZVpMVHpa?=
 =?utf-8?B?NWZiRlczL3ZQUlN6N3U5MnhZN1AxZm1RUjJnSy9SdjJGL055bWZEbnFtd2c2?=
 =?utf-8?B?MDdJVk00amU3QzJRV0VuOFpZZ2FZOWI4M3dXUUV5ODlxWG5jaWtxR2NsSTNv?=
 =?utf-8?B?MEVOZUJ5Y3ZmankrNStjeGJxUDk1WG9yemxNQ3F4TEl5VmZMOEt3WG5EVHUz?=
 =?utf-8?B?ZE9RQ2Q4RTRDUFVUd1F3V2F5VEFBZytzalNTZ2t1aWRrait5dHlMWG1ySVJ0?=
 =?utf-8?B?WCt2ZEY2NUlmdS85Rnh5dzdzR2t4MVdwYW5zTllQazA0ek1nSStHRFNpZlBo?=
 =?utf-8?B?eFZ3cDdFNnBwZi9QdSszS3lyVmtwM0RDRTVXUG53Wjc4MlNUOGlWL2ovQUZR?=
 =?utf-8?B?UEovUXdUVXpVY2NDMDk2YWUzdmdRZ2Y2czZNSXJEYyt2RVo2M1R3ZmpPZm9j?=
 =?utf-8?B?UEpQR1Y5dmRybEJHaFBtUTVLb0w5blZ6aW9teDJXaDQ5NURpRk5XNExVT1ZM?=
 =?utf-8?B?Zm5xYk9EMVd6MFMzMUloN3FFWWU2djRuN2ltMGw5K3o4SVl1TU5aTmo0UG5I?=
 =?utf-8?B?OW9Qc0wvTU0xYzh0eldNQU5HanFhTVI4MExJSms0dzcwZ1hvM0NZYnRBcmVh?=
 =?utf-8?B?MWdNQko2VkVRWStJRGZwUnFrYVpjcnRYV3VodndoNW5UbGcvZ1NWdndEWE9V?=
 =?utf-8?B?VlFHVnArVU1OUWZYaE1wSk5MNy9QNjlHSHZDc0lpOTlmaHBHZFBHbDVuWDlX?=
 =?utf-8?B?SlFSMlFaMWJ4b2k1cUxZdnRqb1hDMzl4TG9HWW93TzdVTm9pY2M2UDQ4OHVK?=
 =?utf-8?B?bWJQKzVWYS8wREI1UGN0S3ZSc2REa0ZCUnNKeEd1c01ZTVJ2ZzdMaDZlWkhx?=
 =?utf-8?B?SjgzZ1FqdDBMdCt1NXNjRjVndUFibjB2cVc5ZVpraExmWGtEb0ZLd0lVYkUx?=
 =?utf-8?B?WHVnNG0vRkx4K1VRSVFnSGxhWmFpdWdVemJGeTNIZWlkMmFDMFlWL2dhMUtF?=
 =?utf-8?B?NEU0UHNvOHE0YjZDNk8rQUVUclVEek5IQ29CcE9HcmhaVTQrTm5pdmFIQWRx?=
 =?utf-8?B?VXNKRjdvN2tqV0RNUmsrUVJZWGZvelhndnRxZU8vUlhaNjJYWHcyTXQ1THNs?=
 =?utf-8?B?Z0JRbitlaXRNYlliV2FBcmdrSGVaMkZGeTlxQVRhMkU2SmpLNGEyMzlxeERo?=
 =?utf-8?B?STQ1K1N0SXR1VElob2M0a21maUZ6cnNRK1JiK0tHSTM3eDFqbFJ3RlRGc3dq?=
 =?utf-8?B?aTc2a0ZBTGF2MkVhTm5ncldRUG5ZSVBMOXJYWTFaeGtKamkzTEZWWXhWOFhh?=
 =?utf-8?B?cmx6YVlEbHptbitMT0ljbVliaXVBazRPVjRURW1DOU1rbVRnM2xTQVlQMVpK?=
 =?utf-8?B?d1QyaEZHWnJZZDZKM2VnTEJ4cFo1aGlEUXhuZnJCUnJsd1VGRXhaeWRSNFFU?=
 =?utf-8?B?R2srb0FGN0pFODRmR3R4SmhrVkN5bEFTQzVFWithWkJnMkMxR1lldlB3cUZ4?=
 =?utf-8?B?M3R5Q2xsVlRTQTZBSEtQdUU2cHJidXBGejNUcnYwdmVUQnc0YVZLdkRqTHJ4?=
 =?utf-8?B?alpqVGxUSzVRUlE1cVNSa09XT1ExdVlOTlZPMThjbUFlZHAwRXUzbVV2QlZu?=
 =?utf-8?B?clBxK1E3VThFYU9qVGxzVGxFTFM5UEdBL3gvdFlFdnBXblVhRjBiQUNZci9o?=
 =?utf-8?B?UmlzWjlPa05WbGh5NHBZNVowNS9sMzhmY1NOaS85TW15bGNhSmdsbkdXMHhs?=
 =?utf-8?B?OTdQL01oNzJxaFN4WEJwWWNCTkMvL04yYlVJaWV1SXpXRjFkc2dtTmxWbGpm?=
 =?utf-8?B?cVljcmg5K2l5NEZteWNuU0UyNDRGNjBjMFVEbUZZWlZTRlpZbXNyRHJ3NSs1?=
 =?utf-8?B?TG45NVNKc3dyMmJuMVhZbzdCSUFGa29NbUF3NmFOdzROV3NsZ0JlZ2pyNjNj?=
 =?utf-8?B?cnViWmRTM0hWZjdYaXdHWjNPK3hMdDA0SEx4NHRoTW5WRE5rTlNlSXh5WVB6?=
 =?utf-8?B?NHFpZDNQMlF1dzVzcnM4WlRuSnZ3cTh3YVpPWGhrUGo4VWlhZXgvWFBwUDky?=
 =?utf-8?Q?1XSc0WhGHFH+5GsQAwerHLcIP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db7638b1-3978-42cb-2b00-08dc8f80b143
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 10:23:27.2020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j0lrrpHUgCnmZ/OJb6IwrEiCCM6Lay66LzwMFHcxrpIiNTPLfr5cDb4Zad7zSa2JCBIBmv/YWnZPMNgLycXAwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8316
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSnVuZSAxOCwgMjAyNCA4
OjMwIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBNYW5u
YSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4gPG1p
a2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMS85XSBkcm0vaTkxNS9wc3I6IFNldCBTVSBhcmVh
IHdpZHRoIGFzIHBpcGUgc3JjIHdpZHRoDQo+IA0KPiBDdXJyZW50bHkgU1UgYXJlYSB3aWR0aCBp
cyBzZXQgYXMgTUFYX0lOVC4gVGhpcyBpcyBjYXVzaW5nIHByb2JsZW1zLiBJbnN0ZWFkIHNldCBp
dCBhcw0KPiBwaXBlIHNyYyB3aWR0aC4NCj4gDQo+IEZpeGVzOiA4NmIyNmI2YWVhYzcgKCJkcm0v
aTkxNS9wc3I6IENhcnJ5IHN1IGFyZWEgaW4gY3J0Y19zdGF0ZSIpDQo+IA0KDQpSZXZpZXdlZC1i
eTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMiArLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTIwMTg2YzIyNjRkLi4z
ZjM2Yjk0MDIwZmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBAQCAtMjMxNiw3ICsyMzE2LDcgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3Vw
ZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ICpzdGF0ZSwNCj4gDQo+ICAJY3J0Y19z
dGF0ZS0+cHNyMl9zdV9hcmVhLngxID0gMDsNCj4gIAljcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEu
eTEgPSAtMTsNCj4gLQljcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEueDIgPSBJTlRfTUFYOw0KPiAr
CWNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS54MiA9IGRybV9yZWN0X3dpZHRoKCZjcnRjX3N0YXRl
LT5waXBlX3NyYyk7DQo+ICAJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkyID0gLTE7DQo+IA0K
PiAgCS8qDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
