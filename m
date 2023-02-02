Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F146881A8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 16:22:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F61910E56C;
	Thu,  2 Feb 2023 15:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A0710E568
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675351354; x=1706887354;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MNRECioiOlZVFBssapg9zw3ZgPENwDl6QpKAPBwEJCY=;
 b=D/KovnXReGMGJ/3rtv13LEo3kPLn2IM9LP/yRdmmX6sU487B9gpgLO5i
 EJRXJeZxZd0xW0WQYAynHkkRw/4jDC3BFB0qGVv2UQhyOHvgRVf7TssdJ
 YRt8BKfdbRITFpUxMlnhlsFbhrPoqbAD26qBF5jTGggaQdN9krg4OOTrg
 Jgk4uxCuhS8+nkc1qLUMt64APPVnzD8Xen62m+y8lWb0g1BWiA4BuhmGy
 jP2IU//Jhc40s8C4jleGyQKFFVAeojHop9Gm/TXypUyNWnZsoCMOmFxHp
 9P7O6VYkLTKFD/6gr0j8FwpOxx5lHUlVQxmXzI37GiqJW3qubHfqiIXCn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308810110"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308810110"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 07:22:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="839238287"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="839238287"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2023 07:22:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 07:22:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 07:22:10 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 07:22:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g5nR4xLK93h2Ab2X9oodex1eI+GewnHoQCCGYzh3vevZgCNjWNsYIhLDBG6/qdMYrAXWlwFSHHG/Y+2XBJ7jc+R2E0Xizg4IO4lLpGJjkJThhfJk8IineynzMVq0b5cv0Wly9FFALiYgoWWrkAqZkN+jl4nmqd0QF2hF9X3mpIqCumrb0lrdm+8EB5OZ3Jemx1Pt397wI41mO1aS7KZT3p6f4sJfCxE7MKVO+EEj8gHRMho2n4NErrhoVv1ITPOzI6wBerqZI/BTzNLHl0gq44TMSX/s8/yqAnngo5I80FzPQjwysYduE0Dd65kiaRbo2X/GuBkQm67GzheyTt0fiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNRECioiOlZVFBssapg9zw3ZgPENwDl6QpKAPBwEJCY=;
 b=nLWnu3hBgQa0yoPTSR4naJ0pNwUVcT2pnO35WhApquQdGzhfAY4Yg0sCTsZWQhVUDf/nPyHxwi6amjc0UyDOASh7piWP8ZV/5Fz+nEtYO99cq7mmhEMv1vdGBQf4GtAkXp9uoV5NPD291XfGCfIR+K2+gKY6oXmiP4kVUs9rD6sfpcIiFb3Y5apxWJkJurJrWCRHjixrA24QnGLziLAJwC24BxvtQEZi1hDPmPUui8OwiPdY3QHS1JuGmP8t9Sd3vlbj4X5VbgK+pkF8A5Q0w1fvGPbS3uIzIHvuQUXjIsyLkLLAp/jnHGgs0F3SpEQMBRd73ortW899YOcZul/C6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB5247.namprd11.prod.outlook.com (2603:10b6:5:38a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 15:22:02 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Thu, 2 Feb 2023
 15:22:02 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/13] drm/i915/dsb: Split intel_dsb_wait()
 from intel_dsb_commit()
Thread-Index: AQHZK1pMZAaxBjTZ/0eNmWOvD7zXhK673Q5w
Date: Thu, 2 Feb 2023 15:22:02 +0000
Message-ID: <PH7PR11MB59819167D628323A47A993B7F9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB5247:EE_
x-ms-office365-filtering-correlation-id: 1df63644-3b1c-4101-6b72-08db05313c3e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vO0fuPM1ffKZjcigxtla3gv6hYLnm4N4gNDhleh9du1nkttRFoYiD8s1ihE3+J38aLtfr4MlAKBqaGyiYRVSUZLxyVY7YF8QXKRy+OKFC8Kk4UyDpD0RdM19m9ix2mAbt+JGiEqjynMmMQ1LekenHBFL0dw9QZb5FELsn2ShFwo3aeyNYykWGZCm4SBRc7FHrwrprBRwPE8eGNhgRkw03KIOeokzRmB1cnquNm2+W3M5lUAVBvw6fqwGfqRDsgDVJNQ2HE1Y8Q91DcxJeBYd25HWN1TB9+w4rDmrb9I1/Db2eHwfpLczPOKELyv/7RjOmaBHR6CmWE32gv9XCva/ZvRTQ1pAUHwhU2cpS39Dm/Ru4P6Ch3uAXsd9H6MPiq7o70aoQPER5b5TuErlUgFIO1nIc0pISl8X224UASuBq9eejk+zQzRNZVVRjtxxlQk88ZX1JeUQcPt4pFCTwpheqqnLYidiUNQrzbqy9k3azGpJimpa0YBGrnSnYJwyy/WHhJmIZzYcxxQgzXHp5TqWtF/zL3ZhSoZ0QpADWjze55p7dKiXXoHs/vCoq3gjn8hBLXdiZOoXUiVdNCrDBNYCBC68TCqXNL+vtzp/cATK9xZmR8m3+iNZg/u2N8PAY3VRnRu3KVh040OFACP+W1/wzAYigOvjVICW1NF5YwiVSLWgLfDFBVj9KjVak/q5e6Md
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(136003)(396003)(346002)(376002)(451199018)(76116006)(8676002)(41300700001)(7696005)(71200400001)(478600001)(110136005)(186003)(53546011)(26005)(33656002)(9686003)(55236004)(6506007)(316002)(5660300002)(86362001)(2906002)(52536014)(8936002)(66476007)(66946007)(64756008)(66556008)(66446008)(55016003)(83380400001)(38070700005)(38100700002)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmFEd1lxM2d2MUNsWHN5Z2xZWkpHZFpSYTVYbmJxKzZ3Vkl4THB2cWpmajln?=
 =?utf-8?B?a2U0M1dicnBMcjh1K1FOK3NWQ2oycUl0M1gwdms4WjZkZUZHemR4eEVySWFR?=
 =?utf-8?B?Wk9qSEZpMk5iM0M0RUZ5RDVDbkQ5aFBkNEVOb21ReXF4c3BtUVZSZ1V4ang1?=
 =?utf-8?B?VWJ1WXhUSXgwU3pWQjl1TzlsVnVkcUwvVG9QTnpiV3JEYmduVW1QbGhMSEVz?=
 =?utf-8?B?R0xwU3Fhb2p1VHNweTFYUlRITnU1empKeTVwclVCTnNkQmhGclNoMmlnbWNv?=
 =?utf-8?B?cVl1UnRZaXVxTUN1ZC9JVTRpU0Q2c1ZGT2VHSlFRY0tEdFhrQ3ZxUmw4UHgz?=
 =?utf-8?B?RlRqdkYrYVAwQ3g5MjFIOHpHRDdhT0Y3eWxZRzQvWlgzUSsxUEtJRlk0Mmp1?=
 =?utf-8?B?M0NSOHdEcGNDbFdVckVGSkUzbnVUbFpxcjA0R3F2RnNqMTVJOUdsc2ZvQzNL?=
 =?utf-8?B?UmFTOE8xc0QvT09ZQmdmNmdQWWtvZ2EzUzhkT1BvdktiVDhZdmhvbXhyOTQx?=
 =?utf-8?B?ZEdvQUljd0RSeStvZ3I4WWxZeGoybU5DdFlFdHVuK2hRVXJVR2R1M1Nlb2ds?=
 =?utf-8?B?aHF0eEVPUWIrc3VUYktSTnZmejlaVkJQRDdURm9OVDA5Z2cxRXlOQndXcjAv?=
 =?utf-8?B?dEJTYlJzbUVjbWhjaE5tdit5NTg0NmVnUHpIRCtjUkx1Zm1LblFMcTJocGNM?=
 =?utf-8?B?UDFNRjkyYzNHTW9IK0l3Ry9PL0tlQXZlYU14Tmt6ZTZDWmR5c2svUWRxZGlR?=
 =?utf-8?B?K2RWVzZZbXZ6UW5LTFlqNUcxak5PeFZYMUlielk3WFZaUVVzZWpqWDVRaVBL?=
 =?utf-8?B?bW40Z0toSmdBNnFjVkpXQzZ5TkNVOWNqWmlLSk5DUEVpYUdQRmFIdEdnK3p3?=
 =?utf-8?B?L2NBNkFJWlNiWHZGbG9yZXpGb1g2V0c4NElBcFIrc3lUYzFqQjRaU2c4dzlM?=
 =?utf-8?B?WGVScWI3WlEvL3BZWGdzL1dSTjJTL3U5VEc3Z1AyTlNRS090QXhoUzdoM29R?=
 =?utf-8?B?dzk4cDdUb2xWZE9yRlZ4b1hiOGFYS29vd0V3Y2RIa1BzQ3RtdUZwMEhoQTd6?=
 =?utf-8?B?OHgzY3loNUpSQWlYRnArUFJFMjhqemM5UXE3WThaTUhnWS9acjFjeDBRV011?=
 =?utf-8?B?UnhZMzNDQ25hYVZqbTdrQ05mVzhTOUFDRlJZY2VMazFqWVR6R255cE1YaU9y?=
 =?utf-8?B?R2VZTXlnNC9aeUJIQ1FTWkJra0VjT0pUWm1KaWJEV1ZTcWpHUjlXdVNuckZO?=
 =?utf-8?B?WlA5NVdiUkduZVNRbUIrU3VhTWtra1lCRDNGSVZTLytoL2h4TlB5ZWlNb2Ey?=
 =?utf-8?B?b2NHZFU4a0drSWNIeFhaV3hFcWg0VmlabVhibG03WUhWTXRtcThJUEVpZVBi?=
 =?utf-8?B?S3I2SFc3cVJ4c2s5ZkM5L29mYy9hY0w2RUYxRHlUWmlkQzB6Z00zZTJueWRl?=
 =?utf-8?B?WTFjb0tGQUNOY2dGL2czb0FDUmJVb2Q5RThzeXJ3TTRSOGNDVWdZbjRLTy9V?=
 =?utf-8?B?cm1LSkhDWTQvV2lTa054WjVsZE95ZFljOFpZVDZDUnFRT3ZxZUVBaFZBaTRM?=
 =?utf-8?B?QzR6SWN6dW56Q21kejU5RDk5OCtteFB5bTl2RG5DQWNEbHI5SUY1UzlaNHZM?=
 =?utf-8?B?eDdvc1dkOWZkQ1JrRkdOVFRXSGNvRTJTK2lYeU1tVEhycTFxSHh3bzZpMEFZ?=
 =?utf-8?B?T3hIL25sRTJlTEhPVVNaTk93MUhUei84S0hhQzNSSEVyWEJvaHJ6UTJCWjk1?=
 =?utf-8?B?a2QzKzNrdi9ieVhzT0tnT0M2YW53cVVEeFljVWRrU0JpdnYvcWZpSXBLN0dj?=
 =?utf-8?B?RjM0RjdYaXB2R2ZSZFJ2eVVvaXFnQlpIU2x6YStTWmlPNC9qc1JPY0hTUkhJ?=
 =?utf-8?B?djU2ZkdKUXJJWnQ5QUpxckE0ZXp2QlVnemo3Q1J0YnN4aUR2dWk1OUpPczlr?=
 =?utf-8?B?WGxJd2lhWXk4UmpSSlFMMU9vYW5sVnVlNHQzdGxuRitHMW5lTzdJT2UyME5I?=
 =?utf-8?B?T01WVy82WXd3UVkvTDR4a1FJRncrTzd5eHhScGNmbXI0YjQvdk5veWV1U2hp?=
 =?utf-8?B?Q284WGpjV1hMVnA2Ky9oUWlJelUxQ0hWM2xOZWgxakFJc0pWV2FFdGpSQlNQ?=
 =?utf-8?Q?/qsvQWluUdVvuO2Lp4UVYTlE1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df63644-3b1c-4101-6b72-08db05313c3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 15:22:02.5161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EneCgBrz5T9fkbU0tsQvUdpgUSHZyskTWbUzArVQgPW1vs4ZVVedRbAWR2cHYQqr5rlBzjSGdiDFNV4yNhKFDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5247
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/dsb: Split intel_dsb_wait()
 from intel_dsb_commit()
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
Z2Z4XSBbUEFUQ0ggMDMvMTNdIGRybS9pOTE1L2RzYjogU3BsaXQgaW50ZWxfZHNiX3dhaXQoKSBm
cm9tDQo+IGludGVsX2RzYl9jb21taXQoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFN0YXJ0aW5nIHRoZSBEU0IgZXhl
Y3V0aW9uIHZzLiB3YWl0aW5nIGZvciBpdCBzdG9wIGFyZSB0d28gdG90YWxseSBkaWZmZXJlbnQN
Cj4gdGhpbmdzLiBTcGxpdCBpbnRlbF9kc2Jfd2FpdCgpIGZyb20NCj4gaW50ZWxfZHNiX2NvbW1p
dCgpIHNvIHRoYXQgd2UgY2FuIGV2ZW50dWFsbHkgYWxsb3cgdGhlIERTQiB0byBleGVjdXRlDQo+
IGFzeW5jaHJvbm91c2x5Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmlt
ZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8ICA0ICsrKy0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICB8IDExICsrKysrKysrKy0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oICAgfCAgMSArDQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IDhkOTdj
Mjk5ZTY1Ny4uNWQ5OTkxMzQyOWI5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jDQo+IEBAIC0xMjU2LDggKzEyNTYsMTAgQEAgc3RhdGljIHZvaWQg
aWNsX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkNCj4gIAkJYnJlYWs7DQo+ICAJfQ0KPiANCj4gLQlpZiAoY3J0Y19zdGF0ZS0+ZHNiKQ0KPiAr
CWlmIChjcnRjX3N0YXRlLT5kc2IpIHsNCj4gIAkJaW50ZWxfZHNiX2NvbW1pdChjcnRjX3N0YXRl
LT5kc2IpOw0KPiArCQlpbnRlbF9kc2Jfd2FpdChjcnRjX3N0YXRlLT5kc2IpOw0KPiArCX0NCj4g
IH0NCj4gDQo+ICBzdGF0aWMgdTMyIGNodl9jZ21fZGVnYW1tYV9sZHcoY29uc3Qgc3RydWN0IGRy
bV9jb2xvcl9sdXQgKmNvbG9yKSBkaWZmIC0tDQo+IGdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jDQo+IGluZGV4IGY0MTE0NmZjODRkNy4uMGIyZmFhMzNmMjA0IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTIzNSw3ICsyMzUs
NyBAQCB2b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQ0KPiAgCWlm
IChpc19kc2JfYnVzeShkZXZfcHJpdiwgcGlwZSwgZHNiLT5pZCkpIHsNCj4gIAkJZHJtX2Vycigm
ZGV2X3ByaXYtPmRybSwgIltDUlRDOiVkOiVzXSBEU0IgJWQgaXMgYnVzeVxuIiwNCj4gIAkJCWNy
dGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLCBkc2ItPmlkKTsNCj4gLQkJZ290byBy
ZXNldDsNCj4gKwkJcmV0dXJuOw0KPiAgCX0NCj4gDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2X3By
aXYsIERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpLCBAQCAtMjQ5LDEzDQo+ICsyNDksMjAgQEAgdm9p
ZCBpbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gIAkJICAgICJEU0Ig
ZXhlY3V0aW9uIHN0YXJ0ZWQgLSBoZWFkIDB4JXgsIHRhaWwgMHgleFxuIiwNCj4gIAkJICAgIGk5
MTVfZ2d0dF9vZmZzZXQoZHNiLT52bWEpLA0KPiAgCQkgICAgaTkxNV9nZ3R0X29mZnNldChkc2It
PnZtYSkgKyB0YWlsKTsNCj4gK30NCj4gKw0KPiArdm9pZCBpbnRlbF9kc2Jfd2FpdChzdHJ1Y3Qg
aW50ZWxfZHNiICpkc2IpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0
YzsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMt
PmJhc2UuZGV2KTsNCj4gKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+IA0KPiAgCWlm
ICh3YWl0X2ZvcighaXNfZHNiX2J1c3koZGV2X3ByaXYsIHBpcGUsIGRzYi0+aWQpLCAxKSkNCj4g
IAkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwNCj4gIAkJCSJbQ1JUQzolZDolc10gRFNCICVkIHRp
bWVkIG91dCB3YWl0aW5nIGZvciBpZGxlXG4iLA0KPiAgCQkJY3J0Yy0+YmFzZS5iYXNlLmlkLCBj
cnRjLT5iYXNlLm5hbWUsIGRzYi0+aWQpOw0KPiANCj4gLXJlc2V0Og0KPiArCS8qIEF0dGVtcHQg
dG8gcmVzZXQgaXQgKi8NCj4gIAlkc2ItPmZyZWVfcG9zID0gMDsNCj4gIAlkc2ItPmluc19zdGFy
dF9vZmZzZXQgPSAwOw0KPiAgCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBEU0JfQ1RSTChwaXBl
LCBkc2ItPmlkKSwgMCk7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuaA0KPiBpbmRleCAwNWMyMjFiNmQwYTQuLjc5OTkxOTljMjQ2NCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IEBAIC0xOSw1ICsxOSw2IEBAIHZv
aWQgaW50ZWxfZHNiX2NsZWFudXAoc3RydWN0IGludGVsX2RzYiAqZHNiKTsgIHZvaWQNCj4gaW50
ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICAJCQkgaTkxNV9yZWdf
dCByZWcsIHUzMiB2YWwpOw0KPiAgdm9pZCBpbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9k
c2IgKmRzYik7DQo+ICt2b2lkIGludGVsX2RzYl93YWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7
DQo+IA0KPiAgI2VuZGlmDQo+IC0tDQo+IDIuMzguMg0KDQo=
