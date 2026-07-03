Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tElgFrIkR2q1TgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 04:55:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C85F6FE039
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 04:55:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Dg8E16X9;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8C510E556;
	Fri,  3 Jul 2026 02:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8549610E544;
 Fri,  3 Jul 2026 02:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783047342; x=1814583342;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NzEsZzI6qHsLfU5Uom4tLFSI6V7EoEOVz0NFaiLFfpo=;
 b=Dg8E16X99OMKu4VvnUmxLvcdoTxPVX5Qel8NU4ZvwYyP+bg4g0ouZemM
 aLfWFy0/d/F90fcpm4+hZOp0QLvLdHAaovomoRvLVoa8yPughCBSzFL9F
 LIOKzLel4wO3ZMNY/E05xlHMpRP/4KHnMvfeysWCdKQH6x/wNBdzHjX/g
 pLnqojry9KJZnw94TVD1joYt0qRHxKTodiZA+x07xlsKvfzZKNuwkVU4w
 jkS8upu/H2Zc4eTxywQPtJXDFboRYN+h1Q9KVgaHNj9q7c3nPT0CuSm85
 wPrJ6ItArlY5sd+ZK3BCGDqxd3lPZDY9duQ5OIBouIct788n2dWkJZ9T1 Q==;
X-CSE-ConnectionGUID: Z0uiSGnySQSoh4HznDAQJA==
X-CSE-MsgGUID: abxHtmoIQZ6tXhHm0P6QdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="109345553"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="109345553"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 19:55:38 -0700
X-CSE-ConnectionGUID: iSl1Okc1TIGn5V95wP1RGQ==
X-CSE-MsgGUID: dZBRQ5gJSqSws9m6OLq4qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="291126197"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 19:55:38 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 19:55:37 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 2 Jul 2026 19:55:37 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.41) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 19:55:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mHhy7ZRZnkE6OSF1YbVEBH733jAdma6peZRzB2jsc/pGeczv0Z4cSg+zjMOtSYphUcGLI+28VkYKdoEE6zcGnU3/ecKDZuzC1XALGBOPYoSBwxli/qtdN4Zp2kGIvMqSGbOAntZ1OdN0jzyvmWiLPKvEQG3JfpHRj8l4c8maiNi93s8pI++9ZbcnfrHxXEqYak/nwCCmBOWwDLfhOHmDwaScwtalJNPAXO1LlD1vdQiBcjxWyKnrHKkdT7JNipy6VnwFDZvbkXig5FvlP75tIAE1QiPi3WtnWDncRAIFef4dNkbuuidmyi5sVJ998ABQXAvXIS/bNHOYRqNvYVtMQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ss3313JMS2p28PAf6A8ZXb29JGVtr6m1QsDW+fze9Q=;
 b=Z1pKHeRUEvEHpIpGGq2HrSMFolCvReAWu9vc8TGzfrhhqgQ6o/m9yrpmGEaEB3HessW8qYeY6bceYVWcHGnmPe1dtA+EGrDF7LgHKnkJwpMWsrhzQFYFuVnQAoMmJxZMxMpYEqF5znuANLUM1QhYQllfm47hSX96i415+/waEpGlVpuM38TObpOCDMsy9hIoeXcUO0mPNEy3akShXOaQ+Xs+pSJA+OzxGqK6Kh8X73Crbrx17q+Wa+Gis8gPEoiaGnYQN2GKmggTVPyx5OMNNiFID3vid3/HpmsJF0IsNPcInJ772XDbSnqKcDwhqlTVW2IC16Pbj2jE6JgaJDhE7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by MW4PR11MB6715.namprd11.prod.outlook.com
 (2603:10b6:303:20e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Fri, 3 Jul
 2026 02:55:30 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.008; Fri, 3 Jul 2026
 02:55:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 02/34] drm/i915/dp_link_caps: Factor out helper to get
 link config by index
Thread-Topic: [PATCH v2 02/34] drm/i915/dp_link_caps: Factor out helper to get
 link config by index
Thread-Index: AQHdCW/cqzSWW9o2x0WAiK5ybNlBCrZbG9Fg
Date: Fri, 3 Jul 2026 02:55:30 +0000
Message-ID: <DS4PPFE901A304F6BC00DDB0A9CFA6A3DB6E3F42@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-3-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|MW4PR11MB6715:EE_
x-ms-office365-filtering-correlation-id: ae3d25b3-fa5a-4987-1ee0-08ded8ae8b1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|11063799006|4143699003|56012099006|18002099003|22082099003|6133799003|38070700021;
x-microsoft-antispam-message-info: zKLRLuSzeFHYifn/FVsJzLLFzvglKPAtAs5sf4rKhJed+09ToGvnU8qDByMXYJn4RTVHd5vK/QdF+v3H5l8kZgcFU2pwfV41IeZQFnXqle8MCSUwLgqBEv8oHvTUQENGspvtVBKAFWWdrL7JCC1S4Ov9lB4K1blGIpr/jgsb8xXVvVZxaSyxBI5SEXHoH6AwJF/xjFzhaWfr0SfASHaspSBPD3Rlj77aa0QrhmKO3m/y7fmoHUQ008cs1E8X42kY/Vqomn8ZAC4D9nZEAVg4Tw2nUkWcq/fUKLt/NJp7uRqglapbots95LMqAs/8a4+Ai+0CMvnShmgsve7+QiPS93H97OCObB66XStoA1NK5a8A8JKgQqrJbhLR19obj9aL9lVwCTsZ+DHQ+w+PmZdolofyMCzYlVe7FZOHPO4ou2QV5xxXVm+Y80nId76qx987MT4vNpi8cW1Ma6N14VhZ6ElxOMPK/oRKkHEq2Nwk+XyKTVLh1bxOTCEoW8td1VpI0k9vxFhCNbN0monk9bIY+I1OQgZEbrFaDAsNxYJBoNfG4Q0mVC+huoMJKqHFpBMi68Zz6EYEXDe+uprT2NU3hCHMcr7hHxOWFk5YsQusXIRTBTWugWrVxtPVWURqP1ZVsVpiXmKMEIxxrCvwZ9ieLbG1JzK0IMkYQweylnPAI5ZRJmAlPs3jknxWhCC0b/6W1q030NLvxGr6c1tEyZjZ8/xjHMemoixiDVH/noaS2G0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003)(6133799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KbF5DeRXlQlJK527kaOm7d+nQvS7CI7o6JnHkbZCvaQah+TgiPEfhVdm6kVp?=
 =?us-ascii?Q?SnBR5xcidpeKI4QwB56WorDh4OoXXB9oUR/za1kT6zD6AVFxx21cKWNU9z7B?=
 =?us-ascii?Q?AbobsPh6wbVdVME9tRHOGGdNs2ISUyOmeCOHkvejpiHrfIKukhHyo6Q/1WcE?=
 =?us-ascii?Q?UawTn5OXyWwElCZNzTubVIcBn9HCsuHDcJzrgIcJ0oBI4gYGD7baTHn0WSJw?=
 =?us-ascii?Q?l1/qGC4mbAhlYnEF0I08KQdFhu40jKPqtX9bkBObwg7GvoEXls6hZR/t4gLe?=
 =?us-ascii?Q?uPc9CsnEJpJBdNdb0eLfKulSGYywPrgY2k4wFMG3NxK0PucUDG0gw03xF4/e?=
 =?us-ascii?Q?lrlSAMKprNHC8Du7BQBDqBOG30NXJ1Zp/cj9MqQH3Riy9G8/NgqNc5WBCboi?=
 =?us-ascii?Q?Pxb484U2/omtFixWG02DwUSchZHAalLCohgmQo0/zbZTNbtfHOwPhiMYAd9d?=
 =?us-ascii?Q?2FYopiu5idg3PEPMKf6uV7ATZwkU2Sf+huTKZcn4M5JFA91qwj0ud+RcZ76V?=
 =?us-ascii?Q?x+xExUEemKOt8ofjCPUQdyh7DC63OOEPjMeuW7GO+ZQg+i5OaUuLqHGP5yga?=
 =?us-ascii?Q?UAwJHVUCRCHdJHoMkKk26SQ5NKLEyTkNfebeVXHYaar2bRLgxyJQoVyouTlA?=
 =?us-ascii?Q?TZWYlxzuo05o411yphafROkmP+QQxaaaMdo2ShDEeBiQ6GhEQ4tnS5EbehzV?=
 =?us-ascii?Q?1ifakOmEu1qrI1MtN/ic/PmQRvWqMDrfWQw8FymXpUX0lTysb5Hw6YUbP8nl?=
 =?us-ascii?Q?X4VGlQxJTxTWtCVU8gyavs/+atDxqf5PZmSs3KGKDYQnf15hM4gVcia4C73g?=
 =?us-ascii?Q?amUhdJk3ibJ/FbzaD2TNo/h1BFopvAHiBOBTjAIuq/DO5AXEOpD16FlVo3w1?=
 =?us-ascii?Q?3xps2zynkvTLdN6sZLtTr3UB1feWAF82hJ9Ckm3Eb10GoyPyUR75BS12E3rD?=
 =?us-ascii?Q?0EIs7/NKzvGt4bxDoUYqY2/5tfnLZp+CRtq3LaXPNyZqSDcahe6gaXAsbhJL?=
 =?us-ascii?Q?aab1rArOHcLDeBhtIBR3ldTzT/b4pnCR+wgQR8tQ/mToFDJm+IwK9Gl8iiHz?=
 =?us-ascii?Q?k6qUHVbh77+vr29GUQtlKny5Wg4U3gT1uG5G/pKbrgUJglTWwy2it79t+dGV?=
 =?us-ascii?Q?ha2wDQBiJyDrfgPpiF18Z3JR1W59heWZdmcFUoRylVL9JXVDVBr761tfvupx?=
 =?us-ascii?Q?he2bImHD17iwMQO67Rvay7vPsttYKnBKZuqof44sHAr5ZkxJRQ3xBunElHaA?=
 =?us-ascii?Q?/ClbuT5V1rWYvUucWLTeYW9/+GQ0xLbLqIQlMtUP9N2FIL0bO3gPwqYQjDlY?=
 =?us-ascii?Q?SLASzidSjl02RVh2d7xC7J/TzCm1TowRwTjG45wkkHLF/WcJRxVuj4VCNoVT?=
 =?us-ascii?Q?pRUWhZJL/gryG/W8uzgx+Ku3ol4WQ0uG87klH9dRiy996n1WU1f6acFcMarI?=
 =?us-ascii?Q?G0XsZyw41duBmFZftOaCjvchIRYdtrcNeLnA59MTMECWN+bZJnrpDvvSyy16?=
 =?us-ascii?Q?wzWEVW68vDjY09hCsSrq4xwSlHGyevZZvbfdnml52mgpn7btPf3lST5Z/KpQ?=
 =?us-ascii?Q?MXPCuBddoY7es5I352nqceH6vttGgqqoqxBb5CK10n+BV8uTsYtfARoBtQBz?=
 =?us-ascii?Q?36PnYE57lMIgC8u6++3VeZUEO7hXDbHr/WfxfW/Yx5npOwoGvRFmWxm/poRs?=
 =?us-ascii?Q?S0+AeKOfbv4Lo4yTmhIWWI8q0VZJeeAdFExWkYrh+ELhrslKeSI9zVEZqJSh?=
 =?us-ascii?Q?7S/5t1FdkQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hiwOmhQ44YdwihQXxhaCmM5wAlMh90+n6INWRRHtM2JqsN798j2ncx0K8hiQ1AU1KaO/cKA+ZV3H2AUlh5oZigS0+WaoGjosBxrYYc7VtWJ66VgmKr+u/9RxtNliWfK8yI3dH46Kiapn9sxq8m/Fj/2Ib9U3oSgn5ZOljuch0CsAwAn7Og//47GfJ4jGtYYebAAAbzds1syd1o2god0Bv9txZ/023TXOAc9wHiscTu9TpMqIUhkhnQvW6w8V2H//PcBGDVZ2TWvYf9iLiR8/3zLzEEbkLNezS1ijkqmz2GMnp2M2gvu9rAPotMsAvnkXB214lJfvpAt8n+ljhIgoKw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae3d25b3-fa5a-4987-1ee0-08ded8ae8b1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2026 02:55:30.2804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pJ5iM+lwO3+Ty1frMfJxaYuORLdOUf9eqtMYXv0yvj2I31fcLpQAHNbu1bSQqjOZXHUHJY0k22B8DjuP3OtXDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6715
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C85F6FE039

> Subject: [PATCH v2 02/34] drm/i915/dp_link_caps: Factor out helper to get=
 link
> config by index
>=20
> Factor out a helper that looks up a link configuration by index.
> This provides the link configuration directly, avoiding the indirect conv=
ersion
> via the packed config entry.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c  | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 2c656c2c036cc..d0a863b00b458 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -235,6 +235,16 @@ static int intel_dp_link_config_lane_count(const str=
uct
> intel_dp_link_config_ent
>  	return 1 << lce->lane_count_exp;
>  }
>=20
> +static void
> +to_intel_dp_link_config(struct intel_dp_link_caps *link_caps,
> +			int config_idx, struct intel_dp_link_config *config) {
> +	const struct intel_dp_link_config_entry *lce =3D
> +&link_caps->configs[config_idx];
> +
> +	config->rate =3D intel_dp_link_config_rate(link_caps, lce);
> +	config->lane_count =3D intel_dp_link_config_lane_count(lce);
> +}
> +
>  static void set_max_link_limits_no_update(struct intel_dp_link_caps
> *link_caps,
>  					  const struct intel_dp_link_config
> *max_link_limits)  { @@ -401,15 +411,15 @@ void
> intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
>  			      int idx, int *link_rate, int *lane_count)  {
>  	struct intel_display *display =3D to_intel_display(link_caps->dp);
> -	const struct intel_dp_link_config_entry *lce;
> +	struct intel_dp_link_config config;
>=20
>  	if (drm_WARN_ON(display->drm, idx < 0 || idx >=3D link_caps-
> >num_configs))
>  		idx =3D 0;
>=20
> -	lce =3D &link_caps->configs[idx];
> +	to_intel_dp_link_config(link_caps, idx, &config);
>=20
> -	*link_rate =3D intel_dp_link_config_rate(link_caps, lce);
> -	*lane_count =3D intel_dp_link_config_lane_count(lce);
> +	*link_rate =3D config.rate;
> +	*lane_count =3D config.lane_count;
>  }
>=20
>  int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
> --
> 2.49.1

