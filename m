Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C69B1E461
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 10:27:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6211010E8E4;
	Fri,  8 Aug 2025 08:27:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cFeonqnP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD0210E8E4;
 Fri,  8 Aug 2025 08:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754641674; x=1786177674;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kwM5rI4pMYfwn09LzyY1DCjOzKISdAbZEr0zp88f4dA=;
 b=cFeonqnPdj1Uw+21UpOfbUG97HrHMoNNwuTh2PKWfeUFEFKPC77J66NE
 DtzGVhAN/1Kr7Hz1kymWH6z/QDZhmQyKXSJYQLAo8OC/VT2KmwnslB0IK
 WGdO0TEu0/PpbR1V/oyN2m52OTcJROJzN5gAiAYuBu8qDsA5ND+wFz1NT
 MlB3U/LJ0k3eEtxLGE5u3YXsQjuENRgU0l0EycvbzZtDY0fdH/x23Gl07
 f/0D7wHBJOg90k/0JDhTQc8L5cpRKu+jBcLL5+2OGaMyje8WY5b0rkcV5
 v+Df9Q6Igeq//NlgdW2+jMOFMNW/25CHQb3eO/V4Vkohbf+zgTaNXUQGF A==;
X-CSE-ConnectionGUID: 4bOrIbBoQ4OEYrGbZLNkdA==
X-CSE-MsgGUID: nZWhfV02TXqxI+KipMmPiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67685998"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="67685998"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:27:53 -0700
X-CSE-ConnectionGUID: qLSeZLwhRnG/aF1KoC55mg==
X-CSE-MsgGUID: t2tl1IXJSVi1X0HdDN+GWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="196257860"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:27:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 01:27:52 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 01:27:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.54)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 01:27:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i4+cKDqGupcgZEQNtfl2O6P9SfMuIJvLFx4H5kPu4/SHS09mvjU4Zatv8NQT/ahaEF1dmEE885Al6v9EDjWOu7mfS30+nTem4ii5cV2HLZVIbAEwUReORcHijCykSMX1UqH/VB6DDxPFab4BIJZv/nCIQpNP3pYYLdR/BpfeN368Kpe8bmg7tjUbhMVnZG55Ba8CbBujdvmEfk3Khr3VsZ4a7Y+ScH48aTeHZ24K+SRE2K9C/xtfPrLELOrNi+NJ6nS5uQLcgOsebLr5UMpKouINnxaOCtE/CPzFDtM1taMyVlhyktuLGWnpMcRliWBXTWKK1GRr9UPzz4GQzLTnxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kwM5rI4pMYfwn09LzyY1DCjOzKISdAbZEr0zp88f4dA=;
 b=cfjuhAcwfr6Ric328EVXYJi5PiCpGN/2ZJE2rTZmWGkAvmldTl6nUm1oADixdnydeV+aCcL6cHvrOdT2tSdtZwoHQcuBSyPFJEXvwCY9bwa3ky/ISZKqzQ5gBp4bIINw3eiJUZMiZgkTTJEXjHKUR1Zkz80uKdggDC2/6BpwuocTmTQNnTkob9RxG4R9XNfEPJA9G3MrZXKHAGX0UlXKyrHgRaBJOe2+O7D8S40AhbQo9k/crQ0gTVDELkyd4RUTlAXZqfKPvchnI2C4b/hPLvEzBkoHOgZwh/HTF+vwyl20Ob3prpJhH5ygRl21EgvID7J/eHPec0Jm7P/mY1j9fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MN2PR11MB4694.namprd11.prod.outlook.com
 (2603:10b6:208:266::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Fri, 8 Aug
 2025 08:27:49 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 08:27:49 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 18/19] drm/i915/tc: Cache the pin assignment value
Thread-Topic: [PATCH 18/19] drm/i915/tc: Cache the pin assignment value
Thread-Index: AQHcBd11LA+Ls++/30yOqa97M+TZKbRYcNjQ
Date: Fri, 8 Aug 2025 08:27:49 +0000
Message-ID: <DS4PPF69154114FC476CAA7722E1BA4ABCCEF2FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-19-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-19-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MN2PR11MB4694:EE_
x-ms-office365-filtering-correlation-id: 70324566-7206-4604-71b1-08ddd65575ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UlBYWUsrVDltNEVJY1lzdmNiQXdtZlB2SlFDVHg1emtPUGczYzh0ZC9IUEg3?=
 =?utf-8?B?ZUdkQkdxYy81WFYwenJjVml4SmM1YXdoemlFZTBnY1d5U2hMZ2V1L3kwRVFn?=
 =?utf-8?B?V05nVEZaYUdvazg2d3BFRS82bStzOUZTOS9Lc0RGWU1ocGpWUDFsdGRVdUJJ?=
 =?utf-8?B?NmsyTlkxWWhqLy96ZFE3bzlJaklHdWMvOVBOcWlvUGk4Tm1YWDlFanl0YWxS?=
 =?utf-8?B?QXd0RFJjdmZNUVdzbXBmQzdhYlBpK2pGN1I0TkVjaWlpTWRSQmM0eXRrNG52?=
 =?utf-8?B?REhrZ0xhS3ZQR1FOa1BKWkFEQ2tWWVRFSFBES1MySW9FcFBBeGw3VWpaL3Ix?=
 =?utf-8?B?VkRjZFVKSjhxRDZWR1hWemgvUE5jbHNzcHVVSEZyOXNDTjV3REdDQTcybitE?=
 =?utf-8?B?UDJhWjdtWlNucmdPdk9KVzhvb0JjN0lSZHg1dDltUzk1aTdTZVgyZ05mUHVJ?=
 =?utf-8?B?NGNyT2ZNUXMwemZ1WEpreDlZaVdOZW01TTF1WitPNmRFNEhqMzgvcU5hNkYw?=
 =?utf-8?B?SHYzQVFQMElEVFdvejkzd0J2aThXWlFRSGx2d2tLK3RZQnpYYWdQUDFMZ3pL?=
 =?utf-8?B?VzZqR0pFVi9Xcm1vNUhtSENud0VKclNEOU5Qcm9wOG1nQ2hRYjRkNkJYTHFP?=
 =?utf-8?B?WmZCaTc1MjdxWTkxZ1h5aVU2L1BiNmxKc2d3MXJGRmFSamp6Nk04WGtJSm1r?=
 =?utf-8?B?Ti9jM1NITWExN1I4Nm40MkhrRndxbHhucDVaeEFySmw0eDJlWHBjb3NTdGtD?=
 =?utf-8?B?RlpsQXF0Z2tnbnZJRzBoMGdTMHpzMXJOWTBLQ0ZFWm5JRzkra1NtdFN0c2Nm?=
 =?utf-8?B?SlZjU0RNcUpnUGp1ZTUyRDAzT25WWS9DVVByQjZ3N0xMUndOWVBvM3FWVURn?=
 =?utf-8?B?VU5wNTNEU091OUhiZlhRL3lZSWpjcGFTWWg4ZU5YRjgwWWR4WW9LNmRSS0tO?=
 =?utf-8?B?aGlqQVlCTDZXWWh4R0pQWmRsMThscVJ0N29PVE5HWXZPRFJXN1B1UkZuaTRQ?=
 =?utf-8?B?blJsSFBlV2RYOU12NkpabWVvU1FMQW16aWp1NlFGVGVVQS94Lzc1SEZsZTht?=
 =?utf-8?B?L3cyWTZJQ1YxNW9xaS9WRFVUU3ZpTVZqK05TYmQrd2JKa0pjQkl6TGdUODgy?=
 =?utf-8?B?ZWh0NmxrdnRxRm5va2NPUm5XZnlMa1l4cTlGeUY1Y2Z6VVZjTDZaSEtmMlRK?=
 =?utf-8?B?MkN3TUc0ZDU1YWRQTVpZajBXYnFybis4d3B3U1RlVVJRSkhTM1B5aWlrN1NX?=
 =?utf-8?B?eFdMNk5kZU9FNUNkVlJDbVdDREJFK3AwL01aNW93WFBVa1pUS1V2aU5hcmVV?=
 =?utf-8?B?aWpBRkJ3NmRLRXFVODN6TStRMzVVYlhLM21ZZXAwWmJlbTRySlN0dUcyeVA1?=
 =?utf-8?B?bjMwckV2MkFWMU9vWDY0U0xTUE02RElWNEl3UkJzVHJZOHBjM2wyR05oUXor?=
 =?utf-8?B?UHloajlxcDljSDRQM1lYMmxadVdNU0tKWDd3YWNtR0FJNmFXKytxRVljNFZj?=
 =?utf-8?B?eGhpUUtIRWRpRklZTmVWcVppSVpRTnhZRGRTakRDQzNTL1p2UmpOQ3RzeHJ3?=
 =?utf-8?B?RXhQSWM2aklUVG4ybkZaSDBQTnlqTHkrdUozbHNLdlVnM2M4ZWhVU0xaY1Ba?=
 =?utf-8?B?OWM0QldjUkxzbFc2LzZwUkFUaHVuK1c2RGpESkdCemlRelpEYUdkc2N2NkVJ?=
 =?utf-8?B?cGFHbzNGaldLdERqd3UyYm1qakx4cWNET1p5RWZ5U2d0MkRsRHF5WE04d1ZE?=
 =?utf-8?B?d3kvK200UlBxK3FnUlNpRUF2RG42aWNXMDZ5UFBsc3R0T0svVmVWeUhORTVB?=
 =?utf-8?B?NGJIcDFLd1BzcXRzSHNLQnhSK0RvbnF4eGE1OXJmSG9mQVJpdHRhZ1NEMjBN?=
 =?utf-8?B?T2ZyUFFsaTBhWjMzK3I1dG1GQ3RrZ2JpSndPQUZVYW5ySmlwQmQySms2YkM3?=
 =?utf-8?B?OEViSm1GSlY0eGVZR2l0ZmEyYUZaZG5pRm9uV01WVTI4T1A2SlNxaFJkN2VN?=
 =?utf-8?Q?C0q+Sw2WosdAVHBfdkRj0AiPjZ8iyQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q1FxZUJPT2xJcm43b0RKREVGSkhRRitwYVgwcVVoTnFTWU1QTUJyYnBVZEVs?=
 =?utf-8?B?cWVsZUYrMkMxV0hUUkRRUmtYMUtGNXdIZW5mdGtVdkdrWkluMUlLVWRUZ1FG?=
 =?utf-8?B?VCt5WVp1bGJKVi94Y0JRMWxFRUNKeGxSTmFudStKRmVjdGFValc1L2M0RDBk?=
 =?utf-8?B?NWo2UlNaMzNQNDlqTUNCK2xiZWthOE5kL2RxRitZUUhzNEQ1aEp2UWtyK25m?=
 =?utf-8?B?R2xjaFE0SXhFZXlsYzIwTHFYclJEMlZQd3VOYi9rdVArdExKb3dLdk96VWpr?=
 =?utf-8?B?ekV6aGViS0U5bEw4TWErZjNZdjlrWWNjUUFkaEdTMkxTUWtvN2tHLzg5ZWpa?=
 =?utf-8?B?VFVOOVlBQVVWdWtsaE96MGh0WmxxVnp2WEpMVzF6aHlBa25od3RuVzVvV2E5?=
 =?utf-8?B?MjFKS0F0NEVWSGwyWHNhT2hESTdsL25IbWhQWUcvMlV5Umxsb3ZsQlVaZWZ0?=
 =?utf-8?B?TDlieWRoYlBvS3BaL0NDK3dwVzViWGpNWThkdERGQStWV1BiODZTNXZjemlw?=
 =?utf-8?B?cWZmVlRxUUdpaVVCdXlKK050VjRUN0FyYVhUY2QzVzg5NlJxaElwMGNJcXU2?=
 =?utf-8?B?dkZSSzVzT2kzWkM4YndDL2xjeS9rRFZ2dytndjBkYm53eW5zVVdEbGpYMHZI?=
 =?utf-8?B?YVJxbTBna0ZvaDA2YTJlMzZTb0Vmd1FycEdTeVplU0tlSjZZQXhZYTRBdHY2?=
 =?utf-8?B?VnZpTWNMeHJ5T1JRQlp4cVhDa3BJbTl6STdxZkRhL3A3MlhkcjRUdzI3Q0lO?=
 =?utf-8?B?OVNCUzgrUDBmMjdaN0l3MUZHc1pHYTdSUVQvZEc0VE1hRkx1L3VnWVdVc010?=
 =?utf-8?B?QTNLRG41Yi9Ec01UYXEvWW1sWnpGWFV1OUsxYnlhdHMxOFozL0owdkpGb0Z5?=
 =?utf-8?B?KzBvRDJyMHlwMjBUVndUbHhKUWI0bG9UVFBQQTkrNms5QTNiVzdwdTBMM2ta?=
 =?utf-8?B?R3krS3FDZXdBNExyVVVhSDVDTzFZWGFQV0xXZmwxNFFTdlV6emovUXJ5aWcw?=
 =?utf-8?B?UzZ6MmRkRUFEMUlodHhKUHc4c2hGbUM4OE05cEJhclV3RjludVhoOHZMTVpP?=
 =?utf-8?B?RlBjZDRnUkdnZlRRN0NnUjZmY3p0Q3Q1bjVJeGVNbkZ3OXNFd1dVODhWcENo?=
 =?utf-8?B?Nm55Qnp0aVMwK0toVWR6bm5tLzV4Uy9JSGZYaDdZYisyQmNkMDI2N3V6NytC?=
 =?utf-8?B?NTZVUlBkZlpXQ0lFMVBBZ1gyTnlEUmV5NU9NazlDTjh5UGt2cSs4UVVvN2R3?=
 =?utf-8?B?V2FzRFB0K0NFNTNCcFY1K1h6VlJWbDZqYVhRb1JjQnZiMk9PNVc0VFp0dXFx?=
 =?utf-8?B?NklSUEU3OTVPWGhvUERDTnhaMGhwblhld0FrYmJaNWNSV1A0UUg4a2FJeDVN?=
 =?utf-8?B?MHgvRzhTRnlXeCt1M1hLWVJCTW5ZTG5lYmhoU3NVNEp2bmdXdHAwQTNzTWhV?=
 =?utf-8?B?VUZqQ0hvOHlHeGM4UitYTUtmcUdkcCtnQkt4cFo5bVhWNlZJSEVVZmxFa0lo?=
 =?utf-8?B?bGx5Ky9lL0h6dTFOckVmZHpXK00xWlV3c2Q3QnJvdDYxT0dET3pBTERIM1FV?=
 =?utf-8?B?Q1hQdXNQZVNwMzVHYzRpQ0ZkODVXeitnT2ZMQTB0akNRbWl2ZGdOSHJZTGNZ?=
 =?utf-8?B?REdyK3lKTys4YlN2STJTc0tBbStja2JqZTFYdldFYVpUUkwzLzZGa2NjaDNv?=
 =?utf-8?B?OGhxb2VZWXZTcVEyTVhsNTJBM2RvSDhkcUdBaTB5ekVwWE9xUk9CZTRVVThO?=
 =?utf-8?B?TVdXTEtnRDI0MVJRWTJNbDF1cUxmRFZ3VlhwWDlCUWNtQmxZWEhxa0w2LzEx?=
 =?utf-8?B?UDBpMHlKWFBlRzhYWWd1WHVTZDNQTkhiZGFvV3A5VXRpUXRPSWxUQnJNK0w1?=
 =?utf-8?B?MXd1NlRvQmN5VWlHTW16NW9hdlFtd0ZHWiszSEJibUtETXh2ZVJ3U2ViVEV0?=
 =?utf-8?B?N0xJbnRDbDNqTnNYQ0Z3bk9naXFtS0lWN1NpeGtTUmk4OGF1WmZBNktvZFc0?=
 =?utf-8?B?eHRpQmNlTWxMYnJGZm1lU0RXd003SkVSeEpjN1JhTmMyRWVzRU1LNG1IZzFY?=
 =?utf-8?B?UkcwQnRkdHJlNjBNcEh6TThxQ3FCM3VFcXBIWHZiazNYbmFJR2c2OXMzY3cy?=
 =?utf-8?Q?xkZeHDrwoAMdEjSFrfOnu9jk6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70324566-7206-4604-71b1-08ddd65575ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 08:27:49.4760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b+kntib3UvP1I+CvqUzy4vNYYlOIad2r9JFrhw3gT9Yuyp09l0wbtXPa4M+yF8Tg6lj/dd7vZbO9kPuPWzKv/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCA1IEF1Z3VzdCAyMDI1IDEwLjM3DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3Vi
amVjdDogW1BBVENIIDE4LzE5XSBkcm0vaTkxNS90YzogQ2FjaGUgdGhlIHBpbiBhc3NpZ25tZW50
IHZhbHVlDQo+IA0KPiBDYWNoZSB0aGUgcGluIGFzc2lnbm1lbnQgdmFsdWUuIFRoaXMgaXMgbW9y
ZSBjb25zaXN0ZW50IHdpdGggdGhlIHdheSB0aGUgbWF4IGxhbmUgY291bnQgdmFsdWUgaXMgdHJh
Y2tlZCBhbmQgYSBiaXQgbW9yZSBlZmZpY2llbnQNCj4gdGhhbiByZWFkaW5nIG91dCB0aGUgc2Ft
ZSB2YWx1ZSBmcm9tIEhXIGVhY2ggdGltZSBpdCdzIHF1ZXJpZWQuDQo+IA0KDQpSZXZpZXdlZC1i
eTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNCArKystDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IGQ4NzQyMTc1Mjk5NTEuLmY2YmMyNTNiZWM1NTkg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTYx
LDYgKzYxLDcgQEAgc3RydWN0IGludGVsX3RjX3BvcnQgew0KPiAgCWVudW0gdGNfcG9ydF9tb2Rl
IG1vZGU7DQo+ICAJZW51bSB0Y19wb3J0X21vZGUgaW5pdF9tb2RlOw0KPiAgCWVudW0gcGh5X2Zp
YSBwaHlfZmlhOw0KPiArCWVudW0gaW50ZWxfdGNfcGluX2Fzc2lnbm1lbnQgcGluX2Fzc2lnbm1l
bnQ7DQo+ICAJdTggcGh5X2ZpYV9pZHg7DQo+ICAJdTggbWF4X2xhbmVfY291bnQ7DQo+ICB9Ow0K
PiBAQCAtMzgyLDYgKzM4Myw3IEBAIHN0YXRpYyBpbnQgZ2V0X21heF9sYW5lX2NvdW50KHN0cnVj
dCBpbnRlbF90Y19wb3J0ICp0YykNCj4gDQo+ICBzdGF0aWMgdm9pZCByZWFkX3Bpbl9jb25maWd1
cmF0aW9uKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykgIHsNCj4gKwl0Yy0+cGluX2Fzc2lnbm1l
bnQgPSBnZXRfcGluX2Fzc2lnbm1lbnQodGMpOw0KPiAgCXRjLT5tYXhfbGFuZV9jb3VudCA9IGdl
dF9tYXhfbGFuZV9jb3VudCh0Yyk7ICB9DQo+IA0KPiBAQCAtNDAzLDcgKzQwNSw3IEBAIGludGVs
X3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25tZW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KQ0KPiAgCWlmICghaW50ZWxfZW5jb2Rlcl9pc190YygmZGlnX3BvcnQtPmJhc2UpKQ0K
PiAgCQlyZXR1cm4gSU5URUxfVENfUElOX0FTU0lHTk1FTlRfTk9ORTsNCj4gDQo+IC0JcmV0dXJu
IGdldF9waW5fYXNzaWdubWVudCh0Yyk7DQo+ICsJcmV0dXJuIHRjLT5waW5fYXNzaWdubWVudDsN
Cj4gIH0NCj4gDQo+ICB2b2lkIGludGVsX3RjX3BvcnRfc2V0X2ZpYV9sYW5lX2NvdW50KHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiAtLQ0KPiAyLjQ5LjENCg0K
