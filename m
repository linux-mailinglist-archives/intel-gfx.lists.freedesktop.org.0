Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA9579AB3D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 22:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FBF10E1C8;
	Mon, 11 Sep 2023 20:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEEBA10E1C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694464342; x=1726000342;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KgAhTCW67DG+UzOo/EocC5zkbOEgCi2nrDwmF0CA5xQ=;
 b=AlqKqeIrmnJMunlSuTtYxAWg05j8RafK6t948U9F8oohvxZgIiocC9Hv
 SXH9Qx3UqDBT/geYujbKVVIUW5GaqxmKZ9+zQZ0wpnhZHHHBOhx8CQS9k
 B70KwvoaRLGCl2ToxxrQqADpM5hU8UcaV04KrSrZixJsYw792sqMAFzkq
 edUOSjGPgZACmNYdcCptjVL6qdqhChXzjmxsmqjdRIR/Mpbcf75QibJLb
 vTwUWDgX+lRIXnZvg1YXJ9Tz2fasdjuCDmY2Cq6opLdDklVz3urimEF0/
 moAlr4eC2O5KQoJpQ/1J5nTEstVS00MBsYZU9kKqNfbbc5XFZjLG/h6od Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="464561392"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="464561392"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 13:32:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="990244538"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="990244538"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 13:32:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:32:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:32:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 13:32:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 13:32:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7PfFzx4wNsjobsLEmTkJHrSdKWEid95PPkWfxjVmiAC5kMt9apUUAPNjCYPSWj+rw80SGVL0pbvn2QsdxJvWpSg0ZGLr6ppxN1xMOcYf+q6D+KjvsR00I+hQO498Obeeu+77bK4ASoxwseBB9vPMScDITlur8tSeGUsEyQKg5lDFSEwEztu2IPPmaaSnuO1M6bjDoGkJ/3Q8oX+OCMUE5/r/74hh8gV/SozhNBPj3LF+tACmBXQa2/MjEZoKrpdZJhpqanshczroujozJPo/T7LRgrymkD9xj7RS+HeucW7hDcCUNwhS7kvhmcLFqZkkePbW0bcFJSqAJ8TFTu5vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KgAhTCW67DG+UzOo/EocC5zkbOEgCi2nrDwmF0CA5xQ=;
 b=CV0YAaVwEvjZ9bX3jXIa4Io2ub6zA/rouz1yjh3d/XcwuG9OZJNpKs4iaCY+McPPLhrRkq+tmeWVCJG7RhR/GlStH3r80uqkNdHBb7kmxAbkaOozSZoyx6XQsCHVaOlJ47DDlxPjifl9GKjPZgLPni6DwJm9MVAR7kfOgSoHYNhuoL90QT/ebkHruTZLtdW8XVBb+xWGtS9OzCoUHJJnmidtVUhYKLR845aGcTaiKJbs7hZ24nG59DvkcRZoR8wjfCuUMBls/cUYPDz7BwmuDNbdIJx4nYPmnm4ZwHKr6A7KgTgIXjfcM/as/crhDtMm+fYO7gfPAF8yDilp7zMyMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.35; Mon, 11 Sep 2023 20:32:10 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 20:32:10 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 04/19] drm/i915/dsb: Define more DSB bits
Thread-Index: AQHZmKtHU93DUqEwdE+fdf+QicFnE7AWrJgA
Date: Mon, 11 Sep 2023 20:32:10 +0000
Message-ID: <DM4PR11MB6360D8133EA251DA290A3ED0F4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW3PR11MB4746:EE_
x-ms-office365-filtering-correlation-id: 90037725-e3de-495f-38f0-08dbb3062c7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yf25Oe6QqacK7wgY05/I/aFIQLQM/zkSmIaoA0hDpZ6uMs+6omqV/Tl7BRkjDN5P4/XLq0uFmaeH5fRPZu+TXVm4F3zLYfPFFfA9nsNQQAXd8zXgNjyHh4tPDkqbAKU3aC8A7fTFCF7897eEs4cL49Tt394Du4zVD796T5TNOlj7H/8M1BGOws3PnUDqFunD8FzUnvv69OpYL6Uw/nceLcZyn9WxAFKp/0HIHP3M+LexhW+SvLKe1AtbJpRQ5//SVX11eOID2OJdLIeqeNh5Zyr7qALfP5rVpYvg+4azpqHOIYYkrubUdQIHuWIj2XbqVzkn0LBmPDRL1Wh5ap80/hbkv123foCfo1WLlE8bVDfxh4wZJF0avJf0MDRxRrIf3OD+Sl8pnuAY4kxiEAbDutcJKNnk61UtYI+lmGgxxFU86TQBn+p3JtmCMxTjH/p15sGenET23Nj6i/vVIrwBQAZEmXzQwbSbg1lQgOPXp9gjTlXZOHDV9tDx+y2tireMDkmTJIKLNjvvjQ4Lq2B5JvYAmZH4gl6mtY14YWIQ2wTkLYR605zX6cFSINE3jMsygYgioG8jBEDghSe/ZQHUuXuDGfWBVPfPamVuSfkn5M5usckWq9QzIehAsgz8FjeC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(39860400002)(396003)(186009)(451199024)(1800799009)(6506007)(7696005)(53546011)(9686003)(71200400001)(83380400001)(122000001)(33656002)(38100700002)(86362001)(38070700005)(82960400001)(55016003)(26005)(52536014)(316002)(41300700001)(8936002)(66556008)(8676002)(76116006)(64756008)(66446008)(66476007)(66946007)(110136005)(478600001)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjJWSXdyUTdEWXRWcTREeEtydFdSTkJ4YTZPaDVvRkRiUlJNSVZETDluY2FZ?=
 =?utf-8?B?V0U5dDNtV2EwOE1Cc0g1elVMdWMxUUhiODU0Slk0eWs1ckNNVVkxZ0hpeW9I?=
 =?utf-8?B?OTd0d1h2dzBrSjF3RUYzeVVCRXJqcXJGRzkyWUhBSXhlNFNNK202VTlDS1JN?=
 =?utf-8?B?dXZSbEx1dlhNbnhXdzlwNmd2RExwL1BPbTJRaE92S1VOVzlZWVUxdUhiUjdT?=
 =?utf-8?B?ejkrQ09SM09nSlo3c2ZIQ1l5M3VoRWNoVFdIU1Z1ZmoyUGZCUlh2Qjg0V3Nx?=
 =?utf-8?B?OVhEWGRiWXI0NWpaSFRCUFhzZEVXSjZMelR1dkNUWGtVT3hubUhuK0RFNXJS?=
 =?utf-8?B?UVhpMWNsOGtUeXhUSkJVRFQzMFFrcFRVTVVHaWxvK3dzMmlwa3ZEYzVUd05U?=
 =?utf-8?B?cGlqc3NoVis3RWVobEt1aDArUVMzREQvNGkzemhRNy9peFhYZWVYK3N4M0FB?=
 =?utf-8?B?TkRhdlB5ckJVRGhSSzNPV2NJdWVhaWJ3TGJIU2ZKSm5KVURhMXU1TWFRa0c5?=
 =?utf-8?B?OGkzTEtIZkp0Y05oMktWM2Q1aEFiUFRIMkdEK1JaakJRNXd0bGN1T3E1dFl6?=
 =?utf-8?B?dndhNXFPeTlrZDdhaHNXa016dEYzeGNSYzVsM0dHN0ZTVk9LQmlDNm9obEFm?=
 =?utf-8?B?MUNldGkwSlBMUWJpQ09WQ01LQzJoN1VXd1V6UFBMa2F4VjlFSEtyQUNGQjQx?=
 =?utf-8?B?VHNYWU9ydGxqRlcwRkRvdmdlcFdKdndUT28rMjd5NEFCQmxMS3lHNHRKS1E2?=
 =?utf-8?B?OHQ1Z1FwbGVRUGE1ZVFGY1dtd1BzbkFEaGJGTGNDVDJhUkZ0bFhiakp4QVdR?=
 =?utf-8?B?N3p0aXVyTjl1b2pZM2JBNzN6TFFaeTc1dnA5Z25haHFQVm5sb3h2dEtySC9H?=
 =?utf-8?B?WDJUL0tSQU9CSEQzd0o0blRJTEhjK0p2RFpoNWhuZkZTQTV3QWl4R25nRytj?=
 =?utf-8?B?cDUvRlNRVGliOU5qSGlsem16QTZQK0VsL2hTUXpNcWw1cGdCMjJuamRrY1ho?=
 =?utf-8?B?ZGRvNmJ4bEZHM1RhVHNUU1hqSloxSndBQkVYbitzK3lrWENBK3BpOFBmelNn?=
 =?utf-8?B?cW5OeUdTU2R6aTUydC9KSnN2OTJrTmgwOVQ5VGxWb0NZZGRjdGpVd1lrN2xz?=
 =?utf-8?B?a3JMV0F1aGtBenNtckFGTTdiQ082am9JOWRzZVJ4M3ljSzBRRDF4YnA0dnY0?=
 =?utf-8?B?YmFHSzkyRXZSaksyNHZZUFFBZlI2Z3B5SzNyVTRGdE5jcDl3S0ZJL3l1dkla?=
 =?utf-8?B?ZVdXNEM4SmlhRVlMNStYTHVQWkQ0UDNXVjJSejB4aDlKejhNNVZEazRQK0Nl?=
 =?utf-8?B?SFZmbFJ5MnNENUdiVDdPekErRlc0aDBuOGxWc0dWbTVSVjhncm9JVmEwTUlL?=
 =?utf-8?B?OFFwR0ZkRWxFbXRWVWxzSG1QbWFoL01MYW5meUZsL21udG1VdjlRMFNFeUZu?=
 =?utf-8?B?RUVyL2syd0pJU0EvLzZ3dG5UeHVob2orVXdNdlZLcC9EaW5TQVZEUnc5c0g3?=
 =?utf-8?B?V1RTakgzT0toZUVGcnIxb2xKS3hkR29Ea3RUcTEvbzJLVUhjMEE2Q0FaVEVQ?=
 =?utf-8?B?Z0VLSzZ0bHZrcFBpVnJEVFRucXJwa2hkbC9vTTRiV25DUW5DbTBPVEo1MHlo?=
 =?utf-8?B?SFU1Q09YUTNLV3dpVU1SdGFwTnc4WjVPMzhBbTZwSHhscXRUdHIwZjd6cndw?=
 =?utf-8?B?Z3p6TDVOeDVNdkVKUXhqNGU1cmw0UFRYVnFXcFZ6S3FTUzhuaXF3ZUZneENn?=
 =?utf-8?B?a0FNWXVFN0pKRzZBZHBYWG1YWWJYZlptRExiMmxIUU9Odng5SitNb1ExMVgv?=
 =?utf-8?B?OEdWQkc5cWJrYTI0SjcxQmlWMHNzYTdoamJDVmVpVjIxZzlpaDdpRS81T0Vs?=
 =?utf-8?B?K1llZGlBZyt1ZURHd3k1QlhtWVhZSEJ5N0ZZU29YK09CL3BJVjlJaHY2VzJM?=
 =?utf-8?B?Y0VMbER5aUVPNkRwd25XTi9sbk52bkxNWDAyL2Z0QVBiSHYramU0SUtReXpj?=
 =?utf-8?B?NnNTUFBPaXFaaUtDRDFtSE14T2pmZVdaZHVLWjZSVGxuV3FTZmlQcDUycmNi?=
 =?utf-8?B?emNHeXdsTy85Y1FYaTE5NllGUzdwdklRVlo3ZlJSUkg4dWphcWJ3SmZsK0tI?=
 =?utf-8?Q?+7mu61azqHfR6lB+NYohsaJdK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90037725-e3de-495f-38f0-08dbb3062c7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 20:32:10.0274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LWIlqODNUe+HrExHSeuH7npKvzlCH9xNz0/CkDAn0ebYDS+rF03ej/hqJQmWejmXjGHio+p5D9hi2xLQCpBcCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 04/19] drm/i915/dsb: Define more DSB bits
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAwNC8xOV0gZHJtL2k5MTUvZHNiOiBEZWZpbmUgbW9yZSBEU0IgYml0cw0KPiAN
Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gDQo+IERlZmluZSBhbGwgdGhlIERTQiByZWdpc3RlciBiaXRzIHNvIEkgZG9uJ3QgaGF2ZSB0
byBsb29rIHRocm91Z2ggYnNwZWMgdG8gZmluZCB0aGVtLg0KDQpMb29rcyBHb29kIHRvIG1lLg0K
UmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYl9yZWdz
LmggfCAzMSArKysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0
aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiX3JlZ3MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiX3JlZ3MuaA0KPiBpbmRleCAxMjUzNWQ0Nzg3NzUuLjIxMGUyNjY1NDQxZCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2JfcmVncy5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiX3JlZ3MuaA0KPiBAQCAt
MzcsNiArMzcsMTkgQEANCj4gICNkZWZpbmUgRFNCX0RFQlVHKHBpcGUsIGlkKQkJX01NSU8oRFNC
U0xfSU5TVEFOQ0UocGlwZSwgaWQpICsNCj4gMHgxNCkNCj4gICNkZWZpbmUgRFNCX1BPTExNQVNL
KHBpcGUsIGlkKQkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwNCj4gaWQpICsgMHgxYykNCj4g
ICNkZWZpbmUgRFNCX1NUQVRVUyhwaXBlLCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUs
IGlkKSArDQo+IDB4MjQpDQo+ICsjZGVmaW5lICAgRFNCX0hQX0lETEVfU1RBVFVTCQlSRUdfQklU
KDMxKQ0KPiArI2RlZmluZSAgIERTQl9ERVdBS0VfU1RBVFVTCQlSRUdfQklUKDMwKQ0KPiArI2Rl
ZmluZSAgIERTQl9SRVFBUkJfU01fU1RBVEVfTUFTSwlSRUdfR0VOTUFTSygyOSwgMjcpDQo+ICsj
ZGVmaW5lICAgRFNCX1NBRkVfV0lORE9XX0xJVkUJCVJFR19CSVQoMjYpDQo+ICsjZGVmaW5lICAg
RFNCX1ZUREZBVUxUX0FSQl9TTV9TVEFURV9NQVNLCVJFR19HRU5NQVNLKDI1LCAyMykNCj4gKyNk
ZWZpbmUgICBEU0JfVExCVFJBTlNfU01fU1RBVEVfTUFTSwlSRUdfR0VOTUFTSygyMSwgMjApDQo+
ICsjZGVmaW5lICAgRFNCX1NBRkVfV0lORE9XCQlSRUdfQklUKDE5KQ0KPiArI2RlZmluZSAgIERT
Ql9QT0lOVEVSU19TTV9TVEFURV9NQVNLCVJFR19HRU5NQVNLKDE4LCAxNykNCj4gKyNkZWZpbmUg
ICBEU0JfQlVTWV9PTl9ERUxBWUVEX1ZCTEFOSwlSRUdfQklUKDE2KQ0KPiArI2RlZmluZSAgIERT
Ql9NTUlPX0FSQl9TTV9TVEFURV9NQVNLCVJFR19HRU5NQVNLKDE1LCAxMykNCj4gKyNkZWZpbmUg
ICBEU0JfTU1JT19JTlNUX1NNX1NUQVRFX01BU0sJUkVHX0dFTk1BU0soMTEsIDcpDQo+ICsjZGVm
aW5lICAgRFNCX1JFU0VUX1NNX1NUQVRFX01BU0sJUkVHX0dFTk1BU0soNSwgNCkNCj4gKyNkZWZp
bmUgICBEU0JfUlVOX1NNX1NUQVRFX01BU0sJCVJFR19HRU5NQVNLKDIsIDApDQo+ICAjZGVmaW5l
IERTQl9JTlRFUlJVUFQocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLA0KPiBp
ZCkgKyAweDI4KQ0KPiAgI2RlZmluZSAgIERTQl9BVFNfRkFVTFRfSU5UX0VOCQlSRUdfQklUKDIw
KQ0KPiAgI2RlZmluZSAgIERTQl9HVFRfRkFVTFRfSU5UX0VOCQlSRUdfQklUKDE5KQ0KPiBAQCAt
NTgsMTAgKzcxLDI4IEBADQo+ICAjZGVmaW5lICAgRFNCX1JNX1JFQURZX1RJTUVPVVRfVkFMVUUo
eCkNCj4gCVJFR19GSUVMRF9QUkVQKERTQl9STV9SRUFEWV9USU1FT1VUX1ZBTFVFLCAoeCkpIC8q
IHVzZWMgKi8NCj4gICNkZWZpbmUgRFNCX1JNVElNRU9VVFJFR19DQVBUVVJFKHBpcGUsIGlkKQ0K
PiAJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHgzNCkNCj4gICNkZWZpbmUgRFNC
X1BNQ1RSTChwaXBlLCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArDQo+IDB4
MzgpDQo+ICsjZGVmaW5lICAgRFNCX0VOQUJMRV9ERVdBS0UJCVJFR19CSVQoMzEpDQo+ICsjZGVm
aW5lICAgRFNCX1NDQU5MSU5FX0ZPUl9ERVdBS0VfTUFTSwlSRUdfR0VOTUFTSygzMCwgMCkNCj4g
KyNkZWZpbmUgICBEU0JfU0NBTkxJTkVfRk9SX0RFV0FLRSh4KQ0KPiAJUkVHX0ZJRUxEX1BSRVAo
RFNCX1NDQU5MSU5FX0ZPUl9ERVdBS0VfTUFTSywgKHgpKQ0KPiAgI2RlZmluZSBEU0JfUE1DVFJM
XzIocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLA0KPiBpZCkgKyAweDNjKQ0K
PiArI2RlZmluZSAgIERTQl9NTUlPR0VOX0RFV0FLRV9ESVMJUkVHX0JJVCgzMSkNCj4gKyNkZWZp
bmUgICBEU0JfRk9SQ0VfREVXQUtFCQlSRUdfQklUKDIzKQ0KPiArI2RlZmluZSAgIERTQl9CTE9D
S19ERVdBS0VfRVhURU5TSU9OCVJFR19CSVQoMTUpDQo+ICsjZGVmaW5lICAgRFNCX09WRVJSSURF
X0RDNV9EQzZfT0sJUkVHX0JJVCg3KQ0KPiAgI2RlZmluZSBEU0JfUEZfTE5fTE9XRVIocGlwZSwg
aWQpCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArDQo+IDB4NDApDQo+ICAjZGVmaW5l
IERTQl9QRl9MTl9VUFBFUihwaXBlLCBpZCkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQp
ICsNCj4gMHg0NCkNCj4gICNkZWZpbmUgRFNCX0JVRlJQVF9DTlQocGlwZSwgaWQpCV9NTUlPKERT
QlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArDQo+IDB4NDgpDQo+ICAjZGVmaW5lIERTQl9DSElDS0VO
KHBpcGUsIGlkKQkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsNCj4gMHhmMCkNCj4g
KyNkZWZpbmUgICBEU0JfRk9SQ0VfRE1BX1NZTkNfUkVTRVQJUkVHX0JJVCgzMSkNCj4gKyNkZWZp
bmUgICBEU0JfRk9SQ0VfVlREX0VOR0lFX1JFU0VUCVJFR19CSVQoMzApDQo+ICsjZGVmaW5lICAg
RFNCX0RJU0FCTEVfSVBDX0RFTU9URQlSRUdfQklUKDI5KQ0KPiArI2RlZmluZSAgIERTQl9TS0lQ
X1dBSVRTX0VOCQlSRUdfQklUKDIzKQ0KPiArI2RlZmluZSAgIERTQl9FWFRFTkRfSFBfSURMRQkJ
UkVHX0JJVCgxNikNCj4gKyNkZWZpbmUgICBEU0JfQ1RSTF9XQUlUX1NBRkVfV0lORE9XCVJFR19C
SVQoMTUpDQo+ICsjZGVmaW5lICAgRFNCX0NUUkxfTk9fV0FJVF9WQkxBTksJUkVHX0JJVCgxNCkN
Cj4gKyNkZWZpbmUgICBEU0JfSU5TVF9XQUlUX1NBRkVfV0lORE9XCVJFR19CSVQoNykNCj4gKyNk
ZWZpbmUgICBEU0JfSU5TVF9OT19XQUlUX1ZCTEFOSwlSRUdfQklUKDYpDQo+ICsjZGVmaW5lICAg
RFNCX01NSU9HRU5fREVXQUtFX0RJU19DSElDS0VOCVJFR19CSVQoMikNCj4gKyNkZWZpbmUgICBE
U0JfRElTQUJMRV9NTUlPX0NPVU5UX0ZPUl9JTkRFWEVECVJFR19CSVQoMCkNCj4gDQo+ICAjZW5k
aWYgLyogX19JTlRFTF9EU0JfUkVHU19IX18gKi8NCj4gLS0NCj4gMi4zOS4zDQoNCg==
