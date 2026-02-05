Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Nk4AYRKhGk/2QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:45:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE59EF8C5
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:45:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1AA10E7E9;
	Thu,  5 Feb 2026 07:45:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kw6P/0a7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129BB10E7E6;
 Thu,  5 Feb 2026 07:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770277503; x=1801813503;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YJ3t9B11UstuBlW9aTVl6k2V7+irYjoYtT8CEkNPKOk=;
 b=kw6P/0a7j1fz+pxx2wz+VBC44DUjAIX4j6jQuqNkX8cRVmaJieXoIt1p
 IKhmr7amLKPoCJFtNItLSE4ebiBWv6Q2iLXJ6eAPOR5az3pRIF1rE28Dv
 fUvLM9ljj3poxt+zwXYADMikR7bLQah0wYA/3RRVjgl/WGQTaiLurtanX
 S6c2xtARB0vZpmC9uBG0WEjY6q+hiuAR3JWQ8sfkStQY7Fo+M3NJ1Ps3p
 0b50it3dyki9A4PzYOsdCnDmXKC9az1MsalCTsCftVDSFuLBxQ8exlnsQ
 qWNtCTWXV/uZ+cM6B1Uoph6cAwSNwxb+2W7pYBwhoX3Jmk18I4OWrytjE g==;
X-CSE-ConnectionGUID: O/vK4bcLSsCFV5PlyNK8IQ==
X-CSE-MsgGUID: NIhsLb5ATgS7aERJQZXLEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71459694"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71459694"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:45:02 -0800
X-CSE-ConnectionGUID: O1gJIUn9S1mH7BxCEu0f6Q==
X-CSE-MsgGUID: Txnfh89TRemR1wJRpLki/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210459785"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:44:55 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:44:54 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 23:44:54 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.36) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:44:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dxeixaAI7H6KDlCIqDBcyg1zrsFx3c+befCYSsTMZLsjXLsL2UFrfYn7v9xcEzjTNk5w7zk4xboglMqOtQC0Ns5XZElruHR+uh57qWzD0aPvwobbxPt+jTR72wStAnbVQZLVkXwYG5Nl7tvzlz8fKuucZq2Zp9M/PRjCenyJjiammzXB7dctwC7Y48TR1U8A9H8TUuJ1iL5pVejYSJtn84ZsJnNIWCUHg8xFuGB7I/sTN0wVGTkv5e8QnTTQQIDygE6I6tkfw3Ah19ekvPaiw+oiwaGM6OdJ4UblnzhgQJZG3ZFlOcsk9H97iW4LHVGHa6zFBOXFHhUsBIw1EPNwLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Doc0+RNHE2p7S6Nb1xL3nonoRWyvdZ6rO2c0OEOAUVU=;
 b=ZETJ6iVJdaECW300PqnqT5SH0cocIqzEyTkyZu+P1Nhv6kIEtw4jeSOsr+nqkhHVitwinx4lWG8YKHQtU3gllTggKKrOxrlfZj0drwGA3tDwfpYokNxwIv8EqJBh7SDKsapaihFXcBboPypNZBJK2QfaFU2k6FaJSgihyGZ3D4XAeIfT594oGrGt2Chx/dOL/HwKHSgdWXY2xro0MZgaNYEkjIYMeS391ahiApCrtsDe4m9SaEx1RF+sl/FKNhwwHKP8p4R3GM9etlgz5ZMOwLPSLxPXunltGjJynprDLPMDa1f0s/2h/hbbOYoUyF4BuMDQkAo1ojFXQaLVQ659yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7940.namprd11.prod.outlook.com (2603:10b6:610:130::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Thu, 5 Feb
 2026 07:44:46 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 07:44:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [v3 17/19] drm/i915: Remove i915_reg.h from
 intel_display_power_well.c
Thread-Topic: [v3 17/19] drm/i915: Remove i915_reg.h from
 intel_display_power_well.c
Thread-Index: AQHckWIYQgZAaWXAyUmNIMbfFUteMrVxMzEAgAKQfTA=
Date: Thu, 5 Feb 2026 07:44:46 +0000
Message-ID: <DM4PR11MB63602B96130D6028C412B7BCF499A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-18-uma.shankar@intel.com>
 <aYIjmmpOFq0jVXxo@intel.com>
In-Reply-To: <aYIjmmpOFq0jVXxo@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7940:EE_
x-ms-office365-filtering-correlation-id: d03c1c27-505e-44d4-41ed-08de648a6f39
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Ejq+U34Is32Zofyz3oTepbl4hvIT1e5q1/mbKcV5Ka84w0kxj6iB+ThkPy?=
 =?iso-8859-1?Q?S5/f2ak/OKpJtCwWpd/uz1jDBcN7DkE0LgU3GmB6jOFFdUtREUt4204cjB?=
 =?iso-8859-1?Q?+duiVH1St+tLG4XiAe5PNLrOxkJS1Ac6/gG3F/7U0JT0zV54Cdku+r6w3K?=
 =?iso-8859-1?Q?5geRyhr99MIbxCLUy8OKc/0VKwoNyknd1nv6/XG58eomEPQ9mAXFGWJd1M?=
 =?iso-8859-1?Q?vgXUo1JscX/XkO5zXJWswnF1S73kxwe8WC+5Y+vhcZT0KwWT/bOFfAvvNz?=
 =?iso-8859-1?Q?1NNp7LiWDopi6kE1tZCgHAzvLwxqxCYfK0G921/ZBcBfkN1dVH4SNm0ccL?=
 =?iso-8859-1?Q?tYSSaqa3CDJu269sFgEQtNZQI+v5aVmrzKWmWrT3HWW/wqvn7jHjc2YBK/?=
 =?iso-8859-1?Q?wCgz7KD0wD4UqozQPBW/RFcQ3obAkOncP4iHVhBNZphY5kDNSHbD8M546L?=
 =?iso-8859-1?Q?AtNqxQpYc89u5q8b6W1tLJnbYk5661wmWWmCy1YpXZpevrEhtt1MsA7eHx?=
 =?iso-8859-1?Q?nixtNiR8dsE4elbhaAi5kQ7Bx1eF3a+FjrBatH5B3QoVCJd/xTCeObKNNc?=
 =?iso-8859-1?Q?OYP655xLQga5LxpeAtuX8tA3fAHJPUzYgZ8+4FT96CjSV3//gxgxDtcJOl?=
 =?iso-8859-1?Q?hVJDvfAiP99WyMhLGwhHu15OLmcofZJt3sd4PObUcdvSfWH/6TPM8eAeNT?=
 =?iso-8859-1?Q?dIln9PmmhMWL+rKOAmnU+rHoQlAgstfTaj4fx0Ouqg4SqkfDzXJZCy1amv?=
 =?iso-8859-1?Q?M42rrHe2LBJWTv/I3Fn/DJdKE73Z5MKKqvRxXu24CnZoN2dpvvudH7A+KQ?=
 =?iso-8859-1?Q?3w1MnOYUOKpknmkEqW6Z1C2mfNVRRyJ7cX8SX8sCmqpo2ODsrZHDvQrNPX?=
 =?iso-8859-1?Q?9ctq+OXxlkm1pruVoRZSNi9+B53a0tE3SXURP28ZStKEelXPz4hMbAHLGA?=
 =?iso-8859-1?Q?qnp8Sg+SIsK9G4AxupB6J7Y/OVCqg76ua4vh5okb9y2Ev7REm/DnLXYgCk?=
 =?iso-8859-1?Q?/wkNbTLo7yctXigqkR6M5gt2rTAK+CO+jHlTUIynh8DA6s44TwJLJKEPVh?=
 =?iso-8859-1?Q?TGMDpgdsXMwYVIa5He+vMwW4G2xGvNI0CJhzCXcraIwoZzabNcapLXaT7B?=
 =?iso-8859-1?Q?vrBjjZJ8aNfgK/aYvBFIGR0mSD9DxKNBs0cPHULsJnruAlw7zAU40joGLd?=
 =?iso-8859-1?Q?9IsNT9s5lwxvrQWCyvYW9dhmAVfXGlfYsvjrefocH4VDk0MAMkNCprsEIa?=
 =?iso-8859-1?Q?DazRq9KH0iKlg9dHAGMhkW5b1GRAKj8FBeij36K4xYBxUXtgJiO5bf5HPC?=
 =?iso-8859-1?Q?oS4zshZ8yfoKz4U4JiyyEBIDn5ekV3MT9BEAp2lYce7rod9lC0bVKDz9Zr?=
 =?iso-8859-1?Q?eWnzt30KL8nAFeaJoolQdeZmQT0RyucAek5tCwsXMczWi/CW+1LKfCVeGv?=
 =?iso-8859-1?Q?0m93ign4qt4uPkXKyFcDlm1JfYUi8055cuI7XCsOUY2/YiaK+mYLnMmetE?=
 =?iso-8859-1?Q?gFq0KUuHMU6xfhqoeQpBAPtSr/jnVYjlNf8bUrCJRltvcJHCnuXGD/KAkm?=
 =?iso-8859-1?Q?KYPoWMrsgZ8fM5r2tIFvrV9D/nKUISoaks2WXI0tBY34OkvUuG0NaUIf0o?=
 =?iso-8859-1?Q?WQAtKk6I4HTbGEmN5RYekAvjVDrzAXlgepgUZoAj9eF9EDDlhX+2ybtwAF?=
 =?iso-8859-1?Q?/CmEjjuy9fwEBGIDXrA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Ou2kBdmLBHxy8tkzC9EmqmP8JwOZiwTdm26bbYkRjBFHn8TIYs4nwXN83N?=
 =?iso-8859-1?Q?JAkYyGcT5n17puwn5vp9upnkh9TCpghXpoSLvoWLf/uZdfZY8oa22tWCqM?=
 =?iso-8859-1?Q?5uDM+Os/B6xKRlNr+kSB1CZoquzfUjc/3aXRnbbckcdM2Z8d+02JIxQcI2?=
 =?iso-8859-1?Q?hgKK3ZeXDNtlnvspSnajcOJgraxXiZ538MXtK3u47DwFk1plMjoTMfdKSW?=
 =?iso-8859-1?Q?PozYtN6n4DIWLeVOLw7Cx7b+QMk7/Na0oetkTpKJ70rje46mAptgNgPr2d?=
 =?iso-8859-1?Q?/K+l0VzQzSuxpv4TG1m/1oP5GrVrfLHLpmKYQASoa+dqe1OQsf7I0NA8QH?=
 =?iso-8859-1?Q?vwqtPr313XmAD1V7ch0qUH4zrrukWc/oXGeL/4KViUknxAM7ejidDZvnHG?=
 =?iso-8859-1?Q?SiQelU1GGKhLYijUcA9Pg5zZsooItqKLQX9F3Uwd6KoWhcPW4YXzDqvc5g?=
 =?iso-8859-1?Q?VdGINe2a++0fj51KFv6mW44J9gcXHETj5XSKBtK8jrLCyWvQ22JyY95Afg?=
 =?iso-8859-1?Q?uTb2YjihPzw8Xf9A8RLxQxiF5H0qnBDhjnF7wmgEQvPnEMgKsK0hvZe5l4?=
 =?iso-8859-1?Q?nCj4WWqJXjUQg9MTnQvIrQWBdBOTpLDc4saJEcx1D/r3i/dH/wx+CvzF+u?=
 =?iso-8859-1?Q?W5nkhYDmbwNWcgNA0ZkjlWrulaE6VaFocPpLsOfOrpTY5c2K9SsAP1CIvD?=
 =?iso-8859-1?Q?r5hK8bVFJcF3mctFuSOmhUblkgTURaiHqTxlBHV+VHuTUdJhW4jQ0Ed9iN?=
 =?iso-8859-1?Q?VE5lOvYur33meaS1k0hK0HYJYEoVybqMDIDSn6adP+I5B6JRtErV1BSEzy?=
 =?iso-8859-1?Q?yT9Ft30r3XSBJDSWH9pyGy0iLO/nW0bzLtFH/mTXRZJzeQ/p+v6YTR3ipQ?=
 =?iso-8859-1?Q?OtTZpDi8cRQNnFuijln5OdHQ+VHioY4prshBHKtmJMQsXJs4uHCZ9yWnyE?=
 =?iso-8859-1?Q?lIa+HruiQqJRxR1OmvfHQ4ijc2IVrq/BLkVNZs2XYIIxNgaHbxNbI2XTCd?=
 =?iso-8859-1?Q?C7GlHzXEOCwjvXnVY8VccvzMJ8PC5xNir+7gcijuC2GTzb16uzfZPV85Ie?=
 =?iso-8859-1?Q?7+Ls2QPB5Fij012QYxVFnDggCPqSCBPwygf5jBrdaH+3MxYJB1s3BwVifn?=
 =?iso-8859-1?Q?wMZBEMcE230BkfhQ1OWjtrqtF8XECl/RPhdCpRjWtNU0RWYmxIG8pX860u?=
 =?iso-8859-1?Q?Fd4DkVyc5CdQIKC/2lfjHdy/aBevlimltb53YurdDxzhXFtSV8xwR0tgja?=
 =?iso-8859-1?Q?RBMOruyLorLWgM98Xj+IkW9+Y1cnw4m5tHwyv4dqUFAmEW0T3IkndMQ7B2?=
 =?iso-8859-1?Q?qXNT4eitvZ02PORj1N4ZAYblFKQ/8QV1N+RHqt6NV4i8ScOcn8QpCmTuQ/?=
 =?iso-8859-1?Q?A1h1O81ATMebuTZFbZiIrvBkDMxF8dcMXA2FwhNbqUMZ5a6TYNWoQZRj1R?=
 =?iso-8859-1?Q?jcUARlCWTD5b5NCtr3finVaKJZnh6WIIBVgj7OjNY38JR7d1SI/snFXs69?=
 =?iso-8859-1?Q?PtaeV6XGcPtVTksWHvboZi29ZBl7fEkU0JpQFWWE7pqdt8P3/0Tt0Qh6rD?=
 =?iso-8859-1?Q?hIkcbeQaENrEAtBPaoHyPwhoc8ZkGwA1yDjqEe9kJh1u5egVv5dpe/Z4Zm?=
 =?iso-8859-1?Q?RnItEM0cNMCskJk3dlk2is+N6TKWAEfwCzz14JLxrJ4mYWuw8qyhQYJUY+?=
 =?iso-8859-1?Q?r1cAbOdY0A19zgG0Jv8GZZbchzJWaZSrE/LtxqRIy0impgRLHJI48Meyi/?=
 =?iso-8859-1?Q?+2MlawemiR50FWLAKzxWRd1ENa4TU39swVTQUeZeCTS0Qh5A6WYrCtvDNm?=
 =?iso-8859-1?Q?bAUbdAiPJg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d03c1c27-505e-44d4-41ed-08de648a6f39
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 07:44:46.7339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mJSHTybfK/4p7jw/mKPI0Xbtc8BBr5pXkgL+gU018FrHzTcJfJlnt85BsFOoFMi9D+aVKshpK0hjkbs6o+ylfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7940
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5BE59EF8C5
X-Rspamd-Action: no action



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, February 3, 2026 10:05 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Niku=
la, Jani
> <jani.nikula@intel.com>
> Subject: Re: [v3 17/19] drm/i915: Remove i915_reg.h from
> intel_display_power_well.c
>=20
> On Fri, Jan 30, 2026 at 02:43:56AM +0530, Uma Shankar wrote:
> > Make intel_display_power_well.c free from including i915_reg.h.
> >
> > v2: Include specific pcode header, drop common header (Jani)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 ++
> >  drivers/gpu/drm/i915/i915_reg.h                         | 3 ---
> >  3 files changed, 3 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 6f9bc6f9615e..f98de1baa63d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -6,8 +6,8 @@
> >  #include <linux/iopoll.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_pcode.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_backlight_regs.h"
> >  #include "intel_combo_phy.h"
> >  #include "intel_combo_phy_regs.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 4a9b7560ce8c..758749c5c322 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -359,6 +359,8 @@
> >  #define  FW_CSPWRDWNEN		(1 << 15)
> >
> >  #define MI_ARB_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6504)
> > +/* Disable display A/B trickle feed */
> > +#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
> >
> >  #define CZCLK_CDCLK_FREQ_RATIO	_MMIO(VLV_DISPLAY_BASE +
> 0x6508)
> >  #define   CDCLK_FREQ_SHIFT	4
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 9cd7fce09ebe..e4fc61dcd384
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -428,9 +428,6 @@
> >  #define   MI_ARB_LOW_PRIORITY_GRACE_4KB		(0 << 4)	/*
> default */
> >  #define   MI_ARB_LOW_PRIORITY_GRACE_8KB		(1 << 4)
> >
> > -/* Disable display A/B trickle feed */
> > -#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
> > -
>=20
> Instead of confusing where this bit lives on most platforms
> (MI_ARB_STATE) we should probably just add a separate defition for the VL=
V bit
> (since it has a separate register offset definition as well).

Sure, will fix it.

Regards,
Uma Shankar

> >  /* Set display plane priority */
> >  #define   MI_ARB_DISPLAY_PRIORITY_A_B		(0 << 0)	/* display
> A > display B */
> >  #define   MI_ARB_DISPLAY_PRIORITY_B_A		(1 << 0)	/* display
> B > display A */
> > --
> > 2.50.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
