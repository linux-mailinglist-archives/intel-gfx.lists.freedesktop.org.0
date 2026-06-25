Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YbUzLga1PGo8qwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 06:56:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB8B6C2B3C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 06:56:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="SZ/ZO+eG";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF66310E168;
	Thu, 25 Jun 2026 04:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BCD010E15F;
 Thu, 25 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782363393; x=1813899393;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rEUC750VgAdrhrjjW5cpSSlyaqOOEgKwuKSO/skG4qg=;
 b=SZ/ZO+eGeoRzCLRsQLWkc/t1GAcHkN7pF6ed+JgLypoHF2UPoOl2yvrx
 ftfOnCYArkoLtUKfln2yxLrFF+rGxedl2/DkxDOHkWt7socyoLoN3VdUt
 QXgIu9gMomN4+GRhX7R+LTs/3FWnem8vi9Ip+v7w1sEnf2oyKuEpZjV8Y
 pBeBxhx13xTwJpMSrTFXHZJUJC1y5YDxZiHGX++wIRXYT2m5I8IO5DJbA
 v663Clp0VkYXahx//jTMfU1G+4SwRbJH//TurWzHl62tZc4hauhEP7jiM
 gXIS1IccCtbOIg4F6RjUb93Yh3v58dan2CzBmhAzy0d7Q3D3AFHqIyv5x w==;
X-CSE-ConnectionGUID: NvySd9uuQz2/05QlryOTVQ==
X-CSE-MsgGUID: nF5aGHoCQCCNoc+Mlyr9+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="93787423"
X-IronPort-AV: E=Sophos;i="6.24,223,1774335600"; d="scan'208";a="93787423"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 21:56:33 -0700
X-CSE-ConnectionGUID: uvnbN93NQwef44x+7/LmTA==
X-CSE-MsgGUID: 4mwLIr2nT/Ot8cwyS05W4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,223,1774335600"; d="scan'208";a="247243662"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 21:56:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 21:56:32 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 21:56:32 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 21:56:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u60TVOzjLcAsWylSsqGDxfe1KyN9mSPS60fKvXlTBZzMUTFcKENBV0JJBu00O4WTgv6KueHgxmvQs+3AKHbqScmkiB7XLBZZACXxMKaHDhJVEM73yFnsqFC1oC/uQGBhBL/msk+8fJPmlUTKWCZqj//HuePdaNvjpjDa0RnEgqg1fnH7SkufEx1sSD66p+tkDozrqXA+PzXSMbnKJDZBqUNX6x6Vz7Yj3WksPaDeCSyAVImEB1SN28YG32lyXBgZfdq95wowjydJdC6jhOPvWfoHEKwaRAMvrPuJ9nBYxEeMpc8x3Txe1fd5Zk1QQGjGKYBG6zqljCKh/PdyFzgUOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IyPgn4S7dycW8rLxJEUhupYAP2DuR59pqNnm3dua+Cs=;
 b=k4PvkifD3bQAZBFog0TdQzN5ZWewlGbUE59peoaXCa15O+6XZuKtOO3Zy+gh/DKRYDpQ4mQDGQdLdpFPSftidcxf2FjTA5vajITUujw4TnmIZdP38LdzG7ueDEDt91dcxShn2Y7UQt1Q2wcb4pIxqrFSrEp/xZla4TNo5d0V4r05ItA+SI2IC3TYg8W5qz0E5/2FU83QREVU1M8K36VUA1EBPLMrSby6fUHq0IgTqeZLwq/ScwUF7X3/tiAXdhwLICSQtHwUmK4Vdpg+ixACC/NNK0xxM8DhjHdfsgFhyL0RMEqxDDMcV4jTp9cZbuYY+okerUYUei+Gc+jyx7ngvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by IA3PR11MB9061.namprd11.prod.outlook.com
 (2603:10b6:208:57c::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.12; Thu, 25 Jun
 2026 04:56:24 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0159.014; Thu, 25 Jun 2026
 04:56:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/cmtg: Fix array-index-out-of-bounds in
 intel_cmtg_disable
Thread-Topic: [PATCH] drm/i915/cmtg: Fix array-index-out-of-bounds in
 intel_cmtg_disable
Thread-Index: AQHdAvJWuZyXDavQqEanEkWQjSPYErZOtlWA
Date: Thu, 25 Jun 2026 04:56:24 +0000
Message-ID: <DS4PPFE901A304FEA12194D357CCF0C97D5E3EC2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260623085334.1297520-1-animesh.manna@intel.com>
In-Reply-To: <20260623085334.1297520-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|IA3PR11MB9061:EE_
x-ms-office365-filtering-correlation-id: 07a25c2a-e03e-4f5b-b82d-08ded2761b66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|56012099006|18002099003|22082099003|6133799003|11063799006|38070700021;
x-microsoft-antispam-message-info: aZ6G7EUm+XobIjkl/eqHZ29dK8br0RWIUlmp036qqr8f2z1Q8Z+exdBWgLN5zuurB1qcwXpgRfsNx+CdhGtQiSu7iaAVPZW2EZ7mYzsfjeKyGX2BBi8mijOu+dq220FAYV85B8UQ6ZuE+/Fyu7HllCW9/GxyV+jcPzvAeGxRkiLtAoeTzSVv0MJvY6DEoQsKKwgrY2tURkyrwNArlbKws3I9kbtjw6LvirqIsAoq7zoZBQeGpOTLOfhte7HVSHcgiWWzHfgpimWm1JQtDTZ+WABsCG42f+084G8qeyXBk0jKkLTMdA+Mie/5f2LRu82F/T7iuvLK20Bp5+YwnSj9vUzL0uzs7MYwNOoFBCasZrlMbkoucYD+bKVQa1V3z/jAbSZHeyEBcYIE0dHFORvmlZL5DIvIFV7vCBRXZt8dwxbReMIJw6YOCJZgso42eAxxVT1Kjg+y95YhEegXLqb8qeW0I4EsdFRM+Nlm+nQKPxCNVPeQpDk6frT9N4uKvvjUKhuZHJRuRR6rBMbtkvnyeXaf6KYb8GAvJTaDFau8+tU8jO0xv5DtNYw5CKu0fFejPlvR8QirdtgpOOTuPM8hzIn2kQPLLlpvOvUWpISS3q+6hqbZyGhKU9vJchbPlLymH3ko4HIeMTu/jpB1T0UnK5hrvjtl+cnlQrFlx4tYSo6jEWp6PPGs/WhS+QGzB+o2ff61ZJPrB7/4ougPhj2/JFcdPSSuaxuFLTGKKUZX7rM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(56012099006)(18002099003)(22082099003)(6133799003)(11063799006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JHJH2ZMCpw4VI8WpI0afbrfzAU1mW5aGor/WQnmfxjC4OuIy8FUfEEIvD2LH?=
 =?us-ascii?Q?LzV/PUU8MMzLKeRgr004/EEbakQ8CeModBJRcfT/VDzItp2EqTsuSOQGHFQi?=
 =?us-ascii?Q?ntJ50awJ6Z75O0XHkFvIejyCNpUugaFeQDj6oAMOPDYnmpUbKws5+tO5JIba?=
 =?us-ascii?Q?IV5YE6W+aCLjwbmPK/2HPBjGk+tYvukZpY5bi9o9T11ULHf3fD3tCeBQTkF1?=
 =?us-ascii?Q?Y0e4d4HTrhSH7JWc+wwqYZqIowtgE4o3ETFCksHzGslcZcdUn7UH1mqtdyBU?=
 =?us-ascii?Q?UzglB9i9cKusV2OR4ivKrKhFOgSKg9pA2PXScYu2uoqcBapzCrQ2DxE0X+ww?=
 =?us-ascii?Q?APPm/HpLL0v7VvrVYTFwl7Js3AQCz4wUGGUu8BuiGqDq3yLl3Qh6PxEDrRXr?=
 =?us-ascii?Q?efzlxYt2zj0rI3cIMigkFa3oN2uHTUe37c1WD+DCP205VxeCo7DCfuY0eLhT?=
 =?us-ascii?Q?B1lCGscwgF7ct11Esbac9qwP5hBJ2J4zjNS/z3BaqsorPZ1Z8OdfTRoatuFI?=
 =?us-ascii?Q?ih8vzI7qmfUT/3ccA0wleXfgNVcBBqF+a2E3Hn5FCtkcocnvoRu4cUR7Vhzv?=
 =?us-ascii?Q?nIBS3kaqbCGptLAPcvmC5bHNl7yg6Y1AHzWkojMjXNKEyifpwbuEs38TeVzB?=
 =?us-ascii?Q?EV2bF/a8S8aGUWiQHuhnszhnJHNX7MvTWrWnEGP/S6DE6odquBkUtD26rYmR?=
 =?us-ascii?Q?nr2m1tn1Id/S9txF7x8eqkC3AA75NrK72pDmcW9xo7+leyXq6MU+i6lZnqAD?=
 =?us-ascii?Q?Ymj+4ESyGnzJixpl0xlSZrhS3XTQ6MxiP/XCEBWGWVJCchqSoD1aaVUJ4q3z?=
 =?us-ascii?Q?cpC6tet4HcD0PSIKsgPNro/U++V809daKSzSdB8rpXd01uvClnS4qEBvCwrm?=
 =?us-ascii?Q?OGTKCwMKhiRMyrDR9ip6FiVrBWHMsjjq03ExnWiwKg0C1vmqpgalU1h7p5xR?=
 =?us-ascii?Q?on3C66cX1efJTUux0lOfvl1lnV1xkb7wgWi1UEbEr+R/zXlpZLAs4xDEP2Gb?=
 =?us-ascii?Q?OrWodUUXeOfS1O9D/pGUAwdAjpwlFCWE9c5MOGiwZUcdb5QsZ0kXmkYNl7qr?=
 =?us-ascii?Q?TGjspTxxQ/pRAohHberU72rvS/HxNmL2bk7mT8LRKmfaadBN8CDVwbDke7k/?=
 =?us-ascii?Q?Pk0mtE4a54LG2Grzxfzs3DdMH/S5Q8c4DoOCVlHSqn0BJUDHalne96Mh6D79?=
 =?us-ascii?Q?4XurS//XkRc1oAVMZIooPhBCadC9qFQirb+MR1iwNFJ0DzyvYVoUa/MlOTbE?=
 =?us-ascii?Q?FUMBosCcdNnuOAFKVHP4Mfri0NKefTAB0sUymRMSCY99DM7PkXbHQmQELqXV?=
 =?us-ascii?Q?Zu3U40ppwsRvwavFy9nFm2ZcoyOvAXqLaiwpl+SqCj8dfvRiHY52Y+4RdUgY?=
 =?us-ascii?Q?pW7ywRnbSDS6HtAvh0BUJr6NGWSWwh1XL3j7Nc7AbuWZDBVKGplPcmS2RJ3q?=
 =?us-ascii?Q?ng+3pifNepbsaH6TxOqsPdIeM+ohG59HWH62wuB+RJAoHtn9njdbuC69O2A/?=
 =?us-ascii?Q?gFF21W3RSCV125gIjVqKrpw/4wL1PdRVzSgLJtr5vgNO/Ugcphl06HkwPjnk?=
 =?us-ascii?Q?QVTWpmc4jrpymACBpbrHYfFrQoj2c8TQNNw3qGfXYBhVBQvapt/mwVJXSx7h?=
 =?us-ascii?Q?UxUrmxeNu6vSuqILdIabioQw8TDYGbO0UBU3CADWMvKYjZxvs+Re1jR0jqpu?=
 =?us-ascii?Q?6zcu4LNEzbLacVvMMzGzh5mOJzN3yDsdCroUOyrze/yfc/5jUxy6T5Sq/V9e?=
 =?us-ascii?Q?v19+yo4uHQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lRnSONboFnpjzwbgOxamPwZWxl2N9/UYqsJb9UoMiU5wZQlMFULLXAUYF/PaghrOEDLowEv4RtAQlAJbeRh5kKItWcbW++5RbJMi84YOk7hYtuPVpXwvaaFcYwTYzj0o2Pgg0PfJ9UoyY8BHycva9TCLZC7PNrD/W9cS/Umh+cl0OUXtPb5tJkquYLugPtcENs9+0qg6T0dzwax8oSvUWnXt5M2IraqgmgEWf2piKOoRRzKb28h5Con5hKOn2kD5rrPw+Fk4XHvjR748LTc95d8MmsucKpoGdTO0vAQhUz9YILbpAZswLLYpYnD7Rj7Vy399b/iplFWIUMbUc9Bllw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07a25c2a-e03e-4f5b-b82d-08ded2761b66
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2026 04:56:24.0650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wWlQ+6iSYx+TyqUUbna+wQeQJXLN/w4GNZdoVVQQzTnLyz5cvzg0trY1C+bDRFszPUzxrE3+bPCrR14ryrY/3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9061
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFB8B6C2B3C

> Subject: [PATCH] drm/i915/cmtg: Fix array-index-out-of-bounds in
> intel_cmtg_disable
>=20
> to_cmtg_transcoder() returns INVALID_TRANSCODER (-1) for any
> cpu_transcoder other than TRANSCODER_A/B. intel_cmtg_disable() then uses
> the resulting cmtg_transcoder to index the per-transcoder register array =
via
> TRANS_VRR_CTL(), but unlike the other CMTG helpers it does not check for
> INVALID_TRANSCODER first. The only guard is crtc->cmtg.enabled, which is =
a
> sticky flag on struct intel_crtc and can be set while the crtc_state bein=
g
> disabled has a cpu_transcoder that does not map to a CMTG transcoder (e.g=
.
> during a big-joiner reconfiguration that moves the eDP across pipes).
>=20
> This results in a negative array index (trans_offsets[-1]) and a UBSAN
> splat:
>=20
>   UBSAN: array-index-out-of-bounds in .../display/intel_cmtg.c:187:24
>   intel_cmtg_disable+0x395/0x3d0 [xe]
>   intel_old_crtc_state_disables+0xfb/0x1f0 [xe]
>   intel_atomic_commit_tail+0xca6/0x2040 [xe]
>=20
> Bail out early when cmtg_transcoder is INVALID_TRANSCODER, matching the
> guard already used by the other CMTG helpers.
>=20
> Fixes: 3bb44e8d421a ("drm/i915/cmtg: Modify existing hook to disable
> CMTG")
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 6da28c185080..dcd29ebdb432 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -183,6 +183,9 @@ void intel_cmtg_disable(const struct intel_crtc_state
> *crtc_state)
>  	if (!crtc->cmtg.enabled)
>  		return;
>=20
> +	if (cmtg_transcoder =3D=3D INVALID_TRANSCODER)

Hmm weird that we come this far with an invalid transcoder, considering tha=
t cmtg.enabled passed.
I think we need to make this a drm_WARN_ON(cmtg_transcoder =3D=3D INVALID_T=
RANSCODER) and return early
Also to get this splat out of the way we can either inside this function or=
 where intel_cmtg_disable is called can be guarded by
intel_cmtg_is_allowed()
Like this:

if (crtc->cmtg.enabled && intel_cmtg_is_allowed(old_crtc_state)) {
    intel_cmtg_set_clk_select(old_crtc_state);
    intel_cmtg_disable(old_crtc_state);
}
=20
if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc)) &&
     && intel_cmtg_is_allowed(new_crtc_state))) {
                intel_cmtg_set_clk_select(new_crtc_state);
                intel_cmtg_disable(new_crtc_state);
 }
I think this is a more full proof way of fixing this issue

Regards,
Suraj Kandpal

> +		return;
> +
>  	crtc->cmtg.enabled =3D false;
>  	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
>  		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
> --
> 2.29.0

