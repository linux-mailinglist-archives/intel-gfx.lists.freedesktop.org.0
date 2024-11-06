Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 142549BEFB5
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 15:00:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1928810E6F1;
	Wed,  6 Nov 2024 14:00:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A91zMJXb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F40D10E6EB;
 Wed,  6 Nov 2024 14:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730901643; x=1762437643;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Oa8gA9O7BB6Y6BzfuUJy85Zf5FS573ogHa/UxK7KrG0=;
 b=A91zMJXbzEJokXgDXSZgPaVuopIVYWWSzCCveu6JziVraEHv0lrgmEH5
 ZVVKiIUNCKQP7nso44TNRrMp5ZvhxbQGy50h3W6cag6njiUBkEPGJJuug
 6Ln0+VtCiCK6oI94CyZ/ljEhv8GnIlAeE0pEyFhxngsP5fStRCmbQHlLH
 3Tod0mNfcO3I8f41iV+RrO7nWUBrhwopivi61FCp06IyuworQvA3azlgZ
 TAhE7j5jjEz9WVUAxg9KDrnM4r03Vob0i+MTAXNg9duoYPjmVALBeyQi/
 Lztu+vUJKN0QCfxgQkRdAWWgV4EaC8qZ/ZarmExRgpbbfevAbc4Qko4YX Q==;
X-CSE-ConnectionGUID: TkCmVWWxT+y1s4iHBh5kTw==
X-CSE-MsgGUID: yYDP86qyTKuWCzDrvRJP8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="56094013"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="56094013"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 06:00:17 -0800
X-CSE-ConnectionGUID: lnyxyrqQQZKov4bD2OY2Zg==
X-CSE-MsgGUID: E9phm/ADRZGo0fz63AW2wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="84190075"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 05:57:10 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 05:57:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 05:57:10 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 05:57:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l8SzVB6+dQwMS1yllNSMPvNxRhSsoSd7ZuFZFibppXn9mVJzBIaJ0clnSGrZrwwU9rDlUzLa27vuICql5s5h7rVYJB53NhXoYCj29T3dVgBOWzwWJ2BilV+pYgQbfcgPO2HFQmbgp+puInjCGqZ0MS/iSLdaA+7PIcogWdo0lwlsCfwQ4v3F7gJd+KjFKNeHqP+NKt3IUREvhh5LHi5GEa970xqwMaz2yDruEloE5zu7Ge0Y/ix/RhmAg4pjN1Ijqcu1jd/QMzOv40v87qQ0N3LMIpCeGp5b1Esjwn0jfunnzQ+mPZypC9M7/ZXRH2dIu3/j72DjelCPU+yD68XZoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AUxSbwdHbKRXDZ/nQwlB/+JPphXlrNl9yAlzOaMsMAs=;
 b=hc1DXHq5HpUTYpo1vhV0APQYsA6I6+SUL2D1Ybd5kziKLY19st8pkbKdAyHGFZ/klFwNCeuANuICgIoyjrwSu3THbnD0HLH/Apd5cyxP5CIP78jOHcAZFRt0AhiKS1lBhsxj9vrzN7osCJO0dPqWEdng/GHvXmFuCVtWa4/Cw/fx2TVdckj01zhF0KVVQLg8Z45CdqMwyL4yL9LVI8s+Lopc9ayjcAbN1CjsDFacjo/FdneNS5kiD1OSo5XZ66jA+QQfIrdSHqBjeho8JgK4WWY1g09j8Xun5kKmx2PbYOPZvpQTQhahPKW6NZkgwFgd8Jam7+54gktlchq83mWOWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6770.namprd11.prod.outlook.com (2603:10b6:510:1b4::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 13:57:02 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Wed, 6 Nov 2024
 13:57:02 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <94f01bd839525f91706c848b8043ff981ca1c861.camel@coelho.fi>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-8-gustavo.sousa@intel.com>
 <4964e35546545e41f904be73d7990b6bd23b46d3.camel@coelho.fi>
 <173081160057.2525.7640155471183036003@intel.com>
 <94f01bd839525f91706c848b8043ff981ca1c861.camel@coelho.fi>
Subject: Re: [PATCH 07/13] drm/i915/dmc_wl: Check ranges specific to DC states
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 6 Nov 2024 10:56:56 -0300
Message-ID: <173090141660.5449.3236805756186664237@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0385.namprd04.prod.outlook.com
 (2603:10b6:303:81::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6770:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b416f8b-f283-458f-6cbc-08dcfe6ae3b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V0RBM1dpcG11eTd0MWNtc1FZYW8xVWgzVVpnTUVsMVRhcnk3YWJQZ0lKVUM1?=
 =?utf-8?B?cEZGM1Q0RFlOT2UyUlBVSW9DMDlWTzl5N09qUmhOYms4ZHlnRmxHVWlEWnNj?=
 =?utf-8?B?bXlaV1FsQmMycVIxcnAySkFpWVRRZFBzQnNsTFN0eWVoQk05Q2hyM0toQ0l6?=
 =?utf-8?B?QTNrajBtQ0taNFdhMytLT2xoS3NMSHd1aDJBZ0wxWXVybTFyVXFhSFFySXhI?=
 =?utf-8?B?SnRZOFV6ZEJYM0ZRK25uS05DV2M4T1k2VjFZcVVEOUtXMjR4QkJWYkowRkFr?=
 =?utf-8?B?SXpIK2c0RXR1Y0FjS2NnbGg2clZjRHdvTjZlb3A1d0dHdGJvTlEyQ0d0ZVQ3?=
 =?utf-8?B?Wjlma2tTWG5HME8yTU91dERHTVJNajhmTndUdTV3clhKNG5uZGR6ZmRyL203?=
 =?utf-8?B?L1FHSEZiRmF4R1lQdUNHelFXVHlzWGZjVnI5ZE9FaVBxSXdKbU5mcGE1QkNh?=
 =?utf-8?B?OEtkb0Q1RWFwRFNvN3VIUDlQUWdNT1Z1blVBN2xkZU9uOHlnYTZUOU5oeUJN?=
 =?utf-8?B?aCs5KytPM0JYbTRIUCtoN0xFU3ZRVnBDR2d1Y254WWRDaFVNdGdaRVRFSzVR?=
 =?utf-8?B?dkpCQ05DQ0pBUU9KYlowbGxSM3JIT3RDSlNoZk5zWGVLdlVUbXBuS1ozLzN3?=
 =?utf-8?B?bVJPRDR3OVBIajh2WEl2MFdEcEYxVzJ6YS9PUjB3UHU5S24yNStYT1Y4Qk9U?=
 =?utf-8?B?eWtJTndPQnFzcnRCNDlHdmdsZ0w4cWVXeHI4eGVzb0k4VDZiK3B6OXJIbjZH?=
 =?utf-8?B?VmUrYm5kQS9JbC9FSERvZGVGWU5PeWxPYm1wb3BjMmpNUWNtalFDc1ExTzUy?=
 =?utf-8?B?K01NeCsyczVtL2lsc0FnMWE4SEFnSkRvaWRSVm1XWnJlVFFLT09IUTlLZHNk?=
 =?utf-8?B?OU9XbDdYaWRwTXRNN0hWdnZkTVZGMEFiSmVIVm94M1BzRGFTa1I2TEROcFBh?=
 =?utf-8?B?ekZwRnVVSjl6NzJrc1haZTdQdkd3c2FDYml5SkoxZjBRRlZ0cEJ5OFVDWTEr?=
 =?utf-8?B?SkdjNitzZDZSVUtQa2g2MTlrWjViUnlzZkN3WnBZeE1EeWtCaWY4Y05QTnJK?=
 =?utf-8?B?bEw0QXdWNFNiSDFtYWtBUjBOWHpSbHpuMXFhaDFhUVBqTkxDd1hka0JCYksx?=
 =?utf-8?B?WGg4dTNYc3VKd0kyTk1yUmxaQU8zanRhdzFwQ2kwNGxhVGIwaldKRnkrOENm?=
 =?utf-8?B?YnMwYStaaExiamVvZ1lUUlF2Y0VPenZDbGdEMzZ2TUp0d1hXaEhtMnI0c3p0?=
 =?utf-8?B?T09CNmhlYVlpWHZZOFpTMzRxam10dm15VDgreDhHN1NNUlVYL0p6Q3V3eU1B?=
 =?utf-8?B?eTBraWo3WnZDWk05K0xDTlhMQmpUaGhURURqZEduM3MyNG95N3g4UEczTis3?=
 =?utf-8?B?dE5LdXQrbTQrYjRoaFFmWCtlcStzVzVHSnlSdG11Q0VKYzVNVFFidHFXd3do?=
 =?utf-8?B?VnVyTHVPY1V3Q2xsVVhxb2hSVE51cWFHMXRrY2N1SFZMT3RhWG8xV0dNdENy?=
 =?utf-8?B?SzI1ZWRha0FiREdSNk8rNGtsSmxmRHJ6emFWdmc2VEZaSy83ZHJmd3hwUDM0?=
 =?utf-8?B?WDliZ1dIVmEyYld6eW4zWmNkVDBDdU9pQVcvR3pRbUluQmN4V2UyTjZSd21a?=
 =?utf-8?B?SXlFK2I3d0NmYnFSSWo3N2l0MHU2UWxGb2ZuN3BVRHdTK0dhc202ZHY2aEFY?=
 =?utf-8?B?TlZHdVl4TG9FcmFacDVXbXhMRlpYWVIyOVVVYUxrbVFjdlJpOFNLZkRPaFJ5?=
 =?utf-8?Q?jI0VtlwD1Oh34ttuSZobxafav9y69PdHTh+gbZy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L212ajYxT21vSm5vSUFSTjBReVVlSXRCbmMyNmRwaGVYTEJ3OWhtaEw0a3ky?=
 =?utf-8?B?UllOeXIvODVMd1BCdTM0bWhhQTdReVdaNkVJL0hRUjBROGhEckJtNTRQU0Nk?=
 =?utf-8?B?c3lGcXJTSXFPZ2UxUXlqa1prdDdSVmRVMmFVVHNSM3BmTWtrb2Q4WERaaEsx?=
 =?utf-8?B?YzBuUGZIRS9tT2FsUHJ2Z3JYK1p4dUJjcDNWNStYNTdROFZiM1l2aDhTYUl0?=
 =?utf-8?B?L3Njbkl3YmtFQ1NlT21YbkVDbFIwM0wycVE3S2JDcDhXcDdjTVh2TzVZUFBM?=
 =?utf-8?B?SUJWOWhGOTRsaWRFNnlxcFNaY1RZYi8zNkVyWjdyZlFhWmpZR21NcnRLdzdq?=
 =?utf-8?B?TXNhT2I1dytnMDdjcmtMRUFoaHAveG0yZ0dLUkh4V2tySG1QeDNZUTZPcTY3?=
 =?utf-8?B?WFpsUzJZYkF0ZXdXT2x1YTRSOUVmQjZoVjFPb3p2R2wvRFkxZmk3OVZPS0ho?=
 =?utf-8?B?UXp2dXYyN1d5Y1g0Z0V5RGZ3VWZ5NGNNdDRaeU1mRXczN0w2MmtrcVBmR3J5?=
 =?utf-8?B?THQzK2lKTEViems4ZHVhWjZlejhkUzZLUUNNZ0xJbm1jaHIyZEFhWHU3RmxG?=
 =?utf-8?B?a2REa0dnVjFiUklvZXZxMUVjREUxZkxtWWJKWG15VGd0V3BCTDFQQVkrcmV1?=
 =?utf-8?B?MlpvUnZTeVNvenlqR1k2WDQ5bGNMOTFFQlQ0NVluYUFuTjI1YzFJQkhqeklm?=
 =?utf-8?B?WWllT1h0ZC90OHVmdlYzaUk3M0FpMFF1L3dqMmhnRXVBNW5tZG9zWC94RVp0?=
 =?utf-8?B?enYzSnRpVXVobFdGR2xkK2hKQW9XZFlENTc3N3BNRSs4MUlMY2VJTHpoS2t2?=
 =?utf-8?B?TTFLb1grUlJMMWg1enMrOWpPYVhRNTdzTGFFRnBjc3A3SGZVZGFINlg5ZDAx?=
 =?utf-8?B?TEFISCtrMjNTaWJuVXVXOHJaRmwxelR5ZFZrQTNDSjllL2lidnRVNGlPNkdC?=
 =?utf-8?B?U0Y2SkNlcENKNGU0ditSL1oxcGphcHhFSVQ3RGhKejVIYlptTXFoRVBXb0ls?=
 =?utf-8?B?WUoxTkRnbkFzaDVvTFFQcGY1dXVGZnVzc3dHcTNzVkVVVXpGTXNtKzZYbGVY?=
 =?utf-8?B?b2hoTE1oQkowNWYvNmlrdDltc2xLZ29kOTFrcS9GZVVndXJITEpvK2JSbFlr?=
 =?utf-8?B?dnFkaXFuQzdmcnJvQkFHQXFLUmpZU0poQnZrY2ZEaXE2d0FwSmRxMkNwQk1T?=
 =?utf-8?B?cTBraGhWaWp4dFZ0ZEhSZVZ2Z3JvZnAzSXJ2cjAreXptK2NlMnFzMUR3cGxG?=
 =?utf-8?B?TVc0V25mUWNLQldlZXE1SnlrRDErQzFuU3ZQcUhqY0NRSlVSTjdjOThocTFp?=
 =?utf-8?B?R084aEw0cWphUjR3dmphR1FSVDc0QVpsTmNXcUZwYVpnekhyeFZ0RVBkQk5i?=
 =?utf-8?B?cDV2KzBJaTgrWG8wZnBQM0V0ckhqUDFOcHR3anNRa2tlSmdRei9XR2hQZkgy?=
 =?utf-8?B?YnZ6d01saUFHZVNwSENJYVFRT1hKRUVyVEhVcHh5b3NQUHc1N2FKZEpPNmxw?=
 =?utf-8?B?SUdIY3BrdU1kR21mQ0tOSTIvSUJHbzErQXpzV214bklhWE9aaWVhbW1WWWpN?=
 =?utf-8?B?MEJoYjV0MkxmWkFDMnRJY3pwNndXWmJTZXJVUHVnRE1HdU5QRFRVakhDdktI?=
 =?utf-8?B?U3NPTW8zclIvZ3ZZQnpISUowVjJkZnN6czI3eGUzcFNYUDJyQXhIU3JLV3dR?=
 =?utf-8?B?cXVLY1kzRDJXdStXSFFFTnlKbEV1eVdQSlZmd1ZjK21xUUZxWmZYMXg1WFNG?=
 =?utf-8?B?MmJKMXpSbEk4QStWcUdvcEk3WDM1S3o4dlpObVliUnU4SWh3YmJnVDlxNlVQ?=
 =?utf-8?B?Tm8zbURDUVFnQUNFS08yQXZDWEUvczE1VjIwTDUzKytHRzVRVHdEb1hhNUt5?=
 =?utf-8?B?ckFvSXVsOXZWSFZ2ZFU5SlprUDBpMXlKVk1FTG9RaGJ5M1UvV0ZRN2RSQURY?=
 =?utf-8?B?TVI3NHY2S2Y3QitXZnlRTGdhQ3diYk9qTFp5S3Jvd2dFeEI0b0wyd25WQUhM?=
 =?utf-8?B?SWp3TmxyZWc1eUZ0RUFZa1kwRkFiLzFJS3J4SXd3T3BMdm9JQmJLSXdWcUJL?=
 =?utf-8?B?WFQ2YVZieHZTOXU4ZzI0NCtxdldNMHZWNUdTck5aa1JDS0NEYWMrd0FuZEph?=
 =?utf-8?B?SUpFbElOMmVycnMrKy9HMlh6dEZ3S29xL3VMYXhkVlZtQ2FpL2Z1K1BtY0FD?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b416f8b-f283-458f-6cbc-08dcfe6ae3b0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 13:57:02.3297 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6DmUxCNUfohfmqIdoCnIw7yLd1jethmvnw9OtkKuDlapVzPXkSx/lOcXTuI8rwa7wYTmDJlPzW/7sVZcUTU3tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6770
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

Quoting Luca Coelho (2024-11-06 08:47:07-03:00)
>On Tue, 2024-11-05 at 10:00 -0300, Gustavo Sousa wrote:
>> Quoting Luca Coelho (2024-11-01 09:51:48-03:00)
>> > On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
>> > > There are extra registers that require the DMC wakelock when specifi=
c
>> > > dynamic DC states are in place. Add the table ranges for them and us=
e
>> > > the correct table depending on the allowed DC states.
>> > >=20
>> > > Bspec: 71583
>> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 112 +++++++++++++++++=
++-
>> > >  1 file changed, 108 insertions(+), 4 deletions(-)
>> > >=20
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/g=
pu/drm/i915/display/intel_dmc_wl.c
>> > > index d597cc825f64..8bf2f32be859 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> > > @@ -5,6 +5,7 @@
>> > > =20
>> > >  #include <linux/kernel.h>
>> > > =20
>> > > +#include "i915_reg.h"
>> > >  #include "intel_de.h"
>> > >  #include "intel_dmc.h"
>> > >  #include "intel_dmc_regs.h"
>> > > @@ -52,6 +53,87 @@ static struct intel_dmc_wl_range lnl_wl_range[] =
=3D {
>> > >          {},
>> > >  };
>> >=20
>> > Do we still need the lnl_wl_range[]? This was sort of a place-holder
>> > with a very large range just for testing.  I can see that there are at
>> > least some ranges in common between lnl_wl_range[] and the new range
>> > tables defined below.
>>=20
>> Yes, although we could do some homework to get a more accurate set of
>> ranges.
>>=20
>> Now, about the different tables:
>>=20
>>  - lnl_wl_range should be about ranges of registers that are powered
>>    down during DC states and that the HW requires DC exit for proper
>>    access.
>>  - xe3lpd_{dc5_dc6,dc3co}_wl_ranges are registers that are touched by
>>    the DMC and need the wakelock for properly restoring the correct
>>    value before accessing them.
>>=20
>> Maybe a comment in the code explaining the above is warranted?
>
>I think a better naming for the arrays is warranted. :) Wouldn't
>changing lnl_wl_range to base_wl_range or so be better? My point is
>that LNL is not related at all here (anymore).

Yep, we could come up with better names for those variables. I went
with:

    s/lnl_wl_range/powered_off_ranges/
    s/xe3lpd_dc3co_wl_ranges/xe3lpd_dc3co_dmc_ranges/
    s/xe3lpd_dc5_dc6_wl_ranges/xe3lpd_dc5_dc6_dmc_ranges/

And also added comments to differentiate their purposes.

--
Gustavo Sousa

>
>
>> > > +static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
>> > > +        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL *=
/
>> > > +        { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_=
COUNTER */
>> > > +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> > > +        { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_*=
 */
>> > > +        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL=
 */
>> > > +
>> > > +        /* DBUF_CTL_* */
>> > > +        { .start =3D 0x44300, .end =3D 0x44300 },
>> > > +        { .start =3D 0x44304, .end =3D 0x44304 },
>> > > +        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> > > +        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> > > +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> > > +        { .start =3D 0x45008, .end =3D 0x45008 },
>> > > +
>> > > +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENAB=
LE */
>> > > +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> > > +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_C=
TL */
>> > > +
>> > > +        /* TRANS_CMTG_CTL_* */
>> > > +        { .start =3D 0x6fa88, .end =3D 0x6fa88 },
>> > > +        { .start =3D 0x6fb88, .end =3D 0x6fb88 },
>> >=20
>> > These, for instance, are part of lnl_wl_range[].
>>=20
>> Given my clarification above about the different purposes of the ranges,
>> I think we should stick to keeping the same values from the (soon to
>> be?) documented tables, even if there is some small redundancy.
>> Otherwise we would require the programmer to remember to check ranges in
>> the "more general" table every time a DC state-specific one needs to be
>> added or updated.
>
>Makes sense, I guess it's okay that the base table and the specialized
>tables are slightly redundant then.
>
>--
>Cheers,
>Luca.
