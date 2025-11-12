Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49A1C50709
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 04:47:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3AA010E075;
	Wed, 12 Nov 2025 03:47:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Da0rnIAg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5193610E075;
 Wed, 12 Nov 2025 03:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762919223; x=1794455223;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=faz+Z0AR321Rmpvy4JFqJUUO3gd5pRKBLQek2drkgbo=;
 b=Da0rnIAg9Y1CPTLjzmH0mDhaTwQxhQ3ysUwmr0PFPCbwQFxlj9nSXLWv
 wHlVt6Elp5Fd7dg5Q65O41Q7YfvfsWs/YnmcdI8f35k6/C0ZzwJQ/dek2
 jVHA2GvQCXvXiFDHRLkglSqiwjzUjuGyJKyFhqw3DF9biJliKIhOYbxOs
 XYRIagSxkSQX6P8E5US60846x/qkebj/o7lMtVx67SD5SgHz5CHD3ldul
 k5dvzkVlJHqo5nPMaH7ElI5YNbfUxyyguDWzycxlC9LH0Gq5IUmdZwaeR
 +qhCoaVfoeKrlFchtdSMY6E/hVZ1j9xLIRS2QCWocJUauiiJE2F4TQmSK Q==;
X-CSE-ConnectionGUID: j8MHV4RySBu0OrY8k2VrMQ==
X-CSE-MsgGUID: Io+DYkm2ThOYgJXfy4FrOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="67580017"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="67580017"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 19:47:03 -0800
X-CSE-ConnectionGUID: f8qALlAQT6S1W2uymxC5fQ==
X-CSE-MsgGUID: rP3OwXo5Q0CdYP9HEFbjRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="188875772"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 19:47:03 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 19:47:02 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 19:47:02 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.71) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 19:47:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j5CxWp0toGPv1AJvUmOrQ9uIQP6AHPerFA5R5Mn+NbSrITcVatYyUU80LLK7VpME+VIzAlpu+T2CZ7Pvn5il1+JwJtHZzuZjGYBmaS65ktCeP+zQj2X6oxKzTDFfPQR0Ku93fCTD9pxoLlereWbnfSATk1g73/uYxrCywSAyY04mPMYqS3XYNlqvuXHs4w/wg1ZwzEuc6eFQ+hHadk/azhBBfC7HdJHO4VFV5VSbq49Dy07UvzmhyKACkXuLalGlUXALmqRSU1C2QRQ/CqiFegoa6DeppFx2NCdJGEUZaLZOkx5xh3uzULPAxaXcf3gun34jlF8QOtb79et1XnxM6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=faz+Z0AR321Rmpvy4JFqJUUO3gd5pRKBLQek2drkgbo=;
 b=GkZv8cVihAazhVp+aJsp6mYKPLTK49ZHi6JysK8FqJkNwyhp4VEYxySMw3GnHwj7NxGUpp4IasG0KuWYAtZzlxEQN3iHMALJRkdVScdF4WICdzVhWoAvUj++hpjRlKAWi+//BEFKnmsnEhZi4AlQdNbjAOiGRGGqnmtoyvyXIsj8Qu12JKDeq/LJAq3vR6WfjeHELRyDJGpaexNSGgxdFobJWPMegyrqoAREF4I91lpexhlpANw+dkOv9z+L0MYMvghs8FBPqvTm2b9IBJMSUy30b+gE30nHVnncgHlK+BdPFjYG8Sqmc7wghmGjfWJaa8i1XHdBoC/wDS5HoToyIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV4PR11MB9490.namprd11.prod.outlook.com
 (2603:10b6:408:2e1::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 03:47:00 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 03:46:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Vodapalli, Ravi Kumar"
 <ravi.kumar.vodapalli@intel.com>, "Chauhan, Shekhar"
 <shekhar.chauhan@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v4 01/11] drm/i915/wm: Do not make latency values
 monotonic on Xe3 onward
Thread-Topic: [PATCH v4 01/11] drm/i915/wm: Do not make latency values
 monotonic on Xe3 onward
Thread-Index: AQHcUEOWlf/wYtNFpEayrLdE43ANMbTubL3Q
Date: Wed, 12 Nov 2025 03:46:59 +0000
Message-ID: <DM3PPF208195D8D66050C2B8438D3BCEA06E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-1-ab3367f65f15@intel.com>
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-1-ab3367f65f15@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV4PR11MB9490:EE_
x-ms-office365-filtering-correlation-id: 1f0c8fc9-18b4-4971-5e75-08de219e2233
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?NGFtTjVKVTdkd0tIcFdTOEFBa1U4Zmw4TTQwNjVCZnRNMHZINzlzVFd6N3g0?=
 =?utf-8?B?UVhlbDAvUnNuaTlHQndvUDRXdlRsbWdjNUd0dmJyNW5JVDBmZW03bkZqQ2Rx?=
 =?utf-8?B?SDdjRVhQOUJlZCtUYlFvNmx3Qk14TEkrS1YrM1MyQkt0YlplVlRuL29pSlFj?=
 =?utf-8?B?VkVQNkJYL0lscnNCaEpKOWdJVysrbkVJb0REZTdnenJwajQxY1RvckI4ZDMr?=
 =?utf-8?B?ZHhxaVRnYzdQRVFDSVdhZnVVdGxZM3VFU2s5S3FEK1VyaGJpTkc2NzRPTEdZ?=
 =?utf-8?B?STlyZnRKc0dNc3Z1ZHlDd2JlNTFmbExwQWdNMEFqbWpyMEFNdy9rakNNZGJn?=
 =?utf-8?B?OXBuQ2dHbEtMbzdUSWN1WE90eTQyUjhHZExacnl6elYyRjloRVB1OHR5VWZp?=
 =?utf-8?B?UHV2S05WWW1QblRCMWlFUmQ5T2JJdnFybUM2N3AvdkRmdWtiOTRtMTlOWmQ5?=
 =?utf-8?B?dFhYNXBTMzJQa0xFUjMxajFvM2hRQ1c4dFphR28vUmRuWVpKS3BUWmQ4bzE1?=
 =?utf-8?B?REdPYXNXTDNIc1BpVFFsTXBqSm8vbkRyYUQ3elZLQi9VaUtQcUFsd2tIOGF0?=
 =?utf-8?B?NndYaUZOck9qVzlML1Y5WEtvaHY3bmREQXYrZnpjV29mUFFrUTZ6UDNWNlRU?=
 =?utf-8?B?VmVKd2pMZ2o2NWduOGoxT1VPNVpWUVA1M2h6SG9RTTVHckpEYzFvWDU3VTlZ?=
 =?utf-8?B?TmxVTzhCZUl4V3FSeHJjM0U1bVVPd2JCYWFleVZlaDFRU3oxZzlOMU5SR0E5?=
 =?utf-8?B?UTFyTDRRN1VPQm9UbkVXbzRLQ1V6WFFVZGp4MmtBQ1BWWlRnSlUyNW5zNzVE?=
 =?utf-8?B?S3ZPY3dZa2hBV256djc4eWlWOERyK2N4YS9zQ1JOVTExZU41QjBwa2Y0N2dp?=
 =?utf-8?B?TytCdXFzaENOd1FCa2R3bW92Y0hYeE5zWjEvRjc2OHJBZ3VWTHRwbkpkYXhz?=
 =?utf-8?B?enVYQ1RWeW9pdTVKYXo4R21UVTFHSGJaa09VcHExbm5aNmxrcDgvWTJnSVpG?=
 =?utf-8?B?bktGR3NzVytVUGhuU3NFOExFSWd1OGZFM0k0Y1RNbTNNWXBMemNWNTVCWStR?=
 =?utf-8?B?WnM0bzVpbjIxbCtIMm9ieWZTbmNmRkV0OHZUclhxdFZCZTJiUHhQcmlWdG9S?=
 =?utf-8?B?VjBTNzNNMlBha3lYRXBKRmd4enFuRkQyNGV2a21HOW4wVWVDTGUwOW8rRWhy?=
 =?utf-8?B?TStPb2Rta1RQOHRnMDhKMHNoOWwvMm1uMi9EbkhkeXNFOUtqK2J0dFNGdWRj?=
 =?utf-8?B?SFduMkpkQm1BYk4zRC9qNEtRVGRZb3hEcDNmclcybW5teDFmZkZHYnRKYmR2?=
 =?utf-8?B?THJqU2VGNTZ2WUJaeGprMG9JVC9pcGQ2MUdLN29YZ3RjbFltZXB2TDlqTlFN?=
 =?utf-8?B?L0JWeUpsM2VyazV5NkJLcDNlbU9hTXFRQ0JWc3p3ZlRKM25JVy8vdWNiTFFu?=
 =?utf-8?B?QUpmSUhZSmdlNndBa25LQTZIRmxVbm1KRjBGdTZZRis1YkdldlhxT1hPaUQ0?=
 =?utf-8?B?cFBDdlFWUGRhQ0ZPVXB1cE9GRGwzL0s1RUNSSTM0Um5oV1g1cit4dGQyczhz?=
 =?utf-8?B?Q2VFbTdFZkhYMHpEMFluU2VpQlRBVzlTcENBMkNVbXF4MVA3aHM0ZEZRanNW?=
 =?utf-8?B?SVFaenk4SDJ4M2RFRFZjNmo3ZGNXWW5wcjRLNFhIRm5IUnFWQVRCK3lOdC81?=
 =?utf-8?B?c0FESlBuUTZsb2ljK2dsVm1oZUw2TlUwU2NBemNJMUNWdzFvNGRWVGJpMmgr?=
 =?utf-8?B?dEpYeHpZWnB2ZFZFbklPQmxPT3daNHlOaGEzZXVJMVdZd0FiL3VwWkYxdUwv?=
 =?utf-8?B?KzUyTGwwakNTa0Y0V0dZYTBDcmlTeGpXNXVzaTdXT1J1cXFpMjluajBpZUhH?=
 =?utf-8?B?UTY4dVd0eGQySlVaRTRxTm5NWjF4bUxseHA4dnlXRUpkcXljTGFJQTdCdCtt?=
 =?utf-8?B?dHQrdFNnS3A5eWQrc3JEdVh3bWMzdDNOZnpWRFNOOTg4NWIyUXpuMi9DeEtp?=
 =?utf-8?B?R01ETS9sSVc4WkUvaHkrWXkraDJmemt5U1dFRzRoSGJOSkJqdVovK084bzBh?=
 =?utf-8?Q?j9bu18?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UmNqaUxlVHBBR2ZGRkVBN0NpMUM3Y3ZlTDM4bFVNQU1vUVNHZVB5VERucmVV?=
 =?utf-8?B?N0xqS1UwYkhuOGVXWEY1dEJqZnFFUlIwNmJEZEViVHZPQVpINjJSZ1c1Qmt2?=
 =?utf-8?B?Q3JLWmtzM1ZtcmxHQlFmWDZiZVZVZWoyNXBnc0kxc1B1cmNHajQzOFFsMkQw?=
 =?utf-8?B?eDgzK1NPdlB1UExNZ1BIdHo2SnZiUjhwRXJMZ1ZRWUhaMXppTnlZK3BBNkpl?=
 =?utf-8?B?ZTFQeHNPaHJPbHB0K1JqTldTM0xyMmQ2eUVmeExaL2VmWjZMSUxGNmgvcUsx?=
 =?utf-8?B?czdOYXJnOTRnbmFUMFptczU2QjZ5Z1NTdFdlb1lxYStpN0FSVUxhMk1ZQkd6?=
 =?utf-8?B?RTdMSGFKbXNHWmdNSUJuV1ZDM3I4UUlaYzVxODRmZFNhT0NOV1FTRlRrTVZw?=
 =?utf-8?B?SnAzL1NPOS9CQ1p6OUFNSkZVNm9wbGpBK3p1aSt1bjZVWHNUNVZ1cVRFUTF6?=
 =?utf-8?B?RmIySDNyQ2padGZrZWszd2dyN1l4RGhWNExWYW1DbWdjS1VWeG1XaGwrbzBZ?=
 =?utf-8?B?bGMzSUFHeTlZSGVDWUYrRFBGTmxnT1BTcWEwSERoaDlYZlhnakM5UkkzWHh3?=
 =?utf-8?B?NUV1ckpPUEdFRDJEa2FqVmhHdmp3dDREb2pqSWZjOWQ5SDBCWUhSVnNqcWtP?=
 =?utf-8?B?UDA4UUZDZTRYMzVKbjh5alU0Sk02dTFFTFcvQ0JyK0F1Yngvc3NCcDY3c2RZ?=
 =?utf-8?B?ZCtqczdVVEt6R3dIajV0TUtIZnBieGRVZVBtMHVXWHBNWWMyL1M3TFhibjV2?=
 =?utf-8?B?NHpsbGFyaHRzNnVxZmxqZGFlVkE0VTVicFR1Z01aS0xFL2FGR0drcGFhWXNl?=
 =?utf-8?B?b1h2WE1vYVNvYUx2b0M3SzBITTZNWll2N1BQYlNDbFlDbE4velU2K1pBejgz?=
 =?utf-8?B?bWh0R3ROVWxkZ25kOEl2QXRaZjljYmRRSGsybDdqQ3Q2RjltTVR6VlRaLzRz?=
 =?utf-8?B?UVRGMGJEajQ5ZzRPSlBjVEZtdjFUOXplS1ArWitxU29FbzZQTVVxRFZEQVBV?=
 =?utf-8?B?VmdlYWFuckt6Nzhpb1JaV1Y4cWtHVmxMdnVicG9aNG9rUitBNWdwRndQQkox?=
 =?utf-8?B?VE1iQXIrNlA3WEZiRm5xUDFSaGRMaHRwVElKa0EvdVNldWdadkd2czVwWlVM?=
 =?utf-8?B?eUtHY0pKYVVCajRCd1NQNTFXWDdlU3lrZDFRc1FWY1ozelF2RWJGZGJkcW1O?=
 =?utf-8?B?alBMbGozYVhYTnlsU05ZaWRuTVVMTEx2YnArV0NRdHF6VnFYM3ZBNnZPR3FH?=
 =?utf-8?B?NU1XcTQ2ZUlTcHRTVXZCSkhpTEJXcnd6OWUwa2dLY3M1THF1ZWJ4NG9xbHY5?=
 =?utf-8?B?UFBad3JiVVlxSnN1cEJ2Mm5xM1hoaUlvTGJsekpNNTA3R3JYQVZSdno3bFpn?=
 =?utf-8?B?SFBuZWNEK2YwZ1BnWDJXblJ1MHNLcXRPZTNrcEJjUG0vemVZWWgyeEdpeHFI?=
 =?utf-8?B?eTVZbFFmT0FxdG5tQTNFZmFrVVcybm9UTXU0M0lvcEVVVnVXU2RYMklHeWwx?=
 =?utf-8?B?Vlo4WnRKRk5qTExyZnlYeWp2ZTd4eW9PbC9HL1FWZTJIOS9nS2ZSZVhxS0ln?=
 =?utf-8?B?V21JLzRMaFZXQitXdlRUZkoyYWJjSkJ6dHduUVdHZ3RpSEFFV1B6b3dhSFB0?=
 =?utf-8?B?MzVBalFZa0NZNDd4V29KWHNUM2JQVDAzQmFVZ0pnZ0FtSy9KOWZMYWMvbXdI?=
 =?utf-8?B?N2hJNHc4T1VUYlZ5d29qYUJYbEhpOEJ1ZWtkamlYOW81ZVNyVkkrWFVGbVNU?=
 =?utf-8?B?Y3pCc2NZWFk1TEE2bkc5V3BuOVRuOGF4QVZ1eWYwODNTZ3A4QTBHVENNN1N4?=
 =?utf-8?B?OE02ekJHMWx0UHhWK0dMMEtJb1l0V0tuS0tpalNhNjVJdW9CamZSK1F1a085?=
 =?utf-8?B?Y1NoaGkvL1VHbkpzM3JiTkUxTE14bWo1SFhnNVhKcUszdCtTK2xldGwvWVE4?=
 =?utf-8?B?UXA3SzBZc054dFRhQ2RHeVdFeWNOcHdjYXJvVDV6dWlvR2JjK2Z1RE00WnVm?=
 =?utf-8?B?cUE2ZUd1L0RYYnlCbVBUUUswT3cxRkJiQjRMa0RGYmJBOXhKZDhEREVrbUtu?=
 =?utf-8?B?MUpoUjdKR2owbVFka2VuNW1CTUtmSDFGd3BCL0Y5SUVZbmdLSjVyNmlobkky?=
 =?utf-8?Q?U+mjR5tQglZAS+8IMkjXnn2cQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f0c8fc9-18b4-4971-5e75-08de219e2233
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 03:46:59.5089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c+iTmu98C/FTfaijvQ6rxtc/IYa0JqYATwWICliPHGSpvYpW5PDdRqQCOS1QB89+Wjk97OO3LeQanZA2f/KbTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9490
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

PiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDEvMTFdIGRybS9pOTE1L3dtOiBEbyBub3QgbWFrZSBsYXRl
bmN5IHZhbHVlcyBtb25vdG9uaWMNCj4gb24gWGUzIG9ud2FyZA0KPiANCj4gVGhlIFdpbmRvd3Mg
ZHJpdmVyIGlzIHJlamVjdGluZyBub24tbW9ub3RvbmljIHJhbmdlcyBsYXRlbmN5IHZhbHVlcyBm
b3IgWGUzLg0KPiBMZXQncyBtYWtlIHN1cmUgdGhhdCB3ZSBkbyBub3QgY2FsbCBtYWtlX3dtX2xh
dGVuY3lfbW9ub3RvbmljKCkgZm9yIFhlMyBhbmQNCj4gYmV5b25kLg0KDQpJZHQgc2F5aW5nIHdl
IGFyZSBkb2luZyBJdCBiZWNhdXNlIFdpbmRvd3MgZHJpdmVyIGlzIGRvaW5nIGl0IGlzIHRoZSBj
b3JyZWN0IHJlYXNvbiB0byBkbyB0aGlzLg0KVGhpcyBtYXkgdmVyeSB3ZWxsIGJlIG5lZWRlZCBi
dXQgSSB0aGluayBpdHMgYmV0dGVyIHRvIGFkZCB0aGUgcmlnaHQgcmVhc29uIGhlcmUuDQpBbHNv
IEJzcGVjIG5vLiBhdCB0cmFpbGVyIGlmIGF2YWlsYWJsZS4NCg0KUmVzdCBsb29rcyBnb29kIHRv
IG1lDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gDQo+IEFsc28sIGJlY2F1c2Ugb2Yg
dGhhdCwgbGV0J3MgYWRkIGEgY2hlY2sgYXQgdGhlIGVuZCBvZg0KPiBhZGp1c3Rfd21fbGF0ZW5j
eSgpIHRvIGVuc3VyZSB3ZSByYWlzZSBhIHdhcm5pbmcgaWYgdGhlIGZpbmFsIGxpc3Qgb2YgbGF0
ZW5jeSB2YWx1ZXMNCj4gaXMgbm90IG1vbm90b25pYy4NCj4gDQo+IENjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTdWdnZXN0ZWQtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IEd1c3Rhdm8gU291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgMTcgKysrKysrKysr
KysrKysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1h
cmsuYw0KPiBpbmRleCAzNmEyNjZmODgyZDEuLmVkNTVmZTg0ZTkzMCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAgLTMyMTgsNiAr
MzIxOCwxOCBAQCBzdGF0aWMgdm9pZCBtYWtlX3dtX2xhdGVuY3lfbW9ub3RvbmljKHN0cnVjdA0K
PiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAgCX0NCj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9v
bCBpc193bV9sYXRlbmN5X21vbm90b25pYyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkg
ew0KPiArCXUxNiAqd20gPSBkaXNwbGF5LT53bS5za2xfbGF0ZW5jeTsNCj4gKwlpbnQgbGV2ZWws
IG51bV9sZXZlbHMgPSBkaXNwbGF5LT53bS5udW1fbGV2ZWxzOw0KPiArDQo+ICsJZm9yIChsZXZl
bCA9IDE7IGxldmVsIDwgbnVtX2xldmVsczsgbGV2ZWwrKykNCj4gKwkJaWYgKHdtW2xldmVsXSA8
IHdtW2xldmVsIC0gMV0pDQo+ICsJCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gKwlyZXR1cm4gdHJ1
ZTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQNCj4gIGFkanVzdF93bV9sYXRlbmN5KHN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSAgeyBAQCAtMzIyOCw3ICszMjQwLDggQEANCj4gYWRq
dXN0X3dtX2xhdGVuY3koc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IA0KPiAgCXNh
bml0aXplX3dtX2xhdGVuY3koZGlzcGxheSk7DQo+IA0KPiAtCW1ha2Vfd21fbGF0ZW5jeV9tb25v
dG9uaWMoZGlzcGxheSk7DQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzApDQo+ICsJ
CW1ha2Vfd21fbGF0ZW5jeV9tb25vdG9uaWMoZGlzcGxheSk7DQo+IA0KPiAgCS8qDQo+ICAJICog
V2FXbU1lbW9yeVJlYWRMYXRlbmN5DQo+IEBAIC0zMjQ4LDYgKzMyNjEsOCBAQCBhZGp1c3Rfd21f
bGF0ZW5jeShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gIAkgKi8NCj4gIAlpZiAo
bmVlZF8xNmdiX2RpbW1fd2EoZGlzcGxheSkpDQo+ICAJCWluY3JlYXNlX3dtX2xhdGVuY3koZGlz
cGxheSwgMSk7DQo+ICsNCj4gKwlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sICFpc193bV9sYXRl
bmN5X21vbm90b25pYyhkaXNwbGF5KSk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQgbXRsX3Jl
YWRfd21fbGF0ZW5jeShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gDQo+IC0tDQo+
IDIuNTEuMA0KDQo=
