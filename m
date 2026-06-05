Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VypGLpTEImrBdQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:44:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 284AD648467
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:44:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fLJEk1ft;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29A3112B02;
	Fri,  5 Jun 2026 12:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8DC112B00;
 Fri,  5 Jun 2026 12:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780663441; x=1812199441;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+xslm5gr2CUAKRes9N4RGU7T88hwSOt1uLGDkTVDSVo=;
 b=fLJEk1ftiw955XNoQtfLOYOelc8OyioqbyT6tTJoprty7H+7ROgvROUu
 eHQP5T/VdwGSqTi5Cb+yL3ToUb2a+3OLkn8tXOMkfGxhu4SkhGvq3A4tP
 jb6UYH9oEIhIswgPO3FjAcLU4T3s/Iho4Z3jwiah2p1Iwc9HEMtgOZ/jS
 h5ToKoA4i5LDpIX7wBgRCBvofJBYb359EKPLcXMLvyIVPkP9ogTnSFeQ/
 yEEqh3E2Tyis1HCI0KEOrnXKGyJdZhZUMcUTJVP5RXIPQKuPNFj6Ii6Y9
 GouQ5nol3D4Tgu0CGHAmy6QO/4TLwW7i6vXmvB+hKVqPvV4Hg3ugnWx5P A==;
X-CSE-ConnectionGUID: Rx6cPmwxQDiYZdrtZO9IGA==
X-CSE-MsgGUID: tjR7TpvKTnOCi+dahOQBPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="84075952"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="84075952"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 05:44:01 -0700
X-CSE-ConnectionGUID: UZ0GpRKDTlKMEFW3hRlyKA==
X-CSE-MsgGUID: YzNT6howRyuL17ZktuRgBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="243742536"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 05:44:01 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 05:44:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 05:44:00 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.17) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 05:43:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BzNoEEzMLQu3BpeOj4gVpsfbDrqCyIPSVVvch1uTpumgS4e5DteZmUoqNg2iOpEn9ALPe6RPH8qaTT1P8Gm/ZP2BkjuGy/TufIVXgsfRghZZ/548lslwcvHez2TZUW1lybnGjYgeuSevWwS5NX9W9LNFN43ZZ7j1DvD+uW1BnpfPKKG5NFlY+KZjo2RE3PUznp97Pc7PObeuD2IBXtrym670J6bFAOHBGE0k0KL5GAo/IwWu9cZL/o3L9YHcuGXX86soUEpIHO/Ne02/i/3RLWyIeCW8ZviS7DO3lJl8otRCqrQGs/LCcUvfZpfqghp1/VjU2pAir1KG6BtOmjMpfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+xslm5gr2CUAKRes9N4RGU7T88hwSOt1uLGDkTVDSVo=;
 b=ibqbSyc1Q1LHEFTCmp8SNE242IFNy/gwy/2vNd4HKBMmt+2Xy5AlR6bCBtRzpoNgODflT+DLqLvK/qShiWunWaOAw19pKckCbuduOCfWGkaGONg9Fl2g4Rra31rvrU88aibqiVprZ+tGl86mMBQsvWLOF8Y+6LLPYEoI/Ym0pkaTElcxec1/aBh/G0z02zUXxoVPM1xAlSLTkpqioTjOlI9XjeUn8mJKZkWnVSYt+QLLv9rCdnPY1ogRMhljFFFB2vzTcf/MNzmXJm95XK6CbJNGvtWXJ/+XQ/Ee+1YMcq9t6pUUCXlzGerN+3KIqYK7nBhjmkd7uu7dgAMHm5SLCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH7PR11MB6930.namprd11.prod.outlook.com
 (2603:10b6:510:205::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 12:43:54 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 12:43:54 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 06/22] drm/i915/dp_link_training: Add helpers to access
 force retrain state
Thread-Topic: [PATCH v2 06/22] drm/i915/dp_link_training: Add helpers to
 access force retrain state
Thread-Index: AQHc8aqU08EX5PuzFkueuFGKQMjKnbYv7mxw
Date: Fri, 5 Jun 2026 12:43:54 +0000
Message-ID: <DS4PPF69154114F2E420263BB02F8CDB1A3EF112@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-7-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH7PR11MB6930:EE_
x-ms-office365-filtering-correlation-id: c1e3f872-060d-47a1-c1a0-08dec3001a80
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|18002099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: 127RZCqsa+biQZ03dZbAi7W9B37Qb41QUQAG4AkopT4GuwKVV1N8wR/ED1mFkYPbqL0qK44rydzQD4Am6WpsWf6Hb45BHASzCjgIJWqB0quVF72CjTAhLAO/C677NmtiWDtW4ecq5X/RkLzXtQeqCarmok9iutVSKH76doIYJC63iiXX34K5iINrt9sg/emSPgLaIa+2UWqCAbhCUS+ZObR9lZUY/qAgNemXghIQWiyTdd9I77R629khDBMyFeBpWd9WfSoMwrEWLMjAsEUeUxM36geRnyX9ND8WguUOuT4ejAJupX8YWcxN035c7C4ybp83kp2PhDpihOYMbvif8tc1j/BSV5ZLEy98iiAF0gcBRVOgSnfFd9JGJO+V/tWdaJVPNXdgpY71h8n+Xh+3HN7BmcUWUDlQs2hdhGHxZKF5gXiiMpSBZE7DUcgcLog6M4bUzaVStgJn0PC/NO+36gUwZeU71bnLjMwCzobiB0lMy7Xgtb7/i9tJ1jK1gYRZIi5BdPfwXwlhIAWa16F3HIxDyM1E8TYB7SNEQOt5W3pWkGACRAAPUSB8tcpj9hx32/2OAls0g7t0W1S2lIZQJCl1t5zkCTNU7YIWvCJ7wMw5AoggYlXKXQjJmjaPSAlz5TR6XHu4TE0vn70VERnSoGgVhpK/EorKVv0awYjcSexjtm9idudV5gVaX9Sq4qiywbPaiXvZMwTvMirl6oe4yDH3I12vt0KyFYgv8tgvEq6n+OeCbGs+w9vYqOX8pw7f
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1dXTTNXbDh1ekMyWVRzdGM5ZVVSK2RQbTJoK0RHWVBqWXJTY3BROFA5WnZK?=
 =?utf-8?B?NWt0ZWw4NkNqRjN4OTVjckl5bWR3Yjl0NFdISytYNGF0eDJhbk1xTFF4aDM3?=
 =?utf-8?B?L01sM0hVMnVPUXlsQ3B4TzJKVW9OaHdQdEI4QXF4YkxVK291SzZTakdyeCtI?=
 =?utf-8?B?RjBURE1GK3JvbGxwTmtiZkQ2eHNFK1RBdDlIZHN4RG1zWUxhV3k2RDdOQjdq?=
 =?utf-8?B?RUFaOTJTdmRGdThtYmxwSEcrR0p0TlIvamdjZ0N0Q1FBWFg4LzRmK05SRW9F?=
 =?utf-8?B?RGliM1pTeEtQUTBPeUMwaGROSlhoWE5GdllQYm1KVVg0djdtME12ZTF3Sk05?=
 =?utf-8?B?UnBacFNyRksrUk1uOEdKWlBVdk0rbjZOdXFOTll4eXRIL2hCUzEvcnR4NDA0?=
 =?utf-8?B?end0aGM3QXJRWThRbzVpa2FDTVRhcUVVbGdjQnlHaTY1WDFhY1kxOHRSVVA3?=
 =?utf-8?B?SU9ZYnFKWDhVTkphZ0V1aVJ0RDBueUlBbXZsMDlkNmdlcXRnRG5yeStkV0VO?=
 =?utf-8?B?WHFIZUpCSmJmUi8vblJ5elQvUzF6dzF5Qy93TmRNK3UxcytSeVIrNW9Va2l2?=
 =?utf-8?B?TlMyZjNIRjRJeTFaY202MmlEREpNSDY5YTMzK3ZnUVNoRVBoZzFLejdTVmdT?=
 =?utf-8?B?SGQ5OWJRd0ZvVkQvMFBLY1VZTEZ3U3ltT2RmbUV5UVJYZzhpK1E3K2hwM3pi?=
 =?utf-8?B?UXlDNEVENlZZZmsxalFnMWF3SFF6d1RieXpVYTZiMlJsUEZ4RXNtcHRpRHRn?=
 =?utf-8?B?eUx0MGV4aFNSVGdITHA5cjJLUWtudzB2aUJLOXcvclJYQkFURG56QUVHNUNR?=
 =?utf-8?B?clR3ZWZpbzhjSTltZXRtejhRc1NIYWJpOGgrb3doMEFzemxacnoxZW5ETGQ3?=
 =?utf-8?B?RkpCMU1JcHNEZTBQR3VYaXZVVkNrOXNJNkRkZXp6SUZPT29JZmtiOXNUVUQ2?=
 =?utf-8?B?NUlRdW1vY1ZVd2xDaE1ycUlYM2NIdDlFQzIyR0xva3NIOXJOR3NIZ1ZsaXB0?=
 =?utf-8?B?SHBJb2RzK2J1ZU5RcnM5am1FalQ2dXhuTm14cGtueC9rUldUdFNJZjlSZHpX?=
 =?utf-8?B?QkhJRnlFK0FBUUR1WExJajQ4ZEpLd3R5ZUFTTTEwZ1lZZUhNQkZwWllINzN4?=
 =?utf-8?B?eGk1QkRTcTczZUwyWG16eHo1TS85L1BWclpCcHVtNTFJRDZ5REJISkFoM0g3?=
 =?utf-8?B?Z3ArakFCOHFUN2JMdEJVbDVIMFhtVU5VYUVQZGcrd2Q1M3p1c0NxUmlTZVdl?=
 =?utf-8?B?SkZCVjhYTFBldFNHdlJBbVAxQlJEUGl4VURyZzFFb2UvbmZSbWRRRDNQcUhh?=
 =?utf-8?B?bEJSOGRKOTcvbHBMR1VtZGNhYnBocXMya0ZBWTF2TFFCb2NmQmJoUEtaUVI0?=
 =?utf-8?B?dDkyMHVjbklLL1BlTzU1emlLN0wzMlJOZlJGZmlreVlDTU42TGNDUWxXbWo5?=
 =?utf-8?B?eHVrQmkvL0g5VlkvUkltV0d6R0VUZ0xnN25PV01CbW9paUp3bXEvdXFZd0Z5?=
 =?utf-8?B?aTZMQUxvMjBkNUJybDc0MTZncHJqS1ZMa1ZHZXRKVXM4ZExUMTBFSVRsa3hS?=
 =?utf-8?B?eHJxU1BEK1o3Q20wRWFwT3pvYVhsa0pMcXBseWRieFZieTFtcStoY0FDSnla?=
 =?utf-8?B?bk83bm5QSVVKcDJVZi8zeWVlMklOQ3RiS3hjc2w5TXBkaXBTcmFjTWZyWjVm?=
 =?utf-8?B?SDJDZkI0OXhPeXdHR3h3d3REc0daZE5VcmQrZXcrV3RqVTRvTXY4L05BYzdE?=
 =?utf-8?B?b28zNjZJMVVuVDdtNlFKbmk1R01VbTdUd2hTR0svS1VLcG04V3lZQmZRVjZV?=
 =?utf-8?B?ZjFtK2tKeVRsVUo3dEliQXhyN0RhTFllamhBayt4MVVQeUgyK3FOMm9mcUZB?=
 =?utf-8?B?NHlLTlZsU3dvRkdPNW1zVGxldzZrQ1RsYmtsc3pla0tqSVdhdmJHc2dHNDMr?=
 =?utf-8?B?bE15bGt1eko3R0tUVWIxY3dOYXk3cHNITG1KbEFFc0F4a09pVmd5T1VWbmp1?=
 =?utf-8?B?eHNTMkVxRkVtR3hJZGg2Q3ZOOWhIbWlmSG0zcnpUeWltQmNqR0hWQmRad1hE?=
 =?utf-8?B?bXR6cUJTOWM2WllNQWhvVVppRWlGZ1liS3lXd2tDQ1ZoUmVpL3B6bU1iZkp3?=
 =?utf-8?B?VjhuRjdUR3hmZThoWVd6SE9TQnZnbjhqVkFvNHJ1NTJhRk1WNVJjK1FsQ1du?=
 =?utf-8?B?WkFWbk84UHlJWlhXNmVmR0VJM2QyU3ZpK3gvTVdrWjRkdHBrY1ZlKzBxWno1?=
 =?utf-8?B?THVzTHNaVk5TWEs2Rzd4YWZ4eWlPQzRCUFhPb2RqYWN5d1RHUGhrSkVYT2tL?=
 =?utf-8?Q?u2VVXwE6yDcW8/m2jd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: JH+8prixdLH67HjHrV3Nf54Y7QmzjXgDhxbHz5m4s90MYRx8CAwT0GytBTXUFAOPgiYV49Kitf2N9qIOgZtT9aJZOzHnG14MGYiW/ELHOZHxWAPg2+cXrCX4Hu3zERHfpzFpXIKvui7gQHRJebEiKJyE0/Za4Rk30cmNbUQMXdwD6Zlv9N7kisiuxc/Y/ArnfAN6X752UgRpvdtaoEjPjceQsNO1hlAwRLh8DfNYkHhTe45iDvkMVtH6ag1p2nmOD9l0bY8apO0FZZwxc+YlTEvVHO/+vsvMA8E9sUc0eAC5KrvBY+ULg6Yo7hdHNXbH4am6lBRe6dfEzrFaKTC/9A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1e3f872-060d-47a1-c1a0-08dec3001a80
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 12:43:54.4104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vng9UlO6Vtv4HSPrhWCyp/e35+pRaRDx2RMQoAMCh6p2eyFjf2NaO7pEtY6gF+QTxYUiFUnwnvlRTZyd7DongA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6930
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 284AD648467

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogTW9uZGF5LCAxIEp1bmUgMjAyNiAxMi4zOA0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6
IFtQQVRDSCB2MiAwNi8yMl0gZHJtL2k5MTUvZHBfbGlua190cmFpbmluZzogQWRkIGhlbHBlcnMg
dG8gYWNjZXNzIGZvcmNlIHJldHJhaW4gc3RhdGUNCj4gDQo+IEFkZCBoZWxwZXJzIHRvIGdldCBh
bmQgc2V0IHRoZSBmb3JjZSByZXRyYWluIHN0YXRlIGluIHByZXBhcmF0aW9uIGZvcg0KPiBtb3Zp
bmcgdGhlIHN0YXRlIGZyb20gdGhlIERQIHN0cnVjdCB0byB0aGUgbGluayB0cmFpbmluZyBzdGF0
ZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
Pg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAg
MiArLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwg
MjkgKysrKysrKysrKysrKysrLS0tLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bGlua190cmFpbmluZy5oIHwgIDIgKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gaW5kZXggOTgwNjU5ZjVhY2U2ZS4uYjZiNTU4NmVhMDg0NSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtNTY4Miw3ICs1Njgy
LDcgQEAgc3RhdGljIGJvb2wNCj4gIGludGVsX2RwX2NoZWNrX21zdF9zdGF0dXMoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiAtCWJvb2wgZm9yY2VfcmV0cmFpbiA9
IGludGVsX2RwLT5saW5rLmZvcmNlX3JldHJhaW47DQo+ICsJYm9vbCBmb3JjZV9yZXRyYWluID0g
aW50ZWxfZHBfbGlua190cmFpbmluZ19nZXRfZm9yY2VfcmV0cmFpbihpbnRlbF9kcC0+bGluay50
cmFpbmluZyk7DQo+ICAJYm9vbCByZXByb2JlX25lZWRlZCA9IGZhbHNlOw0KPiANCj4gIAlmb3Ig
KDs7KSB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IDRlY2MwMGI3YzlmZjUuLjgzMWRlYzg2ZmViZDEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC0xOTQ0LDkgKzE5NDQsMjUgQEAgaW50ZWxfZHBfcmVh
ZF9saW5rX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1OCBsaW5rX3N0YXR1c1tE
UF9MSU5LX1NUQVQNCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gDQo+ICtib29sIGludGVsX2RwX2xp
bmtfdHJhaW5pbmdfZ2V0X2ZvcmNlX3JldHJhaW4oc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5p
bmcgKmxpbmtfdHJhaW5pbmcpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9
IGxpbmtfdHJhaW5pbmctPmRwOw0KPiArDQo+ICsJcmV0dXJuIGludGVsX2RwLT5saW5rLmZvcmNl
X3JldHJhaW47DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIGludGVsX2RwX2xpbmtfdHJhaW5p
bmdfc2V0X2ZvcmNlX3JldHJhaW4oc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5pbmcgKmxpbmtf
dHJhaW5pbmcsDQo+ICsJCQkJCQkgICAgIGJvb2wgZm9yY2VkKQ0KPiArew0KPiArCXN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAgPSBsaW5rX3RyYWluaW5nLT5kcDsNCj4gKw0KPiArCWludGVsX2Rw
LT5saW5rLmZvcmNlX3JldHJhaW4gPSBmb3JjZWQ7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29s
DQo+ICBpbnRlbF9kcF9uZWVkc19saW5rX3JldHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkNCj4gIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFpbmlu
ZyA9IGludGVsX2RwLT5saW5rLnRyYWluaW5nOw0KPiAgCXU4IGxpbmtfc3RhdHVzW0RQX0xJTktf
U1RBVFVTX1NJWkVdOw0KPiANCj4gIAlpZiAoIWludGVsX2RwLT5saW5rLmFjdGl2ZSkNCj4gQEAg
LTE5NjMsNyArMTk3OSw3IEBAIGludGVsX2RwX25lZWRzX2xpbmtfcmV0cmFpbihzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWlmIChpbnRlbF9wc3JfZW5hYmxlZChpbnRlbF9kcCkpDQo+
ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+IC0JaWYgKGludGVsX2RwLT5saW5rLmZvcmNlX3JldHJh
aW4pDQo+ICsJaWYgKGludGVsX2RwX2xpbmtfdHJhaW5pbmdfZ2V0X2ZvcmNlX3JldHJhaW4obGlu
a190cmFpbmluZykpDQo+ICAJCXJldHVybiB0cnVlOw0KPiANCj4gIAlpZiAoaW50ZWxfZHBfcmVh
ZF9saW5rX3N0YXR1cyhpbnRlbF9kcCwgbGlua19zdGF0dXMpIDwgMCkNCj4gQEAgLTIwMDUsNiAr
MjAyMSw4IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfcmV0cmFpbl9saW5rKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiArCXN0cnVjdCBpbnRlbF9kcF9saW5r
X3RyYWluaW5nICpsaW5rX3RyYWluaW5nID0NCj4gKwkJaW50ZWxfZHAtPmxpbmsudHJhaW5pbmc7
DQo+ICAJdTggcGlwZV9tYXNrOw0KPiAgCWludCByZXQ7DQo+IA0KPiBAQCAtMjAzMiwxMyArMjA1
MCwxMyBAQCBzdGF0aWMgaW50IGludGVsX2RwX3JldHJhaW5fbGluayhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwNCj4gIAlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICAJCSAgICAi
W0VOQ09ERVI6JWQ6JXNdIHJldHJhaW5pbmcgbGluayAoZm9yY2VkICVzKVxuIiwNCj4gIAkJICAg
IGVuY29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lLA0KPiAtCQkgICAgc3Ry
X3llc19ubyhpbnRlbF9kcC0+bGluay5mb3JjZV9yZXRyYWluKSk7DQo+ICsJCSAgICBzdHJfeWVz
X25vKGludGVsX2RwX2xpbmtfdHJhaW5pbmdfZ2V0X2ZvcmNlX3JldHJhaW4obGlua190cmFpbmlu
ZykpKTsNCj4gDQo+ICAJcmV0ID0gaW50ZWxfbW9kZXNldF9jb21taXRfcGlwZXMoZGlzcGxheSwg
cGlwZV9tYXNrLCBjdHgpOw0KPiAgCWlmIChyZXQgPT0gLUVERUFETEspDQo+ICAJCXJldHVybiBy
ZXQ7DQo+IA0KPiAtCWludGVsX2RwLT5saW5rLmZvcmNlX3JldHJhaW4gPSBmYWxzZTsNCj4gKwlp
bnRlbF9kcF9saW5rX3RyYWluaW5nX3NldF9mb3JjZV9yZXRyYWluKGxpbmtfdHJhaW5pbmcsIGZh
bHNlKTsNCj4gDQo+ICAJaWYgKHJldCkNCj4gIAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0K
PiBAQCAtMjM3Niw3ICsyMzk0LDYgQEAgc3RhdGljIGludCBpOTE1X2RwX2ZvcmNlX2xpbmtfcmV0
cmFpbl9zaG93KHZvaWQgKmRhdGEsIHU2NCAqdmFsKQ0KPiAgCXN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3RvciA9IHRvX2ludGVsX2Nvbm5lY3RvcihkYXRhKTsNCj4gIAlzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVjdG9yKTsNCj4gIAlz
dHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFpbmluZyA9IGNvbm5lY3Rvcl90
b19saW5rX3RyYWluaW5nKGNvbm5lY3Rvcik7DQo+IC0Jc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCA9IGxpbmtfdHJhaW5pbmctPmRwOw0KPiAgCWludCBlcnI7DQo+IA0KPiAgCWVyciA9IGRybV9t
b2Rlc2V0X2xvY2tfc2luZ2xlX2ludGVycnVwdGlibGUoJmRpc3BsYXktPmRybS0+bW9kZV9jb25m
aWcuY29ubmVjdGlvbl9tdXRleCk7DQo+IEBAIC0yMzg1LDcgKzI0MDIsNyBAQCBzdGF0aWMgaW50
IGk5MTVfZHBfZm9yY2VfbGlua19yZXRyYWluX3Nob3codm9pZCAqZGF0YSwgdTY0ICp2YWwpDQo+
IA0KPiAgCWludGVsX2RwX2ZsdXNoX2Nvbm5lY3Rvcl9jb21taXRzKGNvbm5lY3Rvcik7DQo+IA0K
PiAtCSp2YWwgPSBpbnRlbF9kcC0+bGluay5mb3JjZV9yZXRyYWluOw0KPiArCSp2YWwgPSBpbnRl
bF9kcF9saW5rX3RyYWluaW5nX2dldF9mb3JjZV9yZXRyYWluKGxpbmtfdHJhaW5pbmcpOw0KPiAN
Cj4gIAlkcm1fbW9kZXNldF91bmxvY2soJmRpc3BsYXktPmRybS0+bW9kZV9jb25maWcuY29ubmVj
dGlvbl9tdXRleCk7DQo+IA0KPiBAQCAtMjQwNiw3ICsyNDIzLDcgQEAgc3RhdGljIGludCBpOTE1
X2RwX2ZvcmNlX2xpbmtfcmV0cmFpbl93cml0ZSh2b2lkICpkYXRhLCB1NjQgdmFsKQ0KPiANCj4g
IAlpbnRlbF9kcF9mbHVzaF9jb25uZWN0b3JfY29tbWl0cyhjb25uZWN0b3IpOw0KPiANCj4gLQlp
bnRlbF9kcC0+bGluay5mb3JjZV9yZXRyYWluID0gdmFsOw0KPiArCWludGVsX2RwX2xpbmtfdHJh
aW5pbmdfc2V0X2ZvcmNlX3JldHJhaW4obGlua190cmFpbmluZywgdmFsKTsNCj4gDQo+ICAJZHJt
X21vZGVzZXRfdW5sb2NrKCZkaXNwbGF5LT5kcm0tPm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0
ZXgpOw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX3RyYWluaW5nLmgNCj4gaW5kZXggMzZiYTk1MzVmYzM0Zi4uZWYxNmZjYWJkNmRh
OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX3RyYWluaW5nLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX3RyYWluaW5nLmgNCj4gQEAgLTU5LDYgKzU5LDggQEAgdm9pZCBpbnRlbF9kcF8x
MjhiMTMyYl9zZHBfY3JjMTYoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIGJvb2wgaW50
ZWxfZHBfbGlua19wYXJhbXNfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IGxp
bmtfcmF0ZSwNCj4gIAkJCQl1OCBsYW5lX2NvdW50KTsNCj4gDQo+ICtib29sIGludGVsX2RwX2xp
bmtfdHJhaW5pbmdfZ2V0X2ZvcmNlX3JldHJhaW4oc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5p
bmcgKmxpbmtfdHJhaW5pbmcpOw0KPiArDQo+ICB2b2lkIGludGVsX2RwX2xpbmtfY2hlY2soc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOw0KPiAgdm9pZCBpbnRlbF9kcF9jaGVja19saW5r
X3N0YXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiANCj4gLS0NCj4gMi40OS4xDQoN
Cg==
