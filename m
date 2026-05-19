Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /VGhEJbpC2pjQwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:39:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E9D577413
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D045110E260;
	Tue, 19 May 2026 04:39:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N9igPWgK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B604010E0C2;
 Tue, 19 May 2026 04:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779165587; x=1810701587;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6cNMo+7jZAAUErf9dW7nqkwdO8y5fK3nbCxHhpt9JQo=;
 b=N9igPWgKsY1+Ivd0AyMehPttGtsDAf1y3IVFskwvF1XuU1sZ+ffsGxML
 qphDZRx+CAvyYabIQo2+Z6hT9CNLhORxeNzykXUWW3RGBqf757xJpzByK
 Lt0JMqiEouYU3QlS64ihWkJ2iS72MZpnNz/e4zxVY7+u8HdGitTZ3VuBc
 uk82+4iuk9OIlUQukU72uGR1UG2x+08xjgTWMk8CMCRAreh4Qsj+QQE99
 rCOGoVgQ/i5TwyBoc52ZrNrjW5QTVhM5AdxIsfzYG8eTeDFirZ5gYGgfL
 cjCOaV3ilxjEvRQ7Xs92KwiLYcOmdobpM/zy6CR3uWj8g+QnePm1m5EZZ A==;
X-CSE-ConnectionGUID: pyPuLnBTQdaTa09zeIFsgA==
X-CSE-MsgGUID: huPUShoeQ0KQTAI7dZfjag==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97466266"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97466266"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:39:47 -0700
X-CSE-ConnectionGUID: He3sP6OXTnennD1SG7JhDg==
X-CSE-MsgGUID: 6SypXBjXR+ehIo+cqBglGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="243941874"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:39:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:39:45 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 21:39:45 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:39:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SVUF41NbHCRjRSckQBsyCwTO9Gk3misKVU57GS68gup5jdta74TTxMiWNbZL4SL4RFNRks5o/YHN6T2QNmxlKh1SwO58khNAZiSLWvcSQAsIPdAxQqCFsehfjBlEjYnSWAYWbnR3zrJYertkgvnFjdMo+4GBZbEbMF8oETULhD6lq4as68deyVQ3mADcMCSyXLV1rs5vJQKbxzh7nuVES3okg5Il89L/U9WsBm6yv8x2/HJPjANPEyWtAtKEYt9RzbB72S2jIw0tbG1DHX5CfSjsr17sJoTxSNTwsnHY2VKGouROI/tOC+onKQtOcRduEO/DO7YWgZpY+ij/Lci5Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6cNMo+7jZAAUErf9dW7nqkwdO8y5fK3nbCxHhpt9JQo=;
 b=VwUkRWkIqwP9lyKJHp0ONa86EagtmoaSM0E0CoDmxF1d0u+gab0tc5jrdSZ1ahfIPxCfEqik0SB8tQuQNmo09m2/Y644koIbk/zm6ovT62rECyxiXoduU04c7xOEREV74jvi51C/497XIVR5oFTuXBXsOnFDzY5aP2k4uOAMAD/H+xA5u1iUyLi8JzsVhWLfOiL+G7USIJSaPYb1fEuIsezqL73NSQyMlftf0+mOWhlzybmdJlrE1dHOAIY1K1v/9877Cjy9hK5vdCI5ia3+6cHEQ9KN/2ChZ4PqukuNSi7WGiKq+T/cA72w4zT6q+Y5UeQJdDGVGM6SoeQOmp1GNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DSSPR11MB9618.namprd11.prod.outlook.com
 (2603:10b6:8:375::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 04:39:42 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 04:39:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v3 04/31] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Thread-Topic: [PATCH v3 04/31] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Thread-Index: AQHc3cFPPO1BZRU2RUaLNsRTsdpEXLYU1bOQ
Date: Tue, 19 May 2026 04:39:42 +0000
Message-ID: <DM3PPF208195D8D19839A5B3145823CC4FAE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-5-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-5-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DSSPR11MB9618:EE_
x-ms-office365-filtering-correlation-id: 8447295f-08dc-4450-aa46-08deb560a516
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|4143699003|3023799003|56012099003|22082099003|11063799003|18002099003;
x-microsoft-antispam-message-info: a0+txKcrTyqRs3gu8VhnRTI2za+liPF+vAN1OlEfNOwXhe1FHdVLEp8rklvhoXes3PPKGIgdoXwA1QeB6RjwaXSfQW6dXBJSDUpkGO6V4mTEDuUNPuS2BYXnSFfCUuGmdXDIxJDHdAlRJ+JqpC1hkagK9S5JnnTy8iYV4j5hiTOQRy8U783s6ejy5MYc1kzAwrHti0lpBQhdfjxlmk5dVfY8IL/fiwFCVLEBvgYLlxMik2SzHjLkZEHqtucs3gsTFy0AePEjgb9rDbB7lcbpxK+UmDV3S+L0tx4ukmIMmomp9DqEZvRrBZpxDhbl/cK+hhKZ41ZfpZEVsUoiRCqLUVKSF2OaxjV1FswC8aYMAhp34jBVf8YKgl0IGPfMdYPIE5QsN6HQ7pP+z24VZgmTzaRCxHjiqgaPyHuxr0ww/q6nL6sIV6Mdp2A1t0eWUC0UdYp5HcPQ0ynq2uIG19BIARd2alF97IIv6k8tge526lwSUf/c5HTPZjVGjmgHX3qVW8LDK6n3sR5pHESM56bm0bO9K7earkC/VsQAv8vNM7TO1cIg33s6VdMZ8ktb7e2lM933vBjzJ2zdXwKXPtjBuhgA2VQ1C3q7O7bQVNcdC68PFArtmAdJX9ZK6VO4d9k+cai0XFJPY4MnDReSaehysEv8DfQD4EdF+YneeFlfOGTe6ngeJhibEsFDXXjXJNkZsvb+oBPA8e5n5cdho8VZO8tAuls6bv4iG6P26w6GFlPoE0xNJREbNu5pGg9ozA06
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(4143699003)(3023799003)(56012099003)(22082099003)(11063799003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2MyME9wZDZZeFZ4ZHc4QjNOTnlaN1pYT3Jwb09qd2N3WWRTOFhoMHNmVUJm?=
 =?utf-8?B?OEtMMXloYUxyZjc2VWovMlZtSm9QOUdjeUtyOTlLT3FOK1dlZmRLT3VzQU1v?=
 =?utf-8?B?N1lpSXJRY1dxYnBBNXdJMklyb1RqaklIUzU2OXZnNGxnZTB5Q2RUd0ovNHdo?=
 =?utf-8?B?VTQvU2kwbG5kQmdDZHQ4RERqMjEwdzRFWGNLRnkxWUk5dXNuZzJ5amlHWjBG?=
 =?utf-8?B?ZGlGRXNSSFgrMmkwOTVDcDFJSkFncGxQZ3cyNVlpaG81YjgvMk9ZblZrRCsv?=
 =?utf-8?B?YjU2Nis2MUJJUmJQT3QxWXVGR2JwVUJQUnZ1WkpsY1hqTW9SWWFWN2NmWGwr?=
 =?utf-8?B?RGFJUC9pc2xJZVEydk85NFczMTlzK1VNbVNyb3lzY3NqY0JnM2JGU3BYNGNT?=
 =?utf-8?B?QVFzNC92UHNHQno0Yi8rN0lQdStjazcrQXp1ZC9CZ25PQlhmWFJST1V2aEdk?=
 =?utf-8?B?KzN0amFJVnFFYWxsNDd3ZDA0d0Y5cTdYREFhMTNLdHJwOHBzUWtteUZNRURP?=
 =?utf-8?B?WGhyNVdESHYvN1hPVWI5cVQ0emFxK2NYcmVrcmxIU0h0YkwzZXY1eThsclM2?=
 =?utf-8?B?aFRiTk5DY2pCWXZreUxPUDhFNllPWURndGRqSm9oV2psdWdoMUQzREh2MWJq?=
 =?utf-8?B?ZnYyWDgzb1haaVNCVG1NUmNhVTYwRk5LejlEclVSL2VUbEx6TnBHM25PQkhO?=
 =?utf-8?B?WHkreXZvYkFxT2lnQy93eTh6RjdIMHlGbEZiK0lBUVorYVZKYXYwYkx6cVg4?=
 =?utf-8?B?ckx4bXZXS2JvRGFaK2xoQ09neXNmVm1DbmZQUnIyTFBCUXZ3WkJpOVY4YWZk?=
 =?utf-8?B?YTkwOVFNSHArdkRkenp0WXZ0M1lJbFdSMm9UQ2c1T1NYVUV2akY3WWVjd3Yy?=
 =?utf-8?B?Rko5bFlnTURjYzh1Z2ZFa1psV1ZpUjZESy9PanFWR2lXR1ArL2hxOE14T1J5?=
 =?utf-8?B?eVYvTVhmUVBWa0txMlBWS2ExQm5CK2hkNnlUak1kVXdQRHlLbFBLa2g5NFVD?=
 =?utf-8?B?UkF6ZXJSMmcxZkhKMlpidGp4WHRXTk9oY1lMOW9IV0s0dTlQWDFGdERaWnRx?=
 =?utf-8?B?VkpQZ1I3alpkZm90WU4zTC8wajhjZzg5d1ZjTUNuZWh2UW43M3BybWRaY0dT?=
 =?utf-8?B?SW1UQ1lEeDV3U3YzK2dFRW1zelMxRUp4dElkelYwZy9jVFBGaXVSTUwxcVV2?=
 =?utf-8?B?L3FudzhaRjJscGxlZ3FFOTR2UlZZVkM0YVdNUk1Hc3RRQ216THVpVnQ5cW1O?=
 =?utf-8?B?OURQbzQ1NmZ5WSt2M3VibXcwWTBTdmxhZWkxOVdUL0YxMm5aNnlQTXFPNzRI?=
 =?utf-8?B?WWVlNEtMQTd4RUtzZlk2TGJqQWdNTGNFU1pUc25xL1VweGxnVUdHdklUYmgy?=
 =?utf-8?B?Z3RiSm1wK0hXelYxSzh3cFNadzR3RjN0Z3FxNGJxeVd0d1BxeHZCU3k1R2gz?=
 =?utf-8?B?alBOZ3NYbndkVlNJRzFUYmpIamM3cnhuemtIeFZJU3UrdDkzL1cwWGJhWCtx?=
 =?utf-8?B?Q0x0NU51bFU1bFcwWFpEL3ljcFE0cFdaeklpaml3NVpWY05TZ3ludFNSUkZX?=
 =?utf-8?B?Smlxci94UEs2MXRrYUNudHhPK241SW9GOUpjY3YzRTk4eUFSbnExKzZpdUxG?=
 =?utf-8?B?ZU03Mzk0bUFyTVViUlRTL1R5TEZKY0VBbDVTMHBkUU5lcUlXeDZWbEo2Q0FU?=
 =?utf-8?B?KzQ2YWJ3c2w4ZHdIbVc2MDh3ZnhELzQ0VEhYc3lRWmdFa0dzVzBWM2tyOVUx?=
 =?utf-8?B?TzlwYy9aT1FLbGxLRXY1Q3lWK0l0L3FEcXdHb3JFNlVtUEFRWjhQSHdVWnEy?=
 =?utf-8?B?Z3NJb1BFS0hMNzdDYkIzZ3NXc0pXdkx3UGZ6T2ZIWVRFcGdmTWp1eklocDNa?=
 =?utf-8?B?cC9WTGRXL2dxRUtQNjhRY0tYbXlVWXdmV3JJa2l4LzhwVW9EaUo1U0IvVnZK?=
 =?utf-8?B?aGZjbkxmNTNsV2FxZjMzOG9GZkZUK0VqSzBoeDZOdkRBTkdzUElUTU1oT2Mx?=
 =?utf-8?B?blRKa2ZFYnpoWHNQMyt1YmgwbHA4dEFGUGNtd3BJNjlUMHpTZm5oeTcrTFBw?=
 =?utf-8?B?MktBZUl1L0RqL3RpTG1xMTNxcndnTGJZdWtSOHNQMi9FZTB5d1NkS0lWclI4?=
 =?utf-8?B?UnArbi9KbGVFUGMya0o1L3RyMTI2TTVZRzdGQXJLemtNNkRlbThrK3FZR1JG?=
 =?utf-8?B?SzdnNUl4NnVIVEZYaHpObEhFZzg5QVRMVkdiRWZGckdPZ1ZMU2tnVEhiYVhJ?=
 =?utf-8?B?RE9TZmNMVUdmUUpNRHZjTnNtOXZHUHU2QmEzM0FkNW0zNVdaTnNpdDgrdXdK?=
 =?utf-8?B?UDUzVnRnc2huLzgwdXpHWDZwcjJCTDRrdFVtNmsxWTlTNk5IWU9Kdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PgaPjaextax8vDgpGHstv7uRxSU930xTnO3dBixTrOc5LeBjos676Um3QvXaXDHvDDDDPjjg2TwjYUIPlR1Z27Pw6Bvd+Sa18TwWo2qRHYYAD/fI5ACdWY9RZ+pQag2XQJ/Lbe8pTza2wzEfq41GxlnmiQ1Krfn98RgD54I++CUrSDWWz8GkhBvTYFi5lAJc0+fruIDPEs9YrAOJBB8YhWKyK3n8ovKSqFfL1WgauWiLFaws5rR2RltvLiNnGdfBpzm73j59pLv0Cla2xA5f3IzCqR2JPbXtQtAoTX7Iw8fByrQmWpu212A4NB+p14d1jCHmwXpgDChZ4piqpDSymQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8447295f-08dc-4450-aa46-08deb560a516
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 04:39:42.2798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: whS4aUgKLzTMvE1JpczcNwsP1aVJQe9Zv6USMF2EqoETgVyOFwx5nwhq9pUcjofKqgifW/WAJ88fTPpvL5p3ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSSPR11MB9618
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
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
X-Rspamd-Queue-Id: 89E9D577413
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3J6ZWxhaywgTWljaGFs
IDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXkgNywgMjAy
NiA3OjAxIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14
ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPjsgS2FuZHBhbCwgU3VyYWoNCj4gPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPjsg
R3J6ZWxhaywgTWljaGFsIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQ
QVRDSCB2MyAwNC8zMV0gZHJtL2k5MTUvYmlvczogc3RvcmUgVkJUICM1NydzIG1ldGFkYXRhIGlu
DQo+IGludGVsX3ZidF9kYXRhDQo+IA0KPiBTdG9yZSBudW1iZXIgb2Ygcm93cyBhbmQgbnVtYmVy
IG9mIHRhYmxlcyBpbiBpbnRlbF92YnRfZGF0YSB3aGVuIHNlYXJjaCBmb3INCj4gdGhlIFZCVCAj
NTcgc3VjY2VlZGVkLg0KPiANCj4gRGlzcGxheSB2ZXJzaW9uIGRldGVybWluZXMgbnVtYmVyIG9m
IHJvd3MgcHJlc2VudCBpbiBlYWNoIHRhYmxlLiBwcmUtTVRMDQo+IHBsYXRmb3JtcyBzaG91bGQg
aGF2ZSAxMCByb3dzIHdoaWxlIE1UTCsgc2hvdWxkIGhhdmUgMTYgcm93cy4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IE1pY2hhxYIgR3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICAgICAg
fCA3ICsrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9jb3JlLmggfCAzICsrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBpbmRl
eCAzZjllNGQzMWM3Mzc1Li5kNjQ2NjhjMTAyMmE3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtMjIwMCw2ICsyMjAwLDkgQEAgcGFyc2Vf
dnN3aW5nX3ByZWVtcGhfb3ZlcnJpZGUoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkp
DQo+ICAJCXJldHVybjsNCj4gDQo+ICAJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiVlMvUEUt
TyBwYXJzaW5nIG5vdCB5ZXQgc3VwcG9ydGVkXG4iKTsNCj4gKw0KPiArCWRpc3BsYXktPnZidC5u
dW1fdGFibGVzID0gYmxvY2stPm51bV90YWJsZXM7DQo+ICsJZGlzcGxheS0+dmJ0Lm51bV9yb3dz
ID0gRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQgPyAxNiA6IDEwOw0KDQpXaGVyZSBkaWQgeW91
IGdldCB0aGVzZSBudW1iZXJzIGZyb20uIEJzcGVjIHJlZmVyZW5jZSBtYXliZS4NCkkgYWxzbyBz
ZWUgeW91IGhhcmNvZGluZyB0aGlzIGluIHRoZSBuZXh0IHBhdGNoZXMgbWF5YmUgeW91IG5lZWQg
YSBoZWxwZXIgdGhhdCBjYW4gYmUgdXNlZC4NCkFsc28gREcyIGFsc28gdXNlcyAxNiByb3dzIGZy
b20gd2hhdCBJIGNhbiBzZWUgDQoNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdTggdHJhbnNsYXRlX2li
b29zdChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgdTggdmFsKSBAQCAtMjk5Nyw2DQo+
ICszMDAwLDEwIEBAIGluaXRfdmJ0X2RlZmF1bHRzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5KQ0KPiANCj4gIUhBU19QQ0hfU1BMSVQoZGlzcGxheSkpOw0KPiAgCWRybV9kYmdfa21zKGRp
c3BsYXktPmRybSwgIlNldCBkZWZhdWx0IHRvIFNTQyBhdCAlZCBrSHpcbiIsDQo+ICAJCSAgICBk
aXNwbGF5LT52YnQubHZkc19zc2NfZnJlcSk7DQo+ICsNCj4gKwkvKiBWc3dpbmcgLyBQcmVlbXBo
YXNpcyBPdmVycmlkZSAqLw0KPiArCWRpc3BsYXktPnZidC5udW1fdGFibGVzID0gMDsNCj4gKwlk
aXNwbGF5LT52YnQubnVtX3Jvd3MgPSAwOw0KDQpXaHkgZXhwaWxpY2l0bHkgbWFrZSB0aGUgMCBu
b3cgdmJ0IGdldHMgaW5pdGlhbGl6ZWQgd2l0aCBldmVyeXRoaW5nIDAnZCBvdXQuIEFzIGludGVs
X2Rpc3BsYXkgaXMga2F6YWxsb2MnZA0KDQo+ICB9DQo+IA0KPiAgLyogQ29tbW9uIGRlZmF1bHRz
IHdoaWNoIG1heSBiZSBvdmVycmlkZGVuIGJ5IFZCVC4gKi8gZGlmZiAtLWdpdA0KPiBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IGluZGV4IDc2NzQ1
Y2U2YTcxNmUuLjM2ZWE0ODczZGVlYjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBAQCAtMjQyLDYgKzI0Miw5IEBA
IHN0cnVjdCBpbnRlbF92YnRfZGF0YSB7DQo+ICAJc3RydWN0IGxpc3RfaGVhZCBkaXNwbGF5X2Rl
dmljZXM7DQo+ICAJc3RydWN0IGxpc3RfaGVhZCBiZGJfYmxvY2tzOw0KPiANCj4gKwlpbnQgbnVt
X3RhYmxlczsNCj4gKwlpbnQgbnVtX3Jvd3M7DQoNCkxldHMga2VlcCB0aGlzIHU4IGhlcmUgdG9v
IGZvciBjb25zaXN0ZW5jeQ0KQWxzbyBtYXliZSBudW1fdnN3aW5nX3RhYmxlcywNCm51bV92c3dp
bmdfcm93c19wZXJfdGFibGUuDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gKw0KPiAg
CXN0cnVjdCBzZHZvX2RldmljZV9tYXBwaW5nIHsNCj4gIAkJdTggaW5pdGlhbGl6ZWQ7DQo+ICAJ
CXU4IGR2b19wb3J0Ow0KPiAtLQ0KPiAyLjQ1LjINCg0K
