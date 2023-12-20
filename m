Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37977819DFB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 12:27:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB1AD10E340;
	Wed, 20 Dec 2023 11:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC0AD10E339
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 11:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703071657; x=1734607657;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/6dOp/ZKeHDmry0MteZhiH2P4qBhrhHd7MntB9mIiMc=;
 b=fvk1HpxLnAdzCcZvZJhC6xuO2m8Qlhs5MrXfuJavL51THPc3LlNLry+o
 jJtyltPP4nielrYo9rJrCrgzfkIjk2Ik3OUGh1Yp6ofJUY0mwNAurSv2K
 S3EwHh8A0SxJWdBdZTEIDq8Jgi1nKui/F8Os0TuTR4RZpBRvLOrP8u/jd
 mrfNh4F+wUJEoOe/PK/Q6t46hmA3Y2VUuo85IxdTeBGrvM8JF8TsqpvnQ
 XBl3idbA+WRenZBIydGcw5iMoIoOmEM2tkXwt+UdGHc+fcQlLh1ZdS1X+
 HZ470Ax08uUGJOZ+aZANvntsZYavzWX1xdU7NCElfYRhspEkkUu1RR1Of g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="375956455"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="375956455"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 03:27:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107699045"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107699045"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 03:27:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:27:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 03:27:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 03:27:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PNTnFPmpnRZXr8CzSJOtlZHKk04Sf3qfw10NPpLqBrOTjTCrdU2zYrlEdQGLiyaqePDwoli8Iox+38+qpPLpyY5fe5Rqh+RY8iuyhQMWwms1C5oy99GI+/VAIM0bHlSVvfSa5ETjxqKw92dkDexvVUMxfPFJ13YCSnZsy97Zfrf0HXYsE7HWUdBD6Pg4lJ6ZUIeWb+GRPsEYwXedyhgiqjye+DTlvVIi/ovhcq1MK4BLVgg81e6JhNz05fSMOizWltpfXYXXYOFPTmt2YFOwi2eRwuymqwA1IPBfHrr83LBY9mslFcqYZWKWMt0HRU1zRNfWT6MkQPk9IIHYQhgn5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/6dOp/ZKeHDmry0MteZhiH2P4qBhrhHd7MntB9mIiMc=;
 b=MaWrQr1Pxqn0OqDI+44JBaMT2680nXsxNdPB4K4oMKVLkpjHmAnH+hqPN+pCtf7qjdS+jv9nyu0v62kdHhFyWDYAnylfuaahrD45GSjr9manpzcOF2VH5lpKdFS+yZlDDX17Cq3s2RFggyCbzNaoqo8sjMLYACKJqtt9toAV8cLp4oSL3bLZkcsMHYUV7cvkmS9Sb+g3umfr3Zi1dGR6w6OP6YwVBJylc2N2l0WgHa/mXUAZOWAD/xncTwwIb45jJzzV/7gbPJD2LOzABRM2kn8xwktGxvk/MTdD5F/+GykFS0zwqxPUBauoq9EM4ZeqRx4Ys1/dkBBXuqgCAtQ9dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 11:27:33 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 11:27:33 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 6/9] drm/i915: Move the min/max scanline sanity check into
 intel_vblank_evade()
Thread-Topic: [PATCH 6/9] drm/i915: Move the min/max scanline sanity check
 into intel_vblank_evade()
Thread-Index: AQHaLa6/qidpJGlMYkKLszKl9FEJc7CyE4yQ
Date: Wed, 20 Dec 2023 11:27:33 +0000
Message-ID: <CY5PR11MB6344EA5184271BE20555F3DBF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SJ0PR11MB5662:EE_
x-ms-office365-filtering-correlation-id: c2c33d38-5175-4f57-2dec-08dc014ea918
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1hGCnvdGFamcn5JKa6guc+xaMDR6cSnH6OfOE4rSwLg269gLENDM5mZtGu2FS4QPFGrfhNXaUMPRYVcRUlwS8shfjyIqkj5FtHhPr5q2WrixvVXDgo/zp+2bniMJQZyNDZ9W3nlfXVcBK6qmGTFg2iB9SoSLN2g/qKZovgJ4tImUECmChYC5M/FpKpZTiUGehJh/pMWWIhvlho04NElcfyMzK2SOC4uKRBjC7YeN7dITx5uo5ZCxDStZAQYck1bu2o4MVYRIafWBtc6xWnarbkU7FOGFfCcpTihLLG07TsLLFu0ceo1EN6SCEeI+zQJw2nod0prHeGmODcuqMMyQQzUX4Rlkg4spMqtsXtToQ/sMo5LZToFSMuDXqF2IYQMT5qVk99zo0jEMQ9ZDTD1H34g7qCVkKUu5VXcNTkP/dybVjuFqwhaPsh2MxkxPHjCGU/TT+xnnTEOSrWnObR5fqtXA213442tzayXqhaPy3vFXqFTQreLdYYhBaJceirMP2oRAp6FY0dWPgdlYkUg1z8ZCtCQJXm6i7SzQV9FCED+IKJcsJtmkVlJCVFGOVlPzBIS5DKpdEmm4TxGOUmvlpSKJmya9mefkWviBBZ+W5As/7isQ4rngybKLY5AT7+cQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(39860400002)(136003)(396003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(55016003)(6506007)(7696005)(66574015)(53546011)(9686003)(71200400001)(26005)(122000001)(82960400001)(38100700002)(38070700009)(33656002)(86362001)(8936002)(8676002)(110136005)(478600001)(41300700001)(5660300002)(83380400001)(2906002)(66556008)(52536014)(76116006)(66476007)(66446008)(316002)(66946007)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UnEwVWRJaTJDMWVIcXN5WmI5cjIvTVRZZU9uUjFXTGJmUFJRNG56dWx1dmph?=
 =?utf-8?B?aENqK0JMZk56MWhiWEhMUWV3RUlXb2tOdVFhOWJpaWRqb1JkaktoQzFwaVA1?=
 =?utf-8?B?WHJFUWpUVU1IcUt6MnFkbEtqQ3NGSDdGRFR3OEtYYWtZTk83QXc0S0MwMllU?=
 =?utf-8?B?dFR6T2xlZkxVcVo3TFRHbEdmWGdYUStGYnF0cjV5N1pUa3NmVzdtL29Yc0tw?=
 =?utf-8?B?Lys5M0tIL0lNVkp2WU0zaDNiZzZwdUk3ckxDUkVlNG9rTUlnL09CMHduN1RG?=
 =?utf-8?B?bjBXMnJkOHpNTGlvcXI0WEpMdk9NT2tvVkozWU9wSmFYWExKKzFDMWsvaEp4?=
 =?utf-8?B?MHVVSDhEMEJlUUo3cDNhQlpBUWpGK1NodTFaR3NqcTNPSUxGOUVrckZPaEQ0?=
 =?utf-8?B?YllXejZHZk5MeTMvWmpWTHA2Z1pqaSt2K3lwNFNyVDRYR1dqWVl3WUU0dWs3?=
 =?utf-8?B?NXNvYk1iNG8zRkNBbURrcHMveEpwTlkvcHY4ZzNXb3IvY1p3YUNIeEVLaWZn?=
 =?utf-8?B?aE81ZWJrTnFMRXpXN0Z3NTRuaVNGbnZrZnFZSFNFdHRhN3BMQlJoUS9wYXY2?=
 =?utf-8?B?MVZEdnNHeVQ5M0xDVkRqbGhKdUVrY0tpTmFFeVdXWTBTYXh2dVB2YmVlNm1F?=
 =?utf-8?B?SFgzRnR0bi84MUNpWWZodGI0T2pLbFlqZ3FNdStrQ283Mmp3MUMrdzh1NnRQ?=
 =?utf-8?B?SWNhMERocGU5Z3hkV3NSQlFKRWkzNFp2RE00c2xQZkFuNENBYklueGNWTjVi?=
 =?utf-8?B?MXBGQ09PNnVFWlpyWnhHS2JiS0tCRG9MYnlTZG5qRXUxZHBYay83Y1BBVm1H?=
 =?utf-8?B?eFpuSEg2RURRTS9CWmlLUXg1MHdyRjNKTDg3RDFZR2xURE1MUWZ2bXBwbEJP?=
 =?utf-8?B?STZPakY0MjBjd0xNTXJkNDA1Y2ZyVUYxQTg3TytXOXpjcGRTVHhhZlVCMnF2?=
 =?utf-8?B?RUhWU0NPdGZtM3B0d3IzZWhiNlJDdVhIQ1A4bjdaZ3RycG1wMTZMVUloVlZJ?=
 =?utf-8?B?V1dlckRpRm9mVlVlUWkwb2pZdEN3S3lJQUlSNG56a2J1YUszcUNmeFFSYkdS?=
 =?utf-8?B?NGszNldyZ2lrcjlZT3JkTllXdkF2R3U4aWVHMzNrajY3TEwrT0MzL1ZiRXpu?=
 =?utf-8?B?OXpvSjN0VEJkOGxPbG9VVlNkdE84d3VJN1BoMDdvU016ckFOZERrM2R2VUZ5?=
 =?utf-8?B?N3I5Nml5RGQrczhiZ01UQjhjRFJyU3JMZmR2ZHptOThNWEdIWUw3VXJUb0h5?=
 =?utf-8?B?NzF6M1ZzUjUyWUhPTFdrYzFqZkpNTHFIL1lDVmpIT3FKbXdGYWs4UjM5STJG?=
 =?utf-8?B?Q2ZZeER3b1J2M3huL1M3ZWE3UWZyb05ZYlFWbEFtSzlIclVWTkVrQU9WbWVt?=
 =?utf-8?B?NDM2TklUSWEzWTB5M3B2VWhoSE16OEV0TlkxcFR0c3VFcEo0a2FyT3dzbS9X?=
 =?utf-8?B?Ty95SUVxaXNrcldkWDloZnJEQlpjbE1SUHZWNnhGMVZEVHdaMXNMYmhsWjdK?=
 =?utf-8?B?b0M1MUoxNGE0WGEzQ05jQXphbEVoOWU4YXUycXp3ZjRKUldTNlByQ1EwZy95?=
 =?utf-8?B?TFFZcXpDV2JnT3MreU9QdHE2SEVBbXNpZmdxVFJ5N2QwcU8rb0F0aytEUTBG?=
 =?utf-8?B?cy82bzY1ZWFSWWNJZEdIQmZhUHRreDdUSUYrYXZOK0MvT0Uwd1k1SmZZZ3dh?=
 =?utf-8?B?aXpPd3o1ZkxiUVhacnZhRUtMeEFvdUJOdFdCRUFTV200aytUbDBYRXM5WnVv?=
 =?utf-8?B?b1V5WGdzdmNUNDhmek1nTnMyZ0kwVG1QS1lPbjBnU2tIaXRaUG1qNEUzaGcx?=
 =?utf-8?B?ZTQ5cnZhTEM0RFBlb2pOdUkxcFRjQjJERG51cGZUWUh5THlGNnFZNzFKeWVi?=
 =?utf-8?B?SU9lRTNqbWFGSEZuZkMwMFJLNVBiSk85Q3FML21HdmQvRmNlaExZdk5UU2FE?=
 =?utf-8?B?SkM4Qk5VaUZkNEhBQXVlSXZwTWpoYUNUQ25SSll3VWdhdDJoQ0RXZG4rS1Nt?=
 =?utf-8?B?K0tnSXhDU2pCVWZiY3IvbmcxVDVVZ04yaW52UUY3Vnl3QkFXeVB5endIM2dm?=
 =?utf-8?B?N3psaFdNVnREMExVZm03bVBNczVZbEFXeVpMd2NuY0xFQ1R3aG51YWppcnht?=
 =?utf-8?Q?lrJkvltU99WihAeYINO3fw4QJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c33d38-5175-4f57-2dec-08dc014ea918
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 11:27:33.5186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ul92Bp/1rYV4ctvOkzQq4Ovpi7EKq1iUOkmhyqXkx4eyjQjyvXkXoYPncGrMWLpowgSpTNx5k1+xyuyYxrbW8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5662
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTMsIDIwMjMgMzo1NSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0gg
Ni85XSBkcm0vaTkxNTogTW92ZSB0aGUgbWluL21heCBzY2FubGluZSBzYW5pdHkgY2hlY2sgaW50
bw0KPiBpbnRlbF92YmxhbmtfZXZhZGUoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRoZXJlIGlzbid0IHJlYWxseSBh
bnkgcmVhc29uIHRvIG1ha2UgdGhlIGNhbGxlciBzdWZmZXIgdGhyb3VnaCBjaGVja2luZyB0aGUg
dmJsYW5rDQo+IGV2YXNpb24gbWluL21heCBzY2FubGluZXMuIElmIHdlIHNvbWVob3cgZW5kZWQg
dXAgd2l0aCBib2d1cyB2YWx1ZXMgKHdoaWNoDQo+IHJlYWxseSBzaG91bGRuJ3QgaGFwcGVuKSB0
aGVuIGp1c3Qgc2tpcCB0aGUgYWN0dWFsIHZibGFuayBldmFzaW9uIGxvb3AgYnV0DQo+IG90aGVy
d2lzZSBwbG93IGFoZWFkIGFzIG5vcm1hbC4NCj4gDQo+IFRoZSBvbmx5ICJyZWFsIiBjaGFuZ2Ug
aXMgdGhhdCB3ZSBub3cgZ2V0K3B1dCBhIHZibGFuayByZWZlcmVuY2UgZXZlbiBpZiB0aGUNCj4g
bWluL21heCB2YWx1ZXMgYXJlIGJvZ3VzLCBwcmV2aW91c2x5IHdlIHNraXBwZWQgZGlyZWN0bHkg
dG8gdGhlIGVuZC4NCg0KTG9va3MgZmluZSB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmth
ciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgfCA1ICsrKy0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gaW5kZXggMjZhMDdiMjIxOWJmLi4x
MWE2YTRiMGEyNTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3J0Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3J0Yy5jDQo+IEBAIC01NDQsNiArNTQ0LDkgQEAgc3RhdGljIGludCBpbnRlbF92YmxhbmtfZXZh
ZGUoc3RydWN0DQo+IGludGVsX3ZibGFua19ldmFkZV9jdHggKmV2YWRlKQ0KPiAgCURFRklORV9X
QUlUKHdhaXQpOw0KPiAgCWludCBzY2FubGluZTsNCj4gDQo+ICsJaWYgKGV2YWRlLT5taW4gPD0g
MCB8fCBldmFkZS0+bWF4IDw9IDApDQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICAJZm9yICg7Oykg
ew0KPiAgCQkvKg0KPiAgCQkgKiBwcmVwYXJlX3RvX3dhaXQoKSBoYXMgYSBtZW1vcnkgYmFycmll
ciwgd2hpY2ggZ3VhcmFudGVlcw0KPiBAQCAtNjMzLDggKzYzNiw2IEBAIHZvaWQgaW50ZWxfcGlw
ZV91cGRhdGVfc3RhcnQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICAJ
CWludGVsX2NydGNfdmJsYW5rX3dvcmtfaW5pdChuZXdfY3J0Y19zdGF0ZSk7DQo+IA0KPiAgCWlu
dGVsX3ZibGFua19ldmFkZV9pbml0KG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgJmV2
YWRlKTsNCj4gLQlpZiAoZXZhZGUubWluIDw9IDAgfHwgZXZhZGUubWF4IDw9IDApDQo+IC0JCWdv
dG8gaXJxX2Rpc2FibGU7DQo+IA0KPiAgCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwg
ZHJtX2NydGNfdmJsYW5rX2dldCgmY3J0Yy0NCj4gPmJhc2UpKSkNCj4gIAkJZ290byBpcnFfZGlz
YWJsZTsNCj4gLS0NCj4gMi40MS4wDQoNCg==
