Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RHxSFBEyQ2qmUQoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 05:03:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A63216DFF3E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 05:03:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MTIzFaPT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D27D10E157;
	Tue, 30 Jun 2026 03:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5723B10E150;
 Tue, 30 Jun 2026 03:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782788623; x=1814324623;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5wgh+YZx32YANE5nk3AG3SRAhM0NXetrgBwIsqLLU0g=;
 b=MTIzFaPT/Rsx5omjaF8inXEvFN/cmloU5itLDjUjcnwOMvtVa80ycYzH
 poutY1Cf4+WV/kQ23pMLUYUf4PA2dRUdy9I52IM7xUH0266zfnw20jsH5
 UZqC4lCkq6N40GNyIwLGQXzKIEQrPW1QlHaL7EG2tCWcbj4fc3AGxtwhk
 cAcj7isvgXTFSX3xvh+ghFSBj8hwiPCOH1cO56IJxNBozbE51+1SiqidC
 qqsxMO2+nMJmCQg52Z4lkx3BEZZfPVUtwaepoCStjyZdtEapRk4WIFGS7
 pQGp66/zw3bbAarKabmvVnMZaUD37TiFfHkzunaWFYO8oBrvxcyz3S2da Q==;
X-CSE-ConnectionGUID: uxDxUygoQSCJnKbR2Ogt5g==
X-CSE-MsgGUID: izGzLaQ4SBqQZO4YB11ejQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="95001259"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="95001259"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 20:03:42 -0700
X-CSE-ConnectionGUID: rXh998DgQIKHq3BsoOmWiw==
X-CSE-MsgGUID: +wmE48BqQlSl818zbMJ+Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="254038605"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 20:03:41 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 20:03:41 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 29 Jun 2026 20:03:41 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.68)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 20:03:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WaPM4JIk4d97RXytgI5I/f2kwLYx8Si2cqWgsfT2tytDKnlnb5KoszRFzXTaplIgQGiBRwvzQPlBBGvTLsxfMnfR15al7UUbSHl9yjKyTWBpZcfFDPlQyzwbbN86Ar5PzGZUovAbb4C21g1wGk09pK4ujjbv19j43kfMdRYMNpnKeQT3AOCtjSqfqlX2g6P+R1NdJWg7fafiD82+kkMzNbTbplgnuRDyMdj9K8vzh6rTtwMeeBLA65URGHor9YfvvjNk05oJ2P83HBVxzVP642JASOCsyQe+qLYaShPC8vMzkO9XjveCiK6MjmgO/fRgNhOLeGpRjTA13ri2n9GmDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZyI0Gri5gkZSqwWxvNy1LdDXePz8QiqI9KdZXCus++c=;
 b=S7teRtsJHcn7BHQahoplYPw+g79X5oPZMEKXrOs7zOlBpio7gP+aK0/X7b2NK7Gm1NNVx2J1kY6fyNoyXw81PfWreMtVsg8w1HcWU70bon/166TCOmmFjPcd6JXR/8Z0gJwCqxZPyM/U2AWMZ/ERkSp4iHUZLkNCMYuWYWpWdffj7Wylc+rMpmP6AVZJpuue5miyFsl8KJdk+yaBaodgaSqxY2jtyBaXJhclCzPPjQqveY7n3qAvOk3MkhdNTRc5338tbr51+ZuzIqLvKdinxfdxYpQKN+9s8gRXUjYVxBkXfxPFE+HNuFj1givsYZzDFJlXq162lVUJJNW5ow8r/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SA1PR11MB5924.namprd11.prod.outlook.com
 (2603:10b6:806:23b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 03:03:30 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 03:03:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v2 2/2] drm/i915/cmtg: Warn on invalid CMTG transcoder in
 intel_cmtg_disable()
Thread-Topic: [PATCH v2 2/2] drm/i915/cmtg: Warn on invalid CMTG transcoder in
 intel_cmtg_disable()
Thread-Index: AQHdB/YDr/N73LHqz0ei7AKrEkh8hbZWae1g
Date: Tue, 30 Jun 2026 03:03:30 +0000
Message-ID: <DS4PPFE901A304F3D4DDF5346BDA72B8011E3F72@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260629180236.1353704-1-animesh.manna@intel.com>
 <20260629180236.1353704-3-animesh.manna@intel.com>
In-Reply-To: <20260629180236.1353704-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SA1PR11MB5924:EE_
x-ms-office365-filtering-correlation-id: 6bb59246-c5e5-4fca-9525-08ded65429f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|38070700021|4143699003|11063799006|56012099006|22082099003|18002099003;
x-microsoft-antispam-message-info: jgEob10/okVq0gKVWui+RjLCeZ8+AX4o2060ydiuWvkW7bseeQojsbXf/ilogz5BLxH/e9dgovspu7B0Byc1WojHbJqbs5G2IV+/1sCIlemcT2ZmQJmG8mZ0sWpPfaGcZr1I672/xPK2LKvmPmo6CSS+YXQLq17Lw7Xe7TOOHd9wj2Pgj5DQWg8q+CNEluQMGuGCvWftxilI80mrT7STayWnRr+A3ZV52vv/ovklWl4/7N1KjFlgzI28v9UDOkmyV+LRjayAXQNTlczYOkOP8iZn+u0680RsxxN7HMI7BS+sZYTZtkdMsxZ/5EXeGA15d+xPnetKQe1QAqWB4lTWL/IXQEMJGHKKMH9kqGEwGhCijWbKLNWnKI9NNvOwZyKU8celQzj/v/gflleTlrFqXyW0JpABC8cusalKHEObTDjzmE/o49QJIzM37PGksw3hvUaPWXeXSi7dGai/1OJvl8joCiSqDXvPQ0Zv3cfUFzB+ltGBRYSIgxO0q0ajzk6Fx4iDN6fjPq66ofyKN+sg7W4BT5DB/BX4UedD+nLUEgdbtqZyI34JdLMDtb/X6cMaXwbHsUsKI7WSvs8Jum0CRKjfzxsorRR4iQ+ymSYqN41IrVAHC2II2ppKCXAD+feUSRIWuNMFU5lvZUkmAAe3nglpZM+oamy2578UUdUaM6mYz0LJqMijUFuBsaWvyShNAn1zHEwoQt6X7KgkBvovH5Kji0bbJ3GgphLe+/qFamg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(38070700021)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5MSW7M8LOJ+wLYrNJ6YW0qUydMMTvPN4AvEOLowsXEU2UCO+NjxiAtvfJ2pY?=
 =?us-ascii?Q?yirNLIaM1aD1nw3teYCOu/8/UfbNGeOSROvbOtLo85bOMN1VREUb1CNXDj9z?=
 =?us-ascii?Q?jaAn8tuVU7EHEszKoHTVXVY63iZKLhwWZgb/6rYcDwF2+ecrRnXfmI9vJRbW?=
 =?us-ascii?Q?9Waz9KaZWSQ8q/NPrWESrlLACnU2eLwpT8DRQYTz2cURE0LaKMjQAPaC1bkC?=
 =?us-ascii?Q?ZV5k0rKGAJePlmr+wnqeTpbJ/HvSoSo9ZShxRQxq6s8hpiPOjN2ejVEKU4Mh?=
 =?us-ascii?Q?0EbpY6k9TyiwBwNgV6SosSKYm7Vrx6YUoXwQDO14sllKogqJRxwaiAWQ8Gp4?=
 =?us-ascii?Q?TDQm2FlVMp41zLsH5hpoYvU1lRPmeZA0BfIpNPRgGS2tCHOUZqIXRJOmMxp+?=
 =?us-ascii?Q?/LP/szvTfwDfZMgyTBtgGE7JbSGCDJMoHcwDBc4TelAI/FlPO2HBW3+M/v2j?=
 =?us-ascii?Q?yr28oEz3sujozoul1FoCNN3lIu0SNBAyJLKTlKJwB6DNgUqMbdP6+TmN14a8?=
 =?us-ascii?Q?/2Kj6WDjC3yhMZCAQgeEFp855kCf5TPZsIBxxEQH/G5kKYIEgDNqwrvK/vKx?=
 =?us-ascii?Q?sQCcGo7tGpFWD86TX3z6DqjOx5oPZffCcAoC3VaZKgvgehY7f35WSgucO47B?=
 =?us-ascii?Q?o/rAbM6gDHcduiYKjwsAfeX2GCdcWOpa5PuxHten5g9UaNV1jr7IkS9E0rpw?=
 =?us-ascii?Q?pEJ66ntI+5JmO8V8UmBo+LC6S9xSh4zyMsSAKRUcptFdwJyQI6eku/rNw+OG?=
 =?us-ascii?Q?SMXSpGDxwtY6FUlwkZAaNR556FJCB/iXAUeu4p/iZ+olZZQ6PUblXX/HCL1A?=
 =?us-ascii?Q?1XGdKnLWOEcZzWXMoqYxhz+MI4q+yv0Z/rJLxxGXeYlRXGvfuYfBgYYUA5Zb?=
 =?us-ascii?Q?sFFz4sN8fxn9lKyH0mHhArwUzg4DaAPxlwK0Yjjt7qY7aGg6Dj9gJ7Yz67Am?=
 =?us-ascii?Q?L13pLM+T9e+VbtIL3Viwu1FF7ZQ2ETtyjWqOfmwAoXJpwuf4bE7CSle+CFLa?=
 =?us-ascii?Q?Xjti4mDIOWzFT9RYPCkNWMBzmZ+1fDUs+1Si4Q3Co77s5BtgzYhsWQQKKXGa?=
 =?us-ascii?Q?LABceGcOZhpnN5ibGoZ2KfKMHI+N4PwE3bAgkH8hrlE6Rk11H1lSYK2NQ3xx?=
 =?us-ascii?Q?JDOVmxSKLVMCxxNkjw9rh0mR7nmshjH4Z+0s8F9sG9dOH9wWzqw5z8A6rPrP?=
 =?us-ascii?Q?HIbusGxg8221FL/7tmDF9SezM3/k034UaHCm06YorYAsZNeUzMqNb6U2gOjN?=
 =?us-ascii?Q?N91SpO5QxcDvWTBOYtdw/JDKLdXKSx7exLYY8QNNGnPMoHQzxPeLD0hLm+86?=
 =?us-ascii?Q?bsp8XdqVH19aqopD+vFLEuFba2ppQ38RdGhmkjvxJcv32RxkfhZgue8J626b?=
 =?us-ascii?Q?b/htpWCPZEnNARoXqtrX5UvpqDdtp2l1VrN7k+OXD2qgsxjzfuIscBpVG29r?=
 =?us-ascii?Q?LqNkMpTSWF1hvnV+KpO4P7AUjGpZ0x+mFwtELIyOjsQobylAfMGVNB46CiSK?=
 =?us-ascii?Q?Uk96DN+Hxal5iLcL+ZUsLnZwwcH7p5ZpFp0TbpJPudoEp9gauA2Xge7yywgT?=
 =?us-ascii?Q?NVSJh63vDp7cWCTywTxQvcmqqqzbcTXgVCH5kvG0rGoBt5fcstiQtPqtPAWO?=
 =?us-ascii?Q?7pXgvLDDUbEOCswvivYxsIJiQRpXwjTjL3JLEAi8jRp75/LeYVpmfAhEB2iy?=
 =?us-ascii?Q?yzZckYca0GN7QQ/U0CsDONe5jzUW+imrktnyA3LXeysrJ9g62TyrBXq+7rvA?=
 =?us-ascii?Q?+Tjfgw6TwQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ADyOP7YNlYXYskSsQoRMsVEEH4xXaI/RyDzcL8UegoX6Zuk2eoBmr8E1r6GOZ4i8kfp2cQIjKwDiXHHZX2/BEhnJNQwwGXIc+yR4fGjmVpstyQAhEF6IN2qQkDKfMNpZ1W3WcWKp/nbvRL1i9nlOc5OyuxGd1qz6ng7FXjC7Kx4ZuC8iUiwZOfNpfbWk38FwUAL8OxUBnWS8fSp/obDoImVg8FsyFsFsUYmDeIi8Kt1bwcayERwmXkbk88/ppJ1owKq/pSmqSxAvjX/uEvQxV9z5fjyACYn+EcTJ3a5Pagw211rCz/tc+BIb7Jk3NNiAvtIKIoMu/lMyAIpo2pQVAw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bb59246-c5e5-4fca-9525-08ded65429f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2026 03:03:30.2181 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vx8SiwSaB1awTEcBdqcgN5eNnYT6AaJwUmufVM2aH3bzvoB0s4G1F5S2GxZ81he0VWsNkz3w1qkcBlsT65DE9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5924
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A63216DFF3E

> Subject: [PATCH v2 2/2] drm/i915/cmtg: Warn on invalid CMTG transcoder in
> intel_cmtg_disable()
>=20
> intel_cmtg_disable() indexes the per-transcoder register array using the =
CMTG
> transcoder returned by to_cmtg_transcoder(), which is only valid for
> TRANSCODER_A/B. The callers are now gated by intel_cmtg_is_allowed(), so
> reaching this function with an invalid CMTG transcoder should never happe=
n.
>=20
> Add a drm_WARN_ON() that bails out early in that case, both to document t=
he
> invariant and to guard against the out-of-bounds register access
> (trans_offsets[-1]) should a future caller get it wrong.
>=20
> v2:
> - Add an in-function INVALID_TRANSCODER drm_WARN_ON check. (Suraj)
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 6da28c185080..c8e0f90af910 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -183,6 +183,9 @@ void intel_cmtg_disable(const struct intel_crtc_state
> *crtc_state)
>  	if (!crtc->cmtg.enabled)
>  		return;
>=20
> +	if (drm_WARN_ON(display->drm, cmtg_transcoder =3D=3D
> INVALID_TRANSCODER))
> +		return;
> +
>  	crtc->cmtg.enabled =3D false;
>  	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
>  		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
> --
> 2.29.0

