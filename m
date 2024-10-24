Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 357D69AE2DC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAEAB10E273;
	Thu, 24 Oct 2024 10:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CiW5Tkwg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444CB10E273
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729766560; x=1761302560;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=hOn1rboFcsBewNIvuEpl6V1rL6ZNoqBCWiOGcMU4H8A=;
 b=CiW5TkwgyCTS6idXG89CJetNs/U5Sgar9mYvWW5MSJEpgBe4jE05vF4R
 do8kgkvAEAeqi2q0bXj4Yhuzyvo0osUke1dnwwelR2eNZm2YYAnd6Ld2/
 f9mSTqio72QAqiJ8WIZ4puhkhAkIjYTQzQuB8wK3IToCjEj8a24YIrTNx
 OJ9+hkaLE/1EvedltP1hFtVVkqMEAgf01MZHZlqD4yMGUc1xmz6Xm7Ppa
 zD2kzV90t6aV/6jPTTDSHQerGMCj7Q8G1sVhaLq+iW2Rf0vtLGuNRW/AQ
 IJ84akNi+MlUgay7sv9S1hA7lntbmaXAnsAlkGW0KuGmyOviGTuLXYpE0 A==;
X-CSE-ConnectionGUID: qe0fgGUuQc6akxIOXZO+Sg==
X-CSE-MsgGUID: K+wHlWHvSrmimqpStNoeaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="46879560"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="46879560"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:42:40 -0700
X-CSE-ConnectionGUID: vgW4J2z9Q6+sLMIbZWizkg==
X-CSE-MsgGUID: 0nyCaiT2S3CKipOhBn1ecg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="103870674"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 03:42:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 03:42:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 03:42:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 03:42:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lspbDNA99kMzcCLMVT8sYZPmhAs7VHfjzFbD3PUwuofbkardAPsiMAOkbWdWTPM86i3nDWoAci52LRd1K64WL2645eIzZtEp0nCOK9ahCd0sOeA4CekwKlEV5XQX5HtB25mqHbHzUlZK/wFp/5xn4L3PQ+lY9C3KDjd/LPPqTSI+UWaII1WAMu08Gg6zT8eXgoxLHM07bO+vz4iMxL7rqXBtk6Yh0E3a0JFHz1I4a1Ya3riCosf1qiouG5rzEVLBeM5fn2mIeWIZwLaR1p0hr31EXAF/jb3evE/AYUC8/HK8/eppclqah31Z3X9S68G+cNUfOFud7mCjVGgb05ruag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hOn1rboFcsBewNIvuEpl6V1rL6ZNoqBCWiOGcMU4H8A=;
 b=uf5BfBFv24hQ02kEfiA58cdMQJt7f9iRKmouLW9tg8dGFaHLoV6ZA8V7aUXT2zAFFH9h+XaMM3GHSjRp4FJpgveVaTqGpe+44VMe7B8j1L9lIVEJYaQwkqIHxYoN+KOR7ZtUuZgohbiO0MAXMf4yWNlFs5aU0ei9o0t+moV18sA1UPwUiJ1bJoL171Ig7wdO6SrRzVpwyH/TAHfMxC/0hW8L3eALCBNy+LfiyfsxHr6CuH5xb91DTqDfi8DIgl6YRKFzuTlv/seZfh/Xv0TiaJLxPogLqrpk4Bxoyy27zEpGuieOFtaZOtFRwCOKypS3/eOJ08SKaLA8zOuQSxOWsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6877.namprd11.prod.outlook.com (2603:10b6:510:22b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 10:42:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 10:42:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/9] drm/i915: Allow async flips with compression on ICL
Thread-Topic: [PATCH 2/9] drm/i915: Allow async flips with compression on ICL
Thread-Index: AQHbGng11ffaWqgulEuZ5AVPNE01TbKVze0A
Date: Thu, 24 Oct 2024 10:42:35 +0000
Message-ID: <5647295918362c391fc5f2606f93c1d1044f2af5.camel@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20241009182207.22900-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6877:EE_
x-ms-office365-filtering-correlation-id: 3f69f752-fac7-4ce4-dfd4-08dcf41892d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?K3pOMUMvZVR1WVNFRTZLd2lLTFVHRVlqL2F0b3ppcXV5NHZMNVNvN0FRZ05C?=
 =?utf-8?B?RHNZaDY1TjdPcnpVbGZNQ2ZYMTFBV0g2aWxzZXB6bzFFTzl3ZzY2NWZlTWVp?=
 =?utf-8?B?MStTUUVpMHFxR1JGSk5lZXB1cFZrdWZEc2lVVCtnd2phU3NHNlA3Z0VIWnRh?=
 =?utf-8?B?Nm5hdkluVFJnNFZYVlNTTlFMYVBHd3RQcUs0QWV4b3VoMFZnNmcxek5LOGdR?=
 =?utf-8?B?c0h1U1RuSHFYbkdackZmVmZZS2dRQ3dLNU50ay9DRk8zQWlucndpR2ZyN2tu?=
 =?utf-8?B?TWJPdThFV3d6U2RPd1h1ODg0b3FTMU9QNTd4YTBMMStjQlpiZWE0c2NUdmo2?=
 =?utf-8?B?ckVsbXR0cVlEODh0RDFyYll2UkxuSUthVU9FbnBFN1phSDlBTVk4ZHI1dDh6?=
 =?utf-8?B?TnR6UWEvaS9zY0kyOXVqWTdnVzJDNTF0T0wvMS9GWWpxc2hYMlRTOTBtbWMv?=
 =?utf-8?B?THp0ZmtJYWxCRExMYzMvWXVqSHRLZmg3NHNJbGhKc2VQYi9RMThBcHRmRmxE?=
 =?utf-8?B?M01GeFVvQVAxd1V4YnQ5MEp3RFZESnVVb1RwRVJNajlDczFQT0V3dzZMOWxN?=
 =?utf-8?B?eGR6RHQrRTZBRVM0ZVNWQ0ZDZVJCZjlMc1RhbEU2UWVkenlsN01wOThTcjRM?=
 =?utf-8?B?dHZQbnZoSmJ4QUhleTkyNHUxRGx5ZmhHK1hOZWpjdEpVTndkUFQybmphSmdM?=
 =?utf-8?B?MGV0a25mVUtkZy9ZQUJzTHZEVGJSMWQ0SjFGQ3dpdUZ3a3c3eFpGNjZDVldT?=
 =?utf-8?B?a2dFMVRyVzFWbVUzaVV5TEo0Z3I0TVg3OTNqalJSUFMwak5GZ0Q4anE5Sks5?=
 =?utf-8?B?a1QvaWx6M01tamlHUjBwd25MUnFZejVFNzhCV1RaTXphdTRvOE5UV00ySy8w?=
 =?utf-8?B?WE90MVZNeURGTnpjR3hVVU0wajFBRmdhQURjNm05RVBFVHdJeEdWMlpuSHNo?=
 =?utf-8?B?MnpHQTF2RlNLbmZVK1M1aE5ybldoZUlNbU5WUjBXQlBjVDlaRjFhdUQ3S2F2?=
 =?utf-8?B?Nk12SFpYc1MvbTlPV1dXNmxwWHJqU3Iybnd3U3Q1OGR1MDBad2I2SWxHZTZ5?=
 =?utf-8?B?ajlEaGZPRzNsb2tBWlZ0R25NOEdtSEVhTmhMZDdpL1k3cTF6aXRVNjIyVElP?=
 =?utf-8?B?Tmh3K0hIRWFMZU11Wk90OVRScFFXbExpWVZ2OTZydTF0Vm1wMlJiUjJOaVg2?=
 =?utf-8?B?Y3RZeWc1STNmQkMvdktncG5CeHZHYWJvRi9TbzdLZ0lPVm02UEdqWWtsTDk3?=
 =?utf-8?B?V04xT0dESDBjb0hIdjFNU2Fra2l2bVljWGdiUHZlanU4dmE4cDlTNXdJLzZh?=
 =?utf-8?B?MzNaZDVrRDhlTTBtMGlaMGJRSStERW94Q1UybXdMRGRUZnd3UEVMOXFSUEV0?=
 =?utf-8?B?UHlLalRuODd0NU5zdUZUL2xNQVJhSGVkWTU0SHYwWUtxaVZ3UndUQ2xLQTZi?=
 =?utf-8?B?enV5b0lMeTQ3R3RXamlHSCsyd1huTGliV29nOTlITEphZjZ5OXhLUS8wY25J?=
 =?utf-8?B?S2dmcjNLeWNiR1E0NFpDUHdtSm9BZTlpZmpJQ2lmV09SQmsxVFBaekkvY1Na?=
 =?utf-8?B?ZDlTS3I4Q2g4QUVXS2ZqaUxab0krUUJkOVRKU0JWUk5lLzhTTjFucmcwY0hv?=
 =?utf-8?B?cERJK1QvVk1VbHkyZkV1YTl5U3VNMlJqaTI1VnNjeDBMKzlab0ZRSlJ6K1g2?=
 =?utf-8?B?aEo0bkgybG05Z1BuTUpuWTVkSU1kVEg3eVFPbTQwNS9YSnFxMjc4NEsxYi81?=
 =?utf-8?B?OVUzaC8xUHpDNjZxVTFFa2RVL2x6alVaUmRwWUtqNFJWM3pJUXhUMW1Zcy9T?=
 =?utf-8?Q?QKpiI5a/EkqCMn0baEkU+CHKW2irZdA25zg+I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THFhdEkvOGJrdklGU3Y5WHZISmxWdDBsRFdEVmthOVU1QUFrc28ydTNZSUZF?=
 =?utf-8?B?THZpS1hWam1VOXo4L0ZYS1hWbHVaOWt5blNwY0NSNElGN2Yybnh3OFRHY3Zw?=
 =?utf-8?B?MVcwRFhNcmhESFdJTnlqWUVwNkNrcUdKWTZRcks5cE96a1pDaHBmN0NtTG1C?=
 =?utf-8?B?QnpocStrRU9mTWhZM2F1dWhqQm1NWHc2MERYc2RKdW1ublZZVkI4OFZKekhT?=
 =?utf-8?B?OHVZaWpPdDZCdEE5K3hkOUZtRFArU1N2cjRnZ1dHaVAvMk4yaEZGbXNZMXBG?=
 =?utf-8?B?cjVqQURCczV4OUNqQTZKSDJxeXlKRUpSb3djekhBV1hYR0RrZGtJMWxxdGJp?=
 =?utf-8?B?d0w3T1B6dmJTTnEwMGROek14WmthamFjUHRnT1F6Ly9SYXJkalRtcmNoa0cx?=
 =?utf-8?B?bWlQZmN4bklVNEszYlQzZVkrTnBFaXVLNUw5OGlIcllCY1BhUUZSM1drUXdj?=
 =?utf-8?B?eGVjcHRWejBkUnAyb3IzUXpDUE1iUjJtQnYrRXBWQ3c0OEszQXlxN2dweEk0?=
 =?utf-8?B?VENQREVOOGVhTXRoaUVEWU00R3RRQmI3L3JraVlOUmVsc0tJNzRLRGFNOXlm?=
 =?utf-8?B?UjVvZFVqMFhTbE5EVHVUOUdaY2Z4V25GZXV0RzBQdzVPci9qMFIvLzFabWxy?=
 =?utf-8?B?MWMvcXFhMWFlMFpKbWk1MW9hVWVOM0c4MTJ0Rk95a0Y0VEhuNHp3VjlMbXRO?=
 =?utf-8?B?UmNBYTFuY0E4SENEcVp6TkszeXdkU2huWE52Rk9uc25PaFhjbkVhQnRYNTBB?=
 =?utf-8?B?TElzRlc5aVdvVlZHT3lqMEJnUCs1a2hFOGVua2RSNHR3TnlLQ3RMa25HTUxT?=
 =?utf-8?B?RVdpZzE2NjlsQ0NObG82cWV2cjkycHFmdXBZdXBMUmd4eDB3UTV6b1VaWTFL?=
 =?utf-8?B?RU5ETjBEYUNnL2JEaWY4MHlKLzRmQ2w3dE5vWktWcHljWS8xNno2bzVkT1FC?=
 =?utf-8?B?Zjc2S2YxQmhTY2JzamlqdEpTVzYvTit6VTNmOTA5R1JidHBjTnUxaUVUb2Na?=
 =?utf-8?B?Y0NMMjEvQTY0QWxRajcxbGNaNDJJYUQzdmRJSEtENkdHUVVrSll4U2Vtemlq?=
 =?utf-8?B?SkhtalZuWHU4b3NaYVJhbElTYnlYYUU4QURhYVVkMzRURzNuTjUrVi90TVR1?=
 =?utf-8?B?dkN3MG5qdmo3ZGZMUjVpeUYxSVZXajRqL0Y2TkFMMVRRTHp2cTJTc2p5a04w?=
 =?utf-8?B?K21aYU5uSngxZEdHT2wrZk95MWQ4RlJGcENxbndqL1pPS1JxSHVqUmJQUDZZ?=
 =?utf-8?B?UlJUWHl1eTJSZWpRQU1SRjhleG5GUzl3Z3hnV3k5RzUyeTFyNmZRMTBOaFNI?=
 =?utf-8?B?TjdpblVRWlFyV0xxR0lIdDMxMG1jZXhncUNDRVN5bUZuOTBjeGFMbE5GVnc4?=
 =?utf-8?B?RlBURGhyNE5pNmxPaUdHUFNFTEgzM2ZrUHJYbXdkZmk1U01PK2dHRFN1elFK?=
 =?utf-8?B?OHJqM1k0a1BmT2FycFVuRmNMQTBneEFrcUg2MUZZMXcrSGNCNGlHZ1NRQ0FY?=
 =?utf-8?B?ejV6YXAvQytka3F2NmdvcWUwWFVpZHJNeGNHSUQwck53VEI4WnZ4TVdrWVpw?=
 =?utf-8?B?QmpUWGhoZzNWdFF5R0VGNnEyOGRxS3hrSWpqeVhlc2NBTVJmZHA0L0RndFR4?=
 =?utf-8?B?MzVFUWF1VjVWcDJGWGJHMDNjZjlmeG5NaTFqQ3RvOXdFTzJoV2JFZVgwV2Yv?=
 =?utf-8?B?SDQ5bkszRFNmTG1vNVhpRTFuU2xqWEtQUnhMeTVNSCtiRUJEaXJtekZlU1dw?=
 =?utf-8?B?QURoN21DT05qQUo3bG5hRlpUTWhKUEhIUy9OLzg4REJoYTEyUC9uTnJkd0Nh?=
 =?utf-8?B?L096aDBnOW41Nkhjc3l5Ti84THYwZk5Uem9uU0c1K2NUUm5rUmFxY2JiaUE5?=
 =?utf-8?B?UEN1bnhqZ0lOZVRVZVNFMkI3U2JZc1NYWFFzWTN2ZjBxcklCUWFkSDkzMURp?=
 =?utf-8?B?TnpwUEptVUUzMzEvU2FKeGhLZFUxcUw1YzVrems4VGNjRWtQU280TG1BWDJo?=
 =?utf-8?B?d3dhTDFJZWhVM3ZLZmFFOUgzVSt3b3p2c1ZZNFQ4SkI2TnFWTTZMYXl5dWUz?=
 =?utf-8?B?Q0I1a1RYZmxzdnlWRXo3c0NyTmVjeUJUbFFhM2xGNUtFMEJkVWV3M3FiSVlr?=
 =?utf-8?B?dU41Q1MrZTRYTUdyOWZsTVpyd1ZPTGlyM0JJYU55YnVXcXFDaythZzBqTjBS?=
 =?utf-8?B?Z0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6FB7BF029303B4B87C47AC0945F0E88@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f69f752-fac7-4ce4-dfd4-08dcf41892d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 10:42:35.9255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: efO6upzhMY3bL7OpUTYvhG8m+UDQPAJwPMTF4RWb4DOUtO5I4KjEZGOMiQEHkedaBXp5nLBQeOogDpfINFvq5y5Axsst5+yzz0+u+0FQBbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6877
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

T24gV2VkLCAyMDI0LTEwLTA5IGF0IDIxOjIyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gQXBwYXJlbnRseSBJQ0wgY2FuIGRvIGFzeW5jIGZsaXBzIHdpdGggQ0NTLiBJbiBmYWN0IGl0
IGFscmVhZHkKPiBzZWVtcyB0byB3b3JrIG9uIEdMSywgYnV0IGFwcGFyZW50bHkgY2FuIGxlYWQg
dG8gdW5kZXJydW5zIHRoZXJlCj4gc28gd2UnbGwgb25seSBlbmFibGUgaXQgZm9yIElDTC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPgoKPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIHwgMjEKPiArKysrKysrKysrKysrKysrKysrLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIw
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMjFkNDEyYjE1OGU4Li43MGE1ZTUz
NTdhMTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+IEBAIC02NTA3LDcgKzY1MDcsMjYgQEAgc3RhdGljIGludCBpbnRlbF9hc3luY19mbGlw
X2NoZWNrX2h3KHN0cnVjdAo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsIHN0cnVjdCBpbgo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm4gLUVJTlZBTDsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgYnJlYWs7Cj4gLQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBj
YXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUzoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOgo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyoKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIERpc3BsYXkgV0EgIzA3MzE6IHNrbAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogV2FEaXNh
YmxlUkNXaXRoQXN5bmNGbGlwOiBza2wKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAqICJXaGVuIHJlbmRlciBkZWNvbXByZXNzaW9uIGlzIGVuYWJsZWQs
Cj4gaGFyZHdhcmUKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAqwqAgaW50ZXJuYWxseSBjb252ZXJ0cyB0aGUgQXN5bmMgZmxpcHMgdG8KPiBTeW5jIGZs
aXBzLiIKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAq
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBEaXNw
bGF5IFdBICMxMTU5OiBnbGsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqICJBc3luYyBmbGlwIHdpdGggcmVuZGVyIGNvbXByZXNzaW9uIG1heQo+IHJl
c3VsdCBpbgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICrCoCBpbnRlcm1pdHRlbnQgdW5kZXJydW4gY29ycnVwdGlvbi4iCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDExKSB7
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICJbUExBTkU6JWQ6JXNdIE1vZGlmaWVyCj4gMHglbGx4IGRvZXMgbm90IHN1cHBvcnQg
YXN5bmMgZmxpcCBvbiBkaXNwbGF5IHZlciAlZFxuIiwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHBsYW5lLT5iYXNlLmJhc2UuaWQsCj4gcGxhbmUtPmJhc2UubmFtZSwKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5ld19wbGFuZV9zdGF0ZS0+aHcuZmItCj4gPm1vZGlmaWVy
LCBESVNQTEFZX1ZFUihpOTE1KSk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ6Cj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEOgo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElM
RUQ6Cgo=
