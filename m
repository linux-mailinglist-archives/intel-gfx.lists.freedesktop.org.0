Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPc+NUcrsmleJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:56:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F9D26C801
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:56:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0D810E938;
	Thu, 12 Mar 2026 02:56:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n0bKvFYu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C2F10E33D;
 Thu, 12 Mar 2026 02:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773284163; x=1804820163;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c9CnzyxUwoZ97lfRQU2Qd698GutE2Xt1ami7Q6Lb6ik=;
 b=n0bKvFYuZOTQBqbdJ2p7Q36zOp6jPGkPRxhHcbvEOQ6zH0Eqn1G1Y5Bn
 076ZWaTHP89iXovIT3gUWWVKXGF3/+Aqgj9LJkSVv0YXTY8c7Dz5MO/ut
 tzxbTcUM3suCzuH5Rspjy/+2h/KVyUG+6iuEBcYV2G43csUwkgL0Gl6wz
 0OvZ68VfddpcIhHdXEaWUsmNa9ePICr1NyYdMlDtGhME5Oib8/UiZnaDj
 yqaXFuqJk/URfMyEqmTMK4MSlfvK5tZSvErXqjkoBNtBvH+DlasQ9gjXw
 kd7V26hsdimM+vpOdSgFwKwLrGJ7F5IrKqHVFXQr1Kq7uq9eZx1UU7SgQ w==;
X-CSE-ConnectionGUID: Z6sj+v6uQaO0zfYq5Lcp4Q==
X-CSE-MsgGUID: 1B9OB+rtT52PuPsYNYnZYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="78258722"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="78258722"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:56:03 -0700
X-CSE-ConnectionGUID: ydlAVjfKS9qx/s4BF/BE8A==
X-CSE-MsgGUID: ucnKLq/QQUCK4uCulTF6jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="220853137"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:56:03 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:56:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 19:56:02 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:55:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V8zN5oz51XxjDft2tf1oSdEpXDbtiDE4rZypKxrcbPXccDRSIoaXuHmpqBrWCJt5rFFddMYwPogvSAQXU2XNAvMYJJaiNIbihrCoB9EnBwbHlhkNCGGmhXM5tLdd2lJ/YWt24a65bCx282VIxQAwo3FbCXMDdsIyg9finTDK/Fjb1NJ4FJv3NYhVxF+bm2gTIuKOMEyewmWbledb4ykHLNmXNAIqzU9gO8ZnCpgpSwV65utIEK/EWT2mWMN7zbKzg6pUhskmybLK1Ym5edS9kut4Y9tdNKJzY1vu3oB0zTWbkUkzO8OMS9gvhlFtPyw4yZD5ldXeZmSlc49sMGPCMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/9DEDTDFRBx8eX8nktwKTZe9bHG8xCNeScmSCKOZQg=;
 b=TB+YgXxFxndw0eGOsMtMxUQJV9rYOsufK+WTnMxFRNVCCXBIORmbRIUCwiHAjrprlLxHdywUjpGZNO9OWZi2Dgx+pvgm+r6HRNj3vHQhk0PuiF3h66l8ABLt2IeIGcPnztJvjD7MQgojYJjUt6+MCvJx+jv7qaIz9ZtfseRgZeiV4vHfnEB5//Ynayiv7a7nPoCitRbEGIfpf4D/pYPpLVSmm0dRKqZqFSNShMmS2CL29lkT0e8rHMeKxm1vds6YxYNnv2IWUjV2bNYciSGC2T/hvpc57VI5F4m87UkGhUoBkM6vTsBwD+zwlSrWZHfGO4sJ/fUfkYPPGpS0Odm68Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB7208.namprd11.prod.outlook.com
 (2603:10b6:8:110::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 02:55:57 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 02:55:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 24/24] drm/i915/lt_phy: Replace crtc compute clock
Thread-Topic: [PATCH v3 24/24] drm/i915/lt_phy: Replace crtc compute clock
Thread-Index: AQHcsWIhzvWsYf6WZUeVK2tj5a6Rq7WqNJeg
Date: Thu, 12 Mar 2026 02:55:57 +0000
Message-ID: <DM3PPF208195D8D4CFA51A43EDABD1428E7E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
 <20260311141905.2526418-25-mika.kahola@intel.com>
In-Reply-To: <20260311141905.2526418-25-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB7208:EE_
x-ms-office365-filtering-correlation-id: db88e729-ed83-436c-ed19-08de7fe2e272
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: TiXc08ixhyT7ognKpBcBtdHXE4drEX32eBHz9VofY0JxLbRqM+LzwXkAl9GwDXvpNM4pTxsOnPZX9EDCtqmY81rfMk9KRoPqxi+L7A9Oc83cXByndEh1dY5w9g8Dyb9/xp2tEFKKTT73g4LS+qddzbCXKyGKkiCi869FEuY3tgOB22Xl7pc/6/kpYOIO5d65F3fgeYDxS68p0+ZjA+H0y+vqXA+Usv8x00iF5EEO3VrSR1dKCnKBqaKPBt48NNXtETBIpBriy6BOjRVnD0EkhhpbAMb75fWBR6nnLN7PoeC4+IiuAz22UvL6oTlTiVOFQJT9GcrYQQm/QsiGXqMfClUE4WDkyEBePl8DVciy9aEBF71F3yPNCV81sLQLVcEaR2Rj8z4uQQq08n9VB1W5X6engBxSgQPYuJPFUuVPB4kBL2dDo/sQL/WS+C+tK6/GpCPPTve/hWKHFVIED8FAtvusU6v9jkLuf21/nY5FwXuBoYT7C/cds0CYxhseIQ3uIyRoNZEA0WOfz4+hTv0GkzmcHAZRrZLMd8EkDtMnZCMi2rIXweeDb2f2hND7FLL9ArNeuHXD2AY7DmOsiCbOoScrLYLm6+C7ecLGsdSgY2dyW/tg8B6yELfXMlHrlyHlZx26gdMhhCKckMBqCzp3lhzMOM7vwpTe+Fvgx3qmd+nyA+Qk6/JMF44qpiCX4iSgHIGC36orEZ1qoJZDd4+zfPlupTcMPiu/qd+2aG3juSfDTQWjU4v58Fn3FFQNYjVlF9LH3Cme63886jX+qk2Yoby8oFawTRTn4ZXt2bd0KCk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WXlcfUVBcgdUC/ko9KbYM522HPsX7YAIInPCuliqyYnhVlnZMzAD8Evkampj?=
 =?us-ascii?Q?6XGJBBuwBWmH/p449ccr+6id3qSTUpNaKXZMrbttMWrMe/Yy1ns/RzQGs5AK?=
 =?us-ascii?Q?4SprlG093Jr+StkTLNKGLrrc3p8qImiXzYrtMfQs8PSpe71gQdkfbXaz/vVl?=
 =?us-ascii?Q?YpJRIw7OqC30GSma2H9ty3fNbEibicevAo7g7gpzD3DmJpaga5k7+HPcEotW?=
 =?us-ascii?Q?ml5AFnx4SI+Mu8PK5jVK6XSeZGXdFCCqMAr9T9t0YW7SjMx2qpWQCflraR5j?=
 =?us-ascii?Q?+qLAuSsHocR6J1+Mgf1/CTrJL3PCz3EPc9YL4rw/6QQS6kYCSMVVnbC/PeEE?=
 =?us-ascii?Q?bFq5Z2zSLqwgLlXNf89GVNcJvlh4s+PmOgudt7hfwfdm3I98NLSoKSvn5TLU?=
 =?us-ascii?Q?ZB7MAoWNCGCwypMGFNwm608GxlZRkBBHHCMOpi5GLUVTHY0FBcpNHYCiXfTW?=
 =?us-ascii?Q?YhfJVqaKS2h4FgUccduoj/QvrUxS/pz2RVHPHtdLwxPfgXJEBYjsg9vfe4bY?=
 =?us-ascii?Q?nodR6cXc1eLrCxqbLxYj+gXb5xP5PgbXMNsdU7SXYtEgd1AlToxx26ptkIdO?=
 =?us-ascii?Q?W9drzFmbB84fBSwl2jDFtIC51sMToWup/Nn+BcdGdcTKXk89EO2wiR9CDCcH?=
 =?us-ascii?Q?CWlGl4RhH2VCcQz7WU3B5ftZUco1NEr19Ops3YansLvCtNPBd5piwRyqeOvY?=
 =?us-ascii?Q?IeFGPgrZNxep0/X0vh0lJWEJAdz7541qMmeOVjBGj/WxA35LzUCK/28mErH6?=
 =?us-ascii?Q?d1etZHJ+brbW0lZnW4zW4ZRconiwB1i4obERjdWuxhyA6YjbAS73tTaS+1f6?=
 =?us-ascii?Q?LaYs05c4ny8ubfU7urGnBsFpkYwEDnzlIMm9fUKj+5j4jEMPiCYKO+XyeFyd?=
 =?us-ascii?Q?hwgbizK7s98iMRXcdZmBJ3YPigB9atPeWQ0A44uhAolW/e4NXw0vBstJvl+E?=
 =?us-ascii?Q?Ai6aAWfDVT0OchRN0pLJbWmMfY02SP79Gob6+a5RnO4n9NM/g2oK3t1+8EJ6?=
 =?us-ascii?Q?A4hXXBFTA0/V7OojBruq6eMOSQj6LjK5m9/Flg8GdLEmHaLWBvov5Zikht3K?=
 =?us-ascii?Q?ljuUh/BJ1K3SFUTQtcKT3OTbg1MconaLSAwnA2kQs4qb9Rdd1CiJILTGzg+B?=
 =?us-ascii?Q?UZVLwFmEl24nPLTJKH8j5+Xbf1AXuPIT7j20GvFGO0tzrLwxarSTeldrlE3z?=
 =?us-ascii?Q?hITengWNxBa57q4IrNTnrPPRT7A8cknp8ceOIeb46D3QRAgb8pdulxhW2sXq?=
 =?us-ascii?Q?k4jF/sicsRwpM1U7K7gBiXXSFM3eWcr3GCmh7qd0BcMnmETESpjL8hIfCXnp?=
 =?us-ascii?Q?07w9Pejrsqk8wIAwIiCHFWbEAL3FkgsoYcXD8klMYvuCedT9JfcWDTpS50Ah?=
 =?us-ascii?Q?fPEHDlFVFp6+QGf7qadzs54J2Sb6CCc2qnm50lQRcGrTqfvBVd0FQw+SEx1F?=
 =?us-ascii?Q?iiMloCKfd1ufw0eKNbPZhU9Gc9dxqNzwSY8NLs5LKuhNGpd2YTa7t32UNxrC?=
 =?us-ascii?Q?B26QGOCtaBr66V301llllMCy/G6fy5BeTLPxWgWuQCR1NM43xGs5J84Ce3Vb?=
 =?us-ascii?Q?VDdrG4kmhBlfHl+z/mb1t/dxx2/FePaKT8rcO5lyy7I0EJ7DRdwhMXH/pg/X?=
 =?us-ascii?Q?hNkXXArP3Mxl2DSdD5GUc5OKXh/+V8gl7UznW3ayS1v8qwbwvxBUbQhBWomS?=
 =?us-ascii?Q?TkGgry0JUy/HlhsFgXaRwa1ZIxTTWMGr8QXL4UKCIIgq4pamAkwb85AhWCxT?=
 =?us-ascii?Q?xi6q1mZ/SA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Jcj690v43/kBEosGZvGicYJGpIFGtU4mfMfO04LPEBENG+TI+LCQ5kBuSZ0EP8jrhTwkeZ0KJPySzIyeaoXXyDIvhXNFBwl4wJxMNr7KZK8CAVjqpRG/EncchkYZM1r/meSx21w6rXDnS4jreW9pW0/fFA820MNthW/+Zbih2816auLyv8yp9wOJii0B4MYpJTxfca6L0wke3exGcW5v3lj61tIb9/ShJ2AqFTFy92xjQ2mEuPtNcEMyxmubrxqednv3j2TrxkguiW3FJ08wH8v208HeyshWuJNyj0QrEtBywSEQWR0HPWpPPSDZAWQdPeVv6fO5tFWKrX8QVdN/RA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db88e729-ed83-436c-ed19-08de7fe2e272
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 02:55:57.1513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MfiSUPgsx/HMQxYJQhdkTkMczq/MfLxBmIvYp1VseSbpFPBE0+wfS6RPS46X8G0otrrK6zgnjnp5TAxrM6AA5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7208
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 43F9D26C801
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH v3 24/24] drm/i915/lt_phy: Replace crtc compute clock
>=20
> The existing DPLL compute clock callback for the XE3PLPD platform
> (`xe3plpd_crtc_compute_clock`) was specific to that platform. Replace it =
with
> the more generic Haswell (`hsw_crtc_compute_clock`) implementation so tha=
t
> the compute clock path does not rely on the XE3PLPD hook.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 25 +----------------------
>  1 file changed, 1 insertion(+), 24 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index e13a5e12109d..c7d37e74fbe9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1212,29 +1212,6 @@ static int dg2_crtc_compute_clock(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> -static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
> -				      struct intel_crtc *crtc)
> -{
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder =3D
> -		intel_get_crtc_new_encoder(state, crtc_state);
> -	struct intel_display *display =3D to_intel_display(encoder);
> -	int ret;
> -
> -	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state-
> >dpll_hw_state);
> -	if (ret)
> -		return ret;
> -
> -	/* TODO: Do the readback via intel_compute_shared_dplls() */
> -	crtc_state->port_clock =3D
> -			intel_lt_phy_calc_port_clock(display, &crtc_state-
> >dpll_hw_state.ltpll);
> -
> -	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
> -
> -	return 0;
> -}
> -
>  static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)  =
{
>  	struct intel_display *display =3D to_intel_display(crtc_state); @@ -
> 1695,7 +1672,7 @@ static int i8xx_crtc_compute_clock(struct
> intel_atomic_state *state,  }
>=20
>  static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs =3D {
> -	.crtc_compute_clock =3D xe3plpd_crtc_compute_clock,
> +	.crtc_compute_clock =3D hsw_crtc_compute_clock,
>  	.crtc_get_dpll =3D hsw_crtc_get_dpll,
>  };
>=20
> --
> 2.43.0

