Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BFB84B973
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 16:27:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AC5F112C8A;
	Tue,  6 Feb 2024 15:27:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UBtB4t/F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD08C112C8A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 15:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707233265; x=1738769265;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lsIdWZpvk1BEEhHcot5JI4BjGeNEeY+KECti2Tq44Qc=;
 b=UBtB4t/FBkFs8dgm4sMo6nEdmg/51iAaB0JbrCCZH7n1t76dA1Lw2q19
 s9I5byFkF0OTsqcHRszp3w679mJgyWjZgODJXi2QJ+2aAEBlH0E0e4Y7B
 dK+dDBWwAzb58QAnohofphlXHrLtBk+2McHSLhPUgTC0YdLNmOrYILCsm
 Ao9cdPXKYgZtEVa1+FSmvrHRZ5TeCsW0Q7gmg+jpufPUYTV7TByebIS1q
 mYiFsn8dHjA5Yd2akTEV9jid0HRnf+I81/Rh3c7nfj4YQ9AYnqooDIq9c
 FkaZy8KbG3HI8Uco9OvUYiJjsJ73L0nOir4I007IvVRpdW3FenvZvGUjx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="12135570"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="12135570"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:27:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1383658"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 07:27:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 07:27:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 07:27:44 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 07:27:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WS85JBVHZH/hjECTulJFQGIWKOGdLhJEuAB1XbXiGO2cQXg5Eu+cd8ArKWAwrDdDmP1e97vJSwphRLsmmEj5owqKnGYfSqf8q3Igl2htKR3XvQyqpHj8mp6tFRquMm2cbYC3b20GdQTJoahKbWwTGJVSdbgKDnvCKaAqR1MCMXNVB+5dpNc9/LCXddBsw27Zu2myGg5GTzxlJlOqch10pOsUSaopvctSKIse25sJfIJ5k5mXZPDE6PDIIRAKHV13BOS9TG6M/G2VsMag/nGxO22rc5l08Cgltlf2fTbxeVsFEnnR3V8cgzZorAbM10jSKDcX4pA9KIFvS2VqwnUf0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lsIdWZpvk1BEEhHcot5JI4BjGeNEeY+KECti2Tq44Qc=;
 b=js018wHStRvJF9cHPdPWXGUWgaIKfMAYQKQAy8uziYBE2O0WtU2/hAUWvg2cPyrNbdbkXHxAZ7CUX5Ua9f8bkFhbclI50AvvSDVsjUm12tlpx02rnsQ8QB6syBV/V3pbLQbw2MxkmP/7TaOai5EZ85CMILvVUHnHJRZh716+g0Fened5YogYPKdCzd9VJ0op0EzRABSUK+Hge7GjqmBK3/Kk38ToLB9XjdN9gSjzALgNnQgGbZEEoDOPevr1TrlEJDQvra5qaYs+8upvZpCLjLL6rAidCEsB6S/s2WA6sQKaO+37N3RbNTApbzqlq9IwyF2xYZ36RqlvqClFElOTLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 15:27:36 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 15:27:36 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 3/4] drm/i915/alpm: Calculate ALPM Entry check
Thread-Topic: [PATCH v3 3/4] drm/i915/alpm: Calculate ALPM Entry check
Thread-Index: AQHaU20jsbyEGynockShPNO07BL2h7D9evQg
Date: Tue, 6 Feb 2024 15:27:36 +0000
Message-ID: <IA0PR11MB730787B07163787B8B412FA5BA462@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240130111130.3298779-1-jouni.hogander@intel.com>
 <20240130111130.3298779-4-jouni.hogander@intel.com>
In-Reply-To: <20240130111130.3298779-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|BL1PR11MB5979:EE_
x-ms-office365-filtering-correlation-id: fc587551-bf4a-447f-a61e-08dc272825fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MMzKA43EKIMfipR1wHOQGzmHfMxZoWgRU5r+S/F5fO4My8Mw7zckXp5jYtMWRyut6OKT5naaNeaCvcgzwh8ftJoOYztKaF30oq31cVlUjFoZZtZ3+TuIWmtn7Uyo04DVQnBVv/lYE+rHEox7WOSLuNaSFjOAnxt9C2gD4VkJWvxxhaVGgz4bMcSNrHM44ZmOOn7i79da/hDmF3qnHT2WZpYGHmhXfm4sBHpLxVPWk6qVgr9OKelo9U02x9vxab3XLPWccFgAdq3zAeTsZXBr/imZh3U6f8Lv6llnqjWkyXXBhTX40QM+CjQM+ptOII08fGzIv9ILYHo+s004HeWWF3MimpXKSD7hRFPXQ2ReMEFu2vQLrpol35ndHu5Oqqz0L6jmTGQxfrL6uEbn4gLz5DCfp6hEQ2+8H/J7xfSgKL4A/ggcuXDTuV1DHJHqjsEWu0E24Ye5Qxo00Crr20Z/TZR9PJbzNBOzjQKvRhQiFdNmtxv5W6JwBzjR7PF3EY1vGMte7fLv/cYJskrv6crOUv1dcp6V+y6WzWs9n0TAmUOSiFvmLS/8ZMRa/j/rzNEMHmKgX4/DB8wrXcG2AwWniFwgrvvk5DG7o5etv7rXZMA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(346002)(39860400002)(136003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(41300700001)(86362001)(5660300002)(478600001)(2906002)(110136005)(38070700009)(66946007)(316002)(64756008)(76116006)(66556008)(66476007)(66446008)(8936002)(9686003)(52536014)(71200400001)(8676002)(53546011)(33656002)(6506007)(122000001)(55016003)(7696005)(83380400001)(38100700002)(82960400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SFdFM1l5MHhMSDlaaEJSVVRUQ2dRRUtDSUhYMDlWeXFVVTV1SURiWWtGYkd5?=
 =?utf-8?B?aSthL3VPU1RSbHR5M0NURnFQNzlLdjQrV3BSRFFLSHJSek1weVpTVWJrY0U0?=
 =?utf-8?B?ZUNDanVPcVdmdTdhRE4zdldqWEZHVjRidkJFUFhuQUZIaUd1dU1WM1hoWi9s?=
 =?utf-8?B?ZzljVzdkL1JmVUlJY3Urckc5M0RkOUx1QW1uQzdBblVUWC94Q1lzVm1wcDhU?=
 =?utf-8?B?VlVjeXlkVGZlbk1sOEE5N2p5bkJnSE1ERTk2YkZITnFSdlRYNDFuUURXbW9M?=
 =?utf-8?B?N2d6TWpDa1hXZDBnOXhuVGc5cGtHY242Mksvb244bEFzdEJPTnlaV0dGSDFC?=
 =?utf-8?B?QWRwUW5uUlp4WWMrOUMva1lPZDlHUXEwc1lFNFh6QkRubWhXWFRzRWtrVDZG?=
 =?utf-8?B?cUl3dURvZE02SDJoUnozSjlVQnk4b0xERTQ0OUJXUVc4aUdiamg1TmI1VlU1?=
 =?utf-8?B?anVVTTU5UVNRaFF3dXlKSEI1L1NsUU44Qlh2cGh3bHY0bE9VeW9jcXh2R0hk?=
 =?utf-8?B?YzZRYS9weStOWVoxQWd0bGR5MDNWYWtERjFleHNyU0NmNnEyRlVCcDdTTnV4?=
 =?utf-8?B?RFI5dllZYVhHT3A5eXhZQ3F2S3paeHRXcHJTY0ZLTk9iaFVEOFVKRDl0TFB5?=
 =?utf-8?B?UTFtc1N4aFFISmJHekVmYzNxQXZoUzlVamM4TGdpaG5hWmZUQlNIb2tYRlQz?=
 =?utf-8?B?MHVNZyt1bTJXcXg4RWFJdVQ2OHpHa2lNSjNQcUp6eDVqMVN5bTdNYmNVdEFv?=
 =?utf-8?B?M3NLTGJ1blJ6YWhxekRVYjZIdGdaZUVuWVh5SCtBQWhPbFhSa2lUdWF4M0d2?=
 =?utf-8?B?bS9NOXpJR0dwU0RwTjFWNkUvUW0ySHVUTy9SVGo1OFZzQWZlaXZRZVN1NExD?=
 =?utf-8?B?MUt6dnpoZit3T083ektUSExpV0dBTzU3aGxNNGFVK2pYNEV5RkI4K1hDSHcw?=
 =?utf-8?B?cEp5NkNmTmZ3MzE3SGJVT0Z1aUtIVnExV2h2dWpsbGNUUmY3cTRVcW8vcVNC?=
 =?utf-8?B?M1lFRkpRR21QYlZXR1k5STk4TnNRUUpoYUpCdWdNTHF5aVNGTkZYcHFndzZm?=
 =?utf-8?B?czFTak9tL1hLdTRsSUtVNUFSMVlxUWxKaFpEVUtmeXhGbllFazBWU2VkcnNy?=
 =?utf-8?B?bHdSMzJta3gwcDZUU2RmeU5sbHhzaDY3MDdVQkFmL1IrMldXQTlFWDdqdGQr?=
 =?utf-8?B?bGZnY2FQb2pWRWYza2xFbXRJdXhwSjdCamVsV3h2WFcrUGZySlFwR1pNeEJn?=
 =?utf-8?B?ZXppNjVvQXpYTzNZcThCSWI3WERtRk5Yek51dklUZWJpWmFUV3FMRjhSSlVY?=
 =?utf-8?B?WFRZUTVLY3djRUwvYTdVM2tQUXdzQnROdHJzNHJYL1JCdFBpRTFWUy9JVkZp?=
 =?utf-8?B?S2tiNVlRSVJKdzlUaW4waVhhbVVTaWYrbXdmeVZtdkpGS2lmb1h5L2J6RVQy?=
 =?utf-8?B?WURSYUdXTCtjSXFkUHY1UVNrazUzRWZZTDk5Y09xNEM3enY0ZVBOc21TamxL?=
 =?utf-8?B?RmdvOUEwRENBNjdwVk1UdFlUQk9YR3ltVnpob0RXSlpjYWY4dGJOMFRINFRR?=
 =?utf-8?B?cUZmQkFkU0huZVp0WUVtc2UyMEpRNXpkc1QvSnp5UUFKNGlUbWR6SFZjQ1dD?=
 =?utf-8?B?TnpNSVBnaDhib3RqOS9oMjc3bFhYdE5DaVJKSGtlS3REWjluSjk4SnFtdnd1?=
 =?utf-8?B?dXE5TEhYcXhOQ0czZTgyb2JZRit5NzZXZUc0WGpRVEpEQ1VwalVFWWdiQ2xv?=
 =?utf-8?B?RVNIeUNlam1ybmhoQ2JlUjVKVkZNWE9GTXZVYXBqekU1b0JhSkwxMDlOaTFo?=
 =?utf-8?B?ZFhjUjZSbTF2ekxZekNtdHRuVGpXMHozTldCYTZDTW5uZzk4a3BKTmhGdzdW?=
 =?utf-8?B?cW8yQ296QTRVWXpoQytHWmxaSXh2cHY1ZEF5b2QxN2NkWkhLcm5qb2k4bXVE?=
 =?utf-8?B?Z0ZPWmQ2R1RhSmZlYW5GMzgyUUtOLytmbnhzeFFsRXBGNUZVcnhBT1RQazg1?=
 =?utf-8?B?RFBCN05RRlNWdWs2Qjlha3lHeGpwWTZUUG9lNGcwcmpTWldZaU5STXFLMERV?=
 =?utf-8?B?RXNlNjh0VlFNRzRDMTFWNnlBL25CUkVnTitwZ2E5QjlhbDVVNmdrdS9ndCtl?=
 =?utf-8?B?SWhjdGNEdTJjeEVKbGNoN0JtZlBDYWNMR21BSUNLZjlIVlhsV2pvbmhDU0ww?=
 =?utf-8?Q?PjElWywVmzCjPxOaFomn8vR5luCJGUgx/znIY4NUYncC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc587551-bf4a-447f-a61e-08dc272825fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2024 15:27:36.8665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N0sWufFoE58z5Dm3zV6XRNrO7p/ZGWjFea2/4pIWEY0wzyxKX+x6yZ+XcopWgE7SzPIMZyRvt7R189uVZVyZxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5979
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKYW51YXJ5IDMwLCAy
MDI0IDQ6NDEgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3Vu
aQ0KPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMy80
XSBkcm0vaTkxNS9hbHBtOiBDYWxjdWxhdGUgQUxQTSBFbnRyeSBjaGVjaw0KPiANCj4gQUxQTSBF
bnRyeSBDaGVjayByZXByZXNlbnRzIHRoZSBudW1iZXIgb2YgbGluZXMgbmVlZGVkIHRvIHB1dCB0
aGUgbWFpbiBsaW5rDQo+IHRvIHNsZWVwIGFuZCBrZWVwIGl0IGluIHRoZSBzbGVlcCBzdGF0ZSBi
ZWZvcmUgaXQgY2FuIGJlIHRha2VuIG91dCBvZiB0aGUgU0xFRVANCj4gc3RhdGUgKGVEUCByZXF1
aXJlcyB0aGUgbWFpbiBsaW5rIHRvIGJlIGluIHRoZSBTTEVFUCBzdGF0ZSBmb3IgYSBtaW5pbXVt
IG9mDQo+IDV1cykuDQo+IA0KPiBCc3BlYzogNzE0NzcNCj4gDQo+IHYyOiBtb3ZlIGRpc3BsYXkg
dmVyc2lvbiBjaGVjayBpbnRvIF9sbmxfY29tcHV0ZV9hbHBtX3BhcmFtDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0t
DQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQoN
ClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0N
Cj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAzICsr
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCAyOSAr
KysrKysrKysrKysrKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+IGluZGV4IGZmNmNkMzBiMmI3Ni4uOWZhNDJhNDUwM2ZlIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiBAQCAtMTcxNCw2ICsxNzE0LDkgQEAgc3RydWN0IGludGVsX3BzciB7DQo+ICAJc3Ry
dWN0IHsNCj4gIAkJdTggaW9fd2FrZV9saW5lczsNCj4gIAkJdTggZmFzdF93YWtlX2xpbmVzOw0K
PiArDQo+ICsJCS8qIExOTCBhbmQgYmV5b25kICovDQo+ICsJCXU4IGNoZWNrX2VudHJ5X2xpbmVz
Ow0KPiAgCX0gYWxwbV9wYXJhbWV0ZXJzOw0KPiANCj4gIAlrdGltZV90IGxhc3RfZW50cnlfYXR0
ZW1wdDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGlu
ZGV4IDRiY2ExMTA3OTk3Zi4uN2FlZGRhMGNhMmQyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTExMjYsNiArMTEyNiwzMCBAQCBzdGF0aWMg
Ym9vbA0KPiBfY29tcHV0ZV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZV9pbmRpY2F0aW9uKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZA0KPiAgCXJldHVybiB0cnVlOw0KPiAgfQ0KPiANCj4gK3N0YXRp
YyBib29sIF9sbmxfY29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LA0KPiArCQkJCSAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIHsNCj4g
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0K
PiArCWludCBjaGVja19lbnRyeV9saW5lczsNCj4gKw0KPiArCWlmIChESVNQTEFZX1ZFUihpOTE1
KSA8IDIwKQ0KPiArCQlyZXR1cm4gdHJ1ZTsNCj4gKw0KPiArCS8qIEFMUE0gRW50cnkgQ2hlY2sg
PSAyICsgQ0VJTElORyggNXVzIC90bGluZSApICovDQo+ICsJY2hlY2tfZW50cnlfbGluZXMgPSAy
ICsNCj4gKwkJaW50ZWxfdXNlY3NfdG9fc2NhbmxpbmVzKCZjcnRjX3N0YXRlLT5ody5hZGp1c3Rl
ZF9tb2RlLCA1KTsNCj4gKw0KPiArCWlmIChjaGVja19lbnRyeV9saW5lcyA+IDE1KQ0KPiArCQly
ZXR1cm4gZmFsc2U7DQo+ICsNCj4gKwlpZiAoaTkxNS0+ZGlzcGxheS5wYXJhbXMucHNyX3NhZmVz
dF9wYXJhbXMpDQo+ICsJCWNoZWNrX2VudHJ5X2xpbmVzID0gMTU7DQo+ICsNCj4gKwlpbnRlbF9k
cC0+cHNyLmFscG1fcGFyYW1ldGVycy5jaGVja19lbnRyeV9saW5lcyA9IGNoZWNrX2VudHJ5X2xp
bmVzOw0KPiArDQo+ICsJcmV0dXJuIHRydWU7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29sIF9j
b21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCQkJIHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgeyBAQCAtDQo+IDExNDAsNiArMTE2
NCw4IEBAIHN0YXRpYyBib29sIF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdCBpbnRlbF9kcA0K
PiAqaW50ZWxfZHAsDQo+ICAJCSAqIGl0IGlzIG5vdCBlbm91Z2ggLT4gdXNlIDQ1IHVzLg0KPiAg
CQkgKi8NCj4gIAkJZmFzdF93YWtlX3RpbWUgPSA0NTsNCj4gKw0KPiArCQkvKiBUT0RPOiBDaGVj
ayBob3cgd2UgY2FuIHVzZSBBTFBNX0NUTCBmYXN0IHdha2UgZXh0ZW5kZWQNCj4gZmllbGQgKi8N
Cj4gIAkJbWF4X3dha2VfbGluZXMgPSAxMjsNCj4gIAl9IGVsc2Ugew0KPiAgCQlpb193YWtlX3Rp
bWUgPSA1MDsNCj4gQEAgLTExNTYsNiArMTE4Miw5IEBAIHN0YXRpYyBib29sIF9jb21wdXRlX2Fs
cG1fcGFyYW1zKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJICAgIGZhc3Rfd2Fr
ZV9saW5lcyA+IG1heF93YWtlX2xpbmVzKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiArCWlm
ICghX2xubF9jb21wdXRlX2FscG1fcGFyYW1zKGludGVsX2RwLCBjcnRjX3N0YXRlKSkNCj4gKwkJ
cmV0dXJuIGZhbHNlOw0KPiArDQo+ICAJaWYgKGk5MTUtPmRpc3BsYXkucGFyYW1zLnBzcl9zYWZl
c3RfcGFyYW1zKQ0KPiAgCQlpb193YWtlX2xpbmVzID0gZmFzdF93YWtlX2xpbmVzID0gbWF4X3dh
a2VfbGluZXM7DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
