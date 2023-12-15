Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1271E8152C4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 22:58:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959BA10E05C;
	Fri, 15 Dec 2023 21:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D231910E05C
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 21:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702677525; x=1734213525;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kskxwOj4IGrYtNf7riknWeNV+ckHYuSHyJP3whTC9HI=;
 b=lcGmHTQVfhD8t9up86FW9YpPviPeZ43EMPAvpcnlUTCOZ6MGvJjn2Qp2
 BB1aFKpPf4/ks0TzNVH00MHj61XDDvePra6192+OyfYGb7E2IvL2k8c1+
 hehf7i0d11JlFGS6nVVF7lbN7bHJZlueiqmgBhzhIWeC1VAB6jH4eK7Vf
 Xqq3sG5m13c5WRg2DKQ2yz4Rsq86aN8ilSvLmz/zpIqxYPrAJlfjkkoy8
 BCpEoOgcvYfK+/7bgp+2a5IZHZcw+f4N9Q2beYpaBswyNxVWXanBqOlhH
 PEvflvT+3o6g0l0w/rS6/4tVCpctJatFpIpUVz0LTJ38gVmQQkf6iqe2M w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="375484032"
X-IronPort-AV: E=Sophos;i="6.04,280,1695711600"; d="scan'208";a="375484032"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 13:58:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="893047595"
X-IronPort-AV: E=Sophos;i="6.04,280,1695711600"; d="scan'208";a="893047595"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 13:58:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 13:58:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 13:58:44 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 13:58:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zo0cEzpvM+nnC8vVrCLUiTznUpEqrAvV8QE2AtzBYU8epglvK+K7SCOiOhH/Wu49nc0+cwTQAezh3Q4cBcqpoRk6FQcBeU+qh9ea0gxa8iSOKXPcR21LQzYkr41bwWelYoQopmARNzeSaxA55xcZvYxaS9vMn+pATgL1N5jakkEFKsxO7ZnrGtCIhhNbn7jccdVJrQ2pSduwrC0mSqtVjuj37vMP5yZjomNxfOENoK0e06lDtH/DfIa3jkAsISwjknunXgvsiZzxSIJgfe2i4XQjrh4YE0jMIub0aawHROyefJ/+vhmKkhBbrkd6ZZdyd9F9T1jnxGmv6JnbBg/kJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kskxwOj4IGrYtNf7riknWeNV+ckHYuSHyJP3whTC9HI=;
 b=m10gxejQMEeBSgAFlFF9j9TlVBCahqp4CsuWdW56VcQcrJg+GlXbuRVen7uhuq86gqCMCliH9FE4Z2T25Mm2AJBHJNxxrc5yVxzfPltNhCq4ArEB8zvvycsZmR51YcHuYdNBr+1QAPeYXiI8J1Q3vIXwMBdyIrWV1/Sa8CuSto+lN+ym1Ml77ctov+Pxp/1Y+0WSpAXAszUwMW4926rwK3TACc/QFjk1hH1Spm4Xl8SBX/n7XJbiGkx+xg7+D+aUJMDYdt+1C+dFXEog9YwcsrmdzyliZqaYHpf9qauz17I00N5C3yGZ83wUXwEmeQblN/zNXriD7tpUl+lEvPTRTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CY8PR11MB6844.namprd11.prod.outlook.com (2603:10b6:930:5f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.28; Fri, 15 Dec 2023 21:58:42 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7091.028; Fri, 15 Dec 2023
 21:58:42 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 04/15] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Thread-Topic: [PATCH v2 04/15] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
 stolen memory access
Thread-Index: AQHaL0aJJPbLKoAzxkav2NnyPdgxiLCq3afQ
Date: Fri, 15 Dec 2023 21:58:41 +0000
Message-ID: <DM4PR11MB5971E6B8BB644DE98E4764248793A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20231215105929.29568-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CY8PR11MB6844:EE_
x-ms-office365-filtering-correlation-id: 7b9386ce-2e99-4d0f-ce5c-08dbfdb9005f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d6e+qA/rePkkGKHt1k3klp7fkzDyod9NQ6D/56rGzezOgWBFm2+y0OOPkPvMXiGmn4xjikIFYY7xFjBMPSC6fyPIPIDIZ+Hm1aOXe9oIvzwoS+mB1fGCr271yW5qxNGfMt7zS0MUMDzPx7Z/lanFPi9pRwEezLSOfzGbQX4aPSmbeiAZMnPDEBXMk/DtA23oVVtPiZSLhGFTlvBRKdNbdGLXCirQRy0w6EyT0vEa2GDzosvENR//WdK0zpRp/Eb6r+h6rRputz3q03KIloa8CcNxjnQrNdYkxIVyc1+WXOKluTuOGXlXflVjT+a904sx8upu5lhpGfuXN4jkdJHOFoMnLB6pAYnIwg5bb2mepipAXAjSQ9yqjb1ujGuucaWmlHXX0gunVnCU9WDNNVUYtsTJ0o/d06HuUKNFML1lACpCcQW3quW03jhpRoQkdHr6UEzeeXpWngO4DK9sLn4dkBSjZVFt4oWaoKH6oHuLKoiKzzMHti26vxrDIHgargSZV0GELsRrR+XOJZAv0ChV7F3H5zq9gkGfB12T+6hbQqwMiHxbsoDDaEby4xhFUbkv/uGs6k8Sq2/EHMMuc+6uKkKy0nK5TpFiRDNgaim5R1g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(376002)(39860400002)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(55016003)(26005)(7696005)(6506007)(66574015)(76116006)(82960400001)(33656002)(38070700009)(38100700002)(86362001)(122000001)(4326008)(83380400001)(52536014)(5660300002)(53546011)(9686003)(71200400001)(110136005)(8676002)(316002)(66556008)(8936002)(54906003)(66946007)(64756008)(66446008)(66476007)(41300700001)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFBiVlA2QVBWaUdwWFFRN1VOeFVkZjF3eS9VZHYvcGluSmk2WFBubnUxM0dW?=
 =?utf-8?B?KzZjeFRTc3pFYUJaY2I5YURzNncxSEVnMm1iSkNZOHRUbmVzMTVhK2xDc3Qy?=
 =?utf-8?B?WGFtSGNvcHZoVlViZGQxeXRCTzcvQzFhYVNCaHNrVkVKMmk1c1FWbmJtQXhS?=
 =?utf-8?B?VWpNZm5PVnBTRksxVGZoK0FpYmNBanNnNVpaWjhydVhYSVF0YjIwdjlXdVF5?=
 =?utf-8?B?eFRINlh2SHlYTTk2cjVGbkF6Ym1GOFByVDhOL3dLY3llVW1sTURZVjNrNVpk?=
 =?utf-8?B?TzVIM2dmTXJHZUR4V0JnY0VMdHkyVHpXS1F0NGFBRUVYbFB5N1BMTU9mT0hS?=
 =?utf-8?B?TWgzdHRPQmIwckpYU2NpYndzTGtrTUpPMWtkM2tDRE5aRDFQalVLZTJFNlcy?=
 =?utf-8?B?VzBIbWY3Qm1zZ1pYYktBNEpOK0dLSVBmMUhqbzkrM1c1TTNyT3h5SDVyMWl2?=
 =?utf-8?B?NHVLQjN3UzM4ZTg2bk45VVhnTDlRdUs3bW42TkdxU3Q3VzZYRExoaTBSNEFi?=
 =?utf-8?B?QWNvTzFEdS9LVHM5Mm5vNUlFNU5sUUppM2JiWkN2QkdtTTR4NVd1UHVqLzBn?=
 =?utf-8?B?WWhubnZiZkZRSXhuNk1CL1hBdDM3bTNRNmRIWW9DbWZQNlhVNHZNcFdVMGhk?=
 =?utf-8?B?K1ZHSHRlWjczMDY4Z3NZajZWUyt0YXo1cHJsTmN6TXAyajNqUEZJdEFyQ1Nm?=
 =?utf-8?B?ZnI2K0JqK2pmaDdrWWxqQ25wcitNSTVMSmZXZVltVDAxVnJUcE5pL3hoUGVh?=
 =?utf-8?B?a2lOd3g4NFBtYjZ6YXkrR2k0ZUJISGtZU1ZiaE16ZUc4NUMzdmdUVkxoN1Jx?=
 =?utf-8?B?cTBMaWcva1JOeUV2Z3pMY05wQXdJZnFKRmduRTdKamdUbW5BQWNiVllPa0Fm?=
 =?utf-8?B?U2F5ZkZCWEZ2RnFZUlpFSlI4bFBhZ1I0R2tIQzZ4Z2UycDBFZHdIeW12RWJW?=
 =?utf-8?B?R0w0Qk9nNmRlU2ordW9OSWg0MnhObFFHcHo5M1AzcGNsVVkxWUY3ZkdNNXl0?=
 =?utf-8?B?S2tOSUh5VnppcCtIbGE4MXRpRnpwTDEzOFJCVU0rM0FCVkQvS0NWTndPM0p4?=
 =?utf-8?B?dTV5QkcraTV0R0wreU5jNmpJNzJINEMvT3p2azVYZFFRSGJOaU41R2xMbUhK?=
 =?utf-8?B?SVF5Um1scUJoMmdFTmtDckxUU1FEaE5oSlZNMmVhNmVUN2IxR20rSHZ2djNV?=
 =?utf-8?B?aTRDSm9BSWVHWFBPNThPMENWVjgyT21PcFJiMWNFSUt0TUh1aDNQUE1HUjky?=
 =?utf-8?B?R2VJeXp6WVhJS1RBSFoxUnBrK3BZdE4vOEpGN0xKdFR3L2xVOFdGdnlWNDNM?=
 =?utf-8?B?SUxNSFZRZVUydHNZNUVYbHc0RnRJcDN5OGVmc2oyQTV0dVJMNUFMZXpNVGx4?=
 =?utf-8?B?b29rRkxhSGFMMHErTVRVRzYwbi9ONDdZamdYNkV1NmpKaFZsV2d1WHpyQkI0?=
 =?utf-8?B?UXhnbndjSkppdW9oNkt0YTAxaUJYdWVOVHFaWCtNa0VMNU5FbGVrclJ4bkUz?=
 =?utf-8?B?RjFKY2FrSkdZU1FHdmpPMjdyUXEwTmdVN1B6Q1R3cjFzTWZtUE45dEJOQ0Fs?=
 =?utf-8?B?ajhMblpwZkVpTGg3TUNmMTVKdjd3MUVLS2NuOXNDUEFmdC85ZS9mUDh2OFpk?=
 =?utf-8?B?eEhZZ1dwa0NYMkFRSW91N0VGSkVVYUw4NGJoWlRuYnhidGxDNGlFaDdqdVp1?=
 =?utf-8?B?aXJsMW40RHNnM0lwdTdFVDVZUkNDalZYZnNCUERRUGpNYktrK2E4Y2tJWXJS?=
 =?utf-8?B?dGY4Q2NUVkxiQWFCcDJFcHk1eWZKMXJkbWkwQk0xdjE1VnB1V3Q0ZFVSUHRu?=
 =?utf-8?B?SjlKSGJZa3o3d1ZYSVBrZldNaldQdHR6MGNWejR4U1FRVk1waU9iTHljdDBH?=
 =?utf-8?B?RDRqd1E1RHVPaFg3bm9UWkd4cm9Fbm44cFpTaTNENjU0RXRSS1dxOTFJbnYr?=
 =?utf-8?B?YTZiVlEyS1BVekNDTC96YXRiNlZjMWQ0Sy9UL04xOUpMajV5Zy9NTjI3Q2Nh?=
 =?utf-8?B?aFp4V1BHSDhQR1p6QVgwa1pxbzM3Y21DNHdTZFE5NHozVFlLZTRLVWFYSE5p?=
 =?utf-8?B?RmV6MkN0NkROOXRrbXY3VEJWbFpya2ZKVDJVNU1rbkJnck5nOTF1L2xIMSs5?=
 =?utf-8?B?dnR1eEZTV21WSHJCZm9JcUhXSy9rMUphaTduYVZpOU5Vek1IY1l3cDJ1cy9R?=
 =?utf-8?B?cEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b9386ce-2e99-4d0f-ce5c-08dbfdb9005f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2023 21:58:42.0019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PVlNfG0vA4tcShipuHPNS/kAwyArVVtrkvV2kd8/iGr44kp+5xD64FjTPXloICxEH0noJC0TwXR5444CsyNxpKEfLia2AasK5InqrqHaKFI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6844
X-OriginatorOrg: intel.com
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
Cc: "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIg
MTUsIDIwMjMgMjo1OSBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogUGF6IFpjaGFyeWEgPHBhenpAY2hyb21pdW0ub3JnPjsgRGFzLCBOaXJtb3kgPG5pcm1v
eS5kYXNAaW50ZWwuY29tPjsNCj4gU3JpcGFkYSwgUmFkaGFrcmlzaG5hIDxyYWRoYWtyaXNobmEu
c3JpcGFkYUBpbnRlbC5jb20+OyBKb29uYXMgTGFodGluZW4NCj4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MiAwNC8xNV0gZHJtL2k5MTU6IEJ5
cGFzcyBMTUVNQkFSL0dUVE1NQURSIGZvciBNVEwNCj4gc3RvbGVuIG1lbW9yeSBhY2Nlc3MNCj4g
DQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IA0KPiBPbiBNVEwgYWNjZXNzaW5nIHN0b2xlbiBtZW1vcnkgdmlhIHRoZSBCQVJzIGlzIHNv
bWVob3cgYm9ya2VkLA0KPiBhbmQgaXQgY2FuIGhhbmcgdGhlIG1hY2hpbmUuIEFzIGEgd29ya2Fy
b3VuZCBsZXQncyBieXBhc3MgdGhlDQo+IEJBUnMgYW5kIGp1c3QgZ28gc3RyYWlnaHQgdG8gRFNN
QkFTRS9HU01CQVNFIGluc3RlYWQuDQo+IA0KPiBOb3RlIHRoYXQgb24gZXZlcnkgb3RoZXIgcGxh
dGZvcm0gdGhpcyBpdHNlbGYgd291bGQgaGFuZyB0aGUNCj4gbWFjaGluZSwgYnV0IG9uIE1UTCB0
aGUgc3lzdGVtIGZpcm13YXJlIGlzIGV4cGVjdGVkIHRvIHJlbGF4DQo+IHRoZSBhY2Nlc3MgcGVy
bWlzc2lvbiBndWFyZGluZyBzdG9sZW4gbWVtb3J5IHRvIGVuYWJsZSB0aGlzDQo+IHdvcmthcm91
bmQsIGFuZCB0aHVzIGRpcmVjdCBDUFUgYWNjZXNzZXMgc2hvdWxkIGJlIGZpbmUuDQo+IA0KPiBU
T0RPOiBhZGQgdy9hIG51bWJlcnMgYW5kIHdoYXRub3QNCldhXzIyMDE4NDQ0MDc0IGlzIG1vcmUg
YXBwcm9wcmlhdGUgaGVyZS4NCg0KV2l0aCB0aGF0LA0KUmV2aWV3ZWQtYnk6IFJhZGhha3Jpc2hu
YSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBQ
YXogWmNoYXJ5YSA8cGF6ekBjaHJvbWl1bS5vcmc+DQo+IENjOiBOaXJtb3kgRGFzIDxuaXJtb3ku
ZGFzQGludGVsLmNvbT4NCj4gQ2M6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEu
c3JpcGFkYUBpbnRlbC5jb20+DQo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5l
bkBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jIHwgMTEgKysrKysrKysrKy0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYyAgICAgICB8IDEzICsrKysrKysrKysrKy0NCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMNCj4gaW5kZXggZWUy
MzcwNDNjMzAyLi4yNTJmZTVjZDZlZGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fc3RvbGVuLmMNCj4gQEAgLTk0MSw3ICs5NDEsMTYgQEAgaTkxNV9nZW1fc3Rv
bGVuX2xtZW1fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUsIHUxNiB0eXBl
LA0KPiAgCQlkc21fc2l6ZSA9IEFMSUdOX0RPV04obG1lbV9zaXplIC0gZHNtX2Jhc2UsIFNaXzFN
KTsNCj4gIAl9DQo+IA0KPiAtCWlmIChwY2lfcmVzb3VyY2VfbGVuKHBkZXYsIEdFTjEyX0xNRU1f
QkFSKSA8IGxtZW1fc2l6ZSkgew0KPiArCWlmIChJU19NRVRFT1JMQUtFKGk5MTUpKSB7DQo+ICsJ
CS8qDQo+ICsJCSAqIFdvcmthcm91bmQ6IGFjY2VzcyB2aWEgQkFSIGNhbiBoYW5nIE1UTCwgZ28g
ZGlyZWN0bHkgdG8NCj4gRFNNLg0KPiArCQkgKg0KPiArCQkgKiBOb3JtYWxseSB0aGlzIHdvdWxk
IG5vdCB3b3JrIGJ1dCBvbiBNVEwgdGhlIHN5c3RlbQ0KPiBmaXJtd2FyZQ0KPiArCQkgKiBzaG91
bGQgaGF2ZSByZWxheGVkIHRoZSBhY2Nlc3MgcGVybWlzc2lvbnMgc3VmZmljaWVudGx5Lg0KPiAr
CQkgKi8NCj4gKwkJaW9fc3RhcnQgPSBpbnRlbF91bmNvcmVfcmVhZDY0KHVuY29yZSwgR0VOMTJf
RFNNQkFTRSkgJg0KPiBHRU4xMl9CRFNNX01BU0s7DQo+ICsJCWlvX3NpemUgPSBkc21fc2l6ZTsN
Cj4gKwl9IGVsc2UgaWYgKHBjaV9yZXNvdXJjZV9sZW4ocGRldiwgR0VOMTJfTE1FTV9CQVIpIDwg
bG1lbV9zaXplKSB7DQo+ICAJCWlvX3N0YXJ0ID0gMDsNCj4gIAkJaW9fc2l6ZSA9IDA7DQo+ICAJ
fSBlbHNlIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dn
dHQuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYw0KPiBpbmRleCAy
MWE3ZTMxOTFjMTguLmFiNzFkNzRlYzQyNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ2d0dC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2dndHQuYw0KPiBAQCAtMjQsNiArMjQsNyBAQA0KPiAgI2luY2x1ZGUgImludGVsX3Jpbmcu
aCINCj4gICNpbmNsdWRlICJpOTE1X2Rydi5oIg0KPiAgI2luY2x1ZGUgImk5MTVfcGNpLmgiDQo+
ICsjaW5jbHVkZSAiaTkxNV9yZWcuaCINCj4gICNpbmNsdWRlICJpOTE1X3JlcXVlc3QuaCINCj4g
ICNpbmNsdWRlICJpOTE1X3NjYXR0ZXJsaXN0LmgiDQo+ICAjaW5jbHVkZSAiaTkxNV91dGlscy5o
Ig0KPiBAQCAtMTE1MiwxMyArMTE1MywyMyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGdlbjZfZ3R0
YWRyX29mZnNldChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIHN0YXRpYyBp
bnQgZ2d0dF9wcm9iZV9jb21tb24oc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwgdTY0IHNpemUpDQo+
ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBnZ3R0LT52bS5pOTE1Ow0K
PiArCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGdndHQtPnZtLmd0LT51bmNvcmU7DQo+
ICAJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSB0b19wY2lfZGV2KGk5MTUtPmRybS5kZXYpOw0KPiAg
CXBoeXNfYWRkcl90IHBoeXNfYWRkcjsNCj4gIAl1MzIgcHRlX2ZsYWdzOw0KPiAgCWludCByZXQ7
DQo+IA0KPiAgCUdFTV9XQVJOX09OKHBjaV9yZXNvdXJjZV9sZW4ocGRldiwgR0VONF9HVFRNTUFE
Ul9CQVIpICE9DQo+IGdlbjZfZ3R0bW1hZHJfc2l6ZShpOTE1KSk7DQo+IC0JcGh5c19hZGRyID0g
cGNpX3Jlc291cmNlX3N0YXJ0KHBkZXYsIEdFTjRfR1RUTU1BRFJfQkFSKSArDQo+IGdlbjZfZ3R0
YWRyX29mZnNldChpOTE1KTsNCj4gKwkvKg0KPiArCSAqIFdvcmthcm91bmQ6IGFjY2VzcyB2aWEg
QkFSIGNhbiBoYW5nIE1UTCwgZ28gZGlyZWN0bHkgdG8gR1NNLg0KPiArCSAqDQo+ICsJICogTm9y
bWFsbHkgdGhpcyB3b3VsZCBub3Qgd29yayBidXQgb24gTVRMIHRoZSBzeXN0ZW0gZmlybXdhcmUN
Cj4gKwkgKiBzaG91bGQgaGF2ZSByZWxheGVkIHRoZSBhY2Nlc3MgcGVybWlzc2lvbnMgc3VmZmlj
aWVudGx5Lg0KPiArCSAqLw0KPiArCWlmIChJU19NRVRFT1JMQUtFKGk5MTUpKQ0KPiArCQlwaHlz
X2FkZHIgPSBpbnRlbF91bmNvcmVfcmVhZDY0KHVuY29yZSwgR0VOMTJfR1NNQkFTRSkgJg0KPiBH
RU4xMl9CRFNNX01BU0s7DQo+ICsJZWxzZQ0KPiArCQlwaHlzX2FkZHIgPSBwY2lfcmVzb3VyY2Vf
c3RhcnQocGRldiwgR0VONF9HVFRNTUFEUl9CQVIpDQo+ICsgZ2VuNl9ndHRhZHJfb2Zmc2V0KGk5
MTUpOw0KPiANCj4gIAlpZiAobmVlZHNfd2NfZ2d0dF9tYXBwaW5nKGk5MTUpKQ0KPiAgCQlnZ3R0
LT5nc20gPSBpb3JlbWFwX3djKHBoeXNfYWRkciwgc2l6ZSk7DQo+IC0tDQo+IDIuNDEuMA0KDQo=
