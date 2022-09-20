Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5225BE01E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 10:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1EB510E45D;
	Tue, 20 Sep 2022 08:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5062A10E44D
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 08:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663662754; x=1695198754;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LGECFrILPL/OyfjVFF9PBLZANrMrIF13gAJEowO/sLY=;
 b=jmJ+JvmdLV8W+9OprUelA8L90KPiSAuVMeNX/bxiOAkvm3JbfuPl1Nr5
 iYGwjxbB3XrSsyMGoM9GTAu9ddE+8ByPQpotVgXyPvbSBPF58LU3gOSlh
 dvjG2NfSJ/HfmflDIDhXnEuXLTXcBQXFR3S6yVIbbjUoC9uu/fNW30VIE
 u7khcDk9Vm9PoyDoRM2VH9KXwwaYUOZBRZSKyJwCWJ5fus8gTxNw+1+/K
 wmDD/WKQcSW6mF68SedRg3Pd7yobNoHrCqpPje4z/Yue2dz2XTJ3K6m7E
 JzJXhkkfa0pl0AcCNb4RbcnWO68dMEYSU3L9PQRPrWcVakfcPPx/T9ETg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="363593787"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="363593787"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 01:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="614311244"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 20 Sep 2022 01:32:33 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 01:32:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 01:32:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 01:32:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QlttBpqur1PUHNX0DyY7qcx8HyEDJ4D2jLZSpgmjuONlBsLTpx6ICD1sGOFwO88mG4ERQjZhbugFt7U4PQX6ceIHUeFqMuXDnNx3sLuEtUObOiDI1WuUjw65uWnqb7ancOcYosTQMLAP8n5fc4xy2FDCcxStfhkC7ePd/3+ku+xNYGLJqz9bbywCHL1oLJggmNRNdIfGIxgzy16ivwUGuesu7o5CJ0XiztWCQSCbHbl0i6MvG/bJ/L4qKI83cmgRHIZWTfajZD4Dgy9p4W+VyAB/jIMqDoAqiCLaKw85nn0JEkRgml8O+wyItGEqycekfKEFblQsa05XBdcT35xWlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGECFrILPL/OyfjVFF9PBLZANrMrIF13gAJEowO/sLY=;
 b=ljRI6va17O1lwaQXgFXxQcDcT93pRzTFYgz7IxdXeklCSEoKTK4eqWS8Vph9pILe4q92TS0p/wTXuoAcfMrG1wK2dJsRsCUccXBD8QWUzSfACmKG4egbZ6HjDt6omIFLfdFnBPiqKeTimsEV0Wi3c/3S/LzOCxudz1y9IbCqquazz6DHN4yZAJHLGVqCMnla7WOINuMTy2edlPaW3koaf/AN3ZJD3gBeARmoN4B4wq6Ru+KArhPODwqLY8zCl6lIt7k1g8ek9GRKdv5pYeHZAuss4N+ogaq7zAMLsxHxOTkDhtnZK2fqwAZqJZBw0RNu2pl4WXblfd6dHIqhZqrumw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by DM6PR11MB4513.namprd11.prod.outlook.com
 (2603:10b6:5:2a2::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Tue, 20 Sep
 2022 08:32:29 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591%10]) with mapi id 15.20.5632.021; Tue, 20 Sep
 2022 08:32:29 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/fbc: Use lockdep_assert_held()
Thread-Index: AQHYhNOx1GofcFSuLkSBMQSSnmk+pK3ojUiA
Date: Tue, 20 Sep 2022 08:32:29 +0000
Message-ID: <MWHPR1101MB215723A4BB262E9B10FA1477EF4C9@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20220620182917.10765-1-ville.syrjala@linux.intel.com>
 <20220620182917.10765-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20220620182917.10765-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR1101MB2157:EE_|DM6PR11MB4513:EE_
x-ms-office365-filtering-correlation-id: f83806f2-e529-428e-80bf-08da9ae2a7f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dhc3XKgQo3uOr0qtOsbFSgtvqnW2DKNfw7JBeSX+ROlJbcNnLKNe6xFhsDvkb4nmzLHf0tSA+nZht/4zGxsF6fHIKQpB/nG3KF8h9M03DKoLE/7dGdzCHA1MPrq5Pwfi9PF8GS3kOlWyqu1c0Oz259sSyyPanKgbbcYAXGV+RU/r8gVuAPne4bktBLa7ufDfbrX7Y4txhyMeqVKmr/tLhyvQlotchnQHVkmIcAOyUODTdUDYDxYlY6Yb1ExnUnfMXKVOpflOfb9SOG/W4L/vuOZK4ErvRAgy4YDO+dF8FYrrpYbBHaRvPpaeGcwS9SopFT1KVkApEkWXhLERSSDThOGHBd+nr0Z+22vbY5Ur9jFxkzCPRgZ+mi8AXboqbF+l3w2oxuq2L0/xBjG/1B6azRFIrXJ/qCa1RJooKTw3lR8EYJmyjPbpMJjhvxheeg8+mvUoIzLYqdTdgLFlW+GvijrUBvNjgFLL5agi/zLwoW9po/fTHsWYFj2lBhU6AxsWCtgHCgAAeQuW5LhLTv84QcnsRquzXNsY+jXjOOFgrALDtmWnyvPnb+QhfEfDBMPX/rcgasvu4wA+r0U57Z+lgWilOWnT/W/ciFhVDYbhOjgjJzHrVR5KVJ+YLvsHeB3s8IS7FhFzTC7gwPp/I7+eCfkSpxpSFur4i8Qp/mdPJeeXZ0eJIkPxaQsomDNjkTrStOv8vxQDKzRJ8M3mmi17AxCQfEH8IcUrZLWHdUHMaTpUWLqyHvByCKBCNMBVb4ifIvo3K3bb46LJPVAod1BkiQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199015)(7696005)(6506007)(53546011)(86362001)(41300700001)(8676002)(64756008)(66446008)(8936002)(26005)(52536014)(66476007)(38070700005)(66556008)(478600001)(33656002)(71200400001)(66946007)(76116006)(110136005)(55016003)(316002)(186003)(2906002)(66574015)(83380400001)(122000001)(5660300002)(9686003)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1hGdGhHeHV1cjE1UTdtaVdUZmJOeTJQSTZkSlFsQ21OS01LRElqU0xRakdY?=
 =?utf-8?B?UVZyclV1NjEvY3g4Q2hwOFo3TVVYMDlzYlp3eXFMQVJXOVR3Vm1TL1Eva1R3?=
 =?utf-8?B?dit3MFNiZ2hDOUpKQ0FaWXVHckZTcnZza3NQRFhWNmQ0UHJtUXJWQ2VrdkdD?=
 =?utf-8?B?TTRISHlNL3huczQyLzQ1dFpmRjE0WWVySU15NDBHZDBxWW1EVkpUV0VLWkZ6?=
 =?utf-8?B?bGJ5OXFEYVo3QjhVUXk0OWVKL1Z3aERsWTZ2VnhmdWNzSm5KQmpsMmUvVmFi?=
 =?utf-8?B?SjF5b0pZMlh0UEVGMzBWMzRyUml6TnljQXllRzVZbTZLRlpHUnIwWk83anBO?=
 =?utf-8?B?aXJZdlJZTnVBTGhPN3Q3Tk5sbThEa1lNcGZtSEJsT2ZTelc1YjRod0s5Zkdj?=
 =?utf-8?B?bGdNeWwxTjhuNmc3TUdXUEdTQnJlYkpnbzJJR0RBa29BUzlTeUFsL1p0b0Vz?=
 =?utf-8?B?bGplNmtJdS81aDhnOWExYnFuZ2hFVmhna2RwbndlYSsxektpZ095ejhhUlZT?=
 =?utf-8?B?ZTM1ZmJnb3RkcFlTTUsxQjluOGUreDRBZFVJR2Nlb05sUEhhaEFWSlpLSjhY?=
 =?utf-8?B?TEtjK0lIYnpsN0d4TklXU0NLUk1zRVh1WmIvRVYwQkZiQnJZV25TcklacnU3?=
 =?utf-8?B?ZTFQUTV3UkRJYVF5NGNCUXk2a0N2bG9PaEwxdnEvaitvUXZkNzlIS2pVWGRS?=
 =?utf-8?B?c1lsS1VYR3hJaEZOWWpWZFdpNm9zQmdBYmE3TUd6bXFUUzgrZHlISEROMGlr?=
 =?utf-8?B?S0F0T3hGVkUzbWJwc2FoYTVTMEk2U3FRK2J4aUNLU0RPUXBwMHBJSk0wdVdM?=
 =?utf-8?B?blZlM2premI5VVBaMWZ5RExhbmxFNTVrSDYyVVhTbnI2THNvN2IzQm9QNHNk?=
 =?utf-8?B?aXBkcE80MnlaR3lzOERjNWQ3RWxwSEhkd201NEU3VnBzYlFsS2VkM21rU3dm?=
 =?utf-8?B?WFAxbmJNc0xhV1ZGWVhOL3gyY2NUdDFyY0R1aG9ab0RnQU5sUUxUQlVpbmIy?=
 =?utf-8?B?MU5FWHB6UmJCRHhKT0MrbG1nZ1MxeU00U3grM1RPd3JsNnJ5VjQvelI2UTBk?=
 =?utf-8?B?RmNzOVVKR2lBU0FXb1ZBTVhjNHpad2NSdFFSRUdBRTdKcXZLb3lGNldWcHpy?=
 =?utf-8?B?NXQ1NW1mY05GSGxldnFWS3I5TmVlMjVuT3AwUElMbmcxODZ2QWFPSFNFcDk2?=
 =?utf-8?B?enNLb1d5K0VhR0xWeXhmZU82c01VV2FiRTkyTDMyQWNWTElHakxBM3gxZHVh?=
 =?utf-8?B?VHJYUkVBNVBaVTgyZmNod3ByZ2ZhRTNHalBHS2VVQkRXZXVERlRlTmFvVTRa?=
 =?utf-8?B?MTRTdlY4cHR0dG5uMjR1L2RTbnhGd0FORmlDbWJrRmJWT1MwYmVkaWEyNzIz?=
 =?utf-8?B?aGlHWGJsY2lLS2tCLzF5ZS9obGJHQXJQeVVXTDB0SmZEbjdwU1FsYUFRRFc2?=
 =?utf-8?B?SUorSjZ5R0Z4b1VhN3lJd1p6b3ljNWFFWXhJaTdWYzB0MmlNeGlhVTdoN3ZC?=
 =?utf-8?B?cmY3bEV5dE16T3ZNZ0xmZEo4dEFnaVIreHN0Zjd5RU5ZcTJLTjJQVm0vRFNC?=
 =?utf-8?B?WXJISzRhTkFwMVUvc3NMV3I0UFNnaURTZFgzbWt4WE8ycmUyRTZ4Y09JTE4w?=
 =?utf-8?B?dk5jN2hzZWMwSVB1UzIwQVF0UktkMkQxcnZneTN3Yk1EcnlXWGZWK0V5S1lQ?=
 =?utf-8?B?UVAzczVlcmlDdUNuVHZjNjhsUU9OQVEzRDcwakF3YnBkOFVuUFUrNFVSaVZB?=
 =?utf-8?B?MnRYUTRYTzAyR1REK0hubVYyVUhXYUx4YTlhLzVaVjNqL0NDSDl1OWRudzBV?=
 =?utf-8?B?NlQ4RU9FZTg1VDhvUG1FMCt3bUZHSTVDQ01CelFqZlFuRUo2bWZmS0Qva1A2?=
 =?utf-8?B?NXZPa2FGQVBWaThxVUp0d0V4YVE4Y0xaR1kwVWNlanNkcW9tSUJDaE0zNGs4?=
 =?utf-8?B?V25GN25LTXZud0RETU1xYzN5eWgySzllRlZNU1c5NS9xdG55Y0dNRjdtUmQy?=
 =?utf-8?B?QzlNYWc5UkRHVnBIN1BqS3pVTUgzNkJXZXlLZDFMVjJ6Vkx1T1dYWDRJTFZ3?=
 =?utf-8?B?STlRZzBjcTVIMHhDVXBMcjJnMDlzdzJ5cnpmYXNYc1dLUWhOcTN6MStyNWs1?=
 =?utf-8?Q?ZNzdC6OM29S/E7CRvX12FilIn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f83806f2-e529-428e-80bf-08da9ae2a7f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 08:32:29.6826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iqmlRjJpz46KPsKcphRY83GDlhFlYZ3HEYoQUbQINxtXszjUuF9MblmSVHDcXLpGJn+4sxLtFO2nlGv1BighmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4513
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/fbc: Use lockdep_assert_held()
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogTW9uZGF5LCBKdW5lIDIwLCAyMDIyIDk6MjkgUE0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENI
IDIvMl0gZHJtL2k5MTUvZmJjOiBVc2UgbG9ja2RlcF9hc3NlcnRfaGVsZCgpDQo+IA0KPiBGcm9t
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4g
UmVwbGFjZSB0aGUgbXV0ZXhfaXNfbG9ja2VkKCkgc3R1ZmYgd2l0aCBsb2NrZGVwX2Fzc2VydF9o
ZWxkKCkgc2luY2UgdGhhdCdzIHdoYXQNCj4gaXQncyB0aGVyZSBmb3IuDQo+IA0KPiBBc29vIHNw
cmlua2xlIHRoZXNlIGFyb3VuZCBzbyB0aGF0IHdlIGhhdmUgbW9yZSBvciBsZXNzIG1pcnJvcmVk
IGNvdmVyYXRlIGZvcg0KPiB0aGUgZW5hYmxlIHZzLiBkaXNhYmxlIGluc3RlYWQgb2YgdGhlIGN1
cnJlbnQgc2l0dWF0aW9uIHdoZXJlIHRoZSBhc3NlcnRzIHNlZW0gdG8NCj4gYmUgbW9yZSBvciBs
ZXNzIHJhbmRvbWx5IHRocm93biBhcm91bmQuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxNyArKysrKysrKysrLS0tLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggNzc2
NjllMDNiOWY3Li5kYjFjMGViNTA4ZmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuYw0KPiBAQCAtNjY5LDYgKzY2OSw3IEBAIHN0YXRpYyB2b2lkIGludGVs
X2ZiY19udWtlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGZiYy0+aTkxNTsNCj4gDQo+ICsJbG9ja2RlcF9hc3NlcnRfaGVsZCgm
ZmJjLT5sb2NrKTsNCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBmYmMtPmZsaXBfcGVuZGlu
Zyk7DQo+IA0KPiAgCXRyYWNlX2ludGVsX2ZiY19udWtlKGZiYy0+c3RhdGUucGxhbmUpOw0KPiBA
QCAtNjc4LDYgKzY3OSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY19udWtlKHN0cnVjdCBpbnRl
bF9mYmMgKmZiYykNCj4gDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfYWN0aXZhdGUoc3RydWN0
IGludGVsX2ZiYyAqZmJjKSAgew0KPiArCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmZiYy0+bG9jayk7
DQo+ICsNCj4gIAlpbnRlbF9mYmNfaHdfYWN0aXZhdGUoZmJjKTsNCj4gIAlpbnRlbF9mYmNfbnVr
ZShmYmMpOw0KPiANCj4gQEAgLTY4Niw5ICs2ODksNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mYmNf
YWN0aXZhdGUoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiANCj4gIHN0YXRpYyB2b2lkIGludGVs
X2ZiY19kZWFjdGl2YXRlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYywgY29uc3QgY2hhciAqcmVhc29u
KSAgew0KPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZmJjLT5pOTE1Ow0KPiAt
DQo+IC0JZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIW11dGV4X2lzX2xvY2tlZCgmZmJjLT5sb2Nr
KSk7DQo+ICsJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZmJjLT5sb2NrKTsNCj4gDQo+ICAJaWYgKGZi
Yy0+YWN0aXZlKQ0KPiAgCQlpbnRlbF9mYmNfaHdfZGVhY3RpdmF0ZShmYmMpOw0KPiBAQCAtMTIy
MCw2ICsxMjIxLDggQEAgc3RhdGljIGJvb2wgX19pbnRlbF9mYmNfcHJlX3VwZGF0ZShzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMg
PSBwbGFuZS0+ZmJjOw0KPiAgCWJvb2wgbmVlZF92Ymxhbmtfd2FpdCA9IGZhbHNlOw0KPiANCj4g
Kwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZmYmMtPmxvY2spOw0KPiArDQo+ICAJZmJjLT5mbGlwX3Bl
bmRpbmcgPSB0cnVlOw0KPiANCj4gIAlpZiAoaW50ZWxfZmJjX2Nhbl9mbGlwX251a2Uoc3RhdGUs
IGNydGMsIHBsYW5lKSkgQEAgLTEyNzcsNyArMTI4MCw3IEBADQo+IHN0YXRpYyB2b2lkIF9faW50
ZWxfZmJjX2Rpc2FibGUoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gZmJjLT5pOTE1Ow0KPiAgCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxh
bmUgPSBmYmMtPnN0YXRlLnBsYW5lOw0KPiANCj4gLQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAh
bXV0ZXhfaXNfbG9ja2VkKCZmYmMtPmxvY2spKTsNCj4gKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZm
YmMtPmxvY2spOw0KPiAgCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIGZiYy0+YWN0aXZlKTsNCj4g
DQo+ICAJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIkRpc2FibGluZyBGQkMgb24gW1BMQU5FOiVk
OiVzXVxuIiwgQEAgLQ0KPiAxMjkyLDkgKzEyOTUsNyBAQCBzdGF0aWMgdm9pZCBfX2ludGVsX2Zi
Y19kaXNhYmxlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gDQo+ICBzdGF0aWMgdm9pZCBfX2lu
dGVsX2ZiY19wb3N0X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpICB7DQo+IC0Jc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBmYmMtPmk5MTU7DQo+IC0NCj4gLQlkcm1fV0FSTl9P
TigmaTkxNS0+ZHJtLCAhbXV0ZXhfaXNfbG9ja2VkKCZmYmMtPmxvY2spKTsNCj4gKwlsb2NrZGVw
X2Fzc2VydF9oZWxkKCZmYmMtPmxvY2spOw0KPiANCj4gIAlmYmMtPmZsaXBfcGVuZGluZyA9IGZh
bHNlOw0KPiANCj4gQEAgLTE0MzAsNiArMTQzMSw4IEBAIHN0YXRpYyB2b2lkIF9faW50ZWxfZmJj
X2VuYWJsZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJaW50ZWxf
YXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsNCj4gIAlzdHJ1Y3QgaW50
ZWxfZmJjICpmYmMgPSBwbGFuZS0+ZmJjOw0KPiANCj4gKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZm
YmMtPmxvY2spOw0KPiArDQo+ICAJaWYgKGZiYy0+c3RhdGUucGxhbmUpIHsNCj4gIAkJaWYgKGZi
Yy0+c3RhdGUucGxhbmUgIT0gcGxhbmUpDQo+ICAJCQlyZXR1cm47DQo+IC0tDQo+IDIuMzUuMQ0K
DQo=
