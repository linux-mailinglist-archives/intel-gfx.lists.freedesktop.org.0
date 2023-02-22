Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 051E369FAAE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 19:02:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A29910E1C5;
	Wed, 22 Feb 2023 18:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F2A610E1C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 18:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677088935; x=1708624935;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NLL5xqcts3q3nF6rWf/wqk1fSpaSR7hca6HJ1OYJAE0=;
 b=S0/FTZci+BVVmWheGlsDU9N/QV1pgDWHp4M1BIxwoiM2GWTMIgVNTpHn
 uFOhoEq+RbKzHUikpYAt5IxbVXxZOmTAGHy9c7xCSr/SVtF2xrl9RT9mM
 U2a56eJspv5LV9TusNczFLvxZ8lGdlrxr3qsXdL48++KtF/cP/rM7QLYy
 IUWk0Zqj0So63aHluAk5EcqMFXoUBkQVx4huAamTd4X9l2i7/pain9z3g
 22Gzeb3adxJLLBmbjCoNfGaISl9zwL0GL2yoqRqSPaCci0eczycLgLtCu
 VDuAy0o76AbDhMOkYOVXiFktS4bO3ZWqcMn8j6hrBUJb33esUGtQEhMiG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="321137663"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="321137663"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 10:01:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="672157790"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="672157790"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 22 Feb 2023 10:01:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 10:01:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 10:01:55 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 10:01:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c8H6LAoJZ5+QoERb+xvRLJGhM/XdOSJK4Y/bjstAYG7SDURj247hg4ysnOviaGzw48rK7fbh2XKGRfye7dM6GTE/kzcii2PsUQrmQv4UrjL9kd9saOgiTbCb3nD1GRPkPqNt8K59N3prBLxOPqrRv90s3uYT4fIEVg0zM8R+KS1yC0fOa7IvpBCwOqbb1jL1YNM/LoiNRn4I2oFqX+jRQE8HIToYjbbhAIZNF5NSStempmN3MP4mN3mWhac8Ea+nMgy2v90cN8PuUSWr+dMpRyf6/Z63hs45Lt1XQJ4Do2psi0p+Z0cOeI9U8xEWIxIKckYqPdawY+KLUvTIhyVtAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NLL5xqcts3q3nF6rWf/wqk1fSpaSR7hca6HJ1OYJAE0=;
 b=cOBWcJEhgmLWtPnJeC84xOdStMr+KveOK9O6RCIj0kiS72nge6+x9y9PQZrZxGeWH9Ysd0WocqyYSaRakHdOFA/kooDuIsftRw0YKkDr8l7+ugghYwNVTW41TL3B6Yc6f0+y1NdLlrhygQ7lmjYcqRtsVvp/ywA/O6AjazzU4fur8qSVc4aOC1CArUjVCDkzUoXZFNz7tMZS2tno61Ifxc5NKNbTr7SR1zvy1VEHKc77gAFsXylsmHbD5BeJ5yZHE0R1RCkeKxU07UnQzCpS9E4/PtPXDsbl4aAe10Ivlr6CRuh4a53UuRgodbDxRwVEFOGbnaliEUMyucQ0OZMtog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB6673.namprd11.prod.outlook.com (2603:10b6:510:1ab::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Wed, 22 Feb
 2023 18:01:52 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%4]) with mapi id 15.20.6134.019; Wed, 22 Feb 2023
 18:01:52 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Drop useless
 intel_dp_has_audio() argument
Thread-Index: AQHZRT6CH7Pet399n0ilK8KhIVGsQ67bRMLg
Date: Wed, 22 Feb 2023 18:01:52 +0000
Message-ID: <DM4PR11MB63609104DFCE7B18462D2D5EF4AA9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
 <20230220151731.6852-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230220151731.6852-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB6673:EE_
x-ms-office365-filtering-correlation-id: 09a4987b-05bc-4831-f68e-08db14fee084
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DlMYhSNMzzvd7gfd8OOLtdHk8Mq5jbmnYTAlPtOefpNdwdzJrNcUVPeQcS8sypjeTgYTeJsdjgyJY4WMvfWl55KSQqzxPDj5FU/uq5ZCajXzsiaymGUhTEveT2cpnc8PR78tSoRi5sDulaV3Csx/lwaqp9Gno6EjCjnL0KcJzNkCM6YN14R2ebySSchsyq9bYeiGyCk/E2TqIilC1tD8qr52DpddOAYsgFK4dL6hQZJYCgUH6Nff+n0PzX+o4bcNegT8gu7YKQVsycoP6pGN2X0VjtkgPvNjIDx4evcJ5k0kjxJ/QFhrVZn6Nt6YPXkP9kJEHp7E0jE27jnH0p4Z4nkX2VEWTSGIAvr0eGUTElGEHh6SCWVyPZUID5Cqh4/ezcMj4XRoBadNKj6PEDuFPSmYMO/r5uafWm7Z4mcwMM9dNEV4q4BBcVowzvtmnT9kxZAOjD6Usg3hdl1Tx0jRFkRRj19JBzdaXfRs4f0ONqsMw5dPoXILGr6bFoKG8QWjS8HHtRolh1WjVT4Hu8U4PjR1xCZhNyGdtydTIIUlk4Oo1TQG7JESl8pu8s73Oyp/Ln5/xQDnffHqVs9+uoNmZs9f6nwMe3UWVYinbBBkpl2PR+SsCa3u/NDzq5Zzgpq+IMAKrTpbsRwBUJ7RAyAgDo18UXbmtZKhQkayBu3P4ewFiPkL9kanOeOl/JhMw0Rq6Iycx6ctoy3l50NfR+Fv1g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199018)(110136005)(71200400001)(186003)(9686003)(6506007)(55016003)(7696005)(26005)(478600001)(53546011)(38070700005)(2906002)(52536014)(8936002)(38100700002)(82960400001)(316002)(66556008)(5660300002)(66446008)(41300700001)(66476007)(8676002)(66946007)(122000001)(76116006)(64756008)(83380400001)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFpiSU43MlQ2UGFpUjlCYStldmlCWVBDdUFUV0h6KzBrUkF5aGpZR1MwaWR1?=
 =?utf-8?B?cWNwV21BMG4xU2ZtZmtLMXd4anVWdmtQN1Rqdjc2SjlXUkMyOU1zcjQ0Z0JC?=
 =?utf-8?B?V080UUllYmk5dWtndkpuMEFxZlZLTER1VnRscVFHNUVFZnlkUG5DZThRbGQy?=
 =?utf-8?B?NkNqdmc2WVBmU0hMWDRWUzdwVXBtQ3hYTHFjZHN0WHM5SmtFaTUvUTJ2SkUx?=
 =?utf-8?B?cUNoMzJSaVFPQjhlUnEwb2tlM056NkZJMWwxaUlhRkYreVkwUitvNXFCazlK?=
 =?utf-8?B?REFjdFBUa1RzZjhEV2ZMUXZ2OVRBZGRuTVpMYlRDNzJYZjkrSmVTNERieXRo?=
 =?utf-8?B?L1IwSjU5WFVKU0RCMWdzZGF1KzF4NDUrR2MxWFl5eTNKb1hFSy9uenZCYzQy?=
 =?utf-8?B?OFFSN3BzSkgwTFk5TC83a0lqRmlDdGs5b1J3UUw2UXY4bnNhK2JVL2JkSTVL?=
 =?utf-8?B?WTVxUWVkWlRhMEppc2dKeC82bktYVThwdDZzb283OHlXdTBDRGJtSStScEEr?=
 =?utf-8?B?dFJBNmdGdWpoNVlxSFdyUG9Rc2R5cTVuakwxSE9rY1pqUlJ4MWMySElhQzFl?=
 =?utf-8?B?a0E5ZTFjb3UvVHJSQU8rOUxFc2JVVUMwcnpheDZxdU00bm12WWY0T2ZFTW9L?=
 =?utf-8?B?Ni9mRk5ZM09hVVNHMVpINkVQRVFXVXZ5RUpyTzlucGxncEZWQjg2ODBFcy9X?=
 =?utf-8?B?OWhHRExIeElNTVZ4WmNDekErSktYUFQ0dmUxYWdJUW44NnFlRXllbjl5VkFq?=
 =?utf-8?B?YnNVb1FFUmMwbHA1ZHZlOW1yZm9TRjlrWnN2aXJsaEFLVzZUQmsrUGxQQWdY?=
 =?utf-8?B?Sk5iekwvM2E2anlvM0sxMzVyZVZ5c2xibFRTa1JOYjBtZjVWU09VeW9EdkZn?=
 =?utf-8?B?eFRQbGQyWFkwdWI0cnZWZis3UzgzQStQUzZyWS9DWEJRbjZSdGt6Y3VKdGhi?=
 =?utf-8?B?NXRUaFU1eVAyU3hVNUs5SWtDRUM1YURCelZ0Z3FRR3dhcUlJNk1jcHI3RGpK?=
 =?utf-8?B?NEprbGcxS3FuUmwybmVVUEQzOXFrMHVYcU1VbEpOK0Y5WGw5VG8rUjgvVXB4?=
 =?utf-8?B?VkRNVGl2YmFTVEdVenlVeGdVMlJxNWFOTnpqdGNNY2dkejFKcytLYUgycXpD?=
 =?utf-8?B?Y3VndTI4K2I2MWhFaXFxMVpaTlF5YlpNek1rQU1RRWtmU1RJWmZxMDNNNUVx?=
 =?utf-8?B?MnJGVDFCR0RzdW5WZE1NQmpqNHRoNmhhb29IMnJ1Mlp1QkM2Rm1CbnBPNE1U?=
 =?utf-8?B?aEY5bnJQekZCYkIwVVhzclNEZGs5elZYb0V5a25nZi9XNktFakFqUENBSS91?=
 =?utf-8?B?Z0NKS3VOWDdWek1iZHdIdEhVNmhKcEN2Y2VjaFkwbW9oTk5wNGd4d2E2VnZ4?=
 =?utf-8?B?TXIxaEgzNks2S1RmL2xBbmtoUUJFelYzZ25DYmwwa1NlQmJMRVUrVFNDTGRL?=
 =?utf-8?B?Y3FJMkt3RU9YSHFRM0VqVno5SFRRNDJQdXdCeU5LendGYTROSjNPeVNYbG5w?=
 =?utf-8?B?NWpDS2NyOEpiS1ppbjZucldrZS9nUFBYRGNHOEszYnVSckREdVg1aDVJTDB0?=
 =?utf-8?B?cmovVFdZMGlyNVdLUkFwT1QrYVE4RWhacTFYRnFlUlVSWlVaZWJhc05OSEtu?=
 =?utf-8?B?Zmd2bjEyVHFWQ2duWUlEQnJNUlFyZGJHcWhYWUtPQkdPcVRMVXNhK2xOYXNu?=
 =?utf-8?B?NGRvVWZYVGV1VE5RSCs3U2IwcEt3SnhOVmxadHQvYkRMekdjVHhQWnRuVVJW?=
 =?utf-8?B?N3d2cjZkUlNjREZPSGRzWFVaUUxvcDlaUkVUK0p6Y25vWGRxd0VJOFhiVVp0?=
 =?utf-8?B?WVZZZzV6RXE2TmRaY3dXbUxPbS9idmZtSlRXVnhkcHFtYi9FS1NtYnhiOHlH?=
 =?utf-8?B?MFVPL2licHEzMGlDVzA2Z3BIcVhKUVpmQ0pWWEpyR1MvcnNjcFV3amJ4ZFAx?=
 =?utf-8?B?cmpPaDZqakoramNoUGNpOVZWWWtIcTNkWW4zbGY5QmNoRmZBRDZsMHk2elUr?=
 =?utf-8?B?TDliL0ZKMHNaaE83ZzZ5Y1hRME02QlFuTmo1Z05SeHcvUVJ6N200SWczREtl?=
 =?utf-8?B?ZUhBeG5KenRJQTRaVENrYU9aTU4xWXBxY25ZZlFFb1ByRWhkaDdlREtwOXdR?=
 =?utf-8?Q?mAWolG5cpNjliB56ZZxbUL8/p?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a4987b-05bc-4831-f68e-08db14fee084
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2023 18:01:52.3491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tgl4OnFo8kXl9hmVg7+lHKWK9OmQLebdfhWKC2aY83NYP0af+/Q9akW1C8xKQPtP/QWnPgGUEkv37n/0zr3XOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6673
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Drop useless
 intel_dp_has_audio() argument
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgRmVicnVhcnkgMjAsIDIwMjMgODo0OCBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggMi8yXSBkcm0vaTkxNTogRHJvcCB1c2VsZXNzIGludGVsX2RwX2hhc19hdWRpbygpDQo+
IGFyZ3VtZW50DQoNCkFwcGVuZCBkaXNwbGF5LCBlbHNlIGFsbCBsb29rcyBnb29kLg0KUmV2aWV3
ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IGludGVs
X2RwX2hhc19hdWRpbygpIGhhcyBubyBuZWVkIGZvciB0aGUgY3J0Y19zdGF0ZSwgc28gZG9uJ3Qg
cGFzcyBpdCBpbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIHwgNSArKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gaW5kZXggYjc3YmQ0NTY1ODY0Li5kMjVhOTMyNThmOGIgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTIwMDMsNyAr
MjAwMyw2IEBAIGludGVsX2RwX2RycnNfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2Nvbm5l
Y3Rvcg0KPiAqY29ubmVjdG9yLCAgfQ0KPiANCj4gIHN0YXRpYyBib29sIGludGVsX2RwX2hhc19h
dWRpbyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gLQkJCSAgICAgICBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkJCSAgICAgICBjb25zdCBz
dHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOyBAQCAtMjA2
OSw3DQo+ICsyMDY4LDcgQEAgaW50ZWxfZHBfYXVkaW9fY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rv
ciA9IGNvbm5fc3RhdGUtPmNvbm5lY3RvcjsNCj4gDQo+ICAJcGlwZV9jb25maWctPnNkcF9zcGxp
dF9lbmFibGUgPQ0KPiAtCQlpbnRlbF9kcF9oYXNfYXVkaW8oZW5jb2RlciwgcGlwZV9jb25maWcs
IGNvbm5fc3RhdGUpICYmDQo+ICsJCWludGVsX2RwX2hhc19hdWRpbyhlbmNvZGVyLCBjb25uX3N0
YXRlKSAmJg0KPiAgCQlpbnRlbF9kcF9pc191aGJyKHBpcGVfY29uZmlnKTsNCj4gDQo+ICAJZHJt
X2RiZ19rbXMoJmk5MTUtPmRybSwgIltDT05ORUNUT1I6JWQ6JXNdIFNEUCBzcGxpdCBlbmFibGU6
ICVzXG4iLA0KPiBAQCAtMjA5Myw3ICsyMDkyLDcgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWco
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCXBpcGVfY29uZmlnLT5oYXNfcGNo
X2VuY29kZXIgPSB0cnVlOw0KPiANCj4gIAlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0NCj4gLQkJ
aW50ZWxfZHBfaGFzX2F1ZGlvKGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKSAmJg0K
PiArCQlpbnRlbF9kcF9oYXNfYXVkaW8oZW5jb2RlciwgY29ubl9zdGF0ZSkgJiYNCj4gIAkJaW50
ZWxfYXVkaW9fY29tcHV0ZV9jb25maWcoZW5jb2RlciwgcGlwZV9jb25maWcsIGNvbm5fc3RhdGUp
Ow0KPiANCj4gIAlmaXhlZF9tb2RlID0gaW50ZWxfcGFuZWxfZml4ZWRfbW9kZShjb25uZWN0b3Is
IGFkanVzdGVkX21vZGUpOw0KPiAtLQ0KPiAyLjM5LjINCg0K
