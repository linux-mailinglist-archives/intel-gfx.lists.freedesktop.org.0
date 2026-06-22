Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dqjqA+oQOWr7mAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 12:39:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C4B6AEC3E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 12:39:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GW1F7fY2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AACB810E5FD;
	Mon, 22 Jun 2026 10:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B6CF10E5ED;
 Mon, 22 Jun 2026 10:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782124774; x=1813660774;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FllUY0sBR+Zfzg6WBsdGE87KRVfFdZfYbuGLD3olrWo=;
 b=GW1F7fY2rTqzGpkIoeHLdTkyrdtp9GPuqw/IqdcMVzVficavOpSR9YHr
 GiEGJ5YqAlNuCV5UWRwuz98FK1fNC5rxkaL1JghgAB8isCuF53N0EJeGS
 oSeWFL/rDt4LvvyG23P/M6Sw7461es9vjS7kvhW/cuwV0YhkzwSAL9nJa
 HhPK7JCNuRgsel87+oIL5sb4EXKzYmXaVgX84pNI1jM9vPrUfqhJ3/d74
 b6/wTXDZJSm6g9nta6Dn+E4qeZQwjrREM2fOmQDL9hMGzGi301IEAkseT
 2lyslBFzrTm+ckubOnnE8yNYH3OX9N5MpAYt6CZVMmv8YUG3/YbJfT9dz g==;
X-CSE-ConnectionGUID: TiKCS7/ZT0KTSfPHugRL+g==
X-CSE-MsgGUID: Tkp5RUVbTniNOfcQKi8dDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="108395431"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="108395431"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 03:39:33 -0700
X-CSE-ConnectionGUID: lD08/Mx7SYmAjcw642qUoQ==
X-CSE-MsgGUID: SnFbwMCTRZa0FADSWAOQmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="249046836"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 03:39:34 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 03:39:33 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 03:39:33 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 03:39:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q3CYaSqvxEdw/aAmlmvztpAgJ/TX0hPLdEmgmAipvf0vdn9Nwf6OUMQWWFP4G2YeJ1FjGSvth9SKFL+xvI72ZX2Py3NGkpeC69uitAA8I3Uq6ioh548VbPpniuDtsDvsmEX1NTNBInYWWPzOrnaxsrP46o96aNj5FcQHThreo50offoPZ4tQanjGRWbhckNGmAiem3zibFvi6vUjjJkO2cHtT1cHPV8ueT3RqnnLLPGn/VUcIK0mcbmljUNG+RF3DoCQy0wL/arOcC0iKqEj1aP9yRQmWSfjtgUzOcyrvPdPp4d577K/afnRblLl018u86sS4E8nDvGy0/XPk9jfzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9MOCzr3nFVLJWPzGryiW7t6fSSW2HmPDWsxzMVk2PKs=;
 b=M1LNKWuNyJe1im6SD7Ql3zzNiF7uBzwFjQ37HcFG+JDBb2iWw0ARInkTR9uB+gype5e4MNU9P8yp1t4FsjOLd91SVcx7tAWTKU9Pu6CxMY9HPX8N5sQVbDqdhkJVNCWJsfr3BjzVIZ6ozZxt4JG3MgbEnTvfkIDHKUXw3YichVM5utOjmdH3I+uhOFpXSqywdLhwQwXNJv+I4o+8wO9ma6iZaT/8PgE9PEt20X/+jgTlYS1N91dNibkh418AeU8jsVF/WEUj3+Tngmsf+6JFy3R5rflkVep0RL4HeywckxyLMHxLP559EwnFMiN1086/V1X2vixtAuenHVQ/sVj5Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by PH0PR11MB5125.namprd11.prod.outlook.com
 (2603:10b6:510:3e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Mon, 22 Jun
 2026 10:39:31 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0139.009; Mon, 22 Jun 2026
 10:39:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] Revert "drm/i915/psr: Allow SCL=0 on platforms with
 always-on VRR TG"
Thread-Topic: [PATCH] Revert "drm/i915/psr: Allow SCL=0 on platforms with
 always-on VRR TG"
Thread-Index: AQHdAjLTjgussy2XZkKnk764Yxee1bZKYkPQ
Date: Mon, 22 Jun 2026 10:39:29 +0000
Message-ID: <DS4PPFE901A304FE1CD923C56EA92A8E6ECE3EF2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260622101736.2389991-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260622101736.2389991-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|PH0PR11MB5125:EE_
x-ms-office365-filtering-correlation-id: dfe5794b-f447-463e-c5dc-08ded04a8a65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|11063799006|38070700021|56012099006|22082099003|18002099003;
x-microsoft-antispam-message-info: jXWmC8zoUkBWiSaq5iX8/MygPOW+v98YDfLbwAgoQ6J0AENEe1c86kiR9EEh52fuVTvxsR+4jcggUeBKXxSANf3RS8aS7iDjkgpmGXtKrjvkqQBqreg12xAoEhqrqEOyQQ8crhk0eH4QmWXVSRVqWwnP6Bn74mrgs1/ufEhtn333obIIL3pLnPXI73F6Pp0jgC2rxLPHTz/QTWnKKNeiJq4HhI2leLxx1QNDwCtvQ+iClnfv4GBBGIoLv1jIAu44Ib08o94AOpPlD6+xwhn0suJpYM9+q4JRsI6ivzr+rpZxYyszdmv0GqdXIUlAMrP/g5+CNx2+lZpbjnyV2deES5Ryy3RDRAyeD64ZAvSzthH+kgGXrkPrKV30ZdLKdm4D37IkbywGB0NtLOZRplVDpcv6O0UR9e/l4hAajni7cx4eYs0qnTYFHfcfme1VZ5t3oo5CjcCujSFcv3/cs9x6MUc+eaArNg9+w1E4soqz4VngYAFqj3KjBcziX1RzXLt0pWSSsRn4rLOsaCKxueULN+xODjZruKNswipYSK41B85BmKAhQz89OQKGUd9mOYW4CJ0e3TAG2Ik4DOY/Bagvgg4ZUmgsxShvrF4MIp1FSWFHwwKW/VviSI2jFOuYVfApPl6pZis0oY590oaUDiaA78Op+37ZzPGxtvWxbqW1/pZ9FLPO03tLumvXqSrq6aX3F8MUe1ykXj/bC4yTYYA8rNr2n3niYYXuzbcROxy3iXM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(11063799006)(38070700021)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rvSmQa4xRu/JcjhA9ekJkYZOmQIZUGpA7Bd6ZlQPTfr9x/j3oIQQZXdGvgH5?=
 =?us-ascii?Q?me3/3CPUBHfQExbFTnAuoKI1/o4gyLA+kYF53P3DHamhmpgqyJkApIeGctE/?=
 =?us-ascii?Q?xDjy42zhAV3WIyALUepTE/NhFFgqGN3VYB1Xm0wIVt++7jjZZbmnlax5JVl2?=
 =?us-ascii?Q?YySA2KyGaux5QSyvghfzxhkyBz2rf2ZPhkkoniprEydcSSzXdR5F98b9PKbq?=
 =?us-ascii?Q?+BsLCHhvwOeBoASe0xDkbFoW8eTSdeNAqh00zaLAiik8RG8bBKmR77TyQO8+?=
 =?us-ascii?Q?LfZYdlR4Ld30mstqqlOk942/Zi70rNDwZRb4I2OmNIxzSww7ZAk13/x8tjtJ?=
 =?us-ascii?Q?Y6IUXLMRZ1MA+fKXSh2fSHZ42FOPssb8WWkEIRBqdCdAcFOMy6eEYg7XgGe9?=
 =?us-ascii?Q?XcQd0uDzYwXBTg92daxVWur+BfR7xn74H13qIVo79BZmV+lzXhralRC7zuLB?=
 =?us-ascii?Q?ms0ZvmHhhAXFlBe7t1TZHBCQRPUkg+g1KfPmZ74duurUBI8h4r/tpR6knf/K?=
 =?us-ascii?Q?dXn2VVFvT1cjU14KRcYz/1itaKm3kjWGunvF73x7QSp922iB9/r8tsmfLIba?=
 =?us-ascii?Q?eRbB8OArNwwUIsmmtKcjHaiaKXJnbvAIeP0bs4/u6Sc8L+tdM7obGcNG5JLt?=
 =?us-ascii?Q?6RdRsEmJNtMyVuFYW4xALCuV8Gy+5V9KKV048/IlEXMHB4dG5h3AWjz9BO5B?=
 =?us-ascii?Q?xeQ4e9oH4aBwuHcN2LSyS4ov/DDTzWbQsHLJVTOErS3DBrqHIn/pzj/0thvf?=
 =?us-ascii?Q?XNnpFmOueU3aa2h+5Y+sEFPo5y7V8L0M0GpvyV5oOQxIn5N2limgy0j09FfU?=
 =?us-ascii?Q?DWEvNysXqKNApnCVZRqEzA2+FWe9GTDNVQknrkYYSp5A9L5sBzSM4+o1XSmI?=
 =?us-ascii?Q?xeacvDeDXnJFM8OVaCF45zXR0kvU3lTvMb9CEA8xy+feu2bQD/cAp8WJZ1dV?=
 =?us-ascii?Q?Np0gthXZnTLbokUeF69q/+yMzJg1hUXkmW5hVfuVkNh5ukRoLmc3mIWX48v6?=
 =?us-ascii?Q?wp0XhHvZB5qNyn+HuZ9rvXBAmMF8MX6cKU6Uz7LY9E22woejMWBv288/dE+E?=
 =?us-ascii?Q?MuDXyx/7W7/yA3OU8XRoovABoaTbZe3TW3rlRcDZaM3ertN8Gn1f/cbFM98h?=
 =?us-ascii?Q?agZA9P66YkmAmEXCfSYV0Gv5O2Vt3gdZTe4xFIFQg/M1RHB3k2Gif8X5ASu8?=
 =?us-ascii?Q?pyDbYz1ULwO0FlASvpM8P3CED9rCXkelEr/8xyETdd/3Xzy8qEsNvTLydkx9?=
 =?us-ascii?Q?11XeiL8+qOwRXsf1hy5FHyRnX+q4C0VTh8Zlnh9hH7OsoBQN0uUSvKadavWD?=
 =?us-ascii?Q?+g8YDix3AEu8xnWjTbYsIxW8ZniY0Jrf5svvPIq/wqckYzI1mvpub6FVW0vR?=
 =?us-ascii?Q?2HoCzDmdM3Ufy1BP6c99KkKcmth6CB21TdzWHUjT2Oxrjt53QkwMac4jEpuS?=
 =?us-ascii?Q?xtns63VuOJW0uhhk0a16cVVxmlR8pQpFRFT8gBZl3+CqGyUEAcbggi0K0L/t?=
 =?us-ascii?Q?R/Rl2Le7H7wBBlN3ibEBhXxDCTEB1NpSP1FimfF0B/NT3/Dp5Z18xm+tZIey?=
 =?us-ascii?Q?ZkfXZxv/efzRQ6/zmVNoQs7J7/zZ6DC1S1nnVF0X++RrWpWgbJpl+uksfHki?=
 =?us-ascii?Q?QKCJj9L3iLFOrMutH/19SxAoZp88AOFrhFXL9fSxN7KzzwShkdok+/RqSfh5?=
 =?us-ascii?Q?ism9RRG8OACZrJFgU3Xc5eT2IU9XVSwHdVEQH++xYb9/ewNmbXHb/3/QpvOP?=
 =?us-ascii?Q?PGD2yARPQg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XEfJ/QEX6X4JP0TGupAjog6mw+O5fnrEaYYACL1QkCTbQZ5tQJcpLpVUTmfBA1ehCHsVZk7zuLeiJntadFz72G5eXP4u4R+0Ikc6Iry7FbH4qE3mnPZocftOXwEGXTguBZHyI4N2jUJNT9aRSGgacn8av1DGFOwWdzVtsBtbRj/ivjEKoQbxyCkdCkvoim2t4z1ij0RcY6BQGRxOvmcBK5E36cK/oCqJvMCBHh6p6egI9Y4cu3PhUSZndLAL6qM9uX+6ZAb4f/M9/QOzwrKrsqwOokgF1vzdAB3Xy4zdvh6q5+k2o6jR2hXR7vgFhRSAoQyNItu4AhlHxzRWu+fYZw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfe5794b-f447-463e-c5dc-08ded04a8a65
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 10:39:30.0921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KyiWUj+piFDLsPpdm0NeTjzCZMTeiGGeRLQi3lyASAGmkCAOiabew3HsK3nS10OwSgAmFUQLXMnYT7hZ0EC82Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5125
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21C4B6AEC3E

> Subject: [PATCH] Revert "drm/i915/psr: Allow SCL=3D0 on platforms with al=
ways-
> on VRR TG"
>=20
> This reverts commit 4f1cab2e4863d96ce13b8d94151f4848e38c3d5b.
>=20
> Allowing SCL=3D0 on platforms with always-on VRR timing generator is caus=
ing
> underruns and other issues on PTL in some cases.
>=20
> SCL still needs to be non-zero in certain scenarios. Revert for now until=
 this is
> better understood.
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 911afb9cb24e..92af21d823a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1405,9 +1405,6 @@ int _intel_psr_min_set_context_latency(const struct
> intel_crtc_state *crtc_state
>  	    needs_panel_replay)
>  		return 0;
>=20
> -	if (intel_vrr_always_use_vrr_tg(display))
> -		return 0;
> -
>  	return 1;
>  }
>=20
> --
> 2.45.2

