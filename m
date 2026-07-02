Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pNQUB55IRmr7NgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:16:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD086F68BF
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:16:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Rb57LxzT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB8F10F2ED;
	Thu,  2 Jul 2026 11:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8057910F2EA;
 Thu,  2 Jul 2026 11:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782991003; x=1814527003;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lbNTG3mD4ANxd7bvrMio5KVab1dOFPBUoQIUEWCOzxk=;
 b=Rb57LxzTWDMsUrah48LusR55lbu4KNJqxy05fj/+R9ebLOpgbH4yZimD
 m5jsA4BAQL3nK4nsuahxPNlJi3a+4kIKj0iWTNZwjQfS0Qf5bP+Y1pISc
 /yqeNZdqaaqG1kV6od8b0X9n1ufaxuv21/uyU8NjtxgoloRvy48zgYCQz
 +7yEGmDXuQvpUZxHiTKcZ0STvxEe1LKYRgSqf1AGkzekIqpnz8mr6FCap
 cRwuPmQOHJVPBWYKphoJt0aMe7g6YEygRtZEhBCQ/5gqjW50LJP7pEiSe
 g+KDJaoXhkBvmwr7qJH/6kvbCxNLWmyJHWXCrTxSoWsaW6jDA6uU47ZiQ A==;
X-CSE-ConnectionGUID: g8aoR+4/TmSVAFzwpLpofw==
X-CSE-MsgGUID: HcjnREBWQh+H4Yyfc5DMSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="109292121"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="109292121"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:16:42 -0700
X-CSE-ConnectionGUID: ZBho4+DZQxyK28Rpamnc9A==
X-CSE-MsgGUID: n3+eXbu5SJGPjYRK1+uF1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="257173520"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:07:32 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 04:07:31 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 2 Jul 2026 04:07:31 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.8) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 04:07:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SSdO6lzo7ma+hIEGtJY9kgQEun7GbQLxN1HoLsJG/dcjfJ+6tAPN8tgvTos0+2v0/hw6uSk2QzykcXE1iS9LjSaXz0qJxOqHA69H/PLEbABQgoG832akjvUZ0XsV3Q9tzth/v5tQP5Lbewar1HNjWDdiMqWbAqV9BeE/Hzqj12MWGIQxdZHLQT79zzB7dqvbf+VLhwvZ3520JthvA776Sg6X4Yu/sKB1YAmXGq420pYz3PVUACjqdDe3zAEPeDEYA0fviCMQVupxbH6ZdrLYW3UedIK2+zvmiptvHA5WEuIhtTakzMgM4FN11s6ce6LJgUBUvJg0vDGQflQK/Whlsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v2yvFWnIW0TBoryf9q8S8hI9RyewlZFn4lNXN8DQOd0=;
 b=eNoW7ovPFhSVVcVksX8pmiuUQe3sibkKxiPnmK1rBSm3BH0xy6g94wbatYXkNAbqky4wMCsCVkDUpHjiVcBrAbwPrdHjhm+x47kNVNQ/drPI3HnHuizcY/zdNfY8Ux80wrlfExErN1E3gqt7Gtkuu/UMsGLEUM0dVJBGOigHsL/kTJrYOq91NplfBxyhwcFlCiAX6WbrRvbVWRL39pXbP2rrscmPv0hbxJikLYa+MqDB3C6uDSq8I1sWlEi0Hn2bBqGcYtskkZewNXbhHt3uXah830ZT4ayZB3F0Io9v4BEHyVIeqxjvzI+cYzKcB2HzWFFZBVMojfetOquMnhA2eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB7130.namprd11.prod.outlook.com (2603:10b6:806:29f::10)
 by DS7PR11MB6294.namprd11.prod.outlook.com (2603:10b6:8:96::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 11:07:24 +0000
Received: from SA1PR11MB7130.namprd11.prod.outlook.com
 ([fe80::fc98:7fe:bac0:f2d4]) by SA1PR11MB7130.namprd11.prod.outlook.com
 ([fe80::fc98:7fe:bac0:f2d4%4]) with mapi id 15.21.0159.016; Thu, 2 Jul 2026
 11:07:23 +0000
From: "Liou, Mei Fan" <mei.fan.liou@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Dutta, Ranjan" <ranjan.dutta@intel.com>,
 "Chang, Junxiao" <junxiao.chang@intel.com>
Subject: RE: [PATCH] drm/i915: add disable_edp module parameter to skip
 phantom eDP init
Thread-Topic: [PATCH] drm/i915: add disable_edp module parameter to skip
 phantom eDP init
Thread-Index: AQHdCHmft1f+xfmfmkuPmXMD81iljLZW6pyAgAHQZLA=
Date: Thu, 2 Jul 2026 11:07:23 +0000
Message-ID: <SA1PR11MB71300AD7CBCA15C7E410E852D8F52@SA1PR11MB7130.namprd11.prod.outlook.com>
References: <20260630102845.2678707-1-mei.fan.liou@intel.com>
 <50700395af210f0e5ca0c5e8306cda41b077f43a@intel.com>
In-Reply-To: <50700395af210f0e5ca0c5e8306cda41b077f43a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB7130:EE_|DS7PR11MB6294:EE_
x-ms-office365-filtering-correlation-id: 07a6fbf9-3b5b-4dd6-e66c-08ded82a180f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|376014|366016|38070700021|5023799004|4143699003|56012099006|18002099003|22082099003|11063799006|3023799007|6133799003;
x-microsoft-antispam-message-info: vDuDINNowK5j6y7Lr0rassKB+YL+BA9ofQfC2m3HIgKVQ+cZrUnOElWicOUvrd7U6tOG5BE1lBtZXN0w4UN5qkUEqzsHWgj474LGVlkAXPQlJszJWo1b1FbwZgffoWIipviWBHt+Zlr9p2mms4vJkbC8JPL5XyEe94CCPT0t4xLdsGwYnKZSRBBGUtTGI2Fv5jMv6XC+7NfEBPPEUwR5R5HgQ2XwAAednUy1r70DZumS5sGGcy39+D3gAJQAsNepwsePY6q0V+JWhNSm3mvhTvIYKT3SPzN3XdwmrvhVvqJ+PD8w2OsXRGeuDs0xNcgKG6bj8+kpJ3gBPHFO+IuoDB7XabYPkL3Qc5KOuQy3QnwqdmQS3/T9EwUDghSSOQ0vjgs5Y+lHRm6Ur5N3Z0O6Ra6i1ZwemFOJD4qxR9dDcwy4d+/7PHamR/dmLBi+svcE/GOhiaYsLn6l8GIgdPbUby3oI0iTMMWUJA9i8MZj6TEtlDB5VC4YnU3+uxkV/Hw/5YDGaBWdcQoBkQe2nmzyI9MF3bMtKHtpbubxaE8d/iLrkTjw6zdg37xlrUXz1zduXY0I11eHFUjRN+C6mrPPZenwtS2y7LNAnBr9JvyXV39ChWCkSDg6G9vU6HtFbrZKMMU3Paug/F68DW7iX1t/w6fKZsxLMAOgy/zy7d5mgr0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB7130.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(376014)(366016)(38070700021)(5023799004)(4143699003)(56012099006)(18002099003)(22082099003)(11063799006)(3023799007)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z1Vkl0ogyZOIN3j4IB+zaFmWPo0LvAZabwROGgWeugOo1hDMY0cp2w0wyquQ?=
 =?us-ascii?Q?amV9KEKVBtFxpk045io0zjuQ2d2qVz9b/5rQ4nBFgatk44d38P9JAXSVaTbI?=
 =?us-ascii?Q?fBDe8urBBWJAL+1X7IQf/zMz9+geRDn+S0cBdsgZ4jG13Df5H7Op0Yu/KP3m?=
 =?us-ascii?Q?BcP1AsIecEU8ivtjsiKfBOKdF5WI70iudwLvTcWtZ3w9lpzuh3HpdzMSnUNG?=
 =?us-ascii?Q?Xv0PtCs8Y5LAMk+YRYqrQ+1wu+80qBQTUYbDcOXFPADFx4FX4Ja/wZZLSwRo?=
 =?us-ascii?Q?tVobT0uVtzlVEfKrVMpAhqwoppQjN3afaqvUSzTWIJARgSxtVB2GRHRUtAr5?=
 =?us-ascii?Q?duMQBotMMfznzz19TqkPACUkhF4QPNyzX2fIQUjJfHiqWtDntlNa5bR/iVHi?=
 =?us-ascii?Q?4zA4W5+wVPJOAUTQTv9BSBtHDaumqrO+XFVemx3TuK7UxyL0FjBC/knJM94k?=
 =?us-ascii?Q?FuQZRpItZmBxFzc2amLZMpuAY7nmO8ZBxKeg8hsVKVbixUkkWbYpC5lXRr1g?=
 =?us-ascii?Q?E6ehjnVbmOHcocdrrivRnvfjgd/RaJw9lC2tsZ6DiMLkSa3jbu2oTKGurKIq?=
 =?us-ascii?Q?/QYwqDLk3/PiTon/Y4WsjjjdhdqX2wa7S82/lKKXMiV/xy4uOZwEvRNymnjM?=
 =?us-ascii?Q?iXwgS4AgWzFdczyIuRQM5EtK5k4vptrf2wSSLgnNpoXLqZ+p9arraFJ+0BP4?=
 =?us-ascii?Q?Fucst2cI9Keb9N42/Wz8BYSnNnrVlyOH+rrRfRKCdzlL24XZ/S/EDVruAkKO?=
 =?us-ascii?Q?l7npAuPlLDfgB/jy4IFHNxwZcW1S+A2Lm7EFeleW67vVjI5/h0i6iuzgsqFa?=
 =?us-ascii?Q?XCh9fYLqIqLZDexbP+Gq6m4ycbs3L6IAXTvA790+/BIivyGWKA8pP0ckJ+cj?=
 =?us-ascii?Q?s6PPw79guoLwLW+ABP2lq3XYH1wbtOVGhKWv64XVM4vZPelQ5J01OhZxOruA?=
 =?us-ascii?Q?QFkMBMElVu1AL/1j9P3VpJl9rgo5um5+HahdGDm5mZsnbRHrlc9uWLzq4EVe?=
 =?us-ascii?Q?jJHGCvU24rNrO9Y1z5Ic3Tp8hdqBVd5Pj1Xufr9Wo0+A4yVKL1iMObLeF0Rf?=
 =?us-ascii?Q?UM77dPX7qu86eZf9CQqJpUp2QDwActYsNG3Q+iwNoktAZLRZGfdUYncVevyz?=
 =?us-ascii?Q?0fJii+L+dAkhk10a2XlijxIg+QLyutxxsjV4m2bW2okzR5Wmtb5uCr8AytOy?=
 =?us-ascii?Q?4h/uWfgIx2n7ldekO9lReJqKpGK0XKVsgF9sBghE67wv89qr7/AGv33wvyzg?=
 =?us-ascii?Q?rfOk22RhRMOT2KgqVUO97z3zQT/t50kChKCFl4WLFZ/tdMcI+5YMAHvBgaWJ?=
 =?us-ascii?Q?27TpIyPqdxkLWDUGzmLmP9aCkdiq8201KKnSpssUa7r3Z+XwjDOoMkE6JcuG?=
 =?us-ascii?Q?IyDZZXK/yL5c07eLHpiSAbmMG4zB2eAG1WDQU+YuoDHqakaaMHAwgli14vNK?=
 =?us-ascii?Q?u+x/REcEpIRNXyJlLAlFLSPOhleZ0KgosPyzPtOrkt21EFvr2fvMbae2kydQ?=
 =?us-ascii?Q?/X2GB47ZaeEFIfCy5SVR+7ddcY1wDY8APM86cQCUjM6h6nafp4AQKV3WFS9F?=
 =?us-ascii?Q?ZB5bqcK9GqvaWPwZPTwJg8GWJcT7y2ZDwmKFYakgGJF4h1FFODWMZZyMkrEQ?=
 =?us-ascii?Q?P7pXQDoL/SmM3u8hEBoTdTgRRMEHh9CBVYuJndBqnFAEkg1VMO2z5+gvMh3u?=
 =?us-ascii?Q?bREKa6CXFVxYdCe3/gKSUg3AqqLP9EGxAnRuvDHiJu3tkbrv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bLxssl0pUJFfULSnFb69ZbRl4XFyAse8FGbEAa5k5sJptBGNzwW6YPBHf6sdEaF5xCZhTGtyYmXuvccEwOiYYFniRuN8uC4eXjneQ2U36LWOHUf14a8qhTCZiPflH6B5Ct5e2brIJHK6TJ1skXdCTbxFCASRVW5/UQJHntsNUMO5k9qWl/KsqtLBTYe7fvnCcgE80u1T89E/63R7JGbxliTZgwEUezB2vLqDPchFb+M/PLqg2h/rotlnXi8fZxBaZZw6VhL7MWTpy3xStXdVmMCzdhRH1muM657kJiDI3XaCEXwgzpmNboVsrMkqgAmTpx+T63cEXhijkEot6hbbxw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB7130.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07a6fbf9-3b5b-4dd6-e66c-08ded82a180f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2026 11:07:23.6519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5oHyXo+sg9CCSgxst8lasLM3mUTPppL8TEEk/FRW5Hg+c4Vqke98AIeDV9zs8Q6cua17aQzP2VT3T3aKYkCttw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6294
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,intel.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime,gitlab.freedesktop.org:url,SA1PR11MB7130.namprd11.prod.outlook.com:mid,ursulin.net:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mei.fan.liou@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DD086F68BF

Hi Jani,

Thank you for the feedback.

> Which platforms? This should not be the case.

The platform in question is a BTL-S RVP - a desktop board with no internal =
eDP panel physically wired. The BIOS/VBT incorrectly declares an eDP connec=
tor present, causing intel_edp_init_connector() to repeatedly time out on A=
UX A before giving up. This is confirmed by i915_display_info (no eDP conne=
ctor listed) and dmesg ( several AUX A errors, ending with "failed to retri=
eve link info, disabling eDP").

> I'm not fine with adding module parameters for regular use cases. If ther=
e are issues out there, they should be root caused and fixed, worst case wi=
th a quirk.
> You can also disable connectors using the video=3D parameter and connecto=
r name.

Point taken. I will drop the new module parameter. The VBT is clearly a mis=
match for this board.
Rather than adding a new module parameter or DMI quirk, I would like to pur=
sue your suggestion of fixing the existing video=3DeDP-1:d path (tested: no=
t working for this case).=20
May I rework that?

> Please file a bug as described at [1], and be sure to attach the dmesg wi=
th debugs, and the VBT.

Bug filed with dmesg and raw VBT. https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/work_items/16546

Thanks again for the direction.

Best regards,
Mei Fan=20

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Tuesday, 30 June 2026 6:47 pm
To: Liou, Mei Fan <mei.fan.liou@intel.com>; Vivi, Rodrigo <rodrigo.vivi@int=
el.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Tvrtko Ursulin <turs=
ulin@ursulin.net>; David Airlie <airlied@gmail.com>; Simona Vetter <simona@=
ffwll.ch>; intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;=
 dri-devel@lists.freedesktop.org; linux-kernel@vger.kernel.org; Liou, Mei F=
an <mei.fan.liou@intel.com>
Subject: Re: [PATCH] drm/i915: add disable_edp module parameter to skip pha=
ntom eDP init

On Tue, 30 Jun 2026, mei.fan.liou@intel.com wrote:
> From: "LIOU, Mei Fan" <mei.fan.liou@intel.com>
>
> Some platforms have BIOS/VBT that declares an eDP panel present while=20
> no physical panel is connected. This causes intel_edp_init_connector()=20
> to spend ~6 seconds waiting on PPS power sequencer and AUX channel=20
> timeouts before failing gracefully.

Which platforms? This should not be the case.

> Introduce a new boolean module parameter 'disable_edp' (default:=20
> false) that allows users to skip eDP connector initialization=20
> entirely. When set, the driver logs an informational message and=20
> returns false early from intel_edp_init_connector(), bypassing all PPS/AU=
X probing.

I'm fine with adding module parameters for *debugging*. I'm not fine with a=
dding module parameters for regular use cases. If there are issues out ther=
e, they should be root caused and fixed, worst case with a quirk, but rough=
ly never with a new module parameter.

You can also disable connectors using the video=3D parameter and connector =
name, e.g. video=3DeDP-1:d or something. Making this work (if it doesn't) s=
hould be preferred over adding new module parameters. And even here, root c=
ausing and fixing is preferred.

> This is modeled after the existing 'disable_display' parameter and is=20
> intended as a workaround for headless or display-less deployments=20
> where the BIOS incorrectly advertises an internal panel.

"headless" and "display-less" are super ambiguous, given the amount of poss=
ible alternatives. You might not have display IP at all, or you could have =
everything except a display connected, or everything in between. But VBT ad=
vertizing eDP but it not being connected is not a scenario that we should h=
ave, and either the VBT or the whole setup is bonkers.

Please file a bug as described at [1], and be sure to attach the dmesg with=
 debugs, and the VBT.


BR,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


>
> Signed-off-by: LIOU, Mei Fan <mei.fan.liou@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++ =20
> drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c             | 7 +++++++
>  3 files changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c=20
> b/drivers/gpu/drm/i915/display/intel_display_params.c
> index 2aed110c5b09..8d47d19b1667 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -102,6 +102,9 @@=20
> intel_display_param_named_unsafe(force_reset_modeset_test, bool, 0400,  i=
ntel_display_param_named(disable_display, bool, 0400,
>  	"Disable display (default: false)");
> =20
> +intel_display_param_named(disable_edp, bool, 0400,
> +	"Disable eDP panel init, skips PPS/AUX probing when VBT declares eDP=20
> +but no panel is present (default: false)");
> +
>  intel_display_param_named(verbose_state_checks, bool, 0400,
>  	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state=20
> conditions.");
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h=20
> b/drivers/gpu/drm/i915/display/intel_display_params.h
> index b95ecf728daa..98ab0d753dab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -41,6 +41,7 @@ struct drm_printer;
>  	param(bool, load_detect_test, false, 0600) \
>  	param(bool, force_reset_modeset_test, false, 0600) \
>  	param(bool, disable_display, false, 0400) \
> +	param(bool, disable_edp, false, 0400) \
>  	param(bool, verbose_state_checks, true, 0400) \
>  	param(bool, nuclear_pageflip, false, 0400) \
>  	param(bool, enable_dp_mst, true, 0600) \ diff --git=20
> a/drivers/gpu/drm/i915/display/intel_dp.c=20
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 85d3aa3b9894..c6293a1b3840 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7214,6 +7214,13 @@ static bool intel_edp_init_connector(struct intel_=
dp *intel_dp,
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
> =20
> +	if (display->params.disable_edp) {
> +		drm_info(display->drm,
> +			 "[ENCODER:%d:%s] eDP disabled by module parameter, skipping init\n",
> +			 encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
>  	/*
>  	 * On IBX/CPT we may get here with LVDS already registered. Since the
>  	 * driver uses the only internal power sequencer available for both

--
Jani Nikula, Intel
