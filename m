Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHBcMy/i5WnfowEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:22:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F3842815C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:22:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6280510E468;
	Mon, 20 Apr 2026 08:22:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PpKRwwE4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB76D10E114
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 08:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776673324; x=1808209324;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sbiip0Wdzv5LozV4vq9wNJe5bL9+vJ06iLkD2rV7+Ik=;
 b=PpKRwwE4Eb2o5itCy7kzIyJQSxw1HzFrY9tKLLg9qL2cJgSxqer5E3KZ
 kAD1vZ1JHHvDAESi19D3qNYyGrxUZunsvGONIJHJDB2rMxI9JWQAu2V2l
 wPqjWeCx3VzlV9QMyEroTaNFEtrU6h5KDmBumo9PYeFMs9fjj+OcA2hdz
 4dcKx9TosaaUCN5W3c89zfooFfGjLzbSsXy59dZok5QU+IOacfK2DRXm9
 4lHaL0ZUStLLgBfqraaNm7yGpRrjfV12DQLgZbpCzb4bvLBCuGFKL+ek2
 hRaxv1amISv+k52+3VxlU/IHgbPK/xzOXOjNgYXQmLr2i9QXwkK7krRb4 A==;
X-CSE-ConnectionGUID: FLAhf3vbQTeJPzYeESLLtQ==
X-CSE-MsgGUID: gfyvE6jvSTy+YujktZJKHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77708230"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="77708230"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 01:22:03 -0700
X-CSE-ConnectionGUID: SQ8ACirOSDmZARgg/EcDcA==
X-CSE-MsgGUID: EJ2MW9GMSaGyipX/hn3/7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="227323035"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 01:22:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 01:22:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 01:22:02 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.38) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 01:22:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lgr54/BDEXbAlUsg/aLXP9k78be9/AOvrSy7/atFJJlNH9GXFlWxJivI2/dEykAc7xxJcC1IuJdq7F70WBDVYreLV4Jhyg90ZPVl1ro3HvLlOyfhaIdedJIvZ++ABLxqJRmNrC6cQ4QwuBGBiBTMhYdcZm937rGbcjKI5ipHwS+iF8tjuQx5b5hsunk93AE/vf9n8ZdGRFzs17hk4XOstO1sl5M2b3TLOdvaOPtV/uXHT4m3zL1a+eyPt8PgpY0gAj90pSf4CvUhfNW9D6emN5tLBeM1fKgqkXVt4WxIXGXG8Oy5d/nofmKr1086oKRIUjI0UF6y9j4RRIQndJ8lyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gsI+LcQDXiuhJNMwOTVnh7bb6SP+kv6GBBmHMjjOeQM=;
 b=I3+7lw+d1yNG+z6b8hJ8QIfjoLZV94Wxr9JmzGEYiBJV+owJ8UqkzIncy8wCPtGEYXibU+3eaqNUJij43CRKQtbR3c9Ph0nAwt5CuA21umziFORlXiaVuSSaOdrJEfKiEVn/nA1r0mtVrxCvaknGUdzyADMgjefsj9WWGqSR2cI+eFuzsuZovtcZUnTCreQH9qU2MEjtAnOAMyCd1DPHw4xkrDrEeG1JWzAai5Mi8SRJQ9vpfSvUDBjeuyl1q8bEUIdtnoqyRHsyEBlzFyBIGjkzl1GfoN0OALJeUhjTYRjPMtxvmim6VGiMWoIeF4OxeBVlIK1kD6NTdZUAgtjzvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB7256.namprd11.prod.outlook.com (2603:10b6:8:10c::8) by
 CYXPR11MB8756.namprd11.prod.outlook.com (2603:10b6:930:d6::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.15; Mon, 20 Apr 2026 08:22:00 +0000
Received: from DM4PR11MB7256.namprd11.prod.outlook.com
 ([fe80::86bc:2f46:443f:51dd]) by DM4PR11MB7256.namprd11.prod.outlook.com
 ([fe80::86bc:2f46:443f:51dd%4]) with mapi id 15.20.9846.014; Mon, 20 Apr 2026
 08:22:00 +0000
From: "Grzelak, Michal" <michal.grzelak@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: =?iso-8859-2?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v2 07/10] drm/i915/scaler: unloop scaler readout that is
 run once
Thread-Topic: [PATCH v2 07/10] drm/i915/scaler: unloop scaler readout that is
 run once
Thread-Index: AQHcydsh8ux9eYmr30iPGUD4J+q1obXeNhcAgAlwZiA=
Date: Mon, 20 Apr 2026 08:22:00 +0000
Message-ID: <DM4PR11MB72563B1768592FC73212439A8F2F2@DM4PR11MB7256.namprd11.prod.outlook.com>
References: <20260411174526.2850179-1-michal.grzelak@intel.com>
 <20260411174526.2850179-8-michal.grzelak@intel.com>
 <IA1PR11MB64676351F58BB25EA0BAD5B4E3252@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB64676351F58BB25EA0BAD5B4E3252@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB7256:EE_|CYXPR11MB8756:EE_
x-ms-office365-filtering-correlation-id: 3fb9cfe2-0e9b-4957-9b86-08de9eb5e54b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: Y+jLDWmzXvFKpjGxSOaXUw+qXauVHka9tpUGAAiYxz+LEIU64AvWK1OMx9LJN40PDwIyj8lKTxBe/QwEixhNDGGLVwoluXVktIAXWINIoG9tLLe76PbNgbRNhJEzcX8DpRqKAAIhAjIxoTqUSKKpKxErKysZbQ2nTVN3jrzu30z/KnBd11LsPhrRfC7mvNpG2FmIehpWizCyWdpO5vvHysjdXPomzulsOYUBBbpvUOzMHnOA7yKEOLRL8M62tRk4q1hyB8bFEv+rHQbsfPrFZu6X6r64JABIDkhafIQpkbw3oyzo7h5CzBJPnsz+2uKeU/E4Al4ELf72vF1HHdk4i3lPq3+3v/+KQgVfFCAdYP0Qn/T8YioMOboFuQ0oYE8ZOs8g9oFstcbvv5933tRh3Ro26IyxLwZswm6OK1fxBk5B9pxPvlS5hhobq67PREKAlZ3kylcFDvu9J1Fe5kvYkcV/ogQ9mpmhaq8RGdLy0DyzLOR6fI6TvKnIpcaZ/7nYVHKqVngsQscsFcqCmbq024u2yYMzFH7yzAyHTyxkC/rVmdqrMdmaxTf2NWrH6A2LbrWYa5yuMG91Wk8q+fRQKtadSVTSl+BYtK7A8RtqmkEpgj1NQfDYd879ZyKTdDfdtjJA3gidb8Vqxo4ninSjaNUAyaR1Rw6ZWAEOt7eM2164XusF8JG9Wq3z6zUx63NVR6baX2FESeOUF1EblVl0+5noj79Bv7Ts2IUbYWWLAZySqF3w+MEVmHv8ZsCMhs2KakjCB/rr7p+UBF0/07G0ZBTQ1XFIsyCgdfopfnNwZ2c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7256.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?jxEGO3wIjRiA6O5APhV9N5M5UcnjYrPdtdPZDHlkmPwb+gjFVaJkM7xnbH?=
 =?iso-8859-2?Q?/RrF63ye5ljwA60WjmwKKzapLsiO50y6mJNbHBptkv+gttc2USwfVR+y2u?=
 =?iso-8859-2?Q?LUbs4Jn4VPHtYViT9OFpTVEAWcxqXkzSgUOk6XzfwV5qcMlk0cThYInlyK?=
 =?iso-8859-2?Q?/UA4BIhIEovdblOUfAR25tR0hsbi70Ki4LraSzx0owYoZqZUBagZoMvtGK?=
 =?iso-8859-2?Q?6G5C/TxNAoorgPvuNEVHw2RYlqAh0jcAlFHsQUDnQJIdSLu75al+GlAx2o?=
 =?iso-8859-2?Q?6aEjBsgrqsKc/X1wtTIrF1zRZ8y/AhjX/60BUAQzsd+Yx0eC1L5ufPhOhQ?=
 =?iso-8859-2?Q?kxT+Uke1y0tgDJuB7z9u3H21c3c+/TLGDE8vBYBcZ31NXk5/Owd6k/8B4K?=
 =?iso-8859-2?Q?Ce7EhiLlTGM4nBvEPmdv/bO19ye1Z7gMRiozZXubju5lix1lCPCcW/i5hI?=
 =?iso-8859-2?Q?ao6mOI3i8De3UvUDW/VfJGWO4+AcRcwE6D/v1eqJ1gqU3vpm3Artt4y0cJ?=
 =?iso-8859-2?Q?AiQ7R0Gds29BNB870hP3UbqTjdkcsXGzxE7bOvHqyTO2wDEYYhSj3VH1cq?=
 =?iso-8859-2?Q?ZdvJ3u7SyV6o2/JG4BLyj0TXFYkn0ZkAtpBro6Y2OiP36MMR8ZSKPphsvK?=
 =?iso-8859-2?Q?VKA32iULjBi6hBQtyGd2HH4G2WD+Vx5j0HsDUaBkQIi1olq0YCIzPmlcic?=
 =?iso-8859-2?Q?fOlUzJmXx2NJIu8aWVjseGwxKxEJ/VjG2DglHghyIM+b9wYHi9/He758q1?=
 =?iso-8859-2?Q?aQt8QsplHAOBgkiXoNq4fsgrGf1xSJmJ2JzrPakuPaCc75JwrxQ9bDO5w9?=
 =?iso-8859-2?Q?+dhncQgvujuho6H3gvlPJoZwc5xbzYJwkIrMdO/SXmm0yQPEUoqrLKAmo6?=
 =?iso-8859-2?Q?godOykJ7IcX+X6O+4MEvetHIBQo5RwVvL4eMe6UOPe0NdKcfX1KopNUOIz?=
 =?iso-8859-2?Q?SOTSngqc/hG8InrE8CWmfDNVRFxtAu5yGNFQbjn1aothSD9RgWiXBvxYVw?=
 =?iso-8859-2?Q?GHXyetcBn3uMZanOE2L6w4tDhg+UsdGjB/iQTih4hsCIdcciXBf4PLh95T?=
 =?iso-8859-2?Q?EKFo9pDqGq3ohI3MIf5wdsfZcrZtZF7d2EbrKmFcKz1pKsenc7SCnHMEbW?=
 =?iso-8859-2?Q?TaYtiF6cjn+Z0k6PMs1jBfnNutY4aShR00R9VqZn+SnVw++AQ3ICTHNhkZ?=
 =?iso-8859-2?Q?6Zu7ZHyStM/mXG6iFd2hwzb67JVNsgOLHI1jANmffxLLWZ973/T0Ctj4gz?=
 =?iso-8859-2?Q?LPDGVH3AExirREN2I3arqatxVQz5LiWWABoJvEJqTWRamRnI9vUiG530Ij?=
 =?iso-8859-2?Q?6P4nqEA68WRiMgiqSCReCxCrcH9kMf0hd64bCGKlvZ5K2XKzh5k+bwlLVS?=
 =?iso-8859-2?Q?edESq7061YZyeJ/rYmLaK1D6UC6IByzT0XAmZLMTdTzumugS9QlokGkSTT?=
 =?iso-8859-2?Q?7ET1pA/un6gbOTW6z1WGiN62S33YXb5aYIh/9eJzrnF/ZuVX00cFGvXQRj?=
 =?iso-8859-2?Q?hLzto/0ha2qWkZsgXq6IICF4zjGjGm45qcG3ZyJIGST6aX32yIsed6R1HP?=
 =?iso-8859-2?Q?6Yvvnmk5jnFUbSGjLLEAlnc6/4Lp0zsWv/8F5NZ97EdDgger0+CLhNvaUJ?=
 =?iso-8859-2?Q?szyWG99tGGgotlGCFgzbXmStA8PuaVCFh/1xcI/49e2NZz+HQv5mJVWb42?=
 =?iso-8859-2?Q?cqld54Nt/sjY2sE4n+lDNvw9cRB/J2sjuVcpyPkxUKVJdAaLD9wYzeDEcZ?=
 =?iso-8859-2?Q?1bMSQml1wYJOKCPRiNuSWq3kSDcaQ86GH21Zu/+q9o4es+T2tMyytiGW8U?=
 =?iso-8859-2?Q?7TKQhFdjRA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LNTQn62VrCU9VFFMB273XNNWypJbMXG1uNZtoL/6oUdiXttPEzrGunybFahM8HvoyeJk+hxIkSsaoagwRbQc1PfPKwaYstq/vgqconUn3MN2yhPXXvSYlIWKcxNZ0B074UGGSIyzLtsOw+0yefo1hX2OBzKY8jbUchWncsa9mgq6D0DXz6jB/kNbUgWASVDRnQyPFk0FZyeJ4T5VDRE5OJxxoe9v9VNgUROex6Qjzshs0nZwuXD5KVemcujErpPQaMEn5N4cX87+xHl2vZcTE412ofthWfec7iuotUK1d/4Ofxh2+vrAUb5pQdN/c2Dm7TXwWc9K7Ng0U3/gd79K+A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fb9cfe2-0e9b-4957-9b86-08de9eb5e54b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2026 08:22:00.6278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mt8CZtkKdXa7fvSXmUfONF5VuDp4maOseP7ujSbU9Uax0Kwmw03ymtwtnREtDbdxNVa+Yw7Bi3JBXw2YUbFBATd9AKSS+8/UdlhL7hiHvEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8756
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:nemesa.garg@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM4PR11MB7256.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 32F3842815C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Nemesa,

-----Original Message-----
From: Garg, Nemesa <nemesa.garg@intel.com>=20
Sent: Tuesday, April 14, 2026 10:02 AM
To: Grzelak, Michal <michal.grzelak@intel.com>; intel-gfx@lists.freedesktop=
.org
Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v2 07/10] drm/i915/scaler: unloop scaler readout that i=
s run once



> -----Original Message-----
> From: Grzelak, Michal <michal.grzelak@intel.com>
> Sent: Saturday, April 11, 2026 11:15 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; Garg, Nemesa=20
> <nemesa.garg@intel.com>; Grzelak, Michal <michal.grzelak@intel.com>
> Subject: [PATCH v2 07/10] drm/i915/scaler: unloop scaler readout that=20
> is run once
>=20
> Most of the loop's code is run once because of the continue statement=20
> at it's start and break statement at it's end. Kick it out of the loop.
>=20
> Cc: Nemesa Garg <nemesa.garg@intel.com>
> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Micha=B3 Grzelak <michal.grzelak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 34=20
> ++++++++++++-----------
>  1 file changed, 18 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 6d9080ec74ce0..e71d9c036a1e7 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -951,36 +951,38 @@ void skl_scaler_get_config(struct=20
> intel_crtc_state
> *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
>  	int scaler_id;
> +	u32 pos, size;
>=20
>  	/* find scaler attached to this pipe */
>  	for (scaler_id =3D 0; scaler_id < crtc->num_scalers; scaler_id++) {
> -		u32 ctl, pos, size;
> +		u32 ctl;
>=20
>  		ctl =3D intel_de_read(display, SKL_PS_CTRL(crtc->pipe, scaler_id));
>  		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) !=3D (PS_SCALER_EN |=20
> PS_BINDING_PIPE))
>  			continue;
>=20
Hi Michal,

In this patch you are keeping both continue and break statement and then in=
 patch 8 you are inverting the loop so I guess it will be better if we can =
squash these 2 patches so we will have all changes in one place related to =
this function. What do you think.

---
Since the count of lines affected is quite low, I thought of the same. I ha=
ve convinced myself though to keep it that way because I think this patch i=
s separate from the previous, and in case of breakage it would be faster to=
 see what actually gone wrong. Also I found it non-trivial from the diff wh=
at is happening when they were squashed, so that was my rationale.=20

BR,
Micha=B3
---

Thanks and Regards,
Nemesa

> -		if (scaler_has_casf(display, scaler_id))
> -			intel_casf_sharpness_get_config(crtc_state);
> -
> -		crtc_state->pch_pfit.enabled =3D true;
> -
> -		pos =3D intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe,
> scaler_id));
> -		size =3D intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe,
> scaler_id));
> -
> -		drm_rect_init(&crtc_state->pch_pfit.dst,
> -			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
> -			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
> -			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
> -			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
> -
> -		scaler_state->scalers[scaler_id].in_use =3D true;
>  		break;
>  	}
>=20
>  	if (scaler_id =3D=3D crtc->num_scalers)
>  		return;
>=20
> +	if (scaler_has_casf(display, scaler_id))
> +		intel_casf_sharpness_get_config(crtc_state);
> +
> +	crtc_state->pch_pfit.enabled =3D true;
> +
> +	pos =3D intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, scaler_id));
> +	size =3D intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, scaler_id));
> +
> +	drm_rect_init(&crtc_state->pch_pfit.dst,
> +		      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
> +		      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
> +		      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
> +		      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
> +
> +	scaler_state->scalers[scaler_id].in_use =3D true;
> +
>  	scaler_state->scaler_id =3D scaler_id;
>  	if (scaler_id >=3D 0)
>  		scaler_state->scaler_users |=3D (1 << SKL_CRTC_INDEX);
> --
> 2.45.2

