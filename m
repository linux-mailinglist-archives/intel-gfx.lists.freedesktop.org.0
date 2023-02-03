Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC21C6894AE
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 11:04:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E317210E71E;
	Fri,  3 Feb 2023 10:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79BD910E71E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 10:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675418661; x=1706954661;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=g60rO+BkuSVELTrENgulJ/dc0w+pC1TULPM6vwZ+iNM=;
 b=jm/JXsHV+RN3fiOP/3QCuf3IMlHcC9efp2o+V1u3Qndg5Mq0Fwc8IlPq
 9AUHwCWM+0qKnQB172I2VkJmD3B46lJn4D1ST4nDfZbkJx7G5fyFCK8u+
 kuWwnwTEvYwjilITtdhc0T6/FRulB2eRRgO77C23E+5TYhmuFQTzOdY+z
 iVOQOar9ArtKaOamXrith3TaZTcFtQ34AMXPkeB9DrAEkGF+omohpSTtl
 H+Iivc9mPdi/wcvXafiLsLCVMwB2GJWIu3pWVXpfbxIZ4s3RPosxD5lt7
 kzs3IR68h4JKn/Hqwvx9JnFGt6MDeguSuwGPDGaWGOjOLgz1Ob+cNN3aU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="356051400"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="356051400"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 02:04:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="665676048"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="665676048"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 03 Feb 2023 02:04:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 02:04:19 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 02:04:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 3 Feb 2023 02:04:19 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 3 Feb 2023 02:04:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kk7N0RCvcELi+Cqqp8whqiV2SvvnrVcfFzk/dgqMsAXgx2ezE2r7V/lQzXooLCkRBi1X0BS1qVxf2L27fUXOISY6SoTaf/yX+lp/fzTua5sdBooXOn1bG6hj0hZKezEcNHBoMRK6kiATCyD1d47vr193DRCXXD+qJ/6rO/TP8ZqTuTVtg2AvrVRLrBOWdvIrYNl747rLZBXtQeXRKuazHSvME5dKBgpKRsiuhMLA07lHNzdqATwCoZqmqw0TMAPnFC5ZoVUwuSuRmBOojY56aModulSwXtKHdddxYVv0wQD+5SNcsjvHGrhJObbWzd8JYL8yhc4wakvUwAD3lUAeaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g60rO+BkuSVELTrENgulJ/dc0w+pC1TULPM6vwZ+iNM=;
 b=RA9snR1TOXkQGw9OAtjY9lh/dd/vTIVZgaL9kcyX2fqIv60+mCuB/uU3eIY8NCMJz0Q5UrskAVVMNsl0tRUvyVadTHWs4z+d5MXU/a9JE14rZ+eDHNGmcw1RZYRr1Xq9b5iG74/qLlpxhWqqL0MaGkrJ1WzS3CyXNbM/AUHmjyI4nOkaKv7t3EDlOBlWPUmCUQ8qClKX+21Pg5mA4VfZXrRHyxb/w86TW+PKdFkU9xeMCtxU3EKNkUmtr1c5fNnlivQFSB+loCEu4nTnZ2oTh8fqsCPad4zm3R6PO7/6oc7O2boTxP7jlE4QD3tJK+OopMoG0PPbv434k2jnC1lKqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.28; Fri, 3 Feb
 2023 10:04:17 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Fri, 3 Feb 2023
 10:04:17 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/13] drm/i915/dsb: Don't use DSB to load
 the LUTs during full modeset
Thread-Index: AQHZK1pioMqHB265aUCySbIrDhXlNq69Fn6w
Date: Fri, 3 Feb 2023 10:04:17 +0000
Message-ID: <PH7PR11MB59817DD854320014E9166729F9D79@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BN9PR11MB5257:EE_
x-ms-office365-filtering-correlation-id: 2b8e22ae-7b9a-4e8c-f556-08db05ce02e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AWWAuwSERJqT1XhHZLun4UqcpxgVaYYbqJpMN9DXmOZL2WAPRwuYN2QMcJVKS4urKUf7H/EHiKc0O2mf2KaJntvg9Am1W1Z6wAKWr/zzIdNbLRquXUtLalN1H0/SbB+u6eCFGOWvWDM1MbH6wyHs2mRUc+TyQM7ACR3h/xECV8Mym0l4ifsLAOQrH6Ohb/rK2npq7gHOu7jtVELP8oCYPpVS0UWuKboZdB7mTrIhSnZvfUdfqXCdJCrvk4lwN6AokslPP6jcSIJL4goIqEZ9vAJx95Y6zQZ+AM9tMsXwuN+ER0qMzEzUTt3Vau5qt1JYDNZM1BENDpoIZeLUMvRm8b0IIzCuQ8AMqQdy8gux6ZWjlwzEm7f5B5haa4kXDN93osPUynjQLa7+la9+74AVx62D46BX6wgwvlWsOHiCGuZA5p5Xu0ZdTvHGR737sbtNzN7ibUVJzgJlPtMXwp9IENPAeuAfSXtmpQddZzpBLMddORjLJUDUDsXPjcBPF3HBl1CbTJuelY3cwVbVCCmMqKOGiNrGHUrr64OTkc5hZzdCqos7aFjnB7ze86Vyc1zkqUy5Q4urMGEyxgm1LH82C+NfWiHDCAez/XBcxq6xHaLD0QLU11ZnF6JvS20tvfx6hgm6WWhdTJ3KktoEYkZoLRUwzT5CvgzxmRT7aIIB202rg3R2ANQn24zqdlJ8fb/wcqTROn5iXZ64i1QT6IGaIA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(366004)(376002)(39860400002)(396003)(451199018)(66946007)(76116006)(8676002)(7696005)(478600001)(6506007)(26005)(110136005)(53546011)(33656002)(9686003)(316002)(186003)(5660300002)(86362001)(2906002)(52536014)(8936002)(66556008)(41300700001)(64756008)(66476007)(71200400001)(66446008)(55016003)(83380400001)(38070700005)(122000001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SktaaGFTTkwwWlNNQUpWKzdzclNBUUs1Q01uSWhCVHdJNVduYW1kdG4yWWFU?=
 =?utf-8?B?Wk9jTW5rcm9NTlVETU5QRkVBVmVTU3J1ZzM4b0xxVC8zUzNDa2xqbVRHellq?=
 =?utf-8?B?NklPOGJ4Mk1YQStXTW96c1pIOFo4ZFlqVEhXdHZMMW5PUXQ5UTlMTXczRDJU?=
 =?utf-8?B?RGZUNlFhME1ZcXBkMVh0d1piVjQ4ZVlJTmE0VkVPcGNESlZPWm9ZWlZlaDhs?=
 =?utf-8?B?d3dBS1M4c204dHYyQXJiVU10NEM2USs0VnhMaHdTRzZnbmJXdlhJaWJBMlBH?=
 =?utf-8?B?cHFGSDBseVJ4aUNOSUZxb3N2NHVuZFdId3oxVndNOTJDNS9CZDg1c2prTWpU?=
 =?utf-8?B?WlFEVHQzRmJjQ3QrRXArYzdSMEpCaTBxM050TkVQbXJXZnhtTFRVdTM0cUdO?=
 =?utf-8?B?TUxMcFZtS0hkREp0ZkFmNTltOUFwNjJsbkE5MjY3cmwwZC9ZTWJIcG5WbEpk?=
 =?utf-8?B?UHRlWElRVTNNVkN1TnU2N253Y3ZaczNrWUNaMmN0dVVuNzJOYUJGRjJKUEx2?=
 =?utf-8?B?b0Q5b0h3RThnNkJSWVhwZkg4c3NvYk9DTTB2ZnpGTzc5SjNiM2k2T1ZXZmJu?=
 =?utf-8?B?VlozTTZRUnZlaElTb0djbjZTU2E4OVNURDFCV0x1OWZJRytqQWhXellqLzJl?=
 =?utf-8?B?MHJhT296SHhSeGRGcmRIa1lVdHgrazVWVTR3a2Y5YzA1TzRNbU8vUnZuUE95?=
 =?utf-8?B?SXhXcXozQWNmbS9zT3JNNXJGbDNnbFU2Q1NTRlBlNjk3VExqeGlWMFYvTE90?=
 =?utf-8?B?bU9qY3k0MnBSQWZ5ZGlYN1hFaVBCd3VYbzRzV3o5UkJYbU1yTzYxTUx0M3By?=
 =?utf-8?B?akpVQzZvZmkxcnRscWxlWk9CeWI3dm1FanhCeHFWVTM1RlhqQTlFcldLZWNM?=
 =?utf-8?B?MGEyNHBqcmhiZnZvbUhVTEw1Zmx2ZlFldVVKbnJOakVnWjlVb3BXa2tIR3Vm?=
 =?utf-8?B?SmVyUDFvWkNnMFZlRTdGTzZEYzZUaXowVXpQWlFTQXU2YmJRZ2gxRWtrZEZ4?=
 =?utf-8?B?RXl5akpqM01zUEpyUkt5bGNrZTVKekFGMzlUakt6cW44TGQwaDVQRjl6WWJL?=
 =?utf-8?B?WGs4R1k2T3Y4U2JCODNCRmRPYnhPNGpOejJza3BvMm11YmpvVDBIZ2RSNVNo?=
 =?utf-8?B?WjNEb3JIQkJGWVlSV0ZlZGpCKzM0OEpaS0doWmxDaFJHOGEvdjJ1OW1PY3VX?=
 =?utf-8?B?TndwWVBMRHpkaCtOTEFDSm92NjlFWGMzS2VsWXpQZEdQU2dpcEtzRFpndjNo?=
 =?utf-8?B?ZXdMMU0vaUVlYmFJVTl6dmlDN2Z5RXFZZk1TOVBsQ1FITHcyVUhXbU1BR3RF?=
 =?utf-8?B?SFpyS29tdms2S2JIZk5vVFlrQnpycE9BVHpEeUVZNHZQd1ZiU3dNYWFmcSts?=
 =?utf-8?B?clNlaWROMWVVb0ptcVdmejk3TGwxVUJWUkl3SFdVUWliQWdFbzY1SHFEQzBJ?=
 =?utf-8?B?SEEzMjY5d0xxVk9JaVV0Tmg3VWxjUzZmbGNrRGEwRlVFZlJVU3ptcjF1bjhK?=
 =?utf-8?B?cElHSnFvZ0dPeGczNCtSY21tbmdIWEplVHF3TnlrdzNuM1h6TVQ1WFY3alpV?=
 =?utf-8?B?WXlNVWl3dFMrY3BLblJPWDlJMlhVOHZycEFhZDd3TUZxZi9rS3ZEN3l2N1A3?=
 =?utf-8?B?dFZ6dFZjeXEvR0lkenVSOGdGa01LZTVOLzVFWUpwc3UrM2tJelk1eXNiVzQ4?=
 =?utf-8?B?OUdjcWtralplT2VMTFZXNU5ETklpTjF5NlJ2MURSeXdXSlJPZ21HalJKUkYr?=
 =?utf-8?B?R3AwdjcwaXZDOXJFWHNHMW4wWFcwRlBvT05Za0piL1E2YmRERWcvSjZtNTFP?=
 =?utf-8?B?Sm1DNTEyZmp5TmFqYmxLS2NxWE5FSm1DUlR0VHJzOEJuYlFPTXFGWW5acWFT?=
 =?utf-8?B?dWhOQmdzYXU3QTVqT2F3cVl4TUk1Vks3T1U1RWJmaG1LSzNCdlhySmt6dEQ0?=
 =?utf-8?B?Ymx0b3p2aGR1YUhWcTFNOWU1VE9GWHlVVXErdytwQ3pNUGlxcnNEVndvdGZ5?=
 =?utf-8?B?S2M1QXJQZU5TeXJkeTBUcE5KaTZNUHQ0NVIrWVlPOUJDM2VwcHpOVjVpYVQ2?=
 =?utf-8?B?akFuMktPcUl1S0c0ZXcrN1NzVmZzTHR1eDNPaDNXTWVURW9tVUlWY25udG43?=
 =?utf-8?Q?S3UaVqDqHH/lmfjgLcxUxpGv9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b8e22ae-7b9a-4e8c-f556-08db05ce02e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 10:04:17.2574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7VCXoKeBauRWEoD4gxB5F517BKjGEDLhtCgRUBl/ACe3BQhG+jXc8wleEMFT/H2h2061eKv11zwQw2vmQOcLpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/dsb: Don't use DSB to load
 the LUTs during full modeset
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxOCwgMjAyMyAxMDowMSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMDkvMTNdIGRybS9pOTE1L2RzYjogRG9uJ3QgdXNlIERTQiB0byBsb2FkIHRo
ZQ0KPiBMVVRzIGR1cmluZyBmdWxsIG1vZGVzZXQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBVc2luZyB0aGUgRFNCIGZv
ciBMVVQgbG9hZGluZyBkdXJpbmcgZnVsbCBtb2Rlc2V0cyB3b3VsZCByZXF1aXJlIHNvbWUNCj4g
YWN0dWFsIHRob3VnaC4gTGV0J3MganVzdCB1c2UgbW1pbyBmb3IgdGhlIHRpbWUgYmVpbmcuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuYyB8IDQgKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBpbmRl
eCBmNGE1MjdhM2MyNjUuLmNhYjhkZmQwMzg1MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAtMTM4Myw2ICsxMzgzLDEwIEBAIHZvaWQg
aW50ZWxfY29sb3JfcHJlcGFyZV9jb21taXQoc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpDQo+ICAJLyogRklYTUUgRFNCIGhhcyBpc3N1ZXMgbG9hZGluZyBMVVRzLCBkaXNh
YmxlIGl0IGZvciBub3cgKi8NCj4gIAlyZXR1cm47DQo+IA0KPiArCWlmICghY3J0Y19zdGF0ZS0+
aHcuYWN0aXZlIHx8DQo+ICsJICAgIGludGVsX2NydGNfbmVlZHNfbW9kZXNldChjcnRjX3N0YXRl
KSkNCj4gKwkJcmV0dXJuOw0KDQpJcyBpdCBjYXVzaW5nIGFueSBpc3N1ZSA/IERpZCBub3QgZ2V0
IHRoZSBhZHZhbnRhZ2Ugb2YgTU1JTyBvdmVyIERTQiBkdXJpbmcgbW9kZXNldC4NCg0KUmVnYXJk
cywNCkFuaW1lc2gNCg0KPiArDQo+ICAJaWYgKCFjcnRjX3N0YXRlLT5wcmVfY3NjX2x1dCAmJiAh
Y3J0Y19zdGF0ZS0+cG9zdF9jc2NfbHV0KQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtLQ0KPiAyLjM4
LjINCg0K
