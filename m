Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF7BB2F0DB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 10:20:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD0710E2EC;
	Thu, 21 Aug 2025 08:20:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aJnreNBt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD54C10E2EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 08:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755764452; x=1787300452;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=EnQrzFqNAg+IhqjO/1KPJmDgZpLtLegXtFDggcrKT/E=;
 b=aJnreNBtGgBy3qkhEOItBhyq4aWfoC7D2vrPRw6voCdJh8D+Qy4oHBBE
 I16OHGHjr+TpIoPY/ptWWllEZ9O9MAo2BUjCCboDZiyMuvIXXK0ExEa7G
 QTYsyiBU6iiOtxngzFLhRsd5fzDxzLFMtPQCfdWF9lsTCH36ZBUV2XxYh
 IuBBOEc2ij40oqqSoN9odwGR6S6SLs/ssNU5ZSL61bVWCCcPIAI7a+lCE
 7gcd7OlsG5x8WFHNWIH2U/zb4C9nN/3K/GN8N3MDkB36kyLbcA2DLydWc
 2p0EbdpFfH2pKDJX9l/L4xUwuh3v3f8uuLhVtE2Bw2IscJ7dVjWyJASEv A==;
X-CSE-ConnectionGUID: g8pJhmGoT+aQCzPlcZQsEw==
X-CSE-MsgGUID: DncWKh3XQ7+MhGLeH2Izdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57972351"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="57972351"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 01:20:51 -0700
X-CSE-ConnectionGUID: IHGTUr3hTcCqaTs7VEiDCg==
X-CSE-MsgGUID: hWQPahX5SpqLzDTYSMv5jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="172771197"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 01:20:51 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 01:20:50 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 21 Aug 2025 01:20:50 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.75)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 01:20:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QONVaKbHrtBLWWxVBuGeFyz+nTbQPZYs+z/gS2ikf74O7HpyhubFw2pevp99a7B0P2vP9WKQMDGSFDr0p75V0Rhwljut7mmfkblC0+Znlm1s1agiyA5XOc9VZ9SMQcMiKWJkYeJyRtLy+70Vd9WpGZbU9Z5dW6FqIfk8A375vWR9pReBNHw4Ar7pX47ofcAnCGnxj1iLrdsWDk/6UR+UQcF48AYK2ispF292wRmUyAYjpm+0CkXCmPQlUx1zyBMODKSNFIVrElX0hzzOoJ0yHWKOZfaWgxRxaf2kgtLUMidgTbzpVp9iYXD98c9XxnMmHPu2Uby/OGtiS7tbeZ9Vag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+++WssORJUnsLGQJUOWdqapvXFVJjiCOa66dZ0SxVyY=;
 b=pzO+h20iRELUJ2lIpvToYjmpEvMxFQVhQ8rAvN73MIX/AeVWO9nxbH/1V5KwWTe+9peC5MOahv4CNgdBjMHm3F9HQpAEq53gOU6BqP0D1FaRqrAWAwaHYbqHJaveNs65iTWtuRju4xuHwgeUL3qCtyNyUQjlgLXzWWw9YEwVGFvSgkQ+Jt5luVnS7NGFcZW/4oe/HnMEt6/dv20jJNDhjIW7heO8v8QzoBXmakjN9lpodpgwRek0cnZr6ELwxe5PnMNRwbEsc5IN/7qkNYuu747FO4cN33zkbGz5CohbOwzb/HNHB7GtLtvCKgltK6GJ9qDm1/B6NB1N+QawAOua3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7578.namprd11.prod.outlook.com (2603:10b6:8:141::16)
 by PH7PR11MB6523.namprd11.prod.outlook.com (2603:10b6:510:211::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Thu, 21 Aug
 2025 08:20:48 +0000
Received: from DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c]) by DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c%6]) with mapi id 15.20.9031.024; Thu, 21 Aug 2025
 08:20:48 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Srinivas, Vidya" <vidya.srinivas@intel.com>
Subject: RE: [v2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Thread-Topic: [v2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Thread-Index: AQHcCEUm9Fy+YSVf00m6A/DK18MRZLRYgEOAgAR7VKCABXd7AIAKY/rA
Date: Thu, 21 Aug 2025 08:20:47 +0000
Message-ID: <DS0PR11MB75789AE9BDC76198EA639026A332A@DS0PR11MB7578.namprd11.prod.outlook.com>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250808091602.288323-1-shawn.c.lee@intel.com> <aJXF7egTCfx5bAgg@ideak-desk>
 <DS0PR11MB75788D5F17FD96B9CCAEE8A7A328A@DS0PR11MB7578.namprd11.prod.outlook.com>
 <aJ4eWGuiMc8FhiNx@ideak-desk>
In-Reply-To: <aJ4eWGuiMc8FhiNx@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7578:EE_|PH7PR11MB6523:EE_
x-ms-office365-filtering-correlation-id: 0f02170a-7c30-478b-c272-08dde08ba1fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Bz8dnleYnKc7kafrksrClocc2WUfF5XczqoXEneHjeOEmic1qkwL0r6LHWHO?=
 =?us-ascii?Q?ASHXCG29lfmwkU9ajb+m8blo1D7FhNJL1vhnyAyaOFCU+kW6ISR/Ji0TzacU?=
 =?us-ascii?Q?YQxtYyxEf6loUAeQxVNnlMz0IgJsqThLbth5zyqqAqWt5vyo/ySsjm3YlWu2?=
 =?us-ascii?Q?e6j7T0ilK5V5i9NS7Tt4ZuBiDSptqZl5vjN/15uy8z2/PxSYMHGkl9LKVq0t?=
 =?us-ascii?Q?5hFgVMwHVnicOSqH3Ma0bqtZCuf3V0h8qGLqxvEvT2pzMfhMkuXe1cqku/Rj?=
 =?us-ascii?Q?6+YN9ewLb/4TNFb59r6COVzmS01L8838U/X5kCPIUgDJdjLNdLxxTQuwleXb?=
 =?us-ascii?Q?as6oXRPeiqr88DtI2f+dfI4dg5Ib1LKsvrgxhKizCxo/sfLU10R64hG3ekoE?=
 =?us-ascii?Q?NAwbAJlAmDgsGs3adGZa+kpGqKiT7s/P+Ry5Ta6GhTh6e1HOy96LIzbL8LUU?=
 =?us-ascii?Q?1+B0aB2A8mnWNuaDzt9AQbjv+xlX4mt6FmAY+65dpO42T+Libu2x3rJJCKgu?=
 =?us-ascii?Q?UZnpPoTCOwr2TSlBQVhQeQ4pahungQARaMl7VMYD4SLXjVjWl5FCRnr/44yQ?=
 =?us-ascii?Q?QqHg4BOODHjFctTZ30Z3LPGuERhs3hIQ0GIj1DUIPQjF/8oavkfWWEzRd+YP?=
 =?us-ascii?Q?qQWnDGAwqcYimXMeXZ+QIMFJqJXrvbwKB4+Tjt/RXkkDb2YYk8A3quixwT3t?=
 =?us-ascii?Q?g/l/JLe63Qso8DiHjMHR5oO50O59Q9swfCYzTl5fEJhAxe38N72rsYJ1C4/K?=
 =?us-ascii?Q?iiEbRHxxRO8T3KENwHZ45+SJWJk6ebGqlDVSr7xoFPcxSepSdXO1rMHffYdE?=
 =?us-ascii?Q?0JtsMN9SplUT/MBcLirvKytNY/0kFYJR9lY6+BXXtVS0PybuoiWuuSoG9Cxj?=
 =?us-ascii?Q?rJhP4+CVfQlaHjtMpcpOf78u8/hvXmvc/smsmDsPmZOgG3hMJ4JqbcC6hCmg?=
 =?us-ascii?Q?CyEmmt+K7Yju8e9G8HnbtRBsCJd4aIuqPq4Jx1/571JYWMiGsKk6UZjV4B0v?=
 =?us-ascii?Q?TGtBkKVVoiYAq+sPrkkDXPbVf1l4gVfi4s2SQzPVOOSdQKoplpii4Jgoumga?=
 =?us-ascii?Q?quNglJ2eEU4yOmlH0DT1aCaM0hEujDqCcZB2BS5RDNWS73I7+ISdfUCbyY7x?=
 =?us-ascii?Q?NVL3QuF/KtHlguGaU+BUAic1KCbdC1mDup3bOmSYKtec7dPtHZBlA6i/1hoa?=
 =?us-ascii?Q?cVFkbtTSo4Ty4EwtQcjk+tJXr19Gh/FH9neh9swcxcigiWDbXPx/isnQIFOM?=
 =?us-ascii?Q?8RUhbszVmzzZ2zMMdDcxSOBMUugNAjdhbcMD2voVkwgSeZrLLSyntJevOesL?=
 =?us-ascii?Q?ryKigJ8s21J5c+dJTYwk0ci0xoNd3MdAciceSfhYRkt3kvSW7mrKpAKtJl3m?=
 =?us-ascii?Q?TJ52w2Wk3a+zvJUKCOhAhT4XSw8VCePc76Q78r2uveggA4Oz63cq4ONDF3UN?=
 =?us-ascii?Q?45Jepge96p53coMet9+PbKUOkocmLoJQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7578.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7AjM7F5qzPTThjdoXRQYNzwFMPuTuNeCU5oovXT90EDVOl2RQOJIcB3OKl4F?=
 =?us-ascii?Q?F7ENBuGViDFpd7aEbyA+I2BJaXIP4YemAF7yDBRaEEtWgRA+liHR2+BO3uMg?=
 =?us-ascii?Q?l0SbCMMPszpZ3RNRV8jwtPSXasg4zGno1dwzq7d2lcnRpx98JqXhWZNb8A+b?=
 =?us-ascii?Q?ZNXgZd6G/Ukj402R1avt63dfpk41Bq9daD+AYhL8RmD/037e602nn71OAbcA?=
 =?us-ascii?Q?qdlnIKzJRykQuqqD8SUBubH7f/mjKDy6M/tjelWYbkqVzgsR/5qpArCNh5kI?=
 =?us-ascii?Q?v17x1pMI/+ubLXxnGzVZjmSlXecbgYFSFRCQpV/a7jnzub8v7i2FZ5oanb4j?=
 =?us-ascii?Q?QGTcD3xDfbJwrABezgzdBwQiBLNCLff7GOOfCmYb3n2FbnuWZdCN4WtSI5jW?=
 =?us-ascii?Q?wHu01S+PGePLA5KukVKFXNQJgzTGAG/IWADxACVcPPk/GXYsy8j85RPP1LTr?=
 =?us-ascii?Q?G6USVZihraNUux6iXTL0IJxw7xIR/MczlaMXtoblq2TtfJPG+8lQJgijIzXB?=
 =?us-ascii?Q?dcz6Vvg7tgx+dw8c99bJLEFBWXDY0WCAGWNumJB9NRRwCCLZfk7HV78hpatT?=
 =?us-ascii?Q?KwyWpkypPJ54u+/175zF2KMsShjRBpyLgYqieTsxD6UY1n8HitmOFi6qL+Ra?=
 =?us-ascii?Q?wmocxRpv18npdWKNu8xMtDyciQw5cAtP8U+oMhk2NadhAzC6SdRnAIA/sp4Q?=
 =?us-ascii?Q?BBrU5kjjfmFWgpkczfxAvQkeFYAT8zbcx1bfMNgD99gPe+5qqoZM/rbT36P/?=
 =?us-ascii?Q?fFAM7OGXxIlUE0I61SRPxCm+vF4xRDk4Hy+bs69tPdmLYdGNcvEQHHG/7jq1?=
 =?us-ascii?Q?9+6iKF5Zt9ByV1tG/gCn/juAu/ryow9ym4tyWJSfNOH08izvyyJWRYQ3wswg?=
 =?us-ascii?Q?IMs5mVHbaEdABrDPM2LQaZSvXdEVZLQDQvr/GNvOINIApJTlm9Lbi/Wznzwr?=
 =?us-ascii?Q?EQIBrmDyFfyI+DEP0ebArWdctYx/jxx6+smJCQYEBdE8dNNrly/ZNKQdc3th?=
 =?us-ascii?Q?Ie7BX9sW8Psy4PjG7Z23uqpR4OSgPlQ1HOTonVU1CjDfPs8CwC++rtCA3Dn3?=
 =?us-ascii?Q?NQ8I8mJiD9lKQ9LkZ6dgre57LTVnOvkuZ0485iMEiI51H0XZw75GwyKpXqaX?=
 =?us-ascii?Q?ic1Wrs/m1zCZ+LMGxzV9u+N1yK92CBT70fB3IqHp2TvH7AqAUSwDBSciB/QF?=
 =?us-ascii?Q?0KV3V7DAAWln9CbfGelnoP6+/p4oEc/ef3x/aG5vXAcR4r5g7hIrxC6tcpXK?=
 =?us-ascii?Q?kU9Wdjuj4/lReZM2NurN4bafgY76TO0UAZ78eTFzWY2JJ5hmBwH7Hb3MVR7A?=
 =?us-ascii?Q?/yaGq02Z7Eb7dSCKDHzU4YuYzbU54BEl7XOgTMUGgp4QoijKcI+DEeFaYElG?=
 =?us-ascii?Q?/jSYfH6NgVvIQ78lGY1T9nYLT+/Prlc7TzUm+w/C3fE3rv8cM9zr93Zmxkej?=
 =?us-ascii?Q?MWHfYbQDRdgtLEIPr+sdc9n76LOrlKgGJIRDkMoPD/+O5tTEi//PoEhgGG/r?=
 =?us-ascii?Q?cNJwJVPDvVwUqMH1HGrQeyU0UUXl+5cLPxYUMsjSkbo5nOY4+s/gcChbyJIS?=
 =?us-ascii?Q?g3Li5CpxqgliTTwNDqEB1oZdG2KDRLK9PUlRAD2p?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7578.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f02170a-7c30-478b-c272-08dde08ba1fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 08:20:47.8590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IyMAXvQHACnpDdDQ6m8QYni4J0x6y1SYtibaqtwxdFBWATbqS5kouvBRMNCj5L5DI2FdvvIi+JL5Fh5p0TnjPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6523
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
Reply-To: "20250808091602.288323-1-shawn.c.lee@intel.com"
 <20250808091602.288323-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 15, 2025 at 09:35:00AM +0000, Imre Deak C wrote:
>On Mon, Aug 11, 2025 at 09:46:55AM +0300, Lee, Shawn C wrote:
>> On Fri, Aug 08, 2025 at 09:40:00AM +0000, Imre Deak C wrote:
>> >On Fri, Aug 08, 2025 at 09:16:02AM +0000, Lee Shawn C wrote:
>> >> While performing HDMI compliance testing, test equipment may=20
>> >> request different bpc output for signal measurement. However,=20
>> >> display driver typically determines the maximum available bpc based o=
n HW bandwidth.
>> >>=20
>> >> Introduce a new debugfs that allows user to configure dedicated bpc=20
>> >> manually, and making HDMI compliance test much easier.
>> >>=20
>> >> v2: Using exist variable max_requested_bpc.
>> >
>> > How come this doesn't get reset after a hotplug as you described for=20
>> > the case when the property is used, even though both the property=20
>> > and this debug entries use the same state variable? (Not saying that=20
>> > the reset happing after a hotplug is a valid justification for a new=20
>> > debugfs entry, the hotplug could be also handled by the user, but=20
>> > you could argue the debugfs entry is more convenient.)
>>=20
>> Hi Imre, thank you for the prompt response.
>>=20
>> https://elixir.bootlin.com/linux/v6.16/source/drivers/gpu/drm/i915/dis
>> play/intel_hdmi.c#L2672
>>
>> The max_bpc_property and max_bpc values are initialized during=20
>> connector initialization process.
>>=20
>> https://elixir.bootlin.com/linux/v6.16/source/drivers/gpu/drm/drm_atom
>> ic.c#L468
>>
>> The max_bpc will be restored to info->bpc (from EDID) at
>> drm_atomic_connector_check() everytime.
>>=20
>> When max_bpc_property is available, this funciton also compares=20
>> max_bpc with max_requested_bpc and updates max_bpc to the smaller of=20
>> the two values.
>>=20
>> The i915 display driver then relies on this max_bpc value to determine=20
>> whether to update the pipe bpp value in compute_sink_pipe_bpp().
>> Therefore, we can simply update max_requested_bpc to affect pipe bpp=20
>> output. And no additional driver changes are required.
>
>The point above was to figure out how the "max bpc" connector property get=
s reset after a hotplug, based on your earlier explanation for the reason t=
o add a debugfs entry instead. But based on the above and also based on my =
tests, that connector property actually keeps its value across hotplugs.
>
>So I think that the property could be used for your tests then, or if you =
wanted to have a debugfs entry for convenience, then the intel_force_link_b=
pp debugfs entry could be added for all HDMI connectors, as suggested earli=
er, instead of adding a new debugfs entry.
>The following would do that, could you give it a go?

Hi Imre,

Thanks! Your change works well. And we don't need to create new debugfs to =
force HDMI bpp.=20

Best regards,
Shawn

>
>diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i91=
5/display/g4x_hdmi.c
>index 108ebd97f9e4..b31fb1e4bc1a 100644
>--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
>+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
>@@ -136,11 +136,8 @@ static int g4x_hdmi_compute_config(struct intel_encod=
er *encoder,
> 	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state->u=
api.state);
> 	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>
>-	if (HAS_PCH_SPLIT(display)) {
>+	if (HAS_PCH_SPLIT(display))
> 		crtc_state->has_pch_encoder =3D true;
>-		if (!intel_fdi_compute_pipe_bpp(crtc_state))
>-			return -EINVAL;
>-	}
>
> 	if (display->platform.g4x)
> 		crtc_state->has_hdmi_sink =3D g4x_compute_has_hdmi_sink(state, crtc); d=
iff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i91=
5/display/intel_hdmi.c
>index cbee628eb26b..027e8ed0cea8 100644
>--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>@@ -55,6 +55,7 @@
> #include "intel_display_regs.h"
> #include "intel_display_types.h"
> #include "intel_dp.h"
>+#include "intel_fdi.h"
> #include "intel_gmbus.h"
> #include "intel_hdcp.h"
> #include "intel_hdcp_regs.h"
>@@ -2345,6 +2346,9 @@ int intel_hdmi_compute_config(struct intel_encoder *=
encoder,
> 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
> 		pipe_config->pixel_multiplier =3D 2;
>
>+	if (!intel_fdi_compute_pipe_bpp(pipe_config))
>+		return -EINVAL;
>+
> 	pipe_config->has_audio =3D
> 		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
> 		intel_audio_compute_config(encoder, pipe_config, conn_state); diff --gi=
t a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/dis=
play/intel_link_bw.c
>index 3caef7f9c7c4..9e8220d86a4a 100644
>--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
>@@ -449,6 +449,7 @@ void intel_link_bw_connector_debugfs_add(struct intel_=
connector *connector)
> 	switch (connector->base.connector_type) {
> 	case DRM_MODE_CONNECTOR_DisplayPort:
> 	case DRM_MODE_CONNECTOR_eDP:
>+	case DRM_MODE_CONNECTOR_HDMIA:
> 		break;
> 	case DRM_MODE_CONNECTOR_VGA:
> 	case DRM_MODE_CONNECTOR_SVIDEO:
>@@ -456,13 +457,6 @@ void intel_link_bw_connector_debugfs_add(struct intel=
_connector *connector)
> 	case DRM_MODE_CONNECTOR_DVID:
> 		if (HAS_FDI(display))
> 			break;
>-
>-		return;
>-	case DRM_MODE_CONNECTOR_HDMIA:
>-		if (HAS_FDI(display) && !HAS_DDI(display))
>-			break;
>-
>-		return;
> 	default:
> 		return;
> 	}
>

