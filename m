Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPw0EEqqxGmD2AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:38:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2E432EDEE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:38:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D7ED10E8F5;
	Thu, 26 Mar 2026 03:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UJNE6g/X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B063210E24C;
 Thu, 26 Mar 2026 03:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774496325; x=1806032325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=32IalO3dIwqndWwtxpIVLnX3i+6QQ9IjxsZlfbUDOrU=;
 b=UJNE6g/XhalolS3/kWLdOipdpOHL0te2qOJarixGFwBZB5VmoxiXaBM2
 MtJBAZotl/VG9/U2nsfOeBeRdEftH48TU/1JF3muPtk3IUEiSFsVTBySD
 fyv4yEb4Au4MBf6vK6AWSMm+T0U/37kUtEofwZt660X92ZPUZ6mK3DBDf
 kqvv+XMr2mATSVVwZavYkxj5PR7D10tfjMpRahBIdSFpwCtrLsyKGsnAG
 +fN5TbVSb7VziE9Koy745Ssf0csi7a63/pMVKBec3ALo4pE5oM1JQ0oX4
 Me3lYc/Y/CxQQ4xkJbgY6GOcp5kIdlmRZ9nPxdTAsgdQpampX4/hFZaGo g==;
X-CSE-ConnectionGUID: ANK1oRXJT8G4YdkNT7rOoQ==
X-CSE-MsgGUID: LMlwwvk0QPKlj+V1bhnN+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="98166903"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="98166903"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:38:45 -0700
X-CSE-ConnectionGUID: 4bvexBkET56I/DC/GT610Q==
X-CSE-MsgGUID: KOdOj8VxRA6da/SUv1amEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="229332952"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:38:44 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:38:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 20:38:43 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.61) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:38:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bmt+GG8ZLr1nCdOoJ45v8TK4jlvi2EnX4OYWIsHzs4I9qpElLG6zd4BNND0Bajnn7ygT+xdWcOJsNOTciHijE/MjDnWKsNd8TRtClnBX+qsqGOR8nVl+/s1ufCSbRdSH+aX9YVgbjt6OsrHwPanGbkhRybAoJucm/FpffVRjcZTWhNGLREuf3Pbzgz4nwJYKgza/NIFKwqZ6SRPc1ZDkwa4qnE3/MM3NECTb5cnDhGDrLi5zfJcWLR/uHh3bPshnNJM0KPR6w3KOs7CIuj86tbVAQrYU7dms47MC5ulSK+8B77hMq6c/ytCeq1H/Ai32Qp0L2M8Fn7l7hn9DTGPQlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6zzaGHxzi0atk01A+e6TNs4wNT4mTlp26NpTEiJvaWE=;
 b=IfH0a/NEfjPZjc9OKsAKB4lAufPZHAab/VaguU/gciYSauuYrdEIAf0rthtamkEDhJiJjhLQzXQi811xdI2hNtC8+HGbfJ2vOcIVnFWyT/fbOo3cRYfm1SWoh2GnF4Hu09I7p0sT+D73j70LcICb2jMXvrh/9HL73xYsiZZt/inUeFcj50lKapqharZEQpn2yYKl2UdzvJs/nx3jPfQyv+h5VLKKq744DasbrnROEXbcMDjP8heJ8z/qb1511QOb1VbdkQX0QvmqUYy+IpYkRk6Qzd8k7w8FEhcVCDH6wiU8/sUfMxZFWvuLt7v1LdIhziSN1G+IZ2NuHvsBRZcxgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PR11MB8758.namprd11.prod.outlook.com
 (2603:10b6:0:47::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.13; Thu, 26 Mar
 2026 03:38:39 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 03:38:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 12/26] drm/i915/writeback: Define compute_config for
 writeback
Thread-Topic: [PATCH v3 12/26] drm/i915/writeback: Define compute_config for
 writeback
Thread-Index: AQHcvEe1GymszMvsAkWS8bmkNrtjUrW/Kr8AgAEAiWA=
Date: Thu, 26 Mar 2026 03:38:38 +0000
Message-ID: <DM3PPF208195D8D2DB0B7D4E009327361BDE356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-13-suraj.kandpal@intel.com>
 <acPS3EcAuOZYZDcH@intel.com>
In-Reply-To: <acPS3EcAuOZYZDcH@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PR11MB8758:EE_
x-ms-office365-filtering-correlation-id: 303535fc-142a-44bf-cfe3-08de8ae92b41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: WBooczi+/W8eO8X0nJFa0rc7aqLLW+8zZoTrj9aT7P/CPvpDQtxO6gGmtHxJSPORu0ZqFDC19MzZASW+w9oXuJWXdAoK7Cg5K1qlsNkZ3lW7lot2PSK7Lv/po2S83mFOdP5VSjzD9LugX1g2IGq8SY+Tz+xR/M3FKkOeqcy90ErVGp1KiyZ3OaHGN6UxsBCPPGRr3NKX41Kmd3UIPJSikuJxaao87bkWLl0iIX0oplAaSuTPpIxbY9LzNyysgrxiVThcErvD3jgOGAAsc0GSuXix4OaMN/e12NLgxXeV6grKIAeLtiU3N7Gdt6naHF+nLeykpQXLHjGrR9als7w2QJzb2Lm7hAFQuMR3+U5dfmuSfi6EH9juNdCMaYNynri3T9O34PY0vX7wm8zLzyD9hB4mIoJ2tih4oU6kKlCXjQ7t0IiTxj87r/J3OjfFteAocNmWKOurvMxmH1c0K0hfM4s768iPOOwueu4L8iL7dEqn3EqXd5ErR0Jy/CPko/pxDB7NXDkskglosFfwJGGxGs3kPTiwzMhF35/MBNY9Z4mKIda/Aa/O74i3YDuelZJoNt9WoAUpFSmj9eFlEzV9pCfCtEpxQVETmImtmxX+6DwfTfecSuJWE1jMfptbuc0ue1JAGAHF0qHtdafU2PxBbWZ1uPmpqTj3HbgAAomn2i1vWkR7OCgxkKEpzZOAh+D18jMEn2aeG+i0D5YrzZxW/zzkrR7jbMvPvcJy2TqCBhXJ8DY0bFg6L1X68z5kMGoauHWXdouqc3wYQH+Q89uoYeHhxvZ0ngo/5SfeMCma28U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?swf4tM23tDkQmq97B+RxIqH9kah+Oou12V3nkbQFMP8Iplk2a+IfCfCTPv?=
 =?iso-8859-1?Q?m2KSrqO2H+0nCwzgcMHe/9xGjWWMe5nXYdqWTK3vjDenumCFKuQ14egDjw?=
 =?iso-8859-1?Q?ROSDH2UNfKfd8puvHEylzyF6KKU3xtoC7CcbL6cvSp+xX7UK9igj4oN8fM?=
 =?iso-8859-1?Q?fBj6WwOTbYbxyvvnwS0K3lkntgk3bOsWYlwJUo8kv9pMZ70QdQiBFUgKEE?=
 =?iso-8859-1?Q?lqWQv5wjSQFWWnq5s0JBbRoFElLs8qIzLcYx/jTDdEPVW80yyqq4A9saNx?=
 =?iso-8859-1?Q?xc1FD6/uicVKaFsiq6T5+zkvq99WnRE3lhzHwqVyA+DcIGU/3xB59NErxX?=
 =?iso-8859-1?Q?dgeM2WHWJO0edL/aGoGfbMkNI8jCLk5k/IU/RGYoqRIF/0Oco+346kPL1X?=
 =?iso-8859-1?Q?9X2fBJCtRavOOu8bo3Ht3Yb5Y1TWx7CASr5IXb05vZ7cgEGFC2ibDOVnn0?=
 =?iso-8859-1?Q?2+IAMAEvs6JeNHwrmZe8gjrEgSC9qjYlcqpWiM5pw25IaFn4FoL836RP3B?=
 =?iso-8859-1?Q?DZ2dEgWrmL2Re6JxjVDhQyA21Xv3V5AlA6X3r2jusVjQNxDnn1D2vS4UGR?=
 =?iso-8859-1?Q?WIU+V7E4ttAfCikeDY3fyZWzBEfDAjOw8Hz3z0ixst7bC2kNdGEQE5LEyw?=
 =?iso-8859-1?Q?HeTStmp3ZAurBSEswUoqtR9lUoJcA+Vq9LW/LybRpIKNV5o69WGRR5Bn9K?=
 =?iso-8859-1?Q?xTr2xMAyu53KwDo0DcP3SrJhi2M5X24zO/LqYgZlfDBeiNneQGusIp3Mj2?=
 =?iso-8859-1?Q?8Lci1/XFYfF/rCkyCQ4MBiUF97PynjUQiipD2ynPdBtYMzbZ4PQ3JaUAM7?=
 =?iso-8859-1?Q?unV+rW4Qw3rMVDbbwNYnTPow0UFYgH/L+HEuSCvsxskjfp9TTLk0b60v/U?=
 =?iso-8859-1?Q?HNdD0AQpm78Tc5aKLuuU0EouOIiK5BY2/6JkZH1soppfyCabvZqDUofiAE?=
 =?iso-8859-1?Q?BCEVJ1PLbECuqYWHGxy0k49dMV5J3x3gE6w6ovGq6FDLRUSg34SIAcN95q?=
 =?iso-8859-1?Q?QzbcKKznNVpC9PufudvUwQhisJ/nnap1sG1DfGHFjJr3AjiukuOudWrI1c?=
 =?iso-8859-1?Q?twrlDVI/MvFkIJRATNOO9ihU5hGAfRHXb+wOkm6AgRb7OdYRC3RweW0Otn?=
 =?iso-8859-1?Q?fzwrJZowX74IsjuR6M3ECtEZhPcz0Zu3vjDrN60c2JCHxCjAR/jBF5/IzE?=
 =?iso-8859-1?Q?oxbNYL3TWdiJ1R/eXnFBEJTi1gsGnRtLKTXJxvg97iwokHrnTn198GelIT?=
 =?iso-8859-1?Q?M4qhX1ynTRJ6NDkHdvai1C324+MKyoz1xUX5qxdY37uWv2ohziOiWsutPw?=
 =?iso-8859-1?Q?9h5Hd9hddgvDjMWKPYdFycLQc0v6xOSPNeG2tK+8nc0Y/x/OfaaiAjKs52?=
 =?iso-8859-1?Q?JrX+9v5LpPdCQ1Jt3jt8AYA6c7WrOsYj51EjTL41fLQktqVxnLy9ON6ym+?=
 =?iso-8859-1?Q?nKP4JtW1gD//O+vauu+oZuEh/tiT57eoV3oyO+bOIz9vvkHsdEl9KT51zQ?=
 =?iso-8859-1?Q?CQowndDLMCOQzDew7v9stg9m92coUyS7OU095537wSOFTA08jpXc/lIdrR?=
 =?iso-8859-1?Q?J1t0yX2Q6oV0YDkGcPoJnRSCypHkz8r0vp3seqkPJ7Tv91+yk2lZ3I1CsH?=
 =?iso-8859-1?Q?4lTENDL+nfhtQuUGM4SrPK5Gd1EGNjr5r9aFnCWqOhsg2zgYChChnrM76u?=
 =?iso-8859-1?Q?WibsIPLvZaP8RCtBR71ufaz+zyRfvzAbKQDCy4DRvx8PqKC8isJQIVmxcv?=
 =?iso-8859-1?Q?fadqgS+qdZIYEh6Zd8H0/26Zaf0mWm6UdnXWVlx1A9MS/qmhwK/elPiUPX?=
 =?iso-8859-1?Q?8Ddy0R/9zw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: P2v65uG4gfK9hg5aIPiAzbISVG+uJTHxEDuNFmlnMQbUZIIgR0XIkbx/tpy1S4osTiuf3BEdWDui12bgsogY6cxLnVnDrL6VE//7UhB8JHTCmr+dnNdMVzVmLeawhuM5/702SOHLa+3WS66UZLhD8vB53zjXvmjc3OgoL5SRyEcmUe3Xq1oxoTD2KqhnPTkHAlyoGnpbn9f71jU/MC2pac7MfJs6upoDYR9jueqMZaoS/tlqoBsim/GcgiBFpalMInBfyhwV+xJ2P1gPmej6hzENXjWYRlXbJWog/0sbTgJ2pAanpkA/jy3jDX+VqKd+P3awD25Kw4K28JDZ3JNelg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 303535fc-142a-44bf-cfe3-08de8ae92b41
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 03:38:39.0409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rAG4LSFMGlzj7wUmFx2fgApf/CbfAUCfFZ+GSEG2WVKSuP/pw6iBzm6RytHiT4gAZDQB8yFluHnCqJb7atY5QQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8758
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 2B2E432EDEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 12/26] drm/i915/writeback: Define compute_config
> for writeback
>=20
> On Wed, Mar 25, 2026 at 04:37:30PM +0530, Suraj Kandpal wrote:
> > Define the compute config function where we assign the output_type and
> > add the transcoder that needs to be used. We currently assign one WD0
> > transcoder.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_writeback.c    | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c
> > b/drivers/gpu/drm/i915/display/intel_writeback.c
> > index 4a40fda639ca..b9350d97de09 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> > @@ -171,6 +171,25 @@ static const struct drm_connector_helper_funcs
> conn_helper_funcs =3D {
> >  	.cleanup_writeback_job =3D intel_writeback_cleanup_job,  };
> >
> > +static int
> > +intel_writeback_compute_config(struct intel_encoder *encoder,
> > +			       struct intel_crtc_state *pipe_config,
>=20
> 'crtc_state'

Sure will rename

>=20
> > +			       struct drm_connector_state *conn_state) {
> > +	struct intel_display *display =3D to_intel_display(encoder);
> > +
> > +	if (!conn_state->writeback_job)
> > +		return 0;
> > +
> > +	if (HAS_TRANSCODER(display, TRANSCODER_WD_0))
>=20
> If we get here and don't have the transcoder then the nothing makes sense
> anymore.

True will fix this

Regards,
Suraj Kandpal

>=20
> > +		pipe_config->cpu_transcoder =3D TRANSCODER_WD_0;
> > +
> > +	pipe_config->output_types |=3D BIT(INTEL_OUTPUT_WRITEBACK);
> > +	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > +
> > +	return 0;
> > +}
> > +
> >  static void
> >  intel_writeback_get_config(struct intel_encoder *encoder,
> >  			   struct intel_crtc_state *crtc_state) @@ -251,6
> +270,7 @@ int
> > intel_writeback_init(struct intel_display *display)
> >  	encoder->cloneable =3D 0;
> >  	encoder->get_config =3D intel_writeback_get_config;
> >  	encoder->get_hw_state =3D intel_writeback_get_hw_state;
> > +	encoder->compute_config =3D intel_writeback_compute_config;
> >
> >  	connector =3D &writeback_conn->connector;
> >  	ret =3D intel_writeback_connector_alloc(connector);
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
