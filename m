Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCCCBA52DD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 23:13:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F1010E27C;
	Fri, 26 Sep 2025 21:13:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f/7syYHK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E148310EAEC;
 Fri, 26 Sep 2025 21:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758921201; x=1790457201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=YNY1iWfPQYhEq6CvaqEq+dWO//mE627xpN+uJj/UnuQ=;
 b=f/7syYHKLWVLOtAVqXKr11l8TmsmGZK7wpa/9FtzI3gqkNNP4AUgwfiH
 W31H+88xT6GKDnp7U/ZLbJ8toeQT6y+H9SDwrsrBNDnaX4+PJdnnWmtev
 /3J/EfUG14ssspb6SWDxOccxYi/n9d4IWWdO1KnFjRvSR7aA+FCesK2bu
 hioSDHxmr6i885TPG6MhMWZ1y8nMqOXCvdBxgvVXoEBm5ZfgksRHbqGO6
 UKZrwrsXgwmJ/6C5NXA/e2Kh0L6Ropn907YdxBvD9PNStcLFEhnPtlMGb
 qJv7j3Xf+f5KuAJTEMGJrRr50uRSm9460ODVhu7TEe4byv+j8lTzS/o7J g==;
X-CSE-ConnectionGUID: M1LB58rcRBarfsTSpSIGVg==
X-CSE-MsgGUID: d5M69BHET1mcFE0CyKgM9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65071019"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65071019"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 14:13:21 -0700
X-CSE-ConnectionGUID: HwIkc2gPRQW/JrODFibaug==
X-CSE-MsgGUID: 52iPCfXpRba2ofMrdyvLbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,296,1751266800"; d="scan'208";a="182983171"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 14:13:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 14:13:19 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 26 Sep 2025 14:13:19 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.64) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 14:13:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xwE9SQj2wzBDOaMmj6BMa4fMH2dWKkb1pxCBHLcU2A8J0+q7PCOED93J4e5l9RXQdyH7Ta3B7bl1y4zLUGeemO9ShMnJC2IDqzXFRasQbnuxiCJcT86VMBsOH1fzGYLTFx0nehbHewnuhYzH8KlXT5fqXm/gHidfjycRk42r/6ozm0DALrboI8yPXKwIpi80T2xjANIsO8cfNlN+KzkXD86ygjTSjy4kzZmDHVewZ/PMkwA00N+YoSLgDDBP4ht5hEnLja7z/3IDMjFPFfRNlEUOmc/Xl6BGtRrbaobBIEBqZENx4WVKohN0XxzaNzSGuSUQsz3W/oL41jgSo3oz/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKibuez/IR5G35xxIHZFGzmbhT+eXXh5xuGUV+XHjpk=;
 b=Y0mDmVwF4npzLCT/F+2AGkQuIW/KpogUFYtKdEs9EyafMOzTfdwfieDd+DXnwjo+Gx7P7+2v7S1MrppgNZldtsAS8GpFIC93DGnUWQjR5gZHX/zSedXl+ah2EupZJoaPcMFFhZGHIrVGI9xf5uomGBbYI9F9iCPsiRnUrb1+4pbP+5g6fi5+ZCd/N02/bacnJz9f2OZK4Lpoq6sd0z3wu3YeXObZqGQKFVq/496sHy0OX6uUYPHC8x8m2uC2KEuwimSIj4D3Oyta7S9rY1w2aNkSDAhuUjywNOkLg3yARMn1cZphZDIXj4W92O2KklffPNc0CB9OesfLDOuCRMmlMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7392.namprd11.prod.outlook.com (2603:10b6:610:145::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Fri, 26 Sep
 2025 21:13:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 21:13:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v4 3/6] drm/i915/dp: Calculate DSC slice count based on
 per-slice peak throughput
Date: Sat, 27 Sep 2025 00:12:33 +0300
Message-ID: <20250926211236.474043-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250926211236.474043-1-imre.deak@intel.com>
References: <20250926211236.474043-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0119.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c6::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7392:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e62c133-d7b3-4bd1-b267-08ddfd4180ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d2h3SktQWFM4a3lnM1pKNEdENk1EN1J5MnYrN0Vvd1RtQVZxQjVBQ09sUXk2?=
 =?utf-8?B?dHdRMFFtU0VCK2JpQU9uWEh2Z2tYYjlJMjk3OE81MUNZTldOM3JvZHB2Wngw?=
 =?utf-8?B?OW5wTXhTdGQ4ajllSm9oQm5HcmhWOVZxRzllQm9ycjVoOUhJMDVtYi9SZWVY?=
 =?utf-8?B?OGRzYnJwaFRYcTE4RUMxcXIrS3JYT2N6TmdsTmxEcmZyN09ydUs2c0tSTHV6?=
 =?utf-8?B?SU9XWnhKdjc5d081OEtIcVViamFPNmZMSWtrVHkrdzlBL2N3dUc5M1YwYmVD?=
 =?utf-8?B?bmRoYnYxMHlSbXJWb0U2em5TNWZtYjNtUWlxbDFPWkR0eGZ6N1pKNHVQVkVK?=
 =?utf-8?B?azg5eTIzWjhjOTF6Zi92d1NLeE1BaG5xRDlWTG04b3Y0Wk5lZ21HQTlvWThF?=
 =?utf-8?B?U2JvaS9qcUFLYTdMYmR6VzA0bkJDYXUxSjZWSzNscllEMjkyOTk1N3pwU01Q?=
 =?utf-8?B?ck1SMFNHVitDS29ZK1FRd2t1SXVxdzI1RElJUXh5VytNTkgvWjlwOXBudHdB?=
 =?utf-8?B?RUwxUjJoTXFvS3RJRGVsVzRIWS9OSHRId21nWjRNUTA2cHV6Zm9QWm9MeE1P?=
 =?utf-8?B?RjFJRERFWitOVzloNmMzdG15OW9mT0xnYlVkbXpqaVZ3eHJ5d0NPc1BIQk5B?=
 =?utf-8?B?alFubXlDVmpJSzhnTWFuLy9jU29BWEkzTGV3VmJ6QzNvbmIyZDdheDNPOTc2?=
 =?utf-8?B?cDE0SWhHVmlDV3JSck9NQlEvTlRTUWdOTWdRMnpsNllpb2h3QnRhQmU4RVZD?=
 =?utf-8?B?RWZqU2YwQ1BBRTJ1ZXVsMS9ZRXFrNkxEazdmZWtsd09XVmhrdjZjUTU5Vlkr?=
 =?utf-8?B?SGVZN1pRblAwcll4MnhZeTVncDk0R2kwdXJORlRKcTVGeUZPUStPNVY2aGs3?=
 =?utf-8?B?OUtSakdjeFp1OXZjUFBUQXBQeXAxNlNGNVJNN25tWjEwSXdsRm95UUh2WkRw?=
 =?utf-8?B?UUx2dDZCL2NJY1pmL3p1OGZiM2NSY0lnVmhRUEpZMkRBcVZ1SmJJamo0Sjdj?=
 =?utf-8?B?LzEwL3RQMXFQakVVTGY0SWFFZVJjeHcybkppajduNXQzbE42cGtJUkFlaGxY?=
 =?utf-8?B?dzhOR1lBVnZ0L1JRcHhlVWxINDhnRlF3TVY2Q0FPejZ5RDdVcHIveGFwQmhk?=
 =?utf-8?B?bmxxQklxa2hhTytjMkluMGIrUTlaL0ZrN3ptY2w5emQxeEtBdEQyY0wxM3dI?=
 =?utf-8?B?SXh6RE5Cb2QrMUpITEpUSEl5cW1XTXExMjIyNUxvSWt3NURnNkx1N0lxTDRW?=
 =?utf-8?B?UGF0Z01RdUxLSFJRVGNINms1T3pnNU5NbUV6ZjV4cGN4ei9GYkMxcFdxckQy?=
 =?utf-8?B?a24xR21LYkM3Y0x1Q25kelVZK0JoVlU2NUhhMGYyK3BIR2xXREM0T00zNktl?=
 =?utf-8?B?VWJNczcwckN1djliYUE1QklIL2lGd1kxOStaWWFMaDBORGxZaG80a3pCWFpV?=
 =?utf-8?B?VFFSUUc4MllKaVFFbGQzbXhzQkxwcnk2OWpOZEEwYlNIZkU1TnpoUjNnV3Z4?=
 =?utf-8?B?M3hPSnJzMHAxMTNIM3VTQTdEZHc0TXBMd3oyR3o5aEJvdWhzU0VwdW5WTGlH?=
 =?utf-8?B?UUZVQ2oxZUpNMDFlSVdUZW1ra2FoUmp0Um5LU0djeENvWTFGMUg5Vy9jM0tI?=
 =?utf-8?B?amx0U3RSV3Rqd0R3YlJqcm9VM1ZBaEpkZWYyejZ6bklpT2JqWFkvVUJ4T0Z3?=
 =?utf-8?B?MXNRMUtxTzN0S2xJcC9QS3VqMEJNZ01QaTVXMVBRbzBLeGpqUTdTOFlBTEpE?=
 =?utf-8?B?VnRvK0xORFhhYjhrODhDU3oyR25DS0dzdnV1THBTNlJJQWVNRVZJdWVYUHla?=
 =?utf-8?B?V0xVRU1NVzVrUVVRYUtzR2srbUpyVGZGbGxuNUx1MUFEL2JVTWpBd0dtdHp1?=
 =?utf-8?B?SG5NUlA5d01aYm1UL2pKSVNkMGxIZlJCSmlMWHVuNExySlRBTUI0QnQwM254?=
 =?utf-8?Q?qVM62zIRzkYptSkfB7tFp3s0RTmqP9CX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1NJZmw3c0hQblB4Z3RPNVJwTk5KYkZZcFBvWXpHUk1hU0NndVMyRXg1R2FS?=
 =?utf-8?B?RGI4eVpUc3g1NDZrMHJwMVBreDdnWVV0SGtoYzk5TXhwQ1BEa2N2UDQ1cU5C?=
 =?utf-8?B?WmJxY0RsempaeENPSHpTRnA2b2hSRURTSkNndXRRWEN1SDA2R2RoVTRqdTdJ?=
 =?utf-8?B?NUszS2dEZXhQbHE4NW1pRFhQNkxGM3JCUVJJcms3eUVwcWN6Y1RsUkhSaExi?=
 =?utf-8?B?bm5MZW9BUmZEV21FVEdPUVRJVEt3VWVrOVNvS0dTL3daTlJxSW4yNURmKzJi?=
 =?utf-8?B?R29VRFZONHNYTmVxRFJxRlFjM2E1b0hwdGc0ZFVJUFlvVUEydjVmVDRQUkRM?=
 =?utf-8?B?VSszc1dTallXdW53bjYwL0pjUHUxWFFucFRnREFQb2p0QlZBOEwwWTBhMVZy?=
 =?utf-8?B?S0pBTjMyY1JRaHM1U0NSRWxzTmhRTjcwUEdpbURmazdOanZXNjI2QU5XMWlK?=
 =?utf-8?B?RDhqTjArdFYybVI3Z0xzYTBMYThhYXBwbUE3ZEVsaFlTVkpNYzN1TUlNNDNi?=
 =?utf-8?B?ZjJWUGlKK1BScGxGVDQ3czE0YXFKNVdWOEFhMTRydms0VERtOHF2aURTWUpI?=
 =?utf-8?B?dzk4eXlldUVrM2xSdHpmY1VGV1dXVTlVRU5ybzNrKzJyR21XMGxHUGhsNGgv?=
 =?utf-8?B?bXlYKzcydm1ibUI3OHFSOVU0OHFuTWlKTWphcHlEWjFYYzZwRmVoUHl4NTNr?=
 =?utf-8?B?WE9qdHhTSm5VWXREZUlhdGZUVUpZWXFYbFROL1hibkMxem5ITnVFOXZUU3c2?=
 =?utf-8?B?NUp3ZDhrRm9kL1Z4VTJDeWRybi8xK2NaaTA4VURKS2lVNjhvbU9jdmlxbWxw?=
 =?utf-8?B?ODRsRnN0eFFuSDB5M2dBcm54cUZwZlZkTFp0M2FHSG9hZklyT2hBaW9TZi9m?=
 =?utf-8?B?a28xdzJwbjlwTmJ1MGZMVkRyb0grTWFSa1dnZmxDa0JWRzlnSnZ5WkRXaTBV?=
 =?utf-8?B?TEVWQlI0ZlRNMVduaWJlN29WZ0JNcnROZEtWdy8rUElsM1RWalpvbThVWjZN?=
 =?utf-8?B?MkduT044dzlNL3lNOTV4bS80SVdsNXZ4ZXhwWlhBS3RraEFHL3ZDeFpXRWNK?=
 =?utf-8?B?RWZSNG5wUERmVGFuM0dnVDVvNUx6M0QzTVNRd1NQRmFEMmVYcmxzRWxiQWtQ?=
 =?utf-8?B?Zy9JNlZJSEJQNFphZkhnUmxjWklYL1Q0eFFDRUVuVXByTUFzdllFMm05elJs?=
 =?utf-8?B?aXRpUStROGlzaTduZUVucTIrbVlieW9UODIvMDlvVDJ6YjNRR0pkcTNpNTBk?=
 =?utf-8?B?YUpucEVmWmFQOUhURFErN3V6SUY3SG1HbzQ2bmNmZEN0NXM3cklsVk9uNlNB?=
 =?utf-8?B?NTRQWTA0enB4Q3ZNcGVocUVJTzh5SlZ6YllnL1NrQSs1bUNRQnFEeUEzdWZQ?=
 =?utf-8?B?eW1iYU1oMTc3Y1NRdGJRaEpoaFdLS3FxUGtkdU14Rm43L1pDWWxKQXdFeFZr?=
 =?utf-8?B?Mjh3blhaa2w0cnR1Q1orTXhhUDdiSWpBV0NncXR3MzhXYlpnTzNXbGFOUkRO?=
 =?utf-8?B?T0lzeDJFeUtNSzEvL21NQzYzZnp5L1RNNWZOUzk3b3F0ekF1bC9aNmpPRlZx?=
 =?utf-8?B?Rzl4aHNvQ1F4TGV0QU1UTUhpaTFtR0taQmhiK3A2LzB0dElVV0oxWEVpZndQ?=
 =?utf-8?B?cE9yazF5bWJ2K3BIMWtxVWUxdkRDYzFLU1RQclBuRVI0K0Z6dmpFTklYZlh6?=
 =?utf-8?B?dHcvaUpTcjJqd1AxR1RWVlBxRnkvUk83MUV4aGF6TFdaS25DTjJoSVlFVFk5?=
 =?utf-8?B?bCtGanlLV2Nxcklnb1RQR0RMZ1VMbkR6T0haV1pRTkhhVVNVL0I4c3Q5VjN4?=
 =?utf-8?B?YU5sRXlEWUw0Rml0d0NaKy9lLzU0aHFDMm1hSHJ1TUFQSHY0QUdCY1VwTWs5?=
 =?utf-8?B?clJIUVBZODVPMnZzT1hUajBDdWVUOFhQaHZpaDBmV1phdnVMNkdCcDhQdXN1?=
 =?utf-8?B?eUVKTGdKZGlkc3kwVFI4Z2Q0aUI1MTd0L3orR3NhNXNQbDdCTlprTUgydExq?=
 =?utf-8?B?cW42MnZTbmRId3FWSXo2SmNPUDB0Q2NQSWRjSVVEMXJEZXpoR1BjU0FkY2d1?=
 =?utf-8?B?cWFZTnBrdzJXQlYwdC9JWnJjSk9sd0FOK0JZekw3ZHdUQTcvaXFCbW5CZTJ3?=
 =?utf-8?B?WG1pajBBdW01bERaVTdiV0RWcEM5YU84RmZLNkV1OWQ1WXJYcktna0JkcTd3?=
 =?utf-8?Q?ICDi32plEpcxo5w5ViClw1iNeo7CTXM45jcvz5ALVCej?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e62c133-d7b3-4bd1-b267-08ddfd4180ee
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 21:13:13.6806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XjrSjUf9mWUzsuHBLDg3qHpLeWRoTGjcr1zFFI2WdiSY4by1B56mZ4osMi9TRksH4NJCZuGQlmd3n3/4h3+BLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7392
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

Use the DSC sink device's actual per-slice peak throughput to calculate
the minimum number of required DSC slices, falling back to the
hard-coded throughput values (as suggested by the DP Standard) if the
device's reported throughput value is 0.

For now use the minimum of the two throughput values, which is ok,
potentially resulting in a higher than required minimum slice count.
This doesn't change the current way of using the same minimum throughput
value regardless of the RGB/YUV output format used.

While at it add a TODO comment for MST tiled displays to calculate the
slice count for these based on the total pixel rate of all the tiles.

v2: Use drm helpers to query the throughput caps. (Ville)
v3: Add TODO comment to account for MST tiled displays. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 33 ++++++++++++++++---------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2eab591a8ef56..491a804c1f6a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -96,11 +96,6 @@
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 
-/* DP DSC throughput values used for slice count calculations KPixels/s */
-#define DP_DSC_PEAK_PIXEL_RATE			2720000
-#define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
-#define DP_DSC_MAX_ENC_THROUGHPUT_1		400000
-
 /* Max DSC line buffer depth supported by HW. */
 #define INTEL_DP_DSC_MAX_LINE_BUF_DEPTH		13
 
@@ -1018,13 +1013,29 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	u8 min_slice_count, i;
 	int max_slice_width;
+	int tp_rgb_yuv444;
+	int tp_yuv422_420;
 
-	if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
-		min_slice_count = DIV_ROUND_UP(mode_clock,
-					       DP_DSC_MAX_ENC_THROUGHPUT_0);
-	else
-		min_slice_count = DIV_ROUND_UP(mode_clock,
-					       DP_DSC_MAX_ENC_THROUGHPUT_1);
+	/*
+	 * TODO: Pass the total pixel rate of all the streams transferred to
+	 * an MST tiled display, calculate the total slice count for all tiles
+	 * from this and the per-tile slice count from the total slice count.
+	 */
+	tp_rgb_yuv444 = drm_dp_dsc_sink_max_slice_throughput(connector->dp.dsc_dpcd,
+							     mode_clock, true);
+	tp_yuv422_420 = drm_dp_dsc_sink_max_slice_throughput(connector->dp.dsc_dpcd,
+							     mode_clock, false);
+
+	/*
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output.
+	 * For now use the smaller of these, which is ok, potentially
+	 * resulting in a higher than required minimum slice count.
+	 * The RGB/YUV444 throughput value should be always either equal
+	 * or smaller than the YUV422/420 value, but let's not depend on
+	 * this assumption.
+	 */
+	min_slice_count = DIV_ROUND_UP(mode_clock, min(tp_rgb_yuv444, tp_yuv422_420));
 
 	/*
 	 * Due to some DSC engine BW limitations, we need to enable second
-- 
2.49.1

