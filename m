Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF526DFC6C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 19:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5908E10E8CB;
	Wed, 12 Apr 2023 17:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6570A10E8C3;
 Wed, 12 Apr 2023 17:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681319652; x=1712855652;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=NOrAdkGw0rH/ZfGTq2H/phXzQ3JhkTy0Y01Mgst1jXo=;
 b=MjxMhUHVHdI8alsnSp5ACnGFWUVOYevNpM2i2csuvOOp6jjOt4LvKaPN
 UHYAc92+mcnwrHImJAkqw1lb5pE+fuunpR4qAqIkY18mVXi4z4B3EAuM0
 3R6Rb5993sliKRocyVPYkiGa5SDPGtQ5xIIJQCANeMChM+qNb6gAnFGoj
 a3QSyAb7fDZIGM653UNPjo57/sHN9F623x1ceVOiNZ3s1eZI5PmEkMccV
 0Db/c49ALcvuYDppKDfKO0d50Nf6tg7YyZblFWufOmm+Gq9lchsNzGwUT
 LFXKEqeEM+O1f0sFm1DzlB/MPooVOZt9fASh/ps7lUDhOJ90Kkj3sk5Fn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="324327165"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="324327165"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 10:13:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="778368005"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="778368005"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Apr 2023 10:13:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 10:13:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 10:13:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 10:13:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 10:13:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bA1xzZdEwJ3FUDFXlZSUTTiIz34z53jl9x9/kpxXlzEwYa5GR5ero0dF0pRCuL1WAowMc0bgYdOaQnDVXeAk0f+Nl0l/YJHkqBG/0bsGzsNvA/hGSsiHGay852skj9wBQMw1ll192/dCubBkpAltUjsxtteu8wXRbtbPDl7fuL93CwDB9ikniAPR/B7NZMQQVYN4JtdjD5EQ1St0in1H20pfwglN27A+C9ac02SXnwQAA6dXRa1Gft2GQQoEuiymJ+viMllRaHT/GoqbkdcLNs97Gg60zXZgFQudME4GWOfb3nzlGEWbOuT8JuMyMEOAeLC64i+gqdG4+BN49MoSqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NOrAdkGw0rH/ZfGTq2H/phXzQ3JhkTy0Y01Mgst1jXo=;
 b=G7rUSEVKjPjXyXhnovQMe6ZsQoxQIe5Z65JC13U4rqExPWWrBgCJOplY7nrAqbDLWBdmd7P45B16QZGf1NKW6kx+f9y3vlpQdePKsXWlkpwF43IQVj+Mz+lm1eumXL47Zm+vDDeuCTua+CWN3lGNBoTInHAuw9rp42L1WVjoc7LMKY/n/XoohYOtgPz6vkCedE+/8WSymsZlxiD7V2NEkaxmt5Y8mgqgh2vJ5Gp61GFcgbR6p6qcHIFgBGA+mU9z0OoZVtMUqfpSjEZbBaAi4YdjcwGQ5YAgh/mb9iDL7O9zqxREjtI44dWRn0fMQVxUWBinAyKBAtvSy5+MDBTNGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by SJ0PR11MB7703.namprd11.prod.outlook.com (2603:10b6:a03:4e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Wed, 12 Apr
 2023 17:13:10 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651%3]) with mapi id 15.20.6277.038; Wed, 12 Apr 2023
 17:13:10 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
Thread-Index: AQHZbIUjFpsvj8372UW9mz+ncz0DFq8mhygAgAACMYCAABRzAIABTUEA
Date: Wed, 12 Apr 2023 17:13:10 +0000
Message-ID: <95fb452a03404f8c3ec5983e6cd88a49e342c695.camel@intel.com>
References: <20230410183219.191543-1-jose.souza@intel.com>
 <ZDUc1Ya/ybwjo4DC@intel.com> <878reyer8q.fsf@intel.com>
 <ZDUkZKotRVT0bxga@intel.com> <875ya2eq6b.fsf@intel.com>
 <ZDVz2Ppm1DgVbZ0p@intel.com>
 <20230411195918.hdxyir5w7dp2qx55@ldmartin-desk2.lan>
 <0acba7b8416f79d8a392f15b0780768611967f20.camel@intel.com>
 <20230411212020.qwceyu5m6tpy42c4@ldmartin-desk2.lan>
In-Reply-To: <20230411212020.qwceyu5m6tpy42c4@ldmartin-desk2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|SJ0PR11MB7703:EE_
x-ms-office365-filtering-correlation-id: a983fc7c-a7d1-447a-81f6-08db3b79310f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qdB0HTSqxMxsv1K/+6o/eNat8VCqNMFjrSuhZ2EYTiD6HeogEv93UnLJqDna3fYdgrNw/BM2gvuxOn3Dmnf8RXER8R7ex5RcL6EOfVY+dlmS1jdB6QbmL+MPDvKkvO9FMKWXnltcSJsbA08gB/EcrbyK36MwASo36w7PUk6h3AhZgN4tmO8PdNSsKfDOrlgVa5L24FV7K/+5zqdDh0wuep+amgzAyFvWU63m4Yq806duHX+uV7TIqTOmXWrJ9PkCCQPpsZEgDKXYiw8rPLBKjnIndGE7w5owq5RGLfbxbGwIsXjZ1cp7YWMpjSq+0apQCIcNR01lGRvLRRfyeChzIzh4k2jPAEWyt/+uUM/7ArMSawzMpRehqSeRbDsE/1J4OxLYeAO+jx/ZsM+XcpZiSHSU3OTbK6vIhyHIOM+sXHzE1fR3pK3Oj0wfMfzMTIeeTHwW7JhOSMR+610G29KAqG293xcVkTy1tQKovam2YEgdsReOhGnN9PdyQR27IXsJNWqdJ2B1ZhbFFs1POeZ8CULKMvbPp7gSkwBn1tSFInBtxPxjSqRZv8LCzgIcPe+G
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(39860400002)(366004)(346002)(376002)(451199021)(86362001)(36756003)(38070700005)(2906002)(82960400001)(6486002)(71200400001)(186003)(66574015)(83380400001)(966005)(2616005)(6506007)(6512007)(26005)(91956017)(66556008)(4326008)(66446008)(66476007)(316002)(478600001)(76116006)(66946007)(450100002)(64756008)(41300700001)(8676002)(8936002)(122000001)(38100700002)(37006003)(54906003)(5660300002)(6862004)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TW1xdVJ2Rk9semhxVXVEY2FhSE9HQ3BoVVZTT1ZXMGQzWk9CSk9FenBrTnZC?=
 =?utf-8?B?SWZUK0NFN0xtUHE5bkIrTGtadWcwNXh6YmxpZHNnUXp1dnBiZEFsRTdwNlJP?=
 =?utf-8?B?TkhUTjl3S29xdjVWbUwrL2ljVkdoSFA2NWhvcEVtN2RPQ3RrdFQ2NWhteVUr?=
 =?utf-8?B?V2V3aWZDMXZ6cDVZdHB2azRocjMyUGh6NHpBRmpYb0xYRStjU05uV3dBVVBD?=
 =?utf-8?B?eHFNUGIveXoxSXd4Z21NWTU0czJRczFDWGFBS2UzRmI2Q3ViNVEvRis4eXUr?=
 =?utf-8?B?cTVGRnBYOGZlSHpibVFlTm01UFpwczc5QUJWSFBkSjlBOEtRUVRjZWVabFBa?=
 =?utf-8?B?Wk5FM1Ewb1BMZDM4cTNOZElaTE9sU0k0TWUrdUVBbEJBTHhKYzB6L2p4REJH?=
 =?utf-8?B?UzYwN1hraDdzSGV1UXdpU3I1enpuZ3RTc01BZHExQkNUbk5JRkVIczlOQ3Zt?=
 =?utf-8?B?TzdtZjFSd3BheWtZSFc0U3RpcThzN2xYTDZjYllvYmRoNXlnSzV4eFRmTElV?=
 =?utf-8?B?a1E5VCtiM2VjNWVvNjdRMDBycW1FMkwzd3ZMYnhaRFN3WWtGRGpTT1YzTnB2?=
 =?utf-8?B?UUVWUEJJNWFQdnNMWjE4VmVwZG9yekxyVFZHZkhHK3Z1eDhDQXVqbXFZZU50?=
 =?utf-8?B?aElZYmd5cXc3Y2ZNZ2J3ZGJNc0psc1lpUFlHdGdnUzIvQTdkTUFxZDBzdGVj?=
 =?utf-8?B?QUFkSzJDY3dIQWFTOWQ3QjBxN2RFL0hWTVJLdnAwS3hFMkF1SmlRaTViRE9I?=
 =?utf-8?B?VTZsR0NaYjlSS2lrNkVkd0IwNkpVNWZNVFFnejExT2o4SWZKTU5YcHAzQjhy?=
 =?utf-8?B?aWNyS2JFdGRHNmNUTSsyS2g3TnBDR1hCcHBLbnczUDBQZld2RHJ5d2h5bXQx?=
 =?utf-8?B?VHBwNWdDdWZBQkdkMTkyT0RsVFVRNzRmTmE5MENXUFJvZFJ1V0k3cllQWFU0?=
 =?utf-8?B?OStkNEl2WDNVN3FLZ1hsQVovcTVVdmRveHR0SnQyUFNuZjZ0ZE9HQjAvTFFV?=
 =?utf-8?B?ZXJvNkU2aitQT1VzTldXN0JlNXk1VVRzSFRXM294MDVFenJwb2JmbzE1am1M?=
 =?utf-8?B?RW1uMXZlV0NvSmZMS21GTUtTOFN3TGtKc09VNTk5bXV5ZkNXMExlVUtUd3Iv?=
 =?utf-8?B?ZlErNi9SMWlMeVBGMXpLemYyOVNiblY2c1V1MDBMUTk0alZrdzF4QU1NV3pW?=
 =?utf-8?B?SFpwV2l6bXRxV1F3YTd5KzdjWHNJdFdPNUpCV0JiZVZCSWdUUlB3czFKdTda?=
 =?utf-8?B?dEVXZktWZzRSQWlkV0dDdXliVEJKU3lPaW54Wm1RL3dteWc0YjR1cS9lajVz?=
 =?utf-8?B?cFVzVVVWSk1kRDFOYVM5S29DTHBZQWZwTzdKYWNMbytPTWFiOGRyYlJER0RG?=
 =?utf-8?B?amRzTm9WV0ZMTlZtZ2R6VGFEdlJJRkxrT0pFMkVML3gzd21nSzZYeFZ0eFhu?=
 =?utf-8?B?bldvSDBQbVNnVDRZbVR3Y3U1WFBuZFlJRHlqR3l4ZTMwK3drV01IWktGV3Rs?=
 =?utf-8?B?OGlJbGtHYXhTaGRYam4yYWNNQ3htV0krRVE4bFlFSTVCK1BQMURDQzVJSExk?=
 =?utf-8?B?dDBzNDdoQXM1ak5iM011Z1FxcTlwaWV3WjFkak0rTTRuT3ZWUzV5WUtxSUl6?=
 =?utf-8?B?Vm9qV0owV0IxZnU5R2w3VkIweDVEWVRuOHF0ZXltRys1bHNHeFhPUm1pUUl4?=
 =?utf-8?B?NlJ3ZE5NZU9GeDhxVFBtRnkyOVUxaktEeG8wTzlRU3FYTGNCc0tHL2VFYkh1?=
 =?utf-8?B?OEgxa0dPOFhFazZickQzV2ZvM1BZT3laRVZLeWE4TWRwVm4vV1Y1QnZLeU9q?=
 =?utf-8?B?bWh4cldBTlZUR0ZjeS9LYnoxVW1QMW1HQnNNQ0plOUpQQzk1eGF6Ly9UejhU?=
 =?utf-8?B?M3JaK00zOVNFdUhGTFNTNnlrTVZDbHNjZFVrY01KKzZiN0s2OUxtc2FFU2ts?=
 =?utf-8?B?Tk9hbTIxVUI4WXR1a3RIbVBkY0RBMVRNL01pdWdqYmhSNmMzRzBzNlNmNFJB?=
 =?utf-8?B?UjMvZkNXY3VYYkd4UE9lcjc2MWo2UFVyNnJMUkF4Y0JFYlFqMjk1ajA0NkdH?=
 =?utf-8?B?aE93dm9iQUhzbDlRLzlWRGxRcHlMTW1uNnJBWGJ1STh5VHlTVU44Z0Y5SFZt?=
 =?utf-8?Q?x/XHe7WAo9sRHvtRhVaNG0zqx?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <76FF714216868845A1D9E73B0339B082@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a983fc7c-a7d1-447a-81f6-08db3b79310f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 17:13:10.2648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bnrR39gIiwTedia9K7rF7YE8/EKsFww8SXWc4ChNO1VP/03d0gMAGwvO9T2kWMv1WIHOzKKn+8wpmVpyeH697Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7703
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA0LTExIGF0IDE0OjIwIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFR1ZSwgQXByIDExLCAyMDIzIGF0IDA4OjA3OjEyUE0gKzAwMDAsIEpvc2UgU291emEg
d3JvdGU6DQo+ID4gT24gVHVlLCAyMDIzLTA0LTExIGF0IDEyOjU5IC0wNzAwLCBMdWNhcyBEZSBN
YXJjaGkgd3JvdGU6DQo+ID4gPiBPbiBUdWUsIEFwciAxMSwgMjAyMyBhdCAxMDo1MTowNEFNIC0w
NDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+ID4gPiA+IE9uIFR1ZSwgQXByIDExLCAyMDIzIGF0
IDEyOjE0OjM2UE0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+ID4gPiA+IE9uIFR1ZSwg
MTEgQXByIDIwMjMsIFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+IHdyb3RlOg0KPiA+ID4gPiA+ID4gT24gVHVlLCBBcHIgMTEsIDIwMjMgYXQgMTE6NTE6MzNB
TSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgMTEgQXBy
IDIwMjMsIFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdy
b3RlOg0KPiA+ID4gPiA+ID4gPiA+IE9uIE1vbiwgQXByIDEwLCAyMDIzIGF0IDExOjMyOjE0QU0g
LTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gPiBT
dGFydCB0byBtb3ZlIHRoZSBpbml0aWFsaXphdGlvbiBvZiBzb21lIGxvY2sgZnJvbQ0KPiA+ID4g
PiA+ID4gPiA+ID4gaTkxNV9kcml2ZXJfZWFybHlfcHJvYmUoKS4NCj4gPiA+ID4gPiA+ID4gPiA+
IE5vIGRrbCBmdW5jdGlvbiBpcyBjYWxsZWQgcHJpb3IgdG8gaW50ZWxfc2V0dXBfb3V0cHV0cygp
LCBzbyB0aGlzIGlzDQo+ID4gPiA+ID4gPiA+ID4gPiBhIGdvb2QgcGxhY2UgdG8gaW5pdGlhbGl6
ZSBpdC4NCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiBJIGRpc2FncmVlLiBXZSBk
b24ndCB3YW50IHRvIHNwcmlua2UgdGhlc2UgYWxsIG92ZXIgdGhlIHBsYWNlLg0KPiA+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+ID4gSSdtIHRoaW5raW5nIGlmIG9ubHkgZm9vLmMgdXNlcyBhIGxv
Y2ssIGZvby5jIHNob3VsZCBpbml0aWFsaXplIGl0LCBub3QNCj4gPiA+ID4gPiA+ID4gc29tZW9u
ZSBlbHNlLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBQZXJoYXBzLiBCdXQgSSB0aGluayB0
aGVyZSBzaG91bGQgYmUgc29tZSBjb25zaXN0ZW50IHBsYWNlIGluIHRoZSBoaWdoZXINCj4gPiA+
ID4gPiA+IGxldmVsIGNvZGUgd2hlcmUgYWxsIHN1Y2ggdGhpbmdzIGdldCBjYWxsZWQgaW5zdGVh
ZCBvZiBkcm9wcGluZyBlYWNoIG9uZQ0KPiA+ID4gPiA+ID4gaW5kaXZpZHVhbGx5IGludG8gc29t
ZSByYW5kb20gc3BvdCBpbiB0aGUgb3ZlcmxhbGwgZGlzcGxheSBpbml0IGZsb3cuDQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gQWdyZWVkLg0KPiA+ID4gPiANCj4gPiA+ID4gT3BzLCBJIGp1c3Qgc2F3
IHRoaXMgbm93LCByaWdodCBhZnRlciBJIGNjJ2VkIHlvdSBpbiB0aGUgb3RoZXIgdGhyZWFkLg0K
PiA+ID4gPiANCj4gPiA+ID4gU28sIHByb2JhYmx5IGdvb2QgdG8gaG9sZCB0aGlzIGFuZCBkbyB0
aGUgZW50aXJlIHJlZmFjdG9yIHRvZ2V0aGVyIG9mIGFsbA0KPiA+ID4gPiB0aG9zZSBsb2NrcyBp
bml0aWFsaXphdGlvbiBzbyB3ZSBmaW5kIHRoaXMgY29tbW9uIGNvbnNpc3RlbnQgcGxhY2UgYXBw
YXJlbnRseS4uLg0KPiA+ID4gDQo+ID4gPiAiaW50ZXJuYWwiIHN3IGluaXRpYWxpemF0aW9uIG9m
IGRpc3BsYXktcmVsYXRlZCBzdHVmZi4gSXQgZG9lc24ndCBiZWxvbmcgaW4NCj4gPiA+IGk5MTVf
ZHJpdmVyX2Vhcmx5X3Byb2JlKCksIGl0IG1ha2VzIGhhcmRlciB0byBmb2xsb3cgdGhlIHNlcXVl
bmNlIGlmIHdlIHNwcmlua2xlDQo+ID4gPiB0aGVtIGFyb3VuZCwgbGlrZSBoZXJlIGluIGludGVs
X3NldHVwX291dHB1dHMuDQo+ID4gPiANCj4gPiA+IEJ1dCBJIGRvbid0IHNlZSB3aHkgdGhpcyBj
b3VsZG4ndCBiZSBkb25lIGluIGEgaGlnaGVyIGxldmVsICJzdw0KPiA+ID4gaW5pdGlhbGl6YXRp
b24gb2YgZGlzcGxheS1yZWxhdGVkIHN0dWZmIi4gIFNob3VsZCB3ZSBhZGQgYW4gZXF1aXZhbGVu
dA0KPiA+ID4gb2YgaTkxNV9kcml2ZXJfZWFybHlfcHJvYmUoKSwgZS5nLiAgaW50ZWxfZGlzcGxh
eV9lYXJseV9wcm9iZSgpWzFdLCAgYW5kDQo+ID4gPiBtb3ZlIHRoZSBkaXNwbGF5LXJlbGF0ZWQg
dGhpbmdzIGZyb20gaTkxNV9kcml2ZXJfZWFybHlfcHJvYmUoKT8NCj4gPiA+IA0KPiA+ID4gSW4g
dGhhdCBjYXNlLCBmcm9tIHhlIHdlIHdvdWxkIGNhbGwgdGhpcyBmdW5jdGlvbiByYXRoZXIgdGhh
bg0KPiA+ID4gaW5pdGlhbGl6aW5nIHRoZXNlIGZpZWxkcyBpbiB4ZV9kaXNwbGF5X2NyZWF0ZSgp
DQo+ID4gDQo+ID4gU2VudCBhbm90aGVyIHZlcnNpb24sIGFkZGVkIGludGVsX2Rpc3BsYXlfbG9j
a3NfaW5pdCgpIHRoYXQgaXMgY2FsbGVkIGluIHRoZSBiZWdpbm5pbmcgb2YgaW50ZWxfbW9kZXNl
dF9pbml0X25vaXJxKCkuDQo+ID4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy8xMTYzMjYvDQo+IA0KPiBtb2Rlc2V0PyB3aHk/IFRoYXQgaXMgYWZ0ZXIgd2UgYXJlIGFs
cmVhZHkgcHJvYmluZyB0aGUgaHcuLi4uDQoNClRoYXQgY2FsbGVkIGR1cmluZyBwcm9iZSwgY2Fs
bGVkIGZyb20gaTkxNV9kcml2ZXJfcHJvYmUoKS4NCg0KPiBhbmQgd2hhdCBkb2VzIHRoYXQgaGF2
ZSB0byBkbyB3aXRoIG1vZGVzZXQ/DQoNClRoZSBuYW1lIGlzIG1pc2xlYWRpbmcgYnV0IGludGVs
X21vZGVzZXRfaW5pdF9ub2lycSgpIGlzIHRoZSBmaXJzdCBnZW5lcmljIGRpc3BsYXkgaW5pdGlh
bGl6YXRpb24gZnVuY3Rpb24gY2FsbGVkLg0KVGhlcmUgaXMgb3RoZXIgZGlzcGxheSBmdW5jdGlv
bnMgY2FsbGVkIGJlZm9yZSBpdCBidXQgdGhleSBhcmUgdmVyeSBzcGVjaWZpYyhpbnRlbF9kcmFt
X2RldGVjdCgpLCBpbnRlbF9id19pbml0X2h3KCkgYW5kDQppbnRlbF9kZXZpY2VfaW5mb19ydW50
aW1lX2luaXQoKSkuDQoNCj4gDQo+IEx1Y2FzIERlIE1hcmNoaQ0KPiANCj4gPiANCj4gPiBJZiB0
aGlzIGlzIGFjY2VwdGVkIHdlIGNhbiB0aGVuIG1vdmUgdGhlIG90aGVyIGRpc3BsYXkgbG9ja3Mg
ZnJvbSBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZSgpLg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBMdWNh
cyBEZSBNYXJjaGkNCj4gPiA+IA0KPiA+ID4gWzFdIEkgZG9uJ3QgbGlrZSB0aGUgbmFtZSwgYnV0
IGl0IGZvbGxvd3Mgd2hhdCBpcyBhbHJlYWR5IHRoZXJlDQo+ID4gPiANCj4gPiA+ID4gDQo+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gLS0NCj4gPiA+ID4gPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBT
b3VyY2UgR3JhcGhpY3MgQ2VudGVyDQo+ID4gDQoNCg==
