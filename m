Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPusB7so+Gk4rAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 07:03:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC4F4B86AE
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 07:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5627410E183;
	Mon,  4 May 2026 05:03:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PMtMurS4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B68A10E183;
 Mon,  4 May 2026 05:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777871029; x=1809407029;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rqUUzCJ8xmYYmfdo47mT2O34v9DStm/IjRRaCQ2geUU=;
 b=PMtMurS4ApjIPyub1Rg7DgeJe3BbkPKickDHu9+NtYLfsDIdPaGw49lC
 3GnLg3Oe/LXJp/DX85oAHG8Eehh2miF2RripgAb/2mYCKcKZt2tGZUPpo
 SJutjrvEE64XYe+OqB/8pxDKA47EPcsUcbzy0m6PiFwui1yg9NFzvHjph
 XTZOsFycgPBxPrKiW6GgOsXMXJaxc7+2NX+KhmbbkUKF27KtuaGuUarBz
 sJtTgMv+h98+xJX6xgqPmNqFGauz8Sz1ivF8fdxEYNNOFEEshvDLd8vGd
 x4nVgWwhUDSinByIHpKqO0e7lk2K/cftzapx8+uJk+LF+LUmi6joVKnQB Q==;
X-CSE-ConnectionGUID: ocVIUpGUSiafLWOq3v+Urg==
X-CSE-MsgGUID: ONoKCJvVSa6gBIXUQb29vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="89312058"
X-IronPort-AV: E=Sophos;i="6.23,214,1770624000"; d="scan'208";a="89312058"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 22:03:49 -0700
X-CSE-ConnectionGUID: rSaIZPdIQmSO2N5H2XUejA==
X-CSE-MsgGUID: cgQFDS6eTsqW0gTDjmkcdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,214,1770624000"; d="scan'208";a="240399821"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 22:03:49 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 22:03:48 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 3 May 2026 22:03:48 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.19)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 22:03:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B5nTG6dAxN2yyS2D/3nVg0jEyu8pCT6swKQqBGWh035hNzpoI7qS97ZSoCsG6wH3BQj8dVBvMFEIQXNTuwngxVW0T57tFVm+q77BF9XK9En5BG8POYj6Ywc4IzAlejkbdktNE2DNiR5ECjoYDt+FO4GjR4iOJwGkZV1Je3gAbfdvNCpTTW152fMq1mDNs1ry1IPd7xXtpTIT6mkqCIycJREFQPi6dMC6XAmi9Kk9iiU6K0kl167tEhTg72lmcqbhKdZMFi9G0m/F2XcVLWewu0a7HRKqZZAKikjI00yQStkw+yETluFLbsWS+9EVE5EpEbC5vq7J5ZH4viNpQb7zMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=og0uohmbInhB5G2EfP8jD71upix1EtrZfNGIYleUgYo=;
 b=IRfgHNBW7HuW0WWirPNrh8xniLUZjCnFFDnLkadKDKar9Yt7teK293jnxthfxCXH0ArdHv7Ld3uK/Zf6CVxx7WNL3RcA+BT5CzLc6+QL7TSgof2p4mHTBTdc1XUmvihyCT0mkAPf9C30vWQjVHebIjpfl2QHFeA4CKs3zAzTTfqKXKacPn6UhaZPObvm2qOdtPwxOQWxEnf9tH7nMhYR1zj9bq40pOG7xr67KbZsQbnjn7O9oRFAnM4IT9d156WBk9hWVL2N0c0KxacgkcosOs0DT/Oj5b598AX/wBvexdafk+RuZ8OTBI4VUHGkaRoSr5UYSz4/oNbajjxPLk6tQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS7PR11MB7833.namprd11.prod.outlook.com
 (2603:10b6:8:ea::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 05:03:41 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 05:03:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Samala, Pranay" <pranay.samala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>
Subject: RE: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
 crtc_enable
Thread-Topic: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
 crtc_enable
Thread-Index: AQHc15B05fYkkHl60EmvptYN9ytAabX2R5aAgACez7CABlLqAIAAHiIQ
Date: Mon, 4 May 2026 05:03:41 +0000
Message-ID: <DM3PPF208195D8DEC99CEFB42B9B72839F5E3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260429042650.3335718-1-suraj.kandpal@intel.com>
 <BL1PR11MB6050830351318309AFDA45C8E7342@BL1PR11MB6050.namprd11.prod.outlook.com>
 <DM3PPF208195D8DB762EE71AC17C0C12B42E3352@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <PH7PR11MB605327187BA6A7B90F219221E7312@PH7PR11MB6053.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB605327187BA6A7B90F219221E7312@PH7PR11MB6053.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS7PR11MB7833:EE_
x-ms-office365-filtering-correlation-id: a75877ff-1f6b-424c-be97-08dea99a826e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: 6WeRpApSNS2X23RMzm2owPhq74Vkx9d8hbclcK2tJUwk8+6agmsPBDZhCFoNa16Ep6/zvtld+uSJ43qTzpmUWOrLmQCPUvk9QzoNrl0s9k2stphn/4d2jFvSCWw/HGGRJsfKovLkbndDjkE0oe60zF7neKnNNQkat9JLLe6HwVywShqvfoG2AKm4FzenA5NVU8SDavqk8sD94C+ijBy6Q4yvOP/OxhMVYylPSXQ8osKqdumfxw71IevpXKWBa/1AzDevOMXj1WotqI0mBtFVQgKUSmOlpl9adNzyYdnGEKU9Qfp33POGHJNTG/0tKu3QQEvzZlJ13QI+K159bdsqJSbJc/qWAIvG0AGJa5J4y8YB3G9DnW1nhav6Yhu9aYbtka+5oSK0+l8AmdqP9uxZ68naA9YqllSqKl7AFyQahod0ux9+humeh2RfkIHUb2e1Roamu98ds0czbKbb0UXCpEsnS58BYKnXQRKFOTvoXtc7/vXVvAyo70cxWDVFW6aJOz/FsSz4TLSI/dliKmIrFuMwfaSbnkGCt6fmduVEPgzqSo1pKinZXk6tPVceg7zhnohV5OZtOKwzQkn4u8YMJi9auWg+QNXjXcFMGCpv3ZHafh0UB6CYepI78/xKSfnan0ucWs9mqXVWaVGzrDNDOvuC9Aipm+Y0G0S8cSZHud8EytXknFK4VoYZgfkNRgTj59so63Cfldv+NtmIsk1TisAW1Ow349DehtGJ5NXAFJ1R7jqJo6lYoGx4YAxiXn7n
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rn8KNCZF2a4lfohiInslpPgqmDfOtIKhTLKPL/lg4xYeAJK6gKKP+WSWoSSl?=
 =?us-ascii?Q?3XWF7pRvNAKPJMiCwlesly1USMxD5xHcpHsYT0bf5HGBXVxTBGnedQAgWpXT?=
 =?us-ascii?Q?YJn+zz2oTHchVVRB8Oouarua7gvUZ4DBRXCe8EHMHOdrnQBGm+V5lzB9Lf/L?=
 =?us-ascii?Q?NE7Nu9wjXV8TVWQlLF1vyxP5ihsqYF16TxITqtzXCZWrBqKg/dCrj2n6I0Oz?=
 =?us-ascii?Q?3jhnlQ+dlGmXeG+DQL5xqgfcHwcCQjgGx8sr+xrXxo5HD/45d7qvNGmEyy0X?=
 =?us-ascii?Q?n2Rh2sCCx5NY92yvBj+GR7R6I5V66SCNCNnF4WQH20UgHgLJukC8LqekUtnL?=
 =?us-ascii?Q?zIXvFghQcRtYpRy+0nre2y+EdRi654ichbXZDaudN42qY+lT710UYVO5tIp6?=
 =?us-ascii?Q?4L018qjXc8oHb3pBQC4HKdO0BkXaNNJ/x0a3/3mp7rINr0AQUponZyetTeKM?=
 =?us-ascii?Q?M2oWLNeSvI3MFwp/mphV+r3z1Yuchc5Nj+U5V/x/VRPD8BSsAWrKgdTndRYX?=
 =?us-ascii?Q?Q3yXyF4NUzFARB6hsoOt0KjaGXfg9JPunijbxNh77vq9tlodNrlwdx1Z56Ah?=
 =?us-ascii?Q?64PAWDu7GyqTEUzlFgeJTdXVHxIVNqhADyEsYSrxBqq9tgt7fOCiN3bFaGsY?=
 =?us-ascii?Q?P/WYXrzbAMqkCIM9Xx6pOc5I+NJQIrH0GUXveTF7Tr65grcJn9xFuvbWCBIZ?=
 =?us-ascii?Q?TN3RAyX5bHSrliUZKGC3O7J/3SahpEwF58n3KfOxalBjqHYzMGm6es6RtCPv?=
 =?us-ascii?Q?WIJSw1PtQ4P+EYqnyUOca1mEVR8Y0RAyOYScYHjdM4quUST5YGauN4+JM5t+?=
 =?us-ascii?Q?bymczbvHaMJpGctmwuOS/qyh4On5tqgE9gD4O2DXNs4Gl/wUdSgqrt2CK/8z?=
 =?us-ascii?Q?P5gwzm5YwWf3Os6SP0ssjZwcxvD8DdqHkuVVXXLu4yYWdp0UsmuzTXwKK0lX?=
 =?us-ascii?Q?1W5bV4NVCtt6PJHUVnWmVHAGtpfqrWs7drUWD5F2lv9TjqR7uW39mG8ruBCp?=
 =?us-ascii?Q?mVBGgx/vI64zcEuYkgJcGHpMNRxztTBpTvbut+giSoIldTPUniMrWFMrFkjw?=
 =?us-ascii?Q?85RcHBVSzd7Gfp4Nr895vreQ4KWUKAtEvg6HVKLxQuYON8/79bzQc47aNs/J?=
 =?us-ascii?Q?H8eJFHTjiyl+pXS/4y/iZiLHYBPRwAEN0GPh+KAHwHsqIX4Ld8xkH1tRfxnC?=
 =?us-ascii?Q?roe8UTvIy6cWN+w61svVgKkef8FiONHOHYUXiTWH4ab6e8VfnBGS2klMfYDA?=
 =?us-ascii?Q?VCV32Mr8ikYKoNPX7QZq7/RPF8ps0+mNf1x3YhwIPQKRc9mJwZX9WhkMYLII?=
 =?us-ascii?Q?7yMdT3s9+zdxL8KD7StASGGFuXOnGkFb60353HbZ5KIbysqIPdb7qtGO4Ffe?=
 =?us-ascii?Q?9bCKOWj7r574Fg73s+wyyVW9+n4ue1B42XFt8avFBNO8S001BifMA3ZuzVV4?=
 =?us-ascii?Q?icnovGgBkD5wxixuBqfKLPXJKAVjng0dRZZ5x18SzRxaUY27qQz4Du8ofkDb?=
 =?us-ascii?Q?NTVZPJPZPClVlO9c0tKIGG+cTRrzMatEkXtmxbBzt9fFFxkpaw4EG0+TbX7A?=
 =?us-ascii?Q?Y1z1DNJ/GaGT58YjyZz4QmhLykblpv3f4g0JFZwa8emHj6kI3blnSc7rVFbt?=
 =?us-ascii?Q?7OONNx1ii9udb2PxsMzgtgK/Bd317hKJiVmhJWrE4oWddwqDr83fxyE7Oht4?=
 =?us-ascii?Q?zctRlE6pBtQYMwRmas0LRsOMJ1Q9VFmSZDhx+dlsPAjRGbobvdGOKNgtWBjX?=
 =?us-ascii?Q?+f2w05FZVg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VM2zpZb7mRSOAOJiBSp1+C6Ckt8HdxoMi/PYFryen1AtQWF73AN71qSaLbVcyFvyG/zpsbtsX2EKrnLkmxiFr7YG/qiz6IjAe0PdXt431+akGbxmLWDI28be9vkvurIQ+j9yk+vtCukRnyBZESLSlGpmThQvKZXrSXz+gZ9VOjxqgN8FyqPdPZ1hk5tkAckUt+oK2fgO/uuk736nzNqZabIqBk4lPPgZH00DE9H14dFvbAbgPztqMEkyjr3GBsKHBezo6kXmrYWoJQFk6/+alAsOLdJoicsT+AEUBNh6G9z2K8EFGchdK1QESte3ogIOmTg1qTqNiWQxj3SzZ6OJUw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a75877ff-1f6b-424c-be97-08dea99a826e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 05:03:41.1489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hcf2f0UYDN8sSAmXFerklJRjjbYzCpdcSHDIaYPAlQBP1eJYOJajzJQbWXHj26tHjUntwVB2M4Huywy9UYBw6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7833
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
X-Rspamd-Queue-Id: 7DC4F4B86AE
X-Rspamd-Action: no action
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
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sprite-rotation-180:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

> > > >
> > > > When a CRTC is moved to a different transcoder (e.g. on DP-MST
> > > > stream allocation), PIPE_SCANLINE and PIPE_FRMCNT can return
> > > > values latched from the previous transcoder/mode for up to one
> > > > vblank period after the new pipe is enabled. The vblank evasion
> > > > code in
> > > > intel_pipe_update_start()/end() then samples a stale or boundary
> > > > scanline and the frame counter ticks during the critical section,
> > > > producing diagnostic errors of the form:
> > >
> > > The stale PIPE_SCANLINE issue happens only when the transcoder
> > > changes, but the vblank wait is added for every crtc_enable. Since
> > > intel_enable_crtc() already has access to the old and new states,
> > > can we add the wait only when the transcoder changes? This would
> > > avoid an
> > extra frame delay in normal cases.
> > >
> > > Regards,
> > > Pranay
> > >
> >
> > Hi Pranay,
> > Thanks for the review
> > So here is my why this is put here:
> > 1) intel_crtc_enable() to begin with run only when
> > intel_crtc_needs_modeset() is true not every commit, Just on full
> > modesets so the latency here is negilble.
> > 2) I don't think the trigger is strictly "transcoder changed." The
> > stale read comes from PIPE_SCANLINE / PIPE_FRMCNT not having seen a
> > live frame yet on the freshly-enabled pipe. That happens any time the
> > pipe transitions off to on, regardless of whether the transcoder
> > mapping changed. skipping wait when  transcoder is the same would
> > still leave a window where the next atomic commit can race the first vb=
lank.
> > 3) Also, I don't think "transcoder changed" is the right check.
> > Comparing old_crtc_state->cpu_transcoder to the new one only catches
> > the rebind case - it misses the more common path where the CRTC was
> > fully off and we're just turning it on (which is actually how I hit
> > this most often with kms_rotation_crc on MST). To cover that we'd
> > really be gating on !old_crtc_state->hw.active, just makes it a full
> > modeset check - and that's already exactly when intel_enable_crtc()
> > runs. So the conditional ends up not buying us much.
> >
> > Regards,
> > Suraj Kandpal
>=20
> Hi Suraj,
> Thanks, got it now.
>=20
> I was associating the issue mainly with transcoder changes, but now I see=
 that it
> is really about the pipe being freshly enabled.
> Changes LGTM.
>=20
> Reviewed-by: Pranay Samala <pranay.samala@intel.com>
>=20

Thanks for the review pushed to din

Regards,
Suraj Kandpal

> >
> > > >
> > > >   [243.348405] xe 0000:00:02.0: [drm] *ERROR* Atomic update
> > > > failure on pipe B (start=3D300 end=3D301) time 61 us, min 2128, max
> > > > 2161, scanline start 1200, end 2165
> > > >   [248.536260] xe 0000:00:02.0: [drm] *ERROR* Atomic update
> > > > failure on pipe B (start=3D561 end=3D562) time 61 us, min 2128, max
> > > > 2161, scanline start 2162, end 2167
> > > >
> > > > Here "scanline start 1200" is the vblank_start of a previously
> > > > programmed mode on a different transcoder, while "2162" is the
> > > > current mode's vblank_start sampled before any real frame has been
> > emitted.
> > > > Both indicate a stale read rather than a real evasion miss.
> > > >
> > > > Wait for one vblank after crtc_enable() to give the new transcoder
> > > > a chance to start producing live PIPE_SCANLINE/FRMCNT values
> > > > before any subsequent atomic commit enters the vblank evasion
> > > > section. This adds at most one frame of latency on modeset, which i=
s
> invisible to users.
> > > >
> > > > Reproduced with igt@kms_rotation_crc@sprite-rotation-180 on a DP-
> > MST
> > > > sink; with this patch the failures no longer occur.
> > > >
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 674a4ece6d0f..8ebd0df25c11 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -6741,6 +6741,8 @@ static void intel_enable_crtc(struct
> > > > intel_atomic_state *state,
> > > >
> > > >  	display->funcs.display->crtc_enable(state, crtc);
> > > >
> > > > +	intel_crtc_wait_for_next_vblank(crtc);
> > > > +
> > > >  	/* vblanks work again, re-enable pipe CRC. */
> > > >  	intel_crtc_enable_pipe_crc(crtc);  }
> > > > --
> > > > 2.34.1

