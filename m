Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAmBNbZupWlXAgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 12:04:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F171D7254
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 12:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFAE10E257;
	Mon,  2 Mar 2026 11:04:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D1eQlkec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4CF10E257;
 Mon,  2 Mar 2026 11:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772449458; x=1803985458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c1gBYWMPsW4rdOFNk4oenuu37sL2LITrvja0uZzS/X8=;
 b=D1eQlkecVxmgwbVrQZ10d2XqXcs23mEqaU+HfWq01dPz8cJuIsqJpU9a
 5pGkt/uGTaPQ4DbXxJC89Yd+oFOgMENHzY3laYo/8YBQ3HisDdkPxduxr
 /k7XrHBISXAJD6da+Dp8P3wcUKt6nYOHQXApRT0rM6xt/PwS+UhHSUStc
 HRMPAQnBunIHfF07eU9FkM5Hw+8hlKYywlRe0ZL9hRdCAZ8b0pToJJpOC
 afJl9lKhvGtmia7nw5ND8V+LBybgL0kXvvyJkvyklu7W4guwnqE3M4ZT/
 GVu4+oYOZD0uggUqyyFltOV0lXJtW0A3eguvglvz03BQ6gaegd28wJZuO A==;
X-CSE-ConnectionGUID: +R2+P0v3SZqsKOf9uiGHoQ==
X-CSE-MsgGUID: iEurXAXYTB+VssJ060CuoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="73321650"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="73321650"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 03:04:17 -0800
X-CSE-ConnectionGUID: J/OGwP3VS56kuIbL/BzBVg==
X-CSE-MsgGUID: AD2ZK1dMQQuc8ntXO6bLbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="216847604"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 03:04:17 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 03:04:16 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 03:04:16 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 03:04:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tlrAw1n4sY0SfCDUbpYpKifyla8j8pYxBO59A6uUrkLIr78bFQZ7PAaWBDIuuNCYUGyvRQoyNJmmMh2UslBeKMhZ0kudnEBaRfhkPDv3p96i1dHXdlajnQbGwwLSe74e4UXJbGVn+HES2+Mdw3NkFOfT0TTWtVywQZSaJuNx6aGEbv863eo51svdZDZAsGhkBvamTmqz3sjqktMiR4mp4lmvqrF0ReYOW+SUD8VgeviHED4lGAa0QrnMHFFKpwa6k/wgzuXfagLXzpAaa12OoccYyMHWJiVmC8HG3UMYfG9M+2K5aY/DY3Na/z+53KJm666bzE9hWNN/3G6d40/t9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eYMp0HXu/i2pNtWOg8PCkVqrBymyQdLvA1z8gXMmqXM=;
 b=ucSPYTK3jPAVNHFcUWRdNZrck0176k2aNz7i54rWYgyFiTxI4BLm/8jySu8s8IQHM2j1Crd0SVPXONl2bCQv0p6ajgjXEu9jefZj9a435EDjKVC0ZnMbhZcnlTVeWIikD9qsR9CqMRqL0EJgKFBs9xF9rBmJuPQtUt3HginPLAgwa0L63kNdlR0H0dZuKpfVHpfkRgM+FthdSqKCP45ioggjgBW+zLMDOWuxTpQxJi8maGPMz8+KQzs4qSYuwmkEer5vKbsdYL9uvouqsbUMfwyXsEh1/Q5YnhaTgBupuWcwJWdI5XgvGd2R5y6SBc+OkKBz2Ymphd9vsJnv/Qk5ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA4PR11MB9394.namprd11.prod.outlook.com
 (2603:10b6:208:563::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Mon, 2 Mar
 2026 11:04:11 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%8]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 11:04:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness for
 VESA AUX backlight init
Thread-Topic: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness
 for VESA AUX backlight init
Thread-Index: AQHcpUAMEnCYLJATwkydhRK/TgGzdbWRyHcAgAD89jCACEG9gIAABICggAAIbYCAAAe4MA==
Date: Mon, 2 Mar 2026 11:04:11 +0000
Message-ID: <DM3PPF208195D8D8B2C13C0E7E9385ED0FCE37EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
 <20260224034526.2730130-2-suraj.kandpal@intel.com>
 <1a76dfe14cbc90b4aaec6f0e54b4e8df9f480efa@intel.com>
 <DM3PPF208195D8DACF643E4D0D138F0128CE375A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <9f9be7c4361428b7ccb77dcc04f93b0eda024c8b@intel.com>
 <DM3PPF208195D8DBB70E17DC6764BC5A276E37EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <676746dc5a9fe839e3ed071dee1c8e89174ce0ea@intel.com>
In-Reply-To: <676746dc5a9fe839e3ed071dee1c8e89174ce0ea@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA4PR11MB9394:EE_
x-ms-office365-filtering-correlation-id: f3c81dc1-fef8-4225-04b0-08de784b6f32
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: VtEOiDywB8LfopYlMzdnVdSKFI3rhFEsrPOX9EKUuW1ToelXw9UGzs/xtR5aG9P1uywf1Dyqqq+bbG1jbLM/OAMBTEyqhViqzRx38bXClZ9ORkLWY7XygA19WHdj3hZNIfn0TEQPzHKCY+U0Php4DUr+QAQgaCofSdEN+d+QqCD2g7yvBGKZ7AIE0yuEL0sUMcMDu4aIV+1rpNTCnZEDuCQF2tElDuaGOcZuV8Zl+rheIpcwbMy8Bl/cMxCdhHx5EK+dClJ9mEcEAomWjSbJIRIoPYDQMzCKj6sNITENK9k/r7ZBmK7BQioiNzrD//fiHe+CrAo7YSZ1MS/rTz69QfsBkvPDlTiRn/TnKdeB/vIftvpHdTyI7lVDsC1rr3ZaSY1AYCx7lC2uIA3Y+mrJV5tsXeXv+T80J3E3NLqaCS9EdvZr1hHA/rMK076ShxkbEXwxyP2lc4gDRejpizrL2y9cKeFfY0jwBIRX75HeGE6RDBTd+xjMBcmD91+bJfzd0e3jiu/YMvhJNJhH3WeCWXUiSb6OCvk0eD9Xh8OHXqBQXvbeViPM4y+W8jHrKgyNMUgRSaQVt5xnTog3tktl/CrHgI8/bQVbxpOIaxTSv0CUOGp8WQQdtvp4UtDPZiCLQxVT4TO1KKuA+4eYschayx7wmkcwYk+eSlbTWpH+AJn2wfm0wa/IkBab1n60jZKZs0C5UxN2dmjZp4FG2WTrjgJ/cHWbsnsJYxIwIdapD6s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?otyzuKTHH2bI99YPHdBMZFv8HofRCpYJsx3JOgXZGlh+awd+RnO5pcxHsyBu?=
 =?us-ascii?Q?x8+SSSw0DdmTRtzrcka46b+HfD4/MuX7UqJtIWgBQUEyNwPU7djbwlcvR2a/?=
 =?us-ascii?Q?aEHBbNMvA/Sfg8EOQfw933CB7vNKTTEENNK+GKC9sNKyASkEqa4Ypq/ktjSU?=
 =?us-ascii?Q?VI5PMAPQ3DIHr77KruJq0MWyGrhCCcs5HeLktrPLE85zuZKKu/rUGyiXhl6D?=
 =?us-ascii?Q?tKBaXxgybsrTRsi5E24WOY15XeTlVuxOgkhRITXwd78iG/u1PmrusEalQMc3?=
 =?us-ascii?Q?gEnjccFkEsJ2pRvvdTdZV84/6tGVFILTIfWX5a8JL414u9Yscnf8BnsVH4Oa?=
 =?us-ascii?Q?2R440rkXdEoQUY8GfDEmNkItKK0AlsGa9DRUroW2XgfkDT4Yr76mF6RASu+I?=
 =?us-ascii?Q?vuvdtjKW3WLkqRFU6+N4Cu+tn/UPkaVQutK+WZG3encZhS5UnVFZb1ipoyJS?=
 =?us-ascii?Q?P3M+d9oo3NBtKs/XrilSHht+neSp71xbeqh0VAo9sc27RcjnZrG8BcbQ+mLY?=
 =?us-ascii?Q?SP4xhNzmRrwFeLfMz2QfXJJ/ySMWZoPi5gpfz9hU70qMJJ8SVykckurwbc7A?=
 =?us-ascii?Q?ELLnsQvVKIRUtNUKEpOo5Yd4LgYMRr2RoOy58J2zLxbnqL3ePv0EsaiVKljQ?=
 =?us-ascii?Q?PRP9WzKoVOCzeAAyu8+73aCdLXLQc3BbbdErv59Nz/5mGoZc2IKgBOZATall?=
 =?us-ascii?Q?zNYPC6LVUQx417euJq3sMdazMUtaO8XXkfoxMJMIkSpJ6CPvdUmKxV4qcAwI?=
 =?us-ascii?Q?roh6/3YYNahO75Ug+vyY5TQMq065UkC9Y/DI6lAdRihgZvnbG4Qx87Gza0lf?=
 =?us-ascii?Q?B3CoP0ayQ8J5zlogDE9mUHUBJg0WMqmrBnUvT/y7YNp0AiyeiuQS6wH6isNk?=
 =?us-ascii?Q?c9wnQBEtzD6BL63MNA7aBt4kXbszg5Ptnt5xTeUi354EGbOU1jwvMJI0xFGO?=
 =?us-ascii?Q?XEhB5TYpzhd255g6gIc9f9oHCCWyr7Txken1zI/Nzek1zR6KHbnSiRv4soSK?=
 =?us-ascii?Q?qLIFkJvHFFXOHtCf8ACFHoPWdEbYEzufNxNA5yN1HCgkdIr+N1avl85cSiy6?=
 =?us-ascii?Q?1ZcndJgWLkN1zNf92zFP4IbFbK/BpEsb5vn6yqN7u/9BBkPBkKHE8YhZuuVq?=
 =?us-ascii?Q?v2kb4x4Nbzy2645nuxywjbeZ5Ea41BnqLMQQBSo36d8eRnALDaqD6d0sgyOO?=
 =?us-ascii?Q?RJ5z4RNwZjmP8G6OUg1MDyUVoxefxy1dMyDfZ4YoFr2sitO1ns7lRYM541Pl?=
 =?us-ascii?Q?1imbOFbMmJw1OwQw/0ZtX06jPmD0vpVieDUW7UZ1qZum5Xmw++zLYQDA08OM?=
 =?us-ascii?Q?Gjl/GeI8r7Bl7SV/mITZ0+7FeWzf1XWdswZmo5znkNrDISEB/iAjYukqLegj?=
 =?us-ascii?Q?QpYkmkPPDreRbftYvfXcN0lGUyHStJjHwtrmaDcQdJkq+vJIT5euEGRDqnTI?=
 =?us-ascii?Q?g1SOGHg3OdXZXyGo+v5M8PGkj53HGaZHfHAadcxIVH9FsoYjzaMtfS7nBX4O?=
 =?us-ascii?Q?Trfui/9qaakdIvzfBNyLw1zLlOuecdMjFobF+hKMwtO1fI4gLNnLrsAFRmNg?=
 =?us-ascii?Q?bJjlRg+BjLCI0F2ELKFnuuuvQVQtp7khGF2ppv9y7D02MX0Vsqp4gJApHLpT?=
 =?us-ascii?Q?Uww1eElggAyl9TTVeR2si52hLiMCtCXypLgO7IujU8x95X4f5Sqa2pIQJEWz?=
 =?us-ascii?Q?t1ZMOD1mZVMurOl6kI4IIqYIFZCkEcxn6dSiFjQ5eTUUaf+xMBWShS4ZkZMe?=
 =?us-ascii?Q?cbPR57ykAA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3c81dc1-fef8-4225-04b0-08de784b6f32
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 11:04:11.6538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mxvFbVTS7DIIKiGfCB/WUhZcPpRYzE0qgOMXDnipAB+uDkW3EICRW5OHeWmaU/O7v8gi/hr6DDKH/zlrGRQuxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9394
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
X-Rspamd-Server: lfdr
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 30F171D7254
X-Rspamd-Action: no action

> Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightnes=
s for
> VESA AUX backlight init
>=20
> On Mon, 02 Mar 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max
> >> brightness for VESA AUX backlight init
> >>
> >> On Wed, 25 Feb 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> >> Subject: Re: [PATCH v3 1/8] drm/i915/backlight: Use default/max
> >> >> brightness for VESA AUX backlight init
> >> >>
> >> >> On Tue, 24 Feb 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> >> > If the brightness fetched from VBT/previous state is 0 on
> >> >> > backlight initialization, then set the brightness to a default/ma=
x value.
> >> >> > Whenever the minimum brightness is reported as 0 there are
> >> >> > chances we end up with blank screen. This confuses the user into
> >> >> > thinking the display is acting weird. This occurs in eDP 1.5
> >> >> > when we are using PANEL_LUMINANCE_OVERRIDE mode to mainpulate
> >> >> > brightness via luminance values.
> >> >> >
> >> >> > Closes:
> >> >> > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
> >> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> >> > Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> >> > ---
> >> >> > v1 -> v2:
> >> >> > - Let users set brightness to 0, make it so that it's just not
> >> >> > done by default (Arun)
> >> >> >
> >> >> > v2 -> v3:
> >> >> > -Update commit header and message (Arun)
> >> >> >
> >> >> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++++
> >> >> >  1 file changed, 4 insertions(+)
> >> >> >
> >> >> > diff --git
> >> >> > a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> >> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> >> > index eb05ef4bd9f6..c40ce310ad97 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> >> > @@ -564,6 +564,8 @@ static int
> >> >> > intel_dp_aux_vesa_setup_backlight(struct
> >> >> intel_connector *connector,
> >> >> >  		}
> >> >> >  		panel->backlight.level =3D
> >> >> intel_dp_aux_vesa_get_backlight(connector, 0);
> >> >> >  		panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> >> >> > +		if (!panel->backlight.level)
> >> >> > +			panel->backlight.level =3D panel->backlight.max;
> >> >>
> >> >> How does this help when .enabled is still based on level !=3D 0 abo=
ve?
> >> >>
> >> >
> >> > Well we keep the backlight.enabled as false if we read a 0 back
> >> > from the DPCD
> >> or the current level state is 0.
> >> > This is to maintain the policy that if during setup we get 0 as
> >> > backlight value eDP backlight is currently disabled (which means
> >> > __intel_backlight_enable needs be called). We then change the
> >> > current level to max so that when backlight enable is called after
> >> > setup from
> >> intel_backlight_update, we enable backlight with max level so that we
> >> do not end up with a blank screen. This is also where we set
> backlight.enabled =3D true.
> >> > This is  to tackle different eDP behavior where, some preserve the
> >> > last brightness value programmed in them (in that case users want
> >> > the same brightness to continue) while others don't and just 0 it
> >> > out instead of
> >> having some default value (in that case we keep backlight.enabled =3D
> >> false later to be made true during the __intel_backlight_enable call).
> >> > We face these scenarios in some compositors during the pass key
> >> > phase where the compositor is still totally not doing everything
> >> > and does not send
> >> us any explicit brightness value to set thinking eDP would have some
> >> basic default value of it's own . We end up getting a 0 from DPCD and
> >> we enable and set the backlight enable with 0 value which anyways
> >> later causes us to call backlight disable.
> >> > In this case during authentication in some compositors like Fedora
> >> > there are cases where we do not get a explicitly backlight value
> >> > till the user
> >> has to blindly enter their Passkey, after which the compositor sends
> >> us some sane value which we then program.
> >>
> >> There's a long history of problems with the PWM backlight
> >> unexpectedly going from 0 to max.
> >
> > Right but at least with this now luminance values will continue if
> > DPCD maintains its state if we get a value back, otherwise we set a Def=
ault
> value.
>=20
> What's the brightness control mode *before* we enable luminance control?
>=20
> When taking over, we should try to read the current brightness setting wi=
th the
> current brightness control method. If we're switching to luminance contro=
l, the
> existing luminance value is meaningless.
>=20
> AFAICT drm_edp_backlight_probe_state() uses bl->luminance_set to determin=
e
> the value to read, not the current mode. At a glance, seems wrong to me.

Luminance mode is the current mode. Which we determine that by checking dif=
ferent capabilities from the and setting them
In this case aux_set and aux_enable to represent them.

[    1.667694] i915 0000:00:02.0: [drm:drm_edp_backlight_init [drm_display_=
helper]] AUX A/DDI A/PHY A: Found backlight: aux_set=3D1 aux_enable=3D0 mod=
e=3D0
[    1.667703] i915 0000:00:02.0: [drm:drm_edp_backlight_init [drm_display_=
helper]] AUX A/DDI A/PHY A: Backlight caps: level=3D496/496 pwm_freq_pre_di=
vider=3D0 lsb_reg_used=3D1

In this case aux_set =3D 1 and luminance_set =3D 1 which means we are in lu=
minance mode

>=20
> Of course, regressions have priority, so a revert should also be a consid=
eration
> before quickly going for adding level =3D max in there.
>=20

From what I can see
We are in Luminance Mode to begin with. From logs there is a level mentione=
d in VBT should we use that ?

[    1.665632] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Panel =
type (VBT): 255
[    1.665770] i915 0000:00:02.0: [drm:pnpid_get_panel_type [i915]] EDID ma=
nufacturer name: SDC, product code: 16899, serial number: 0, year of manufa=
cture: 2024
[    1.665890] i915 0000:00:02.0: [drm:pnpid_get_panel_type [i915]] EDID ra=
w product id: 4c 83 03 42 00 00 00 00 00 22
[    1.666006] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Panel =
type (fallback): 0
[    1.666124] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Select=
ed panel type (fallback): 0
[    1.666235] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] DRRS s=
upported mode is seamless
[    1.666346] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Found =
panel mode in BIOS VBT legacy lfp table: "640x480": 63 25180 640 648 744 78=
4 480 482 484 509 0x8 0xa
[    1.666454] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Panel =
manufacturer name: @H@, product code: 0, serial number: 0, year of manufact=
ure: 1990
[    1.666560] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Panel =
name: LFP_PanelName
[    1.666665] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Seamle=
ss DRRS min refresh rate: 0 Hz
[    1.666757] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] VBT ba=
cklight PWM modulation frequency 200 Hz, active high, min brightness 0, lev=
el 255, controller 0
[    1.666847] i915 0000:00:02.0: [drm:intel_panel_add_edid_fixed_modes [i9=
15]] [CONNECTOR:502:eDP-1] using preferred EDID fixed mode: "2880x1800": 60=
 709633 2880 2888 2920 3080 1800 3800 3816 3840 0x48 0xa
[    1.666931] i915 0000:00:02.0: [drm:intel_panel_add_edid_fixed_modes [i9=
15]] [CONNECTOR:502:eDP-1] using alternate EDID fixed mode: "2880x1800": 12=
0 709633 2880 2888 2920 3080 1800 1880 1896 1920 0x40 0xa
[    1.667117] mmc0: SDHCI controller on PCI [0000:58:00.0] using ADMA
[    1.667206] i915 0000:00:02.0: [drm:drm_dp_dpcd_read [drm_display_helper=
]] AUX A/DDI A/PHY A: 0x007a4 AUX -> (ret=3D  1) 00
[    1.667223] i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i=
915]] [CONNECTOR:502:eDP-1] AUX Luminance Based Backlight Control Supported=
!
[    1.667335] i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i=
915]] [CONNECTOR:502:eDP-1] Using VESA eDP backlight controls
[    1.667413] i915 0000:00:02.0: [drm:intel_panel_init [i915]] [CONNECTOR:=
502:eDP-1] DRRS type: none

VBT here says use level 255 would it be okay if we set that to level as VBT=
 level, if no value is returned from DPCD panel.

Regards,
Suraj Kandpal

> > Can we proceed with getting this merged ? Would really help the user.
>=20
> The real problem with quick fixes to help the user is that they have the
> potential to make it a lot harder for a lot more users and developers in =
the long
> run.
>=20
>=20
> BR,
> Jani.
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> >>
> >> BR,
> >> Jani.
> >>
> >> >
> >> > Regards,
> >> > Suraj Kandpal
> >> >
> >> >> >  		drm_dbg_kms(display->drm,
> >> >> >  			    "[CONNECTOR:%d:%s] AUX VESA Nits
> backlight level
> >> >> is controlled through DPCD\n",
> >> >> >  			    connector->base.base.id, connector-
> >base.name);
> >> >> @@ -573,6
> >> >> > +575,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct
> >> >> intel_connector *connector,
> >> >> >  		if (current_mode =3D=3D
> >> >> DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
> >> >> >  			panel->backlight.level =3D current_level;
> >> >> >  			panel->backlight.enabled =3D panel-
> >backlight.level !=3D 0;
> >> >> > +			if (!panel->backlight.level)
> >> >> > +				panel->backlight.level =3D panel-
> >backlight.max;
> >> >>
> >> >> Ditto.
> >> >>
> >> >> >  		} else {
> >> >> >  			panel->backlight.level =3D panel->backlight.max;
> >> >> >  			panel->backlight.enabled =3D false;
> >> >>
> >> >> --
> >> >> Jani Nikula, Intel
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
