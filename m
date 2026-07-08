Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1DbcGtebTmpVQgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:49:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCED729B4B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:49:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cej+e9Es;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2BB10E64F;
	Wed,  8 Jul 2026 18:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC1910E64F;
 Wed,  8 Jul 2026 18:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783536597; x=1815072597;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EGe04F8BFmvlBWRN8oYtHHfO++LkYFvOgcZ/MwWeLDo=;
 b=cej+e9EsKvV5Msx6ax+SyNBdLY0eO5z+QRdS/aRHQmJPQnZM3L3D/68a
 /RXSwcvF6BnRd8VSwOeecCngD1zL4imHahYCAVhBZd+5wSnBoWrJrU7M/
 Z3PiSnHns4UU7RiZj8hnTLQESJ4q0lZuMjExwwYXQeFWVbz0dmsoi0QWT
 9zaNfHC2xdS3IswDn9SJlgJ4FDVYqTvMEnn2kZxa5qLTM4Yc3EdiwK+Pt
 NKV8wdjEZgiVkYEqvoJpuvahSqI8hXwMLU5EMnoh4glqMyc76tmR/EP5T
 Bw6tYJDQLIW8+OG6w3VTNo/ZEKg01rqNMeoMc/pLApvdWCttE4Zcxr8Ew Q==;
X-CSE-ConnectionGUID: B/lcHRdqTXSpjzL0HUcblA==
X-CSE-MsgGUID: EQwXWOblQSO2aPop0A+q8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94566100"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="94566100"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:49:56 -0700
X-CSE-ConnectionGUID: RgrDy+laS2OaEBi+BvdTAQ==
X-CSE-MsgGUID: N8QDSseyTaCDmWfr3z8GkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="255017134"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:49:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:49:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 11:49:55 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.41)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:49:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=woIErOjs28e0s1WTuYCKbQCSHY5KBG3AmBkm7WFc4Y2mfbVQo7p5WO8qftQ1Rz9cXAJ/ORokxUx4/ZN3rawLFYfglS+iSTEtG8ouhKdLQcIIxz7l45uyfXq99juQsvQ28YAJ+63F7Rn2tqaZqutv+KZzd/1EbqHYXQhMJw3+6b3VUivTvExJ8EPsRvDDj2q85c0eSdlMDRF+HM7fMrrt+tqAPHMXPG/QeYXD2paAsI6hUhZQxMxOmYyRhZyvDBLfcatMtxvUFlRyBjI+yhozaKTqvON5QAULcp46VrCK0cnUh8gq4sToXw9orQC0NYd1gdqqDbgRVCk67FOICAu3uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=13e2lLYX9PXlQigGDMjCbJHtrtEiHr90dp3On36NR9w=;
 b=L907ItFFLeqln1FNhojJeOjBOwWNJG8ieqR8o6tkPH51k0jmh+Wz60FNwTCYBBNj6/OMGVF7tJL+1iFRrvGf9FlyAPh3VhOCHIz8Y3nZ1d2y9QRfjhSbbBEo8quK1hW9qrm9wOxcY4W/c3fghFbhadD1LduAuBnff9XxXuV16ZnaN7LfwmQ/Qj2iKG1NGrHfJNXZ83L+FiMOvVZyY+4Zemc1JUoRf7ilIWsD7ZtdY87XicwTJ/23qSV8SG6H5kB+aR1L7xwwvFkGUyf8VehEhJ1GYTOVKFLOkHuD6BhziFz+4/v7CSdS6W2b56vIJGZJEY3sTKVyPPyJFSFiWNwY0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.15; Wed, 8 Jul 2026 18:49:49 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 18:49:49 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 05/14] drm/i915/display: Track CSC mode in intel plane state
Thread-Topic: [v3 05/14] drm/i915/display: Track CSC mode in intel plane state
Thread-Index: AQHc/jxY3Pv80XKTTUKxc0T0XjRP8LZkGINA
Date: Wed, 8 Jul 2026 18:49:49 +0000
Message-ID: <DM4PR11MB6360A438A0FF2A6097C85A97F4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-6-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-6-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB7898:EE_
x-ms-office365-filtering-correlation-id: 047d2a62-3d65-4fee-456f-08dedd21b03a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|4143699003|22082099003|18002099003|56012099006|11063799006|38070700021;
x-microsoft-antispam-message-info: yo+VgLAMO0OJnlJ5PfRj0jEuOFf320WDfAkKtN6oYTJmKjw9aUtEJUKYDptVCsNm0313C+b+88ZCdt+e5zx2Xo0BZH7Z3v7M00/mv2U+nAl6yqZTRj0WP2MnSwLj1U1NQH7won2WrkwNfUus9zIoFUUoaIsUbIzGGhCNUblb5F6xAZEtiMLUFb+gUxOmMES1RjqqGHhVrz/90FSBqK1Kn7rtF2VCpY1sahIO4l6Vpf0SzE8uN7Z5nEHzKZLE73F2w+fnK2fVz6gF/4c01JKMLeRSI13Iiz9g2tXwvQNBRAG0BU84LW1aejxiGGMHkEqyII9Ok9/EFJ2HE8uqRQ2OcXqvAey8waA3z9YSFki1EmgIWCHr/1Y208kJ5zNimwEXS4XHn5zivio08FdBE/puIiTodhIeue+GvHhaKfV0/tg5YkPs9boV9Ok47YyZDtM2DWXfHCZ77ceNEtrFoh5+Law4YIlEIOjhV5ISijiSPzCcna74rrkk6E4OiBzGeDPTUJGnnp3uYP9SbBquSds9ZHW3eN/auXpYaZaJxpc2rL2QmLg+sA5/yDyLSWrgR00fAD6NPV3vLVgOvMyJPe7vPvSS8Q++rINgCOXV/6Xv2h9L0bRZuCUIhVoFUYrOe4W9HDH9HYF8cKl91ssUhYkeQJQYMgeSc24IqPsAuiyvlUy+51JHwyIvTvxyvx7fSJkgcmZI5lUPmDhZc6n1JqdpVQsbS2QyR5xb5AD4KT2w97k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(4143699003)(22082099003)(18002099003)(56012099006)(11063799006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8Yg5VqIQ4GHrGrYCfN9Iyu4bc2LT/PAG5pAFImroMA+z4JUyYFBbPMh4eBED?=
 =?us-ascii?Q?r+r356V63oFvsVe98vVoUPm8Nj187qN39Tf04YM9t76VyXQDMNWyvXzWFKx5?=
 =?us-ascii?Q?efN9bm9CnFOWVexL7mcPv1nRF5ablpdXYAdi6zPwHMiBm+E4vkYQoEWWNGdy?=
 =?us-ascii?Q?iNN4ik/GJx4hnJaM1UF2jxhEmFAu/F6JzXt9gx0KsE8QJD2KYqzza/i1D4F+?=
 =?us-ascii?Q?EJEyf4ZTPUhNY1EsqNdP3dz2AOqZoxRTmg4p/2p0gcPxTqr9WVy/fJ/TxLKv?=
 =?us-ascii?Q?Zvctf8crCatE94QNqTplKVJrOCYsxrA8sEh6UBWXMrJ5loDMYS0IvhJy1kcg?=
 =?us-ascii?Q?/QnXB8QJ3QFTnQ2cRXkUw1NZ0nBnnPig9XyGwPaNRJ5UTtAO2SBGgaxWLUFG?=
 =?us-ascii?Q?muQlhF8c6u0c/y4URXXrkMJYGnz3fNWFPEoCfVZt0s+i29OjEVTp60WKYY2E?=
 =?us-ascii?Q?lzqGtcYHeTZuPGKJ4JzhT8ORYMVfUNHr1PH5ErtCeky8Yzxfebd8IvcMg4ZA?=
 =?us-ascii?Q?zpWZmzGW3YZcslUlrDYKkuxrrJK/xazkA6DDLx+7u6F//ICgRtTWzeUKgqW7?=
 =?us-ascii?Q?95h9jSYgdBnYx3ENduRYjC4brJbh77W1wDMzgNYqpIR5t3ot81YUZaiByrSs?=
 =?us-ascii?Q?JwuTTpqSvh7Sde3LaOPTOEY+SDZlYxAQZlxVkW1VCttIvMKJClQMtL4JELTg?=
 =?us-ascii?Q?/Flv92VJRX/R7k36uZ7WxbKugwgGgrNN8R3FC2Ou7y3w3/PvtTJtZfdshiyN?=
 =?us-ascii?Q?Mg7zXrbrzkLesVBa1eNooD3ZveBp2YUCBy5HeaToFsqKFUJ/bPLtQHKHtf0E?=
 =?us-ascii?Q?EJrVq+GQnrJkjt/v1CbCRc9as1lWDO1rYg/datRHL8gi9vQ0liipV0QU9ue2?=
 =?us-ascii?Q?Ej3Bj2/h0QV1R0Ol17H1gCFPWnuI6QspCqkN8dVcE4sRXq/XPzYP9ZATiLJo?=
 =?us-ascii?Q?yrCfqgXZAZ8/+wTLvMKwefSB4DfkD6YVphNSbsxgC+s1GC0n0Z9JPEFtLGsM?=
 =?us-ascii?Q?Vt1WC7qd3kj9UwGbmJ1UPa+tWtcZDUG167ZbDf1TvCd4kfGovDOZJ/PSt1pD?=
 =?us-ascii?Q?8RpmiiAPZM8T8mbhcami7FHzBrQ0XvTJq9qa39EgNVRD/knKQ9JenSv72bph?=
 =?us-ascii?Q?CdTN26XvC23s7ZE/dNoODrSDL8KvEYNtf5hN5WaOftnV7XNV+SVE7dR+9Uu6?=
 =?us-ascii?Q?p2QNEcTRuYjP3OQcHbz8D/+A6MjSSXzWxMyxPUpXA7fYONI4hEFuaN8GEPnw?=
 =?us-ascii?Q?NJWnyPJi48IVudu+WrpDceqfS3CRA88V1sv05+r7Gsp31qAG/YwTIr95YBZJ?=
 =?us-ascii?Q?P+GSRgK7fzWAU5L0neKke1o1qTXFfUg0cUk6RY0VY1McHJSHSR6yxczSbtm5?=
 =?us-ascii?Q?OshBlM9RORoaVSvZr4f6U0cShlN2nvQmRB4M0QbwgUdZrQUnVfLjeF2JxE6T?=
 =?us-ascii?Q?QhTRzGrt6aLiyBabcwP6T4xBftXMQ8HQReskTwSsGC9C989qUb5x0KMditQ3?=
 =?us-ascii?Q?GzgERWM2avFyyVforCGZOU+vn/8ux/W6+z7fGMVCDz012d322JJnBaKKNTA8?=
 =?us-ascii?Q?83siTPkpj5lbbfphWSbVHKOibwB5S5QNkXA2JN/9Odt2DPzDVQCyxe3Rn/JO?=
 =?us-ascii?Q?fPYIldaD1g9CBbUiu+/KUduJiWEI1pr9VYP1ZtTmC3KTKmr60boFe6o5Ae7A?=
 =?us-ascii?Q?2zLf60bAUTO3WTMc1P2Yed9w/eGH7T25lnoH7BNpEVZzdDMe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: E749QwD9i3l53LUz0qq5IDPsMy56/R1sFQogMMA96X5OT213mJV3Se/kD5l2IrTROeIbFxw8poraeMFvBgR1wx9R4/IE8DTToaQmXTLTTVXW0+sBzGHhhzqOrrOo7O/aMB4yl7OWetFGKwnH7SvfHGahcSxbAaUpzMqONCtjsoDtNbDMlT/kCd/vaCZSlIc7Zmwcq9iLAPIWinit9oQyrJzkt1ZQ1R1xsSIQssBU+SUWzU8NTnDmI+YZ+/o5MWjx/+y9139sQ1r4OCCjAB7KCYHsK6HH2OW1dn+j2pkMvVdavgaGAgMHout3dOfaC9XDLwXAPH0la0uwK/zmfTXS0w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 047d2a62-3d65-4fee-456f-08dedd21b03a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 18:49:49.2591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GyO6qrm3qtMiy3eUgxBw520MUElCMH4jFngK5OzYH+mL7Nvrccbx0CC8d+h6ouNCmjlAQJmzASH6ZuhDChvqWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_MULTI_FAIL(0.00)[intel.com:server fail,lists.freedesktop.org:server fail,gabe.freedesktop.org:server fail,DM4PR11MB6360.namprd11.prod.outlook.com:server fail];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCCED729B4B



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ch=
aitanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [v3 05/14] drm/i915/display: Track CSC mode in intel plane state
>=20
> Add CSC mode to hw plane state to enable programming the fixed-function C=
SC
> block for SDR planes based on the DRM_COLOROP_FIXED_MATRIX state.
>=20
> Track the bypass state explicitly as a boolean since bypass is managed
> separately from the FIXED_MATRIX enum value in the colorop framework.
>=20

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_plane.c         | 12 ++++++++++--
>  2 files changed, 12 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6cd102a3b610..1b5a3c84a7f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -681,6 +681,8 @@ struct intel_plane_state {
>  		enum drm_color_range color_range;
>  		enum drm_scaling_filter scaling_filter;
>  		struct drm_property_blob *ctm, *degamma_lut, *gamma_lut,
> *lut_3d;
> +		enum drm_colorop_fixed_matrix_type csc_ff_type; /* For SDR
> plane */
> +		bool csc_ff_enable;
>  	} hw;
>=20
>  	struct i915_vma *ggtt_vma;
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c
> b/drivers/gpu/drm/i915/display/intel_plane.c
> index 3eaf82477f49..78ee3c357d8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -430,11 +430,19 @@ intel_plane_color_copy_uapi_to_hw_state(struct
> intel_atomic_state *state,
>  	while (iter_colorop) {
>  		for_each_new_colorop_in_state(&state->base, colorop,
> new_colorop_state, i) {
>  			if (new_colorop_state->colorop =3D=3D iter_colorop) {
> -				blob =3D new_colorop_state->bypass ? NULL :
> new_colorop_state->data;
>  				intel_colorop =3D to_intel_colorop(colorop);
> -				changed |=3D
> intel_plane_colorop_replace_blob(plane_state,
> +				if (intel_colorop->id =3D=3D
> INTEL_PLANE_CB_CSC_FF) {
> +					plane_state->hw.csc_ff_enable =3D
> +						!new_colorop_state->bypass;
> +					plane_state->hw.csc_ff_type =3D
> +						new_colorop_state-
> >fixed_matrix_type;
> +				} else {
> +					blob =3D new_colorop_state->bypass ?
> +						NULL : new_colorop_state->data;
> +					changed |=3D
> intel_plane_colorop_replace_blob(plane_state,
>=20
> intel_colorop,
>  									    blob);
> +				}
>  			}
>  		}
>  		iter_colorop =3D iter_colorop->next;
> --
> 2.25.1

