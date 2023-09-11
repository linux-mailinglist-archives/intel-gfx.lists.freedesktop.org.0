Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114B579AB60
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 22:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A0E10E1E0;
	Mon, 11 Sep 2023 20:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB44A10E1C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 20:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694465428; x=1726001428;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LJm8H1vU6O8F/IqZMScyS2HDImwna8bnqoZ/BDpS9Oo=;
 b=SpCfdabYRyN9DFoVOaljqYlqNltdMDhgCCH5v1A76i0SWmezdkNUTwZr
 5NCYOr73Fr85VN9WSxxJWdSXDXMJBGAm/D/CfvQslkZIm3MNmWBVfOSjB
 s2RFBjijUYw1xZchl3Lu24TFfjLzBFgnZj52Cg8kenUTrjsI8lO2SnZss
 bBEAf/Fc9cfiKWARqgUo79sovgE/ojvsThLeOGWGZuEJGeNhYxFHAJu4L
 Mhkg26OJR6c7eNcuHE04kWWLJh0GJklOn0wiVTuOzA6Ap6sRXhhbVPV3N
 y1UBVV+T4ZPwG6tu+IyV1nz9/15PwDvVV1QoXMQOnZhgrOPi0O5NTJUH8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="409160850"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="409160850"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 13:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="720126340"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="720126340"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 13:50:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:50:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 13:50:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 13:50:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TrPOsJTUX0XyZMrB2SKoMtALLx7jINwFOQQGa/W8/WyHD9PWvZCU2tDQuVSyyZmdVgr4So3us+e+Ip0nttqXN0yYyBEZTfh2jUBWUdNcTZA4ZGMoj53b4TCc6ka9lPrn+d2vcSRLiqOZYkidiqwH18Fobb6EGnHTDgbJdifgd+sosPiflZYoxpaxohh+5okExo99gqHnkIiYy4yUiMqTPXaWuQKcxzyZ+oUPoBuaiZJsO6Jv22tquZtczog+58Bl5d894zlM96CkmGqXGmNr9xXBg1drLWyk2kM3aoIJ5svuP+Wzkq0UYVj+VCVPalROkSB3fIbk0YA/pQW99KhhmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LJm8H1vU6O8F/IqZMScyS2HDImwna8bnqoZ/BDpS9Oo=;
 b=deTDtF/S6Y0COGzFmWi+s8+BANRLKWvPUhWqlmrVBkCtRcOymN+IcDkAwMrKq7Rz0gjGz0snphf4VxJZcL+yjRZKHUz15MA7yqQt8ZXzOiCKnQebGUVHuB0OyO0RBw9qW6WdEhf0k3vI2ER4HKJg2I/NSLQySc94RnnogqeEWnlr8SE0sjKr94Mrt4FjlI23OFPi69/ItG6dXIPkkQtlb8dj8PJTsjFzuLtL1wALXGSfgkfGNA2KkuXQT7m13oQ5a6LhXNlSiOQU4tHh/3N8BCHKoiJ5ZuB/9woTf/JAYTyeN0JhBpGYA/EZXH/MyvooHjmtvtAXpzzy8gJqhNPSzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO6PR11MB5617.namprd11.prod.outlook.com (2603:10b6:5:35c::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.35; Mon, 11 Sep 2023 20:50:25 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 20:50:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 05/19] drm/i915/dsb: Define the contents
 of some intstructions bit better
Thread-Index: AQHZmKtLi3A7OhBt6kGrYNmWrm8KRLAWrWmQ
Date: Mon, 11 Sep 2023 20:50:24 +0000
Message-ID: <DM4PR11MB6360F135F0BAB87C3FE9D389F4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO6PR11MB5617:EE_
x-ms-office365-filtering-correlation-id: 09d7422d-13be-44df-d18f-08dbb308b904
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yJu3zUCfQwj2YGTLpNrW4ZzoKOaBmgS3UrTpbr6PEFfqfDDJuywKM7WWRmbqqvkSBMo69GW80O8ZcbIkYx6d3JAGJjvmESmYjuqSk5y6V/3hI5O7VVqgFC9dE/1jOCfnc14jGXpFdKKNgoEh5RiQBiOBBPe18ODdpKDWeNAc0mB0v1A3GhASHqfrLjZHxK7RQxXm4NtQ58k4rqg1Iahw33Nh4SkLDto8lpGzFRnc+nnnNMxjF//8u9Tntk4hMVqolFBNiYi4JFW7UmMZkucjb1tsf7zvc7TYOeKTiJw9e2WOnkVqcwcv7cHQWPUCJ++5CgFMdytIMqLLLeBraRyzHT9aJBIF/3XGYLjSUQC6Zk8rEA7mitbwpuymBO/W71T/N8GCZhouPL7dZkdqQ6ksA2jnQRY1AUKVWr9+oi1wlG4/Sz2KI759XKswBh5rWYMr8qv6cNB5wXOPJiPedjePFevB3k8TT/841i0dJqWLgAy9nKqd/b9bRKDq7Cansly5OysvI71f8/lOyPkC+JePGSp36NZiyS0qwAZo0dW8wmKbPtB9vXefT1S83jJlHNlDOk4cctddx6TEz7mgV1bA9k7DbVMkrK3ngXB7NLNtiMxQgnZONi13QuBe1ddeDGoS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(366004)(136003)(39860400002)(1800799009)(186009)(451199024)(76116006)(110136005)(86362001)(2906002)(83380400001)(53546011)(7696005)(71200400001)(6506007)(33656002)(9686003)(82960400001)(38100700002)(122000001)(55016003)(478600001)(38070700005)(26005)(52536014)(5660300002)(8676002)(8936002)(66476007)(66556008)(316002)(64756008)(66446008)(66946007)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1puSUZFN0lpL1pIdkpHcWkyNWVrMXJ2MTR5SElXREpLTUFNOS9RUzBzWitR?=
 =?utf-8?B?SlpUMFBUV2lTUnN1dkpLTTVMWGJNeWV6dmg4cmMrOGZiZndKZnBmQlFHOFBT?=
 =?utf-8?B?Mk9sSnJNNXNzQ2lIcFlKTmZ4S0JtRUxRZmFXMWlsT0s2cVZ4dWcwU0kySGJw?=
 =?utf-8?B?NjdnOHZQbmo1U0IrMGRtMU9tc2lpQUE5SzBFZlVYZ0FKTXlCNUN0bHcvU2p6?=
 =?utf-8?B?QWNjbEV6Y3dzWkxyZGtNSDlhZC9rRmVWazlKVC9IaVNYNDl3eS92RldGR2li?=
 =?utf-8?B?cnVtQ01oSXNFdXhMUGhOZkpnalJOc2tmOEt6c3hJOG5MbUd1Ui9RL1lkc05W?=
 =?utf-8?B?ZjBwU09Zdzhvc1VhanFGaWsrOVlJcW1QaE5kZ1hvdlMrdVBQK2p5WGo2Z3di?=
 =?utf-8?B?eUJiQU52dk5NL2FINzVyQUpFeG5waHZFNWhpUkJnaWZFNDRBUnFSaW5uODVo?=
 =?utf-8?B?QzRtOGdTRkMrVGFuWDJWK2IrQjJPK1RHRlZrOExzRzN3Y2NTS3J3YWRIRWJv?=
 =?utf-8?B?U3NQaUY5OEZXbmF2bS9ZNFoxa1FTTForQVpMc1c3QUkyOUsvU29kNW9rMTda?=
 =?utf-8?B?T1I1c3JHdmwzczFNbmNKNEZPZEpFQ1VMcG05NmVXZFNnMDFIbkhnS3R5d3pC?=
 =?utf-8?B?ZmhhQm1wV090Rnp4QlAya1BoOVFYYlVYRWhHazVqT2dQR1laRHJxMHorZkQ1?=
 =?utf-8?B?UFJuREZvZVY3Nk1UMmhTSFJGMEZtc2x0S2tXVWRtTXlqQ1VYT1hMYllkNDJI?=
 =?utf-8?B?MGhRREJuR0o1bmJEWDYrdG00aDhXOGEvR1N1d2JBbnppek9vNVdBcUFqZEoz?=
 =?utf-8?B?clgzd0NMVDY4YzdxMkt5eC9yaG9XSHc5L2krTGtHeEFVN1YvbldESE96R0Z5?=
 =?utf-8?B?VXhEZndmNjRPditmOXlhQnNUWjE4amZ3S2Jlayt6RThTK3ExZE5icVkyeGRR?=
 =?utf-8?B?RGl5MmRZMUxOR2FtY0xIUzVadUJqTytlZVBRSUlhUXJoSFB3VkMvMDFCbTVW?=
 =?utf-8?B?cjVocDlINHpERFRHTml2VlFmQ21kVjIzTndic0JGdDkyZHNYWmxkWjR1VXV1?=
 =?utf-8?B?L3pRY2FjMGlzRlAzcnR6a3JvZkp3bVhwMXRnMXJINzd3dTRGUHdvODJRQkVC?=
 =?utf-8?B?dGdtb2gya2pNMkc0YWJ2eDd3Q0dsS0RKcTR0QmFDeS9jQlJZWFo0bmRRZU43?=
 =?utf-8?B?QWpjdVZ2cndJVFZMbGpBK0ZqVGQ5bDI5NW5MN21DNnlzL2V6YjBBUFRyR200?=
 =?utf-8?B?Rm9DdTNCZVVxdjJIeTlqeGFjNmJKNWxJZlpGYUlxRzZlV2pBN1lOTnZiMTh3?=
 =?utf-8?B?aFRWWXJlSnFINy9PVXhuR0NTdlIzSTFreTF2MWY3R2hWc01FTW80YVFWQjBB?=
 =?utf-8?B?SW9jd2UxMm9RR3RCTUVra2RadkNVaDhmNDF6amdUOXVvdjUreHRMMVFMUWRE?=
 =?utf-8?B?eVI1Vmx5a2UwbDZPT2xWK3JmSTdUYkhVS2R0cm5Gd1dMeXE2MFd0NGFvL2gv?=
 =?utf-8?B?dXVNWVI3VG1lcjYrR3pZRU5nTFJ4dllCTUNTd2VjMGprZ2h3ZE1MeU44Mzlk?=
 =?utf-8?B?b3hBMHpvd2hLTVgyZG5LVllEQy9zMEg4YmpKTjUweWhSVUdjVGJBMTJwUGZS?=
 =?utf-8?B?T3FvVXJHUHZpSkM0ajhTS2s5ZWV1YzM0YkdjWmJScktHV3JEbHhnU1lDNThq?=
 =?utf-8?B?V0I5c1A3N0hJeW1ibFZUOGMrN2VxdGNYR0t0S3dGdmtiYlhYZUhPaGpOdEZo?=
 =?utf-8?B?bk51RmZTVWxIdzZIWENEM21hT1ZxaVNPT3R4a0hxdERhV2NEYXJmMkhBdzU2?=
 =?utf-8?B?L2srTE16WjNGU2xibTRqMDFLK3AzcnFMS0V6ZHNJM2hINU9ZM0VkQTllK1E0?=
 =?utf-8?B?b3RNWGx3ZGxyVWNIdWFQaFVOQ2FVZ1J3M3MvUGNCTlYwLys2RzluZGN3TkZ3?=
 =?utf-8?B?b3B3M2VkbXpJZVJJSFgyb1MzcEZvUE1ETzEwRlRIK2F0K2lkcWtMVWhMcDdB?=
 =?utf-8?B?bVB5OEFkcnp6Wmt3YkRwbU5WTTNuTE5CQ1dsanlyR1RlMVNYQndwRWlOZ3pN?=
 =?utf-8?B?TS9xK3UxS3RMcEZMc01FcVRuMCsraWovZ2VobC9Oc05XL29hT0tmRW5JdW56?=
 =?utf-8?Q?5mGM/fzgBZqZJGUHbfoB3tdGe?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09d7422d-13be-44df-d18f-08dbb308b904
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 20:50:24.8191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sHqhzgRLge5MVOdJa9Xb8MsskMaYpyu6XA/zUw2knbzwuBtaSw6XziLUaa1cUWTfRb/pRtTu6gUgJLWx11k1ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5617
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 05/19] drm/i915/dsb: Define the contents
 of some intstructions bit better
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
IFtQQVRDSCB2MiAwNS8xOV0gZHJtL2k5MTUvZHNiOiBEZWZpbmUgdGhlIGNvbnRlbnRzIG9mIHNv
bWUNCj4gaW50c3RydWN0aW9ucyBiaXQgYmV0dGVyDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gQWRkIHNvbWUgZGVmaW5l
cyB0byBzcGVjaWZ5IHdoYXQgZ29lcyBpbnNpZGUgY2VydGFpbiBEU0IgaW5zdHJ1Y3Rpb25zLg0K
DQpPbmx5IHVwcGVyIGFuZCBsb3dlciBzaGlmdCBzZWVtcyB0byBiZSBhZGRlZCBpbiB0aGUgcGF0
Y2gsIGRvIHdlIG5lZWQgYQ0Kc2VwYXJhdGUgcGF0Y2ggZm9yIHRoaXMgb3Igd2UgY2FuIHNxdWFz
aCB3aXRoIHdoZXJlIGl0cyB1c2VkLg0KV2lsbCBsZWF2ZSB0aGUgZGVjaXNpb24gdG8geW91Lg0K
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMgfCAxMiArKysrKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggNDI5MTFhYmNkM2FiLi4wOTNiMjU2Nzg4M2QgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtNzAsMTcg
KzcwLDIxIEBAIHN0cnVjdCBpbnRlbF9kc2Igew0KPiAgI2RlZmluZSBEU0JfT1BDT0RFX1NISUZU
CQkyNA0KPiAgI2RlZmluZSBEU0JfT1BDT0RFX05PT1AJCQkweDANCj4gICNkZWZpbmUgRFNCX09Q
Q09ERV9NTUlPX1dSSVRFCQkweDENCj4gKyNkZWZpbmUgICBEU0JfQllURV9FTgkJCTB4Zg0KPiAr
I2RlZmluZSAgIERTQl9CWVRFX0VOX1NISUZUCQkyMA0KPiArI2RlZmluZSAgIERTQl9SRUdfVkFM
VUVfTUFTSwkJMHhmZmZmZg0KPiAgI2RlZmluZSBEU0JfT1BDT0RFX1dBSVRfVVNFQwkJMHgyDQo+
IC0jZGVmaW5lIERTQl9PUENPREVfV0FJVF9MSU5FUwkJMHgzDQo+ICsjZGVmaW5lIERTQl9PUENP
REVfV0FJVF9TQ0FOTElORQkweDMNCj4gICNkZWZpbmUgRFNCX09QQ09ERV9XQUlUX1ZCTEFOS1MJ
CTB4NA0KPiAgI2RlZmluZSBEU0JfT1BDT0RFX1dBSVRfRFNMX0lOCQkweDUNCj4gICNkZWZpbmUg
RFNCX09QQ09ERV9XQUlUX0RTTF9PVVQJCTB4Ng0KPiArI2RlZmluZSAgIERTQl9TQ0FOTElORV9V
UFBFUl9TSElGVAkyMA0KPiArI2RlZmluZSAgIERTQl9TQ0FOTElORV9MT1dFUl9TSElGVAkwDQo+
ICAjZGVmaW5lIERTQl9PUENPREVfSU5URVJSVVBUCQkweDcJDQo+ICAjZGVmaW5lIERTQl9PUENP
REVfSU5ERVhFRF9XUklURQkweDkNCj4gKy8qIHNlZSBEU0JfUkVHX1ZBTFVFX01BU0sgKi8NCj4g
ICNkZWZpbmUgRFNCX09QQ09ERV9QT0xMCQkJMHhBDQo+IC0jZGVmaW5lIERTQl9CWVRFX0VOCQkJ
MHhGDQo+IC0jZGVmaW5lIERTQl9CWVRFX0VOX1NISUZUCQkyMA0KPiAtI2RlZmluZSBEU0JfUkVH
X1ZBTFVFX01BU0sJCTB4ZmZmZmYNCj4gKy8qIHNlZSBEU0JfUkVHX1ZBTFVFX01BU0sgKi8NCg0K
VGhpcyBjb21tZW50IHNlZW1zIHJlZHVuZGFudC4gV2l0aCB0aGlzIGZpeGVkLA0KUmV2aWV3ZWQt
Ynk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gDQo+ICBzdGF0aWMg
Ym9vbCBhc3NlcnRfZHNiX2hhc19yb29tKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikgIHsNCj4gLS0N
Cj4gMi4zOS4zDQoNCg==
