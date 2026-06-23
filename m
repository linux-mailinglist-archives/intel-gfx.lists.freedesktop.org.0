Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P96vCGlrOmqY8gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 13:18:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E526B6A38
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 13:18:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=It7Pfkk6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C975C10EA9A;
	Tue, 23 Jun 2026 11:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B19E10EA9A;
 Tue, 23 Jun 2026 11:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782213477; x=1813749477;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RaRqzFXwGQRpURCNl9uLfm6tWW65sSpbTyXUpXKEJY4=;
 b=It7Pfkk6YBx9xeJ74iL4EoTi5Y8ND2cHQ+JLek7RS2IHgGQffOYvnALb
 4Eiykw05N1F1WMlsAJhfxdYu0Af15ttGiV6nCb4WEec+RSHJY31p33fsa
 o1Qu+67pcWVAy/Q5p1BXRELLcN+pGZNXkMewLbnLun7A3ucf253HNNXEZ
 ldee9XORildHXdLDZYfSXcKKfc004cwEYxv5JCFc4ZO6ggWtjFogqLYUg
 c4z9jK3kYQKlJHQnNnaKJaNFTZZpkQ6ekaPPy1TaIEea2NyQAjkAHbwEI
 GqvMSV4rwsjqP03lCs3THk9JDzLxoEWskv4HOYb/NEzlKxgqbtTWQQ4Vo g==;
X-CSE-ConnectionGUID: QIoqACARTpa8Q3z31bM5bA==
X-CSE-MsgGUID: FE7ExGfsQI2ntYE6qglPGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82722007"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82722007"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 04:17:56 -0700
X-CSE-ConnectionGUID: qRkMKzXcSKOLYkUimKm+qA==
X-CSE-MsgGUID: +8VbRo07Q2uKTRtBgWBPiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="254590428"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 04:17:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 04:17:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 04:17:55 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.33) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 04:17:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OApKFpXBVblW2OU4bF/ez8qm/dfVhX8JgpmzchZXYTzs+RhTSKOp5WhUvf5dM7oWr9XWa78OnHhgbsvYe02NhWHsLE6berLEYREqZ0QZZ6hknF4XCwdWAd8i47BsxK8gIe+moIH/oxapwwQkg8gObY4mv++XSmQFKp+BSwmyU0ANQwUwfI7lCGVjJOkAYsFEA4dgTkVf8SjXzKw1080ky36ybiOjdaDH2OlV8L2bBXi3qOddSJWi9K39FGjadnI1gvTd7wuxFbUUb6WZHZHg2IRS9DXiVIwr92A/wMG48KONGNNQGNBQxBqBAXPscjzsxKg2BTHFjcN+/Zh2WYwUxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RaRqzFXwGQRpURCNl9uLfm6tWW65sSpbTyXUpXKEJY4=;
 b=xSe1J/rZy54X//hMp6rmlq0YjHH8wOb9So9xc341w/htsM2T3emhFHNhy7rZ/Vo3zUq+N+rcvd8pFjfRBAcfhxIbmb4TR9V6t7JfuejXveIW8Z9CLkCjeuRcRVoZzL+lV3NwCgho40QPk6gwelOG/LKR7K64qmN1uUtyMzv/wAmVzCwWgbRNzy0GFp8JMeBVDiYglDCp8w0I5wXQ3375TixIJIJBrwW/FtMbUcKHnzLVtdbdP8H6i1TwIFVmisAwicVz68XEiMLIfkQoSOPNqON4PTpPPewHPuWp3PBFs7pTAixXjEVuD8ndww5NIh9JYYJ4bGmwFTfy+whHr6G9Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH8PR11MB9724.namprd11.prod.outlook.com
 (2603:10b6:510:3a3::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.12; Tue, 23 Jun
 2026 11:17:49 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 11:17:49 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 11/28] drm/i915/dp_link_caps: Move link config tracking
 to link_caps
Thread-Topic: [PATCH v2 11/28] drm/i915/dp_link_caps: Move link config
 tracking to link_caps
Thread-Index: AQHc/doTylINUSE0+0uoWSCiBLqwm7ZMCA7g
Date: Tue, 23 Jun 2026 11:17:49 +0000
Message-ID: <DS4PPF69154114FEE53DEE0CF46260F2DCEEFEE2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-12-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-12-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH8PR11MB9724:EE_
x-ms-office365-filtering-correlation-id: 47181af4-20fa-45d1-d7a1-08ded1190f3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|3023799007|56012099006|11063799006|4143699003|6133799003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: hK1/fVs4Ke31LAPS0uwRgBQLy0A5/fxsiEhNiYNdVoU02fdGNo+iTG3VA/d+9f9rvdHB3W4AbiiAp3T64BxXFIXFcc9znpUf6TaLvXfNJqorPYSG2+LI1WIME9uDpwXvduyVBi25tNWgAF8GIeFhBZmew9a2e48BY+fKxxhjh7baVQg1GjywHI2BY66Mlu1oRykCJjVfHwp3wObCK6ORPMvxQ1Bj34EwZ/Wa7w1Otm6rGyqk26tS+doqgVRq+srL8O/om7/vqilqKmSfp6iMcR6xdnGFKzWC5bJ/5F9u7C1c3Jk/0cxzPMKgT0YC5/FjiQUIeUFS5/vGMm4qDjrNyMeG1h0ZFnNYkIGXjUk9cQh+z1TIWd5LDTULvXYTGh0unaSW0MMVaXUcJdiEDgNrdM4qJuDWwq+Zul0+C5NP0hJHZOJiA21n1maksQ6WOk8XKgqKpa9yDa+FcWHTYMqwkbpm22AaIAojwfyyQHBfRqKw6j1rDvCeHNGNfWMwyzijxycvSR42Fyr7zM27Lia0W6J12SYxtQB8a5sPmvaLA/GP02UMZupUQOGgAdhGs88cUFdjZSUQqoHUseepMp3ey23xTbN5yG4vxS1x/2EfyGpbxjdPFrtw/ZiJERcag5w99jznKd1jA3BMrDhkIrYew966J2qDFByw4Wzl7CRe+bZsW84aBFlwbPWjxFxPkQzpX9aHO2yZmCZ5x4nzt3f71esfoOAYH+g1/1gupsd9n8A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(3023799007)(56012099006)(11063799006)(4143699003)(6133799003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VU12K0l1NGFoSm5DTTBEMGloZTRoT05JVVhhejNpVUVXdGVWSmRoNElEN0I2?=
 =?utf-8?B?QU4zWXk0bVB2N1N0Sjhjbkh3YWR0bnZVem5KNU9SZ0FtSXVZbkJXclJ3Zkph?=
 =?utf-8?B?ZVZQRFRsQXR6a25MaEpFZUR0d2luMmtzWGRkbmYvU2QzVllqTFczMmp5T21P?=
 =?utf-8?B?dXBlUUpQTXB6MzhJejZ6dWFzTkRiY0dvd0FmVG9JSVVwS2ZtcmJhZFlHNWlE?=
 =?utf-8?B?VVBjVmRBVUFETGFSdDFUWHE2Um9PaS9aSnJ1WmJ1S2FjRUtFTnkvdWFKZEdr?=
 =?utf-8?B?YWdnTEJpcEpYQjBJTFJBWC9zSmFLVUpNOFdRK0xpRnNHdnl1c0hXMkFJdzdi?=
 =?utf-8?B?eXVkVUZhVzR6c2FMNy9vdC9wM2ZuOGxsdGxYdXo1ekl5K0lrT2JhWk5jWXVk?=
 =?utf-8?B?M1d2NE13b05iekRaRUF4WUJxdzRmb3A3eHh3UmZ3UGxxYkRuZEhDdEdMR1RX?=
 =?utf-8?B?VGZnUTZPYU9jbVhmeUdMU3F1bkZnM1ZRd1kxZUZ0Q3ZOMVhtUGo5YTVBa0Jl?=
 =?utf-8?B?YjFiTzU2czE4Y0M1aEpwR0QrbXY4cWJpeUUwSlg3SzYrYVpJbFBjZnV5S1d2?=
 =?utf-8?B?L241dGtGUldsWHlEWnBlQVIxVGFuSHA3ay9nMzFsZUVDS2Iyc2Nac0V3RHBj?=
 =?utf-8?B?WWpnWENlY0RtUEc0ZlFUN2ZSSHJGNUZFLzFoNkt2am85dEhGTFRGNnZ3a1Js?=
 =?utf-8?B?SnlDc2d6VHc5ekwwUFRWWVdDYnFaOTgvNWNxZTV0QkJ5V2lhSFoyaG83MUdt?=
 =?utf-8?B?VWIvMXdNNXVYSGtQcXB4UEduZnhiWVBqWVF1alJiQjBUMDdyWWlGNmNScSti?=
 =?utf-8?B?bCtUbWVoK25rN3VxdG8wRHl0V2tJOVNvN0hWdTlYOE56YkdiNExtMWUzbFBX?=
 =?utf-8?B?dGpQNWJsMUg2OVl6ZHJuZXlTQzFNanFNYWN5a1FHUDdFL3ZFVkdiRGYzcDdV?=
 =?utf-8?B?YjBnZU9pR0pqTGdLM3JWZWlvZzVPdG5meTBiMjg2aTUyRjZsUW90ZEQwYUg0?=
 =?utf-8?B?aE56VTQ2YlI3QnBNNnh3ckNHVHZxUlEycHI0eWMrZVRHem1WWFpHMmMzRTc5?=
 =?utf-8?B?SkExQ1FOOGlrUm8xQVlVWWdiLzZvVThGTC9NelhNUjExSnQyT0Nsd2pZemJ1?=
 =?utf-8?B?cHlrQjhPRjdWQnlGZGw4RU5sNitDaGdSYWlISUJVWGVZZEpreHdNcWwrWmdN?=
 =?utf-8?B?YlhxNERYUENtVUtrZEI3Q0ZxcGhkY0hWdmh5V20wdzBGTVpMK3BwdmRVdksz?=
 =?utf-8?B?MUs3S3Y0bHh6ZVJMaHgwNjNCSkdaWkhCVVp0UHRqK2ZCSjNCT3VVSFBJSTlQ?=
 =?utf-8?B?OHh1dnRINktqL1FhbW8yK1NUdStMd2R4cmVFOVNlSk10bWNCWGVnV0p4N245?=
 =?utf-8?B?Tm96dWxVTWtPT1lBc01YNnlGUVBjd1RTVVFnTkwvNXNSS0p1RktwRkZPMU9I?=
 =?utf-8?B?M3lsWm9laXJHeHBvSEszdHFiQUhjOS9WQUYwdTdqQ2oxR3RvSTRla1BTSUR0?=
 =?utf-8?B?VGZTQm5vSmdGZ3VxV3Rqc3duOHdLcHJGQjNjQW1FbTVPa3RNRi9qMFFDdmVw?=
 =?utf-8?B?aVB5RzRiS0I0ejJJeStkVm5Mb3p6cGJaOFcxdEhwZkQwUy9DYUVYQUxtZlVk?=
 =?utf-8?B?dDFwci9UaUZjbW9IM2JlWS9GcFFpUmJwZjlCRnpGRjZXSnVYckRzbXpTa2M4?=
 =?utf-8?B?enM3eXo0MVRqZUlhbjN2Q254ZDQ5MmhMMGVnVkUrRW5zTDZvNnFEZWpZMUJs?=
 =?utf-8?B?VURqekw3eElQSThmNGJtVEp3RWYrK1dKaVFKanF4YnlNSm5rSWpqb1h6WEgx?=
 =?utf-8?B?OTExc2ZEU3Jzc056Q3BTaFkvS05KYVNNT2k1SDREODBWSEUzVU1IWHRDU09U?=
 =?utf-8?B?ditKQ0huVWNzb0FXc3ZkQkc1cGFKb29sT284TUxFZEhFK3A4R2RlRW91QzBU?=
 =?utf-8?B?M0FOdHRxTEU0a3FWeUprSmx0V1p4MkNNdHdVYU40emd4ZlYwOG5UUFE0aXdF?=
 =?utf-8?B?VnRSalk5aWU0aEJXN2oxcGQ3L2Era0F0NmJYK08rcituSDRscDVxR1AvN0Jq?=
 =?utf-8?B?Y09NdFg2enhvb1NwZHJPeUJhUmFhL3FsdWVudjNPUGRBS0I5WnptMUdzZHdS?=
 =?utf-8?B?ZDBMVG10MkRjS2RETzVBWVBoQWpuMDNHS0pFYlQ2NkphakppZGs4dzNXRHlS?=
 =?utf-8?B?Wk1HNzhlODRXZVVHQ3ZyZ0grZFpSbjN6MEhwdTBUWlNIdmRHdVp4cmNjUEF6?=
 =?utf-8?B?TzRNNlMvR3UyN2tHdFM0c1M3V3h1MGRqY1VHYzhta0RuOHdGM2gxVVVvVGxK?=
 =?utf-8?B?dmNST01jWVVrRXhzU1c0c1RIZDRPZzEyMldyNU9iT09lM3htWjRsUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: etuDeWuh1887++xY5tX1vn29t/K2GWrm7Z1RxO5oMgPayH1KSDZaVBDVleKyONaG0pYAGRwLQuoO8mLqkCwRQS+Wgs7OkKKK2TuPG1wxdMkxiKTDEZt6MHHj4OBRqE6ewkL7PC2bgP2153kKnyFUePox7jV0oqkKV4KiuD2NMlE1nXfj8Kuvn2vbqVUoPEHq8qUuMvesBa9i3x1FljssDPbSbaWeQHRvMiDz7sf14Q46viTmEd22OSnPZDfnESApYKzlPWGrlvG2lQHNVPbxjT4cG4JBpug/q4awb31RWMhaXfsuyF7r9htpcPSN+2Hz/93dyfni2iDA2OFzOajNkg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47181af4-20fa-45d1-d7a1-08ded1190f3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 11:17:49.2385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xnCmwe8OftCW/d4iaDE2U8EeDQHJnjJC4qy0SgCdGtS2LXu/A82lyHoq3BgwJ40jv5irKOnAxki6/ks2kyWQfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9724
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 70E526B6A38

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCAxNiBKdW5lIDIwMjYgMjMuMDkNCj4gVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMTEvMjhdIGRybS9pOTE1L2RwX2xpbmtfY2FwczogTW92ZSBsaW5rIGNv
bmZpZyB0cmFja2luZyB0byBsaW5rX2NhcHMNCj4gDQo+IE1vdmUgdHJhY2tpbmcgb2YgdGhlIGxp
bmsgY29uZmlndXJhdGlvbnMgZnJvbSBzdHJ1Y3QgaW50ZWxfZHAgdG8gc3RydWN0DQo+IGludGVs
X2RwX2xpbmtfY2Fwcy4NCj4gDQo+IFByZXZpb3VzIGNoYW5nZXMgbW92ZWQgdGhlIGhlbHBlcnMg
b3BlcmF0aW5nIG9uIGNvbmZpZ3VyYXRpb25zIHRvIHRoZQ0KPiBsaW5rIGNhcHMgbW9kdWxlLCBz
byB0aGUgc3RhdGUgY2FuIG5vdyBiZSBrZXB0IGludGVybmFsIHRvIHRoYXQgbW9kdWxlLg0KPiAN
Cg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4g
U2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8IDEyIC0tLS0t
LS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYyB8IDM2
ICsrKysrKysrKysrKysrLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygr
KSwgMjEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBjODRlZjI5NTI5MzczLi40NDNi
YjNiNWU5ZmEzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTg0MSwxOCArMTg0MSw2IEBAIHN0cnVjdCBp
bnRlbF9kcCB7DQo+ICAJc3RydWN0IHsNCj4gIAkJLyogVE9ETzogbW92ZSB0aGUgcmVzdCBvZiBs
aW5rIHNwZWNpZmljIGZpZWxkcyB0byBoZXJlICovDQo+ICAJCWJvb2wgYWN0aXZlOw0KPiAtCQkv
KiBjb21tb24gcmF0ZSxsYW5lX2NvdW50IGNvbmZpZ3MgaW4gYncgb3JkZXIgKi8NCj4gLQkJaW50
IG51bV9jb25maWdzOw0KPiAtI2RlZmluZSBJTlRFTF9EUF9NQVhfTEFORV9DT1VOVAkJCTQNCj4g
LSNkZWZpbmUgSU5URUxfRFBfTUFYX1NVUFBPUlRFRF9MQU5FX0NPTkZJR1MJKGlsb2cyKElOVEVM
X0RQX01BWF9MQU5FX0NPVU5UKSArIDEpDQo+IC0jZGVmaW5lIElOVEVMX0RQX0xBTkVfQ09VTlRf
RVhQX0JJVFMJCW9yZGVyX2Jhc2VfMihJTlRFTF9EUF9NQVhfU1VQUE9SVEVEX0xBTkVfQ09ORklH
UykNCj4gLSNkZWZpbmUgSU5URUxfRFBfTElOS19SQVRFX0lEWF9CSVRTCQkoQklUU19QRVJfVFlQ
RSh1OCkgLSBJTlRFTF9EUF9MQU5FX0NPVU5UX0VYUF9CSVRTKQ0KPiAtI2RlZmluZSBJTlRFTF9E
UF9NQVhfTElOS19DT05GSUdTCQkoRFBfTUFYX1NVUFBPUlRFRF9SQVRFUyAqIFwNCj4gLQkJCQkJ
CSBJTlRFTF9EUF9NQVhfU1VQUE9SVEVEX0xBTkVfQ09ORklHUykNCj4gLQkJc3RydWN0IGludGVs
X2RwX2xpbmtfY29uZmlnX2VudHJ5IHsNCj4gLQkJCXU4IGxpbmtfcmF0ZV9pZHg6SU5URUxfRFBf
TElOS19SQVRFX0lEWF9CSVRTOw0KPiAtCQkJdTggbGFuZV9jb3VudF9leHA6SU5URUxfRFBfTEFO
RV9DT1VOVF9FWFBfQklUUzsNCj4gLQkJfSBjb25maWdzW0lOVEVMX0RQX01BWF9MSU5LX0NPTkZJ
R1NdOw0KPiAgCQkvKiBNYXggbGFuZSBjb3VudCBmb3IgdGhlIGN1cnJlbnQgbGluayAqLw0KPiAg
CQlpbnQgbWF4X2xhbmVfY291bnQ7DQo+ICAJCS8qIE1heCByYXRlIGZvciB0aGUgY3VycmVudCBs
aW5rICovDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2xpbmtfY2Fwcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX2NhcHMuYw0KPiBpbmRleCA2YTM3YmE4YzM1ZTI3Li4wNWVjOTMzYzc0NDA3IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBz
LmMNCj4gQEAgLTMsMTAgKzMsMTIgQEANCj4gICAqIENvcHlyaWdodCDCqSAyMDI2IEludGVsIENv
cnBvcmF0aW9uDQo+ICAgKi8NCj4gDQo+ICsjaW5jbHVkZSA8bGludXgvYml0b3BzLmg+DQo+ICAj
aW5jbHVkZSA8bGludXgvZGVidWdmcy5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L2xvZzIuaD4NCj4g
ICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvc29ydC5oPg0KPiAr
I2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+DQo+IA0KPiAgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQu
aD4NCj4gDQo+IEBAIC0xOCw2ICsyMCwxOSBAQA0KPiAgc3RydWN0IGludGVsX2RwX2xpbmtfY2Fw
cyB7DQo+ICAJc3RydWN0IGludGVsX2RwICpkcDsNCj4gDQo+ICsJLyogY29tbW9uIHJhdGUsbGFu
ZV9jb3VudCBjb25maWdzIGluIGJ3IG9yZGVyICovDQo+ICsJaW50IG51bV9jb25maWdzOw0KPiAr
I2RlZmluZSBJTlRFTF9EUF9NQVhfTEFORV9DT1VOVAkJCTQNCj4gKyNkZWZpbmUgSU5URUxfRFBf
TUFYX1NVUFBPUlRFRF9MQU5FX0NPTkZJR1MJKGlsb2cyKElOVEVMX0RQX01BWF9MQU5FX0NPVU5U
KSArIDEpDQo+ICsjZGVmaW5lIElOVEVMX0RQX0xBTkVfQ09VTlRfRVhQX0JJVFMJCW9yZGVyX2Jh
c2VfMihJTlRFTF9EUF9NQVhfU1VQUE9SVEVEX0xBTkVfQ09ORklHUykNCj4gKyNkZWZpbmUgSU5U
RUxfRFBfTElOS19SQVRFX0lEWF9CSVRTCQkoQklUU19QRVJfVFlQRSh1OCkgLSBJTlRFTF9EUF9M
QU5FX0NPVU5UX0VYUF9CSVRTKQ0KPiArI2RlZmluZSBJTlRFTF9EUF9NQVhfTElOS19DT05GSUdT
CQkoRFBfTUFYX1NVUFBPUlRFRF9SQVRFUyAqIFwNCj4gKwkJCQkJCSBJTlRFTF9EUF9NQVhfU1VQ
UE9SVEVEX0xBTkVfQ09ORklHUykNCj4gKwlzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWdfZW50
cnkgew0KPiArCQl1OCBsaW5rX3JhdGVfaWR4OklOVEVMX0RQX0xJTktfUkFURV9JRFhfQklUUzsN
Cj4gKwkJdTggbGFuZV9jb3VudF9leHA6SU5URUxfRFBfTEFORV9DT1VOVF9FWFBfQklUUzsNCj4g
Kwl9IGNvbmZpZ3NbSU5URUxfRFBfTUFYX0xJTktfQ09ORklHU107DQo+ICsNCj4gIAkvKg0KPiAg
CSAqIEZvcmNlZCBwYXJhbWV0ZXJzIHJlcXVlc3RlZCB2aWEgZGVidWdmcy4gUmVtYWlucyBzZXQg
YWNyb3NzIHNpbmsNCj4gIAkgKiBkaXNjb25uZWN0cy4NCj4gQEAgLTExOCw2ICsxMzMsNyBAQCBz
dGF0aWMgaW50IGxpbmtfY29uZmlnX2NtcF9ieV9idyhjb25zdCB2b2lkICphLCBjb25zdCB2b2lk
ICpiLCBjb25zdCB2b2lkICpwKQ0KPiANCj4gIHZvaWQgaW50ZWxfZHBfbGlua19jb25maWdfaW5p
dChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0KPiArCXN0cnVjdCBpbnRlbF9kcF9s
aW5rX2NhcHMgKmxpbmtfY2FwcyA9IGludGVsX2RwLT5saW5rLmNhcHM7DQo+ICAJc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gIAlz
dHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWdfZW50cnkgKmxjOw0KPiAgCWludCBudW1fY29tbW9u
X2xhbmVfY29uZmlnczsNCj4gQEAgLTEzMCwxMiArMTQ2LDEyIEBAIHZvaWQgaW50ZWxfZHBfbGlu
a19jb25maWdfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCW51bV9jb21tb25f
bGFuZV9jb25maWdzID0gaWxvZzIoaW50ZWxfZHBfbWF4X2NvbW1vbl9sYW5lX2NvdW50KGludGVs
X2RwKSkgKyAxOw0KPiANCj4gIAlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBpbnRlbF9k
cC0+bnVtX2NvbW1vbl9yYXRlcyAqIG51bV9jb21tb25fbGFuZV9jb25maWdzID4NCj4gLQkJCQkg
ICAgQVJSQVlfU0laRShpbnRlbF9kcC0+bGluay5jb25maWdzKSkpDQo+ICsJCQkJICAgIEFSUkFZ
X1NJWkUobGlua19jYXBzLT5jb25maWdzKSkpDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JaW50ZWxf
ZHAtPmxpbmsubnVtX2NvbmZpZ3MgPSBpbnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlcyAqIG51bV9j
b21tb25fbGFuZV9jb25maWdzOw0KPiArCWxpbmtfY2Fwcy0+bnVtX2NvbmZpZ3MgPSBpbnRlbF9k
cC0+bnVtX2NvbW1vbl9yYXRlcyAqIG51bV9jb21tb25fbGFuZV9jb25maWdzOw0KPiANCj4gLQls
YyA9ICZpbnRlbF9kcC0+bGluay5jb25maWdzWzBdOw0KPiArCWxjID0gJmxpbmtfY2Fwcy0+Y29u
Zmlnc1swXTsNCj4gIAlmb3IgKGkgPSAwOyBpIDwgaW50ZWxfZHAtPm51bV9jb21tb25fcmF0ZXM7
IGkrKykgew0KPiAgCQlmb3IgKGogPSAwOyBqIDwgbnVtX2NvbW1vbl9sYW5lX2NvbmZpZ3M7IGor
Kykgew0KPiAgCQkJbGMtPmxhbmVfY291bnRfZXhwID0gajsNCj4gQEAgLTE0NSwyMSArMTYxLDIy
IEBAIHZvaWQgaW50ZWxfZHBfbGlua19jb25maWdfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQ0KPiAgCQl9DQo+ICAJfQ0KPiANCj4gLQlzb3J0X3IoaW50ZWxfZHAtPmxpbmsuY29uZmln
cywgaW50ZWxfZHAtPmxpbmsubnVtX2NvbmZpZ3MsDQo+IC0JICAgICAgIHNpemVvZihpbnRlbF9k
cC0+bGluay5jb25maWdzWzBdKSwNCj4gKwlzb3J0X3IobGlua19jYXBzLT5jb25maWdzLCBsaW5r
X2NhcHMtPm51bV9jb25maWdzLA0KPiArCSAgICAgICBzaXplb2YobGlua19jYXBzLT5jb25maWdz
WzBdKSwNCj4gIAkgICAgICAgbGlua19jb25maWdfY21wX2J5X2J3LCBOVUxMLA0KPiAgCSAgICAg
ICBpbnRlbF9kcCk7DQo+ICB9DQo+IA0KPiAgdm9pZCBpbnRlbF9kcF9saW5rX2NvbmZpZ19nZXQo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IGlkeCwgaW50ICpsaW5rX3JhdGUsIGludCAq
bGFuZV9jb3VudCkNCj4gIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICpsaW5rX2Nh
cHMgPSBpbnRlbF9kcC0+bGluay5jYXBzOw0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICAJY29uc3Qgc3RydWN0IGludGVs
X2RwX2xpbmtfY29uZmlnX2VudHJ5ICpsYzsNCj4gDQo+IC0JaWYgKGRybV9XQVJOX09OKGRpc3Bs
YXktPmRybSwgaWR4IDwgMCB8fCBpZHggPj0gaW50ZWxfZHAtPmxpbmsubnVtX2NvbmZpZ3MpKQ0K
PiArCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIGlkeCA8IDAgfHwgaWR4ID49IGxpbmtf
Y2Fwcy0+bnVtX2NvbmZpZ3MpKQ0KPiAgCQlpZHggPSAwOw0KPiANCj4gLQlsYyA9ICZpbnRlbF9k
cC0+bGluay5jb25maWdzW2lkeF07DQo+ICsJbGMgPSAmbGlua19jYXBzLT5jb25maWdzW2lkeF07
DQo+IA0KPiAgCSpsaW5rX3JhdGUgPSBpbnRlbF9kcF9saW5rX2NvbmZpZ19yYXRlKGludGVsX2Rw
LCBsYyk7DQo+ICAJKmxhbmVfY291bnQgPSBpbnRlbF9kcF9saW5rX2NvbmZpZ19sYW5lX2NvdW50
KGxjKTsNCj4gQEAgLTE2NywxMyArMTg0LDE0IEBAIHZvaWQgaW50ZWxfZHBfbGlua19jb25maWdf
Z2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGludCBpZHgsIGludCAqbGlua19yYXRlDQo+
IA0KPiAgaW50IGludGVsX2RwX2xpbmtfY29uZmlnX2luZGV4KHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsIGludCBsaW5rX3JhdGUsIGludCBsYW5lX2NvdW50KQ0KPiAgew0KPiArCXN0cnVjdCBp
bnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcyA9IGludGVsX2RwLT5saW5rLmNhcHM7DQo+ICAJ
aW50IGxpbmtfcmF0ZV9pZHggPSBpbnRlbF9kcF9yYXRlX2luZGV4KGludGVsX2RwLT5jb21tb25f
cmF0ZXMsIGludGVsX2RwLT5udW1fY29tbW9uX3JhdGVzLA0KPiAgCQkJCQkJbGlua19yYXRlKTsN
Cj4gIAlpbnQgbGFuZV9jb3VudF9leHAgPSBpbG9nMihsYW5lX2NvdW50KTsNCj4gIAlpbnQgaTsN
Cj4gDQo+IC0JZm9yIChpID0gMDsgaSA8IGludGVsX2RwLT5saW5rLm51bV9jb25maWdzOyBpKysp
IHsNCj4gLQkJY29uc3Qgc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnX2VudHJ5ICpsYyA9ICZp
bnRlbF9kcC0+bGluay5jb25maWdzW2ldOw0KPiArCWZvciAoaSA9IDA7IGkgPCBsaW5rX2NhcHMt
Pm51bV9jb25maWdzOyBpKyspIHsNCj4gKwkJY29uc3Qgc3RydWN0IGludGVsX2RwX2xpbmtfY29u
ZmlnX2VudHJ5ICpsYyA9ICZsaW5rX2NhcHMtPmNvbmZpZ3NbaV07DQo+IA0KPiAgCQlpZiAobGMt
PmxhbmVfY291bnRfZXhwID09IGxhbmVfY291bnRfZXhwICYmDQo+ICAJCSAgICBsYy0+bGlua19y
YXRlX2lkeCA9PSBsaW5rX3JhdGVfaWR4KQ0KPiAtLQ0KPiAyLjQ5LjENCg0K
