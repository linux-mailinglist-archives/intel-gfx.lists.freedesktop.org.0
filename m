Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id soziBWD2KGr9OAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:30:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30026665F2B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:30:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UdTZ4ubD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8CCB10E6F9;
	Wed, 10 Jun 2026 05:30:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 411FB10E6F9;
 Wed, 10 Jun 2026 05:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781069404; x=1812605404;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vuGtnfrAlNnr42XMATo+E7msaQsD+wwJ3rmoJNtedmE=;
 b=UdTZ4ubDNkWh66f6NMZLpRx28j87rewLGjHBtOqxyW3x77CTMPbkKSIO
 JZmHIqNIlwdsJsUW9VTKE2ViU+c6gCo8+s1g0QcrNlU5MOKKiOK74cfDm
 MvUUPk/AOLxducSosKhDc9FQekVYujUtPVTYoat/2EVcNgBwbNtEydsLA
 dTnMIjLosEPj3lWDLF7OxVpaxQBTnEATt5nMkNB4t49fwAcXeyrObu8JU
 YszURiO8vIlX6Kq2ZnRQOMNVhHuIQuqb1Wdz3Lv8uR6Q3TnRafbb6rqM8
 aQigMji1217IHnUP+O1gLONj3IWHShUHxBkrNd5xuaDvCSp9+JSnxiRQu Q==;
X-CSE-ConnectionGUID: G7CZy7XpTRic6j8mgSN4qQ==
X-CSE-MsgGUID: MDwlMHeXQNeNziKQeFGs2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="92172573"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92172573"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:30:03 -0700
X-CSE-ConnectionGUID: PFrexMjISWeuQBzDdQ0QqQ==
X-CSE-MsgGUID: 4qhwPnR8TFm1gvt+ZBNGQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="243609053"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:30:03 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:30:03 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 22:30:03 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.38) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:30:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h3qr3fVijKnHOYqNqqcfejDbta9VwkcbA5qXfohYjyQkhjoCNCQHKq0Q7biLOuTw7vObNjhIuY3pMpZc1vi5AWyEnb8BY1W5uiNdV5mXHfj6cOZ6KYG8BmKEGAQywGOyKbA5UV2kmmx9XwzG7Kz+iNe12XdPVVJsEDF/DHh8je1H2ajLUB9PhW2pwqF6CqU0QB4oQzeB3uhM9M+jnlfOICJ9FXfMf3jCwOW16t/PYw/Bl5MDMhCwth7fWNFvJbUbCCISMMVJKD3m635mmHis25PlmHgWwJa37ampE09z24i99ClZPvFrsyWdFb2lm5jiG2B8Pg62LKV2pulBBeOvQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vuGtnfrAlNnr42XMATo+E7msaQsD+wwJ3rmoJNtedmE=;
 b=qF1OgPW74vgdw7NyacrF1NpokFpWqgAzvEWg7SJnQJxmsTYaRyXUG/RHpp/ZxISh9PwLY2/eLv1kr9mB80l8Ld7BKaHl+8VW0ymIwMRcfVs+Waq+EdRDcP9M0O/ldV0JumnDx7iGnefukThJj74IGGoduLQK1ZkVKqV9yAVqeylq6GH3mmkV3aQK5KShH+a9WCe1GLFiBXLv3zBPSwnZO9iLSNquysK3Bxmqn6rkG//mFkamlptq76RpXR2cXSIVy+Z6COVEJH1yXGgwXSq57je2ajlcXmJukiSITzhszX+0q7Gg/f8lF5rHxXjqpV4ivKy7TDViyDs9V8vo+3XuJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA3PR11MB8003.namprd11.prod.outlook.com (2603:10b6:806:2f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Wed, 10 Jun
 2026 05:30:00 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 05:29:59 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v1 9/9] drm/i915/scaler: move CASF alloc check into
 setup_crtc_scaler()
Thread-Topic: [PATCH v1 9/9] drm/i915/scaler: move CASF alloc check into
 setup_crtc_scaler()
Thread-Index: AQHc+GWQ8zn4DaXC/k69T0Mr0U6XObY3QjsQ
Date: Wed, 10 Jun 2026 05:29:59 +0000
Message-ID: <IA1PR11MB64678BDD00D97827CB8D53FDE31A2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260609231217.208357-1-michal.grzelak@intel.com>
 <20260609231217.208357-10-michal.grzelak@intel.com>
In-Reply-To: <20260609231217.208357-10-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA3PR11MB8003:EE_
x-ms-office365-filtering-correlation-id: 68107bc2-cb5c-422a-60e5-08dec6b150b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|18002099003|22082099003|38070700021|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: 4GocODDnm8KTmHlmBCv/cFaIWYWQ0O6udYs3/jroVRKNUnZsxDjmqrmzmWnpJjiBOq+IzEiXHJG7NvNOyLII41/NusN8Tqd/4IahkzkBvR9lLfLTktUqcYQ++onSvW6IywCLNtjWJbx8MroEGHfrDqPbyJfelc+8p2ilcuUAclEUuCckjf1v1ddL6R5y5p3bEEJ10/6Cnl926nR42lAtONlwqJ9sIysWZz514+OggEh3wjO8Gewi9lBhXwyoRbm7J1lb2LRM/G7fli4Vgj1MQMAPvLT33xbFvnyibTiFNJjKGNppwSbGXyg7l+knnM0+YQEaFp2qaAoHmp8AFgtzq5QHSmg0xYHmDGht5J8FBrGnsnOZ2cmu3pKsXskCuYspUGJhnDi/Y3uitwLD/7nK+nI+G97V/+8Ud6EMN5ajENqpulbOWVhV8cCZbxZk7M1nkvBt++/mjTjoeAW5aPwS5qwG5aDOm1/8hhmTZZBm+18R8IOZWsKOpMnFSlpQZsXVwDVmfzyc6GrIr54Zw4MJqrtb+IFBsnqP1JFgEG2J4+WCMOZxmj9xPC7NRB0+yXd/LMsH5MlFk2DY+B6Fn9ib3c8yKOCBHuHu3ygf7TG+IS1KMR3cPiKrbiJcKN+vJjZxma8aNPjZFMmratLIZmh2f0loO9CaECTBsa6XezQ841id9lCCQfkoJDSE9CK3Ywhdhlb92HfhPe08JhvDTDWCAd5WNb2ZAgTv/JH5mJWxhYvzuUpxzwycFuC7HKWlPnv2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(18002099003)(22082099003)(38070700021)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEVMbzViQmhHWnpOK0dlc1o1NElZQ0hCV0tiQjBGa0FMRWtNTzBodGtxdkNB?=
 =?utf-8?B?TFRNdU5aUzBBQXFheWh1bDZ6bEhkMTgzcVpLWmc4MXA2TkpkT0s2RjR5TnUv?=
 =?utf-8?B?bUFYeG1ITTY1UWo5M2thWmpBZHgxVzNCKzNKK1FUY082WHA0UFVKV0FWZ1V6?=
 =?utf-8?B?Zi9wYXFkVDgrZE85QnFvVFErVHI1L0NVR0xYbURwR3hwcEcxOUYwcEdoVk1j?=
 =?utf-8?B?T1hiNHBpUWhWL0lVSzFmd0RQRDAvSEd4NjJtVnI4WTVUdzBLWHdLdUhpcDJR?=
 =?utf-8?B?c28zNTViT0V4UkxRYTEzbUZITlRLWHZpSlplMlg4MWE2eFJhRjJnMlVhWjBs?=
 =?utf-8?B?NVdQeWY3NVl6cjJwbFl2ZW5kY25ObFAvUjhFUko3NENwMm1ZaWs5TVc5bVVG?=
 =?utf-8?B?SHVJNlFpM3NIZm9uZlpBcjlaUHN6bGkwRi9LSThiaTc5KzlEc0ZZMzU2QTBu?=
 =?utf-8?B?MnpYTnlNTW9VLys1RmlyOWYza09QYkVRNzBVZnliZTRIY0NqeTNldnFWR01Z?=
 =?utf-8?B?ZThPNm9TNSt5V2JJYlVhQjNqd1RFdE9obFp4TE1qaENJOFR0R25hOGhSWjd6?=
 =?utf-8?B?K3FUbWhPNnlhd3oyYzlVaURjSXllVFRQR2p3SU91YU1yMzZKckNaVndRVHNp?=
 =?utf-8?B?elNQZjRDWENmYTJ1WnlBeEp5TllZZWQyV2MxYjFpU1hoQXl3QmQrREZCWFAx?=
 =?utf-8?B?MFFjSnJ6L0RjVkd3YTBMTWxBNGJVeEdEcFFWbzVLclFkdUM5OTRzL1JIZzFt?=
 =?utf-8?B?MmZZUmkyT09hRk5ZOHV3RSt4NmtPMG9GNnRma2ZycEhybHFNd1BxK1VwN0x5?=
 =?utf-8?B?aitLK1ovbjRQcDRGemd3aXBYWlljUThBbElqQ0pucUo2Q3Z1TG1TOG5zVHhN?=
 =?utf-8?B?WDJ4Ty9HdXZ1V2VIVTJkSUpRNThVTGNlcnlSMDlGd3FvcEIxWFF2ekdKcGV0?=
 =?utf-8?B?c2ZVbmk4L3hFeTVHQTVpSlJsV0lxdDUyeFc0QXhnVGlEVGdYU0hRSjRWUjVU?=
 =?utf-8?B?N2xjTmZzWmdVRy9VRlhBb2JONWVWTUMvN1RiekU5bUtKWC9ITU5RSTdPSDJ0?=
 =?utf-8?B?S3ludDh0Q1VFUzUrUmNQS2NScDdjSC84V0EyaVpPRjBDeWptUU42UlRzRXBl?=
 =?utf-8?B?S0puU1ZXSmlMa2FMRnFDOVNZNE5MaU40UlpDYTZLbjJwWGFXdXlyaFFCditB?=
 =?utf-8?B?UXIxcmdlL2dreVJiWWpYSFMvU3JTTTlKNkZodHQvUE9lbEFMcTdERlJBM1hj?=
 =?utf-8?B?V0Z2bDZYcTlWZm5NK3NLeGlJb1dxT0Urd24zZGZLTThTU0JWbC9BbXg0TVR1?=
 =?utf-8?B?dW1uN3lZQnd6L01ZcjYwcTlxWEgwQkFOaHk0aWRqa1Z3dkVvaW5CanFvUTNa?=
 =?utf-8?B?UmtaK3ZsbVZDaE5ObE1TdXpGMHBscEN4WXpBUWh1WXFUNzQrbWsyaGhMYWU5?=
 =?utf-8?B?Z3J4UWlpd0NzOFRscVJHQWVJMVkzSHgxWVdVY0wwZURlYnR3UTJtYVZMWVJh?=
 =?utf-8?B?YmRqVG5XNjJjK1NXQytoTEZwTjUrN003cEVLYjBuY2w1UVBldUR4bE9VbVNr?=
 =?utf-8?B?TEEyc2RRVmZDZFpEQ1JsSTZFVTdLZHNVOExHKzdnVmRQYWRCcnZtMUdnUDBE?=
 =?utf-8?B?ckJPandhbEVycmpnTkJpV3JDOGRWMG8wVHUwbUkveEd3YmZodnI3aitjY090?=
 =?utf-8?B?UXQ5cGp0Y1RpQVZ3akFoVEJ5ZjBRWmJTWjA4Nm5mZFpKdVdZWEJVVGx2SVl5?=
 =?utf-8?B?MndCdnorTWM3ZCtMeC9PWU11SUNyOVF5QnJBNU1OQWF5VEVmVFVJTU1ONWJT?=
 =?utf-8?B?alc1WE5obHZFd0E3anlYT1pid3BoNDBmclJBY2k1K3pZaHJoY1R1bk9oeGx4?=
 =?utf-8?B?bFZaRHd3Y3ZScGV3K051ZFJPTGV0V3Z3OVJsSTE4QXZnc2Fmc0t0c3hRY2N6?=
 =?utf-8?B?SUR6OURta1NZZWg2SHdqVVdSeEZqbEpRZmhMVE5OVjkxTGRSWWYya2JNZE1O?=
 =?utf-8?B?Q1Y3dHgwL244eDh2dzJmWVdZTHNrcHZxbDNNLzkvRVlrT20zRTltYmtNSDNn?=
 =?utf-8?B?N0xXODFhbCtqbTQ0eldrVjhjOXFPa0Q5NXVGQ1A2Z0NLMGFuZEc4Ym4ydVJn?=
 =?utf-8?B?VUgvWk5pNzBKRmM2SFFwMUo3MmxyTGtCODlCSDVsVlcxN1o4R2QvUWlMc3R0?=
 =?utf-8?B?eFBrRkZGUDRiNkRmTk95MnNaM2JZT2tqMXRXK2dxb1dxZ2YyZkF1OE03ZHh3?=
 =?utf-8?B?eWZKTmp1M0hTWmduNWExRW1Db09vcVVCajZXdk0rTDRMRlI1SU1BZjFNQWxO?=
 =?utf-8?B?bEozcVdIRzRMSHR3VVVYUDVyVU03Mm1jMExoMi9XM04wNnhqbGlhQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: W9ifxb1ZBOeebBZ2SHHOiO+y3/5t4hNsWL2GANbjuOWm1add6tpqmUDEK68R2mYJgK5dBjDLn4aoZ7IGq33PIZrMh+PaawRR9G4afJUJ70OkvL9HaQEbMsspP5z8g0ZVOSTNq39/E8eTKy1tWUW5FtSiZKeIPOApIxIt6CyaV+cbWYtCdhFOo7IUpVsTgL6cnAelqQTbHDWd2Hcb+oYU5GVdxSFYFquIlnHR9ixMHS/ARCJVaoE4qsuigK6vDBu78cNmNolQjf+QfYEzfp4uW1F3Q8Ldrl7WAKVufT8JNC5sUJ/8tDxi2DtvPDowJwHZvW4Vq5FSdYhXEUT4mMZxog==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68107bc2-cb5c-422a-60e5-08dec6b150b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 05:29:59.8364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J3b/STMWfLWSnrBtOTlEVWxHc0sPcAlaEQwKe3yNM71CInTehMdqWqC8O/V0mrxfIprgh8cNPYWomEI2/z5NCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8003
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 30026665F2B

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3J6ZWxhaywgTWljaGFs
IDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxMCwg
MjAyNiA0OjQyIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRl
bC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEdyemVsYWssIE1pY2hhbCA8bWljaGFs
LmdyemVsYWtAaW50ZWwuY29tPjsgR2FyZywgTmVtZXNhDQo+IDxuZW1lc2EuZ2FyZ0BpbnRlbC5j
b20+OyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBbUEFUQ0ggdjEgOS85XSBkcm0vaTkxNS9zY2FsZXI6IG1vdmUgQ0FTRiBhbGxvYyBj
aGVjayBpbnRvDQo+IHNldHVwX2NydGNfc2NhbGVyKCkNCj4gDQo+IE1vdmUgQ0FTRiBhbGxvY2F0
aW9uIGNoZWNrIHRvIHRoZSBjYWxsZXIgb2YgaW50ZWxfYXRvbWljX3NldHVwX3NjYWxlcigpLg0K
PiBBZGQgaW50ZWxfZGlzcGxheSB0byBtYWtlIHRoZSBjaGVjayB3b3JrLiBSZW1vdmUgY2FzZl9z
Y2FsZXIgZnJvbQ0KPiBpbnRlbF9hdG9taWNfc2V0dXBfc2NhbGVyKCkncyBhcmd1bWVudCBsaXN0
IHNpbmNlIGl0IGlzIG5vIGxvbmdlciB1c2VkLg0KPiANCj4gRG8gbm90IGFkZCB0aGUgY2hlY2sg
aW50byBzZXR1cF9wbGFuZV9zY2FsZXIoKSBhcyBpdCBjYWxscw0KPiBpbnRlbF9hdG9taWNfc2V0
dXBfc2NhbGVyKCkgd2l0aCBjYXNmX3NjYWxlciBzZXQgdG8gZmFsc2UuDQo+IA0KPiBDYzogTmVt
ZXNhIEdhcmcgPG5lbWVzYS5nYXJnQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIg
R3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5jIHwgMzIgKysrKysrKysrKystLS0tLS0tLS0t
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2Fs
ZXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5jDQo+IGlu
ZGV4IGI0MGM5ZTUwMGJiYy4uZGE5YzdlZjg2MTBkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPiBAQCAtMzg5LDcgKzM4OSw3IEBAIHN0YXRpYyBp
bnQgaW50ZWxfYXRvbWljX3NldHVwX3NjYWxlcihzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwNCj4gIAkJCQkgICAgIGludCBudW1fc2NhbGVyc19uZWVkLCBzdHJ1Y3QgaW50
ZWxfY3J0Yw0KPiAqY3J0YywNCj4gIAkJCQkgICAgIGNvbnN0IGNoYXIgKm5hbWUsIGludCBpZHgs
DQo+ICAJCQkJICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLA0KPiAt
CQkJCSAgICAgaW50ICpzY2FsZXJfaWQsIGJvb2wgY2FzZl9zY2FsZXIpDQo+ICsJCQkJICAgICBp
bnQgKnNjYWxlcl9pZCkNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkoY3J0Yyk7DQo+ICAJc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0
YXRlICpzY2FsZXJfc3RhdGUgPSAmY3J0Y19zdGF0ZS0NCj4gPnNjYWxlcl9zdGF0ZTsgQEAgLTM5
NywxNyArMzk3LDggQEAgc3RhdGljIGludA0KPiBpbnRlbF9hdG9taWNfc2V0dXBfc2NhbGVyKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCWludCBoc2NhbGUgPSAwOw0K
PiAgCWludCB2c2NhbGUgPSAwOw0KPiANCj4gLQlpZiAoKnNjYWxlcl9pZCA8IDApIHsNCj4gLQkJ
aWYgKGNhc2Zfc2NhbGVyKSB7DQo+IC0JCQlpZiAoSEFTX0NBU0YoZGlzcGxheSkgJiYgY3J0Yy0+
bnVtX3NjYWxlcnMgPj0gMiAmJg0KPiAtCQkJICAgICFzY2FsZXJfc3RhdGUtPnNjYWxlcnNbMV0u
aW5fdXNlKSB7DQo+IC0JCQkJc2NhbGVyX3N0YXRlLT5zY2FsZXJzWzFdLmluX3VzZSA9IHRydWU7
DQo+IC0JCQkJKnNjYWxlcl9pZCA9IDE7DQo+IC0JCQl9DQo+IC0JCX0gZWxzZSB7DQo+IC0JCQkq
c2NhbGVyX2lkID0gaW50ZWxfYWxsb2NhdGVfc2NhbGVyKHNjYWxlcl9zdGF0ZSwgY3J0Yyk7DQo+
IC0JCX0NCj4gLQl9DQo+ICsJaWYgKCpzY2FsZXJfaWQgPCAwKQ0KPiArCQkqc2NhbGVyX2lkID0g
aW50ZWxfYWxsb2NhdGVfc2NhbGVyKHNjYWxlcl9zdGF0ZSwgY3J0Yyk7DQo+IA0KPiAgCWlmIChk
cm1fV0FSTihkaXNwbGF5LT5kcm0sICpzY2FsZXJfaWQgPCAwLA0KPiAgCQkgICAgICJDYW5ub3Qg
ZmluZCBzY2FsZXIgZm9yICVzOiVkXG4iLCBuYW1lLCBpZHgpKSBAQCAtNTM0LDE2DQo+ICs1MjUs
MjYgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfc2V0dXBfc2NhbGVyKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLCAgc3RhdGljIGludCBzZXR1cF9jcnRjX3NjYWxlcihz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCSAgICAgc3RydWN0IGludGVs
X2NydGMgKmNydGMpDQo+ICB7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KHN0YXRlKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSA9DQo+ICAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNy
dGMpOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3NjYWxlcl9zdGF0ZSAqc2NhbGVyX3N0YXRlID0N
Cj4gIAkJJmNydGNfc3RhdGUtPnNjYWxlcl9zdGF0ZTsNCj4gDQo+ICsJaWYgKHNjYWxlcl9zdGF0
ZS0+c2NhbGVyX2lkIDwgMCkgew0KPiArCQlpZiAoY3J0Y19zdGF0ZS0+cGNoX3BmaXQuY2FzZi5l
bmFibGUpIHsNCj4gKwkJCWlmIChIQVNfQ0FTRihkaXNwbGF5KSAmJiBjcnRjLT5udW1fc2NhbGVy
cyA+PSAyICYmDQo+ICsJCQkgICAgIXNjYWxlcl9zdGF0ZS0+c2NhbGVyc1sxXS5pbl91c2UpIHsN
Cj4gKwkJCQlzY2FsZXJfc3RhdGUtPnNjYWxlcnNbMV0uaW5fdXNlID0gdHJ1ZTsNCj4gKwkJCQlz
Y2FsZXJfc3RhdGUtPnNjYWxlcl9pZCA9IDE7DQo+ICsJCQl9DQo+ICsJCX0NCj4gKwl9DQo+ICsN
Cj4gIAlyZXR1cm4gaW50ZWxfYXRvbWljX3NldHVwX3NjYWxlcihjcnRjX3N0YXRlLA0KPiAgCQkJ
CQkgaHdlaWdodDMyKHNjYWxlcl9zdGF0ZS0NCj4gPnNjYWxlcl91c2VycyksDQo+ICAJCQkJCSBj
cnRjLCAiQ1JUQyIsIGNydGMtPmJhc2UuYmFzZS5pZCwNCj4gLQkJCQkJIE5VTEwsICZzY2FsZXJf
c3RhdGUtPnNjYWxlcl9pZCwNCj4gLQkJCQkJIGNydGNfc3RhdGUtPnBjaF9wZml0LmNhc2YuZW5h
YmxlKTsNCj4gKwkJCQkJIE5VTEwsICZzY2FsZXJfc3RhdGUtPnNjYWxlcl9pZCk7DQo+ICB9DQo+
IA0KPiAgc3RhdGljIGludCBzZXR1cF9wbGFuZV9zY2FsZXIoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsIEBAIC01NzgsOA0KPiArNTc5LDcgQEAgc3RhdGljIGludCBzZXR1cF9wbGFu
ZV9zY2FsZXIoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJcmV0dXJuIGlu
dGVsX2F0b21pY19zZXR1cF9zY2FsZXIoY3J0Y19zdGF0ZSwNCj4gIAkJCQkJIGh3ZWlnaHQzMihz
Y2FsZXJfc3RhdGUtDQo+ID5zY2FsZXJfdXNlcnMpLA0KPiAgCQkJCQkgY3J0YywgIlBMQU5FIiwg
cGxhbmUtPmJhc2UuYmFzZS5pZCwNCj4gLQkJCQkJIHBsYW5lX3N0YXRlLCAmcGxhbmVfc3RhdGUt
PnNjYWxlcl9pZCwNCj4gLQkJCQkJIGZhbHNlKTsNCj4gKwkJCQkJIHBsYW5lX3N0YXRlLCAmcGxh
bmVfc3RhdGUtDQo+ID5zY2FsZXJfaWQpOw0KPiAgfQ0KPiANCkhpIE1pY2hhbCwNCg0KVGhlIHJh
dGlvbmFsIGJlaGluZCBhZGRpbmcgQ0FTRiBpbiBhbGxvY2F0ZV9zY2FsZXIoKSB3YXMgdG8gaGF2
ZSBhbGwgc2NhbGVyIHJlbGF0ZWQgc3R1ZmYgdG9nZXRoZXIuDQpBcyBDQVNGIGFsc28gbmVlZHMg
c2NhbGVyIGFuZCBiZWZvcmUgYWxsb2NhdGluZyB3ZSBuZWVkIHRvIGNoZWNrIGl0cyBhdmFpbGFi
aWxpdHksIHNvIG5vdCBzdXJlIHdoZXRoZXIgd2Ugc2hvdWxkIG1vdmUgaXQgb3V0c2lkZSBvZiBh
bGxvY2F0aW9uIGZ1bmN0aW9uIG9yIGtlZXAgYXMgaXQgaXMuDQoNClRoYW5rcyBhbmQgUmVnYXJk
cywNCk5lbWVzYQ0KDQo+ICAvKioNCj4gLS0NCj4gMi40NS4yDQoNCg==
