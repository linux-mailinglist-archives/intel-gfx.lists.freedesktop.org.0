Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 065C37530AD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 06:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D798A10E118;
	Fri, 14 Jul 2023 04:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EAB010E118
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jul 2023 04:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689310063; x=1720846063;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=25nW30JkMQxFO+K8qZJO4AaEaVUmHo/huACDJy9hcXc=;
 b=Vozk6jAKLKaT8GbyIEhnvFCwX7WCiDdJYsKaxiYyxIODHUYDeCD3WUye
 IBMYAvFsnB1fJhn/+tCgt9x1+TX5NCHPKxHBi0KAVnfSgrRyGeRireGhK
 hP5SwEazUZvgqsYpjzpE0xpVF0NtQ8o4eIfCAjbL4LQmXfW7NOfj9XgtN
 qal+oMIZk0kk9RfvMxoYpSTB9Jgf385jz2lpcVG0k+Z0XgLvi0bBJXgX6
 ldPcUP6YP4XQEuRkS3M8fwh7Dq7wMg0sVPRoyQHwnqw6ZKVmjsKyOYWWS
 Da6PrScWXk2cFfJ3kUJnBAi8utTnBosT4oE4gN5mfSsySG4+d+8IiJP93 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="345707102"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="345707102"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 21:47:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="1052909789"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="1052909789"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jul 2023 21:47:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 21:47:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 21:47:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 21:47:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/09Eh48XytuHg52C/KhyzVcsC+vePHKdqWCXxPjlLh9yNTMUlDrtHDAPG9N6n+PZvYSLsVGMtvcZtJU/UXqllR4v4B7EfeOo25F1nVO7ac0YJpTDi9ic9NZmhgojY8EF9fpCLJV0GyF2uf8OZB81CDqJ2gSlE/geVgIj/DNH7hFu5wbS1QKSbk086s5JyzOxH8AaQcsfuTAxo+h2D54s+O8l+0k/VWm3VZVZtM8m2V4obsOCqTZnN40HfBSkhp6m+IN8EWIweFfIrv390KXvsc17sPdvJjWaH2wZ7Dur6wkpK8xihRwrswtlUVT9D6aD4PQ5FpmQq+WHDR8YWjRFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=25nW30JkMQxFO+K8qZJO4AaEaVUmHo/huACDJy9hcXc=;
 b=FHXRG5Fio3ykjM123Hb+t3mjKrADWO4gA9vnEloL8nTS2kXpB8kXRKLHu9QJtld51VtYZKxjFHZyaFZ27s+8mllkWW0pfKKGadqBsj9ZgD3IvtjKRJnPHjbZsab50opPDWohRDf3+bgAIYNjboBkB6yQSM9U+i3+h4/YtjjgjLBZasOGF5lJZzvTCeKknVdV1OXPpK48IMDG3I0AX6vaE36oUqexIhmr1FnEkYPr/66ePTVDWTz9Wsq/Lmq6x1Qc/48UZAKJdck1zWQ4S90lOzrBEDrl+Fls+YNRLaJFr5kJum6F3YgjIUzjptBuqlYzmDeEHdCQ4nCxcevfi9G2Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SJ0PR11MB5040.namprd11.prod.outlook.com (2603:10b6:a03:2d6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.24; Fri, 14 Jul
 2023 04:47:39 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::1cda:590c:994a:abe0]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::1cda:590c:994a:abe0%4]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 04:47:39 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915/panelreplay: enable/disable
 panel replay
Thread-Index: AQHY9RZTdqGNpDuUXkSqJRIASLrg4q+6L1Pw
Date: Fri, 14 Jul 2023 04:47:39 +0000
Message-ID: <DM6PR11MB31774DACC01F7E33E401D969BA34A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
 <20221110150307.3366-5-animesh.manna@intel.com>
In-Reply-To: <20221110150307.3366-5-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SJ0PR11MB5040:EE_
x-ms-office365-filtering-correlation-id: fc63ce0b-41eb-4003-efcb-08db842573c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: brlZMcxasxkDwjEkE4UbOt+jUaA/h5DxiVg8fyD4yNdArg5An3/OBHozMbcSuCl/YZPEUDwKrdQwRFW4ANeLQMFzkszjTwVDKZBcdBY15iN5SblXLW7wtfVFtnEY2UX1Tq46P+Tp3zbKJid4hcb+80AvYmvz56kzyh5L8zMNvop0h2FdEiK456p048VTh0s+CkDoNgeNn6aOLKhjSZ91Dh4/0JjehBX5UsFzNi8fnlGpoIkrw5dyphoQN7b3EBXvmeQg2HYt9XENXjTSt7I3o2c3/ax97+fCGQ7JNKdiP+yM5twfQf/sliBA22kzzcg++YCy8dmC25yKUIFizKEjStOsLM/HcQ3eCb8UWIK7mVXJXc3HkINenhaM0u9k2bmjdkV5wuJ+AAxPHaN8idEV7b66kYZtBBFDvIHVxemwURSaSzoLaXyicvba2g7WMGxLqL16ftGFMnLKoQ/JTmJlJiZXnAIdKYv8rznPtwf4XBos85F7oonJ+1g5wHYLj8J9SZvvSR4Z6SYJ4Bo2lIiJ1gkjgl/iQ2RSuHn0fnJ7VIXqEfWJPr55F9q2qwdBOgY7Kq0Z5h5wYckNkp0kpKsBiDygLdaRXFaWrM9s8gzRrkLYhGQrBi8Jvyiovav17/NY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(396003)(39860400002)(136003)(366004)(451199021)(38070700005)(38100700002)(82960400001)(122000001)(33656002)(86362001)(8936002)(55016003)(53546011)(110136005)(52536014)(8676002)(41300700001)(6506007)(26005)(5660300002)(186003)(2906002)(71200400001)(66574015)(83380400001)(316002)(66556008)(9686003)(478600001)(76116006)(66946007)(66446008)(64756008)(7696005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djdDSE9pNm5RVW51VFZOdEhmY0NLb0NTTS9YRmttVzExSWZWQ1VMY2g1Z2g1?=
 =?utf-8?B?TSt3bUxDTjlLWUg0WWR2alBlMVBKRlRTM1ZuQkhNNnluUERzSFlha2IvSTlM?=
 =?utf-8?B?UnpHZ0E5THhIekMwa1YxRXNDZ01sTzhqZUxjazZjS2cyemZWazE5cVFNdDQ5?=
 =?utf-8?B?MTl5ZTZLdXNCM29yU1poYVFmU3FTalNNSGlSMUxVUHkveEk3d0hFeEs2UHBu?=
 =?utf-8?B?QktRQ09YNk9MbTlLNFEvQytmcWFSdmtMZTZHYnVEcW9FTVcwd3NUTkRuV20y?=
 =?utf-8?B?QTk2MzFzeUc2MWxydERBaXBOUnhlcm90aTZpS2dQbnlTcjdoR1BXaThNbng5?=
 =?utf-8?B?Y2plWnU1QkNldDZEaFFHbkRRWVQweVFuZnhvUHBndlZEY0NhcmNqM3JkVGwz?=
 =?utf-8?B?bWtBZndwMFFuWklKd1FVRVBPeHZOUU1VV0UyNFpzRTJtUEVPM01FMnVRRWdn?=
 =?utf-8?B?eUd5RUFNMlZycis4U2VIODNJbFhFSUo0MXR2MVc0blFseTRsMjBIdFBDN05h?=
 =?utf-8?B?VHNEK1Q5aGk2VDkxWFNNZlpubDBNY1lVYnZaVXBtaGtIVGdyZmZLUVVZd3hH?=
 =?utf-8?B?L0JhNkRjMHZ3b3kxcEQybnM4a3ZzUnc3bGtmcmxmcWJnVmlvVXhPWU5Fdk5P?=
 =?utf-8?B?eGRiRDJuaENEQVE4Si9qdHlaR1Z1cVlNOE1RTnZDckc3Q0o1ejlIYTBDV1Bz?=
 =?utf-8?B?VEx4cmxnYnFaWkI4UXRNRmc5dkdhZkNXMkhjWWx3cmVYRlZBaHk4UnJ2bk5v?=
 =?utf-8?B?NFJLVkJYTng4Vy9ZMGhaMW5sdXY0aEk0MFcrR3hmbWQ1Z29rcDBQWWFtMDZI?=
 =?utf-8?B?YkFsR0txUGN1dTlLWml0U2JWMWxwUUZEdDNlV1ppanpGYXlXNWlYY1RPbEJo?=
 =?utf-8?B?REIreHp0c2NBMVJmaGZnMFJORjRCaXFSTmEzdG4yS1l5Yzg5Vkhkcml1cE5T?=
 =?utf-8?B?MVVFU0s4OExGcjdxemhaZURseFFQNVhxOHV6Mnc4RExObGczWlNxakwwamp3?=
 =?utf-8?B?QkhDSGhrNDhNYm1qaExxWU9ibkVDQUszUXYxWHVvOUxFSCt3UW9DR3d5S3ZJ?=
 =?utf-8?B?VGJkTU9odlpreExJSDVoM3YvWEk4Yk1ZbDFlUlUvUmlteXM0SUdyNktCSklP?=
 =?utf-8?B?cXVGUmloeU54YnVIOVhuQnZXUlJlQWhYTEJFZTFDMEV0ckVCNkpZNlJDMEhD?=
 =?utf-8?B?dncvZTlyZ1F3VmxjWGd1bjhWYzlmd2R4ZzhPNzRmQWI5YmlkY21sQ3drRG8r?=
 =?utf-8?B?aVZVUHVMNFUyN3JsQ0JOTlVsVGNiOEgxVWo2OGJWODRVZFdDYm42RklmVnNl?=
 =?utf-8?B?SUMva3ZFRGpuT2lLdVJlZEQxVi82bWZQK1JoS0RsMjNVbkVmanVkbXYzS0ZG?=
 =?utf-8?B?Y0VBOFkzdDBRb1Z3d25BOUZ1YzNTY2lSdnNjLzh2Sit3ZHo2c0lqUXJUbnV2?=
 =?utf-8?B?MGNSWmt1V1VsM1p1eHA0OXdDZTJMVE1UMHZqOWwyUWZvNXFQUGNqWm5McGZz?=
 =?utf-8?B?TFB3bDQzV2I0WVhPSndnZHVmZEZ4TU1pQkZNOWRPYjAxaEdEcUxXV3NTMEhV?=
 =?utf-8?B?QUtHUVlSRTM1NkpjRXh2TW9Ed1ZMZ0w0dlpsUTRZTVkrYkRhYkhLZGVucFdZ?=
 =?utf-8?B?QkRWQ0s1MmNiWU1IVGRjM1lTcG9NSllFWDA1WU5YUzNwSzd2eEFrZXpOR3pt?=
 =?utf-8?B?c0NYMVRhV1dQZmppN3kxeHQzRTUxNW51RTFCRkFPT054SlExaExaS2F2SFVq?=
 =?utf-8?B?eGlNb2x2MG9vSWgvazIrTVVab3hWN2paNmxVdEdpeWtrMnhLWXZkTkp2MDZW?=
 =?utf-8?B?REFJazdPNGtFSEpRVTZmVHVvVUFCMHlVcll6MEI5UjNkZDdXcVpUMFRmSHAy?=
 =?utf-8?B?WkY0eThCM1Y2ZWRCZndtUVNzRlVYSDF0eTRqcG8vM0JkMHd2M1M3L3pNM0ls?=
 =?utf-8?B?NjRFL3diaEhtSUtFNUptcm9xYXBGckFYSVVrQTFLNmYweTFaRHQ5U3c1YUlv?=
 =?utf-8?B?RmJZQ2VLc2lHbVJ2aXV4Mmd4NFkvQXpZdThJWTJBdFhqdk1HeEV3Z2RXMFY4?=
 =?utf-8?B?cGJ2bEsxbzJrajhuaHhvRnhES09nQWNPTnduelZtNFdQMkdFV2EzVE5MRHNI?=
 =?utf-8?Q?NIfA/pjjGLlc5tQUQIMDmC93L?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc63ce0b-41eb-4003-efcb-08db842573c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2023 04:47:39.3831 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NmxD+xVuWuc3IhW9JVULmC7wta5ctWKItBV8MHWmUouuSYeoZbWpy+ewYRWBLYPIb/ZxlMHf62E0vOqYM1X9UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5040
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/panelreplay: enable/disable
 panel replay
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBbmlt
ZXNoIE1hbm5hDQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAxMCwgMjAyMiA4OjMzIFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1n
ZnhdIFtQQVRDSCA0LzRdIGRybS9pOTE1L3BhbmVscmVwbGF5OiBlbmFibGUvZGlzYWJsZSBwYW5l
bA0KPiByZXBsYXkNCj4gDQo+IFRSQU5TX0RQMl9DVEwgcmVnaXN0ZXIgaXMgcHJvZ3JhbW1lZCB0
byBlbmFibGUgcGFuZWwgcmVwbGF5IGZyb20gc291cmNlDQo+IGFuZCBzaW5rIGlzIGVuYWJsZWQg
dGhyb3VnaCBwYW5lbCByZXBsYXkgZHBjZCBjb25maWd1cmF0aW9uIGFkZHJlc3MuDQo+IA0KPiBO
b3RlOiBDdXJyZW50bHkgZW5hYmxlZCBmdWxsLXNjcmVlbiBsaXZlIGFjdGl2ZSBmcmFtZSB1cGRh
dGUgbW9kZSBvZiBwYW5lbA0KPiByZXBsYXkuIFBhbmVsIHJlcGxheSBhbHNvIGNhbiBiZSBlbmFi
bGVkIGluIHNlbGVjdGl2ZSB1cGRhdGUgbW9kZSB3aGljaCB3aWxsDQo+IGJlIGVuYWJsZWQgaW4g
YSBpbmNyZW1lbnRhbCBhcHByb2FjaC4NCj4gDQo+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyB8IDMwICsrKysrKysrKysrKysrKysrKysrLS0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNTAzOTQxNDNjNzk4
Li5iNjQwNmMzMzQzMTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBAQCAtMzk1LDggKzM5NSwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5h
YmxlX3Npbmsoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gIAl1OCBkcGNk
X3ZhbCA9IERQX1BTUl9FTkFCTEU7DQo+IA0KPiAtCS8qIEVuYWJsZSBBTFBNIGF0IHNpbmsgZm9y
IHBzcjIgKi8NCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5lbmFibGVkICYmIElTX1BBTkVMX1JFUExB
WShpbnRlbF9kcCkpIHsNCj4gKwkJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LA0K
PiBQQU5FTF9SRVBMQVlfQ09ORklHLA0KPiArCQkJCSAgIERQX1BBTkVMX1JFUExBWV9FTkFCTEUp
Ow0KPiArCQlyZXR1cm47DQo+ICsJfQ0KPiArDQo+ICAJaWYgKGludGVsX2RwLT5wc3IucHNyMl9l
bmFibGVkKSB7DQo+ICsJCS8qIEVuYWJsZSBBTFBNIGF0IHNpbmsgZm9yIHBzcjIgKi8NCj4gIAkJ
ZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LA0KPiBEUF9SRUNFSVZFUl9BTFBNX0NP
TkZJRywNCj4gIAkJCQkgICBEUF9BTFBNX0VOQUJMRSB8DQo+IA0KPiBEUF9BTFBNX0xPQ0tfRVJS
T1JfSVJRX0hQRF9FTkFCTEUpOw0KPiBAQCAtNTI2LDYgKzUzMiwxNyBAQCBzdGF0aWMgdTMyIGlu
dGVsX3BzcjJfZ2V0X3RwX3RpbWUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAly
ZXR1cm4gdmFsOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIGRnMl9hY3RpdmF0ZV9wYW5lbF9y
ZXBsYXkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgew0KPiArCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiArDQo+ICsJaW50ZWxf
ZGVfd3JpdGUoZGV2X3ByaXYsIFBTUjJfTUFOX1RSS19DVEwoaW50ZWxfZHAtDQo+ID5wc3IudHJh
bnNjb2RlciksDQo+ICsNCj4gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJQUxfRlJBTUVf
VVBEQVRFKTsNCj4gKw0KQ2FuIGludGVsX2RlX3JtdygpIGJlIHVzZWQsIGp1c3QgdG8gZW5zdXJl
IHRoYXQgbm8gb3RoZXIgYml0cyBhcmUgdXBkYXRlZC4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0K
QXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0KPiArCWludGVsX2RlX3Jtdyhk
ZXZfcHJpdiwgVFJBTlNfRFAyX0NUTChpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpLA0KPiAwLA0K
PiArCQkgICAgIFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5BQkxFKTsNCj4gK30NCj4gKw0KPiAg
c3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkg
IHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGlu
dGVsX2RwKTsgQEAgLQ0KPiAxMTAxLDggKzExMTgsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNy
X2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJZHJtX1dBUk5fT04oJmRl
dl9wcml2LT5kcm0sIGludGVsX2RwLT5wc3IuYWN0aXZlKTsNCj4gIAlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiANCj4gLQkvKiBwc3IxIGFuZCBwc3IyIGFyZSBt
dXR1YWxseSBleGNsdXNpdmUuKi8NCj4gLQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQp
DQo+ICsJLyogcHNyMSwgcHNyMiBhbmQgcGFuZWwtcmVwbGF5IGFyZSBtdXR1YWxseSBleGNsdXNp
dmUuKi8NCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5lbmFibGVkICYmIElTX1BBTkVMX1JFUExBWShp
bnRlbF9kcCkpDQo+ICsJCWRnMl9hY3RpdmF0ZV9wYW5lbF9yZXBsYXkoaW50ZWxfZHApOw0KPiAr
CWVsc2UgaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKQ0KPiAgCQloc3dfYWN0aXZhdGVf
cHNyMihpbnRlbF9kcCk7DQo+ICAJZWxzZQ0KPiAgCQloc3dfYWN0aXZhdGVfcHNyMShpbnRlbF9k
cCk7DQo+IEBAIC0xMzAwLDcgKzEzMTksMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2V4aXQo
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gDQo+
IC0JaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+ICsJaWYgKGludGVsX2RwLT5w
c3IuZW5hYmxlZCAmJiAhaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgew0KPiArCQlpbnRlbF9k
ZV9ybXcoZGV2X3ByaXYsIFRSQU5TX0RQMl9DVEwoaW50ZWxfZHAtDQo+ID5wc3IudHJhbnNjb2Rl
ciksDQo+ICsJCQkgICAgIFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5BQkxFLCAwKTsNCj4gKwl9
IGVsc2UgaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+ICAJCXRnbF9kaXNhbGxv
d19kYzNjb19vbl9wc3IyX2V4aXQoaW50ZWxfZHApOw0KPiAgCQl2YWwgPSBpbnRlbF9kZV9yZWFk
KGRldl9wcml2LA0KPiAgCQkJCSAgICBFRFBfUFNSMl9DVEwoaW50ZWxfZHAtPnBzci50cmFuc2Nv
ZGVyKSk7DQo+IC0tDQo+IDIuMjkuMA0KDQo=
