Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244FB503781
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 18:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670C710E2E0;
	Sat, 16 Apr 2022 16:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060AE10E2E0
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 16:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650126438; x=1681662438;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cnQ6MFU+p+sjdN+2jNdjYYswNSu92ej/MGlVrZdb+OE=;
 b=gF2FUeoplhEXOySDV8ox22LB3wGMM47+0rjO9pIJbgrizLC8NDV8BU5E
 5MZzH3FGRWsIGg7W8/Qt9uD9Y1Rqq6/TM44euxEijuBDMPhIF1iY7YqzO
 MQu/NCJgp5uneihk4sgCLCQF8ndehqWm3T/SBjWJb5/suGlCFrtB9h8AF
 kn9Fw1Yb1eF6IXNSa1QyPsCBBIOZSjzgYQz1qhJjCaNCVwrv4h87nACzB
 BN2SA6SV0txgcKbnti3Cok1Inh95X8casiLR9R/LmQr3cOZ+Iv520e1Hx
 a6TKTLnBONGiSMPmuJQ1JMb/z864BWTg5eU50XcCmJjWkQuKwAQTF8ZvD A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="263060367"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="263060367"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2022 09:27:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="560885959"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 16 Apr 2022 09:27:13 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sat, 16 Apr 2022 09:27:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sat, 16 Apr 2022 09:27:13 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sat, 16 Apr 2022 09:27:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YiJOFK5i5uce7aNIz3m0m2SMjFQ97e3GP5IevjpL48Iu7xSlj1ZgC6fY3Xyjgj669eX8TslkxIlAUuS5kI814qp9eUrS9j9PZ0qdJC2fYQ/4OZNS0rhOX+pAqFGQjbiJsm89eN9oR5x7TFTfnEPFUa6tIBEKv4fv8xkwdi4pn0HmHKPzcS9RV0OtOXuuVlrxyjWMvUDU277pu2mI4xvVhAIY/ICdQPI05Q6BuuKkj9DCid+XlvOXiSzmssNTFDb7pkA0iUNyhKSQypU0qqmDoUnuw9foV3ACPpSN+MDIukHUu8ovlyxdsaTD4Gf5GY4ugfdcDB3ma8T/5cCY0FyPZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cnQ6MFU+p+sjdN+2jNdjYYswNSu92ej/MGlVrZdb+OE=;
 b=d4JgQmcQB0JWqakjVL8Yjm+mEsXm5QUyjx4XEtLXivvoNlgCjNTNIh+o36FDu3FexEEyhfgbJbiH1Pnpt4HmDFXFKEZtkb2s/m2dwsrJZW07AfZWMDHkUcMMOKSBJZL1naUVEcAPyamGf8ZKINwSJJ7IFVJXpH7LT4OZFz9ofi+VYOBye2Mqo5A0Bx2M78maqaqc6QVWknw7N0PYElpkeJbno4foD77P79sA4j1lkiBQndwAjIa96Aj6dDEwrZUvgkeGsID8lj8H2VID6HfScYNbujXNK/qARP/HVuW5y4ndPBH3HOM7K5++5pEajkLUZv2Oz19m774abbfjULr4rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5637.namprd11.prod.outlook.com (2603:10b6:8:33::5) by
 BYAPR11MB2821.namprd11.prod.outlook.com (2603:10b6:a02:c9::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.18; Sat, 16 Apr 2022 16:27:11 +0000
Received: from DM8PR11MB5637.namprd11.prod.outlook.com
 ([fe80::a44e:8eab:e1c3:9264]) by DM8PR11MB5637.namprd11.prod.outlook.com
 ([fe80::a44e:8eab:e1c3:9264%4]) with mapi id 15.20.5164.020; Sat, 16 Apr 2022
 16:27:11 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Srivatsa, Anusha"
 <anusha.srivatsa@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJtL2k5?=
 =?utf-8?Q?15/dmc:_Load_DMC_on_DG2_(rev4)?=
Thread-Index: AQHYUCoSURp2pvErrUS/iuIbLmsn86zv4i4QgACCcwCAAlT44A==
Date: Sat, 16 Apr 2022 16:27:11 +0000
Message-ID: <DM8PR11MB5637D365695117C7AA2F602DDEF19@DM8PR11MB5637.namprd11.prod.outlook.com>
References: <20220413005707.3627314-1-anusha.srivatsa@intel.com>
 <164995946065.1346.15377126225893636507@emeril.freedesktop.org>
 <8e998738cef34abe824fe39c998d39d7@intel.com>
 <20220415043714.zmx7lvsk3q5ve5k5@ldmartin-desk2>
In-Reply-To: <20220415043714.zmx7lvsk3q5ve5k5@ldmartin-desk2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dffcc4c-c283-44dd-d6e6-08da1fc5f560
x-ms-traffictypediagnostic: BYAPR11MB2821:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB2821098D47F41D1C7179817FDEF19@BYAPR11MB2821.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0OQnagVIOT+sLSjvk3JG8UrEUpkcogWAO1X+8wADr+Vm/aFQRQ/3lKHXfFDZCc6DNxB0iQjt+lz3vZcddiEpZahpaIyEYTSTCSum3yW/vtWONwFx6xC8JK2Myu3iJRy15Q86RCE5NWOLDt+Y7WP/PmwO6HgHUgqV6IFYcbzlXrCtbFn3k/1IdIrYh3YBpDyXijzwOujdddcUs0ZNkqc3HeCPxPUmCAjzO2x7XtJNBpBnQ3GZQhjC9z/hFlR8oQ6S49kLRJIXkcXD9f2tPwFkW6V4O5UxatFTydH6OnOpAb1ciZk6lKcps863MBUaJjP/i4CHN5GZmYbRbeH8cX7/f+bHeW10Ukqyxlh7BGUm/RQXopGkbPbD+6oUV9TVThGn/qAYtI+A182TxAkGrucD2muuySJXZPVYdI37M8w8LPEcZSi6faot3Wfr7eryYl19gFhmW941pXol6GxKqmZxvFMt6Eu71qsVW5damzx1ZvJXrRN+hsNKUfmv/TsSJYc3lLUAe8xcxIzEvK+aQgaQiYQWcru5rGEhaUzLoX7HcKbJ9Izmu3y6DKUYldbSwBTsNCKXo9FzEBvHXzXnZ/+NBG1ll6jS5doSN/rynYWbE/FymMaFiH22NdDuxqbZ7O+9iAPIJz8wRG/hyqBgDgTB7SAeZFMc70xYZzrYZiFRwdwh95jnJCFXC6txu8j5GdhdEYS2ecGARjAMRKoPK3rCscTx3cfjxi/aOCesrss2Pe78bjgCjqhjkkOmc7fnsVzNvadZtegY+AF160E8FkTqRd84KGx2MdgR4euk3Ok1zqZq6XJG58LanpL8TvxRU55QgQHRLTedQ7snwyia3rgO0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5637.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(2906002)(38100700002)(110136005)(122000001)(82960400001)(86362001)(38070700005)(186003)(54906003)(26005)(508600001)(71200400001)(966005)(6506007)(7696005)(76116006)(5660300002)(66946007)(66556008)(66476007)(66446008)(64756008)(4326008)(55016003)(52536014)(8936002)(316002)(83380400001)(6636002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWhtRkI2MEplUlFVTGpzdWxMWGYyRmNCM0wrM2FNeXVOTW9Zc2lkWnJlN1kr?=
 =?utf-8?B?V1AxT1p4RFUrdjRIY3dBZEdxSnhiRHBrMGpuSytTcHhhc0VvY2dVUmQvSG54?=
 =?utf-8?B?WUV1b2paSWJYckJkV3h4N0V1K3BkSTF5T1hvb0cwdWJiTzlKdjV0MEFLZ2R0?=
 =?utf-8?B?ZnQ2T3dnWTBOb2N3RWFtOExaZmNNaXIwMVRGS2ZPSVl6RFJWNE9YNGdBYXNq?=
 =?utf-8?B?YzMrM3R0UTIyZjE3aUlxTXI0cnhWMkdXeTZuMVNUakVkSGFQREliRDFMNC8w?=
 =?utf-8?B?dTh1b2R0cTlOZkZCWVZGdmRCbko1aGt3dmZmV1lwZWNOSUtudytCT1VHQllw?=
 =?utf-8?B?Mmt3NGk3REMrZlpCSENOSDdpVmlkdGl2eUtoZGR2VEpDMnZjUHV6UktUSUpY?=
 =?utf-8?B?UHIrVmpLRFl4VHlZbGFCMEVCWjF3SC90bmlpS3RETDNHR21oYTVHRFpCQ2NY?=
 =?utf-8?B?VnljalpndmhtRHowSjZjUVJ3SEF6UUpOOUxzZzgzbHZDN2ZaUGJNZEx3V1Vs?=
 =?utf-8?B?bWFlUU5qT0hCSFQwRFNTQzJ0aVd4MStlelhBRVUrMWFmZzNrSEk5ay95UC9k?=
 =?utf-8?B?WjhsTnYvSjhMQWQ3Qi8xdDFzM21GQVZyQjZFVGRxeHVCcTAwL2UrTHhhUXRk?=
 =?utf-8?B?SDRVeFg2dnVQcUpFYzhhcnF4RlhJRXRUQ1U4cXd4MDFYOEZERWZlMCszMDZO?=
 =?utf-8?B?ZDU3RWtwUnRJOElxVVFiNjhtSjQ1UURkTkE1YjdxSyt6ZnJXNnhQU3lrdTBK?=
 =?utf-8?B?SURXN05nUTdadFJvbitaYW0vTmFiaEw4ajcyNmxXSkpEc3N2a1RmRTZmZ1JL?=
 =?utf-8?B?dDhlNWx0bEl4K2hBK1Fld25tUXhUTW5SeFh4YlBMTHNRa1IyMFUxTmszeDQ0?=
 =?utf-8?B?dlBkYlNZRHEyZklSdmJjaGhVQnpIdno4Z3RDeWQzd1psa0hndDlOQU9MRURo?=
 =?utf-8?B?c0ZLOGtaYUJMZGFidUFhY3FrcnQ3aEZoTnR5SlhQblppbTk1dTZBdk5GN1ln?=
 =?utf-8?B?ZXVuYWo0c2hMcUhIZnBmSVN4eVVYRW55VUJRN2tHNHg0L0JoVDhTZjRaN0Ns?=
 =?utf-8?B?Si9mcW9KaDduL1BpbVl3eGdGVVBMVjNZQ0VFZkMxalVnaVJCOGJiajMxNE5J?=
 =?utf-8?B?Y3RzWi9aWmFXL1YrV0IrOGh5NFQzaXRsdVVoazVBZE9NUEE0VGR4N3N4NEpq?=
 =?utf-8?B?cFJUeHdOQllFZnJFUFRFV0sySEpYU1VHUUtNNVV3UE9ZaXFsUmR1VVhkMlFv?=
 =?utf-8?B?TStnWm1LeE5CTnlQTjRRYk9FNmllZFhYcUlYUElLZjd0Y0JTM1FFaG5UTHk5?=
 =?utf-8?B?M2JTV0JURVQ3RjB2UDY5eGVCa1lrWmw2NzZUZ1k2clRJQnZnUzF6ZEZkOXV5?=
 =?utf-8?B?SjUwOTA2cjVwOWgwNjc5NGNablV1T0RxTWZiNGkzREdBZjVXUHlqSXRaNUI3?=
 =?utf-8?B?WENqRThpVlZVNEZVNy9SamZSTmJtTU5YeEV2T0ZrU3FEbmRFbjNyTkIxc0U5?=
 =?utf-8?B?U0lVQ0x1TCt2VlY4ZHBrdlNYMlpXYVAzUEo2UVVWR2xLcnoxL0J2a1hPRUdQ?=
 =?utf-8?B?Q2xkOFA3K2RCZXFyY0xVT1NuMXFJMmxWM3JxcXVjeURRZUprWFR2Ri9HVE9Q?=
 =?utf-8?B?L21HelROa2dMREJsQnZLRkxNb0JsczZubE55VlcvRnY3K2xjaVAyT0lrdHYv?=
 =?utf-8?B?OCtGR0ZadXJIYUUxdkhDYkExQ0o2QjViU1Vkem1CNHFiSEYvUzdhR1FMenRH?=
 =?utf-8?B?ZjZ6cnBUbjBpMTJIVkxqMjU2OHBKTS84VUsvUDlCRXhod1V3V3hDNVkrR3Fj?=
 =?utf-8?B?eit3WElVZkNYQXZKaG5VeGppZUVndzRBY0VkazFTNFN2d3MrMlhTenc3RjV1?=
 =?utf-8?B?cW02UUhQdTZ2bUdEd3czVGp3ZTdUYkJLeWxDeS93TzBnekpJQ3R1VDBDdmF1?=
 =?utf-8?B?UmNXNE8vekhtRlY4Vy9RQ05CR2YwS2ptZ1o1Rmt2cTlhbEZNSTdZTWV3bW5T?=
 =?utf-8?B?VVA2eUJ1NFNwNUJEd3gzdnorSlBKVEVHUU5JSG4za05oaEZBYWJTYTJhWS8v?=
 =?utf-8?B?MEM3c1JMb3BJdkRTQ2liQktDZXlmRUhmZ1pJV2xmdFFEek5lUERFS1BEdmNL?=
 =?utf-8?B?ZENuWHVXSUZhN3VOdkt2K3RlczFjVzkzWGEzUmlVOWNCYS8xQ2xVYXcvQUV3?=
 =?utf-8?B?ZDFpSnFUVGRDcEExbWlFYW85UnVlMmNGWlkwRm9tV01makpTQTRGRVVtdkJ0?=
 =?utf-8?B?KzJUenRydllmWDNwQ2RJeWVlOWJ1ZWFIbXVjOXN3eDFaUXUzNXc0UDEvZWo1?=
 =?utf-8?B?UVNSYmtkalhiN0E5VHNkenRsRzJKZWtLZkpFTGRsUCt1RjBTcFJCOUhqVllI?=
 =?utf-8?Q?rUyQWlZk6oPG1+70=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5637.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dffcc4c-c283-44dd-d6e6-08da1fc5f560
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2022 16:27:11.1348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1rHVzP4zIKUVN3kqhr5VmmZchYQ+9qar+s8d7EIjGFRJ7gxUZW8uXKvHerqLXb72SpvWuOADHkW8MbwZkuZT2KOhWvH+RmNLZQ+1d2o54mU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2821
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Load_DMC_on_DG2_=28rev4=29?=
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
Cc: "'intel-gfx-ci@eclists.intel.com'" <intel-gfx-ci@eclists.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyB3ZWVrIEkndmUgYmVlbiB3b3JraW5nIHRvIGdldCB0aGUgUHVibGljIENJIHdvcmsgbW9y
ZSByZWxpYWJseQ0Kb24gYmF0LSogbWFjaGluZXMgd2hpY2ggYXJlIGhvc3RlZCBvbiBhIGRpZmZl
cmVudCBzaXRlLg0KDQpUaGUgQkFUIGZvciBJR1QsIElHVFBXLCBDSV9EUk0gYW5kIFBhdGNod29y
ayBzZWVtcyB0byBiZSBzdGFiaWxpemVkDQpwcmV0dHkgd2VsbCwgYW5kIHByb2JhYmx5IFRyeWJv
dC9Ucnlib3RJR1Qgd2lsbCBiZSBhZGRlZCBzb29uIGVub3VnaC4NClRoaXMgaXNuJ3QgYSBwcm9t
aXNlIHRoYXQgZXZlbiBvbmUgREcyIGlzIGFsd2F5cyBwcmVzZW50IG9uIHRlc3Rpbmc6IHRoZQ0K
cHJlLXByb2R1Y3Rpb24gcGxhdGZvcm1zIGFyZSBhcyBmaWNrbGUgYXMgZXZlci4gSWYgREcyIHJl
c3VsdHMgYXJlIG5lZWRlZCwNCmFuZCBub25lIG9mIHRoZSBERzIgbWFjaGluZXMgd2VyZSBzdWNj
ZXNzZnVsbHkgcmVib290ZWQgd2l0aCB0aGUNCmRHUFUgcHJlc2VudCwgYmVzdCBJIGNhbiBkbyBp
cyAncmUtdGVzdCB0aGUgc2VyaWVzJy4NCg0KRm9yIEZVTEwsIHdlIGNhbid0IGVuYWJsZSBhbGwg
dGhlIGJ1aWxkcyBvbiBhbGwgc2hhcmRzIGJlY2F1c2UgbGFjayBvZg0KbWFjaGluZSBob3Vycy4g
REcyIGhhcyBodW5kcmVkcyBvZiBtb3JlIHRlc3RzIHRoYW4gdGhlIG5leHQgd29yc3Qgc2hhcmQs
DQp0aGUgdGVzdHMgdGFrZSBtb3JlIHRpbWUsIGFuZCB3ZSBoYXZlIGxlc3MgREcycyB0aGFuIHRo
ZSBuZXh0IHdvcnN0IHNoYXJkLg0KSW4gdGhlIGVuZCwgd2UgcHJvYmFibHkgZW5kIHVwIGhlcmUg
d2l0aCBhIHcvYTogREcyLXNwZWNpZmljIGJsYWNrbGlzdCBmb3INCnRoZSBtb3N0IGNvbW1vbmx5
IGhhbmdpbmcsIGFuZCBsb25nZXN0IGxhc3RpbmcgdGVzdHMuDQoNClJlZ2FyZHMsDQoNClRvbWkN
Cg0KDQo+IEZyb206IERlIE1hcmNoaSwgTHVjYXMgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4N
Cj4gDQo+IE9uIFRodSwgQXByIDE0LCAyMDIyIGF0IDA4OjU0OjQ5UE0gKzAwMDAsIEFudXNoYSBT
cml2YXRzYSB3cm90ZToNCj4gPkhJLA0KPiA+DQo+ID5UaGUgcmVzdWx0IGhlcmUgc2F5cyBTVUND
RVNTIGJ1dCBjbG9zZXIgbG9vayAgc2hvd3MgdGhhdCBpdCBuZXZlciByYW4gb24gYW55DQo+IERH
Mi4gV2FudGVkIHRvIGtub3cgaWYgc29tZXRoaW5nIHdlbnQgd3JvbmcgYXQgdGhlIHN5c3RlbSBz
aWRlIGFuZCBpZiBpdA0KPiBuZWVkcyB0byBiZSByZXZpdmVkLiBUaGUgcGF0Y2ggaXMgc2ltcGx5
IGxvYWRpbmcgRE1DIGFuZCBzaG91bGRu4oCZdCBjYXVzZQ0KPiB0aGUgc3lzdGVtIHRvIG5vdCBi
b290IHVwIGF0IGFsbC4NCj4gPg0KPiA+QW55IGluZm8gaW4gdGhpcyByZWdhcmQgd2lsbCBiZSB2
ZXJ5IHVzZWZ1bC4NCj4gDQo+IEkgdGhpbmsgdGhlIGlzc3VlIGlzIGxlc3MgYWJvdXQgdGhlIGZl
ZWRiYWNrIHNheWluZyAiU1VDQ0VTUyIgYW5kIG1vcmUNCj4gYWJvdXQgIndoeSB3YXMgaXQgbm90
IHRlc3RlZCBvbiBERzIgYW5kIHdlIGhhdmUgbm8gY2x1ZSB3aGF0IGhhcHBlbmVkPyIuDQo+IA0K
PiBOb3QgZ2F0aW5nIGEgIlNVQ0NFU1MiIG1lc3NhZ2UgaXMgbmVlZGVkIGZvciBwbGF0Zm9ybXMg
dGhhdCBhcmUgdW5zdGFibGUNCj4gZHVlIHRvIG5vdCBiZWVuIGNvbXBsZXRlZCB5ZXQ6IG90aGVy
d2lzZSBhbG1vc3QgYWxsIHBhdGNoZXMgc2VyaWVzIHdvdWxkDQo+IHJldHVybiAiRkFJTCIgYW5k
IGl0IHdvdWxkIGJlIGV2ZW4gbW9yZSB1c2VsZXNzLg0KPiANCj4gU28sIGFzIERHMiBpcyBvbmUg
b2YgdGhvc2UgcGxhdGZvcm1zLCBJIHRoaW5rIGl0J3Mgb2sgdG8gaGF2ZSB0aGlzDQo+IGJlaGF2
aW9yLiBCdXQgaXQncyBub3QgdmVyeSBnb29kIHRvIHNpbXBseSBoYXZlIG5vIHJlc3VsdHMgYW5k
IG5vDQo+IGZlZWRiYWNrIG9uIHdoYXQgcmVhbGx5IGhhcHBlbmVkLg0KPiANCj4gTHVjYXMgRGUg
TWFyY2hpDQo+IA0KPiA+DQo+ID5UaGFua3MsDQo+ID5BbnVzaGENCj4gPg0KPiA+RnJvbTogUGF0
Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4NCj4gPlNlbnQ6IFRodXJz
ZGF5LCBBcHJpbCAxNCwgMjAyMiAxMTowNCBBTQ0KPiA+VG86IFNyaXZhdHNhLCBBbnVzaGEgPGFu
dXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQo+ID5DYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+U3ViamVjdDog4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJtL2k5MTUv
ZG1jOiBMb2FkIERNQyBvbiBERzIgKHJldjQpDQo+ID4NCj4gPlBhdGNoIERldGFpbHMNCj4gPlNl
cmllczoNCj4gPg0KPiA+ZHJtL2k5MTUvZG1jOiBMb2FkIERNQyBvbiBERzIgKHJldjQpDQo+ID4N
Cj4gPlVSTDoNCj4gPg0KPiA+aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy8xMDI2MzAvDQo+ID4NCj4gPlN0YXRlOg0KPiA+DQo+ID5zdWNjZXNzDQo+ID4NCj4gPkRldGFp
bHM6DQo+ID4NCj4gPmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEwMjYzMHY0L2luZGV4Lmh0bWwNCj4gPg0KPiA+Q0kgQnVnIExvZyAtIGNoYW5nZXMg
ZnJvbSBDSV9EUk1fMTE1MDAgLT4gUGF0Y2h3b3JrXzEwMjYzMHY0DQo+ID5TdW1tYXJ5DQo+ID4N
Cj4gPlNVQ0NFU1MNCj4gPg0KPiA+Tm8gcmVncmVzc2lvbnMgZm91bmQuDQo+ID4NCj4gPkV4dGVy
bmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0
Y2h3b3JrXzEwMjYzMHY0L2luZGV4Lmh0bWwNCj4gPg0KPiA+UGFydGljaXBhdGluZyBob3N0cyAo
NDggLT4gNDUpDQo+ID4NCj4gPkFkZGl0aW9uYWwgKDIpOiBiYXQtYWRsbS0xIGZpLXBudi1kNTEw
DQo+ID5NaXNzaW5nICg1KTogYmF0LWRnMi04IGZpLWJzdy1jeWFuIGZpLWljbC11MiBiYXQtZGcy
LTkgZmktYmR3LXNhbXVzDQo+ID4NCj4gPktub3duIGlzc3Vlcw0KPiA+DQo+ID5IZXJlIGFyZSB0
aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTAyNjMwdjQgdGhhdCBjb21lIGZyb20ga25v
d24NCj4gaXNzdWVzOg0KPiA+DQo+ID5JR1QgY2hhbmdlcw0KPiA+SXNzdWVzIGhpdA0KPiA+DQo+
ID4gICogICBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV4ZWNsaXN0czoNCj4gPg0KPiA+ICAgICAq
ICAgZmktYnN3LW5pY2s6IFBBU1M8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LQ0KPiB0aXAvQ0lfRFJNXzExNTAwL2ZpLWJzdy1uaWNrL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
ZXhlY2xpc3RzLmh0bWw+IC0+DQo+IElOQ09NUExFVEU8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzEwMjYzMHY0L2ZpLWJzdy0NCj4gbmljay9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV4ZWNsaXN0cy5odG1sPg0KPiAoaTkxNSMyOTQwPGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzI5NDA+KQ0KPiA+DQo+
ID4gICogICBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGhhbmdjaGVjazoNCj4gPg0KPiA+ICAgICAq
ICAgZmktc25iLTI2MDA6IFBBU1M8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LQ0KPiB0aXAvQ0lfRFJNXzExNTAwL2ZpLXNuYi0yNjAwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
aGFuZ2NoZWNrLmh0bWw+IC0+DQo+IElOQ09NUExFVEU8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzEwMjYzMHY0L2ZpLXNuYi0NCj4gMjYwMC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQGhhbmdjaGVjay5odG1sPg0KPiAoaTkxNSMzOTIxPGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzM5MjE+KQ0KPiA+DQo+
ID4gICogICBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHJlcXVlc3RzOg0KPiA+DQo+ID4gICAgICog
ICBmaS1ibGItZTY4NTA6IFBBU1M8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LQ0KPiB0aXAvQ0lfRFJNXzExNTAwL2ZpLWJsYi1lNjg1MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
QHJlcXVlc3RzLmh0bWw+IC0+DQo+IERNRVNHLUZBSUw8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzEwMjYzMHY0L2ZpLWJsYi0NCj4gZTY4NTAv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXF1ZXN0cy5odG1sPg0KPiAoaTkxNSM0NTI4PGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ1Mjg+KQ0KPiA+DQo+
ID4gICogICBpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGNvbXBhcmUtY3JjLXNhbml0eWNoZWNrLXBp
cGUtYzoNCj4gPg0KPiA+ICAgICAqICAgZmktcG52LWQ1MTA6IE5PVFJVTiAtPiBTS0lQPGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xMDI2MzB2
NC9maS1wbnYtZDUxMC9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGNvbXBhcmUtDQo+IGNyYy1zYW5p
dHljaGVjay1waXBlLWMuaHRtbD4NCj4gKGZkbyMxMDkyNzE8aHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxPiAvDQo+IGk5MTUjNTM0MTxodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy81MzQxPikNCj4gPg0KPiA+ICAq
ICAgaWd0QHByaW1lX3ZnZW1AYmFzaWMtdXNlcnB0cjoNCj4gPg0KPiA+ICAgICAqICAgZmktcG52
LWQ1MTA6IE5PVFJVTiAtPiBTS0lQPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS0NCj4gdGlwL1BhdGNod29ya18xMDI2MzB2NC9maS1wbnYtZDUxMC9pZ3RAcHJpbWVfdmdlbUBi
YXNpYy0NCj4gdXNlcnB0ci5odG1sPg0KPiAoZmRvIzEwOTI3MTxodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzE+KSArMzkNCj4gc2ltaWxhciBpc3N1ZXMN
Cj4gPg0KPiA+ICAqICAgaWd0QHJ1bm5lckBhYm9ydGVkOg0KPiA+DQo+ID4gICAgICogICBmaS1i
c3ctbmljazogTk9UUlVOIC0+IEZBSUw8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzEwMjYzMHY0L2ZpLWJzdy1uaWNrL2lndEBydW5uZXJAYWJv
cnRlZC5odG1sPg0KPiAoZmRvIzEwOTI3MTxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDkyNzE+IC8NCj4gaTkxNSMzNDI4PGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzM0Mjg+IC8NCj4gaTkxNSM0MzEyPGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQzMTI+KQ0KPiA+ICAgICAq
ICAgZmktYmR3LTU1NTd1OiBOT1RSVU4gLT4gRkFJTDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTAyNjMwdjQvZmktYmR3LTU1NTd1L2lndEBy
dW5uZXJAYWJvcnRlZC5odG1sPg0KPiAoaTkxNSM0MzEyPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQzMTI+KQ0KPiA+ICAgICAqICAgZmktYmxiLWU2ODUw
OiBOT1RSVU4gLT4gRkFJTDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+
IHRpcC9QYXRjaHdvcmtfMTAyNjMwdjQvZmktYmxiLWU2ODUwL2lndEBydW5uZXJAYWJvcnRlZC5o
dG1sPg0KPiAoZmRvIzEwOTI3MTxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDkyNzE+IC8NCj4gaTkxNSMyNDAzPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvaXNzdWVzLzI0MDM+IC8NCj4gaTkxNSM0MzEyPGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQzMTI+KQ0KPiA+DQo+ID57bmFtZX06
IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hl
bg0KPiBjb21wdXRpbmcNCj4gPnRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1Ms
IFdBUk5JTkcsIG9yIEZBSUxVUkUpLg0KPiA+DQo+ID5CdWlsZCBjaGFuZ2VzDQo+ID4NCj4gPiAg
KiAgIExpbnV4OiBDSV9EUk1fMTE1MDAgLT4gUGF0Y2h3b3JrXzEwMjYzMHY0DQo+ID4NCj4gPkNJ
LTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiA+Q0lfRFJNXzExNTAwOiA5MWM4MjliYzA5YmUzNWYzZTlh
NjY3NDI3NDk2OWM3MmY2MGI1ZTIyIEANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4DQo+ID5JR1RfNjQyMDogYTM4ODU4MTBjY2MwY2U5ZTY1NTJhMjBjOTEwYTBh
MzIyZWNhNDY2YyBADQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdw
dS10b29scy5naXQNCj4gPlBhdGNod29ya18xMDI2MzB2NDogOTFjODI5YmMwOWJlMzVmM2U5YTY2
NzQyNzQ5NjljNzJmNjBiNWUyMiBADQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dm
eC1jaS9saW51eA0KPiA+DQo+ID49PSBMaW51eCBjb21taXRzID09DQo+ID4NCj4gPjE2ZjY4ZDg3
NjI4ZSBkcm0vaTkxNS9kbWM6IExvYWQgRE1DIG9uIERHMg0K
