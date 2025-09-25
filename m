Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CACBA1BDB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 00:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 318B010E9C5;
	Thu, 25 Sep 2025 22:09:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="layTz9m+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A81510E9C4;
 Thu, 25 Sep 2025 22:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758838139; x=1790374139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Y7xMOBAbhNnEx9eXBzFRULZ6Bw3EzLV3UhZ33M/V54g=;
 b=layTz9m+0j26I6smjmpdJ7mkHmJn1UH+YoTdBfkBStfobeb081XVXXKG
 Ix8NN4BBYUYP112vktLjxwyTmV5M211Z/SScKFld0wCXgE1YN2WZBPyhs
 09aW21Sc9B2EoMGP2FfX+pFVjWvhgeezGg5dajNIbxYkbG795Rls5Zf16
 kRY4hKCv5IEznCk+ZydXqQ1WkL6Xc4x1TXfqsU63IEhvW7qO8tfl1e23x
 rLgzEzQHzixiH603n4zHsN6H4SczrBY5PHqb/c8RK5IqB+sf7YVKE7dZn
 pUiqqijuz9rO3sWAx2pWyL0W3flFapXLSKF82Rmi/cx50OFa6vyDQp13d A==;
X-CSE-ConnectionGUID: 6GbpS9gyT6qxFLpI2JB8Tg==
X-CSE-MsgGUID: oetTjuqiTCGchU6kzLqK+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64982414"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64982414"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 15:08:59 -0700
X-CSE-ConnectionGUID: /NoSRODaShWnakPOxxzymQ==
X-CSE-MsgGUID: +Wz1ad2ER+SSNb6hqfumZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,293,1751266800"; d="scan'208";a="176577228"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 15:08:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 15:08:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 15:08:58 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.33) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 15:08:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XOOR4aG+Mhlq4yTOxPy/0yPVJfsCXoq03aJxM30MXGhasexn2By+i4w5BYKgK+WBWvETR0yTvwA/dGuDM4TkodHLRv9EKhxUcAUQvWyF41lWzfYY5m+5M9mMF2QWJyDkb2DADfF/P+2JfxyATv+2KP4oEGy8/2r3fPZc2zLNs5ajJ7UtyJXx772u45O0SZ5v2xx3uvSMKmqKFSeZsfO5KJUUCGp7rPK4qQCRoYrUOW6ckmj0Cli+y2GRPb4LUdlh9baMMjX7lzd83tVg+F7tFY6YGDwceBK5Ru86HKI3IhOUBqdiojp/eObsxhww648QPkdPraAUAkXnFRxnELmAEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tVGOo4O8OdkH8lhsHstdTg9YcaHLjszC+YPF8zQBcZo=;
 b=EzFONW7qjIa3P6ry/LWV6Adbg+8hHKH2Rp9hwkLnv9kYC1i45PxuwNQilTMxJa7i77nxDWjP0f7xzL6x/1HH4dtUanM5gTWLKEP6uY2nbnUv9ZSI9Ow4NwXW1z7Ikq6bvDt/V+pzrmXbzjB88xwj8LZlv8ye9WA79p6/pqXMQa4jA3D07vsiXQqW1tk2JOxd+hOK+djqPuvX5J3ZDfijPScOR3I9TZFC3XfI9QLxGjv1S3kp7125LhT4wZgsiEfBK67uXhBrYHhZmTGB+Nomj5NCM7zvjnO+ZPK7KdfJl2WUjEt+pZFeL49JkGiL90gDhArnPauZeFVG4tfq/3nXtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB4815.namprd11.prod.outlook.com (2603:10b6:a03:2dd::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Thu, 25 Sep
 2025 22:08:56 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.008; Thu, 25 Sep 2025
 22:08:50 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>, Swati Sharma
 <swati2.sharma@intel.com>
Subject: [PATCH v4 5/5] drm/i915/dp: Handle Synaptics DSC throughput link-bpp
 quirk
Date: Fri, 26 Sep 2025 01:08:45 +0300
Message-ID: <20250925220845.420190-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250918211223.209674-6-imre.deak@intel.com>
References: <20250918211223.209674-6-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO2P265CA0387.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB4815:EE_
X-MS-Office365-Filtering-Correlation-Id: 740b32fe-aba5-4de6-304a-08ddfc801baf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0RDUzZGTG56ck5aUitZanJBYXBlNzVyVUFTdUc3Q3J0THVMbHpmaWtOQWRS?=
 =?utf-8?B?WXZYZFIvSXZNKzBwTXg5aHEvcERmYUl2dkxNQU5FMVdVZlFCNGJOL0Z0NHEy?=
 =?utf-8?B?R091ZERBRzRmS2N0YzlTVkxqV054UjVLbW9zQzRGdU96NkN6eERIWUdtQUNx?=
 =?utf-8?B?RUMzMWluVTZRaUIvMW1HVjlSOXMwV0JhbDdZUWx1L0RhcDNjZ3FNK3RCZ3oz?=
 =?utf-8?B?akdWUVE1QVRuM3d2T3ErSWx2cnR6SEdqNTdQWEwvdkQ0N1NZazBpNEtaeElq?=
 =?utf-8?B?ZWFGeXBoSDM3aE1RNFQ5anUvazV2dG9ZNVVFMmhyNCtNQzhHQTlsSkpXQzBp?=
 =?utf-8?B?eWQxUXpZR3dhQTZrSFdZNGllZ0RYRFB6dW1CUWhRTVUvemNXdTdvTzV5UzFV?=
 =?utf-8?B?RjgxV2gyUmpQSllqUzdnRzNUU2Y3ZEJFY0l6TlJXUWE2emNBRUJYODZSMVpK?=
 =?utf-8?B?OU1nZTdySk1jam40T0tuY014czJtWExSV003UXEvTkp1bzBpRXlPbkd4Vzhk?=
 =?utf-8?B?a0F3TkRmNDQzUDFGT0lQV3d6dWJrdktVOHU5ajVyYWJuYnpUZTllN3h2QjFJ?=
 =?utf-8?B?RDdSblNzdTNSVndjU3h0MDJXd0QvMVlSTFJ5QUdUN2Jxc0ZBRDIrVEk3YXJ2?=
 =?utf-8?B?dElnRkR2TDJqaVZZYWJ3ZzJWZ3hpZU1HSXZTUlc3a3lkYnpWdnkxdkNXVUFs?=
 =?utf-8?B?cmpDTWRWRmNKcDlZYWQzYzh2K1BwbmdLSGtzaWpyTGxmZ0dmaDVKRnVDZVpX?=
 =?utf-8?B?WkZ3SG5aY0F4aVFSN3pFRStTdkZJOWRBYmlKVkJhVi9zTWlKbXRTQThNdXBk?=
 =?utf-8?B?bllTc0w3cTA1TVFyMUFyanBaVzBSUytxWGVuVllQRjFGbHZsZmJuTHlieTM5?=
 =?utf-8?B?TTZ3S0JGSDZzYy9EN2pEL2pJc1hwMktReFNwYThtMGlVMHIzM21DZSsvdm5p?=
 =?utf-8?B?QXJ3YW5wVmxndnNWNUJjR0JsY3hmR0FQSkhyRk1vM1FLb1pGRnB2bW9kRmk3?=
 =?utf-8?B?Tk8yVzJYYUtnOXgwNmczUGVSZU85d2pXZHQ3enhmRG1tdC84ckIwTE00eDlP?=
 =?utf-8?B?OHBtMVpaOXNFTUJDOC9VaTFvOXJkdk5JaVNuNmd1WnZmY0ZoUzF3WnloNlRl?=
 =?utf-8?B?M2VLaWp1R3dRMnN1OGMrUnJUazhxanA3SW5Wa3U1ZFBBMUlvZDZIRW0yUHdt?=
 =?utf-8?B?T2s4WVdNQjVMaktaQWpZZWt0dURSQSt3TEFLSDdoc3RmSndUSVUwcitoazkz?=
 =?utf-8?B?UEVaKzBXMmNMN04rTzQwKy9PNmlIWXF5bG54VTZYSEozNG90aC8wdzlMSmZT?=
 =?utf-8?B?bzZmbG5OMk9NT0RoaThjcEh1QXkreDJnR2JhbzJBK2ZBUWl3cTZBRmVtZE80?=
 =?utf-8?B?TE9JaVE3b0NGM2pwWHJWRGlSbjdEamlLZTBucWhkcGI0UlV4cFFtdk0ybjQr?=
 =?utf-8?B?M01Ndm5iTDAzYncvY0ZEdHpVeXlwZzVVQmd3aE1GYzZDOG9icGRwcjB6U2xK?=
 =?utf-8?B?d1hwbmszb3YvUWVYOGN5WTZ6dGdVNjduM1h3ZEgrdUs5QmlWbzEvNnBsT29y?=
 =?utf-8?B?c2NLbisvQlVtSzlnWERNUUFYOEt0VStZLzFrclJlQ0RuYXREenlPVCt2NEJF?=
 =?utf-8?B?NVN4ckdRMzFEamozRlAwakc0Z1BERGxOV1kyRW1pQ290KzBhSDErMzlYYU5j?=
 =?utf-8?B?akszaVNrMnl3OHkreDFSZExrL2lRUEJpTlVqMjlmTTNpemo2d0VUTCtoMWxk?=
 =?utf-8?B?QlQrZmQxWHFxZU5NaUphalFadjAyZG56cVhhTGdmMVVKemZ3NkN3TDZ6ejNo?=
 =?utf-8?B?TWVUZ1Rha3N3T1prVnYvcFNHTlhHMCszcjhyZTZqaHVuemhGOXNYaXpTaFpE?=
 =?utf-8?B?Q3A1Ty82OW5tc2M0YkNOU1BVWTAzbmFkZVRvSWFOYk13a1NFRlZ1ZytEUjdF?=
 =?utf-8?B?VEw0MTl4aVREajBwbUtNalZGWlh0WS9mT0RzK0JOdEU2dFpYRjN6VXNJZTJa?=
 =?utf-8?B?ZDJ2N0tLK2x3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGZUQ2E4L3JSWGVoa3pnclNsSnFwNmFiNUJ1WU00cUM3TzF2cGcxMGFGTkxu?=
 =?utf-8?B?ZnRWZ3RoOVNyM3JMeGZrcHdpQnJVRTJ2OFJHbVRZeDlORWt0T01jYXhZZTVT?=
 =?utf-8?B?c21xOFIvWCs0RFVCNVBlWWZyc2N3SEJGOXUzZzdSTHF4cmlGSURzbzRKQ0tJ?=
 =?utf-8?B?NUR5SkNWR1p0N1orNkZIayttclR3aWUvOXJkN1A3cjhqbU5zcEJwUng4QlJK?=
 =?utf-8?B?NXVzRndGUWdBc3RUVUNnR3E1L3BEK1p0SWNkNlBLSUlpZm1IU1F2V0wvYlRI?=
 =?utf-8?B?RUJiR3BHT0pzRDFDdFJjZ2RjMGlKa3J4YkZpaFh0MnVCZUc3aEJoeXJDeG1R?=
 =?utf-8?B?bGhpb1VjTSt1SDdkV3dUWG9jMVpCS1lZQmZseUxEcFFoU1l1RGw0cVZqOWhk?=
 =?utf-8?B?R1BiWFl3UHlGUVpPQmY4eFkvNVVuWEpHNHhKSzdTck9PeHA5czNzTDhqdncz?=
 =?utf-8?B?SGVXTGhuNkdaMTRuY0NkQ1lkSzczcXRIV3p6WmV1aGU3bGd1bDI5RXZxYklr?=
 =?utf-8?B?ZHpydzZFeXdMWW1OMGhIUndPelhnaXZ2b2pnOStqT3VaeWc0ajhrRVVWMEwx?=
 =?utf-8?B?MlZQdVpiQXd6VzhsdHhpVWYrZ1NuZWlPTEdBaVQ0bnRzUUhwZFhzMHJIb0dw?=
 =?utf-8?B?bVFrTmVhbnNpRWQ5S3FyOEpCTEZBUTBHUU8yWk1LUDNVYXZuTDNhemJyRHl3?=
 =?utf-8?B?eWhUR1JFTU0wZ3ErQTdiMERpZVFITFkwdHVicUwwY0k3dVFjWU53ZFFORDdO?=
 =?utf-8?B?WFRYek8rUEh1dmlxb2ZBOUpOanh2dDl2MUErSzZxL1cvVXVmak9JODB6Z0JC?=
 =?utf-8?B?NlgvckZRNkJLTjdjdm5tS3hleHY5YXZzbDZiMEhKMzdZR1QyOXFtYS9oRVB2?=
 =?utf-8?B?TmRTVS9xcUpEVkFhTkJ3UFlDcS9sNWdKeEdVdmV1S281QmNrdzlIOHdLVzh0?=
 =?utf-8?B?QlRrSU1OOXpSL093dTBYbytOcktBaWp1MktOZWo3NjBOUVB2bG1jb2ttN29Z?=
 =?utf-8?B?TWFmZVhrc3RienhKWllPZGRVSm52VVlwdS84alNjMU9kd1pkRVlCV1RtZlQx?=
 =?utf-8?B?Szl6dHlQQTdydks5ZkNnUXluSTU1ZEd3b2hzUHN1VmN5cklvemFvNk9MUGhl?=
 =?utf-8?B?RitIVml5SllSZWJjSDZJUzdrUitHWSttYWxWak5KU0dObm0rakxPaWNNdEtl?=
 =?utf-8?B?bUJRYW1pU1ZhZFdBdm4rSU1wMTVxbzlLSTJvaEpLMjUyT2hCdHJWSWRsNGY2?=
 =?utf-8?B?WFNCajI0ZGJOQkhlcDcwQzZVNWpOaUJsRDZnWFhHK1NRZ0Vnb3VBakZldExj?=
 =?utf-8?B?Z0NIZWp3NnpRTEtSOHpsRVFOc1pxaXgycU41OUcrZ2NZUWYyYUpiV0dXZ3FK?=
 =?utf-8?B?V3pxVjZpUy9aQVAyeDVlcFBJaklLd1ZvQnJnMEdaUDRDRnAvdkRuUTJWSmJQ?=
 =?utf-8?B?alV5WjlSaXpPODlQV3ZrQWRRMXdHdnlrU2gyZzBnclo3VFl5Z21FMFNjVEt0?=
 =?utf-8?B?K201eUZPMjVyNU9nVzJsN1U4NEVQTytvcWcrQzJWM1VPNHVyZ05ReVdVUUc0?=
 =?utf-8?B?bVp4OG5wYnp4UlUxYkF6TlJ1Ym5Sd05XTDg1VUlhVjEva3JzL05VallOdEJm?=
 =?utf-8?B?ajk1SU4vTFcwQkNZOWZCMHphdm1IdHdjME1XdUl0cVlTTkFOMmNvUk9OMFB2?=
 =?utf-8?B?ZlhZd2NoOWR1NFhnOXF3SzMrREkwVXVPbWVmd3UyeG9RZE1IYlY0dnFhSjZt?=
 =?utf-8?B?YXFwaXgzSXZpaysrTm8xOG41NFIwdEpkMWdoNTNhbHgvR3R0djI5RGFyM1Nv?=
 =?utf-8?B?TDRodWo4OWErc1J4djV2OEhac20rU1cydWxtVkxIS2F5TktpL1d2aW1wVkhn?=
 =?utf-8?B?U2wwNWFqenhkaENhUDdpQk92aFZjVUREOXlHcVRTb1FqeGFFTURMaDFsVzRq?=
 =?utf-8?B?bXMydG5YTGNURmpyYkRLNWUzRm1KcFVHTnVDSStNNWZURlFpZVRmc1B6bWl6?=
 =?utf-8?B?aE9EZGlONFhCaE1Jdk1BTVphWHA5RzJQenlDQTlBT01RTk9GMmU5eWdlMllI?=
 =?utf-8?B?Smp5SFQ5V0dENHFmcmlkaHhYTVR4Ky9ZNTBXd1pQc3ovV2pmcW9HUTBLbEhj?=
 =?utf-8?B?QWVPclEvL1FSbU0xTnpUWWNsSHE0SmRRd2IrTjg3QkdCUkk3K01CWS9JNnA0?=
 =?utf-8?Q?UibHZHQ5LFDXZKnsLJJHUyblwV5M9EXx5oZBa0WiIx61?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 740b32fe-aba5-4de6-304a-08ddfc801baf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2025 22:08:50.8528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n5krSHMXuK1G5PiuCminOCW1HH24OtpX2UJ31eROKomCZ0+tRr3OCSgc4Hbya0pJoXU2EymqYQ4qEHbiHN+YwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4815
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

Handle the DSC pixel throughput quirk, limiting the compressed link-bpp
value for Synaptics Panamera branch devices, working around a
blank/unstable output issue observed on docking stations containing
these branch devices, when using a mode with a high pixel clock and a
high compressed link-bpp value.

For now use the same mode clock limit for RGB/YUV444 and YUV422/420
output modes. This may result in limiting the link-bpp value for a
YUV422/420 output mode already at a lower than required mode clock.

v2: Apply the quirk only when DSC is enabled.
v3 (Ville):
- Move adjustment of link-bpp within the already existing is_dsc
  if branch.
- Add TODO comment to move the HW revision check as well to the
  DRM core quirk table.
v4:
- Fix incorrect fxp_q4_from_int(INT_MAX) vs. INT_MAX return value
  from dsc_throughput_quirk_max_bpp_x16().

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reported-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reported-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 57 +++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 99d2c31236928..ca5a87772e93a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -551,6 +551,7 @@ struct intel_connector {
 		u8 fec_capability;
 
 		u8 dsc_hblank_expansion_quirk:1;
+		u8 dsc_throughput_quirk:1;
 		u8 dsc_decompression_enabled:1;
 
 		struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d7ee17d3f75a6..14df3792554e5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2480,6 +2480,40 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static int
+dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
+				 const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (!connector->dp.dsc_throughput_quirk)
+		return INT_MAX;
+
+	/*
+	 * Synaptics Panamera branch devices have a problem decompressing a
+	 * stream with a compressed link-bpp higher than 12, if the pixel
+	 * clock is higher than ~50 % of the maximum overall throughput
+	 * reported by the branch device. Work around this by limiting the
+	 * maximum link bpp for such pixel clocks.
+	 *
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output, after determining the pixel clock limit for
+	 * YUV modes. For now use the smaller of the throughput values, which
+	 * may result in limiting the link-bpp value already at a lower than
+	 * required mode clock in case of native YUV422/420 output formats.
+	 * The RGB/YUV444 throughput value should be always either equal or
+	 * smaller than the YUV422/420 value, but let's not depend on this
+	 * assumption.
+	 */
+	if (adjusted_mode->crtc_clock <
+	    min(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
+		connector->dp.dsc_branch_caps.overall_throughput.yuv422_420) / 2)
+		return INT_MAX;
+
+	return fxp_q4_from_int(12);
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2511,6 +2545,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	} else {
 		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+		int throughput_max_bpp_x16;
 
 		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
 		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
@@ -2525,6 +2560,19 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
+
+		throughput_max_bpp_x16 = dsc_throughput_quirk_max_bpp_x16(connector, crtc_state);
+		throughput_max_bpp_x16 = clamp(throughput_max_bpp_x16,
+					       limits->link.min_bpp_x16, max_link_bpp_x16);
+		if (throughput_max_bpp_x16 < max_link_bpp_x16) {
+			max_link_bpp_x16 = throughput_max_bpp_x16;
+
+			drm_dbg_kms(display->drm,
+				    "[CRTC:%d:%s][CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
+				    crtc->base.base.id, crtc->base.name,
+				    connector->base.base.id, connector->base.name,
+				    FXP_Q4_ARGS(max_link_bpp_x16));
+		}
 	}
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
@@ -4232,6 +4280,7 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 	connector->dp.fec_capability = 0;
 
 	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
+	connector->dp.dsc_throughput_quirk = false;
 
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
@@ -4252,6 +4301,14 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 		return;
 
 	init_dsc_overall_throughput_limits(connector, is_branch);
+
+	/*
+	 * TODO: Move the HW rev check as well to the DRM core quirk table if
+	 * that's required after clarifying the list of affected devices.
+	 */
+	if (drm_dp_has_quirk(desc, DP_DPCD_QUIRK_DSC_THROUGHPUT_BPP_LIMIT) &&
+	    desc->ident.hw_rev == 0x10)
+		connector->dp.dsc_throughput_quirk = true;
 }
 
 static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
-- 
2.49.1

