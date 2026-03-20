Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENXoE5jHvWkrBgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 23:18:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1CA2E1AB1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 23:17:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41FAD10E02D;
	Fri, 20 Mar 2026 22:17:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JwwbPjVa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6962E10E02D;
 Fri, 20 Mar 2026 22:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774045076; x=1805581076;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O5/KobwFgO2RB8kKsqOsBuF8CC0NNVjwgwUNnPsRqb4=;
 b=JwwbPjVan31ZRfpUmmstERftWVxsWpdjafLZKN0M/UwtF8b22JvJ77mS
 319t7TNJ45BbWJKKrpPNHQ7BP0i7xQIlT1dSvlhTu1jiUfssFhsayWltq
 36nhkgKk9lxvjPqH5jWF97pGDmumkbGSiyntst8y+3iIOo3HhN1zGbA0f
 raW4E/7Z0q7gnfprH+rP9n0symVVhv2k/Rfe1wRF8PKqFvYAHpUuMIoSk
 Zo72+M5FMrXvOHBK60KQKPlHemIky5m4aVs/L0msDLM2PnhBsP7Fo/Mzz
 vJJNUddMDATWXz7uNaZJ8HS9XN+zBwpDf1kzDk8/ThUQyELlK7UsOz3t8 g==;
X-CSE-ConnectionGUID: Bm3dZKlmTCKbInnUurDvXw==
X-CSE-MsgGUID: +jQ4a2PLTs2kTnJT1r9iXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="75046647"
X-IronPort-AV: E=Sophos;i="6.23,132,1770624000"; d="scan'208";a="75046647"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 15:17:55 -0700
X-CSE-ConnectionGUID: GU9Dibo5SXiynX5CsjBoIw==
X-CSE-MsgGUID: CAl5ByI6RwOfgiMOjmiP8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,132,1770624000"; d="scan'208";a="228143775"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 15:17:55 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 15:17:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 15:17:54 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 15:17:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F0WXUxQ6r/+LGskNFo+BQVPnVGreVw+7gq9LYqu6UmRg/2b3iLGZQQd/hEskiOq1aGT+h0qZqOgLwj1+7x5UvL0lPnhDk3FxMUVCZEpMWAGdQntSMAdkJTwMVe8AFp9cHoiMco3Q1uxiEpUbWkNqZua4r3EVuBcBm2k9V9yigukb2lRN/fm2qRfHUr308+hJaWYMq41vp9ubJBz5458WHY01bJEFuqCMd/aMV8fbxctVrZ4sDrfuZsLdMuH0XVE7GQYUgh7++/2zCORyUWh4iZw/K46I6XnzZ0jU5suxvShq8wOhnOKdi4lBpd78Tgz4xrS1SJCxv0ljsiF1IcMtaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uMXREfkuN/y6gfZ6H02iWe3/0JMuZJ6ZOcjFCOph2DU=;
 b=kZGsKgaxyGoP2hXiJeIZ+CxmXI2mY4h7f2VHcRnHRJ+Gm9eRCwvyFXlsjiPDUdzUI/uS+WK4ldd97tajZBnNcGwy8+0Hjcwbi7/iGZf+RURLYfuvpLZr6fzmRrVjc3jn9/SiVWZhF4Iyhq/a9oorKuOSzsLy2Ar9sGET/NwhOSQcymtGbTHcSE1RdLtB5dOXVzI73/kmP7ODG0sTG2pnoW5Pm/RRMX16pq9O4rdyMCRG9DjkDX1Zwf/1FV8ofkZQgm5WraHhZrDj7RbmNyKoT9HNN6YdoFIaTs13EUtZiGWU+CS1I5ClwltrOUKt0UsJ5gNr8AaoHMzKgEclPr7QuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA3PR11MB9352.namprd11.prod.outlook.com (2603:10b6:208:575::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.14; Fri, 20 Mar
 2026 22:17:50 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 22:17:49 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing
 stream BW in atomic state
Thread-Topic: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing
 stream BW in atomic state
Thread-Index: AQHcuEwCUjLU2tChGUCnKMCH7JQobLW3THTQgAA2RICAAHrdQA==
Date: Fri, 20 Mar 2026 22:17:49 +0000
Message-ID: <DM4PR11MB6360D58A28A90753E1F6996AF44CA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260320092900.13210-1-imre.deak@intel.com>
 <DM4PR11MB63602830F5D63903389EF2DAF44CA@DM4PR11MB6360.namprd11.prod.outlook.com>
 <ab1f_WvJCZZRR5eK@ideak-desk.lan>
In-Reply-To: <ab1f_WvJCZZRR5eK@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA3PR11MB9352:EE_
x-ms-office365-filtering-correlation-id: fd6d25dd-7687-4cfb-41ed-08de86ce85cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003|7053199007|38070700021;
x-microsoft-antispam-message-info: A3RWtXs404gQFjo6z8pGj2Uv7PoLFrOU4QR2VT8ff69AjGRfos/Pj15U7YE2eJQToUr/8xJOJ2dyxzPVEwPu2NIVmOVgX3TmgfXWMlyBBJ7wiHcx0Ct6JS/2JcGmgjqsrcv3gEGfPxR9VcWIDmnP/c7UfJjtFfon2hfA+75JsHRw88p9Nc/9OFrvCjvAyr9oyquGBFDmcROJkBbBDlpL7m+Uc4Q2OedLbQtGT7XjTKWmvyYMhn4QYXE8zrFl3khlH8pmIkxNNQhBwm14opdOzqPFobtzqbNPrMXVl9C2aUgWttEX20xpWbpy82BW+2QDipZBTS7RoHexxVNbdiBxNZXVwfpVjngTmKgPYkeQhOPH59v9hKt1qhhyLLMcNwDx0Zr51iqX6DtvNTyFovCNtJTQY5JCt7G/wj+dY8h1StQFvQXNB4/3LebU4JZHenAr7MimCc3uCry4BPxOqqpvrAiYVHjdVXUIldeh4BXcxGCh1m8z4L5lQ9rJ2SPwIcPUtvBvMTueoURj/kr7L4dWBe1B21XvotkwOxzo79sCAfWy5MlpD5FRrFy18rmpPAC6ZZ7Gmd9aW6eQZsZ+smPOx7ceLSH4+iRbWBit0DeSRIHq30oqvB/ti6sSqoWCZWl9G7rOkRqqj3SPAhm5zQmzkMAmWIC245tP0+3DhsnfdsFXQETUN85VogvYPo73RUld6LZ7oBQaAC7zsvBpS2nUZvkW+sIEncb6ZC0Bi8xj7tdrtrJQjQf6wqBigxNFeEMYRdEuSddeE9IQsoS6qWAhUWjBDYpVSq/X4hO5VBMs0TM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ueZRfXHvtQ/dDRf37xQnl5VEw3xUKh5mUYlsJiRCojpx6UT5t6MBPTnBAG?=
 =?iso-8859-1?Q?5Eg38+RVjgNKZ9LKBBEQmw5HWXyp5NV6pf/0qvEDQGS2RFTNcHmZhMD7GP?=
 =?iso-8859-1?Q?hzcnIy6CojdvkEtodQMcLxnbXg+Nz4EAt01g4EZp7Lo2OvMLTAK2l0hPXu?=
 =?iso-8859-1?Q?Nvg+Sw/V7snmeRKNSZt1BgU/mzV5gVq67GAEXHEElLiIGj3GqpDp6r6IaO?=
 =?iso-8859-1?Q?9nC1SfQDjH9n6TCI0N6aI2iiCqUcrFhABGznxfd3qa+ZdMf4UU7HklXNjp?=
 =?iso-8859-1?Q?DdBVNFHa18o+NVtt7Yw9QkiaLH1PAd/iIw/Pc8zmOLymmegSo3l21WaVyq?=
 =?iso-8859-1?Q?snncsGUfm9axRHs3LAFM1G6sl/+yblRqzvZkJCVBgm0HOzw0ya3iPhzEjF?=
 =?iso-8859-1?Q?IToPynw/D2DXCXSAtN3J5MO2rXTA9c6BVo2mDKXoNKUTvgQtWsq3foGCUF?=
 =?iso-8859-1?Q?R96iAmiyNdd+bwsKo4gTes/+B18DFE57SegLM3DMqxAIOiQdu9oRv2k72K?=
 =?iso-8859-1?Q?kIZ3I0BXvexbbmHcMj0WReNmKKMAr0qZzkJPZwubbRsrJptudlGPTVKjb+?=
 =?iso-8859-1?Q?IKfE8PWrg9VoDA8dtSaQo451Gr3CzHIMIvMEKGK7nATk1ttfltdtXb0RLE?=
 =?iso-8859-1?Q?NsmA19Tvx0XHf1iwpEMuFIAXKpdc/FJlAf7gsSvj/SnWVq5w5RFbXBGO4E?=
 =?iso-8859-1?Q?e/SfgpiZMXPe8BbmMRRlE9CA1dA1BEO7B24swtZc7xfCUTONV8CLPdWPQ/?=
 =?iso-8859-1?Q?z5j4YtEl3duXAZunhQwpgTlTJNerwXBUSrx6uyIPWx2JqTrCwtptzv6vjF?=
 =?iso-8859-1?Q?+79lToMhxgLbwzZi8/RyQhQyIb2cR85mizyboGRnI98MHoSz/rgrOz+BL1?=
 =?iso-8859-1?Q?PydLQv5QVJxxFU0HTL6tUs0HLdrrYchp1FnHui+z5Ib437J9rmi9JbzKw3?=
 =?iso-8859-1?Q?oZoBLaRk5gnqjnWTkxeMVFhUs7tuNKAifzlK25ewxuijbfhPA1S9PjO55+?=
 =?iso-8859-1?Q?H9Z17CUuhu0YhA1CWDLSyKFGH792Jkth5e1bKhAyRAtVy+oPwl/BhuV2J4?=
 =?iso-8859-1?Q?x9+jIqm+DsW2i4CgPt/Jh7zYEs9GXW5miP0TWSIHfrWl1RElGOZafcC+px?=
 =?iso-8859-1?Q?MFn/TRQzNQDXM9PZyOVjYMqDIT4wtnHYSnGk9Ji0GIfrFJzlud7GD308dj?=
 =?iso-8859-1?Q?hVHB2Sa1749gNAgGUQhM3Z+MfojNRQ+6Cu26WRr/aZbNRVUkbTKNjoRrqd?=
 =?iso-8859-1?Q?xFbAXn1I3WbHswnQk7CLCUhM4J4WnjY3WWF/V7bKblALf/vH33/6JRZuKn?=
 =?iso-8859-1?Q?kHfxiA8RC77oKZlgOhSCkJFhQHeUFkT+UcAn2m1moCxu1uVjrQcc39qFtq?=
 =?iso-8859-1?Q?BvgHU4KGSbl26at99QXAdLoBVbcKr77aUEc+rtVyeoUGRuw3TL8pFyAYuL?=
 =?iso-8859-1?Q?nFhfdd8haI2E/34iZPwiurCA0xTSe845fXg34R1tho3TUwj8JJa4LyDVGy?=
 =?iso-8859-1?Q?Z3LjC/eO6Ixz8S5C+EPqrXyI1D7KewPeHMpnLGlja1oKtTx6se965TWKHz?=
 =?iso-8859-1?Q?hwJrCtnwpFj4XWfZJa3Azpmjnr0qm8eoFCcEELg9T2WXM7zQVH4gC5Ur7u?=
 =?iso-8859-1?Q?FJwABrGFGH0SSFo29n/hcoUZxlnRAFwrVxkKY1ZqiCCbo9L/REYUm4QAJE?=
 =?iso-8859-1?Q?Fi82jq1YaGT4Tnxe3RtUzFjCxY0YDXF0bAztIqu9gUf0ZxncPh8qDNeijR?=
 =?iso-8859-1?Q?Hmz9bPU6rf6k7qEXBpT95eZGeUYkxCUuIVRQbRw8aAY1hHKRqPqVN6k7Rd?=
 =?iso-8859-1?Q?Vi2guhN1AA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MSRJyL0Y/FCV8Falu147+xRRaLL73tgykFiCxcqWbgeXUWKU86JHVm32NLDD68PYOX5LNeHBotXkgJmEScgJ7+z4ZR6GyYAEuN1rCEvOPyh/NnFJUCKuxaTw02cBmZtNiaJKas5vNMhM003U+HITpt38k7CnXQskY+lkwwRZ8kQrzHI2K52mPGQHIQTv3sj/ZiCy2d45q/DDhNvj3t9RpQhvbp0Qi6FrPEPII506dPw9MLRWnw+cwj+ZMZMQd1fMt/Gr1UGesshRoeUjHI6IHzFWfzPsMMkOegRaj97DjNxpTfrAVBzVSunkNqeQRciMJPIq0jzBCYc8YsEALzwLuw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd6d25dd-7687-4cfb-41ed-08de86ce85cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 22:17:49.8836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hBHE2Y+vdO0/hh/H37ce26MwLua8YtSNg2XyhBT4RLT3KLok2tdTPHOh/+D7Fg2r7y7mqGLP5kdTNE1WQWF+eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9352
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AB1CA2E1AB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Friday, March 20, 2026 8:26 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Vill=
e Syrj=E4l=E4
> <ville.syrjala@linux.intel.com>; stable@vger.kernel.org
> Subject: Re: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing=
 stream
> BW in atomic state
>=20
> On Fri, Mar 20, 2026 at 01:42:58PM +0200, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Friday, March 20, 2026 2:59 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Cc: Shankar, Uma <uma.shankar@intel.com>; Ville Syrj=E4l=E4
> > > <ville.syrjala@linux.intel.com>; stable@vger.kernel.org
> > > Subject: [PATCH] drm/i915/dp_tunnel: Fix error handling when
> > > clearing stream BW in atomic state
> > >
> > > Clearing the DP tunnel stream BW in the atomic state involves
> > > getting the tunnel group state, which can fail. Handle the error acco=
rdingly.
> > >
> > > This fixes at least one issue where
> > > drm_dp_tunnel_atomic_set_stream_bw()
> > > failed to get the tunnel group state returning -EDEADLK, which wasn't=
 handled.
> > > This lead to the ctx->contended warn later in modeset_lock() while
> > > taking a WW mutex for another object in the same atomic state, and
> > > thus within the same already contended WW context.
> > >
> > > Moving intel_crtc_state_alloc() later would avoid freeing
> > > saved_state on the error path; this stable patch leaves that simplifi=
cation for a
> follow-up.
> > >
> > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: <stable@vger.kernel.org> # v6.9+
> > > Fixes: a4efae87ecb2 ("drm/i915/dp: Compute DP tunnel BW during
> > > encoder state
> > > computation")
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  8 +++++++-
> > >  .../gpu/drm/i915/display/intel_dp_tunnel.c    | 20 +++++++++++++----=
--
> > >  .../gpu/drm/i915/display/intel_dp_tunnel.h    | 11 ++++++----
> > >  3 files changed, 28 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index ee501009a251f..882db77c0bbcd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -4640,6 +4640,7 @@ intel_crtc_prepare_cleared_state(struct
> > > intel_atomic_state *state,
> > >  	struct intel_crtc_state *crtc_state =3D
> > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > >  	struct intel_crtc_state *saved_state;
> > > +	int err;
> > >
> > >  	saved_state =3D intel_crtc_state_alloc(crtc);
> > >  	if (!saved_state)
> > > @@ -4648,7 +4649,12 @@ intel_crtc_prepare_cleared_state(struct
> > > intel_atomic_state *state,
> > >  	/* free the old crtc_state->hw members */
> > >  	intel_crtc_free_hw_state(crtc_state);
> > >
> > > -	intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
> > > +	err =3D intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
> > > +	if (err) {
> > > +		kfree(saved_state);
> > > +
> > > +		return err;
> > > +	}
> > >
> > >  	/* FIXME: before the switch to atomic started, a new pipe_config wa=
s
> > >  	 * kzalloc'd. Code that depends on any field being zero should be
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > index 1fd1ac8d556d8..7363c98172971 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > @@ -659,19 +659,27 @@ int
> > > intel_dp_tunnel_atomic_compute_stream_bw(struct
> > > intel_atomic_state *state,
> > >   *
> > >   * Clear any DP tunnel stream BW requirement set by
> > >   * intel_dp_tunnel_atomic_compute_stream_bw().
> > > + *
> > > + * Returns 0 in case of success, a negative error code otherwise.
> > >   */
> > > -void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_stat=
e
> *state,
> > > -					    struct intel_crtc_state *crtc_state)
> > > +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state=
 *state,
> > > +					   struct intel_crtc_state *crtc_state)
> > >  {
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	int err;
> > >
> > >  	if (!crtc_state->dp_tunnel_ref.tunnel)
> > > -		return;
> > > +		return 0;
> > > +
> > > +	err =3D drm_dp_tunnel_atomic_set_stream_bw(&state->base,
> > > +						 crtc_state->dp_tunnel_ref.tunnel,
> > > +						 crtc->pipe, 0);
> > > +	if (err)
> > > +		return err;
> > >
> > > -	drm_dp_tunnel_atomic_set_stream_bw(&state->base,
> > > -					   crtc_state->dp_tunnel_ref.tunnel,
> > > -					   crtc->pipe, 0);
> > >  	drm_dp_tunnel_ref_put(&crtc_state->dp_tunnel_ref);
> >
> > Hi Imre,
> > Should we not drop reference even in case of failure, is this intention=
al ?
>=20
> Yes, the early return in case of an error, preserving the tunnel referenc=
e in the
> crtc state is intentional. The error here will make the whole commit fail=
 and the
> atomic state - within that the crtc state - being freed. That crtc state =
freeing will
> drop this reference, see intel_crtc_destroy_state().
>=20
> Aside: it wouldn't cause a functional problem to drop the reference as yo=
u suggest
> in case of the earlier error either - the related dropping of the referen=
ce in
> intel_crtc_destroy_state() described above would be skipped then. But I s=
till think
> the usual early return - as done in the patch - in case of an error is th=
e logically
> correct way.

Thanks for the explanation Imre, sounds good.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> >
> > Regards,
> > Uma Shankar
> >
> > > +
> > > +	return 0;
> > >  }
> > >
> > >  /**
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > > index 7f0f720e8dcad..10ab9eebcef69 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > > @@ -40,8 +40,8 @@ int
> > > intel_dp_tunnel_atomic_compute_stream_bw(struct
> > > intel_atomic_state *state,
> > >  					     struct intel_dp *intel_dp,
> > >  					     const struct intel_connector
> *connector,
> > >  					     struct intel_crtc_state *crtc_state); -
> void
> > > intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *sta=
te,
> > > -					    struct intel_crtc_state *crtc_state);
> > > +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state=
 *state,
> > > +					   struct intel_crtc_state *crtc_state);
> > >
> > >  int intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_st=
ate
> *state,
> > >  					      struct intel_crtc *crtc); @@ -88,9
> +88,12 @@
> > > intel_dp_tunnel_atomic_compute_stream_bw(struct
> > > intel_atomic_state *state,
> > >  	return 0;
> > >  }
> > >
> > > -static inline void
> > > +static inline int
> > >  intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *st=
ate,
> > > -				       struct intel_crtc_state *crtc_state) {}
> > > +				       struct intel_crtc_state *crtc_state) {
> > > +	return 0;
> > > +}
> > >
> > >  static inline int
> > >  intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state
> > > *state,
> > > --
> > > 2.49.1
> >
