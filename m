Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDB5748153
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 11:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A243E10E349;
	Wed,  5 Jul 2023 09:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E245210E349
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688550412; x=1720086412;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=afza6uoQ7T4R5IkcjDesSZ50shUHngUo3mcCZY/SKW0=;
 b=BLvGy0BzhlAjNZngkeWjRysim0Vl/bsQ/GSssTBBJQl8+XCB6v+Skxrb
 1j3wT/OpEg4jyO3rI8omX0K6SA8yunMH+RP+FFOtFO9+Taiu3wDPITu7l
 dCx2k/RIpf5tMKOnQn9GT1BOJZaimsaZYL9RDv3F6w6oFjHgS5OC7ZDj8
 5rsUX7t5CXDpLwgEmxrjphxQNBOGQw5R/cbGGcnwYTP/IAWm+DrnziJiG
 QuY0Za7YQ5Jnf9+MbVoG2VgrxGI+TepvEu2pRdsJjKmqbjTMNG4JBudj7
 A5OzzebSXpMKnsJGdqrcFfrt+piG4GJB92br1jt5lkO2dlZXbj/5taVaa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="449665822"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="449665822"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 02:46:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="754302777"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="754302777"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 05 Jul 2023 02:46:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 02:46:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 02:46:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 5 Jul 2023 02:46:50 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 5 Jul 2023 02:46:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RUTnLbDoUoEt6j1yN67eoYcN4LvOVP0R1Ehdow7E4MOWGxgSYJen/M4/9rRTJHMwk0MFbxgYq1eA+pAQld3Zt6p/tDV7S4rhvq9Jo+IwFGYN0yFGalrFc5e8wGeJUwZRntPDILost8Kn2Z5zdq4s00UCdinDa69Z27q3b9J9pa7wXnNiDnteubQZ+C/aVbBoJGXSye2eUeyFJaefx8KRh+jHsy2qI4svhAoUUcP2F70dnwmYiiTvQV0a6Etz/rHouDKHMrOyZKLr/btlpd4tpwYiiKysl6FY/JA6KcqHGSvcqsbYl4ZyyVrmlBEMtQTI4lR9TBfIUXhFOmn6iV93qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=afza6uoQ7T4R5IkcjDesSZ50shUHngUo3mcCZY/SKW0=;
 b=fNFZ/dBZPGpkbckrAGC4phAM5jX5/Qlj71DhX2U1K7YvX9y4FAbEtsqhCDKDnIetNkTK/EWFhAyCd1WIr+H3d8HXuFe/JJm8jpAgB6Ut9A6iecLPIHCsSAJUEFEeRp59dkQWLF54YAUuX15uYAq3VZcCBv95w9OQn+SWwwlpDYkJBWFL1+miYKjXYItWCikr89mDx4yY9RyXLHf8qLixSZpwQF10UMFBoQ6O4QJeCa9y3mFYnk5upFZERHk8LWUmFKpL5e4QPakeDB4m+1SOmRahruII8pG+gIdEv1o+d60aOZDs46SQsZsvphCjRJ4zd4MmYAHi16Uuzh0Mf/ZsWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS7PR11MB6078.namprd11.prod.outlook.com (2603:10b6:8:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6565.17; Wed, 5 Jul 2023 09:46:47 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448%6]) with mapi id 15.20.6544.024; Wed, 5 Jul 2023
 09:46:47 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 06/19] drm/i915/dsb: Avoid corrupting the
 first register write
Thread-Index: AQHZmKtZcgdZZiu77k6y6VEWsiyuUK+rF6IAgAABaHA=
Date: Wed, 5 Jul 2023 09:46:47 +0000
Message-ID: <PH7PR11MB598149E308744A9BD2A79C2DF92FA@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-7-ville.syrjala@linux.intel.com>
 <PH7PR11MB5981AA25CA94AD8971564575F92FA@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981AA25CA94AD8971564575F92FA@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS7PR11MB6078:EE_
x-ms-office365-filtering-correlation-id: 2693d12b-1097-4292-d2ce-08db7d3cbfe6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ipynFf+Xr0CfKlQIlri6NYbhqhL0gnqWnCpGH8DosmMdyJOwjFpzZzw0g3I5Am603hd9PHi7rG9QBMgPIJLMdpQJra0QVExkLrvJKQJze+B7q2RTJuVWkCnLAxq3T/j/dDX9oo42tz2hcXMKFohAgV+mZpS1dCqkjdE+eD4rEbQPV3LqnUz2Zn01ILtfh/t1wY+IzXJ6JpYOLbt82kihqavFPF55Hf82g7Z0m3FtSKAGsBuvvuuXGs+iKLEPQiW0pQ7wD9TSADs+ccObmZQD459C0oD67394iHWBdiTqKo62J3OAY6SAclI0EZNj6X4n+Z9JCRvoBU4F+dSjH9x+vPgJ3vcuPhYOaIHyGcuVkRY+CcVY0qo5hg1Si6bd5Rjz7+5K0WlZQpYNrLFGrFBfGGUemijMPDxxBO0ZArYGoaixBJdPLJx7v9r0ZPJMPaTQEyJBfmdpDAcd/i2xERdZ/YyvZ4cAUHOPw5z8DJBn7+GXv0LDz2ruDNgOQR6bGoBW7uTPntZnE0nRCQF0qZNFC6q1DtYKNEa6iRB02OSP/d+cg3KHrVTdGMG3jRc91blLUw8HO3jpECiMrkzgC8/ziGc4Jo+mikhoDtW2nN8h0i9gMl2AEBgWjVsmGwR2gS2L
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199021)(8936002)(8676002)(2906002)(2940100002)(55016003)(76116006)(52536014)(5660300002)(6506007)(53546011)(55236004)(26005)(186003)(41300700001)(122000001)(7696005)(82960400001)(71200400001)(66946007)(33656002)(66556008)(66476007)(66446008)(64756008)(316002)(83380400001)(110136005)(38070700005)(478600001)(9686003)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGpwaXRONFE1anBNUFFjUG9naVUwUTI2L2RFU0VvZ3RxS1J3bDd5MFNCTDFE?=
 =?utf-8?B?MXdUZktnaWdHcXhpZ3BwQjRSV0dUUm1jbVhSSE1Qbm9YcklEWDBaOUQrc0ww?=
 =?utf-8?B?SjUxbnV3VjRrSjhUZ2ttVTJTKzdDQzhxM25VUktyVkhYOXI4MGdVU3diNEYr?=
 =?utf-8?B?NVFFenVFeEY0MjYzNWE4TGZ1TlVla3MyL3lIYnplMzBEbDBjZXplaHFybVd3?=
 =?utf-8?B?S3FVM2swUlJwK2llNlBzdkRnMWFxdGU4bm9BYkoybWJKU1BYT0JHTzRFWmxT?=
 =?utf-8?B?cjJqS2RQZ2o5RWhEVnM1YUFRbDNTeW9BcDlCMmJYbnpnM25VRHc4dzRDbTU5?=
 =?utf-8?B?Rkw5UXluQ21SSmxicmVXWndpa0hwUkFGU3U5a2pzOTBHYlp2T0NWemZWbldu?=
 =?utf-8?B?MkE0c3ZWYzlNNTVobTVqVnhIODEvMnBCYXNEZzk0MFp1a0E1c09GTzNZa3dr?=
 =?utf-8?B?bURCZmkzVGpEMHUxbEk3Tll5dW8rMG1UKzJzSmwreDVNdGRTdXF3b3JZYUw1?=
 =?utf-8?B?eDhhOHl3dXdpRk8wUEV6bU4rbnczVUkxcUV3YkNYUkhxanJjL2lEQjI3WDlZ?=
 =?utf-8?B?S1A3U1dTTHVGWHZxSUx3YmduVGFjZVFWZmZrMzBLalJVWXllbkRqZ01sOWJr?=
 =?utf-8?B?MkJmbU9hMXFVTGhBa0U1QjBRc3VqZS9zMk1RVEhrS3pxRjAyUVpCaFg2amln?=
 =?utf-8?B?eFBKdk9CSlBZYklyZkdlUW5tNG02ei9Cd3dtRWpRbjF5dGxOUGJPQXhYWUxI?=
 =?utf-8?B?LzUyV2xxTUxEanFGb1NxR3JZL3dDNDEyR3JTN0p1ZkN0aUZXUkVVSHZob2Jh?=
 =?utf-8?B?UGppM2FrR3pWV2VtWkdicDlwT2tMbVRMYnJoS2V2ajZySFNYampid2pnZFlI?=
 =?utf-8?B?TUFZS2F2RjEwNm4xMXpVZSsrdmFkNksyN1FRNWxHNXlWeUhaQ1BhMkNQcm40?=
 =?utf-8?B?cWZ2OVBDK0puOUtocDhHMS84QlVjcnNJa3drODlqUHA3am1rdmlFajJGNDhV?=
 =?utf-8?B?alBSekxVUlpiRGtzQlJDR1hOL1pPKy9FZjh5aG5wQWwvcmdreW1aQ0JySkln?=
 =?utf-8?B?WWhtbEd2WUs5SklhcmNoSkpOSUdPaStuMTVMNDRXRkVGTFpTd2NjM3p2d2lF?=
 =?utf-8?B?MVZUNW52S2lSb3JaT3pDand2ZjJ3MkZNb0lMNFRQdkRMTXVPSUEvNXhyWFhQ?=
 =?utf-8?B?cVRZaXNsMTFQV0lCZzBpWXNCN3NNeVliRWd2RXorUnFOZTNCYnhMeFE3MkM1?=
 =?utf-8?B?eWU5RHRzejREeHQ4aEtNb3hhZmk1U0tYSWtRZHBFdTEwVE9xK3dBWEdIRWlH?=
 =?utf-8?B?WjlsQitHV0huVm9vNFcrUStnczZUc1IrT2dlNHRHRzUrTFgwNkJvSjlHaGN3?=
 =?utf-8?B?SDRWMG5vWDZaSm5uMkdyU3Q4ejFsamtLOTlYdW1rV245SUloMFkrOFpPQzdo?=
 =?utf-8?B?R0g5NXFyWXhCZWtacmtQVFA1L2U2Mm4xd2RCVkRDaVJaTTAyRmo1eStQQUND?=
 =?utf-8?B?cmZEOU5JRllOd3BOY2xWWGtsWXpnWTJiVWFYeFJGVVh1S2xQN01RclNSSFc3?=
 =?utf-8?B?MGtEUHpjWnRKUjdxUVhJUjdJaW9NbDh5YlVYVE4wb3ZGcWZxVWVNOElxSkJN?=
 =?utf-8?B?SUdScTQ1RGovV2toU2g5SHRWMzlIdHRQYjNUZkxxZlNHRWRRUUt4SzliQjRR?=
 =?utf-8?B?RlAxSEdkS3ZsZUV0SmlOUWdLcVl3RzNlUFYreFhiZlFkWXdEYjhNSFBBa25i?=
 =?utf-8?B?cld3c0hjOE1kbm9GaStJY2tjMktaRGVhcm83M0xUbUhrZU9jemR4R0Zmdzdq?=
 =?utf-8?B?azdFRTZCeCtKSlRPMkZNc1d1TFB5d0NUcTJlLy9Sb3k2SDk0elNUVXRsbFpY?=
 =?utf-8?B?T3BndkpaU01VTm9Xc2JUdU9TNGQ1TEZaN0cweGFNOEpvM2lESnZ1ZVBxVjdF?=
 =?utf-8?B?VkJTTDMxcVROR2ZKOEJPOTN6QjB3bkpVYVpBcDU4MEFRTUF5Nldnd2ZydXNK?=
 =?utf-8?B?SFh4R25NQmdTcFRaWG50SUROZ016VkplWTdLVmNGTGpKWDV3ZFVxUGhpUC90?=
 =?utf-8?B?OEJMQ3VzcWlGazc0RWZINlExM2J1L0ZVeGxKODJYN0RlZ2xFS2FuWDc3OXhP?=
 =?utf-8?Q?AiipB2diPNCWb3Crd52rVeSX1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2693d12b-1097-4292-d2ce-08db7d3cbfe6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2023 09:46:47.3601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NaqHSLctmSU6kkMvJtITURTe2V7w6+x/9z7M0xK0VbakLfh/Hf6k6ByDxzHMMLqgi8HtNB0yGxWt8ZNgecNZ6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 06/19] drm/i915/dsb: Avoid corrupting the
 first register write
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gN
Cj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDUsIDIwMjMgMzoxMCBQTQ0KPiBUbzogVmlsbGUgU3ly
amFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSRTogW0ludGVsLWdmeF0gW1BBVENIIHYyIDA2
LzE5XSBkcm0vaTkxNS9kc2I6IEF2b2lkIGNvcnJ1cHRpbmcgdGhlDQo+IGZpcnN0IHJlZ2lzdGVy
IHdyaXRlDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBG
cm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4g
T24gQmVoYWxmIE9mDQo+ID4gVmlsbGUgU3lyamFsYQ0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgSnVu
ZSA3LCAyMDIzIDEyOjQ1IEFNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjIgMDYvMTldIGRybS9pOTE1L2Rz
YjogQXZvaWQgY29ycnVwdGluZw0KPiA+IHRoZSBmaXJzdCByZWdpc3RlciB3cml0ZQ0KPiA+DQo+
ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gPg0KPiA+IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoKSBkb2VzIG5vdCBoYW5k
IG91dCB6ZXJvZWQgbWVtb3J5Lg0KPiA+IFRodXMgd2UgbWF5IGNvbmZ1c2Ugd2hhdGV2ZXIgc3Rh
bGUgZ2FyYmFnZSBpcyBpbiB0aGVyZSBhcyBhIHByZXZpb3VzDQo+ID4gcmVnaXN0ZXIgd3JpdGUg
YW5kIG1pc3Rha2VubHkgaGFuZGxlIHRoZSBmaXJzdCBhY3R1YWwgcmVnaXN0ZXIgd3JpdGUNCj4g
PiBhcyBhbiBpbmRleGVkIHdyaXRlLiBUaGlzIGNhbiBlbmQgdXAgY29ycnVwdGluZyB0aGUgaW5z
dHJ1Y3Rpb24NCj4gPiBzdWZmaWNpZW50bHkgd2VsbCB0byBsb3NlIHRoZSBlbnRpcmUgcmVnaXN0
ZXIgd3JpdGUuDQo+ID4NCj4gPiBNYWtlIHN1cmUgd2UndmUgYWN0dWFsbHkgZW1pdHRlZCBhIHBy
ZXZpb3VzIGluc3RydWN0aW9uIGJlZm9yZQ0KPiA+IGF0dGVtdGluZyBpbmRleGVkIHJlZ2lzdGVy
IHdyaXRlIG1lcmdpbmcuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gTEdUTS4NCj4gU2lnbmVkLW9m
Zi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCkNvcnJlY3Rp
b24hIEJ5IG1pc3Rha2UgYWRkZWQgbXkgU2lnbmVkLW9mZi1ieS4NCg0KUmV2aWV3ZWQtYnk6IEFu
aW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IA0KPiA+IC0tLQ0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgOCArKysrKysrKw0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGluZGV4IDA5M2IyNTY3ODgz
ZC4uYTIwYWU1MzEzZDIzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jDQo+ID4gQEAgLTE0MSw2ICsxNDEsMTQgQEAgc3RhdGljIGJvb2wgaW50ZWxf
ZHNiX3ByZXZfaW5zX2lzX3dyaXRlKHN0cnVjdA0KPiA+IGludGVsX2RzYiAqZHNiLA0KPiA+ICAJ
Y29uc3QgdTMyICpidWYgPSBkc2ItPmNtZF9idWY7DQo+ID4gIAl1MzIgcHJldl9vcGNvZGUsIHBy
ZXZfcmVnOw0KPiA+DQo+ID4gKwkvKg0KPiA+ICsJICogTm90aGluZyBlbWl0dGVkIHlldD8gTXVz
dCBjaGVjayBiZWZvcmUgbG9va2luZw0KPiA+ICsJICogYXQgdGhlIGFjdHVhbCBkYXRhIHNpbmNl
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoKQ0KPiA+ICsJICogZG9lcyAqbm90KiBn
aXZlIHlvdSB6ZXJvZWQgbWVtb3J5IQ0KPiA+ICsJICovDQo+ID4gKwlpZiAoZHNiLT5mcmVlX3Bv
cyA9PSAwKQ0KPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiArDQo+ID4gIAlwcmV2X29wY29kZSA9
IGJ1Zltkc2ItPmluc19zdGFydF9vZmZzZXQgKyAxXSA+Pg0KPiBEU0JfT1BDT0RFX1NISUZUOw0K
PiA+ICAJcHJldl9yZWcgPSBidWZbZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ICsgMV0gJiBEU0JfUkVH
X1ZBTFVFX01BU0s7DQo+ID4NCj4gPiAtLQ0KPiA+IDIuMzkuMw0KDQo=
