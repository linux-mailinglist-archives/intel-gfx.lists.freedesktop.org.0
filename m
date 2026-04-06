Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE1pBPMK1Gk1qQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:35:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF913A6A8A
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:35:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 218B110E297;
	Mon,  6 Apr 2026 19:35:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rf29k6B/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1CB610E02C;
 Mon,  6 Apr 2026 19:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775504111; x=1807040111;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=84pStxdc1LLQLKoFkMQKTBML74Q29esaKUeX4tQF7lI=;
 b=Rf29k6B/OnyC+9H5TuvnEvwY2AY9eFRVLTa2pFCcDo2a3ec3jWEOTSW2
 2w8WEiC7JWSZUhDw3jay3QY1w+FagP3/nv9k3peCs+Q9ef9+3or4t1zEX
 QzJqbvy7gu1R2YImY96UMSLES8wlvKL69k7yjKzuK+B57g6i3hj0NKc4s
 +VwsNvfVaydEYE7syQxkXyOHpG3dMEfSx1iAWXxCpnGrz9giIWQs4FxRt
 iAoQueU+Z/mOs09p00GF6cLBLM8PvCfJ9nbsTbeio/hJ0DwRzTRxcd0AV
 jCgm2Kac+aAahQp0cVrBJ10VoEEPPeBWuRaA2LWOcm+GhAh0xOw19+5x4 w==;
X-CSE-ConnectionGUID: /ecLXbQNR5i1C/UoyWJ6lQ==
X-CSE-MsgGUID: RvGSm9nPS96qHm8W4mIyNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87914840"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="87914840"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:35:11 -0700
X-CSE-ConnectionGUID: FvfMwYZ9TfCblUPstiLa4Q==
X-CSE-MsgGUID: 3PZ2JYhoRAe4BjI9rkKuVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="223164341"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:35:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:35:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 12:35:09 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:35:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VNzY8jNdnc9JFf6Ok+uY9uTax64x7yDMCZoLIB/g97eSH+/VDWRZ36XhDuYRpamtVZQxJWElvLvTYK9nFwFMYGNF9WIPqac5M31znTBmhC0BZsOfWj8aKJSX9WXES/nPU0FU9z2x2NyVzfphsOSlnEPE5TkxqKYCn4H8x7eP6cb4XfUmei7QhXouL9DHp2y5fqYIZisx/KayobNF7fXWga/A0rAznogRkM3vbO7Sm40BdxQP2W0lKIgywBelQ66PPVlWTgMDjIJ7SzRo3xIKIn6udOUL0lGstkpeqC1MyS4geybwhwOTY8Kjo+sIzeDKWzCae7oaXOndAG9iFAAI0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JjriPko5FF1Gk/CDk/YBGOdDO0XjKejC2xtSNZhYW8g=;
 b=JUOOH0wQ/Zx0Eb1K1EZnnqOVEvjqNsq2zyvEiAfBYlRMJ7foBG51dxtAL+dlQ2vQFgBRHSVeeBHybBQCDBr2V+My5mts3/Vk7LBqkQ1kFAlGSTfDbVtMXfsrX69x8wSjBYyIn2xIlE/3nspSnb+JrEb7YmIXE9x2QXFcjnN0QusgkJvfwp8sbz89JtnG03HWnJ6eBfiJIpYS7o6iSV6VyNYysFKM5U9FWkaQr7jS5GIruSneuifJoLJy6/1PvZo9risrmsvugNd9ia99xNW/a82fS1CSdSsgua4rnQQGAmxFtCzToul+5ZXFOBKQq2Kn9uynPl0EVq+Stc1K0wKRrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LVXPR11MB9706.namprd11.prod.outlook.com (2603:10b6:408:388::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Mon, 6 Apr
 2026 19:35:07 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 19:35:07 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 04/12] drm/i915/cmtg: program VRR registers of CMTG
Thread-Topic: [PATCH v3 04/12] drm/i915/cmtg: program VRR registers of CMTG
Thread-Index: AQHcswMAq0cswOBvDUybiq+2/iDj2LXSkg4Q
Date: Mon, 6 Apr 2026 19:35:07 +0000
Message-ID: <DM4PR11MB6360B4BAFDA3AD0E6DADC176F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-5-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-5-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LVXPR11MB9706:EE_
x-ms-office365-filtering-correlation-id: 3023c064-7e69-4768-d8b4-08de94139c10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: ljKD5R/0erZPXSCWyhudSLT8WQQMvY8QihEHXkH6hjErwvnogXUAJux7ZR6PvTYoFfrGro2xVdMNDx/oDffPPx3+mh0nQmSVU7Hygn5IcSxvubVMktvUcEZqenVRXQIEthYA94adf0L7mzj8wrMhnH2HOCdn4Ks0OTHn28ONwu9AQ1dQ1cP7uuhcJ8bhzn81lLGosqwx3TymGHdfsf8YST8Hkc7s8WzvNo4293TT+9R9v9lfojSaOsn53vu5JX9v7e0D7yXHDCj15z/S20QTrHQ6IzQYheXP+et5N83+LBp+yWBqGIC0wXVn69vc2kVWke48EXei8EJMUUsF68lgemUWZya0I3IzHpbqpBtogse/clmb4movggdSI2yW0icPNSuvI60DkESHvvChT6Z4laAs2aPTRrUJUO+YxD7MvmOBHCkNSeYFHkNuJ/71TCWjnc5NkmcrU6XZeUtPJ3LNtcvEm0uHKEjfPoeS1sXNKxgiBkjnlZCZdrnXbNzRRcRMcaM+lfY6nSxivqQ+gJlCTLkUWI29ZT0qRrbG72i2zm6pFXbsWA8QxL1guD5dWddmqSvHQsL19is32NgbTItFta7lvBPntzsvRQ++zyYfxUjTrF5w7gSO/PXUP7hlhANOjUhoUDVHExbZFrbmrXznbwAROmUiq5bWRbfXKWB0WjhTYBzgt1qWHUN2LZ4wEOBgHFxv2S8oQD1jx43SgUF4MstYJpF0J7gKj0A1wur4lqxLm82LSEGni3nLH9ac0MiXTR4+8MM0Err/k2Xean9w96WLvG2wN9Hy2UREUuGm3Hc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XcKsEFWptpU69gpgQASLjYendH/cJ8ulR6XPn3URUN2u1QurVT+QHOgi07uQ?=
 =?us-ascii?Q?GCwIjYhVyluSS0Zbb3OS4jbO5+H7TpmS9BXX5fTThAycYRnLHPK2hKoKnxTw?=
 =?us-ascii?Q?DCdGSqauORg6fdhZy6v8FtGzMZZ6gsBjiKkScV41+wM7pQjdRzjDXwrjaL8U?=
 =?us-ascii?Q?36M4KzUKE5A0WFXavJnWwo8Z7brcM6tFrYg5MJJbYxrs6KKuQT6yiXkogMm8?=
 =?us-ascii?Q?jnQt1xvjT983vNpNQGH7UIP2qtzihmWPyrRRyru32DUIdUiInL2ADBlnXPD4?=
 =?us-ascii?Q?N8sxM8kswznBXpeznHobexFOEncT2jSHAkiefz7FvHMznyIlF80sTe90vpiT?=
 =?us-ascii?Q?eUFtG9zcIW8XKstYN9J+cxwh5Ytf+HSuetati1DpvIFJnR+bJ1Nh9ah9Lzh9?=
 =?us-ascii?Q?KTdWBZJgzOJiweChjJVqmch0WeyvV6K+a5iuul9Ah/Hf3eb08zNYdLXaEiOg?=
 =?us-ascii?Q?Izt0V1DgUz7rdnLFckf5NskBGvjmgYVv4EpXeLMip/mBftkVngY6fJwUxL/o?=
 =?us-ascii?Q?Fd3mx0YQ8Y5/VIE2OaUf1ZkuX/PXQIuRycf1vwopi94FYtsoCp/pA8LS2Wqh?=
 =?us-ascii?Q?RxVG/wiaAVwO42kLPLKYMkQ4AZc/HakNZF5miBrkQ273nAGYiL2Yn1hJo20s?=
 =?us-ascii?Q?3tmIAXfa7c/vSuNMT9RrkmEe4PFSm+asCU6YphV2zhhh846aVzmpOOcWRZlj?=
 =?us-ascii?Q?eHFIlqmRr6hNGjWmkAfBV6UagPozI+fLdFLoB3CtXvIDH/LB9p4e+nZ6cnkL?=
 =?us-ascii?Q?1YQ6kOtDsVoknGPShbH6WnSy3si4IeJ6VJhMJ67tvOYyzbCY8MSBgs0AwzMR?=
 =?us-ascii?Q?HhZQW8MjR0T5Pk6ZTc5QlGotczlZnGQfTyVuQQiSiH0B6WlVPIUb3m0QqAmc?=
 =?us-ascii?Q?jhtrdzVGN33Z5UcCFSMRNEBqzTGg/aCYG4TipyRvYQF85d9P0gudJC3HDxJ6?=
 =?us-ascii?Q?EIEi1WOH5O+gJrn+SfaNKzOYALhMqH2MzCavFVKkafd1FkZnanCXAgKqrrMg?=
 =?us-ascii?Q?kT3X/u02OHHSSJ4XLjbsCChYCQaokmPChmo+0fkG7WTjaWNZJuwxcZRwCqLq?=
 =?us-ascii?Q?ZD/NJZd+ZslFxRUFU9A9hQdZ9P6iNY50V/Lnlg2dSBTauuq2F9Z2XfKg+xLM?=
 =?us-ascii?Q?NyPWeV+Eb2m1EmVqEZZpG/TYvouF/jvnb0kGPTiDwtHNW/RYqpyJ5NNISJny?=
 =?us-ascii?Q?ub6KTFKdid3NyjgI9xUV+D4rsOicXiAjelD3V4T9og5cFpcUG4sBA30UpifS?=
 =?us-ascii?Q?HhTmE8nFxjv15iqDUDCB3xzthabcbk/RsDLaXPMra49fcTyheYkwH7MYAVQ0?=
 =?us-ascii?Q?tVabbCX/wScfYXoeXJFjaUDCwszF8dXbsPMQ+0wIsdAMlU1GP/Ic3yMH8T2/?=
 =?us-ascii?Q?14ql1BKiy25sg+VmUWDjbJcXin0XecV/tuPvrphX3hurARIGsF5RfioncpTU?=
 =?us-ascii?Q?EKbN6kJG9j2WOOjI2DGe83+hR1SwAgeOSUKyPLdGojYwiZc0hCZ73ybESEV1?=
 =?us-ascii?Q?Pk9pqL+2zccDthB6dVEJEBxUYSebkIx7KHYKz3IVhT7h/I4Ao7v2ht3EcCnN?=
 =?us-ascii?Q?q0fAhE0UELxa8C1FIPn4XJJy88GSJofgvZ6KgzE9y0GVXqtxmRXtr1KrKNwK?=
 =?us-ascii?Q?F36RmQ3fek5/Wm02di6WA2w15u9nxHsijcMCxC48rbqhtdoLLF/XfMJ5Yy0y?=
 =?us-ascii?Q?eTKDXGDW8uEAWv4jF5M8upTyblDmxzKDARpapbpmRVeR3Mau9ks7EcqS/IcC?=
 =?us-ascii?Q?tRPd33fj3Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: m/cwkkbqIvAuhjNuayptTOmkGZGcKOoAr0n6yb7czqlqePXDcZF/pWtiaab4etjvRp3auEnhDH3ewQ/0V0Chp+hKAB4dyQoy+RrHQ3Fp5Y8aiTthLGefM5eFE9eDL6ynWV6WP5giqY/R6L6Kzt+Q6/CNZoF83n/zKRrjWOFqjOyDBELRwMAlbHx1TP/RKyiHMuH+bQNqlgCJYCt3COw1GvGYMt9/I1HhC1B7s1P4A6PXV2yihsHgkBn4DG12GegNjKC5r/mcujN3tikvWTgWSrzKkRj4eh5cNRWirlLM1v9y3QsBZy+kgSqN+LNxmpEOJlq619en1rDnWFwcz3nUqw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3023c064-7e69-4768-d8b4-08de94139c10
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 19:35:07.6613 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oXUMV7blZCYjkJ1Lokb4PO0bF3EWEW8zuD5b9JPM6oz9F3hn2NtqyZZlBBHvFw0MzizVqfgZx/6TAYd9JmZ7Hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LVXPR11MB9706
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,intel.com:dkim,intel.com:email];
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
X-Rspamd-Queue-Id: 2BF913A6A8A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 04/12] drm/i915/cmtg: program VRR registers of CMTG
>=20
> Program the VRR registers of CMTG, as the VRR timing generator will alway=
s be
> enabled for NVL.
>=20
> v2: Use sw state instead of reading from hardware. [Jani]
> v3: Program cmtg vrr control and timing registers along with vrr transcod=
er
> registers.

Change Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 33 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 ++
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  5 +++
>  drivers/gpu/drm/i915/display/intel_vrr.c      |  5 +++
>  4 files changed, 45 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index e0f12925f5c2..038927b8721b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -16,6 +16,7 @@
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_vrr_regs.h"
>=20
>  /**
>   * DOC: Common Primary Timing Generator (CMTG) @@ -269,3 +270,35 @@
> void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bo=
ol lrr)
>  	intel_de_write(display,
> TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
>  		       crtc_state->set_context_latency);  }
> +
> +void intel_cmtg_set_vrr_timings(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	intel_de_write(display, TRANS_VRR_VMIN_CMTG(cpu_transcoder),
> crtc_state->vrr.vmin);
> +	intel_de_write(display, TRANS_VRR_VMAX_CMTG(cpu_transcoder),
> crtc_state->vrr.vmax);
> +	intel_de_write(display, TRANS_VRR_FLIPLINE_CMTG(cpu_transcoder),
> +crtc_state->vrr.flipline); }
> +
> +void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 vrr_ctl;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	vrr_ctl =3D VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN |
> +		  XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state-
> >vrr.guardband);
> +
> +	/* TODO: The code below may need to be revisited once CMRR is
> enabled */
> +	if (crtc_state->cmrr.enable)
> +		vrr_ctl |=3D VRR_CTL_CMRR_ENABLE;
> +
> +	intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder),
> vrr_ctl);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 53a44f505dd2..c92e3a62ff0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,8 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_set_vrr_timings(const struct intel_crtc_state
> +*crtc_state); void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state
> +*crtc_state);
>  void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, b=
ool lrr);
> void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)=
;  void
> intel_cmtg_sanitize(struct intel_display *display); diff --git
> a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 60714a2080c7..3e94151e4daf 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -29,4 +29,9 @@
>=20
>  #define TRANS_SET_CTX_LATENCY_CMTG(trans)	_MMIO(0x6F07C +
> (trans) * 0x100)
>=20
> +#define TRANS_VRR_CTL_CMTG(trans)	_MMIO(0x6F420 + (trans) *
> 0x100)
> +#define TRANS_VRR_VMAX_CMTG(trans)	_MMIO(0x6F424 + (trans) *
> 0x100)
> +#define TRANS_VRR_VMIN_CMTG(trans)	_MMIO(0x6F434 + (trans) *
> 0x100)
> +#define TRANS_VRR_FLIPLINE_CMTG(trans)	_MMIO(0x6F438 + (trans) *
> 0x100)
> +
>  #endif /* __INTEL_CMTG_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 8a957804cb97..0242ff0d04f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -7,6 +7,7 @@
>  #include <drm/drm_print.h>
>=20
>  #include "intel_alpm.h"
> +#include "intel_cmtg.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
> @@ -324,6 +325,8 @@ void intel_vrr_set_fixed_rr_timings(const struct
> intel_crtc_state *crtc_state)
>  		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
>  	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>  		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
> +
> +	intel_cmtg_set_vrr_timings(crtc_state);
>  }
>=20
>  static
> @@ -922,6 +925,8 @@ static void intel_vrr_tg_enable(const struct
> intel_crtc_state *crtc_state,
>  		vrr_ctl |=3D VRR_CTL_CMRR_ENABLE;
>=20
>  	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> vrr_ctl);
> +
> +	intel_cmtg_set_vrr_ctl(crtc_state);
>  }
>=20
>  static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc=
_state)
> --
> 2.29.0

