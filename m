Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFcJBJj/C2pcTQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:13:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BA3577CBC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A91E10EA63;
	Tue, 19 May 2026 06:13:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JLUj49ef";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5501D10EA63;
 Tue, 19 May 2026 06:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779171220; x=1810707220;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OrCRbKMIFxQ7zRpd0ls9E5zRsFVm7R4fzj6gkt8cpGo=;
 b=JLUj49efebLMuVBC18nBc5XMbxmberuFYlEYZwMbGwWqD+EFzMkLIfr/
 8jNsHy+4TW+G8RbmSOAKmlVyq4/QxXu66eKa1Dr0VOAMTbVj3GHyfqL8Q
 GKy782y2CBAWFMxUQi3Jr5n28/RA/9fbrJi1tj5UxgMJK+xGXJP3nBBqg
 2hZp+pmIzSazaHNJRA5fOp42gAh+bGVKmztIhSbmRmpbjLIX9kjKCwJzt
 Tb6kyAQQCJVQ1Ow1WfayANJrn/8Y+bf+SKBL3/L1z/gHen05zlQcvuerL
 /oDfo5R26rvDfP3Atx0FwnOYluHoaVXgPET0yJZAJSAFIHHHCcwKRPmE8 w==;
X-CSE-ConnectionGUID: /RwkZUR7STWEaVZdD2wGkA==
X-CSE-MsgGUID: Ksesp48cSy+juD+fa4P5Xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97473196"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97473196"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:13:40 -0700
X-CSE-ConnectionGUID: MgsA0xx1S4GuqdQvKobimA==
X-CSE-MsgGUID: A2EG7X4QQsG3Tx22dtitZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244658337"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:13:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:13:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 23:13:39 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.2) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:13:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eRz7kxt6OhgjBhpSrIWE2gzKGSDZGZKCjuHy31JVVAo99PvrpsUawcfywFIJzeTFImtDHHmVrhw/rli0VDyK28/O0RBk2L9xgUojsPdj0xW8zbyTK2C0FYg9gR9sdPpB2YBFEt5L3gb+xoKutvJzD4DHKbmQ/M1QI4dQVjUs0s9Cp6Bjbh+iHD/e9EAuKSpYZKbnBYLviDgBLSfn9bzJKI4lwOpHJyeslGzp0Ee+7ZhRTh7988P2xWBf/jrRJTQSAtiARBqxTJAER3xodxALGjJT5SyJZ/5SEItz4/9+2ES0onazZXcb61QuqdkoUy/n1wMuKkzKQIPMFIVo0n6+Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OrCRbKMIFxQ7zRpd0ls9E5zRsFVm7R4fzj6gkt8cpGo=;
 b=EgkEMfbBmxB6leSQWmaHsJ/IdhT4zbIDhJGkEnyzxI216TwKuyQEfJwMOBTmZPjY1bn/msaSbQJDuwjAm1dt3wDQyV/NgSQtC+Ojdh2ZNiQ83SCmBO2az5oQ7ynXOUVxKq5eXOiUOU9udVqPbTUICq64QDbnRCiXQWFg+uasBMGsB0Phlu8FkjSyC2x7DEVhgkdd7l6Bp/x4Dqe+ca0flLmMbqpKrqn63HqYdOcHjj1uYH8dH+jXNd5P6RNhjTEfBOzrBnmvemvrdpxsgOoBajhUgzqS9yPwfKHYoEJeq6CuT713NvhjCPZpb2nIrVN9ryDXbo873wwRP/hIE7+4rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS7PR11MB6175.namprd11.prod.outlook.com
 (2603:10b6:8:99::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Tue, 19 May
 2026 06:13:31 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 06:13:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 15/31] drm/i915/bios: parse LT's VS/PE-O tables
Thread-Topic: [PATCH v3 15/31] drm/i915/bios: parse LT's VS/PE-O tables
Thread-Index: AQHc3cFX0/3I6uHftE6sk8vS2du2XLYU8VGg
Date: Tue, 19 May 2026 06:13:30 +0000
Message-ID: <DM3PPF208195D8D3C90AB848E3E1B5C4B21E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-16-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-16-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS7PR11MB6175:EE_
x-ms-office365-filtering-correlation-id: 4a2bf0b4-8c37-4772-39d6-08deb56dbfe8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003|4143699003|3023799003|11063799003;
x-microsoft-antispam-message-info: Yw8CQpAPN8iLDi1vTHxijHU5bfksreT5WsuwxHoxDAkZDLpIU33JzCzrlvEDiXm9VvptyvuzilOzbZos9NxJYJQhSG7ZiEDW76IVv4Kw582DC+9Tr07u4/OWVLIPVBnry6620Fk4qV705CEBbDZWea6I7SZqe9R+XvZ82YluYMecq5VETrYHNEh7ZhHusl8yG2yPCUmkxCBvHZJXapZkpbsqbZm+Xza7FZXhiwKsMCXN/4wiUGrOhCdZFYMWNIcUnzmZa6cuJKLxY5T3Zlf9gz7nmMMUP2WNgiSdEtXbf4x8M8PSqTSUuUPjUDl8YtMS3C1QyFKjBhtOgyJvbh45zm+d8rsIpKF/0AdUQZWTk8RMYrl2k+LBOHwdm6/FwMwf1A6fqVPmdgsRHnz1aVFpJIR58RkK8tiXihSL45c+BHHMFVtQbRY0Zb7dwrbT6G+myCz9mc0q4HuHFRZypKFfker907Zs4gCbR57VQk/N1Bmq5n5q6YsHilZ2usoka2pUbo53cqG2dqUo9b2180dlnNCyIVi7e4FXCKKUtnQNfb0AoQ+y6vX2/s2kzQ++YHhXOMFaLJSyOPJ4wMXJ/E4Fuep9LULkTty3ccb6mvY6n7UloCY0phYAPnVRvOCsE1nTFVESNbuB88r7pFneaqJ3DD1U2RTqWTyZ9/M4wMKhl87eOLBSsFL48ShWIB54GMoADNOECLm6nVhBm1IbOnxZ13Z4gC8t8AkqUuhav0UyeuftszAjPl66rincOWQ8NaLo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(4143699003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SHNEQXdpQm5JVERsNlZUT1RUYWs2eDZQN0daQkQ5QWU0SFZ5b1p0SXAvcEF6?=
 =?utf-8?B?L0FBbDZnQ1N1OFZrSFdOc3JXaG5YektYOGZrdmx4ZWYyaGJXZE9ZbDRiNWt1?=
 =?utf-8?B?bmxaSzRwTVpLUXR6YUF4dVI0Tnh5SkNJdXo4bGJlandnN0ZLWmlZRXhkRng2?=
 =?utf-8?B?eCs3OFJJOTN5M3RSYXZKc2pmbGFTMGZJYzVNajM0NGZ5MWVCQ0ZkeWlNTFhs?=
 =?utf-8?B?aXVBUmFUTW1HMVZzZDdEdUNCMXo0cDNqT3BIUW9Za2p4U29uUEozWjdFYnF0?=
 =?utf-8?B?eFBWTThHMWpQV1FHeU12eEYySEZKZzdDSEhST0lXZmJNYkJUSTVUbHNHeito?=
 =?utf-8?B?T0pJb0QvSTBIMXY3L0kvaGZFQ1hsTWQwT0p0UzRlbFVKNHlpN0JFZzMveDNB?=
 =?utf-8?B?R2ZvdTNHc1pINEtjYm10Y3hWVFFlbXB0aFJmeUFBRjJDNThHL1NGK1RoeE1E?=
 =?utf-8?B?amxSVXh1N2krTUU2K3k5RmQralRjeExHc0M4THVtVTFNdEdoakMxVm1oQTRZ?=
 =?utf-8?B?YkI2Z1p6VHlNbjlkeHU2cjQzS2pKalpsZzhvQ0xHbmhiVDE4cmhmSUlSNlor?=
 =?utf-8?B?NmpvMVhvMDZLWHNFZ3kzSmdKb3lrT3RVUjNxWi9oamg1aDVEOHZ4QzV3cjVJ?=
 =?utf-8?B?UUVGWC93UE51WGVSYXp1c2RRM0hiQzJzU1lSeklEY1NZT1dhdS9qUjVHZXh4?=
 =?utf-8?B?dXNtNFNwVFBNK3RpRUhKbklscE91WDltZy8zM2dubEZoOCtmSXFaT2VRaGRK?=
 =?utf-8?B?VEowRGh6dS93eHRDdCtKOWV3WjJ4QjhpRElXNitENlI4TEhHNldhQnQ2UitB?=
 =?utf-8?B?cnZrQlBFdWUybmhtbGJjVVhVcmFxNUpiRkFKWmR3a3ZXeTY0SHI4L3h5UnpF?=
 =?utf-8?B?S1V1T3kvVk5iS2l0c1VFa0dMWVVEc3FUUVgyeGNXMVpkM0RjMUdyTzZ3aGg1?=
 =?utf-8?B?aEhFdUZ0Q0toQ3h0d0lwWUJXbzJLSGtSRTFFdTRKalRzdFAzWHNZU1kwU20x?=
 =?utf-8?B?SWhZVjd5QWc4b01oV1VqWU1YSkM2VEVkaklKY0ZXelB2SVZRbnp6YzZXUFZ1?=
 =?utf-8?B?MkttUitBRnRCYVZVakZwM3BQdVJPT2hwOWNucEE5bGllc0N4K0N0TGpvM1p6?=
 =?utf-8?B?U0NSQjNseXUwalZZODBvZmY0VnNRUlVKN0c3VU13UmtjdEhiNytZRlJIL0RW?=
 =?utf-8?B?V3Ribm9IaC8xcnByNzRCSE92Tk41ZlcvTStyVFVvNERtVDA1eUxldS9FTFlO?=
 =?utf-8?B?cW4vS2ZKZEpBVGpoVnRSZkNRanZZZEFsVTZUUnduWnFIVlRDcDNQdnc2eHdL?=
 =?utf-8?B?akNPS2wrdUlqaWMvWkdSMlJLRDBOeklseVVRUG03ZVZwaUY2ekNKdmJRVkxw?=
 =?utf-8?B?dzdWQlVlYUEva3Z0enlWcWxZYzFhRktOVzZWNHhuYUxRMmtsY3BqV2pCNDdl?=
 =?utf-8?B?UWd6eVlnZEkxRTNEekNreHFCcWZabVdSNkNzMmQ2akJ4S2x6SldUb0psTHJM?=
 =?utf-8?B?MGFRSTdRVXJMT052VXBPTWRubnpLNk5BN0JHa2JTUDJ6MmhkcG9tcDJWQWty?=
 =?utf-8?B?dzhuSnFHRlJkalIzUmFwY09jNEhxYUxjNGNPUEJQYU5vbWIxV1lvTFBIeVJL?=
 =?utf-8?B?YzcwOEp4RDBkVHVHdTVLS3ZxVmZzWll3WDhVaWRKVWFYL0ZCVlgveW0vUVFT?=
 =?utf-8?B?TTZpZFhQOS81dzlNMkRFTnRmcDdZdUdSZ1JvNGV0MmVPenl5ckgwSkM4cEJR?=
 =?utf-8?B?cHJkeitqTUNVRnNkWkRVMVQyK0tBanMvbzlDQXo4RU5WNTkrOEhST3huaWp1?=
 =?utf-8?B?K2JVclJRQ2U0WU5IZmRRVDE0WDVtQ296UE9FMU1sNEd6YU4yeGN6UGNESTBP?=
 =?utf-8?B?OEhiOFh0ODNPbWx4RGRuQ1NqeU1JMDZRSlFXelNTSkkyUUc3b2FnYzRlNzZj?=
 =?utf-8?B?NVNKSk5qdC9sZzBES1FlaGZNU1RTTHpRaTZoZzBOVFZTZnh1cEs0VnpWQ3RD?=
 =?utf-8?B?WEFVcUwrelNWUlcwMUFOMHhjVlB6VkZVQThMQTVKUVZYeWlqa1FKUXQveHhN?=
 =?utf-8?B?a2JpR3F2cXVISDJ2UUFLeE1MOHZrU2V2ek5FUk42RkgzTHFvUnkxY3E2ZDRq?=
 =?utf-8?B?a0JHSkRzRzFSWG9jOExaZWJPdjlzcXV4ejdvYVh1bXpMaEFRQUEzUU5YNXpE?=
 =?utf-8?B?S3MyeVY5M0ViWUZLUUF2c0R1S0huM2dGK2k5YVNDRVc4VVMrSDRJVndVbzMz?=
 =?utf-8?B?d05qUGcvQU9yM1hKd1p0UXBiM3czWDRPbjFaaG9ESU9uTm42eW41dXBrN3Ru?=
 =?utf-8?B?UEhNdk1WYXFPWXRIUjdnMnZiSVU0WjdKelAvZlZnMlFacUpNS0ttdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: D+qQoaNDdXhpaHMeVgXzQncpCchSoVwEskgRGO5r3jTPXOZrkgNotwxD5OwCPiWN9M+PV2n2+xB/W6cT0cBlkRRfUHlgWLGx7cCS0FnS7iTdSbwe+e1qJc7jvUAFDjtFI2/ibinGf2r5gZckGk9QX5XY3SZDtfIzdQQCbCZwZt6YfjBccVm0svav9H+tSQrwFZD7S/yFQ1x84NNU1I4476yUINzZmqtIv6OgyYBqlh2uAURrzp/PQT7ixakfM9qVzC3AlHl1b/kk5wjPQG8VuQw6FahlsOYouSxt2G0ndqVugP6HcR2iKvZtFRSkX3H4znT1R29o74FdKCMDBSmufw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a2bf0b4-8c37-4772-39d6-08deb56dbfe8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 06:13:30.8317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SyD8xmupV/tFgv3AomCKvkYvQCNTFb2ZguSMmlEdcqLuYJnPgqIVpuU1i6FULma5/MfNpc8S1vog0MbX4yVITQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6175
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 46BA3577CBC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMTUvMzFdIGRybS9pOTE1L2Jpb3M6IHBhcnNlIExUJ3MgVlMv
UEUtTyB0YWJsZXMNCj4gDQo+IExUJ3MgVlMvUEUtTyB0YWJsZXMgaGF2ZSBsZXNzIGNvbHVtbnMg
dGhhbiB4ZTNwbHBkX2x0X3BoeV9idWZfdHJhbnMgY29udGFpbnMNCj4gZmllbGRzLiBUaGlzIHBy
ZXZlbnRzIGNhc3RpbmcgYmxvY2stPnRhYmxlcyB0byBwb2ludCBhdCB4ZTNwbHBkX2x0X3BoeV9i
dWZfdHJhbnMNCj4gYW5kIHBhcnNpbmcgaXQgdHJpdmlhbGx5Lg0KPiANCj4gUGFyc2UgZWFjaCBl
bnRyeSBmcm9tIGV2ZXJ5IHRhYmxlIGludG8ga3phbGxvYydkIGJ1ZmZlcnMnIG1hdHJpeC4gUmVh
ZCBudW1iZXIgb2YNCj4gdGFibGVzIGFuZCBudW1iZXIgb2YgY29sdW1ucyBmcm9tIHRoZSBibG9j
ay4gQXNzdW1lIHRoYXQgZWFjaCB0YWJsZSBjb250YWlucw0KPiAxNiByb3dzLg0KPiANCj4gSW5m
bGF0ZSB4ZTNwbHBkX2x0X3BoeV9idWZfdHJhbnMgc2luY2UgZWFjaCBWQlQtYmFzZWQgdmFsdWUg
aXMgc3RvcmVkIG9uIHUzMi4NCj4gUmVkdWNpbmcgdGhlIHNpemUgd2lsbCBiZSBkb25lIGluIHNl
cGFyYXRlIGNvbW1pdC4NCj4gDQo+IEFkZCBMVCB0byB3b3JrYXJvdW5kIGZvciBhdmFpbGFiaWxp
dHkgb2YgVlMvUEUtTyBwYXJzaW5nLg0KPiANCj4gdjItPnYzDQo+IC0gcmVtb3ZlIHVubmVjZXNz
YXJ5IGJyYWNlcyBmcm9tIGlmIGJsb2Nrcw0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBH
cnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMzMgKysrKysrKysrKysrKysrKysr
LQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oICAgIHwgMTAg
KysrLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0K
PiBpbmRleCBiMmVlNTU2ZTlkMWYzLi4yMzI4NDI5YjU2MmRmIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtMjE4Nyw2ICsyMTg3LDMwIEBA
IHBhcnNlX2NvbXByZXNzaW9uX3BhcmFtZXRlcnMoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRp
c3BsYXkpDQo+ICAJfQ0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkDQo+ICtwYXJzZV92c3dpbmdf
cHJlZW1waF9sdCh1bmlvbiBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5ICoqYnVmc19tdHJ4LA0K
PiArCQkJY29uc3Qgc3RydWN0IGJkYl92c3dpbmdfcHJlZW1waCAqYmxvY2spIHsNCj4gKwl1bmlv
biBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5ICplbnRyeTsNCj4gKwljb25zdCB1MzIgKnRhYmxl
cyA9IGJsb2NrLT50YWJsZXM7DQo+ICsJdTggbnVtX3Jvd3MgPSAxNjsNCj4gKwlzaXplX3Qgb2Zm
c2V0ID0gMDsNCj4gKwljb25zdCB1MzIgKnZhbHM7DQo+ICsNCj4gKwlmb3IgKGludCBpZHggPSAw
OyBpZHggPCBibG9jay0+bnVtX3RhYmxlczsgaWR4KyspIHsNCj4gKwkJZm9yIChpbnQgcm93ID0g
MDsgcm93IDwgbnVtX3Jvd3M7IHJvdysrKSB7DQo+ICsJCQl2YWxzID0gJnRhYmxlc1tvZmZzZXRd
Ow0KPiArDQo+ICsJCQllbnRyeSA9ICZidWZzX210cnhbaWR4XVtyb3ddOw0KPiArCQkJZW50cnkt
Pmx0Lm1haW5fY3Vyc29yID0gdmFsc1swXTsNCj4gKwkJCWVudHJ5LT5sdC5wcmVfY3Vyc29yID0g
dmFsc1sxXTsNCj4gKwkJCWVudHJ5LT5sdC5wb3N0X2N1cnNvciA9IHZhbHNbMl07DQo+ICsNCj4g
KwkJCW9mZnNldCArPSBibG9jay0+bnVtX2NvbHVtbnM7DQo+ICsJCX0NCj4gKwl9DQo+ICt9DQo+
ICsNCj4gIHN0YXRpYyB2b2lkDQo+ICBwYXJzZV92c3dpbmdfcHJlZW1waF9vdmVycmlkZShzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgIHsgQEAgLTIyMTAsNw0KPiArMjIzNCwxMCBAQCBw
YXJzZV92c3dpbmdfcHJlZW1waF9vdmVycmlkZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSkNCj4gIAlmb3IgKGludCBpZHggPSAwOyBpZHggPCBibG9jay0+bnVtX3RhYmxlczsgaWR4Kysp
DQo+ICAJCWJ1ZnNfbXRyeFtpZHhdID0ga3phbGxvY19vYmpzKCoqYnVmc19tdHJ4LCBudW1fcm93
cyk7DQo+IA0KPiAtCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIlZTL1BFLU8gcGFyc2luZyBu
b3QgeWV0IHN1cHBvcnRlZFxuIik7DQo+ICsJaWYgKEhBU19MVF9QSFkoZGlzcGxheSkpDQo+ICsJ
CXBhcnNlX3Zzd2luZ19wcmVlbXBoX2x0KGJ1ZnNfbXRyeCwgYmxvY2spOw0KPiArCWVsc2UNCj4g
KwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiVlMvUEUtTyBwYXJzaW5nIG5vdCB5ZXQNCj4g
c3VwcG9ydGVkXG4iKTsNCj4gDQo+ICAJZGlzcGxheS0+dmJ0LnZzcGVvLmJ1ZnNfbXRyeCA9IGJ1
ZnNfbXRyeDsNCj4gIAlkaXNwbGF5LT52YnQudnNwZW8ubnVtX3RhYmxlcyA9IGJsb2NrLT5udW1f
dGFibGVzOyBAQCAtMjY1OSw2DQo+ICsyNjg2LDcgQEAgc3RhdGljIHZvaWQgc2FuaXRpemVfaGRt
aV9sZXZlbF9zaGlmdChzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEs
DQo+IA0KPiAgc3RhdGljIHZvaWQgb3ZlcnJpZGVfdnN3aW5nX3ByZWVtcGgoc3RydWN0IGludGVs
X2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhKSAgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gZGV2ZGF0YS0+ZGlzcGxheTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGRpX2J1
Zl90cmFucyAqYnVmX3RyYW5zOw0KPiAgCWJvb2wgcGFyc2VhYmxlID0gZmFsc2U7DQo+IA0KPiBA
QCAtMjY2Nyw2ICsyNjk1LDkgQEAgc3RhdGljIHZvaWQgb3ZlcnJpZGVfdnN3aW5nX3ByZWVtcGgo
c3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKQ0KPiAgCWlmICghaW50
ZWxfYmlvc19lbmNvZGVyX292ZXJyaWRlc192c3dpbmcoZGV2ZGF0YSkpDQo+ICAJCXJldHVybjsN
Cj4gDQo+ICsJaWYgKEhBU19MVF9QSFkoZGlzcGxheSkpDQo+ICsJCXBhcnNlYWJsZSA9IHRydWU7
DQo+ICsNCj4gIAlpZiAoIXBhcnNlYWJsZSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4g
aW5kZXggYWM5YWNkZWM2ZDI5OC4uYmM0YmM4MGJhNjU4OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gQEAgLTUx
LDExICs1MSwxMSBAQCBzdHJ1Y3QgZGcyX3NucHNfcGh5X2J1Zl90cmFucyB7ICB9Ow0KPiANCj4g
IHN0cnVjdCB4ZTNwbHBkX2x0X3BoeV9idWZfdHJhbnMgew0KPiAtCXU4IG1haW5fY3Vyc29yOw0K
PiAtCXU4IHByZV9jdXJzb3I7DQo+IC0JdTggcG9zdF9jdXJzb3I7DQo+IC0JdTggdHhzd2luZzsN
Cj4gLQl1OCB0eHN3aW5nX2xldmVsOw0KPiArCXUzMiBtYWluX2N1cnNvcjsNCj4gKwl1MzIgcHJl
X2N1cnNvcjsNCj4gKwl1MzIgcG9zdF9jdXJzb3I7DQo+ICsJdTMyIHR4c3dpbmc7DQo+ICsJdTMy
IHR4c3dpbmdfbGV2ZWw7DQoNCk5vdCBuZWVkZWQuIERvbuKAmXQgYnJlYWsgcGF0Y2hlcyBpbiBz
dWNoIGEgd2F5IHRoYXQgeW91IGhhdmUgdG8gdW5kbyBzb21lIHRoYXQgb25lIG9mIHlvdXIgcHJl
dmlvdXMgcGF0Y2hlcyB3ZXJlIGRvaW5nIHRoYXQgdG9vIGluIHRoZSBzYW1lIHNlcmllcw0KU3F1
YXNoIDE1LCAxNiBwYXRjaA0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+ICB9Ow0KPiAN
Cj4gIHVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkgew0KPiAtLQ0KPiAyLjQ1LjINCg0K
