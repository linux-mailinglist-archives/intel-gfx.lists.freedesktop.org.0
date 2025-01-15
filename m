Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B117A11ACC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 08:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0915510E4DD;
	Wed, 15 Jan 2025 07:21:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HYrokZ9t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EEF910E4DD;
 Wed, 15 Jan 2025 07:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736925659; x=1768461659;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mhqpkSd77yVM7mINM31SDUWKcmYXC14kmJbaxSigPGY=;
 b=HYrokZ9tN+5FhmK1JkynJvWvkz68EsRl8Bi9wejL7opyyDCd0/NMA0mG
 myl81mBRZIfE0wiU2V6Phd8MHbHEoQxVKHpwBihxTHo3HIxuifYOIvY+M
 SLzjZmoJ6E1apObaiFEy907YDG6FTdfNJ0RscmNGZucTQJTXrXCmfcNCf
 W4CHalYv/ZS/WFDteIGq5nHMLeUXYFcKk3rxxXyogsAtt9YRbvrx0ygvp
 34DWAX8D0SlNUvpt4w+MOiwt1ofC0EL3c3LkiBFZUyQFifBCbn9neVwGX
 HItnfz4xM9BFPY6VVkgEyUNmGqmZi85VCMLDASYsh/pNFrQMWsFGqN6fP w==;
X-CSE-ConnectionGUID: S89jTztORbuGv2FJuM71eg==
X-CSE-MsgGUID: tygbA+n7QIu/nnbWwRZ2fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="40928407"
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="40928407"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 23:20:58 -0800
X-CSE-ConnectionGUID: ZWcC4dp9TXOY2oAzXw4EsQ==
X-CSE-MsgGUID: UNwEz6IzRm2y5E+N8wzDGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="110009352"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 23:20:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 23:20:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 23:20:57 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 23:20:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yfxDKPSIgjtfXXB8v8IfI6Xo6YndZmv8G1GVGD44DVXLiR03QG3rQeO1DXnrH089Vo14J6h433vxX5B/XQtDurd/iYKEPaHT8gGKAK9ObiDgxtekD1y1yFqsif/c2361+DIsjXf43TobGAnvX9QS/nM3gxxS+5kT4YKDBNZ5U6UkWU5ctJ6fZtGnMF2QeabW1MvYrjSkFqy23PkvrE/tWgXgFGzMRBPKDEJ1MtQX3F/imeaRahXrcwXhAXTTSHFMauDwIUa8ejtBBO6+HjDGgvbFW4eGlqgdPNUO937ZBymQQkq4rRyqn/9xppTowIV6Sn2nJKIjLAl6SR8n3IKwlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mhqpkSd77yVM7mINM31SDUWKcmYXC14kmJbaxSigPGY=;
 b=Jl7brBQ7kswjELkgTelhrLG+K6cC2x68ufi+lLh9iKOO1UPzcq4B4My1qTuVng/P1I1LaWx6MFf9zhM9/wuQtOKQKhhovAw7YRhiS+4mynDBi6EkPNu7nTYoQpoRl4LmYD1WIX5U0CAt+SYQAE876uE31VxpLmvVrnmmqRVUyZmCgKZOo1HhcykLneUXSiZ/lRvwSpOwxCPVWS/Q0N9YFLPokeAKy6DlFaRCOJRWcqBNaxJZ/kplP9z9YzEyTswfNRzc6u/JlS4RXwe01xUcPNTfO/iPYqF7Ag04Ko6cz0ykedaUsNqy4cF2bmbu5AEonsajVITwXktzDMg8UbzcVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by DM4PR11MB5262.namprd11.prod.outlook.com (2603:10b6:5:389::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 07:20:14 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%5]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 07:20:14 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZG1j?=
 =?utf-8?Q?=5Fwl:_Track_pipe_interrupt_registers_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kbWNfd2w6?=
 =?utf-8?Q?_Track_pipe_interrupt_registers_(rev3)?=
Thread-Index: AQHbZqMlPf7jGofl3kqAQBCaI6XrPrMXbxhA
Date: Wed, 15 Jan 2025 07:20:14 +0000
Message-ID: <CH0PR11MB549166986CD888CE6D6A6A5AEF192@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
 <173686396670.3614104.245245697828114588@b555e5b46a47>
 <173687283000.2823.18358723843554188449@intel.com>
In-Reply-To: <173687283000.2823.18358723843554188449@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|DM4PR11MB5262:EE_
x-ms-office365-filtering-correlation-id: b7a4654d-6ede-457e-0d1b-08dd35350e74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?LzM4M05KQzV6UkIvU21tbTdvblc3eUZIWTE1aGwrSmRkQ0pWWWtpQVE5L240?=
 =?utf-8?B?YnR5b21VZTBIZnBGeDc5dks2cGtUMDFaR1hlNGVIb3U1bDlOZllnY1NFaFUr?=
 =?utf-8?B?UTM0bEJRQVh1T0o3Qk1iQTgvQ1dheXZDOFpBNkpsV2czdHhYdk9laURhVElq?=
 =?utf-8?B?NEo3Y1BtcHl5a2Y4bWRRRUlmWFFOYmdzSE1zN0dXMVdUd2h1Y1BUVDRzU1hK?=
 =?utf-8?B?eS9PZHpPL1FHVy93cnBiZHZJS25XZ1lJSEdXYVBTckFRclptUHV4VnhHYnUw?=
 =?utf-8?B?UStDNnNXTHlqZzlwcldVWU5sRDhaMTNHeWRaSllpcHMzbU1qSW40MXJJbGJ3?=
 =?utf-8?B?NzQxeGNIUythM204REpnMU50cmVhWVVISlFuRjV4b2VVZisyWGM1MWFKaVZW?=
 =?utf-8?B?bWRlL2tzbVpCNDZxMFNNalpJR0VtVzJmc3k3UkxUS1V0UXNUVkxBajd2YktT?=
 =?utf-8?B?MnpoeVRWYklGcVMwZWRBSTRvb0JGa0dKL0FOTGlSWURUQ295czdnQ1p0QkdE?=
 =?utf-8?B?aDNrMTlldVA1ai9sdUxITU1ZZ2VHekhQaXZjVmVXTUE4bU9QOGQwY0d6djk4?=
 =?utf-8?B?TXhrNURlMEk3eVZMdlZudUZXN0Y4UUlId3k0aGFJRnErNjM4QzJTN0htaXpL?=
 =?utf-8?B?T0lMZ0FZRGlqZGxJaFF6S25vd3ZkUUpuNnZodkY4WE1pVEswR3FiUXlING0v?=
 =?utf-8?B?WnY1SGl1end1M0lZVjc4bzhRc0I1OUFPdkYvL2UyM3NyOU96dEJzY0h6Wndy?=
 =?utf-8?B?T05LQldFUU1oR25mbHRzdEpCUzRSWFZFck1zZHZ3U01qeTRuMlY0Z2xsNTRM?=
 =?utf-8?B?R2hBMUJZSmVCdEhwNDZHNTdNK1gwS2VvV3lpY0RJaVgxcS9VN2M2dWdESUt0?=
 =?utf-8?B?Z2pPUXRIa2wrQVJZTExOR3Q0YlJMQmhJeERyL0h1YXhFZG8yU3ltaXU4dFpn?=
 =?utf-8?B?YkVsdWl0bUR1WGs3TjIvZCtKNWdOeDhLZXg2eElNSFRzQjBpeTN3NmphMjRO?=
 =?utf-8?B?ZUlLVUhienQ0cWZjN3JtTHJTa1QxdTY1UkgyTnpGLy9RWVl1Q0dQN3BYUHZI?=
 =?utf-8?B?OTYyWVI0RkRMbUlQQTJuM2J3L2svcVk3eFJYRXlnQkx5WCtRbWs3TnFaZjlK?=
 =?utf-8?B?VkVRTWNzYVErZkpSKy8wR3BxS3pEUS9HU2VnRHBBanExTXdyZkRWdTBDUXdt?=
 =?utf-8?B?RGE2aG44YjRBU1JmWVFMSWtjTHFIV3c2Q1FLcFcrK1o1MERqdkxWZGVNUVds?=
 =?utf-8?B?ZS94ZnR1NUw1cHZHaDZDckFxWHFiWnBuNUxWVmlEbVo0UXIzK09LamVRVENG?=
 =?utf-8?B?ZExsREZwZHR1UmlUMzRWcXY4VGNQNCtEdWg0Q3RKc3JFR0cxaS9UelBiYnUr?=
 =?utf-8?B?QkZqaVNXOXdCVWlERnlzOTFuMGlHZTZkVXVzZjUyd3k0MkNLMUlTdGx4MmFO?=
 =?utf-8?B?bFZmU2VFdkZGdUw5bUFnSzRLbEdyekFYNFdxbjU4b1ZZcFJHZE9JdWpickJW?=
 =?utf-8?B?UndFbTcxV3hHMmRMMGRpMFN6VTM4RVM5VXQzNXJkc2JsZm1TcjFGYXlPMU4y?=
 =?utf-8?B?dUd2MFJUd2hOam5yVU1pZE94VG1lRE1CdFU3bG9NZ0xxWFNBWWg3SjNFN1JV?=
 =?utf-8?B?bHFsdTVyaDVnN2VkMW5rK0pjRGlhdmcrTEpYL3hIalM2NktrRmdnc1h5Rms4?=
 =?utf-8?B?ZXpZWU9sZE9BTTV1MlN3dGQxTzBGa3ZvWk1vS2RrV2pWdnZhMU9hdGlRazR0?=
 =?utf-8?B?c1RrenZHUWtxMkZQdUhEY281UURJcWJJcjltdU4rN1lScUFNSFR4RFdVelh3?=
 =?utf-8?B?UnZsSlp5aFV6dmVUVWN6SGVmOURxU1hFZ3RuNk5pRGxuK3F5REtUOXQ1bTNa?=
 =?utf-8?B?ekZVVDk1WkNnenE3Mys3cjhVU3llZ3FDVFhmUEdna3Fmd3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OU5lMmtSaTc2QjZZODd4WHViSk9NTWd1WlZ5Tm9GZ3RPVHd3MDgxVC9EZWJC?=
 =?utf-8?B?cGJScWg4c2hocEZ3dFVjRlM2UzhaU2JuVzQycFI1TnBla0FmeWlOM3ZXV2RT?=
 =?utf-8?B?TjZsSkFYcXdzK2tlWTUrcHZUbCtNc3pXSE0rT2d5QmRTWWxkY1hWd0FFWGlR?=
 =?utf-8?B?YUg4MWxtZDZieU9MRjJCWmZTeCt5UjFZRlR3b2lnQnBpUEttQTBoU2ZTei9a?=
 =?utf-8?B?OUxxeExQRS85ak9JSXpMMkxXUERBWU5MVWJPanBHRks3MUpGM3dIZW5BbVlW?=
 =?utf-8?B?Q2U2djhhcWU0L1NRb2x5REhPZCtadHI5d3pKd1U2dkRKc0RXSWdObjcyWk03?=
 =?utf-8?B?WVN6RExsUWlCQ2U4RW1KdUxVeFcxUE1jSis4Z0U0OGpBdkN6LzlFSGhlMXU2?=
 =?utf-8?B?bWorUDl5ZTNUOTNkcjkxZ3FJVjR4Q3FRMmxvVUZ0TStJcG5Wb0ZEbmtRSGlN?=
 =?utf-8?B?dldUeXY0QWRWVTZMQlBPOG5kL1BuUmV3RUhJbGRZSVd0UFZJb2ptSjNSZzFC?=
 =?utf-8?B?QmM1SkxJWjFBQXg5T210QXRVckdrOWZiRWw1QTVLSXhMb0o1WjRKNENmcURP?=
 =?utf-8?B?V1NaRTVFRXBuQ00zdGxReS94TURsU0xsb2tmQ0NDS01GSyswSFY1cnkyMGd5?=
 =?utf-8?B?eDlGcVdCUU5INkJtaGFjc25iVFpyWFQwRzdFTHU5VGlSNFk4TEJEcU9nT2Vr?=
 =?utf-8?B?SndVTUphV01DLzVnZld3ZVI2Z3JNLzluYVUrSUZGVHE1UGV2V3BtWkdLaGNJ?=
 =?utf-8?B?VnRVTUxmcTRISXVjRlk1bnVVQUJHbFBlSUFyRDl2UEpZNnAyc0JMdTJpTi9k?=
 =?utf-8?B?NUNZeWJCYThUZytXRFdUSnFIdy9KTmtCbW5lRHUzdFpkaTFGYUhMSnVtRkdG?=
 =?utf-8?B?TXRaTmN2ZlNxYW1OckVXK1J6QXBJeFlUYXlmNzhJUXliU1pXVGk2VjY3dVNk?=
 =?utf-8?B?ZjI0aFdDV3FJWW1OT2labGttZGRNM01SVUtqTjZ6WXdVWE1SQStxZ0UwWjJH?=
 =?utf-8?B?Y1ZsWjd2Sk1TQWt3WU4vNVhuQ21TVlVINGthSFJkcEJmazRZYVRoanFUZjJ0?=
 =?utf-8?B?SHBjTGpiN3RrWUJNMVNvWldNSlhQWFdvR2E2Zk9xZG8wbjZSdVpEM2JWY1VT?=
 =?utf-8?B?aFNVY2F5WVRoL3BVbTJSNW1vVmxaWEdONitkTGJza2p0U1NtRlcwTmhzNjhs?=
 =?utf-8?B?NjVLOEZoS0RCdytBU0hZSXdSbnJpdEhtRnk0NFhjOENDU1dpb00wWGI1NEUy?=
 =?utf-8?B?OXU4c0dTTHR2bXlkS0RqUERoMENyTk5qeUE4RFZ5V3o2QUI2WFdSM2U2Z3Ey?=
 =?utf-8?B?d2Q4eFVNUm54UzY0VHdyOXljTGlnMGo4RUFyWkNwZVdmL0E0WEZnZFR6bzM3?=
 =?utf-8?B?cUc3czFjVUcvYllLdTNyS0EwMStwdHYxQjRkWU5LUVEwOVYrUWh0dG43NThR?=
 =?utf-8?B?M1VSb2p0S0dDSk91aG91anpneUx1ZVJkOGd4d045T1oyNDl0eFhHMUxWRXZm?=
 =?utf-8?B?WVcrc05jTlVYcE1JelJKdlo4ZExYaGw2Njl5V0VDQm0yL09hdXY0KzFPYlJR?=
 =?utf-8?B?blpjVklRNGwvOUxTYm9VVk5VTjRXbUFka1c0V05kTVc4UzRtVU14TTFDQnNu?=
 =?utf-8?B?Q0ZOY2JoU0d5b05UeWk4Y1lITnMvbUJsVDU0a0NGRWIvZ0VVTkdTM01yM0RH?=
 =?utf-8?B?RnRqelIrUzlTTmlZekJ3MGdmalh6Nm1DSHBOUllJOWxjUGRweXdWc1BGQlBy?=
 =?utf-8?B?SzBrRTFFN0FYeG9zSEFGaWwzdTdua215UDN6Ulp0QW5pN2FUTFRMMDBCZ1VD?=
 =?utf-8?B?TjdGOUc5UGJLWUl2RTlEdmxkKzRuOWdhbVZuN1FOcnIwdkNGZC9xaFVocThy?=
 =?utf-8?B?c1MwcHdON2NsYit4VnpUVVh1enpUR0xMTzV6SDU2SXdKNnJGeXZZMU5VbHZD?=
 =?utf-8?B?Ynd1ODRZSE5CMUE0ZTRPcERQMmN6VmFtR1dQVUJseHBoWXBpK09qeG1HYlha?=
 =?utf-8?B?TVFRV3hhRGhCbTNiTWY0QzA5UkhKeUtMNVpWbkhtcm5DQ2JleHp3ZnVJTGZC?=
 =?utf-8?B?WjdpVm03anFBeE5jSENKZFVVODV4MGt3enkyRFh4Smk2SThGVEhNNDRQWW9w?=
 =?utf-8?Q?Wdpq4Pxd8QsVX+SOgio3t+6d3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7a4654d-6ede-457e-0d1b-08dd35350e74
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 07:20:14.8291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yCBsheYlnV8Ls7yHyfBS932CajvgJsrWktAmfU+f5q/DJ6EoZra4+pDtQm210Vfs3cGpkPR7kG/MeA4U43KKMMLbN+qdNwyQiVNLn4ZIyRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5262
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

SGksDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0MzEwNC8gLSAg
UmUtcmVwb3J0ZWQuDQogDQppOTE1LkNJLkJBVCAtIFJlLXJlcG9ydGVkLg0KIA0KVGhhbmtzLA0K
UmF2YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZy
YSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxm
IE9mIEd1c3Rhdm8gU291c2ENClNlbnQ6IDE0IEphbnVhcnkgMjAyNSAyMjoxMQ0KVG86IEk5MTUt
Y2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6
IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZG1jX3dsOiBUcmFjayBwaXBl
IGludGVycnVwdCByZWdpc3RlcnMgKHJldjMpDQoNClF1b3RpbmcgUGF0Y2h3b3JrICgyMDI1LTAx
LTE0IDExOjEyOjQ2LTAzOjAwKQ0KPj09IFNlcmllcyBEZXRhaWxzID09DQo+DQo+U2VyaWVzOiBk
cm0vaTkxNS9kbWNfd2w6IFRyYWNrIHBpcGUgaW50ZXJydXB0IHJlZ2lzdGVycyAocmV2MykNCj5V
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQzMTA0Lw0K
PlN0YXRlIDogZmFpbHVyZQ0KPg0KPj09IFN1bW1hcnkgPT0NCj4NCj5DSSBCdWcgTG9nIC0gY2hh
bmdlcyBmcm9tIENJX0RSTV8xNTk1MCAtPiBQYXRjaHdvcmtfMTQzMTA0djMgDQo+PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPg0KPlN1bW1hcnkN
Cj4tLS0tLS0tDQo+DQo+ICAqKkZBSUxVUkUqKg0KPg0KPiAgU2VyaW91cyB1bmtub3duIGNoYW5n
ZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0MzEwNHYzIGFic29sdXRlbHkgDQo+IG5lZWQgdG8g
YmUgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiAgDQo+ICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVk
IGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMgIA0KPiBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xNDMxMDR2MywgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIA0K
PiAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRoZW0gIHRv
IGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2Ug
cG9zaXRpdmVzIGluIENJLg0KPg0KPiAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMTA0djMvaW5kZXguaHRtbA0K
Pg0KPlBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ0IC0+IDQyKQ0KPi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KPg0KPiAgTWlzc2luZyAgICAoMik6IGZpLXNuYi0yNTIwbSBmaS1za2wtNjYw
MHUgDQo+DQo+UG9zc2libGUgbmV3IGlzc3Vlcw0KPi0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4g
IEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVj
ZWQgaW4gUGF0Y2h3b3JrXzE0MzEwNHYzOg0KPg0KPiMjIyBJR1QgY2hhbmdlcyAjIyMNCj4NCj4j
IyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4NCj4gICogaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZUBtZW1vcnlfcmVnaW9uOg0KPiAgICAtIGJhdC1qc2wtMzogICAgICAgICAgW1BBU1NdWzFd
IC0+IFtJTkNPTVBMRVRFXVsyXQ0KPiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU5NTAvYmF0LWpzbC0zL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVAbWVtb3J5X3JlZ2lvbi5odG1sDQo+ICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMTA0djMvYmF0LWpzbC0zLw0KPiBpZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlQG1lbW9yeV9yZWdpb24uaHRtbA0KDQpIaSwgQ0kgdGVhbS4NCg0K
VGhpcyBzaG91bGQgYmUgdW5yZWxhdGVkIHRvIHRoaXMgc2VyaWVzLg0KDQpDb3VsZCB5b3UgcmUt
cmVwb3J0IHBsZWFzZT8NCg0KLS0NCkd1c3Rhdm8gU291c2ENCg==
