Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B558064E1DA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 20:34:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894E010E52D;
	Thu, 15 Dec 2022 19:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E89E310E52E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 19:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671132849; x=1702668849;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WMKZB5K/4iHnB4IJEjjQ/7taCenVlGwI8zmYUfwuFu4=;
 b=DeLvFrAwfaK1hO8816VOVm0fkzzRAoHbXXJRvwmD/TZa3ZxKadyXJO7+
 ZYSixmzkpCoKBgZz94PkDEmUW4PQcFu0Ya70FabOihOEgl5+9RDO9gZQo
 WgfJfYw68ORibo3qgHSyWiN3e4dvWCMjoMytiGz+WCadib4Il0mq/hVDy
 nlyp+UVWH7HnOzil09vB5+nMYsWVjqEFEuyMQ2b0cIAHV01f3K+JLTbK6
 kNU7QI31F7lI14PBiROy/214iPmOMOyE64isZzuXvbY5chukttwdIR5hG
 ZZnZ3OodPAMiRD2WakpPHvZzsoQFr74c03EdjLR4TPzVjY2y3BvMu0ZYz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="320668488"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="320668488"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 11:34:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="649545612"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="649545612"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 15 Dec 2022 11:34:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 11:34:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 11:34:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 11:34:03 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 11:34:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HeSlMGNy5QPzRMUO5MHIyCjZA1/guu+IgIRh5Ek+rCEbWLK2T7C+OKdXtU7+UFl37CP51Qno4N5P7ROJP7teEjH0UgJ/xIEzrXVgtApJXPVAUgQ0D2h8IVl7ui7CTDKfvU+xdj7k8uNoqFaiR31nbyOtqjvSe8sHq2i2B2Eqmpo4a9uGCkPj5HWHFe9zJ+bxcbnwzT1V4mtGqXRhaebSjr2qNNquqaKVQzUkOdAqSfIS77Ar31L9/G0m/U6OQbO90zPLkQL+zYzACvywnTNPxew/FrLMR/VYgw5hAQtn5JxyW0RfKwc9JeL0WNmeqIkFUIj9Flh637zoYH8nCaI4DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WMKZB5K/4iHnB4IJEjjQ/7taCenVlGwI8zmYUfwuFu4=;
 b=ZJhn1sdhz3dQGQrO9mxGS2w1qSreGB4xzVdchR4afuCtBuvQygGjk+CGEX+Z/ANp7XC5Vb3U2VLQrk/IL7GmzFx31ygWJLtqGC5HKEhjFNdrZDV1FdIeavE6IeGwOGlvxg9u1LR0bo4ROBnOQzYu3FO0rvu9Ne2dCsUPcjEV3Es04MIqhr2AV0c/ZnlKqlDLGKwq/4sIwVZKDIx7mtSSaPFYIaWPg9UPbIqo/v5q2hCqK40Xho5JxvtZuFK0qbSb7HWp8EFqWy6kFUUefFkGd8XEtIAX7CaPTA2xOCTykk2v9rf5yetgrCYvt5VzdhDN9wE2IVUd3pGIDD/3wIEoAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH8PR11MB7071.namprd11.prod.outlook.com (2603:10b6:510:215::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Thu, 15 Dec 2022 19:34:00 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%5]) with mapi id 15.20.5924.012; Thu, 15 Dec 2022
 19:34:00 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
Thread-Index: AQHZD5vcX31f4EZl9U+u+fEcHDPX7K5vWe8A
Date: Thu, 15 Dec 2022 19:34:00 +0000
Message-ID: <f3d574fb267345d286721f35e84c6383432921e7.camel@intel.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
 <20221214090758.3040356-7-suraj.kandpal@intel.com>
In-Reply-To: <20221214090758.3040356-7-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH8PR11MB7071:EE_
x-ms-office365-filtering-correlation-id: baf0bf7b-aa21-4152-eb67-08daded35113
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TX+rdhUJIFlZo2vrgDjRXV/HBca8AdsFlscFZf9b529lC1BksXzFgyAOkw0d2n10kavzt/stjUlQva9K6XVSRC/P5VmWn0+FEyvFNxecmF6rirKKj5WrITcuOqXP5lYAU1ycMAAEmS/0p59AAcYH1r9+ak/go0viPtFQjGUmYkZHeMsqEl+/VY/DvNjRRVQK4BXZFi7h4ObeL/iEST37z3gMWO9w7BbUWdY+uZBvXI38QD4yvh0OAI04CRv9X4tHcUoUlb7mRr5uSh1P0W3VZKesyrKcOGIw5b/jU5PtHigHixnC1ntYkUL6yc0B4jOkJa+z4SJs9agseMguSd/aiTn+REU78JaF3hQ6CHMZFaDN5nu1EisowGcS+RjZ1OWyw7GUjft2P//fvzq9WHYxArrGvf51cbt2PI2Njjnmw+x8WEg5mkox3cAs08QADfPLcHcui8LUM4tjv09wqG+Vz5MvKu0v8BljmvC80JCvOjUt0Hp2uu7RSyxcx1yYsd3VnD6iapBmFiNBorQo5EIzhzEcevxDj51jzqarXO5UZz2wr2Lt+mHx4xCkI6RMSZ2tXGTFHE4QtH3VKrbISidR2neKq0rZZpbwBVp/hOoouxAmIbcuPgJ1xxo0EPJZJG2JCQWTSFRtZqMvbe/TsxvZ+w+TWct5EHI4FoHBmzXohMdpCRG6k+LFNfS+/cZqtwuEL9SlQD6AqfkErYjI0q+Wfw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(366004)(346002)(396003)(136003)(451199015)(6486002)(71200400001)(86362001)(316002)(6506007)(478600001)(54906003)(38070700005)(82960400001)(26005)(36756003)(186003)(6512007)(2616005)(122000001)(38100700002)(110136005)(83380400001)(8936002)(8676002)(66446008)(91956017)(2906002)(4001150100001)(5660300002)(107886003)(41300700001)(66476007)(4326008)(76116006)(66556008)(66946007)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXhyUUZZUjV2WU1mUWRJQWVXWWh1VFBKU01zMG15TU5ZWVFtWEJDTjh3N3ZK?=
 =?utf-8?B?SE5YM0xUei90V1p2UnZIZTh4UXRBN3NBS0RMUmxudk41WW9YOENpQWFRalpr?=
 =?utf-8?B?b3ZsbXdKYWM0WDFLY0E5UFNXa1d3eGVob2VYVVpUcmxJUENpOVNEeHVqdTBX?=
 =?utf-8?B?RG1DemVsSjRndEw0QTBjd012blFyWWdSV0JYWXV1Q0R0czQzaU1NNkxveTNn?=
 =?utf-8?B?WDNGUHg2eW1zTlg5NHdob2pjZno2VkJHL29zN2ZWZW00Nk8vVUZsSmlqZ1kw?=
 =?utf-8?B?VlBEa0QrZTduYzFUTmtvcU4vSklFdUZ1Q1NSSXVucDNlL085MXhXTTFpR3Y4?=
 =?utf-8?B?LzAxb1JBK3Z6cmRYZDRaMFNVVTVSL3Bqa0RXQ05WM1ZhNzVNOTRaeW1LN0NV?=
 =?utf-8?B?TTNvNHhHU3lkVWh1Rk9CRE43YXZMWnNKMjhtK3dnMVhXTE9yUUtwbzVZTEk1?=
 =?utf-8?B?VjhsbGlmWTI1S21uSEZNZ3dCakZob3V4NkkzQVdYMUlxaEVORDMrMVIwUzFw?=
 =?utf-8?B?dEcrcGhIL0ZZUU51cm5LKytYQTdWMC8wekRJRmU4MWdVRWhnOTFGOHFxWUp5?=
 =?utf-8?B?N0hWb3huaUovaTlZazVxQktRZUpMV3M4VDF2amdiQ0pRVkM4V2JvTENIOHJW?=
 =?utf-8?B?eXExNnZaSmdxSyt1RVZ0NmVDeElZbkNrZGFINWFuMTBrd1dnQ2JycEI1bUph?=
 =?utf-8?B?SWZqZWFUaE9QNXBiMmhXb3B4RTFmQzlOYllyS2NRYkFPMmlpRzNFN1F4c2lK?=
 =?utf-8?B?ZjBuMXMrZG9qY1VXVTVYaENtbFF3Mm45akxCTXNUNnRnaVcwazdLVHZkQjVH?=
 =?utf-8?B?ZmJRczVpSktGcm9lNFo4TnpCWENrSXlzUC9KY3B3cy9HM0x4L3lLb0Q1aVZI?=
 =?utf-8?B?UmRPc2ZHR2xyaW1WRkdGTGNrZWIzOWJXTUNaYTZHOENKcHVUYURmZmpIYzdI?=
 =?utf-8?B?UGhDaDJrQjBXQTAwbkVDbDNMRDBsK3YvK3U0Q0kwZGMzRHltU09QbEtLYTBm?=
 =?utf-8?B?dW1hbk1HTzVUS0lCd3pETS85bktrSTlUOFdkc2FFRzNoVUJBSWQyTU84ZENo?=
 =?utf-8?B?WXlraHYra3IzOEdid2VDUDBMeEJiODZCQ1QxQWgrMGdlL0VObkcxT0pCRGpL?=
 =?utf-8?B?VnJ1dTZWVnAxLzRnSUVjdFJUajdyQ0Z2KzRsVUtBQ09NcjZEN3p4QTBRQmVh?=
 =?utf-8?B?bGRUQXRaTFo5NjVrbVRNN1JhQnFXdk1WaG5lVndGYjJVMDBVU1Q2U2U4UDd5?=
 =?utf-8?B?NVhIZ3BjOEhSR1M5eXJRUmRpMFYzMy9KK1gxNEhPdjhzQzdmMWpRWnVFa2RY?=
 =?utf-8?B?clpRNENqSU95cXZSc1ZUUnZWcTRvN1MzeGZYandxb3FOU2s3d2Izamx4cjZS?=
 =?utf-8?B?b3NHcjEyQUlaWUVkdWFZMTJSVVZick52Q2E4WHpFZXVpZ2hKVzFqbDg1enZm?=
 =?utf-8?B?TVpRWXdrNFhZcm10eFdOLythNzZsZ0ZaUDdiODdtUEtaNTJwbThpeEJFUHJF?=
 =?utf-8?B?QVZQN0I3bGhydU5jVU5pdnRUbzVJUlp2WFBwcUlCOXM4UVRlckFGYWJrVGFI?=
 =?utf-8?B?akdZY3labGY1VXZJMENnTnFNbnBrZHg1bTNsK3RIWlo5Qmp5SmU2T081Qlll?=
 =?utf-8?B?MWkwUk1EWTJ6aGhYa2xpWm9XSzQ2OENpc2xYbElweEE4Nm1xaGorOWxIbmNv?=
 =?utf-8?B?c0ZHWDQrVFF3cU8yOGJ4QmsxSUl5WFcwOHBVVHdhcmtZSFZFLzRMdE1VNjNn?=
 =?utf-8?B?MXJzNUIwdXQ2eXk1bDdpZVFGWHVnR2FLcXV6SjhhTjRPaFNIR0tDZ1Q4aXFk?=
 =?utf-8?B?SWNiNVFCa1pJZUtKcGpBTE16YWFTbWRqeG9CUWNKYzdrSEFXb24rTjVLbzMw?=
 =?utf-8?B?SUdEYm1Ta1JIamdXSlZ4SkM1VkNnUElhK0VpZHIvVFY0c1lqTDhURTMvUDEw?=
 =?utf-8?B?SEVhSFB1SWRtL2IrbGVkaURoSkoxaEhxZS90Y2lmS2JpVEVtSXg5bWJMb3pE?=
 =?utf-8?B?aVAzc3U3enJMRm45RDAzVzZ0Y1Q0Ui9RbTFpbmJ1K2doMGhxazJ0aUg0cklI?=
 =?utf-8?B?akZvT2lqMHJkeVBYeENtSnh3T2lSbU9GN3VzNm9sMFZQbVk3bTZmbE5SOCtP?=
 =?utf-8?B?OFFYM1lBcFhxOVhjSFZGUnkxNFEzaXRzbHQ0RW5OUFNoL2s4UTMwNjcrVlN2?=
 =?utf-8?Q?DhIGWAqgEDpW2abL1gCNUNY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <188D602355E0AE48A6EE44B8647D6AD6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baf0bf7b-aa21-4152-eb67-08daded35113
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 19:34:00.5915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eqfN//fpwF5EaMD6+Cs490SisiSw8qvlA8CrSwtZongA+DphTxKdb7gJ+WD97NGaDVHyGToYr6xIuEtU0mA/MwCz55dloSnXdAPwLgVyMpEF0/85n0W4PqaecCnd3V6t
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7071
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
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

DQoNCk9uIFdlZCwgMjAyMi0xMi0xNCBhdCAxNDozNyArMDUzMCwgU3VyYWogS2FuZHBhbCB3cm90
ZToNCj4gQWRkIGZ1bmN0aW9uIHRoYXQgdGFrZXMgY2FyZSBvZiBzZW5kaW5nIGNvbW1hbmQgdG8g
Z3NjIGNzLiBXZSBzdGFydA0KPiBvZiB3aXRoIGFsbG9jYXRpb24gb2YgbWVtb3J5IGZvciBvdXIg
Y29tbWFuZCBpbnRlbF9oZGNwX2dzY19tZXNzYWdlIHRoYXQNCj4gY29udGFpbnMgZ3NjIGNzIG1l
bW9yeSBoZWFkZXIgYXMgZGlyZWN0ZWQgaW4gc3BlY3MgZm9sbG93ZWQgYnkgdGhlDQo+IGFjdHVh
bCBwYXlsb2FkIGhkY3AgbWVzc2FnZSB0aGF0IHdlIHdhbnQgdG8gc2VuZC4NCj4gU3BlYyBzdGF0
ZXMgdGhhdCB3ZSBuZWVkIHRvIHBvbGwgcGVuZGluZyBiaXQgb2YgcmVzcG9uc2UgaGVhZGVyIGFy
b3VuZA0KPiAyMCB0aW1lcyBlYWNoIHRyeSBiZWluZyA1MG1zIGFwYXJ0IGhlbmNlIGFkZGluZyB0
aGF0IHRvIGN1cnJlbnQNCj4gZ3NjX21zZ19zZW5kIGZ1bmN0aW9uDQo+IEFsc28gd2UgdXNlIHRo
ZSBzYW1lIGZ1bmN0aW9uIHRvIHRha2UgY2FyZSBvZiBib3RoIHNlbmRpbmcgYW5kIHJlY2Vpdmlu
Zw0KPiBoZW5jZSBubyBzZXBhcmF0ZSBmdW5jdGlvbiB0byBnZXQgdGhlIHJlc3BvbnNlLg0KPiAN
Cj4gQ2M6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gQ2M6
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+
DQo+IENjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBDYzogQW5zaHVt
YW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogU3Vy
YWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAxICsNCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9nc2MuYyB8IDIwNyArKysrKysrKysrKysr
KysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9nc2MuaCB8
ICAxOCArKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX2Z3aWYuaCAg
IHwgICAxICsNCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjI3IGluc2VydGlvbnMoKykNCj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3BfZ3Nj
LmMNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkY3BfZ3NjLmgNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlDQo+IGluZGV4IGY2NGE4YmM3
M2M4OS4uOWNhZTBjMTU5OGE3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQ0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiBAQCAtMjUx
LDYgKzI1MSw3IEBAIGk5MTUteSArPSBcDQo+ICAJZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5v
IFwNCj4gIAlkaXNwbGF5L2ludGVsX2dsb2JhbF9zdGF0ZS5vIFwNCj4gIAlkaXNwbGF5L2ludGVs
X2hkY3AubyBcDQo+ICsJZGlzcGxheS9pbnRlbF9oZGNwX2dzYy5vIFwNCj4gIAlkaXNwbGF5L2lu
dGVsX2hvdHBsdWcubyBcDQo+ICAJZGlzcGxheS9pbnRlbF9odGkubyBcDQo+ICAJZGlzcGxheS9p
bnRlbF9scGVfYXVkaW8ubyBcDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkY3BfZ3NjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkY3BfZ3NjLmMNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAw
MDAwLi42ODU4YjYyMTkyMjENCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3BfZ3NjLmMNCj4gQEAgLTAsMCArMSwyMDcgQEANCj4g
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQNCj4gKy8qDQo+ICsgKiBDb3B5cmlnaHQg
MjAyMSwgSW50ZWwgQ29ycG9yYXRpb24uDQo+ICsgKi8NCj4gKw0KPiArI2luY2x1ZGUgImRpc3Bs
YXkvaW50ZWxfaGRjcF9nc2MuaCINCj4gKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcmVnaW9uLmgi
DQo+ICsjaW5jbHVkZSAiZ3QvdWMvaW50ZWxfZ3NjX2Z3LmgiDQo+ICsjaW5jbHVkZSAiZ3QvdWMv
aW50ZWxfZ3NjX2Z3aWYuaCINCj4gKyNpbmNsdWRlICJpOTE1X2Rydi5oIg0KPiArI2luY2x1ZGUg
Imk5MTVfdXRpbHMuaCINCj4gKw0KPiArc3RydWN0IGludGVsX2hkY3BfZ3NjX21lc3NhZ2Ugew0K
PiArCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7DQo+ICsJc3RydWN0IGk5MTVfdm1h
ICp2bWE7DQo+ICsJdm9pZCAqaGRjcF9jbWQ7DQo+ICt9Ow0KPiANCkFsYW46IHNlZSBteSBsYXN0
IHNldCBvZiBjb21tZW50cyBiZWxvdy4NCg0KQWxhbjpbc25pcA0KPiANCj4gDQoNCj4gK3N0YXRp
YyBpbnQgaW50ZWxfZ3NjX3NlbmRfc3luYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwN
Cj4gKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfZ3NjX210bF9oZWFkZXIgKmhlYWRlciwgdTY0IGFk
ZHIsDQo+ICsJCQkgICAgICAgc2l6ZV90IG1zZ19vdXRfbGVuKQ0KPiArew0KPiArCXN0cnVjdCBp
bnRlbF9ndCAqZ3QgPSBpOTE1LT5tZWRpYV9ndDsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJaGVh
ZGVyLT5mbGFncyA9IDA7DQo+ICsJcmV0ID0gaW50ZWxfZ3NjX2Z3X2hlY2lfc2VuZCgmZ3QtPnVj
LmdzYywgYWRkciwgaGVhZGVyLT5tZXNzYWdlX3NpemUsDQo+ICsJCQkJICAgICBhZGRyLCBtc2df
b3V0X2xlbiArIHNpemVvZigqaGVhZGVyKSk7DQo+ICsJaWYgKHJldCkgew0KPiArCQlkcm1fZXJy
KCZpOTE1LT5kcm0sICJmYWlsZWQgdG8gc2VuZCBnc2MgSERDUCBtc2cgKCVkKVxuIiwgcmV0KTsN
Cj4gKwkJcmV0dXJuIHJldDsNCj4gKwl9DQo+ICsJLyoNCj4gKwkgKiBDaGVja2luZyB2YWxpZGl0
eSBtYXJrZXIgZm9yIG1lbW9yeSBzYW5pdHkNCj4gKwkgKi8NCj4gKwlpZiAoaGVhZGVyLT52YWxp
ZGl0eV9tYXJrZXIgIT0gR1NDX0hFQ0lfVkFMSURJVFlfTUFSS0VSKSB7DQo+ICsJCWRybV9lcnIo
Jmk5MTUtPmRybSwgImludmFsaWQgdmFsaWRpdHkgbWFya2VyXG4iKTsNCj4gKwkJcmV0dXJuIC1F
SU5WQUw7DQo+ICsJfQ0KPiArDQo+ICsJaWYgKGhlYWRlci0+c3RhdHVzICE9IDApIHsNCj4gKwkJ
ZHJtX2VycigmaTkxNS0+ZHJtLCAiaGVhZGVyIHN0YXR1cyBpbmRpY2F0ZXMgZXJyb3IgJWRcbiIs
DQo+ICsJCQloZWFkZXItPnN0YXR1cyk7DQo+ICsJCXJldHVybiAtRUlOVkFMOw0KPiArCX0NCj4g
Kw0KPiArCWlmIChoZWFkZXItPmZsYWdzICYgSU5URUxfR1NDX01TR19QRU5ESU5HKQ0KPiArCQly
ZXR1cm4gLUVBR0FJTjsNCj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQpBbGFuOiBBcyBw
ZXIgbXkgY29tbWVudCBvbiBwYXRjaCAjMSBhYm92ZSBmdW5jdGlvbiBjb3VsZCBnbyBpbnRvIHRo
ZSB1Yy9nc2MgZG9tYWluIC4uLiBzZWUgdGhlIGNvbW1lbnQgYmVsb3cgZm9yIGZ1cnRoZXIgZWxh
Ym9yYXRpb24uDQoNCj4gKy8qDQo+ICsgKiBUaGlzIGZ1bmN0aW9uIGNhbiBub3cgYmUgdXNlZCBm
b3Igc2VuZGluZyByZXF1ZXN0cyBhbmQgd2lsbCBhbHNvIGhhbmRsZQ0KPiArICogcmVjZWlwdCBv
ZiByZXBseSBtZXNzYWdlcyBoZW5jZSBubyBkaWZmZXJlbnQgZnVuY3Rpb24gb2YgbWVzc2FnZSBy
ZXRyaWV2YWwNCj4gKyAqIGlzIHJlcXVpcmVkLiBXZSB3aWxsIGluaXRpYWxpemUgaW50ZWxfaGRj
cF9nc2NfbWVzc2FnZSBzdHJ1Y3R1cmUgdGhlbiBhZGQNCj4gKyAqIGdzYyBjcyBtZW1vcnkgaGVh
ZGVyIGFzIHN0YXRlZCBpbiBzcGVjcyBhZnRlciB3aGljaCB0aGUgbm9ybWFsIEhEQ1AgcGF5bG9h
ZA0KPiArICogd2lsbCBmb2xsb3cNCj4gKyAqLw0KPiArc3NpemVfdCBpbnRlbF9oZGNwX2dzY19t
c2dfc2VuZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTggKm1zZ19pbiwNCj4gKwkJ
CQlzaXplX3QgbXNnX2luX2xlbiwgdTggKm1zZ19vdXQsIHNpemVfdCBtc2dfb3V0X2xlbikNCj4g
K3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gaTkxNS0+bWVkaWFfZ3Q7DQo+ICsJc3RydWN0
IGludGVsX2dzY19tdGxfaGVhZGVyICpoZWFkZXI7DQo+ICsJY29uc3Qgc2l6ZV90IG1heF9tc2df
c2l6ZSA9IFBBR0VfU0laRSAtIHNpemVvZigqaGVhZGVyKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfaGRj
cF9nc2NfbWVzc2FnZSAqaGRjcF9tZXNzYWdlOw0KPiArCXU2NCBhZGRyOw0KPiArCXUzMiByZXBs
eV9zaXplOw0KPiArCWludCByZXQsIHRyaWVzID0gMDsNCj4gKw0KPiArCWlmICghaW50ZWxfdWNf
dXNlc19nc2NfdWMoJmd0LT51YykpDQo+ICsJCXJldHVybiAtRU5PREVWOw0KPiArDQo+ICsJaWYg
KG1zZ19pbl9sZW4gPiBtYXhfbXNnX3NpemUgfHwgbXNnX291dF9sZW4gPiBtYXhfbXNnX3NpemUp
DQo+ICsJCXJldHVybiAtRU5PU1BDOw0KPiArDQo+ICsJaGRjcF9tZXNzYWdlID0ga3phbGxvYyhz
aXplb2YoKmhkY3BfbWVzc2FnZSksIEdGUF9LRVJORUwpOw0KPiArDQo+ICsJaWYgKCFoZGNwX21l
c3NhZ2UpDQo+ICsJCXJldHVybiAtRU5PTUVNOw0KPiArDQo+ICsJcmV0ID0gaW50ZWxfaW5pdGlh
bGl6ZV9oZGNwX2dzY19tZXNzYWdlKGk5MTUsIGhkY3BfbWVzc2FnZSk7DQo+ICsNCj4gKwlpZiAo
cmV0KSB7DQo+ICsJCWRybV9lcnIoJmk5MTUtPmRybSwNCj4gKwkJCSJDb3VsZCBub3QgaW5pdGlh
bGl6ZSBoZGNwX21lc3NhZ2VcbiIpOw0KPiArCQlnb3RvIGVycjsNCj4gKwl9DQo+ICsNCj4gKwlo
ZWFkZXIgPSBoZGNwX21lc3NhZ2UtPmhkY3BfY21kOw0KPiArCWFkZHIgPSBpOTE1X2dndHRfb2Zm
c2V0KGhkY3BfbWVzc2FnZS0+dm1hKTsNCj4gKw0KPiArCW1lbXNldChoZWFkZXIsIDAsIHNpemVv
ZigqaGVhZGVyKSk7DQo+ICsJaGVhZGVyLT52YWxpZGl0eV9tYXJrZXIgPSBHU0NfSEVDSV9WQUxJ
RElUWV9NQVJLRVI7DQo+ICsJaGVhZGVyLT5nc2NfYWRkcmVzcyA9IEhFQ0lfTUVBRERSRVNTX0hE
Q1A7DQo+ICsJaGVhZGVyLT5ob3N0X3Nlc3Npb25faGFuZGxlID0gMDsNCj4gKwloZWFkZXItPmhl
YWRlcl92ZXJzaW9uID0gTVRMX0dTQ19IRUFERVJfVkVSU0lPTjsNCj4gKwloZWFkZXItPm1lc3Nh
Z2Vfc2l6ZSA9IG1zZ19pbl9sZW4gKyBzaXplb2YoKmhlYWRlcik7DQo+ICsNCj4gKwltZW1jcHko
aGRjcF9tZXNzYWdlLT5oZGNwX2NtZCArIHNpemVvZigqaGVhZGVyKSwgbXNnX2luLCBtc2dfaW5f
bGVuKTsNCj4gKw0KPiArCS8qDQo+ICsJICogS2VlcCBzZW5kaW5nIHJlcXVlc3QgaW4gY2FzZSB0
aGUgcGVuZGluZyBiaXQgaXMgc2V0IG5vIG5lZWQgdG8gYWRkDQo+ICsJICogbWVzc2FnZSBoYW5k
bGUgYXMgd2UgYXJlIHVzaW5nIHNhbWUgYWRkcmVzcyBoZW5jZSBsb2MuIG9mIGhlYWRlciBpcw0K
PiArCSAqIHNhbWUgYW5kIGl0IHdpbGwgY29udGFpbiB0aGUgbWVzc2FnZSBoYW5kbGUuIHdlIHdp
bGwgc2VuZCB0aGUgbWVzc2FnZQ0KPiArCSAqIDIwIHRpbWVzIGVhY2ggbWVzc2FnZSA1MCBtcyBh
cGFydA0KPiArCSAqLw0KPiArCWRvIHsNCj4gKwkJcmV0ID0gaW50ZWxfZ3NjX3NlbmRfc3luYyhp
OTE1LCBoZWFkZXIsIGFkZHIsIG1zZ19vdXRfbGVuKTsNCj4gKw0KPiArCQkvKiBPbmx5IHRyeSBh
Z2FpbiBpZiBnc2Mgc2F5cyBzbyAqLw0KPiArCQlpZiAocmV0ICE9IC1FQUdBSU4pDQo+ICsJCQli
cmVhazsNCj4gKw0KPiArCQltc2xlZXAoNTApOw0KPiArDQo+ICsJfSB3aGlsZSAoKyt0cmllcyA8
IDIwKTsNCj4gKw0KPiArCWlmIChyZXQpDQo+ICsJCWdvdG8gZXJyOw0KPiArDQo+ICsJLyogd2Ug
dXNlIHRoZSBzYW1lIG1lbSBmb3IgdGhlIHJlcGx5LCBzbyBoZWFkZXIgaXMgaW4gdGhlIHNhbWUg
bG9jICovDQo+ICsJcmVwbHlfc2l6ZSA9IGhlYWRlci0+bWVzc2FnZV9zaXplIC0gc2l6ZW9mKCpo
ZWFkZXIpOw0KPiArCWlmIChyZXBseV9zaXplID4gbXNnX291dF9sZW4pIHsNCj4gKwkJZHJtX3dh
cm4oJmk5MTUtPmRybSwgImNhbGxlciB3aXRoIGluc3VmZmljaWVudCBIRENQIHJlcGx5IHNpemUg
JXUgKCVkKVxuIiwNCj4gKwkJCSByZXBseV9zaXplLCAodTMyKW1zZ19vdXRfbGVuKTsNCj4gKwkJ
cmVwbHlfc2l6ZSA9IG1zZ19vdXRfbGVuOw0KPiArCX0gZWxzZSBpZiAocmVwbHlfc2l6ZSAhPSBt
c2dfb3V0X2xlbikgew0KPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiY2FsbGVyIHVuZXhw
ZWN0ZWQgSENEUCByZXBseSBzaXplICV1ICglZClcbiIsDQo+ICsJCQkgICAgcmVwbHlfc2l6ZSwg
KHUzMiltc2dfb3V0X2xlbik7DQo+ICsJfQ0KPiArDQo+ICsJbWVtY3B5KG1zZ19vdXQsIGhkY3Bf
bWVzc2FnZS0+aGRjcF9jbWQgKyBzaXplb2YoKmhlYWRlciksIG1zZ19vdXRfbGVuKTsNCj4gKw0K
PiArZXJyOg0KPiArCWludGVsX2ZyZWVfaGRjcF9nc2NfbWVzc2FnZShoZGNwX21lc3NhZ2UpOw0K
PiArCXJldHVybiByZXQ7DQo+ICt9DQoNCkFsYW46IFNlZSBteSByZXZpZXcgY29tbWVudCBvbiBw
YXRjaCAjMSAtIGkgYmVsaWV2ZSBtb3N0IG9mIHRoaXMgZnVuY3Rpb24gYWJvdmUgKGludGVsX2hk
Y3BfZ3NjX21zZ19zZW5kKQ0KY291bGQgZ28gaW50byBhIGNvbW1vbiBpbnRlbF9nc2NfZW5naW5l
X3NlbmRfaGVjaXBrdCBmdW5jdGlvbiAoaW4gYSBuZXcgZ3NjLWhlY2kgc3BlY2lmaWMgZmlsZSwg
aS5lLsKgaW50ZWxfZ3NjX2hlY2kuYykNCnRoYXQgbGl2ZXMgaW4gdGhlIHVjL2dzYyBkb21haW4s
IG5vdCBoZXJlIGluIGRpc3BsYXkuIEluIGZhY3QgdGhlICJzdHJ1Y3QgaW50ZWxfaGRjcF9nc2Nf
bWVzc2FnZSIgYWxzbyBhbHNvIGJlIHJlbmFtZWQNCnRvIGJlICJzdHJ1Y3QgaW50ZWxfZ3NjX2hl
Y2lfcGt0X2luZm8iIGFuZCBpdHMgZGVmaW5pdGlvbiBtb3ZlZCBvdmVyIHRvIChhbmQgaW5jbHVk
ZWQgZnJvbSkgYSBoZWFkZXIgaW4gdGhlIHVjL2dzYyBkb21haW4uDQpJIGJlbGlldmUgaXQgbWFr
ZSBzZW5zZSBmb3IgdGhlIGNhbGxlciB0byBhbGxvY2F0ZSB0aGUgb2JqZWN0cyBidXQgdGhlIGNv
bW1vbiBoZWFkZXIgdG8gaGF2ZSB0aGUgc3RydWN0dXJlIGRlZmluaXRpb24gYW5kDQp0aGUgY29t
bW9uIGZ1bmN0aW9uIGNhbiBkbyB0aGUgY21kLXByZXAsIHN1Ym1pc3Npb24sIHdhaXRpbmcgKGFu
ZCBldmVudHVhbGx5IGNoZWNraW5nIG9mIHBlbmRpbmctYml0KS4NCg0KDQpBbGFuOltzbmlwXQ0K
