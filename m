Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F48E836728
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 16:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E07F10F30A;
	Mon, 22 Jan 2024 15:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C79510F30A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jan 2024 15:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705936276; x=1737472276;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aYE4jnH1LTgWoqK7byzZrMbnx/niVSrtlxFM/UkoJ1o=;
 b=e5netYPNujbbj6rAnPJBIXH8YFxft7O4iqPuMPT2tKJFAsq3+avLge8k
 7Ad4gwgV5gQjUDgoL+yEvfYFRB8Zps0IKN2+KB5kNHLOFeBheOqJaVPF8
 m8WMOvXgVTl1Wv0U1embbphwvXrx/N+BbA28W+2EMBItDWQCeo6MHRW4z
 Nimt4NO6x/TEgBu3gqyF2iIGy2NbcPdNSFXkNbC9JAd1fklYR6QFMZhg2
 E6CR1LLj539FnB5CPnl/8+TF7v1zmBiqpZpHcXtV8XsGfvx+vrxH7kOHK
 Wb0sI/77sx8CKGWuuwafg/3J8DdL1E8ndxKQOkxeq4lMCxLBT0YaNm+6h w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="7980673"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; 
   d="scan'208";a="7980673"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 07:07:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="1116888341"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="1116888341"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2024 07:07:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 07:07:57 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Jan 2024 07:07:57 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Jan 2024 07:07:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLBR6dkxJKsk2cMEhH+GXWwCh354QI8nOpekNWBGh8HeiC333ykdLnqA9+1XRvI/Sty6MwsFBReqDUNndxQ71/PTFal1uGWKIH+wZjSPzIOdiHKTKMxCEaA38rU+ni9OWv8DO4hdVq0JuKUS1OHDhFUaAdr8dqVdu1zlFBcYrusSAfbmNyrxfhCG8SyPSYh+vnI8YOToa345zrZ0xyZvo9VCMOVbL5DnGuQCv/AoaMyVC9xo8pfvy0wppTUi0Z9xK8Izfx2vKhtsHWLme2ZdoKEzgMwF5stakNVU9cGEuxLKe7FofdEKpCSeoLNbKMhQaSM26vAIzBLdd+naAhEeHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aYE4jnH1LTgWoqK7byzZrMbnx/niVSrtlxFM/UkoJ1o=;
 b=jaW43fA7nqucW4loFsa9VH/oDzcRyDewaviDc4XLWkdv3l6lhhFI18q7gX4Hs88pws1AB/upT6FBJql9FHlRxGPwHcXbhwJqhe12aOPinfhkUmLgmsm8PCEiP3OpociZ0xqCjfyf8oxYq0yiGlEDdTX1Cgbz2evosJg3Tow5h1Jyd2ndSVDL6wSBjXs3Uww41O4czvB8Zl/9gvM6+8/eImlv4aBxashSPXEV2qq93J/n/ZrWZw2uoRAN58y+izs6HYZTj3y2nxBrgGks+BJ2p0pCyR/oUtXfjORYYPRZP9YLBTqNZmsTOHDgbYgdX2ILvvxTaaW1+tuUlrIEPVDpPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by MW6PR11MB8337.namprd11.prod.outlook.com (2603:10b6:303:248::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.32; Mon, 22 Jan
 2024 15:07:52 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7202.028; Mon, 22 Jan 2024
 15:07:52 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 08/16] drm/i915: Fix region start during initial plane
 readout
Thread-Topic: [PATCH v3 08/16] drm/i915: Fix region start during initial plane
 readout
Thread-Index: AQHaSFGkPOXa8ENErUal9M6cwvMvrbDl+JHA
Date: Mon, 22 Jan 2024 15:07:52 +0000
Message-ID: <CY5PR11MB63449EBF437E0F6ECD1D31CCF4752@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20240116075636.6121-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|MW6PR11MB8337:EE_
x-ms-office365-filtering-correlation-id: 56bd76b8-8c39-417a-05e9-08dc1b5be7c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rAz5B5C4wryMess8PHdpiAVl6OAjpUwcCLLvndUvgk+UsextVykS0wDwU30OrGRdzqt8VIQczFP+/2XFexk+dfMr0cflyxrB2QQcQ+tVhiq0ZlivA+6oRWvp//TcsWudHrA+/g+2OolW/mke8E2ygna07Tvw/yoZMfqevuJhajPUsEC0czf/2LtDT25kVpudlELyxj5l+YXjhwIfdKmtKLXs8ekXAGo78OHwicUGMTQMORmSqxLbM7eTlB9EnpJwU/pAFl8bD7IXXOq+zRmMJB9G43Hg4HFE3vkK1YL34wfF6e1jxyc/yfxHOn2UsOAKaIV/HD0Qtm0BkOw0NNev5ppicQgBCMYnf/hzqRcY0aO0WFADs060i2GPG8b6U1cQcZJH5GfVvut6SkzEhNwgazm2ZOs3XUiqI1cldLiCKwBqoPDSR23Ksuyq8kWwqjotdMrf3UZbeYaUD7h0YmBAQuep/yl52pxclgICWfzJP0JRQVFTsiDvBNDJH14ihIz7LMr1ZakDalWZL8rUzwtI+2dEwOFyCgjY6GozwXsRuAoL3V/UPUx8nAAakJm1pKTNdf6jz03YdmADtSEiiOfxV/U9h6AWshlYmeQcIB1hNfhG0cRSBIh83zXCjT+IG9Mf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(376002)(39860400002)(346002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(82960400001)(122000001)(38100700002)(38070700009)(55016003)(86362001)(33656002)(83380400001)(26005)(316002)(66946007)(66556008)(76116006)(8936002)(8676002)(66476007)(71200400001)(7696005)(9686003)(110136005)(6506007)(64756008)(478600001)(66446008)(53546011)(2906002)(5660300002)(41300700001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aDd3N1Vybmt0SkJuUXU5RUU4UGxqL2tBc2tsSS9Fd2NjdUx2bE9KaENsRmgx?=
 =?utf-8?B?eVhGZ3c5TGpiYUU3WWlBbjlXcUp2blkwSjJIaHEyZHFHd3pHenVKZmRxVWpv?=
 =?utf-8?B?N1UvYnNuZ3hQSGxpRVJ6R0ZaRDd2QUhUTWRpM1pycytWL0VMNEpQeUZGbDJ6?=
 =?utf-8?B?RStvaXNrSUgxOFVxTENMV0xMdVJuSEN6TFgyUVRTYmozNVlnMHFyMEF1QUVZ?=
 =?utf-8?B?QUg0S2dsdDJhd3NWVUpwUG9PNWdLTHdGcFdyeFIwVkVWNkdacm5lNVNqNVpJ?=
 =?utf-8?B?S0FxUm1hdEhtbkRIcUtRamhSWFQrdjVlUUU3em5MS0w3M2ZxUGpxOGRUbXJU?=
 =?utf-8?B?U1JQSmhWVEc1QnV6UTE0Syt4WVk2aWN0SjBoMW9IZnVRSWJlZ2VYZ1YvTE9s?=
 =?utf-8?B?ZmR4RGo3SEtOdnFlRkpYZkJIOC94R21GN1Y0ZkpNU05mVU5KTnA0S2VwWU5V?=
 =?utf-8?B?TlRkRXVKazBNekZieVRTQUhieG5uMyswbTlQbGVoZjBJem9sd0NYSkxIMVEx?=
 =?utf-8?B?MU0wYmJVWWdDOWhUcmowbTk5NmxyS21IWUNNYTZNaWxSZENheGwxUFpmOVQ2?=
 =?utf-8?B?NjZnbkVKZ3lqMXNFQndabG9vd1pBQ3JFTkFhOUtGeWtkeE8xOXVWM3hSTXp6?=
 =?utf-8?B?b3NJUWRFVXlrL1pBeGVvbFpuckpZZldOSHExUUh3YlZCQTc3NmJVZkY5S0JV?=
 =?utf-8?B?Y1FpU2JhL2RmV045OXFzdi9aVzcrNE9tY3o0T1hMWkdTNnlhL0R2eVBOMzNW?=
 =?utf-8?B?RHhBSTRwQzN2ak9WdGhpMUtvdDhqck9IOTNVTXlnY1E3dzM3TDJtQTUwUDZY?=
 =?utf-8?B?dWo2UU5pSE9HbnBxWHI3N0U3WW1ZdHpObHZ1cklMa004V0xLd2xUTEFWZlZR?=
 =?utf-8?B?cnIrd0h4YUJnYVM1VDlhdEhzTEYzQ092SGlIc0hZeXd2RTd3d3FEd29zRWhz?=
 =?utf-8?B?anlqcTlFZG9vOXk3MHRnZmR5aTJOVTBLdFpqb3JqejFxdkoxRFRPOHVxMWV4?=
 =?utf-8?B?VEJ5ZTVSdGcwMmxjMFpodGpoSWlFeGdyUEVTdGxZbkZxaUhsRlk2UU00WWM5?=
 =?utf-8?B?Uzl3YmZybG96Sm5KUjdzSE9oaVp2Yy90TXhoR0s0aVNkWC93Q0x0T0JXbktG?=
 =?utf-8?B?ZU9WSEdqRVhRWmQxM3JaRGtvZU9xdGZ3M0JKbEU5VzFYK29DYXg5bjl0ZGRL?=
 =?utf-8?B?QkE2SDlBaTB3MXBVSmxCeS9NbmFiVEcyWWh5b0g4bGY3NUdmU09OMkx0RnE4?=
 =?utf-8?B?SlB2RWloOW51RXJiR2hZYUVUZ29FWDN6U1Z3U2VIczZPUE0vYzZtN2FReGN6?=
 =?utf-8?B?dEJaNEdzUk96c3pxQ0h1S09YbWM0a3R2dTg5czNQM2g2MUx5VVVFRkdOMHVL?=
 =?utf-8?B?UUJyRzdvT1l3RnFtcTQvak9IVENNZmxPU2phSGNleDdBWVJNQ0RRc3VYbFBz?=
 =?utf-8?B?VkU5akpyMEZCMDVYMEIySFpETlZhZ2RWUVR6amJ1ZVRZZFFQLzM2dEhFZzJ4?=
 =?utf-8?B?QnQ1dzFOVkQ1ZFdjNWtNNnVkUm9lU1J2Nnc5TTdmMmU2dzZnSmxnRm9JcDZz?=
 =?utf-8?B?Y09MS2UveFErMUtidjZ1VmZ0eHNJc3p1QnJpOHJhYjgxdklnMGpnTVhiWngz?=
 =?utf-8?B?dno2WTZUK3lqV0g1dHlzUmhrV2hXbTYyTVNxNjhXcDNHaG1IcmF3SGpRWkdn?=
 =?utf-8?B?NlRIWURtYW1XMWkwWjdRZlhKaDZhdCtGR0h6eFZ1QWQ0MWp5dGp0enQzQWRq?=
 =?utf-8?B?L0p1YlZpTStoTEtwLzByOGNPVWdqNm1GSzRGWVNwUXNTc1k2N0h2Zm1CaEdt?=
 =?utf-8?B?ODJNTHFlOEs5RzM0TE54aWNhS0M3VmVhREd5RDJVcnArSEcyc2lmN1VrOVcy?=
 =?utf-8?B?SEpvWXMvNno3enFpalZrNWd0SlJxNFl0WnR1bE51a1J2eGxkSlVweVJXVFBD?=
 =?utf-8?B?elZRemtaRFVDbXB5RGtaTG1tbmdGdXhTSm44SzR0M3pRc2h6UTBsUHkvYTF3?=
 =?utf-8?B?K1BnaTZId3lxNzdwL0NlT3JJOG1aYWZSNWh4UmJUQWN4TnR6RjFMbDFZSEov?=
 =?utf-8?B?NUtGN0VVaU1TQUlqOUdHWmQzK3hNM0VXUnR3WTlJTXZrQTYzeWZVd1QyUVQr?=
 =?utf-8?Q?60wWwdQjlXP2J8CECxlYbpLxO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56bd76b8-8c39-417a-05e9-08dc1b5be7c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2024 15:07:52.3459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZQ00j2ntdGZAattDdFxBgjh8H1vVMBem+GJUi7FsF0tkYvm6npFw2lgKvqmaV8Hlxbcu/1lBuSVayn0w/sRHhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8337
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEphbnVhcnkgMTYsIDIwMjQgMToyNiBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMg
MDgvMTZdIGRybS9pOTE1OiBGaXggcmVnaW9uIHN0YXJ0IGR1cmluZyBpbml0aWFsIHBsYW5lIHJl
YWRvdXQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IA0KPiBPbiBNVEwgdGhlIHN0b2xlbiByZWdpb24gc3RhcnRzIGF0IG9mZnNl
dCA4TWlCIGZyb20gdGhlIHN0YXJ0IG9mIExNRU1CQVIuIFRoZQ0KPiBkbWEgYWRkcmVzc2VzIGFy
ZSB0aHVzIGFsc28gb2Zmc2V0IGJ5IDhNaUIuIEhvd2V2ZXIgdGhlIG1tX25vZGUvZXRjLiBpcyB6
ZXJvDQo+IGJhc2VkLCBhbmQgaTkxNV9wYWdlc19jcmVhdGVfZm9yX3N0b2xlbigpIHdpbGwgYWRk
IHRoZSBhcHByb3ByaWF0ZSByZWdpb24uc3RhcnQNCj4gaW50byB0aGUgc2cgZG1hIGFkZHJlc3Mu
IFNvIHdoZW4gd2UgZG8gdGhlIHJlYWRvdXQgd2UgbmVlZCB0byBjb252ZXJ0IHRoZSBkbWENCj4g
YWRkcmVzcyByZWFkIGZyb20gdGhlIFBURSB0byBiZSB6ZXJvIGJhc2VkIGFzIHdlbGwuDQo+IA0K
PiBOb3RlIHRoYXQgY3VycmVudGx5IHdlIGRvbid0IHRha2UgdGhpcyBwYXRoIG9uIE1UTCwgYnV0
IHdlIHNob3VsZCBhbmQgdGh1cyB0aGlzDQo+IG5lZWRzIHRvIGJlIGZpeGVkLiBGb3IgbG1lbSB0
aGlzIHdvcmtzIGNvcnJlY3RseSBhbHJlYWR5IGFzIHRoZSBsbWVtDQo+IHJlZ2lvbi5zdGFydD09
MC4NCj4gDQo+IFdoaWxlIGF0IGl0IGxldCdzIGFsc28gbWFrZSBzdXJlIHRoZSBhZGRyZXNzIHBv
aW50cyB0byBzb21ld2hlcmUgd2l0aGluIHRoZQ0KPiBtZW1vcnkgcmVnaW9uLiBXZSBkb24ndCBu
ZWVkIHRvIGNoZWNrIHRoZSBzaXplIGFzDQo+IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfcmVnaW9u
X2F0KCkgc2hvdWxkIGxhdGVyIGZhaWwgaWYgdGhlIG9iamVjdCBzaXplIGV4Y2VlZHMNCj4gdGhl
IHJlZ2lvbiBzaXplLg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFu
a2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gQ2M6IFBheiBaY2hhcnlhIDxwYXp6QGNo
cm9taXVtLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3BsYW5lX2luaXRpYWwuYyB8IDggKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lX2luaXRpYWwuYw0KPiBpbmRleCBm
ZmM5MmIxOGZjZjUuLmRiNTk0Y2NmMDMyMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmMNCj4gQEAgLTc5LDE2ICs3OSwx
OCBAQCBpbml0aWFsX3BsYW5lX3ZtYShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4g
IAkJICogV2UgZG9uJ3QgY3VycmVudGx5IGV4cGVjdCB0aGlzIHRvIGV2ZXIgYmUgcGxhY2VkIGlu
IHRoZQ0KPiAgCQkgKiBzdG9sZW4gcG9ydGlvbi4NCj4gIAkJICovDQo+IC0JCWlmIChwaHlzX2Jh
c2UgPj0gcmVzb3VyY2Vfc2l6ZSgmbWVtLT5yZWdpb24pKSB7DQo+ICsJCWlmIChwaHlzX2Jhc2Ug
PCBtZW0tPnJlZ2lvbi5zdGFydCB8fCBwaHlzX2Jhc2UgPiBtZW0tDQo+ID5yZWdpb24uZW5kKSB7
DQo+ICAJCQlkcm1fZXJyKCZpOTE1LT5kcm0sDQo+IC0JCQkJIkluaXRpYWwgcGxhbmUgcHJvZ3Jh
bW1pbmcgdXNpbmcgaW52YWxpZCByYW5nZSwNCj4gcGh5c19iYXNlPSVwYVxuIiwNCj4gLQkJCQkm
cGh5c19iYXNlKTsNCj4gKwkJCQkiSW5pdGlhbCBwbGFuZSBwcm9ncmFtbWluZyB1c2luZyBpbnZh
bGlkIHJhbmdlLA0KPiBwaHlzX2Jhc2U9JXBhICglcyBbJXBhLSVwYV0pXG4iLA0KPiArCQkJCSZw
aHlzX2Jhc2UsIG1lbS0+cmVnaW9uLm5hbWUsICZtZW0tDQo+ID5yZWdpb24uc3RhcnQsDQo+ICsm
bWVtLT5yZWdpb24uZW5kKTsNCj4gIAkJCXJldHVybiBOVUxMOw0KPiAgCQl9DQo+IA0KPiAgCQlk
cm1fZGJnKCZpOTE1LT5kcm0sDQo+ICAJCQkiVXNpbmcgcGh5c19iYXNlPSVwYSwgYmFzZWQgb24g
aW5pdGlhbCBwbGFuZQ0KPiBwcm9ncmFtbWluZ1xuIiwNCj4gIAkJCSZwaHlzX2Jhc2UpOw0KPiAr
DQo+ICsJCXBoeXNfYmFzZSAtPSBtZW0tPnJlZ2lvbi5zdGFydDsNCj4gIAl9IGVsc2Ugew0KPiAg
CQlwaHlzX2Jhc2UgPSBiYXNlOw0KPiAgCQltZW0gPSBpOTE1LT5tbS5zdG9sZW5fcmVnaW9uOw0K
PiAtLQ0KPiAyLjQxLjANCg0K
