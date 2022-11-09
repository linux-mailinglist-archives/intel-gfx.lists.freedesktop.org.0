Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C796622918
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 11:52:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 077D410E077;
	Wed,  9 Nov 2022 10:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428C810E548
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 10:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667991156; x=1699527156;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ydWbHQXOYisILI5cw670tz7ZTuvoPDafk9msy0exgvU=;
 b=lMjocvX7u/PDLaQWlMvzZdbbCBdrEzaroWvIiCEO9QV8KCeTgK36qqpb
 xhhK1/B8H70oxkmlTB0gyYp8xyt5h+TqgZnRDUhdDgxo6nmKlnC/3rB17
 paPG/KtgbNNFVvL4S8wQ++LTe0D0sQxNd7ZLlOAjgU3vE5xZ4XbkvsSCE
 73XSJGhXA/4FqeL0ReOORZ8ixqZrkyWgzr/jRs/Vviov55lKm2FTuj4wY
 XM7oAmItaV+WK9pOj0xSN4m8uaMEgqqwcT8nKd5avoDf/EgVjLARX5MSg
 bG39JUIt2qgaoN4yBAylIKTTvSdGUiQgVyGAZazAgNh1LFOSC3QWKSfd6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="375223832"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="375223832"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:52:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="881887102"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="881887102"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 09 Nov 2022 02:52:34 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 02:52:34 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 02:52:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 02:52:33 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 02:52:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CBc7uHOATv8/mdkT+iBU4XwnbfX52WfP1jwteuOul92G23Qi/mAiZaEzmTGDrIWFyPX45v3e2F5/Pkmd23ciaF8wVNYqEPPdENZYbeDEP4tTSjP+BaWDd7BRFWulevEn2snlqWvInDdBVfZRCfKy0rSnEmwIKr5xXy6F5JaNF82dSsrSgexEm2s2GURkZsapEr73nSBQ4K+GCS2UDtQFnvj/WhA4o42gkJAdH9UEOqLvu8jcqRJtDorouQuU7tafuInrG8hfr22dgeMkKMZ17VToHuhrC6WhmR74vaFiaeSWLNWhhn3OGbhdTlgI5p2r4+YpoPnpSnJ4HKY2XjAj1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ydWbHQXOYisILI5cw670tz7ZTuvoPDafk9msy0exgvU=;
 b=DNzc+DMTePwLg3M8h1DyYQcRQNERDykd8W7HxfW1ZlGn2T20YrYupkGLVGN74quPWVSrPl4ZGr5Htkl6zFObl0nzWiOI9NAxxtgUa6ZeeqP6HXmuuaKYLO9ITNpkzRNR2n62urbNnzL2XGK2NagOutKJjjr+atTl1/meD+v9NXvlaOhbn+TJamI5cRphzGfLOtmDyTMqwlVrrcSN1MomrcqSAIw1dUoCR6IcM8+jSA1hjR3Hma6U3c2oCoANgj4E/ONDPlVeNW1ZMHor2q41X0nN/ozpV4jkjIvTfaczCzw7Hcsbg1qrGTsU805Qx7awm6ToSIYDqqv+JSmxrpH+bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA2PR11MB4844.namprd11.prod.outlook.com (2603:10b6:806:f9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.12; Wed, 9 Nov
 2022 10:52:30 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3%9]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 10:52:30 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/3] drm/i915/edp: Fix warning as vdd went down without
 driver knowledge
Thread-Index: AQHY87hV9cvlqvUd6kidzJ4HSOGSma42W2MAgAAMUlA=
Date: Wed, 9 Nov 2022 10:52:30 +0000
Message-ID: <PH7PR11MB59814A450A6381BB01C3165CF93E9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221108211822.28048-1-animesh.manna@intel.com>
 <20221108211822.28048-3-animesh.manna@intel.com> <87zgd078pz.fsf@intel.com>
In-Reply-To: <87zgd078pz.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA2PR11MB4844:EE_
x-ms-office365-filtering-correlation-id: bf84f7da-69df-4e9a-dfaf-08dac2408014
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sHwA7KuCvhZ9CGzf+O+1rGHT/1mfP0/4Jeomx523taOakci/dLkX8vv8lRkIuGyhpnMFTKIi1+78g9eHlUe9sLh+NeS7/Ve3dNZXJkfRSbrPxdIE+xuQvS0DT7f2bAM3t3rgS35MGAS/L+cfp/pEZ7lIP+uUOAJdxONeFAB5KgLwJGHOLx8KgNyJcvFrIgiQgTUqW25HlHMlpojydPo3Nv16t5lN74f58aMpjSq3aK9kjUbAuM/edvy96hxy1wY8eIvZcwhCN4z3n+o68Oks0OIApBVstHE+s+0ML/DhIjtvUTxnPko/V1Cf2dSwv9P/2YvpYLGY6TiM6qpYfZL6cNjNgxVPFRkKhWM+0bji+mRT7oBnxM6aeWZIsmNMXWs8tKPvwuAI9aGmvggJJiqSeSrCsw2wI7aqpT9DHiY15W8rt3Evf99qcdlrygs3Jwm0bV5SXFMNmW/c0vS9KCBv9t67krPasog9ksoRK8y3sajHLyrrMsC5m+DU2ly+rwUy/laul7kUM+JvuiyDV9qbG2kJgJf5tzz0tFlJKQdvrpMvV62z4/KW6ftHJeUtj+2KH+kUnjndVRg+gHU+/W/FX+4ehjyFaG1C13yDHx/fGlRQuzB+PJ+zO/0UKJOAC1XZT2kNycTOhA/csboFk02VoV6NK3s7pNhR01YeDWy7D+R9VV1OA/5NfxFOSJAJHGCa7maxCMqkq9fNkQzcUZ9YrxzMRbmRDO8C+EMHQLhvhGpmIav5bzTDAMhyxXuuGwR5wLPjVlPyoUfIsjI5pDGkv5K2B07TtVjnLouMx1lM1qA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(366004)(396003)(39860400002)(451199015)(966005)(71200400001)(478600001)(110136005)(38070700005)(54906003)(6506007)(316002)(33656002)(7696005)(55236004)(53546011)(82960400001)(66556008)(76116006)(4326008)(66476007)(66446008)(26005)(41300700001)(86362001)(9686003)(8676002)(38100700002)(122000001)(64756008)(52536014)(8936002)(186003)(5660300002)(66946007)(2906002)(66574015)(55016003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGRvOEkxcGVlNysvTHFqZ1haRFFsUi81WE5BNkd1eHkzOUpVRmFab0pDbVNY?=
 =?utf-8?B?cG5lOUw0ZURiQU9qVXdMcTRMTWhDUW55Y2RZS2dGaEg1RFRsUlc2OVdWQ3JW?=
 =?utf-8?B?V245Skg5L3EzTFRlOHRUOGZKeUpYOE1BN3RwZ0pnYnpzWCtjTkhCYzg4Mnkv?=
 =?utf-8?B?dzhPQjd6SUprL1UrZGkwM25yQlM2TEY3TFEycXFvQjg5ci9oU1gxdkNObmxE?=
 =?utf-8?B?S1ZWalR5bVZRVG03Vm9qWndLRXhOS1B6SmtjNjFiQnVwaEh4NUxuOGtOeWg0?=
 =?utf-8?B?cm85cHU3YngyQjFDYnFKMHZZWEZyQktrTDRRS2xoZUxvcTVxZzQ4bEVlZHlO?=
 =?utf-8?B?S2VmLzFCR0pHOXlNSFRqTXdNSDd4Ry90dzZEVlp6dGo1dGJQbnJWYTJTd2pk?=
 =?utf-8?B?bzBxeHU1bitJNXBDRk9Gc2k1bjNZT3UyaldodWlvaG5Vc3JsdERCZHNPNnlS?=
 =?utf-8?B?ekw3NTlML1g2YlhvcU1xR0k1Uy9QamJtbm82eDlCNWlqa3ZESWozVlNKeERj?=
 =?utf-8?B?WlpNdnIrMTJpbXhCa1pwUDZIMHF4SzJtM3lIY3N5TjFaK3drR1BaQXgxc1hh?=
 =?utf-8?B?bmY0R0FOTWRMQWIxK2ZSaXZ6YjFXY1lCN0dwWWl4UWpjMGlwWmdzUWdJNVhO?=
 =?utf-8?B?LzcrWEtqenhEL2NQckgwc3M2bDdsWGRsNkpyK3BGSmQ2WktJU1FHOEttR1hQ?=
 =?utf-8?B?UEZ5MEdBWVdUNmZsZEFvYmkxUHgwTFdIMXZzQVZNSExuWmQvZGh1STRhM0wy?=
 =?utf-8?B?Zys2SFY3bDlhY1ZsaHZpeGxIOFlSaFNCSVNUS1c2R0srR1RCYmswN3VOZ2hw?=
 =?utf-8?B?Q083SjBBQXA1VVpsQ1RVelVmOGxFaityclA0Y0dWOWJ2SkVsYW83UlV1bFRU?=
 =?utf-8?B?ajJMS2t2TG5IcEFvZUZTZUlGYWdGNlZjM1JESHB0REVNZ0lLdGdtMjFob2Iv?=
 =?utf-8?B?YWpnM1I2ZWhWZEdmK0FpT1N2NUh2eVBQaWxaa2VTR2V0SmJUQklVbDB5ZDBh?=
 =?utf-8?B?eUJUZlNHWExxM2EvdlYxV2Y4WUllR0puYTNpcFhtTEJUQ2g1eUdTeFdGL3pW?=
 =?utf-8?B?MkJSOTU3YnRlckIyZnViczdCQjdvMlpDTzd6Y2ZIT1J5bFBCbUo5MDlZREVn?=
 =?utf-8?B?VkZkYVcvZDQ3d3Z2VXNNS3lrZkFrUWJDRzhkMFgzeEZCeEUvb2hkWHd5UGNh?=
 =?utf-8?B?cHBXaUJtYzBpeXF1SkRJMUJ6RmNYbzVVYzM2ajcrZ2d6M0JqeFRUS2ZFUTU2?=
 =?utf-8?B?dFl5NGw5aXhGaXZFTmVIUWFpNm9EbkFZbzlIbGlzcll5MHFTK0JtcGt0Nm82?=
 =?utf-8?B?dmwvNG5PYmtZWi9rUjVERmtBQSt2OExzV205NXF6Y0xXTzgwZE4wd3oyY2Vq?=
 =?utf-8?B?U2NIS1FkV29MNjdodDM2Y3FEVnJ5aTZvbzJzT1lPWkVhUFpvTVA4emtzVFZP?=
 =?utf-8?B?WkE2OW9LbHhEQnRnOS8wNGVwbHF2bWttSDYrSEhwNy9uQ29VRXBKOVhqTVVx?=
 =?utf-8?B?Y3E5bjlDWXl6ZzVlYXdMWmpNNVI0SGZTRVBzc29rblJoSlJSR29QWCtSNDh4?=
 =?utf-8?B?UEhYS1RaY0dkV3UwRXI3WkRTK0lpWGNCMXQvY2ZCSzNKaVlRQUFlQ1Q4Ujlm?=
 =?utf-8?B?U0JlRDIvdk16L0lXMkRFMkdCYzdQbm5MMzVlMU9kSUdrMWIxR2VDZG9VcGNu?=
 =?utf-8?B?a3pGeEZYMlA5RzdKWmpvbWNZZnZnSDFrN3cvVDJYdG5BdEpsOWptaWxSVS9l?=
 =?utf-8?B?T1dYMVM4Ny9NSlVrNFFjcW9DYllMOTdlOVRuZ0QrbDFJWGd5T1YxTGsyTThm?=
 =?utf-8?B?RjFBYjdjNmZjMEhEOXk1Z2VHZDBaUmJxaVF4WU5JY1lwOUdLSUREUC9FNlQw?=
 =?utf-8?B?OHErbjg3QUt0eWliRzc4cHAvVHNVWWd3MjVIRWRIRlNMQkpiZ25Zd21IL1Rm?=
 =?utf-8?B?S0g2Y0FJSDcxT1BXUDgwSG4xZHBTWGIxWTgvUVM5ME1UZkxHQ2c4cHJiVE1n?=
 =?utf-8?B?eTFEbG1qdkJnemVjaFlDNU5rTHNZT0JCK1dud1BFNXo4U2RTMW1YZ216UVI4?=
 =?utf-8?B?d0tFWmFiVi81Qzl0MENWSGV6TEdOaHFkTzRxeUJwbUU3bm9PNTdRNlMyaHZu?=
 =?utf-8?Q?qHreynQRQLEx1wXnatXN1Hk7g?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf84f7da-69df-4e9a-dfaf-08dac2408014
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 10:52:30.8268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X4/q11Ploq0WMmUVSpYsiSLDS2RBuzd67NqileMqcjZQF7+BU9LWODvpcEA5DwhzZlKvHfHx2Bs1yTGKhTfRTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4844
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/edp: Fix warning as vdd went
 down without driver knowledge
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgOSwgMjAy
MiAzOjI2IFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTWFubmEsIEFuaW1l
c2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgVmlsbGUgU3lyasOkbMOkDQo+IDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT47IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDMvM10gZHJtL2k5MTUvZWRwOiBGaXggd2Fybmlu
ZyBhcyB2ZGQgd2VudCBkb3duIHdpdGhvdXQNCj4gZHJpdmVyIGtub3dsZWRnZQ0KPiANCj4gT24g
V2VkLCAwOSBOb3YgMjAyMiwgQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
IHdyb3RlOg0KPiA+IEtlcm5lbCB3YXJuaW5nIHRyaWdnZXJlZCBhcyB2ZGQgd2VudCBkb3duIGFm
dGVyIGNlcnRhaW4gdGltZSBkdXJpbmcNCj4gPiBhdXggdHJhbnNmZXIgaW4gY29ubmVjdG9yIGlu
aXQgc2VxdWVuY2UuIFRvIHNvbHZlIHRoZSBrZXJuZWwgd2FybmluZw0KPiA+IGFkanVzdCBwb3dl
ciBkb21haW4gYW5kIHZkZCB3YWtlcmVmIGNvdW50Lg0KPiA+IEN1cnJlbnRseSBpc3N1ZSBzZWVu
IG9uIEFETCBzbyBhZGQgdGhlIGFib3ZlIGFkanVzdG1lbnQgcGFydCBvZiBBREwNCj4gPiBwbGF0
Zm9ybSBjaGVjaywgaWYgbmVlZGVkIHdpbGwgZXh0ZW5kIGZvciBmdXR1cmUgcGxhdGZvcm0uDQo+
IA0KPiBEbyB5b3UgdW5kZXJzdGFuZCB3aGVyZSB0aGUgb3JpZ2luYWwNCj4gZHJtX1dBUk5fT04o
aW50ZWxfZHAtPnBwcy52ZGRfd2FrZXJlZikgd2FybmluZyBjb21lcyBmcm9tIGFuZCB3aHk/DQo+
IA0KPiBXaGF0IGlzIHRoaXMgb25lPyBXaGF0IGFyZSB5b3UgZG9pbmcgaGVyZT8gRG8geW91IGhh
dmUgYSBiYWNrdHJhY2Ugb2YgdGhpcw0KPiB3aGVuIHJ1bm5pbmcgcGF0Y2hlcyAxJjI/DQoNCldp
dGggdGhlIHBhdGNoIHNlcmllcyAtIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvMTA5ODIwLw0KJg0KVGhlIGZvbGxvd2luZyBsb2cgLSBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDk4MjB2Mi9iYXQtYWRscC00L2lndEBp
OTE1X21vZHVsZV9sb2FkQGxvYWQuaHRtbA0KDQpXZSBjYW4gc2VlIHRoZSBXQVJOX09OKCkgY2Fs
bGVkIGFmdGVyIA0KDQo8Nz4gWzExNC44NjQ2NjldIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmlu
dGVsX3BhbmVsX2FkZF9lZGlkX2ZpeGVkX21vZGVzIFtpOTE1XV0gW0NPTk5FQ1RPUjoyMzY6ZURQ
LTFdIHVzaW5nIHByZWZlcnJlZCBFRElEIGZpeGVkIG1vZGU6ICIxOTIweDEwODAiOiA2MCAxMzg1
MDAgMTkyMCAxOTY4IDIwMDAgMjA4MCAxMDgwIDEwODMgMTA4OCAxMTExIDB4NDggMHhhDQo8Nz4g
WzExNC44NjQ3ODRdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVsX3BhbmVsX2FkZF9lZGlk
X2ZpeGVkX21vZGVzIFtpOTE1XV0gW0NPTk5FQ1RPUjoyMzY6ZURQLTFdIHVzaW5nIGFsdGVybmF0
ZSBFRElEIGZpeGVkIG1vZGU6ICIxOTIweDEwODAiOiAzMCA2OTMyMCAxOTIwIDE5NjggMjAwMCAy
MDgwIDEwODAgMTA4MyAxMDg4IDExMTEgMHg0MCAweGENCjw0PiBbMTE0Ljg2NDkyM10gLS0tLS0t
LS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tDQo8ND4gWzExNC44NjQ5MjddIGk5MTUgMDAw
MDowMDowMi4wOiBkcm1fV0FSTl9PTihpbnRlbF9kcC0+cHBzLnZkZF93YWtlcmVmKQ0KPDQ+IFsx
MTQuODY0OTUxXSBXQVJOSU5HOiBDUFU6IDQgUElEOiAxMjgxIGF0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmM6NjAzIGludGVsX3Bwc192ZGRfb25fdW5sb2NrZWQrMHgy
YjgvMHgyZDAgW2k5MTVdDQoNCk15IGZpeCBhbHNvIGFkZGVkIGluIGludGVsX3Bwc192ZGRfb25f
dW5sb2NrZWQoKSBvbmx5Lg0KDQpJIGhhdmUgcnVuIHdpdGggdGhlIGZpeCBhbmQgd2FybmluZyBp
cyBub3Qgc2Vlbi4gDQpDYW4geW91IHBsZWFzZSBsZXQgbWUga25vdyBpZiB0aGlzIGNoYW5nZXMg
bG9va3Mgb2suDQpQbGVhc2UgbWUga25vdyBmb3IgYW55IGFkZGl0aW9uYWwgaW5mby4NCg0KUmVn
YXJkcywNCkFuaW1lc2gNCg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiA+DQo+ID4gQ2M6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IFVtYSBTaGFua2FyIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMgfCA5ICsrKysrKysrLQ0KPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiA+IGluZGV4IDA5NzVlNDlmOGQwMy4u
MTg1N2JiY2M2ZmQ0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHBzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bwcy5jDQo+ID4gQEAgLTU4Nyw4ICs1ODcsMTUgQEAgYm9vbCBpbnRlbF9wcHNfdmRkX29u
X3VubG9ja2VkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+ID4gIAljYW5jZWxfZGVs
YXllZF93b3JrKCZpbnRlbF9kcC0+cHBzLnBhbmVsX3ZkZF93b3JrKTsNCj4gPiAgCWludGVsX2Rw
LT5wcHMud2FudF9wYW5lbF92ZGQgPSB0cnVlOw0KPiA+DQo+ID4gLQlpZiAoZWRwX2hhdmVfcGFu
ZWxfdmRkKGludGVsX2RwKSkNCj4gPiArCWlmIChlZHBfaGF2ZV9wYW5lbF92ZGQoaW50ZWxfZHAp
KSB7DQo+ID4gIAkJcmV0dXJuIG5lZWRfdG9fZGlzYWJsZTsNCj4gPiArCX0gZWxzZSB7DQo+ID4g
KwkJaWYgKChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikgfHwgSVNfQUxERVJMQUtFX1AoZGV2X3By
aXYpKQ0KPiAmJg0KPiA+ICsJCSAgICBpbnRlbF9kcC0+cHBzLnZkZF93YWtlcmVmKQ0KPiA+ICsJ
CQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChkZXZfcHJpdiwNCj4gPiArDQo+IAlpbnRlbF9hdXhf
cG93ZXJfZG9tYWluKGRpZ19wb3J0KSwNCj4gPiArCQkJCQkJZmV0Y2hfYW5kX3plcm8oJmludGVs
X2RwLQ0KPiA+cHBzLnZkZF93YWtlcmVmKSk7DQo+ID4gKwl9DQo+ID4NCj4gPiAgCWRybV9XQVJO
X09OKCZkZXZfcHJpdi0+ZHJtLCBpbnRlbF9kcC0+cHBzLnZkZF93YWtlcmVmKTsNCj4gPiAgCWlu
dGVsX2RwLT5wcHMudmRkX3dha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZfcHJp
diwNCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBD
ZW50ZXINCg==
