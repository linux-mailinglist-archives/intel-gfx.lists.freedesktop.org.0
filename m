Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OL4cBub7C2r2SwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:57:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79199577A85
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1988210E0B8;
	Tue, 19 May 2026 05:57:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/WWc/vn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9696510E0B8;
 Tue, 19 May 2026 05:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779170274; x=1810706274;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WKV4IbKVLZpvw52FmF9ebLCmTZdMWLdz0MFtt5dkGlo=;
 b=n/WWc/vnWlV0zyRcsvfY1aN1bDyLCcjs7tlU/WBRn8oMCc1BESMkeeCg
 qoIud18MC24EqVUYdVdYIo7nTyLV8GmOBdgJloxbZ2JM3CN2NdJ93aRhS
 WflLemciUwCFUeW372C7eAnhVWGFG6XQ5PV1vfeq5ajyhgh2FSt9f0s1F
 FZZlohLp4EeipOKRYpbmAwoUNAYWjESTlRPsK9W/oF4hYeavDF1xqXE9J
 Ww7sn6YyvE8s6Hcb4RJcBv/kASPWTlklDVRJ+b8pWyCJPDgD1+yXEBniY
 YTVFvZOxDILGPs9Z5bRcVmzloEznSzgeyoGvbCurrjBYcZC8wV4afcoJD g==;
X-CSE-ConnectionGUID: THvQpsu5TSOScPmmff2xmQ==
X-CSE-MsgGUID: srMHwKUjS7Kuizyb07U8xQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80017388"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80017388"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:57:54 -0700
X-CSE-ConnectionGUID: xMSjT6fTSbqZk+zToebkcw==
X-CSE-MsgGUID: z3roaw2sR56ZkczBNtDa6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="263452645"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:57:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:57:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 22:57:52 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:57:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ffkfthawANJADohXL/LMJFqnGsNf14i6VVhXatr0QyHvg+IGGTwr3TRlCnAWs20tzsqIACRw66VVxArW2mr5nH7s/LB80CNAUUNi6vjmBJvTKMXxDnEE78Tls3RoNFsNCfBCrznWzcyjvKPGC5jNl2Ra4N5HTivR+Jq1bI2CGN07nrx320qRIehHu3/2+iz6dAHVFTK2mx1mb6cMckQN5sr80p/rYTd2yxMorQ8rDZEskFLcRNk0Ax/8Tm9GqZaROvNnZAPOyyoIEc4aruxynDYEZiLI3PjAIrsJ3U/1lqVqZthPxRmAZGM/6R2/5T+/mos5k6IhFYish2pRFAQjtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WKV4IbKVLZpvw52FmF9ebLCmTZdMWLdz0MFtt5dkGlo=;
 b=TrpshT/ySaYTF+ydVejLugFOdnyIgzJ1+0iCBK8HVLnkUawnhvba8B/x7fdxX2Mk7B0qgxTwS+wsuD29+NW0pzVRCpdpAxVFMpqlpwlD4A9vP3QoLNtqY61y9Im6Ie7lfRAwf4WWHQfYpPrGqOWR+GTkbCiKQn7nscAR8C8P2JFKRDfIcRTyqegQGtu3FXGQUBaPDZrrZ83t4ouoRcopkGdvk3tralNvudp8/j3iH/17tLoVS02h8aAx5e7wNaVqCDvnQ9TtIM5TMksobw6QvwyIUKLZlYuKw6mtQGcPMnQD7Y8QLEiEvMGKuk8myQBubsyvDNsMRw6yUeftvvccRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA2PR11MB4874.namprd11.prod.outlook.com
 (2603:10b6:806:f9::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Tue, 19 May
 2026 05:57:50 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 05:57:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v3 13/31] drm/i915/buf_trans: override VS/PE-O when
 requested
Thread-Topic: [PATCH v3 13/31] drm/i915/buf_trans: override VS/PE-O when
 requested
Thread-Index: AQHc3cFXY8+ugGkgvEaN3KD4PeAOBbYU7HdQ
Date: Tue, 19 May 2026 05:57:49 +0000
Message-ID: <DM3PPF208195D8D13E4ABB86F46CCE9999BE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-14-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-14-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA2PR11MB4874:EE_
x-ms-office365-filtering-correlation-id: 3ce2f487-881c-454a-9c33-08deb56b8f0e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003|3023799003|38070700021|11063799003|4143699003;
x-microsoft-antispam-message-info: p7/TSHpM3uBNRSwcKtvwBx9XB2bZBobU7HVrhwiQsN/Wp6kmI+uhiTmoPlqSQZWtP8nit0hbReAfAyPPC/8or7btXE4Sw9dtGV+mQDgMkcH392QwZqm2+uGXBiryX5IaHv3gCRTDlKrIabC1J/scqtkqGiLjaU6ypmiI/fyJmScqc8dSXHlpN4Gf5VKcCnAC+pSvsdDR+aCZ8gfDEPJYfqw5aS6g+XbXtrhDWijq4FyinDmY2pg+Mr8N0XlhkwUuiwVBuNojV5Gu5kHo9XRS5GsvT9gEIFwzVDinXf29bb01jOqFgx6Ul0SFy1WHm+AdjBUh+ivP0QZeT5/W4Cfd4iplsyITjry9li5sZiuYAlLdDVNkqtDapH0Ijm3nxBABUvcvvm9RNFimf4MNucAVc9J2PtCImhX1IXt4s8ot/ylFfS0KOLw7fyjYUl3+pMlYXvSy/oOwbEPvLLWsX0JfScaBwiQ7xMUQ+dZtIXENceSwGBTh4Kc6ktbV6VCdOkwp7aVfAORu1APbgjzsCLcZ0Uw0aptuJeEGMEmXuWKEHks/3e6aMPfsZV2rKRtGezpqIj2WE70jUTBKDLwByJzL0hm+exqcAF0KFlBmChBu1sERWAS2/aQGXiz+/b4YfDVoz4v7BfCMqJ0/IhhjgsNF5a5xfGsxrNyzAjVV9FYWyo4vIrAFKwO5I+hFpkJnqijWvOdrRRf7Asq6sIho9UNU1xEnp3zpvGMiPYksOkQ+o/CqCNh5aHcyPQGzat6QtNTy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003)(3023799003)(38070700021)(11063799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1hqRFg0UmhRUVgwM3RNNzJxbU9ROEg0M0tDMFBaa3pxeHg4bjk1WjNHTWtS?=
 =?utf-8?B?ODBHZC9kcjFrNzNGUWFvUGs0ZU9DaEtZVW9sYXMzbXhNbjdUNUdVZlI4Y2RV?=
 =?utf-8?B?UFlmUWtCN0FIN2lMSlo2THRLYWFjUVI2cE1Bc0VZak1zVVVOVllGNlZlSnFw?=
 =?utf-8?B?bmtzd3h1Uno0dmM2dkorOU9hL1Q0SnNGTnFyb21EWXc1WjZjcU9mb25oTWRh?=
 =?utf-8?B?MVJGYndpZWlvdWU4ZThxQ2lBMXBaMDNnZUI5cE1zbFB1eHVoZjBSa2c3M29R?=
 =?utf-8?B?OEJZSmdYd0FyTitqc3R1VG1NaTdyNnZqZUtUY1BVMW10V2lwWGdlL0hVWUhC?=
 =?utf-8?B?WWMreVRCWThFeTlLZ2Myem9WN2ltZzQ5U2YrdFVnalBNNjdwRGZCditycnZT?=
 =?utf-8?B?ZUF0djc2c0duMHV5bzJhMHRmTWtsSjZaMndxRnMxTnVIc0ltczN6ZEJEQ1k5?=
 =?utf-8?B?WU1QZTZMU1VkaWJ1YnJybXJKdHVDRTdxSCswbTBTRmUrSk5LWjk4S09HemFN?=
 =?utf-8?B?U1ZmQnQzcVFyNnNXQUt0QjdlMDViOHNPOVJMZDUrSUg3NXF4TDNHNjFEUDNN?=
 =?utf-8?B?K0JCUUZoQVV4S3NvMWJqRVg3U0UvMlhHc1l3dGhudmx4RVNOS29ZRjR4VlFS?=
 =?utf-8?B?NnVDM0VZNXBDanJ0ZUNnZ0pNaUhqLzVMb2lzZlBPRVFVQjRZRUpJQWMwQ2RI?=
 =?utf-8?B?RHdLVVZBM3dBUmJ2RlI1VEdFZUlkcjVoRDJXc0NuNk1MMWtqeVJQS2hSMXNZ?=
 =?utf-8?B?UjFJZUx3aDNPL1hOaWsvMm8veStwL0ZvRmNCNDRVYVM3ZnRBVG9BYjQrM1R4?=
 =?utf-8?B?UVFCcUkxQXZIN2pzbTBJaUVFdUluWTYyemtwK25jaHhIU0RNQ1d4YjVPb3cw?=
 =?utf-8?B?ZllsalM2c21YYVpWWUs4RU5VK0JUeWpZNTBhODRsdHE0VldEKytva01UWHNk?=
 =?utf-8?B?cWZXVHpwQVlTaW84SmwzY0UwVVB6V1pCcDF0WVhmb0NRejJLRGtxbENMWGxn?=
 =?utf-8?B?OGx6N1BHMUY0Z3dFQmt4TlFTdDRXaG14WjBvWWlwL05iWmVWSHIwV1oycVZv?=
 =?utf-8?B?N3BydkZHWTRkUWFPTmE3YXNnd3BzQzFodCtNU2NUNlFpVTVKMzI5TG9Iem5m?=
 =?utf-8?B?M1FZdzZwUWU3NGVTbkNqdnFpMUNsUktkS1hkODVVZ1VhWXlhMlJJZGVzdDNJ?=
 =?utf-8?B?cTdMVzFWZkRITW9OOXA0NnJkaFI1dSthZWt2S2QxcEhHajM2cDJscHo4Yjds?=
 =?utf-8?B?cGdJMzN2dnlxUzdmMU45bmlCTUtXT1UyWXVLa29SaGFTN2QxZkhKaElCRVVI?=
 =?utf-8?B?aERjNEk3aVlyV0w1ZXJ4L0VqQVBRL01OZ1JvU0pUa25ESzZmZDlhcjY4bzNS?=
 =?utf-8?B?cURlcTZFcGJsRlk5N0k3ZjNIZG53bDJxUFFwdm1YMHhoczdhQ0xVREcyT29o?=
 =?utf-8?B?eDV0M3AzNjJRYWJyVDk0VFVVdVNQOHN3MTF5c3cva0YwaUlURU81TmVpSmVt?=
 =?utf-8?B?UDFnNTNubHVYRGRoMUpudUEySXpReGw3WkZIUEgzUDloUDJLVWNtd2U5SHVX?=
 =?utf-8?B?MUpXSDhVd0owYWtSK0sydTU3eW5nMTZST3NaWk8rWDV0aUlrY0x6SDJhelR3?=
 =?utf-8?B?aXZockNEZHBpZVB5d0FuMGJ6TEdLaVg0V1IwLzI1SHl3VUxvSi94dTBRU2x2?=
 =?utf-8?B?b051aEJ4UTQ5a21yN0ZSdEdKSE54Z3FOb3hjak84M1lVczFJZkhiWThGd2xG?=
 =?utf-8?B?VU5OalJ0VERTcFBqckJzQkhZWXhQN3plejZaMkM0YTJpNElueXJ3QXZITWky?=
 =?utf-8?B?cGtJeHRodUtvQzBZL0U4S1pURHVsaWh6c2lUK2VNRVVZd21JMjJSNUJZU284?=
 =?utf-8?B?R1BIdWlaVCtyZ0VWaVBoVWtGcVpST2J3clpsbTI0b2dPNS94WmgyUVI3MFFC?=
 =?utf-8?B?Z1lPcE4rYmpZeURBNGY3QjZhcisrMnZqRG5tc1kvNlFOK0xlTXlYTE1FNUlN?=
 =?utf-8?B?RXJ1aldPZjN3TWlXR3c3ZUM4eHJUWDdnOGk4S3Y2b1J2TlAvWWRyV3M5aHk2?=
 =?utf-8?B?RnlvVm11N2FKajVHL0NHeE12V1dTa3hpMnFGZ2hma3MyR3N3TGRoM3h5TjhF?=
 =?utf-8?B?L0NuQkdRMGFQa2FnRnFEQW1MQkhyczN4SDJFN1ZmSGJ2UllrOGZqbnJuOEl3?=
 =?utf-8?B?UUVNV3haK0tDWkQzemszQkdmNWRWc1lnZ0xWcWhiaXdaSEVnZFB6Qi9iVFY4?=
 =?utf-8?B?Rm1FTG1hTVkvSVZ5bUdKZ3Vham9rNDQyQjFqbUxQRjA3dGZOdnUvQVU3QXR1?=
 =?utf-8?B?Uno0b3c1aDhFdUovUldzWmpyVGNzWElBQUlPRFk0dThkYkdWQTFEZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LUHUDX8AiDZZfimRjBggiBjo+b0Eb287fQoh3g0sjJeOeAkiO7NS7unmKx+kXT7atyjMczab1r1tXGip1coomwGnnYrm1BDJqTE4Orbaqz3dchK07tiqBTt4SlbyTjBOVAv5SGSDlhVnwrY9jQUmJWG7BEwb2vHtVvGVs5WnKq/3jvtxS7Lh+mJdHatv4B7OEG7+bfF5kby5O0RruaZ4grAh/5RKR8qrHCiPPGMTfHb/Syp4tag++R6HYXRS3HB8qS/NWjNRjQf9d+7Sloyx2Z8SHEVIexot6c/rPxu6yArNGy2o+Tz++Q1UHtuwdMwqjXFyNaWsHInOIiMfd2oDvw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ce2f487-881c-454a-9c33-08deb56b8f0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 05:57:49.8828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NFYZezoZwMpdaxdimwP4yFLzFLy6p/WwNnDL+tIm4yD7HQXnCwDfBLamkEfYPP3Z+tlKXPcUieic35BsN1nUIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4874
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 79199577A85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMTMvMzFdIGRybS9pOTE1L2J1Zl90cmFuczogb3ZlcnJpZGUg
VlMvUEUtTyB3aGVuDQo+IHJlcXVlc3RlZA0KPiANCj4gQ2hlY2sgaWYgY29ycmVzcG9uZGluZyBw
b3J0IGFza3MgdG8gb3ZlcnJpZGUgZGVmYXVsdCBWc3dpbmcgLyBQcmVlbXBoYXNpcw0KPiB0YWJs
ZXMuIEFzIG9mIG5vdyBpc3N1ZSBhIGRlYnVnIG1lc3NhZ2UgaWYgaXQgaXMgdGhlIGNhc2UuDQo+
IERvIG5vdCBvdmVycmlkZSB3aGVuIG5vdCByZXF1ZXN0ZWQsIGhlbmNlIHdoZW4gcG9ydCdzIGJ1
ZmZlcidzIHBvaW50ZXIgaXMgc2V0DQo+IHRvIE5VTEwuDQo+IA0KPiBXaXRoIGN1cnJlbnQgaW1w
bGVtZW50YXRpb24gdGhlcmUgaXMgbm8gd2F5IGZvciBwcm9wZXIgcm9sbGJhY2sgZnJvbQ0KPiBp
bnRlbF9kZGlfYnVmX3RyYW5zX2dldCgpIGlmIHJlcXVlc3Qgd2FzIGRvbmUgb24gcGxhdGZvcm0g
d2l0aG91dCB0aGUgc3VwcG9ydA0KPiBmb3IgVlMvUEUtTyBwYXJzaW5nLiBJbiB0aGlzIHNpdHVh
dGlvbiB1c2luZyBhbnkgaW5kZXggd2lsbCByZXN1bHQgaW4gdXNpbmcgemVyb2VkDQo+IHRhYmxl
cyBpbnN0ZWFkIG9mIHRoZSBkZWZhdWx0cy4NCj4gDQo+IFRoZXJlZm9yZSBhZGQgYSB3b3JrYXJv
dW5kOiBjaGVjayBWUy9QRS1PIHBhcnNpbmcgYXZhaWxhYmlsaXR5IGZvciB0aGUNCj4gcGxhdGZv
cm0gZHVyaW5nIERESSBwYXJzaW5nLiBJZiBjaGVjayBmYWlscywgZG8gbm90IGFsbG9jYXRlIGJ1
ZmZlciwgYW5kIGhlbmNlIHVzZQ0KPiBkZWZhdWx0IGVuY29kZXItPmdldF9idWZfdHJhbnMoKS4N
Cj4gDQo+IFdvcmthcm91bmQgd2lsbCBiZSByZW1vdmVkIGFmdGVyIGFsbCBwbGF0Zm9ybXMgd2l0
aCBWUy9QRS1PIHRhYmxlcyBhcmUgYWJsZSB0bw0KPiBwYXJzZSB0aGVtLg0KPiANCj4gdjItPnYz
DQo+IC0gYnJlYWsgbG9nZ2luZyBpbnRvIHR3byBsaW5lcw0KPiANCj4gU2lnbmVkLW9mZi1ieTog
TWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgICAgICAgfCA0ICsrKysN
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jIHwg
NiArKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggNjg5M2Fh
OWYwMWFlYy4uYjJlZTU1NmU5ZDFmMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMNCj4gQEAgLTI2NjAsMTIgKzI2NjAsMTYgQEAgc3RhdGljIHZvaWQg
c2FuaXRpemVfaGRtaV9sZXZlbF9zaGlmdChzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2Rh
dGEgKmRldmRhdGEsICBzdGF0aWMgdm9pZA0KPiBvdmVycmlkZV92c3dpbmdfcHJlZW1waChzdHJ1
Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpICB7DQo+ICAJc3RydWN0IGludGVs
X2RkaV9idWZfdHJhbnMgKmJ1Zl90cmFuczsNCj4gKwlib29sIHBhcnNlYWJsZSA9IGZhbHNlOw0K
PiANCj4gIAlkZXZkYXRhLT5idWZfdHJhbnMgPSBOVUxMOw0KPiANCj4gIAlpZiAoIWludGVsX2Jp
b3NfZW5jb2Rlcl9vdmVycmlkZXNfdnN3aW5nKGRldmRhdGEpKQ0KPiAgCQlyZXR1cm47DQo+IA0K
PiArCWlmICghcGFyc2VhYmxlKQ0KPiArCQlyZXR1cm47DQoNClRoaXMgY2FuIGJlIGFkZGVkIHdo
ZW4geW91IGludHJvZHVjZSBvdmVycmlkZSB2c3dpbmcgcHJlZW1waCBmdW5jdGlvbi4NCg0KPiAr
DQo+ICAJYnVmX3RyYW5zID0ga3phbGxvY19vYmooKmJ1Zl90cmFucyk7DQo+ICAJZGV2ZGF0YS0+
YnVmX3RyYW5zID0gYnVmX3RyYW5zOw0KPiAgfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0KPiBpbmRleCA5MDg1NzdiMDRh
MTRlLi4zOGYyYTAzMGMwMThkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0KPiBAQCAtMyw2ICszLDggQEANCj4gICAq
IENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uDQo+ICAgKi8NCj4gDQo+ICsjaW5j
bHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPiArDQo+ICAjaW5jbHVkZSAiaW50ZWxfY3gwX3BoeS5o
Ig0KPiAgI2luY2x1ZGUgImludGVsX2RkaS5oIg0KPiAgI2luY2x1ZGUgImludGVsX2RkaV9idWZf
dHJhbnMuaCINCj4gQEAgLTE4NTcsNSArMTg1OSw5IEBAIGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlf
YnVmX3RyYW5zDQo+ICppbnRlbF9kZGlfYnVmX3RyYW5zX2dldChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqDQo+ICAJCQkJCQkJICBjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwNCj4gIAkJCQkJCQkgIGludCAqbl9lbnRyaWVzKQ0KPiAgew0KPiArCWlmIChlbmNvZGVy
LT52c3BlbykNCj4gKwkJZHJtX2RiZ19rbXModG9faW50ZWxfZGlzcGxheShlbmNvZGVyKS0+ZHJt
LA0KPiArCQkJICAgICJWUy9QRS1PIHVuc3VwcG9ydGVkLCB1c2luZyBkZWZhdWx0IFZTL1BFIHRh
YmxlcyIpOw0KDQpNaXNzZWQgdGhlIFxuDQpBbHNvIEkgd291bGQgcmF0aGVyIGhhdmUgdGhlIGRl
YnVnIG1lc3NhZ2UgcHJvcCB1cCBvbmx5IHdoZW4gd2UgYXJlIHVzaW5nIHRoZSBWU1BFTyB0YWJs
ZS4gT3IgZWxzZSB0aGlzIGRlYnVnIG1lc3NhZ2Ugd2lsbCBzaG93IHVwIGFsbW9zdCBldmVyeXRp
bWUgc2luY2UgZGVmYXVsdCB0YWJsZSBpcyBtb3N0bHkgdGhlIHdheSB0byBnbyBWU1BFTyBpcyB0
aGUgZXhjZXB0aW9uLg0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+ICsNCj4gIAlyZXR1
cm4gZW5jb2Rlci0+Z2V0X2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCBuX2VudHJpZXMp
OyAgfQ0KPiAtLQ0KPiAyLjQ1LjINCg0K
