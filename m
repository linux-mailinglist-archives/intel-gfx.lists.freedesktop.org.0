Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54048082EF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 09:25:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CAF210E17F;
	Thu,  7 Dec 2023 08:24:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC96410E17F;
 Thu,  7 Dec 2023 08:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701937498; x=1733473498;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=atlR4xUc+KZWE95n55HLKXwpjwJhTtUMz0hvGgIcxgY=;
 b=QO8Ih5/oxvykGo+3I886qBZxZ2fGdduf9IlJkds4HJzYbrMNwsgch+lE
 nn3lnFlqSbENMWsZuX3bPfmuGz3150AMns6HkJBwPyXglaFH58DGDVFG8
 0EPearanyFXiQwtW7zSLnOTvge9A4nTDFKQ3lF6tz+cbHsi/fzVlJo4gY
 MlFDuHH08IR4XmMeW9KOjHujEeJ3Tux3PJT/jNY2tpW9UIsZFjUt4Mi9f
 /4/CoQppv6nRnUFDLEXbzhik0WFzTzVrdgQUzbtIzAnvbwltZp3rszAeH
 icAyH8N5cu6ogXkNCD5NK2j5wo6x3Q0lClsbdN0N5aEbJqBAXu4SM2wN9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1301626"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1301626"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 00:24:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="747892553"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="747892553"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 00:24:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 00:24:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 00:24:49 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 00:24:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R/QGV9ZIwAg8NnrXqXnKh5jMA7r6yE8h7nxIAtS2996fxuZDBZgk88vJTJiaCVbt/rLt72YgU7zQbzd7zTM0GH3WPDPoVIshIEWC0543OZTDaUdTMGn+e3C0V72pPGezmSa7yxHFaBLsa4GX8BIedhRuav5UrmX8Zhcf4hbtT/NY5AO5BImqUh2l22Zs35PlgnSKulSJUnDLFzQDA0p3xxe117XlssuKcLYKbARDWztMDYzDccg3yg0Aj6sLCKyQUXJryGgUtqGmphd+22oKwaRn/hg56VW2SVL2dgohPwp81klBMsLHn4Ye/19KcpWdVW6RAGEv2dFNw2QeWGL27Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atlR4xUc+KZWE95n55HLKXwpjwJhTtUMz0hvGgIcxgY=;
 b=Dpq+VIjKR/2+wv0rQ/9JLImXzIDj+6geKMry0CNMWmC7laVdzwi1GRRMATKjkap/iOq8398sAOYdwcJmJ56/wxfbp//bDfItsx6QUV0BXgYfjRs6xi32jofV6ySAB5lMtQAtiBovQrqT5E3aJQ6pkiSUeUcvMvkMG0Lpi7yrPxPpidrxYprXFbobz+Awhl9m5EPEp4gIQ77j1Tomw/4/JhBsD4q7R8GRmwwrLbZczXjoo8DysOTZm9lxbNewO/XF7C7cerCoOI3wOAUwbtoNmIcuxR+ys3z8OpjN4NF9FC8y8NZ76sx5/Te6Jp7lE5owIVA9RLdLOJQVVOSSvPjqcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6355.namprd11.prod.outlook.com (2603:10b6:510:1fd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Thu, 7 Dec
 2023 08:24:47 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 08:24:47 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v7] drm/i915: handle uncore spinlock when not
 available
Thread-Index: AQHaJD1nrlEkbEHWek2sMOYpaI+a+LCdhTCA
Date: Thu, 7 Dec 2023 08:24:47 +0000
Message-ID: <804a8a8ea0f69fc6dc7bad571ee30fc774cdbdd4.camel@intel.com>
References: <20231201100032.1367589-1-luciano.coelho@intel.com>
In-Reply-To: <20231201100032.1367589-1-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6355:EE_
x-ms-office365-filtering-correlation-id: cd425612-543d-4f75-85fa-08dbf6fdf95e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wVapsjsZWBWGGo1Phr06VQAmY/JjP3N/CE4TIh9wzKDhx8wFef0G2h9eobpo8LiMHuVz3hpkUjYAqlC2QjrFYZe69HQYzT+QngKyeD2jH0gG153HHDuPlm7zcFSzEr/foQsJY7i6mO1DpTT8K72ReseXcLWEAIxI3B8riaa4mYkcZnV1qh90IhpS+xNdrLED0L5j78VhAdpY8Xz+PAQfBF4Plb74NjiSyPBpg5HVZdPlpMO2J0+TzTzrzdQAbEkgQXedYci7KW4K+DVhzKt+R75b+ZYNcsDs4ngBBNt5jRImLnI8UNc7mSTZfNMQJGKcN3EVM21B8HNLfgi+LvOUrtwHS0SZob0VqfKk10EUy/G87SsSgkNdX20Qsy5ZAzzgO917xVo5IItU0Iv5BK2Ps6/HW+tkAzJx/Zcf5kp9havfUnOMEJ2RL4LBdoQ9qYfvTVTz5g4P0VdZ/htgSwWCmNxVl6K1Y1nlfUrPM2wKFql0OKvFrnrRXkK2HxfQ+ICYVzXhpfkqYvqrCM102373oJc8N8LQd0+wtLpyHDD9Qt/RxuamD/o3o/rfjsVkk5Ck4Rh+bj5KyUwKC4AeXrrZ0mjvg7ZdfMpUyFmrTPh34mhyQO8jqgR+3A6GVpOe0bL5a3hH4jp9lSSMvp2MmAQqm74sJzrv0TYeIg5GF6aepnY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(366004)(39860400002)(346002)(230173577357003)(230273577357003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(5660300002)(2906002)(91956017)(110136005)(8676002)(4326008)(76116006)(86362001)(8936002)(66476007)(54906003)(6636002)(316002)(36756003)(66946007)(41300700001)(64756008)(478600001)(6486002)(66556008)(450100002)(66446008)(6506007)(71200400001)(122000001)(38070700009)(107886003)(26005)(2616005)(83380400001)(82960400001)(6512007)(66574015)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aDdZUmdEYVJydVB2bzFZK0crT25oRUtUZFZDS21MdENNMTJvUk1raHpyemwr?=
 =?utf-8?B?Ymg1OEdpa3J4cFFYWlcxUmRWOFYreEhXTXcxN01RU1hoSUFpK0xvdFY4ZW9P?=
 =?utf-8?B?cUM5ZE9yWmcyOG1hRkpvODNKUUZ4T0QvUXVQR3dRcDVBT2hsbURib3dLQ0ZP?=
 =?utf-8?B?Mk1SdHo0dTBDd1c3RDVwRHY4bEhHYjRWRjFONVFJWFpJdnp4K0YwM2ZpNWUx?=
 =?utf-8?B?K25odnREc3FJWkN3Vm96ZTZJR1U4dWtYeGxHajZlZC9mZTBiaG9YUm5nK1c5?=
 =?utf-8?B?QjZKVWpRYmNhTi8zWURGSmJtRyt4bkhtaENsN0prY1EvNFBCQkoxWlc3V0Ix?=
 =?utf-8?B?VWRFWTN2anE0Nk55S0srMHhXMktOUjF4ZjY3MXNUTkxpRmdXbldPR0w0Q21s?=
 =?utf-8?B?NEh0ZlZqSllDL0c2Q0xTTzZUaGlPTzVXZWM1YkpQQ3ord1pqVXBsd1ZjejFu?=
 =?utf-8?B?bDBGWU4yaHVBeTJ4UkhNaUV4endiT3lFUHp6MCsyOTE1OWUwc1owYk5FdDVw?=
 =?utf-8?B?Tk5EVDlIRmRxREM3b1ZBRU05UUJ1aVJ1T3FYNk9VQ1duN1FPOUI0b2YyWkpx?=
 =?utf-8?B?RlFuQTRJL000SzV2d3RRUUE2TGg5UnlYQmtMSVFjQlJRSjVDWnVERGdqUFpT?=
 =?utf-8?B?Wm40QjRkRmR2eDR1bXZZUEZuTGtCQmxZbndkd05OaTZCZTF5ZjdXaHc5K2tm?=
 =?utf-8?B?UDhyNFBrOTcya0I3VEx4T3NNVVlXMDhoekJya0huUVd3cjhRalcxY3RsdGlI?=
 =?utf-8?B?QUM5elZCRS9hcGJsQ0FQSWZoYXM5TTVkU24xQ1JEeERHZTYrNEtuOC9MWWFm?=
 =?utf-8?B?d2hrUi9wUlRRQWRzUTkyTDVhNGg2Um1JTFpvVk1jWFBIUm5DNTI0Q2VSbWVw?=
 =?utf-8?B?YVRzTnJPbnRXNDQ5dUhvTHUxei9KMjVwMUVaNHdjb0hvc0xQMGZhRmVwb1E1?=
 =?utf-8?B?aXl4M0IzVkZmenZ2NVRyZ1VySG5TOEl6ZWtTR3p6L05laE5sS1VOaUp6RXNq?=
 =?utf-8?B?UFNSeXozajlKQmlTeE5XWDBxR05FWXRFdGZNRnUxZXJlTk1jTnVSaXd6SFJQ?=
 =?utf-8?B?SWpwNzNWVzBVT2RBWFFjQVJQOW9qL28vbzJKR1Y1OFFqSzk5ZVR4TFhnMERp?=
 =?utf-8?B?SlQwc0Y3STl0bCtIV2F2ckdFYXdKOXhLSGd5TElPK2FKZEE1TlJQdURDay9a?=
 =?utf-8?B?WTlhRUtZejltbEJBeXFNT29Md29qTlg4Y045LzM1M0FzaEtXUmo3b0c5OTJx?=
 =?utf-8?B?YVVlaU03YjdtbU5SdFpwTUhoOGhFeWcwWGlYc25xdmVvYkVoemR6dFZJaDFW?=
 =?utf-8?B?NHFjNTdiOFRTaDVNZVB2M0YxQ2Vmb1NFOFgvY0t1bmZjOG5zSXdvTGdjN1Ja?=
 =?utf-8?B?akczdUNOR3JHYXdnTDYzd3RlL0o4eGhEcVVBdWVESzZ5TFRISG9iYW5TQ1V0?=
 =?utf-8?B?WDZTYmczMGt6TDFHeXhHMFZuNm1BMGlqZlNwaFhvNWYvU0dmZExvdkVtN2xM?=
 =?utf-8?B?M1pkUmVHNjZQZVIxMnFmMGlpeVZzQlYzTzZUSU5abVBLbkVFSHlXK0dxK1FX?=
 =?utf-8?B?dEtoTk0zemRhd0JFSzYzR0ZPSVB5VXIxZSt1WUZHRUZ4Y1QwSXYrUk9FaVdv?=
 =?utf-8?B?ODIyc1V1VlNleW51ckVCMGJzd0tSWE85ZUxocXV6WGsybFpCdmxKWEFMUnRU?=
 =?utf-8?B?c0lXOUUzQTVOQkhrYTMwcE1XQnZudU04YXNOM3Nyc3poMzhpSSsya2RKU0hR?=
 =?utf-8?B?NHZ3SkRnTEoyZElIR0dLbVdPQUlZbnFRRDZzT3BaZzVHOEdua3Bmc1k5L0hL?=
 =?utf-8?B?L29PNjgzU2RxUjBqTmltdlNwU0NQcFE5RUMyTU8yek1sZ0NpRGF4cE8rUEUx?=
 =?utf-8?B?ODFpZXhlZWFCZzVzc244RzNjSzZzNXo1cmo3N1ZndjdPbXF1U1BUY2xhbUNJ?=
 =?utf-8?B?MVgzSld4QWQ4L0FSN2UvUHU3QWF1dTJObzJDOFBmV1h5MzRMWXZ2bExpcyth?=
 =?utf-8?B?L1FST2VwblQ1c0tjaWNaRXhnRnVhVmNJUys0UjBZRkFEQmR6K01wV3NMSExW?=
 =?utf-8?B?WlNIaThhNVo3VFdMT2U0NDFBM1FncVJLTE1kSHpXMmNYWUU2eUMvUkpKdUxw?=
 =?utf-8?B?NkxHZ3pNR0hEbzd4cktEc2hIOWdHRFVmMEtGQ1pSaEIvamtCSzdNa0VzRjNz?=
 =?utf-8?B?WkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A17A3BC8E7BC704EA6CA873872B9A73F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd425612-543d-4f75-85fa-08dbf6fdf95e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2023 08:24:47.3570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kIR/KpVtbRwsnWY3vrb2BsRqOR+hS8ytlYIjY/dC1KKHza2M6gpPJjnShUGZqdOhQ2qZcffJQtd1A3vRBWXQ5zy4+c8a3fY79pEw7pNmFsM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6355
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTEyLTAxIGF0IDEyOjAwICswMjAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
VGhlIHVuY29yZSBjb2RlIG1heSBub3QgYWx3YXlzIGJlIGF2YWlsYWJsZSAoZS5nLiB3aGVuIHdl
IGJ1aWxkIHRoZQ0KPiBkaXNwbGF5IGNvZGUgd2l0aCBYZSksIHNvIHdlIGNhbid0IGFsd2F5cyBy
ZWx5IG9uIGhhdmluZyB0aGUgdW5jb3JlJ3MNCj4gc3BpbmxvY2suDQo+IA0KPiBUbyBoYW5kbGUg
dGhpcywgc3BsaXQgdGhlIHNwaW5fbG9jay91bmxvY2tfaXJxc2F2ZS9yZXN0b3JlKCkgaW50bw0K
PiBzcGluX2xvY2svdW5sb2NrKCkgZm9sbG93ZWQgYnkgYSBjYWxsIHRvIGxvY2FsX2lycV9zYXZl
L3Jlc3RvcmUoKSBhbmQNCj4gY3JlYXRlIHdyYXBwZXIgZnVuY3Rpb25zIGZvciBsb2NraW5nIGFu
ZCB1bmxvY2tpbmcgdGhlIHVuY29yZSdzDQo+IHNwaW5sb2NrLsKgIEluIHRoZXNlIGZ1bmN0aW9u
cywgd2UgaGF2ZSBhIGNvbmRpdGlvbiBjaGVjayBhbmQgb25seQ0KPiBhY3R1YWxseSB0cnkgdG8g
bG9jay91bmxvY2sgdGhlIHNwaW5sb2NrIHdoZW4gSTkxNSBpcyBkZWZpbmVkLCBhbmQNCj4gdGh1
cyB1bmNvcmUgaXMgYXZhaWxhYmxlLg0KPiANCj4gVGhpcyBrZWVwcyB0aGUgaWZkZWZzIGNvbnRh
aW5lZCBpbiB0aGVzZSBuZXcgZnVuY3Rpb25zIGFuZCBhbGwgc3VjaA0KPiBsb2dpYyBpbnNpZGUg
dGhlIGRpc3BsYXkgY29kZS4NCj4gDQo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydG8udXJzdWxp
bkBpbnRlbC5jb20+DQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0K
PiBDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENj
OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+IC0tLQ0KPiANCj4gDQo+
IEluIHYyOg0KPiANCj4gwqDCoCAqIFJlbmFtZWQgdW5jb3JlX3NwaW5fKigpIHRvIGludGVsX3Nw
aW5fKigpDQo+IMKgwqAgKiBDb3JyZWN0ZWQgdGhlIG9yZGVyOiBzYXZlLCBsb2NrLCB1bmxvY2ss
IHJlc3RvcmUNCj4gDQo+IEluIHYzOg0KPiANCj4gwqDCoCAqIFVuZGlkIHRoZSBjaGFuZ2UgdG8g
cGFzcyBkcm1faTkxNV9wcml2YXRlIGluc3RlYWQgb2YgdGhlIGxvY2sNCj4gwqDCoMKgwqAgaXRz
ZWxmLCBzaW5jZSB3ZSB3b3VsZCBoYXZlIHRvIGluY2x1ZGUgaTkxNV9kcnYuaCBhbmQgdGhhdCBw
dWxscw0KPiDCoMKgwqDCoCBpbiBhIHRydWNrbG9hZCBvZiBvdGhlciBpbmNsdWRlcy4NCj4gDQo+
IEluIHY0Og0KPiANCj4gwqDCoCAqIEFmdGVyIGEgYnJpZWYgYXR0ZW1wdCB0byByZXBsYWNlIHRo
aXMgd2l0aCBhIGRpZmZlcmVudCBwYXRjaCwNCj4gwqDCoMKgwqAgd2UncmUgYmFjayB0byB0aGlz
IG9uZTsNCj4gwqDCoCAqIFBhc3MgZHJtX2kxOTVfcHJpdmF0ZSBhZ2FpbiwgYW5kIG1vdmUgdGhl
IGZ1bmN0aW9ucyB0bw0KPiDCoMKgwqDCoCBpbnRlbF92YmxhbmsuYywgc28gd2UgZG9uJ3QgbmVl
ZCB0byBpbmNsdWRlIGk5MTVfZHJ2LmggaW4gYQ0KPiDCoMKgwqDCoCBoZWFkZXIgZmlsZSBhbmQg
aXQncyBhbHJlYWR5IGluY2x1ZGVkIGluIGludGVsX3ZibGFuay5jOw0KPiANCj4gSW4gdjU6DQo+
IA0KPiDCoMKgICogUmVtb3ZlIHN0cmF5IGluY2x1ZGUgaW4gaW50ZWxfZGlzcGxheS5oOw0KPiDC
oMKgICogUmVtb3ZlIHVubmVjZXNzYXJ5IGlubGluZSBtb2RpZmllcnMgaW4gdGhlIG5ldyBmdW5j
dGlvbnMuDQo+IA0KPiBJbiB2NjoNCj4gDQo+IMKgwqAgKiBKdXN0IHJlbW92ZWQgdGhlIHVtbGF1
dHMgZnJvbSBWaWxsZSdzIG5hbWUsIGJlY2F1c2UgcGF0Y2h3b3JrDQo+IMKgwqDCoMKgIGRpZG4n
dCBjYXRjaCBteSBwYXRjaCBhbmQgSSBzdXNwZWN0IGl0IHdhcyBzb21lIFVURi04IGNvbmZ1c2lv
bi4NCj4gDQo+IEluIHY3Og0KPiANCj4gwqDCoCAqIEFkZCBfX2FjcXVpcmVzKCkvX19yZWxlYXNl
cygpIGFubm90YXRpb24gdG8gcmVzb2x2ZSBzcGFyc2UNCj4gwqDCoMKgwqAgd2FybmluZ3MuDQo+
IA0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMgfCA1MSAr
KysrKysrKysrKysrKysrKy0tDQo+IC0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDQxIGluc2VydGlv
bnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IGluZGV4IDJjZWMyYWJmOTc0Ni4uZmUyNTZiZjdiNDg1
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFu
ay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMN
Cj4gQEAgLTI2NSw2ICsyNjUsMzIgQEAgaW50IGludGVsX2NydGNfc2NhbmxpbmVfdG9faHcoc3Ry
dWN0IGludGVsX2NydGMNCj4gKmNydGMsIGludCBzY2FubGluZSkNCj4gwqDCoMKgwqDCoMKgwqDC
oHJldHVybiAoc2NhbmxpbmUgKyB2dG90YWwgLSBjcnRjLT5zY2FubGluZV9vZmZzZXQpICUgdnRv
dGFsOw0KPiDCoH0NCj4gwqANCj4gKy8qDQo+ICsgKiBUaGUgdW5jb3JlIHZlcnNpb24gb2YgdGhl
IHNwaW4gbG9jayBmdW5jdGlvbnMgaXMgdXNlZCB0byBkZWNpZGUNCj4gKyAqIHdoZXRoZXIgd2Ug
bmVlZCB0byBsb2NrIHRoZSB1bmNvcmUgbG9jayBvciBub3QuwqAgVGhpcyBpcyBvbmx5DQo+ICsg
KiBuZWVkZWQgaW4gaTkxNSwgbm90IGluIFhlLg0KPiArICoNCj4gKyAqIFRoaXMgbG9jayBpbiBp
OTE1IGlzIG5lZWRlZCBiZWNhdXNlIHNvbWUgb2xkIHBsYXRmb3JtcyAoYXQgbGVhc3QNCj4gKyAq
IElWQiBhbmQgcG9zc2libHkgSFNXIGFzIHdlbGwpLCB3aGljaCBhcmUgbm90IHN1cHBvcnRlZCBp
biBYZSwNCj4gbmVlZA0KPiArICogYWxsIHJlZ2lzdGVyIGFjY2Vzc2VzIHRvIHRoZSBzYW1lIGNh
Y2hlbGluZSB0byBiZSBzZXJpYWxpemVkLA0KPiArICogb3RoZXJ3aXNlIHRoZXkgbWF5IGhhbmcu
DQo+ICsgKi8NCj4gK3N0YXRpYyB2b2lkIGludGVsX3ZibGFua19zZWN0aW9uX2VudGVyKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlDQo+ICppOTE1KQ0KPiArwqDCoMKgwqDCoMKgwqBfX2FjcXVpcmVz
KGk5MTUtPnVuY29yZS5sb2NrKQ0KPiArew0KPiArI2lmZGVmIEk5MTUNCj4gK8KgwqDCoMKgwqDC
oMKgc3Bpbl9sb2NrKCZpOTE1LT51bmNvcmUubG9jayk7DQo+ICsjZW5kaWYNCj4gK30NCj4gKw0K
PiArc3RhdGljIHZvaWQgaW50ZWxfdmJsYW5rX3NlY3Rpb25fZXhpdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkNCj4gK8KgwqDCoMKgwqDCoMKgX19yZWxlYXNlcyhpOTE1LT51bmNvcmUu
bG9jaykNCj4gK3sNCj4gKyNpZmRlZiBJOTE1DQo+ICvCoMKgwqDCoMKgwqDCoHNwaW5fdW5sb2Nr
KCZpOTE1LT51bmNvcmUubG9jayk7DQo+ICsjZW5kaWYNCj4gK30NCj4gKw0KDQpXaHkgZG9uJ3Qg
eW91IG1vdmUgdGhlc2UgaW50byBncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMvaD8gVGhlbiB5
b3UNCmNvdWxkIGhhdmUgZW1wdHkgZGVmaW5lcy9mdW5jdGlvbnMgZm9yIHRoZXNlIGluIGdwdS9k
cm0veGUvY29tcGF0LWk5MTUtDQpoZWFkZXJzL2ludGVsX3VuY29yZS5oLiBUaGF0IHdheSB5b3Ug
ZG9uJ3QgbmVlZCB0aGVzZSBpZmRlZnMuIElmIHlvdQ0KbW92ZSB0aGVtIGFzIEkgcHJvcG9zZWQg
eW91IHNob3VsZCByZW5hbWUgdGhlbSBhcyB3ZWxsLg0KDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5k
ZXINCg0KPiDCoHN0YXRpYyBib29sIGk5MTVfZ2V0X2NydGNfc2Nhbm91dHBvcyhzdHJ1Y3QgZHJt
X2NydGMgKl9jcnRjLA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBpbl92YmxhbmtfaXJxLA0KPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaW50ICp2cG9zLCBpbnQgKmhwb3MsDQo+IEBAIC0zMDIsMTEgKzMyOCwx
MiBAQCBzdGF0aWMgYm9vbCBpOTE1X2dldF9jcnRjX3NjYW5vdXRwb3Moc3RydWN0DQo+IGRybV9j
cnRjICpfY3J0YywNCj4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDC
oC8qDQo+IC3CoMKgwqDCoMKgwqDCoCAqIExvY2sgdW5jb3JlLmxvY2ssIGFzIHdlIHdpbGwgZG8g
bXVsdGlwbGUgdGltaW5nIGNyaXRpY2FsDQo+IHJhdw0KPiAtwqDCoMKgwqDCoMKgwqAgKiByZWdp
c3RlciByZWFkcywgcG90ZW50aWFsbHkgd2l0aCBwcmVlbXB0aW9uIGRpc2FibGVkLCBzbw0KPiB0
aGUNCj4gLcKgwqDCoMKgwqDCoMKgICogZm9sbG93aW5nIGNvZGUgbXVzdCBub3QgYmxvY2sgb24g
dW5jb3JlLmxvY2suDQo+ICvCoMKgwqDCoMKgwqDCoCAqIEVudGVyIHZibGFuayBjcml0aWNhbCBz
ZWN0aW9uLCBhcyB3ZSB3aWxsIGRvIG11bHRpcGxlDQo+ICvCoMKgwqDCoMKgwqDCoCAqIHRpbWlu
ZyBjcml0aWNhbCByYXcgcmVnaXN0ZXIgcmVhZHMsIHBvdGVudGlhbGx5IHdpdGgNCj4gK8KgwqDC
oMKgwqDCoMKgICogcHJlZW1wdGlvbiBkaXNhYmxlZCwgc28gdGhlIGZvbGxvd2luZyBjb2RlIG11
c3Qgbm90IGJsb2NrLg0KPiDCoMKgwqDCoMKgwqDCoMKgICovDQo+IC3CoMKgwqDCoMKgwqDCoHNw
aW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2ssIGlycWZsYWdzKTsNCj4gK8Kg
wqDCoMKgwqDCoMKgbG9jYWxfaXJxX3NhdmUoaXJxZmxhZ3MpOw0KPiArwqDCoMKgwqDCoMKgwqBp
bnRlbF92Ymxhbmtfc2VjdGlvbl9lbnRlcihkZXZfcHJpdik7DQo+IMKgDQo+IMKgwqDCoMKgwqDC
oMKgwqAvKiBwcmVlbXB0X2Rpc2FibGVfcnQoKSBzaG91bGQgZ28gcmlnaHQgaGVyZSBpbiBQUkVF
TVBUX1JUDQo+IHBhdGNoc2V0LiAqLw0KPiDCoA0KPiBAQCAtMzc0LDcgKzQwMSw4IEBAIHN0YXRp
YyBib29sIGk5MTVfZ2V0X2NydGNfc2Nhbm91dHBvcyhzdHJ1Y3QNCj4gZHJtX2NydGMgKl9jcnRj
LA0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgLyogcHJlZW1wdF9lbmFibGVfcnQoKSBzaG91bGQg
Z28gcmlnaHQgaGVyZSBpbiBQUkVFTVBUX1JUDQo+IHBhdGNoc2V0LiAqLw0KPiDCoA0KPiAtwqDC
oMKgwqDCoMKgwqBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2ss
IGlycWZsYWdzKTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfdmJsYW5rX3NlY3Rpb25fZXhpdChk
ZXZfcHJpdik7DQo+ICvCoMKgwqDCoMKgwqDCoGxvY2FsX2lycV9yZXN0b3JlKGlycWZsYWdzKTsN
Cj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+IMKgwqDCoMKgwqDCoMKgwqAgKiBXaGlsZSBp
biB2YmxhbmssIHBvc2l0aW9uIHdpbGwgYmUgbmVnYXRpdmUNCj4gQEAgLTQxMiw5ICs0NDAsMTMg
QEAgaW50IGludGVsX2dldF9jcnRjX3NjYW5saW5lKHN0cnVjdCBpbnRlbF9jcnRjDQo+ICpjcnRj
KQ0KPiDCoMKgwqDCoMKgwqDCoMKgdW5zaWduZWQgbG9uZyBpcnFmbGFnczsNCj4gwqDCoMKgwqDC
oMKgwqDCoGludCBwb3NpdGlvbjsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgc3Bpbl9sb2NrX2ly
cXNhdmUoJmRldl9wcml2LT51bmNvcmUubG9jaywgaXJxZmxhZ3MpOw0KPiArwqDCoMKgwqDCoMKg
wqBsb2NhbF9pcnFfc2F2ZShpcnFmbGFncyk7DQo+ICvCoMKgwqDCoMKgwqDCoGludGVsX3ZibGFu
a19zZWN0aW9uX2VudGVyKGRldl9wcml2KTsNCj4gKw0KPiDCoMKgwqDCoMKgwqDCoMKgcG9zaXRp
b24gPSBfX2ludGVsX2dldF9jcnRjX3NjYW5saW5lKGNydGMpOw0KPiAtwqDCoMKgwqDCoMKgwqBz
cGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2ssIGlycWZsYWdzKTsN
Cj4gKw0KPiArwqDCoMKgwqDCoMKgwqBpbnRlbF92Ymxhbmtfc2VjdGlvbl9leGl0KGRldl9wcml2
KTsNCj4gK8KgwqDCoMKgwqDCoMKgbG9jYWxfaXJxX3Jlc3RvcmUoaXJxZmxhZ3MpOw0KPiDCoA0K
PiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHBvc2l0aW9uOw0KPiDCoH0NCj4gQEAgLTUzNyw3ICs1
NjksNyBAQCB2b2lkIGludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90aW1pbmdzKGNvbnN0DQo+IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiDCoMKgwqDCoMKgwqDCoMKgICog
TmVlZCB0byBhdWRpdCBldmVyeXRoaW5nIHRvIG1ha2Ugc3VyZSBpdCdzIHNhZmUuDQo+IMKgwqDC
oMKgwqDCoMKgwqAgKi8NCj4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fbG9ja19pcnFzYXZlKCZpOTE1
LT5kcm0udmJsYW5rX3RpbWVfbG9jaywgaXJxZmxhZ3MpOw0KPiAtwqDCoMKgwqDCoMKgwqBzcGlu
X2xvY2soJmk5MTUtPnVuY29yZS5sb2NrKTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfdmJsYW5r
X3NlY3Rpb25fZW50ZXIoaTkxNSk7DQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqBkcm1fY2FsY190
aW1lc3RhbXBpbmdfY29uc3RhbnRzKCZjcnRjLT5iYXNlLCAmYWRqdXN0ZWRfbW9kZSk7DQo+IMKg
DQo+IEBAIC01NDYsNyArNTc4LDYgQEAgdm9pZCBpbnRlbF9jcnRjX3VwZGF0ZV9hY3RpdmVfdGlt
aW5ncyhjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gwqDC
oMKgwqDCoMKgwqDCoGNydGMtPm1vZGVfZmxhZ3MgPSBtb2RlX2ZsYWdzOw0KPiDCoA0KPiDCoMKg
wqDCoMKgwqDCoMKgY3J0Yy0+c2NhbmxpbmVfb2Zmc2V0ID0NCj4gaW50ZWxfY3J0Y19zY2FubGlu
ZV9vZmZzZXQoY3J0Y19zdGF0ZSk7DQo+IC0NCj4gLcKgwqDCoMKgwqDCoMKgc3Bpbl91bmxvY2so
Jmk5MTUtPnVuY29yZS5sb2NrKTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfdmJsYW5rX3NlY3Rp
b25fZXhpdChpOTE1KTsNCj4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fdW5sb2NrX2lycXJlc3RvcmUo
Jmk5MTUtPmRybS52YmxhbmtfdGltZV9sb2NrLA0KPiBpcnFmbGFncyk7DQo+IMKgfQ0KDQo=
