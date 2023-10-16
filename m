Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F0F7CA6CF
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0F610E04A;
	Mon, 16 Oct 2023 11:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AACED10E04A
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697456231; x=1728992231;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9XhJbJDJUhp8Cuq50goPXs74K8CLeU2LCpuyTRXKlQs=;
 b=CSuuCXp8ARIesocYurT3b+K46uh9M3u7t1d7+UaQxSEa1COa4FxjFuhQ
 Z0+cTLp8DN+hwKkGoxO+HOUOWnjvS8c53pnx6ZlFhhmNLTiA2FLT7zTtp
 HEITg+7r0WqJzgErs2GCgGEeyaAnLB8/b8UmmZBPZXpZpUuv6yrvAykT6
 SzmnunA8s7rJky/vxevBwwmOMrAlE34w8sHUoXB3HI/kE/P8ZqaevpQrj
 wA6w9tPWYHk0JdQpZv7B+AIrOv0yTgVckJ40o7kVkzZgD+8APbOWbw11V
 6+AkVWrBgsxI7SK4C3cDcYgTd3N5TxQ5RHEoXm4gFfBgQyxqDHHrvNGSU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="375871780"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="375871780"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:37:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="1002901078"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="1002901078"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 04:36:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 04:36:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 04:36:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 04:36:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 04:36:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9nIx7PzVJCRQVBc8ws/0NtnZBfP9QnvMTq/17RV4Jma5oKQY1x1jz9CXhI9OG8rJxdKsoGpm4Zs3bZNrqc6hXIV7r0naLrGUjE4OcIbhQvl3uEQyc5nPZdegnXdtZFGBQQiR4NQFOC3Vr5rXqVnmurKZhajcj/3Zsq3Dh7CG1utR8nOp7cP44IwZohiUQJkRMnxSUnOft1erksN6ZrfKODASPF6uoilxKrb/i+2AFqsKAYZ3WoX+Jq9tcainrMxIocYMpSEhziXXTi8YcKWMbED75uqNx9A3pAype2P2UrWoucoA67LnE/nrunsIo6ry6u34TiJLKbaXenXPo1I5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9XhJbJDJUhp8Cuq50goPXs74K8CLeU2LCpuyTRXKlQs=;
 b=UdoENddnPNdrxkCtrBbSZoyrxkFmKw/okizKBTA2JvAjmcgPALZDnkdg9dMH/hYmmM2WcePKwlCkfyvLB2DFMipWmMD5ETHkkfapqGJVGRSNuShIErMDOxL09cGQLb4TSqPrqb5DDlq19hFwBjDwb1FO3rvmoB9ZzwCw3TmUXMypC9K3IFt1+d6P8TMlhs+ogT3J8vqUeMRC0uC2vypMJkBraZ5drVYwyy+19kLYi9v+a86FqAbNssf8MYug9NmAeJI1wWr0vDmqaTLb/iRSAgdD/raa/HQs+0AGqxO1aR0qBu0+85TFPKbnfiHTfsJwcCgfoZwMMeVXfyVPYSvCQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ0PR11MB5104.namprd11.prod.outlook.com (2603:10b6:a03:2db::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Mon, 16 Oct
 2023 11:36:35 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca79:c6d4:e6bb:aaaf]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca79:c6d4:e6bb:aaaf%6]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 11:36:35 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH v2] drm/i915/display: Reset message bus after each
 read/write operation
Thread-Index: AQHZ/aMZUDbZ++AqV06MyZAgaLS6q7BIKnOAgAQft2A=
Date: Mon, 16 Oct 2023 11:36:34 +0000
Message-ID: <MW4PR11MB7054431318B2214ECA08558AEFD7A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231013065532.634872-1-mika.kahola@intel.com>
 <ZSmmz7btjjfX/rX3@intel.com>
In-Reply-To: <ZSmmz7btjjfX/rX3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ0PR11MB5104:EE_
x-ms-office365-filtering-correlation-id: e5bdd187-6384-406a-bce1-08dbce3c26f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uwqUhQNdxApczLDcK9bh//PAcW2Egui2NrOFcZDm27I4OieHNHtfdH4gw/ydWdxl8MxlDJJhOS1rOTc0GbP4DqNMN1HD79W6Zp35PCyPUjZRwnkyikwZqhMZ1r5jXreiIIDkjbnYSBxhZvlYlHCO/ly9o6U7P62LGysYplLiLlrJEfn5WQVG+zV9ZvJ1VW12xvp0E0zAGODFGIBaM8Ez6VJNqyn8rA8W4mmnz/aPcHy4c/fOHpAAY75BElTC/exmLUZXAC4aCxkT8LA8Oc3MffxqW/xmml7m7V5+OGqN3xSiZPxilqWBdBPFSUxEgExr+So9FDBgpdRwlsRKH8HS8Kv3W29OMYgyPQV8nsyhBMC9b10R/RaXXdETirKRqHEys4+hYGli7fJrrjjb1Gvi/8J1OFXIEeA7nBmt0SmlFwpohPVc7YSCMJxSEwVI1O//1yp09RqDhNUCLignUZMTkZCa79+e8QioMCCDOhbYW4v4TvFioRJF67Uc+aWk7udCoM8IZRO4meJ83bGZ3igIXXeKqMlPWYGKeRJ8BuQEZ/6GEpyuiLiW9MXCYSPnz0x4RNj7pQtBjs76OSMN+pp9Gsbl7DLd9yqmmamla8YYeT5GDPbz998sMPk1WhuCsVPQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(346002)(396003)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(55016003)(54906003)(478600001)(76116006)(66946007)(71200400001)(66556008)(6636002)(64756008)(66476007)(83380400001)(86362001)(66446008)(82960400001)(38100700002)(9686003)(316002)(7696005)(26005)(107886003)(53546011)(6506007)(33656002)(5660300002)(41300700001)(38070700005)(122000001)(8936002)(4326008)(52536014)(6862004)(8676002)(15650500001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1dyaTFWbmd0azBtTk5mL2N2UVE1QlpsSVd0L2hKUXcxeGNKZlh6eE5iOVpn?=
 =?utf-8?B?WTVmOXZIYTdwR3NKTTZLcmlsN0tkRDAzRzZ0RWxsWUozTHN1ZzFqMjE3RHJ1?=
 =?utf-8?B?R3c1azZzMnowVk5tNzBJeUpFcXUzUXM4SUNVUmJQOVA5dnNBUC9XeExUTjNi?=
 =?utf-8?B?dzFQaFZwZWVrWmVtSEdzVk93MjkrQkw1NEh6bGYvVnM0d2ZEaWFVbTlhT1VZ?=
 =?utf-8?B?U1hpZzRKdHlSQ0sxL2VMSHl2YUVuaVBFWkh3TUhpNTZRMUtVekJMeUFaRUpM?=
 =?utf-8?B?OGszZm9OZnh4cjhUVnNOSW5YM1FVeHZKRjhJR3ViNkpnU0t0dlJqcEp0dDJR?=
 =?utf-8?B?eFVGOU1HUjBQNi83czFVSFJlOWxQblhGeW5aLzhlOUdhc0VCcnhVQkdhaUQz?=
 =?utf-8?B?RXBWWk1SSUVMdDNxSzJPanhkNnlmUnUzTm5SSUhaUy9mWnpLVXhuaElZZitO?=
 =?utf-8?B?bkFWcjBIcEdEMVJyWklYejZCaVV4RlRUSUE3NnNDTGtmdkppcmFiendUSnI4?=
 =?utf-8?B?T0l5YlIyRVJmUXh3azEwUjhONitOUlpZaUdrcFZOZGgzbThBSDh0QUxPK0Jn?=
 =?utf-8?B?Q1BCV1JSK1V2TlBnMkpNdEM3UUd4eGlhd1RTeTE3ZkRSVXN2WjRKRDBEb3BR?=
 =?utf-8?B?TERXTGV4bXZWMUZ0ODlEVmtCVXhrOHRvUTN2M2xPZzhYcWlwb1RQTmJXaWhV?=
 =?utf-8?B?YitWa28zdm1KNWViNmdzc2l4UERIMEtnbk1MUGNvUXA2N050MlEwalFncHdy?=
 =?utf-8?B?ZTEzOFFNSGpsZ1BaN1JjdUZGbnM0Q0JiaXJhU2VHaThqRG1BMWxlL1NZbGFM?=
 =?utf-8?B?bjNna3NnV0pkM3FGZEJyTFlGUUFkMjlFUmgveUY1bTl4Mk5TclBaK3BCU1hp?=
 =?utf-8?B?U0M2V1N3N1E2YjdOck9nMW1jaGtVSmxIT1hJUVlQZWkwbXU5YXV4dkg2U1BK?=
 =?utf-8?B?RXBDdHdRSktWd0F5SytPS2o5NXRlUFVuVjBmeVE1NUNUcGE1MVFXZUZWQ2JF?=
 =?utf-8?B?WnNzWHBDOExHK3ZuMGhYc1RyODkyYVo0S01EeFNESXRhMWdzZDBDcGkwWHZo?=
 =?utf-8?B?VmdkNUM5dUZnVnMxVWRiaWFpVFRDY25sRlIrYnRSRUE4VVNMWUFiVlBlUHMz?=
 =?utf-8?B?VXJQcDJ1aURLK24weG05cHNkQ212bSt0ZEMxdVhKTDZCa1FOMFI2dWdUT2NN?=
 =?utf-8?B?REZYTEdaUUxCZDkrckgzaGdpUXR5bXlJY215TDc5MlorNjJWY2FidzBlNWxq?=
 =?utf-8?B?dGYwZG1pbHVNajZDcC9Kanh4WHhhVUp1emlhVW1lZEpabEEyZlB1aHRrWUkx?=
 =?utf-8?B?Z2ppT2tXOGhFc2RxRzNLOW9RK2lwVnFObHFhR0U5aE9Ld0hMcGlhaTBRM1hW?=
 =?utf-8?B?SmhEalRzTW82K2NWMXJiYTFKUEpkYlRBR2w3N1hGWVc4ZjhSaFVXMFRpemFw?=
 =?utf-8?B?aWFvdnZHV0VaQm9rUW8yRlkwZ3ErWjJOOWdEYkt5M09CM0dkTG5XYzVMUkpI?=
 =?utf-8?B?V1dwZW55dEw4RER6c3ZCVjBNbldmM3c5NmhtTEVUYTZxb2NoZ0dJdzE1Ujcy?=
 =?utf-8?B?d1ZyU2U1akZkWG5tZEFQNWhBSUsvdTVoMlU3WWw3Qy9NV1EwMGxlWFlHVU9N?=
 =?utf-8?B?dFhkdEFTdHF4RnVJbTlmbTZtOE5XUUdrOEZ3aFFnZDdlL1VOS2lEZ1NjU0Vm?=
 =?utf-8?B?RmtQUE40U1U5WTVTTlZTQzR5WGJ2ZDVOdGUzUkVzbi8xK3NXOTgrV3NNb242?=
 =?utf-8?B?ODIyRk5YR0EzQzNBa2NPOEpVbnZJSU1OclJRK0t2Q2FTd2V2b0sxNzVNeHZz?=
 =?utf-8?B?SmlHVTJ0ODVrdHhqaEI0YkF2VmJlVDU5WW1PZmc1RGRtMmpadzhkWUdBSGxQ?=
 =?utf-8?B?RWR6QlJoK0M1bGhOYUlyUHdUc0VpNitHK1hOYTF4UGZYYm4wcTlJNk1DN1lD?=
 =?utf-8?B?L2R5M3BJaHVCMENJQ1RqRTJITXM3bEhwOHZJem5LWSswRUNxV2R3VUZWeDl4?=
 =?utf-8?B?eGpUcDBPL2o0QUNVVjVIQS9EaFdSeVFySnprZThxV1FCd3pTdE1SR2NCMkFX?=
 =?utf-8?B?WVNwRXlzcWc5VjNEdEtOSEkvSFZFcWU3YXhjaldCdlpaUUI2dWlQZDdPV2pZ?=
 =?utf-8?Q?dYZ/RxXiyQjG8q4QPgm2DcCeO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5bdd187-6384-406a-bce1-08dbce3c26f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2023 11:36:35.0035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q9Tg1b8NAVRBf0u5RrV5KcnJT+abbq1YfcqwAn1AZQs4yLuNHEwC/E1dGFZo5UO7kXk9J06WNq4jWBgFQKdIng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5104
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Reset message bus
 after each read/write operation
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaXZpLCBSb2RyaWdvIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE9jdG9iZXIgMTMsIDIwMjMgMTE6
MjIgUE0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8u
c291c2FAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyXSBkcm0vaTkxNS9kaXNw
bGF5OiBSZXNldCBtZXNzYWdlIGJ1cyBhZnRlciBlYWNoIHJlYWQvd3JpdGUgb3BlcmF0aW9uDQo+
IA0KPiBPbiBGcmksIE9jdCAxMywgMjAyMyBhdCAwOTo1NTozMkFNICswMzAwLCBNaWthIEthaG9s
YSB3cm90ZToNCj4gPiBFdmVyeSBrbm93IGFuZCB0aGVuIHdlIHJlY2VpdmUgdGhlIGZvbGxvd2lu
ZyBlcnJvciB3aGVuIHJ1bm5pbmcgZm9yDQo+ID4gZXhhbXBsZSBJR1QgdGVzdCBrbXNfZmxpcC4N
Cj4gPg0KPiA+IFtkcm1dICpFUlJPUiogUEhZIEcgUmVhZCAwZDgwIGZhaWxlZCBhZnRlciAzIHJl
dHJpZXMuDQo+ID4gW2RybV0gKkVSUk9SKiBQSFkgRyBXcml0ZSAwZDgxIGZhaWxlZCBhZnRlciAz
IHJldHJpZXMuDQo+ID4NCj4gPiBTaW5jZSB0aGUgZXJyb3IgaXMgc3BvcmFkaWMgaW4gbmF0dXJl
LCB0aGUgcGF0Y2ggcHJvcG9zZXMgdG8gcmVzZXQgdGhlDQo+ID4gbWVzc2FnZSBidXMgYWZ0ZXIg
ZXZlcnkgc3VjY2Vzc2Z1bCBvciB1bnN1Y2Nlc3NmdWwgcmVhZCBvciB3cml0ZQ0KPiA+IG9wZXJh
dGlvbi4gSG93ZXZlciwgdGhlIHRlc3RpbmcgcmV2ZWFsZWQgdGhhdCB0aGlzIGFsb25lIGlzIG5v
dA0KPiA+IHN1ZmZpY2llbnQgbWV0aG9kIGFuZCB0aGVyZWZvcmUgYW4gYWRkaXRpb25hbCBkZWxh
eSBpcyBpbnRyb2R1Y2VkDQo+ID4gYW55dGhpbmcgZnJvbSAyMDB1cyB0byAzMDB1cyB0byBsZXQg
SFcgdG8gc2V0dGxlIGRvd24uIFRoaXMgZGVsYXkgaXMNCj4gPiBleHBlcmltZW50YWwgdmFsdWUg
YW5kIGhhcyBubyBzcGVjaWZpY2F0aW9uIHRvIGJhY2sgaXQgdXAuDQo+ID4NCj4gPiB2MjogQWRk
IEZJWE1FJ3MgdG8gaW5kaWNhdGUgdGhlIGV4cGVyaW1lbnRhbCBuYXR1cmUgb2YNCj4gPiAgICAg
dGhpcyB3b3JrYXJvdW5kIChSb2RyaWdvKQ0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCAxNiArKysrKysrKysrKysrKysrDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gaW5kZXggNmU2
YTE4MTgwNzFlLi43YzQ4ZWM1ZTU0YmQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IEBAIC0yMjEsNiArMjIxLDE0IEBAIHN0
YXRpYyB1OCBfX2ludGVsX2N4MF9yZWFkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBl
bnVtIHBvcnQgcG9ydCwNCj4gPiAgCWZvciAoaSA9IDA7IGkgPCAzOyBpKyspIHsNCj4gPiAgCQlz
dGF0dXMgPSBfX2ludGVsX2N4MF9yZWFkX29uY2UoaTkxNSwgcG9ydCwgbGFuZSwgYWRkcik7DQo+
ID4NCj4gPiArCQkvKg0KPiA+ICsJCSAqIEZJWE1FOiBXb3JrYXJvdW5kIHRvIGxldCBIVyB0byBz
ZXR0bGUNCj4gPiArCQkgKiBkb3duIGFuZCBsZXQgdGhlIG1lc3NhZ2UgYnVzIHRvIGVuZCB1cA0K
PiA+ICsJCSAqIGluIGEga25vd24gc3RhdGUNCj4gPiArCQkgKi8NCj4gPiArCQlpbnRlbF9jeDBf
YnVzX3Jlc2V0KGk5MTUsIHBvcnQsIGxhbmUpOw0KPiA+ICsJCXVzbGVlcF9yYW5nZSgyMDAsIDMw
MCk7DQo+ID4gKw0KPiA+ICAJCWlmIChzdGF0dXMgPj0gMCkNCj4gPiAgCQkJcmV0dXJuIHN0YXR1
czsNCj4gPiAgCX0NCj4gPiBAQCAtMzAwLDYgKzMwOCwxNCBAQCBzdGF0aWMgdm9pZCBfX2ludGVs
X2N4MF93cml0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgZW51bSBwb3J0IHBvcnQs
DQo+ID4gIAlmb3IgKGkgPSAwOyBpIDwgMzsgaSsrKSB7DQo+ID4gIAkJc3RhdHVzID0gX19pbnRl
bF9jeDBfd3JpdGVfb25jZShpOTE1LCBwb3J0LCBsYW5lLCBhZGRyLCBkYXRhLA0KPiA+IGNvbW1p
dHRlZCk7DQo+ID4NCj4gPiArCQkvKg0KPiA+ICsJCSAqIEZJWE1FOiBXb3JrYXJvdW5kIHRvIGxl
dCBIVyB0byBzZXR0bGUNCj4gPiArCQkgKiBkb3duIGFuZCBsZXQgdGhlIG1lc3NhZ2UgYnVzIHRv
IGVuZCB1cA0KPiA+ICsJCSAqIGluIGEga25vd24gc3RhdGUNCj4gPiArCQkgKi8NCj4gPiArCQlp
bnRlbF9jeDBfYnVzX3Jlc2V0KGk5MTUsIHBvcnQsIGxhbmUpOw0KPiA+ICsJCXVzbGVlcF9yYW5n
ZSgyMDAsIDMwMCk7DQo+IA0KPiB3aGF0IGNhc2VzIHRyaWdnZXIgdGhlc2UgcGF0aHM/DQpJIGhh
dmUgbm90aWNlZCB0aGlzIHdoZW4gZXhlY3V0aW5nIElHVCB0ZXN0IGttc19mbGlwIHdpdGggNGsg
bW9uaXRvcnMgYW5kIGVEUCBjb25uZWN0ZWQuIFNwZWNpYWxseSB3aXRoIDJ4LSBjYXNlcy4NCg0K
PiBhbmQgaG93IG1hbnkgY2FsbHMgaW4gdGhlIG1vZHNldCBjYXNlPw0KSSBoYXZlbid0IHB1dCBh
bnkgY291bnRlcnMgZm9yIHRoaXMgYnV0IHF1aXRlIGEgZmV3IGFueXdheXMuIFRoaXMgc3VyZWx5
IGludHJvZHVjZXMgYWRkaXRpb25hbCBkZWxheS4NCg0KPiB3aGF0IGFib3V0IHN1c3BlbmQvcmVz
dW1lIGN5bGNlcz8NCj4gDQo+IGlmIHdlIGRvIGEgc2luZ2xlIHJtdyB3ZSBhcmUgaW50cm9kdWNp
bmcgYXQgbGVhc3QgNDAwdXMgb2YgZGVsYXkgaGVyZS4NCj4gaGF2ZSB3ZSBtZWFzdXJlZCB0aGUg
b3ZlcmFsbCBmaW5hbCBpbXBhY3Qgb2YgdGhlc2UgZXh0cmEgc2xlZXBzIG9uIHRoZSByZXN1bWUg
YW5kIG1vZGVzZXQgbGF0ZW5jaWVzPw0KV2UgaGF2ZW4ndCBtZWFzdXJlZCBvdmVyYWxsIGltcGFj
dC4gSSBkaWQgc29tZSBmdXJ0aGVyIHRlc3RpbmcgYW5kIDIwMC0zMDB1cyBkZWxheSBpcyBhbiBv
dmVya2lsbCBzb2x1dGlvbi4gSSB0ZXN0ZWQgd2l0aCAxLTEwdXMgZGVsYXkgYW5kIHdpdGggbXkg
dGVzdCB2ZWhpY2xlLCBJIGRpZG4ndCBzZWUgYW55IGlzc3VlIHRvIHVzZSB0aGF0LiANCg0KSW4g
ZmFjdCwgSSBtb3ZlZCB0aGUgYnVzIHJlc2V0IHJvdXRpbmUgdG8gYmUgcGFydCBvZiAqX3JlYWRf
b25jZSgpIGFuZCAqX3dyaXRlX29uY2UoKSBmdW5jdGlvbnMgYW5kIHRvIG1lIGRlc3BpdGUgaXQg
bG9va3MgbW9yZSBjbGVhbmVyIHNvbHV0aW9uIEkgY2FuIGdldCByaWQgb2YgdGhlIGRlbGF5LiBJ
dCBtdXN0IGJlIG5vdGVkIHRoYXQgbXkgdGVzdCB2ZWhpY2xlIGhhcyBjaGFuZ2VkIHRvIGRpZmZl
cmVudCBNVEwuIEFueXdheSwgSSB3aWxsIGZsb2F0IHRoZSBwYXRjaCB3aXRoIHJldmlzZWQgZnVu
Y3Rpb24gcGxhY2VtZW50IGFuZCBkZWxheSBkcm9wLiBXZSBjYW4gY29udGludWUgZGlzY3Vzc2lv
biBmcm9tIHRoZXJlLg0KDQpUaGFua3MhDQoNCi1NaWthLSAgDQoNCj4gDQo+ID4gKw0KPiA+ICAJ
CWlmIChzdGF0dXMgPT0gMCkNCj4gPiAgCQkJcmV0dXJuOw0KPiA+ICAJfQ0KPiA+IC0tDQo+ID4g
Mi4zNC4xDQo+ID4NCg==
