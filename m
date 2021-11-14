Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F73744F776
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Nov 2021 11:50:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706FC6E175;
	Sun, 14 Nov 2021 10:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD9F6E152
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Nov 2021 10:49:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10167"; a="220523714"
X-IronPort-AV: E=Sophos;i="5.87,233,1631602800"; d="scan'208";a="220523714"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2021 02:49:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,233,1631602800"; d="scan'208";a="453672313"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2021 02:49:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 14 Nov 2021 02:49:57 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 14 Nov 2021 02:49:57 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sun, 14 Nov 2021 02:49:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hf1+yN5A5fJOR9dgAxEAwNCw5VWYbLF06MBYEI/siANr/3g793QlMdSTQH/8gsisB2/ovmdrixX03L6TliQK0RmhJVIgWMMwlMTJqKGXzJUKeeF7gXgsRsM2NVKxiqqTNvh2uyWirSUZTQuKPi2LQnKn4eWiNVn857FyLVOsSCTs5MUYsAhqZiYJA9bj+ldFj0GMUV1ARwo/xuXOYNQwVewsUm7/T2m4N3X+im2WbSUdFttYKSALDrdGW9bOArDM6MGZR4EezH9jM0F0bD8Uq8vNdS2ENAlFpHpYw23G8dXYbGIRXZDHAyUEXGvU1Knzymw7hucG8T3Fj1PvSD1T1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TywB3hlZjGypGR6Qtfl2HtH19gHAQw4iznFmL+MI4pQ=;
 b=J959Qv/SIM2PDIYh8VovjhVQ60CvH2qU3qVXRI0aEhOP+d6l71hBhUhRfGGxdEMzRMzJcVfpj/yQVWyZK1JD1EWS4PDDk89zv1MO9ym6UENcZcxys/RUnbXgub7894Siolq0PhJ1eOIj6CgFLnHGoMpUeLielQ1z2k+QC9VFzohPDahJALo0xZsoSEycg00Q5MRK8ozQghkOcA/V1KJOalkkWmLNzuhttiqT0Oz1S1iN80731RBbRFkNz3uaAKkwf1VGAe3N0v8QTbJKTqWktTCbzA+sIAYjKHJX3Mkby7Gj1yJjNb9JUQ5tyIz3JbBh3Ry35mq3n4Kj2uRJWZvIkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TywB3hlZjGypGR6Qtfl2HtH19gHAQw4iznFmL+MI4pQ=;
 b=qS+cPtTqzIqOp0bA3yHxnfNRzNBfR+QTDM47SiyHwGrWw2Fp7BFV25XKUtTOwdoDxkZ9kesBW79Bovs2nXARrk5lRy21yGkc+o3XKUKoOFP5drTiq1fUjQMpIESR6EBeXD/y4Fg7fyr3kPsyR/MsXMaM/hTKwZmKspPJmR2rjT8=
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM8PR11MB5656.namprd11.prod.outlook.com (2603:10b6:8:38::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.13; Sun, 14 Nov 2021 10:49:56 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a403:a525:133a:9d0d]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a403:a525:133a:9d0d%3]) with mapi id 15.20.4649.019; Sun, 14 Nov 2021
 10:49:56 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Bryan O'Sullivan <bos@serpentine.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] Can't drive 4K monitor at full resolution over DP
Thread-Index: AQHX2RE5+ZURYSWJ6kK9omSHJaJaaqwC2GZQ
Date: Sun, 14 Nov 2021 10:49:56 +0000
Message-ID: <DM8PR11MB565568E41B3AE32866A59364E0979@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <CACw0niK_XL8P99LZQjmgaMQ12X8=LRaN4YQ1Dbu_Bta8trK3tQ@mail.gmail.com>
In-Reply-To: <CACw0niK_XL8P99LZQjmgaMQ12X8=LRaN4YQ1Dbu_Bta8trK3tQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: serpentine.com; dkim=none (message not signed)
 header.d=none;serpentine.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef09a72e-f51b-4ad7-f2c6-08d9a75c7f1f
x-ms-traffictypediagnostic: DM8PR11MB5656:
x-microsoft-antispam-prvs: <DM8PR11MB56561EE61E57823BDB696AB4E0979@DM8PR11MB5656.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C8VnL1mb+zuWNQRbXaITJf33pDH4TjBVJ0miRx4/lhL9fgpeQRM5u3aYC+yGTz1vcihw0ZUlyobotbtEke2i8uEeWtGAcD+k6z+uRGNg5/ouA0zf3G9fR4/n9oo4FlDcQGGsuZ6tjKwJFWa3ZsQ2ZGxq9GmXC51hM3R6FrlNwsg6wryElsnRGnYhA8zdRI2EPvp7+XqhXlHtMgoVO7FLxcLa34IjyIkdSyM/4KlYDOJAUkJ2tFX2b3i9g53l7uIr6MilE439fKKmUaboWEw+o3ZytdCAkWAgLD//1srZ9qTzfymqyNTCU+gyTSq3R9PJFCpiGZC5LhLjvMqGXZ0v/wEc7t5iWd6rzsYdPFXS18whH7uzig8qPoU+vQb6nCXkxnYaHsuBbWQEbJnZw2NHLlP0sRbOgZwXV4JLBUXzzwGZ73I+79/SvQkgG7m3auXrTiZXvg7TXL9BeLJ0Sg7ekd0MxMudsAxoM2/0ZuKiGYlHBjx7/P/k37aDWc7tuI7bIJwP5wy4xtl6Fuw6b1yt034QYUIzE1OJMQY+z17hE0xjtpx+9lb14PwwTnBLWGPCyF9++qLZbzo+aPAcHkEjM3GqgfdBbNIoln93VfOqGVAH8sS8UoqovUNUNFUTJZO26E2HA03cUGObmFhBs+qAlo2QnZKOtYe9hwBfQWVNIozgAp662UrnWDmgDfCPxvgz0whlCXkP4SLxmsyJ/PO1G1VbXlR2HcOibhZd7d1D1ST5Fog+D1Qb+GmSeaYAVe0oG21Qn6TiZYNnmsJPWLbwi7clAw/oFRUvz3Qn+rRJRjdcGpUHsozhkazgUZr5YQls
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(9686003)(55016002)(316002)(82960400001)(33656002)(86362001)(7696005)(8936002)(110136005)(83380400001)(66946007)(5660300002)(122000001)(38100700002)(52536014)(76116006)(186003)(26005)(38070700005)(64756008)(71200400001)(66556008)(66476007)(508600001)(966005)(2906002)(8676002)(66446008)(6506007)(10126625002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aDFTWENRamE1M3p6SzFLbFMwWDdFd2owSmRFODVmc1l0akkvVTc5N095OGlF?=
 =?utf-8?B?c2dkU1BxOTRXZ0luNE1ZL1Iwbk8yMG9tMVlOK1dUL3BJMEs1Qm94RU0zbGxU?=
 =?utf-8?B?RFh6ZWdSTE04YjNkV0ZyVWxBY1ZvV0dpWndMSk5NVGJienRCYXUyWmx5a1FK?=
 =?utf-8?B?emFXUEFubUdRV2gxd3IvaVUyQzFIM0ZBOXM4QisyNlhZRjZmR0JPbUIrSjZ5?=
 =?utf-8?B?WlVxYmZlT1hvRU1LS0RoTUpMNlB5dFgwdU1wS1VBZTRLVGpmay9jdStkSWpo?=
 =?utf-8?B?Wk1EL1Y0SVZUKzFBeng5QTk0QWdkTFZaSTNiZXhWUzRvYS9hTlJwc1hNSFAr?=
 =?utf-8?B?MVlIR0lwY0ZYNzRTZ3IvYXpHbWFQTmJaNWFCNkFaODhqaGtLSkhBeWR4dDB3?=
 =?utf-8?B?cTJyVXNYdzIxeEM1RjJsQkR4eEV3RncvUkw5aTBkRko2ei9WMWVOSWowc3Zm?=
 =?utf-8?B?cXNUWlJVZUhiaXgwTFI4VHNaZGRTMXZsSlpoNWd3MHdBMU1hY29CNFphM2I5?=
 =?utf-8?B?blVkbFhpQUtSVmJVSjhBVjRRRmhzM3NrdjJYbVNSRWtTRi9TQnFHamtVNUNu?=
 =?utf-8?B?cGdnYnZ5cXZlOENQYTRJZlBaUnRSMEh1S25VNC9yWnFjSHVwTy9EcGIyUUth?=
 =?utf-8?B?RUFXY1BVK1d1alNSdE9WTmloV1dGaFN4OU9lUnV4cnJydkpOWWtaZk4zWW5j?=
 =?utf-8?B?cnRkeGNXQ2h5Z3M1QXcwa1dpSUVZMWZQVzd4cVg5NWZ3MWZ3T3JneUtUWVBJ?=
 =?utf-8?B?UGNqeGtjYjhWTWRlZlNIVFZONlh1OEw1RTlZV00wcitVSm9oV0d1NkZHcVlY?=
 =?utf-8?B?Q25ZWVllUVg4M3JsZzRablJENys1SDY4bmVKQ1dJNTh0bDIrQ2hvaFMwNDdX?=
 =?utf-8?B?TVpFYnlLaFhPMkhWaGl0QTVhYllaOTZ6dTh1dG5Qdm5NVmtiNEw4RnNjMWxL?=
 =?utf-8?B?cnFQWGE3UlE0dEVOZ3FiY0NidThWMjl1RGRId01WUlBqamZKVWlaVlJBeVVE?=
 =?utf-8?B?bTdzYnkwTXhORXRMdklEak13NzdFQ1E5bVRaOVduc1hDSVkrbmtBQkRNV01w?=
 =?utf-8?B?YzFpbkdmZURWM3hkNXVhYWZRUGtvZWNUN2JsUjhhT1N3UzhrbktSUjQrSkRV?=
 =?utf-8?B?bUx6M3hMSm1BTUZEU2pYc3VMMm9uL1dOQkhrSWorbzdPaFpkcTJxRDY3cmFy?=
 =?utf-8?B?YzZ6NGdJT1ZUQnZLT2UyRG5zN0FYL3FsL05pY2VWV2p1U0poYytxeThzU1Nq?=
 =?utf-8?B?Tmllb0lzcy9NdjN2Q09rY3NUS3RTNnZCTnFSN2FsNS90TWNNV2pTS3lnWlZn?=
 =?utf-8?B?YWRtZjJFckRPckR5UWlNRHRPQ3pydzRsNThKbFBQeEk2OW1vZG93eEVrTW9O?=
 =?utf-8?B?eXQyTDNZWEhVN3huL3FHcnc4eWludDNYcjB3NjF3VlJvYjI4NzM4QTZka2g0?=
 =?utf-8?B?ZEw0SUFuTXdPRHFEY09wWFk4eWhSRWlNRUlKVml2dzh4dkxkY1I3TnVsVW0w?=
 =?utf-8?B?dHBqRlEzQW9hYkN6ZVdNdFdMem8wL3JsZjVYSTB0eTluMlBENkM3WEE0Rlcv?=
 =?utf-8?B?L3BzZk9OY0RXdDI3V2N5ay9kVjZIM3BxQ1Z6OEF5Q09IZ1J3MmJRL3JIdkVR?=
 =?utf-8?B?Q0FOWUplRnNTQVN2N3FQUERnQmZHWFdUeWwyWlBiaktxcDBHb1JER1VKNHdS?=
 =?utf-8?B?MFB3cm0zeStkM2w2dGlvZ0FyOCt4R3FZeW9mejRqNERJVzROVmVzU2RRamIr?=
 =?utf-8?B?WjhXNnNxTlVqaEU3TW11RnFGU21xVW9hQ0djNlRZT1dWN01PWFpyQnVvc3dO?=
 =?utf-8?B?MVJmWHhBbmJKUzkwUEJFa05jbC9Ccm80a3RaOUVaV3JyN3dsOWpVMkxJSEMr?=
 =?utf-8?B?MXI1ZlRQSklGSW1Ka0lPUkxPZTVyL1VYVDBNZ2ZxY3NLclpvK2loOFZDbWdw?=
 =?utf-8?B?aklONDJiR1BDby93emN3RmFHbVpVOVhwMy96bnloL3dELzFPMkpONlRPSjlu?=
 =?utf-8?B?MjdvUUV2RUo5R1BsM1Z2Nitic0Y4UHBJdDIrd3NTRlN6MTBUNEhyZUl5aVRv?=
 =?utf-8?B?d3MrTjAxaVRpNlpGdC9ySVVoemkrcjBrZzZ2UmU5a1V5QkhQNS9PRU11ZXNV?=
 =?utf-8?B?d1NYUFd2ZjR1dENRa2U0N0NoUktMblVPQlZFbDRiKzRHU28vOG5oMnFpYS9z?=
 =?utf-8?B?WWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef09a72e-f51b-4ad7-f2c6-08d9a75c7f1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2021 10:49:56.0439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +IYRdK1QkJIhcTHA7Q8yh7cyfOxo3F9Km63tZ590G4qSfUh6Hr9McpdPZgzYoaqr4qiyPx4+6GKY5OiyjeLkGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5656
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Can't drive 4K monitor at full resolution over DP
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

SGkgQnJ5YW4uIA0KQ2FuIHlvdSBmaWxlIG5ldyBidWc6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaW50ZWwvLS93aWtpcy9Ib3ctdG8tZmlsZS1pOTE1LWJ1Z3MgDQoNCkJyLA0K
DQpKYW5pIFNhYXJpbmVuDQpJbnRlbCBGaW5sYW5kIE95IC0gQklDIDAzNTc2MDYtNCAtIFdlc3Rl
bmRpbmthdHUgNywgMDIxNjAgRXNwb28NCg0KDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3Rv
cC5vcmc+IE9uIEJlaGFsZiBPZiBCcnlhbg0KPiBPJ1N1bGxpdmFuDQo+IFNlbnQ6IHN1bm51bnRh
aSAxNC4gbWFycmFza3V1dGEgMjAyMSA2LjM2DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIENhbid0IGRyaXZlIDRLIG1vbml0b3Ig
YXQgZnVsbCByZXNvbHV0aW9uIG92ZXIgRFANCj4gDQo+IEkgaGF2ZSBhIG5ldyBGcmFtZXdvcmsg
bGFwdG9wIHJ1bm5pbmcgRmVkb3JhIDM1LCBzdG9jayBrZXJuZWwgcGFja2FnZSA1LjE0LjE2LQ0K
PiAzMDEsIEJEQiB2ZXJzaW9uIDI0MC4NCj4gDQo+IE15IENQVS9HUFUgaXMgYW4gMTF0aCBnZW4g
aTctMTE2NUc3LCBjb25uZWN0ZWQgdmlhIGEgVVNCLUMtdG8tRFAgY2FibGUgdG8gYQ0KPiAyMDE0
LWVyYSBEZWxsIFAyNzE1USBtb25pdG9yIHRoYXQgc3VwcG9ydHMgMzg0MHgyMTYwQDYwSHogb3Zl
ciBEUCAobXkgTWFjDQo+IGRyaXZlcyBpdCB0aGlzIHdheSBqdXN0IGZpbmUpLg0KPiANCj4gV2l0
aCBpOTE1IGRlYnVnZ2luZyBlbmFibGVkLCBJIGNhbiBzZWUgdGhlIDRLIG1vZGVsaW5lIGJlaW5n
IGRldGVjdGVkIGFuZA0KPiBkaXNjYXJkZWQgYmVjYXVzZSBDTE9DS19ISUdILiBIZXJlJ3Mgc29t
ZSBkZWJ1ZyBvdXRwdXQgaW4gYSBwYXN0ZSBhcyBpdCdzIGxvbmdpc2gNCj4gYW5kIHZlcmJvc2U6
IGh0dHBzOi8vcGFzdGViaW4uY29tL3JlR2NteFlGDQo+IA0KPiBMaW5lIDE3IG9mIHRoYXQgcGFz
dGUgc2VlbXMgd2VpcmQsIHdoZXJlIHRoZSB2YWx1ZSBvZiBldmVyeXRoaW5nIGlzIHplcm8gZm9y
IHNvbWUNCj4gcmVhc29uPw0KPiANCj4gSGVyZSdzIHNvbWUgb3V0cHV0IGZyb20gdGhlIG1vbml0
b3ItZWRpZCB0b29sLiBJZiB0aGVyZSdzIGFueSBtb3JlIGluZm9ybWF0aW9uIEkNCj4gY2FuIHN1
cHBseSB0byB0cmFjayB0aGlzIGRvd24sIEknbSBoYXBweSB0byBkbyB3aGF0IEkgY2FuLg0KPiAN
Cj4gTmFtZTogREVMTCBQMjcxNVENCj4gRUlTQSBJRDogREVMNDBiZA0KPiBFRElEIHZlcnNpb246
IDEuNA0KPiBFRElEIGV4dGVuc2lvbiBibG9ja3M6IDENCj4gU2NyZWVuIHNpemU6IDU5LjcgY20g
eCAzMy42IGNtICgyNi45NyBpbmNoZXMsIGFzcGVjdCByYXRpbyAxNi85ID0gMS43OCkNCj4gR2Ft
bWE6IDIuMg0KPiBEaWdpdGFsIHNpZ25hbA0KPiBNYXggdmlkZW8gYmFuZHdpZHRoOiA1NDAgTUh6
DQo+IA0KPiAgICAgICAgIEhvcml6U3luYyAzMS0xNDANCj4gICAgICAgICBWZXJ0UmVmcmVzaCAy
OS03NQ0KPiANCj4gICAgICAgICAjIE1vbml0b3IgcHJlZmVycmVkIG1vZGVsaW5lICg2MC4wIEh6
IHZzeW5jLCAxMzMuMyBrSHogaHN5bmMsIHJhdGlvIDE2LzksIDE2Mw0KPiBkcGkpDQo+ICAgICAg
ICAgTW9kZUxpbmUgIjM4NDB4MjE2MCIgNTMzLjI1IDM4NDAgMzg4OCAzOTIwIDQwMDAgMjE2MCAy
MTYzIDIxNjggMjIyMiAtDQo+IGhzeW5jICt2c3luYw0KPiANCj4gICAgICAgICAjIE1vbml0b3Ig
c3VwcG9ydGVkIENFQSBtb2RlbGluZSAoNjAuMCBIeiB2c3luYywgNjcuNSBrSHogaHN5bmMsIHJh
dGlvIDE2LzksDQo+IDgxIGRwaSkNCj4gICAgICAgICBNb2RlTGluZSAiMTkyMHgxMDgwIiAxNDgu
NSAxOTIwIDIwMDggMjA1MiAyMjAwIDEwODAgMTA4NCAxMDg5IDExMjUNCj4gK2hzeW5jICt2c3lu
Yw0KDQo=
