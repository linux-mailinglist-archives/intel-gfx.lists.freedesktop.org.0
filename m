Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA72D530141
	for <lists+intel-gfx@lfdr.de>; Sun, 22 May 2022 08:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABBED112447;
	Sun, 22 May 2022 06:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2166C112447
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 May 2022 06:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653201259; x=1684737259;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wJk9cDgQFZQomrtXXNBdXg4FeRLE+st22Ak9rf8AyQw=;
 b=Qs60S9r9G8H/BEsQ4//us/CC2OpYO0Eb2+I34ytVl5qLy5Ym7GtfNu4W
 0aP6iak++W0osSQR4OXbWuqTEdVqfN+VIuq8otUlpZYxUKKAsFaDz/IEZ
 lofTFfyh6U1Wq3aRjrYUVNX+LJVQAHgsZmHUaKvy3FjbprIhfRvnW4H+p
 ClaDynTQ0TzvpptXxT8mc413WratqEPH1JSwKvb7oQ4ExDF2neSDHhquv
 Im8n/bQcFwUJhfFa5f9RjO8hECOcSeR+6vWNf2lKab4aNwcocPqXOvP91
 3rqm7qL6WHZtoStvo6wH7vY6Tr2NRcY2HxlmXSRMjmQP69bDJwvcHcq/Q A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10354"; a="336005541"
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600"; d="scan'208";a="336005541"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2022 23:34:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600"; d="scan'208";a="675335207"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 21 May 2022 23:34:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sat, 21 May 2022 23:34:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sat, 21 May 2022 23:34:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sat, 21 May 2022 23:34:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6uf6l/0I6M3iqeiRMpFfHS4vkJSlXpzUIKWcRYUUpLRzjOCPGg6uODIigx9xJYkxuGOErsCDu+qlOlOgUJSpskjB8uYhlpZPjKSbyhaeAv14+FCrA2BWeAd96EXTgHoo+ZBetTnOXv2VzE0s3j2zYM0Qx6Gw43MBEHBwEtH3+FBrgB7wtfplvqrKzedj2Gp0HFQ3OT55zOl/uQLrqk1IuwWJbEkM+71iyugZMkq/yyJB2CNbW/cyPYTaq6HmqkbRtyUcyZubGbCSA5mmILUk++mTPM7pLFmFwzzAMMKbxqOFHTpLio1SVVPdGrXUu00nh6jsp/707cvYi7pL0GFnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wJk9cDgQFZQomrtXXNBdXg4FeRLE+st22Ak9rf8AyQw=;
 b=WV6+MK11cjdAsje7YFn+tnYGmqfV0KaS5Yzjvv/Wr15IjAWITcpfljRXMJ6LDqgR7gZgB0e9B2hCBzdXW+6mzowpLAxOjz/25lAIOapHEEJ8fB+poR7sqeRpjPeYXHaBlqhAYJPlxxadY2b91EyOpnLg4PMsIooZ2sE0qKrp8iItiQZkFozvd3HqeL7Avn1rjZsSeDcYwACJUmu2qaEFFQBOgUTTP4qZg+u8Q0QtOkTwRNKziNqKwTCFEmuj6DZMxYw3aBxeuXW828TkBwkg8dcW0M7MDcxYZovjyIQbQ6m5pRTLMlZDCHYJNUHuw8oHqssTYsLqVCGDWKusukG3cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6213.namprd11.prod.outlook.com (2603:10b6:8:ae::17) by
 SA2PR11MB5193.namprd11.prod.outlook.com (2603:10b6:806:fa::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5273.15; Sun, 22 May 2022 06:34:14 +0000
Received: from DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::c8ac:46fb:f02f:e5ad]) by DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::c8ac:46fb:f02f:e5ad%8]) with mapi id 15.20.5273.022; Sun, 22 May 2022
 06:34:14 +0000
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?Q?15/dg2:_Enable_DC5?=
Thread-Index: AQHYbJ7nKa/T0XuKhUGphd48uYtkIK0pgisAgADl/JA=
Date: Sun, 22 May 2022 06:34:14 +0000
Message-ID: <DM4PR11MB621316CCD96B173A42C8DF5AECD59@DM4PR11MB6213.namprd11.prod.outlook.com>
References: <20220520161244.2571563-1-anusha.srivatsa@intel.com>
 <165306668214.19818.3860359035324518944@emeril.freedesktop.org>
 <YoggB+ZBQiU9CJif@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB2166D0A5C668E95418E712C0F8D29@CY4PR1101MB2166.namprd11.prod.outlook.com>
In-Reply-To: <CY4PR1101MB2166D0A5C668E95418E712C0F8D29@CY4PR1101MB2166.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b22d9fb0-b051-4434-0f34-08da3bbd16d7
x-ms-traffictypediagnostic: SA2PR11MB5193:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SA2PR11MB5193410446789B977AC77F78ECD59@SA2PR11MB5193.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vlO6S1aHduMu0p0WVBUP2phbW/e8fZokMl3/nqX5jQX0MJiDQl04XqYGuszmDV4HcoWaihxAwzPi1Yo/qXfmc/y25dVRz4hT0QASBtrDVWwJimeaJe1IXy90tMafOcy+8NrsjxarHes/x1I6sGIiWTU9+6RnOHxHBwjB3rg/9JWSAo+5lvO7gYgSOKJhWUVqOIx9pCApr3uz63Qmu9UiURDSiWtHDS+S4asNZtZpQys4i9srms981DqoDWLsmD+rnFovHHGEixfkiFogy4iJ0XEupd+6XPy7K+9hD+L7xPdkt6TEBc4gokuLiLdA5aT1hn7GnUuHd95yJDJOZwlC1QCuJwl2OTMZHtm5Y49SjbDNtDMM9wTsknzjpLRXT6Pi8NJaN7xQ6isslR0U5VbYhux+Vznbs9TdAc9m219uVSu8zLXXuXkioxWtc/CFYHaSnoCUbqL0QwUu4oTN3eCaHXUPYE5rRGXLkxO36m6TQSMF6wpcbX6SlqI5L9zlhLieVqFwBxEAuTtCG7GTUu/kWz5bXUm4c9gZ4VoSooGLNMk3MlE6lIfvaxGDsWYzS2SLxDuLOIhjO8Y1hyTiWFO3ifXozLywIYmj6ptZPl8MpheuXMyi9Y5cohmbh9sSJBxNuNaTGNEavNQQZyPqWRrMZdd4PlQWq6LAwMP1u+9RPjiWjyKJE622B3EOmgmHGznc6BzZFSDUf4Cy9i8MLREOr7q2NlCSDpvGPy77gCgN0bONkV7b96ziExLm1ClaoT2RMit3D/6xbo3yU2sirIfnVgAdTACdj2H8WXxQ37yX5VcYB0a2lywo/1c5cwtKufYU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6213.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(66946007)(66556008)(64756008)(66446008)(66476007)(8936002)(76116006)(9686003)(7696005)(26005)(316002)(53546011)(6506007)(82960400001)(122000001)(30864003)(2906002)(38070700005)(5660300002)(38100700002)(71200400001)(33656002)(110136005)(55016003)(508600001)(966005)(86362001)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RDFnZmYyT09jT0tkOTlNUmxSa09yVUt5REgrUUlZZjNBdFh6K1FTNzBLQStu?=
 =?utf-8?B?NzQ2Sk5nd21xS2hhZHFWL25tUy9HcVBHWk1Oa1ZoMHVsdDZpTFZESGFZMkFB?=
 =?utf-8?B?MTg2R3FybHBGOUFlcDZjZThLR2xkbVVGSXB4VEFGNVhodjZpZmRVVmRiTURi?=
 =?utf-8?B?cUxFMG5xUEorZ0xQSWdXWEpQalF4V2xFTWlhNVEwTUI0ZDZjUjF0d0dlSnhP?=
 =?utf-8?B?WjMrU2tTQmxKbUpUTEdpL2g2NTFsb0VlVzV6aDdaSUFwc2dlZHFWWlVJdHdM?=
 =?utf-8?B?blBjQmdxb0hLYUFtTTlSV3pHdmFodGQ1Sk52bnEwK1RQMGIrWlZ0elpFMGQ0?=
 =?utf-8?B?VzR1Q1RpMTRrd2RXSGZRVUU1K2Y4SlA0WDZDRE5EUnZwanBiSnZmRGNVM2lS?=
 =?utf-8?B?UUdmNTEzZHhmMkJvSjJRdkFTUFRja2ptaC9jRE9zNHNOSllkRzVycXZNSHl2?=
 =?utf-8?B?VEpsdUhhZzVwdC9HUTgxczJOeFBQWUFneGt6SnVZa0J1MXpxTlpEQ0JRZjdE?=
 =?utf-8?B?ZXFtUkxEQUJUZ04zSlJ1Y3VGak42WjZkT3BFSGllOVNLOTkrbGphQXBKaUtE?=
 =?utf-8?B?b1hRMnIraWUyWmg3d1poYVNYMHh4OVBDeWFKemYyVjJ6aUxHSEpHSWtDeGs0?=
 =?utf-8?B?dXRPR1c5c0JwcDBWNEpwMW1WU2o2SkJhTXAwWjc1aU00OERkSWJ4c2twdStr?=
 =?utf-8?B?Rk1oQmRrd0gyeUtSTFRJdWp5RUtIcFZXRFlqOUNMQStmN1lEVGZVTkxiSFU0?=
 =?utf-8?B?SUxZWk4zSS9zRkxoTTRnN2hrMVdxRHFIWlJEaW85VG5HWkRicWJHYjBYWGxO?=
 =?utf-8?B?VERGeU90V25uUDRkb2FDQUxKZnlUMWJzcERzalVobGc3Rlp6clArRmpTSGZI?=
 =?utf-8?B?bCtLZVh5R2NLdVRrS2ZCaEhMZnVDWWRBYi84VVBXSXlmYnM0Q1pRU0RPQ0Za?=
 =?utf-8?B?djlTME10NkFZRnFhRWpCRGM2S0MyMk1mSjN5M3dYcGtwT0R0TE5FZ25QY1VZ?=
 =?utf-8?B?NlBpOXk2dEt0RXF3MUtRUTc3MnFsTjkzZVp5MEZRcWt1SDJyOHArK1dXV254?=
 =?utf-8?B?ZmJnaVUwTTkxV1JoOVV4MmdZSXNCNjlBeCtRZG41VkRLTXpDYklndENXcVZz?=
 =?utf-8?B?dTdCb3lacUNuV1BOd1UvMHdobzBCZWNaWUNrQWZDdHp1S2FzVmJCWGloU2pi?=
 =?utf-8?B?eDQxZzNsdTgvRG9mQ0dPUXhEdmloa3cwbnltbEFmalh0M2Z1KzYxYXZCdkxP?=
 =?utf-8?B?eHdxcGw3bm1DaTA3WGFaSUVpOVpvSlAzN2xHclJuS0dRWGRRZVBrQ0ZlZEo0?=
 =?utf-8?B?aEd2LzFsajErWU1EKzYrZGZTT0Z0VnB5M3V1K2QvNWdqRzNBZnQxYU0xWWhm?=
 =?utf-8?B?dGVvUjZVZUwxVnlCdUpJSWRIY1BXVDh4UHF0MitsQi9aT3l1V2FteFU3aW83?=
 =?utf-8?B?Wmo3TGcwWWJGUlZTS2hNL0JMTUJlaU9PMHZ1TlhZN2grc2lMcEl5bS8vcGo3?=
 =?utf-8?B?STQweXJRUWViUmFTa0crMzNhQzhvWjFoZkVvOHE5c0dMY0Z6ZktEcS9EMHM2?=
 =?utf-8?B?YmQ0OFRTMXppTXhrd1RSN3JSbU1JVmtncUZZaUZ1VUxUcWlMMWF4WHh5SVZz?=
 =?utf-8?B?R0F2UzVWYm5aZ3VIN251UURTZU41eE1aZVdOZU1DdFp5Z0ZPUDI3YlFwd1pP?=
 =?utf-8?B?QmFTQWN1QkhiZTV4NzFMWGVpWnNYZ3lPMHM1Sk1ndkpMREJsRzNXaEpSTk1Z?=
 =?utf-8?B?OEJ1aTBham9mQThLOFRET3ErQzVPMVpZSS9DaGtoZFRLLy9UMXRHYVpra05t?=
 =?utf-8?B?K3pQNDlIdS9SQnNPUmNQUmpWT3lVS2MrTmxKVFBxazJ3bEtaNTNVUWhFMlY5?=
 =?utf-8?B?cmlkeXUvWDZKa05QeDlBUUZoK0NYQlRXekVKU2ZXRzhRdmhOSW0zM2RMRVg0?=
 =?utf-8?B?N1UyYVpqYkQxaEYweDRNZi9VMnZVT0Vsc2VTVjFvTUczUHgwek9pOGZjbVZ3?=
 =?utf-8?B?VUlmcWJOZEtFTE9iRW9HcDYyNDhrK2MwcEx6VDBobW1Eb0w0Q2x3blNMTE0r?=
 =?utf-8?B?MWUwVjhhZzJwSjVERDZ6M1g2YWRZOGh6NS8vMW41RWp0d2hMcEdiaGZqb0sy?=
 =?utf-8?B?Nm52bEtvNS9zMmdYamROMG5kYlRreUJaTHoxS1J3Y2UwK1RPMHFDdnhPeDNz?=
 =?utf-8?B?L1grWTRxbnUyY1hpbkRKbVhadnU0UHFlb3N0aU1hQjFEU3JLWEh3MTJ3cEJI?=
 =?utf-8?B?cUhYcmJzWDk1U1dpWFdwU2FvdzBQY0FUbFRhajlhakM2Z2hSUUpPbGhKeDNJ?=
 =?utf-8?B?Y043L01yZHY0ZlFMSndSY1FMWmdWVEdvUm0rZndnanJiVDdLaVhvSk4xa3Ir?=
 =?utf-8?Q?h7Dqb/RsZh7hkXXU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6213.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b22d9fb0-b051-4434-0f34-08da3bbd16d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2022 06:34:14.4084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DFFcJZG/fLDetk4v1JmkZzemzFFgb/qm74U5Lydi8n4lpS2hGOO5FbpGJVAtnri76TvmcgajhT8tkq3aI6/m4LSOCukYAif3+1moJ2nbhhc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5193
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Enable_DC5?=
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

SSBkb24ndCBzZWUgYW55IHJlZ3Jlc3Npb25zIGZyb20gQmF0IGJ1dCBvbiBzaGFyZHMuDQpodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDQyMzN2MS9z
aGFyZC1za2w4L2lndEBpOTE1X3BtX2RjQGRjNS1kcG1zLmh0bWwgaXMgbWFwcGVkIHRvIGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvNTk2MQ0KDQpUaGFu
a3MsDQpMYWtzaG1pLg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFNyaXZhdHNh
LCBBbnVzaGEgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+IA0KU2VudDogU2F0dXJkYXksIE1h
eSAyMSwgMjAyMiA5OjEzIEFNDQpUbzogUm9wZXIsIE1hdHRoZXcgRCA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFZ1ZHVtLCBMYWtz
aG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5jb20+DQpTdWJqZWN0OiBS
RTogW0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGcyOiBF
bmFibGUgREM1DQoNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJv
cGVyLCBNYXR0aGV3IEQgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRh
eSwgTWF5IDIwLCAyMDIyIDQ6MTEgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IFNyaXZhdHNhLCBBbnVzaGEgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+
OyBWdWR1bSwgDQo+IExha3NobWluYXJheWFuYSA8bGFrc2htaW5hcmF5YW5hLnZ1ZHVtQGludGVs
LmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUg
Zm9yIGRybS9pOTE1L2RnMjogRW5hYmxlIA0KPiBEQzUNCj4gDQo+IE9uIEZyaSwgTWF5IDIwLCAy
MDIyIGF0IDA1OjExOjIyUE0gKzAwMDAsIFBhdGNod29yayB3cm90ZToNCj4gPiA9PSBTZXJpZXMg
RGV0YWlscyA9PQ0KPiA+DQo+ID4gU2VyaWVzOiBkcm0vaTkxNS9kZzI6IEVuYWJsZSBEQzUNCj4g
PiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTA0MjMz
Lw0KPiA+IFN0YXRlIDogZmFpbHVyZQ0KPiA+DQo+ID4gPT0gU3VtbWFyeSA9PQ0KPiA+DQo+ID4g
Q0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTE2ODEgLT4gUGF0Y2h3b3JrXzEwNDIz
M3YxIA0KPiA+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0NCj4gPg0KPiA+IFN1bW1hcnkNCj4gPiAtLS0tLS0tDQo+ID4NCj4gPiAgICoqRkFJTFVS
RSoqDQo+ID4NCj4gPiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNo
d29ya18xMDQyMzN2MSBhYnNvbHV0ZWx5DQo+IG5lZWQgdG8gYmUNCj4gPiAgIHZlcmlmaWVkIG1h
bnVhbGx5Lg0KPiA+DQo+ID4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2
ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gPiAgIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzEwNDIzM3YxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gDQo+ID4gYWxs
b3cNCj4gdGhlbQ0KPiA+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGlj
aCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+ID4NCj4gPiAgIEV4dGVybmFs
IFVSTDoNCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMDQyMzN2MS9pbmRleC5odA0KPiA+IG1sDQo+ID4NCj4gPiBQYXJ0aWNpcGF0aW5nIGhv
c3RzICg0NiAtPiA0NCkNCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPg0K
PiA+ICAgTWlzc2luZyAgICAoMik6IGJhdC1kZzItOCBmaS1ya2wtMTE2MDANCj4gPg0KPiA+IFBv
c3NpYmxlIG5ldyBpc3N1ZXMNCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4NCj4gPiAgIEhl
cmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQg
aW4NCj4gUGF0Y2h3b3JrXzEwNDIzM3YxOg0KPiA+DQo+ID4gIyMjIElHVCBjaGFuZ2VzICMjIw0K
PiA+DQo+ID4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+ID4NCj4gPiAgICogaWd0
QGZiZGV2QHJlYWQ6DQo+ID4gICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbUEFTU11bMV0gLT4g
W0RNRVNHLVdBUk5dWzJdDQo+ID4gICAgWzFdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMTY4MS9maS1pY2wtDQo+IHUyL2lndEBmYmRldkBy
ZWFkLmh0bWwNCj4gPiAgICBbMl06DQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA0MjMzdjEvZmktaWNsLXUNCj4gPiAyLw0KPiA+IGlndEBm
YmRldkByZWFkLmh0bWwNCj4gDQo+IEl0IGxvb2tzIGxpa2UgdGhpcyBpcyBhbiBlcnJvciBjb21p
bmcgZnJvbSBhIGJsdWV0b290aCBkcml2ZXIsIG5vdCANCj4gcmVsYXRlZCB0bw0KPiBncmFwaGlj
czoNCj4gDQo+ICAgIDwzPiBbMjYuOTE2NTc0XSBCbHVldG9vdGg6IGhjaTA6IFJlYWRpbmcgSW50
ZWwgdmVyc2lvbiBjb21tYW5kIA0KPiBmYWlsZWQgKC0NCj4gMTEwKQ0KPiAgICA8ND4gWzI2Ljkx
NjY4OV0gZ2VuZXJhbCBwcm90ZWN0aW9uIGZhdWx0LCBwcm9iYWJseSBmb3IgDQo+IG5vbi1jYW5v
bmljYWwgYWRkcmVzcyAweDZiNmI2YjZiNmI2YjZiNmI6IDAwMDAgWyMxXSBQUkVFTVBUIFNNUCBO
T1BUSQ0KPiAgICA8ND4gWzI2LjkxNjcyNl0gQ1BVOiAyIFBJRDogOTkgQ29tbToga3dvcmtlci8y
OjIgTm90IHRhaW50ZWQgDQo+IDUuMTguMC1yYzctIFBhdGNod29ya18xMDQyMzN2MS1nYmEzNjk4
NTVkODU3KyAjMQ0KPiAgICA8ND4gWzI2LjkxNjczMV0gSGFyZHdhcmUgbmFtZTogSW50ZWwgQ29y
cG9yYXRpb24gSWNlIExha2UgQ2xpZW50IA0KPiBQbGF0Zm9ybS9JY2VMYWtlIFUgRERSNCBTT0RJ
TU0gUEQgUlZQIFRMQywgQklPUw0KPiBJQ0xTRldSMS5SMDAuMzE4My5BMDAuMTkwNTAyMDQxMSAw
NS8wMi8yMDE5DQo+ICAgIDw0PiBbMjYuOTE2NzM3XSBXb3JrcXVldWU6IGV2ZW50cyBoY2lfY21k
X3RpbWVvdXQgW2JsdWV0b290aF0NCj4gICAgPDQ+IFsyNi45MTY3NTVdIFJJUDogMDAxMDpoY2lf
Y21kX3RpbWVvdXQrMHgzMC8weGEwIFtibHVldG9vdGhdDQo+ICAgIDw0PiBbMjYuOTE2ODA2XSBD
b2RlOiBmZiBmZiA1MyA0OCA4YiA4NyAxMCAwNSAwMCAwMCA0OCA4OSBmYiA0OCA4NSANCj4gYzAg
NzQgNjMNCj4gNDggOGIgODAgYjggMDAgMDAgMDAgNDggOGQgYjUgYTAgMDAgMDAgMDAgNDggODUg
ZWQgNDggYzcgYzcgYzggNmMgMzggDQo+IGEwIDwwZj4NCj4gYjcgMTAgNDggYzcgYzAgNTMgMzgg
MzggYTAgNDggMGYgNDQgZjAgZTggOTEgMTMgMDYgMDAgNDggOGIgODMNCj4gICAgPDQ+IFsyNi45
MTY4MTRdIFJTUDogMDAxODpmZmZmYzkwMDAwYWUzZTUwIEVGTEFHUzogMDAwMTAyODYNCj4gICAg
PDQ+IFsyNi45MTY4MThdIFJBWDogNmI2YjZiNmI2YjZiNmI2YiBSQlg6IGZmZmY4ODgxMGVmNWFh
YzggUkNYOg0KPiAwMDAwMDAwMDAwMDAwMDAwDQo+ICAgIDw0PiBbMjYuOTE2ODIxXSBSRFg6IDAw
MDAwMDAwMDAwMDAwMDEgUlNJOiBmZmZmODg4MTBlZjVhMGEwIFJESToNCj4gZmZmZmZmZmZhMDM4
NmNjOA0KPiAgICA8ND4gWzI2LjkxNjgyNV0gUkJQOiBmZmZmODg4MTBlZjVhMDAwIFIwODogZmZm
Zjg4ODEwNzAwYmEzOCBSMDk6DQo+IDAwMDAwMDAwZmZmZmZmZmUNCj4gICAgPDQ+IFsyNi45MTY4
MjhdIFIxMDogMDAwMDAwMDAwMDAwMDAwMSBSMTE6IDAwMDAwMDAwZGZiYmZiMTcgUjEyOg0KPiBm
ZmZmODg4NDlmYjNhZmMwDQo+ICAgIDw0PiBbMjYuOTE2ODMyXSBSMTM6IGZmZmY4ODg0OWZiM2Zj
MDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAwIFIxNToNCj4gZmZmZjg4ODQ5ZmIzZmMwNQ0KPiAgICA8
ND4gWzI2LjkxNjgzNV0gRlM6ICAwMDAwMDAwMDAwMDAwMDAwKDAwMDApIA0KPiBHUzpmZmZmODg4
NDlmYjAwMDAwKDAwMDApDQo+IGtubEdTOjAwMDAwMDAwMDAwMDAwMDANCj4gICAgPDQ+IFsyNi45
MTY4MzldIENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMN
Cj4gICAgPDQ+IFsyNi45MTY4NDJdIENSMjogMDAwMDdmY2M2ODM3ZTFhMCBDUjM6IDAwMDAwMDAw
MDY2MTIwMDYgQ1I0Og0KPiAwMDAwMDAwMDAwNzcwZWUwDQo+ICAgIDw0PiBbMjYuOTE2ODQ2XSBQ
S1JVOiA1NTU1NTU1NA0KPiAgICA8ND4gWzI2LjkxNjg0OF0gQ2FsbCBUcmFjZToNCj4gICAgPDQ+
IFsyNi45MTY4NTBdICA8VEFTSz4NCj4gICAgPDQ+IFsyNi45MTY4NTJdICBwcm9jZXNzX29uZV93
b3JrKzB4MjcyLzB4NWMwDQo+ICAgIDw0PiBbMjYuOTE2ODU3XSAgd29ya2VyX3RocmVhZCsweDM3
LzB4MzcwDQo+ICAgIDw0PiBbMjYuOTE2ODYxXSAgPyBwcm9jZXNzX29uZV93b3JrKzB4NWMwLzB4
NWMwDQo+ICAgIDw0PiBbMjYuOTE2ODY0XSAga3RocmVhZCsweGVkLzB4MTIwDQo+ICAgIDw0PiBb
MjYuOTE2ODY3XSAgPyBrdGhyZWFkX2NvbXBsZXRlX2FuZF9leGl0KzB4MjAvMHgyMA0KPiAgICA8
ND4gWzI2LjkxNjg3MF0gIHJldF9mcm9tX2ZvcmsrMHgxZi8weDMwDQo+ICAgIDw0PiBbMjYuOTE2
ODc1XSAgPC9UQVNLPg0KPiANCj4gTG9va3MgbGlrZSB0aGlzIG1pZ2h0IGJlDQo+IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvNDg5MCA/DQpZZWFoIHNl
ZW1zIGxpa2UgaXQuIA0KQFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgc2hvdWxkIEkgcmVzZW5kIHRo
ZSBzZXJpZXM/DQoNCkFudXNoYSANCj4gPg0KPiA+DQo+ID4gIyMjIyBTdXBwcmVzc2VkICMjIyMN
Cj4gPg0KPiA+ICAgVGhlIGZvbGxvd2luZyByZXN1bHRzIGNvbWUgZnJvbSB1bnRydXN0ZWQgbWFj
aGluZXMsIHRlc3RzLCBvciBzdGF0dXNlcy4NCj4gPiAgIFRoZXkgZG8gbm90IGFmZmVjdCB0aGUg
b3ZlcmFsbCByZXN1bHQuDQo+ID4NCj4gPiAgICogaWd0QGttc19idXN5QGJhc2ljQG1vZGVzZXQ6
DQo+ID4gICAgIC0ge2JhdC1kZzItOX06ICAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5d
WzRdDQo+ID4gICAgWzNdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV8xMTY4MS9iYXQtZGcyLQ0KPiA5L2lndEBrbXNfYnVzeUBiYXNpY0Btb2Rl
c2V0Lmh0bWwNCj4gPiAgICBbNF06DQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA0MjMzdjEvYmF0LWRnMi0NCj4gPiA5Lw0KPiA+IGlndEBr
bXNfYnVzeUBiYXNpY0Btb2Rlc2V0Lmh0bWwNCj4gPg0KPiA+DQo+ID4gS25vd24gaXNzdWVzDQo+
ID4gLS0tLS0tLS0tLS0tDQo+ID4NCj4gPiAgIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGlu
IFBhdGNod29ya18xMDQyMzN2MSB0aGF0IGNvbWUgZnJvbQ0KPiBrbm93biBpc3N1ZXM6DQo+ID4N
Cj4gPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+ID4NCj4gPiAjIyMjIElzc3VlcyBoaXQgIyMjIw0K
PiA+DQo+ID4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNrOg0KPiA+ICAgICAt
IGJhdC1kZzEtNTogICAgICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1GQUlMXVs2XSAoW2k5MTUj
NDQ5NF0gLw0KPiBbaTkxNSM0OTU3XSkNCj4gPiAgICBbNV06IA0KPiA+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzExNjgxL2JhdC1kZzEtDQo+IDUvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5nY2hlY2suaHRtbA0KPiA+ICAgIFs2XTogDQo+ID4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA0MjMzdjEv
YmF0LQ0KPiBkZzEtNS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGhhbmdjaGVjay5odG1sDQo+ID4g
ICAgIC0gYmF0LWRnMS02OiAgICAgICAgICBbUEFTU11bN10gLT4gW0RNRVNHLUZBSUxdWzhdIChb
aTkxNSM0NDk0XSAvDQo+IFtpOTE1IzQ5NTddKQ0KPiA+ICAgIFs3XTogDQo+ID4gaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTE2ODEvYmF0LWRnMS0NCj4g
Ni9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGhhbmdjaGVjay5odG1sDQo+ID4gICAgWzhdOg0KPiA+
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwNDIz
M3YxL2JhdC1kZzEtDQo+ID4gNi8gaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5nY2hlY2suaHRt
bA0KPiA+DQo+ID4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbW1hbjoNCj4gPiAgICAgLSBm
aS1iZHctNTU1N3U6ICAgICAgIFtQQVNTXVs5XSAtPiBbSU5DT01QTEVURV1bMTBdIChbaTkxNSM1
NzA0XSkNCj4gPiAgICBbOV06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzExNjgxL2ZpLWJkdy0NCj4gNTU1N3UvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZUBtbWFuLmh0bWwNCj4gPiAgICBbMTBdOg0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwNDIzM3YxL2ZpLWJkdy01DQo+ID4gNTUNCj4g
PiA3dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQG1tYW4uaHRtbA0KPiA+DQo+ID4gICAqIGlndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVAcmVxdWVzdHM6DQo+ID4gICAgIC0gZmktYmxiLWU2ODUwOiAgICAg
ICBbUEFTU11bMTFdIC0+IFtETUVTRy1GQUlMXVsxMl0gKFtpOTE1IzQ1MjhdKQ0KPiA+ICAgIFsx
MV06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzExNjgxL2ZpLWJsYi0NCj4gZTY4NTAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXF1ZXN0cy5o
dG1sDQo+ID4gICAgWzEyXToNCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMDQyMzN2MS9maS1ibGItZQ0KPiA+IDY4IDUwL2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVAcmVxdWVzdHMuaHRtbA0KPiA+DQo+ID4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVAdm1hOg0KPiA+ICAgICAtIGZpLWJkdy01NTU3dTogICAgICAgW1BBU1NdWzEzXSAtPiBb
SU5DT01QTEVURV1bMTRdIChbaTkxNSM1NjgxXSkNCj4gPiAgICBbMTNdOiANCj4gPiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMTY4MS9maS1iZHctDQo+
IDU1NTd1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAdm1hLmh0bWwNCj4gPiAgICBbMTRdOg0KPiA+
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwNDIz
M3YxL2ZpLWJkdy01DQo+ID4gNTUNCj4gPiA3dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHZtYS5o
dG1sDQo+ID4NCj4gPiAgICogaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtbW9kZXNldEBhLWVk
cDE6DQo+ID4gICAgIC0gZmktdGdsLXUyOiAgICAgICAgICBbUEFTU11bMTVdIC0+IFtETUVTRy1X
QVJOXVsxNl0gKFtpOTE1IzQwMl0pICsxIHNpbWlsYXINCj4gaXNzdWUNCj4gPiAgICBbMTVdOiAN
Cj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMTY4
MS9maS10Z2wtDQo+IHUyL2lndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXRAYS1lZHAx
Lmh0bWwNCj4gPiAgICBbMTZdOg0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEwNDIzM3YxL2ZpLXRnbC11DQo+ID4gMi8gaWd0QGttc19mbGlw
QGJhc2ljLWZsaXAtdnMtbW9kZXNldEBhLWVkcDEuaHRtbA0KPiA+DQo+ID4gICAqIGlndEBydW5u
ZXJAYWJvcnRlZDoNCj4gPiAgICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIE5PVFJVTiAtPiBbRkFJ
TF1bMTddIChbaTkxNSMzNjkwXSkNCj4gPiAgICBbMTddOiANCj4gPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDQyMzN2MS9maS1pY2wtDQo+IHUy
L2lndEBydW5uZXJAYWJvcnRlZC5odG1sDQo+ID4gICAgIC0gZmktYmxiLWU2ODUwOiAgICAgICBO
T1RSVU4gLT4gW0ZBSUxdWzE4XSAoW2ZkbyMxMDkyNzFdIC8gW2k5MTUjMjQwM10gLw0KPiBbaTkx
NSM0MzEyXSkNCj4gPiAgICBbMThdOg0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwNDIzM3YxL2ZpLWJsYi1lDQo+ID4gNjgNCj4gPiA1MC9p
Z3RAcnVubmVyQGFib3J0ZWQuaHRtbA0KPiA+DQo+ID4NCj4gPiAjIyMjIFBvc3NpYmxlIGZpeGVz
ICMjIyMNCj4gPg0KPiA+ICAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMEBzbWVtOg0K
PiA+ICAgICAtIHtmaS1laGwtMn06ICAgICAgICAgW0RNRVNHLVdBUk5dWzE5XSAoW2k5MTUjNTEy
Ml0pIC0+IFtQQVNTXVsyMF0NCj4gPiAgICBbMTldOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMTY4MS9maS1laGwtDQo+IDIvaWd0QGdlbV9l
eGVjX3N1c3BlbmRAYmFzaWMtczBAc21lbS5odG1sDQo+ID4gICAgWzIwXToNCj4gPiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDQyMzN2MS9maS1l
aGwtMg0KPiA+IC9pIGd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczBAc21lbS5odG1sDQo+ID4N
Cj4gPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndF9oZWFydGJlYXQ6DQo+ID4gICAgIC0g
ZmktdGdsLTExMTVnNDogICAgICBbRE1FU0ctRkFJTF1bMjFdIChbaTkxNSM1MzM0XSkgLT4gW1BB
U1NdWzIyXQ0KPiA+ICAgIFsyMV06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzExNjgxL2ZpLXRnbC0NCj4gMTExNWc0L2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAZ3RfaGVhcnRiZWF0Lmh0bWwNCj4gPiAgICBbMjJdOg0KPiA+IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwNDIzM3YxL2ZpLXRnbC0x
DQo+ID4gMTEgNWc0L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfaGVhcnRiZWF0Lmh0bWwNCj4g
Pg0KPiA+ICAgKiBpZ3RAa21zX2J1c3lAYmFzaWNAbW9kZXNldDoNCj4gPiAgICAgLSB7YmF0LWFk
bHAtNn06ICAgICAgIFtETUVTRy1XQVJOXVsyM10gKFtpOTE1IzM1NzZdKSAtPiBbUEFTU11bMjRd
DQo+ID4gICAgWzIzXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fMTE2ODEvYmF0LWFkbHAtDQo+IDYvaWd0QGttc19idXN5QGJhc2ljQG1vZGVz
ZXQuaHRtbA0KPiA+ICAgIFsyNF06DQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA0MjMzdjEvYmF0LWFkbHANCj4gPiAtNg0KPiA+IC9pZ3RA
a21zX2J1c3lAYmFzaWNAbW9kZXNldC5odG1sDQo+ID4NCj4gPiAgICogaWd0QGttc19mbGlwQGJh
c2ljLWZsaXAtdnMtZHBtc0BhLWVkcDE6DQo+ID4gICAgIC0gZmktdGdsLXUyOiAgICAgICAgICBb
RE1FU0ctV0FSTl1bMjVdIChbaTkxNSM0MDJdKSAtPiBbUEFTU11bMjZdICsxIHNpbWlsYXINCj4g
aXNzdWUNCj4gPiAgICBbMjVdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV8xMTY4MS9maS10Z2wtDQo+IHUyL2lndEBrbXNfZmxpcEBiYXNpYy1m
bGlwLXZzLWRwbXNAYS1lZHAxLmh0bWwNCj4gPiAgICBbMjZdOg0KPiA+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwNDIzM3YxL2ZpLXRnbC11DQo+
ID4gMi8gaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtZHBtc0BhLWVkcDEuaHRtbA0KPiA+DQo+
ID4NCj4gPiAgIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMg
aXQgaXMgaWdub3JlZCB3aGVuDQo+IGNvbXB1dGluZw0KPiA+ICAgICAgICAgICB0aGUgc3RhdHVz
IG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4NCj4gPg0K
PiA+ICAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDkyNzENCj4gPiAgIFtmZG8jMTExODI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExODI3DQo+ID4gICBbaTkxNSMyNDAzXTogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjQwMw0KPiA+ICAgW2k5
MTUjMzU3Nl06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
LzM1NzYNCj4gPiAgIFtpOTE1IzM2OTBdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsL2lzc3Vlcy8zNjkwDQo+ID4gICBbaTkxNSM0MDJdOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80MDINCj4gPiAgIFtpOTE1IzQzMTJdOiBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80MzEyDQo+ID4g
ICBbaTkxNSM0NDk0XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9p
c3N1ZXMvNDQ5NA0KPiA+ICAgW2k5MTUjNDUyOF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ1MjgNCj4gPiAgIFtpOTE1IzQ5NTddOiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80OTU3DQo+ID4gICBbaTkxNSM1
MTIyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTEy
Mg0KPiA+ICAgW2k5MTUjNTMzNF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aW50ZWwvaXNzdWVzLzUzMzQNCj4gPiAgIFtpOTE1IzU2ODFdOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy81NjgxDQo+ID4gICBbaTkxNSM1NzA0XTogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTcwNA0KPiA+DQo+
ID4NCj4gPiBCdWlsZCBjaGFuZ2VzDQo+ID4gLS0tLS0tLS0tLS0tLQ0KPiA+DQo+ID4gICAqIExp
bnV4OiBDSV9EUk1fMTE2ODEgLT4gUGF0Y2h3b3JrXzEwNDIzM3YxDQo+ID4NCj4gPiAgIENJLTIw
MTkwNTI5OiAyMDE5MDUyOQ0KPiA+ICAgQ0lfRFJNXzExNjgxOiBiYTM2OTg1NWQ4NTdmOThmZTVh
MWRhMWExMDcwMDY4OTFjN2QzN2UwIEANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4DQo+ID4gICBJR1RfNjQ4MzogNDNlNTA5ZjQwOGQ0YTViY2M1MDcwZjZiODRk
YTQyYTdjMzgwMWU4ZCBADQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaWd0
LWdwdS10b29scy5naXQNCj4gPiAgIFBhdGNod29ya18xMDQyMzN2MTogYmEzNjk4NTVkODU3Zjk4
ZmU1YTFkYTFhMTA3MDA2ODkxYzdkMzdlMCBAIA0KPiA+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL2dmeC1jaS9saW51eA0KPiA+DQo+ID4NCj4gPiAjIyMgTGludXggY29tbWl0cw0KPiA+
DQo+ID4gNjZlNzc3OTczZDdhIGRybS9pOTE1L2RnMjogRW5hYmxlIERDNQ0KPiA+DQo+ID4gPT0g
TG9ncyA9PQ0KPiA+DQo+ID4gRm9yIG1vcmUgZGV0YWlscyBzZWU6DQo+ID4gaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA0MjMzdjEvaW5kZXguaHQN
Cj4gPiBtbA0KPiANCj4gLS0NCj4gTWF0dCBSb3Blcg0KPiBHcmFwaGljcyBTb2Z0d2FyZSBFbmdp
bmVlcg0KPiBWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50DQo+IEludGVsIENvcnBvcmF0aW9u
DQo=
