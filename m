Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A73C77EAF4C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 12:35:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6420910E205;
	Tue, 14 Nov 2023 11:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C6B10E205
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 11:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699961721; x=1731497721;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yoD3e266yinCIun07Z9OpdT7PgZnPMvUlZCUTXXeEaA=;
 b=N4L4tMMBa51xy7Cm8jRhSEvLj+jhhAEI/7D4k105xJfy+AUNcNNORGbL
 VFnGGoLpOfJqu+Ky+iflXjFKz/aPtfk7M++kQmQXzZjFELI5vg1WHMi9q
 NA0VYcDJt1Z/MUpbDXqoEhZsugdn4QmMf6Qk8seh3TEcGPV7hbcz6EEZp
 +b3KvzbqIVyB12PNTrMSZ0R6McUlkMr2VmkaGLjzNdYjAfkGjc9io78Tg
 1bg58GXUsBaGQNCYUDNT2FAEFfwqIxFW/wiJEPYn6sIEep7oqBOX6VlQ+
 K1l234YjRd9M4uWhVfMT9i1LaPkShZheqdvNQLrtRUcUDL5cSFOIY9Hez g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="370834077"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="370834077"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 03:35:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; 
   d="scan'208";a="5780807"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 03:35:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 03:35:19 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 03:35:19 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 03:35:19 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 03:35:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O6t2dvkG25bvPVDJ6/r5tzjGTsWrNA/X5Luo0jqCONADQ/pO4xR8x6z+WFi9EMV0l5WvoFSG/XlTeks8p5kcScXE4NOYvg+UecSMB2Ab9aF9Cmj3iyVozXhGlHd584Vouz0AfBbixgAF+CXs8WlENF/O3VJEzEkpK4WxWemmHhhFWT4LiezM2IfgLuSUuvQqU571xpJUau8hulWANh8dQ+krns65EsbjtMv7lwz4+2OVYTRAMwc9RheKd6VlSETD+ApwDjpNVvJdPEXh7EFuR+tpgRa04u0LXSI431gAcA5qLosRtAYfiZ1HbgOCpQIP/aGd3bFdBZZ3+vr63gxz7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yoD3e266yinCIun07Z9OpdT7PgZnPMvUlZCUTXXeEaA=;
 b=Gh7Ra7sTtis34yY+TG61xmhkvZCuvWQaJGg8tYkeFTTQP19eG3s1M9565tKSF3fE+Z/rTkyUkODqtqWdusOCFuY68BSf1q1kTRfFcKMHFXP9oSM3ywt/XU/NPbk4XXX8XJobBvQkQLWl/vLiS0gM01nrykwO10oE/bFTu9qGnJ+n0VoYpF2+iig+NqQoTv8ufiRcSimoLjg8/faEf3OfTJPb1Hj3Sr/THuwXhfBfskfjjSGokGkv5HiMCkXy70NyYK1uqIbdKRC9UqnT/RuVs8/VJWxtkM8HzDlXWUj9sPfjP5Muy+q+qwc2yUtcq6tVho35yc62rNfAUXa46YgNGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by SA3PR11MB8023.namprd11.prod.outlook.com (2603:10b6:806:2ff::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.32; Tue, 14 Nov
 2023 11:35:17 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb%5]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 11:35:15 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6] drm/i915/dsb: DSB code refactoring
Thread-Index: AQHaE4dGxoT6TWTVPEe55/4UN3utfrB5sTmAgAACgOA=
Date: Tue, 14 Nov 2023 11:35:14 +0000
Message-ID: <BL1PR11MB5979E2D7AE120E6788E51D6DF9B2A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20231110032518.3564279-1-animesh.manna@intel.com>
 <76aa10504ec29bef5b9c6abef8896b049317ac63.camel@intel.com>
In-Reply-To: <76aa10504ec29bef5b9c6abef8896b049317ac63.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|SA3PR11MB8023:EE_
x-ms-office365-filtering-correlation-id: 0b882c45-1dfd-4f65-a659-08dbe505c53a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t4OGGgXkyAmDDb7U8hhf2+mnAk1raAkywNs3vm8or3rp7K/m5+5cv2yfM4nO5hVVM9NhYaZ7wCaBf0LB/+kXv0Tch0Ypj5mcRzjTkCutIN+YrVJF3gLcbXy8w/gkwizYI7j4/Kv16PnLYoxjHKhjWnwN+qAFLO5fW0hna8mkDokee7WzWXJPpplIisuwCKUDAvUi2VdGva+wBG17DcZiWYqYV2/FUPGeWKo+CmYdJ0FT8HP1/0Xh8jqFY7cbJKcUhkgRBS5wo8ShL/YMoja2vHci5aLl6NIztg/ppI3UqfoTSoJB2+Sj4cHQhQ30aWtILbbkgXVc+5w9rc+YlG67zsCqtPxFR3vMtIYIclPyVK3kI2QhHoC4bSCzk15q2EUL2m+jp5fsmdQZWSPdWZ8OlB+C1jH0ywCR1QxsrJFmABwBcMi1sHqhSOa8llHI9Q1VeH6X7ffS1B9g90wrf+OlluUY3+18HAwzfRwNOIK2umDz7rxfXrXP116AGt3C2tEUcOZvzXiFHFmn3rJ9YFavPxUeNUVdeI1ld5QqueNVMsWFSYhhUeCB0Xk6uRZohKMvsExEWNh/lfda2nJ53Qudp4Qanh4aGhxzWZkmx5vb3vsIxfwKwC3yKtjgIplLoVDuK99CqcXfag7THHL3VJdao8PQ/3X+rqHM+7VEWQIOBAg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(346002)(376002)(39860400002)(230922051799003)(230273577357003)(230173577357003)(64100799003)(451199024)(1800799009)(186009)(38070700009)(86362001)(33656002)(4001150100001)(26005)(4744005)(2906002)(64756008)(83380400001)(54906003)(9686003)(55016003)(5660300002)(66946007)(66476007)(66556008)(66446008)(316002)(478600001)(6506007)(7696005)(6636002)(52536014)(53546011)(6862004)(8676002)(8936002)(71200400001)(4326008)(122000001)(82960400001)(76116006)(38100700002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eFU5c29WWjNTQ3FkZ213d3JQWHVVWE1FRDlEdXp3NWEwOW85Y1lvRHRXVklt?=
 =?utf-8?B?WUllZnVVSlMvblBPYlVZRERPWC9ZSEFldEtUSkpIMTRDdTZ3SWVsWDZYRUJj?=
 =?utf-8?B?dUg2V0J2Y1l2Y3FYbU1UNDh2ckRlY3B6MEZjVENGem0rNFprcTJMN0hWaVZ5?=
 =?utf-8?B?a1B1QllrT3lNYlcrVVpnMDVQWlJDRDF6ZUJNT3E2VDhJWnhxcHJYTm9EWkkv?=
 =?utf-8?B?dWorcGlPTFZMMnAwYlBhRk1EMVNEbE1LaVhEWko1UTR0bmw3NkphVzFyRUZv?=
 =?utf-8?B?VC9qNitZWHhURzNLcGtobHphOUZNSTJwRUVTREkxSE9pd1lIZGlWamZrZUlI?=
 =?utf-8?B?RWJ3ZFJVRVlncGRtdWtYN0htT2pvWUlkU2lXUG5nT3FFeWRJbk9CaDFlY241?=
 =?utf-8?B?elQ2VXl5VEZabldhTlpzVVFGUzhTaVpsM3E4dG1YL0FIcDRhZzNrK1JVTGt0?=
 =?utf-8?B?ME1qalZKUnovcEgrQk1mUVJJQjkwZ2RPbmJaMy9YdERJdHVtcDNSWENJb3Zp?=
 =?utf-8?B?ejBIQUdORVlwTFQxSlJ0TXdJdjNUeWNVTURyUWwra2h1VHdGVjhyZmorQS9U?=
 =?utf-8?B?TExQK1BQc0JjNjVmbzd0c1dJbTJuNXJPdklXZEtpOHQzL0pYVERRL2dXbUpP?=
 =?utf-8?B?NmdsczJOYXlBcEJwVDNaWXdoK0VhazI0L1dxSlh6SnlDby93TERzQkJIaWtm?=
 =?utf-8?B?K2VGbGgyRWhsL1JIRGVnT0VUL1NwS00rYzg3RGkyUHlCWkhtUkxiaHkzTnAv?=
 =?utf-8?B?d3BGUXNHUnNpNFZnaklxZVkyS2oyVGtMOWZxM3Q5MlR3UktCdHpQL1dEM2Z0?=
 =?utf-8?B?ampxREVjVGF6WjZBWUd5QzhiUUt0SkNHOWp0WVNzTzB5OTh2bEhDSkJxZFJV?=
 =?utf-8?B?eUF5U1JlSHRydFJTTDNINDh5QjhxL3lnUjRudmNPODlpMngwTGFxTjVkY1hv?=
 =?utf-8?B?dnNaN212ZXVNUjNLanRZczF2cldkQ2NzTjZnQUJZOWNKbTIvMVI4V2tmMWIx?=
 =?utf-8?B?TXc0TXF4ZURVZUZ3MXI0cE1LV0w3ci9HeWVpUjViQzF1VGczcTVyakVTUVl1?=
 =?utf-8?B?YmFwSUxuZDVwb1RYRWR4K1A2NTNCV1BRMUNkMlMydFRpWC9hcW5IYm1QZUVp?=
 =?utf-8?B?Kzc5QkZDVTd0dlF6QkdwVEVKTzh1SEF4V0hzQ1Z5UnpBaXpqZGlBQU9ic1Zj?=
 =?utf-8?B?MWw1L0RjbWlhUjllVzdFR3c2UkdxekVsTGJIY0RTT3BZY1RvTXcxRE9HcEVz?=
 =?utf-8?B?SHl4YTJMbUtscFhHM2dsSjg3Q1p2N2V6OEpTa2R4QWl2MjlhK2txdkd4dVRB?=
 =?utf-8?B?Q1NzUHZ6bFVmaDVOc1AzWHNHTE9aazAxMEhwaGJjdDQycjBqTEs0OEVYVVpn?=
 =?utf-8?B?RmRUd0xueGk3Y2cwTGlOczl0WEFhL1E5QStwUTRMNk1OSjB5ZnNHTXpDWlFW?=
 =?utf-8?B?eHhrUlBqYTV4T1Jab1IreDNQQ3QrbkFVWDlxOC9YSlkxT1FiWFcvdDVLS2hh?=
 =?utf-8?B?aGdBS1Ewa0ZjSUN0d3ZSM2NRSmc1cmVORE1XdW1WcDhrT1hxY2o5MUgva2ov?=
 =?utf-8?B?K3E5ZzBFVHhQd2tHUHdhL2lPRDA1dGR0ZG93a2dHK1AzeGNvby9yNGVwWUF6?=
 =?utf-8?B?ZFRKVWl4czI3azlkaUtrRlRqOFhNZlhQV3ZzcEZsVGo3U01OcFM0M2NvOWJF?=
 =?utf-8?B?RUxZcE0yMmEzODVXWUQxM0ZmeGEzVXRST0hvZGsrdlpDL0w1ckhQZGdjN0FB?=
 =?utf-8?B?SUdkN1BOd0E4encvcDNEK2RjV2lBS3Q0Ynk5SHZhb0ZCUjJaOC9vVzhBUnVL?=
 =?utf-8?B?RWo4R0ZQN2xaQ0NVbzlnVVpRcExBQUkyM1pDUkdZQW81NFR5cnhqUHFMNktZ?=
 =?utf-8?B?ZnRxK29OTitWc0NVTDdOS0E1bkhDT2E0cjlsbGxKQWRYbWd1N3JmTHFOMjVx?=
 =?utf-8?B?Y3I5aGNlNTAwSGFrLzI0TmpVSjBhSXNkYmVQZ0N2UmxuYmZFMnRkVzFhajN2?=
 =?utf-8?B?MnhrM2FZeU9jSDdPOWxsb3Rpa0h3RjFiUTRTZEViYjhZSGc0eTVlZVVtMXhS?=
 =?utf-8?B?aWwvYnhuNlFBNkVjRGZha21NZk1lNVBtVFpEWlFDWnorZWI3S2YraC9DNHJt?=
 =?utf-8?Q?V8s75KSLMtHqqqGGrwsqXSyif?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b882c45-1dfd-4f65-a659-08dbe505c53a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 11:35:14.9099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xmTmU5+zG2yp+Dc9VWaNGoInDx+ZR5rV3Po3IR4RpxEaFRGtBiUTWP/ky8T6h4EQwnnlS1lMTnh3Sx+wifnUoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8023
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915/dsb: DSB code refactoring
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ29lbGhvLCBMdWNpYW5v
IDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDE0
LCAyMDIzIDQ6NDcgUE0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2Nl0gZHJtL2k5MTUvZHNiOiBEU0IgY29kZSByZWZhY3RvcmluZw0KPiANCj4gT24g
RnJpLCAyMDIzLTExLTEwIGF0IDA4OjU1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+
IFJlZmFjdG9yIERTQiBpbXBsZW1lbnRhdGlvbiB0byBiZSBjb21wYXRpYmxlIHdpdGggWGUgZHJp
dmVyLg0KPiA+DQo+ID4gdjE6IFJGQyB2ZXJzaW9uLg0KPiA+IHYyOiBNYWtlIGludGVsX2RzYiBz
dHJ1Y3R1cmUgb3BhcXVlIGZyb20gZXh0ZXJuYWwgdXNhZ2UuIFtKYW5pXQ0KPiA+IHYzOiBSZWJh
c2VkIG9uIGxhdGVzdC4NCj4gPiB2NDoNCj4gPiAtIEFkZCBib3VuZGFyeSBjaGVjayBpbiBkc2Jf
YnVmZmVyX21lbXNldCgpLiBbTHVjYV0NCj4gPiAtIFVzZSBzaXplX3QgaW5zdGVhZCBvZiB1MzIu
IFtMdWNhXQ0KPiA+IHY1OiBXQVJOX09OKCkgYWRkZWQgZm9yIG91dCBvZiBib3VkYXJ5IGNhc2Ug
d2l0aCBzb21lIG9wdGltaXphdGlvbi4NCj4gW0x1Y2FdDQo+IA0KPiAuLi5hbmQgd2hhdCBpcyBk
aWZmZXJlbnQgaW4gdjY/DQoNClJlYmFzZWQgb24gbGF0ZXN0IGFuZCBmaXggYSByZWJhc2UtbWlz
cyB3aGljaCBDSSBkaWQgbm90IGNhdWdodCB3ZWxsLiBCZWZvcmUgbWVyZ2luZyB3YW50IHRoZSBn
cmVlbiBzaWduYWwgZnJvbSBDSS4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCj4gDQo+IC0tDQo+IENo
ZWVycywNCj4gTHVjYS4NCg==
