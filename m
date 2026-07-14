Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kZjTIDsXVmofzAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 13:02:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8619753AD2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 13:02:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UORVqC24;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2239D10EA3C;
	Tue, 14 Jul 2026 11:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABACD10EAC9;
 Tue, 14 Jul 2026 11:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784026936; x=1815562936;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZKv7pB9UsElD9KJe6duo/EzsGembMztI6A9XESg6b9I=;
 b=UORVqC24QNURhF1yZ5zrS3V2zwpkZfyO6TSU7mgIGb/xPpu9CzMfa4Fp
 rzq+d92Yx7o9iEBhkxqZfMPZbPNRfiHNW/tmSCDWzqb/0DUgGQpkFexWJ
 OdwITW9yq/KAeALxcbONJctkxmE8aegXH6X9Vvsv93FJ7V2H2hto9ylf0
 sBjvdV+lQsU14VC6Q9Csnr0/+xKh0AyrMXuBUAbBS/7Lf+YkhLE8c9G6E
 JcwWqHAT/YucLCbztu7k0kxqZy0WfCuSnhModpasH9BqiSRlkMPPU9xma
 gy+s5RVxyblUHlLzN6AexUHhb9tGNxKyorlAcpyNSNdDg0NxqIiOy4H8A w==;
X-CSE-ConnectionGUID: RluqgbqJSJyBUP5Alucuvw==
X-CSE-MsgGUID: PJX1d0kbTqS+GK/l2CuXng==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84525943"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="84525943"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 04:02:15 -0700
X-CSE-ConnectionGUID: XD6zxxgtSoCT/TsJk/Fyog==
X-CSE-MsgGUID: 3b1oc+zYSnObGaNSLzU7uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="254079436"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 04:02:16 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 04:02:14 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 04:02:14 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.61)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 04:02:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KQ5JInJajUpfpYeCsEMdpRmTjKB46DoUOT+HiMhGqKef+os9HJ8H+yKNdxkJRQqbW7Z+4BIgJK2ENWtgrdXUESWKjX3qT55frPGcKYkid1CV6wE3YjrPUEGmIRYS6Zgay1Cu5NzBaijgBBy/29FIxT1ioX7VirPFFW/uCbzRm6Q8Lv0Klr3zQ+9ImuwVTjoAYYmktw6tlHJAjDf+GAvs2RoczUO869ybXs05zl2wIz6UuKduvfJ6Y95B6flESMKNKcr8nOSlnbjLV9my7A7812CLahFBAV2BOdBKFsG2IsxIUZNWMZpKqfXTSnFFo81EiFzTWNaYCA4MwaXoq8iO2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rc2wkN6CPe/TANJ4xOsxZYbJDTWOfITxfKRo+HQr5QA=;
 b=CIXKtP9PYlG8NkZbBTZrAFZpywm5n/h4boUR48lU5PjjB59vwpc0bcFre9aJkTVojpjqqJEoZc50VRPf9KosmHXLkUPTXzsNiGYkUjaAB6j1YJ0IHkiSElAvwO4Yx12zNe1ezk+0qFg0tBE7g4njeG59XJXxUJRMVydBjVCLVs/nTGB+72f8BtZbIarso7531pPGFyWMWk7fgY8AIp0Xaxg+W2hEDFs906CBBiY6O1ocWZTe5VEQLBu1juJa46o4k75EcZAiYbc427NOCgdiKEd9kgQ2LBP7cU28C4tSpuT1/A80h3DClyjRuESSxT/z8NwCyZlQzktHwmy6NIxp2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4804.namprd11.prod.outlook.com (2603:10b6:303:6f::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.223.10; Tue, 14 Jul 2026 11:02:05 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.014; Tue, 14 Jul 2026
 11:02:05 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: John Harrison <John.Harrison@Igalia.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "kernel-dev@igalia.com" <kernel-dev@igalia.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Subject: RE: [PATCH v2] drm/i915/display: Fix too few bits in transcoder mask
 variables
Thread-Topic: [PATCH v2] drm/i915/display: Fix too few bits in transcoder mask
 variables
Thread-Index: AQHdEyFj3pSUZx7U5EyqUIazTdabQrZs2bqw
Date: Tue, 14 Jul 2026 11:02:04 +0000
Message-ID: <DM4PR11MB63600E599CB8DD515C93430BF4F92@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260713234138.3861243-1-John.Harrison@Igalia.com>
In-Reply-To: <20260713234138.3861243-1-John.Harrison@Igalia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4804:EE_
x-ms-office365-filtering-correlation-id: cf01aa98-9d83-48b6-cbdb-08dee197571d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|6133799003|56012099006|11063799006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: a2BxSbCtufABGxp4yxMAFCgum55y362WE8dCYnhTNI4WrfxEUmqO8hFfB5ExUdR6YY9PalZri84VU4LSH9JdmBeG2pOy3sqIS1Nr7VwSQ9Q3NC1AayvOwdHpnsd5vstPq/hc2ogc7Y+B70+dbQ+k5SzLZXgmTeTpqHwiKZneNh60Ryvis0h05RRL/kM7hIT22aWXWAhkxcEDK0yAuyQ9NbZJFQEvYnuXr9itkvnqtWO6dg1ReLinNJAThpDG+s1gahGTCBfyFn3wZ61REi01SIxdy1J0byKqQDkeiEBHEaIM6QSZ4lT2QhNp1T5I5bedJfc88bL1CP94FWIpZR4ca5VoeyILwDQtLpzw0rnmzx73t5nk9t2YQv06AXlbdYNmNuZqkwkGJ5IG0luPAnHkiruJqEptgPiZkM5c5qjq9u1gKgAeDm/CXl8IlTAntXeDeQui0cyhZRuiaIUi6oYDNmp1VBMJR95lYalTO7CO1AA+L34sLFKLSfLaOocy03NfKKFplHRINksmwPyXqoIgOuvYyXY4EsFiDhi4bZEXgjCnte3Bdu1QLvVI/diHp4mMOLPcsCtSOmsSmBrD0w/zIjnHUbDhrtPttxbL3BckJ6XolL/6Uec23EHkDRH2k5abPGXrHzG6u+e7mEYc9vcjTYknVoAvgpIjB55Vgx7vmhE8y2qY00PMIToyNp++aVhrN8K2ziV3p4/nv0MIyLzGRM8/u3FOIPbWMCaznBdJvKY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(6133799003)(56012099006)(11063799006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?adNBXbbjlEdm2512r0a9hZ7hfh8bBB27qMnebRgrxHpUXCbdhEbOJoEV9mC2?=
 =?us-ascii?Q?Izl9u6WIh7VbpHkvGxW3GFV/L70vK+OdKPaTEemjX1K3DMfALgaTLHbpUyHX?=
 =?us-ascii?Q?UyNJPrLt3rhGIrU7pCyM813TVeaA+TyCDzJSDe5+/VYVeRCE0bX+vt3D35c4?=
 =?us-ascii?Q?34OWd5zWjzrKc6e6dGLDmIaajBjl7BCnAnKMYq/mFu+2T7Y6exJX4ELfAAJv?=
 =?us-ascii?Q?626xJKNwTOgghybAWQDC0aafqMBobesny6aOVPgdVZkS1E/HXXdqFh4SPYqk?=
 =?us-ascii?Q?DPMwyLxYGI4FmlSFdFyjz5zUxH9K+JWw653g1QYyDheg+LupFWG60+FEbdQa?=
 =?us-ascii?Q?6EtO0vjoDU9OtbaG0HrAy6BxdlzxRj7mqYhB+TfMoEPYjLNI7trHHrJag0Zs?=
 =?us-ascii?Q?mPxr9Vg1o81FDlEfgK0i41ES/xPspJJx0s2UulGr5Ccblcy3NKVZA02/NhTq?=
 =?us-ascii?Q?NLnqLWFEpbcHj075WhTMa6PiZw46VaOS9UpmS0BKXubOn0Ei9MH3HS1+bUmw?=
 =?us-ascii?Q?X00XEi6Z8Y9Rq6IaZp9ywuNmVSILz8Toig2tQjkD/5PSNlmlRxf1nAcpd3ih?=
 =?us-ascii?Q?ygQRIYGmJwpDPDAoPgQrROdqLEstrKPqBqkFO3zwEAwgrwQ9qpm+gh3WT7dz?=
 =?us-ascii?Q?pKG4FnndDhuQVewZ0bvtCpnIpuTC5mZ7FUXex3JdjKtfNzsLQwVfnhKWO2gF?=
 =?us-ascii?Q?KpLtxZGzmh5AmzYaBO+DSvn/u0VZ48kLNXnjeUNOV3v7zgOTKYmRBYcaAsr3?=
 =?us-ascii?Q?8GEFUAFaoCroSWwkYnZHiPhOUSpVYNRWcyZjZVtqVLIA62kd6elnHLnfHqaD?=
 =?us-ascii?Q?Ju6qsQ2oexJN9Ru2RLdbx7RPKDKxTkly+tjDvm/GkLDOT7JDbaKPz4GYkzw1?=
 =?us-ascii?Q?Te8mO4T0pCfRuabUZQQHSAkvMtkaf8U8hNnf2oTASv2P57UfS2czMoDlJKCo?=
 =?us-ascii?Q?+Uted0fMl1kI3VlkQLZZS1VNdmiZ0dFP8JlNuyUgIZcRwbuf+M32DMnfZ00S?=
 =?us-ascii?Q?8hXrSy74B8AGxT3/ab3Z33t4sh3BkL5NQcfvyQGgn6jymx7GFMeui05PjPoJ?=
 =?us-ascii?Q?i9JWI2ad/dcO8uFPZmrI4bkKOqXlCUBUa/MP7Jcas89dE11t+oDlYh075t4X?=
 =?us-ascii?Q?FAs4+RPYpdecKjvDT11+Ozob3TWyfX52i6hx2qaRrKQ2RElHoDfyN6AgYPI1?=
 =?us-ascii?Q?w/ZNY88TNBmG4OgWiSh7bzbEmfo2gGOUcI8du5qJ2kh2AYv18y/72qG/OCyp?=
 =?us-ascii?Q?ilJ8fLGV+lPsjoLQ81bVjkfIeE27urZ75DIx/QfcCHd1xWuQHjNBoEU+ueY3?=
 =?us-ascii?Q?MIw5AB8F964hAiwxxrCTHdHJqfEweYi0Gsf0gSq+WUf7JELZ9c9/H/Mu+vou?=
 =?us-ascii?Q?/pYIeFvERfbjfx49EkJPwhtf9GqriExP1hNn4tkZ2IgX9vtHNJYtSN4z7zzw?=
 =?us-ascii?Q?6cEe5wRxSUl1Xetqqso+hK+wugvqNLpLFo9cm3abtyxe3PHgSD4WxMxcT6eU?=
 =?us-ascii?Q?T5jh0v8V5DwTCqnQ5sgk6hRci80A5voqbDbg0hcCqTILxiRhT5MuEchj9m6g?=
 =?us-ascii?Q?rz+xxOCHdLZzV+jglSlikSs5lHgYvT1xk9NK255JwouN1Bg1ohT/Qcm6+f75?=
 =?us-ascii?Q?4IISHzWgzRvozuiHHFpmeHnnoE8eWq0gR1f+Ka3Syy1kmx/I1Cr6qiqS9lUr?=
 =?us-ascii?Q?sNMFtb52KMQJPbIckI0b7SEohx08hTz5g8f6I5lc8F3EkuWE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qpW6UUpZRf/QEgB7VIAwWxyATTfH1W2TYa7U+RDbVsJmv2WjCLo1GMva0xpe3bXYpTAJqsDlo/eyghFdTo7Am74gCM1G43AmBHfXGs8/YgLn854+SrbzcmcATMoBK6WTOMBjzqbYgIQ8i4UA+XU2qKiE0xbZk4W8+6ZaAA0F0qws0ttKrRJnhwN6xoHvwewVMshEgjIcAbMUx4gbrBAy80SYFjsz82JHhS57e2A4XwMfVgiKlLsNCU2FnKvam+KypaCy0yPOndp2g6MLL99kUHr6bI+0YT0ddsMaoo8UwgSv6H4zMR8+Krwhht5mak4bZimRF18+dgfKI37H5UvGqQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf01aa98-9d83-48b6-cbdb-08dee197571d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 11:02:05.0282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9safi7MxfNH/TAast7Z9sqaUoy8XhQl/RIJe3cF7LGiXzWEWc0pORGltd0K3QpruocwZrnCvFo5NiWsVW6q0Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4804
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,igalia.com:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B8619753AD2



> -----Original Message-----
> From: John Harrison <John.Harrison@Igalia.com>
> Sent: Tuesday, July 14, 2026 5:12 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: kernel-dev@igalia.com; Shankar, Uma <uma.shankar@intel.com>; Manna,
> Animesh <animesh.manna@intel.com>; Jani Nikula <jani.nikula@linux.intel.c=
om>;
> Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: [PATCH v2] drm/i915/display: Fix too few bits in transcoder mask
> variables
>=20
> New transcoder enum values (for CMTG) were recently added which pushed th=
e
> maximum transcoder mask beyond 8bits. The patch in question updated the i=
nfo
> structure's u8 to u16 but not any of the functions that process transcode=
r masks.
> So fix those as well.
>=20
> v2: Fix more instances (found by Sashiko)

Looks Good to me. Thanks John for the fix.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: John Harrison <John.Harrison@Igalia.com>
> Fixes: 789dda6429e0 ("drm/i915/cmtg: Add CMTG transcoder offset in struct
> _device_info")
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++---
>  drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++----------
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>  .../drm/i915/display/intel_modeset_setup.c    | 18 +++++++--------
>  6 files changed, 27 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 2b7eb010511b..617106c68cb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4563,7 +4563,7 @@ static bool crtcs_port_sync_compatible(const struct
> intel_crtc_state *crtc_state
>  		m_n_equal(&crtc_state1->dp_m_n, &crtc_state2->dp_m_n);  }
>=20
> -static u8
> +static u16
>  intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_=
state,
>  				int tile_group_id)
>  {
> @@ -4572,7 +4572,7 @@ intel_ddi_port_sync_transcoders(const struct
> intel_crtc_state *ref_crtc_state,
>  	const struct drm_connector_state *conn_state;
>  	struct intel_atomic_state *state =3D
>  		to_intel_atomic_state(ref_crtc_state->uapi.state);
> -	u8 transcoders =3D 0;
> +	u16 transcoders =3D 0;
>  	int i;
>=20
>  	/*
> @@ -4616,7 +4616,7 @@ static int intel_ddi_compute_config_late(struct
> intel_atomic_state *state,  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_connector *connector =3D conn_state->connector;
> -	u8 port_sync_transcoders =3D 0;
> +	u16 port_sync_transcoders =3D 0;
>  	int ret =3D 0;
>=20
>  	if (intel_crtc_has_dp_encoder(crtc_state))
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 214454f419e9..38763a6802c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3767,9 +3767,9 @@ static void enabled_joiner_pipes(struct intel_displ=
ay
> *display,
>  	}
>  }
>=20
> -static u8 hsw_panel_transcoders(struct intel_display *display)
> +static u16 hsw_panel_transcoders(struct intel_display *display)
>  {
> -	u8 panel_transcoder_mask =3D BIT(TRANSCODER_EDP);
> +	u16 panel_transcoder_mask =3D BIT(TRANSCODER_EDP);
>=20
>  	if (DISPLAY_VER(display) >=3D 11)
>  		panel_transcoder_mask |=3D BIT(TRANSCODER_DSI_0) |
> BIT(TRANSCODER_DSI_1); @@ -3777,13 +3777,13 @@ static u8
> hsw_panel_transcoders(struct intel_display *display)
>  	return panel_transcoder_mask;
>  }
>=20
> -static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
> +static u16 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> -	u8 panel_transcoder_mask =3D hsw_panel_transcoders(display);
> +	u16 panel_transcoder_mask =3D hsw_panel_transcoders(display);
>  	enum transcoder cpu_transcoder;
>  	u8 primary_pipe, secondary_pipes;
> -	u8 enabled_transcoders =3D 0;
> +	u16 enabled_transcoders =3D 0;
>=20
>  	/*
>  	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
> @@ -3844,18 +3844,18 @@ static u8 hsw_enabled_transcoders(struct intel_cr=
tc
> *crtc)
>  	return enabled_transcoders;
>  }
>=20
> -static bool has_edp_transcoders(u8 enabled_transcoders)
> +static bool has_edp_transcoders(u16 enabled_transcoders)
>  {
>  	return enabled_transcoders & BIT(TRANSCODER_EDP);  }
>=20
> -static bool has_dsi_transcoders(u8 enabled_transcoders)
> +static bool has_dsi_transcoders(u16 enabled_transcoders)
>  {
>  	return enabled_transcoders & (BIT(TRANSCODER_DSI_0) |
>  				      BIT(TRANSCODER_DSI_1));
>  }
>=20
> -static bool has_pipe_transcoders(u8 enabled_transcoders)
> +static bool has_pipe_transcoders(u16 enabled_transcoders)
>  {
>  	return enabled_transcoders & ~(BIT(TRANSCODER_EDP) |
>  				       BIT(TRANSCODER_DSI_0) |
> @@ -3863,7 +3863,7 @@ static bool has_pipe_transcoders(u8
> enabled_transcoders)  }
>=20
>  static void assert_enabled_transcoders(struct intel_display *display,
> -				       u8 enabled_transcoders)
> +				       u16 enabled_transcoders)
>  {
>  	/* Only one type of transcoder please */
>  	drm_WARN_ON(display->drm,
> @@ -5880,7 +5880,7 @@ static int intel_atomic_check_crtcs(struct
> intel_atomic_state *state)  }
>=20
>  static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state=
 *state,
> -					       u8 transcoders)
> +					       u16 transcoders)
>  {
>  	const struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
> @@ -6516,7 +6516,7 @@ int intel_atomic_check(struct drm_device *dev,
>  		}
>=20
>  		if (is_trans_port_sync_mode(new_crtc_state)) {
> -			u8 trans =3D new_crtc_state->sync_mode_slaves_mask;
> +			u16 trans =3D new_crtc_state->sync_mode_slaves_mask;
>=20
>  			if (new_crtc_state->master_transcoder !=3D
> INVALID_TRANSCODER)
>  				trans |=3D BIT(new_crtc_state->master_transcoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c048da7d6fea..8bd213db5e7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1372,7 +1372,7 @@ struct intel_crtc_state {
>  	enum transcoder master_transcoder;
>=20
>  	/* Bitmask to indicate slaves attached */
> -	u8 sync_mode_slaves_mask;
> +	u16 sync_mode_slaves_mask;
>=20
>  	/* Only valid on TGL+ */
>  	enum transcoder mst_master_transcoder; diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/=
intel_dp.c
> index ade7e51e7590..799dca78767b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6583,7 +6583,7 @@ static int intel_modeset_tile_group(struct
> intel_atomic_state *state,
>  	return ret;
>  }
>=20
> -static int intel_modeset_affected_transcoders(struct intel_atomic_state =
*state, u8
> transcoders)
> +static int intel_modeset_affected_transcoders(struct intel_atomic_state
> +*state, u16 transcoders)
>  {
>  	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_crtc *crtc;
> @@ -6631,7 +6631,7 @@ static int intel_modeset_synced_crtcs(struct
> intel_atomic_state *state,
>  		drm_atomic_get_old_connector_state(&state->base, &connector-
> >base);
>  	const struct intel_crtc_state *old_crtc_state;
>  	struct intel_crtc *crtc;
> -	u8 transcoders;
> +	u16 transcoders;
>=20
>  	crtc =3D to_intel_crtc(old_conn_state->crtc);
>  	if (!crtc)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index ecc90e8faee1..507e2156d905 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -776,7 +776,7 @@ intel_dp_mst_transcoder_mask(struct intel_atomic_stat=
e
> *state,
>  	struct intel_display *display =3D to_intel_display(state);
>  	const struct intel_digital_connector_state *conn_state;
>  	struct intel_connector *connector;
> -	u8 transcoders =3D 0;
> +	u16 transcoders =3D 0;
>  	int i;
>=20
>  	if (DISPLAY_VER(display) < 12)
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index e8730b5baf2a..e27a531e1aa2 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -186,11 +186,11 @@ static void
> intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
>   * Return all the pipes using a transcoder in @transcoder_mask.
>   * For joiner configs return only the joiner primary.
>   */
> -static u8 get_transcoder_pipes(struct intel_display *display,
> -			       u8 transcoder_mask)
> +static u16 get_transcoder_pipes(struct intel_display *display,
> +				u16 transcoder_mask)
>  {
>  	struct intel_crtc *temp_crtc;
> -	u8 pipes =3D 0;
> +	u16 pipes =3D 0;
>=20
>  	for_each_intel_crtc(display, temp_crtc) {
>  		struct intel_crtc_state *temp_crtc_state =3D @@ -214,7 +214,7 @@
> static u8 get_transcoder_pipes(struct intel_display *display,
>   * For joiner configs return only the joiner primary pipes.
>   */
>  static void get_portsync_pipes(struct intel_crtc *crtc,
> -			       u8 *master_pipe_mask, u8 *slave_pipes_mask)
> +			       u16 *master_pipe_mask, u16 *slave_pipes_mask)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	struct intel_crtc_state *crtc_state =3D
> @@ -243,10 +243,10 @@ static void get_portsync_pipes(struct intel_crtc *c=
rtc,
>  	*slave_pipes_mask =3D get_transcoder_pipes(display, master_crtc_state-
> >sync_mode_slaves_mask);
>  }
>=20
> -static u8 get_joiner_secondary_pipes(struct intel_display *display, u8
> primary_pipes_mask)
> +static u16 get_joiner_secondary_pipes(struct intel_display *display,
> +u16 primary_pipes_mask)
>  {
>  	struct intel_crtc *primary_crtc;
> -	u8 pipes =3D 0;
> +	u16 pipes =3D 0;
>=20
>  	for_each_intel_crtc_in_pipe_mask(display, primary_crtc,
> primary_pipes_mask) {
>  		struct intel_crtc_state *primary_crtc_state =3D @@ -263,9 +263,9
> @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,  {
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	struct intel_crtc *temp_crtc;
> -	u8 portsync_master_mask;
> -	u8 portsync_slaves_mask;
> -	u8 joiner_secondaries_mask;
> +	u16 portsync_master_mask;
> +	u16 portsync_slaves_mask;
> +	u16 joiner_secondaries_mask;
>=20
>  	/* TODO: Add support for MST */
>  	get_portsync_pipes(crtc, &portsync_master_mask,
> &portsync_slaves_mask);
> --
> 2.43.0

