Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yExfJ6lyAWoZZwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 08:09:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52041508672
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 08:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FADE10E47A;
	Mon, 11 May 2026 06:09:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=microchip.com header.i=@microchip.com header.b="3gVLHQg0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN1PR04CU002.outbound.protection.outlook.com
 (mail-eastus2azon11010012.outbound.protection.outlook.com [52.101.56.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E117B10E116;
 Mon, 11 May 2026 06:09:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hlQznfQlIRH4X2sjvv6qIBQItlIb0rMWjnJjMJOd6vsgT4q+VSdnySigztQaLThbuVOguKyYeNuItJZ3kEHbyEuE+eJ0hnGHpX/JiIffYI0trcKj4xpFtxvYgKgs5ogI6lRIFVSzKPgFYno9X3U+kZE0+PPXQOaymg2nNTTryAwQlJQ+rABgE/G/z/Ym54MOQFjdTyiJEgoxFmI4rI+UXslurIUlhNFYAdkB4hn8HQXpMz4Hyft55FAuAeSODeOWfHCybgBDsqkuGCxI0Xf6BSATSuP7NiK6SbTEaptIjK//3ksoy/5XgYwRcG8Z6OBXBvc+cSI49XjctpnG/nKhIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+GXwab8UOSkXiufiheJN7ZFJWqoZeNVjMJChPFW1i7w=;
 b=R/rxZVoX2beEUJxLP95J1S4Ac5EmiIEIgKkBEKI5HD8ChuuBy7G9CwjKhCCLrYyRUItfKcsSne2J6imR0qpBa6Xsa+MVpZLnR1liXpkgspANB9RrfdBOPeLLdykEWerZk+vKmcTZVFx7DdL1pzbIQua+uO9IigDK2uZooC59Uik9eEWpk+9s4iu881OU99TlSHemScogPw1xxKGY/+zSKg2smiGPiCU7/e5Fnj5/XxvAflDG2e+CUIx+X9/0oZLaHSjFU/EeEg8/yHIfkMUL9lnDTBlCJ72zFployyonrPgZvg/L7e6Bi+vi6wPbS134RwwUgr5gFKcgnVNljfMg0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+GXwab8UOSkXiufiheJN7ZFJWqoZeNVjMJChPFW1i7w=;
 b=3gVLHQg0jo8C6J2tNKhn4ELE8IROvKid4xq4FRovoIB3oCG0sQrCE6GoYTICWUTo9SWcSwzECdxm6G9RKbrPYL8aiN86G9rHK/liyh0K9yvojAIUHDzfPkmI4iS0K5QdCzD7/36eKyQIvdkCVSQ6w4WvzPHXzNV1NlbZXIBgEu/XV+Re0GIqn7lNiYbFD5uDdYB/zQFnUTunylfulmXDH/Di6+P2PleQjMemp69HVivLFUBxJpa3Lma3qX7nDymvCwZjhGIYHOlJjQOXjaSBgxh57MFUfbtXH9IyjzitQVWp/OLy2OJ0AA1PN1pu862FqtJjfUUeAO+0gugeR517UQ==
Received: from DM3PPF9623118BD.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f3a) by SA3PR11MB8117.namprd11.prod.outlook.com
 (2603:10b6:806:2f0::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 06:09:32 +0000
Received: from DM3PPF9623118BD.namprd11.prod.outlook.com
 ([fe80::ad98:5674:dd4c:875d]) by DM3PPF9623118BD.namprd11.prod.outlook.com
 ([fe80::ad98:5674:dd4c:875d%6]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 06:09:32 +0000
From: <Manikandan.M@microchip.com>
To: <thierry.reding@kernel.org>, <simona.vetter@ffwll.ch>
CC: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <dharma.b@microchip.com>, <mripard@kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-next@vger.kernel.org>
Subject: Re: linux-next: build failure after merge of the pinctrl-intel tree
Thread-Topic: linux-next: build failure after merge of the pinctrl-intel tree
Thread-Index: AQHc3g73ZqkDXcRdmUqJf0wb/kGm9bYIXViA
Date: Mon, 11 May 2026 06:09:32 +0000
Message-ID: <b27179a8-9eb2-453d-8630-5eeff5bab295@microchip.com>
References: <3b729608ad4bc3bb161c3779a9768b12@kernel.org>
In-Reply-To: <3b729608ad4bc3bb161c3779a9768b12@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF9623118BD:EE_|SA3PR11MB8117:EE_
x-ms-office365-filtering-correlation-id: 3417b661-3474-4de8-cdde-08deaf23dea4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|38070700021|56012099003;
x-microsoft-antispam-message-info: Mz2bFvXdWd60ruZ/7HAAHK40AA3eXMff/nWPb9cI7uAlVDofM8AW03hyqE/kmum0nyoVHI6y/fYs8gpKwSh06RzyFplKd4BX9PU/NytGFbFTdB8to76b52Q8+lDW/4EXIvP3lPIN9CJ80K1YDzhbAWUrs8rrgkTgUDSutv6vHwhhg1HHdLD92NB3x0libyr2CRPmADl3akI/Qr4xrVmwPTywduGcdLgJdOBNP6j9AnMDeMCy5Rex4nha0OuF/UM3F7Sd/4b82SKoyarAU90vrSqZXP/gX1Ig3fGEEF8/W7shGo01GBeCRGNpKmTGNiOTicZuUR93l24wi0GT7yri/u8Em/0q/jkvzelDOu55sru8AmMeaib4cBEURiJ0BskviE7xwHF9ZZLOd8ftUukXeF16xLLYXgi0Xe4AK6aOkoz89cICX1a/foWl3ALE7LicgQXoZY8V8lW1F09vQ499SJ31WkFzMtG2GQ7cyFl1kCh4qCDvEMnVNLkXa4PvXPJ5kwMktQySqXvrJhUyigNo4YxofLEJv4B1DRtApGEb+xGpDvT2OLfYl/kKOMqf5oYMBS6cLdh+765ff8prRkm3Wu2A9tv96IxQMzx6dpSydNz8bWd8IL6mppM5BIlSAunr3yHgMSfzdD2BtfmyIkD/Q3tniKQjGJ/HhyHMMvJCd4kj1uT5q5q736VblL0Dnc/vrWmxh9HN5Jui0s+KI6OXAX/+g/c5PUCkwqRLd8fCPaKgxNIM1fwBI2fGIBdBbdFL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF9623118BD.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGlCSFI4MkQzS0dxS2pJUnVmUUpZYVRNckk2UlpxUGIxaXoxL0FIUGl1UlJy?=
 =?utf-8?B?em04Uml1ZnFBcHhzWHBpRUJXRWFreUtBZ3RYNWIwaTFycDJsZXIwKy9LYUNZ?=
 =?utf-8?B?TlREM1E3RDg4V1RYUW9VVEtFZXplbS9kSE5IbDR3YUl3WW8zYzlZRGRCNTFx?=
 =?utf-8?B?a2dzTmF5L3BZWm80dllNUTYxYk1wU0tXMzhicUdPbkxpalZqa1lFSFI5dnFW?=
 =?utf-8?B?RkhOSmZDM2JJR1Yzd3J3d1pKcDB3blJpKy92aGdCS2oySjQ0ZXdVYWpxN1dL?=
 =?utf-8?B?UmUwb1VRcTFpTVFRTmhaZUhkTmhmeXdmd3k5dWcvTWtIb2lUYlpqRFRuRFZF?=
 =?utf-8?B?b1Z1b095eitXOENULzYwell0MUorRVYvbElLak02Zm8zQWJUcTZUQ003alpl?=
 =?utf-8?B?NmtwZmJSU3l2Z2M0RThPUk16WkJReTFxVlFrUlZOdVdoQi9CN3U2TVJlUHRo?=
 =?utf-8?B?N09RK0hPZHFDSlNMRzVPR0ZVYU1SdW5WRTVueWIvb29SY0MyQlVJMTVXOWth?=
 =?utf-8?B?QWJ2bGFtNG1DNkZnd0tCcFZIeWNvRTZYeXlBdVgzZjcyK0JVSDBlQXpadmR4?=
 =?utf-8?B?RXhCSThtNlBJcmtnVzQ1QWluL1cyY3laZHhDbi8wYXZUM3Q5bVBsaVQyczFB?=
 =?utf-8?B?TmVHbFc1YnZTWi9nYnpRTjRZTm9DVmxBTWcxeThSWHQrNmNlUVNraTl6Znc4?=
 =?utf-8?B?MmNEdCtHZG9MdEFqSGtLUmtGTkg3bTFIRmVoQzFUbFlWVnJidzVVRlVGNGFs?=
 =?utf-8?B?YUxqR25RMndtT1VCcEIrTFUzalpLakVvdUI1RUZTQ0dINHM5dFlSaGpER1FE?=
 =?utf-8?B?MkpZQW5uRnp5ckhvUG15N09qNHVuMllvNmJNR0xCU1FiNmFOM1U3THZKb0pJ?=
 =?utf-8?B?VHIrNGFlREk0MUJEN2JIUlRDY2RJSWtZQ1B2eURvRzQxcVJBamxiV0JsWkF5?=
 =?utf-8?B?cWI0NUpiT1ZYa2FieHpHOFVyL2dpeTNFSGcyMTgxWFNJUHYrR1BGZ1c4UStP?=
 =?utf-8?B?M2FmcjFjalhFWGo2M3M2NkZCUUtTQ2NxYWhCSzlwcFhSQnVQYmFXWHprMzRH?=
 =?utf-8?B?ME1OSlVhR24vWjBEb0xESkFTeTByZXFXL2hYRnFlNUU5ZmZYczc1OVQ2bVBO?=
 =?utf-8?B?YW1ORWQ4VU03WXlBd09NbWMzb0Z4OFkzVzVob0tReHY4L1BSbXZLSEZzZ1Bo?=
 =?utf-8?B?RWRrVG1McVBiUXcvYXZleTF4amJ0YlNBOE5QSWU0RTRXYXU5WHhTMU93V3Jh?=
 =?utf-8?B?ZkRLakJyRGNoRWxOSHdFb2s3TURGajA3U0wxOG51dUk4eDBISFhRUGdVT0pI?=
 =?utf-8?B?QWxzL1FmWjE2UlFDL0IxN0wyMzkrUjVnWWkyRG5PcFRqMHBRUkVNckx6WDNJ?=
 =?utf-8?B?ekJjbTdHR2NQdVlmaGFmMWR5VmU4ZlFqY0U3S29NaXRlOU16bWhEcXA3Nkoy?=
 =?utf-8?B?MDVuaVN0N05RTkRRQmtCVHJnOFpLMy94T09CdERXdHhybzdKRVE2Q3pGcWU4?=
 =?utf-8?B?d00zMEdlYVZNZTRHN3FtN2QwdGFJRENod1hXRVF1VTBCSGNKTGxtMUQ4Y05k?=
 =?utf-8?B?YnJQUEZ4MmNCUUdEampCTHBwNkJiVnBXTDRqcUlZVnREUW1NMWpJWXA1UFRW?=
 =?utf-8?B?ZXpJczBTZ1NVSFEyZFJRNkMvNFp0bVNPUnNGT0loOGJPOFJjdnBVTjBKU1N6?=
 =?utf-8?B?Sm1rbndPcU1MM0U0Z3NYei8xWGRZZ0trWXc1RUxpMHdjZElHYUlGQkhITzVI?=
 =?utf-8?B?YUd1cjdWTXZWQUpsUWpxbzYwZTlESW5SM2J1NFN2dENGOVoxMWlqT2dwS3d5?=
 =?utf-8?B?SHE0dzlzRkdNcmJhZVAzem01bDFPeVFmU1ZrWDFsQ2E1d1pKOUpYWHNBalo2?=
 =?utf-8?B?a3NCaU5hdmNzdmRzUFZReWpjR2NsRmptVjlKV3NhalowZEhpb09xVE5yWFd2?=
 =?utf-8?B?eVNWQWxuaXRkT28vSHdmZW0xTVJ4cXJWYUNVaTlEd2pOSnByaGRFcmg3OThJ?=
 =?utf-8?B?aUxrMGVyQ1htdlJHTXh0WTNGd3p6UGZ6WjRtb2UyaTdGYzd5OUhrNVJUZEhP?=
 =?utf-8?B?UEw5dVE1ejdzeEFxeWVYY3Z4dWlaV2sxTVFidG52WDR1WStJYTFscUdGWHBP?=
 =?utf-8?B?RTZrc0xTYzlFWHVOUE1aeG4xVjZQNmJFU2Q1dmpLY3l2b2p3d09na1BJM1FQ?=
 =?utf-8?B?UmZMOHNySTZ6RnowUjhTWE8zUG9VWXphWkp0Rk5XNkZ2UDlkYWw2SVdQV2I0?=
 =?utf-8?B?RUdGQU1GTzNJRnVQREhOUHJYTmx6SDBCRUtwZy84VU41cVF6dGtWQm9tUElt?=
 =?utf-8?B?amFFcnhwY0FKbmRqb0dTV2F3Y3Bvb3RMRlFLeEhKci95OXZtelc1dz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A81A763939614F4F8F853880D100497C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: microchip.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF9623118BD.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3417b661-3474-4de8-cdde-08deaf23dea4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 06:09:32.6965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G8sshzV1qEDpC/yigOBb/1ki8t/29ogWAF5LhrgyEZdUwBp/aj4mUVhQJNuCkzUSYA1PNdGsk+iEuWPjvI6fNOw6+d2tI6fbslQ/48NQ1ao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8117
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
X-Rspamd-Queue-Id: 52041508672
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Manikandan.M@microchip.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[microchip.com:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

SGkgVGhpZXJyeSwNCg0KDQpBcG9sb2dpemUgZm9yIHRoZSBidWlsZC1mYWlsdXJlIGludHJvZHVj
ZWQNClRoYW5rIHlvdSBmb3IgdGhlIHJlcG9ydCAtIEkgd2lsbCBmaXgtdXAgdGhlIGRyaXZlciBp
biB0aGUgZHJtLW1pc2MgdHJlZS4NCg0KT24gMDcvMDUvMjYgNDoxNyBwbSwgVGhpZXJyeSBSZWRp
bmcgd3JvdGU6DQo+IEVYVEVSTkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBh
dHRhY2htZW50cyB1bmxlc3MgeW91IGtub3cgdGhlIGNvbnRlbnQgaXMgc2FmZQ0KPiANCj4gSGkg
YWxsLA0KPiANCj4gQWZ0ZXIgbWVyZ2luZyB0aGUgZHJtLW1pc2MgdHJlZSwgdG9kYXkncyBsaW51
eC1uZXh0IGJ1aWxkICh4ODZfNjQNCj4gYWxsbW9kY29uZmlnKSBmYWlsZWQgbGlrZSB0aGlzOg0K
PiANCj4gICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9taWNyb2NoaXAtbHZkcy5jOjEzMjo0NDog
ZXJyb3I6ICdzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZScgZGVjbGFyZWQgaW5zaWRlIHBhcmFtZXRl
ciBsaXN0IHdpbGwgbm90IGJlIHZpc2libGUgb3V0c2lkZSBvZiB0aGlzIGRlZmluaXRpb24gb3Ig
ZGVjbGFyYXRpb24gWy1XZXJyb3JdDQo+ICAgICAgMTMyIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgICAgICAg
ICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+
fn5+fn5+DQo+ICAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbWljcm9jaGlwLWx2ZHMuYzogSW4g
ZnVuY3Rpb24gJ21jaHBfbHZkc19hdG9taWNfZW5hYmxlJzoNCj4gICAgZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9taWNyb2NoaXAtbHZkcy5jOjE1Mzo2MjogZXJyb3I6IHBhc3NpbmcgYXJndW1lbnQg
MSBvZiAnZHJtX2F0b21pY19nZXRfbmV3X2Nvbm5lY3Rvcl9mb3JfZW5jb2RlcicgZnJvbSBpbmNv
bXBhdGlibGUgcG9pbnRlciB0eXBlIFstV2luY29tcGF0aWJsZS1wb2ludGVyLXR5cGVzXQ0KPiAg
ICAgIDE1MyB8ICAgICAgICAgY29ubmVjdG9yID0gZHJtX2F0b21pY19nZXRfbmV3X2Nvbm5lY3Rv
cl9mb3JfZW5jb2RlcihzdGF0ZSwgYnJpZGdlLT5lbmNvZGVyKTsNCj4gICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Xn5+fn4NCj4gICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiAgICAgICAgICB8ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2F0
b21pY19zdGF0ZSAqDQo+ICAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBpbmNsdWRlL2RybS9kcm1f
YnJpZGdlLmg6MzEsDQo+ICAgICAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL21pY3JvY2hpcC1sdmRzLmM6MjU6DQo+ICAgIGluY2x1ZGUvZHJtL2RybV9hdG9taWMu
aDo3NTg6NzQ6IG5vdGU6IGV4cGVjdGVkICdjb25zdCBzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQg
KicgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUgJ3N0cnVjdCBkcm1fYXRvbWljX3N0YXRlIConDQo+
ICAgICAgNzU4IHwgZHJtX2F0b21pY19nZXRfbmV3X2Nvbm5lY3Rvcl9mb3JfZW5jb2Rlcihjb25z
dCBzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKnN0YXRlLA0KPiAgICAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5efn5+fg0KPiAgICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL21pY3JvY2hpcC1sdmRz
LmM6IEF0IHRvcCBsZXZlbDoNCj4gICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9taWNyb2NoaXAt
bHZkcy5jOjE2MTo0NTogZXJyb3I6ICdzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZScgZGVjbGFyZWQg
aW5zaWRlIHBhcmFtZXRlciBsaXN0IHdpbGwgbm90IGJlIHZpc2libGUgb3V0c2lkZSBvZiB0aGlz
IGRlZmluaXRpb24gb3IgZGVjbGFyYXRpb24gWy1XZXJyb3JdDQo+ICAgICAgMTYxIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpz
dGF0ZSkNCj4gICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF5+fn5+fn5+fn5+fn5+fn4NCj4gICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9taWNy
b2NoaXAtbHZkcy5jOjE3MToyNjogZXJyb3I6IGluaXRpYWxpemF0aW9uIG9mICd2b2lkICgqKShz
dHJ1Y3QgZHJtX2JyaWRnZSAqLCBzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKiknIGZyb20gaW5j
b21wYXRpYmxlIHBvaW50ZXIgdHlwZSAndm9pZCAoKikoc3RydWN0IGRybV9icmlkZ2UgKiwgc3Ry
dWN0IGRybV9hdG9taWNfc3RhdGUgKiknIFstV2luY29tcGF0aWJsZS1wb2ludGVyLXR5cGVzXQ0K
PiAgICAgIDE3MSB8ICAgICAgICAgLmF0b21pY19lbmFibGUgPSBtY2hwX2x2ZHNfYXRvbWljX2Vu
YWJsZSwNCj4gICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn4NCj4gICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9taWNyb2NoaXAtbHZkcy5j
OjE3MToyNjogbm90ZTogKG5lYXIgaW5pdGlhbGl6YXRpb24gZm9yICdtY2hwX2x2ZHNfYnJpZGdl
X2Z1bmNzLmF0b21pY19lbmFibGUnKQ0KPiAgICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL21pY3Jv
Y2hpcC1sdmRzLmM6MTcyOjI3OiBlcnJvcjogaW5pdGlhbGl6YXRpb24gb2YgJ3ZvaWQgKCopKHN0
cnVjdCBkcm1fYnJpZGdlICosIHN0cnVjdCBkcm1fYXRvbWljX2NvbW1pdCAqKScgZnJvbSBpbmNv
bXBhdGlibGUgcG9pbnRlciB0eXBlICd2b2lkICgqKShzdHJ1Y3QgZHJtX2JyaWRnZSAqLCBzdHJ1
Y3QgZHJtX2F0b21pY19zdGF0ZSAqKScgWy1XaW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdDQo+
ICAgICAgMTcyIHwgICAgICAgICAuYXRvbWljX2Rpc2FibGUgPSBtY2hwX2x2ZHNfYXRvbWljX2Rp
c2FibGUsDQo+ICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn4NCj4gICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9taWNyb2NoaXAtbHZk
cy5jOjE3MjoyNzogbm90ZTogKG5lYXIgaW5pdGlhbGl6YXRpb24gZm9yICdtY2hwX2x2ZHNfYnJp
ZGdlX2Z1bmNzLmF0b21pY19kaXNhYmxlJykNCj4gDQo+IENhdXNlZCBieSBjb21taXQNCj4gDQo+
ICAgIGM0Y2JlNWQ5ZTg3ZCAoImRybS9icmlkZ2U6IG1pY3JvY2hpcC1sdmRzOiBtaWdyYXRlIHRv
IGF0b21pYyBicmlkZ2Ugb3BzIikNCj4gDQo+IGZyb20gdGhlIGRybS1taXNjIHRyZWUgaW50ZXJh
Y3RpbmcgYmFkbHkgd2l0aCBjb21taXQNCj4gDQo+ICAgIDUxNjRmN2U3ZmY4ZSAoImRybTogUmVu
YW1lIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlIHRvIGRybV9hdG9taWNfY29tbWl0IikNCj4gDQo+
IGZyb20gdGhlIGRybSB0cmVlLg0KPiANCj4gSSBmaXhlZCBpdCB1cCAoc2VlIGJlbG93KSBhbmQg
Y2FuIGNhcnJ5IHRoZSBmaXggZm9yIG5vdywgYnV0IHBsZWFzZSBnZXQNCj4gdGhpcyBmaXhlZCBp
biB0aGUgZHJtLW1pc2MgdHJlZS4NCj4gDQo+IFRoYW5rcywNCj4gVGhpZXJyeQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbWljcm9jaGlwLWx2ZHMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvbWljcm9jaGlwLWx2ZHMuYw0KPiBpbmRleCAxMmZjNDQyZjk4Njcu
LjVmYjg2MzNmNDNjNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9taWNy
b2NoaXAtbHZkcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbWljcm9jaGlwLWx2
ZHMuYw0KPiBAQCAtMTI5LDcgKzEyOSw3IEBAIHN0YXRpYyBpbnQgbWNocF9sdmRzX2F0dGFjaChz
dHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLA0KPiAgIH0NCj4gDQo+ICAgc3RhdGljIHZvaWQgbWNo
cF9sdmRzX2F0b21pY19lbmFibGUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwNCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0
YXRlKQ0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2F0
b21pY19jb21taXQgKnN0YXRlKQ0KPiAgIHsNCj4gICAgICAgICAgc3RydWN0IG1jaHBfbHZkcyAq
bHZkcyA9IGJyaWRnZV90b19sdmRzKGJyaWRnZSk7DQo+ICAgICAgICAgIHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3I7DQo+IEBAIC0xNTgsNyArMTU4LDcgQEAgc3RhdGljIHZvaWQgbWNo
cF9sdmRzX2F0b21pY19lbmFibGUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwNCj4gICB9DQo+
IA0KPiAgIHN0YXRpYyB2b2lkIG1jaHBfbHZkc19hdG9taWNfZGlzYWJsZShzdHJ1Y3QgZHJtX2Jy
aWRnZSAqYnJpZGdlLA0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGRybV9hdG9taWNfY29tbWl0ICpzdGF0ZSkNCj4gICB7DQo+ICAg
ICAgICAgIHN0cnVjdCBtY2hwX2x2ZHMgKmx2ZHMgPSBicmlkZ2VfdG9fbHZkcyhicmlkZ2UpOw0K
PiANCj4gLS0NCj4gMi41Mi4wDQoNCi0tIA0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KTWFuaWthbmRh
biBNLg0KDQo=
