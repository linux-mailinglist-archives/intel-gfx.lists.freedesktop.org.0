Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oN7CDv4mwml5ZwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 06:54:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 996CE3027BB
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 06:54:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE1F210E436;
	Tue, 24 Mar 2026 05:54:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KVHgXxIj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F1C10E436
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 05:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774331642; x=1805867642;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=46GwOlfA4lrcGCHaBptwPBVbav+m1zE+xZchrxWBXR0=;
 b=KVHgXxIjEM1r3cb9rQ2o/K+CD8XPdOZrt1XngLNIE74PlzAGM/aJRnAP
 UaE1CzQbDd1PMC1u/31Dq69GXEtvZgaASWykeiyGTX4edbCywWJx2mZKT
 N92vOxFbDA1pWC06SmpwnKZLvl4e3+WTZq2Pl5M65zKfQSoZVgT8RTfPD
 AqAPljjmk+LMh/D0LSjN9c7SoL4jawFxaEI55gFFxwB4px+FxADta+Ezf
 1OJzWgnmdYz5peF0VCzThXp+Y0vSJzEWQN3zxjhnhz+EAhBfN7mD1W49r
 J5Xxg39QvAyW3BK9yK6b3JUmVCi7fdTyChZO+eXh0QLQdT6Eq7mDkNqu9 Q==;
X-CSE-ConnectionGUID: faI9a/UJQGC6cgnk+kHNNg==
X-CSE-MsgGUID: D57L2sNeSUeZDSkc6hLa2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="74360916"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="74360916"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 22:54:01 -0700
X-CSE-ConnectionGUID: JxRUj/DGTbmiZSrlcnHJxQ==
X-CSE-MsgGUID: 8reBRBf8Ts+6B3o6UbqLNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="247899420"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 22:54:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 22:54:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 22:54:00 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.44) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 22:54:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FpsnGeT1ehAI+uvfHiBN3CT4kMtFOobh+P559ruhFOLHu3zUG3eKgcPoOgA2th9r4D2w/PYyJoPyA9UxXFTZp/vNCctnOy9MCog4O66PUna+ShMGrkApwVPGQ4N2m+osgiVEy2HVMHP4mCPBzjZ3kIeRlNcQEWl4d9hHEkV+3Vd2OJZDPrq+EHniJW6b2gkkboOgkG8qkfWKSAe5MYvKMRxXf1q7r4MCVVkiQaDSobIjBG/6MdxyNkJV9w7Ovqu3WHdKyFXO9hCtMbPShNqQK6dgKYNE74Fn8H97cVVUimtCPY/t1Vh+FSXORmhQXl3/2ZNGeZeD6jDJxhSYCCZzYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jn82QWcQy3re3DuaYZjPjJziJWbMdNfYIeI1ZsW7xlw=;
 b=EYnQ70Wk9DwfVg4bifhayPEF0QTjxiLmOCOJ5pjjIJ/8dIxEMqGMLQz0+MjjhBVT3v4Ck5cmIknTsGZk7ZogmSPyfIISzWt+Pm4N9fnF384y0iHq7RyDq1PxGeKfDV4uOBy4Ce9s5s1D4xQNMQr9xgMMD/67aqQZ8FgUo2uD5R1y1tiSivgs46yg0+7tK3/2+tACrpB9qDTyJkpn/fZfVkRAaeNOS0bwa0ZrArzaw9QCNRKDYJZBw9R5sUyb0WCobEMS9MrW/Fj6NFXQIy+uhkZAHTJShZ23mbUYuSR6Pd3FKJyytwfFDAb9TY5hBRoXx6e8BLWR4A1LI9PTrPWjWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 05:53:53 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 05:53:53 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Hu, Austin" <austin.hu@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>
Subject: RE: [PATCH 2/2] drm/i915/plane: don't DMA odd Xpan even Xsize UV
 buffer
Thread-Topic: [PATCH 2/2] drm/i915/plane: don't DMA odd Xpan even Xsize UV
 buffer
Thread-Index: AQHctZ2zip+LTUAoNEGn20Kl4GVhdLW9OZ3Q
Date: Tue, 24 Mar 2026 05:53:53 +0000
Message-ID: <IA1PR11MB646783F865E67A6D7EB30F86E348A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260316233254.393640-1-austin.hu@intel.com>
 <20260316233254.393640-2-austin.hu@intel.com>
In-Reply-To: <20260316233254.393640-2-austin.hu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH0PR11MB5013:EE_
x-ms-office365-filtering-correlation-id: 3851c88c-811e-4f3c-f068-08de8969baf7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|56012099003|7053199007|18002099003;
x-microsoft-antispam-message-info: OcFSiwsU1s0W3L+EX6wz2c4JARjCbjLZ3beDxuAzwjWzPzu+RjNBOetAXG8q8upyvuF7qePjVP4Dh87NKcQhzfpG54URtl+7beRk1B5vrBTBgHTAziSVxubsYVcL4DGSyB8SeXRTaPifFXQ1MsLvA8BrwNSw0Sh8bxeAKZp0BivlblzeKng6Jas/fOkwMiwC5Ycjn8HdGcP7Z2kG5Kh6csMcS2rPanSL9JfGkVNaHsk8OkKW11/8IVFBFQNTTQahsk6cwtudVMKhTB0iwKkOmYUzr6t/u07fhaEIVm/A+qJ9zjmadKMCq9CzGCM0rjf8wm/R6nV+f25Zu+CxmAkymsyRZTj0iqIDXnEiIzTDMa9McjgVrlH5c+Ar0x5aqg4DIVVlSEkDCuE0xhAQmWP1z/y7o6vS5Ce5Dw7lkmvCfZkRGe9m2UPE04QsVUpFkpT+bgMtyF6jGlBl2CfDg0D0WDvzobFV4+l8pjZCBxvP8g2Lx7wpZDymxzsbiWlJprffqOrwYXyj7sg2PeRF3pf26ybvyXhNEjcxhwyUe7WUYTNgXxe2ZMEY4vnzpVZTVPw3KgHmV280TUzwjnkJk9ujZdzltH1aOEmm7nqK9M4KYrq1ivu0+Z5Wtm7bQ48MWNDDY7s7xU0mTmKhxlzrRI6sWyog+2UibDXqjKXeEcRvVcrDqvauFjdFL27mjyKGXLkwCOIRdmcWDpKVZDHkxZN30XLxCHGaP7j63guFUasTz6NcimTbN88JucaRdLmVv+VBNqg6stM4puhGl4eWVYrswe0RfBOjG4YlqmMUSPWK2BI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(56012099003)(7053199007)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jY7JsdMePUeY6c0utkhHj4fBUCCM4UZKcldB1QZ1FOPxBYXxzF8ta2qy7T/9?=
 =?us-ascii?Q?oIHeP1DuzRgz4CF8DQQzeobe/ykuPJBtcPwLiAGpVKBSs+jDex6GEtdsQBQl?=
 =?us-ascii?Q?7ZaaM7N8pAIHLwgDSkDue48SApLf2t6cNxRtpB/P/mkrkPPiwd9f/pwSf5In?=
 =?us-ascii?Q?Kbq93HcGv8unJ7EX3gxa2w9RAaSAxrq+MjijtxheHJ2HQbkpF/r1m1S5b4zO?=
 =?us-ascii?Q?VHqLGwjtHzgEKLbXq2BSAWhIovtbe656lCTDhvPVTGDpomHHe7ZrI0EyR3u0?=
 =?us-ascii?Q?meomErD5A5oNOkrqDnSZ1zGWoFGH40NRec06gg+HtO3brCZyfCewshgldMc5?=
 =?us-ascii?Q?JziBNhQCxZ2NdMawlGXClBCPbBUuoDQZ1bGqRNSkECwmvjy5yKajVd9C5pkI?=
 =?us-ascii?Q?Tgp4QNUCIlsfjR/Yj1K+AE0hFi08EqQTi06TGt69SrOlEZen4o+AmpvhbFlR?=
 =?us-ascii?Q?8WOdNqh98s5OUw8zgpHrNFng6VM7OI74mnXN8CqlcaUMHSxocJCq9VlYa6BA?=
 =?us-ascii?Q?TOhKRJH4SXnsrBBXlHXNODM1+AIvr6x+GCRH7FQS5+/GiLiMQjGqAVJTlkI7?=
 =?us-ascii?Q?wS9QRhkexuptc9trTEYDu11RtLmodIAIvfayy3TEerSvlMXHux2dKmTOClbO?=
 =?us-ascii?Q?4LEBqpZEATLuG0K4XvHUDsSf+r4ZeMt7MJEeFOpClyqwSDiKuBs37ojfWyIK?=
 =?us-ascii?Q?IfOMpYe1EDF2H/zsJdh8F19jUU073AHBRT/dyJ6Kq22yqb7RT0mJSIkT/0RD?=
 =?us-ascii?Q?71hZhyKCrH2feVe9IurEJ48Gaht3h+eBTWyQrr7SduKbkQW+fg/I8RFKZHeS?=
 =?us-ascii?Q?/Y+lHI9sOCg5IpTNOjTVf3fcNPyCL48tDThwfGDVe4A49VnYbo+jyegs0i1O?=
 =?us-ascii?Q?oAlOqUWjRK+Gs6NVb0buPdPIxfnUTeVktn97vo6pC5991gMvr8uhSfD4C+5h?=
 =?us-ascii?Q?kuL2/ybpKWWuB8hjbncBV7cjQLjZ89Fey34gex0u/Le/UFHKPN3L6/jfqi5k?=
 =?us-ascii?Q?p3xnjTMLeICn9PTzqIywAZNSs8/k9uO6PjVKpd6jZLnxS3l9Fo110HF9J4Q2?=
 =?us-ascii?Q?Se+kgxLuUrKGVrr3WFKfeQhqQvKYJH0flZyQaLLaRHj7P6k9q0AeFRiDqzy1?=
 =?us-ascii?Q?7dBZ6HaycMZR/UESQw1FGfJyeAfqvygX8dY2EthFM2weyham6AZ6d+QiKTZB?=
 =?us-ascii?Q?SvPecnPNc8xTMplrLVuna4RDhGiXQssQ3V0OAMfl81fVfJKzrwURDA7k77O9?=
 =?us-ascii?Q?PoXaqghdlU3WEZAtKdXe/WLF14iDIWS7guHS0rcXW9WEiAlhQ9qYlM2DXQ3F?=
 =?us-ascii?Q?TthUmo6oLNNQZyM0WqM7hDVPynHTnGi4qv/ZeovVSkuUL7o8JEET4otOGwPP?=
 =?us-ascii?Q?MSFbq+IFi/V21DVRojp0oT48Oqc2yjHCd6g4Tc9hSf4kULDQ7MDViKYZKXYU?=
 =?us-ascii?Q?i13RsINnNF6XaTOI0PYh8mzC6FlwCIbjKU5G/wXQLWDuVUvhBG3DexlLKIFc?=
 =?us-ascii?Q?QqRdA0syzWe3u6NL5oooXXxqQcLvoECmHs3HUlg2etvqIVXIHjfbuMuZ3rnA?=
 =?us-ascii?Q?cKOQUKGYeLlfDqMUcfSjnLzKAnqInm1CGLzKJivDXjSndtXMDEDvx91d2LNg?=
 =?us-ascii?Q?MQoSSEUk8AsXeX6Kbg2fRiVq7JCV2UddcPQM6DobBkwXkBhuAHJ8nQz45c8B?=
 =?us-ascii?Q?l7keyg4WvneQKaAhzwetzUvPQwZmTIFyFo1E9swG7CGMotCx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VBggAcGqv0KbfVV3GjBDCdKycMjhpmAhS0WCnJ3k6uj7vKtBMUgsGLLqCNIZGmDPfrRhIZrI7e8CuIPvhZbjuzMclYEJNWvtS9mjm8qACTy7sWfVOxRsbAZnkN0YiZ9aYR4/xnp1vLAjAMxZLoVgFzYZfLtjNVzn1Uf7/moAJXNPf7tGsaWmJ+MKaLukdnLxFKvYMrs2GuCtXcqKuu26wXYki2iq54NG+BsPlLwTxNFe/ODw8FZcyNbq23cUYvaStBZ/FH0zPvW+4usHA/Qjsh9s9UGuf3kISpvo61/MI48yxieGIIDUL1HksZjjgp2bmduwfRkpHhHYKgJPcXHwvw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3851c88c-811e-4f3c-f068-08de8969baf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 05:53:53.4339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vXfxGp1A0WgNtuqsdDx7Nx9HNIun0oRez+pybdyBhe//GyK6NSzgrq6oKp3AIu5LCoQZ2X+nWX+q5Dw1JNjHmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:austin.hu@intel.com,m:ville.syrjala@linux.intel.com,m:maarten.lankhorst@linux.intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 996CE3027BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Au=
stin
> Hu
> Sent: Tuesday, March 17, 2026 5:03 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; maarten.lankhorst@linux.intel.com
> Subject: [PATCH 2/2] drm/i915/plane: don't DMA odd Xpan even Xsize UV
> buffer
>=20
> The original code (for Wa_16023981245) make (UV) plane state checking
> failed for odd Xpan buffer, so that some YUV semi-planar buffers with odd
> Xpan and odd Xsize couldn't pass to be DMAed by DE Plane.
>=20
> So only apply the work around for odd Xpan and even Xsize YUV semi-planar
> buffers, and the HW issue is expected to be fixed since Intel Xe3p DE IP.
>=20
> Signed-off-by: Austin Hu <austin.hu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c
> b/drivers/gpu/drm/i915/display/intel_plane.c
> index 3d945fe99b67..4f0c04f72bba 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -1105,11 +1105,14 @@ int intel_plane_check_src_coordinates(struct
> intel_plane_state *plane_state)
>  		hsub =3D 1;
>  		vsub =3D 1;
>=20
> -		/* Wa_16023981245 */
> +		/*
> +		 * Wa_16023981245, applied to odd Xpan and even Xsize for
> UV
> +		 * Plane due to HW issue which is fixed since Xe3p DE IP.
> +		 */
>  		if ((DISPLAY_VERx100(display) =3D=3D 2000 ||
>  		     DISPLAY_VERx100(display) =3D=3D 3000 ||
>  		     DISPLAY_VERx100(display) =3D=3D 3002) &&
> -		     src_x % 2 !=3D 0)
> +		     (src_x & 1) && !(src_w & 1))
>  			hsub =3D 2;
>=20
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

>  		if (DISPLAY_VER(display) =3D=3D 35)
> --
> 2.34.1

