Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B3C603A5D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 09:09:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350A610E430;
	Wed, 19 Oct 2022 07:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D71C10E430
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 07:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666163368; x=1697699368;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zOa0rxFKRDtMEBrKPUdJBDKm5Wq+MLNVzC/U3bGZsyw=;
 b=jDrmwDtnvmjgjjmGzx5oiaj3KfEr9yWwu39MFAsR4EvAPqd+nJa8mj2J
 +NVATv0KwhYuwbdCZNqMkvF0AUjOr3gRQeO6lXzT7l4NLY4bNy0YQ2DYy
 yRdoCMQTEl3LXk4yuxP8SUYcbv2ELoSMADy3jLZYXjOsQlN1ZNSVxb68W
 i8dzMbIIXLi+jrwYOSUDvjzqPiHx+kI7s087EPBio068CTm/s6sXSPA90
 rsNq/1cFbaSbFexY1cH0XbTO3Zkrp6xCCIS3/VpABDsjVyE8JFU+Va1Ht
 TNhtUNZj/sHbTfWQxcuOCp8c7IKvvxZrMoHu3rXa2TudlW3+G/BoQSKIJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="305062131"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="305062131"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 00:09:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="754437917"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="754437917"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 19 Oct 2022 00:09:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 00:09:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 00:09:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 00:09:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 00:09:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L2BGkXJFOJaLCN/vS9pW93NFHXZbv/aJ8kcsFkA/iIdciQoRwdDQkQtuiiFhmVq+WvyeX/GteGAXIpLjyuMjmt/zsExKfIBnzsitWUGf+XZwXHJYrh3BnZiVL5zzc6TEcnaSjgxQsWL6h0bAaZW1Zaqk/B2ZMBihirJcJ+K1P1/kivNbV+S513bi7p7SDeVbAKz1TfC8yuEamBZMBkjaMCE6Dp/rI4qbRz5acoe1vZApek8Ggixp+5xOTTl76PAqw7dvr9dSuGUdCR9VnxrNZ+4BJO6MI5xxRDvGkTM7ab9DJMcO34k+LIlcx45BLTo++ODVvBb6KHHpmbdXLKkjdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zOa0rxFKRDtMEBrKPUdJBDKm5Wq+MLNVzC/U3bGZsyw=;
 b=Vi87WbC6qxSdYul7MXgSytbHPoZxJ34xBKdg++CopE/rKzrfbwMfzokyHky4GVAiXYgWFaL5ufiUHqRb7ioMUQxxsEhdBHPIEMVBLhfxcXx9ryI0QaCfw3G93MLcyNvRP7vYr/hMdwUVNQ3C9ykfMXjCUmKX1vq4RfAGahCvqMwiCMb/fWxOTAPvCvybbxfc2HwCcTjSvs3W2zDP7cQjOcSV7b35EZ4N2Oy3bIXpr15ntC1HmSXrcZ5Ul13U7vgsw8TvQxKJOi3TjDKPpBbT6BK+ExbPUqadYoEsHZE9eCiL2gTyUcfAF4jvLF36a4k1wfBWcbf2MLRfp7T3x/YBEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Wed, 19 Oct
 2022 07:09:24 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::4cea:aa19:edca:db6c]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::4cea:aa19:edca:db6c%2]) with mapi id 15.20.5723.034; Wed, 19 Oct 2022
 07:09:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/10] drm/i915: Assert {pre, post}_csc_lut
 were assigned sensibly
Thread-Index: AQHY09N3iN3C1fiXPkStgaONZ30xyK4Va6MQ
Date: Wed, 19 Oct 2022 07:09:24 +0000
Message-ID: <DM4PR11MB636007DCDA237519694DB387F42B9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
 <20220929071521.26612-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20220929071521.26612-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB6952:EE_
x-ms-office365-filtering-correlation-id: 20c9d8a1-90c6-425d-2349-08dab1a0da52
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5r4zAAww55kfSB0jmRTWUxr9E4xb6pK0kuLhCL+E2Oh8rTpPaecdOh5cX+QnRGkpW/DetzQYnI1qZewyOvciqe43FlgonvFk2P9VhBSXT9QCCrx6dSM+ud8X6jD+UH2fcJoda/MUwtmoABHDZOQDLNzVWcPdCLCmCOSYfp2Ofyq5qS6fgINRiQjEaJiklFfKqbIPVgsWtO7IvGJNZ+FdkVL1uprqGYbQgWiIhf0SShIdsJ+fJwR/oElTWA5fsm50IKfd7kN+GSeeEuEKISO2GRgs5eFYH59yrbF87jmkL7aets96yotYifTjFtZj9pzlEqzKH3ptPgBM32G521mjQIr/2hIBGQ0AXlRcvf8qsSDR2zSZXG64YXW0CivMxrUYiXbPbC6I0xvMbOuonnrXLzaJ1JNRfX1gPlrr/CzdrszdL+sWdlULJmizOUw5B4fM7gAWprAXxUmWDRRfEOE9QdPfFzidk2/ENazDG8T8a7rrSHcpzUz6LNAiPf2pGhAX5+mlWxMZ8p8RFneN/XLBq1RalGHpiy49mwz/gShbvFa19qimrl56UDOdPopX2BuIT6B+Vl16Dq7VnxoSxZ4gQeTy4vAR+0ChozC2qUai7mjP3vD2RI0iQhjFe5pTAuJ+mXHJ9wkBm1tAI4FVnexwtrxASbfJ3ApRw7uXRKOWRPJYy5kIYhGGUHWtlU2HVOpw+8dcglxHFZHGZqv1dNKwF2rhvKDC837fZDylGT9FM/8AXzejxIdnlbIw0tagTt7DjCWMSS7QktTsFC7U+Udq2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199015)(33656002)(66476007)(478600001)(71200400001)(8936002)(6506007)(52536014)(316002)(64756008)(66946007)(110136005)(8676002)(122000001)(41300700001)(7696005)(55016003)(82960400001)(86362001)(38100700002)(76116006)(66446008)(186003)(83380400001)(26005)(9686003)(38070700005)(53546011)(2906002)(66556008)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TkJoK3FndVBTR01xbnQ0b3ZZM05TZTlLSnAveXM4RWc1aDdtcHByTlVXaHpy?=
 =?utf-8?B?akNGRStJUThuVTdNNU9XNG9hWEdpM3ZVQ0R4bVhzbjhWWlJqZTVJakNqQzlL?=
 =?utf-8?B?UU10dUNKbHNOdVJzOFRPYkFEMGtYMTFIbGY4a3JqaUpkOFJ4Y3doOGg2SzlT?=
 =?utf-8?B?VFNvbzZmdUtqRUpNWHJ0d2o2MlpCS295cUJvODhzZEJnYTB3M3N6aU1yWTlT?=
 =?utf-8?B?N0JsY3Y3VTZ5KzRYR0lNMnBKN1JtWDVoQTNVWXJ5TGhkbGs2SHdpLzE1bllW?=
 =?utf-8?B?ZmxtRU9pb09aNGc2MTM0M0JuYy8rU2cxVFB5WTdYa1BpVGFKV3JxVnY3cCtv?=
 =?utf-8?B?aE5vUytTNGhLcXRKbXB5RUN1cFZjWHVSMFBNVGVsTXJRdHpGVnViM3ZrV1Qv?=
 =?utf-8?B?S0pNTkxHUkVlRWVZZkFJMzZBbFFESUhNVk5jcXI0eTFnNE1EVjRkcWJVUHR1?=
 =?utf-8?B?c1BkUGFnbjJTcWtFZFVDUWVEM0dZRkxFWGI4T1U4aU1kY09TWDdDdG1SQWc2?=
 =?utf-8?B?QVBoY1BYQU1vamxKMHhiR0VmbExlb3h0MW1mMHpmK1o0YnlzUFNZeldscGdI?=
 =?utf-8?B?cVR2RnNPMHNWZGtiOUMzSnc3dmlidzVaa2Nxbllka3BrOHIyck5Td0VWNEpj?=
 =?utf-8?B?cG5la2VSSEQxT2dvZkVvS1ZVaXo2UURjN0JmakNJQUVvUUZCUHJ6M21Fa2VI?=
 =?utf-8?B?NHJOZXRwbGcxZGU0d3VDdWZLN1E2L3BqWUVZaFJFMFFNYVlROGlqZ0Jvc0NU?=
 =?utf-8?B?M1NmTmg2OXNQMmxxRUdzaXFkMFIxbEw2cDh5YjErWEVnTnFEVTQ0V0QyTW85?=
 =?utf-8?B?V0lHd2FBV3JGWG5lcDBaWFo3aWR3OHRJMzVtZ2hSWnQ5TU0xOW44eXpYWHRS?=
 =?utf-8?B?Q25qdEdxNUYzU29jK2U2V0ZMUWJEeU9xSW5SMHBBU3o3ZFF1RXM0QTBwaU1Z?=
 =?utf-8?B?MnlYVFlRSGhzZXFjYm5zNGV6V1dvblE5UDJVM0Y1bXRIY3pTN3dKNVViUVQ4?=
 =?utf-8?B?VzNXb2g1UVRZTzZjYW4rZFlram1iT1dXR0g5TW9rQVNqd0JTSlRTL3pTRzlj?=
 =?utf-8?B?NUxncWhPNkVMcTJUb0cxUE5mYzdiMHk1bWxtK3dhR2oyeHRicW0yaUhCYkpJ?=
 =?utf-8?B?STh4c3pwMi9xYm53NzEzUHpRYWNvU1kyRXNMYmZhV21vemx4cnNTVTVBRGRq?=
 =?utf-8?B?cVd2TzdCUHM4cExlbGVCMk1qcUN1c2c0ZHVYdkFnZ1FybGg4b0V4WHJ3a21B?=
 =?utf-8?B?Z1c1em9CeDAwS2JMZG0ycmV4Q2d5TERUMWRRdm9XbmZyQ0JmZTBNa0o1anNi?=
 =?utf-8?B?VG5ZZFhWVVVPWHpGZUF5MC9aMkhMVzVEaDFUZU1LZG5IY0hLVzlGQXN2YlhW?=
 =?utf-8?B?NC9SanV3TjRGVUV0SXFmbGdPVUxHcGwvVXZGYkF6OHkzcFM4UDBLOVlwcXN1?=
 =?utf-8?B?cFZrL21OV1VnQzZ6NlJBbHc3MFN4bEhpZEh3Um00SnlKaENLTU1zajgzc3Zq?=
 =?utf-8?B?ZHFyeFhidFdRem8wYU1pNHlvTkJvbHY1NHEySSttZGpHSlJNVVpjVXd3SytQ?=
 =?utf-8?B?Z2hGSEhwL2dYOHhOZnpLL0IzUkFHMmRnTjVTazY5NnRpUDllcHpYeGVUVURa?=
 =?utf-8?B?T3hFdk9nMHF1OGloSHZ1WXh0aXpFdzdMd1IvYUMyWmVPb2JEeVJyNEhJWUtC?=
 =?utf-8?B?V2R1YThjUVVJUWhWdmtFaHUvK2c0UEZiNTlXaVdxN0hUL01WL1htRjNuMVNt?=
 =?utf-8?B?WHNGdUF4NU9HRGtsSjRFL0c3MDV6OEYvczNMV0pvRmFCQVRocmN5NUh0OWNh?=
 =?utf-8?B?cHlQZjQweVA2YzM5b3RhLzcrMEpJeEd4c2ZHMXordXE4TmU1VW41WGJrYjNj?=
 =?utf-8?B?eWh3bkgrbG9DSGVLOHJ2MStnVy95L09RLzZMNUVjNE1iREpPSzNCRlVIaThC?=
 =?utf-8?B?U3BGU0xkRFlrZnRTUFlBNVkreUlsSko1Vmt0ejZZaG8xOUFJeUFDSTA1bUE1?=
 =?utf-8?B?elZvclJwR25RcHpEY2tQazBwNFhwZUZhc0pzV0NLbkdodDM3a3NxekV5WHdU?=
 =?utf-8?B?UzQ2QXJiNElxT0dLVUphWTQxVjFDak83OGxHem9WRmsyVzN0VnJSZkdnMjU3?=
 =?utf-8?Q?TMGylxlqQtI8odFFtF99r4NmN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c9d8a1-90c6-425d-2349-08dab1a0da52
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 07:09:24.1890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kuDXnABjptEmVfig3syj5JHkyFKphOE0Y2XiwwQeWiH/p2sbWD1dB+xIa+AAhMGuwOIS7iGd/8ZpYZJGuw7WBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6952
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915: Assert {pre,
 post}_csc_lut were assigned sensibly
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBTZXB0ZW1iZXIgMjksIDIwMjIgMTI6NDUgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdm
eF0gW1BBVENIIDA4LzEwXSBkcm0vaTkxNTogQXNzZXJ0IHtwcmUsIHBvc3R9X2NzY19sdXQgd2Vy
ZQ0KPiBhc3NpZ25lZCBzZW5zaWJseQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFNpbmNlIHdlIG5vdyBoYXZlIHRoZSBl
eHRyYSBzdGVwIGZyb20gaHcuKGRlKWdhbW1hX2x1dCBpbnRvIHtwcmUscG9zdH1fY3NjX2x1dA0K
PiBsZXQncyBtYWtlIHN1cmUgd2UgZGlkbid0IGZvcmdldCB0byBhc3NpZ24gdGhlbSBhcHByb3By
aWF0ZWx5LiBJZS4gYmFzaWNhbGx5IG1ha2luZw0KPiBzdXJlIGludGVsX2NvbG9yX2NoZWNrKCkg
d2FzIGNhbGxlZCB3aGVuIG5lY2Vzc2FyeSAoYW5kIHRoYXQgaXQgZGlkIGl0cyBqb2Igc3VpdGFi
bGUNCj4gd2VsbCkuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyAgIHwgMjAgKysrKysrKysrKysrKysr
KysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaCAgIHwg
IDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAg
MiArKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IDM4MGY0NDcy
MGZlNi4uNTc1ZDJhMjM2ODJhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jDQo+IEBAIC0xMzU1LDYgKzEzNTUsMjYgQEAgc3RhdGljIHUzMiBpOXh4
X2dhbW1hX21vZGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ICAJ
CXJldHVybiBHQU1NQV9NT0RFX01PREVfMTBCSVQ7IC8qIGk5NjUrIG9ubHkgKi8gIH0NCj4gDQo+
ICt2b2lkIGludGVsX2NvbG9yX2Fzc2VydF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7DQo+ICsNCj4gKwkvKiBtYWtl
IHN1cmUge3ByZSxwb3N0fV9jc2NfbHV0IHdlcmUgY29ycmVjdGx5IGFzc2lnbmVkICovDQo+ICsJ
aWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEwIHx8IEhBU19HTUNIKGk5MTUpKSB7DQo+ICsJCWRy
bV9XQVJOX09OKCZpOTE1LT5kcm0sDQo+ICsJCQkgICAgY3J0Y19zdGF0ZS0+cHJlX2NzY19sdXQg
IT0gY3J0Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQpOw0KPiArCQlkcm1fV0FSTl9PTigmaTkxNS0+
ZHJtLA0KPiArCQkJICAgIGNydGNfc3RhdGUtPnBvc3RfY3NjX2x1dCAhPSBjcnRjX3N0YXRlLT5o
dy5nYW1tYV9sdXQpOw0KPiArCX0gZWxzZSB7DQo+ICsJCWRybV9XQVJOX09OKCZpOTE1LT5kcm0s
DQo+ICsJCQkgICAgY3J0Y19zdGF0ZS0+cHJlX2NzY19sdXQgIT0gY3J0Y19zdGF0ZS0+aHcuZGVn
YW1tYV9sdXQNCj4gJiYNCj4gKwkJCSAgICBjcnRjX3N0YXRlLT5wcmVfY3NjX2x1dCAhPSBjcnRj
X3N0YXRlLT5ody5nYW1tYV9sdXQpOw0KPiArCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLA0KPiAr
CQkJICAgIGNydGNfc3RhdGUtPnBvc3RfY3NjX2x1dCAhPSBjcnRjX3N0YXRlLT5ody5kZWdhbW1h
X2x1dA0KPiAmJg0KPiArCQkJICAgIGNydGNfc3RhdGUtPnBvc3RfY3NjX2x1dCAhPSBjcnRjX3N0
YXRlLT5ody5nYW1tYV9sdXQpOw0KPiArCX0NCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgaW50
ZWxfYXNzaWduX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7DQo+
ICAJZHJtX3Byb3BlcnR5X3JlcGxhY2VfYmxvYigmY3J0Y19zdGF0ZS0+cHJlX2NzY19sdXQsDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmgN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmgNCj4gaW5kZXgg
Njc3MDI0NTFlMmZkLi5iNzZmMThlNmM0NTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbG9yLmgNCj4gQEAgLTI0LDUgKzI0LDYgQEAgaW50IGludGVsX2Nv
bG9yX2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXQgIGJvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFsKHN0cnVjdCBkcm1fcHJv
cGVydHlfYmxvYg0KPiAqYmxvYjEsDQo+ICAJCQkgICBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2Ig
KmJsb2IyLA0KPiAgCQkJICAgdTMyIGdhbW1hX21vZGUsIHUzMiBiaXRfcHJlY2lzaW9uKTsNCj4g
K3ZvaWQgaW50ZWxfY29sb3JfYXNzZXJ0X2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gKypjcnRjX3N0YXRlKTsNCj4gDQo+ICAjZW5kaWYgLyogX19JTlRFTF9DT0xPUl9IX18g
Ki8NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gaW5kZXggMjA1NjliNjgzOGQxLi40NDE4MTFhYzBhYjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC02OTA2LDYgKzY5MDYs
OCBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LA0KPiANCj4gIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0
Yywgb2xkX2NydGNfc3RhdGUsDQo+ICAJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiAr
CQlpbnRlbF9jb2xvcl9hc3NlcnRfbHV0cyhuZXdfY3J0Y19zdGF0ZSk7DQo+ICsNCj4gIAkJcmV0
ID0gaW50ZWxfYXN5bmNfZmxpcF9jaGVja19odyhzdGF0ZSwgY3J0Yyk7DQo+ICAJCWlmIChyZXQp
DQo+ICAJCQlnb3RvIGZhaWw7DQo+IC0tDQo+IDIuMzUuMQ0KDQo=
