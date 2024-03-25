Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D088E88A87F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 17:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B11D110E451;
	Mon, 25 Mar 2024 16:11:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dyiaqmQZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C604F10E451
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 16:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711383091; x=1742919091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Z6Pc5w9DgovzL8NYKut3ig8sI+3I7tnNFW/ESUnmEv4=;
 b=dyiaqmQZnRBNun45hO+L1KOUMEtykrGh+mKhZuzoC5d5JsKWJb4+Y0ef
 ZYgT+W92oe/mNdFcmGOoDiQdKynzQTi2gQD7Pbrtr0Py9gdYQYKsc2ISc
 LVJmlbO3oUiJQyyrkH4kwhUQjiNt4gdEj4M1+ioTwMznTLOvr0dtSKS6E
 PQJA+UQYrHQ/QEym1twEglWV5uHNSTCmYOnVth+qjnHHijKFy0iwnZJsD
 XBEwE5EjiUShOVuQU/jiJs9J3EyEBQQvUyD1JbkrjHu/lNZtIeWRBIKba
 bWSlBi/4kXWDA6KqFtYLtt5VO6+1EWfIYxVn1LjQfSuTxmu4t/tFoAfvi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6503004"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6503004"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 09:11:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="15720332"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 09:11:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 09:11:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 09:11:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 09:11:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=goM5NyYHK8oCibl2UYCPWg4TrSC59YwR/lc2lGpPf/LLmYwlhcWdmtx3RfyVbSJxSDs32ZaW6DOKKBgJ68f3cKk3B/BzlFlmlW8e8JOGMEpxUziKSyYoVkec/obc9JVCVXQiCR7/H7NtV3nomON8r1eKqprFV5A/+TKZAkbQvhHW3XZZ9isiifpnZRDMiZ3NO2ukDH/SILAp2EGhYnT8xl7a1uN1P6QPIADn+jVAXct5nlApwBexuPCdSobktQrmpGuKjMTOXYAsiTNUAmrvBuYL1rRRjBPIpVkLH17cpLHIay0Q08HzoxmKLvFD0pZMb7j3lpXWmfLExSRhKpIidQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z6Pc5w9DgovzL8NYKut3ig8sI+3I7tnNFW/ESUnmEv4=;
 b=Imuks2Xrbyupkpp3LIfFtr2sgavz1tnXjMzRLnerQahD7FGgH/KSCqBHAuR5m9CopAIGRSrr0XWPw/AaaolUqL6y8wnCNtfa2YahSPonqj+u395Sb76zydejX13Nc0NfvVZvkX5qczQrmRL8cW9a/edMDw1KkQiKbL0NaaJr1kJvhlpqw7s1Oc0CZ3JHmo6Vp1bhjoFVaXoPFPESdhRhiky7cY0mI5P4pqlN1j0j9fKXblkPpLRgKxeSQ3+B2SkcDPUeveceZTLTlWoompIh7YxFhjpNfAqQ5F2U6fA6t7o4jiOGp+XF4EuM4ppK+pCyjMx7GSPBiMstvghAQNqjFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB6613.namprd11.prod.outlook.com (2603:10b6:806:254::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 25 Mar
 2024 16:11:27 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f:d87:3265:6573]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f:d87:3265:6573%6]) with mapi id 15.20.7409.028; Mon, 25 Mar 2024
 16:11:27 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v8 4/4] drm/i915/display: handle systems with duplicate
 qgv/psf gv points
Thread-Topic: [PATCH v8 4/4] drm/i915/display: handle systems with duplicate
 qgv/psf gv points
Thread-Index: AQHafrSyJvIWbLE3nkq13Ww5VLvtUrFIjakAgAATGYA=
Date: Mon, 25 Mar 2024 16:11:27 +0000
Message-ID: <e5cf6ed3867e04c645bc1103b9ce1f4a0e65db68.camel@intel.com>
References: <20240325130156.205726-1-vinod.govindapillai@intel.com>
 <20240325130156.205726-5-vinod.govindapillai@intel.com>
 <ZgGSKCaoUUieIja5@intel.com>
In-Reply-To: <ZgGSKCaoUUieIja5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB6613:EE_
x-ms-office365-filtering-correlation-id: 5f8a9695-77a1-4953-a00c-08dc4ce63986
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0NSBqF17RZvNRrpAf6Bl7NeLvY6BrcRKnwmCIBpgkzaP1xm7jiNgXBQY8wNsx6vEajvD43NUrSJJNtvLtXmF/15ncbprgb396Po5lVMTa7SSyc/3vY1AmsbCS1hoA42ya9L1RPEcSBbFNiCZzKAtCGCjiRYh81RcIS7XkTECbCLSOf2J054ov5OY0o/84Eqlou/yaOKKHA4wV0LnDw8zq1T/wj2/XJtzThvNUQA9HoCn06hyEyD30mH6FYsJmdHRsM3Trun6J58kYhUW0lJBrbZ6ry3Ff4VmacluBX0OxxSxj6+9H7DKpWSzprCA5KYPWFPuVr2WzVU72rhqEbfEgdjx3jUruXNKorfKtEkcQ+2Sv2oVzlCbuvFprpL045tuLswQ1+3WAYpN+/YELXcgVI1qTpX1lXsWBprGedl10BiC7E6w0Ga/kdC/Gmr52Yg/rxyn1Fmj2Al6sAWoSl+q7G1j+xLR3bTh8D9lbb6Q5UdcF+zub3q74Sp+Da+ZEIjToXjJD8gj+DpbrB0Nw6fXRp+k13QgefgN+37TVdy7/TZMZkr/qkUg0qZUn0K0Ryh3OAnQKJOa8IUhby7StdetnlVX4CyaOC2Q4biuGUQ10+3glMt6iCWfbINrpjalQhaESQwL3WnKVEP8zODhV76xNmy+PWm6ptzUeQwtxKU83aBnpk7g+rRwFq4rRo/0f1jhyFq0PfXNgDU84ycPo1AhSU5RevK0k5DswVUW9PRP7mA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SzYzRWpocmZiL1BVSEpJL012RXlpdCtJU2YxN3dtcE13MDVHdTM5eEhTeEhM?=
 =?utf-8?B?Zng5ZHlHcWZDNStMWHFvclg0Y3RVbC9NT21oYnNLUDNUMk9jZ2Vxd0ZXZTFQ?=
 =?utf-8?B?a2dmVHpLcWltcFZhRWlQeWpUTUk3TTZtbXlzZVVuWkRxa0o3ODIxMURiTUJP?=
 =?utf-8?B?dnJKYlNBSzB3MlIwUnFiZkVuK1cxV25CcG1GSk44R0RQTjVsZzlTNGVZOWtZ?=
 =?utf-8?B?MksxVzdZRmFZTlhzU1ljYmdqN25YeEM5QnF0eUV0Z2NBNEFVQ0lINVkvTWVy?=
 =?utf-8?B?b29ON25xeTlFYkVjVnAyeHNycGc4QzBXNnRDd3ZuaDM0QjFPZ2RRK2dLVEg2?=
 =?utf-8?B?ZGlJRmM5TzU4bmFVSDAyeWxVa3ViSkRzRWhDeU9DNFhRcUVMVTV6dFYvb2Vt?=
 =?utf-8?B?QVkwdjA5RlR6eHZrd3lTdkxweE5BNkFCWWVmMzEwWDRmSlB2ZVFOSEhtYmlJ?=
 =?utf-8?B?SVR1SkpTMGtrZGxGWUFDQzdHZHByZFo0V3ZCd3VvazBzR1R1N2UrVFZ6b0VO?=
 =?utf-8?B?RkcrOTdhV3h1WEJBM3JBUGZNRjlWK2ZpOVVwdTR6THk2VmJ2TnpsQnBBUkhp?=
 =?utf-8?B?V29jTVI0SkY0TFY4YVBNQ2RlZXlxRXd3TGVEeVZwNUViVm0vcFJUL2xPWXRu?=
 =?utf-8?B?bjFSMXlPODFBR01QUnVzeUpySC9QTVVmWkkzTEpiMDlGbGJLamdpdGVsd3RX?=
 =?utf-8?B?ZVYrUDNROU5oZXRmenhNTm51eno0R3d5UCtiS2tuV0lYWENvWk1OUENhRmY2?=
 =?utf-8?B?bmFyR0FXVzVqaU1CRmJ1WWkrNzNZNGNEdEpKZ2psUkVJTmhVS0g5WkdDUHh2?=
 =?utf-8?B?eFRRYWlFYm0xSmJEZHV2VWFzZ1k0UDc4bWVWUnhmbXNORHVKc21PZ0wwTlA3?=
 =?utf-8?B?UGhqZmM3TWN5QWVpWExtVzQ0Q2lkZEtoSnRtTS9DV3drSUk3UjIwL2lSQzM1?=
 =?utf-8?B?U1JIM3dpOUwwS0RUcjJsTnAzR3o5ZlVBaUVPUEJPaHNFOGdZdmxLcUlaMXNR?=
 =?utf-8?B?VDBqUStEQ202RkF6VUZiWnkrcEVjV2V2RHFReVhzdlZ5eXcrWDdaVmxEWjc3?=
 =?utf-8?B?cVpuWld2c3lqN3pLSHpNOXo5bjl2eldxVnExZ3l2dTNLU3U5a24rQk1seDhx?=
 =?utf-8?B?ZGMvaXpBM09jRWkzMldVVDZDUVV4YU13TWlvZDZGOExZMzFBUmQ5RDJaUnlr?=
 =?utf-8?B?dktuT0IxK2hobEVuS25tL3gySHE4ZzRJK1piZ0YzSzlLSHNxeURlRGZrTGZR?=
 =?utf-8?B?M1dwZWVrdFM1Qis0REZrNG9kSmowVFcvR2FhQkdROU85SVMycmt2ZmUrUW00?=
 =?utf-8?B?bHEyYWxPb1NBTFhWYVBFb2h0YVJhUERGOXloTXZCbUJvSUFSUG5HdEhFT0xx?=
 =?utf-8?B?SmF0Vjg2dHNmN3ZsUzFremhyS2o1V2lUT3V5SzB0SFdYOVhZOSt4VTdrQVlt?=
 =?utf-8?B?SGI2VjV5TkgxYkVvUnFHN0lobmdIQ0lDY3RuSEw3RHdqbG1YOWZKWmlBYU9q?=
 =?utf-8?B?RThLN3FIT2dPT2NpbDFMbS90NktTS0RWcTNhWlhYSnNDc09uYWFYc2hBRjFt?=
 =?utf-8?B?N0dockprN09ERktCZzBPL2o1ci9vR0lVNFN3d3VaNElXUFNGQmZDaGhMWkQ3?=
 =?utf-8?B?UkswV0hIb3dVa2Vac2t2TnA2U1lqY3ZEQ1BiZWtsZ2hXeDIvTG40U1Z2Rk1x?=
 =?utf-8?B?YU9BQ1JkZlFka2M2V0lMdlNRVCtvNEdIL1pFWXJqVUwxOHFjaEw3cUJzb0Nq?=
 =?utf-8?B?SFkrUEt5Y01STS9kcHdOOVhBS2MxbnJ5Y0laM3BBeW5zQnBzZ2wyZGoxVnZh?=
 =?utf-8?B?am5ldjhOMjFIaVZET2s5QXBUSTBkV2VsYTZ5WlNrRERBbmpzRDQ2ZmM3UGxt?=
 =?utf-8?B?VTFyRHBVMDRSQTVrOE9GRzJNTHhTUzlrRE1zVjM3Tm0vd21JNDdvSnlLL3RY?=
 =?utf-8?B?OVdEbmFXWTAranlZZXFHaVk4NVQwZHZGVnV4bmg3bW8wc0c2eThyTWlmUDlt?=
 =?utf-8?B?RkIzWVdGeG5zYk51NkhnNmdUWXVYRUhzcGJYQ1NWbTMyMG1tRDBtbWdDVS9E?=
 =?utf-8?B?dWN2QzNNYWpLbnU4NzZtcVRqN3F2MEtCZ3BES0s0c0QwalNmK3BhZzRSY0dZ?=
 =?utf-8?B?RTFMdEljM3dIKzZpM2hZTUJTOVo4MTcyS0twUVVtOE9xUlJJZnNUNzZsRzhx?=
 =?utf-8?Q?QDJHjwERmz1p1As4r/CWBAI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9D8783DA5D59E54A91DEB876A1C81CEA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f8a9695-77a1-4953-a00c-08dc4ce63986
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2024 16:11:27.0924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RF8wluGAV5qDhn8PKO0mJljPqBxZoUmgJUZSO9g1H0iTWggCHqPBHpJig59Jnhsy4bU/TbIvAiOiaChRim8bFZDaHDu44om+63/bkpTJ5pM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6613
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

SGkgVmlsbGUsDQoNCk9uIE1vbiwgMjAyNC0wMy0yNSBhdCAxNzowMyArMDIwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiBPbiBNb24sIE1hciAyNSwgMjAyNCBhdCAwMzowMTo1NlBNICswMjAw
LCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdyb3RlOg0KPiA+IEZyb206IFN0YW5pc2xhdiBMaXNvdnNr
aXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiA+IA0KPiA+IFRoZXJlIGNvdWxk
IGJlIG11bHRpcGxlIHFndiBhbmQgcHNmIGd2IHBvaW50cyB3aXRoIHNpbWlsYXIgdmFsdWVzDQo+
ID4gSW4gY2FzZSBpZiB3ZSBuZWVkIHRvIHNldCBvbmUgc3VjaCBRR1Ygb3IgcHNmIGd2wqAgcG9p
bnQgd2hlcmUgdGhlcmUNCj4gPiBjb3VsZCBiZSBkdXBsaWNhdGUgZW50cmllcywgd2Ugd291bGQg
aGF2ZSB0byBzZWxlY3QgYWxsIHRob3NlDQo+ID4gcG9pbnRzLiBPdGhlcndpc2UgcGNvZGUgbWln
aHQgcmVqZWN0IHRoZSBHViBjb25maWd1cmF0aW9uLiBXZSBkbw0KPiA+IGhhbmRsZSB0aGlzIHdo
ZW4gd2Ugc2V0IGFwcHJvcHJpYXRlIHFndiBhbmQgcHNmIGd2IGFzIHBhcnQgb2YNCj4gPiBpbnRl
bF9id19hdG9taWNfY2hlY2sgY2FsbHMuIEJ1dCBkdXJpbmcgdGhlIGJ3X2luaXQgZm9yY2UgZGlz
YWJsZQ0KPiA+IFFHViBwb2ludHMgcGhhc2UsIHdlIG5lZWQgdG8gc2VsZWN0IGFsbCB0aG9zZSBw
b2ludHMgY29ycmVzcG9uZGluZw0KPiA+IHRvIHRoZSBtYXhpbXVtIGJ3IGFzIHdlbGwuDQo+ID4g
DQo+ID4gdjE6IC0gdXNlIHRoZSBzYW1lIHRyZWF0bWVudCB0byBxZ3YgcG9pbnRzIGFzIHdlbGwg
KFZpbm9kKQ0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0
YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdv
dmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgNCArKysrDQo+ID4g
wqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+IGluZGV4IDg0NGQyZDllZmViNC4uMjBjNjc0
NzQxNTRlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncu
Yw0KPiA+IEBAIC04NDcsNiArODQ3LDggQEAgc3RhdGljIHVuc2lnbmVkIGludCBpY2xfbWF4X2J3
X3Fndl9wb2ludF9tYXNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG1heF9kYXRhX3JhdGUgPiBtYXhfYncpIHsN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhf
YndfcG9pbnRfbWFzayA9IEJJVChpKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfYncgPSBtYXhfZGF0YV9yYXRlOw0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKG1heF9kYXRhX3JhdGUgPT0gbWF4X2J3
KSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBt
YXhfYndfcG9pbnRfbWFzayB8PSBCSVQoaSk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB9DQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiDCoA0KPiA+IEBAIC04NjYsNiAr
ODY4LDggQEAgc3RhdGljIHVuc2lnbmVkIGludCBpY2xfbWF4X2J3X3BzZl9ndl9wb2ludF9tYXNr
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gKmk5MTUpDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpZiAobWF4X2RhdGFfcmF0ZSA+IG1heF9idykgew0KPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9id19wb2ludF9t
YXNrID0gQklUKGkpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoG1heF9idyA9IG1heF9kYXRhX3JhdGU7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoH0gZWxzZSBpZiAobWF4X2RhdGFfcmF0ZSA9PSBtYXhfYncpIHsNCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9id19wb2lu
dF9tYXNrIHw9IEJJVChpKTsNCj4gDQo+IFRoaXMgZG9lc24ndCBzZWVtIGVudGlyZWx5IHNhZmUu
IFdoYXQgaGFwcGVucyBpZiB3ZSBzb21laG93DQo+IGhhdmUgdHdvIHFndiBwb2ludHMgd2l0aCB0
aGUgc2FtZSBiYW5kd2lkdGggYnV0IGRpZmZlcmVudA0KPiB1ZGVybHlpbmcgY2xvY2svZ2VhciBy
YXRpby9ldGMuPw0KPiANCj4gV2hpbGUgc3VjaCBiZWhhdmlvdXIgbWF5IG5vdCBzZWVtIGVudGly
ZWx5IHNlbnNpYmxlLCBnaXZlbg0KPiB0aGF0IHdlIG5lZWQgdG8gZG8gdGhpcyBzdHVmZiBhdCBh
bGwsIEkgZG9uJ3QgdGhpbmsgd2UgY2FuDQo+IGFzc3VtZSBhbnkga2luZCBvZiBzZW5zaWJsZSBi
ZWhhdmlvdXIgZnJvbSBwY29kZSBoZXJlLg0KPiANCj4gU28gSSB0aGluayB3ZSB3aWxsIG5lZWQg
dG8gY2hlY2sgdGhhdCB0aGUgcWd2IHBvaW50cw0KPiBiZWluZyB1c2VkIGhlcmUgYXJlIGluIGZh
Y3QgMTAwJSBpZGVudGljYWwuDQoNCk1haW4gdGhpbmcgaXMgd2UgbmVlZCB0byBtYXRjaCB0aGUg
Y29tcGFyaXNvbiB3aGF0IHBjb2RlIGlzIGRvaW5nLi4gcmlnaHQ/wqANCldlIGNvbXBhcmUgdGhl
IGRlcmF0ZWRidyBvZiBkaWZmZXJlbnQgUUdWIHBvaW50cyBjYWxjdWxhdGVkIHVzaW5nIHRoZSBy
ZXN0IG9mIHRoZSBpbmZvcm1hdGlvbg0KcHJvdmlkZWQgYXMgcGFydCBvZiBxZ3YgaW5mby4gSSBh
c3N1bWUgcGNvZGUgaXMgYWxzbyBnb2luZyB0byBkbyB0aGUgc2FtZSBraW5kIG9mIGNvbXBhcmlz
b24gb3IgdGhhdA0KaXMgd2hhdCBJIHVuZGVyc3Rvb2QgZnJvbSBvbmUgb2YgdGhlIGVtYWlsIGNv
bnZlcnNhdGlvbi4NCg0KRG8geW91IHdhbnQgdGhpcyBjbGFyaWZpZWQgZnJvbSBwY29kZSB0ZWFt
Pw0KDQpCUg0Kdmlub2QNCg0KPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oH0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+IMKgDQo+ID4gLS0gDQo+ID4gMi4zNC4xDQo+
IA0KDQo=
