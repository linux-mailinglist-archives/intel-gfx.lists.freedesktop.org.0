Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C57D819DEC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 12:22:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFDB010E563;
	Wed, 20 Dec 2023 11:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46D1910E563
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 11:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703071327; x=1734607327;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mqYvh5TAgbxgb8RvuI9Qq8WWRcyCP7rNQ8qnBRrhG9g=;
 b=f1X/T3iob7MZ6roZZcQmQLRnMI0JnifKDwuroNy1NsG0Z7/MYFdAYaqS
 AZFXfElx7a1L3YNs5uT0dtai48U7jp+/YG+EQDdU1XGOUj0UHyxvnZYKC
 g5PuzuVL0ytlwGBVrUjrFlswhY3KkdPXIE9j0YiBIpwogyHF89ruyXaEd
 e6u+uXYlj3jzp6YuNeeJmHmcH4AHbU0E/sNfJ5xUEag2/W2u3ZGJmO/4y
 3ylImj08NqfhBCdg5fAc2SAg5wNIy14TTbT/9Ozw83OjePjurf4mViEQ8
 EabJHCbUFBYu5LmYJJ8L8Jdc5He4PmawcYmT3prJ2WFwyjIFjguA3aVIi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2637513"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2637513"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 03:22:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="894665757"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="894665757"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 03:22:06 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:22:06 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 03:22:06 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 03:22:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fL3FhwagTZy4LaXzN9fHNyuqMUier573GR+q3+r3SlvAPPAPN8htaKB3gQLG4CBejWPov//EQoBTZ/I0wY08/hGk4oRhsESgkpRTxzXBm6cXKhYAD0Z/HMI7cHckvUS+lR13M+Smyo9dfAqQSacEvNopECvoieb0fRoG+32xdJbPFDN6DDv2Ql3lklEPwZyCFFqDHx1m+78eC9cxcSQu9hYy76gr0AibRD3jhIa38yutwUOA1R24FOlSRAArNNOBaPuqoaEGw7jUeeEFLlQdY6Zi2irCGF+0IhuKzQ87cdZCRuLEX2O1PPntL7VUpuLA89yGe06kT/fE/TqW1FyG1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mqYvh5TAgbxgb8RvuI9Qq8WWRcyCP7rNQ8qnBRrhG9g=;
 b=LKSnd5Bv0qzYI8cXsUmKe/LaL8oT19jEwycrFhBZ8FB4ehCxw7CeH1M3Uz9cu2cetnn6FeYGUK0WS6o/ZlQ3ktbdntf3iuF8WPgAh+mLdYWqyEnOK2zozhRMGv1UFITA07qhlIrICbFvhyLgAAByslXIE69blyP6QeTpxeiqNmoxX9iVQ4oDl49iR00fBeQPUcY3ISry1wOvwDPisHJH2EAH+sFC0TPG323ivUiyQQJJzgGDgeFhzwE2z9khmrsQO2urmBmwTDcONURjS+Qy5SGhq6LszeWybBxS5CJuzAg/61DvNxLsYyMtZ046ojxuYcMzlT3mRBL/J4WX1rynUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SA0PR11MB7160.namprd11.prod.outlook.com (2603:10b6:806:24b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 11:22:02 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 11:22:02 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/9] drm/i915: Introduce struct intel_vblank_evade_ctx
Thread-Topic: [PATCH 3/9] drm/i915: Introduce struct intel_vblank_evade_ctx
Thread-Index: AQHaLa69IbK042fBXEGXmjXw+ok4DbCyEgtw
Date: Wed, 20 Dec 2023 11:22:02 +0000
Message-ID: <CY5PR11MB63444DD253EFE5F411C832C2F496A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SA0PR11MB7160:EE_
x-ms-office365-filtering-correlation-id: d364c8d9-a4ed-4147-27cf-08dc014de3e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8qnvcgZRzXFl+G9w7P7aQPGMxVg6V/Ltwtg/rGICXo0JXgBPJM5q98iZG94pSuNKFx8BS6jH4uwJ+sL/az9DpDYurJGoY8eswIMhZE8QH3U607oy2n03qeuPKppOnZN6ktC5SlE6qFTjOGPM8EQLtN/yjfE2tZn6haMFPSG7uH08y09R32diShVju31mSbMwFp9X3XMzujHQM5RojHqYaRV+b6IKsYYm1GPbDPu/piCxmfrufoTGq/cjBcKHeo3JLOdy3oDuZCVzN8DIWOb7Fw0CLAIx0fA9hOz9EzfsBNd4qhVFeOtXVqAubnWF1WhlNgZ7byvb2/OlBEr+FAA4PAdrbEUttleDp0oFD5W718cOPNW2GWRumE7cLhVaL0GAhXJBKN6wrUqMCGHX8foWu1FF+O2WGvFuf1FItllwd9GNlaqlQxYELfPEH1m7IujE0dVjusETx2CVXp3j09H9AebMzFOMnsW9Oo+mrFfDLIIBIf+bxzsT4BZKOW1JmolfL1dpzeH2NuKvQWmWQb0rRibGVx79sxPHdy1YIaDQeUwWGBWDAUIEGQ4lrBWkqeUAjPvoM8ck4qhpKrh0Qzp+7ZJuLPo6XaQaTYTefUhMe7GG78x6OR3fzAdt1rK4ES+a
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39860400002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(2906002)(41300700001)(86362001)(33656002)(38100700002)(122000001)(82960400001)(71200400001)(110136005)(66476007)(6506007)(8676002)(8936002)(64756008)(66446008)(76116006)(66946007)(66556008)(66574015)(9686003)(7696005)(5660300002)(53546011)(26005)(52536014)(83380400001)(316002)(478600001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?emlRTkRBWlhKWjJjS0w4SnBwRkF5dDk5SmNHM0hna1Bld0dRWEo2dDNOT2RG?=
 =?utf-8?B?c1c4dVc1Si9la0FDcVpRYXRDYTA2czhLbUxIVy9wSEFpN0ljcS85K3ZlRDd3?=
 =?utf-8?B?V1IzamJ6RjFKdnAyQWJXdHRwbjJUNzB6SHErM1FmVTJqNnE1dHVUWERKTFg2?=
 =?utf-8?B?eTdIU0JYWFljM2ZBN3dZaXBkeXlSQzVaQVdRSVdrOWttNkV3UUJtUTdzc0c5?=
 =?utf-8?B?ZG9yM1RxL3J6TVpZdFo1bzJzMHZiZWlxcFJ2dytZY3JHRGJCeVpPZWw4dmJr?=
 =?utf-8?B?S1pSQWpzZVJYVDFDL0t1cG9WVVQ3bVlRa29SVjIwR25ldEd1dlZRTmZESU9w?=
 =?utf-8?B?UUtaT0ZRZGVOWW4rS1c2QzR5YXMrUTdVVno2OFpXT2dndlo2RlZISU1yVjRT?=
 =?utf-8?B?WEh2cWRwSCtQZE1mbEo2eWdOWVVBd0hHelBKVjRjNm5zQTUxd2JkMzVsb0FZ?=
 =?utf-8?B?amlWTTZ2OWx0YThCM2lidmp3c2hQdnJrSUFSbE16V1VLTUdlSHQzbkFxclJG?=
 =?utf-8?B?RFk3bkZKdFJ4dVVxMVFBNHpVTlB3ZGZrSzd2OWJ5bElGQ1B4WVJuUUZyT0Vo?=
 =?utf-8?B?YjhMWkFqblViYW5HT2xVSlhFSHFrSlFMQ2JiRTJPNS95RFZVZlJMZDRSU0dX?=
 =?utf-8?B?V29yZHFJZDVwRWNoZURGSlVjamU5eFpRYjBLT0hxTmxHRG84ZEtuS0VhdFR0?=
 =?utf-8?B?RWhSYkQ3Mk1kYzJSd08yVCtXcGt4SU9wY1dzd0EwdVMzYUVVNm9kcTVPdHN3?=
 =?utf-8?B?Mi9zcWJTeWhHa3I1dm1sL09ZL0haZEI1NVR1WDB4TUhObWQvM3UxdHA4Tk50?=
 =?utf-8?B?ZXozdEVWQndkVFFJNTlBckRUNkJ5emVURXAyNHpiTDFJc3lwNG9SSGZZVkR1?=
 =?utf-8?B?RmlhN2ZPNm03YTArcWUwNlVheHZ1a21Fcnp6QTcrLzZUaHVxUlMvQ0R0Q1M3?=
 =?utf-8?B?cll5alp3aU1sQitLYmMyREN0UFZlbk0zbVJsR2daOG4zRXVlME9ETkQrb2lJ?=
 =?utf-8?B?bHNnQ0tJRWozQU1kdUlGMGFzVjhWTWYzUG5POGhSZXlzbmFEY0ZIem95VFBn?=
 =?utf-8?B?MzlZdTl5YkRuejhRMlpRZGg5OWFXcURabDJmU0hSa2laU3N4NDE0eGhwMjdo?=
 =?utf-8?B?bFhHdlFZSHlQRUFwWFNKRTZIRnRCdjFjNlhGV0tvcXdwNzBPb05nTTF2SW9q?=
 =?utf-8?B?VHFNbXFQbGRiV0MyelowSHBaNUtQaWJpZW4vZG9rTFpSZk02MEdHZFcxaFdW?=
 =?utf-8?B?U1hGNEY1R21VZFBReGVKenl6U2xDWGNuQzk4K0Q2MVhya09MemFuR3FvSktY?=
 =?utf-8?B?WkNuZ0ZnbjFhUVFlcXpCUWRhKzFiYWhYOXYrbjRQZ3FzVU9RakFTSTN1VXZQ?=
 =?utf-8?B?dUtxZU4xRHlhZDlwdTkxVjVVQVRoVktYVE54aXU0azZ4dVJoWjNEZEM1bHJQ?=
 =?utf-8?B?REdzdmJDNnplbUU1am12VFNxa2RGcDgxaDNTWmEreXNkUzBjbTRSMEdObHR2?=
 =?utf-8?B?SGNlcHVPMWQvSHI4NUM3ZlZob1RqcHRWSWlVVEdMa1FtdlRsdXhsckpRMWpF?=
 =?utf-8?B?VERPSzlMR3FPRi9aS1dZVFRGVmxqTjRSMFFwL0pSOEk5SEpQV1k4ekZXbWdn?=
 =?utf-8?B?OHNoNlBGdk9wb0p4cjdxdlN3STNkdUJ5Vml0SlpGeVFzaU84RU4rZmZyZUps?=
 =?utf-8?B?MjQraXc2UW5UdTRTY1p5RDlhd2FwR1pRSSt4K0NkNThibTQyNEZRbkJlcWEv?=
 =?utf-8?B?WGd0QU5mSktGSkZzSWxVbHRkWmJMTHFrY0dOd2ZuUi9IbS9JeGdRdEFjVjZz?=
 =?utf-8?B?YnJmdUpldGtIZ1M4dERycUlZSkY5eW1UTEhpaGlhNDhQZ2Vjb0U1d2FqSE94?=
 =?utf-8?B?RlRDeHVPd2NScjhxcmE3V00wc1UzdTNBQ2VGT0UzaEE4Zi9Ua25Dd2pDdk9N?=
 =?utf-8?B?TjNObHRIbFZJOGxnOTVwbThJaFRpQ1lvdlc1MXFpQzNWTU5reHJwZVlYbm9J?=
 =?utf-8?B?eVRRK0x1UFJ1YldOOXV2M2ZOaHU1cFZ1SHV3b1F5OUU2d2pIR2ZpdVRqUC81?=
 =?utf-8?B?M2p2QUtiMXZ6cXNaWmgyVDQwQmpuUWNEL1RhWkwveG5XU3FqdCtVbW5UeUJL?=
 =?utf-8?Q?U35tVAU46LT+chmSsq0aiOZ7G?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d364c8d9-a4ed-4147-27cf-08dc014de3e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 11:22:02.6986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E6dLQnUCLcfBiMQMpSpJBk2EJKAyWhPJI6/B0JXRAB7sA75sEUFb0DER8eVYepKeBiNvAAFbfWwUes4R7OHfVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7160
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTMsIDIwMjMgMzo1NSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0gg
My85XSBkcm0vaTkxNTogSW50cm9kdWNlIHN0cnVjdCBpbnRlbF92YmxhbmtfZXZhZGVfY3R4DQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gQ29sbGVjdCB0aGUgaW5mb3JtYXRpb24gbmVlZGVkIGZvciB2YmxhbmsgZXZhc2lv
bnMgaW50byBhIHN0cnVjdHVyZSB0aGF0IHdlIGNhbg0KPiBwYXNzIGFyb3VuZCBtb3JlIGVhc2ls
eS4NCj4gDQo+IEFuZCBsZXQncyByZW5hbWUgaW50ZWxfY3J0Y192YmxhbmtfZXZhZGVfc2Nhbmxp
bmVzKCkgdG8ganVzdA0KPiBpbnRlbF92YmxhbmtfZXZhZGVfaW5pdCgpIHNvIHRoYXQgYmV0dGVy
IGRlc2NyaWJlcyB0aGUgaW50ZW5kZWQgdXNhZ2Ugb2YNCj4gaW5pdGlhbGl6aW5nIHRoZSBjb250
ZXh0Lg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYyB8IDQwICsrKysrKysrKysrKystLS0tLS0tLS0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBpbmRleCA0
ZGY4OTI3YmIwNjIuLjkzNDc0ZmM5ZTUwMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gQEAgLTQ3MSw5ICs0NzEsMTMgQEAgc3RhdGljIGludCBp
bnRlbF9tb2RlX3ZibGFua19zdGFydChjb25zdCBzdHJ1Y3QNCj4gZHJtX2Rpc3BsYXlfbW9kZSAq
bW9kZSkNCj4gIAlyZXR1cm4gdmJsYW5rX3N0YXJ0Ow0KPiAgfQ0KPiANCj4gLXN0YXRpYyB2b2lk
IGludGVsX2NydGNfdmJsYW5rX2V2YWRlX3NjYW5saW5lcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiAqb2xkX2NydGNfc3RhdGUsDQo+IC0JCQkJCSAgICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlDQo+ICpuZXdfY3J0Y19zdGF0ZSwNCj4gLQkJCQkJICAgICAgaW50ICpt
aW4sIGludCAqbWF4LCBpbnQgKnZibGFua19zdGFydCkNCj4gK3N0cnVjdCBpbnRlbF92Ymxhbmtf
ZXZhZGVfY3R4IHsNCj4gKwlpbnQgbWluLCBtYXgsIHZibGFua19zdGFydDsNCj4gK307DQo+ICsN
Cj4gK3N0YXRpYyB2b2lkIGludGVsX3ZibGFua19ldmFkZV9pbml0KGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwNCj4gKwkJCQkgICAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlLA0KPiArCQkJCSAgICBzdHJ1Y3QgaW50ZWxf
dmJsYW5rX2V2YWRlX2N0eCAqZXZhZGUpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKG5ld19jcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiAgCWNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOyBAQCAtNDk4LDE3ICs1MDIsMTcg
QEANCj4gc3RhdGljIHZvaWQgaW50ZWxfY3J0Y192YmxhbmtfZXZhZGVfc2NhbmxpbmVzKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGQNCj4gIAkJCSAgICBuZXdfY3J0Y19zdGF0ZS0+
dXBkYXRlX21fbiB8fCBuZXdfY3J0Y19zdGF0ZS0NCj4gPnVwZGF0ZV9scnIpOw0KPiANCj4gIAkJ
aWYgKGludGVsX3Zycl9pc19wdXNoX3NlbnQoY3J0Y19zdGF0ZSkpDQo+IC0JCQkqdmJsYW5rX3N0
YXJ0ID0gaW50ZWxfdnJyX3ZtaW5fdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUpOw0KPiArCQkJZXZh
ZGUtPnZibGFua19zdGFydCA9DQo+IGludGVsX3Zycl92bWluX3ZibGFua19zdGFydChjcnRjX3N0
YXRlKTsNCj4gIAkJZWxzZQ0KPiAtCQkJKnZibGFua19zdGFydCA9DQo+IGludGVsX3Zycl92bWF4
X3ZibGFua19zdGFydChjcnRjX3N0YXRlKTsNCj4gKwkJCWV2YWRlLT52Ymxhbmtfc3RhcnQgPQ0K
PiBpbnRlbF92cnJfdm1heF92Ymxhbmtfc3RhcnQoY3J0Y19zdGF0ZSk7DQo+ICAJfSBlbHNlIHsN
Cj4gLQkJKnZibGFua19zdGFydCA9IGludGVsX21vZGVfdmJsYW5rX3N0YXJ0KGFkanVzdGVkX21v
ZGUpOw0KPiArCQlldmFkZS0+dmJsYW5rX3N0YXJ0ID0NCj4gaW50ZWxfbW9kZV92Ymxhbmtfc3Rh
cnQoYWRqdXN0ZWRfbW9kZSk7DQo+ICAJfQ0KPiANCj4gIAkvKiBGSVhNRSBuZWVkcyB0byBiZSBj
YWxpYnJhdGVkIHNlbnNpYmx5ICovDQo+IC0JKm1pbiA9ICp2Ymxhbmtfc3RhcnQgLSBpbnRlbF91
c2Vjc190b19zY2FubGluZXMoYWRqdXN0ZWRfbW9kZSwNCj4gLQ0KPiAJVkJMQU5LX0VWQVNJT05f
VElNRV9VUyk7DQo+IC0JKm1heCA9ICp2Ymxhbmtfc3RhcnQgLSAxOw0KPiArCWV2YWRlLT5taW4g
PSBldmFkZS0+dmJsYW5rX3N0YXJ0IC0NCj4gaW50ZWxfdXNlY3NfdG9fc2NhbmxpbmVzKGFkanVz
dGVkX21vZGUsDQo+ICsNCj4gCVZCTEFOS19FVkFTSU9OX1RJTUVfVVMpOw0KPiArCWV2YWRlLT5t
YXggPSBldmFkZS0+dmJsYW5rX3N0YXJ0IC0gMTsNCj4gDQo+ICAJLyoNCj4gIAkgKiBNL04gYW5k
IFRSQU5TX1ZUT1RBTCBhcmUgZG91YmxlIGJ1ZmZlcmVkIG9uIHRoZSB0cmFuc2NvZGVyJ3MgQEAN
Cj4gLTUxOSw3ICs1MjMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX3ZibGFua19ldmFkZV9z
Y2FubGluZXMoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKm9sZA0KPiAgCSAqIGhl
bmNlIHdlIG11c3Qga2ljayBvZmYgdGhlIGNvbW1pdCBiZWZvcmUgdGhhdC4NCj4gIAkgKi8NCj4g
IAlpZiAobmV3X2NydGNfc3RhdGUtPmRzYiB8fCBuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX21fbiB8
fA0KPiBuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX2xycikNCj4gLQkJKm1pbiAtPSBhZGp1c3RlZF9t
b2RlLT5jcnRjX3ZibGFua19zdGFydCAtIGFkanVzdGVkX21vZGUtDQo+ID5jcnRjX3ZkaXNwbGF5
Ow0KPiArCQlldmFkZS0+bWluIC09IGFkanVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0YXJ0IC0N
Cj4gK2FkanVzdGVkX21vZGUtPmNydGNfdmRpc3BsYXk7DQo+ICB9DQo+IA0KPiAgLyoqDQo+IEBA
IC01NDQsMTAgKzU0OCwxMSBAQCB2b2lkIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0YXRlLA0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpuZXdfY3J0Y19zdGF0ZSA9DQo+ICAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUo
c3RhdGUsIGNydGMpOw0KPiAgCWxvbmcgdGltZW91dCA9IG1zZWNzX3RvX2ppZmZpZXNfdGltZW91
dCgxKTsNCj4gLQlpbnQgc2NhbmxpbmUsIG1pbiwgbWF4LCB2Ymxhbmtfc3RhcnQ7DQo+ICsJaW50
IHNjYW5saW5lOw0KPiAgCXdhaXRfcXVldWVfaGVhZF90ICp3cSA9IGRybV9jcnRjX3ZibGFua193
YWl0cXVldWUoJmNydGMtPmJhc2UpOw0KPiAgCWJvb2wgbmVlZF92bHZfZHNpX3dhID0gKElTX1ZB
TExFWVZJRVcoZGV2X3ByaXYpIHx8DQo+IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKSAmJg0KPiAg
CQlpbnRlbF9jcnRjX2hhc190eXBlKG5ld19jcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFNJKTsN
Cj4gKwlzdHJ1Y3QgaW50ZWxfdmJsYW5rX2V2YWRlX2N0eCBldmFkZTsNCj4gIAlERUZJTkVfV0FJ
VCh3YWl0KTsNCj4gDQo+ICAJaW50ZWxfcHNyX2xvY2sobmV3X2NydGNfc3RhdGUpOw0KPiBAQCAt
NTY1LDkgKzU3MCw4IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICAJaWYgKGludGVsX2NydGNfbmVlZHNfdmJsYW5r
X3dvcmsobmV3X2NydGNfc3RhdGUpKQ0KPiAgCQlpbnRlbF9jcnRjX3ZibGFua193b3JrX2luaXQo
bmV3X2NydGNfc3RhdGUpOw0KPiANCj4gLQlpbnRlbF9jcnRjX3ZibGFua19ldmFkZV9zY2FubGlu
ZXMob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLA0KPiAtCQkJCQkgICZtaW4sICZtYXgs
ICZ2Ymxhbmtfc3RhcnQpOw0KPiAtCWlmIChtaW4gPD0gMCB8fCBtYXggPD0gMCkNCj4gKwlpbnRl
bF92YmxhbmtfZXZhZGVfaW5pdChvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsICZldmFk
ZSk7DQo+ICsJaWYgKGV2YWRlLm1pbiA8PSAwIHx8IGV2YWRlLm1heCA8PSAwKQ0KPiAgCQlnb3Rv
IGlycV9kaXNhYmxlOw0KPiANCj4gIAlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGRy
bV9jcnRjX3ZibGFua19nZXQoJmNydGMtDQo+ID5iYXNlKSkpDQo+IEBAIC01ODIsOCArNTg2LDgg
QEAgdm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
DQo+ICpzdGF0ZSwNCj4gDQo+ICAJbG9jYWxfaXJxX2Rpc2FibGUoKTsNCj4gDQo+IC0JY3J0Yy0+
ZGVidWcubWluX3ZibCA9IG1pbjsNCj4gLQljcnRjLT5kZWJ1Zy5tYXhfdmJsID0gbWF4Ow0KPiAr
CWNydGMtPmRlYnVnLm1pbl92YmwgPSBldmFkZS5taW47DQo+ICsJY3J0Yy0+ZGVidWcubWF4X3Zi
bCA9IGV2YWRlLm1heDsNCj4gIAl0cmFjZV9pbnRlbF9waXBlX3VwZGF0ZV9zdGFydChjcnRjKTsN
Cj4gDQo+ICAJZm9yICg7Oykgew0KPiBAQCAtNTk1LDcgKzU5OSw3IEBAIHZvaWQgaW50ZWxfcGlw
ZV91cGRhdGVfc3RhcnQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICAJ
CXByZXBhcmVfdG9fd2FpdCh3cSwgJndhaXQsIFRBU0tfVU5JTlRFUlJVUFRJQkxFKTsNCj4gDQo+
ICAJCXNjYW5saW5lID0gaW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoY3J0Yyk7DQo+IC0JCWlmIChz
Y2FubGluZSA8IG1pbiB8fCBzY2FubGluZSA+IG1heCkNCj4gKwkJaWYgKHNjYW5saW5lIDwgZXZh
ZGUubWluIHx8IHNjYW5saW5lID4gZXZhZGUubWF4KQ0KPiAgCQkJYnJlYWs7DQo+IA0KPiAgCQlp
ZiAoIXRpbWVvdXQpIHsNCj4gQEAgLTYyOSw3ICs2MzMsNyBAQCB2b2lkIGludGVsX3BpcGVfdXBk
YXRlX3N0YXJ0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0YXRlLA0KPiAgCSAqDQo+
ICAJICogRklYTUUgZmlndXJlIG91dCBpZiBCWFQrIERTSSBzdWZmZXJzIGZyb20gdGhpcyBhcyB3
ZWxsDQo+ICAJICovDQo+IC0Jd2hpbGUgKG5lZWRfdmx2X2RzaV93YSAmJiBzY2FubGluZSA9PSB2
Ymxhbmtfc3RhcnQpDQo+ICsJd2hpbGUgKG5lZWRfdmx2X2RzaV93YSAmJiBzY2FubGluZSA9PSBl
dmFkZS52Ymxhbmtfc3RhcnQpDQo+ICAJCXNjYW5saW5lID0gaW50ZWxfZ2V0X2NydGNfc2Nhbmxp
bmUoY3J0Yyk7DQo+IA0KPiAgCWRybV9jcnRjX3ZibGFua19wdXQoJmNydGMtPmJhc2UpOw0KPiAt
LQ0KPiAyLjQxLjANCg0K
