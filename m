Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEQkJjbwzWkzjQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 06:27:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E59E438392D
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 06:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8075A10E222;
	Thu,  2 Apr 2026 04:27:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKQ0TpLN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DC610E222;
 Thu,  2 Apr 2026 04:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775104052; x=1806640052;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=McHkAKH7+GnHc9cyM4Ce26IUJKTx59XaSzaqfTWDxH0=;
 b=jKQ0TpLNyKyJDGgh0x+nEGhlHDr+Yk/FyQb0lfi39W5z7PX0fiR7gIwK
 eCrCD3zJ9XzMitm/4ONM8U5Q3IKwdmJBOlonN5FAPpiEyZlHbVw75Ldha
 CZOK1BD69QFeOBHq1WAVPmD3UE/obfbXf4m5MziaZ4X76M3oQtnaUJBff
 IL7UUjtghuPexdnpDmGYKAFxmw0Th2euT4jlWDFlQv35mYtPgUSdMlYkS
 5NbcExdeetdXjd9gGJ0XwTILQJsxXqReObEuQ5d52RFZM+6lTaRAE9bWj
 f74TtHtoxSTcnjqeo1780hd4S4d2o/Y88iVfu85TJl5FD4LIrA0Rb6d8e Q==;
X-CSE-ConnectionGUID: 7O9/KO9TTveJ+XWhzWeDmQ==
X-CSE-MsgGUID: H08pmqs7QJKYiic0ergCZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="76171410"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="76171410"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 21:27:32 -0700
X-CSE-ConnectionGUID: e/Sq2BHoS3KCDmG8RPACIw==
X-CSE-MsgGUID: 8rCnDFa9TfGwU+ZlVuHiRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="220211019"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 21:27:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 21:27:30 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 21:27:30 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.8) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 21:27:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B+acMKwajfBYJ+hq8izLdfNolDipiisLZp1UX02IjHckis7geVTPOuAn3vfX9gwLFFsNoEBtSGgwhuFAh4kOETS7tUDpN8IxAUzEKUQ0wMg+UGoCsiFFWpANm1KhaWYWC19S0jbWyWt3r3DtBfsoF9Idp2qt1b2yF/VNueaTl1UnXnUO8bRbR6f3A8cWzD/G4M6s6VbnSesPvtm0cn9XzH8gToyMsSVih1Z1kaogZYZHwTEv+JulXw/Qe6vYfYsAbYTuh6mdDMOy/iQdSX3zfoVe+mX+1ALrM39mcoH5afpRyAOXXA40ZKGTPSV2I+X6EbISRu3roM1NSm+MdjDvbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3S2zmVG2LvGLPwYnkUbwDpt4rrDVgNcZ/nDApZHULnc=;
 b=WHvIy66CkTWQPBsWM+6A4OBNKyxg4j/PiZsMFcQ9WEw1A2t9ki7Uxx2eHa5J50qqEQcEMuo/bDuEY+Pft/BeWP64GQvbcQs5G8U2QvCMJ77xzZTKU686rMst7tjdCMLI1SOKC+ugB5sy6UywWkFBYDjRC/YNiAEST7/zal4Cdby4iC+xbOLFSiL/8SFH+YSxmepsleYaokLv1g6b4647TzbTSn9x4DnzoYjYVz6BrSJf7I0+BEnUydoQHaqP+8KfhqdyBKpl0KuxLZDQXCajwGKmNkth3RmSJmbopFimm6dOWskJ3tFGPMQSh9OTJXdHsopWQsOBC3GenTqYDyH/Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY5PR11MB6437.namprd11.prod.outlook.com
 (2603:10b6:930:36::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Thu, 2 Apr
 2026 04:27:24 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.017; Thu, 2 Apr 2026
 04:27:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "Deak, Imre" <imre.deak@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Syrjala, 
 Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH] drm/i915/dmc: Reduce wakelock hold time
Thread-Topic: [PATCH] drm/i915/dmc: Reduce wakelock hold time
Thread-Index: AQHcwamGs0p5MZ3YXEWghCyE2w/n8rXLLgow
Date: Thu, 2 Apr 2026 04:27:24 +0000
Message-ID: <DM3PPF208195D8D4BC28ED35567CAF02A88E351A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260401073159.3227703-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260401073159.3227703-1-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY5PR11MB6437:EE_
x-ms-office365-filtering-correlation-id: 7c50e213-289d-4f77-4051-08de907023dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: Nt2WTO2bEseOr5nb6mU1dX5YZSKEVq3NPBOKQRuuu3+zoUF2eS3K48CnBvrkYl5gKVrZZvvDH7fgG4SHywxj9vomca1W3vkI/2FvX3Vx49SXNmNYoR0aHNx//wAqRTMw9OECzwNU7IcP6uf6ul1EKl2HIhzbzAn7gI3zjZ1G17WhTUmr9Fm8dkAiVwRbjqVnwty9ZJyVvPE474hIZ8patFyRVwWNdqqAyjxr/b4C8Yy2mlUJjAwKsqGxmKf6v/otUsAn4wKGKIMwjKVWrC/RRTJ8QZoWNueZTrvxo/UA/5QqlZvPVmWfZGt9JUSsnnucVSAb04b9R4Lpx2Fph2BPc1MO87qfJt8PTRuCfTTbCazD7n1mqdl/TduX+YHP0Wsnxd0rFPltP491GETMAyofq3JTh5EPUyyOnTWhl0lpcH7iCyN1KMoP8X2QXOi+MyNrW3KJLCaECvxqVjp10BSCSDu13OD87iZ1GQkqY+V0iptkC+YEKfwyouFN7F2UUeUgAnfTNJl1wgK1CpsnUfEcuvWc9DTcZMr+KiNLImR/6oA7ZlojN213zHJYJknNI1SPt9I9hVpt3gHSHU/GsKdVy+PdLFARL+m4dyFzLeXDYSebjjyeH+WsK3uX8GTQllNvz4IkhR/pIYo4FrGtEiRKrPrGUbh+Y549QC1NZpSaavpLLpvmAx1+07dEJEmD+nQclT6bua8NnGdW3hSplIpmJgBlgmue6ZHQLqIDl6o1UWWGJ9MIVKXhMnGMHGkz6she
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?vnQVzx95DK0hKAuoqB8c+6yGkJcwAfnvC489l0I6J3h1NQMcGnrnyrxt1F?=
 =?iso-8859-1?Q?xE101Cwi5uAhobX5FL8xSvBjJT1hFO+IDZA/m1huJ0/LwW8Wq8l8cGXmYW?=
 =?iso-8859-1?Q?o0LKp3NNZODNLKw/mxIas2adnpkpZqdQaa2JiUOLXEI4a+nGK2IxdnBwTX?=
 =?iso-8859-1?Q?SAwNW9Xy/miKDPnJgtwKbHkhTC/+pxhDBUVj7YXWGYeVtJxsvfH/GzR1Ha?=
 =?iso-8859-1?Q?Rt9suR5lkARDx7sFmljNnHQ9QFTSJlcepdJ/fj/MhVKmhNqYfve5UbDap/?=
 =?iso-8859-1?Q?iWSkEOn9yD/xj69EuwfwhuxYyPLTsXvBVFZQxXqSSXfwyBnUp8eHAjpIZx?=
 =?iso-8859-1?Q?BYjsUdvEwNu4kzEgrDIVZ6beXXYdWPF2qVvjP5Kbwts7A/6enawozAhecW?=
 =?iso-8859-1?Q?P2K3/i5S2KNGqXchCj1KtA5lUrc99Xr+8nvq2aMB6MY3xGKP3oeE/umMJw?=
 =?iso-8859-1?Q?HrdQJACnWs4e+Zm3qO6JSE/Eii+Jg6LmNKJlguqhT6YGxX99vE+igKKPxc?=
 =?iso-8859-1?Q?Bsyudx95hH82P12kCEtYDmFIl/s7QK6UKPUFnU1Aicsj5wwESxZvOdNSTX?=
 =?iso-8859-1?Q?ECPQZ0GRyIFoqOs4cO6BRFy8kDljUNVfOKPEz9rlc53ZdEr+ZYwzRU1/v/?=
 =?iso-8859-1?Q?IEBiOBPLoAkEt91XGvfOB2i3udnspbggqVrWpWpcsg9UUUrFFX/zgnZkMd?=
 =?iso-8859-1?Q?OSxGR6yGtCmGD1Vb3g8cSXuAAskBZO9MgWdaWYno609dTtDAsrE9fQlnnq?=
 =?iso-8859-1?Q?DTzg6XLGRLd7Gpem8DZQT7dXKaBBqA5jXNTnz/W+VOHHa7zCZMmMQ4BtO1?=
 =?iso-8859-1?Q?PfvLJD4JWfPHSN6BlHHzFfOw9dyDvbQHmLS6jF+Vf7sEp1k+cFFcPfuJpA?=
 =?iso-8859-1?Q?ola/0w2vKe7VzNmNRA4kOuAsh9tT9FL3H1KHOL7iv0abU7dInVy79cggB6?=
 =?iso-8859-1?Q?Po2mhrW2yWsnHGkhGZbsglFUNugKdnIynHyjt+efg7dOzFXEcRlgwUDi2Y?=
 =?iso-8859-1?Q?4Bsu2ul0BG2Bulk6TRiRuzILIDT70AlsphGhJONs6xI0HxU2jdZVGkly4M?=
 =?iso-8859-1?Q?q9P6ig+fHaw8zOMIfSGmFjlDV5d4Lxw6WVSm+4J0hs7vHaEdAAFgFJTVeO?=
 =?iso-8859-1?Q?xVuM+DPO2HttDqtirJ1M9ayx7Da9T1Qh1XCgI/woi+7GJZQwzdy45zEN/n?=
 =?iso-8859-1?Q?tIoo0TFnFVu0EczgN2VV3zS2E/KN+E+EbsPmuKnJI1+XAtdpxnNIA5F6DO?=
 =?iso-8859-1?Q?7N8yq7aRFOouK8yYmCbGCl5kUiU1KYAWDVethvAF01UpTVunnoAb08OS3u?=
 =?iso-8859-1?Q?yc0kBppkCTozHH3V5sZUvDI6uiXooj3vgcOcZ/LE4xzStSBEVyUv/JVqpC?=
 =?iso-8859-1?Q?KwHZxMn1Xm3S2gm8VFNBfhZkZTi5YLIGE5HHF0cW5zyWiDnYQtCb5B+RoT?=
 =?iso-8859-1?Q?1kf8E+mnU23JasexZ7RmFt6IW3Wd2J4KtOdvYzSuL2gype6lvhiYpPWRs9?=
 =?iso-8859-1?Q?cOB/o2Jn71v/3pV7wIG/iE9BXnsJY3g5Ply02CJpxTq/pgNOXzSlCE/Wz1?=
 =?iso-8859-1?Q?KssCgiWoRDF8D6UIlTKPYa3aAn2VmDxaKDifO+2DMI6dpxyHq8taWrzkwr?=
 =?iso-8859-1?Q?UsnqyDPSLItYQta8mZ8YaegRfe8FXscwOA+DFC72BXJD3ianRF3Vnb+hPt?=
 =?iso-8859-1?Q?mIPaqRoo174szuETVElQMQym6z6GXbpgzcirvYecKbyjgw7t09/Vd3ALXP?=
 =?iso-8859-1?Q?l+s1rB48m5UIf55XCxdDYC0rl06hFs3JxUXSiEkDvSxD53Pde9ZcH4GVnU?=
 =?iso-8859-1?Q?UZupdsJIOw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kqx1W22w+HW0whBfsV472rUVGHOO66n9eUuZsFLWpEWRo7aj8Y/2k2k6REu0C+r5aRnT7pUl5t+eay8dzvOA+ScQ5kfeZ9n9DgvgSax/3bfyXDGF76EzCx4X52evKSF7h6mloyZBXeu5+k+3A3dX/ZF2fsHikQyA9ZdK5cr/jWg0JQh/MsMmvV3xAiL6EBBKC1sDVpSDeV3VKDFpd+ZWc+8AF7+mZ4fkOfUw0FBqMYX4KtnqSnP5mfGC5RovZ6XsrQbY0RY4Ig+xwauJYSUV9Iu/2ba3RVN0wyyqQCKBmby1y4ACoE7r2XE7cMVYu0MOZDofMKe2sXuSylcubiwxTQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c50e213-289d-4f77-4051-08de907023dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2026 04:27:24.5318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Ik4/mVoeWK1GrBt6qcWAVch69DxT3/ujrnA30W5AnTorG9bDk28wwv4LiyQVuMOhczR4T01FFessyuOZV958A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6437
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E59E438392D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH] drm/i915/dmc: Reduce wakelock hold time
>=20
> __intel_dmc_wl_release() schedules delayed work which releases the DMC
> wakelock after a fixed timeout of 50 ms. Until the delayed work runs, the
> wakelock remains held and prevents entry into deeper DC states.
>=20
> The delayed work mechanism addresses two separate concerns:
>=20
> 1. Avoid blocking the MMIO caller context: The actual wakelock release cl=
ears
> DMC_WAKELOCK_CTL_REQ and then waits for DMC_WAKELOCK_CTL_ACK to
> deassert via __intel_de_wait_for_register_atomic_nowl(), with a timeout o=
f
> DMC_WAKELOCK_CTL_TIMEOUT_US (up to 5 ms). Deferring this sequence to a
> workqueue avoids potentially long polling from the
> intel_dmc_wl_put() / intel_de_*() call paths.
>=20
> 2. Provide a debounce/guard window: DMC_WAKELOCK_HOLD_TIME adds a
> delay before scheduling the release work, effectively keeping the wakeloc=
k held
> for a period after the last MMIO access. This likely helps avoid unnecess=
ary DC
> state entry/exit attempts between closely spaced accesses.
>=20
> Reducing DMC_WAKELOCK_HOLD_TIME from 50 ms to 5 ms only shortens the

Nit: We want to keep the git commit message as imperative, also this is wha=
t you are doing in the patch so maybe
Some thing like

"Reduce DMC_WAKELOCK_HOLD_TIME to 5ms. This shortens the ...."

Rest looks good to me.

Regards,
Suraj Kandpal

> debounce/guard window in (2), while the deferred release mechanism in
> (1)remains unchanged.This should allow the system to enter deeper DC stat=
es
> sooner once MMIO activity settles down.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>=20
> Notes:
>     RFC: https://patchwork.freedesktop.org/patch/711634/
>=20
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 73a3101514f3..ddf1a1f1ebc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -46,7 +46,7 @@
>   * atomic variant of waiting MMIO.
>   */
>  #define DMC_WAKELOCK_CTL_TIMEOUT_US 5000 -#define
> DMC_WAKELOCK_HOLD_TIME 50
> +#define DMC_WAKELOCK_HOLD_TIME 5
>=20
>  /*
>   * Possible non-negative values for the enable_dmc_wl param.
> --
> 2.43.0

