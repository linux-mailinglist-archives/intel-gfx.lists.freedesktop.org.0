Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C219FEE19
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 10:02:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB1210E60F;
	Tue, 31 Dec 2024 09:02:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DU8IwQ04";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E02210E60C;
 Tue, 31 Dec 2024 09:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735635746; x=1767171746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=A8b8H17xTtav90ueXybGxZZxP929AE77sm03oZvXNVc=;
 b=DU8IwQ04uBH8sKm0uByDHzZh2b9GXl3DS9jvECZX0rGwxaYcSJYM/o4Y
 6VvWc1ZrRLv3nyWgyIzBhC/7nWplJUleuBlXJznzvYwsr3sQlIoRRD3xD
 uLXNeYyg3Hhgiz4Vo70sxkpM4M7EiLxdl3x8xhO4Kp9cmnPry1PBs2hqX
 5v2Rkdn2P60xDNu7+Baw4tL4evDfqW+9nt09G92izMi5BKqRH/oU2bRji
 43iB2nWz4W/QzT1fk+9OZ8V90I08y2u+R5ON4liAqc+C6TEnPnjoJ/Nfd
 9M6oZkShOxF5pnEixlrYuyaKGxEo998cSgcdjMhG002u6rP5tq5cP53MV g==;
X-CSE-ConnectionGUID: Z2fTzNmVTDy0HWVPyA0b5Q==
X-CSE-MsgGUID: 3W/Qrx7CSSKb9y5LIWc1kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="35799940"
X-IronPort-AV: E=Sophos;i="6.12,278,1728975600"; d="scan'208";a="35799940"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 01:02:25 -0800
X-CSE-ConnectionGUID: +DRu7MvuTfaeWMC9sUsdjQ==
X-CSE-MsgGUID: NLobBGe+QwucEvT4JkDbPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124293889"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 01:02:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 01:02:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 01:02:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 01:02:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yUlF6EQ9n192dHKJhYeUkZ4LtPQ0LUbM8L0rK+JaffI6FBY743Ru2jEiq5BPa+nH663dRRhnLE10QDOTPks2h8vAwgG9yf3zQOYHAcw7ux5K1VWtyFVioy8YiwKXpSAKcNpM/C29JIDHwGR75JKpqARVwnbdAsb8eRHQlimZVFN/QXCeIjoqUkj3ju/tUl6Np6ewZUWtvh9zWbTaByFwCZqFzQLgYJfBr6Zppd9vIY7OA/QolIx2CFEgsDj95bmvOc4jilWkB/52e/0SyIDsQHG/XcZgMaRdxptQ3MAVeyyQ8QLEN4WU1OdbO/Lt/Q4+EBhOaHS9LV0fQ6/cCwpLHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A8b8H17xTtav90ueXybGxZZxP929AE77sm03oZvXNVc=;
 b=L3YdjL0Pnp6ffLsC3NF84+JHFDxukyWNQWucGVGvHEcmN4mA26a09bRkOFSh3LfLBghkPuoJ711tyudQkWhxheE25mJJeGV/+Yt6ovBdLPjAehFdL8cijHlFggCE8Tld82xQqHc8x+jGDAVMbkJ3Tc/zzEbWUkfDIpQxLoT3I1yeCJHzWCqnYt/tcrTnF9ToBA7EbN1qM7wuuaJoZYwwyqYkTpmvW6v4ZYRuzsNjaW2AzKVgMTVPIHnKvI3AGmPKK3P27re9gTqDM6zvpVq0aP51lRgHjYgbgpf6nvp3+yP5fbW9SmStHKa6ipC2WQ4eQ0S7KIY5asy3E7lu+HnKeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6098.namprd11.prod.outlook.com (2603:10b6:208:3d6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Tue, 31 Dec
 2024 09:02:02 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8293.000; Tue, 31 Dec 2024
 09:02:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 05/10] drm/i915/psr: Ensure SFF/CFF bits are not written
 at their sample point
Thread-Topic: [PATCH 05/10] drm/i915/psr: Ensure SFF/CFF bits are not written
 at their sample point
Thread-Index: AQHbTSlDMN5InT8uM0qHp6hvOXN6iLLu6n6AgBFAfAA=
Date: Tue, 31 Dec 2024 09:02:02 +0000
Message-ID: <540804a315a451a5bd1ef8656497b2f680df474a.camel@intel.com>
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
 <20241213063528.2759659-6-jouni.hogander@intel.com>
 <Z2U6N12oPGh8Anbj@intel.com>
In-Reply-To: <Z2U6N12oPGh8Anbj@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6098:EE_
x-ms-office365-filtering-correlation-id: bb395275-851f-47ce-6a49-08dd2979ca7c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?blVtampmYldId0h0Zk5ERTh6a1J4NVNnUk82RTkyZ3BoeVF2NTEzMkFVaHVq?=
 =?utf-8?B?VGpLNjZ4M2xQUlhGUHpuLzZQNnRxMWVwS21qOEw3MjBzMnVSaDhjUEZ5KzFJ?=
 =?utf-8?B?bkZRd1FyZjVQWVM4K2xlRDJaakFzSys2MkJoVDRSN2lUeURiOGNyWWl1a3Y2?=
 =?utf-8?B?YytpNC9vWHhjUWthL2RTZldXQitxUzJNS3NJUmE1cEx3N1RDUEFPWjFUQ2wz?=
 =?utf-8?B?NGNkWE9YQnRtekRMRk9HTU9zUDRoV1hUN2l5dGVZMDRYM3hjTjdNcFRuOFM0?=
 =?utf-8?B?YmxvN2pYZGkxdlNLODBQOEJqRERPZU1Ta2M2bUlWRlB1RlpiYUc5ZGdIdElK?=
 =?utf-8?B?eXora09XZm1RNDd3ZERRWWZwbUdjbDhjbmVrSWtIWlNQS29uYlZGaWx4TUxw?=
 =?utf-8?B?aU1mYlJGaWFad2g0a0JGYkIzT0NxL0FVREVLYmxDWUFaWGRucVRkcjQ0SlRR?=
 =?utf-8?B?WEZqOXJwT2FUUFJTQmRSRHNSS0pGUld0RE9TOWRPcllsUGp2cjBsVWV5akZt?=
 =?utf-8?B?ajVMaXV5eldDam9wTXliQk5ZYjJDSVo5cXBEZWZsR2gwZGJoTmNGN2xuUDVa?=
 =?utf-8?B?Zkl3M2dPdWMyZ0NoeFpDN3dxbjRpY0xFZTJWNkFGVFN0cUlLeUpiczhhWm5t?=
 =?utf-8?B?QWJqZFdTeVFEKzJYL1RHN0svZ0NqOWJGQm5XbHpMVEJ1Y2dYTE03a0twSTRU?=
 =?utf-8?B?UjJhVysrR3hOOFUrMlJNZjM1dkEzcWpYY0hqRW5oOEN3V1kvZWo0Tm1BNDVE?=
 =?utf-8?B?a1lSWHVEMzhnTHFNOTUrN1YvSTNBczFIbFZqVXpUV1BmWlBkSCtleGthWEZt?=
 =?utf-8?B?N080ZkRDeHV3T1l2V2M1aFJ3RnQ2SlVYbmZ1U0tEdjZLWGdUdGZpajdCU01m?=
 =?utf-8?B?RmFFb25ITENnMjdjQTVNWFlIci9CenFBaDVQakJaSDc4QklCeTdFdm1LbGpx?=
 =?utf-8?B?OGUwdlVhZ2lBK3NSaFRiWjgzbWNiYVdPUmFZZ0RtejZWaFpzdTdsUDFueWdu?=
 =?utf-8?B?dkozYXlUZFFrMExSaEpGQlJ2WkVXV21qcVBkNWpkNlBKeTE1eUhaaEQyMkVl?=
 =?utf-8?B?NVdDejlXTCtvU2Y4RWFOV1JoUjJXSEpCU0dzeTBNMXVOOGFZM1NleStxUFFQ?=
 =?utf-8?B?NFEyZlRGOTgyWTluTXlxbU5JZkZCM1FLUHNSWlRKU0JHZTJEMXphZ1BOQWF4?=
 =?utf-8?B?R2M0QUFtTUZwcHU1WEppWXEzS3VwOUxQMzdHa2U4eHRkVjNGZzVwK1RsU2F3?=
 =?utf-8?B?UzREQkNTYVpZdjFIRG1LdjhLRUpnYlJJTDJyTUo1Z2hpN0lEOXRzSGNWbE5H?=
 =?utf-8?B?aUhMT2tremV4Q3FqejhMeWdTSkp1bmkzRVVaeFVlaTBEbDVzaFBnQ1lGWXNE?=
 =?utf-8?B?RUx6WjIzWUxsNkdYamZTa2RibCtXTjNxVkNvWStEb1RFL2E0SWp4NEhvWjBz?=
 =?utf-8?B?QWg2ZWFUMEdyM2dtbDFnU3VSYlVjU2lxQ0tOWVpZNmJsMDRoM2xRR2tZdVJU?=
 =?utf-8?B?QnZTQ2Z2cUdLNDBIbFJpU3VOZXhOWm9USjFjZ2paa0ZlUnlWN0dhdEFJTWhy?=
 =?utf-8?B?WEI3T1VkZHpONjBVelBlbVJrV3pKZnFvY2JnYTBmVWxDcVp5ZWlLaTUzdlN4?=
 =?utf-8?B?VUpaaHRvM2J4NURKYnpCZkR5aGxMSitlMkF1ZEtkQjBadUNHS0lwMEhjR2dQ?=
 =?utf-8?B?M2c4ZGc4MFp6N1JHSGVOWk5qM25qRFl1Z255S1VTRmE1TmVjT0ZZdStJblo2?=
 =?utf-8?B?SWc3a2lOa2RwL2FDcjlYdEFRNGtvT2FVUHFyeWJBTnhXU2hBYnZ0dVFHWERp?=
 =?utf-8?B?NzBGS1JpN2FWVENjSDdLWmNwYmRNTERKL3ZnL2RGTElJSmRMam84VEFjZVRk?=
 =?utf-8?B?K2RrQjVXWXdMcWpPcTVLVjlWeUFpVkVWeFhEUHU1RkpCbm0zOUR3LzZtekpM?=
 =?utf-8?Q?uAyBpxX18LW2Mrcek6FxS3fairxvFy4o?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkdlZTVVTW50UEVCZ0hSV2I4RnZJeExXVWRoWkJiS3JIeXBtZTRZODNHMkxt?=
 =?utf-8?B?cXpFVUNSS05WR1NvS0gzOElkWDhxMnZ6cXBuWlRqa2RqWkJwZE1pMnFiMUho?=
 =?utf-8?B?TFJTbGlabUJ3UHBVSHhKaVEvY3NWNkIvSGJRQkYxbDR6TkNuejdNVHloVVBq?=
 =?utf-8?B?QnQwWW8wWnhIN0ZhRUF2OFlpTGIxQlNVMDhjQTdNclZSNFQ5UWF0SDFxUlVJ?=
 =?utf-8?B?R284NlcvTi9BWEcrb0FxWlBKWGlCYkpvQ2haUjkwOTFQVm52a3VhT1FhS1VN?=
 =?utf-8?B?eWpvZFdpQlpadlVqcjJvUmZrdytkM2RHa09OdXVkSTBtdUFXLzgwU2tqNnp4?=
 =?utf-8?B?aGNCTzBmVmVXTTlLTFdORjUwQU1hQ2k5a2ZzNDJ3cXVWRnB6dUJMeHdzbTBI?=
 =?utf-8?B?OVBCaWY2OXhCSDlpNTlWNUg0WG1BTUtzR1FVYUhiM3I0Y2JtRHJnYUt2SjdP?=
 =?utf-8?B?aFV3bjBjaGVFNURMVElabGptQkk1cTR4RHA4eGc4Z29xaEFOWVZIcHM2S2dI?=
 =?utf-8?B?WnpjbTVyTk4rKzgrd3VvOTNxMEc0RWR4Q0QvWXVUYTRGb2lTckx6N1hsWmJz?=
 =?utf-8?B?SmxoSVpZSFRtUTJKSkF1RlFCaHJWbU5HY0RrUjF5cDcvQkZwbm04YlFDbFlo?=
 =?utf-8?B?eE5QRDVPaXJrUkdyTWlNbUdXck83YVJzZytWM1E4ellqc2NyWXBZOUdQMG5V?=
 =?utf-8?B?ZDFpMnU4cmprckVZZ2U0cmhsYW5wdThlYUU4SUdHV2orNzV5T1JQV29ia3hp?=
 =?utf-8?B?TWlwMS9KQzQvaEVGT2hFNG1aaGdtV29TUVQ3dEMvMFhtU25MdWcrWHRzb0dy?=
 =?utf-8?B?cHNQS2UxaE53ZlJHa0xta3dlZUl4ZHQ3cFVhamJPUU80REJGdlZrY2krblY5?=
 =?utf-8?B?VVpjR2FDOXdsUUlrTGJwVE9LbGcyOVg4OUgvWStRUkdSWUkrYTlHTjU1VzE0?=
 =?utf-8?B?ZVZvZEtFcU1wcWFOUFdJRWZqWlQxR28rcVJUeTY3YkU5V0JDVlVKS1RtOC9l?=
 =?utf-8?B?ZmpBTDRCc3BHa1VhTzBwVi9zeFJ2MTE2QUdTcTFBYmhweXc0anVra0JXUzNR?=
 =?utf-8?B?SlA5MjVnMkxTWXJvS25qWHgwQUd3U2p1dTY4VWxyT0RYR1ErSDdTMDR2WEJE?=
 =?utf-8?B?dE1aTWNGTllZVFF1Szh0amozQ0F0aE9yMmRYVGJnd3o4RytrTEY4Ly9OUVdm?=
 =?utf-8?B?WXc3Q0hvRHFDWFNQR0ltbVRMdytYbjl3VHZ3R09oV1lSMk8vRnVFekZBM3p3?=
 =?utf-8?B?dXpveFYrZ0xOMXA1VDA3S000bGNrdEZJUkowRFQwdEhLQmlhRWpoYnIyMzNs?=
 =?utf-8?B?UkJVaFNMbDdXOHI4WEJRRmhSRkw2amFDT1BPWXBvdXpvZXFUR09ScnMrTjVo?=
 =?utf-8?B?OTJmV3BmWjlLdVVJNGNlK09uUlNoWUt5TkZZVnhiTk1ocC9ZcG4zTnFMclND?=
 =?utf-8?B?dDJrRElUMWtWRXMxSElnTlo5NUczQ05xMis3dW0ycktHVHZ4d2Q1SytJVFp1?=
 =?utf-8?B?alN6ZFNkZ21OYW85MytDVHJSVVE5K2o4NmJQVnZ5Q3I2RHhXUjFwWi9pRFVw?=
 =?utf-8?B?THpPOHo3NWE5RFQwdTVFYmxMeWNvRmZFTFAyMHplTFdPWUNlaHE5dFN3R2pO?=
 =?utf-8?B?RWh2d2ZxY0RLR2ZUV0xUaG1oWkJ1bHNMSWxmUkRYZit5bTZ1ckcvQXRqMzFp?=
 =?utf-8?B?Zkdhb2FVRDR5TEIrMzVlb1RUNHJ6bFMvNEpxS3cvYWdxN3RTVTJxZXI2VmQ0?=
 =?utf-8?B?cTIyMndBVWVBU2twOHNaOVYvSGR0cVdjblBlSGRCOWhYN3FCNkZsd1ZQc20z?=
 =?utf-8?B?Rmx3YnhFTUROWGtnbC9qc0tZUXlWZ3lqTjY1Q1FpeWhScFFlMHBWTC9xaUd3?=
 =?utf-8?B?YzBBNkpmT1VoNXpSenIzVEExSUw4SitVaWRJRDNZVkZRbVdpdHl0aEVIeS9k?=
 =?utf-8?B?V0ZvQk93VkM5Vy9sUmNreElnQ1hTMlRPYkxLbzk2blhQSyt2R1hrL1Q3c3V2?=
 =?utf-8?B?Z3BjdjdmRXJLNzVVaGFFZ3VpYmRwUGZTdERlVmlPSHcvQmJLT2VNMnhiNWhq?=
 =?utf-8?B?MTd6b0F3NEZpT3FoQjFTb1lrQjJLazFRRkVROWJwZmQrTGdDYzJDRkN6ZWpx?=
 =?utf-8?B?eGt5b3l3K3RHb2lyTDlXTGxzcWgzU0NseERsTnBrNTVvTWoxeFJlNlVzVFkv?=
 =?utf-8?B?SXVxVk5Nd0xINVU3SCtHMnpPMUg3OHBxNWJaaWJEVU94c0pJeVFKT3VNZ2V5?=
 =?utf-8?B?YXZNNTZWd1RQeU9jWHVXTHdaUlZRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B81FFF69D318E344BE642C589AC686A4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb395275-851f-47ce-6a49-08dd2979ca7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2024 09:02:02.1235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xGTzeaV+l57bQWn5mqpBT/FkDjCM8wafvdiKIT84DSQ1XbOek7SGwg3ecceZWs0S4Ayk5wlwSmPQ30vuFiP1GxLwqaFDTOPeNR7I4RSIdHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6098
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

T24gRnJpLCAyMDI0LTEyLTIwIGF0IDExOjM0ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgRGVjIDEzLCAyMDI0IGF0IDA4OjM1OjIzQU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBCc3BlYyBzYXlzIHRoaXMgZm9yIFNGRi9DRkY6DQo+ID4gDQo+ID4g
IkhhcmR3YXJlIHNhbXBsZXMgdGhpcyBiaXQgb24gdGhlIHN0YXJ0IG9mIGV2ZXJ5IFYuIEJsYW5r
IEd1YXJkYmFuZA0KPiA+IHJlZ2lvbi4gRm9yIGRldGVybWluaXN0aWMgYmVoYXZpb3IsIFNvZnR3
YXJlIHNob3VsZCBlbnN1cmUgaXQgaXMNCj4gPiBub3QNCj4gPiBjaGFuZ2luZyB0aGlzIGJpdCBh
cm91bmQgdGhlIHNhbXBsZSBwb2ludC4iDQo+ID4gDQo+ID4gVGhpcyBjYW4gYmUgYWNoaWV2ZWQg
YnkgdXNpbmcgaW50ZWxfdmJsYW5rX2V2YWRlLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE3ICsrKysrKysrKysr
KysrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXgg
YzA3NGRlNmI2YzEyLi44YWEyNTc0YmE1YzkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMjYsNiArMjYsNyBAQA0KPiA+IMKgI2lu
Y2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPg0KPiA+IMKgI2luY2x1ZGUgPGRybS9kcm1f
ZGFtYWdlX2hlbHBlci5oPg0KPiA+IMKgI2luY2x1ZGUgPGRybS9kcm1fZGVidWdmcy5oPg0KPiA+
ICsjaW5jbHVkZSA8ZHJtL2RybV92YmxhbmsuaD4NCj4gPiDCoA0KPiA+IMKgI2luY2x1ZGUgImk5
MTVfZHJ2LmgiDQo+ID4gwqAjaW5jbHVkZSAiaTkxNV9yZWcuaCINCj4gPiBAQCAtNDQsNiArNDUs
NyBAQA0KPiA+IMKgI2luY2x1ZGUgImludGVsX3Bzci5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVs
X3Bzcl9yZWdzLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfc25wc19waHkuaCINCj4gPiArI2lu
Y2x1ZGUgImludGVsX3ZibGFuay5oIg0KPiA+IMKgI2luY2x1ZGUgInNrbF91bml2ZXJzYWxfcGxh
bmUuaCINCj4gPiDCoA0KPiA+IMKgLyoqDQo+ID4gQEAgLTMxMTQsMTYgKzMxMTYsMzEgQEAgc3Rh
dGljIHZvaWQNCj4gPiBpbnRlbF9wc3JfY29uZmlndXJlX2Z1bGxfZnJhbWVfdXBkYXRlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+IMKgCWVu
dW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsN
Cj4gPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gaW50ZWxfY3J0Y19mb3JfcGlwZShkaXNw
bGF5LA0KPiA+IGludGVsX2RwLT5wc3IucGlwZSk7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ID4gdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0
YXRlKTsNCj4gDQo+IFlvdSBjYW4ndCB1c2UgdGhhdCB3aXRob3V0IHByb3BlciBsb2NraW5nLg0K
DQpJIGRpZCBzb21lIGV4cGVyaW1lbnRzIHdpdGggdGhpcyBhbmQgc3RhcnRlZCB0aGlua2luZyBJ
IHdpbGwgZHJvcCB0aGlzDQpwYXRjaCBmcm9tIHRoZSBzZXJpZXMuIGZyb250YnVmZmVyIGNhbGxi
YWNrcyBpbiBnZW0gY29kZSBhcmUgcXVpdGUgYQ0KcmFiYml0IGhvbGUgd2hhdCBjb21lcyB0byBs
b2NraW5nLiBUaGlzIGlzIGFueXdheXMgYWRkcmVzc2luZyBleGlzdGluZw0KaXNzdWUgbm90IGlu
dHJvZHVjZWQgYnkgdGhpcyBwYXRjaCBzZXJpZXMuIE9uZSBpZGVhIEkgaGF2ZSBpcyB0bw0KaW1w
bGVtZW50IGV2YXNpb24gb25seSBmb3IgT1JJR0lOX0RJUlRZRkIgYW5kIE9SSUdJTl9DVVJTT1Jf
VVBEQVRFLiBEbw0KeW91IGhhdmUgYW55IGJldHRlciBpZGVhcz8NCg0KQlIsDQoNCkpvdW5pIEjD
tmdhbmRlcg0KDQo+IA0KPiA+ICsJc3RydWN0IGludGVsX3ZibGFua19ldmFkZV9jdHggZXZhZGU7
DQo+ID4gwqANCj4gPiDCoAlpZiAoIWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxl
ZCkNCj4gPiDCoAkJcmV0dXJuOw0KPiA+IMKgDQo+ID4gKwlpbnRlbF92YmxhbmtfZXZhZGVfaW5p
dChjcnRjX3N0YXRlLCBjcnRjX3N0YXRlLCAmZXZhZGUpOw0KPiA+ICsNCj4gPiArCWRybV9jcnRj
X3ZibGFua19nZXQoJmNydGMtPmJhc2UpOw0KPiA+ICsNCj4gPiArCWxvY2FsX2lycV9kaXNhYmxl
KCk7DQo+ID4gKw0KPiA+ICsJaW50ZWxfdmJsYW5rX2V2YWRlKCZldmFkZSk7DQo+ID4gKw0KPiA+
ICsJZHJtX2NydGNfdmJsYW5rX3B1dCgmY3J0Yy0+YmFzZSk7DQo+ID4gKw0KPiA+IMKgCWludGVs
X2RlX3dyaXRlKGRpc3BsYXksDQo+ID4gwqAJCcKgwqDCoMKgwqDCoCBQU1IyX01BTl9UUktfQ1RM
KGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4gPiDCoAkJwqDCoMKgwqDCoMKgIG1hbl90cmtf
Y3RsX2VuYWJsZV9iaXRfZ2V0KGRpc3BsYXkpIHwNCj4gPiDCoAkJwqDCoMKgwqDCoMKgIG1hbl90
cmtfY3RsX3BhcnRpYWxfZnJhbWVfYml0X2dldChkaXNwbGF5KQ0KPiA+IHwNCj4gPiDCoAkJwqDC
oMKgwqDCoMKgDQo+ID4gbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJhbWVfYml0X2dldChkaXNw
bGF5KSB8DQo+ID4gwqAJCcKgwqDCoMKgwqDCoCBtYW5fdHJrX2N0bF9jb250aW51b3NfZnVsbF9m
cmFtZShkaXNwbGF5KSk7DQo+ID4gKw0KPiA+ICsJbG9jYWxfaXJxX2VuYWJsZSgpOw0KPiA+IMKg
fQ0KPiA+IMKgDQo+ID4gwqBzdGF0aWMgdm9pZCBfcHNyX2ludmFsaWRhdGVfaGFuZGxlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gLS0gDQo+ID4gMi4zNC4xDQo+IA0KDQo=
