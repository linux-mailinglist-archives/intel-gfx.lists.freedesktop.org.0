Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMklMVXz/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:29:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3144F7BBB
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 859F210F4E6;
	Fri,  8 May 2026 14:29:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P6lG6FDj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423AA10E0B9;
 Fri,  8 May 2026 14:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250577; x=1809786577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3oYEBsSvWzZyEpxzsa/z5cetHME8K9K+yXy42oUCXH8=;
 b=P6lG6FDjwCX1vMp3Ihy52muEHUeYuIWLCCsYy+cCny1UlJguULqJ+Pnz
 6TLK1Us9Jw101YAB7HbE6HxyXT3jGvMjLTdl7ysHiymjeFRjzpEflo2DP
 iCHUUKot3t1++4bpmTDw+M+Uu07Fnf3xaoR2Ym7r906cgdBV7if2A9/OB
 bNcYjKnbd4e3yVxLYqkcBbDl9AnoaTl8DFBDYroFxgFVCxaXoeMXq/TMN
 79sd8HplYbt4kzw3TzRAcxBNLk0LlFQGB7zn+TKk4UTeKN55klLZCZGMm
 qBK/2Yz3NdB35ui6PqLmhIIKhFfpboA1aQ74wOFRqlzcX6v7HVIJTZssx Q==;
X-CSE-ConnectionGUID: lme7cltVSautRapg/hq+0g==
X-CSE-MsgGUID: t9VZi+IBRfGKODZ8CqrkUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96643635"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96643635"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:29:37 -0700
X-CSE-ConnectionGUID: kRfUWsIxRNmh/5vMh8lL0A==
X-CSE-MsgGUID: z56kjjArQzauFLiCt6otfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="238564883"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:29:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:29:36 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 07:29:36 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.13) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:29:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yo5Mnmt3tXjWVjhku2ic1WtgLz94YghsMEQro3QQSoWCnVqLwSGiqzFXnDjdp9glFyfD/l6dmhei0kt8X6/uoEX45Suk5k1a6EJtkyd8SeY5OMfOoV5dyExLyM151YXJsVoo1Qku31zkWSFNBOAk9cE2xlZnfr2CY/SKlM1g5qNGxslGmJgVaEL1ayxt/CeaxlhUgxOmYa8u/vXT++H9/WY1coRdgzPoTiqU79i80jIcEVA54pvazbnxhC8u4PLWCZsW+vYvGEqttTdvuWFFDGTEcezFS1+YK5zNXA+t3Q2IiHwsaiYKbrzX6Iiq0Dtrch9MHsw6Qaa8pwgK2JpGFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3oYEBsSvWzZyEpxzsa/z5cetHME8K9K+yXy42oUCXH8=;
 b=et3U429KoVjcPqMUa6KRpfit2oROX14J2dxm9vcaAehRhDch6Cn+/WAO8rBBOULWVnXWLAxbbzVfDQdwf7/jBKNiJ9TLKdp2s3/tNfO7wJ3GvvKU4wjC3uDe0PSYT8iDedGy0OfSF5vg49J2jlzUmx+Wa7+TueCe0lHiho2wHU4ql+bTxjs8VusrYp9FSO9eI8hrP3I2GvnjrYe0C7GIo2gcQKWRfhopGLVDpNVkMGYM5sqsUhiqEtXGoXmrthHABZWgIATiHjh2b64yu2TKtqxvCiQDRYRsovvJn+Z4WiTxwQy0TWMkqZ2vdpNQCRPLksN/t2X4lebz+lDfQADmrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV3PR11MB8743.namprd11.prod.outlook.com (2603:10b6:408:20e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.20; Fri, 8 May
 2026 14:29:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9870.023; Fri, 8 May 2026
 14:29:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
CC: "sashiko-bot@kernel.org" <sashiko-bot@kernel.org>
Subject: Re: [PATCH 2/2] drm/i915/ddi: Fix cleanup after HDMI connector init
 failure
Thread-Topic: [PATCH 2/2] drm/i915/ddi: Fix cleanup after HDMI connector init
 failure
Thread-Index: AQHc3e+hEQ7TjffxukSVdD+XXM9Li7YEMkwA
Date: Fri, 8 May 2026 14:29:33 +0000
Message-ID: <f348388379810e126a436259cd9e59237fc8c4cf.camel@intel.com>
References: <20260507065940.2046690-1-imre.deak@intel.com>
 <20260507065940.2046690-2-imre.deak@intel.com>
In-Reply-To: <20260507065940.2046690-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV3PR11MB8743:EE_
x-ms-office365-filtering-correlation-id: 2fc520fc-1256-4ae5-2de3-08dead0e3984
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|38070700021|56012099003|3023799003|22082099003;
x-microsoft-antispam-message-info: 1dDFMrsH7VRF2+h0tTel9sFGcguZKGOMZ6uJt7zepy0sjE4q+1kx7LdPph87vEKsw/FnRGH0cuaSbEXmaQq0YqqP0DgsJfiaJawKYOTwi2ByhKXPlCfl4AqS3vfnqASe2pmCqBYv/l1AupphOiNGVxlHEtclmUtm98wJflRv7lSCN0kRGK2l7LHdzWFY6gZGI/YsAf4F48cqmFije2fzWm12Rj+zZ5amD7zbOmx2//a+8nni0IF9FHy14y32z4jxg5WQyk5nZ/rTn6HeLCqwvx40pfHdSC1IPdndmClRg6Jo97MpCPEGAzrigEoEa2fz1rUdeCTHWsQbiXTsZrMknAfLeeoaQa36cLHX36q74vskbBi4rR9jesRdgXDvhkqxmxjN+ui8eqiVR81mHBg4KQVSPPMPNtBa3Ifilp21VnFqjqZGQXOuxEQ8HLMqMmh3FgaFdj5Ju6kcV+PIhmkYCdF9q1nKzZvoNtJT3/sjh0W10TM5bUAnjHPnhJ92yCvIVop4x/o3DFgHmwJEPitBF2aVcQXzQhsOQA+lrngPiReKTFKKQZZdQ4ibKWZXoifU3fgFxljq6J3XqzdRUE2igm+v5xFMbAbaYmae6NcZVVpo4TvBHrFRCCtmikDjkU1bC9hCrr6ZwH1dmnd4jzqqdyTG+nODQxJQfHTmekcBfHePa3SceTimxkJdcE+lrYLwYygazAPPPfO0ahqoA4JZEsrmKtYviQPkWHH1XvLXVurycPLVNWvz0Id+CrDPrg9w
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(38070700021)(56012099003)(3023799003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aU95VWxRQUNmb3BlSkl5cW14QlJVbXo5eXpDOXRFZVVpYkFzVEZjRGQvK0FT?=
 =?utf-8?B?T3lSUm9TbktZWmxjRXJlajJoamZtV2lRQUg3T1IvUDAwK1F5L2gzMG9teHBm?=
 =?utf-8?B?YnZvVm0zT3BUSWlpNWdiTmowM3ZIeDV0aUhuSGh5MVFsbTJwTzhOMm1idGl0?=
 =?utf-8?B?QzlncStham9mTTk1QlF5YTFaZHRaSWprczRtU0V6aXZmR2NPK2pQeXJ5SlM5?=
 =?utf-8?B?NUUwOEEvQ2ZYQjNqQjU5ai9ERXZ3dWVNd2Y4c3J1c0p2c1dqbjNQZkdPNWdT?=
 =?utf-8?B?RU4zN3Z3cHUwM1U4QzRMYkJVRXh6K1dZNG5IZFI2OG42V1RySEI0VCs0alhD?=
 =?utf-8?B?VjJhaVBZR3BKNHg4V1VtQ296NlVMb05yaWx0c0tKcTBpMER4Mk8ySnN5OXYw?=
 =?utf-8?B?bk9WL0tOTUpVa2RmZDZoTlBRcm5WODBOMHNIcFhWcjlUVmxaeVpTQjNaR3Fh?=
 =?utf-8?B?Q0NGajRFVk52YUdUcExJbmlNN0FBeUpHdzN6YlA1d3d6YVZvUnQxU1pTbTIy?=
 =?utf-8?B?SlhrVFZlcEswNHViK3lEdzQ3ZlBhSUhiS3p2dFVhNFhjWDBxWlZKU3cyRWhl?=
 =?utf-8?B?dWNZM08wMmpSQjZ6dGNuTEhSbFh4UVJBdUdoMG9QU29TdS9ub2xkOFhQdnBT?=
 =?utf-8?B?RlRLV1g5WDhTTlpUcDlDS21kV2VydlVsQ0hkSnhFcVp3ZG5oY2lBR1dBanZC?=
 =?utf-8?B?Z0Noa0dTRncvN2FlbVMrUFlOOHJBcWZONnBra2tORlEzWnJ2aEJ0Q3dUYWgz?=
 =?utf-8?B?SGdKZEorRnRRby9vRkhCMmlVbHpKYjBMOGR3UEUzVksvUjg4UDd6V1dtQmZ5?=
 =?utf-8?B?YXpIbXNKSG81OVFjRElIRkFhc3BPckI4aHAra3ZuOFJ5NkY0UURsUXppSFZM?=
 =?utf-8?B?Tjg1a3g1S1NIUW40SjIrSmdYY2VNZkxjNnJjOEdjMEtndC9Wcjc5VGZqN3hw?=
 =?utf-8?B?QUNjSTlvRjQyR0dDSHdvdktEblVGYW5sQmR5Zi9Fd3g1UWxFdEMxZlFBZ0x2?=
 =?utf-8?B?dEhlajFDak9Cekp2K2plUlBEZlR1cmVVeHBJOUdpem9kMWh1ekpsMnUzU0pC?=
 =?utf-8?B?eG8yajhoNS9UV2ZxVXhiQWNvQ0ZHVzNKMVJ2RmlTK1hCRUUra0NFVmhYbi9R?=
 =?utf-8?B?cmhMZTN2Q3BvZEVsRGlVemF3VktHcnFaeHc0WG9oMkJuY3VTRThEMGlYdkZD?=
 =?utf-8?B?T3dJaTV3OWVWbHk2UU03UE5QdklrZmlrSVlpK0FBdGQ5dGFqS3hMdS8wZEMz?=
 =?utf-8?B?clNHMFZETTZ4YllMMmY3NlE1RzNjZWdPZDA0NW5zYjJHRUZFMlBXczBRcS9n?=
 =?utf-8?B?YTFoYW9zeHZEdjFSb2dlVXlKZytRWHFSY2UwWmpWNXdaTnBTeU02M25rK0Rj?=
 =?utf-8?B?TS9jeXYzZ3RlUXFNRGlPSDJNOGl2bDl4OHNWbEUxcytPUldYL0J3ZWJsNmpB?=
 =?utf-8?B?RWhnTWQyNVgvNjk3a0FqMWY0YkhOTTkzNTVtMExyTTNFS1F2WERXTTlhOEpM?=
 =?utf-8?B?RFl4eDNtZDNmQlJseG5ycjFVYTlCcis3Q2QzUEVrRjlyWkpLVXNFWCt1enBQ?=
 =?utf-8?B?MkFMc013NUpQcmlPSktQQm10RjZSTlNzZnJDN3JucDBZaGZucW1EYjREZ3hB?=
 =?utf-8?B?eHp1NW1GdG4yajhxYkdqNWN4WmRkNno5Rmd3QjhneElXNHhUa3g1MFNDUnRi?=
 =?utf-8?B?QnRKL0J0anBtU1Q0cysrMHVWcWp1ajlQdEI1Y2daRUh5V0hzMEdRdlh4c3Ew?=
 =?utf-8?B?dDZCN2N0cHBhTDhJSzhwRENhalpWUHhxa09samFQTEFkZVpWWnlMYkxEZkZr?=
 =?utf-8?B?WVY3WStqNE5Cd1RPYWl6RXY3Tm84WmdKbFg4OHlPVVAzelhId1YxTDhTRHRl?=
 =?utf-8?B?T0lEYS9vemV2b3lRL3BPaEVCOHlXcTdudnFvOWdleE5CQmRZaE9rVUlnc2Nm?=
 =?utf-8?B?ZDVXT2ZSK0ZSYlhCaFFwbW0vYkdxdytMVTRLMW9GWlFaYVNxR2NVbW5lUENP?=
 =?utf-8?B?VlNKRDBGZXJBQjV0U1dwSkpqVkpuaHYwS1EzOHpoSUpPNTNuaUkxclFGQ3FN?=
 =?utf-8?B?ZC91NW1BN2hNaFhhdXEydUI0aElMT1k1ZDc5NUpUcDJLMVBhMnFUYzFoYk10?=
 =?utf-8?B?VDNSakg3RFZIS1JaS0ZXUEJjSm1NWUs5QWd1L1J0eGxuZ013MC9mcDhDM2FU?=
 =?utf-8?B?azlnZFJldk8rVnlLOGhVMmxwTEFXb2NoZnVSbWRNdURCTUpLWmtINkd2RFla?=
 =?utf-8?B?RjNZcjZ2TDRvSVhZYldvM1hYV216akhPK0Fna1JOQ1ZuVXhXWXI0bHVzQmZG?=
 =?utf-8?B?QXkybHJ4Y0xVRGNBbEtrdG5qTVBjeXdPaHhSUkpld2xEVUFlWDVuNnlyR3Fn?=
 =?utf-8?Q?Nk3uayinmo3DrLHE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9EF9D7692FE427428A7612904CF11AB9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nM/DgW/h+PYDG7zgSuzGVGZWAYB8JttWL2nqjzZYHRuK36+MLFyCJnu4L0BgpNm6vw3ElntKmuPbht1rE1i/OcLxRQk+yRR53w5u0r9bUbiEYNxHIZPkKuOOnD7qv1z7gt7omidLAL3bHUKTGG5hZoB1Rx6yPMu8D1OUavzSODtuzF0gT+vyyesqLW1uQQeA9kABYGpmGiWkSCcLjAFXYQ4aCilzw8UPi5b6zoGto9A7rV8mbAAm23DEERw5j/9DX1u9A6X1+rkpRXeMm3uY2T/BJlEBRusiLV0Z0uGd7oW/KgOAwQXTc9fClBQb0OmgJDSn37Wt8vWjuDnhNm/sIg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fc520fc-1256-4ae5-2de3-08dead0e3984
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 14:29:33.9138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qn6uKn6sDvG+YQ5T+NPbnr+b7NHEQnoXDOyAWomNjUADcPUAySsDrhJ/DUrtQ9xh7015eI5LviNGUpJEpLQvvYNYk5BW6gg9jBZ2WLY/Dno=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8743
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
X-Rspamd-Queue-Id: 2E3144F7BBB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gVGh1LCAyMDI2LTA1LTA3IGF0IDA5OjU5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFBl
cmZvcm0gdGhlIG1pc3NpbmcgRERJIERQIGNvbm5lY3RvciBjbGVhbnVwIHN0ZXBzIGFmdGVyIEhE
TUkNCj4gY29ubmVjdG9yDQo+IGluaXRpYWxpemF0aW9uIGZhaWx1cmUgZHVyaW5nIERESSBlbmNv
ZGVyL2Nvbm5lY3RvciBpbml0aWFsaXphdGlvbi4NCj4gDQo+IFRoaXMgZml4ZXMgdGhlIGxlYWtl
ZCBEUCBNU1QgZW5jb2RlciwgQVVYIHN0YXRlLCBhbmQgY29ubmVjdG9yDQo+IG9iamVjdC4NCj4g
DQo+IFJlcG9ydGVkLWJ5OiBTYXNoaWtvIDxzYXNoaWtvLWJvdEBrZXJuZWwub3JnPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxNCArKysrKysrKysrKysr
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgIHwgMTMgKysr
KysrKysrKysrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaMKg
IHzCoCAzICsrKw0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
DQo+IGluZGV4IGUzN2NjMzJlZTgzZWQuLmNkNjFkZGI3ZjQ2OTYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtNDcyOSw2ICs0NzI5LDE1IEBA
IHN0YXRpYyBpbnQgaW50ZWxfZGRpX2luaXRfZHBfY29ubmVjdG9yKHN0cnVjdA0KPiBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiDCoAlyZXR1cm4gMDsNCj4gwqB9DQo+IMKgDQo+ICtz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfY2xlYW51cF9kcF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCA9ICZkaWdfcG9ydC0+ZHA7DQo+ICsJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVj
dG9yID0gaW50ZWxfZHAtDQo+ID5hdHRhY2hlZF9jb25uZWN0b3I7DQo+ICsNCj4gKwlpbnRlbF9k
cF9jbGVhbnVwX2Nvbm5lY3RvcihkaWdfcG9ydCwgY29ubmVjdG9yKTsNCj4gKwlrZnJlZShjb25u
ZWN0b3IpOw0KPiArfQ0KPiArDQo+IMKgc3RhdGljIGludCBpbnRlbF9oZG1pX3Jlc2V0X2xpbmso
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IMKgCQkJCSBzdHJ1Y3QgZHJtX21vZGVz
ZXRfYWNxdWlyZV9jdHgNCj4gKmN0eCkNCj4gwqB7DQo+IEBAIC01NDkyLDExICs1NTAxLDE0IEBA
IHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+
IMKgCSAqLw0KPiDCoAlpZiAoZW5jb2Rlci0+dHlwZSAhPSBJTlRFTF9PVVRQVVRfRURQICYmIGlu
aXRfaGRtaSkgew0KPiDCoAkJaWYgKGludGVsX2RkaV9pbml0X2hkbWlfY29ubmVjdG9yKGRpZ19w
b3J0KSkNCj4gLQkJCWdvdG8gZXJyX2RwX2Nvbm5lY3Rvcl9pbml0Ow0KPiArCQkJZ290byBlcnJf
aGRtaV9jb25uZWN0b3JfaW5pdDsNCj4gwqAJfQ0KPiDCoA0KPiDCoAlyZXR1cm47DQo+IMKgDQo+
ICtlcnJfaGRtaV9jb25uZWN0b3JfaW5pdDoNCj4gKwlpZiAoaW5pdF9kcCkNCj4gKwkJaW50ZWxf
ZGRpX2NsZWFudXBfZHBfY29ubmVjdG9yKGRpZ19wb3J0KTsNCj4gwqBlcnJfZHBfY29ubmVjdG9y
X2luaXQ6DQo+IMKgCWlmIChpbnRlbF9lbmNvZGVyX2lzX3RjKGVuY29kZXIpKQ0KPiDCoAkJaW50
ZWxfdGNfcG9ydF9jbGVhbnVwKGRpZ19wb3J0KTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCA4NjEyMzYxNGI3YmFlLi45N2M1NzJlNWE1NzEwIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC03MzQ2
LDYgKzczNDYsMTkgQEAgaW50ZWxfZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0DQo+IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+IMKgCXJldHVybiBmYWxzZTsNCj4gwqB9DQo+IMKgDQo+
ICt2b2lkIGludGVsX2RwX2NsZWFudXBfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmRpZ19wb3J0LA0KPiArCQkJCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikN
Cj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3Bs
YXkoY29ubmVjdG9yKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gJmRpZ19wb3J0
LT5kcDsNCj4gKw0KPiArCWludGVsX2Rpc3BsYXlfcG93ZXJfZmx1c2hfd29yayhkaXNwbGF5KTsN
Cg0KV2h5IGRvIHlvdSBuZWVkIHRvIGhhdmUgdGhpcyBhcyB0aGlzIGlzIHRhcmdldGVkIGZvciBj
bGVhbi11cCBvbiBlcnJvcg0KY2FzZSBkdXJpbmcgaW5pdGlhbGl6YXRpb24gcGhhc2UuIEkgd291
bGRuJ3QgZXhwZWN0IHBvd2VyIGdldC9wdXQgYXN5bmMNCmF0IHRoYXQgcG9pbnQ/DQoNCkJSLA0K
Sm91bmkgSMO2Z2FuZGVyDQoNCj4gKw0KPiArCWludGVsX2RwX21zdF9lbmNvZGVyX2NsZWFudXAo
ZGlnX3BvcnQpOw0KPiArCWludGVsX2RwX2F1eF9maW5pKGludGVsX2RwKTsNCj4gKwlkcm1fY29u
bmVjdG9yX2NsZWFudXAoJmNvbm5lY3Rvci0+YmFzZSk7DQo+ICt9DQo+ICsNCj4gwqB2b2lkIGlu
dGVsX2RwX21zdF9zdXNwZW5kKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiDCoHsN
Cj4gwqAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gaW5kZXggMjg0OWI5ZWNkYzcxYS4uZjQxNDgwZDI0
NzE0MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBA
QCAtNDgsNiArNDgsOSBAQCBpbnRlbF9kcF9xdWV1ZV9tb2Rlc2V0X3JldHJ5X2Zvcl9saW5rKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAkJCQnCoMKgwqDCoMKgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gwqBib29sIGlu
dGVsX2RwX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0
LA0KPiDCoAkJCcKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmludGVsX2Nvbm5l
Y3Rvcik7DQo+ICt2b2lkIGludGVsX2RwX2NsZWFudXBfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiArCQkJCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNv
bm5lY3Rvcik7DQo+ICsNCj4gwqB2b2lkIGludGVsX2RwX2Nvbm5lY3Rvcl9zeW5jX3N0YXRlKHN0
cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gwqAJCQkJwqDCoCBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+IMKgdm9pZCBpbnRlbF9k
cF9zZXRfbGlua19wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCg0K
