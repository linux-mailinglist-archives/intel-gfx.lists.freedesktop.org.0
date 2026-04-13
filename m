Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIeSCrtq3Wn7dwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:14:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B4B3F3BC3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B7810E109;
	Mon, 13 Apr 2026 22:14:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Srt8ELWG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4E710E109;
 Mon, 13 Apr 2026 22:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776118456; x=1807654456;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j3iNTFMJTTLZtLcybpR2auq4F0xUn9wpEGkhn58/bAk=;
 b=Srt8ELWGrt71v3na6+xodf8hbOxAaHzw0KzgoeCx3VyA4WqVyL5GELcm
 platU/Pvn1CAguNB4yoPNxas8KlOv1AVO7XJ6DsRaj+8wU9aM76l+NTo3
 Qwv/rtAP7XEiB4KNHf41YsXBxMvDN+mVp2vAWzFpXXP0QlikUucFE9FS0
 5UP6pGR/eGFV2rY0+ogEMqp751OfTK14HIH8MJX+wyZIpd0p/KBETUSCB
 2t8s30nJnv1EfsNbEjQ+C93tv2C5I97JZsLve57XGS6gYzn9u5mh3RgIL
 YTMKAUYbDducWfk7Yc4yXaumTee1ARoIf8xU+3F1+fL4BiEnrdBgFFQWL A==;
X-CSE-ConnectionGUID: Q0pl/RHPQDuV43WFw75/Ow==
X-CSE-MsgGUID: PCTr60t2Tu6jlDPiz267aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="87688360"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="87688360"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:14:15 -0700
X-CSE-ConnectionGUID: JdkGEME3R6iLyu6NC0gfSw==
X-CSE-MsgGUID: 8bgCqI69SXeUpolWWPxwQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="229033534"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:14:15 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:14:15 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 15:14:15 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.29)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:14:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KthI71PBzsa3wuP/MNvaNNMsCPjT/6mGnedXnTRh3oluap4Z/gH/Fttte6ySncxXbiIulSRPYf1minz8SGvwwXVEdXF1RETIvZBukQuA0JXFERuUIHI50sVckKPzaFXgIhb3AeZd6kM+X6tLAPZhBwYjR8Bm/H6s9SJE93L4gKYOYtRES3+CTjSPMN9dqWR8VP4ls+DXIeKlv0vNIy2Al69mpvXTKlCvTzK5jad6ZlYhLxCcYFCUvGOSpMVDl5Z/PNj3BJHAdrt8D15CKvEESkNrXGMr9t9wPZnTPsGZk0tpD65gj5SW3Usk9VGTas6/KRPs3ZLbM5UCufxozEyQ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYne/MU4HTiavi6PepV8X93O5x27dS/0tBAUM5ukv+s=;
 b=c2dESYyKx6GVmY9NDsIRK+2yt6zEYt94+WtlQseCQSMH2ja4PLmK9WwavP5HECYu+Wm/Q/OjZkugGFCb22cq9L4waynqtaN05jNpQVieFw1yDu99VpfuNhKCyL306j5Wch5WBPpMyIl3bSMtsyX0wyJ249oM9cBZSXbV6FP00b/4HpNQ3Xoe9xmdwk0+sXbOjcArYeEphn1bSrP6+vX2j80mIJEYWfuh/XQpU0C3jlSdW9n/qM0GRb5w2TiOj/dF6JNbUz5HqtCqUiOZplYmi/r/ZA1bhMojXPr1WDLil8ODJyORxVmnxFuf3AYVeetMDcADIqDmTjdS6yJxMVkZ2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA3PR11MB9062.namprd11.prod.outlook.com (2603:10b6:208:577::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Mon, 13 Apr
 2026 22:14:08 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 22:14:08 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 16/19] drm/i915/display: Add helper to enable DC counter
Thread-Topic: [PATCH 16/19] drm/i915/display: Add helper to enable DC counter
Thread-Index: AQHcvUQ5ayak7eU3ykqgh/PPAuonAbXdqwsQ
Date: Mon, 13 Apr 2026 22:14:08 +0000
Message-ID: <DM4PR11MB636020D9E0D07EC19B02F780F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-17-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-17-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA3PR11MB9062:EE_
x-ms-office365-filtering-correlation-id: ae62dddc-154c-4d0c-c41b-08de99a9fba7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: 3Xr8XXFMDVujco+D5HQza14btj7kvwLF0miQIlvc5QVXqO84ro1V8iZSNP/dt4n77cVUi/sTQjn9Mjc9HKyFqoortpldWSS/yvtdOTwJhDS6vgqT4AkweCCuyWfBVrOrbQyMKKK8gJ9kF6VpmsnTr6b3J3SZ+b9HysC3I0Uf/xhJC+hDnYpOTpLr3JLoWDUdayAyehYuhg5x8KYScjsGTwf7ijD5QkqhDjpIxg2o/ScmvRui5qKXB+J9wl0jR6lWvVKugC+2Gb5+Z+JQ+t66+CHRvVzcse0K0KSaZnHAWh3ABvoXBy67FeE6YyGxNF6dQHfw7UKhNQiIb9kz5jO9wUyS5wiUeXbtBN/r8dys1mbNdLNgQ5Rcz0bzW1qnTBGWUFffRX/MF2mZR8MqRsccYuxPo7DpNG9bZ58C8IA4eAzO4StGFytg2cZ6ukE1h1yA3yU7/4DdEnqfF2iV/L8oGbAwRsYRzqf1uUgvmEuUFZeOa5IDwmTwa0+fFjUq4uqMYAKI3thBrjcoP2BKR/tIdmq1+QSqEZd/4fE1LlUKadY71epTwSpDkyJO59Vsta/Vj/fRKywulb5hBN5W+1P7iolv86WsjvrXzjqgN+A+vtOoIxlhk1RHmNU/ZXHVhyPeLSOymDo8LhwDb52KVjmwv2gkWszI/lcZcNiVSCQouhtsBjIGHsdwLJi9G9vZ+aHmr6aDhH5T1XjWrHJaG5Mnl46mtq1SrHQrJAkgjx5CEodS1l2gSPm24EzXeRs5NtxDkrCno87TD9aIhm9pLj+TXBYSfGBhfxU/QhIpcUL3blg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vrfk73P+nVjHwN9pWwj2WXKhNUJ0J5v8AqmCYnIeqshvzTi+CifOIeMNuDjK?=
 =?us-ascii?Q?tUau5eL0jO3KuMxuMTw/0hB6qTAljoUTPWkQ0v6wg1GT9/fEebKNQ4Rh6Vsw?=
 =?us-ascii?Q?4rG4uSJA4/wNyBfvWyCxniRzF5lFRojgbE1oq9vnrf52bK82uYB0mkt8YvFz?=
 =?us-ascii?Q?x0iaww1wgqTlidegr6BH5Mhw9oVPYxd40gZLiOo0FkHv9I9MiK0COKLXml4E?=
 =?us-ascii?Q?j+IiDI7RQ1k47i1CoiiWlsTbzzbKz0Dto867F2l6mjriU7mPe6I/lBLfg5VR?=
 =?us-ascii?Q?QyKfVfPocPfj8oNwdNQ9HCBiZ85dMYqFA9CuD3t88X+c2H1p8rbWyAjHiSe/?=
 =?us-ascii?Q?Qx8nSdzWGMe/w4VgfaHcUziJ5n5jZcRg+KDqo+JvaRwWfXc8shb4EAovbuCF?=
 =?us-ascii?Q?Qfy2nM5lwpvnmLze3e4EJtrDWN+ZlRJrZE7nvzBwJT1lFXjCygm58XYtxcAZ?=
 =?us-ascii?Q?Zp6aFg0npZj5fU33bLh57jT1jlVQuDrCAhx9HdECIldjSd16dJ0lIq3E3Co9?=
 =?us-ascii?Q?JO4xNbNJiy6WV7zfJ2xwo0KIesYZsUcU93hh/JjENxRZ/nXvHy1TOtzKnQLj?=
 =?us-ascii?Q?iof0bOYVFUk27G1/ZO+G1yessNOFjMpuVaNzl0ImjnHhW5pBmlCgBs4LyL92?=
 =?us-ascii?Q?BH1Sa/4DBB1/MqQqTazxUEmrJcxKw9qGgZAwZQc3U68SLGhYDWXl+Es7UQnu?=
 =?us-ascii?Q?woXtY6ssJu/LcGuiEB5mTVspdQ8Oqyj5eOR0UmcVOUdidzpJ01ND6Jk8eMpL?=
 =?us-ascii?Q?k3sSOqLWfCeZqPPtqBx4H7unWP8rUd/obaub0NFm3R87NNgC4UCfR2TKaWqZ?=
 =?us-ascii?Q?N55bjXP/RX/Z8kmrSMEkoE4RWeQnJD9+ngekTZ3uJG7exxP7eE5UHU5vCw5X?=
 =?us-ascii?Q?oz4ARCyPMsEy4FR8FYk9iYv+cb2MSE87UuSll69PFbxSZyG1CSNIbTLbibWT?=
 =?us-ascii?Q?DAQIBZVSYxTHMfh/dSBktme/AooBiH5nbC9FPIZwTdI8LdKKumfsY4h30/Jb?=
 =?us-ascii?Q?Yq4d2ImS/GxBwLkO/zKebLVsNoifTisLu5n7OV2r1+5mXmqZKQF/OQkgGNKl?=
 =?us-ascii?Q?eH01kd97aCqIlvb6bCBWDoe4XdLuBi+rVtJDGjkz2t3Hq/1hvkZj5BrkGTVc?=
 =?us-ascii?Q?Z+V7KAur4ZeDMAg0bErKWujUNAPr9q/0aUISY22CnnqJ7sorAG8qSCjcqjsc?=
 =?us-ascii?Q?M654OeLnAxaUZ+ZINqnhSLHS8g6WxuMCtaMXJpGvkHbhDZmRHUfYo+bqxtum?=
 =?us-ascii?Q?+FAZbsQS3xulA7xHjxRfjllOVknvMwXy2L6Rk0KDZkJuUlbbeI0rjaBdEzMi?=
 =?us-ascii?Q?KcuBt6TJcl+WLpDtuXYPA/ZnToqSohph7zgfci53bv9yJSJRUStri2VOEUse?=
 =?us-ascii?Q?0CpF2R/XLgCDrMluZg8qUWjY5P9C0ybap/4fa3mlS4U6sNPrsYlrlVrsSow0?=
 =?us-ascii?Q?3znOWXK6mA/aUJt58S1nK+/m+6eeNcUms0mjTODBKaC91pW5TKsukJDZwCKz?=
 =?us-ascii?Q?cnITkgm7x7+2KFrHUoCAnD8pkg39iMIpbSW028e8H3aTarCUEcESODpesMyn?=
 =?us-ascii?Q?+cwevEMpa0+xYwclOPCsDSoW1LZyaBDLlUVt+hixpOGYNd7OWvlfYKqy7SBB?=
 =?us-ascii?Q?w+5lOGGiMSVWhb8ugX9M8Eud1hQ+LzqQcuvxm4uqQI3KBnyvHrLaZWeFiy0s?=
 =?us-ascii?Q?f2xewZuaLn76kBr4jfTe8gH91RbjvWgXxY/07XUgx9fmT2U1XWlSoHiayn3B?=
 =?us-ascii?Q?hQyXDKKWag=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WN84rI+A/AraeC4UwuMubuvMTtBZ1jMW6APpF1uLsUDp99J45W0LGwAR/KiYIM/e9qu74i4gA7jCIfyiTmUfgb1VVglNcxzNDPF2mpV/xN58Dosx6pqiNKrhfqt9JJbqYAQZSQXftnTPtj/Xs9Ligm8M6RN+F70fqeJlFaXE5Ggzvyj0zMjsC0qcNCbzdQRnjeXvLWnfgVeRxrFYm6zuy9LzpaR6e6je+CDq7PRwniWSTWvg1MOVisEpmCwSBpDzIb3mhLriDLU+Zqq8618Q0gduhxQqLoFQ25+Uhtr4mlaP45jy0JPIQgyuRTNyWbcg64zbnF25HKCz0Dm4JkvfiQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae62dddc-154c-4d0c-c41b-08de99a9fba7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 22:14:08.3660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hq49HTHOIldA2N1lpu5F3kDgmi/nWfam5VaVoXjIKwwW3ZrQDa5XP03kXj39Sx8Ww0THDhxWcqj03d2uIJomMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9062
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 80B4B3F3BC3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 16/19] drm/i915/display: Add helper to enable DC counter
>=20
> Add xe3lpd_enable_dc_count() to enable the DC_COUNT_EN register.
> Also define DC_STATE_DC3CO_RESIDENCY to read DC3CO residency.
> Needed to retrieve DC residency for DC3CO.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 +++++
> drivers/gpu/drm/i915/display/intel_display_power_well.h | 1 +
>  drivers/gpu/drm/i915/display/intel_display_regs.h       | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +++
>  4 files changed, 14 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index cb3dcd1460b2..15521442e6d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -867,6 +867,11 @@ void gen9_set_dc_state(struct intel_display *display=
,
> u32 state)
>  	power_domains->dc_state =3D val & mask;
>  }
>=20
> +void xe3lpd_enable_dc_count(struct intel_display *display) {
> +	intel_de_write(display, DC_COUNT_EN,
> DC_COUNT_EN_COUNTER_ENABLE); }
> +
>  static void xe3lpd_enable_dc3co(struct intel_display *display)  {
>  	drm_dbg_kms(display->drm, "Enabling DC3CO\n"); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index 8f5524da2d06..0ce64b894436 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -159,6 +159,7 @@ void gen9_set_dc_state(struct intel_display *display,=
 u32
> state);  void gen9_disable_dc_states(struct intel_display *display);  voi=
d
> bxt_enable_dc9(struct intel_display *display);  void bxt_disable_dc9(stru=
ct
> intel_display *display);
> +void xe3lpd_enable_dc_count(struct intel_display *display);
>=20
>  extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
> extern const struct i915_power_well_ops chv_pipe_power_well_ops; diff --g=
it
> a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 2bace331437c..8b59e1ff2590 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3058,6 +3058,11 @@ enum skl_power_gate {
>  #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
>  #define  DC_STATE_DEBUG_MASK_MEMORY_UP	(1 << 1)
>=20
> +#define DC_COUNT_EN			_MMIO(0x457B4)
> +#define DC_COUNT_EN_COUNTER_ENABLE	REG_BIT(31)
> +
> +#define DC_STATE_DC3CO_RESIDENCY	_MMIO(0x457B8)
> +
>  #define D_COMP_BDW			_MMIO(0x138144)
>=20
>  /* Pipe WM_LINETIME - watermark line time */ diff --git
> a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 90ba932d940a..74d18806d01f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -937,6 +937,9 @@ void intel_dmc_load_program(struct intel_display
> *display)
>=20
>  	gen9_set_dc_state_debugmask(display);
>=20
> +	if (DISPLAY_VER(display) >=3D 35)
> +		xe3lpd_enable_dc_count(display);
> +
>  	pipedmc_clock_gating_wa(display, false);  }
>=20
> --
> 2.43.0

