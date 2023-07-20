Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 337DE75B532
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 19:06:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8101410E5F0;
	Thu, 20 Jul 2023 17:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3BB510E5ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 17:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689872757; x=1721408757;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hinZoy/qrKQJXNkNxwECTxhUB/krDmvEjAFtbTK9azU=;
 b=AIjH6qpnxl6iBxnu+M+oIGQ0ishmiLvcqxI4n+BiGAsPBJoiyrDu6FlY
 sGIsSoNo1hDCrjDxmsohKEOY258buIZ+uat/qjtNlst5rCvGH6iQIxFNY
 jNeF+Bl+ltupVweBBEpcAJGizGyUqzyLe8mADJnzlThknnFDkY4h5VzkY
 BhSfGGuLAXcJLDMU9HQrlxrTw3UfudNvs5876C+1v/ZQNqbSkDdoqDph8
 ggdKwomwzVhQVqEqdMuaBppQnIaWvxVu3ClD7OnsTa7Qh//L+p1DpkBxH
 CEbch/vwbqZvpUW3VBCsP8MCUiitkdea2XBq7tKnfowDnpiB59YlzzsQj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="370400124"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="370400124"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 10:03:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="848511989"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="848511989"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 20 Jul 2023 10:03:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 10:03:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 10:03:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 10:03:00 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 10:02:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8SQNNh3b+NQwgf/mmStntWaJUFnlL/edjhbybCtmUVfI2u8Iir+IzOio0W13RDkaPJDOUtd/+oN+JIHxlNhAj3x+wE7B/kSj5w0mQZ3T124uvlOnJKqrnIcr+JeBVWLve0FdzkicpoRR3NcQqFh1UnYrhAxzaYfP31JDuzKhHzF+xtkmWLCWoL5xetTc5UtwL+TX2Zp0138qselfYv7gQlL4XSMUJm7S7V6ut0+cM4yAMCQZUJj3pYKNaVZB1lvQ8XV9YvEPTnWP5EIrHRVTB6fb3NMBWQqbKZ5SnIpDbbdYHvhmCahBIBi6ExPjyvzXvvkQpY8tOI3alTehzv3eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hinZoy/qrKQJXNkNxwECTxhUB/krDmvEjAFtbTK9azU=;
 b=kTnM8S+TiafzKESNrpviKL9Ouas5Jkc4bhhdqSdTxq5YvofvYcsL17z1rfkaaTmlHTNiogMR2wlIRkoSGVxs5yoRBe6zJUYunD/uT4Oq8qeWIDQyVQ1IBiYw0ExTa/53E1HdUQOlwYq8Er+ZGiF+HQxY7OOOmms7EGQksIYkjMVbWgbpTXjLWN0tjlg+f1mG7TdWTmyXwJcbW1cEEB3HhsaXxoUQ4pYPWIC/Yp3mpgrxKxiGIxkX5ilut62m+eb3wxTMzsuRzQ2vmAuJ+7DAdOmdbx0c5NPkluPpRYZuXv/ufhxokjejTWE37PmzEBO/l/CB5sLrFzZHczheBi+BKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SN7PR11MB6654.namprd11.prod.outlook.com (2603:10b6:806:262::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Thu, 20 Jul
 2023 17:02:57 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316%3]) with mapi id 15.20.6588.031; Thu, 20 Jul 2023
 17:02:57 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Yang, Fei"
 <fei.yang@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/dpt: Use shmem for dpt objects
Thread-Index: AQHZucqXpn8KRou+m0iMPnKnsHkX7q/BGGkAgAB6EQCAAM/GgIAAcQAA
Date: Thu, 20 Jul 2023 17:02:57 +0000
Message-ID: <DM4PR11MB59711839F6735AB3330B226B873EA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230718225118.2562132-1-radhakrishna.sripada@intel.com>
 <37f64727-9bbd-c967-193c-97266dfc1331@linux.intel.com>
 <SN6PR11MB2574001C852621E0AFF4CF7F9A39A@SN6PR11MB2574.namprd11.prod.outlook.com>
 <46e2c9cc-bc9d-69cb-c40d-53a4012cf80c@linux.intel.com>
In-Reply-To: <46e2c9cc-bc9d-69cb-c40d-53a4012cf80c@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SN7PR11MB6654:EE_
x-ms-office365-filtering-correlation-id: b3dab041-9a4d-4b37-b272-08db89432a84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tRRq1nVaGiwHZrm6Vdi26AlAdZxwxJWKn4cdhWr7O02JtnW42i6u2uFHkm+j2u2QDH7i+nQ0L/4dgx6sU3Xf/AM76VFXA3ZdJNJpGuKUg3TfXQK0Fo5oreM9s30mOxKwXA6TFT/OU/qjQPoeh5rpnuTc48gxb138LngnwzJKhLK+mOnyE4MEajom8HeCDdbne/Wt1BDw9AAmy0pmBvJMV8G6QyALrf+pls/qnwLmrt/ZkrR24Kz2tjsZlV9wwynI3LcDqjuOsKfxrO8YeaXg+R6O9Ul68tMWKWf1TPe4qfmY+iO0My1Yfq7mszI1u7t5+yTlIuaBFq2lPOp8oceV/ry3Jy5M6t3ITbRBlEkOiDSnX6GyMc1lVg+BeM0VNfI37VujnN6XTJOuOXvSt9C5VamSyJjlDB7gsEnUcWgSGBt67p2Qt7GJkdMQ4mK2JdSavzLT5qBU0xol+wPzwIUkEEi3svk26WOh+ARn9G7XC+2lP4eXpk1KOCHxHkX0GY27yJbrfc2RgzL0U+9N68QCnCwFCRPY9fvJ+2mJ5sMXL5TG5dMVMZvB2/xtI632xsx3wXDJlmnDT3QaGqT0i8JOV5sRvSmvgWRcKiwxCNyTYGhhQfJpf7chC+NR0SM7q2Dj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(346002)(376002)(136003)(396003)(451199021)(64756008)(66556008)(7696005)(54906003)(110136005)(76116006)(86362001)(66446008)(186003)(66476007)(4326008)(66946007)(478600001)(41300700001)(316002)(71200400001)(9686003)(8676002)(38070700005)(8936002)(38100700002)(6506007)(26005)(66574015)(5660300002)(2906002)(83380400001)(82960400001)(122000001)(53546011)(55016003)(52536014)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nm1JZmFBVlROcFZRVXJJQittSzZYUnJMRFFEb0dWSWdlNm9vQ2YrYm1zbWhr?=
 =?utf-8?B?d0tYQkxPMEVVSWtidzlPb2lUV0lEdWZSVDg3RFpySlVpd0p5dFZOOFViYitW?=
 =?utf-8?B?QmZBWnF3cTNUKzdzeWtSL3IxN1JXa21kc2hsdTNnQkdqSUN1RWVrbUpNWjdV?=
 =?utf-8?B?Y2VsTmxJU0JyZVlHTU1XU09idFRNNmttWFVTK2MzMXZrMmY3QjZkK2syQ29M?=
 =?utf-8?B?cVZaOEZmZ3NpNEdqTXFLTFVOOTZkSmFGOXdaaW5uZ21kYzRWYlg3c2JjaXpU?=
 =?utf-8?B?dnliYVVYQXRibHRmTGhDd3VvQ2VHRUV2QlZxazhuNXdOcDBaNi9OUWx2WFB4?=
 =?utf-8?B?YjlPMFJnb2ZlYjlsRXhOZXlXbmZpTURXME9WdldtWmd5d0NWN0E0UDJ0T1Mz?=
 =?utf-8?B?TTQvRmZQREd1VXJvcU51MHJSeEdmTEhiWlN4YS9EY2VZRE1GQmVVb0ZKOWdP?=
 =?utf-8?B?VnVKNlFvMmoyNlZicGt2dmZ1UXhNeWJJTU1qdkNwVDRMUnZKakRpK2NlRnFl?=
 =?utf-8?B?Z1duRS9YRytsSHdiOVEyQ2piRi84REJGMmZ2dkZwVmxjbWJXWEFxSzZMbWF4?=
 =?utf-8?B?U3ZzdmZlaTdTNWJVQ2JNUlJwdjNBZkJtMUw0My9lZlcwWHYzcTh3YnJNY2FQ?=
 =?utf-8?B?YmV1cVNhd3VUUUJ5bzJtbjR2MjRuUk16QlpmaFVVZTBMOXp2UFZPVnByYlVS?=
 =?utf-8?B?MEdZUjdsb1NxRk5ka1Vnbkd0dmw0eFN1Q1RCMmxrbHNOU3lxOWZ0VDllTk9C?=
 =?utf-8?B?KzhkNW9NUGtZckNEWEhUL1NzYlF4TmQrUmtnM2JDSDVDZFBTSEhIeUlTZEJk?=
 =?utf-8?B?SVBUMGZmWUJaYTVoWTlHd0dUMnp2dXoxY29HUVh0bmM5MkM2b2pYYkE5NU80?=
 =?utf-8?B?U2RnaVBaOS9XcWd2a1ZiWXpzQU9XblZiQzFaRnNKL1dZbEllZW04OEVCTTVF?=
 =?utf-8?B?SUdjamJmQ3l2NHFVWFAwbXFDV2xyNDlxcTFWU0lzVWp1ZWRnb2lndDN3M2RU?=
 =?utf-8?B?Nm5yOUxjNFo3dUpieW9uSVYxV2NwdHVXUVcyMkZoM2VjZlBaRjN4YjFtNloz?=
 =?utf-8?B?clJQcThWN1kzYzZtTHd4WnRqTWh4YnZSc2ZubXJGRVR5MnhYTEpNZExwYnJx?=
 =?utf-8?B?MUNWYjdXTlF6bEJRc3c1VitMOEFqVjMydWxoZ1VsVk9WK080NCtoNFFYa1Vk?=
 =?utf-8?B?OXVOUnFYc1R0Rm92bmFlSWMvS1NnWW01dldGdzY4NUEvaFpEbGVmNWY3SWw4?=
 =?utf-8?B?S3NQS1lXSzdIK05qVGRpd2tHT1hNa01LNzM5VHR5eURIUElpQmRTKy83YXls?=
 =?utf-8?B?UldTajA3L05Bdk16U0hPSk5zVG0wY003NFJRTHEzS0lyOWgxc3F4T2ZnTjJZ?=
 =?utf-8?B?Q0ZwWWZ1WGw3RVNCVkRoRjI2VTBadHdkYzl4cGhBdW1NWm1TSGgzbWMyRlZh?=
 =?utf-8?B?Z29DN1BkWmJKek52WG1nakJOOFFHanNJTytPRDFNdEZGTy9ERVY3TzEyUGcz?=
 =?utf-8?B?TUtQM3hJNHNvZTM5VE5MRTdoaEhBdzBBZnc4VnRUK280NSs5K0N3SnJBQUFJ?=
 =?utf-8?B?SkY1YVdMbEJ3RGxOOXJEMmRncEp5QVpqSkVLSGxiMi9FcTRwZG5nQTBpTk1F?=
 =?utf-8?B?c05YUU1oYW13OUZoc09ReWFhRFdqK1Z5S0NyaUZMUy9LdVlmanMzNm5hY0Zv?=
 =?utf-8?B?R3B5a0Q1dS9QQjkrQlNMdFZ6eFRsTld5U3dLaXZGRzJmVDR4M1ZvSHEzd2o1?=
 =?utf-8?B?NHBrckd1dndNd09NWitvaW1QTzVJOHJxOGYvRzY4Ti80OXh0YzZDR3psRVRp?=
 =?utf-8?B?RlYvakZZazlVWDJmTnJDV0ZMZy9xU0RoNHAzN3MvcGhZQ2lFQjEyWVprelM0?=
 =?utf-8?B?R21Kb3pDaVZHd1NWenZlM3A1dlkycjY0V0YrOHZFSHJKeEF2S1dEWTczOUcw?=
 =?utf-8?B?ckcwejZwVVpLSDQ0R3lLamRoTHp3WUQyeG1oTDRlczI0bGdLVi9TbkRpQTN1?=
 =?utf-8?B?L20zelM3L3F0SzdaaDVQaEV3TUpvMm1kTHU3L1l4VWhzYmZOM01rU1Ryc09K?=
 =?utf-8?B?cFIzTnBXbDhnSlNNcitSMldKQmp0QThlZzQ2dnhQaTBsQlNaNlg2YzVTV2k3?=
 =?utf-8?B?c3Roc2hwMjJaNGpON3MyTTB3YUdEWnZUUG9qL1ZvazNhanBUeUZhU1lJQ1Vu?=
 =?utf-8?B?Y2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3dab041-9a4d-4b37-b272-08db89432a84
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 17:02:57.1636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H3V3kUd2p8zmBwHlMu1uNyQz/8GWqDUDTJyrFrMXedLvoNod9XPQtYOiyglQ9br9YacjDwIOzcIPC2E7osY7ahrI0Rx2R3m23uVw+bwKE1Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6654
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dpt: Use shmem for dpt objects
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
Cc: "Wilson, Chris P" <chris.p.wilson@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVHZydGtvLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJz
ZGF5LCBKdWx5IDIwLCAyMDIzIDI6MTcgQU0NCj4gVG86IFlhbmcsIEZlaSA8ZmVpLnlhbmdAaW50
ZWwuY29tPjsgU3JpcGFkYSwgUmFkaGFrcmlzaG5hDQo+IDxyYWRoYWtyaXNobmEuc3JpcGFkYUBp
bnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnOyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPjsgV2lsc29uLA0KPiBDaHJpcyBQIDxjaHJpcy5wLndpbHNvbkBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjJdIGRybS9pOTE1L2RwdDogVXNlIHNobWVtIGZvciBkcHQg
b2JqZWN0cw0KPiANCj4gDQo+IE9uIDE5LzA3LzIwMjMgMjE6NTMsIFlhbmcsIEZlaSB3cm90ZToN
Cj4gPj4gT24gMTgvMDcvMjAyMyAyMzo1MSwgUmFkaGFrcmlzaG5hIFNyaXBhZGEgd3JvdGU6DQo+
ID4+PiBEcHQgb2JqZWN0cyB0aGF0IGFyZSBjcmVhdGVkIGZyb20gaW50ZXJuYWwgZ2V0IGV2aWN0
ZWQgd2hlbiB0aGVyZSBpcw0KPiA+Pj4gbWVtb3J5IHByZXNzdXJlIGFuZCBkbyBub3QgZ2V0IHJl
c3RvcmVkIHdoZW4gcGlubmVkIGR1cmluZyBzY2Fub3V0Lg0KPiA+Pj4gVGhlIHBpbm5lZCBwYWdl
IHRhYmxlIGVudHJpZXMgbG9vayBjb3JydXB0ZWQgYW5kIHByb2dyYW1taW5nIHRoZQ0KPiA+Pj4g
ZGlzcGxheSBlbmdpbmUgd2l0aCB0aGUgaW5jb3JyZWN0IHB0ZSdzIHJlc3VsdCBpbiBERSB0aHJv
d2luZyBwaXBlIGZhdWx0cy4NCj4gPj4+DQo+ID4+PiBDcmVhdGUgRFBUIG9iamVjdHMgZnJvbSBz
aG1lbSBhbmQgbWFyayB0aGUgb2JqZWN0IGFzIGRpcnR5IHdoZW4NCj4gPj4+IHBpbm5pbmcgc28g
dGhhdCB0aGUgb2JqZWN0IGlzIHJlc3RvcmVkIHdoZW4gc2hyaW5rZXIgZXZpY3RzIGFuIHVucGlu
bmVkDQo+IGJ1ZmZlciBvYmplY3QuDQo+ID4+Pg0KPiA+Pj4gdjI6IFVuY29uZGl0aW9uYWxseSBt
YXJrIHRoZSBkcHQgb2JqZWN0cyBkaXJ0eSBkdXJpbmcgcGlubmluZyhDaHJpcykuDQo+ID4+Pg0K
PiA+Pj4gRml4ZXM6IDBkYzk4N2I2OTljZSAoImRybS9pOTE1L2Rpc3BsYXk6IEFkZCBzbWVtIGZh
bGxiYWNrIGFsbG9jYXRpb24NCj4gPj4+IGZvciBkcHQiKQ0KPiA+Pj4gQ2M6IDxzdGFibGVAdmdl
ci5rZXJuZWwub3JnPiAjIHY2LjArDQo+ID4+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPj4+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AbGludXguaW50ZWwuY29tPg0KPiA+Pj4gU3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzLnAud2lsc29uQGludGVsLmNvbT4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IEZlaSBZ
YW5nIDxmZWkueWFuZ0BpbnRlbC5jb20+DQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNo
bmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiA+Pj4gLS0tDQo+
ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jIHwgNCArKyst
DQo+ID4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+ID4+Pg0KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHB0LmMNCj4gPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cHQuYw0KPiA+Pj4gaW5kZXggN2M1ZmRkYjIwM2JhLi5mYmZkOGY5NTlmMTcgMTAwNjQ0DQo+ID4+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jDQo+ID4+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jDQo+ID4+PiBAQCAt
MTY2LDYgKzE2Niw4IEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZHB0X3BpbihzdHJ1Y3QNCj4g
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSkNCj4gPj4+ICAgICAgICAgICAgICAgaTkxNV92bWFfZ2V0
KHZtYSk7DQo+ID4+PiAgICAgICB9DQo+ID4+Pg0KPiA+Pj4gKyAgICBkcHQtPm9iai0+bW0uZGly
dHkgPSB0cnVlOw0KPiA+Pj4gKw0KPiA+Pj4gICAgICAgYXRvbWljX2RlYygmaTkxNS0+Z3B1X2Vy
cm9yLnBlbmRpbmdfZmJfcGluKTsNCj4gPj4+ICAgICAgIGludGVsX3J1bnRpbWVfcG1fcHV0KCZp
OTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsNCj4gPj4+DQo+ID4+PiBAQCAtMjYxLDcgKzI2Myw3
IEBAIGludGVsX2RwdF9jcmVhdGUoc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICpmYikNCj4gPj4+
ICAgICAgICAgICAgICAgZHB0X29iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGk5
MTUsIHNpemUpOw0KPiA+Pj4gICAgICAgaWYgKElTX0VSUihkcHRfb2JqKSAmJiAhSEFTX0xNRU0o
aTkxNSkpIHsNCj4gPj4+ICAgICAgICAgICAgICAgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIkFs
bG9jYXRpbmcgZHB0IGZyb20gc21lbVxuIik7DQo+ID4+PiAtICAgICAgICAgICAgZHB0X29iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc2l6ZSk7DQo+ID4+PiArICAg
ICAgICAgICAgZHB0X29iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkxNSwgc2l6
ZSk7DQo+ID4+PiAgICAgICB9DQo+ID4+PiAgICAgICBpZiAoSVNfRVJSKGRwdF9vYmopKQ0KPiA+
Pj4gICAgICAgICAgICAgICByZXR1cm4gRVJSX0NBU1QoZHB0X29iaik7DQo+ID4+DQo+ID4+IE9r
YXkgSSB0aGluayBJIGdldCBpdCBhZnRlciBzb21lIG1vcmUgbG9va2luZyBhdCB0aGUgRFBUIGNv
ZGUgcGF0aHMuDQo+ID4+IFByb2JsZW0gc2VlbXMgcHJldHR5IGNsZWFyIC0gcGFnZSB0YWJsZXMg
YXJlIHN0b3JlZCBpbiBkcHRfb2JqIGFuZCBzbw0KPiA+PiBhcmUgbG9zdCB3aGVuIGJhY2tpbmcg
c3RvcmUgaXMgZGlzY2FyZGVkLg0KPiA+Pg0KPiA+PiBDaGFuZ2luZyB0byBzaG1lbSBvYmplY3Qg
aW5kZWVkIGxvb2tzIHRoZSBlYXNpZXN0IG9wdGlvbi4NCj4gPj4NCj4gPj4gU29tZSByZWxhdGVk
IHRob3VnaHRzOg0KPiA+Pg0KPiA+PiAxKQ0KPiA+PiBJIHdvbmRlciBpZiBpbnRlbF9kcHRfc3Vz
cGVuZC9yZXN1bWUgcmVtYWluIG5lZWRlZCBhZnRlciB0aGlzIHBhdGNoLg0KPiA+PiBDb3VsZCB5
b3UgaW52ZXN0aWdhdGUgcGxlYXNlPyBPbiBhIGdsYW5jZSB0aGVpciBqb2Igd2FzIHRvIHJlc3Rv
cmUgdGhlDQo+ID4+IFBURXMgd2hpY2ggd291bGQgYmUgbG9zdCBmcm9tIGludGVybmFsIG9iamVj
dHMgYmFja2luZyBzdG9yYWdlLiBXaXRoDQo+ID4+IHNobWVtIG9iamVjdHMgdGhhdCBjb250ZW50
IHNob3VsZCBiZSBwcmVzZXJ2ZWQuDQo+ID4NCj4gPiBpbnRlbF9kcHRfc3VzcGVuZCBpcyAic3Vz
cGVuZGluZyIgdGhlIHdob2xlIFZNIHdoZXJlLCBub3Qgb25seSB0aGUgZHB0DQo+ID4gb2JqZWN0
cyBhcmUgbWFwcGVkIGludG8sIGJ1dCBhbHNvIHRoZSBmcmFtZWJ1ZmZlciBvYmplY3RzLiBJIGRv
bid0IGhhdmUNCj4gPiBtdWNoIGtub3dsZWRnZSBvbiBob3cgdGhlIGZyYW1lYnVmZmVyIG9iamVj
dHMgYXJlIG1hbmFnZWQsIGJ1dCB0aGUNCj4gc3VzcGVuZA0KPiA+IHJlc3VtZSBwYXRoIHN0aWxs
IGxvb2sgbmVjZXNzYXJ5IHRvIG1lLCB1bmxlc3MgdGhlIGNvbnRlbnQgb2YgdGhlc2UNCj4gPiBm
cmFtZWJ1ZmZlciBvYmplY3RzIGFyZSBhbHNvIHByZXNlcnZlZC4NCj4gDQo+IEkgZG9uJ3QgdGhp
bmsgaXQgaGFzIGFueXRoaW5nIHRvIGRvIHdpdGggZmIgY29udGVudCwgYnV0IHlvdSBhcmUgY29y
cmVjdA0KPiBpdCBpcyBzdGlsbCBuZWVkZWQuIEJlY2F1c2UgOTc1NWYwNTVmNTEyICgiZHJtL2k5
MTU6IFJlc3RvcmUgbWVtb3J5DQo+IG1hcHBpbmcgZm9yIERQVCBGQnMgYWNyb3NzIHN5c3RlbSBz
dXNwZW5kL3Jlc3VtZSIpIHJlbWluZHMgbWUgYmFja2luZw0KPiBzdG9yZSBmb3IgRFBUIFBURXMg
Y2FuIGJlIGVpdGhlciBsbWVtLCBzdG9sZW4gb3IgaW50ZXJuYWwgKG5vdyBzaG1lbSkuDQo+IEV2
ZW4gdGhvdWdoIHdpdGggdGhpcyBwYXRjaCBpbnRlcm5hbCBpcyBvdXQgb2YgdGhlIHBpY3R1cmUs
IHN0b2xlbg0KPiByZW1haW5zIGFuZCBzbyB0aGUgaXNzdWUgb2YgbG9zaW5nIHRoZSBwYWdlIHRh
YmxlIGNvbnRlbnQgcmVtYWlucy4NCj4gUGVyaGFwcyByZXN1bWUgY291bGQgYmUgb3B0aW1pc2Vk
IHRvIG9ubHkgcmVzdG9yZSBQVEVzIHdoZW4gVk0gcGFnZQ0KPiB0YWJsZXMgYXJlIGJhY2tlZCBi
eSBzdG9sZW4gd2hpY2ggbWF5IHdpbiBzb21lIHN1c3BlbmQvcmVzdW1lIHNwZWVkIG9uDQo+IHNv
bWUgcGxhdGZvcm1zLg0KDQpJIHdpbGwgaGF2ZSB0byBsb29rIGludG8gaG93IHN1c3BlbmQgcmVz
dW1lIHdpbGwgY2hhbmdlIHdpdGggdGhlIGN1cnJlbnQgZmxvdw0KYXMgeW91IHNhaWQgaXQgY2Fu
IGJlIGxvb2tlZCBpbiBhIGxhdGVyIHBhdGNoLg0KDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZy
dGtvDQo+IA0KPiA+DQo+ID4+IDIpDQo+ID4+IEkgd29uZGVyIGlmIGk5MTVfdm1hX2ZsdXNoX3dy
aXRlcyBzaG91bGQgYmUgdXNlZCAoYXMgYSBjb21wYW5pb24gb2YNCj4gPj4gaTkxNV92bWFfcGlu
X2lvbWFwKSBmcm9tIERQVCBkcHRfYmluZF92bWEsIGRwdF9pbnNlcnRfZW50cmllcywgZXRjLiBC
dXQNCj4gPj4gdGhlbiBJIGFtIGFsc28gbm90IHN1cmUgaWYgaXQgZG9lcyB0aGUgcmlnaHQgdGhp
bmcgZm9yIHRoZQ0KPiA+PiBpOTE1X2dlbV9vYmplY3RfcGluX21hcCBwYXRoIG9mIGk5MTVfdm1h
X3Bpbl9pb21hcC4gUGVyaGFwcyBpdCBzaG91bGQNCj4gPj4gY2FsbCBfX2k5MTVfZ2VtX29iamVj
dF9mbHVzaF9tYXAgaXRzZWxmIGZvciB0aGF0IG1hcHBpbmcgZmxhdm91ciBhbmQNCj4gPj4gbm90
IGRvIHRoZSBnZ3R0IGZsdXNoaW5nIGluIHRoYXQgY2FzZS4NCkkgYW0gbm90IHN1cmUgaWYgZHB0
X2JpbmRfdm1hIHdpbGwgYmUgY2FsbGVkIGVhY2ggdGltZSBkdXJpbmcgcGlubmluZy4gSU1PIGl0
IGdldHMgY2FsbGVkDQpPbmx5IHdoZW4gdGhlIGZiIG9iamVjdCBuZWVkcyB0byBiZSBiaW5kIGFm
dGVyIGFuZCB1bmJpbmQodHJpZ2dlcmVkIGR1cmluZyBvYmogZGVzdHJveSkuDQpEbyB5b3UgdGhp
bmsgaWYgaTkxNV92bWFfZmx1c2hfd3JpdGVzIHNob3VsZCBub3QgYmUgdXNlZCBpZiBkcHQgb2Jq
ZWN0cyBhcmUgY3JlYXRlZCBmcm9tIGludGVybmFsPw0KT3Igc2hvdWxkIHdlIGhhdmUgYSBkaWZm
ZXJlbnQgZmxhdm9yIG9mIGk5MTVfdm1fcGluX2lvbWFwIHRoYXQgc2tpcHMgaTkxNV92bWFfc2V0
X2dndHRfd3JpdGUNCnNvIHRoYXQgd2UgY2FuIGRyb3AgaTkxNV92bWFfZmx1c2hfd3JpdGVzIGR1
cmluZyB1bnBpbm5pbmcgYW5kIG1vdmUgaTkxNV92bWFfc2V0X2dndHRfd3JpdGUNCnRvIGRwdF9p
bnNlcnRfZW50aXJlcyBhbmQgZG8gaTkxNV92bWFfZmx1c2ggZHVyaW5nIGNsZWFyIHJhbmdlPyBU
aGVuIEkgZ3Vlc3MgX19pOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwDQpjYWxsZWQgZHVyaW5nIHZt
YSBiaW5kIGFuZCBub3Qgb2JqZWN0IHBpbm5pbmcuIEluIGVpdGhlciBjYXNlIEkgYmVsaWV2ZSBp
dCBpcyBhIGxhcmdlciBjbGVhbnVwDQp3aGljaCByZXF1aXJlcyBtb3JlIGV4dGVuc2l2ZSB2YWxp
ZGF0aW9uIGFuZCBhbmFseXNpcy4NCg0KPiA+Pg0KPiA+PiBJbiBzdW1tYXJ5IEkgdGhpbmsgdGhl
IGZpeCBpcyBzYWZlIGFuZCBjb3JyZWN0IGJ1dCBhdCBsZWFzdCBwb2ludCAxKSBJDQo+ID4+IHRo
aW5rIG5lZWRzIGxvb2tpbmcgaW50by4gSXQgY2FuIGJlIGEgZm9sbG93IHVwIHdvcmsgdG9vLg0K
DQpJZiB5b3UgdGhpbmsgdGhpcyBmaXggY2FuIHdvcmsgdGhlbiBJIHdpbGwgbG9vayBpbnRvIHRo
ZSBzdXNwZW5kL3Jlc3VtZSBhcyBhIGZvbGxvdyB1cCBhbmQgd2lsbCBhcHByZWNpYXRlDQphbiBy
LWIgZm9yIHRoaXMgY2hhbmdlLiAgSSBiZWxpZXZlIDIpIGlzIGEgbGFyZ2VyIGNsZWFudXAgdGhh
dCBtYXkgbm90IGJlIGltbWVkaWF0ZWx5IHJlcXVpcmVkLiBJIHdpbGwgaGF2ZQ0KdG8gZGlnIG1v
cmUgaW50byB0aGUgcmFtaWZpY2F0aW9ucyBvZiB0aGUgY2hhbmdlcyBwcm9wb3NlZCBhYm92ZS4N
Cg0KVGhvdWdodHMgPw0KDQotLVJhZGhha3Jpc2huYShSSykgU3JpcGFkYQ0KPiA+Pg0KPiA+PiBS
ZWdhcmRzLA0KPiA+Pg0KPiA+PiBUdnJ0a28NCj4gPj4NCg==
