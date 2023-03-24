Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6694A6C7E75
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 14:08:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A1D10E021;
	Fri, 24 Mar 2023 13:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEB510E021
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 13:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679663293; x=1711199293;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MNnol+je5ILuFKYSF6StZfkbzY9qoHG+arcC7hhwCJQ=;
 b=L/3q2FXaMdeMfimYAdQwmhXCm8iC57W2dRWj2GxuKlpOPJQls003Yl/I
 IKzSCXdO6BWPjD8G6ledjGPy9I3w9SsmzAhcnnL7hbWIu47h2JlKgo4+A
 cKkVK9eK8aKt/LmSX4s9caOf5IVkHTpMsImcJSbmoolg7pwefHZNTQmEO
 L/5g52wNpsBYFNMbtSN+Ap+n9JYsKYZ2W64CC30BXamAJzH1bbCTM/Nww
 QsG6RzTdsavMx0OK1wa9ljfg87nExM+yGHVnvDw5FBmDfrPYPQ+Am13bV
 gBikDPCUD89dTYowkP85gP1KCkTPYKq+fFEO0DeZFALpKakYKjYTmWG6X w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="320166304"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="320166304"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 06:07:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="751892271"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="751892271"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 24 Mar 2023 06:07:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 06:07:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 06:07:35 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 06:07:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JagqeDE3Pp/oAq+rpCJrAVAhM/Hj8+rbdFsty4JrLOVf2zKYC1fj3hRIEex6JeoRhTjijxcZvFewV3PPcSIWTmLz6brvh/8fluPj1fchfJXThD1NBp/b3psVEiXvs35cwYaUih6B1V3gs3qLeSbi0acX7Z5yGlpqFBnowxf2emw7Q/51sYKRdyRFWR9GGfad2FdinxEmn0a5Xolya1U70xvQFdi4EyWVA8jhX5piJRVcVkBPm07klEzVw2agYvOdxpITsQHboZ3PCCuQfzGIs91H0GLesMJZtcan/u+69JCTcQR/eujnb2HxZJOYBGcDyc+5j02zKANgCsEy99LInA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNnol+je5ILuFKYSF6StZfkbzY9qoHG+arcC7hhwCJQ=;
 b=cRT9tfnLRslMKeZ4RTKu4g+Q5Oo85vb/fC447eDfq9sN+wbkChD86Hd2bfx/SgoM/BG2A/yeDz3O/pL3msA2L8/XNn2/LgLhHgBK7yvFpvmMX10a1jchjg9xinChIrGOMEZokVqGe/tw/u0OUfhqjRnVO6lvxNUhfFCXMg/ior2WThS88snGgBubfKz2VCze7iknxJWjN7L8IHLOkpJLWKv6/VEKFLty+jeJF685SSEg1NPztcgSFlEZdcrAs1uWgVyy17wXoNqM3aPVpVpyLzyFpyzLzzQxZEjChXEx+VolZHNnEqXzq1bKtrOg9ko/3c60DYQ/QZNZXIifdJ6+JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SN7PR11MB7466.namprd11.prod.outlook.com (2603:10b6:806:34c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 13:07:33 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 13:07:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/29] drm/i915/tc: Check for TC PHY
 explicitly in intel_tc_port_fia_max_lane_count()
Thread-Index: AQHZXZK7PYEPHBFLp026LSWJU6gzcq8J5/CQ
Date: Fri, 24 Mar 2023 13:07:32 +0000
Message-ID: <MW4PR11MB7054CF4559C2B2B76B381001EF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-7-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SN7PR11MB7466:EE_
x-ms-office365-filtering-correlation-id: 74be399b-3f8a-4b93-33ed-08db2c68baed
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BZGtNaQgS7nAE1/VnyEC9QrmgkIOPyAvObebvpV8JI+tiObtD6YLJCYv683QG6AktfeE9jUCUPjXAjfIvjdjke1ciN8BfK3h/YtoGKrbTrhNlXQ+QzFdZWQEuziTTPagOuvuLq9dDww+i4lte04N1FLv5ev2buMbygn1k6axNIfqn74I2MRCuYb5/fW8QhSoIJMRvrPlIAbCNolheBIGyT6BxbCEHFn+42Dqp+0Nu/jRl2r6g6QKalBmfrPP1dvT0hDLcAhClTpmP9q6bu0UF9tCsUz4BGbIIGaoYWFyvQ+r99wqAJ0hmsaq9U28zHwAbQmtYCyZFhioPYfKKGGSPVrz+hnsAzLme8fQfHsR0HRfdO1I3UnzYiYtxpoOt7wD66Ft+WKmbIQKQUIjjluZ1PWqy/jKIAojKoCodc/wyTHK6t+JOA4FU5rUm2Ju5PW9SRiocT8DQqh0kpgUm6efv0+Bf4hZMfnjt/NOB61/utP0JCv9QoqI/DIW6HYmlLpKfXd17ZJSYo5FFieQShPHUjYlTq2vzrRPqU9pB7s24QlBT3Rca1dHDo7xBNBHBKB3hBaGumINkh6rGOYpwqBEFbTnDYQNHoaAm1ZFc+JHEK7n/n2D3a8eep/ldgv0BYrY8NcXWMgIDfWRDQs5d+/+9rHKSrnIoOs6+/sTOfVAww0cXQU9tH6qXCHKKGJO53XdpYKoJiglXVXPK6eipzf0Eg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199018)(66446008)(8676002)(76116006)(66556008)(66476007)(52536014)(66946007)(110136005)(64756008)(82960400001)(5660300002)(316002)(41300700001)(9686003)(26005)(122000001)(8936002)(53546011)(6506007)(478600001)(186003)(7696005)(83380400001)(71200400001)(86362001)(33656002)(2906002)(38100700002)(55016003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WUlrbnE2SkowQVZNRjZyckhkTUJRUjVwazQyT3pGbHMzNnUvbGdSRjEvcmxF?=
 =?utf-8?B?UGpBUHFlc2pIbWhYYmp1eEo4cmR4UkRCYzQ1V0IxTDE1Q3RPRXAvVG12dzh1?=
 =?utf-8?B?djhNWFQxa3pFL3YvYWdpZm1JRW5OL2pDeGZtbkpQSTJUNmxCQW8rL3JVR1NI?=
 =?utf-8?B?c0hiUXA0Q0pnakJ3NWVTcU1TeXdwMURWRkZaRFZjVnBRZXVzSWlLUHZSdzQ1?=
 =?utf-8?B?dEM0OWdRT1BKTjB4M1lBOC8zbExCajU1YlRKVklTNDlRQkd0Q3lKTjlDdVlS?=
 =?utf-8?B?d1dmaXVORW14eXhPYUxEbTNEM1FpT1o3YkJZeTBlcDNQSDBxRis3ZG8yRE5F?=
 =?utf-8?B?NDcrNU9OcFpOdG9sR3g1SWc3OUFWNmFCNUR6OUxnQkZhV1k1aUhyUU9adHFl?=
 =?utf-8?B?bHpNTmxzbkhYaFdkVjZJek5YbnZlN2dhYVlQL2kwT2R2a09jaUU2YkxNRm42?=
 =?utf-8?B?cFUweVNGL1BjdGh3cXhPUVVUc1IrYjRWdExPaGFRMDZJVTdHMDNMa1FSYmZC?=
 =?utf-8?B?ZHQ2aGMraW1Md05vK056d1NFdkhvb1NoUWRqZmkrVHZ6TTRseUNhYTdtL1Jt?=
 =?utf-8?B?c3k1Q0dLRDh3Vmloa25hY2dSYkN1bjJsNFJzRXJSK1NqcGdTaGlpc3M3QkNN?=
 =?utf-8?B?RVFOTFBnUFVkeEo0bnpTZjJnNlBsSlpsMWR3am1FdHU2V3dZb3NYUkdqYUdx?=
 =?utf-8?B?dlF0VmNJWkNaZ1AyK1pGRnlFZkFPakdkbVlVNXVtbXlNMHdzZ0ZjalNlV1RI?=
 =?utf-8?B?bERQZ3Q4Vlo4KytCSW5KTGpsVUFWSjFFNlBsUlVwKzZkTmp2YnJoUXVyeTVL?=
 =?utf-8?B?dnNJaEZqUk13WWJiNVZJSVB3WXJ6dFplTzBoMmtuRkQ0ck5CMk9DNzJMVUEw?=
 =?utf-8?B?Vk5MVjNnTXdVQXlxYlVRS045cnFobVhkVVNZOUk2TkZoQ1pBb0Vsa2s0dVh2?=
 =?utf-8?B?b2JjbXVYcFdIbGVIRlJlanQxYXJMMzJwVERwMHJFcDVYTW9lVnkzVzhBVGJt?=
 =?utf-8?B?Rm0xblFLVER0cXRnQXVSWkwzM3FXOWx5Sk52VEpudlVEbXNYV0dOelNBdWtE?=
 =?utf-8?B?Y0xOMFZGY0IwN2dNa2lEbGswYlMxbG9Wc0owTXhVcTRnNUt3a29HdlJGUkRn?=
 =?utf-8?B?eCt0QjFVa29PUERScEh1ZElOUW9nREs4QWdWRS9BYkE2OXdodWY2NTZkTllF?=
 =?utf-8?B?Y3VOZzgxd1RJUXM1eXVtdnl6UHE4RlZ0WkVZVlpjMlhnLzc3bHVneVlkS3dK?=
 =?utf-8?B?U242aVpEMk9pYmVMZXl1Wndoa3o1ekZCa0l1a3gveFBiNGlQMXExajNqU0RU?=
 =?utf-8?B?V2gvQWhaa1hEQjBFYStTaVlyTVh5d2xZWTlrOEh1RVV1cDZuMElqb1QwKzM3?=
 =?utf-8?B?US9VTzNPelNhQUZwY2JrZ0loRGM5Wkh4NTl4VldJTzUvREdqZ0FmNGYrM2hG?=
 =?utf-8?B?RnhTYUlPYzliaW4vbHI3VXhpOUNXLzQxTjlZYVY1MGpQUDVWZU9jYVh1ZUJ0?=
 =?utf-8?B?MXJub2JiWFpTaldCNGZHNFZKNDIzWnF3WXlxNDVnSExxS1FFNk96OHc1bmx1?=
 =?utf-8?B?RTFsUmRNUU1FV2doZlE5emswdDhzeDU5bDdsT0d1ZzI3RUdMN3JBMW9Ed2p3?=
 =?utf-8?B?UDJhUEFnSE1acFhzOWx4dE9oaGZNc0EzeVlWS25JOWxXTWdDNGZnOEVpZjM5?=
 =?utf-8?B?ejRHNjJhTThTT0tzQTV3NGt0L3NpcXdwNmdKQWE2VmNHa0VOelUyeFFJWE1Y?=
 =?utf-8?B?MkRSUXEzZWtBQmhrMG5vOG9iMGtMazcxUDlRa2Fzckx1aTJTMGhuTThDNzJW?=
 =?utf-8?B?WTEyQVhDKzFjMmRSTmhWOVNPbDZwaTA4TWUzNDNTWnJMaGp5enovWklubytQ?=
 =?utf-8?B?MkZvVVRUOVgvRXZ5YVhiS0IyNWdzMlRVbzRzUVBWYzJLemN0T09JQU1QNkJ0?=
 =?utf-8?B?N3h2dVU3MFNoeHQ0OUtwZmVTTlRnRkdCR0s4UzZYeDJKbzc2TWV4MXJXY2t5?=
 =?utf-8?B?OHB6bWlGazRRSlpaOWNhUkx4enJkNTAwMWJnVjRvMFE3dDU2RjhZdjBURXpI?=
 =?utf-8?B?eXpXWVprTGwxRFQwcVc2Q242cjRmOHg5MkR2ZEVEWG1wMW81ZFBscjNQLzNJ?=
 =?utf-8?Q?hbnuxK8Ra/dvPBt7Sgw7p6e9M?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74be399b-3f8a-4b93-33ed-08db2c68baed
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 13:07:32.6916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E0OEldz5/NK1DMmSl0ki4/C0L9cKriQA/GrN/pI+crnI/TV6cPYvgVfBxpovaxbXDntz094nCtMCt1MmrD/uRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/29] drm/i915/tc: Check for TC PHY
 explicitly in intel_tc_port_fia_max_lane_count()
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MDYvMjldIGRybS9pOTE1L3RjOiBDaGVjayBmb3IgVEMgUEhZIGV4cGxpY2l0bHkgaW4NCj4gaW50
ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoKQ0KPiANCj4gQ2hlY2sgZXhwbGljaXRseSBp
ZiB0aGUgcG9ydCBwYXNzZWQgdG8NCj4gaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQo
KSBoYXMgYSBUQyBQSFksIGluc3RlYWQgb2YgcmVseWluZyBvbiB0aGUNCj4gZGVmYXVsdCBUQyBt
b2RlIHZhbHVlIHNldCBmb3Igbm9uLVRDIFBIWSBwb3J0cy4NCj4gDQoNClJldmlld2VkLWJ5OiBN
aWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCA3MDc3MTA0NGEyZmU4Li40OGE1OWE2NzVjZDU3IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IEBAIC0xODgs
MTAgKzE4OCwxMSBAQCBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0
DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gIAlz
dHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsNCj4gKwllbnVt
IHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBkaWdfcG9ydC0+YmFzZS5wb3J0KTsN
Cj4gIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gIAl1MzIgbGFuZV9tYXNrOw0KPiANCj4g
LQlpZiAodGMtPm1vZGUgIT0gVENfUE9SVF9EUF9BTFQpDQo+ICsJaWYgKCFpbnRlbF9waHlfaXNf
dGMoaTkxNSwgcGh5KSB8fCB0Yy0+bW9kZSAhPSBUQ19QT1JUX0RQX0FMVCkNCj4gIAkJcmV0dXJu
IDQ7DQo+IA0KPiAgCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiAtLQ0KPiAyLjM3LjEN
Cg0K
