Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7D97B7814
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 08:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28EC510E0D9;
	Wed,  4 Oct 2023 06:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF69210E0D9
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 06:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696401797; x=1727937797;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bHGOS9wK9h+qgjo5q3JfmUUvoTjBc/tJmFJ1wGy2rXg=;
 b=YM+3RjJoAG0VbudwI/HaKgcuw7dFUGqOqHtHf47u82BqWIVk6kGnBG1B
 c9bT2SkxF2/Oml2QUJ7KQas7kUJM6vfKYewL6qH/ipqU3TZ3eQfb/RfVr
 PG6RkB3trXY9Ir8KIJDxFTsvhh/kIIrbm8aV7LAyxC6welFowhJtTZk2B
 HosO3qqwtE/X63A7Wm0BTi5b6KOpG4OIcQ8zU/xhOnkn7Gc05Zey8DWMq
 KznBlalS4QbptbFLK7khA1gJ/1pl5giQb3tpRNnuCsQdKSVEgFePYDF/k
 nAste9XEVn8vij4FASTaUx8PkZpz30IFLjttGoLSwdDInc4pNTZTwDQ4a g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="373420157"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="373420157"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 23:43:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="816983882"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="816983882"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 23:43:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 23:43:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 23:43:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 23:43:12 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 23:43:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lIkuOKnauBmm/PXuBduTQ1BCYnwbm8TGBob/K51O3hZEcB/hLpQ1GpxaAhhL/a8/PDGZSg48jOtX8JlHCdOOc7VeSp+EoO6taIEVL6iv/+/O7FDIPtOS/oL9pTvsBgdYfpwnjtEdDwZZkiyGElK226Ct2vJC3ANwvG4uTwbfnNlHsUhTxtbFpZW1QzcgeM2F6iL2aLqjwoPhlKnBgQVnSY1mebGZGXqgUtcJHO1hfcozvrXU1T2z4ryAiK1uIL8BOeEHls/Sx6prx8fZjQUfMyNJtLrmcEPnLgbWH9rowMTUl1jkr/xVync78OvTNoX3exPIsuB7RKy2oIgvOgtN/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHGOS9wK9h+qgjo5q3JfmUUvoTjBc/tJmFJ1wGy2rXg=;
 b=EYYUVm02FyLRzSSqS7olQPt35MLkKsGnunMGYcbwr/ADN1JqLzgwdZuJ4ObOBrp1nUYMD/YxHC7gM48MXeaT5KNnGsnAp/J5BxsA4u6WgADBDYiivlUALYmIGnC8fS9DO6rH8q1hkRlq9cbrFt9sWnrll0EzTWmM00BRl2uoPJEdidibIg5F1GNFVaSghX8I7n5VOK6AUxswBYypSPoVrdQx+SNlgt+I42GvFjzXOa+gIk/+5aXlGi+SVHi8/OxEL6RjTcdga3b2f7f/GD92+PIA2bDVX63+w+IY/ccz5IFuME0g2NMe/lKbKUeoOcBV5uKqmYkKHsJjR/UQs9Gvig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 LV8PR11MB8698.namprd11.prod.outlook.com (2603:10b6:408:205::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.34; Wed, 4 Oct
 2023 06:43:05 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::c013:26f7:5743:995b]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::c013:26f7:5743:995b%6]) with mapi id 15.20.6838.028; Wed, 4 Oct 2023
 06:43:05 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v4] drm/i915/display: Created exclusive version of
 vga decode setup
Thread-Index: AQHZ8q9goQthgI4tiEieM4gFyDkx27A5Nl8g
Date: Wed, 4 Oct 2023 06:43:04 +0000
Message-ID: <DM6PR11MB3177410857FB6B18087079D5BACBA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230929074306.1533859-1-uma.shankar@intel.com>
In-Reply-To: <20230929074306.1533859-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|LV8PR11MB8698:EE_
x-ms-office365-filtering-correlation-id: 57e03fc0-859f-4f7b-c622-08dbc4a5299f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MDbpm+//HkcjxwibEGvBJS3WepJyQdcSG1wvJDOptMO0vakMhWsXRgR5XVQHHJZJXeo0L7bbudz3aQQ0R1N+fnRfhdF/goaKXBwU1n9RDQ4YfbyoxQzwIx/f/Lo25DsG0ZzoxQeshrc7N5TUo/24VVrD+ydTY5jIDlKNcU2pefZ/4Ho1HsGjldVa6isytk8tsprPfqf6ZJclR0bntlZhFUWbD8ghkmRL3OyVtUOTcNdpqt9YUHmGWD1TLMx5MaQT/JKmmMMJa2qzJQcr5UVRMtd1CjMmtHudIczKnlGjiOR6MokXuMBm6RTOElIRBMCENeEFrBNLhmdP0Xx9w1HbxUyqz2Hb3k2fuu2emufDFwcdarHtKqma87l/jNPlo5F9oQRJD2gh8zbhvyUcXh5+Vct1z56g4if0DcT7qI6+YRMru09eg3YGOc11d/EzFxEV8RMvco/Wjq2coqdifB/3iQQFok8xaF22ka697lXzDlNvt53/ia4EJWX6TGvzSu7flQW8nS5Q412io9icmC9Vf/5Tf61aBH7XKkqfJ+qzDl0NbjHDhKdlwg2hT8KUSyKPDuOOzD3W1JepyXNMMLBRjObpLUEY22QrHStXqIdQsUiHKr52et14BlZPMl1mAauF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(136003)(366004)(39860400002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(6506007)(71200400001)(7696005)(33656002)(53546011)(55236004)(478600001)(83380400001)(9686003)(107886003)(26005)(316002)(2906002)(110136005)(41300700001)(8676002)(64756008)(66446008)(66476007)(66946007)(66556008)(8936002)(4326008)(52536014)(76116006)(5660300002)(86362001)(38100700002)(122000001)(82960400001)(38070700005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHlvWDZLYlJiV3pFeXBjLzhmVGF3Zlp5ak1PbUV5bE4xTTNvYWRuYXNSdjM2?=
 =?utf-8?B?ZE4rWHpHekhGbi9oQUJTaE9IZzduSkdSZzh0aHZDRmVDYWp1aTFXTEVYMkor?=
 =?utf-8?B?NmNiVXE4Wm5IQkdLZzFDaTB2WC91Y0tMQktSVVV6Ync2bXFjUWE0MHB6ck03?=
 =?utf-8?B?Vm15S0dOeVBzWXo1enl6MXlibGd6bW5wNTU0eWRiOFdGRmZsTlZTZXVaaWlj?=
 =?utf-8?B?UWsyU3k1UGxxSzc1ZTFQVVpqUkttTGRnSGNCOEdLWHBLdkZ1ZHVHOStKbU5k?=
 =?utf-8?B?YTVvUDB1VldoazNsSGFUMVhaMklnc2lrTEoxYmNHdDF2cDdJL2VST2NsSGwr?=
 =?utf-8?B?V2FSdTlCenlRYnVHaWszVkN3SUUrQU4zYnVNVFhEbXdVa01RaElEa05LQ1A1?=
 =?utf-8?B?T1oxWEw1VnZqWGkva0xtN3l3bzhXdVBycUIzcWtmVktVUmF2V05oaUxjd0E1?=
 =?utf-8?B?MlFIejg3a2pmOVlkeHZtazdwZGhIOFc3bkRqMlZBcldJYTdtNE5VbTFxZ2Ey?=
 =?utf-8?B?eGtNSXR5REowcFBnei8vbVBkMENzMVJMQ0J3dFp5dG1vV3dtc3lZYjBXaVln?=
 =?utf-8?B?c0MwRTNsY0E5NlhjLzZaUnVGcm9DK0l5Rk5idWRHcm5rcDVRZXhuelJwM3Jo?=
 =?utf-8?B?ZmlBdm1uNG5YMFRTamozc01BM2hKYW50NmJtUUZVd0wvbVlieDdBS0gwSnBv?=
 =?utf-8?B?RVNZNXZMV3hkSmF6UExaeUQvQUxLV0VVYkpRRGZ6aFphOWVOUkFiL1BZSk5G?=
 =?utf-8?B?Q0IrUGxZMVM0S1hIUHlVNmNVV1dJckVCWTV6b1l6dGd6VmppZmY2S2YyaGYr?=
 =?utf-8?B?dW9keENhZXJvbE45VTUzeFhvRWI3Yy96WjhvV3NlT0Z1T0pIMUgyQlBmWVlJ?=
 =?utf-8?B?U29wU2FBL0ZDcFBML0U1RmRkeUJZMkl3TDI1bU9BcFE2T1c1YzExb1ZhY1dk?=
 =?utf-8?B?cDdHS3k0NFpwSWE0cmFzVktOM1JXZWFBV0tSZDRnMjlIZXRuUDI5MUxHTEI2?=
 =?utf-8?B?TktQQjd5SXo1cXpXL0lxa0NzNUhMc3Z0Mk5EUS9janJlR1BsckRnSmdRZHQr?=
 =?utf-8?B?MVhLOHJ4azBOMlZQanYwalV2bjNwZGZXV2QxMzI4clVXZStDblY2ZUYxYU9k?=
 =?utf-8?B?WTdIS2JmNUxTeE9XNlhCKzRsRkdmQ1VDN0hrUDNFN2VpY3JtL1o5TGFIU0p2?=
 =?utf-8?B?S29iMUdqbkJ2TVcyMnNEWGJQOWVwWFJaY2JtaWx0THJRWmVNaWhoQy9YMkxr?=
 =?utf-8?B?ZDc0YlgvTi93cW54SFJhUHUxM2NHUVF3LzlFYXFLQS9BZm9RQ0EwcklZajMv?=
 =?utf-8?B?WTl4bXc2cXJyaDdXQUo0SXpRQmhhSElNc2RRUkNXSDhESS92MEpvcytsR3R5?=
 =?utf-8?B?KzVpVEVWMi9YbzhNRVZLS0prTkJNQ1p3Q0F5OTBrYUhpYld4TXZRNWRJdVhC?=
 =?utf-8?B?c0liWEExZnhmZlliNDdZZTVVc1VSZzlGZ1VRaEErRW9DZFlUNW1YakxpT0VP?=
 =?utf-8?B?T0JwU095MFNUeVB6WGlianBnT2E1TDFkOW9FS0JHNHVuUjRyQ0FLSmQwU3ZK?=
 =?utf-8?B?WjlFbThJUTcvbGdwaCtGSVdvSzZWWHZyK3dVMkpFQWdHRk9JeDBpc0ZCeTlN?=
 =?utf-8?B?OXk5VEUyOVZaU1gzQmtobTl4dFk5YTVNbG1na3RmYUVvUklhTklkb1duYjR6?=
 =?utf-8?B?VnliazJ1RStseWZPV1h1WkVGYXZvRFE0OTN6Rk5pS3E4b2ZQdmRvY0pEcTRh?=
 =?utf-8?B?Q0lpTEZkMU9XZHZvVmNxbXMwViswVEpwYVI5V1dyS2FlcHRhRHA4OTJ1SE9r?=
 =?utf-8?B?NzN2QWRDSWdFWGM3WXlEVEZmYUt6a3ZmSzgyYmN4M1ZBOFp0bmRoS1hsRHc4?=
 =?utf-8?B?MVhmbFl0ekIrNUhiOVpHUXlmdndENm8waEhhWk1nUUlBdnUrNFVGZlNrUjFH?=
 =?utf-8?B?RDRaWWZGSXdXZlc4ay81bHFESWV1R1F5MUxPQURkSFZ4ODZ2cDAraUhRWHQz?=
 =?utf-8?B?ZU91dTJCdXFGampocXhucUtvQlpyc1pzRDdCNWlOVUl2OWVubk9QYXk3UzFw?=
 =?utf-8?B?UEhNNUpkb0N0UXJxWTVmc0UweHQ3NUl6ZzA5eEZjeFh4SDAyNUtJVTgxMHFX?=
 =?utf-8?Q?5FeXt+dJ0vavN3hOnLDpgPbYI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57e03fc0-859f-4f7b-c622-08dbc4a5299f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2023 06:43:04.9482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u8IeFaiJx82oWAiSaFUQSTLZqXFy+mFGRhE3t0ukvLe3uPV24wGRwiNpGkS3Z18L2XbR1MLKHro1iSbf3YfW+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8698
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v4] drm/i915/display: Created exclusive version of
 vga decode setup
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVW1hDQo+IFNo
YW5rYXINCj4gU2VudDogRnJpZGF5LCBTZXB0ZW1iZXIgMjksIDIwMjMgMToxMyBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFt2NF0gZHJtL2k5MTUv
ZGlzcGxheTogQ3JlYXRlZCBleGNsdXNpdmUgdmVyc2lvbiBvZiB2Z2ENCj4gZGVjb2RlIHNldHVw
DQo+IA0KPiBDdXJyZW50IHZnYSBhcmJpdGVyIGltcGxlbWVudGF0aW9uIGluIGk5MTUgbmVlZHMg
YSByZS1kZXNpZ24uDQo+IFRoZSBjdXJyZW50IGFwcHJvYWNoIHdvdWxkIGNhdXNlIHJlYWwgcHJv
YmxlbXMgaWYgYW55b25lIGFjdHVhbGx5IG5lZWRzIHRvDQo+IHRhbGsgYW5vdGhlciBHUFUgdXNp
bmcgbGVnYWN5IFZHQSByZXNvdXJjZXMuDQo+IA0KPiBUaGUgbWFpbiBpc3N1ZSBpcyB0aGF0IFgg
YmVjb21lcyBhIHNsaWRlc2hvdyBpZiBpdCB0aGlua3MgdGhlcmUgYXJlIG11bHRpcGxlDQo+IEdQ
VXMgdGhhdCBoYXZlIFZHQSBkZWNvZGluZyBlbmFibGVkIGFzIGl0IGluc2lzdHMgb24gYWRqdXN0
aW5nIHRoZSBWR0Egcm91dGluZw0KPiBwcmV0dHkgbXVjaCBmb3IgZXZlcnkgbGl0dGxlIG9wZXJh
dGlvbiBpbnZvbHZpbmcgYW55IG9mIHRoZSBHUFVzLg0KPiANCj4gVGhlIGNsZWFudXAgd2lsbCBi
ZSBwbGFubmVkIGZvciBpOTE1LiBNZWFud2hpbGUgdG8gZm9jdXMgb24gWGUgdXBzdHJlYW1pbmcN
Cj4gYW5kIGhhdmUgYSBjbGVhbmVyIHNlcGFyYXRpb24sIHRoZSBzYWlkIGZ1bmN0aW9uYWxpdHkg
aXMgYmVpbmcgbW92ZWQgdG8gYQ0KPiBkaWZmZXJlbnQgZmlsZSBleGNsdXNpdmUgZm9yIGk5MTUu
IFhlIGRyaXZlciB3aWxsIHJlLXVzZSByZXN0IG9mIHRoZSBkaXNwbGF5IGNvZGUNCj4gZnJvbSBp
OTE1Lg0KPiANCj4gdjI6IEFkZHJlc3NlZCBKYW5pIE5pa3VsYSdzIHJldmlldyBjb21tZW50cy4N
Cj4gDQo+IHYzOiBEcm9wcGVkIGEgZHVwbGljYXRlIGZ1bmN0aW9uIChKYW5pKQ0KPiANCj4gdjQ6
IFVwZGF0ZWQgY29tbWl0IG1lc3NhZ2Ugd2l0aCByZWFzb25pbmcgYXMgc3VnZXN0ZWQgYnkgVmls
bGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPg0KDQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5j
b20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0t
LS0tLS0tDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2Eu
YyB8IDE4ICstLS0tLS0tLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2lu
dGVsX2dtY2guYyAgICB8IDE0ICsrKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9zb2MvaW50ZWxfZ21jaC5oICAgIHwgIDIgKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTcgaW5z
ZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmdhLmMNCj4gaW5kZXggMjg2YTBiZGQyOGM2Li40Yjk4ODMzYmZhOGMg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYw0KPiBAQCAt
MywxMSArMyw5IEBADQo+ICAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbg0K
PiAgICovDQo+IA0KPiAtI2luY2x1ZGUgPGxpbnV4L3BjaS5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4
L3ZnYWFyYi5oPg0KPiANCj4gICNpbmNsdWRlIDx2aWRlby92Z2EuaD4NCj4gLQ0KPiAgI2luY2x1
ZGUgInNvYy9pbnRlbF9nbWNoLmgiDQo+IA0KPiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+IEBA
IC05OSwyMCArOTcsNiBAQCB2b2lkIGludGVsX3ZnYV9yZXNldF9pb19tZW0oc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUNCj4gKmk5MTUpDQo+ICAJdmdhX3B1dChwZGV2LCBWR0FfUlNSQ19MRUdBQ1lf
SU8pOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyB1bnNpZ25lZCBpbnQNCj4gLWludGVsX3ZnYV9zZXRf
ZGVjb2RlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBib29sIGVuYWJsZV9kZWNvZGUpIC17DQo+IC0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBwZGV2X3RvX2k5MTUocGRldik7DQo+IC0N
Cj4gLQlpbnRlbF9nbWNoX3ZnYV9zZXRfc3RhdGUoaTkxNSwgZW5hYmxlX2RlY29kZSk7DQo+IC0N
Cj4gLQlpZiAoZW5hYmxlX2RlY29kZSkNCj4gLQkJcmV0dXJuIFZHQV9SU1JDX0xFR0FDWV9JTyB8
IFZHQV9SU1JDX0xFR0FDWV9NRU0gfA0KPiAtCQkgICAgICAgVkdBX1JTUkNfTk9STUFMX0lPIHwg
VkdBX1JTUkNfTk9STUFMX01FTTsNCj4gLQllbHNlDQo+IC0JCXJldHVybiBWR0FfUlNSQ19OT1JN
QUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVNOw0KPiAtfQ0KPiAtDQo+ICBpbnQgaW50ZWxfdmdh
X3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KSAgew0KPiANCj4gQEAgLTEy
Nyw3ICsxMTEsNyBAQCBpbnQgaW50ZWxfdmdhX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQ0KPiAgCSAqIHRoZW4gd2UgZG8gbm90IHRha2UgcGFydCBpbiBWR0EgYXJiaXRy
YXRpb24gYW5kIHRoZQ0KPiAgCSAqIHZnYV9jbGllbnRfcmVnaXN0ZXIoKSBmYWlscyB3aXRoIC1F
Tk9ERVYuDQo+ICAJICovDQo+IC0JcmV0ID0gdmdhX2NsaWVudF9yZWdpc3RlcihwZGV2LCBpbnRl
bF92Z2Ffc2V0X2RlY29kZSk7DQo+ICsJcmV0ID0gdmdhX2NsaWVudF9yZWdpc3RlcihwZGV2LCBp
bnRlbF9nbWNoX3ZnYV9zZXRfZGVjb2RlKTsNCj4gIAlpZiAocmV0ICYmIHJldCAhPSAtRU5PREVW
KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NvYy9pbnRlbF9nbWNoLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxf
Z21jaC5jDQo+IGluZGV4IDQ5YzdmYjE2ZTkzNC4uZjMyZTlmNzg3NzBhIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmMNCj4gQEAgLTUsNiArNSw3IEBADQo+IA0KPiAg
I2luY2x1ZGUgPGxpbnV4L3BjaS5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L3BucC5oPg0KPiArI2lu
Y2x1ZGUgPGxpbnV4L3ZnYWFyYi5oPg0KPiANCj4gICNpbmNsdWRlIDxkcm0vZHJtX21hbmFnZWQu
aD4NCj4gICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4NCj4gQEAgLTE2NywzICsxNjgsMTYgQEAg
aW50IGludGVsX2dtY2hfdmdhX3NldF9zdGF0ZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgYm9vbCBlbmFibGVfZGVjb2RlKQ0KPiANCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gKw0K
PiArdW5zaWduZWQgaW50IGludGVsX2dtY2hfdmdhX3NldF9kZWNvZGUoc3RydWN0IHBjaV9kZXYg
KnBkZXYsIGJvb2wNCj4gK2VuYWJsZV9kZWNvZGUpIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IHBkZXZfdG9faTkxNShwZGV2KTsNCj4gKw0KPiArCWludGVsX2dtY2hfdmdh
X3NldF9zdGF0ZShpOTE1LCBlbmFibGVfZGVjb2RlKTsNCj4gKw0KPiArCWlmIChlbmFibGVfZGVj
b2RlKQ0KPiArCQlyZXR1cm4gVkdBX1JTUkNfTEVHQUNZX0lPIHwgVkdBX1JTUkNfTEVHQUNZX01F
TSB8DQo+ICsJCSAgICAgICBWR0FfUlNSQ19OT1JNQUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVN
Ow0KPiArCWVsc2UNCj4gKwkJcmV0dXJuIFZHQV9SU1JDX05PUk1BTF9JTyB8IFZHQV9SU1JDX05P
Uk1BTF9NRU07IH0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRl
bF9nbWNoLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5oDQo+IGlu
ZGV4IGQwMTMzZWVkYzcyMC4uMjNiZTJkMTEzYWZkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NvYy9pbnRlbF9nbWNoLmgNCj4gQEAgLTgsMTEgKzgsMTMgQEANCj4gDQo+ICAjaW5jbHVkZSA8
bGludXgvdHlwZXMuaD4NCj4gDQo+ICtzdHJ1Y3QgcGNpX2RldjsNCj4gIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlOw0KPiANCj4gIGludCBpbnRlbF9nbWNoX2JyaWRnZV9zZXR1cChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSk7ICB2b2lkDQo+IGludGVsX2dtY2hfYmFyX3NldHVwKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsgIHZvaWQNCj4gaW50ZWxfZ21jaF9iYXJfdGVhcmRv
d24oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOyAgaW50DQo+IGludGVsX2dtY2hfdmdh
X3NldF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgYm9vbCBlbmFibGVfZGVj
b2RlKTsNCj4gK3Vuc2lnbmVkIGludCBpbnRlbF9nbWNoX3ZnYV9zZXRfZGVjb2RlKHN0cnVjdCBw
Y2lfZGV2ICpwZGV2LCBib29sDQo+ICtlbmFibGVfZGVjb2RlKTsNCj4gDQo+ICAjZW5kaWYgLyog
X19JTlRFTF9HTUNIX0hfXyAqLw0KPiAtLQ0KPiAyLjQyLjANCg0K
