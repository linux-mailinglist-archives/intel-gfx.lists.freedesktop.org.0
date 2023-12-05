Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2287E8053B6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 13:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F44110E4FE;
	Tue,  5 Dec 2023 12:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A433610E4FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 12:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701777657; x=1733313657;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d16Ok40CfqfHdtOAr6LKbG8Ja2Q//j8B0GvtUFFXZa0=;
 b=Whnbv+9RdUHj+BnfSRJN1foAM59/FwJs8OL+M3g6Hp/Wev9Xu1xq98Kq
 tPpC5zlFAluq/yBLEJQEOSzG5VVb/RFkjOsg7kcKlEs+Y1cfeU8l/Dn6U
 1sobBk+1RF4WtESh6O7rG9XEKjOJLg8rnOS6XybHX/GFM6jdG47jc6vMF
 ey2yfLLU7UNTCC4/z/qK0vZuRV5CPHaDTA3MI5/hjF2dhOk+KXyhyF9M5
 I6TR0wmWFCyqE9/bEZCJ7wPa4aZByAf92Zw+e/eip9VjZdFRIqFn0M0qL
 ZJEf4F/JDnnDiUyv/nOZD5Qr9kWNxQMRvGe5T+a1rc+2J3zxEWb/Jqn41 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="7228547"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; 
   d="scan'208";a="7228547"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 04:00:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="770889583"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="770889583"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2023 04:00:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 04:00:55 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 04:00:54 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Dec 2023 04:00:54 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 5 Dec 2023 04:00:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KYCwrh7k1axTTmv0PV2K5rAh2MoU7CH0Ll4vtqh9ESk4vKStycu6J8qv49ZXJqc0dTasXQ+jRRgRRQtet4o8e4Hutb/HxsImiNU4qgfdscVE6Y5B45jU4M/y6/gd16tYRbC7uUnnDHSJuBsG1zr4WnNl2knoxSqBRbyce5BABy2/3vV9HuOuikCainP08eGO11R8Zs0mWis3X/lXSskSKQGlfeWwutSfZjPhKo7+p4dC+eF2EYMuU/iZg7ESYvxV8Zph2Bd7UKJ0pZcnn7RxYqdA7LAkgnWehWAMqC3VWlD+v6UUu8w69ZMFPoGsKI2c5bo6WVs5Ka0Xj7em93CA8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d16Ok40CfqfHdtOAr6LKbG8Ja2Q//j8B0GvtUFFXZa0=;
 b=dm1salfmXlAAQuQ0GJO44DDfBhU4rNwmlKxRIsBOznyGGkZvDDR43AmzH04BKp3V+oT0zZ0mGoHnzXyTALLqcH3H5eZmMFjqj2f9CwMflivD7AzWtHUjJ4y398uEBroHIUxuOT6B0cai2VPyY75iDYz2LZsHm76YYNNOM7u+nXjLV8abixOTWhI4NXHIyXFhOZLnfSZlaUeuenHPP+R++3oPhT3tg3ODEAmRXd+evMFIsK3ThW8pwBmwScttIW7buQo+9x0pZSBxQiCslDlIbQ27MeKPWpBoii/p0j9a37iBdD/A9mqqlBbjjvFcYOJmH8JVybcFr7Gx9wKVs+JR/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DM4PR11MB7304.namprd11.prod.outlook.com (2603:10b6:8:107::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 12:00:47 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7046.033; Tue, 5 Dec 2023
 12:00:47 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
Thread-Index: AQHaJFw3CASKptwwHkqm5Gz7lSFm2LCUgEGAgARnpACAAGx6cIAABjcAgAAAdYCAAUEIIA==
Date: Tue, 5 Dec 2023 12:00:47 +0000
Message-ID: <CY5PR11MB63449F65F906172F1785515FF485A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231201134141.1569265-1-jani.nikula@intel.com>
 <ZWnwofolLechg_Dg@intel.com> <87wmtu2str.fsf@intel.com>
 <CY5PR11MB634479123D55A69917190B40F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <87a5qp3oe1.fsf@intel.com>
 <CY5PR11MB6344014FD6FC06C85356DE48F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB6344014FD6FC06C85356DE48F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DM4PR11MB7304:EE_
x-ms-office365-filtering-correlation-id: a151a49f-d236-4520-3e68-08dbf589d12a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b6oWBXDkO5E+Sk3VlprJN7Mx4g+eHIQ4KRaS6F1ARbtbq8XtcRAQYSG/1zJgJxmAwo5kzcvM2Cyd0h4Lie8NJjYb7bousPvH5S3yHf6TXyJvQKD4pVL0VIF1VoE91RuUJQoiYIdJg1FSBlHPkUey6U5hUGKpGs2luZ7acoQMtubLk/s6TsBdxKGaVt9JMPBXgh3ZTyyBpHLU6IUpDSDyqQQ9++KOX7H3Us2fzNjcIQFODD8PdKzUnaV26P5HGbbF3VsmuwcEAS3K742T/9Gx0jnAM6iEU3iIod4VZdBmqFmczf5DwcaZV3xBzruaOTeFwxr27NZWjzNfRYwNQVe1G7Y8jDZzpQpSgkBDWOe8dUpbCcR9NPmDHwxvhEvXIxfsZ6OMSaS6dzhAmNfB4VfxXwz8liOnYn33+YdhWnT6AiU9AGc466KWZhpia5isoRgapv+hMa4DXUfZEqVc7g2hWLmxwDTbbv3ZBQKgaycitKP3X6DHcqEYb33bZxnvX6ScXb/TH7Medjio+Zp4a+v3tWpLntppuh0L7VU/zyAs0OC5d7kuiebtd0adVYR+JFRPHlj1A7Z3FazYAb32k1qPqyxA8ZOuq5aS3eXqeZj4q3k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(346002)(39860400002)(136003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(66574015)(966005)(83380400001)(478600001)(9686003)(53546011)(6506007)(26005)(7696005)(71200400001)(316002)(110136005)(66476007)(66446008)(64756008)(66556008)(8676002)(66946007)(55016003)(52536014)(86362001)(41300700001)(8936002)(4326008)(38070700009)(76116006)(33656002)(2906002)(5660300002)(122000001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OU1ORStjSGtkWjIwY1dJTFRCbUtvMm9vRGR5dm56dnFTeEdqcktBcWd4Qmdl?=
 =?utf-8?B?aHRvaHpGZDVXOGpCd293RUlRcEQxeFR1Vmk5MkNKQkFUTVMySkUzTVRWa3Yv?=
 =?utf-8?B?c0dkZzVmOWV1ZnJWWWJFY3FBZG9nckJqd1hvNEVjR29YeFdoY0RYekFoZy8y?=
 =?utf-8?B?S0phY2VmdjNtRGxQWksraTdjYy9kcmVpSWVhbENjMkkzN2l6MWQyTGdWWmFt?=
 =?utf-8?B?cmY4eFZJWmhLY1dwbGZmQmJzUHBzUTE1SVhrTngrS3NQQVFDSDR2S1AwQ1pm?=
 =?utf-8?B?aW1lbTErbUYvSnRwZ1plRHJrWFVucjRRWFNuU2xSZVNzN2dybW9xb21XYlho?=
 =?utf-8?B?eldRcHg5V1VGdUdVc3RMcExNdUkzYmNYS2tXRU9oSjFUNkpGR0dYMXp0UnFV?=
 =?utf-8?B?dHM4OVJCUlBuWTlZN21vWFVmMDdDeFZFWVg4WW9sYWNGQzl5NmdoV3Vmbm81?=
 =?utf-8?B?U1NVU1FvM2dsNkxKRjByMUhiQ3Z1NjZubXg4NlpWbjNzZGlvVkZlMDlIQ1FW?=
 =?utf-8?B?enB4NGxxY3V4UVBBUFgzVTk0dVBJcEIxNmM5MHIvQ0twK0JZVHBRdlgzMjdP?=
 =?utf-8?B?alNHMmpkSHE3MmJwNmRiUUp5MFhUUG5HNWh0bkNWdWhwaWZBcTQyNVBJTlFG?=
 =?utf-8?B?K3JlQ3pUeU5rUVk3UFg5NjFtMnR3c3UreWRGbFVNYitmSXljOWZVblpjZU1n?=
 =?utf-8?B?RnZYU3hjaFJIcVJ3L1lLOTFyVldGNjVPa0JSVW0vVmxJTGxXQkY2QXF5UkQ0?=
 =?utf-8?B?RkROSkxQaW9SeXFyYlhrcGl3N0hCMlBVM1NyY3hTbTNMRGNEUEZ6WlMyeVVy?=
 =?utf-8?B?cTBDOUIyeEJlNWZSWFdRcWNpMHY0THNEcTUyVDU4ci8wS0FIK2ZqTUZVOUZq?=
 =?utf-8?B?WDNSeDdVYktCTGxVZm44R0lDbHdKbUxqZE1aUndTYldXN3NxeXFxaDFvWmJy?=
 =?utf-8?B?WlQ5NW1YUWZ3Z0gvSmFpT1c2cUJzU3B3dXFGQWdFMGgzTC9WT2RLekNLd2dN?=
 =?utf-8?B?U1F6eUVFbW82NjdvQWlQT05iUnRFb0hoNlFVdi9NaDFkb01Ma3pIczZubjB3?=
 =?utf-8?B?TzIxaVY1MDNHQUVXN2ZYWllmbFQwalZtbXFLMHhvd3l2Vlo0MzVnR2FYQnp0?=
 =?utf-8?B?aEVESGpFOFlhaWt3aVdnMkJNU1kwL2dTOE82MTh3TEVtOEczeVNuR0lUMFpw?=
 =?utf-8?B?ZDJkclhHN0VJcVRLakZ0aHJHRStCRzNSSEVmY0V0akhtV3l5cGxlRlZBb251?=
 =?utf-8?B?cVkrczA1REJka1FCaDlnZ1dVY3FnMllBUHpSdFU2TlFla2tFREVVTEcxVG5W?=
 =?utf-8?B?SlA0akc4aTVaY2dncUFlRExyRmNwZm9BVWVUT0RjV09XaEVHcHBSSHlIR1or?=
 =?utf-8?B?KzRmdWdzMzRYUWk0RkpiYWpsak1TbmFjQ3VIQlUxWGswVWgyaHNWRThqNk4v?=
 =?utf-8?B?TTh2dDgzcUM1SkhTMTNWRTJTZEUwOTk1a3FDMlc4ZTQ3VVlONzV5VjhjT2Zy?=
 =?utf-8?B?MEQ1YjByUGJrOXRBWXdoTmNTVTEvaXRyL3RyTmVMVXlKV0h5enhRYngzV2lt?=
 =?utf-8?B?dHc4b0FEV1NFWElRTHRtTitNYXkwZ21xeUNxb09qR3l6cWU4c3lGYW1RUC8x?=
 =?utf-8?B?NkJyT2JtM29jM2R6SllpbHF1N3pvbFNlUzB3VWtacS9aZ2t0dGNBTDNLYkdF?=
 =?utf-8?B?QlZDR2EwWUtlSzl2dGpSaHNuYTFzZHo5YStDWG11M0V2aUs1Q2RzMERFRmor?=
 =?utf-8?B?QkxKWWhDb1FvUG5RSDBKdnBOU0Z1TUIzMWtSWnIzY0pWeURMV25IaVRtYjl3?=
 =?utf-8?B?UVNpQWg4T045em03Z2dnYWgxSVlmTTVZRGFsR1lXbzlyTXlCZXNYWFVSRld6?=
 =?utf-8?B?Q0VWV2dPTVBiRGZQQUlRazRjZDBkRmdqWWN0NkJzWnlRSjA4Ylk0UFR0bGhv?=
 =?utf-8?B?NTJhcGkyQzlsSys4MUEzdE1admZucGV6TjRCSyt3RnlTOXRGOCs2S0IyM2xP?=
 =?utf-8?B?VVRWR3E2bWdMaVVoNnk1ZkNnd3VmdHgyTUpWU0tVeUlKUVg1cWFmeE8zQi8r?=
 =?utf-8?B?eDFUYTFGWHlIN1puU0M0V3E5VmlxcXJWTjVyamR3K3IvbDFmRVhVbDJYUDNI?=
 =?utf-8?Q?wyUMS4v0wn/9qy2P6ph+7yMwJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a151a49f-d236-4520-3e68-08dbf589d12a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 12:00:47.0966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y4LmjIAP9jtAByNQv3iirVzRgT+YenDIOXVTUBlrJ7iZ4eFzpXP+8Ns7unVEq+Q/DiY7O8Ysx8ptAR0JHtnbaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7304
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhbmthciwgVW1hDQo+
IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgNCwgMjAyMyAxMDoyMyBQTQ0KPiBUbzogTmlrdWxhLCBK
YW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QNCj4gPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBTdWJqZWN0OiBSRTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9lZHA6IGRv
bid0IHdyaXRlIHRvIERQX0xJTktfQldfU0VUDQo+IHdoZW4gdXNpbmcgcmF0ZSBzZWxlY3QNCj4g
DQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IE5pa3Vs
YSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IE1vbmRheSwgRGVjZW1i
ZXIgNCwgMjAyMyAxMDoxOCBQTQ0KPiA+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpA0KPiA+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IFN1Ympl
Y3Q6IFJFOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2VkcDogZG9uJ3Qgd3JpdGUgdG8N
Cj4gPiBEUF9MSU5LX0JXX1NFVCB3aGVuIHVzaW5nIHJhdGUgc2VsZWN0DQo+ID4NCj4gPiBPbiBN
b24sIDA0IERlYyAyMDIzLCAiU2hhbmthciwgVW1hIiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPiB3
cm90ZToNCj4gPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4+IEZyb206IElu
dGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhh
bGYNCj4gPiA+PiBPZiBKYW5pIE5pa3VsYQ0KPiA+ID4+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIg
NCwgMjAyMyAzOjI4IFBNDQo+ID4gPj4gVG86IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiA+PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9l
ZHA6IGRvbid0IHdyaXRlIHRvDQo+ID4gPj4gRFBfTElOS19CV19TRVQgd2hlbiB1c2luZyByYXRl
IHNlbGVjdA0KPiA+ID4+DQo+ID4gPj4gT24gRnJpLCAwMSBEZWMgMjAyMywgVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+ID4gPj4gPiBPbiBG
cmksIERlYyAwMSwgMjAyMyBhdCAwMzo0MTo0MVBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToN
Cj4gPiA+PiA+PiBUaGUgZURQIDEuNSBzcGVjIGFkZHMgYSBjbGFyaWZpY2F0aW9uIGZvciBlRFAg
MS40eDoNCj4gPiA+PiA+Pg0KPiA+ID4+ID4+ID4gRm9yIGVEUCB2MS40eCwgaWYgdGhlIFNvdXJj
ZSBkZXZpY2UgY2hvb3NlcyB0aGUgTWFpbi1MaW5rIHJhdGUNCj4gPiA+PiA+PiA+IGJ5IHdheSBv
ZiBEUENEIDAwMTAwaCwgdGhlIFNpbmsgZGV2aWNlIHNoYWxsIGlnbm9yZSBEUENEIDAwMTE1aFsy
OjBdLg0KPiA+ID4+ID4+DQo+ID4gPj4gPj4gV2Ugd3JpdGUgMCB0byBEUF9MSU5LX0JXX1NFVCAo
RFBDRCAxMDBoKSBldmVuIHdoZW4gdXNpbmcNCj4gPiA+PiA+PiBEUF9MSU5LX1JBVEVfU0VUIChE
UENEIDExNGgpLiBTdG9wIGRvaW5nIHRoYXQsIGFzIGl0IGNhbiBjYXVzZQ0KPiA+ID4+ID4+IHRo
ZSBwYW5lbCB0byBpZ25vcmUgdGhlIHJhdGUgc2V0IG1ldGhvZC4NCj4gPiA+PiA+DQo+ID4gPj4g
PiBXaGF0IGEgdGVycmlibGUgd2F5IHRvIHNwZWNpZnkgdGhpcyA6KCBUaGlzIG1lYW5zIHRoZSBk
ZXZpY2UgbXVzdA0KPiA+ID4+ID4gaGF2IHNvbWUgaW50ZXJuYWwgc3RhdGUgdG8ga2VlcCB0cmFj
ayBvZiB3aGV0aGUgQldfU0VUIHdhcyBldmVyIHdyaXR0ZW4uDQo+ID4gPj4NCj4gPiA+PiBJbmRl
ZWQuDQo+ID4gPj4NCj4gPiA+PiBBZGRpdGlvbmFsbHksIGVEUCAxLjUgc3BlY2lmaWVzIExJTktf
Q09ORklHVVJBVElPTl9TVEFUVVMgKERQQ0QNCj4gPiA+PiAwMDIwQ2gpIHdoaWNoIGV4cG9zZXMg
dGhlIGludGVybmFsIHN0YXRlIGFzIGxpbmsgcmF0ZSBzZXQgc3RhdHVzLA0KPiA+ID4+IGFuZCB3
aGV0aGVyIHRoYXQgc3RhdHVzIGlzIHZhbGlkIG9yIG5vdC4NCj4gPiA+Pg0KPiA+ID4+IE92ZXJh
bGwgdGhlIHNwZWMgbG9va3MgbGlrZSB0aGF0J3MganVzdCBmb3Igc3RhdHVzLCBidXQgdGhlDQo+
ID4gPj4gcmVnaXN0ZXIgaXMgYW5ub3RhdGVkIFdyaXRlL1JlYWQgc28gd2hvIGtub3dzLg0KPiA+
ID4+DQo+ID4gPj4gPg0KPiA+ID4+ID4+DQo+ID4gPj4gPj4gQ2xvc2VzOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzkwODENCj4gPiA+PiA+PiBUZXN0
ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+ID4+ID4+
IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4g
Pj4gPj4gLS0tDQo+ID4gPj4gPj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
dHJhaW5pbmcuYyB8IDIzDQo+ID4gPj4gPj4gKysrKysrKysrKystLS0tLS0tLQ0KPiA+ID4+ID4+
ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+ID4g
Pj4gPj4NCj4gPiA+PiA+PiBkaWZmIC0tZ2l0DQo+ID4gPj4gPj4gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+ID4+ID4+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gPiA+PiA+
PiBpbmRleCBkYmMxYjY2YzhlZTQuLjYzMzZhMzkwMzBhNCAxMDA2NDQNCj4gPiA+PiA+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0K
PiA+ID4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5jDQo+ID4gPj4gPj4gQEAgLTY1MCwxOSArNjUwLDIyIEBAIGludGVsX2RwX3Vw
ZGF0ZV9saW5rX2J3X3NldChzdHJ1Y3QNCj4gPiA+PiA+PiBpbnRlbF9kcA0KPiA+ID4+ICppbnRl
bF9kcCwNCj4gPiA+PiA+PiAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ID4+ID4+ICAgICAgICAgICAgICAgICAgICAg
ICAgdTggbGlua19idywgdTggcmF0ZV9zZWxlY3QpICB7DQo+ID4gPj4gPj4gLSAgdTggbGlua19j
b25maWdbMl07DQo+ID4gPj4gPj4gKyAgdTggbGFuZV9jb3VudCA9IGNydGNfc3RhdGUtPmxhbmVf
Y291bnQ7DQo+ID4gPj4gPj4NCj4gPiA+PiA+PiAtICAvKiBXcml0ZSB0aGUgbGluayBjb25maWd1
cmF0aW9uIGRhdGEgKi8NCj4gPiA+PiA+PiAtICBsaW5rX2NvbmZpZ1swXSA9IGxpbmtfYnc7DQo+
ID4gPj4gPj4gLSAgbGlua19jb25maWdbMV0gPSBjcnRjX3N0YXRlLT5sYW5lX2NvdW50Ow0KPiA+
ID4+ID4+ICAgIGlmIChjcnRjX3N0YXRlLT5lbmhhbmNlZF9mcmFtaW5nKQ0KPiA+ID4+ID4+IC0g
ICAgICAgICAgbGlua19jb25maWdbMV0gfD0gRFBfTEFORV9DT1VOVF9FTkhBTkNFRF9GUkFNRV9F
TjsNCj4gPiA+PiA+PiAtICBkcm1fZHBfZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBfTElO
S19CV19TRVQsDQo+ID4gPj4gPj4gbGlua19jb25maWcsIDIpOw0KPiA+ID4+ID4+ICsgICAgICAg
ICAgbGFuZV9jb3VudCB8PSBEUF9MQU5FX0NPVU5UX0VOSEFOQ0VEX0ZSQU1FX0VOOw0KPiA+ID4+
ID4+ICsNCj4gPiA+PiA+PiArICBpZiAobGlua19idykgew0KPiA+ID4+ID4+ICsgICAgICAgICAg
LyogZURQIDEuMyBhbmQgZWFybGllciBsaW5rIGJ3IHNldCBtZXRob2QuICovDQo+ID4gPj4gPj4g
KyAgICAgICAgICB1OCBsaW5rX2NvbmZpZ1tdID0geyBsaW5rX2J3LCBsYW5lX2NvdW50IH07DQo+
ID4gPj4gPj4NCj4gPiA+PiA+PiAtICAvKiBlRFAgMS40IHJhdGUgc2VsZWN0IG1ldGhvZC4gKi8N
Cj4gPiA+PiA+PiAtICBpZiAoIWxpbmtfYncpDQo+ID4gPj4gPj4gLSAgICAgICAgICBkcm1fZHBf
ZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBfTElOS19SQVRFX1NFVCwNCj4gPiA+PiA+PiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICZyYXRlX3NlbGVjdCwgMSk7DQo+ID4gPj4gPj4g
KyAgICAgICAgICBkcm1fZHBfZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBfTElOS19CV19T
RVQsDQo+ID4gPj4gbGlua19jb25maWcsDQo+ID4gPj4gPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBBUlJBWV9TSVpFKGxpbmtfY29uZmlnKSk7ICB9IGVsc2Ugew0KPiA+ID4+ID4+ICsg
ICAgICAgICAgLyogZURQIDEuNCByYXRlIHNlbGVjdCBtZXRob2QuICovDQo+ID4gPj4gPj4gKyAg
ICAgICAgICBkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX0xBTkVfQ09VTlRf
U0VULA0KPiA+ID4+IGxhbmVfY291bnQpOw0KPiA+ID4+ID4+ICsgICAgICAgICAgZHJtX2RwX2Rw
Y2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9MSU5LX1JBVEVfU0VULA0KPiA+ID4+IHJhdGVf
c2VsZWN0KTsNCj4gPiA+PiA+DQo+ID4gPj4gPiBEb2Vzbid0IGxvb2sgdGhlcmUncyBhbnl0aGlu
ZyBpbiB0aGUgc3BlYyB0aGF0IHNwZWNpZmllcyB3aGVuIHRoZQ0KPiA+ID4+ID4gZGV2aWNlIGlz
IHN1cHBvc2VkIHRvIHJlc2V0IGl0cyBpbnRlcm5hbCBzdGF0ZSB0byBzdG9wIGlnbm9yaW5nDQo+
ID4gPj4gRFBfTElOS19SQVRFX1NFVC4NCj4gPiA+PiA+IERvIHdlIGtub3cgd2hlbiB0aGlzIHBh
bmVsIGRvZXMgaXQ/IFdoZW4gVkREIGlzIHJlbW92ZWQ/DQo+ID4gPj4NCj4gPiA+PiBObyBpZGVh
LiBBbmltZXNoPw0KPiA+ID4+DQo+ID4gPj4gSSB0aGluayBpdCdzIGp1c3QgY3Jhenkgd3JpdGlu
ZyAwIHRvIGV4cGxpY2l0bHkgZGlzYWJsZQ0KPiA+ID4+IERQX0xJTktfQldfU0VUIHJlbmRlcnMg
RFBfTElOS19SQVRFX1NFVCB1bnVzYWJsZS4gUHJldHR5IHN1cmUgd2UndmUNCj4gPiA+PiBzZWVu
IHBhbmVscyB3aGVyZSB0aGlzIHdvcmtzDQo+ID4gYXMNCj4gPiA+PiB5b3UnZCBleHBlY3QuDQo+
ID4gPj4NCj4gPiA+PiBBbmQgdGhlIGFib3ZlIGRlcGVuZHMgb24gcHJlLW9zIHVzaW5nIHRoZSBz
YW1lIGxvZ2ljIGFzIHVzIGZvcg0KPiA+ID4+IGNob29zaW5nIERQX0xJTktfUkFURV9TRVQuIEdP
UCBzZWVtcyB0byBkbyB0aGF0LiBCdXQgaWYgaXQgb3Igc29tZQ0KPiA+ID4+IG90aGVyIHByZS1v
cyB1c2VkIERQX0xJTktfQldfU0VULCB3ZSdkIGZhaWwuIFdpdGggc29tZSBvdGhlcg0KPiA+ID4+
IHBhbmVscywgd3JpdGluZyB0aGUgMCBtaWdodA0KPiA+IHJlY292ZXINCj4gPiA+PiBmcm9tIHRo
YXQuDQo+ID4gPg0KPiA+ID4gVGhlIHNwZWMgZG9lcyBsZWF2ZSBpdCBhIGJpdCBvcGVuIG9uIHRo
aXMgb25lOg0KPiA+ID4NCj4gPiA+IDExNWg6IExJTktfUkFURV9TRVQgYW5kIFRYX0dUQ19DQVBB
QklMSVRZIOKAoiBEUENEIDAwMDAxaCA9IDAwaC9EUENEDQo+ID4gPiAwMjIwMWggPSAwMGgg4oCT
IFNvdXJjZSBkZXZpY2Ugc2hhbGwgdXNlIHRoaXMgZmllbGQgdG8NCj4gPiBjaG9vc2UNCj4gPiA+
IHRoZSBsaW5rIHJhdGUsIGFuZCB0aGUgU2luayBkZXZpY2Ugc2hhbGwgaWdub3JlIERQQ0QgMDAx
MDBoIOKAoiBEUENEDQo+ID4gPiAwMDAwMWgvRFBDRCAwMjIwMWggPSBWYWxpZCBsaW5rIHJhdGUg
4oCTIFNvdXJjZSBkZXZpY2UgbWF5IG9wdGlvbmFsbHkNCj4gPiBjaG9vc2UNCj4gPiA+IGEgbGlu
ayByYXRlIGFzc29jaWF0ZWQgd2l0aCBIQlIzLCBIQlIyLEhCUiwg4oCTb3LigJMgUkJSIGJ5IHdy
aXRpbmcgdG8NCj4gPiA+IERQQ0QNCj4gPiAwMDEwMGgNCj4gPiA+DQo+ID4gPiBTbyB0aGUgMm5k
IHBvaW50IGhlcmUgZG9lcyBtZW50aW9ucyB0aGF0IHNpbmtzIGNhbiBvcHRpb25hbGx5IHVzZQ0K
PiA+ID4gdmFsdWUgb2YNCj4gPiAwMDEwMGgNCj4gPiA+IGlmIDIyMDFoIGlzIG5vdCAwMC4gU28g
cHJvZ3JhbW1pbmcgYSB2YWx1ZSB0byB0aGlzIERQQ0QgaXMgbm90IHJpZ2h0DQo+ID4gPiB1bmxl
c3Mgd2UNCj4gPiBwcm9ncmFtDQo+ID4gPiB0aGUgcmlnaHQgdmFsdWUgKG5vdCAwKS4NCj4gPiA+
DQo+ID4gPiBJIGZlZWwgc2FmZSB3YXkgd291bGQgYmUgYmUgdG8gZ28gd2l0aCBMSU5LX0JXX1NF
VCBmb3IgRFAxLjMgYW5kIGZvcg0KPiA+ID4gRFAxLjQrDQo+ID4gYWx3YXlzIHVzZQ0KPiA+ID4g
TElOS19SQVRFX1NFVCBhbmQgaGF2ZSBpdCBtdXR1YWxseSBleGNsdXNpdmUuDQo+ID4gPg0KPiA+
ID4gU29tZSBUQ09OcyB3b3VsZCBoYXZlIGlnbm9yZWQgYW5kIHdlIGdvdCBsdWNreSBidXQgd2Ug
Y2FuJ3QgbGVhdmUgaXQNCj4gPiBhbWJpZ3VvdXMsIHdlIHdpbGwgYmUgY29tcGxpYW50DQo+ID4g
PiB0byBzcGVjIGlmIHdlIGRvbid0IHdyaXRlIDB4MTAwLiBTbyBsZXQncyBnbyB3aXRoIHRoaXMg
Y2hhbmdlLg0KPiA+DQo+ID4gTW9yZW92ZXIsIHRoZXJlIGFyZSBvbmx5IGZvdXIgZG9jdW1lbnRl
ZCB2YWxpZCB2YWx1ZXMgZm9yIHRoaXMNCj4gPiByZWdpc3RlciwgMHgwNiwgMHhhLCAweDE0LCBh
bmQgMHgxZSwgYWxsIG90aGVyIHZhbHVlcyBhcmUgcmVzZXJ2ZWQuIEluDQo+ID4gdGhhdCBzZW5z
ZSBpdCdzIGFsc28gd3JvbmcgdG8gd3JpdGUgMHgwMC4NCj4gDQo+IFllYWgsIHdyaXRpbmcgMCBp
cyBkb25lIHdpdGggYW4gaW50ZW50aW9uIHRvIGRpc2FibGUgaXQgYnV0IHRoYXTigJlzIG5vdCB0
aGUgd2F5IHRvDQo+IGhhdmUgdGhpcyBvcHRpb24gZGlzYWJsZWQuIEluZmFjdCB0aGVyZSBpcyBu
byByZWFzb24gdG8gd3JpdGUgdG8gaXQgZm9yIERQMS40KyBpZiBzaW5rDQo+IGlzIGNvbXBsaWFu
dC4NCg0KVGhlIGNoYW5nZSBsb29rcyBvayBhbmQgYWxpZ25zIHdpdGggc3BlYywgaXRzDQpSZXZp
ZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KUmVnYXJkcywN
ClVtYSBTaGFua2FyDQoNCj4gDQo+ID4gQlIsDQo+ID4gSmFuaS4NCj4gPg0KPiA+DQo+ID4NCj4g
Pg0KPiA+ID4NCj4gPiA+IFJlZ2FyZHMsDQo+ID4gPiBVbWEgU2hhbmthcg0KPiA+ID4NCj4gPiA+
PiBObyByLWIsIHNvIGRvIHlvdSBoYXZlIGFueSBiZXR0ZXIgaWRlYXM/DQo+ID4gPj4NCj4gPiA+
Pg0KPiA+ID4+IEJSLA0KPiA+ID4+IEphbmkuDQo+ID4gPj4NCj4gPiA+Pg0KPiA+ID4+ID4NCj4g
PiA+PiA+PiArICB9DQo+ID4gPj4gPj4gIH0NCj4gPiA+PiA+Pg0KPiA+ID4+ID4+ICAvKg0KPiA+
ID4+ID4+IC0tDQo+ID4gPj4gPj4gMi4zOS4yDQo+ID4gPj4NCj4gPiA+PiAtLQ0KPiA+ID4+IEph
bmkgTmlrdWxhLCBJbnRlbA0KPiA+DQo+ID4gLS0NCj4gPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
