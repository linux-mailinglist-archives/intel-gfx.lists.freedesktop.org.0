Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5C271595B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 11:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D398C10E2F3;
	Tue, 30 May 2023 09:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A2810E2F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 09:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685437581; x=1716973581;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jf83L/OJNcpGxkqCrn9rZlAPFlB5wZ3C8LZsYOADVKE=;
 b=kqRFmQZ/vjkR8/2Ve1n0eXdbAyb3mhdrLAHo+sEC19//A3cY2xE8NIXq
 /+zkIZBXTqBXtF5n1u83ChMET8jwJBnqcA5/6JyIt4CnIp174sz9dNksH
 rsHpgOruPX44u6kb1xhJrcO0RmZXxifH49ntDq/87LdpZVyQXXvuOC4kM
 dXwcm/zGuS62Xg103VlyfCRJklXKTMvFQRmtLESpzj97j/RNTD4unSX4X
 d3StpSHczrq/cZVE2njV9gG3FoxCxFlu2Edo7nuNDzinfiXY+HRTr2zvc
 ubxyktiOV0vL2jhYSjAZ82MINpb5QjK7kGps+3pGf5LdMNSfqahCX/kPU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="383115950"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="383115950"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 02:06:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="830658162"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="830658162"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 30 May 2023 02:06:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 02:06:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 02:06:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 02:06:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zvbzy2WppXxnKPsTzXPzQ33aUQXxmlPv2M6x6U68+HY+oSd/cBMIW/xfdCKU9F9Z4pTyjwbw/FmhbiOgEskwGmkc/XvWzWqVSRT9uX8v4FGSMqVKVc1YUzq+rcb0IftVYrRSXKWwImoj7bZe17ImlVzOlnpl0Gw9g4OEY50o5dK6WR4Z5Rdh6kw3Nb8MKXKly/5dQwtgSge4fidevT10EXgV+eJP3ddY0z23AHxNN4/fZTgRD5EUbG4TVcvKyi5GXX8FpJSEtDHmuN701sp+K/yUSn8iwCu4kcEOgRN3dz8dOcsmI4x3EBKGLVmb/iL+ENyV7hkoYIFiIChY1oOJWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jf83L/OJNcpGxkqCrn9rZlAPFlB5wZ3C8LZsYOADVKE=;
 b=NSKFPYmBQlvzI1HypAVLMN6MvS5dVVJkfQ679CUgiHaEqG9c9InfDqqxOHH253F1GB3mfr/sri2e3xAYKpSlcgBwjefNJBXte3HwszdWk4S5ArGYEvUmzgFvsY8PO8dZNCOcu4gKxLX91iAeQFfGYEtF4ltLDm2h6Z8b6vg8XVQVHNoW08n15iTR6Ti1O4m4pPfmaJKaWH259/2ZGb8vkSFV4a7kPXcGDj8aKR5I4NnzC65nMm2YIU8pVzj8aIhScnJq5wrnZ3XsmMUTAvkHS69q7+a10zvzG5bBXkF8Xz/ly/R5pnoJ694cHTAGm31+7XrOgoZZdIyYKPCSZAKuPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DS0PR11MB7286.namprd11.prod.outlook.com (2603:10b6:8:13c::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.21; Tue, 30 May 2023 09:06:19 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 09:06:19 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Use 18 fast wake fast wake AUX
 sync len
Thread-Index: AQHZki2o5wG5wHmaYUeFi99dPBrv8K9yh1cg
Date: Tue, 30 May 2023 09:06:18 +0000
Message-ID: <DM6PR11MB31778B2F27E8CCE4FDFEA6CBBA4B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230529130028.2193945-1-jouni.hogander@intel.com>
In-Reply-To: <20230529130028.2193945-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|DS0PR11MB7286:EE_
x-ms-office365-filtering-correlation-id: de2def84-8bb8-4438-1af2-08db60ed2147
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IFNFpb1/IrfrGyvUkQbm4W4Uhsx4v4wmy/1lybftqseq7/oZRprJXrF1YRE5W6T3cH4TfEORRflDeL/kR8XvVCXvwMaqWIp9cFwX+OnaTnv8KbdzTOf3CVI0QMgIZsbtGg/0ZziCTXYQVq9NYyLOCKz76msYXJfkMObjf+zHJlZ8P36o6Kcox9K4jw60ii4y/0jOpBbOr9shY0YczAd9C4mADHy19Mgc6zninScikfykGcexIjgwXelN9BBp6y4OrQfPiZtFTQZpC52X2oJEpHpX5nOCiyojKM5wtS/nLf/vtPmZ5ZfzCmWopksL07vZevIZbXzr69lUK3ZR8LaObhBZd6XLd9SPn2yQtqtUtGyzxGuMZ6oXqwxUztEyf7tDCoqqDzfneYZKddNVeHiOb8k+Sqa6+qJPykUbi3aTiW5HEopiUMteYAyKciVVYbZRTZoRf2VVbZYPbKyp3mz8eqogJuMHtuOxQqboG+JHBEvTxDaJOkhyoqfoa2BJEQualmHccvcwrVMcse5gU4uaeXugOX0i8DfU4Bom3Rs+qq7eure/lJ4MsHx01A21FmuE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(366004)(346002)(39860400002)(451199021)(478600001)(966005)(83380400001)(55016003)(66574015)(186003)(5660300002)(71200400001)(33656002)(52536014)(86362001)(7696005)(8676002)(8936002)(2906002)(41300700001)(122000001)(38100700002)(82960400001)(38070700005)(316002)(6506007)(26005)(76116006)(66946007)(110136005)(9686003)(55236004)(64756008)(66446008)(53546011)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVlFbFdGaUZZRmMzbFZWdmxMUnBSa2JIdHE1VlB1cUlGV2JoRTBBMVJvSThB?=
 =?utf-8?B?aENVYVdNTncwT2p0cmd1NzBYdmhQRTBRV2ptdDlDSFJLSWt4M0dPTURhWDFp?=
 =?utf-8?B?cndWNTdzeXl6MnlnVWN2bFkzbVBGZ2dWMEJZOW1MR2pDOStqNHAwci9aQlRS?=
 =?utf-8?B?VGlUMTV5TFJQWnhldlRxNVJSUEozVDY1djVxZ2VYRGg3OUNiYlordllmQkQ4?=
 =?utf-8?B?ZDUyV2FoTHVqMlNJMHUyMjV2WW50QThCZy9vNHQ5cEpETlFxS01kbU9wV2Ry?=
 =?utf-8?B?UGpqWG1ZNkpsR2E1MVNKcXdBRE1aQWJOd2l3WWRsRWlpRzZ4STBEeUdmWDll?=
 =?utf-8?B?ZlNhZWMwTllVNXR5TUtYK3NiMkJjZkdmOXNKMm41aXZyRmVPSmZiUGhvajJ3?=
 =?utf-8?B?TXhEMVQvL3prUmp6NW16Tm9DVFdIRWk5L3VaY1BmNnNKQXVhMGRnNHd0S3hV?=
 =?utf-8?B?THUzNWhXUnJycE9WcEtZMVBYdzBaRStHenl5czQ3UGJORkpvMXpYbDVsWjZY?=
 =?utf-8?B?RmsrcWlBUi9adHhOdmYyaGMrOCttQm5kS2JLS3B6dHh5K2ZiVG45NlgxNzY2?=
 =?utf-8?B?ZkpGRGpDYzFNRE9LbEg3TnpGZWhUbVprL1pONnpXcXJMeCtGL1Z4bkRMTEJI?=
 =?utf-8?B?WDIvT1dVL29ZWEhpVlJWQVltZFVxc2V2TWVGclVVdmpQUnNKYU9VekZ5bVpI?=
 =?utf-8?B?Rk93WlRuZmxaU0lGUFZRSXo3WmhIVU1BMmlhVHpCa2xsazZhSXRaZkg2ejhU?=
 =?utf-8?B?bi81V1N3ZFVTdFpUL3I3V3kvVkRUZlE5eXRhYlU5ZEkwR1VnOU55TnJFVzZj?=
 =?utf-8?B?WlhHWm9zOFNQM2w2dWU3UGU3SG0zSWd4aXh6VEU0di9nMUcwQU1Hcks0M3RZ?=
 =?utf-8?B?WEg5NFdYREZFN2s5WElHVFlaK2FPdEdTTkFmSDFOcjk1aGloSTBLQ21qc0Na?=
 =?utf-8?B?cGVuVFRxT2xsNDdEdUc2aUlEUXpjK3lmaU5aUGNrcXgvL2YxSTVpMU92cjJV?=
 =?utf-8?B?WWxscEZ0VTNUc3BLYnR0OGdtVWtSVUlWS3M2V2NmSWRkRDE3UWVvdWIyZUpJ?=
 =?utf-8?B?MWxUYmoycHdWeDhvTzF0V0JzMXF1NHJ3dlBWRFpFUnhYUTZmMnV1RkVYVWlD?=
 =?utf-8?B?Qm4xTFM1MDRnQ2ZScFVyN2RtRW9JZHZkU0t5MlBackp2ZCsrNVd4eXlyNklR?=
 =?utf-8?B?SGhHUVpFYTBHZzRGUHlOVlhJOHN5NGR2cXg3bWJLWk1rZ0dmWUZjUTJrLy9R?=
 =?utf-8?B?UzNHTFFyR0Rmdm1sbnBua01DeW5UVit1UHRzZkM1S0R5d2lYeFdBaEt6M3F4?=
 =?utf-8?B?UFFZT0U2RFlVTHc5bXJ3ejlQd0hIWjNLUkZoV01GZUZiMmIvZG9IWXNsbUJT?=
 =?utf-8?B?VTNHVDQ1dUxSRDg3WHFJUzdob1FDcHkvdjBadFF5WVl5L3hTR2RkaEQrelB5?=
 =?utf-8?B?VkYrekp4VTI1RTV5bEd1bUxLZElHSHVlNUxmMnlZdHgzcnJPbVRiREVuUjVV?=
 =?utf-8?B?MWNrRFZYcE1ZSitDKzlXY2I4ZTI5TVVvS0RBc1RhcFgxaEJuempaeUlrSFBt?=
 =?utf-8?B?NnUxNDN1RDFXM25LQzZwQWh1VFRVY0V1MkVBVGVTeFB4b09lUXpIZ25vTkxD?=
 =?utf-8?B?YjRhclNJdnl3Z3dueVdvK3RyQTJHT3Nxc3VkeU5BYlJ6VTlqS05HZm5RYllW?=
 =?utf-8?B?ZnZrMTBaWnNqaHNxVWtvdDNYQnY2TndtWlR3K3FlVldYM0p3U2hpbWJzaENW?=
 =?utf-8?B?S3pXZStRZXdiVjNTWmRjT0JuV0k5UmJ1NTFZWWY0cTg5ajRndStDTlpjQ3cz?=
 =?utf-8?B?Nm5WVEt4M3FHWkF0U09TWFJIZEFocDIxNGZwL0srNFRJSVpxTFNiUVNaS1da?=
 =?utf-8?B?Qk9DUlBwN0NoUU43NE94dmt3czN4RkpJblR0RlJsekp5VmQ3TEl6QjFZQS9N?=
 =?utf-8?B?dDJZL2FKcHVNTmtrL2V1MGZJTUVEUFdIdVhuQTd5ZzJod21SbituTittNld4?=
 =?utf-8?B?S0ZRQzFQSG1jM0RMWWhOWW5nN1VQZGVlMEhIQmZCMGpUdi9nakV6bzFQMThk?=
 =?utf-8?B?WWcrV1dZdnozak1YYUpNQmtpWHYwMllnb0NWNmkrb2dHcnl5a2FBb1I0Q2pj?=
 =?utf-8?Q?NKrbqnmH/nBTCF14Jb/KitIM1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de2def84-8bb8-4438-1af2-08db60ed2147
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 09:06:18.4490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VZ6cEFKl/i4hjgVBvDSF7e6xpN4Y9Tj4K2U311RdnSU5dt5SUujB0+40kJO8in2FchVxGcSKyExV8IDC63+MOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7286
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use 18 fast wake fast wake AUX
 sync len
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBNb25kYXksIE1heSAyOSwgMjAyMyA2OjMwIFBNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRD
SF0gZHJtL2k5MTU6IFVzZSAxOCBmYXN0IHdha2UgZmFzdCB3YWtlIEFVWCBzeW5jDQo+IGxlbg0K
PiANCj4gSFcgZGVmYXVsdCBmb3Igd2FrZSBzeW5jIHB1bHNlcyBpcyAxOC4gMTAgcHJlY2FyZ2Ug
YW5kIDggcHJlYW1ibGUuIFRoZXJlIGlzDQo+IG5vIHJlYXNvbiB0byBjaGFuZ2UgdGhpcyBlc3Bl
Y2lhbGx5IGFzIGl0IGlzIGNhdXNpbmcgcHJvYmxlbXMgd2l0aCBjZXJ0YWluIGVEUA0KPiBwYW5l
bHMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gRml4ZXM6IDYwNWY3YzczMTMzMyAoImRybS9pOTE1OiBGaXggZmFzdCB3
YWtlIEFVWCBzeW5jIGxlbiIpDQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC8tL2lzc3Vlcy84NDc1DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+IGluZGV4IDBjMjdkYjhhZTRmMS4uMTk3YzZlODFk
YjE0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2F1eC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4
LmMNCj4gQEAgLTEyOSw3ICsxMjksNyBAQCBzdGF0aWMgaW50IGludGVsX2RwX2F1eF9zeW5jX2xl
bih2b2lkKQ0KPiANCj4gIHN0YXRpYyBpbnQgaW50ZWxfZHBfYXV4X2Z3X3N5bmNfbGVuKHZvaWQp
ICB7DQo+IC0JaW50IHByZWNoYXJnZSA9IDE2OyAvKiAxMC0xNiAqLw0KPiArCWludCBwcmVjaGFy
Z2UgPSAxMDsgLyogMTAtMTYgKi8NCg0KSXMgdGhpcyBjaGFuZ2UgcmVxdWlyZWQgaW4gaW50ZWxf
ZHBfYXV4X3N5bmNfbGVuKCkgYXMgd2VsbD8NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBS
IE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0KPiAgCWludCBwcmVhbWJsZSA9IDg7DQo+
IA0KPiAgCXJldHVybiBwcmVjaGFyZ2UgKyBwcmVhbWJsZTsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
