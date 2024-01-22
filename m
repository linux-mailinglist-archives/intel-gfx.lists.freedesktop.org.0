Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B15188366F5
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 16:09:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BA710F360;
	Mon, 22 Jan 2024 15:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26AFA10F360
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jan 2024 15:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705936169; x=1737472169;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bB1gRrtdZ0xdtluWt3rDMqVBggPM3d7Kj6HYyuI4Ueo=;
 b=XuGtNeVMEY0brzeT9YwgQVmndsHx3OofKfl3aaZhC1g7TibT5g3PIMvP
 Enmy7/0E360bNfMdv5exfYoJEEgXv3rZ8Y4I0gIY8PZqa1zIHdi0aoGzM
 jLSEHjWe/v+Jq09lSdviyDN0jf8d1in6RjZMtbDnYxeXOJAb3MxYTKuIt
 syOif2ISCY0Z6ZwG1N5MByRsTiwePGR6QvFiEcEB6pPgDtidRlBusF3m6
 JIU+yOD1EzvqF5WJup2mvfnMT9sNtYGpxRhBhuWcz3JS0IAhAHQNsC6JS
 fRVFQa36DTMrAVaik1hx4tDgPc/FB+cCc8YqmvbnC2gTaZAU7uNlslIKg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="1121427"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; 
   d="scan'208";a="1121427"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 07:09:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="908968883"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="908968883"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2024 07:09:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 07:09:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Jan 2024 07:09:26 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Jan 2024 07:09:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eeXtKggax1HK+ZV8EkAAAL7vNqySYOCsB/r00q2ib3sLKGBDXxL7L/2w52402etEeOjg4paQhoVt60/v8I/WTtYxRJzogf65MciZUdH+FOdk3uK/F4KuanZ6qEaabvGa04r3ITrzIzwpTU0xZC9j946bB50fzPJjhP0hVsDA2C3nR3i71wXwflMr8p31rnZApSGC2kMAFemLLaePHe47LVghU3der8DvFDGMzDpfl4E+Wxu/qQZnIimYmEfUlLKnuWue4JCyE5fkNh2bSRTgV4T8a3kTgHgX6VlqF06kV/K0ehhUs/9IQc4AECV4GO7Xx+4jcl1zNKl9DWz1Mf5ufQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bB1gRrtdZ0xdtluWt3rDMqVBggPM3d7Kj6HYyuI4Ueo=;
 b=T8dQhlS1p2dv71pM1wzCoHF+CwtMwrfa6knheyR9hvEf4G6mQD/96eieTBejgHr1EkBJprw6Gnae+UyPTbLie+WAnStKzdqlf49HCZEbd/sadopN4qLP5+Jn+Ea1choidl0mvsSn72heMcj5DhLxtZGxk2s2Fd+BS3nIwzlWpEYoUweyi0+5BUDEIKbHWVYxK6pr+NOZk3X6CUUhlTZW3MmoSuz4H49IwwN47ePYL/i1fZagDxFveBeCroxpV1hb0PRBAzTu+yyWm5hkWjRKqW27F9l1b8tiVKcd3krf1lEFRrCjOjINWZvwMxzeiVPkRu8fELL+vJfRJsEslJaECQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SJ0PR11MB6623.namprd11.prod.outlook.com (2603:10b6:a03:479::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Mon, 22 Jan
 2024 15:09:24 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7202.028; Mon, 22 Jan 2024
 15:09:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 09/16] drm/i915: Fix MTL initial plane readout
Thread-Topic: [PATCH v3 09/16] drm/i915: Fix MTL initial plane readout
Thread-Index: AQHaSFGrxE8UtFDO5kGtXglqiwQb17Dl+R0g
Date: Mon, 22 Jan 2024 15:09:23 +0000
Message-ID: <CY5PR11MB63443E9E00C573AE06925B52F4752@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20240116075636.6121-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SJ0PR11MB6623:EE_
x-ms-office365-filtering-correlation-id: 482d260d-d3e9-487a-9eee-08dc1b5c1ea9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: icTCxQ7/mN8Anz6VbrUC1atfBT0mdpqIM2OCz3/e1tyUFQr4fT8EpR+IfPdw0FBhKKK/ZKybw6EUoAVeHaefzAxa+LXHZsRO7uKGy98cgN/urJnqJX9fIPkBsWpkqyFlXqGWOsFjfcdzEbGxPgughVboybgSVS6uYYvcQyEjUpU5uaSxukvLhj867eMou9DRbC3I0d8UV57hxCpYeIdF4nMgVzFtJSQ+7Ee3mb8KJfhOj+oWU5BM8Ln4qb1viJXubLR+QWIgthWTBkkj1zayIkLhofDHDwGGY339kWmLo6JzrDS6bmE7vMfPCR74mCYFvOPjd3TDBwd5VUCC/EIH9DwdE/5ln0Q0r73dYxIx9qYO1oMFqhy6rchB5oFmMBgW3JMVHVCcjW6mlh09ktOZkdJ4bj4vHqkkxHlcb26cTLXou6pzr7MZzZSdU/boNv0ZY0bt6UUfNfMpOvPCsvgtTnfSH9v1KUG+UgiQNNgWIP6Ki+EKKHrccDiLTnrL96qr7Fv7ZJSceKiBF9C8gwMGtTqU+oL+c81TtxuRLIotira0UbzW/0S9MtTmfgrZZ747EnPPyvkr2Jl+1cIiSPNUtDpJnMe99CjJWG+p/GcH8WzGqiDKEjq5/vIpxgW2kg79
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(136003)(396003)(346002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(55016003)(41300700001)(8936002)(5660300002)(8676002)(2906002)(316002)(76116006)(110136005)(66946007)(64756008)(66476007)(66446008)(66556008)(478600001)(9686003)(53546011)(26005)(6506007)(7696005)(71200400001)(52536014)(83380400001)(33656002)(38100700002)(38070700009)(86362001)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QUNHeUVTRFpYT0o4RjFzaXd0a29ncTZZVC96OWZXYzNybnZobUZPcStKMExF?=
 =?utf-8?B?bythK3NZUm1VMEl1R3FBRTJvMjdmckdQN2F1TEZnZzVYcEJqclVPNkE2Q3dF?=
 =?utf-8?B?QWpHeXFmS2ZKRnNTZytkL3ROQnZ5TEgxbnpIYzFyNlFWeHBzUWhob0JvSnhW?=
 =?utf-8?B?clRZeDc1c0tZNUp2ZjM5U1o2anZ6aDFBUko4djRxOXFITFlBT2lCWFNOVE5Q?=
 =?utf-8?B?d0JVTGVOTmpITHVEWk5rQ21nVU5WajlQZGZzejY3cmJnUEJNSkRuanpDcDFp?=
 =?utf-8?B?eDZEODdkUkE0anl5MG1tL004S3AvUjhQalFCWisxSE9VVUU1S25jYVJDTlJ2?=
 =?utf-8?B?TnkzVHF1QjNwWkE0a1RhSktGWDNTRzhzOUY2MjY3Vm1za2VDYzJDVU1VN2ZH?=
 =?utf-8?B?NVBRVWtMTERJMG9zNGJnSThGM3orUnZVODBLU1NqYUdFNllvSGRGa2d1MTh1?=
 =?utf-8?B?YldkQVBjeGJlbzJRQXFFMVZyMnRQS2J6QU8xam1obFl6QXdCeXBQdU83Uk1s?=
 =?utf-8?B?T3BiMytmZVpNUjB3Y1dqaVF0bWxrV2E1VVV3N3pINitaUHhPZDI2QmNLamRF?=
 =?utf-8?B?VTM1bG9tdHpGMytnbGhjalphR2s3MkxwV282L3hsazY0WnljREhaTXNlY2l0?=
 =?utf-8?B?M3oyWjVOYVEzV0hrSzlsaDV6eEo3UkcwZlhyOVZRZEJHNktYcTZlOVoyWVpj?=
 =?utf-8?B?eWVPNFpJYktWRkRKcWZKbGZCUi9BRlg4UXdhQW9SQ2NnRDU4cWUwN1VkK2E4?=
 =?utf-8?B?bWt2UGlVRVlHMGdUSnRSSU1vb2d3Vjh6UmZUOTZDb2ZNODlKOFRPekFDRitO?=
 =?utf-8?B?YlhwS0N5clY2QWQ1SzlLaENXUklNZ3FwK2dwVEl0NUNuaVRQbUZvemFPREJX?=
 =?utf-8?B?OWZuVnZIZHZBTlNtL08zbm5IalNOOGNWOFYvaG1ybFl4bHlWZGhhSGhYWmdI?=
 =?utf-8?B?WW1qSW1jeFV1NFIvaitRREQ5emNrMnB4NDhSaU5tZ1NYYlZTU3ZaWW5KNmdU?=
 =?utf-8?B?ZFZMZkdXMys0dFZDNG1aTUFSMmtSL1R3NDBMV2dtOUhUdHh3Z0NaWlNJZUJz?=
 =?utf-8?B?OXh4OVZFQlNEN0F6cEhSUWZkUFdYcHJRbkFKMFR0VlA2cE1SeVpWMXIyd0ln?=
 =?utf-8?B?aWdoemIvcjNtM1NrUlVJMVZkZlBWalN5R3pxUUoxc3h2Vjd1SXIyVCs5a2xt?=
 =?utf-8?B?cTV5VWRxajc1YlRuVU0rQm1EbTlSekZCdWZTU3lqbEhtNGxJd295djMrQVNV?=
 =?utf-8?B?ZnorNVAwaFVyc2dFYjJrRjh5QjQ4YmN2OHFpTmlncUFDSzJnWnIrQkhFNC9R?=
 =?utf-8?B?ZFVSUXdmVXg1QTVHQXBRd0h6ZXNZVkZnbjQxL3REc2I5RGxSL0xFcmlvdnNx?=
 =?utf-8?B?TW1wVjh2eS9zM0krbTlvc00rNmM0NmVURzdvWVdDYlMwTVlLK1NqRC9YTTQz?=
 =?utf-8?B?MzdxaHR3WnNtbkdFYzV4ZUorSi9yNnBqMjVGM2Z2YUZLRHVQaHZEMUV1MEpt?=
 =?utf-8?B?MTM1aTlOOUxUdlAwdGRid0ZLaFA2OWJFRmlsRjFqZlVHaVV3b3VOSUJtb042?=
 =?utf-8?B?MTVla0lhVjdsWmhQTjg2QU93Y1hJN2F5Qk9rWllEY1dLR2o0ZHczaWpjd0w2?=
 =?utf-8?B?aFBLTlN5L215S0VnTUU0MTZhNG1KWEg2ZWFST3dpNkVXTzRmT3pUOGFDcGQ0?=
 =?utf-8?B?VUJmUk9FWklEYzBOVUMxbmhMd1BocXlheC8zL2c0bHUyYjFlK2xqZVRsNkRr?=
 =?utf-8?B?RFZGMWg1UlAwVHIvNUtlMUpNTFIrcDZWZnJIeFNlcXhnRENOQ0tMaG9sQU04?=
 =?utf-8?B?T1EycDRGbFQ5VUtJbzY4T2pmMnJrYU1DYWhaTFFmS3E5S0RpbkZTTzFQVmt5?=
 =?utf-8?B?V2haU0phOXNVazRVMlJxV01zZDArakpML0IvakxVdDNtMmtwWnJwdGJLWkEz?=
 =?utf-8?B?MjVqVDJlNmJDNjRkeEZyUlFYa0VoSGpIQkxFYmtzSXNCZjFYV3RvZlNDTmZp?=
 =?utf-8?B?N0hpVXdBU29MYzRHelZhMlRyaTdGd1QrUnFGdXJDN2x1ZFdzcXpITS9rNnIy?=
 =?utf-8?B?ZE04NEtOcGtKT3ZyUE80WFZKZGNHeFFyL1VMU1RBZkFNeGVqRWY3VDI5ZVF6?=
 =?utf-8?Q?dzcnBKU6h1Q1/jzWvI6wo/ogm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 482d260d-d3e9-487a-9eee-08dc1b5c1ea9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2024 15:09:23.9885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zSZglkAZg2uN5gpR5w1U/ymB+6BJk0ksGRKVpZmVyzFW/pNNTSFrvT62SuL+d8pz2yqUAWGZyIOWLE6lT27g3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6623
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
MDkvMTZdIGRybS9pOTE1OiBGaXggTVRMIGluaXRpYWwgcGxhbmUgcmVhZG91dA0KPiANCj4gRnJv
bTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+
IE1UTCBzdG9sZW4gbWVtb3J5IGxvb2tzIG1vcmUgbGlrZSBsb2NhbCBtZW1vcnksIHNvIHVzZSB0
aGUgKG5vdyBmaXhlZCkgbG1lbQ0KPiBwYXRoIHdoZW4gZG9pbmcgdGhlIGluaXRpYWwgcGxhbmUg
cmVhZG91dC4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IENjOiBQYXogWmNoYXJ5YSA8cGF6ekBjaHJvbWl1
bS5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxh
bmVfaW5pdGlhbC5jICAgIHwgMjUgKysrKysrKysrKysrKy0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lX2luaXRpYWwuYw0KPiBpbmRl
eCBkYjU5NGNjZjAzMjMuLmM3MmQ0Y2FjZjYzMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmMNCj4gQEAgLTU5LDcgKzU5
LDcgQEAgaW5pdGlhbF9wbGFuZV92bWEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+
ICAJCXJldHVybiBOVUxMOw0KPiANCj4gIAliYXNlID0gcm91bmRfZG93bihwbGFuZV9jb25maWct
PmJhc2UsIEk5MTVfR1RUX01JTl9BTElHTk1FTlQpOw0KPiAtCWlmIChJU19ER0ZYKGk5MTUpKSB7
DQo+ICsJaWYgKElTX0RHRlgoaTkxNSkgfHwgSEFTX0xNRU1CQVJfU01FTV9TVE9MRU4oaTkxNSkp
IHsNCj4gIAkJZ2VuOF9wdGVfdCBfX2lvbWVtICpndGUgPSB0b19ndChpOTE1KS0+Z2d0dC0+Z3Nt
Ow0KPiAgCQlnZW44X3B0ZV90IHB0ZTsNCj4gDQo+IEBAIC03MywxMSArNzMsMjAgQEAgaW5pdGlh
bF9wbGFuZV92bWEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJCX0NCj4gDQo+
ICAJCXBoeXNfYmFzZSA9IHB0ZSAmIEdFTjEyX0dHVFRfUFRFX0FERFJfTUFTSzsNCj4gLQkJbWVt
ID0gaTkxNS0+bW0ucmVnaW9uc1tJTlRFTF9SRUdJT05fTE1FTV8wXTsNCj4gKw0KPiArCQlpZiAo
SVNfREdGWChpOTE1KSkNCj4gKwkJCW1lbSA9IGk5MTUtPm1tLnJlZ2lvbnNbSU5URUxfUkVHSU9O
X0xNRU1fMF07DQo+ICsJCWVsc2UNCj4gKwkJCW1lbSA9IGk5MTUtPm1tLnN0b2xlbl9yZWdpb247
DQo+ICsJCWlmICghbWVtKSB7DQo+ICsJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiArCQkJ
CSAgICAiSW5pdGlhbCBwbGFuZSBtZW1vcnkgcmVnaW9uIG5vdA0KPiBpbml0aWFsaXplZFxuIik7
DQo+ICsJCQlyZXR1cm4gTlVMTDsNCj4gKwkJfQ0KPiANCj4gIAkJLyoNCj4gLQkJICogV2UgZG9u
J3QgY3VycmVudGx5IGV4cGVjdCB0aGlzIHRvIGV2ZXIgYmUgcGxhY2VkIGluIHRoZQ0KPiAtCQkg
KiBzdG9sZW4gcG9ydGlvbi4NCj4gKwkJICogT24gbG1lbSB3ZSBkb24ndCBjdXJyZW50bHkgZXhw
ZWN0IHRoaXMgdG8NCj4gKwkJICogZXZlciBiZSBwbGFjZWQgaW4gdGhlIHN0b2xlbiBwb3J0aW9u
Lg0KPiAgCQkgKi8NCj4gIAkJaWYgKHBoeXNfYmFzZSA8IG1lbS0+cmVnaW9uLnN0YXJ0IHx8IHBo
eXNfYmFzZSA+IG1lbS0NCj4gPnJlZ2lvbi5lbmQpIHsNCj4gIAkJCWRybV9lcnIoJmk5MTUtPmRy
bSwNCj4gQEAgLTk0LDExICsxMDMsMTMgQEAgaW5pdGlhbF9wbGFuZV92bWEoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJfSBlbHNlIHsNCj4gIAkJcGh5c19iYXNlID0gYmFzZTsN
Cj4gIAkJbWVtID0gaTkxNS0+bW0uc3RvbGVuX3JlZ2lvbjsNCj4gKwkJaWYgKCFtZW0pIHsNCj4g
KwkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ICsJCQkJICAgICJJbml0aWFsIHBsYW5lIG1l
bW9yeSByZWdpb24gbm90DQo+IGluaXRpYWxpemVkXG4iKTsNCj4gKwkJCXJldHVybiBOVUxMOw0K
PiArCQl9DQo+ICAJfQ0KPiANCj4gLQlpZiAoIW1lbSkNCj4gLQkJcmV0dXJuIE5VTEw7DQo+IC0N
Cj4gIAlzaXplID0gcm91bmRfdXAocGxhbmVfY29uZmlnLT5iYXNlICsgcGxhbmVfY29uZmlnLT5z
aXplLA0KPiAgCQkJbWVtLT5taW5fcGFnZV9zaXplKTsNCj4gIAlzaXplIC09IGJhc2U7DQo+IC0t
DQo+IDIuNDEuMA0KDQo=
