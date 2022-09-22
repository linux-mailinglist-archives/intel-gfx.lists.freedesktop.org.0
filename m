Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 030A95E6743
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 17:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033BD10EC28;
	Thu, 22 Sep 2022 15:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E0210EC29
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 15:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663861047; x=1695397047;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=v9jgNUsdwuyAWwIRR4hIkpFJF+3zbhM5FlgFlsxuaEg=;
 b=MThxjTeCHXowRnKg8KuipKSfA2fB8JXxOul9it/Ce7sU1AHBe1xiF6Lc
 skrFpHbSB8gpwAdNPRnsex4IGtTeUh4vK3tX+x+CCae9Nz9E0wk/dBT6B
 iqWFlmiKAz28UfSqZsrT+FGr6rzgGyZpbVDo6ADmX3snCNz9atZ7tbM47
 0Ka2PxHUrIA8XdhBVeVJSXtmAZqomyjHp1Lz4t7xGYhzksWtJcgz08mgi
 bfOOxBQVqUO5pMBzFpUYY8PGXdyStHKbUd0pzlHtEq/DYd9AkTTe67P7q
 yfI3nYw2GC/XxalfnTJqjlyj9WoWXAgi0r64u4wm0Zqj7xVy73/gZAkxF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="297932307"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="297932307"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:37:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="745428153"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 22 Sep 2022 08:37:26 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 08:37:25 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 08:37:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 08:37:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 08:37:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cdjpivZvicv4weK+Ha1PS2sTOXb0ipoIYo128qkQtAfYNds4B/BN9Jo8gCwbfnW5DbRIttTUM3dNfGn5uZrh0Ug3g0+bp61dFLo5rwFiboFv5JcANjOStaFdanHRBFT15H5FKONBJEd8bq2zFocb4Fvv+KBsMMU5/UHoCjCp2HMEak44rMmzT5PnNdIpbmvVhCM4ofPCEEYLYVMKQ0YayAv2xm0427YoLEbDQ8O2CO/O3JeK75hWnQcYT+qENme7s+jYC/DAovC7RhZ5Zp//17UvIC/rdf4Bcs0DsqoU4ykNT/YQ7S4w5RhW6MtWkk/VjCazlYCVdh/GEowOBuBhTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v9jgNUsdwuyAWwIRR4hIkpFJF+3zbhM5FlgFlsxuaEg=;
 b=HzymsaA3bXsOFk0UTr148uaO2GiBRMn/mZKb3RnyF7jkKK+YGjNjXsX6/dn4FMg8XVYbV0CCwGx5RofwdxDxYXm2pYORLH7sA2pac0qV5czLzxXPGRDEsfO1Z39HZf7KFeo+K2k7k7RCYpOFqfbavHrPyundbi5jgUwrGjoIZaasdY5gab3I+R6MGmHXzkYl90kGxWmyaIhOajDhhL5SGK+aJ4PcjZYgcj2n6aDk2LQhRo0+GdUiBWmkEsKU9r6Az67nyFq4wqUIwUrLyjG10TjYAwmESRUbS8qM/VeJCR/WwdrE9BeYDAD1Q0pS6F28FKuMrF2mPA977/yk3wfLfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6213.namprd11.prod.outlook.com (2603:10b6:8:ae::17) by
 MW3PR11MB4604.namprd11.prod.outlook.com (2603:10b6:303:2f::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.19; Thu, 22 Sep 2022 15:37:23 +0000
Received: from DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::ffb5:172b:e135:66a3]) by DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::ffb5:172b:e135:66a3%5]) with mapi id 15.20.5654.018; Thu, 22 Sep 2022
 15:37:23 +0000
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEltcHJvdmVt?=
 =?utf-8?Q?ents_to_stolen_memory_setup_(rev3)?=
Thread-Index: AQHYzorxpt0F/j1Eekqz/6nR/tP3J63rlQug
Date: Thu, 22 Sep 2022 15:37:23 +0000
Message-ID: <DM4PR11MB6213D548044005264410895FEC4E9@DM4PR11MB6213.namprd11.prod.outlook.com>
References: <20220915-stolen-v2-0-20ff797de047@intel.com>
 <166337433005.24750.5492517372376372170@emeril.freedesktop.org>
 <20220922135511.4bezgpbmuei4ole6@ldmartin-desk2.lan>
In-Reply-To: <20220922135511.4bezgpbmuei4ole6@ldmartin-desk2.lan>
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
x-ms-traffictypediagnostic: DM4PR11MB6213:EE_|MW3PR11MB4604:EE_
x-ms-office365-filtering-correlation-id: eaf36809-191f-4ba2-1424-08da9cb0583c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FAUJCbuLM+zY+HGJtYVgordcLA28+b2cftor7IliJV+ZbelgRisEAamj1m4ev1iThDmnlX3tHaSeaviY+D9pYXzR4P2QqCHAPGKGfBdffkz3GhhzFDOyQLJ5DJPf1k3JDEOepUI3g4AexcsKCmONHbdygLoWPagVOvSx5wtl/rrVMMOKTythVm0hPCL9lHQVQnStmNmoMq5OwTbj4KOYO70CFfRu83qs8SsLUaXUqKSHj1fr+eEdJZ47h2ZtXPQUIsltx9ynRHgsUKrAMdKcceul6ypoBbjsvVUEZH8WpMRt1nXlkDKIb3sIIk4sO0kuMo4muag2YhXcHClbenZ/lXGXs8M/v/0TFKeLmUKDoRSLd7K+5URwi0MI+Les4X5G19Ufm+xIFkjfU13YDIy6xJ0pNCySHuvxYtdpnNIVwxqwCpmibfWYFimFnQJE/Uj/MUAehR7OrFpmU/6bxd/5307oMuTUc8qEqOaYnGU5heDU3UFeCGJL57NO4EmojjwfJ3NSq/GNWPWWAWfRKp/VdjrUIKBMwLrFRKfRVU3imnifyJCA67q8ZirUsDPKqsUd9xL6UlTYXTnXxVwpGA/t3NkKXEIEbjigiQdbA0BfwmE7jo6GUAhtSyCN3i8MSFkLIperMLQJDt1c6pqouDOJripo6bxwdk8Yk4SmV5zuDgt/500anww4kY+qansVHowkOfyiZ4cxBvLSATg7CIv9BV/awDW0X8PrMVIKAwySJzxd8LlgQ7OCqqCh7yosajTF+D/kamI/1RXb0HzvnDM/DP37TZkJajugqfx1ewvwg2QvsfPIggLT1b3DK7Tn0z1+3fcKTLn3EE9XnSZnB9hMsg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6213.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(346002)(39860400002)(136003)(366004)(451199015)(38100700002)(122000001)(2906002)(478600001)(82960400001)(41300700001)(966005)(76116006)(71200400001)(52536014)(86362001)(38070700005)(5660300002)(6506007)(53546011)(110136005)(55016003)(316002)(186003)(66446008)(64756008)(66556008)(83380400001)(66946007)(26005)(9686003)(33656002)(7696005)(66476007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cEdKdWlRd2ZWazRCRmlMUS9WcDZZZkV5K2lJVVYyVVhvdjAyemkrQlUrdEVz?=
 =?utf-8?B?TVViYXdJalRoNFhFMWN6dHZ2Ylc3WXhFM0VKa2F6MXY5cDhuZnBxUmNma3FZ?=
 =?utf-8?B?anRxT0N2MEx5SGpyaWw2bDFQUy83eWwxQ3I3czJtS09sdm9kV0RObm1OQXJG?=
 =?utf-8?B?SGRFQWdaZk1lY1oyaGNUdHEvS3ZvWTJtK0FmN05mOElORnJUVDhBK1p5NmJ6?=
 =?utf-8?B?aCtpY3lndHk1Z0tiemozUnhRZ2poU2t6WDdUcU5GRFdzSVpQd2VZd0hNdGlW?=
 =?utf-8?B?MERuQ1psdzdET0VTYy9sSlhLYXFwNjRYcEUya2hLWldDYXlWYXBua1Y2ZXpT?=
 =?utf-8?B?WGlIOSsxc29nYkZNZHpRYVdHcjB1OVNRbWxEZ0RubmgzQnpPdDMyOGN6MTc2?=
 =?utf-8?B?U2dKUjRYMXBwRmgrZXd3Z2E2Tk82Y3pFd2dvdVY3cXFvREN1aS81dmYxSVhh?=
 =?utf-8?B?QTI0ZzhDOCs0Q3FuSmNucHFoanFZaHRXdDNvUWIzUXhwK3BIN1VuL1B5cmlj?=
 =?utf-8?B?Z3ZRZHduS01wWlRkUmQwL05wWk1vQjkrQ2x0SUlQbWZsZFpCa0ExcklpS3E4?=
 =?utf-8?B?cGoyYmJESnVqL3ZQOWkwaGdiaWxLbmZvRnY4UEJZM2UwUTdtenIyMTBLTFFU?=
 =?utf-8?B?ekcxbkZGMTVSNmJRM3E4bjRvOFNpNlo4ZmJLM0Q1RGVWLzFGNHlZT0JJLy96?=
 =?utf-8?B?MlBiWkFKYzVwWERLajU3RXF5Szk0ZkZKWXVrRHlEdkpLKzRhYm01aVBVQTM0?=
 =?utf-8?B?UnNtSUVjTWhjamhIbnJKajNlazl5ajhnd1VXbkV0U0VhNWZkNTFzYkE5ek15?=
 =?utf-8?B?YjI3UTRSY2FMNDBQcjZPN0VqYiszVXFCVktRcGhYdXpqUXlzT1M2SHEwMFUz?=
 =?utf-8?B?TlVjLytvcDJjckllbE83Ym43UER6bEp6WmEybFJReWltRFlheHIxSUV4RWY2?=
 =?utf-8?B?WW1Rd0JSN0xUMW5ReVBGMHNrK3F6ZUhDL3JjczVBWjlpWFlHMEJwNjRxM1k3?=
 =?utf-8?B?Y09CWHByUXUzTWFpUC9idTZ2SHM0VmFJTGxjYTFLNDl4U3Fzd013QlgvUTRZ?=
 =?utf-8?B?OW1JVUloTThJL1ZjYm8rZE9kOXNEY1JRTDZzSlkvekN3RFY3cFFUN3I3ZTU2?=
 =?utf-8?B?bzU3V3pNVHZyQ1lBTGc1RFl5K0cyOEVtTUtNS0tSbDV3TWN5NytQK01aVk04?=
 =?utf-8?B?a2ZVb29xQVc1a3pwOERuRjZiK2lVMW1xYWxsZUp2T0d5L29obkQyVFJvZi9L?=
 =?utf-8?B?cm9abVdKekVJSm1wbnVobjdUWFcweXlkbGZaUFZwczJJOHdudFI2VFNBTEpw?=
 =?utf-8?B?eVhzQ0lpVG9IZGNwMnU3ZVY3MUs1ci9Da3lwZGc4NW9uamZTUEkyc2pEdjlr?=
 =?utf-8?B?cXlUUEEvczZNM1NVUHdENU40ODRxeE51a0JlTlM5WlM5VGxoUXZGRC9FK0g2?=
 =?utf-8?B?ajJuc2FLS0JMakFIT3dhMEZlaTlMRkMrbllpSjd0eElPazBRWXVMT1I0UkFu?=
 =?utf-8?B?Q1JWMG1zbkhjOGZCV0xjemlpS0ZoaWhscnNFeDlUdGJxNjhGbWFzZGFrbUVZ?=
 =?utf-8?B?S0RGOVdwck9HaEN1RDNVaDNYNjg5U09oUzhORkhKczBsUGQxbWZ0dmhzaXVD?=
 =?utf-8?B?VlgyQmprZ0xQWE5CT05lb05mbnJpelB1WlBJRDdYV0RWcU5teXh4OWsvMkFS?=
 =?utf-8?B?ZDdUN0xvWWZEWVBlTnV1ZFZEMk1XVW42V2lJbGVWV3VEK1UvM2o2ZE9rMlZn?=
 =?utf-8?B?YWF1Q3ZQdE1Vcmc2cEhFemo2QlFUYk9landaRWV0S1ppUDBVT0UzakpyK004?=
 =?utf-8?B?Nno0bE16Y1VtTzdBUzJaOXJ5d1dOZ2ZkVk8xLzNkaTV3aFV4QXVqMDNST2Rn?=
 =?utf-8?B?RVZkY0xYRDhQa3FyTytva0NQdW4ycXFaQzRBSGUyd0xuZExLU3N0ZmdyM0Q0?=
 =?utf-8?B?STl5blp2VmJqZnFnRzhTaDZmcnpGT1p2Z3BpMmxQNlI3WGlMc1g2QUs2QTYz?=
 =?utf-8?B?dlJTUnRlVUFQWUl5Nkd6NndFNVBqcTNKYW1hMEVqTE5URzB5RkQ3ZWFOQ3hK?=
 =?utf-8?B?QytVODBOZHZPSCtWcWFrRHdyY2tNYlAyZVE3b1h6OUFiSWVpb0hDR0l4WkRy?=
 =?utf-8?B?azlTejY2NmthUXhpVkFFdmxBNXJkaWU1cjNkenJZSkVBUTN5Tm8rWHQwRnM4?=
 =?utf-8?B?Y1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6213.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eaf36809-191f-4ba2-1424-08da9cb0583c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2022 15:37:23.4699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6otX9J4mdmgH44Jh66wJ7hMYqACAXTxFXzz+JoL7QCKSawX5mPXU53WwIeFvWgw3PkP9ZG5FkQWum8ZfyY+wDCjbZeYHK7b26pI0jkzJwwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improvements_to_stolen_memory_setup_=28rev3=29?=
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

RmlsZWQgYSBuZXcgaXNzdWUgYW5kIHJlcG9ydGVkIHRoZSByZXN1bHRzLg0KaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy82ODk4DQoNCkxha3NobWkuDQoN
Ci0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBEZSBNYXJjaGksIEx1Y2FzIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+IA0KU2VudDogVGh1cnNkYXksIFNlcHRlbWJlciAyMiwgMjAy
MiA2OjU1IEFNDQpUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IFZ1ZHVt
LCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5jb20+DQpTdWJq
ZWN0OiBSZTog4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEltcHJvdmVtZW50
cyB0byBzdG9sZW4gbWVtb3J5IHNldHVwIChyZXYzKQ0KDQpPbiBTYXQsIFNlcCAxNywgMjAyMiBh
dCAxMjoyNTozMEFNICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+PT0gU2VyaWVzIERldGFpbHMg
PT0NCj4NCj5TZXJpZXM6IGRybS9pOTE1OiBJbXByb3ZlbWVudHMgdG8gc3RvbGVuIG1lbW9yeSBz
ZXR1cCAocmV2MykNCj5VUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvMTA4NjIwLw0KPlN0YXRlIDogZmFpbHVyZQ0KPg0KPj09IFN1bW1hcnkgPT0NCj4NCj5D
SSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMjE0Nl9mdWxsIC0+IFBhdGNod29ya18x
MDg2MjB2M19mdWxsIA0KPj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0NCj4NCj5TdW1tYXJ5DQo+LS0tLS0tLQ0KPg0KPiAgKipGQUlMVVJFKioNCj4N
Cj4gIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xMDg2MjB2
M19mdWxsIA0KPiBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPg0K
PiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3
aXRoIHRoZSBjaGFuZ2VzICANCj4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTA4NjIwdjNfZnVs
bCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIA0KPiBhbGxvdyB0aGVtICB0byBkb2N1
bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0
aXZlcyBpbiBDSS4NCj4NCj4NCj4NCj5QYXJ0aWNpcGF0aW5nIGhvc3RzICgxMCAtPiAxMCkNCj4t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gIE5vIGNoYW5nZXMgaW4gcGFydGlj
aXBhdGluZyBob3N0cw0KPg0KPlBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4tLS0tLS0tLS0tLS0tLS0t
LS0tDQo+DQo+ICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVl
biBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMDg2MjB2M19mdWxsOg0KPg0KPiMjIyBJR1QgY2hh
bmdlcyAjIyMNCj4NCj4jIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4NCj4gICogaWd0
QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWQtYWxwaGEtN2VmYzoNCj4gICAgLSBzaGFyZC10
Z2xiOiAgICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0NCj4gICBbMV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzEyMTQ2L3NoYXJkLXRn
bGIzL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1kLWFscGhhLTdlZmMuaHRtbA0KPiAg
IFsyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEwODYyMHYzL3NoYXJkLXRnbGINCj4gOC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBp
cGUtZC1hbHBoYS03ZWZjLmh0bWwNCg0KdW5yZWxhdGVkIGZhaWx1cmUgaW4gZGlzcGxheQ0KDQpM
dWNhcyBEZSBNYXJjaGkNCg==
