Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EA2748127
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 11:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E83B10E33F;
	Wed,  5 Jul 2023 09:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8160C10E33F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 09:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688549994; x=1720085994;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Bk6b0BJX219Jx6IIHcw7jP7o15b7GbuVYoO0/eu7Igc=;
 b=Rs6Au61K/8K1VlRM5LTde/1esX8P+nQs2AYbekxNbxkAJZfJf3yOj9Oa
 9LPGqDPUGekIaEMXh7cdR6+0aZOA11RNowWkQztvPWD7hujAVNbVZWSof
 2A7+bwJE3yXZvALxtqPni57De0ipREmKjj3D8hzPrM79nLhcCxwU65jDR
 aeg+nl/fYFhjrPbrbwqV3hDSCvYbcY1CcA/2Ni84zGKGRIh9lFcJCthI5
 TMRY8OMj/ge6fw3gsTo0Y7HMbVyBDX7IiuyKlm+Dqg0kEoVmo93Zrmurb
 WDgWJBbbMUfwwoNL9v+H38aRpoH6JMTT8x64HOANsvXw9fjgRpaVhTWZn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="348084539"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="348084539"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 02:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="832471007"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="832471007"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 05 Jul 2023 02:39:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 02:39:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 5 Jul 2023 02:39:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 5 Jul 2023 02:39:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncXskdq6BUzo4E4AJTbcPJgwWT4jF0sg/mj4K0LA6ktQslwNfihTTscGRGDABpCd/1/5QqxXQQRjZmVnqHvkqTU9zp9KRzztn74YnKqAtzhzD4ZS/uBWXkQ5HGlsC3QH5lzbD9htcz9lSuyJyJcJibpovTJWGk7oac8KduBwsw7tnSJziDK3huDuoqFdh9Xla3HUqVqOmLVdeqmdMOpf/CzeTcbMkNarOwV3bFdyg+FacHycHPLzG0KLzS/FBNQmqWVIJGfQkW/pl33EPFyke9+7pFJ4dPV5WWRDYWiGS1hF12ZL6tyjKHmuCK/8GrabzHXrINvf764pZPE1Q3OeqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bk6b0BJX219Jx6IIHcw7jP7o15b7GbuVYoO0/eu7Igc=;
 b=RRnd/l4QZtass9Of5EIQVVPHleH3SY0BQtZ+2kTknKG261SSY6f0RR1psmO1Uxzdk4twAOxGG+eIeHCJP5DvDoDjTvgnrWDWXMHCZsIpOkZbKGenEHvyZGyphKs231WECWT87RMRVHrXQP7Ha0oUMmv3bmgD2weWZbnR9ItLae1o/ACUl53GnhmIwIJhMOLY8VtO1c55E6RH3xdND9aRxuElRj1QAe4JjFOBUN2f5OX0cHL3A0XuQ6jilKEKR+o60Z7XR4kPSm97pAW4I8jnyqlR1w0BtPSxv2pCbvN2bcLN7HAspYf2eWfnD8c9+M5KzAJ+R1zI+zvy5azndjfaLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS7PR11MB6078.namprd11.prod.outlook.com (2603:10b6:8:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6565.17; Wed, 5 Jul 2023 09:39:44 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448%6]) with mapi id 15.20.6544.024; Wed, 5 Jul 2023
 09:39:44 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 06/19] drm/i915/dsb: Avoid corrupting the
 first register write
Thread-Index: AQHZmKtZcgdZZiu77k6y6VEWsiyuUK+rF6IA
Date: Wed, 5 Jul 2023 09:39:44 +0000
Message-ID: <PH7PR11MB5981AA25CA94AD8971564575F92FA@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS7PR11MB6078:EE_
x-ms-office365-filtering-correlation-id: 5f45c71a-0007-4b3a-df19-08db7d3bc3db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3LqjxtEmv2i2W5rXBl2UO6x7kbp3dUEciC0b3IFjlHtpqSuD3OoaH2sZARLC0B3uzWb53ZdHw4KF9uAXPDe8QtS8wZXrpNU0Sy+IHW9NSqqZUfl2ISMO19RLLlxjKdsXre+MfXh28iBgNvOs9I4nSPovq0JxRpM5dbgW6S5z58ZB8WsUzCc5lC7VbYJJESr35pm+6+OqwOm4WpBZeNizhB6HaignjrNDghyRvJbTyWS8G0Yjxr1xy0eXYuFB9qWjx4y2f6x2yQN6ZOcNarZBc0iKu7rU/H7wDnEsJj3ECIMyvS+piYZlDFxSoxGs9vbbKdJh2P2U+MST/VtIZkd4ybW0Ip5A7cCCgO8Tg3M3D6SQqpiG1vdiPCR11CHrKQSk765tyw4J6/C6lzUtUcEWbVOrp7dHoy39ACfjKiC+gglAJZ8PRusLHMvWKDLj0blW7m0vw7e0sF4ei7/gJRxyTWeN6b3r6GSWnxCxILTaKZaePd2QLaCBpHLX8+mu6oiEkLwvClvwLXkXyZ13fNzoqhW6XCpSEbG1cCMCmOureaIWK7PgOTwFivlg/XJnzkdX4l3ZwhDlylawN/A569ljCn6FMaKTm3uYt+iXOk/UKaGDm8jyrX/FKlDOd6Kndxy1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199021)(8936002)(8676002)(2906002)(55016003)(76116006)(52536014)(5660300002)(6506007)(53546011)(55236004)(26005)(186003)(41300700001)(122000001)(7696005)(82960400001)(71200400001)(66946007)(33656002)(66556008)(66476007)(66446008)(64756008)(316002)(83380400001)(110136005)(38070700005)(478600001)(9686003)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXdTWmhmSVlJcm1zRFpPUTBacTNFZ2VZODBGNGtYbHAyVlpXaXZmbGs0TnVO?=
 =?utf-8?B?RFB2SFFoV1ducGpsRGlpR0NOQnQxbzYvcUplckRnM1lyb1hXTm8vU0Zuejc4?=
 =?utf-8?B?Q1F5eW5zbW9hRkJQMVRhNWNjaTlVRWt0T2dvT1NKUW5VL1p5Tm00Qk1zTzdL?=
 =?utf-8?B?OGVmYWw4MU5STStha3RzNWRNb2dvODNwRkdCbXRkYTlEd3JFNGpIbEUwK3BX?=
 =?utf-8?B?K1pOWlowQ1g3U0gwdEs0dXBvVXczSktsZEpETDZHS2tOTWUrMXY2Nk1LSUJp?=
 =?utf-8?B?N3k2bGxORlB0bDVEdkZ1QzF3Tis0SXRJTFVMbjJYOVRMMERlbE9zd0sxT3dv?=
 =?utf-8?B?TTR4ZHJtSkd5WUFRbHFBbFZXSXFBSDR3U3VEUUJGVitUekgwNkt3N0VZRHdS?=
 =?utf-8?B?L1VJdlc1SVBXdi9ZM2RPK0I4a0UvbFlOTE9mem9sYTdwWThpVEtQS2FQcUs0?=
 =?utf-8?B?NmVPdUhyRVVoU1Z5b3FFNnM5WG5lZFFjNTAwVk9EVUFqZXM4c1pjWTd5QnJR?=
 =?utf-8?B?TDVuVlk5cVBUcEhzL010bFNONlk4V2dkN3FhYVdkK2JNZ0I3RURyWWFKSlYy?=
 =?utf-8?B?QnFIMkJRZnRJQ1p0ZW1wY3lNTWI5bndCV3Z5dmhXTEs2MWxsKzNSYjBPOFRs?=
 =?utf-8?B?eTcvN1ZIcElpT08zYXdLRHRSSDN1Yncrb25jMGxWdTJodlgydTFFSXJTdk8w?=
 =?utf-8?B?SSs5WVZtNDNZSUFkdlN3alJPMFhTMDQvdUpSWkRZNWlTVjBOdjlFOUlMMzhI?=
 =?utf-8?B?L0hxemtGTnFObFNrTVR2Z2tGSE1BQThMYjJmQXdRSjIreFo5UWh3ZnBHVTZz?=
 =?utf-8?B?d0htczlwbmdDU1lnZGpSeWJhamo5TEdEMTBGQ3dHWDgyZy9yc2krY3pnTjZl?=
 =?utf-8?B?SWRSc2hseWxsRnBmQ3Yzakd1dytYOWVaT1dDQUFFT3E3N08wanEwaWhoait4?=
 =?utf-8?B?dytWbHVpUTNlYjFrRjRUV1hydkFaVWpUL3NSR3h2eERTYk54bHBmbXp2eDVN?=
 =?utf-8?B?OC9SMXVLUE5VN2JWTE1mSWZYSEFMdVZndWhRRm9qSmw4ajYySG9QWXpmUmgv?=
 =?utf-8?B?dXdYRDdvTnhFSzhFRjFHUjg0eE1ad3RoZkUwaTJWNkVVb3MzQlFaQ25jbURZ?=
 =?utf-8?B?U0dDblBvR1QyRXIrWmlEZ1pLSFNpVDJ6eEMxQmJ3Sitsa0RPZjhJdktjd1Iz?=
 =?utf-8?B?WHV4cGhOVTFoS0lmMHNrMDNkTTllMUo3QmpibmthcmpIODU5RGNoei9UZXZu?=
 =?utf-8?B?R2NLMFNJVERDaC9Kbjl4aEhGbmJ5OGJPNElzOGZuWFQxMXVWL3hJR2tjVTlH?=
 =?utf-8?B?UTVyTTAwb2M3TXFtNXNoTlh3UWZxc0Fpai9KQzEzR0RyZm1wRXYxL3ZEVXIv?=
 =?utf-8?B?OEJWYzd0UXg2SkRFQXdVd3VhbUtjRXA4SVZoTGMyVUxyeG1qazNnb3ltNW90?=
 =?utf-8?B?dy9GcW1QSm9sdE1mZTdWcjJGKzRIbkxqdWhPNmxSUnB6RysvR2puOUFyN2lI?=
 =?utf-8?B?bUdFT0lENjJYeElEREZBMFJzQWt1YkMyTUxLWUFiaUkvQ0FtSitGTGZndkYz?=
 =?utf-8?B?NG95K2Urc1RwbERlQWU3Q3didC9oSTkvekd5blphNEl1SEVrSDdUd2gxelVE?=
 =?utf-8?B?T1c1Z2hqQzJ3aDRsTXFTZVJCV1VwSFZIaDVLWGpiYWtmNlRMWWEzRVRnWVVM?=
 =?utf-8?B?MGFndU5mYjR3RmtIYjBqOUpuYzBpN0Q5SzdKUTVtZmtqZnQ5WmdSN2drMU82?=
 =?utf-8?B?dlNxMlo5R3N2M1RqS3pEVjNXWGdlWDk0Wjk1cytPVUxvZWR1bDljcGhNQXB2?=
 =?utf-8?B?dUthQzRJMTBkdDFodytrbnN4VGM0VUlYV0JCdDRIQzJtS082MVlibzFkalRU?=
 =?utf-8?B?MExJTEl3L2RZdXhWRitNL2RJUXNxemdRT2puV2htUHY4RE5wV3BCS2FHbHpj?=
 =?utf-8?B?UGNWTEJFNm85V28veVRvNUJmTFlCTDBIb2tZREZDdDFYYmVxZkNJR1ZtUk5z?=
 =?utf-8?B?ZEd5WS84bUhSbjdNRTNUNWprTGtyMExySi9TNjA0VE5xZlpCUEc1SDB6a2Jt?=
 =?utf-8?B?WThTbHJQZG44eFpaeEU1bzQ5Uk15dHpwTWN0Q2pxeEpsd3ErV1NEV25BWDQr?=
 =?utf-8?Q?+g8wV6DAP9rR6/afpbqC7daSw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f45c71a-0007-4b3a-df19-08db7d3bc3db
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2023 09:39:44.5262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 06c8x5SYJrQqjy3c4CN0BdFpXIXflX3x9DHhLaxntqtTqRR5bFh1Q2w+g0e38vSb2tZi69o0fNWOHfct9fHwlQ==
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAwNi8xOV0gZHJtL2k5MTUvZHNiOiBBdm9pZCBjb3JydXB0aW5nIHRoZSBmaXJz
dA0KPiByZWdpc3RlciB3cml0ZQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50
ZXJuYWwoKSBkb2VzIG5vdCBoYW5kIG91dCB6ZXJvZWQgbWVtb3J5LiBUaHVzDQo+IHdlIG1heSBj
b25mdXNlIHdoYXRldmVyIHN0YWxlIGdhcmJhZ2UgaXMgaW4gdGhlcmUgYXMgYSBwcmV2aW91cyBy
ZWdpc3Rlcg0KPiB3cml0ZSBhbmQgbWlzdGFrZW5seSBoYW5kbGUgdGhlIGZpcnN0IGFjdHVhbCBy
ZWdpc3RlciB3cml0ZSBhcyBhbiBpbmRleGVkDQo+IHdyaXRlLiBUaGlzIGNhbiBlbmQgdXAgY29y
cnVwdGluZyB0aGUgaW5zdHJ1Y3Rpb24gc3VmZmljaWVudGx5IHdlbGwgdG8gbG9zZSB0aGUNCj4g
ZW50aXJlIHJlZ2lzdGVyIHdyaXRlLg0KPiANCj4gTWFrZSBzdXJlIHdlJ3ZlIGFjdHVhbGx5IGVt
aXR0ZWQgYSBwcmV2aW91cyBpbnN0cnVjdGlvbiBiZWZvcmUgYXR0ZW10aW5nDQo+IGluZGV4ZWQg
cmVnaXN0ZXIgd3JpdGUgbWVyZ2luZy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpTaWduZWQtb2Zm
LWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA4ICsrKysrKysrDQo+
ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggMDkzYjI1Njc4ODNkLi5hMjBhZTUz
MTNkMjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0K
PiBAQCAtMTQxLDYgKzE0MSwxNCBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kc2JfcHJldl9pbnNfaXNf
d3JpdGUoc3RydWN0DQo+IGludGVsX2RzYiAqZHNiLA0KPiAgCWNvbnN0IHUzMiAqYnVmID0gZHNi
LT5jbWRfYnVmOw0KPiAgCXUzMiBwcmV2X29wY29kZSwgcHJldl9yZWc7DQo+IA0KPiArCS8qDQo+
ICsJICogTm90aGluZyBlbWl0dGVkIHlldD8gTXVzdCBjaGVjayBiZWZvcmUgbG9va2luZw0KPiAr
CSAqIGF0IHRoZSBhY3R1YWwgZGF0YSBzaW5jZSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVy
bmFsKCkNCj4gKwkgKiBkb2VzICpub3QqIGdpdmUgeW91IHplcm9lZCBtZW1vcnkhDQo+ICsJICov
DQo+ICsJaWYgKGRzYi0+ZnJlZV9wb3MgPT0gMCkNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+
ICAJcHJldl9vcGNvZGUgPSBidWZbZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ICsgMV0gPj4NCj4gRFNC
X09QQ09ERV9TSElGVDsNCj4gIAlwcmV2X3JlZyA9IGJ1Zltkc2ItPmluc19zdGFydF9vZmZzZXQg
KyAxXSAmIERTQl9SRUdfVkFMVUVfTUFTSzsNCj4gDQo+IC0tDQo+IDIuMzkuMw0KDQo=
