Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E34392CC5E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 10:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1001E10E6AA;
	Wed, 10 Jul 2024 08:01:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iP9dx6fW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D83110E6AA;
 Wed, 10 Jul 2024 08:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720598469; x=1752134469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YTWRCx39Xs90QczjHXZvHGhHeOjn9YzUz5g/ZX/TfpY=;
 b=iP9dx6fWIGGTEGBjNAiLZrdRYm8Ispzx06K1eMnd8ruskj8huL+gB5JK
 F22l+K3AoSzRP5lySucXr53L3eBe/VWsPvPPEl0vfi53Yw2yTpc0dodS+
 Q1LcA/8rKxeZ8mWuwIZVgN4NZVfBTGgN4Nh7otiPuJqmiTWAHzP7jOPo0
 ZZ0K7FM4h9ifn4peccvmn8j+drxvp7WkJIu5Yw6hOdLIoyzTRT/1lfkFK
 gC8Q2SjZy6Df8g8cb1MSPNzcEgXaRUyfgXHW9tVxI/aWi/z3HT2SUa0PP
 XgJXWMjptofysomqpJRIxYoLug7GDDPw2aiO1in/CPiPUcmFWxsA8CCOm w==;
X-CSE-ConnectionGUID: G14g3T0CSMi31qP9oi6vtA==
X-CSE-MsgGUID: gxjcB2qLQOypCLXbtcIKtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="18041943"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="18041943"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 01:01:08 -0700
X-CSE-ConnectionGUID: /yYFSS14ShGakSdQmyR1DA==
X-CSE-MsgGUID: N7ajv+TpQ6CGxejU/nuCeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="53079096"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 01:01:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:01:08 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:01:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 01:01:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 01:01:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WrjBN4rN2yahzx3MEdBi+whhPNU4oEHygxaWD0a06BgYBu3w74j1h0NLP9olUPAsHBAKvtErulm4KrM21GDElmY0FRMrUL5EOiDGroP4hCapm+zvWDBgKycdGTxRGg+n5jIG7cJBq1RlrcXcv1A1EML2pd5FMz57d0wNHJRGgZ0z/pvyO0wbBkA1s/RbxCW21KPfvNfX2vYLYeGBHrm9PxFpERPFLNj+m4daypa/3ckFl8Rb1SuGenkOd1dp5eD5X2JIX7mHPEBevgQKTAoSu3v6/Gke4evbXfFPEIcpvKR38I2NJcwnF92T/wKr3+0d0UbtetCD7jmBvSCezGVMRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTWRCx39Xs90QczjHXZvHGhHeOjn9YzUz5g/ZX/TfpY=;
 b=f2kDKVqkRPe7KXQwPQqjk/l/zhA/9Pdhybi3t1KIMOvPlJdyZQNVw79X5U+Xjc4jVLZFbgRYSaArSNXLhQqQbepZFvjJvrJLPrewTqy1JkLDNe0LWWes4wFgijlaUxU/uKSRn9G3StAk5Fx+TNIsx5PEH4F5EqQXiXrnzcys8WM75PNnyAzJORZ+KrJClaCD+Uy5aJV1mAPmt0dHPahKPIgd+hesASYPWkHlRUlRegJPdqhrPiryh4xNJXZ3Bp/yqmJQCkX9idptrGJp7iA/Ojy5gpi5LfvVNeNeEp5liHAuYhsumIGd/fI24Of/eIz4tnb9OYV87i/8gPUTEQh/Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB8208.namprd11.prod.outlook.com (2603:10b6:8:165::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.35; Wed, 10 Jul 2024 08:01:06 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 08:01:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 08/20] drm/i915/fbc: Extract _intel_fbc_cfb_stride()
Thread-Topic: [PATCH 08/20] drm/i915/fbc: Extract _intel_fbc_cfb_stride()
Thread-Index: AQHazusdDz/LLDA4h0C0XrwBVHxEJLHvoEpA
Date: Wed, 10 Jul 2024 08:01:06 +0000
Message-ID: <DM4PR11MB63606D247E32341A8FF50CD8F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB8208:EE_
x-ms-office365-filtering-correlation-id: 4867e898-8787-4bd3-b570-08dca0b67373
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dzZzSllhM0ZYYVlsMlFOMk4yOU5zQ3QwS2h3alV6TUkxWEVhV2pjSGk4MGpS?=
 =?utf-8?B?TTVPUitLQVBzU2Y4MTlVaG5SZUtqMUhzK01VZjRZckx5eWRlaDg3RHk2aU5k?=
 =?utf-8?B?Vk1heFEzOE1xazJHZkhZMFJWU3V2MzFtQ1hrWGlkYkFOamxCUTViZTlIU214?=
 =?utf-8?B?UzFKM0U1RWpJK3grdzFPK2hWdjdQbFZhcjhoMnhoY3lxcGVPemI3cEV1QVNI?=
 =?utf-8?B?UFgyaW1MZ2NNMEkzc3hMR1lHcWovUFJGM3dlWEFYQmxQL1JWUHhNQnpaVk51?=
 =?utf-8?B?MlQzVjdFSlJkdGJHdDVUajEzby82S1JXY0t4OW5udXJWMWxGM3NXVzNpQUg0?=
 =?utf-8?B?Y3ArOEJuQytqcnhNeGh2azZLeVN1MnpndGc2QnplTDh1T0M1Qkh1cWgxa3Rn?=
 =?utf-8?B?aUxqVjFRQkVCdlRObzZhVEtVY0pkdCtGOGJZZmZndnppZS9tdmNneTZtTUtR?=
 =?utf-8?B?UGxvYjN6aXVGVXh3cUg1K0FqUVR0TjY2Q2xCeThyZ2NIdjltQVhpdVhzRVFo?=
 =?utf-8?B?eldaeFVKTlhiQS94eW90bWptTGJDdFVTUVIvV3VCdnFrbHlBM2thQldIZUJY?=
 =?utf-8?B?bnZvUS9wVDBzZ25mVmg2bTIrajFwdU5iVXdlbzVwMFE3UUprSU02QXpoUXYr?=
 =?utf-8?B?cVV1M1IyOUxqYjlwYTNaVWtNeHh6WGRWTkMxdE1hL1ZtaUZvU0ZpM0E0NnJO?=
 =?utf-8?B?L3lmMThqd3pjcUtPWWxRZlRyOFV3Si9ObmdDVmNPaGgvbUNmL2FRUk9sM21U?=
 =?utf-8?B?bEc5cXhMRlJNWlhFMXpoOUNOamxzZXVkVjBLTjlScmpZZERnc3hyVzFuanZt?=
 =?utf-8?B?T2NBWFBoWjdTTnVFcHdiSDVNaDc0b0t2QW1scGF2cHVGQXV1dXhHUy9tVWtx?=
 =?utf-8?B?WUduc3IrM05mQjZWbVF6blI1NVFTL2R6SWRNQ013R0IrTVNuUWZkZys2WHhh?=
 =?utf-8?B?cUNWZEFDclBvQUhlUU1BcjZ1TkpRbkQyNUZnYURKNEYrTzFVRHFReHlJbkIr?=
 =?utf-8?B?cFpxSXZCc1J1bjBlNjhUSHlzV1FGUWNnMG1WbzE2enhyRXJhbDhvLzdxekM5?=
 =?utf-8?B?S3JiZUorYkk2TUhMRU02VTd5Zi9xUWdGTnFPRzRjeWhPdUNvZkNUMHlZM2Yv?=
 =?utf-8?B?WW41dWF0U3ozaUtzdEsrQnBCZkltVjRCY0dZbWR3VElocis0ZEswMm92Wmw3?=
 =?utf-8?B?T2hLckwvVHo3K0VEcElkemR6NkIwMU9ObmF1UE1nRXFybWE1c25PK05LeThQ?=
 =?utf-8?B?ZlZJVTN6cWNHL2FNNXF6K25VQWdwYlhxZXFmblpUWGcycGJNUWQ0ZW1SZlJZ?=
 =?utf-8?B?VFl6MUh3UjhHajFvTXRadWNkbFEvQ3d1UklFNVpvenVPY0FFRXc5dVFnNE4r?=
 =?utf-8?B?emVSTlN1VjBhbXp3UWN2VHBURmdZT2FZNDRZOUUrYkduSnVjR0dJV2Rodm9N?=
 =?utf-8?B?TDlBbjB0em9RU1lJZFBkbUxvL05wbXdUYVFQTkhUbnhxaHA3d252QlYzTUhX?=
 =?utf-8?B?bHZnWithVmF4QXJLOE5lTkdMT0ZOUlJycFBpQmNLbEFBK251Q2RrK25NNXJE?=
 =?utf-8?B?K2l0cDZxaEVHWisxWUt2YUk3aWlwUC93Q25yaURZZCttUG9JY2NrMk1kRHlQ?=
 =?utf-8?B?cjk1a1RKZTB4U1JZaGlpUVdYU2dBMkNZcGo3VEFldGZHbjQxdzdhRTQwdFJH?=
 =?utf-8?B?QW5BZ3lYWVhtUzdKOGo5MzB1am9OVnIxaVlhTlIzbjY1SmN3czh1OW5qVEZO?=
 =?utf-8?B?cWhoY1F6WVRwNXRDQ1JjV0w3TGFYUXZzUi9OemU1T1hqUXhJYlc1L01TQWgw?=
 =?utf-8?B?MTBRQVVCZTNRQVBrTHB5a1lCcG9kZTU0SXRaK0o4Yk1LY2wrTVRETFhPMnI2?=
 =?utf-8?B?NGJiSlIrTE9MOVZWdHA3OEd3dXhIRmNoLzVEMjBwbjBiK1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1JYSmFhTzl6L2VMSGd4K3NUaldYWWtqZ3Q1RlFOZmo1SnpMOWpBWU5hekJO?=
 =?utf-8?B?ODdLdC9ZWnUvVTJKa2FwKzFtcjRMRkd6eWh2TjFXNFY1d2tCbGM4TVV4MVdk?=
 =?utf-8?B?alRrSlV0T1V4eTREc0U2cldPWnRDek53c2JmSngzMWNRU1MvSEZiMFlEbmJz?=
 =?utf-8?B?d1pNY1BqUmNsVHJQZEhFV3phOVRrSzRLN3hublI3dnNWVlFpN2JrdTVGYnlP?=
 =?utf-8?B?VTJkU2EwdFBRMWptWlhaOGJnVXcxQmJaRm9SeDlHM0Joczk2VVo1TG0vdHNn?=
 =?utf-8?B?V3lDYS9RcnloY3VLdjFUWTBYWXl3UkY3YUk1THQrSjR6K0pBVTdWUUl2TlVK?=
 =?utf-8?B?WFh6Y1AySWt1T2RnUmM4Rjg1MnlwQjNma1hkeE9qR1gxZ0kwT1pWWnI5VXBC?=
 =?utf-8?B?aEJjenh5aHhlN0d3Y3QxcjhRMnZNRnA0MmJYbkRRTW5LdTN4dXYybWhNQWJC?=
 =?utf-8?B?a2F2eGZ1L2k1YVdhZDJ0QUJuL0dpSFNmNHozd3RsUExSNGhZamxyQmFJdTIw?=
 =?utf-8?B?TnByMTVydi9YNTZrR0tUcVNmWEwxV2JYemV2ZVJJOVZyQVIzcGUzZS93VHNk?=
 =?utf-8?B?bFlMdURja200d0U3MmZlbTM5NksrMWUwK1VQWkdUMWMzdEh4eDQyelpFR24z?=
 =?utf-8?B?OEtVR2tMSS9qYzhaMm5aOUprQ2Q2NFZoUmN6M2RjV0ZNZHQwbVo2SmdOL0NX?=
 =?utf-8?B?UENiSlpvN3V4Z1pCSERDYmYySFhBdzlZV3dsOG40U3RCNld3NDBkY0I2dnZt?=
 =?utf-8?B?MUFwTkxTT3ZkcHlEa0NQMzVPK0FSMWZ6RGl6Sjdva0RCeXVTeWM0QVhsQlV1?=
 =?utf-8?B?MEcxQnNUUmhUSWE2aElsNXpLL2pPaUVFOTJuYzE0VDZneURjUFo3TFFYTlRa?=
 =?utf-8?B?cDBUWmcrRTlVejM0WHN4YVZPVVRJV1RGRG9LSEl3b2tBSXNZZk5kVmtpbmI0?=
 =?utf-8?B?b2VtTExOdGVGUFEvNXowajVaSGhaZUlKSHJzSmR0SVBZR09wWU9seG1DejMw?=
 =?utf-8?B?K1BocWp6aEtHcCtLNTVxRWQ2eG5IMGV2K3VxeVZVYkxVZ2x3QkIyMnZxSi9L?=
 =?utf-8?B?alI1elNXcFQyQ3VBellsdENhQXJZQWZ2am0xZDdScHRQOFp5QTNDb2lKcmty?=
 =?utf-8?B?eWt1OWRSa3RodVh0a3ZYV1ZSY1JaRnowaEVGVE9ublRGZEtkNm5OMHp4Rzdn?=
 =?utf-8?B?cFBBUkRGVXgrUDVJdko4Tnkzd3BOUGpkMFFVVnk3RTE1dytnMlZHUWp0blFn?=
 =?utf-8?B?eFBnVERKdHl0UTFLcGE2TkdHdERWYnB5enhPaGRwcTV6d1Y4RG1ZVXh2UnVv?=
 =?utf-8?B?Z09jdDFsclV6MzhSL25Vcm9TaGd5eFYzVnIyeVVDNkZEL21UOS8ycHFZdEZr?=
 =?utf-8?B?WHVDd21ENlhSdUZ2enFUMmdxN2premRyL1lsV2h6RU5hbWx6NUlRVHMrNW9O?=
 =?utf-8?B?OUFoYnFBT0prMFU3Q0xMZ2hwL3ZGVUYweG8xL1loVjRXdnBFUjBZZGh3dXZW?=
 =?utf-8?B?Mys4ZVNMU2MrMmQ2SGtCYURTa2RwSWdvQTFGejNxeTVaSURQR294N3ljQzhY?=
 =?utf-8?B?ZHI3cFl3Y0pRKzBtMjFqQ1pGeFhXTzd0YmFGRGV6THJOMUJsL0FMQ1gvZUth?=
 =?utf-8?B?YTNicGYwYzJMYSswU3NLcSt1bUhSY05TeUFQNis3OHBZRkJLRGVaOGhhcUo3?=
 =?utf-8?B?K29qRk1UTjhMeGpYSHY1MGpTdnB0OERuNklRTFZMTHAweFMremNiYXZ1T1dn?=
 =?utf-8?B?TUYvc3JzTng5ek9Qc3liTFJCdU8ybmRyUGhKUnVwMGF3b0QrSUdjdmh0SUQ2?=
 =?utf-8?B?bDhTdUhxVXdmWEZpWTVDNWREN0oxNU9qYUs5NjhRck5hbzE5QVZmbUk5TjVG?=
 =?utf-8?B?ZTd5djBPM0NlWE1OaHo0NmdXRFlLMDZPUmtDRVBvS1JING95SU1Pdzh5QjVI?=
 =?utf-8?B?Y2ZhNUdPZTJINWU3Z0hIVjhuNzBuS3BuYVo1djQ2Z1dDQ0Q0bDBaQ0F3N3Qv?=
 =?utf-8?B?VXZGeFRISW1RM0pXK2lzQXU4bVhOd01pNVRtVU1QbjVDOVdzaUpEUndDTERj?=
 =?utf-8?B?MUpoRHJnVEJZclQrRmZkbzRBNzd4dDY3WVJKbkdtRkVmUDM2TEROVnU3bXJs?=
 =?utf-8?Q?HENqhId0cHeig5zX4pjcwGJwA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4867e898-8787-4bd3-b570-08dca0b67373
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 08:01:06.1117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yIJKc7/3kSmjzmYknF3ckGgwZb1Tc/HsHAmIfShzREZz77nLfhabQ+/dOTSNu0j7htwlqNgSD1BE8hUWdhCaiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8208
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
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAyNCA4OjIzIFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA4LzIwXSBkcm0vaTkxNS9mYmM6IEV4dHJhY3QgX2lu
dGVsX2ZiY19jZmJfc3RyaWRlKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBQdWxsIHRoZSBsb3dlciBsZXZlbCBzdHVm
ZiBvdXQgZnJvbSBpbnRlbF9mYmNfY2ZiX3N0cmlkZSgpIGludG8gYSBzZXBhcmF0ZSBmdW5jdGlv
bg0KPiB0aGF0IGRvZXNuJ3QgZGVwZW5kIG9uIHRoZSBwbGFuZV9zdGF0ZS4NCg0KTG9va3MgR29v
ZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYyB8IDIyICsrKysrKysrKysrKysrLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IDViYTNkODc5NzI0My4uNGE5MzIxZjUy
MThmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
QEAgLTE0OSwxMiArMTQ5LDExIEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfZmJjX3BsYW5l
X2NmYl9zdHJpZGUoY29uc3QNCj4gc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwICB9DQo+IA0K
PiAgLyogbWluaW11bSBhY2NlcHRhYmxlIGNmYiBzdHJpZGUgaW4gYnl0ZXMsIGFzc3VtaW5nIDE6
MSBjb21wcmVzc2lvbiBsaW1pdCAqLyAtDQo+IHN0YXRpYyB1bnNpZ25lZCBpbnQgc2tsX2ZiY19t
aW5fY2ZiX3N0cmlkZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKnBsYW5lX3N0
YXRlKQ0KPiArc3RhdGljIHVuc2lnbmVkIGludCBza2xfZmJjX21pbl9jZmJfc3RyaWRlKHN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiArCQkJCQkgICB1bnNpZ25lZCBpbnQgd2lkdGgp
DQo+ICB7DQo+IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNw
bGF5KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5lLQ0KPiA+ZGV2KTsNCj4gIAl1bnNpZ25lZCBpbnQg
bGltaXQgPSA0OyAvKiAxOjQgY29tcHJlc3Npb24gbGltaXQgaXMgdGhlIHdvcnN0IGNhc2UgKi8N
Cj4gIAl1bnNpZ25lZCBpbnQgY3BwID0gNDsgLyogRkJDIGFsd2F5cyA0IGJ5dGVzIHBlciBwaXhl
bCAqLw0KPiAtCXVuc2lnbmVkIGludCB3aWR0aCA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0
ZS0+dWFwaS5zcmMpID4+IDE2Ow0KPiAgCXVuc2lnbmVkIGludCBoZWlnaHQgPSA0OyAvKiBGQkMg
c2VnbWVudCBpcyA0IGxpbmVzICovDQo+ICAJdW5zaWduZWQgaW50IHN0cmlkZTsNCj4gDQo+IEBA
IC0xNzksMjIgKzE3OCwyOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHNrbF9mYmNfbWluX2NmYl9z
dHJpZGUoY29uc3Qgc3RydWN0DQo+IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZSAgfQ0KPiANCj4g
IC8qIHByb3Blcmx5IGFsaWduZWQgY2ZiIHN0cmlkZSBpbiBieXRlcywgYXNzdW1pbmcgMToxIGNv
bXByZXNzaW9uIGxpbWl0ICovIC1zdGF0aWMNCj4gdW5zaWduZWQgaW50IGludGVsX2ZiY19jZmJf
c3RyaWRlKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ICtz
dGF0aWMgdW5zaWduZWQgaW50IF9pbnRlbF9mYmNfY2ZiX3N0cmlkZShzdHJ1Y3QgaW50ZWxfZGlz
cGxheSAqZGlzcGxheSwNCj4gKwkJCQkJICB1bnNpZ25lZCBpbnQgd2lkdGgsIHVuc2lnbmVkIGlu
dCBzdHJpZGUpDQo+ICB7DQo+IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19p
bnRlbF9kaXNwbGF5KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5lLQ0KPiA+ZGV2KTsNCj4gLQl1bnNp
Z25lZCBpbnQgc3RyaWRlID0gaW50ZWxfZmJjX3BsYW5lX2NmYl9zdHJpZGUocGxhbmVfc3RhdGUp
Ow0KPiAtDQo+ICAJLyoNCj4gIAkgKiBBdCBsZWFzdCBzb21lIG9mIHRoZSBwbGF0Zm9ybXMgcmVx
dWlyZSBlYWNoIDQgbGluZSBzZWdtZW50IHRvDQo+ICAJICogYmUgNTEyIGJ5dGUgYWxpZ25lZC4g
QWxpZ25pbmcgZWFjaCBsaW5lIHRvIDUxMiBieXRlcyBndWFyYW50ZWVzDQo+ICAJICogdGhhdCBy
ZWdhcmRsZXNzIG9mIHRoZSBjb21wcmVzc2lvbiBsaW1pdCB3ZSBjaG9vc2UgbGF0ZXIuDQo+ICAJ
ICovDQo+ICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDkpDQo+IC0JCXJldHVybiBtYXgo
QUxJR04oc3RyaWRlLCA1MTIpLA0KPiBza2xfZmJjX21pbl9jZmJfc3RyaWRlKHBsYW5lX3N0YXRl
KSk7DQo+ICsJCXJldHVybiBtYXgoQUxJR04oc3RyaWRlLCA1MTIpLCBza2xfZmJjX21pbl9jZmJf
c3RyaWRlKGRpc3BsYXksDQo+ICt3aWR0aCkpOw0KPiAgCWVsc2UNCj4gIAkJcmV0dXJuIHN0cmlk
ZTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2ZiY19jZmJfc3RyaWRl
KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQ0KPiArKnBsYW5lX3N0YXRlKSB7DQo+ICsJ
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KHBsYW5lX3N0
YXRlLT51YXBpLnBsYW5lLQ0KPiA+ZGV2KTsNCj4gKwl1bnNpZ25lZCBpbnQgc3RyaWRlID0gaW50
ZWxfZmJjX3BsYW5lX2NmYl9zdHJpZGUocGxhbmVfc3RhdGUpOw0KPiArCXVuc2lnbmVkIGludCB3
aWR0aCA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2Ow0KPiAr
DQo+ICsJcmV0dXJuIF9pbnRlbF9mYmNfY2ZiX3N0cmlkZShkaXNwbGF5LCB3aWR0aCwgc3RyaWRl
KTsgfQ0KPiArDQo+ICBzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2ZiY19jZmJfc2l6ZShjb25z
dCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKnBsYW5lX3N0YXRlKSAgew0KPiAgCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShwbGFuZV9zdGF0ZS0+
dWFwaS5wbGFuZS0NCj4gPmRldik7DQo+IC0tDQo+IDIuNDQuMg0KDQo=
