Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6XeDF26LJmoaYgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:29:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29F26549B7
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:29:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LBGZ9NGq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EAF10F052;
	Mon,  8 Jun 2026 09:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168AF10F051;
 Mon,  8 Jun 2026 09:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780910954; x=1812446954;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NhhQ+MZpwbEp84zlrWDqoeZ05OHNJxkeXCB7R6lxbo0=;
 b=LBGZ9NGqwNwOYU6JOYYX/KBsUAe1jC4fXsvRTUXLvA4rj3tpXriMfNxe
 enBsHTufiKegfOs7WzpuIDtv1wn47U7PM12TUHn1TlE7EUEHt9BSWCIdV
 Bpacxr3qQwDe/ayjpjJvrDwW7dGJYAxj96zoTGtpdbjclJ1mEGiCuLzSg
 mITeH5AW7mx7l0NCMI9dgmtWhnTmRqQ6ViOMZwTqPqw2KDL8T7y2SOoYM
 6wTGdxYklYN3FeMiInX4sJf1Lvu24gqnpV7MMgbeDB2bMk3Vk9YUezoPH
 EieBV2A88GHbPuJ1VwBRH6BP8MAufQ0qVwohfWLfODLMilm2mIhevBOq4 A==;
X-CSE-ConnectionGUID: saGNVb2vSaalW1VCDOMEPw==
X-CSE-MsgGUID: 0r9KQ7zfSd+Qm9VUt6KTnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81386814"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81386814"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:29:14 -0700
X-CSE-ConnectionGUID: USFdBMrqQMa1qaqADEaqLw==
X-CSE-MsgGUID: 1LBz/tKYTcypTpYcf5oWBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="269210214"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:29:13 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:29:12 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 02:29:12 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.38) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:29:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rsI2VwJgFbRt3z0dCvtZQAcHlBxAAao3uI0hFblAAf1p6kr+sa6/kyyDAbSreTv8PRiRJlqxeQ9HfV54Gm8n42DENDzcIOEqW4x+7tiWefNuHGPTZZWbTQ/0UYmJT/hRist4OKojnLO25DMfF3f8hX/XFR57Iml/vZCsfJur/Ly5d9y+CmgYBhAzR0RSgH9bLyDGj43breRZbsiSR0PRYYCfLxibsKFcRAOLzDk8LM0Bkpt616EOE+VZKnf6CWvDGqUjl9KKK5UaNx/4tfFboegrp4Wyl2IMpTjt/dGBJEyyQWT/9/+kZAB7qzDIXLjkzPXgdJ5titftWGWU+dOyHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NhhQ+MZpwbEp84zlrWDqoeZ05OHNJxkeXCB7R6lxbo0=;
 b=jPVxZpoKF4o1BfLfLXorkxJ8LNJ81apn2hj9F5LnRFB3a3qfvo4hzrQql1FzvPWf3fSu6GTgMbAMpbplWJyvZHpJ3bbi30yhoEd0HNfJZ2m09iSR/D6SP3HAp4WJFBbyr8HweKbKdCkv1W34uZjthYjpLWxcqJrdcudZ3P+eKraFtJBVZXYBl1AGg41g7pkKJTawIQF4MyRRPnEnG3lmx93k/0y+B4x5rSx6WQ6FkLGu1goEtWhFnumDVLuYGEWEWU6i5ftZkXR5n8rxA9tu4cArLeu4t7lWdozr9IamO+j7zeDWVnv1ECPJS0PmCitieKbCL+FYETtwqLWNnhALMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA4PR11MB9299.namprd11.prod.outlook.com
 (2603:10b6:208:565::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 09:29:10 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 09:29:10 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 18/22] drm/i915/display: Simplify
 intel_modeset_commit_pipes_for_atomic_state()
Thread-Topic: [PATCH v2 18/22] drm/i915/display: Simplify
 intel_modeset_commit_pipes_for_atomic_state()
Thread-Index: AQHc8av/OG/iFEQmZk2jWbKqbATfArY0bxdQ
Date: Mon, 8 Jun 2026 09:29:10 +0000
Message-ID: <DS4PPF69154114FC15A96A406E3313CEE36EF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-19-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-19-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA4PR11MB9299:EE_
x-ms-office365-filtering-correlation-id: 926df0e4-3020-4436-b158-08dec540658b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099006|11063799006|4143699003|18002099003|22082099003;
x-microsoft-antispam-message-info: EoxFA4D+TRFLPwYyq1Pe2D5Bhtl04DI2x+m5QxQJu1U0uckF+pZOIwxbX9zQSwffeSljmKbk8xZow9f8x3e92NkJaYaAeoBGjfq5pYx7Znrrak4f78btqKHonI3MM75GF0LwMKe1knZIgbsRrpcyfw3TK1HpUwgU7skl7QbwPmvTCRkSvcZv7iO4m05Mabfwdp7p/X2pyedHilrIdzQX2ywhRhfJor6ZyAYA/0weBP6g1ibUyS5wLU5eV//BmtYjW2vkzNTG2rbgbg3YIk/wXOUe7LPV3uJkVtvQ7NsvUvtgMxa3x3Lhriz+nX2B2CqM7JOWSawR5dMBpalf/n9+jtV2CbC8GH6jgwhn2yY3cenux85jS+pvZUNNHQ8H2tIolEAvG5Wb0jXzxeBud85NK+kvin/ibbTybhb7w2Q2Gc84wjHJUwc95GI0wCBpWwtfu8rToiPBLEWjFSP0pAxJVQAZgmg8yJi3/qHi/DMqNc8aEQfwmUiIkyxtgWsm4tdRIafja4G/3psLXRZKKlJpFrxB6kvQMix3a8vQbWs3UuUPLZGrLHMOwIrMVoz+mIQ1oKl7Ckv0Au5j4JVyudgH79iozopSf4t5d5524lA8+WIqlKhr5rIYuCAM/3xkH6k+8yJGNMJ4J3unMXTFCQPew1SVJ2XbhBrxxqINvtjcsrNqTXzXwGrlaPhiHYdls/TIHhHXDK78SWRPWjs1FX2ccV6zvzfYS613pKlx4TwrUN4erP2dKX3U6Y1K0bQPgZqk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NzZpQW1sYTRjYUh1c2x3TlJKMG5UVElaKy9qaVRRa1pvRnNaZ1R6ME92Mkpj?=
 =?utf-8?B?c3h1WncvSTh3VFU5NVlSU3FJaXJWL2NFVzB4c2lma2Nkdm5MdnQyK0pXM0xY?=
 =?utf-8?B?ZHI2eVUxaDdxREhTbTY1YkladnJXcjZNMDkxcWdLWk1KdkkzV3hwbFlCZm5K?=
 =?utf-8?B?QkJhQUZ0L2l0M2srZlRZZFQxbm1RNkdSbHRXUEIzcWlOTnVMWE1ydTJHTkE2?=
 =?utf-8?B?T2JoWlNtZTlScW5qaFpxTGs0Y1dnbWFDZVZGaFgyL2tMTi9CWDZUUjNLaXhq?=
 =?utf-8?B?OHNGaFdSd1o1SHJCejQwVUhDYUJUS2RZSVdMTkYrRkt5TjhST0tUaXd1b3FP?=
 =?utf-8?B?VWIzaWFxYnlkRkEwbldYdFZXZVJtSHEvdnUxUWM3anhQRHZVQTNNdC92d0g5?=
 =?utf-8?B?K0w1VVFzeEEyelBTSGFoNmtxakRZTEJUdWsyRU5Pc0tNeHB4NUNtOWF4M0xN?=
 =?utf-8?B?eU1hQkh5cnZ4a2F1Z0xmMWtqOGFNam8wVTJIcmh0RTgzMEwvbUQvY0JOTUpF?=
 =?utf-8?B?cUIzYnRKS2ZpalhvTmp4QWU0M0tpT3BHRGZ0bGtJRU40ejJpZUZteG1LQTcz?=
 =?utf-8?B?WUd6OGpCOXNMN0tsQlRob1lXR0gzTU5lNUZURFBMZC90RDl6RkF6QUJuNVJp?=
 =?utf-8?B?L25SUk5Fa2lVNWtIakJXclM5YThjVHdlYzV5V2EwVmFVVytES25zeTFKZVJz?=
 =?utf-8?B?WGxhcGdwZzJwLzZseUJ5QXBEU3hkcngwQnlpRmd0ejhEOXpNWHR5cTZ2YUM1?=
 =?utf-8?B?SUhMNnI3RTBibDh4NUNldU8wQ211MjBIYzBVZis0U0F6aThneSsydlh1dUo1?=
 =?utf-8?B?YXdHdllKVlh6R2wwbDYraC80Nyt1aEx5U0JueXhUTk5UNWxVZUFhUTUwMW1F?=
 =?utf-8?B?eUM5Tkg0bTBsSEZDUFNUMzBrdVpxeDhWTkxjRkp1bjNSbm1FVjYvRWlkUklN?=
 =?utf-8?B?Z0dPVGd5cDFhT0lubmRGUklvckZsdFZIbnFHanVpYXdnaTcwNVhmdWV3VjhX?=
 =?utf-8?B?WnJCZTJ5N1podUpZTTJzTnBFS1FMc2pQakRHS1ozWll1R2FrTTBmNmRycW95?=
 =?utf-8?B?ZXYyazNDOFZEM29zbnUrdEh3Q0xxT0NicFVOOFo0V1pOMmNlbGtoQ3A0M0R3?=
 =?utf-8?B?NEJuZ1dLMDh3QmVGVVc1LzNzaC9TSkNoaGlDWExXOTQ3emhOTzVSN3cvYzVj?=
 =?utf-8?B?MWNtN09GQzRTS2pUcGlZbEQ4M2dBd1hPSTlCUkM3V1hON05YVE5CNURFTG42?=
 =?utf-8?B?V0Rlb1dJNDRvS1orTWpUVmF4UWpFcndFNEl5MkZYNko2WHFWanRGaTZjb3F5?=
 =?utf-8?B?OFhWM2Iva29pMVRJcmtwdGYzU3ViaUViSVBQQVR2MlZMR0RTcWJjV2Fuenpo?=
 =?utf-8?B?U2t1STAxVGZrbVV5YjFTSW4wR3hFWWMzSERhK2JSS3N3S2QwMlRJdDhLeE8v?=
 =?utf-8?B?SmVaaFNIUHc3SFl6MWROblN4RjJPQlI5dnZMRmFOenIrVm5udWFXWVpSdkJZ?=
 =?utf-8?B?blNqVk9BUEN0OEJJQ2ltSUowSElzcTJQQkluaklEeWtmWDU2b3h0M3pNaFNh?=
 =?utf-8?B?c0g4aGlCeUhzYlFvZUR2YkNwSlNUWi9EcEZqeUE0clNRSUlhRUpSTFdkR042?=
 =?utf-8?B?K3F0YUw5SE05ZlNtT2o2WXR1VUgwM2tMUTJEeCt2VllxbUh1dEltWGJ3SWU2?=
 =?utf-8?B?bUdhRUJ6SlBpVWlsaTZ1SXUvM0szYmpLVVIvMGhheHBLMEJaZ2FDRWlJQ3By?=
 =?utf-8?B?RUNRN1NvOFFNbysvNUJPVDlieHhvbjdEVmx5c3BDWGFWSWJCenJpekRsMWJX?=
 =?utf-8?B?UTR3UHZnaEtUcWZmQ21hUFlvN0R1RkozLzFXVm5XL1Eyb0lJdjVVRnovbTZ3?=
 =?utf-8?B?K1VyTDJheUtYeWVxVHppWU56MDRkRnc1RUx2TENRNTV0T0pZWkpXYlJGakhv?=
 =?utf-8?B?K1FaTjVaeUFjVWFQT2pNZ1VSY1NvZU52KzNCNDVsK1RqcGl0TzdidzEwTm5K?=
 =?utf-8?B?UkdUanhjekk1NlBLQkkyV0JNNkgrK0VIRHNOcEttY1pqdXNyVk92aVM1RmFr?=
 =?utf-8?B?b2R3ZzB3OGp3b1hQVDY5a0I2YWFqQzRDbmRzdXlFR1N3T25ZaWVxNG54WG80?=
 =?utf-8?B?V3dSY1pHbjNLVFB6MzRaSWtYSkVSc3ZON1p3dTRHdE1GaC94aUtkSTh5SXhJ?=
 =?utf-8?B?ZWRYSXhvQy9jNUlzMEFobERSbGRJOWFYWUxOSWxCVWJmNTBsb1UyUG84b2hH?=
 =?utf-8?B?YkV2TGJFR0Fac09vcGhuZTFSeFVLanR0QksrbjdhSEpxQmx2VFRRekJXSTIx?=
 =?utf-8?Q?wMdeja6KWe8lnFmgvj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qbcutIzcV95nG9Gw+7Y065c3ldehC4oTufEzKV/zbY1EXRQfm2SbN7zWL6IFqwscsJa3vyU4KgYNF9Cnp8T/1aBXdY8J1yU+RPSUDbsVh2unq9t9P5sHNeVKa/7kfZBKMJqSXDz92vizk8qu6/K1gaL8+ERMqPzN6uRUbFn2HzQMbw360C0ISy2FUT3wmoXJlWPgWsdwYksG1/70CEwjutwZZZ7T/DlIzeWkWSn8FZ+BQHyQUegObmqZU5mAErwxgIutZ5A1TEJ6SmvoU8DJQ0FZcewQ78o2Mn8prFM+Dchip3/57ITkXJY+ZMI1DXw5RCsOexjY7UUOt5XWnpn0vg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 926df0e4-3020-4436-b158-08dec540658b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 09:29:10.4882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7tH7PHbkiQnCOafsfYdjTyuqIDAJ4oAXynueswFG/GyfG1ttph+sWFjia68aUP5iKSN8AuN/SMbgl0/5w84d0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9299
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,intel.com:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
X-Rspamd-Queue-Id: B29F26549B7

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDE4LzIyXSBkcm0vaTkxNS9kaXNwbGF5OiBTaW1wbGlmeSBpbnRlbF9tb2Rl
c2V0X2NvbW1pdF9waXBlc19mb3JfYXRvbWljX3N0YXRlKCkNCj4gDQo+IFNpbXBsaWZ5IGFjY2Vz
c2luZyB0aGUgRFJNIGF0b21pYyBzdGF0ZSB2aWEgdGhlIGludGVsIGF0b21pYyBzdGF0ZQ0KPiBp
biBpbnRlbF9tb2Rlc2V0X2NvbW1pdF9waXBlc19mb3JfYXRvbWljX3N0YXRlKCksIHdoaWNoIGFs
c28gYWxsb3dzDQo+IGRyb3BwaW5nIHRoZSBjYWNoZWQgRFJNIHN0YXRlIHBvaW50ZXIuIEFsc28g
c3RyZWFtbGluZSB0aGUgc3VjY2Vzcy9lcnJvcg0KPiByZXR1cm4gZmxvd3MuDQo+IA0KPiB2Mjog
UmViYXNlIG9uIHVwc3RyZWFtIGRybV9hdG9taWNfc3RhdGUgLT4gZHJtX2F0b21pY19jb21taXQg
cmVuYW1lLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgMjIgKysrKysrKy0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggYjE1YzI4Njc1ZDI4OC4uYmRmMDJiNjdjMWQ4
MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gQEAgLTU2NTgsMzMgKzU2NTgsMjcgQEAgaW50IGludGVsX21vZGVzZXRfYWxsX3BpcGVz
X2xhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJcmV0dXJuIDA7DQo+
ICB9DQo+IA0KPiAtaW50IGludGVsX21vZGVzZXRfY29tbWl0X3BpcGVzX2Zvcl9hdG9taWNfc3Rh
dGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqaW50ZWxfc3RhdGUsDQo+ICtpbnQgaW50ZWxf
bW9kZXNldF9jb21taXRfcGlwZXNfZm9yX2F0b21pY19zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gIAkJCQkJCXU4IHBpcGVfbWFzaywNCj4gIAkJCQkJCXN0cnVjdCBk
cm1fbW9kZXNldF9hY3F1aXJlX2N0eCAqY3R4KQ0KPiAgew0KPiAtCXN0cnVjdCBkcm1fYXRvbWlj
X2NvbW1pdCAqc3RhdGUgPSAmaW50ZWxfc3RhdGUtPmJhc2U7DQo+IC0Jc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX3N0YXRlKTsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiAg
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiAtCWludCByZXQ7DQo+IA0KPiAtCXN0YXRlLT5h
Y3F1aXJlX2N0eCA9IGN0eDsNCj4gLQl0b19pbnRlbF9hdG9taWNfc3RhdGUoc3RhdGUpLT5pbnRl
cm5hbCA9IHRydWU7DQo+ICsJc3RhdGUtPmJhc2UuYWNxdWlyZV9jdHggPSBjdHg7DQo+ICsJc3Rh
dGUtPmludGVybmFsID0gdHJ1ZTsNCj4gDQo+ICAJZm9yX2VhY2hfaW50ZWxfY3J0Y19pbl9waXBl
X21hc2soZGlzcGxheSwgY3J0YywgcGlwZV9tYXNrKSB7DQo+ICAJCXN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlID0NCj4gLQkJCWludGVsX2F0b21pY19nZXRfY3J0Y19zdGF0ZShz
dGF0ZSwgY3J0Yyk7DQo+ICsJCQlpbnRlbF9hdG9taWNfZ2V0X2NydGNfc3RhdGUoJnN0YXRlLT5i
YXNlLCBjcnRjKTsNCj4gDQo+IC0JCWlmIChJU19FUlIoY3J0Y19zdGF0ZSkpIHsNCj4gLQkJCXJl
dCA9IFBUUl9FUlIoY3J0Y19zdGF0ZSk7DQo+IC0JCQlnb3RvIG91dDsNCj4gLQkJfQ0KPiArCQlp
ZiAoSVNfRVJSKGNydGNfc3RhdGUpKQ0KPiArCQkJcmV0dXJuIFBUUl9FUlIoY3J0Y19zdGF0ZSk7
DQo+IA0KPiAgCQljcnRjX3N0YXRlLT51YXBpLmNvbm5lY3RvcnNfY2hhbmdlZCA9IHRydWU7DQo+
ICAJfQ0KPiANCj4gLQlyZXQgPSBkcm1fYXRvbWljX2NvbW1pdChzdGF0ZSk7DQo+IC1vdXQ6DQo+
IC0JcmV0dXJuIHJldDsNCj4gKwlyZXR1cm4gZHJtX2F0b21pY19jb21taXQoJnN0YXRlLT5iYXNl
KTsNCj4gIH0NCj4gDQo+ICBpbnQgaW50ZWxfbW9kZXNldF9jb21taXRfcGlwZXMoc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IC0tDQo+IDIuNDkuMQ0KDQo=
