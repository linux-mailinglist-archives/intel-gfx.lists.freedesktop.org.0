Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 654968D1586
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 09:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A5A710E29F;
	Tue, 28 May 2024 07:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+F6Bybd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 018F910E29F;
 Tue, 28 May 2024 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716882714; x=1748418714;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mP+qZx9mTLq5H8f14Ohiyq4LDchbpXBhQmU0i7Bwl8s=;
 b=E+F6Bybd1ILoZnK70Eh4JDKcyV3dUvisQr6gMLZYVoZTJc+TRg+/Zyig
 jFSI58dfWq3yZ9/rvzTbwTpHZz2Ddygutc93JU9+sq+mR9ThKJTw8LGxY
 MSFeFxdjE89OLbb9b1ZNnbFTWmZ85cVI5WkVZzSSk0W6q+ZxNKe5uxU05
 6O0Oa+jQNw66heUKrRN8kbNqxHA30rYvIuKeY9UU9DvySfXkB95DDIsTP
 EbWpmt4U3RoU9QPiohjBTL5d7F7FFu2n7DU46otTsD1AJuYEf7q0rlmYc
 bRsJp2hPz4tgXoD6c4oBdYQxyNriUOAMLxXmDEekgS2pgGaZs5r5KbB5/ w==;
X-CSE-ConnectionGUID: q81Q2iWgS5SXRxTNzPvJbw==
X-CSE-MsgGUID: a2c9PvnnR9aDrWc4qWSH9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30733274"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="30733274"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 00:51:51 -0700
X-CSE-ConnectionGUID: kg5kvK1GRKCFzn5LLxfjKQ==
X-CSE-MsgGUID: itDdWE5YT/umQFgOYu4Ctg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39794828"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 00:51:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 00:51:50 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 00:51:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 00:51:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 00:51:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gE79MQ2EflBCpL+oSQTkdKqnBhlReT2J3B8p66iXZLMRXbqIX9B8WCoiKGfZo5eUascqW+lPMUpMk5SMRRuzS3ZpABWqkRYDvZaWk32YJFUjcwnX59gwcmVb+WF2jWh3a8FGbjWgHI6zxu/fIKuRKEGzPwUg6IUcXX4JRRvdzXN4O2mHS567X2Nyfe09YncAcu2GT54QB60pgYvc7Yj4xXQgxG7avLdNICbLBJVp1P8lLOtjrsS12eMTczcx3KwAnXtBZhxxxoYrqtKpABkDqax00Y68d/NRpbH4DJxcdOQWGzxXLA9zQm7kEyJahVz1zkSj9wllDbWj8mtkFNPFBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mP+qZx9mTLq5H8f14Ohiyq4LDchbpXBhQmU0i7Bwl8s=;
 b=lcgEbwjeJRbMSq669SLkHgyMIng22+Tlypqh61Brn+MDNxO+BVHOfuBwwSKnx1Y1V0t+1hEXDpnnEQf9AnlFFAydj3bGCt8kw6JIfTPPBOA/jeMNHOyxzkdZ8oUtEzss1d/WRMEFD8iaFZLXKqGreMHjvlzl0FJw9mYlfSz8eDxesrJCu9Cx4+wlQED+/HgQHJ6vgk5wvaJ6aoWevH0RG3hJcHyoR3RIOVYCm1qxeVT0jPEiMpoXDxvroCzta3UmDBQF1Mtfw5xGjusyhA9uVCcRfYnrYy5kWShw1wNcRzKMxCfEzGjwGzbsoJSve+4ZhV2rji/UVZ4lsTJ0hoo5lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB6936.namprd11.prod.outlook.com (2603:10b6:303:226::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 07:51:47 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 07:51:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [v6 2/3] drm/i915: Use vblank worker to unpin old legacy cursor
 fb safely
Thread-Topic: [v6 2/3] drm/i915: Use vblank worker to unpin old legacy cursor
 fb safely
Thread-Index: AQHarAmXj2owSfTagUKb7o4K7zaw77GsTsxQ
Date: Tue, 28 May 2024 07:51:46 +0000
Message-ID: <DM4PR11MB6360A101A09F34C2D88FEBFCF4F12@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
 <20240522053341.137592-3-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240522053341.137592-3-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB6936:EE_
x-ms-office365-filtering-correlation-id: e316aca2-6dd3-40de-e9ce-08dc7eeb0657
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?c2hRdmVHaElEdEF3SEtCaUJjNEYzMEprdnlUVGZ3bGJDVmhpMC9JblBTUmxj?=
 =?utf-8?B?L0RqTGhDRkUyQ0RJQk5STXlvTXYwODBZdU15eG5PZngxbktjYkU0RG45R0Rp?=
 =?utf-8?B?aTlBZHhqTWk2ZEZvMzJtQkhta3pqcWozdTlWZHArNTZIZVdpbDhBbExENm9m?=
 =?utf-8?B?TGxsTDArMm8weVhqMGtyRjFzcEtaUG9zUVZZUlhwL1VXWGJNQmdhKzgyOHdU?=
 =?utf-8?B?di9yVmxoTmYramF4MGxJcitsb25jQWN4VDFqUmY0b1J2amJXQ2FCUVJRYm5K?=
 =?utf-8?B?cTZGTTFleTJXSFUyY1FsUnFVRFFkNTloV1pHMEp2QzZmaDh0OTY3UW5ITlht?=
 =?utf-8?B?T2dIVWxPY0Rzb1BpMFFZQStvUUxad0ZIVElxMmlOU2ViTEwxL0hWK1ErS09o?=
 =?utf-8?B?YkdhWHRxZEZHYVVialdRZGluTDE5c3VjNHhnNnZkODNmWFU3QnJ5Nit2MkRI?=
 =?utf-8?B?UFRWbU9zYmZQbzE3S2hvS1JyQUtpK3BSZFRDUmZyV2sycllsekYxa01OZy9Q?=
 =?utf-8?B?bDdoZHBaSEhrdVcrdzhWbUR4Y1hiU3czbHN0WXluWFZXZXQ0dUtsbC9wZ0N1?=
 =?utf-8?B?TnpxczV4R2wzMlF0WmFmUTI4d1pFYkpYMndPNFVvN2xhNlljRi9URzZOOVhs?=
 =?utf-8?B?V1k5SmRuT3NjQ29TVWY4YTFUaGhvVUF2RUQ5RlNMa2xuS25YU0M5ckdDdG9Y?=
 =?utf-8?B?a0ZxRU1XNHpWQk9zOTlaNzhQaWR6YjNDNkkyQ3IyOXE2bGR1enJQdmpqSHdU?=
 =?utf-8?B?N0dvdmlKS0RiZFZDeGxZV085Z0FRbkRDUytXZnA1ZVFwK1hKa2lPK3prcVFr?=
 =?utf-8?B?b1c0MkR3UWIvWS94YVVETjRHTjExOC9JeDlpSWJ2NklNODNpS3hyU3ZQcHh0?=
 =?utf-8?B?V2tDR1pldFFSRGxoZXp0TFBXZjdVZzVnMWR5b1VDREtFSVJVUFlKNUNFSTIx?=
 =?utf-8?B?eE9vRnpTS3RuNHpScDNiT1lnbWoza29aSG1OeFlmRkRFU29IOVNib3VyZUd6?=
 =?utf-8?B?Z2J0R1NGM2NUNG8vb2Zjd2dITHVhTGt2U3pqd3A3VERHNVJtR0lyeTBWM2Zl?=
 =?utf-8?B?eXN6cWsxL3JqbitzdFpHU1ZyUGZuVVVsVFMwU053RW9EekV1cUpGQmNENjM4?=
 =?utf-8?B?U1hsVmcrUTczSER0UWVkNmNpWWxWZElFSmdkTHhWK0tiY2Q1VmNVdWtNL3Q1?=
 =?utf-8?B?ZW5adDhLbnNsT25wZnhoaDJqODhqRnhQeHdiMEZwYnEzM1VCc2FCNExsRmUx?=
 =?utf-8?B?SVVJbk0yT1JmamxBWUpmS0hxZkgrMldSQnhKM080SHlJTGF3R0pnT1E3cFM5?=
 =?utf-8?B?Z2k0Mkd6WnRVdWNjSHZ4ZjlOckp0V1U2OUJMYlNLZkdjTFVTb3hneGhkdzNX?=
 =?utf-8?B?amQ0UGh3UnBSLzc2dmdqTEJyU0hlMlNqakxTOTMvaE55aDlTdlFuYXljaWtC?=
 =?utf-8?B?bm1KUk1ZT3I1eVM3QVBUTkVRTis0b1BDV1VxTVhWcHB6TXpDYWpCdVcyWDVK?=
 =?utf-8?B?akk4d2hLV3EzSDYyRXBzeVZ1Y3NkdUwwbjFwTExNVE1ZQnJvQk9FeWlKc0Va?=
 =?utf-8?B?SGNlSlQ1RTJEcGIreHZjbUUvRy9LSmhJYmJxbDdzYlQwYjNnb2VEd291YnJC?=
 =?utf-8?B?SlR4a2FQdzgxcGRaVnlXc3RBb0o3WjR6d1hqLzlvY09vakZOOWNjQ0ljVW5Z?=
 =?utf-8?B?ajZWS2xIb29pTWd3UmNDaG8zN241b21rSFlGRDgvWUdtWmZzUkRFczBCdVV6?=
 =?utf-8?B?TnBab3ZCZzFqelRUMm5hdUV0NnhYeUh2ZWhtT0xNY3BQNzZYWGQwZHdwRG5q?=
 =?utf-8?B?SWpOQVNXQzh1ZEpYb2tFUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmVENWFwYTMrMjlDa0tKK21NbEtVNlF1VE4zbjVsRHVmaU1JOUt4WGxwN0w1?=
 =?utf-8?B?ak1JcWh3NHB5Z1NFcGdpMmlpYkxPWWFLb1FEYVRFbGVBUEl4dEpsMjU2Y1lK?=
 =?utf-8?B?WGJUM3VJeEhaWjJtRXFjdzBIWSthcTVoS0h5WXg4ZlcxN3hpT3haRlMzZTdO?=
 =?utf-8?B?YjNwM1JNc2d1NHZIL3lNWjZzZUhRdXoxeml2cUVMQjNqQVhXcUZkUVN3MUtC?=
 =?utf-8?B?ZzRQTXdyL1YzZ3Vsc09BUit4L2M2UXMrK0xWcDE0SUxQL21SMnlIMDRuS1pP?=
 =?utf-8?B?QmJseXV3Unc1UzRNeUdJa0tFVGV5WnF0UmV3SmFQSVdYUHZ2cGhHMWg3clRU?=
 =?utf-8?B?d2ZHNmhpRVJWbmlZS0ZqaDJnelpLc2lxN3VtUy9TZWlGcFBkUlk4ZElDMUlM?=
 =?utf-8?B?bEZvTXUxTTV0MkROYlIzbmRpYzNyZE8zeFBRdk9rN3A5bDdhS1R2NC96K3pw?=
 =?utf-8?B?d29qa1VxbTZtY1Z4OEZpalF5emhRbFRoSDBZQlRnMWd5ZnRLeDZmbmZqcVFi?=
 =?utf-8?B?ajZma050T21hM2Z4RFBmZzg5THlsSElZK3FWRjdHbWNUYUE5WmZWM0VGaGV2?=
 =?utf-8?B?RUxqRGNGMTcrcGs5RnFLMlp3d25Fb2M4UkJVVkV3dmZydTVhdUJqeDltejZo?=
 =?utf-8?B?S1FZQjhmdSs0alg5VzlXRk9jZDhiZHR1SXFRWU8ySG8rZ1JneDE1VTF3OERz?=
 =?utf-8?B?WGc2V3l5NFlTekRSLzVkK0JzNmhVV1hWSm1BNFB5UmptTVJoZWhXT0JkNExZ?=
 =?utf-8?B?YXNKTnFTOVl1M1hwanB0YzY3SGNCK2RuR3ViRTQrQS9RTGh6MkxyMi9KLzlq?=
 =?utf-8?B?Y2xEd1JPeGNwVVJkaWNYTFdhRmRQUjVieFl1UHFLNVFLUW5ybmVLdFRTTTho?=
 =?utf-8?B?dzFjMVZUcThXSTA3UXZlUnJRUlZPdVZxZ2NZQkhyY1k0ZG5vVW0vWHZicGox?=
 =?utf-8?B?bC9oWU5kV2l0NnNkUlFpbUhLUzJXK0pjQW5wcE5WQTYxNkxYMHlCanRFcUR3?=
 =?utf-8?B?YWs4ZlRiZGp5dzlYZHE4L3AraFhjNnd5UCthYjhGam52czMwbnlhZVdCZm44?=
 =?utf-8?B?MHhpY2Z4YWUyajM0NkZrS2FBVHRsTzhhMmRsdnlUMlFzTGdjT1pCemNvcW9Z?=
 =?utf-8?B?U04vWVlQVjVlN3MxYVdPV0lja2ZQTG5pQ0NZaTFYZS9vMEF2VTBxUmM1b1Ft?=
 =?utf-8?B?YWRXc1JQalkzWkIrMlVFSU9FNFBaa2ZPd2NqZ0EzN0ZPeUlaS3hmOWNMTm44?=
 =?utf-8?B?dFhGaWp4TUwzcGxYeEY2UGdJV1JlRHpZdDk0NFp5NHIwajNuM25STHFWTEp4?=
 =?utf-8?B?RXQybnprc0lxMzRFZXpabzkxdGpvY3R3OTB0NGV0TjJrY05mQnlxRGF5YW5r?=
 =?utf-8?B?ek9wUWowaVhTUi9RSG9mOEFvRStqYVRjTFZaRzZqdU5uR2F3Y2JLWkpNQlNW?=
 =?utf-8?B?amwvakhzcnRKOTVJS3FGcG9NdjJ0RFRUS3pXS2kvaUFFV09NTGVqY1ZKM2I0?=
 =?utf-8?B?Q3NkR2x6b2Q3alI5Z1pKOFdhNlMyWHdiL2pnQmNZTkZkT0lFY0hMTXMrOFdB?=
 =?utf-8?B?UkhqUmF1T2RBOGk1RWsvUktNTEtGemdqa3FFYVJFM3lHTHF2TGYwZXpnNHJL?=
 =?utf-8?B?ay9RWEtJdXBPcU10RER3dS91SVhIZ1NOR2hLK2ZBMGJZdjJSNkgyL2ZkK2Zy?=
 =?utf-8?B?OHNmeWZISEM3Y0hzNkRhYTZXeHJoTFY0V082RGh3eURacE4yVDdxRFNZNjU2?=
 =?utf-8?B?WFJsME5jZnFnSGQ1b3p6SG16VzRoaWgvbTVkYzdmaVBJYmhWMyszUmhDclo1?=
 =?utf-8?B?NDRLcXRqaHlSZnVnRnRScktROXdSVVVYYnoyY3E5Q1MyalRpTmdLdjZCLzR3?=
 =?utf-8?B?bjFCS0NvVkVLQ3dQWUFFTnU1L3oyMTZZTUI5cm41WU00WG50czhHZGRvMFAr?=
 =?utf-8?B?MHpJSHRoTTRiVjZQVVM3YUdiT0tvczVmNzhLNmY5L3ErbWdBTUE4cUg2Z2cy?=
 =?utf-8?B?RVdxZWovSEU4SUtZWlBKS3lXNUJUc2s4aFl2RzYzN2lZejNuY1NGU2hIcW4x?=
 =?utf-8?B?N2ZlNm1qWWRnVTJQdGFvdTlaWUlkMEZLN0xrU3p6VXJpQUZRWWhFUVNBY3Zu?=
 =?utf-8?Q?+IT+EVNoLXYYQ8v42E0Y6g6IY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e316aca2-6dd3-40de-e9ce-08dc7eeb0657
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 07:51:46.8006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e36d1lPzABAX2qaDL3QS4THiETdvHugDSYKUW0zHBYZLzAWSsryhDKRmQGxo6LWisrd8+kkFqOX8QymueTFK4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6936
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgTWFhcnRlbg0K
PiBMYW5raG9yc3QNCj4gU2VudDogV2VkbmVzZGF5LCBNYXkgMjIsIDIwMjQgMTE6MDQgQU0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT47DQo+IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5p
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFt2NiAyLzNdIGRybS9pOTE1OiBVc2UgdmJsYW5rIHdvcmtl
ciB0byB1bnBpbiBvbGQgbGVnYWN5IGN1cnNvciBmYiBzYWZlbHkNCj4gDQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgY3Vy
c29yIGhhcmR3YXJlIG9ubHkgZG9lcyBzeW5jIHVwZGF0ZXMsIGFuZCB0aHVzIHRoZSBoYXJkd2Fy
ZSB3aWxsIGJlDQo+IHNjYW5uaW5nIG91dCBmcm9tIHRoZSBvbGQgZmIgdW50aWwgdGhlIG5leHQg
c3RhcnQgb2YgdmJsYW5rLg0KPiBTbyBpbiBvcmRlciB0byBtYWtlIHRoZSBsZWdhY3kgY3Vyc29y
IGZhc3RwYXRoIGFjdHVhbGx5IHNhZmUgd2Ugc2hvdWxkIG5vdCB1bnBpbg0KPiB0aGUgb2xkIGZi
IHVudGlsIHdlJ3JlIHN1cmUgdGhlIGhhcmR3YXJlIGhhcyBjZWFzZWQgYWNjZXNzaW5nIGl0LiBU
aGUgc2ltcGxlc3QNCj4gYXBwcm9hY2ggaXMgdG8ganVzdCB1c2UgYSB2Ymxhbmsgd29yayBoZXJl
IHRvIGRvIHRoZSBkZWxheWVkIHVucGluLg0KPiANCj4gTm90IDEwMCUgc3VyZSBpdCdzIGEgZ29v
ZCBpZGVhIHRvIHB1dCB0aGlzIG9udG8gdGhlIHNhbWUgaGlnaCBwcmlvcml0eSB2YmxhbmsNCj4g
d29ya2VyIGFzIGVnLiBvdXIgdGltaW5nIGNyaXRpY2FsIGdhbW1hIHVwZGF0ZXMuDQo+IEJ1dCBs
ZXQncyBrZWVwIGl0IHNpbXBsZSBmb3Igbm93LCBhbmQgaXQgd2UgbGF0ZXIgZGlzY292ZXIgdGhh
dCB0aGlzIGlzIGNhdXNpbmcNCj4gcHJvYmxlbXMgd2UgY2FuIHRoaW5rIGFib3V0IGFkZGluZyBh
IGxvd2VyIHByaW9yaXR5IHdvcmtlciBmb3Igc3VjaCB0aGluZ3MuDQo+IA0KPiBUaGlzIHBhdGNo
IGlzIHNsaWdodGx5IHJld29ya2VkIGJ5IE1hYXJ0ZW4NCg0KTG9va3MgR29vZCB0byBtZS4NClJl
dmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IENjOiBN
YWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3Vyc29yLmMgICB8IDI2ICsrKysrKysrKysrKysrKysrLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAzICsrKw0KPiAgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDMgKysrDQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gaW5kZXggYzc4
MGNlMTQ2MTMxLi4zNmUyZGNiZTM2MTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiBAQCAtNzEwLDYgKzcxMCwxNyBAQCBzdGF0aWMgYm9v
bCBpbnRlbF9jdXJzb3JfZm9ybWF0X21vZF9zdXBwb3J0ZWQoc3RydWN0DQo+IGRybV9wbGFuZSAq
X3BsYW5lLA0KPiAgCXJldHVybiBmb3JtYXQgPT0gRFJNX0ZPUk1BVF9BUkdCODg4ODsNCj4gIH0N
Cj4gDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9jdXJzb3JfdW5waW5fd29yayhzdHJ1Y3Qga3RocmVh
ZF93b3JrICpiYXNlKSB7DQo+ICsJc3RydWN0IGRybV92Ymxhbmtfd29yayAqd29yayA9IHRvX2Ry
bV92Ymxhbmtfd29yayhiYXNlKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5l
X3N0YXRlID0NCj4gKwkJY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqcGxhbmVfc3RhdGUpLCB1
bnBpbl93b3JrKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lID0gdG9faW50ZWxfcGxh
bmUocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUpOw0KPiArDQo+ICsJaW50ZWxfcGxhbmVfdW5waW5f
ZmIocGxhbmVfc3RhdGUpOw0KPiArCWludGVsX3BsYW5lX2Rlc3Ryb3lfc3RhdGUoJnBsYW5lLT5i
YXNlLCAmcGxhbmVfc3RhdGUtPnVhcGkpOyB9DQo+ICsNCj4gIHN0YXRpYyBpbnQNCj4gIGludGVs
X2xlZ2FjeV9jdXJzb3JfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwNCj4gIAkJCSAg
IHN0cnVjdCBkcm1fY3J0YyAqX2NydGMsDQo+IEBAIC04NTMsMTQgKzg2NCwyNSBAQCBpbnRlbF9s
ZWdhY3lfY3Vyc29yX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsDQo+IA0KPiAgCWlu
dGVsX3Bzcl91bmxvY2soY3J0Y19zdGF0ZSk7DQo+IA0KPiAtCWludGVsX3BsYW5lX3VucGluX2Zi
KG9sZF9wbGFuZV9zdGF0ZSk7DQo+ICsJaWYgKG9sZF9wbGFuZV9zdGF0ZS0+Z2d0dF92bWEgIT0g
bmV3X3BsYW5lX3N0YXRlLT5nZ3R0X3ZtYSkgew0KPiArCQlkcm1fdmJsYW5rX3dvcmtfaW5pdCgm
b2xkX3BsYW5lX3N0YXRlLT51bnBpbl93b3JrLCAmY3J0Yy0NCj4gPmJhc2UsDQo+ICsJCQkJICAg
ICBpbnRlbF9jdXJzb3JfdW5waW5fd29yayk7DQo+ICsNCj4gKwkJZHJtX3ZibGFua193b3JrX3Nj
aGVkdWxlKCZvbGRfcGxhbmVfc3RhdGUtPnVucGluX3dvcmssDQo+ICsNCj4gZHJtX2NydGNfYWNj
dXJhdGVfdmJsYW5rX2NvdW50KCZjcnRjLT5iYXNlKSArIDEsDQo+ICsJCQkJCSBmYWxzZSk7DQo+
ICsNCj4gKwkJb2xkX3BsYW5lX3N0YXRlID0gTlVMTDsNCj4gKwl9IGVsc2Ugew0KPiArCQlpbnRl
bF9wbGFuZV91bnBpbl9mYihvbGRfcGxhbmVfc3RhdGUpOw0KPiArCX0NCj4gDQo+ICBvdXRfZnJl
ZToNCj4gIAlpZiAobmV3X2NydGNfc3RhdGUpDQo+ICAJCWludGVsX2NydGNfZGVzdHJveV9zdGF0
ZSgmY3J0Yy0+YmFzZSwgJm5ld19jcnRjX3N0YXRlLT51YXBpKTsNCj4gIAlpZiAocmV0KQ0KPiAg
CQlpbnRlbF9wbGFuZV9kZXN0cm95X3N0YXRlKCZwbGFuZS0+YmFzZSwgJm5ld19wbGFuZV9zdGF0
ZS0NCj4gPnVhcGkpOw0KPiAtCWVsc2UNCj4gKwllbHNlIGlmIChvbGRfcGxhbmVfc3RhdGUpDQo+
ICAJCWludGVsX3BsYW5lX2Rlc3Ryb3lfc3RhdGUoJnBsYW5lLT5iYXNlLCAmb2xkX3BsYW5lX3N0
YXRlLQ0KPiA+dWFwaSk7DQo+ICAJcmV0dXJuIHJldDsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGNjZTE0MjBmYjU0MS4u
NzE1NjcyYzE0MmI0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiBAQCAtNjYsNiArNjYsNyBAQA0KPiAgI2luY2x1ZGUgImludGVsX2Ny
dGMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9jcnRjX3N0YXRlX2R1bXAuaCINCj4gICNpbmNsdWRl
ICJpbnRlbF9jdXJzb3JfcmVncy5oIg0KPiArI2luY2x1ZGUgImludGVsX2N1cnNvci5oIg0KPiAg
I2luY2x1ZGUgImludGVsX2RkaS5oIg0KPiAgI2luY2x1ZGUgImludGVsX2RlLmgiDQo+ICAjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV9kcml2ZXIuaCINCj4gQEAgLTY5MjUsNiArNjkyNiw4IEBAIHN0
YXRpYyB2b2lkIGludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0cnVjdA0KPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQkJY29udGludWU7DQo+IA0KPiAgCQlpbnRlbF9jcnRj
X2Rpc2FibGVfcGxhbmVzKHN0YXRlLCBjcnRjKTsNCj4gKw0KPiArCQlkcm1fdmJsYW5rX3dvcmtf
Zmx1c2hfYWxsKCZjcnRjLT5iYXNlKTsNCj4gIAl9DQo+IA0KPiAgCS8qIE9ubHkgZGlzYWJsZSBw
b3J0IHN5bmMgYW5kIE1TVCBzbGF2ZXMgKi8gZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggOTY3OGMyYjE1N2Y2
Li41MWZhNzNhMmExNjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC03MzUsNiArNzM1LDkgQEAgc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZmJfdmlldyB2aWV3Ow0KPiAg
CXUzMiBwaHlzX2RtYV9hZGRyOyAvKiBmb3IgY3Vyc29yX25lZWRzX3BoeXNpY2FsICovDQo+IA0K
PiArCS8qIGZvciBsZWdhY3kgY3Vyc29yIGZiIHVucGluICovDQo+ICsJc3RydWN0IGRybV92Ymxh
bmtfd29yayB1bnBpbl93b3JrOw0KPiArDQo+ICAJLyogUGxhbmUgcHhwIGRlY3J5cHRpb24gc3Rh
dGUgKi8NCj4gIAlib29sIGRlY3J5cHQ7DQo+IA0KPiAtLQ0KPiAyLjQzLjANCg0K
