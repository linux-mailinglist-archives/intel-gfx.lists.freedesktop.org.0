Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKH9Dl7XCmqc8gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 11:09:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8683E569639
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 11:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FDF10E29C;
	Mon, 18 May 2026 09:09:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AflLk7++";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F6410E29C;
 Mon, 18 May 2026 09:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779095387; x=1810631387;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nQd8FHlrgNi7YAwH6KhLky57tLAbFFmP5RNjz30e6OM=;
 b=AflLk7++xFVgOmoIXMYbHy20+Xxx8p66SIyvRROrF3ZmRqMo9l/ABw3w
 CY+0xucxDg6tRLYGTf+T362BopvBoY5lenM3n4YvaucIM/m40s8gmldzi
 YagbhBO0J6DxortVPC0S1EGVT8BqlT3FlkX6Q8KEfcmEk3bJMQF+r0gtO
 wj0RehVfp5VvLwwTRfrNB6mRp/yjpsNKvIAtdgLlZDWuJ6ROQ/+JbKWTJ
 jY+A8Rb129zyUwMZp8GUH4qb2cVQN2qDuqq12ahi9M3ucdnCEa91vjAVY
 xOHL5vOLzQKWcaWRK4zd+UKAHtujm0slKCUyl5kNPtC10YDyXVfilRL72 A==;
X-CSE-ConnectionGUID: yOVjzn6XR1iQlQKcOrKWgA==
X-CSE-MsgGUID: sbvaijCRTRiRnPygjuC9GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="80064211"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="80064211"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 02:09:46 -0700
X-CSE-ConnectionGUID: Ja9/J3n5R3+EBWIe9/qpYg==
X-CSE-MsgGUID: HDLOc4c9SkO5RsbuLUWrLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="243369458"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 02:09:46 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 02:09:45 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 02:09:45 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 02:09:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gmjtMyx1BdRFBlWJwtmb9GTZiPhdPGQIn7oh/FXZYt7F05jv9qk+qe1QPDpaAbkqlimA0NKJhAkotQAvO5b1Ga/E79Hh9tJioJ14vRLNVNimud4s64ccZGPAqS+19wAT5dsQIqG5EDKZy7EsHhe+owJzTLocYyOCO4abx0BR1Om+AOQ2yPl2RZM5x2TiLJ3gjcvoON3xcygYoAxc5ZEULLd373h40qoR7uvo513C24awVepmuJ11fncbgeDZBx5foQSd7yKOxEItDjdMYQQRDAQ6Qit6AACjgOtwMopM4kFeam5A3yBDZT2wBflpdlqOJOwK1Q68fJmZJRi4D0Nt3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EtsO2m9+tXSZA3l5SbYX4Q3xi64JXBYOaWdz35ekRkQ=;
 b=m3q40KlTQoSyVRH/vTkvHyboDZgNTCP2lhwLo6788hTZ+jlDMJ6LknMxGTbY+sJbaE35nROolxvqBqhCh3s3xF8ADkYtx+cYsLHhUUPNdxOmoFjZ63dguCc8vUgXJCqiJqf36gm/qUrFuR6+KcfW/9dJV7IfNL1Lp7RZlWUMUkbwIi+A6r/WPcIyORCntVV/y8ZFxQxvlFRDhAkBVs5bs6/nzfmQW83EzROrk//ID3aZXeyKC4Y2Xda9hXseXB9Tajm4WmZSCFAOWCs9dLSxfT22fv3bVxc59ajji0jaAOeTd0DL5b+4eDDy5/cfqlTVujDZm7k7VZGxAP/AVhNcNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by IA0PR11MB7839.namprd11.prod.outlook.com (2603:10b6:208:408::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 09:09:41 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd%3]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 09:09:41 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "harry.wentland@amd.com" <harry.wentland@amd.com>,
 "louis.chauvet@bootlin.com" <louis.chauvet@bootlin.com>, "mwen@igalia.com"
 <mwen@igalia.com>, "contact@emersion.fr" <contact@emersion.fr>,
 "alex.hung@amd.com" <alex.hung@amd.com>, "daniels@collabora.com"
 <daniels@collabora.com>, "Lankhorst, Maarten" <maarten.lankhorst@intel.com>,
 "pekka.paalanen@collabora.com" <pekka.paalanen@collabora.com>, "Samala,
 Pranay" <pranay.samala@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
Subject: RE: [PATCH v2 05/13] drm/i915/color: Fix HDR pre-CSC LUT programming
 loop
Thread-Topic: [PATCH v2 05/13] drm/i915/color: Fix HDR pre-CSC LUT programming
 loop
Thread-Index: AQHcxxo+xFN5Dz6Z90mF5EGrmo4F/bYTvamw
Date: Mon, 18 May 2026 09:09:41 +0000
Message-ID: <CY5PR11MB634413E35E771881DD890843F4032@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
 <20260408051514.608781-6-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260408051514.608781-6-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|IA0PR11MB7839:EE_
x-ms-office365-filtering-correlation-id: b2bb4f5f-dc7a-41a8-03f8-08deb4bd31da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|56012099003|22082099003|18002099003|38070700021|4143699003|11063799003;
x-microsoft-antispam-message-info: btJ3TqKqByyOTUi88BeQjm7xQKmiTF0LDl7FI57vyZmwbItWYdDMfzz3TlnrdLHK45kyuXfbKcbJalHRZMuX15JYiG7RhRfEMPPauw00Fr+lSbSNwgOJ9iLpkM+OnZa6zI5irXDBE0Et09yoG1SRUP0O4H+gJea0ryzoiZfn1qFESTn1rniHSaHhTeECXjPh/obRx+74S3B69eYX7dBgvWsW2WNRJfNoAtpduCtpRl2NHZAhKoTGejhweqwzKx3mvBPfhrWbxABQuK/E89iYzkgaQRavRUHerSUtHe3zDRzaE1XsTjQbfTHNIX0xKyHTH+Syh6YMO6Z/Nhdyf5pqH9THA/ICAKPZSfbgc7K7shTcB8G7Uekf4NX2wUC6MqxNQ/bi8lAL2TDuFh8dOWCw9Y+2+HI2pvsatBGCPzh3BTHbHccQnzYNiR4Y/PAm6hVGSjD9kECHym9LnO9Dj2asrfvBHoEJi8/hO3dbQfgI4+dfLFwmglL9sLfaIEbOzk5LCfb6egHIxnqVtF92sOaP3Ak3IAeJijF1UeKqFL9VilRbqSYeVYo6CJxS4C8SRYSBi8ddBoIiZNCg/Q9B55b6XtLUCBre/HDfbXOKlF5R9KuBDN1L0fHGomZ06E+qqKmh/+nz5bYJrGLQViY6gCoGOXsSyXTouAeyiDMEdO7VoJZ7CFCOShhHpF5TD5d/j8CqVra9rc6uQJVMn6X3KaXg85dO9VTu67SffnjHk2rf7QmMSFti1lelWPIBp2Fp8mrN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(56012099003)(22082099003)(18002099003)(38070700021)(4143699003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j92GgUoV30NsQIi0abRvlphXI/LWgNIvuTutuLpVfhlSmRsNeh7Z6u72bOsf?=
 =?us-ascii?Q?R+JhLE0rZ8vsGvyl/W4gGfJy6ASot3S65LCsX1yZZYh29Yi34R1RcnPp8HeY?=
 =?us-ascii?Q?WFSvljTc22oHb4qdTR7g0O2Tg8Lewqqyb/rUpmtdxuhikQIL27LvVrYEy3gE?=
 =?us-ascii?Q?aBtf/YcKpbXCS9FLYvbvcDKsJROC7Whs6AUbl0zfTW0XWwhxydpoI86jn2Ib?=
 =?us-ascii?Q?SIMEPSTzIjQcmcbAmawvd2663sf9XcOBh5l43B47Eo9/DEGbHiqUzOQV6P6b?=
 =?us-ascii?Q?BEdfLq5UcsvP3uZS2HIoB/0ogoSaQ7hP4GhjYjNJbLf8Hw6RShGHVIP6g3DT?=
 =?us-ascii?Q?AMCK2G9VwVQnx0khu5FII9AKQJhw1pIvlO7DaoC4cg0bSIjJgKgT8032dLBP?=
 =?us-ascii?Q?BH569xjJMUXQSG2hrFN8UG85XFqWkVivhkXeFBcrDWLMMlQA93XRB+tC2IH9?=
 =?us-ascii?Q?w8KTHmF6vvLg9ofcSWVQWvrk7RPl/2D3l4hJ4uEr+Yjn5cVdrR5y8V12uIXN?=
 =?us-ascii?Q?NoPlkVuYMAYKT0eHerpqEU6G/VfNWp0ZQhq9L4j6GNYcXxleQv91pl19X3hY?=
 =?us-ascii?Q?1nnbhrDl9oEepi+JtItMMaFwI7Xb0xOKypXf9HLswDCn5SBODA0ZuZpnrIlJ?=
 =?us-ascii?Q?AJoez2N50YVrHYIx3VjJ9xroTl7J+B9tEkmTddjf0E3fXQRckiJts6r31BGg?=
 =?us-ascii?Q?oZRys5Uf+JymTwmxzma2G/32NySQX64Hr/n7Jc2LGwwIY0IXvcahaWe1ErIi?=
 =?us-ascii?Q?qZSWCwApzjqu6hAufd+IdyiTezFxZ+Nk1iUu5IFyM+pDsfZdN+XbaZS7wfhJ?=
 =?us-ascii?Q?Phu7mMajciisxB6JT+cXr/F94K1mkN6l2DCseoqm9gcn0fotbmvaG590o3vh?=
 =?us-ascii?Q?SMXPSVP7JN75v5wjBKyew1Mu7TJhFvHelDpZA1HY/41bSWeVUiQN5LzbIgBX?=
 =?us-ascii?Q?VVTjs7GxHO8HtUaiJ/SRFkzEM/svBZCqgG9fSkeKDqxPEM9bQcQdKQ2/VkPA?=
 =?us-ascii?Q?mygt4OoRLAYK8UKUsnmvI0KlQjXye+d/mLjDefiPD2aLYVfYG4Edmpnxqvt1?=
 =?us-ascii?Q?mGv4mVA5v9BYd8rBuvfWt0qXkF98iTSN5X8GxLzo3Ko671PY/ZAosKRHYn6c?=
 =?us-ascii?Q?RB9L7RvhOvCN46Dk+kTr7c367DHmsOZb4dE1fVnV4UIPpyv94/IQKvoGP3+H?=
 =?us-ascii?Q?jNJr4LJiYPBj7JK//iqR/jq+lPwxpX/kGMZV9vEFPj51najOqIxwz2wLnMgV?=
 =?us-ascii?Q?XgyAZXEo+r+VYDk1vwHgH8FJAfYuUivgKiZnVJJzxu0dtYiaKOA99tS5LTYQ?=
 =?us-ascii?Q?kMmTElhcm/tbI5xxmqtK6Q4yI717p0QjvMt2bCcAI/8WBx7Y9eVYlapUtitg?=
 =?us-ascii?Q?iaiwTdUFWze50Fr/AiwRSpVhLt1nt97WfZlxBoVUiLGje3HUzMkjDNQ5fI9C?=
 =?us-ascii?Q?eh0LCnG8idaghkwbaD2zHiIOO8oBXeHoglcs5gLV9JTow47TnfWBKtQXICHq?=
 =?us-ascii?Q?eLMGmRks7H+MgvKVcM7WGAVWwM/SDZBsHS5JDO6fIGjkn/qYkLq9yHsP37s3?=
 =?us-ascii?Q?aH0HrQjRRt6gNRNX9SfZVgsjrknLgnTPcSO9L3+EAVBbrz5GstMAdbz+rXia?=
 =?us-ascii?Q?bSW+NgBz41TagtwDjaDjPqlAnlM14HxH935V5GFmkkp+yn53j0u9Kjlyxhg3?=
 =?us-ascii?Q?GX7jdLhmBZHg/OpupISsbs9JD805JcK6DDSXcfLjooPe9VeLucjSRp+ZGWat?=
 =?us-ascii?Q?C8BLVVRU+g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: I9M2ak6M+BLs0z2oo57hsR0crczgeOId//5RN7z8SlC1eQLRk6XYD4xEofcCFp3HlbqDdhC6xyy32auNgUJ18tk93FwzDH5VnOUuvI1h9HYFOYFmi5r06VC1yeYF09c/Wh7PUqLK9P8Og5X9bgG1+rw+Vg6FetIf/XI/+UpodSU5JddWbRYb0lCoqvxMMQ9KPe/6RrP9kCEAadVvFgXylyziLgB/JMLddbPrbCWWWc1S0cy+aQpUUMKblEe74uoCYa+CAUsmgRU5oQdY6FsRmzsCzFkARs6JO/Osxo8sY3CnuQZ3YbD7nepywX6e1VWPRahva3NQj76Odkjs6OLlzw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2bb4f5f-dc7a-41a8-03f8-08deb4bd31da
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 09:09:41.0827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DogFj9pFGVonZYXQaZnNzmAq9LNjanYXA06keJtYinYQJ91vXf2aL3/69C0UxPdenvUGwN2NtXyPL+ftAXeHYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7839
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
X-Rspamd-Queue-Id: 8683E569639
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[14];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, April 8, 2026 10:45 AM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: harry.wentland@amd.com; louis.chauvet@bootlin.com; mwen@igalia.com;
> contact@emersion.fr; alex.hung@amd.com; daniels@collabora.com; Shankar,
> Uma <uma.shankar@intel.com>; Lankhorst, Maarten
> <maarten.lankhorst@intel.com>; pekka.paalanen@collabora.com; Samala,
> Pranay <pranay.samala@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH v2 05/13] drm/i915/color: Fix HDR pre-CSC LUT programming
> loop
>=20
> From: Pranay Samala <pranay.samala@intel.com>
>=20
> The integer lut programming loop never executes completely due to incorre=
ct
> condition (i++ > 130).
>=20
> Fix to properly program 129th+ entries for values > 1.0.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: <stable@vger.kernel.org> #v6.19
> Fixes: 82caa1c8813f ("drm/i915/color: Program Pre-CSC registers")
> Signed-off-by: Pranay Samala <pranay.samala@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index e7950655434b..6d1cffc6d2be 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3976,7 +3976,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb
> *dsb,
>  				intel_de_write_dsb(display, dsb,
>=20
> PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
>  						   (1 << 24));
> -			} while (i++ > 130);
> +			} while (i++ < 130);
>  		} else {
>  			for (i =3D 0; i < lut_size; i++) {
>  				u32 v =3D (i * ((1 << 24) - 1)) / (lut_size - 1);
> --
> 2.25.1

