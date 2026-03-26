Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGyCI2mtxGnl2AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:52:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF6732EEB8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B7510E8FD;
	Thu, 26 Mar 2026 03:52:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8hu+qfP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9598910E24E;
 Thu, 26 Mar 2026 03:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774497125; x=1806033125;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OE9qMVASOI1pbs4K6hXLOIF5VU1WnFVbedDw8fuaeXk=;
 b=f8hu+qfPQ6egE6DTMn7sjWr8nvLKsnCvxop7bYPd4QFhiXvbI3kR7wpN
 rpeairgfO2+t53h/V6N9kWCDfniU8+rLKpkYcx3M5dbk/18/4HxNFS0T0
 ZbxfD6W51TYJqx2bioTzRqofPjDkgFvDjPCGUlE07PLf5kLh5cuh8yhVi
 nf1VPJnQRcbIEJgJp4s5/ViXXfcTQjEZirJl8BPQ7zlRjZv9Ov2/cy/hh
 IiDjGU8Eo18zAGD26r7c1ADyBzeuHInPENziMmL1Vk+hOP7yc8O1LRqM4
 W1HJIbboG4EUuHM28pmLub8vP23XnnrjDaEdxHb2giO66OtG7wSE+oV4R w==;
X-CSE-ConnectionGUID: 4EKU5gfcRwq1UVrSZ2xB+g==
X-CSE-MsgGUID: jmQhnb/ES2G8cpkuvt81yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="93124953"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="93124953"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:52:05 -0700
X-CSE-ConnectionGUID: oO2zm/plSD2RZwq+DmQ/zQ==
X-CSE-MsgGUID: y1bEkwQ+SryDTqQg51dsnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="247914384"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:52:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:52:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 20:52:04 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:52:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VYG2zalvo9soMULdWqHzLl9gByPZuBZX7NNJ5Bni9T96HjoOpdbGpclvrmn7L7iGID/Uv8ZmE1SVIimEh2ceCLnxTbTFwEhBtfHhEFiScb/YsMZ+En2fWnxsdpmPZ8okU367KHMkaoxDdrEz4vbfRPbn/NcoBd+VNtHvyJ5erxxr4KHx91Vd58Iq8A1qdTF6AMI3cVpmZzdEvW0tCDwSLt5q0cwZ+31anrz8Kjh2J5xubw1LidtQQnL0ymyznSp5ercWvAgr2fMePzjUXh2U4Xf7frlryojdPoLuvKgp40Uvw2Sz6fqdJe1KfCKrzpPB0lMfEuZ33IfPFz6uJ8f+lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C4W1qDwJN8vY5gVT7dUAaFvqGKh+IJDGckoeEJtTRmI=;
 b=jHOvvrHkuKrSduRU2b3fi4SwZc0I54ENfZwr7h8x7OSuyt13hvfxGupizASlZFlLCl3UjT0m+TUkZ9CLpg2jQScUi5zippXUcVIedB7TBA2LukSf6J2UTdJdrK7IH0v+mEb09YpE8F4FXFSuZew6Tif03gKkG/JVJCZ3cyTEGbnIPX49DxqIlK038QQ79FLRvhlMX9q9urFeGNCZyxW1lAlJl44JVxiHAxmGMqOxyEWSzjsf0oRtyvnbm3DUSfq01XqJsUeaLAd6xgUlHq4r2eszfmfbQedfnaIziLd27/IBYdoAvEa2eoPd1RfHYateFES06gdKvBE24lg33Rc8zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7140.namprd11.prod.outlook.com
 (2603:10b6:806:2a3::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Thu, 26 Mar
 2026 03:52:00 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 03:52:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 20/26] drm/i915/writeback: Configure WD_STRIDE reg
Thread-Topic: [PATCH v3 20/26] drm/i915/writeback: Configure WD_STRIDE reg
Thread-Index: AQHcvEfEd1Qxwf+ghkWAP4m2IEar2rW/LzUAgAD/CPA=
Date: Thu, 26 Mar 2026 03:52:00 +0000
Message-ID: <DM3PPF208195D8D7DA04BB172CDC7CE762CE356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-21-suraj.kandpal@intel.com>
 <acPWmiN_z3jrfhSI@intel.com>
In-Reply-To: <acPWmiN_z3jrfhSI@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7140:EE_
x-ms-office365-filtering-correlation-id: a6e997e1-45ff-44b2-c196-08de8aeb08d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: kKuVJa6KYltkGyGa2YmPvzJwmTWctjjjagfqFElLEvORdc6BsATup2AVBfTw0ObNGjTdaCTyKiX9prAyJYLmGmebQcK7RRtaFQMF5NXdeg3XWycHrg2EdxAIQwqUDvKIV4FA/J6wyH6Ks9Q/jvjB6YMLYvAKOXF4J5aEJLiWN6JQBjYFU8l4YzId9kCcTDn27FtMps/2flRmPLux7bvBEvvS6G9nVE7MY8+uiUzAK5UwTTrZnQVnXz9kpQ7otkJtUnKvQGKG6I1Li7VyAfw+TebbdBGvFrvqqonsinQ+Y2XBgHyaav0VZQuu+h/XdVNnRWqE+M275jhC8KO3zC1W0oBXKji1mI4eXY/HDWfQPKw69Vw22wQDTxds5c6wSMWHnnglhy2fyDyh7k9H5qMNUPt4IQkOX4ZwdXFuWx0CFadqO/xBiAFoIzH7sRZ3dX98Yv2SEKzJoCvVR1wZJspN9U1SodEe4fPTYuYjVx3811qhuV6HrIj9nsrA3865S05U5bfa4Ks1FTniCp24bEVArRp1l9fXpYcLLS5uN9slDvGhftQjxTJsU3E0rl2K4wvaYj+eglD21b/UN5twQkThO/DnD1j4DM2CSPS9lk3vVDRQfmYaf2rAMeYU8Z3pvBIhy0LzCeJIymF+Q9aXygtThBoY7rkfeHMWWK7wZCDJPjpj1S3bL8Rq30LJ7xHMD57KaXypki/X8a83QcOi+Nvl76lU2TUx83q7dpYrISXtjFUWkoZtOXuW0TQXBzD5RikTMSh71zSSqz5nHmWE1Jz/iqM7tlJ5k1YbDg8SKPpvACg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?3KiEjNG+ZgEC3RtbIwYsNDgF42bt1OaV96oyMHA34H6MdZ603FgQfKLATa?=
 =?iso-8859-1?Q?EBBirFqu0ObzHR4rUAbJwoZDpHbYxoUM/W8U732o8gk/RJKHU8oM73vXUo?=
 =?iso-8859-1?Q?hziYOOHSWo0iBaDk20jKp0yj8D5MJF/hECtreDaWOEugQs7Edb/eEIGvOH?=
 =?iso-8859-1?Q?nfh96KLlZsLvsQC2E2w60HpDHwH4sIFqAxocjbKjQSkThOE7KnLc1Anp+e?=
 =?iso-8859-1?Q?Ad0xBErIGU0Yot7qJsK/gG1hMpigCYUoog8RWjIREq1Sytw1jNSWu0jLmq?=
 =?iso-8859-1?Q?d9/JqZMoBptZORrGR9N1zpzREdTwuZbolhK1Op7MLPrejrR+xs/NcWIMoC?=
 =?iso-8859-1?Q?lqKzjEhdy5P97IqBNUEWPGVWp5wIQyp6/ArluueqPmmSID2anltTZraN1A?=
 =?iso-8859-1?Q?XZHBfLWdjF1YSUKiHv4kLWpwp9wcRQ57ImgnSkbM1jBtxC+Rs8f611PEVq?=
 =?iso-8859-1?Q?ARvWxFKc7aYNJgidTouUcF5nXVkA4eLnjFZhvvuVtR9DYhbA+86t63Il9o?=
 =?iso-8859-1?Q?CFlLSR+26CO7Hh6IGIq00PZTbtodhhHgFr3dNU0xdoEb5c8iZhHtQ5OvVL?=
 =?iso-8859-1?Q?fidMCCwkv+o8wFTHjnD4zg+hmc3hbF0quO7iET0oWhdRL2lOoE4yXH+cbT?=
 =?iso-8859-1?Q?n3C6fWFX0cjU363hh2zsj1+NEeIY3v14vH7onjl5oklxo/NHkd/dGkg/SI?=
 =?iso-8859-1?Q?xazlKKmy777ovx4BhkWaA48fAjcvnL1TRX6/m/6gNE0EIrcAm1nfDd3mJp?=
 =?iso-8859-1?Q?3M+hNGBTNZqpRVXll5I9IbRuvjTiD9SjdVVRCd62uWCgKj6Q0rNqZLxAPv?=
 =?iso-8859-1?Q?LPpbvBih1WjVCDqMgdXEfKnVzprrAoygyn4ALD/Ojci53H0nf6wBrQUgZl?=
 =?iso-8859-1?Q?RCFm4Ba42rWJXBS2hEuo+6YA02eHVwUSleUol/4TSEzATYLxgQRQyD0mdG?=
 =?iso-8859-1?Q?sF+QheoQFi8Jkec0OECuz00j3SCnfJ1bWaXQW4/jZNhZboTGqMHM2wqGFw?=
 =?iso-8859-1?Q?yh8GPROtQGmrgfLfh8+F/xiAOkbTaBZBQkPGDweMk9tRzZgt2wOr8FllLY?=
 =?iso-8859-1?Q?ulGB3uGuwczlrjFFE/aNqxe/0ithmpN/prb/Cpgl3jx18V2JPx5R3iXcI5?=
 =?iso-8859-1?Q?/WWVVTMtTCymCt7LGPc7wwB22uwaPgkE3990MR1EaNPz1L2l7sqTI8hz0V?=
 =?iso-8859-1?Q?RFwdl76NO5qx68ez9bi5crBIfVjI8e9yB3aKcQJ5ozuykowCsC2PydAP6f?=
 =?iso-8859-1?Q?ic/LYZdtoiPLSuvf3OnuDL1QdO3LVkamxk94VmEpiO918qCZcGvUSeVonT?=
 =?iso-8859-1?Q?518E1T7Ezvk2UGfFvFg814XaLzu+UHUgnkKk2OGeG80Jqw0ls3BrtXGi0+?=
 =?iso-8859-1?Q?WIWqvGLquaSVn1NBlHiulx2Rg6yr3TBifCf7icEacbTbX+O7HDtwPAWs2v?=
 =?iso-8859-1?Q?UoZqHSiHAPGqbn/9wogF3Cx9WGUUSFcb4t+cul5eZXoJn0so5Fyh5MfcaT?=
 =?iso-8859-1?Q?duCvOOJO5o3KbLQ7gxAHLjUaacRjn6w5EmBNeZZbxjYWTeDSABQt7dpygC?=
 =?iso-8859-1?Q?uZG5HII5WmrcFfts8zNMSrjQhnaD60ARdlUv78j4OfTFHCpEAySq62yXx+?=
 =?iso-8859-1?Q?czpNfjTqbMzw2itiW5S3do9BWuKnHHQEwdJH3BEB4wAm3sXOWMYU89eidd?=
 =?iso-8859-1?Q?n1OZ64VJqh4tRxgQ0+4cR58ldJSA5IUdYWqGKKWlefBFY/SmToJTmo1LPq?=
 =?iso-8859-1?Q?lC661n6FJJLTmLkqHk549XjuVBSpyeA6A8yhgZW7va/mVXmLiY5k46YzhS?=
 =?iso-8859-1?Q?tDeo7rPTfQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rNX8ymVN3y7/x/z4ERlSQByoxsJoItDU+3v3MIenz8Bb7kj5QYRSv2e1DYh/8A76XJwtOhO2+eeKEhfYzbW7VS1KVVee1T/Vjf8LLPyTZSaO2aSe8M/HVlwHjohgUlLJxT35MHitMWKxut2n5/hpatNzxgEoCSz0ktCYDy2KYcRPuK1bRJdGau+p+e7gsds6/MBTj/vWjvfEWJ1CFiwdJLVRP3t8hReY0B+AtmkXMK+2Gok08Xlb0QTJJDHpRgAJJ5SsJdw/uTPgCTgtDY+HIYrSguLnnkk6Xs/j5p8s8kdwkY+jvFizspFgG4YL8FhNuZbHjRl9xR2dcjsWJ72Opg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6e997e1-45ff-44b2-c196-08de8aeb08d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 03:52:00.2898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LYg8R3ANaIaddNsS+8+5/PfuJT4w8YK5QPgg9bGXFl4JOD2ACRzWFW8lu3eYUT5DIuJTZIxpzUkSSA6DsI+pDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7140
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CEF6732EEB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


> Subject: Re: [PATCH v3 20/26] drm/i915/writeback: Configure WD_STRIDE reg
>=20
> On Wed, Mar 25, 2026 at 04:37:38PM +0530, Suraj Kandpal wrote:
> > Write to the WD_STRIDE register using the appropriate calculation
> > based on the color mode and hactive.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_writeback.c    | 36 +++++++++++++++++++
> >  .../drm/i915/display/intel_writeback_reg.h    |  1 +
> >  2 files changed, 37 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c
> > b/drivers/gpu/drm/i915/display/intel_writeback.c
> > index d3c3716a28a9..e2f7c46015d2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> > @@ -231,15 +231,51 @@ static int intel_writeback_atomic_check(struct
> drm_connector *connector,
> >  	return 0;
> >  }
> >
> > +static int
> > +get_color_mode_bpp(struct intel_display *display, u32 color_format) {
> > +	int bpp =3D 0;
> > +
> > +	switch (color_format) {
> > +	case DRM_FORMAT_XYUV8888:
> > +	case DRM_FORMAT_YUYV:
> > +	case DRM_FORMAT_VYUY:
> > +	case DRM_FORMAT_XBGR8888:
> > +	case DRM_FORMAT_XBGR2101010:
> > +	case DRM_FORMAT_XVYU2101010:
> > +		bpp =3D 4;
> > +		break;
> > +	default:
> > +		drm_err(display->drm, "Unsupported format for
> writeback\n");
> > +		break;
> > +	}
> > +
> > +	return bpp;
> > +}
> > +
> >  static void intel_writeback_capture(struct intel_atomic_state *state,
> >  				    struct intel_connector *connector)  {
> >  	struct intel_display *display =3D to_intel_display(connector);
> >  	struct intel_writeback_connector *wb_conn =3D
> >  		conn_to_intel_writeback_connector(connector);
> > +	struct drm_connector_state *conn_state =3D
> > +		drm_atomic_get_new_connector_state(&state->base,
> &connector->base);
> > +	struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, wb_conn->pip=
e);
> > +	struct intel_crtc_state *crtc_state =3D
> > +		intel_atomic_get_new_crtc_state(state, crtc);
> > +	const struct drm_display_mode *adjusted_mode =3D
> > +		&crtc_state->hw.adjusted_mode;
> > +	struct drm_writeback_job *wb_job =3D conn_state->writeback_job;
> >  	enum transcoder trans =3D wb_conn->trans;
> >  	u32 val =3D 0;
> > +	int bpp;
> >
> > +	bpp =3D get_color_mode_bpp(display, wb_job->fb->format->format);
> > +	val =3D DIV_ROUND_UP((adjusted_mode->hdisplay * bpp), 64);
>=20
> The fb should tell us its stride.

Let me experiment with this. Problem is I remember that the fb's stride val=
ue was causing some issue when given as a value.
Also I saw this calculation in Bspec which I coded in. Currently I can't te=
ll you what the error exactly since this series was just
Made to accommodate the new drm core changes under review to make sure ever=
ything still works for us.
I will experiment with fb's stride value and get back to you on this.

Regards,
Suraj Kandpal

>=20
> > +	intel_de_write(display, WD_STRIDE(trans), WD_STRIDE_VAL(val));
> > +
> > +	val =3D 0;
> >  	val |=3D START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn-
> >frame_num);
> >  	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
> >  		     START_TRIGGER_FRAME | WD_FRAME_NUMBER_MASK,
> diff --git
> > a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> > b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> > index 5e7c6c99d191..f526af0f9aff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> > @@ -60,6 +60,7 @@
> >  					_WD_STRIDE_0,\
> >  					_WD_STRIDE_1)
> >  #define WD_STRIDE_MASK			REG_GENMASK(15, 6)
> > +#define WD_STRIDE_VAL(val)
> 	REG_FIELD_PREP(WD_STRIDE_MASK, val)
> >
> >  #define _WD_STREAMCAP_CTL0		0x6e590
> >  #define _WD_STREAMCAP_CTL1		0x6ed90
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
