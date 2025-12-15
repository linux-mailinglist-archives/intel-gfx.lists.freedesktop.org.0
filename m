Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B24CBC9FB
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 07:27:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E6510E159;
	Mon, 15 Dec 2025 06:27:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+LoXNrF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CD4910E159;
 Mon, 15 Dec 2025 06:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765780061; x=1797316061;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HSpB7ztncEXU9eN7+R5ksfTt8f0vKuanKoUaBWn54Mw=;
 b=A+LoXNrFhS+x1jsOu7+z/4IkoGBfeV6rYudS1JivgF1upVE4zxML0k6M
 MYJZYPTYxEjM7mSEm8L64jDOa/LwIzQYJFaW00mAfHL+XRL06rYOqpPb+
 pRbeeRXTIzebt2ofuzHMcT9MWbtEdsPs1C/Vz0nfuey41gnsPqdKV+NVU
 c3snlz5KUJ3HDNol9XWqTtBbiFEYE0bxF51pELK/20VXe6DsGSq+d433B
 IRBi5M2pRzbOw2sa1IN45m0jyV6BWwYIffVxp8vqWyeqgXISYeFkPuY0v
 CdLh+XpBLldICs7TZZP54UUmOGGWPAjP8xzF+hRDXTPlMdEw2KjgNjzt8 g==;
X-CSE-ConnectionGUID: LyvbOwQpTJevkFMR9HDvUg==
X-CSE-MsgGUID: Ay7li+fGQwa/skbDYqvgwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="71303045"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="71303045"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 22:27:40 -0800
X-CSE-ConnectionGUID: nZl6pF6wRIG7P6K/C5V+tg==
X-CSE-MsgGUID: FcpOWAqrTZSckB3VKsXvaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="197403890"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 22:27:40 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 22:27:39 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 14 Dec 2025 22:27:39 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 22:27:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BsGHK2011dxvgaNXC5+pmS5gaa05mVQX/tu23VoctOV4kFOcaJPyYg1ZdZHTUJ9As8iXjOFYQ+yINphrJyxEB+JdCAuUs88LUEgpL6fCBIAeRxyisNyKQUumUTYY26C4gA2UMDw09NTfoiFfY1Oywim9nXfDSg1yR0tR965ZxF+A2qzTfZTbIR3TuaNWQm585iEBAvMVCuaW/EayH3cj1CAys5myqvZXkjUlrd9GKTftgmlDVlWS1A7H7GLMBHyH2U3f1J8A0KB+DFz13tmLdNqNBkggAW5NSSsSl12S2CPwS4pQmFMk+4fH2blDjnKbCpVUk+Yrse2f/7edshFSjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kfIGiHPh0EvCoY2nlIHZFKTksyL3cVirY7qWO4K6xGs=;
 b=w6z/Z0SFmJH5EFC80gdApg3u4lQEyQF+b6he87mXtu5S2T8xrx8Ek91Ab7S7CPlUAbl5hKzk2pmlKauBs4xs1wEFJWlf/ndSA8bqEiWeF06WqGDwfjkiaeudA0C7HwqWIdcXD04hFU1tVp+LA/asMIprfrLDkigzXyI/zvH/E21uijeIVDFqlnSQG2VH8mQugHjxKGgNAe2DdgNSl7Qtehy25QW/MsjMq9iIpsysRoNmTFlsNK1ykvh/IebzXVa9cf42IztyY1CFn4YvbfExSf4C/WSn8sxae8PYMlKe1nJEFH7IK9rtASzCKvA5lKXDjWVaXJqwvKECcst+H0uCyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPF900531A26.namprd11.prod.outlook.com (2603:10b6:f:fc02::3b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 06:27:38 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 06:27:38 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v10 13/17] drm/i915/display: Wait for VRR PUSH status
 update
Thread-Topic: [PATCH v10 13/17] drm/i915/display: Wait for VRR PUSH status
 update
Thread-Index: AQHcY158z7T462k4YkOr7zmVJq8QdrUiUK2g
Date: Mon, 15 Dec 2025 06:27:37 +0000
Message-ID: <DM4PR11MB6360768CE22ED878ABC16432F4ADA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-14-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20251202073659.926838-14-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPF900531A26:EE_
x-ms-office365-filtering-correlation-id: 77d79438-42fa-4e73-82be-08de3ba30ac6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?KeYUzELAq4vFuN0KRVUDDNMdTxYfvdaHPfgZLYagDP9L5Y4cUNGgGYQSLvaL?=
 =?us-ascii?Q?/buXTEqJY9TyYQcHCkSRnWxztxR9jwLwg6sffT5dNMVZMxQseTyUrcju3GZa?=
 =?us-ascii?Q?Hbsor5YmRhH8TpM/unPXU1iPfcHXOgnXwzpWzgrakBpApNjJ248zoKQMxClJ?=
 =?us-ascii?Q?pveZQI03Iy2xRfwCPHai/agUw/kM9s8W0tm18EJvhS+VCcQb/GHlsuWvq5IO?=
 =?us-ascii?Q?RoBiSCRqtEyDdeboAsX/nAqDyMyDVCCflMctg3XYL6Gudv3QYsZF7n5kQd/x?=
 =?us-ascii?Q?0adgpPt7EAshzZj+oTJ+SE+0cFdpmgmFkabgJVnMv4QIYmki+irT0PvU5vWe?=
 =?us-ascii?Q?Hh4Pej+Z7Eon705vkSSwsYcObN+kvcAbwjXux2ihEcCV6vpNjTdVXegvIhZA?=
 =?us-ascii?Q?uRLiQYaTkhlWPavYEe05plDnP7Jz5kr6L+U/PbnpHgeJVfQzTTIFuuZPCFEv?=
 =?us-ascii?Q?T48AK+cSr4e/T59MZTy8LoNhN/kfdHQnkO/Ule5PcPpxa9ZP95PF4f/MkSg+?=
 =?us-ascii?Q?etBdXriEIpiUSPaYc2vB2AHBQiuIz//1d/vLIch729WzZ0To7MwflCYa6Ub9?=
 =?us-ascii?Q?NwlN9dZoC3DnXkGsmVi6fqJ68bZGLuETUITiCfZZvvJ/IptFpiNT0HaUid2Z?=
 =?us-ascii?Q?BVlMzOokQUGUov01f+Z/nSbasokH7rVlVLUfVDZ9zGbQ+FOMcSU6LDYhSdlO?=
 =?us-ascii?Q?QtItyD5D9eY3wKoIyxRweG5+HZWUXMfbMAOJMBnqal4BH9IX9hxiDFXa8WRP?=
 =?us-ascii?Q?limXm2TajjvVDLfe9jXbETmPFRRRaXq4copoE3ZR2xjnKu9ZHjSD4qjQeURZ?=
 =?us-ascii?Q?0Nwy9CNphjFtKFV6kFQl7pwFRCMjqjxvGFb0FE94zc51t0RWDc8PSmVXV6+T?=
 =?us-ascii?Q?is1IALJtoK20nVMCILY4ObzLbZYbVsFI1oC8RiCnjZEJfiOcSfngqIg1l+q/?=
 =?us-ascii?Q?c2KaueRSfi05fDU0pwkH63OFkUERENiKiXzjUdMcEU52b7/quZyGGueTn6Z/?=
 =?us-ascii?Q?5bfG+uaoSpzkhQkPKYSNc5ZvCiDOPXr5nQ2bOGtnAOt+lcE4FrQgSf8NpJs1?=
 =?us-ascii?Q?7JRpSocZXwnTGdzAj9RtIsQQQlSfHmzhVRYuqVyeS/v8SA8Tp2AiEmw/JPol?=
 =?us-ascii?Q?QvOlsXaB5kUVlijYfI/Wx1iJHU7vQm8dDBrK2PoaGUZFPMcZuvtrUuU6Qtih?=
 =?us-ascii?Q?zh82493MULH/ElnwzyBSrF1jV+FDQaVLznIITX2cwHOqbImfwh007oX6hMzq?=
 =?us-ascii?Q?d5hZV8aLsgLRq6Ih/2Edozlki+VaG+1hquMQPKxpMEYlf9Xmo7Zb0xiC18q7?=
 =?us-ascii?Q?a62PZZ9f4/tmunEo1nV3fuh28SOjJT1FvLvYWLZxcrvT7IVcLWn82MLua5mu?=
 =?us-ascii?Q?Tp9qufKGQNSKyfXXEUTKJ1JZLRnsl1pFaho5Xlxj9fm9dhYNjpqK5jcZ/Xcu?=
 =?us-ascii?Q?RK0mX59avM0xEK1TBy7FL10deJQmT7xo+D86vUgiJ4cXzQt5/DwjaIS+uFra?=
 =?us-ascii?Q?DT1bXvKmYiI7sb5D9tJnmu7aFL10SmjS6AT/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oxz/3zOTHiuJgoG4h+TaJBnIHxG3Z+9UL0ujCjwUugkeRQ9ts+++NGYF42wy?=
 =?us-ascii?Q?QFYmfSAYk81MEurf8r6mKqYGhZAX7uHHXaEcZ+m5yHFiLplokubNyY37TOCK?=
 =?us-ascii?Q?3vI8QTYqqIzyTZo3SlsIOfqnTPb8SiQtZjwa+qBWAeh1ulnDhYr/wrhVac3n?=
 =?us-ascii?Q?9kyJQ0g5+q/MttAWlfNjwNR09+lfzbFfE7wmTymWiRNGxxyYpVuPHYISVjY7?=
 =?us-ascii?Q?agFHpImiaY9Iohz03BNbxOQCLsTCtBmb4cFaCCitkCUN4H2im+rHUjjPx65Q?=
 =?us-ascii?Q?dwdxTvos1LRYqzyY8J066HCpPiYRpGQM4x1qjzJ7gV+CmoeM8xyfi//n9Q95?=
 =?us-ascii?Q?TatzdCkAT7h3BGhavnkIVSUW9B9jEc0BC5XNgec217qjvY6jhBr1BMO85p1A?=
 =?us-ascii?Q?h9dVxmqnKdkM1ir+bdbMbagP4q5AKuohGF5AGEe9a03+st6Ws5t1zTXyuv7H?=
 =?us-ascii?Q?dl1rUb/AZzZrq67RIVT0IuUp6d64ErVlhEZdjLzWoUu26GDxM3urLOiVXAsu?=
 =?us-ascii?Q?zCkqDHNkVXniMOofpt/COTG7n1GiSQcOgK3a5jobqJd6ZB8PWNWSBbfV7q0F?=
 =?us-ascii?Q?3h01dJ3EBYwxSYYizcJxjDFDfJHkmPLt9uq49MDhzOFH000RQrmbVNrC8Qpe?=
 =?us-ascii?Q?vUbcLXNtFt3jCpUsQSEvEfDI8l8Kfe04vShM/1/g0PF+CQzxHor37euNXV6+?=
 =?us-ascii?Q?9DkKiDZZ86zj2icH7HN0+U/K3nCwPwk8HahUxWAgGst3+G6drT5tHp45BDyx?=
 =?us-ascii?Q?4psdfOiVXJKVFPhkZXbFcvOTV+JcuA2qFJcby5Rz+jOneTX6PMofS1NbO4gN?=
 =?us-ascii?Q?lRW6fL+3EzpKP3+9S7abVmyNjw/mjRlXJd+xWO/VBDJwaZW7fZd6esvp7Wc6?=
 =?us-ascii?Q?ZsVlvg+6wGY9AenHvgVo7754vfpoVSpqLvwTFlw/6MSp6x0wBpUHVwDRT1v1?=
 =?us-ascii?Q?lOoMIcKOgwMIg44+p0zl5lyocC35nzPfnUCFdysTBGPHyz5Es/TtPzh+DvQ5?=
 =?us-ascii?Q?uVJnK7kdLqMWZKdTkGhgJr9xeoBysOR5N6Cxv6u20HnfyKP35Pqj5wGPSsLr?=
 =?us-ascii?Q?7zpLzn5+az0HEYnStGReagXBmdmtVNktRQXkGp7Kp+Cuk+9YUcGRHFan/uIE?=
 =?us-ascii?Q?1Jqws6dUZiDRkBnw1eC0g4ZbC8l4C+PgVM6paUfv3CFyUMffYRVUBDcXPDVc?=
 =?us-ascii?Q?H7S12I4x8xjuVDvVjhC06et7Y8w+Xzww5Kxl2bxuQOtNViIR97GE+VDy9cPK?=
 =?us-ascii?Q?AyecQJ/RPPnFLw+KdTwwT7eibSa/6fU1CxmpmBs6fz1ySVch28NTrO+vOH9h?=
 =?us-ascii?Q?s5r219NHRWdZo5t1Ofc+LC/pI5RNXVRYZyzrHiMCctnNRHyPQFQTZS+Uqvla?=
 =?us-ascii?Q?X+rU0RTt1ekeQxGgFE2sT/OcGkDmfIpWreSiqZyYA/f4BqPso6OKzb7xbsHB?=
 =?us-ascii?Q?Nfb/ky2f5Cvhi7Ybh9TSHEPnagKq16ozjqxkKvEM3UErdo3GjmI6nrDbwgk8?=
 =?us-ascii?Q?NUIbFkqfU+FE0Fg7HihXKo9B/aDgIXkvCllNyuKu9eEBRH4hv0aWpXfQMaaN?=
 =?us-ascii?Q?QWncsLQOBjqIJyAZMX9mvjOqbCySC9JtWZ5wPR2M?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77d79438-42fa-4e73-82be-08de3ba30ac6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 06:27:37.9261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b3Ztu0Rp2YeLQ0X6fYLxdZpmgHuRTmkanW0wr+vN857EIEoQMNYGNwMTku5bjwyfboY4rqATjIxOBjvAxosSBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF900531A26
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



> -----Original Message-----
> From: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com=
>
> Sent: Tuesday, December 2, 2025 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; ville.syrjala@linux.intel.com; Shankar, Uma
> <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v10 13/17] drm/i915/display: Wait for VRR PUSH status upd=
ate
>=20
> After VRR Push is sent, need to wait till flipline decision boundary to g=
et Push bit
> to get cleared.
>=20
> --v2:
> - Adjust delays to vrr vmin vblank delays. (Ankit)
>=20
> --v3:
> - Change intel_vrr_vmin_safe_window_end() so that
> intel_dsb_wait_for_delayed_vblank() uses correct delay. (Ankit)
>=20
> --v4:
> - Simplify intel_vrr_vmin_safe_window_end implementation. (Ankit)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3db61d1f0124..4c1470dcd3bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -1095,10 +1095,21 @@ int intel_vrr_safe_window_start(const struct
> intel_crtc_state *crtc_state)
>  		return crtc_state->hw.adjusted_mode.crtc_vdisplay;
>  }
>=20
> +static int
> +intel_vrr_dcb_vmin_vblank_start(const struct intel_crtc_state
> +*crtc_state) {
> +	return (intel_vrr_dcb_vmin_vblank_start_next(crtc_state) < 0) ?
> +		intel_vrr_dcb_vmin_vblank_start_final(crtc_state) :
> +		intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
> +}
> +
>  int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_s=
tate)  {
> -	return intel_vrr_vmin_vblank_start(crtc_state) -
> -	       crtc_state->set_context_latency;
> +	int vmin_vblank_start =3D crtc_state->vrr.dc_balance.enable ?
> +			intel_vrr_dcb_vmin_vblank_start(crtc_state) :
> +			intel_vrr_vmin_vblank_start(crtc_state);
> +
> +	return vmin_vblank_start - crtc_state->set_context_latency;
>  }
>=20
>  int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state
> *crtc_state)
> --
> 2.48.1

