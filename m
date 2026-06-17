Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sJKoDShpMmpXzgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:30:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7C8697EAD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:30:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VJ3NGV6n;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C5FB892E4;
	Wed, 17 Jun 2026 09:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55028892E4;
 Wed, 17 Jun 2026 09:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781688613; x=1813224613;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r+34NnxcJC/Mm8LylptXxxF2dfkaa/XDgad9mFQx8JI=;
 b=VJ3NGV6nwtzw8D2pmtGLy7lQsST+mfyowuuzuZ51Z4th2Xn9XBy7R5qJ
 oNugBhOG2+JtCueNz+5UpZDrGiB2oeMk1dKZeyexXiy0ghFtUKjkitPm5
 0q1jlU4m579VInQFmjStvEEw5VyTbSOw69IUxIwefXcktTnmXUK/YcvoS
 HNPOTd9tS0x/lfTBehAhe6s+n4C2GNTsNG7+6UTea+JBKs3jTt0N2ANGk
 VzERIJQsXuxA4vPELGeLQhq8wZxY7J8jLSIc0GEDYhvzifKJ9s45GGl4R
 vW4kpTRsIpdahUUhhhE9S2sXjCQ5VN75qGHGDCK3XtSf+aZVqvlEVabq8 g==;
X-CSE-ConnectionGUID: rGVa2TmgQhOBCGfb3XLaBA==
X-CSE-MsgGUID: UbN6gTGfSy2H9RPGQlH38Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="107947017"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="107947017"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:30:13 -0700
X-CSE-ConnectionGUID: 72RHu3QWRwW6jcqNXAUNvA==
X-CSE-MsgGUID: r0PHN4jWQbybAUsu4ZhQnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="247892386"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:30:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 02:30:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 02:30:12 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 02:30:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hHCglXzKD6Wk58OXMDlfCCZgyUQUh+gNTo4+9aa9O/rGfQOCD9W+KHFSm0PNY1h+YHS7fj5z9OlpSrBCPZXxO58pn27bMou/wWwuZrje9iramzQhxHYepi5wYR9INQtgA7hRCqRuKlTGyUAi4+VcGQ48GhYBO+vpvCShJ5dk+2RCNIW4+uYwuLltHLfXT2pSt/1Z7mhHcyYxd6XTI+NMm4eca83wA0fZMVWoj5C+uSh3RATuKx6LB2Fh09/YQS9ZWMLBMWzNkPnLroiFWNyR7oWRVcqLSFnzoXdnlq/nIEfkWPEzEMS+JG5Is5V9A38KnTW5N6jIkf4hyLXOhK65fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RQgxpGwS5+rXex70TOJnel7KSAtvqZnKzL5HnQnnRb8=;
 b=pvEbqTM2H1XqUJs8r42Pd6IHHtOyPWqmzHaGrfXcnRMSvlRw3yX2Pf+AzjuvdnL5fR7UU6ktg1rz/OccHSgy5Idyf1Kqoitczl3Um/JRo9ZYtAB3u/jkXMj//J290iU0GuEIyMcbcdJBfsul1R6qgLxJ2LdWDLq2+Dl0b2ubCDn8JT7Lo/sAfsO2unNvQEVowKtlJhI2yMKLP4G9Nn3iooB4iuW+W18xlOJk/kSJ59cR8CUtRkdepFi84BQH6iy8HTyyu3gTk+y6+OEuD8vY9pzerzDBzZ79wQ3YsL+AKmjbIXr53IsFOcACrqTVsnMEUmv8eUEwIrM7Cc2vbOirAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA1PR11MB7853.namprd11.prod.outlook.com (2603:10b6:208:3f7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Wed, 17 Jun 2026 09:30:10 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 09:30:10 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 10/16] drm/i915/display: PSR2: Set idle_frames to 0 for
 DC3CO
Thread-Topic: [PATCH v6 10/16] drm/i915/display: PSR2: Set idle_frames to 0
 for DC3CO
Thread-Index: AQHc/ayAP1MJZUrMz0ya+Maj31dJCLZCfD/w
Date: Wed, 17 Jun 2026 09:30:09 +0000
Message-ID: <DS0PR11MB804991D0E1908D8E6C8716EAF9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-11-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-11-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA1PR11MB7853:EE_
x-ms-office365-filtering-correlation-id: c205a43d-29ec-4a1e-957c-08decc5306b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|38070700021|18002099003|22082099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: XcIjU+j+Zzk3iZ+AcG8kFRPwvb/rLoOb3h0rQkx8H+zGTodtHcjzsTzqPNszrfnMUgwcNvRStXKyTrP31gfUiWTTEUkx5RmLgK6DL1V0nmTrXbk8kpSbzlOqctlA5nAnmspezu/BE0NhVbbVQHeAcunFUpIGTaLMrXrkn9RiIp6rfzT6nq3KLiFXRKXb0et8Em/blDajcvv52yIkmCGeRkwwauyntcEq5qdcy+ha5/IoPvBS6O8MMGpoAf5zYRzFI2odO9v9XPTdUIN0QFvk1P/+loWJeARmcUhU8TrTwcliV/BBzhhIFT55hwO1O/8WAEpjPGuGcQRbhXUjU32zv3/6kxVKjUWp+dfUjJK55BiE/UytK1etJct75MBFuPOLmVLRxr967a9oKBw68ibLjhPmlfCscY/g1vdMNT2/dSLvck+Dm77Y5SUXmp4x5F+d4GU5FOvEgf32a8ykUhjVzhcrlwodAOzxYlWMqWcZCejll2SHlvDpSasxTgkELQkmXH5OoPkOUn/S/9vEMqXHkn4ODbHRyTSapn+3Dx/TD0uVDJRy9P3zIgWAClYDbP9SrA3xVMqQGajNf4mza5J4en6iE/fNEv9YtxLV1EMWmz1v+FKKd0gFCgl8ISFHtjHl0E2mLbJlTy6xDXztV3BiNmYvhIh4KM82ht3rUCrhKYP4OZNBa2EYo7m9PF0UK8pi4jrGEceKHg7hwNzXKC8iSpljPKHItrq3XUOYfdNaOR3vLeQsSDoB3PhicE24NDi7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(38070700021)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H23mrU8/oCQT7b3kp4pCHFVLucIU3JuSbG/AXzjPzezdtGs2LRKd/iXlOsi5?=
 =?us-ascii?Q?bZ4B+xpxT181azAEVYgjiDn1Lb4sZmGVKPwfar8wcUfeGuNyj3Reovxvvh58?=
 =?us-ascii?Q?u4RsfE3/UseVALvggY8zdSGRmnb2OaBkPQoLOITZd2V7WqjXPWUU/0fGqHV0?=
 =?us-ascii?Q?ohDzVzYxgs3aR4+7+NdKQVzXg8d04p+4QGvgViIEHCzhiChxWMXbscYqBrUA?=
 =?us-ascii?Q?N1lSoLrSMv186oIJU7GCyQ0+CG3yERuifN4t3YXdVAH47ALaWC/GUhNcawcl?=
 =?us-ascii?Q?KEogg5EhaO/ZS4pqmPs/lA9GkAqobBZYnKCbK/1UsRsOoBv4TfwUEnTWQi78?=
 =?us-ascii?Q?/8GrO4DfgUIjFSI25uzZtwqpajc8NqTR0cT+BgeBekbT9ufcIEao6ro68OU4?=
 =?us-ascii?Q?/RkEZYMCc/KHFXXifOP0p5wduk/x4leeKGiHgQKKhJUy6BPgfB2V6/sydfJa?=
 =?us-ascii?Q?HqQKl/wQXfRDbvotCikw8mV0mfX049/QX6I5w01xh/mYFOLyNsteA7XXYt5c?=
 =?us-ascii?Q?DX3pS3Zm2xsOVO20vo2JX/Pw27pUyt+POYsjCVMmgZpnRAKYEzU5BtVRiNzp?=
 =?us-ascii?Q?kKBRNkqXenCaTm+WAmZaJLSdI1W2PfoJbf6sqAmFjhMKsfBSOpro6w4ZfM6d?=
 =?us-ascii?Q?FdL7fMVhNmnrE1Vl6kuIDtRW1Nb9K8qx3nMguIesccSWBPpqtCr4iheC3V54?=
 =?us-ascii?Q?80CxP2A6oAz3nFS1CaPmn+a/Mf3xUtcdL/G0EU7jYlSMKrVgtA6ESZw3/xhs?=
 =?us-ascii?Q?zOVnog+qUYpB7xDpX/aHIl3+j41DsCp0/Z5bHIR2H9bfUtIxttcfUHd5/nzu?=
 =?us-ascii?Q?4Li1E+ydbpGCZ+cz5e3gGGn3nqafVvIEwQDVwwKHSqAkt54GTfF5AFViC4/S?=
 =?us-ascii?Q?7itjyBh6E7FvagtmikAnJ5FaXzNTqrS7b3ogxXop4DkQzkFaqsGXT1RNkODh?=
 =?us-ascii?Q?tXdDRCowQJs2UimOLYsAVhO73vTAFoKWfrSe6/XahJX46+D8joNtvWcDwZyV?=
 =?us-ascii?Q?7oBHv6aMqlCYsF3J5kbIvF1dbjEbgNlJ+l52ckrxxwGiTwMeq7sBxznbBUBl?=
 =?us-ascii?Q?nQ6TZ9PADIGRQhczwviZjpeZaNP0XS9a+v+XhTw0XalR84Ku5S7fL8Ay2q8R?=
 =?us-ascii?Q?KeeelHtEXNjf2T6QmlYbHxxF2C45D0frHHQWGGguC8pYDG1H0J0pVXmgJ5zp?=
 =?us-ascii?Q?tklgUzZA+vASRFmH1hC8mLDUTPecaMPZpxs89ntjdfeaUBGgPKi8RoAN6bGv?=
 =?us-ascii?Q?sxNRbECtYN36RfMubd0cO8cfoG1ewvRm6K+FA6dk35rcgr0ZMYyGy7lzYcdC?=
 =?us-ascii?Q?5sSvo+oA2f2W+uEk1D6afOHUIke4ug3F7vYsmT+3CEVcBuGcM9HAyEW6LCGr?=
 =?us-ascii?Q?PU391YLbOtvKFWWJxPKFFQeYk7JUPBrxyBOXHCOzhZIdkdJ+FYu00PGcWIot?=
 =?us-ascii?Q?KTVkLpFC1eKpDYci2FLVtOUhgal1Ryn8QmRruYkLLTsKHxauijFhuiyEHmH4?=
 =?us-ascii?Q?oOAdwIEsVHfOSLPIQD2FR6Nau23603TFDB6QLiw6DMDWsczsNmH4GhBg7Tcy?=
 =?us-ascii?Q?OoTfBOkTg5hBHDxLR0rAai4QRRDokCsL5zej0OhxccDhiWVxxVX5/65ugQ9F?=
 =?us-ascii?Q?mOj/Wmsl3LGaBDCdqLL+iVtUXhCS70+4JGfc/r6UyznFM309yhfcWZdrLSga?=
 =?us-ascii?Q?682ATMFitDCBuNn7GBkbmLn36b6u2/GsUJb0fXBZ0GJ7g0NCpngiPMcichiB?=
 =?us-ascii?Q?n/RCpGEfKg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fnD8GSrZSngTrTW5BUbyYnuE7raED6NJ0t1B37OQVzpXwpdeUi7PsBMgrn8eTxtsuDI02Nl/Zpd+S5HeqEbnA1k90hMc4XywEmMYvuwhey800Z4EveuojZTAV1ycDUc73kmeCsCrFYLGbHkNAs1rY9yxndBkge1jfglPxEK5TouZ0SyQFTvJcewHqNoFKENTOKAZMe83HJ2R/xPc/HBuIk7xAo1/dW5InkAJalNUMo3hWBTw3ek2NJU5zX+h91ISGpFSwSTVjBE7nVNoY0tNbvUo94U4qOrjqLA2Y8cB2K0t7dyH/ixyHFbuoeMCM0F2kQwnY7CeFUy9QtJj8xyFPw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c205a43d-29ec-4a1e-957c-08decc5306b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 09:30:09.9865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M0evF9ui9VOajUmJ9qFvScWDIBPUSG9sZFa+3Vz5Pz8M3O5doAI5DKNjJogLBeIxTdXqdarrRgxo1DngL2kRHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7853
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D7C8697EAD



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 10/16] drm/i915/display: PSR2: Set idle_frames to 0 fo=
r
> DC3CO
>=20
> Force idle_frames to 0 when DC3CO is eligible.
>=20
> Changes in v2:
> - Extend existing Wa_16025596647 condition
>   instead of adding a new if block (Uma Shankar)
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 0f4263885416..091da8341b0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1082,10 +1082,11 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
>  	u32 psr_val =3D 0;
>  	u8 idle_frames;
>=20
> -	/* Wa_16025596647 */
> -	if ((DISPLAY_VER(display) =3D=3D 20 ||
> -	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
> -	    is_dc5_dc6_blocked(intel_dp) && intel_dp-
> >psr.pkg_c_latency_used)
> +	/* DC3CO / Wa_16025596647 */
> +	if (intel_dp->psr.dc3co_allowed ||
> +	    ((DISPLAY_VER(display) =3D=3D 20 ||
> +	      IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
> +	     is_dc5_dc6_blocked(intel_dp) && intel_dp-
> >psr.pkg_c_latency_used))
>  		idle_frames =3D 0;
>  	else
>  		idle_frames =3D psr_compute_idle_frames(intel_dp);
> --
> 2.43.0

