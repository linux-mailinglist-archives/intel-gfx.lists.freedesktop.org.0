Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CiUQGdbJJ2rt2AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 10:07:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ED765D913
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 10:07:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=a3QBKSHb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6201210E176;
	Tue,  9 Jun 2026 08:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34DD510E176;
 Tue,  9 Jun 2026 08:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780992467; x=1812528467;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FUIMX4BYifcFnoV8FIK4X2vIxLS+hNMFDuxDLKKpNG8=;
 b=a3QBKSHb5r/PvLkvJgAavgE7Xr1xyjU4qO4OAh0WWN1+9wazV0TLyTHH
 AdoJKEtJLbljOSIr+goXhAdF5zS84gOE0ks2dCRzv3KOX2eG+B6fRZeyN
 tFVKRvKdkUOVN0CZkwxH19I7kkksq9BqMyiKoiWyuQt9ImwtOxF19+XNh
 TWim2ZcAOaAhTwdA44w3cujUu/6mhJ4Fm8w+8fAANlNogan9BSohsAPOu
 jQNumHgBNYbFue4uaYkqyWlQMhFzwSi/M/Axd68EWeNNJonto4MeaWOtH
 by3X5up/NaYVqe9hrczJBEfZIg8Mi0E2hkpslKqFritkQCOB5JNRVwlFD Q==;
X-CSE-ConnectionGUID: IuCe91FGS1Wtw4LdL+1ffA==
X-CSE-MsgGUID: hwlfxyQtS6GWsaN1jTAh3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="84313945"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="84313945"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 01:07:47 -0700
X-CSE-ConnectionGUID: kQLESeJwTHuKv8dDrNc5dg==
X-CSE-MsgGUID: 3OnqQfMySR6/s8flZeZ3fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="242847079"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 01:07:47 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 01:07:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 01:07:46 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.38) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 01:07:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=seAv4gtyr/7IT19NTSSeUmAG9mCxLGqHZTUc6NhEDlhw8LSdjzrzEOa9esTsTl53bhzLe0beDM6zFFex12naTOXR4DLVlgnOl/3bWPTI3o8uZuzkrr0nEPYigpyU+qgWcZiwYhEjOo9d6ZjbONUv/4CT24Jgr134+nvazqzTTBvw9xwZdfJ3jHQyVuXrlCg+9qgRuamS1v/V4Vy99oiIbZU5YukVtYy5oUWVd1UBr9AwHDCBY70KhcBzw1wgIGmQ5Lr7ptptThi+Mk7AoZiegAO0Ayq7ANaEeokxTJOTx+cQ91k1wzw5hSClVxZzzkJ01DOs0lKJbdx9RhbAU4DUYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FUIMX4BYifcFnoV8FIK4X2vIxLS+hNMFDuxDLKKpNG8=;
 b=T0M0E//MX9V9jkWJS0DVBrYYPsbqGv6ZID/zPLPGuquUqOSzZ5FitaBsS+6NxWRiz5i5tI3i0ab7eFwLzreEBmX3J10aQygaRGMfSlebXJmmrH/Z6G6jmVFKu6mhJFC59LDPXXCs5iOiKOWjwhYCL8eA3+ffogancLQ7njH2Tok1enaoVzS6+byhIR162CWJrQVzhOgaU417sTN48fNcyXXk7B9ZfUVshycJBx6kypvkNW5qbNixpWYRIP74NnE7DDWsHsJQ79CBTO7a9IHTCO/UMzvgdfCwWnczUOz0NOCiI7N6z/pJxFgWdJzTugqoae2kmc2lraOejDD2ITGNiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA3PR11MB9448.namprd11.prod.outlook.com
 (2603:10b6:208:572::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 08:07:38 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 08:07:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compare
 on LT PHY
Thread-Topic: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
 compare on LT PHY
Thread-Index: AQHc90pBcgi3ql4Wx0S5t5CdcuLsmrY12HoAgAACbACAAANtwA==
Date: Tue, 9 Jun 2026 08:07:38 +0000
Message-ID: <DS4PPF69154114F8FE08735C1DE5F963D09EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260608132505.1849158-1-mika.kahola@intel.com>
 <DS4PPFE901A304F9D8A3F2373EB7BBB7209E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPFE901A304F5E4F3186111A73F0683BE31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304F5E4F3186111A73F0683BE31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA3PR11MB9448:EE_
x-ms-office365-filtering-correlation-id: 6fe4e4e6-5fda-4cdb-79fe-08dec5fe2bd8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|6133799003|18002099003|22082099003|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: pzn9xpdVQ5mfqk9toD7cPYdWuzcpyGB8ysMDqDthQPJGKnN1P2t9zn+Zwo4ODq3QR5mc8N8xj6d6HU0EVVQq2peq5y1k8/r4hS3C6V9fGlYCOwO4Yb08AWAh3mExwNv/+sQ48X4nVYZm/4ahcupJ9QLHjpmOLfUq3k7OJKOYUMZgV0Uu3LwdLIhKyw+iRkyq+ZM0G1dShBmiveGIxaZyvptDFSCiurbtXgS3JIDiPfWrhRDICQRG/a38bJcm72Xg/fpRHferP+oDgn78VOgWJqeikuq/S4yfc5j1vpz9sW/jzvVancgUA2Z8vVfN7e9a2Hl1jOF0E6+BPwJQV/aXg8zkleHnXGZPocu6qer5keZsR5enufZ1no+STKhb/pEB9egr4wxlj89f3o/wbBtc+sJk5O4itO8bM0NvqkFMOH10IB5UeyxNA5vD1DBM4CUUiXwZC2eq8DkqWTRCPPoSyfVK+QzWy+9bjsYnVYv6Q4cJYR6WIrdoPsKbD/x/Y5VJ2mE832+SFtEyMC8bl/dwdZnGSPPX5dMlYdlVgp55lh6BgzQC3ogvLfltRmDsFElhFgTFrAgnSLSZlOkhuga+D3WFhoRUp/Rsd0+/CI/im4hmbd/Glo/34uNDPBgRDI+5tSsyXg+viXeLG2/PgSBjSfMLOlHmTTAXzVJInp6tehprK4M2SdWrDSHX1rzf80SCVZguslqQTlgPY85qgoP/cjMe2AHd9F4vquZQSlm+Ip4eUk+1B5WeCjXT+gVAzhbA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(6133799003)(18002099003)(22082099003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWtyamNnbWZTajR4dDhjb2R2TlRRWGM5cFNnRHNWSlI5ZC9pUVY2ajJ6WW16?=
 =?utf-8?B?SFNLaVJFU1BSMEZLN2F6ZGVqUWlRLzM5VkFURVhoWVJBMnNkbWN4YjdFZ2JY?=
 =?utf-8?B?eDZGVUczTmN4MkZRSmVFVXBSaG10c0FpOUlSaDhSSjVvdUE0ZlZ2YVNXMzdY?=
 =?utf-8?B?bVQ1VTBxTExocm91bXlqdVBlNVpUOGRxWXFHbXJ6ZXdwdW92eGo1cE1ycXZQ?=
 =?utf-8?B?TnQxaWNTZ3ZUZWY2bm93V2dsdm5JYVJ3UE1DSk44ZzZkV2RVdXBLRWpDY0lO?=
 =?utf-8?B?dWpDQ1puOWhBWTZiM3B0cnFvQXJJc3FXNEowU0dkYnltRmEwTURmcGl0RFlV?=
 =?utf-8?B?a1NXeWtkdEd1b0YzTmNtVVg4OU5MQ2dBcmF2dW9aS2M2cXRWSW9yQVVCTE0y?=
 =?utf-8?B?UUJta3dyYXRsSmlSejh5akIyaXQvREptYW5yekpBMnFwdjZOUzFNS2NPZXpq?=
 =?utf-8?B?Q2MyVnU2MmJseFdGQWFpbWg2YzlPNkhvenRUL1lEZlFpWXA0bmV2M2t4bU5O?=
 =?utf-8?B?aXh6VEN3dXNsMXdNbUxEd2pFN1d1dHV6M1ZTaW0wa1pPbWFsZXZIbnZCZlI5?=
 =?utf-8?B?U0hsVmlVRzdETGVMUXpkNW53a2ZtbTVrSzFHNG9TYU8wdTU5SjNrTEp1UXVC?=
 =?utf-8?B?QXZFcGZEd0hURWxEa2hLdllMNlR4elIxQThKRG8yYnVJY21NdE1HU3RLM2ZE?=
 =?utf-8?B?QjRMMW9wVWlkQVA2WjNLNkdDODdidHJWMVgzWGZHdERHckxUNUdBNlQ1K3RR?=
 =?utf-8?B?Q0NWQVV1UFBZbTN6MTV1NitiTmFLS2xXZGRGdFVlNFVOM1RIeHZybVlDWlhM?=
 =?utf-8?B?UHVoejZnT0NTTFQ2T1dPUWtqSTBySFBMYW5mZTBxdWtrckpIZ0VZMERUZGE4?=
 =?utf-8?B?dHpkc1cwOVdzRGRIUHBFaTEzTWM4TDM3a0tjckhvd1Z1NGlKamlPYndPSjVu?=
 =?utf-8?B?U3lielFpZDNUakVMZUl2cy80SlpaZ0tseG9TTHRpUjFiRVF2WnBaT2FyUDNu?=
 =?utf-8?B?TDZPTDNMY0N1bjlvTDBCN1dCY0hjVS9iYmlZenhtNHZwaHVDei9mVHFteFRw?=
 =?utf-8?B?STE1UTNGaGhPMHZXalVzTEk4QXg2QXcxQ2pNTEhleVZ1U3FGNlVSZmxnY0JK?=
 =?utf-8?B?U2dmUCs4MXVKZXZhUEwrRnJtdDJYVUcvaG1iZWVhSU12MWlsZFVVZi9BdHJV?=
 =?utf-8?B?bGN4OGJzK0ZneG1KUGxVbEd6LzBLeFZtOGdOM3lNT3FJV0hHTzBNMCs1TlJk?=
 =?utf-8?B?MTNVZFFxVUxKWGMxWGFtSEltWno5ZkxBQ3Z4MUdvVmZQbkhsQU5pQnRCcGdX?=
 =?utf-8?B?bU9uN0tBdHZmR2RPTGYwakpCUzdkbEhBM2EzQUhrM2tudDA1WFJUbVk3TnJ1?=
 =?utf-8?B?cTN1TUZqalVYRUIrc09aZVNXdUVXdlFFSFBTYVRsWmNOdnhHMXoxZlhpODBq?=
 =?utf-8?B?RGdpNVZCS0wxVzVHbWdRNjZjTlhvRFYwMGdieXpVVlE0cFZUNDlEeTVWSVRO?=
 =?utf-8?B?Tjd2RWtrVk9OR3Voa2FlZUlKS3pnVHp1VU9Ra0JlTVMrbkJIVXZ1UE5TM040?=
 =?utf-8?B?QytZWFZHZ1dXUTU1NUJFL3Q5TDk2Q1NYcUdTNkNGY2NtVVpKRmZBZ0tvMkVK?=
 =?utf-8?B?eTZjbmlyVThIclJUOHc5QXg2ZGdpajB6bG9OUHhlMTJoV3VVcnVGRXlxTjNJ?=
 =?utf-8?B?N0QwYmlPYXZWcVlBd3dCTjhkRE9DemgwR2hub0tNSll1NnpGYkxkVFBDTUpX?=
 =?utf-8?B?SEtlQjgwMzBqUnhLY2U1MHQ5bStvUGQvWDgzSU1WYzdNQXVmSzNuN1diTEpn?=
 =?utf-8?B?T045N1orQ2ljUTRkMWdpcE5XWk5SMTM3Zlk3dWZZMjd4aXR2MzI1ai94RjRM?=
 =?utf-8?B?Q2tGejVTdU16L001Q3JoWUVQaG1JZGdleXc3NzRvRE1aZXljNzZSMFEzV09S?=
 =?utf-8?B?SnJiL1I4MTZYOHJPQ0dheFU4UFVvcFoyUkdNSmFERWsyZGdJSzU0RUdNbzFV?=
 =?utf-8?B?ZDBSNnB2VlZWTWIvRXB5N0gxUGxiUVBrMUYwaE5NaCs3eXFxUXBhc3g2V3VH?=
 =?utf-8?B?Rm1IRWhUdThPSEFTT2wydFhtRTJqanVYZ3N5RVROUzJOck1MVEZoYkJYcjlF?=
 =?utf-8?B?Z2JKRFJiU2JDZ25GUk9HaVB0d1lFQTNCbkN4eUE4NG9YMWVXZm5BZTRISDhQ?=
 =?utf-8?B?RUhJT0NnN2I5WkxlTzdEdGhZS1BjUlVrdk1uL1J6M2dzcEV6dWlqM0haQjlh?=
 =?utf-8?B?NEYwR1J6L1A2QmZlcXo3Uk9RQm1qUi9kUmltUDZLOWs1U3pQZnBxZmh0VVBq?=
 =?utf-8?B?TnRKMXR2Z3Q3bWx5cFNocHU2SXV6T1N6SExxY1cxSzF6TnUwMVZxdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MpLApplh7TripGkLDIJtG+4wuzFPYmpMj8XLHSG6CyjFO4yP8VtrkvdPAYt2Tv8g2ALlHjLnPtUpeXv8GJX1cTJZR+KGSjp/jH1rEZympyh3/+RqKlbrHVL9vl0zcwxxRV+htFJwEhHwpw1UWDr3KMFCs9QXrLLyZnGddQSoGLuCnAxfQ+rZuZRAitLYasnyMVEQW8pLBZP+k2PttgEIaA2h1ROr6AGE4ITXL4YOLZn3DOammsu77cwW+6edKwio7RA5b5tqKkUpQ/KF14WV8Jj7kK9FTZtnrx205i/KhhndEPzNbHJKwNOz5uPdaO7zMXExdINkxLpQHGFlEqq0zQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fe4e4e6-5fda-4cdb-79fe-08dec5fe2bd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2026 08:07:38.1057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JBCTsB5ddycbg1nkKXMnLi9IWMieKrcmG4U4JJuNV9X6NRddNwtRaz6XImgySkPTiDPCC9Lp+knL8OGU45gNHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9448
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C6ED765D913

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIDkgSnVuZSAyMDI2IDEwLjUx
DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBb
UEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFNraXAgZ2VuZXJpYyBwaXBlIGRwbGxfaHdfc3RhdGUg
Y29tcGFyZSBvbiBMVCBQSFkNCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiA+IEZyb206IEthbmRwYWwsIFN1cmFqDQo+ID4gU2VudDogVHVlc2RheSwgSnVuZSA5
LCAyMDI2IDE6MTMgUE0NCj4gPiBUbzogJ01pa2EgS2Fob2xhJyA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gPiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQo+ID4gU3ViamVjdDogUkU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogU2tpcCBn
ZW5lcmljIHBpcGUgZHBsbF9od19zdGF0ZQ0KPiA+IGNvbXBhcmUgb24gTFQgUEhZDQo+ID4NCj4g
PiA+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogU2tpcCBnZW5lcmljIHBpcGUg
ZHBsbF9od19zdGF0ZQ0KPiA+ID4gY29tcGFyZSBvbiBMVCBQSFkNCj4gPiA+DQo+ID4gPiBMVCBQ
SFkgUExMIHJlYWRvdXQgaXMgb25seSBwYXJ0aWFsbHkgcmVsaWFibGUsIGFuZCB0aGUgTFQgUEhZ
IGNvZGUNCj4gPiA+IGFscmVhZHkgZG9jdW1lbnRzIHRoYXQgb25seSBhIHN1YnNldCBvZiB0aGUg
c3RhdGUgY2FuIGJlIHJlYWQgYmFjaw0KPiA+ID4gcmVsaWFibHkgYWZ0ZXIgcG93ZXIgZ2F0aW5n
Lg0KPiA+ID4NCj4gPiA+IFRoZSBnZW5lcmljIHBpcGUtc3RhdGUgdmVyaWZpY2F0aW9uIGNvbXBh
cmVzIGRwbGxfaHdfc3RhdGUgYXMgcGFydCBvZg0KPiA+ID4gaW50ZWxfcGlwZV9jb25maWdfY29t
cGFyZSgpLCB3aGljaCBjYW4gdHJpZ2dlciBmYWxzZS1wb3NpdGl2ZSAicGlwZQ0KPiA+ID4gc3Rh
dGUgZG9lc24ndCBtYXRjaCEiIHdhcm5pbmdzIG9uIExUIFBIWSBwbGF0Zm9ybXMuIERQTEwtc3Bl
Y2lmaWMNCj4gPiA+IHZlcmlmaWNhdGlvbiBhbHJlYWR5IGV4aXN0cyB2aWEgaW50ZWxfZHBsbF9z
dGF0ZV92ZXJpZnkoKS4NCj4gPiA+DQo+ID4gPiBTa2lwIHRoZSBnZW5lcmljIGRwbGxfaHdfc3Rh
dGUgcGlwZS1zdGF0ZSBjb21wYXJlIG9uIExUIFBIWSBwbGF0Zm9ybXMNCj4gPiA+IGFuZCByZWx5
IG9uIHRoZSBkZWRpY2F0ZWQgRFBMTCB2ZXJpZmljYXRpb24gcGF0aCBpbnN0ZWFkLg0KPiA+ID4N
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDggKysrKysrLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gaW5kZXggMmZhMTBmODU4Mjc5
Li44NWFkMmJjNDk2M2QgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+IEBAIC01Mzc0LDggKzUzNzQsMTIgQEAgaW50
ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QNCj4gPiA+IGludGVsX2NydGNfc3Rh
dGUgKmN1cnJlbnRfY29uZmlnLA0KPiA+ID4gIAlpZiAoZGlzcGxheS0+ZHBsbC5tZ3IpDQo+ID4g
PiAgCQlQSVBFX0NPTkZfQ0hFQ0tfUChpbnRlbF9kcGxsKTsNCj4gPiA+DQo+ID4gPiAtCS8qIEZJ
WE1FIGNvbnZlcnQgZXZlcnl0aGluZyBvdmVyIHRoZSBkcGxsX21nciAqLw0KPiA+ID4gLQlpZiAo
ZGlzcGxheS0+ZHBsbC5tZ3IgfHwgSEFTX0dNQ0goZGlzcGxheSkpDQo+ID4gPiArCS8qDQo+ID4g
PiArCSAqIExUIFBIWSBQTEwgcmVhZG91dCBpcyBvbmx5IHBhcnRpYWxseSByZWxpYWJsZSBhbmQg
dGhlIFBMTCBzdGF0ZQ0KPiA+ID4gKwkgKiBpcyBhbHJlYWR5IHZlcmlmaWVkIHZpYSBpbnRlbF9k
cGxsX3N0YXRlX3ZlcmlmeSgpLiBBdm9pZCBmYWxzZQ0KPiA+ID4gKwkgKiBwb3NpdGl2ZXMgZnJv
bSB0aGUgZ2VuZXJpYyBwaXBlIHN0YXRlIGNvbXBhcmlzb24uDQo+ID4gPiArCSAqLw0KPiA+ID4g
KwlpZiAoKGRpc3BsYXktPmRwbGwubWdyIHx8IEhBU19HTUNIKGRpc3BsYXkpKSAmJi4NCj4gPiA+
ICFIQVNfTFRfUEhZKGRpc3BsYXkpKQ0KPiA+ID4gIAkJUElQRV9DT05GX0NIRUNLX1BMTChkcGxs
X2h3X3N0YXRlKTsNCj4gPg0KPiA+IGludGVsX2x0X3BoeV9wbGxfY29tcGFyZV9od19zdGF0ZSBv
bmx5IGNoZWNrcyB0aGUgcmVsaWFibGUgc3RhdGUgaGVuY2Ugd2UNCj4gPiBkb27igJl0IHdhbnQg
dG8gYWRkIHRoaXMgaGVyZSBjb25maWcgMCBhbmQgY29uZmlnIDIgYXJlIGV4cGVjdGVkIHRvIGJl
IHJlbGlhYmxlDQo+ID4NCj4gDQo+IElmIHlvdSBhcmUgc2VlaW5nIHBpcGUgc3RhdGUgbWlzbWF0
Y2ggb24gZWl0aGVyIG9mIHRoZXNlIFZEUiByZWdpc3RlcnMgdGhlbiBpdOKAmXMgYSBpc3N1ZSB3
aGVyZSBQSFkgaXMgbm90IGdpdmluZyB1c2UgY29ycmVjdCB2YWx1ZSBzaW5jZQ0KPiB0aGVzZSB0
d28gcmVnaXN0ZXIgbXVzdCBhYnNvbHV0ZWx5IGJlIHJldGFpbmVkIGJ5IExUIFBIWS4NCg0KVGhp
cyBlcnJvciBzaG93ZWQgdXAgd2l0aCBUQlQgbW9uaXRvciB3aGljaCB5aWVsZHMgZW1wdHkgc3Rh
dGVzIGZvciBmb3VuZCBhbmQgZXhwZWN0ZWQgc3RhdGVzLiBTaW5jZSB3ZSBjaGVjayBpbiB2ZXJp
Znlfc2luZ2xlX2RwbGxfc3RhdGUoKSBmdW5jdGlvbiBQTEwgc3RhdGUgd2l0aCAuY29tcGFyZV9o
d19zdGF0ZSBob29rIEkgdGhpbmsgd2Ugd291bGRuJ3QgbmVlZCB0byBjaGVjayB0aGUgUExMIHN0
YXRlIGhlcmUuDQoNCi1NaWthLSANCg0KPiANCj4gUmVnYXJkcywNCj4gU3VyYWogS2FuZHBhbA0K
PiANCj4gPiBSZWdhcmRzLA0KPiA+IFN1cmFqIEthbmRwYWwNCj4gPg0KPiA+ID4NCj4gPiA+ICAJ
UElQRV9DT05GX0NIRUNLX1goZHNpX3BsbC5jdHJsKTsNCj4gPiA+IC0tDQo+ID4gPiAyLjQzLjAN
Cg0K
