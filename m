Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2E479120C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 09:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C90410E2B1;
	Mon,  4 Sep 2023 07:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D6B510E2AC
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 07:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693812313; x=1725348313;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=+6D6HFmgVe4hqvBRYeOGgHpb9y0ixTyYimqVecNRfxs=;
 b=D53C5WMWC6z17LbWfYl+2D0CxrANIho+yUilgeUTa+NcVL4wjhof4tEH
 +F5Z2gTVFShid9s1DjvzpgX2k6n43auU8iObgXPivDdxYuXkD4qirrG8S
 CbzurzLQRm/58FzHLth8GIHoBGO6r7zvc6Uv4rJscWyYD+ikh3pZB/Pfq
 5ML6MHUnsA4G+ue8nDapO3MV+8ITkVfvZOOrXnzvGtz1N5+jWxzXLPka8
 9pxQAEQogOJ08/p9lwEwou060DukxcoN28pP2OSJ4KU8A9tzXoOV3/8Tj
 NOJ8Z01j9FEKPhon0mu1ZdV3gBcv1SBCux69bc8dLWr2J+RE+Oa+dqg+k g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="462904057"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="462904057"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 00:25:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="855519184"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="855519184"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2023 00:25:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 00:25:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 00:25:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 4 Sep 2023 00:25:07 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 4 Sep 2023 00:25:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LNMVc45lMR5PoI9QQKybUHV3gmXmFMIA60o8LXKrxt/lxFzAogulJCwmrVeZPFTT5wBwFYYC06aEklJEfm8BLyskt1xpa89XE6j2+UGXQFp2zur2AQtuy/perK/qgyqruWx2PRkMLRNn/U4Oo3hQL2mInVKouEwviEQd0sr/J5Mo8XfYu/LhO20S6XHF3b/Zw6s8dGVZYRot4m9KUT9yLZ8r17VO2QsCSlqt+b9ciPBgVuTZQ+1EzhBlFgqKZW6yw46VsQEWogjiOOwPQ6Q1jDG/KTIwhmMNNxZ2gGbjJdDpIpDvCPOIVvs9TvZw3mXdKsPbfe+ddUtqlnJZDkzhvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+6D6HFmgVe4hqvBRYeOGgHpb9y0ixTyYimqVecNRfxs=;
 b=Pc5d9IZshj8z5Cr4D1+ET0XA/oRvyXKiCRmP4RTBhJ77L8KIEygY9e9TBk5EQ4Rf09t9KO2YFzeML0cJ8zgEUh/UY5hibBrPmXPdBmG+q0gRORL3fITRFV1nPUEa6v+7VFAzzOYf0mv5rwZqZTG+G1GMUUhTGvMe+8LnSNVMrLpQ4BCakO3GE41jpLWkFC7el/NBCje/9Ii8styg7j/88z8LS4H80lWaihwkJQJRRgTBZ0QzmTPbsBq5Cn9QPAjlyub2NtUD0s2N1srlixUblkcRnxpl54QoQfzsZxIxJyoxGBJFIfTm8pa7SlSfEZ/QnBHiHkdPBxb1d70YM7u8vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH0PR11MB4998.namprd11.prod.outlook.com (2603:10b6:510:32::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.32; Mon, 4 Sep
 2023 07:25:04 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6745.030; Mon, 4 Sep 2023
 07:25:04 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 1/4] drm/i915/fbc: Clear frontbuffer busy
 bits on flip
Thread-Index: AQHZ3wDr+jwo/LtPLEO7UQGXoH4wRQ==
Date: Mon, 4 Sep 2023 07:25:04 +0000
Message-ID: <6d30b3c51b7552035ab772930bb8d3363d2500fa.camel@intel.com>
References: <20230901093500.3463046-1-jouni.hogander@intel.com>
 <20230901093500.3463046-2-jouni.hogander@intel.com>
In-Reply-To: <20230901093500.3463046-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH0PR11MB4998:EE_
x-ms-office365-filtering-correlation-id: a68bbbe6-ee15-4fba-b8e4-08dbad180ee9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /lOvWFBahioF/zPgTMXc3JsIE/SmTdSxfVU3GUh9JPMcAbCGlswH220oDH0MQt9zTIicpYEaqkUXz0lbSHXOfM4UhYZKbDslW8cR6jBgNRQ6lZztCgsiWm5xRrv4E+Sc4VmBZrN/EdjCfqbkT7nAfMDzoDX7UR9ilEJm1ZGfFSD18879O6BpB5jqpbXYUGoSAJqqoMxY0LJDWd87B35pwpycfqhVVmJOzkeHQ4Wi0xOfx/7BvNTXm2r8L6t4cCnLe4AXz/2GcMUxOB6J3+i0e58qtW/W6N0MlkmR2JRkdEcNySD+d+c/8zkfNl3ntTBMWBIyTlhwBxB/H9wfx6Zfl/Licw47flVqoKpz62DZRvqaFOvXz9Xxpp4CFeAOPYvAub3eoAxXA3B1n4wFvh33XoUySPZT9hzzayi9Cj5dbX6eV49dd5rPGHg9RqYkKdxp+pOVkMmmNNoz2JVDoTqAOPtL2z1o6kNzK+cqy3nv1nhYvMYWDDxsS3Oo+up9+D44FcM2yJs2pb3bf6Rwn7cRoYpCPel2H+MldyLUfSOIBRmQLAme+29f8UXsqnJ3LYJmHafixehx56Nwu9d8X4voM/1lFBgfQGMYJU3zDF5oVQy8JIwT+Ja2KoeqU2NzfI1q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(39860400002)(366004)(136003)(451199024)(186009)(1800799009)(122000001)(82960400001)(38070700005)(38100700002)(41300700001)(36756003)(5660300002)(86362001)(83380400001)(66574015)(66946007)(66556008)(66476007)(66446008)(76116006)(64756008)(26005)(2616005)(478600001)(110136005)(91956017)(71200400001)(8936002)(8676002)(6636002)(316002)(6506007)(6512007)(6486002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d3l3V0JneC9naTg5ZTNKMWtaUGR5RFU3NktBbUxPbGswVzhELzJEOVVrazFP?=
 =?utf-8?B?NS9GdXpzREQ1NHpGOVQ3R2x3TXV4R3BSV2RzTjBZaG1tcEFMa2IxeFZ6dXJY?=
 =?utf-8?B?RnpHelpOa3VMZUFvbzRsUHREVnFtUmhrdDRPKzhaNjY2Zys1eHpzc0lXN21C?=
 =?utf-8?B?aWJLNkVxcXhwZUFoNHl2SFhSNXBmYm9adWRwemlPbU1tanFjRk52ZTduY0FM?=
 =?utf-8?B?aWR6bnlLWmgydnJqMmlWSGFNaWZrSDQ2K0NpaWMyeFh6QjBuSzcwNmRZaXdq?=
 =?utf-8?B?NmgybHhpeDUrTXBYOWFHSU5tSCt3QmhKQ1ZsOTJja1BFY3hoaER4RjBWcWJG?=
 =?utf-8?B?T3d0YTNyeGZFZU82MlVOMjBYNTlWM05DTjhxb2x5YkdCU2xGZElla0E3V1NJ?=
 =?utf-8?B?blBCa3cvOVFicFd6QVdnMS9uc1JlRTI4eTd2K1dIM3pxOFFLTkZZS0s3VDAw?=
 =?utf-8?B?bUFxQWR4R3ZheGNocndyZXB1ems2S1B0OG9naVNScCttQkF0YXNsZ3hyT0x4?=
 =?utf-8?B?M1h1TzhFeHV3Q1Z1QWlHeVNNb05NT3JNWkE4QTdvcVhUVWpxWTdoelFuSVpp?=
 =?utf-8?B?dmZIeE5nKy8yWFFEaXVEaHpKS24rTVJ3VHJYcGRlb0ZMbnlpcEprYklXVWEw?=
 =?utf-8?B?NEU5UGQ4WVgzTTlHd0c0Tm9VL1BBVmdsdzRmR3VGT2NFdnBreE4zcC9td2VL?=
 =?utf-8?B?QklCZVRrZjdOUWxwQ2hBTDhNdURPMHo2VmtmdmNsQzlqcmlEdTU4N3RtaVcy?=
 =?utf-8?B?NkthdTAwNndzODRUNHFPWFRPVU5HY0JPSlpTMXJ6VlBNNGlDUDhLeFdNU3lU?=
 =?utf-8?B?NGJySEhLejFXVmJBcXllazJyOUZHeEtZQ3pVYWFOa3hhU3VjdkMyZ2RLL1dv?=
 =?utf-8?B?VW1kMml1aFZaMUNTZWlmNVVzbjREK0cvVzJYSDRzUnlLVTdjSVFOdXlxQ0lI?=
 =?utf-8?B?dEJlUHc0SDcwaGZ4dDBySW8zWUE5WWNHYUR3SDZZb0JweWVCM1lkSWZoUzhM?=
 =?utf-8?B?L2wyV0hlZHlhazdacGk5VHBEanpPZUhEQ0h0eTRDcXRIbE9JRThyd2VwOGg5?=
 =?utf-8?B?WWEwRHR4eVJ3L0JIajRQODRXME5LSXVtWlFjejZwYTNadzIxRjltZVRlY2hF?=
 =?utf-8?B?WEEzb2NLWDlpdTZpYlZ5M1dOalArSVQvVnRhYkoxMkpFbnRUYTJ5dHZGTUV0?=
 =?utf-8?B?amdjR0dPeFp1MlBrNU14WmwvZmpETzZvMlkxTDl0aFpEN2pTMlZnTTNQOXl5?=
 =?utf-8?B?dlpJamNNK0s4aWFoR1JrV3hLN1B4TW5jdXhpSmU0RExZWG02ZXZkVnJpNmcz?=
 =?utf-8?B?d0dKUlljanZnNHV1WllJU1pCbFAxSThYdDFPSW9tMDVKWC9oNDY0MVNhSGFh?=
 =?utf-8?B?L3ZqS3ExNUlQTlhjZmxoekhnb2VEZS9vUWZwUnA0UTROU0xIWTJGZW13eFds?=
 =?utf-8?B?RUNhbVRhTXFPcGw0ZWVYTU1iQUNuM2lEVzlGS0VWekNsek1ZNWRkQVg5QW9w?=
 =?utf-8?B?ak1DRlVRZ2tDZ0xIVUhzcjdzdUNjQVBOTFo2aGQ0QU1JZlA5Y2RFZzVCbXo1?=
 =?utf-8?B?S3g0OXRHeXlzWXo4THlwOS9zdE5MUUFBRnlPYytsREVQR1F1VDErbnhmS1c1?=
 =?utf-8?B?MHF4b2xadm44cWRkZTNMcktQMWRRRURjOFErRTFMVk5CNVVSSHZBMk1ObTlB?=
 =?utf-8?B?cmhyZnVnWlV4RldVcWNVN3pQNm1JMHdxcVFuVWI0N2J0Mi9SamhRWUxTNlF3?=
 =?utf-8?B?QXY2Vk1xYkVoekxzbWw5SkE3U0dUV3dMM3hJdUFtM2ZpenR6ZzYzZGZzWWRL?=
 =?utf-8?B?OUpuMk1qa2JnbWxiZzJoYTVRKzB3SjI2R1VvV3N4OHNHcys4M2t2UURFc3ph?=
 =?utf-8?B?NjdwTnVRZWEyS052Uk1wK0hCbTFoN2NCcEVOODBzMnZKKzFUcENIbWxGdmJZ?=
 =?utf-8?B?VFR2d0dZNm1vQk9SQnRiSmFHRm1qQzBzQWpBeFZuclE0V0dXd290amRvandM?=
 =?utf-8?B?OEg1MFIrTUxIOUkxVlpoZG5SbXkrM2tIbXM1QjBCUDdFajNjQ09neXNTQmJB?=
 =?utf-8?B?SVh0bnN6WUttTDBsVnN3R2R6VmFqa1FLZjYveWUrRFpiMFVMRStINU1jOXpJ?=
 =?utf-8?B?SWRjSkJWZ1F6UTBlK2JtZGdUU2tKaUxBUG9IOGxCWTErc0FUVGRURkhKTnFn?=
 =?utf-8?B?Tnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <81FA7FF46ED4704B999E53D095618136@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a68bbbe6-ee15-4fba-b8e4-08dbad180ee9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2023 07:25:04.3953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t56mXycK3rAZsJwWng0EJm1mQtmj47aHZWZNwadzV5rOaIsx3haTTJX5rmjJgGs92H3zaG26b8U6vBSiXhVbaKKbMnYGBPcQkFOnyjDf7do=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4998
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915/fbc: Clear frontbuffer busy
 bits on flip
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

SGkgSm91bmksDQoNCk9uIEZyaSwgMjAyMy0wOS0wMSBhdCAxMjozNCArMDMwMCwgSm91bmkgSMO2
Z2FuZGVyIHdyb3RlOg0KPiBXZSBhcmUgcGxhbm5pbmcgdG8gbW92ZSBmbHVzaCBwZXJmb3JtZWQg
ZnJvbSB3b3JrIHF1ZXVlLiBUaGlzDQo+IG1lYW5zIGl0IGlzIHBvc3NpYmxlIHRvIGhhdmUgaW52
YWxpZGF0ZSAtPiBmbGlwIC0+IGZsdXNoIHNlcXVlbmNlLg0KPiBIYW5kbGUgdGhpcyBieSBjbGVh
cmluZyBwb3NzaWJsZSBidXN5IGJpdHMgb24gZmxpcC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1v
ZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA2ICsrLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCAxYzZkNDY3
Y2VjMjYuLjgxN2U1Nzg0NjYwYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jDQo+IEBAIC0xMzA3LDExICsxMzA3LDkgQEAgc3RhdGljIHZvaWQgX19pbnRl
bF9mYmNfcG9zdF91cGRhdGUoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiAgCWxvY2tkZXBfYXNz
ZXJ0X2hlbGQoJmZiYy0+bG9jayk7DQo+ICANCj4gIAlmYmMtPmZsaXBfcGVuZGluZyA9IGZhbHNl
Ow0KPiArCWZiYy0+YnVzeV9iaXRzID0gMDsNCj4gIA0KPiAtCWlmICghZmJjLT5idXN5X2JpdHMp
DQo+IC0JCWludGVsX2ZiY19hY3RpdmF0ZShmYmMpOw0KPiAtCWVsc2UNCj4gLQkJaW50ZWxfZmJj
X2RlYWN0aXZhdGUoZmJjLCAiZnJvbnRidWZmZXIgd3JpdGUiKTsNCj4gKwlpbnRlbF9mYmNfYWN0
aXZhdGUoZmJjKTsNCg0KQ2FuIHlvdSBleHBsYWluIHdoeSB0aGUgY2FsbCB0byBpbnRlbF9mYmNf
ZGVhY3RpdmF0ZSgpIGlzIG5vdCBuZWVkZWQNCmhlcmUgYW55bW9yZT8gSSB0aGluayBpdCB3b3Vs
ZCBiZSBhIGdvb2QgaWRlYSB0byBleHBsYWluIHRoYXQgaW4gdGhlDQpjb21taXQgbWVzc2FnZS4g
IE9yLCBhdCBsZWFzdCwgYW4gZXhwbGFuYXRpb24gYWJvdXQgaXQgaGVyZSwgc28gaXQncw0KZG9j
dW1lbnRlZC4gOykNCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
