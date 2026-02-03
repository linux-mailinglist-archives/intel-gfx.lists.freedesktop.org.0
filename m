Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGhnOJS0gWnNIwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:40:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E27D64EC
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB0510E59A;
	Tue,  3 Feb 2026 08:40:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HlGbm9p1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91D210E59A;
 Tue,  3 Feb 2026 08:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770108047; x=1801644047;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ubsw+PSJb+RlskMXf0/gxspMZc1ghgX5+IIyvlvX2TM=;
 b=HlGbm9p16YUbQ24nTXio2BRmWXa+yOJVznT3fe7JbMx/wNkHoZj/c6ok
 DIfqflWU6lotDI7g2Ays3z5iUgMfG3DA5SvLU0IDe4PDNtgCGT70oD3YV
 G9ylFOxcXrzxMvAld3rClg8wg/EHCZW8wRHTNTiTzHQN8Ea7DLoKw0xM1
 XqTDAfHn8tKUEtcRr4BZiINU/GCr6Qsc0JRuN6O/6oNwA3HIoLytBUWu6
 Aa55z7LWR5gXeXBpWSzNdXlQ0QKv9E0wdysPyRwPVeYJe7w1K23PtT2nr
 4C2WVjYTLBXEaOax5wFngR+ak6lb+vaKYREZ0/fpgYSMgogk9ePrXfIBp g==;
X-CSE-ConnectionGUID: tC/HMzVaSi6BtG27nS/BFA==
X-CSE-MsgGUID: olD2YCy8TGiNPJ87binkaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="88849391"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="88849391"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 00:40:44 -0800
X-CSE-ConnectionGUID: HIL1MSfJTdSQB1nYcDjV+A==
X-CSE-MsgGUID: ZmFM6zpgQ1efG2gDqf1x5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209794590"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 00:40:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 00:40:37 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 00:40:37 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 00:40:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LuWhpVwXhoMjFItUzOZgNTSlopnlHdzTyKqlsIrAgkv4n39t+cFywGMyItt3y0iXuhj79nth1wUTTC4L0oJozRLWe29YJ+lTbzqaZAgNIp35pT+C5QcLLJ8dOHvr/oNLLqSTEyaLcQbiW+rpdGu4T1r5kjMgvvbHWu9FTDViXLYlP2FLWGdI9iLd8e6g5sS/wNZdHLW8FXtjHqdYvDlVCaogS30RUQUGY7P1gzbOC1PxeSKR+YaNySMB6MhBAzcPioLupdAHbL7e371tS7P4dwyOYNR4ZgJ9VyUiq6v+hCrCeHgrM/OlvoM7vmGeuExdt961dpPZ4++fWEmmEUp6Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZiaQIytlL9ubc4UaEA5ejd8gei9aAeoYTMreoVVrvUw=;
 b=SWFy7UlKx8FhTXEgOE/tGxz3WIQq7dR0pidFmwBk6GTgmpooYd3fws+XlgJlS1/g8Id6wkcYGkurOaJcPSmjcOqCDkcpOvVJ5gfN2cGValbOefnJ76h3S8Qd1fsJHuf9/VAqR81sgIP6VcO4R8fOmDM8SeoVfkfZntejKIxDVivqILov61bVrLgXW9nLGZQM3YN0ufXZ+9VQruZrirJRlucrXUn54mZgDivr8ImIq1so08l3I8t/2XADwlNYH9QEpFlrPGM5fd8WLoQz/PUPogQYBJXMeTuywVdSTo6qT28vj3fSKwFRSNF8/FWYfrksiSoJdyF8EZsc20koE9cEgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV1PR11MB8849.namprd11.prod.outlook.com
 (2603:10b6:408:2b3::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 08:40:34 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Tue, 3 Feb 2026
 08:40:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
 lt_phy_state compare
Thread-Topic: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
 lt_phy_state compare
Thread-Index: AQHclLaqJ/LFo2fVVEGfCq99NcR6QLVwo/WAgAADN1A=
Date: Tue, 3 Feb 2026 08:40:33 +0000
Message-ID: <DM3PPF208195D8DDE068284324584CE5BA3E39BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203024141.1549517-1-suraj.kandpal@intel.com>
 <aYGxCTupSRGPp4jH@ideak-desk.lan>
In-Reply-To: <aYGxCTupSRGPp4jH@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV1PR11MB8849:EE_
x-ms-office365-filtering-correlation-id: f638111a-3426-4fea-e02b-08de62ffe572
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?lJoXQky6/66RyPtKd+8ejdyJDAdyVxQxGecg49T+trNI8qLJDJo01ZrO6GSt?=
 =?us-ascii?Q?aj48OuYDdux/pxSjkcKQL0p64IYG5FKRHkAhiv2w+cdHqOuUCcfSXNCESu84?=
 =?us-ascii?Q?kRRiGK4gHZvvfDUqRIOWGb1Hbjd82J8ehVcClBOKnZ5kAqSGe6nZ6hbXRpbL?=
 =?us-ascii?Q?W85BtaphsrxILd69ZGDh3tAzRtXO+SWsDZD/a9MNFsNgIh9ymaoIDX7s6I3m?=
 =?us-ascii?Q?XMrrGeMpBuLJkcvLYZfu1FlvxAp9hp0CfKBgDn33f9wdoVgXpzf1fztEcCrg?=
 =?us-ascii?Q?2q7lRRVA7w6YbgjrtHd17EDObNeBjUWcJ+hf45I/I5JyY6NS/locNqr93HsQ?=
 =?us-ascii?Q?gug5zQyJobmX3u82685Su61ZPLVg52vxPy/bNxacBPbsvr1/xw0CmDLn5QLR?=
 =?us-ascii?Q?jvOFkg+2jfq/BvTvawcxyrpOKpnpdLE2zZ52PoBO2fd3jjhiyRllXoPO90Vj?=
 =?us-ascii?Q?3BCrTkDh/r5WeNJRP1Xvd/K//3C5Ne+j/nEhw/KnMthFhu1qrBu1wOL7WEKG?=
 =?us-ascii?Q?naG2Taln/sfN4ZOJ1DUrHP35/ny+C3Luz0yYSuh81RD7PiPV7PjpozjYNgyM?=
 =?us-ascii?Q?gdY9z//zJrr5FeJVhPejtzOSRMU/9x9XLj+NJ7PTn+bQ48oh9GYEwqZRax/+?=
 =?us-ascii?Q?jFWTkivOaBljjZpFPL8O2eLVxnv60HAGDDE2dBPQyizsNyleIHjHX6hbIKkL?=
 =?us-ascii?Q?aJ286m4nwB6kYsjS44lXBRdepxust2mVqVY6sGDB9/GMvPZ7tgLuF1JgSFSv?=
 =?us-ascii?Q?OBOXnL/83H/YndEvzjDu2KTYAFR0k2ABoBiA3UtaSgy8ot/HEKk9OU+KCH7u?=
 =?us-ascii?Q?GMXCkrRLcXl6TZ6XHonxaGRdcxgBPByUSvwmSf1NscOFQpIDnar5GGT/ve4o?=
 =?us-ascii?Q?vNaRNGO+2K+MdWMC8ZKY0eVCEVlk6HsYCZMq3cncJNnsgBD5u02jHD24YMoY?=
 =?us-ascii?Q?quD9NUNOzO9mwYWWCOmOGhWrhrFasJUAt2S4f789O7sDBo5VOl5DKtvqfEgQ?=
 =?us-ascii?Q?AEJNVSPiJ+k7KPZ4/IoXiDEfw1A+4r9+2aaNc0ZPLuBp3iQ27slOeGWtcLV9?=
 =?us-ascii?Q?CcjELXaYQmBNnHMTNZj4evPbgTwst4UoNkHxK1KM7+iB8G1EHKb9AkAfVNmF?=
 =?us-ascii?Q?m1v0lBT51h2ddOBuEeLAOib1G2qDVIAVQh2gpDQwRU++o9/Q9Tej3mRsqNUa?=
 =?us-ascii?Q?S2UJZv24Uw54mMdGOpRk9lfyzgQC1WMLOJEEXhx0+qxit3quZgrxibiuXWvx?=
 =?us-ascii?Q?OiaMimN265JZZhmVTJTkJm1I/uE5VdbDUS+G0wFdJTW74fwKDvoT5KghqG+G?=
 =?us-ascii?Q?c2qBWY18yji06vl07x1VYlzKJxejNSdxMa4JpKZdPTm5QdAN4Vsw40rBal6j?=
 =?us-ascii?Q?x3Np+U2jbCFVQvoSxG5H+ElpgsutZBMLnsMZ9NEvNBWiRNTy1msXjzLsmjXe?=
 =?us-ascii?Q?+t1mfGdeq/SVFxlRMmtYQF5KsdlGgF1GmpJz4c0yOcPwr5Q56SqLxnx0jkni?=
 =?us-ascii?Q?/dxcs7/dVpCuewj0kFGSQBBoqgOQCG0Ox84eB5MNJ1EJGMJG2b5KyrF1I5Ig?=
 =?us-ascii?Q?ycbNW+8WgnHRdxaAW/GWKeEt4Ee1y5VRYzXFrrF7G6SLrWVgXyy1hg07gGEN?=
 =?us-ascii?Q?rF65DjZBbskQk4ZViaA9zRA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o8UuU5H6wzgms+Qou02pI37YLiMP9pJwbJMEAE90aG0uBdeG9CvRTDnx+pTj?=
 =?us-ascii?Q?/Y9a7Dv2bGLAKGGo/FzOeO4xd2z8t9tmXPQ/jdws41uCKWqlA0JTYS4OEAyz?=
 =?us-ascii?Q?Jrn8iYTBtR+k+Wp4D78M2vFQXJPta1t1bXkWXvut97EyaCu1vCVXwDKPJD7G?=
 =?us-ascii?Q?UiJSLzxIX27UCBCLOl/mrD/QsJBhD5Dogd63CnaI2HzOkEM9yLRnYEmGNdw4?=
 =?us-ascii?Q?kraZNm2Y8tNPm84PRQAlJ+wzJzctsNpN1GBaxFUaXzn3Bg6WuTwVS8XST/fW?=
 =?us-ascii?Q?v2weK5FokGCHmEcYzRNxyzROLIji6VAu6l4olZklp8ZAfGBmTud7ivpr2o0M?=
 =?us-ascii?Q?Xv8ljg9FeIYh0hJ/eeIxGhqFxNggNWigW/w8WmH3yxLr/sa+Is9SYJ3dAJ8F?=
 =?us-ascii?Q?uPQgTtdfYoeCAIQUO5KpoKtRTG8FDEWkmob6hGUM4NxtsMPsXEYES7Eq3/25?=
 =?us-ascii?Q?NiOkkbQit77uVLtAColCfRe5rYFpDv9jtotkWKdQsbmnrjPwkSHyJjG+6Ei1?=
 =?us-ascii?Q?AHN1GfuJyqHwUXMYVuA2/aM51kMF6qA8YeZCD1P84pcDHSApDkezN2/M5ZVK?=
 =?us-ascii?Q?ZoAqEfvLTLOBlZT5yDX2dPnD5nlZK8i1EGlk8lexlCIVRSVgpprNw3cPJpiY?=
 =?us-ascii?Q?SZwoxz0p1TFYO0EhVJhN4jF6vOtKa8zaVPvQQfZMOXWy8VUgmKKsCgzsxCIx?=
 =?us-ascii?Q?1aePUUFTeGemeWw8ndBW03WS/KhZ87emd0AAF36aN7Ug1+cXiAXshbpzn1Na?=
 =?us-ascii?Q?Fg+Vomb1+PFxcbigS48ujkpguyyXPtUTGVXmhbqXk8XpBZcYPz8N1u23m6ms?=
 =?us-ascii?Q?H4uCVdFS7hx03dyJTGYJg1C0fkhTGJy9xR6OOk5hlUiqhxT87Tji2hr5wwUW?=
 =?us-ascii?Q?4R8iFi9GN6qX42OYs5E3sRB6GdksvJdrUCDA6mk7w58qOEti1f872vR2FALZ?=
 =?us-ascii?Q?D6N7vtRp/WSYduBtvuEh5CWg53zUJTlqMRnitNYHksKl1YJ9zz2I2Y73T34i?=
 =?us-ascii?Q?N8pQMLWnYsUpusYorRw2/lr3qil/pLBcqxNXaG3b17Uh7Yh1wkRJW9dqPPNE?=
 =?us-ascii?Q?mBkB9tv10L9PKgoOgiBRqXMRhPFqSX3WhU7Q4hrKCg4YHPi+i95NRvG2ul0V?=
 =?us-ascii?Q?8gsSEvrK+FFBSIX9PLNaynD0i7IzGCMVCVfuBfdDNAX8hAiXxIUajEHksycg?=
 =?us-ascii?Q?EvG8WJSee7CEQ8nYDtXVlFSnQE/T9GxKNk8McfqmXynBQfUFy231Npywr/hv?=
 =?us-ascii?Q?bs7h9B0dUEGfWPKogPgfqaQhrJkKBbihs3K2hEyJQwSNdAT6MlgrZM6o3iG7?=
 =?us-ascii?Q?fRfIdwubW8VqlIfzYk2Lw1EIZfbddlQ3HvOJhNB2kI/8ndV0ZnL+Tckxq7A9?=
 =?us-ascii?Q?u9JgrExfu4LGKzoGIBD8clpxQiv6pfXSBJ7jot0nuUqd8PmlY4u3DftvGaQb?=
 =?us-ascii?Q?iO2yqT3aTjP/7us8i4FjiMfzPkjZ3Ta0iLWz06y/cv+zFwHWystISOh9/kHc?=
 =?us-ascii?Q?KLve0rxWZzcgZ+fBSf5HJexzxX5wBUS5foe1nWtaKLyT5c4XEOQRB8Akulym?=
 =?us-ascii?Q?axedZ3HDNeS51mQuNPUMwgTUFRdhFIpqsYeo6HvcV+xecm5vTz51J5xXIlS4?=
 =?us-ascii?Q?Y7OcA6s/NIbG+utskBnYrJl/Sc1k8zhXtPt99P7MXsP+1Alr/Lx3EbsY+OR0?=
 =?us-ascii?Q?1YD9oo/+24A7G8dH+moeKx6JKynyn8RnUDtODJqync5rE7PL5Toh9P4GnA0c?=
 =?us-ascii?Q?y2WGbNF3UQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f638111a-3426-4fea-e02b-08de62ffe572
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2026 08:40:33.8334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rpDh7vagiy9+6zQb29ffmIJob4HThnzLOb7ercG5DJgCeeCj7ZETG/51IyrZaeUVfG8du35JeOP4lVXTvmB1qQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8849
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 39E27D64EC
X-Rspamd-Action: no action

> Subject: Re: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
> lt_phy_state compare
>=20
> On Tue, Feb 03, 2026 at 08:11:41AM +0530, Suraj Kandpal wrote:
> > TBT PHY is enablement/disablement is handled by its own TBT module.
> > We do not play a big part in it's state management that being take
> > care by it's own TBT modeule. With that in mind comparing the state
> > would be wrong since we really don't touch it.
> > Simple return true when we are in tbt mode.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index 04f63bdd0b87..27ad8407606b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -2158,6 +2158,9 @@ bool
> >  intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state =
*a,
> >  				  const struct intel_lt_phy_pll_state *b)  {
> > +	if (a->tbt_mode || b->tbt_mode)
> > +		return true;
>=20
> It is a relevant state whether the PHY is in TBT mode or in a non-TBT mod=
e,
> even if the PHY is programmed by the TBT HW block in TBT mode. So it's no=
t ok
> to ignore a difference in this state. Please provide the actual context f=
or why
> the change was added.

Bspec : 74492
We do not write the PLL registers when it comes to TBT Mode that is done by=
 the TBT dock.
Since the VDR register are shadow registers our shadow registers will never=
 have those values. Which
Means we will always have a state mismatch.
This has always been the case since SNPS PHY.
Check intel_cx0pll_compare_hw_state int intel_cx0_phy.c too

Regards,
Suraj Kandpal

>=20
> > +
> >  	/*
> >  	 * With LT PHY values other than VDR0_CONFIG and VDR2_CONFIG are
> >  	 * unreliable. They cannot always be read back since internally
> > --
> > 2.34.1
> >
