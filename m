Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153F0A6D5E0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 09:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B50F10E223;
	Mon, 24 Mar 2025 08:07:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lqrFFQ5t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8276E10E223;
 Mon, 24 Mar 2025 08:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742803673; x=1774339673;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=XLSvy9Kq3NzKxkx+eqxSkNh6TrhCHds9do8rdAvZQ9E=;
 b=lqrFFQ5t/Ez/clzWBBvlL4x3iGaQcMhl6lxQ7EFRdwUDsA5vfcz3cGIl
 v7xAuktufeaNv0Yb+V3sosOpHs17sxW9CHWW4VJdSPkzQEuJzXZUX+hg1
 sf+wUdradxOfg9FfzqYiAJVmI3op0UIHjQsU5CRnm5SV4vivYxUXhdAF7
 1a2qQcUgBb9g6p3zAFHkXDknvrJhBlRNGAyP7bWtZvYamfRRyUWEFQPmX
 e6uxSpv4bcu9Rh6xejHn+R4MjirEaevdzkCVmlfnd/xfeXIvozwYkW5Pc
 lvWenej3mSA+vu8CWAJGMaJ4uX0+NoRNZdBDL0+hAcbOtUd1xk3id8eSQ w==;
X-CSE-ConnectionGUID: jZKPBuPjRi6iv2rbhNrVEg==
X-CSE-MsgGUID: nML8ocGZQnq8bT6ofsN4Sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="44159985"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="44159985"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:07:52 -0700
X-CSE-ConnectionGUID: JJsXBBzzS7yKAYO9RjjHYw==
X-CSE-MsgGUID: 9POONm4XSK+RH5RrYMybSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="154977015"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:07:52 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Mar 2025 01:07:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 01:07:51 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 01:07:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vrnqj3e3coB0C/BaNlQiIj4cHZYB0ju+RD0T1VUc/AFT086jFTlz6VtMCEN7E6KzVBNRCL39c0iQNhBrVRovRtantXlAbzhatEx1iV4ipTQc0JUdW+9B+G9Vs5GHVTzR2pL1fDU7thfRrxos7qYcHulLGI9G2vOpTgfzR0y3Behx1v/NSTI/xdPqv7d5WSqD33N/66KNiEqE86BMAKQd7FPlgDKjFjKF4ThMQmEWrKtNrG3eQhfepSBLwg1WEGQ0bgVNk1TnJ1jopN/tfT45DdMnKtUCmsZSjZGVvL+7bUnCYRvzcvHbkyrtVU3HZ4ajbX4EZoP0jBcTXg8QIpr3mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XLSvy9Kq3NzKxkx+eqxSkNh6TrhCHds9do8rdAvZQ9E=;
 b=Q+ZXUa8TiHCbJO+QVo9SUpF3t/Np3BOsld01RjhaBv2V57M+zK8HOb+mrhP3sb+YRNQgZYNA0Qo45otPz6uD2UDQa4iaU7+P9NI/zPwA8wtYJ7CFxUqWhx656YEQG5KR+lE7j88VOHewNT9pnIydss/1wqkDnnr/9EMpLi19HxRRf3nIwdLp5stozWJxSYYdrH377cWGQB5Q07KN6QxUGptPoDsiQyNhlXg1T7Lz6w4GG644TBnSdJ29PFvClEvW6e5TnH+Vya/ssPSfeG1LlI6oqZeN9YI+aCexmvssIqIV+JniVYsRDJvEBDeyEQEh1EAzPTKgt76Cv9uHNESjkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6802.namprd11.prod.outlook.com (2603:10b6:510:1ca::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 08:07:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 08:07:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v6 5/8] drm/i915/lobf: Add debug interface for lobf
Thread-Topic: [PATCH v6 5/8] drm/i915/lobf: Add debug interface for lobf
Thread-Index: AQHbmQZrOWny8MMSEUKyue1AsEPvRrOB9YqA
Date: Mon, 24 Mar 2025 08:07:35 +0000
Message-ID: <35361c9ba4ab85e9f703e590efa8e3a3ef1e2065.camel@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-6-animesh.manna@intel.com>
In-Reply-To: <20250319191508.2751216-6-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6802:EE_
x-ms-office365-filtering-correlation-id: 261d0bc5-1ec6-4af8-3175-08dd6aaaef83
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WDNiTkdMNmlJVVZSRzJuRTZzWHZ4MFE2QkFUckhtMWtkUmNnRFloU0RmU2lo?=
 =?utf-8?B?R2FGSlY5cXVYZnN2dUNodnVzV1BjN3I3WHdraXByMXlBTUpzWGtScjVNcjY3?=
 =?utf-8?B?ZVpucHZrdXUvRm5POTBoUXp4WHpURTRHK2dFV0UzZ21UdUUvUG5ROFhpRklH?=
 =?utf-8?B?THdRb1F5VTJqeGdvOXV4bmtJVXRJUkh1ZTF1bnVlZTA5ODJWNWVHYjNLSWJP?=
 =?utf-8?B?YW9GbllIckxSNFFldVZsQlU3UXZZSkZ6MnVrL3hvbWc1MGgzREZ3d2xVVlBO?=
 =?utf-8?B?MEo1ZUN1RGZTQm0xOTRFNERmMHJOSWlMMisxTGpuM3Jsc2ZSbjNkZ09VOXJl?=
 =?utf-8?B?Q2IvTHN3ckRRNjV3UTh6QmlmVlhCSWlwcUhYT1pwNjY3S0VhQjRNUUN3eEww?=
 =?utf-8?B?UUhhSVppZ2Nvc0hKTllIVnVJWnhqU085TEU4bks1SHlZaFNSRWpENVhzbWsr?=
 =?utf-8?B?dG9kNUdUSTkwNllubGtsV0RVcXl4N3owQUZyRDN3MjBSMlg4eVRONjNNZVgx?=
 =?utf-8?B?OWtSOFJaOUYvUXFMeEFtaDMyZDdweVoxNENlRmdOK0YxSk1EY2w2eTNWeGJF?=
 =?utf-8?B?bVNlbUg1UDNZV2xjaXJVM0YyNHloNW94UDE0ZmJqN2NPYmZFRFBIYlRDUm5R?=
 =?utf-8?B?Ujg1SjYxanVCTHFLTnZLcXpQMmt4Y2ZOdjdwcXp5dDhaVmNHMi9MYmZkSnZv?=
 =?utf-8?B?L1R0Q1BxRmM2STBvSU1mOVBhRVNoZDNHKzhEV09MNVoweFNhNG1XdGhPT28x?=
 =?utf-8?B?dm1kOU5qZitKSENQVCtHdXZ3STl0NVA2dDR1M1BiQktjVHBaUzNOSmJsTzVP?=
 =?utf-8?B?NU51Zkl1bjlQMHJFZ2N5NTFJTlMzMlhTRHNQU3BnTEpKcjBITUc4Qmw5REV6?=
 =?utf-8?B?TTY0U1NtWmcyaklJVWZjMHN6QmppTTZ3b0ZhcGZpcnI4Z3BXYktCQ2RJdXVC?=
 =?utf-8?B?S0J5SFVLRWNYWmhDZnhXSFdBdVlOeVRxb3BCV21TbnhqeGhkVUlNVzVYbmVM?=
 =?utf-8?B?SndjbmZpcHBQdVpoRXQxSEUzckV2aHhGdkt4Y1k5UGhqVFVWOTZIMWZMTTJs?=
 =?utf-8?B?bDBuLzREVW1yYW5xNTAwTnlCZWxmY1VSbHZWYkI5WXR1ckE2SFg1eWozWGVH?=
 =?utf-8?B?MndyRXBoaUdNQkE1WUFNeFlJUXRvdFQyRzNNKzZVczhwN0xnZjEyL3pKM24r?=
 =?utf-8?B?V2d4ZTdUMkRZRFZuU0JFOFJ4Mkc0WkZycEhFTTJycnprZjdySndEazVhdVZu?=
 =?utf-8?B?REtTaC9sd0p6Y3gxaGVQeXMwQ0NlTEJXeTN5eVBXMnBSNVhqNURsVy96OUpj?=
 =?utf-8?B?ak9jbEl6Yk1sUUcyRjZCaENQWXdGTHFQSytqeDgzWkE4YW1NUWZPNE9pYnJ5?=
 =?utf-8?B?c1BWTTZzOFJDQVR1M1VXY2J0VTlrWW9zemNxU2x5VllrejVFdEgwdVhYQkIw?=
 =?utf-8?B?ZFdXSHNJT2JvY3N5ZXp4VElGaWhNMzRMcGdUc2FXTm8zZTM3UXJmaHVtbWRq?=
 =?utf-8?B?Z1c3bklwc01XRkFBVHRhbjVYelQxTmNUKzY1S3grdzc3RU5xZ2VBNEpYaUVq?=
 =?utf-8?B?RUhQY2JEZFdZekxub016MmtyTklIQzhHOHY1cU5aVXJGR0NPWGx1WEVrdzhV?=
 =?utf-8?B?ZDZQcmVoQkVmTGUzbFhQcndiYWZFSDEzTzFmUkxUbytaUjdlS0VaOW4zUG1L?=
 =?utf-8?B?dnZQRUtTU2Vyb2tCVys2emRpWE1uQ0p0L2dQTWNYeDZqMUY5K2dMdVBabWRO?=
 =?utf-8?B?dXEzQzc1Sjl5TUlYL2xiMGV0Sm1XQTl3MkkzcjRiQlJTQnNPYjJIZlVZeitp?=
 =?utf-8?B?cFBzWlBPekNmRURHdVZXUVc2dUNCVUhpaithdjNrZ1J5dC9vOUU1K3A1cGNo?=
 =?utf-8?B?QjZuSFJRYUZYNGFJeUN1N3BqbWhIUnVwNFJnZXNHN1ppRTVIRmFuY2JFVW1J?=
 =?utf-8?Q?dTzlU6TgcIx1Nc7sLj91ylTRIz4yRrnN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWRrNXUrd2U0WEJYbjlhZ0NrTlNFSmtxSENFenNWRXJObEJnRGRCTVJPamww?=
 =?utf-8?B?L0ZMb01Ua1NHTzRtaFVxbkJZL1RiNWl6WmpZUU5PdXR0Wm5LbnBSblArODlH?=
 =?utf-8?B?Q05ERVNaZWU5Z09VUjlJVVlIUnIySUEwUXMvd1BuVTgyU24xNlF4K3A0UU9v?=
 =?utf-8?B?Zi90Ukc4SVIzU1FNYysvU3ZLdU1TS0tpL0lObzlJMXhCNkZFd3paU28vNlla?=
 =?utf-8?B?ZjFGdFEyK0l5aE56UkJIeitRZ0lZM0lBM09IcTBqQVBCb0tGd2ZSeGtEQVpP?=
 =?utf-8?B?WHkxLzBmWW5FQk02T1M0cFZITE1GNnhVTnJReTRhUEZyNlZ4SDNBUGsvdTNn?=
 =?utf-8?B?aUVUay9UQS9iTnV3R1JZdG81bVhsOW1IRW5UTHFERW5pL3NrMDVJZ0lFODdv?=
 =?utf-8?B?YlVRNXJUR3Z1amM1VFBMekxqQ0R4d2oxUmszNTBqVnM4L3Q3T1RjV2h6UlNH?=
 =?utf-8?B?eHJJc3I1dVYxZy9OWXZSWHFVTEVDd2dETVU3cm5UNlN2VG1ZWXhVSnlzaEJE?=
 =?utf-8?B?b25CY09LdG1LZU5mQS83RTVIQUdOajZSSFJNdnJIREhOaW5VbkZwbW1INDJO?=
 =?utf-8?B?NG1FNyt3cDNuOWFZSW4rU0Z0aWd2Y2NyeXUwN2hSYjJ5WGFySGN3VE1NTjNK?=
 =?utf-8?B?WS9vTmJ2YTZiYU1UL3pDZ3Q1NjRiR1pCWDl3dlg2eHhnY2l3d002KzdNZjZQ?=
 =?utf-8?B?UmFSSjYvaTd2U1BYcjRKN1hHNVJ6emlhajBHV1I2Q0JDTWU3dFhiM1Irbjc5?=
 =?utf-8?B?Zk12V2toNGh4dmRIbXJFWTF1dTk3NnhNaWp3UXZqR0F0YWdJWkU1V0JTeFZN?=
 =?utf-8?B?cmRDdk9MaEhxa2k1MjFIKy9pVjhKckRucE1XM2laQTViR0k3L2pLQnZKcVA1?=
 =?utf-8?B?bkFDNWVCSlBybjg1TlVxdm1heUVrcllZT3BiRWo5MzR2QUtHNS9FTXVWdTFD?=
 =?utf-8?B?bUYxS2JRN0NpUlBJZWFhd0p1dHh1WURuQmttYnJGTlA2dTMrRXRmT2E2cnVK?=
 =?utf-8?B?US9ocENSYXJmSVNxMk5ETWlHaWY4SjR4UjNYeW8xS1A5bkI0eXg0ejNaR0Y0?=
 =?utf-8?B?RyttVUFWMFh1M1B0QjZjVzBSU1NiWTRXRzlTWGp2TllPVHV6K2x3dkZNUXNL?=
 =?utf-8?B?Nkp3Z1FhYkl5dTVxWkdxYzRvLzVJQ1J3ZnIveHhUTkEzTlB1a0RSRzViUVZL?=
 =?utf-8?B?K0c1dnpSK1duaGlzb0dYeXMrd2dpeW9VZHh5NWhkU0lFUXJ2QWk4MUF3Ukhw?=
 =?utf-8?B?dHdHWUdNWnR6MmNhNXhaMDI0NFBYVHhaeEJDK0xUMVVJMFVheUU1V2EvZmVT?=
 =?utf-8?B?R1dLcGxpbHJlbHN1VWFQK3cwQVZlQW53N3dQY2VjbkZKQkNvOE5VVWExRXUy?=
 =?utf-8?B?enIxOGpwR0lVdFNvZ0JXR0lmOE1CVXBBV1VrcHM3cTU0eStJTlEzL2k3OVRz?=
 =?utf-8?B?VlJlam9tR3AxZFhIeitYVWlDQSswTGJqYURIUGErcngzZnIzdWhqbnJZRGl3?=
 =?utf-8?B?Ujgxby9Iajl5VDYxL1VJbDJUeU5XMllabTA1ZkYvUmJvKzFnTWxLdG9iU01y?=
 =?utf-8?B?WUh3b1hyekE1OHBsM2xEUkoxLzBmNUJtT1VDbWxIOHZVdXc4c1ZOVlVsZWp1?=
 =?utf-8?B?UmR1OGtXS0xxalFzNGUvdlpSZ1FxWDI1MzIrcFg4dzNlOHJhSFdsOXdieUh0?=
 =?utf-8?B?aGtrUnhKZHZvVGkwV0xqbTZLQzdWcVl5eE5tSmxEZzNnTGtLRWduWitISjNI?=
 =?utf-8?B?MnJHNjEyQ1BWUDBQYmNzUXlBS3pMY0I2L3Vpa1BXU0hoNEFkM3lGdTZMUXBU?=
 =?utf-8?B?Tkhpc1Fyd1UyZlVlek13aHR0UVh0T0tQWUJVN1JGa3BHT0JLYkpEWXBxWWpH?=
 =?utf-8?B?aUMrU1ZZKy9FN0Z5SkIxWjYyU04vb3ptOHd2ZEJ1amVINSs2dHZTWWtOTVIz?=
 =?utf-8?B?cjM3a2VLczhOUzcwMDlqUVlnVUQ1OURybHBreGJaMkIycUMvL3hMQlZKbmxT?=
 =?utf-8?B?SVBJTGx3WjFPTmYxcUxFRkI5Z3l1YnZvYmlER2Nhd05yOGo4b1VSN3FEdlBJ?=
 =?utf-8?B?M1Zxc2prRUU3TEt0THFKVjY1dm5sZkY0ZWUzR1Y0ODlCcTFkUTFIRTJHaTlV?=
 =?utf-8?B?Nlh6eWluZFJHeUJSQUMrMGExTHF4WHhBWWRtYlBubC95U3NEZTFaR0hKdU1H?=
 =?utf-8?B?bGxneVZ6VHdyR05VRjZSVllmcGJJSDdBVTBrTUsySmduOFF3Q2ovMWxlREdV?=
 =?utf-8?B?RmNhdnpQc29JWlowODd2N0RPL09BPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <05FAE6F4164AE44AB7328C0341E34A4D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 261d0bc5-1ec6-4af8-3175-08dd6aaaef83
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2025 08:07:35.1227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m/3O5gxPdotnrn9wEgJUzj72RtCNyGkel4XmO/et5mayBV62y0WGjWkWiZDuuO/WprxT5YQcChiltbGlDqhEKtB2zop9oo8QqnoJ9GDe0PY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6802
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

T24gVGh1LCAyMDI1LTAzLTIwIGF0IDAwOjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBBZGQgYW4gaW50ZXJmYWNlIGluIGRlYnVnZnMgd2hpY2ggd2lsbCBoZWxwIGluIGRlYnVnZ2lu
ZyBMT0JGDQo+IGZlYXR1cmUuDQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjoNCj4g
LSBSZW1vdmUgRk9SQ0VfRU4gZmxhZy4gW0pvdW5pXQ0KPiAtIENoYW5nZSBwcmVmaXggZnJvbSBJ
OTE1IHRvIElOVEVMLiBbSmFuaV0NCj4gLSBVc2UgdTggaW5zdGVhZCBvZiBib29sIGZvciBsb2Jm
LWRlYnVnIGZsYWcuIFtKYW5pXQ0KPiB2MzoNCj4gLSBVc2UgaW50ZWxfY29ubmVjdG9yIGluc3Rl
YWQgb2YgZGlzcGxheS4gW0phbmldDQo+IC0gUmVtb3ZlIGVkcCBjb25uZWN0b3IgY2hlY2sgYXMg
aXQgd2FzIGFscmVhZHkgcHJlc2VudA0KPiBpbiBjYWxsZXIgZnVuY3Rpb24uIFtKYW5pXQ0KPiAt
IFJlbW92ZSBsb29wIG9mIHNlYXJjaGluZyBlZHAgZW5jb2RlciB3aGljaCBpcyBkaXJlY3RseQ0K
PiBhY2Nlc3NpYmxlIGZyb20gaW50ZWxfY29ubmVjdG9yLiBbSmFuaV0NCj4gdjQ6DQo+IC0gU2lt
cGxpZnkgYWxwbSBkZWJ1ZyB0byBib29sIGluc3RlYWQgb2YgYml0LW1hc2suIFtKYW5pXQ0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jwqDC
oMKgwqAgfCAzMg0KPiArKysrKysrKysrKysrKysrKysrDQo+IMKgLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAxICsNCj4gwqAyIGZpbGVzIGNoYW5n
ZWQsIDMzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IDVkZjEyNTNhNmI2Yy4uZGMyNDc3Mjc0M2I4IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtMjc2
LDYgKzI3Niw5IEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0K
PiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCWludCB3YWtldGltZV9pbl9saW5lcywgZmlyc3Rf
c2RwX3Bvc2l0aW9uOw0KPiDCoAlpbnQgY29udGV4dF9sYXRlbmN5LCBndWFyZGJhbmQ7DQo+IMKg
DQo+ICsJaWYgKGludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMubG9iZl9lbmFibGVfZGVidWcpDQoN
CipfZGlzYWJsZV8qIHdvdWxkIGJlIG1vcmUgc2VsZi1leHBsYW5hdG9yeQ0KDQpCUiwNCg0KSm91
bmkgSMO2Z2FuZGVyDQoNCj4gKwkJcmV0dXJuOw0KPiArDQo+IMKgCWlmICghaW50ZWxfZHBfaXNf
ZWRwKGludGVsX2RwKSkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gQEAgLTQzNiw2ICs0MzksMzIg
QEAgc3RhdGljIGludCBpOTE1X2VkcF9sb2JmX2luZm9fc2hvdyhzdHJ1Y3QNCj4gc2VxX2ZpbGUg
Km0sIHZvaWQgKmRhdGEpDQo+IMKgDQo+IMKgREVGSU5FX1NIT1dfQVRUUklCVVRFKGk5MTVfZWRw
X2xvYmZfaW5mbyk7DQo+IMKgDQo+ICtzdGF0aWMgaW50DQo+ICtpOTE1X2VkcF9sb2JmX2RlYnVn
X2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfY29ubmVj
dG9yICpjb25uZWN0b3IgPSBkYXRhOw0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBl
bmNfdG9faW50ZWxfZHAoY29ubmVjdG9yLQ0KPiA+ZW5jb2Rlcik7DQo+ICsNCj4gKwkqdmFsID0g
UkVBRF9PTkNFKGludGVsX2RwLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmxvYmZfZW5hYmxlX2RlYnVn
KTsNCj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50DQo+ICtpOTE1
X2VkcF9sb2JmX2RlYnVnX3NldCh2b2lkICpkYXRhLCB1NjQgdmFsKQ0KPiArew0KPiArCXN0cnVj
dCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGRhdGE7DQo+ICsJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChjb25uZWN0b3ItDQo+ID5lbmNvZGVyKTsNCj4g
Kw0KPiArCWludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMubG9iZl9lbmFibGVfZGVidWcgPSB2YWw7
DQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArREVGSU5FX1NJTVBMRV9BVFRSSUJV
VEUoaTkxNV9lZHBfbG9iZl9kZWJ1Z19mb3BzLA0KPiArCQkJaTkxNV9lZHBfbG9iZl9kZWJ1Z19n
ZXQsDQo+IGk5MTVfZWRwX2xvYmZfZGVidWdfc2V0LA0KPiArCQkJIiVsbHVcbiIpOw0KPiArDQo+
IMKgdm9pZCBpbnRlbF9hbHBtX2xvYmZfZGVidWdmc19hZGQoc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KGNvbm5lY3Rvcik7DQo+IEBAIC00NDUsNiArNDc0LDkgQEAgdm9p
ZCBpbnRlbF9hbHBtX2xvYmZfZGVidWdmc19hZGQoc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKQ0KPiDCoAnCoMKgwqAgY29ubmVjdG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBlICE9
DQo+IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFApDQo+IMKgCQlyZXR1cm47DQo+IMKgDQo+ICsJZGVi
dWdmc19jcmVhdGVfZmlsZSgiaTkxNV9lZHBfbG9iZl9kZWJ1ZyIsIDA2NDQsIHJvb3QsDQo+ICsJ
CQnCoMKgwqAgY29ubmVjdG9yLCAmaTkxNV9lZHBfbG9iZl9kZWJ1Z19mb3BzKTsNCj4gKw0KPiDC
oAlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X2VkcF9sb2JmX2luZm8iLCAwNDQ0LCByb290LA0K
PiDCoAkJCcKgwqDCoCBjb25uZWN0b3IsICZpOTE1X2VkcF9sb2JmX2luZm9fZm9wcyk7DQo+IMKg
fQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiBpbmRleCBiZWY1NGIyMzI3M2YuLjBiMTA5YWFjNTMwNiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgNCj4gQEAgLTE4MTIsNiArMTgxMiw3IEBAIHN0cnVjdCBpbnRlbF9kcCB7DQo+IMKgCQl1OCBh
dXhfbGVzc193YWtlX2xpbmVzOw0KPiDCoAkJdTggc2lsZW5jZV9wZXJpb2Rfc3ltX2Nsb2NrczsN
Cj4gwqAJCXU4IGxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltczsNCj4gKwkJYm9vbCBsb2JmX2Vu
YWJsZV9kZWJ1ZzsNCj4gwqAJfSBhbHBtX3BhcmFtZXRlcnM7DQo+IMKgDQo+IMKgCXU4IGFscG1f
ZHBjZDsNCg0K
