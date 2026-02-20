Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id s+8VDKjNl2n48gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 03:57:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 447DF164519
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 03:57:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C2B10E34B;
	Fri, 20 Feb 2026 02:57:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ahXR+nwR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B76510E34B;
 Fri, 20 Feb 2026 02:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771556259; x=1803092259;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kn8lGbs/AIxn1FuPKwgxIb5Z1OFu0fNEnk5X9uNkp4Y=;
 b=ahXR+nwRxRmVHL12997PrUcLBRBNRXCkiKFiE2mDOb8M4EI3llydiByN
 cI1qjvTUaEyH0XdsQ3BnmV6BtX0nSuxygOd0xYRWiBVTTNBKi+69jcLLj
 0Q1a/Th68MR/2AUheyZpC5CLHcxJp/oM9abbsAe4Kz8JOq4swivZe/vKH
 Fiektex8oYIdQnmZi6uGEPoErZB7cPLAop8xIR3omzQ+95IyF9fdXuyFB
 Azm9dEq5unFZzMwat7X/HXt+VJlKMaqIEBIx+9y67XlnC4yt5AidoQsml
 qmD5d3jXdN44lgYBC5Iii/LPtacQ30oPOFWXtixU2prF0+B928+5//D02 Q==;
X-CSE-ConnectionGUID: 2ADNk4xJTOqLYF0xo1346g==
X-CSE-MsgGUID: XlAQwxUSSD6ezwdjeNOaBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="84108884"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="84108884"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 18:57:38 -0800
X-CSE-ConnectionGUID: b7M9JJh5TD2iAm1qn451Wg==
X-CSE-MsgGUID: d5IyIN3cREmGMxungsUTSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="218871255"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 18:57:38 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 18:57:37 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 18:57:37 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 18:57:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cPaFC/7G3pEfxaxi8YpJJm71W0ol1rVKG3Ax+UEq3QxH8lsI3hZqp/7KZOstmrZ917JG0S5B2eWFP/Emci+OKtcWNEkC7Vs9z+U9ULII6zCzCQ7bw/v70aqcRN91hWQJP3oo4HpeJ1gDNxGwidTafAPYZOgh7IFC9+4v8NHXUiF5hd40iq11XS1noF0j674yicYumqK8HpWu1GqMOXaBimWCP+f+v/WVpAn0UQMzqqBPTGTQDs7lIjcOqn7ikIvdC4ja6gu0IJKs0hpBxTWAOVyRfQej7jqCaL4sD8DPl9iFH4vLz6Ya40QRz0bJbUnzH+DljDD3qoyRFpoij2OG0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/iJy5SThQwWz4cAfwcXLitE6z87o4MzXkiF1otawNcY=;
 b=X2xL5vy4EsV5zaGPTEqFVcV2clOtOW/x1sb6AjLJ+bVpRkHfpEwB8+l/F5Dizsb/LgwrEGo7SL6e12946NRiXacGzK9gyddDO4h3xMYiUXo1JKh/+zhBZKL1kX6Zeqt/3HCA6UeriPGh2ss+uAjpRF6ZC6RwOoEQZHaeumjkWXmSNJMhb/IrrhVQxQIHcNZ52EcQQwaUJVDmgZrs9caNgc0TqPrsAqikmYDxVMg4/r/xNGq/ZQUIeZU1feWOD5CFI8flkpYKUYswLn93whwEhfaduCB128VyR14mnz8MwkRlxOTiZXC6pRkCPC53M65wmem0JeKy+6x9NNXZILiP3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH8PR11MB9457.namprd11.prod.outlook.com
 (2603:10b6:610:2c3::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Fri, 20 Feb
 2026 02:57:34 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 20 Feb 2026
 02:57:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 18/19] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Thread-Topic: [PATCH 18/19] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Thread-Index: AQHcnOTXjrwr6rF4Yk+zuP0+7LOolrWK7gAQ
Date: Fri, 20 Feb 2026 02:57:34 +0000
Message-ID: <DM3PPF208195D8DE44FEC017AC6A7866504E368A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-19-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-19-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH8PR11MB9457:EE_
x-ms-office365-filtering-correlation-id: c3c96b19-366c-439c-f12c-08de702bcc30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?FEMSC03e7AokMFNFMcOEPtIlr8Wn9/OhKcgoMsgSRW35Df6e/rAZgtUHcOL+?=
 =?us-ascii?Q?U4nD34h6/dPqg/DYSkiF8xBCdUkXxQMXroEezZpUwTtfgBa54maNQzhNcLfF?=
 =?us-ascii?Q?2KhRqSfBU/ro+P8PIT1QSp+fLUIRcC+tISbyhgo7Yh9ph5JYEBKlrqvgF6Uc?=
 =?us-ascii?Q?bnFPg5/9W+LMc2Gekd0zLvP8Z2PCpAnHpSGCfoA3OEi0vO+kH/JulS5qpSo3?=
 =?us-ascii?Q?Hv99b0NoHBuGiCtHFOmF5/7WxoqUnU7qx5OsK+iIAQEr9tDmyAcySd8uENqY?=
 =?us-ascii?Q?HTB4iclqkcp+rKZhDsKW/1ifxax75UJLwdRWYRonCkCKYhh02yhdlujGK7f2?=
 =?us-ascii?Q?BB6N2sERP0YAbqHbfgjU3cpmeYjeW+gERTTSVyppWCJQUZsCxjlIiNoIHpy+?=
 =?us-ascii?Q?OI5VJFFrzcgtZqk3y0d6pMA8UGgDc+hogwErpFvjfNcQIIYvERILBfSZA18i?=
 =?us-ascii?Q?NPl9qX3jN/6stuTwf6QC2leIEP9LRFq/duOwoculcWaXkFw6oTrinVeX7Suj?=
 =?us-ascii?Q?J1J2YPywvnHBZiJZtsVZOFzI0VcdstX5t0VKVkxQlPeWRLSu/KmHWOaoQgJu?=
 =?us-ascii?Q?jm4fBT11zBJuqGmtfvFyc1FDurpiSAKXw5JRf46VcRpk4aG3wJHe09fE0Pmh?=
 =?us-ascii?Q?1u6+s6XPetPJLsHPtqGys78ZmythGs9ozVXkwerLYGMVtPzdMIzq81pLq6Mw?=
 =?us-ascii?Q?CFTnmc9vSOu4+xKRxruRO1PbtcQttaB/6I6U+KQhJgX1Ptqrz1icZmidElo2?=
 =?us-ascii?Q?x7WE8eUO6ZD9AjaM51XfzZtd9iy5ITNtjQVrtKvDG+x6xfeEa0DIfrq6BMmK?=
 =?us-ascii?Q?VdeNZMuzjkn1KMpNipcEBdWroN378/7HHs7reZ9gb/8umC3Lw+oIS4M7ZwGk?=
 =?us-ascii?Q?YB+ajjYa9X69oy6J0En0M7oDfuses2uC5WHYWNUGQz8zVNYa0B1bCPiIVS45?=
 =?us-ascii?Q?fTX8biUP0K8nhhCh9aeTj5c1BfKeCIQP83DCkDHRqybFejbzw+ridCXPOcs5?=
 =?us-ascii?Q?0pbTP8Mdte/el9YPY4HIoK3L/O7hVWFBjSsbt4Xv8A7jXUHS56mN/M3zpMz5?=
 =?us-ascii?Q?5MXPTt/n/26Vnd8C3904TqygoMJsSEL4pyehCtyI05rh3QIr0lcwnViuPYrx?=
 =?us-ascii?Q?DTgoctymkVEWrFczaRkVBO/DUqW/dvrqLNERXQwSEcEqWxT7JguQ9MuQ4fDz?=
 =?us-ascii?Q?7gzGha6QfArjkmeiTR7kxVgh1XLA+sgtZeXo/1QaU8jPLoOfdJ2zmN6nqiJA?=
 =?us-ascii?Q?Rnlt9GZKYmarvvGLGJxscf1TO4ZTTXQY1HXdu3zlUhZ3+wQShWCrM9INWzRy?=
 =?us-ascii?Q?fofeI423khgH8UNtmW7MblsxDUMivdF6syQJTRCrBb01AifgwSxOuZARh5+i?=
 =?us-ascii?Q?WW8Ey/bD/7GW6Q52TOgbRK8r1WMp1QfiQQStaoXaHLx7oExX4PsbVq14WNkQ?=
 =?us-ascii?Q?v/0dev0Nj0SQLd5s64anc3nGIZDcbzjhXiA3Hw4XL49x1EqM1UgYwLJ0j124?=
 =?us-ascii?Q?AXfgio+QwpXUBsWgMUpwA0T3H71WJiTQN9DlriCmdycVllGZcdDIrNbxbuMD?=
 =?us-ascii?Q?lOcu4+zFj4OQ+jjmO6sp19RZvTnprwQtwwF3oeA8v+H++jSUORabx5ibmazr?=
 =?us-ascii?Q?oexuU/A1ufO5BQvfjVlLHqo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q5o7Z7ZbFFlWJcVyVl6Clw3eWXOHEq5QuVOBEUodsDKXu8akBk15wF3OG4jX?=
 =?us-ascii?Q?abxyBywKR5CZtq2QUQMpXpNhT47W//WFAqlXkOvtVz0WVM4bUx9HyY8GWuS3?=
 =?us-ascii?Q?prFgyDXj/flFgI4egkus0ZyY+FptjBHAJitWUL2xjfba3fmTakj+cR2stefq?=
 =?us-ascii?Q?tpFvxbMOi3psaeIwfnSYSKXgfTvOB6YFLcd0mmRvHhaH3beEEP2VCbiklogS?=
 =?us-ascii?Q?gQQZ1Fd69Wsd1faF7E/dXYChAwN4PipapJFX79EbOLP+rMi96gUUEl9zDhyY?=
 =?us-ascii?Q?p8mN9cRG5pkeL+1HubHJfcn4lUPlf42nKz5XB1F08QsoXTBwv4QhM7+Xyn8d?=
 =?us-ascii?Q?EgOvqSJIABHKmZYZgEnM5eLgrveVoV57iH14aneOo/MN1/gNH3fgk6K7JaQQ?=
 =?us-ascii?Q?ZtW6qMteym1cU1vdf0i7JpPuUidHBvrsfoLSw8NkaX4vwWJlaWfFMnia6OgY?=
 =?us-ascii?Q?R3cu0ZK7WZJgxpomCWgdRk0HP1Ca/4oDUXqvv18a0pXDHB+wjn6aGzjp1OP3?=
 =?us-ascii?Q?xK3tpR3tZBTigLET9NKI3wj1uYV9fhqQidJgbi8HcQoFrfg97hKgevBTqo4u?=
 =?us-ascii?Q?cWezi1MXrIrdIhJS78/2l8GGyEJ1GU3pdlqYPFVtB7ayrFPyxyYoyUX0TVYt?=
 =?us-ascii?Q?wJRls73U8WmOyU2Txj4J9YJJeIQQcDi2JalndUCj9cGX3BmsRSoVZOXAEvqy?=
 =?us-ascii?Q?OEo4ui3JU+G9MNGBtx090Usy07yjObsy80scNWNWsUuOslp5lEq4aExYq6PX?=
 =?us-ascii?Q?q7bm5qywz585hYIXdpo2WgdRB8s61gLO8kvVHATZxTS/AyFTWUjvuEc15PVv?=
 =?us-ascii?Q?RvF01/e9sNv8mEmIzf38vkQV1JTIlvDdawQfzZJ34KjgCF6wEQ9V3vhJc9XH?=
 =?us-ascii?Q?WrWluHnQ5NQFK6ie/5LPoQym/OlXQ6oANgmoeGQyLIU8O7P3xl2e9keImA7a?=
 =?us-ascii?Q?PTV+kWBRAto/TnPZ1QOoP9tgPeuLdSQuhEjGDpJSF+7zdZp2AYuGcxNm5L5L?=
 =?us-ascii?Q?L1DWT7eqYa1Rvx/y0+WRfEBq2XcekdrJ856gRJreqVtp74bk0VGbaUTnULEy?=
 =?us-ascii?Q?o3J/XzW+zQ93Z9J0w7oJDmnifdL/Xc6yLYE9dcY8He9Li60UHEUhAWJfHkwE?=
 =?us-ascii?Q?DyzYPXmnYPVmwHFim2vZAXyeH1Jkd0e9NOn62n+MePmbRTUDMRRiuSfowMSv?=
 =?us-ascii?Q?uKkBKIZAGHF8FKWSmbUcHboHckWCE5lhAfe2gKCS/euX07MUPwE2kaRvZdsb?=
 =?us-ascii?Q?1ay7H8jeDP3SfQ8IDos9mhRgYpE0b62GZh163nsRxZo96YfiWImaeSXzeYJf?=
 =?us-ascii?Q?Xa2+nrWTyRGaQPe5s/XBC38L20zGUGmP4IpFfSsabaOCUIievwhomtfk6GQ0?=
 =?us-ascii?Q?Z0whxO+OKGLBBxZDBShllpri6+B6/Rnb4LaitnxCtk027j5ex7yNhTQE6lRM?=
 =?us-ascii?Q?fgyenCtAQiR30U2NiufV/aHiDrBId2So4olCy7fUVWUY6KySGc+ZuGcNoCO7?=
 =?us-ascii?Q?ZL1J4lRJ40TMrIo3bMK3K9XOQUSIP1Grs1COA00MDSxp8NBRur2BHYzrOHuV?=
 =?us-ascii?Q?unr351la7TokMoF/yC4go6kGqPjH+L09RQkI2f6hKCgXMHZPBMHVXEs7yHjT?=
 =?us-ascii?Q?ZyjZN9717jNSCIMOwLhhTI1PS13lVtoVZHOpOJDt4OVLefuHnb1YOm7YwRv2?=
 =?us-ascii?Q?kqE6dFmECy88p7cwAli5wNd/4hyRLJ4sBmhPVNAyXJ2OUt/ruIgIaSo+2/vs?=
 =?us-ascii?Q?mNNO7tadyQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3c96b19-366c-439c-f12c-08de702bcc30
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 02:57:34.4794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hn0ZHxtzmIFa6HBFC9shDr6gat+oDqnDjLCwRDSbY1nWFrhK/U2cGKLRX1VPwMWaCV3k4F2472af4iKVkvIwDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9457
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 447DF164519
X-Rspamd-Action: no action

> Subject: [PATCH 18/19] drm/i915/lt_phy: Remove LT PHY specific state
> verification
>=20
> Remove LT PHY specific state verification as DPLL framework has state
> verification check.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 39 -------------------
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  2 -
>  .../drm/i915/display/intel_modeset_verify.c   |  1 -
>  3 files changed, 42 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 052cbbd36397..1dc53918a054 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2270,45 +2270,6 @@ bool intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	return true;
>  }
>=20
> -void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> -				   struct intel_crtc *crtc)
> -{
> -	struct intel_display *display =3D to_intel_display(state);
> -	struct intel_digital_port *dig_port;
> -	const struct intel_crtc_state *new_crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder;
> -	struct intel_lt_phy_pll_state pll_hw_state =3D {};
> -	const struct intel_lt_phy_pll_state *pll_sw_state =3D &new_crtc_state-
> >dpll_hw_state.ltpll;
> -
> -	if (DISPLAY_VER(display) < 35)
> -		return;
> -
> -	if (!new_crtc_state->hw.active)
> -		return;
> -
> -	/* intel_get_crtc_new_encoder() only works for modeset/fastset
> commits */
> -	if (!intel_crtc_needs_modeset(new_crtc_state) &&
> -	    !intel_crtc_needs_fastset(new_crtc_state))
> -		return;
> -
> -	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> -	intel_lt_phy_pll_readout_hw_state(encoder, &pll_hw_state);
> -
> -	dig_port =3D enc_to_dig_port(encoder);
> -	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> -		return;
> -
> -	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[0] !=3D
> pll_sw_state->config[0],
> -				 "[CRTC:%d:%s] mismatch in LT PHY PLL
> CONFIG 0: (expected 0x%04x, found 0x%04x)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 pll_sw_state->config[0],
> pll_hw_state.config[0]);
> -	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[2] !=3D
> pll_sw_state->config[2],
> -				 "[CRTC:%d:%s] mismatch in LT PHY PLL
> CONFIG 2: (expected 0x%04x, found 0x%04x)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 pll_sw_state->config[2],
> pll_hw_state.config[2]);
> -}
> -
>  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>  			      struct intel_dpll *pll,
>  			      const struct intel_dpll_hw_state *dpll_hw_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 1c2ec438cd10..8b98997b3107 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -41,8 +41,6 @@ bool intel_lt_phy_tbt_pll_readout_hw_state(struct
> intel_display *display,
>  					   struct intel_dpll_hw_state
> *hw_state);  bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder
> *encoder,
>  				       struct intel_lt_phy_pll_state *pll_state); -
> void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> -				   struct intel_crtc *crtc);
>  int
>  intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_stat=
e,
>  				  u32 frequency_khz);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 12a00121c274..2ec17c2bfe0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -246,7 +246,6 @@ void intel_modeset_verify_crtc(struct
> intel_atomic_state *state,
>  	verify_crtc_state(state, crtc);
>  	intel_dpll_state_verify(state, crtc);
>  	intel_mpllb_state_verify(state, crtc);
> -	intel_lt_phy_pll_state_verify(state, crtc);
>  }

So I should have noticed this earlier in patch 11 itself but the state veri=
fication for LT PHY wont work with DPLL framework
verification. The reason being unlike previous PHY's we had values will not=
 be preserved in the shadow registers. Do if there is an internal
PHY shutdown which is again controlled by DMC with feature like PSR etc the=
se values will be lost and read as 0's.
Only values that are retained are config[0/2] rest are erased.
So a memcmp of full hw state will throw a State Mismatch.
You'll need to rethink the get_hw_state approach or omit this hooke and let=
 intel_lt_phy_pll_state_verify take care of it for now

Regards,
Suraj Kandpal

>=20
>  void intel_modeset_verify_disabled(struct intel_atomic_state *state)
> --
> 2.43.0

