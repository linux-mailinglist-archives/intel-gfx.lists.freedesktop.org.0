Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD107FD09A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 09:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5777010E18D;
	Wed, 29 Nov 2023 08:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45CD210E0AA;
 Wed, 29 Nov 2023 08:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701246189; x=1732782189;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Vecn48+V5mhXApeLEE38N2A9+6/8KgS9z1wyD/492NM=;
 b=AAjhLR6aNhdZzPtNUQoHUM3hg+y53Gl/4p4O4XmSgvpJEn1ZGl48RI9J
 gNyOasAl0YpFdydYMp33hnfus30FQcitkl947tSDE0mBlK6qVtcgZF5N4
 QyWz+YX3bAKj3dleHwLIq/d1Rkfd/ylwLrn65pQOSlwxS7bN1r9OUrdyj
 kkQK6FtFfM5GLuAXk6vzG4mvzjSyhwOgn0EgyOBo1bxVs3MnsMIbWfk82
 adPV8nSHGrTKkJxdaZPwHzTeqaz31hwWyNk8tbh2jIfUge17KZZWmE5Tw
 IYpoNhcMVwHs7cVAUxRon/cOLqheEOhZoGepN2LlcTBzdcmKvlPQIguBB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="391987144"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="391987144"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 00:23:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="762230540"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="762230540"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 00:23:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 00:23:02 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 00:23:02 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 00:23:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMwGihFTnspB3qqyfMo+tsZqt9WT8cYEJe1a5eob9KIn6qpjUihlkz4s5wp/UxWf/Zbss6n4dMRv4GUusUa9NM/rBzOFxCMydmAWG02uqJbC32CMDq/PTUw//llUL+2X7tpU/mM5ZinVhdWMSVnVNAyizNr4FZHKyXDU6QW5/HClKWCGyeqNttUkhlyY0JDqsBgspPa44O66pFmY+f+cvRhesDtI+4plq0KVw0RHMxfKH3cynikYpc5mexqujdGFGcNeWE/baWAZLziZV0rjjbEEOB5i+ZzExIgBpt5duHApcvq8rSCs6rmU2bvIBciK6zVSjR4L3tKrACKMHlkClg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vecn48+V5mhXApeLEE38N2A9+6/8KgS9z1wyD/492NM=;
 b=h8WTtaVLjp8RHcxOdsuFaAkwur/PVphp4Lkz0frD95uZ5HqRuzpnilhdlKB3U8xojvMrqMBOvRzuNr9wVdPg/Vg+zWkDUpZd59+uFKIPEdU1jbkoBAdFufEmjzFrXBDDCANrRR4fxW37sCKi35wYcnHWDHvsNoVipwaYW6JLkC5V+25Uw0VYNxTYp93YoHM08kFE27ibWSeyEWt4Zt1XbAiuMricAGlKRFTt0cF6ZINF19u520nPY01aPPqnIsMza0mGG1TYGtpIRG0SpHvlkIdP+TaRcFDI4kmG37HcxPZgRMqumlvnG7bJim8zmSnb0zTp4Kdgqa1xDadRNw31Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH7PR11MB7718.namprd11.prod.outlook.com (2603:10b6:510:2b6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Wed, 29 Nov
 2023 08:22:55 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 08:22:55 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Zanoni, Paulo R"
 <paulo.r.zanoni@intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
Thread-Index: AQHaIp1AobJE6IcTUUGpSUEvCgb2DA==
Date: Wed, 29 Nov 2023 08:22:55 +0000
Message-ID: <2aa59475fa2c896cbe2719bfa85a23e34448f861.camel@intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
 <ZVcUH7G40NQ4Q-R7@intel.com>
 <8cb3dbfe8290336233133b98b903adca0738ee4e.camel@intel.com>
 <ZVcnRzSDC8s8G073@intel.com> <ZVcx1MSvP0UgZ14o@intel.com>
 <ZVeZ2xYYs3NYftvm@intel.com>
 <0830e5605419105eb649874b535735b0f0891384.camel@intel.com>
In-Reply-To: <0830e5605419105eb649874b535735b0f0891384.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH7PR11MB7718:EE_
x-ms-office365-filtering-correlation-id: eb3c91be-6044-4a15-0b1a-08dbf0b46334
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZiGj7fhtC8v0Kro7Iqo4uAR8jXp36imWwthZrnutO9p8t/2Da7UB43Uj/GbmhYB42btmGVHfTz5oMcIoUEsBPRknL900i9HtlfS9uJJDS1wj/C1GtGsCxcFOEJa8Iw/+cwe6ebWc7mESBkWJoh57g073maTWeizw3PlrbNPN6FTCwYkOxdiZ9LwjkoH34Zfry+eWiwFZn0JFkOktTAcmAXfwP1fq/+U8i3klOfdI+L5wacQj1WBHrb0ceTfxxj7DmSJbVtGVToyuuA0h6AIMuRJpvTRe2cVE/HoOhnYv42bj1E/rrVCTZ+iEw3sBvUQ7PyBipq0lpOTVEAtf+qJNgdbxb3H3oBIGTO1eaM+k8ZdlH3jE/GXXYrxanOB+dOwq9dbnn6E06S6rOSq/HJuHFmYYeT1JzNtu2pKNvye8Boi+6ZznAcyug+Z6vHEtP/yjX8m+2TUuE6AN5f+XKMhkkDfibuLNLd2xavfEykdvuPAVLd+A6usEkEAH30V/M9wKKF/p2gvZ80bHpdy/74Vx72NwgDCJaHQPtofWcWB6mLPfBYjyRx+jb86XUX0PSIx5fY9gruNDjil2c6WI+S8Srjk2iUcEedisgJ9KrYmjPpKFA9uWpp5d/afqkjJ8k8YM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(39860400002)(346002)(376002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(82960400001)(41300700001)(122000001)(478600001)(54906003)(4326008)(36756003)(8676002)(8936002)(91956017)(2616005)(86362001)(110136005)(6636002)(316002)(64756008)(76116006)(66946007)(66556008)(6506007)(26005)(66446008)(66476007)(66574015)(83380400001)(71200400001)(6512007)(38100700002)(38070700009)(6486002)(4001150100001)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dzV0NlFTTWZ6eWpuS0hWYWhaTGIvcmZrMy8rK2dxaTZ6Qjg0Qm5ZT2UxVENV?=
 =?utf-8?B?T2FWTGdHYmZDMXQ3YjJib2F5NVVsajczcTNzdFVQQnFCOEprUTRmVXVXR0pv?=
 =?utf-8?B?MDZYZGdXUlRNVzIvM3JnWmQ2Nkk3R3VRUkZLY2UxaDZTUmRoQUkzRnBEQmow?=
 =?utf-8?B?Z1FPaVJRTjEvbk1GeUhkQTlISHlZbW54QUZJR3JydURDTnF2M3JNUnN0a0FO?=
 =?utf-8?B?Nm5ISGJUekc3NEtjcWs3R3BiQmU3ZnpTblcxZWtNMGVBSDNUMXo2Z0FzL3pK?=
 =?utf-8?B?SWM1a01xNzQ5V0l1bm91bEZRSFJRSVlQcjRLcTRYc1NqcjI3aFRnUUQxUGpR?=
 =?utf-8?B?VnRqZkxOVDFoUHB2K0ZteEthNks1SVlzclNERnVPVmFvUCswV1VsckVGWkZW?=
 =?utf-8?B?N01QQ0gwK3dyZGJDZmE5QmhtOXZzSzlxS213akEvNS9SczdDei9INzdzMUN3?=
 =?utf-8?B?UHpRQ2NlQTY5QjBIRk0ySlQ5bExJMEVxUmhSR3lSaUk3TGpKMEVqZzhiOWp4?=
 =?utf-8?B?aHZQNytCTDRxWVRMamx6bkJTYTB0VHVIMHVBL2R3dEk5WFdUV3o2VUZtN0NV?=
 =?utf-8?B?WGl1aEZ6eEh1K1docGt2blVWUjdNZDA5MTlsSEZPcDZnaEVaYTd0T0tpc0pH?=
 =?utf-8?B?dzc1ZGdVVnhJK3d1M1RDNHduYlZsQXFQQ3dUWEVDRlkxUWFyVXM0QXBtd0dq?=
 =?utf-8?B?RXZjNXZaY245SWZWRHNSL2I5RHRmT3JBNExhS0JYbjRQWUxTMWhqeW1Ycklv?=
 =?utf-8?B?Rms0RzJqQkg1WW1KY1Z5a1hwWlhvTEhhK0xUNXJaUWl4TWRKL01pUEkvNWRk?=
 =?utf-8?B?eTRGZ1c5dUI4UjdRRmVWOTNlbkR0UVdiZXpoYjZsdEplYlBQMCt1SUkweTU2?=
 =?utf-8?B?WEtTUTNpa2tFOVFRei9LNUZWSXVWQTE2V3VZanJwZVZNL05WWmtjeW1Fd3BQ?=
 =?utf-8?B?RG9HQlBLSUNqcG83WC80WlBZWmc4OVRMRERiS2JITUJNbUw0Mm9JQzVFOFAx?=
 =?utf-8?B?SFp2b1U2MmNlT3pyNmN2cnVwaXBaSnVyOU5scFFvVmtpR2Fod0ZabFdQSTRJ?=
 =?utf-8?B?M3RhSmdHS3V6S0xsWWdYTGRlYmVJck82YmNSVVBMaTgzeDZGMEVlUVBSaU9Q?=
 =?utf-8?B?SDNhSEpnT1VuT0lMRlgrVDBzUm9iUHV0Q2o2WWlHN0I4LzhFRE5PNFVmZUhL?=
 =?utf-8?B?U2NiZDZoQ3VPV0tsVXI4T1htWWR2UFRNQ2lCbEtKL0tVZEtJR1BxYnByNCtM?=
 =?utf-8?B?ZTNmVXFiWUt4WjdlQWV2dlhOWEk4WmtyY2EzSFMyVmVrNFVpdHBSVFdkYmli?=
 =?utf-8?B?MzhEeURTbm5KOTQzaW9nT29URDVvQkMxYXhpMG9JKy8rUUtPakdVVkcwVGJ3?=
 =?utf-8?B?S2hOWEdxaGhJN0poRnB5SDM2dzdmK0trVVBxMjVySEMxTko1bHZlTWkxUXEw?=
 =?utf-8?B?OFQ3UG5IRUZQTURLMVppVkdubCtmTy8vcFRucEpHUVZtbzBZOUpQcU1vWCtY?=
 =?utf-8?B?aEZVdHVZcHUxMGhEejBDYXEwWWtCOGIyYmpaU0U3cDdlKzdsa2dHZ1BiMzNI?=
 =?utf-8?B?cUFjY1ROUGF2Q0ZKY0plNHgwRDZSL3lDSGFaYTVnamR1TThzRDgvcmFRTXk0?=
 =?utf-8?B?WVV4QTBkbjV1d2hKdXBhenlTUFlJNThVanphdWsrTWRmZjNMN2Y2a0hxQ0tr?=
 =?utf-8?B?Q3ZyaGtoSGcybjg4MENNaklVbE94U3dXOFRaSm5ieFA1V3p0bWxsODlFbmcz?=
 =?utf-8?B?ZXpXbWdFWU53d1JLQnd2RUtoM1pjQXl0OGU3ek00TlU0alpYaHpqYWhaVHRP?=
 =?utf-8?B?RHFaRlZZcjFEUlNlQkpwSkM0WlpEd3MweGpJZ3BFZUNZazhKNXRDUnIxaXND?=
 =?utf-8?B?N3JJbXlIeGRjMWRBbW16QTlSMEpmN1paelVaRXc3c284ZG5kRHBsNmNtUzRJ?=
 =?utf-8?B?cEVMSGRsQVpXbWdmRSttSkVtd3FaaUJxMXZUeTFtNmlIWWNNYWR2K1ZsS0xC?=
 =?utf-8?B?VU8veWVvQlBrNWg0YzM0a0swSmVvdWRHYjJLMWVIelhFV3ZOVXdFZzNEQmNE?=
 =?utf-8?B?cGpIemo4UlpVUi9Dd29ERGd5amVoNk1FMUNuVXJtWnJiL05MV0w1elIrWDNj?=
 =?utf-8?B?R3RTVU5mdHY2K2F6VE05TTIzeGJKWXhHbUZtQ2YvdnhIZ214dHA4VVA0ZXBi?=
 =?utf-8?B?VWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8D98E87E435BD04189D3C2E4E26355C4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb3c91be-6044-4a15-0b1a-08dbf0b46334
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 08:22:55.1721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NrjQgp+mPQSdFIdEgQ/n7gVJjMw1uxEE1iqAghRL3gQ4wqFnk1Yl01qSZhSGOeehekNddJsMNRgt/xTgyrPIVaR7NIn8mcLGITbF2HBbCI8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7718
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTExLTE3IGF0IDE3OjE1ICswMDAwLCBaYW5vbmksIFBhdWxvIFIgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyMy0xMS0xNyBhdCAxMTo1MCAtMDUwMCwgUm9kcmlnbyBWaXZpIHdyb3Rl
Og0KPiA+IE9uIEZyaSwgTm92IDE3LCAyMDIzIGF0IDExOjI2OjQ0QU0gKzAyMDAsIFZpbGxlIFN5
cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIEZyaSwgTm92IDE3LCAyMDIzIGF0IDEwOjQxOjQzQU0g
KzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+ID4gT24gRnJpLCBOb3YgMTcsIDIw
MjMgYXQgMDg6MDU6MjFBTSArMDAwMCwgQ29lbGhvLCBMdWNpYW5vIHdyb3RlOg0KPiA+ID4gPiA+
IFRoYW5rcyBmb3IgeW91ciBjb21tZW50cywgVmlsbGUhDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
T24gRnJpLCAyMDIzLTExLTE3IGF0IDA5OjE5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+ID4gPiA+ID4gPiBPbiBUaHUsIE5vdiAxNiwgMjAyMyBhdCAwMToyNzowMFBNICswMjAwLCBM
dWNhIENvZWxobyB3cm90ZToNCj4gPiA+ID4gPiA+ID4gU2luY2Ugd2UncmUgYWJzdHJhY3Rpbmcg
dGhlIGRpc3BsYXkgY29kZSBmcm9tIHRoZSB1bmRlcmx5aW5nIGRyaXZlcg0KPiA+ID4gPiA+ID4g
PiAoaS5lLiBpOTE1IHZzIHhlKSwgd2UgY2FuJ3QgdXNlIHRoZSB1bmNvcmUncyBzcGlubG9jayB0
byBwcm90ZWN0DQo+ID4gPiA+ID4gPiA+IGNyaXRpY2FsIHNlY3Rpb25zIG9mIG91ciBjb2RlLg0K
PiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gQWZ0ZXIgZnVydGhlciBpbnNwZWN0aW9uLCBp
dCBzZWVtcyB0aGF0IHRoZSBzcGlubG9jayBpcyBub3QgbmVlZGVkIGF0DQo+ID4gPiA+ID4gPiA+
IGFsbCBhbmQgdGhpcyBjYW4gYmUgaGFuZGxlZCBieSBkaXNhYmxpbmcgcHJlZW1wdGlvbiBhbmQg
aW50ZXJydXB0cw0KPiA+ID4gPiA+ID4gPiBpbnN0ZWFkLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiB1bmNvcmUubG9jayBoYXMgbXVsdGlwbGUgcHVycG9zZXM6DQo+ID4gPiA+ID4gPiAxLiBz
ZXJpYWxpemUgYWxsIHJlZ2lzdGVyIGFjY2Vzc2VzIHRvIHRoZSBzYW1lIGNhY2hlbGluZSBhcyBv
bg0KPiA+ID4gPiA+ID4gICAgY2VydGFpbiBwbGF0Zm9ybXMgdGhhdCBjYW4gaGFuZyB0aGUgbWFj
aGluZQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IE9rYXksIGRvIHlvdSByZW1lbWJlciB3aGljaCBw
bGF0Zm9ybXM/DQo+ID4gPiA+IA0KPiA+ID4gPiBIU1cgaXMgdGhlIG9uZSBJIHJlbWVtYmVyIGZv
ciBzdXJlIGJlaW5nIGFmZmVjdGVkLg0KPiA+ID4gPiBBbHRob2d1aCBJIGRvbid0IHJlY2FsbCBp
ZiBJIGV2ZXIgbWFuYWdlZCB0byBoYW5nIGl0DQo+ID4gPiA+IHVzaW5nIGRpc3BsYXkgcmVnaXN0
ZXJzIHNwZWNpZmljYWxseS4gaW50ZWxfZ3B1X3RvcA0KPiA+ID4gPiBjZXJ0YWlubHkgd2FzIHZl
cnkgZ29vZCBhdCByZXByb2R1Y2luZyB0aGUgcHJvYmxlbS4NCj4gPiA+ID4gDQo+ID4gPiA+ID4g
SSBjb3VsZG4ndCBmaW5kIGFueSByZWZlcmVuY2UgdG8NCj4gPiA+ID4gPiB0aGlzIHJlYXNvbi4g
DQo+ID4gPiA+IA0KPiA+ID4gPiBJZiBhbGwgZWxzZSBmYWlscyBnaXQgbG9nIGlzIHlvdXIgZnJp
ZW5kLg0KPiA+ID4gDQo+ID4gPiBJdCBzZWVtcyB0byBiZSBkb2N1bWVudGVkIGluIGludGVsX3Vu
Y29yZS5oLiBUaG91Z2ggdGhhdCBvbmUNCj4gPiA+IG1lbnRpb25zIElWQiBpbnN0ZWFkIG9mIEhT
VyBmb3Igc29tZSByZWFzb24uIEkgZG9uJ3QgcmVjYWxsDQo+ID4gPiBzZWVpbmcgaXQgb24gSVZC
IG15c2VsZiwgYnV0IEkgc3VwcG9zZSBpdCBtaWdodCBoYXZlIGJlZW4gYW4NCj4gPiA+IGlzc3Vl
IHRoZXJlIGFzIHdlbGwuIEhvdyBsb25nIHRoZSBwcm9ibGVtIHJlbWFpbmVkIGFmdGVyIEhTVw0K
PiA+ID4gSSBoYXZlIG5vIGlkZWEuDQo+ID4gDQo+ID4gUGF1bG8gdmVyeSByZWNlbnRseSB0b2xk
IG1lIHRoYXQgaGUgY291bGQgZWFzaWx5IHJlcHJvZHVjZSB0aGUgaXNzdWUNCj4gPiBvbiBJVkIs
IHNpbXBseSBieSBydW5uaW5nIDIgZ2x4Z2VhcnMgYXQgdGhlIHNhbWUgdGltZS4NCj4gDQo+IEp1
c3QgYSBtaW5vciBjb3JyZWN0aW9uOiBJIGRpZG4ndCBnaXZlIHRoZSBkZWdyZWUgb2YgY29uZmlk
ZW5jZSBpbiBteQ0KPiBhbnN3ZXIgdGhhdCB0aGUgc2VudGVuY2UgYWJvdmUgc3VnZ2VzdHMgOiku
IEl0J3MgYWxsICJhcyBmYXIgYXMgSQ0KPiByZW1lbWJlciIuIFRoaXMgaXMgYWxsIGZyb20gbGlr
ZSAxMCB5ZWFycyBhZ28gYW5kIEkgY2FuJ3QgcmVtZW1iZXIgd2hhdA0KPiBJIGhhZCBmb3IgbHVu
Y2ggeWVzdGVyZGF5LiBNYXliZSBpdCB3YXMgc29tZSBvdGhlciBzaW1pbGFyIGJ1ZyB0aGF0IEkN
Cj4gY291bGQgcmVwcm9kdWNlIHdpdGggZ2x4Z2VhcnMuIEFsc28sIHRoZSB3YXkgd2UgdXNlZCBy
ZWdpc3RlcnMgd2FzDQo+IGRpZmZlcmVudCBiYWNrIHRoZW4sIG1heWJlIHRvZGF5IGdseGdlYXJz
IGlzIG5vdCBlbm91Z2ggdG8gZG8gaXQNCj4gYW55bW9yZS4gQW5kIEkgdGhpbmsgaXQgcmVxdWly
ZWQgdmJsYW5rX21vZGU9MC4NCg0KR3JlYXQsIHRoYW5rcyBmb3IgdGhpcyBpbmZvcm1hdGlvbiEg
SXQncyBnb29kIHRvIGtub3cgdGhlIGFjdHVhbCBmYWN0cw0KZm9yIHRoaXMgaW1wbGVtZW50YXRp
b24uICBTbywgd2UnbGwga2VlcCB0aGluZ3MgbW9zdGx5IGFzIHRoZXkgYXJlLA0Kd2l0aG91dCBy
ZW1vdmluZyBhbnkgbG9ja2luZyBhbmQgZ28gYmFjayB0byBteSBvcmlnaW5hbCB2ZXJzaW9uIG9m
IHRoaXMNCmltcGxlbWVudGF0aW9uLCB3aGljaCBrZWVwcyB0aGUgbG9ja2luZyB3aXRoIGk5MTUu
DQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
