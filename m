Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wC/GAyw+oWnsrQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 07:48:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE0F1B3785
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 07:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1CA010EA4B;
	Fri, 27 Feb 2026 06:48:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N87q+5YY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045BE10EA4A;
 Fri, 27 Feb 2026 06:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772174889; x=1803710889;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AhLpaDnAfTHzrwZkMi96rqfixepuwaGi6ImBoCYpQHA=;
 b=N87q+5YYqBZegnixn97eV33aH1UoBONZInBaYUQ1th8nK9BcI8EocUuv
 hWftbdpw4wqHME8SCPK0aRr2USNXVvRpujkEzoFQTKh0AXTqqj9hHhgv4
 h4pO5eoiI8GCS8Sy9FUv6bu8eTMDJDC1bnzkJdmGGpNLjm7wfQ2ryAjzH
 iIBk3kupfQjRfY0rzMGZj7OZN2+P/AeyZbqv6hDv4l/BYUKZ1rStWhm7d
 1OyvU+zeUPzMnMRbadhNmLyydZT7LfTAk7HXk72zNm48/U1Ghd7489Zt2
 DM32JZntVpek+QMO8GbTnO0xsMQH9KsfyB/1FmbIEj7fuu90t/i+BRE2W Q==;
X-CSE-ConnectionGUID: OhaoiWEPQpWxOkPdC3YPXQ==
X-CSE-MsgGUID: Crm9c5MQQTaDujplHyCoRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="73221108"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="73221108"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 22:48:09 -0800
X-CSE-ConnectionGUID: XP3/ktzWQPqmgA/vcPCFag==
X-CSE-MsgGUID: Qp28v/0hQu2yEWwZKpjVLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="215934471"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 22:48:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 22:48:07 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 22:48:07 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 22:48:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZCbDz53tW8ZqJ5N3kKCpKhe6QP8GyMbICso23BlfcGUVlcdZMQn09ty4rNuGQy8Er1j1Wh6kdVnllU1ISwu+EKUV5/kddIGUd+7vsAxODrbqnxv6jNUgcJcmOkaeJnR5cuALvzLc1veRRB0cb+KbfdQEoxzhYkofVzOxA6HpOObDL7ekK7B00dUiame3PZwtRTr1yaf6/0g5Pt1vY9GSGAbH6vNgUArmdJb0i0dsqdjSQkTJ+DO+AS7ObSKQ3UygKBCVGNJequ0IlP7YRoKwoj7WDJdG2IJQ/Bsj+DhGldaRGVUjSfUATqkjvbMylSk/ESLBMlhSTIu4Z+7pGAj23Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AhLpaDnAfTHzrwZkMi96rqfixepuwaGi6ImBoCYpQHA=;
 b=wnSO16NU7WTGHKuH8Y6iw9n3cYiddrLiTaONm3FdRrxeOXWeFhH+iWyfj1oA6OTRkQAKuK8u73V0MBIqsKv9+tjqEB+G1D9E0A28wgWCfKze73UROSjjr/WxO9Iq4O2580zSxM0XlH30YWobbOkjSVgWfzS/KOWR7rd3TirGr6GfRKq3vefRVTvnDkOwe9fdWuf5vigFz1hYRWZ1YFP4sg3CU0S2r2ShvtP0Buc6HKn6ZAEzvRJ1sYRvN0d2XguowBEHsCtj+AvtBEDhY/Zl4EfHldcaFvD361PBOVc3vcYKbjaRCGTkwmiYyKExbsTDh2+ga7UNGAkseRwT6zm2kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB6028.namprd11.prod.outlook.com (2603:10b6:208:393::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.15; Fri, 27 Feb
 2026 06:47:59 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 06:47:59 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat header
Thread-Topic: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat
 header
Thread-Index: AQHcp0bNuUngX9Lx30Guj0K0KNJSLLWWGx1g
Date: Fri, 27 Feb 2026 06:47:59 +0000
Message-ID: <DM4PR11MB63601D11522ED33D41ACC439F473A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260226175531.2324526-1-uma.shankar@intel.com>
In-Reply-To: <20260226175531.2324526-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB6028:EE_
x-ms-office365-filtering-correlation-id: 40cff7ae-94c4-43f8-900f-08de75cc255e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: KnPqf+kkty7VdsctYcWsi0s+4EdcdUI1S13iMFeQIeWBuRAD46ny+aB8fy0rByOTWHA/176L9xsBnXLpwHHpQ5IvDZakSDgCsZjg0wlDNCMTdO6PdrrJlBNP28ffzKuS8kTdt99MobkIwRL56o7iGF65eUXL3wZOUqTYC0gU/0bHMwnZudPT0FKcYCBORXJJUmHl1aL/RS7BSLJ2hrZ3zSzyfi5EoX65/z3JKG/7a5hGCcDI4y0Nv9LOI+ct5vi+B47NcFhO0uXR1kpwdbtfzoKKcVjuodoF7EiwVFFsebFD6aLil/IjRNlDp6+L/Jsa0l2QiWeU4GBw7L/nkx/txB57J2iSBewOge+SzM203AuzhmtFvpZ0PbTGCWfqyASeM0k2X+Pzd8I/BdXFqZLnBkMUOXg3ObhX+9ylaoT2Ju9l6AmwBqPmIqyERlFhLt7oBWkW+zwhPb5iNIBiIHRYxtonUSfG1lxeOLTV253zo05zImHCgmR2GHgdZIsiMqLrHVQYaSPayj1FMPtdV+Drt0yU6cdfNLDl8/o+Qm0Pebvi9zgti2BjyQRa4fAF7SZE6NaeBGjgTY3DAo66W9UeP0GJLCVG94nv+JqYzCJ9UgLncn1ACVhwSrt8FPxGs3im2KtYytp0gQqQ+ARw/FrtIDqEbDqNQTFU7k0bx2EhDWH89mcTvcAJqF8ntkgDFNKmD5mExWctwzcENcnef5/li/8pUFsvAKjMt6LKaZ6umYwcCGEOx2jGl9GY7oOgKuJ8AIN0y5bLHHzIchszHk9uON7Z65CcGJE/I5MThGHKDOM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVFtMUZMSGcxTDgxK2xNU1hjWXhBZXE0QXp0cXkrY1d0d2Yra01IcU0yc1Qw?=
 =?utf-8?B?QzgzcU9wZXd1NFBUYmR4d3RJN2lHcDRVTTZWZkhOUWt2WTNuaU5RcUdHUnB0?=
 =?utf-8?B?UkVLQU9CbTlRd3BOQnNmQ3VZOHhQcnUwaVdYdmU4bW5qUmV2azgycEtPZjdt?=
 =?utf-8?B?N3JjUmRLZ1NDVUxnZE1iM014T0dLQURodFJHb1p3eDJ0d3FQL3Fwak0zYUpM?=
 =?utf-8?B?T1VVdEhOcEhtZTVzZHk5eXdMRndjL09xSjVkdzFWRTNZQ1dEZSs1eUVXRnpQ?=
 =?utf-8?B?bWFuK0U1bEJKYWtCVW1hdVMrMy9KY1dhT0lUSDRkRU5TWk92Zkl2UTBlQlZR?=
 =?utf-8?B?RDVwSWc4UDY0ZGZHeUJrNzBVaExHZXdrNkx0U1hpL0NJT1owWENReVNzZ1Ja?=
 =?utf-8?B?ZlBNRmdmOXppNzFmbFZVcnExN1hNcjNJdUJacnQzdFpFcG15TkNNT0N2VmhT?=
 =?utf-8?B?cmpMaFh5N2dTTEJIQXg5V1Q1a0syQmhpUHNkYzQ5K0M0cWRZVUVTMXI4SGZi?=
 =?utf-8?B?ZXI2NU5ra0E5SURCMS9FcFpIdEdKMFh6RUJndjJqZ2NtRXFxQ0NNRFk2bmE3?=
 =?utf-8?B?UVlOQVVlUmpaY0EvMW11OFlmdkxCRERRaEhrYXU1UEJuZGNqN3ZmTVowUHEr?=
 =?utf-8?B?YWdGUzE1aWVXVWZMVWNpYTl1Z3VyQjQxcmcxc3REYndob1Y5U2cxQ09oZGpy?=
 =?utf-8?B?MXA4cWJsV1d3YVJVbmltQmtFNlBKLzk3ZnU4YS9JY3N0NWlGRVkyT1l0Wi8w?=
 =?utf-8?B?dmhsbjd1SVZ6TTNMdmVGeHZCMitUTWF3SFhqNGVtbUwyRUJZbXFxM2VMLzRl?=
 =?utf-8?B?WnlEK3ZTSmJzTWtOdnk2c01UR21DWk9MNkZ4SzIxTzNhbERvK0ZKOW53UUk0?=
 =?utf-8?B?NlVDbW95d09USXh2d0lUaUtDM2oxU1kwbC9FbXdER1NSeGhUMkM5cTdIbDRq?=
 =?utf-8?B?NHZjcUZvdWE3T3I4bjhKWGtuUzYxQk4zeUNHVEM1SWwxcy81TFJGNXNGU3pH?=
 =?utf-8?B?RUZuQ2pBVlpXcE8rbEpLUkdadzR3SU9XaDFKdUR0N3NGYll3Q2xhTndTL0pW?=
 =?utf-8?B?Q0dZSTVLZGR4OVFKSGVnZUhkSUExQUlCRFNLelRRbTBFS0loMytkdmJzUzdF?=
 =?utf-8?B?dzgzc2xzU1lMYTZERHdTTndOV1ZPUjdQM3p6M2NIRUg4d1EwQmZBbUE5TElj?=
 =?utf-8?B?Z25GM2ZWaXFxdEVJeHdaYUlWV0FrQ0ZYemExWU5Pck84S0FFa2lWRWM3RmxR?=
 =?utf-8?B?S09TMjlodVBLWllIaENpbCs3dElFMmRXeWxTZnNjSGg2WkdMVWw2QmlKeXpj?=
 =?utf-8?B?TlhHM1YxdG52enlxOFR2YXh4OWZtNFF0SVN6YUlKa001N3FINGhKSDEwZHRJ?=
 =?utf-8?B?dFpVSXQ2emM5Z3Z4VVArUHhFb2hVd055WURMYVVWVGtUSlVKTExnQTkrcmdw?=
 =?utf-8?B?ekJaeDBEaDJ2a2swajFsYmZCZ3dhellEd0ZUN1FaZnY2cFdkNHlmMXdod0hS?=
 =?utf-8?B?MFVDNXdVeVN5YUQxWjhwUVlOK3ZpZEhod1ExbFZEeGR0bFRBazY3MlMzS1Bq?=
 =?utf-8?B?Ujc4Vk1xTXBGeXB2ZEo0UVFDNHJnby82Rk5GRFdacG1USVhvNEJWK2ZIVXR1?=
 =?utf-8?B?d1pCTlRxTWwyTlY4Q0NTVG1rTk1sR29uYTBTNUVJVXpVNWZIdkt0Z2dSbFM2?=
 =?utf-8?B?R09XZGxVWWJVK2NVUzJYOTdRcHJNS0tHMWtxRWE3WVJNR2xMZUhuaUgrRUJN?=
 =?utf-8?B?NGJ2akZVNDNycFpZeDhjWEE1VytLRlg0MW8vWG5wTkk2NTZLaTdnbkkraS81?=
 =?utf-8?B?T1ZhRVh6RDJZdG5CMmpUdVpkS3dENDVLWEFVRmU1bUNaRXRZWktPUTlybnhM?=
 =?utf-8?B?Qlp5clppWXA2dnNCekRWOFB0bFh5T0FwZ2ZRVnJOVW4vaGQralRSRjBaUmgx?=
 =?utf-8?B?REdJbUpjR05QUlpZQVhuVEpvRFhTREttcUtFdTdRVy84SzhiSFF5MFJ1Qk5r?=
 =?utf-8?B?eThCNTNidXg2czY4Y2E4TENYeURKUzkyN2NJU3R2bjdySzVCb3hMRnp3dzY0?=
 =?utf-8?B?SW95SHhkb0RDUldLS3RyRjJ0T0prOFBNZEdkTDhRK0ZGdHVROVRqQS8xSWRF?=
 =?utf-8?B?NWV3bE1VRC80KzNpN1hiUWdFbVFZV25pMGxncWpvU0RFTGxvOWZjaW90RnFq?=
 =?utf-8?B?UFA2a3dwcU1seG16ZVZ4UTdyMjlxQThqMm85bStDbElrNTVXRUZjMlhiY2VL?=
 =?utf-8?B?ZGV3TEM3bmt4OVFVVWRjYzRETk91d2hZdUNDWHhMaUk0QTdiSEpoelppN2cx?=
 =?utf-8?B?QWZRa0M1cmRIaGdZb3VZaGx2QlhaZElqajZVUkJyZExTaUtGbDNKQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40cff7ae-94c4-43f8-900f-08de75cc255e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2026 06:47:59.3792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RwTt4U4wcdQxBTjDbRwrJ3CanPILOErHO+KUp+ooBYClYb/OTOK9q04LMkkw6FVPBXwCq6FHOBbRvRfZO0vKSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6028
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3CE0F1B3785
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhbmthciwgVW1hIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAyNiwgMjAy
NiAxMToyNiBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxh
QGludGVsLmNvbT47IFNoYW5rYXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBbUEFUQ0hdIGRybS94ZS9jb21wYXQ6IFJlbW92ZSB1bnVzZWQgaTkxNV9yZWcuaCBm
cm9tIGNvbXBhdA0KPiBoZWFkZXINCj4gDQo+IERpc3BsYXkgQ29kZSBpcyBtYWRlIGluZGVwZW5k
ZW50IG9mIGk5MTVfcmVnLmgsIGhlbmNlIGl0IGNhbiBiZSBkcm9wcGVkIGZyb20NCj4gY29tcGF0
IGhlYWRlci4NCg0KRml4ZWQgZWFybGllciBmdW1ibGUgYW5kIHB1c2hlZCB0aGUgY2hhbmdlIHRo
cm91Z2ggZHJtLWludGVsLW5leHQuDQoNClJlZ2FyZHMsDQpVbWEgU2hhbmthcg0KDQo+IFNpZ25l
ZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFJldmlld2Vk
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfcmVnLmggfCA2IC0tLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0pDQo+ICBkZWxldGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMvaTkxNV9yZWcuaA0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVf
cmVnLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9pOTE1X3Jl
Zy5oDQo+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCA4NjE5ZWMwMTVhZDQuLjAw
MDAwMDAwMDAwMA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvY29tcGF0LWk5MTUtaGVhZGVy
cy9pOTE1X3JlZy5oDQo+ICsrKyAvZGV2L251bGwNCj4gQEAgLTEsNiArMCwwIEBADQo+IC0vKiBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovDQo+IC0vKg0KPiAtICogQ29weXJpZ2h0IMKp
IDIwMjMgSW50ZWwgQ29ycG9yYXRpb24NCj4gLSAqLw0KPiAtDQo+IC0jaW5jbHVkZSAiLi4vLi4v
aTkxNS9pOTE1X3JlZy5oIg0KPiAtLQ0KPiAyLjUwLjENCg0K
