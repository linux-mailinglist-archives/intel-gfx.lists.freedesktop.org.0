Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZMLzNdpiS2ouQgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:10:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A7170DEEE
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:10:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SabliYmF;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14E510E803;
	Mon,  6 Jul 2026 08:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B9B10E7FC;
 Mon,  6 Jul 2026 08:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783325399; x=1814861399;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xj5wq1B2MJZDwLO/3mZZCNXwSKkl8toNhtC1hIdIYmE=;
 b=SabliYmFmMe8KCiEYrMG1MmOd5ieIiMQfGNJLMgdiJjj+ySUVNYtI0Mh
 S2F44iSP/oBoYfxvMZSQO+LB1p85VUJCBxMpO1xl2Zq8JB+AvA/taCemV
 0ukRnXQjrYGqw9w5Dh3gElUI1nvGev9TjiaK0E2tGR85TpG0lP4MFlkH7
 XT3bsz1ZUkCtrIP83pf7cBRy4d5xRINMV3TCCDtudNZ2okeDg0d6of752
 2QYM2vU37/bt3xsmYX+usSZgwkSGqBr5H7EkaFbAva8sbO14wevLPCqde
 DTCeR0aBmJjKC91m5HUdGRy3fyVlN/hqGmxAzD5u2x6nHbYry8xqNK3Hr w==;
X-CSE-ConnectionGUID: lXuuzmXfQV6bPGAwrgoyCA==
X-CSE-MsgGUID: qxL5W9tvTvK8d0C+JJbPFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="109495884"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="109495884"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:09:59 -0700
X-CSE-ConnectionGUID: YRdihEABTTaXuJmFeZJv1g==
X-CSE-MsgGUID: 3QarjQRBSnSay8uDzvl6yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="258545222"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:09:58 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:09:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 01:09:58 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.33) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:09:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m8zUDtDVL6Tpg3fzDdZ9uk+XryncElOtQToOthtoxNuU4qo5d4vbwkLusJ3ssELwSAixHnq/gAN41VUZbwjWHJ72mp/6A2XQ8WRd2R7DeNL4ygsR1WhSisFP/RvjAcecvgz2o6vNjiIZSfMnfeVb89v8WrxGol6UFtVF8xuvIJXEqDvRPKYBtnbhzXP4Unb5pNCGZbT0S24FtoJylGuSPrgVFZ+VKUv1r4TA78wm1S6ODcgpLOESObyNnHOo7GiM9ra8t10+YaVeS9oBkMp+0o72+nsHIx8WLCWQ9567QubGO9qbnBJtBUXtn/MZwGqxD8JzhguMW9GxtFSvCK/Ahg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C1wm4edn6XjWM4qDQ2/nkWOd0tUQaoVF+SSNos30kHM=;
 b=ge6wlopc7VW65f5yYA/OMA1OrcnC/6zlO1zZohRFRw+C69x1Cfsqv0dtz1KqVBGW5c2vx/KGnM+nIp1/2ZsyZ6H0sO1IXoZKDT3cXKzUTfu/TAlWIE/gI+4Tvu4mUKI5li4DJ7kNqhH9MGsOA6mSjMuLcczcATNK1+JknbDpER+B6rJ9rjzRu4pjBle2jSgWDlqonlae9XJc32K4smTaSxm/kg6bUTaA4yTeKxEhdiAE9H3jMc92JBJYkEP2KDK6hwOzAMZ8IsbwGYYJz9B3I1sgsjb6XSXicTteKKQ/KlZWprchdgQYeWVNINrsFzKwH1T9xerlLS9PIrL1czvq3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DS3PR11MB9648.namprd11.prod.outlook.com
 (2603:10b6:8:38d::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Mon, 6 Jul 2026
 08:09:56 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Mon, 6 Jul 2026
 08:09:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 08/34] drm/i915/dp_link_caps: Re-enable link
 configurations after a link reset
Thread-Topic: [PATCH v2 08/34] drm/i915/dp_link_caps: Re-enable link
 configurations after a link reset
Thread-Index: AQHdCXQVV056WwRFO0mNMz7YoRAjrLZgKqiw
Date: Mon, 6 Jul 2026 08:09:56 +0000
Message-ID: <DS4PPFE901A304F033E23BCA95C09CEF85EE3F12@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-9-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-9-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DS3PR11MB9648:EE_
x-ms-office365-filtering-correlation-id: 161f4708-dc3f-44d7-4471-08dedb35f7a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|22082099003|18002099003|38070700021|4143699003|6133799003|11063799006|56012099006;
x-microsoft-antispam-message-info: G1l9Dtj+VNjWf4USzO3kFYrijimOWJZjiGoVEO02ZOlUruj+dVO2UQqJwNj2AhZ9B3SOOhAShnPKQgHd0x00cdlvsQqVuAaZB4PZfaAccmj5WSWHdOiSqghR4z8q1Z+R7Gt2pNq3LyCK5gEZbMF+nfF/PPqxtttxqWsrvQ5iqPZs6//RqlGfDsqBsLZQaI1VmhIGQ0DOHGh8K8i0jkvxBbjs/SJE73uD3vagZBboTVxdU0jVJV6g1ouNKXXYNVmk//c+j8ITxlxayms7JrEWu81dIAdn6eF8JH+76Ioz2eOVFw/iX6Eyd78oRrlNOm9HUXwhpzzspA2cL7bubg/vR4kcNQOGusq9A57WICEr8oLjvRuh5QFMnGHyk99n2xT3Hy0i38eCsqNqYcWG5H06YXP6rZPklV8m5QQz0YRjZmkH7N+hF1yX5WTyvvQKmbhh0BYGy7rR3rGVUvKCU6XoEcFolYidGAyOarb6Iw1hTe3AmlYt2MTrmVBzAx0xjeqUpehFfie3rH40z3uHydG88IxYCkIWAR391ifbF52g7Kzes44ffk4Wn49/nUB7jykn9325XHj3gej4SdVedF4KxNk+WU2vdGyMMaF3egB7c7Us2qsgZ+eDcyaJuDefSOtPmnSa8lG1vDyL3eVpMDHSTWw4cwj8ojOpXoACe+RkZaH+Y0edqrEkJNe0B1Ek72tSwf7tsGrwp7PCtrolHQCCi0Rk8DEWMEflEei+uszDpG0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(22082099003)(18002099003)(38070700021)(4143699003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dV0vvNwPadIhZWRQNZqqdNS9mJkDLu/IrkudvKvyPlvNNqGa80KeqRTVF9J8?=
 =?us-ascii?Q?AkrBsszwoQ7cET/zxvcXrCxDX7LJqKd2ahjJiSchLAEvbTcpanJLkgdkOm1V?=
 =?us-ascii?Q?QxHWCC4G5s/96hNXNq9wsW7rwKCRbUct//7nwypMMDAjYBy3aRzYY40pICC4?=
 =?us-ascii?Q?ncM604gr7Lczi4atXCZrtIrS+UNJV+xLCaWH+KN5IstN1NGkrrUSNlNIIfeb?=
 =?us-ascii?Q?pkT5OiqxitsiqrdOD0BAXpxW38ODWaDAxPo+OLb+5/N3/rICtgpBQV7537fl?=
 =?us-ascii?Q?vakgjDAv0c4Ejcxjfj5Nn/vAat6ebTJciJ+vNOP9fkA9slukW52D/vOEPx/S?=
 =?us-ascii?Q?7Ux+7NhqG2KpE/w1NViusa52h1U8qFALsxVG1yHSqoMwM5y0JxlgV8sFyJ67?=
 =?us-ascii?Q?h1QGM8Nxj63KHKVFU6SKxWkOYTqcs5o5fABOpplHVKlBTsk2lv+jIw9KIWG4?=
 =?us-ascii?Q?L3dgS2SSHGbQwQgY4HMl+S5sngf6Xi02c3dU1Ofp5AUx9IRJs0kSxUEvdudH?=
 =?us-ascii?Q?CtpPksr3pGZcaIg1fYq0Tl81TrjN57BEQAU2KJWwK14QQF1Xe18ZrscOOjCU?=
 =?us-ascii?Q?QyCvp7+d3FlCLLO4URAc/wf7vPMiAnI9wtLHX9ptUBXN9ViWfn4Bu3pM2sum?=
 =?us-ascii?Q?0SkIjM6Wb+3xJIsl5vfsDevjf2a2gwLURDdXwehVYoSho0T3I2QpBp6xR5Ki?=
 =?us-ascii?Q?ZdGxHD2RbRhtH3c5VQfzg8/6LxvFsWfPdyCte8O4r20nhPQi9VH3yjU6b3bF?=
 =?us-ascii?Q?d3KdNiQ/hq3kPJNNy+a8fTQFh/M+YpA7aGgX/0L0rk20aoD9P3OgmpSKPWC8?=
 =?us-ascii?Q?op5diQtA1YULXdHh+MBa4I5WsfwsYQHBrHtSILh0RtpUMUwbawhnsFYd0gV5?=
 =?us-ascii?Q?JsEna67ZlQYOK9rbOpOKrOnA9o8P18SXiLY/7AqcxwOlYVKA/F9hJo/o5CYL?=
 =?us-ascii?Q?6KTTsC5Mnzh1ahHgtHSIKqDc+6E+3Fvd8paoKvDgdIMbNKX2BDB8SvjUk8KT?=
 =?us-ascii?Q?7HudHPgL3GkLdbFPrIUS+w9V6Ww0FPBR4fktCY0ri8vgaK8E10h6m4LPLq1B?=
 =?us-ascii?Q?G+fZL5ctp5gSPERsw1YvCgiUPNkpP/9nOgITwqVf+JMuvc18/F3ZGIUIBaHb?=
 =?us-ascii?Q?oi6mHpRF4mEgaNRqY31BDMZvS9G3e6NTPWIwoJgNGkkJSFmQdcBwvgt5sX1s?=
 =?us-ascii?Q?Tlz4qlztYMCGM4aipnXskIIWZkuI0x7wSS3JOyeN4tif188KcMzeGtoMpuEB?=
 =?us-ascii?Q?YP8nKy9dzKJQ5pBeQuD/RgPLVR5fPUXLjjMMXf9rTEu/S8iIiaTBmLX9XetT?=
 =?us-ascii?Q?FwXUPG+v4SUdXSwX6W/gAwZlP0x8BFvpheWdLkIKRO5OdsYBdPtNXguGhudV?=
 =?us-ascii?Q?ikw4jyQM4JW7L0UqSX4nLFNKoO/msOGxOzzC0RFak6LzjD3KJBOOnuIHDxKh?=
 =?us-ascii?Q?++dEqBlKxKF3bl6EFTcLX3t2vYZEK3/ZWK2V+TvRYNMCp0/EpNtmqevxz1qS?=
 =?us-ascii?Q?/J7emmVLI4WsAteEdI7iHkmrTiUdmB6aT3KWfhfOILGmf3M6Z2tfrds+dqXm?=
 =?us-ascii?Q?86TU3Rvinz+DXwIif1IGinhrLCReqR+FnshVNfV0iCzYGwM7HbWzEUaf7UfF?=
 =?us-ascii?Q?p5T4z+VLSgqulpAu7q2s6ipJoCYpPk3fAbMKyNkyVVBenmAtf3GgXypW/9xc?=
 =?us-ascii?Q?gRWOnvx4lSrN1CvPSVti0/Je/7Ff/CHp/TSKVm+W/6LQMzARE9SY0KOHuqc4?=
 =?us-ascii?Q?bm0a9RRowA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fDnqs+0iPOFiFBY1P4yBxCQoWY1+8IL9lsXsPta0qq6a/8d/c7ZxCdvxHroVN68kS91/Yow9BWbpfqp5MLYu6rGuTQIvXu5XtPOvac5WQNQnPnyfSh8DZwBe1F/0KM4O3zUiIgeLJi+up6DwVN1eOY1ySER/cs2H4fPn1Vwx+R+Maf/hxW2pKKRrXBxnrdsHkTVJSYfmi31kDAkrNUr4L30xzAcj9ObUTT2YlD2W5ikkoBjGLdmQSXUxhfxglLcPNYLWBmiUGwAC6hMa3HWoHVkU36HTomCmdjaTq9Foch+SQId+ig+dkdoYj2viNYgHNyqkcbq3RrIgBI0accX5uw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 161f4708-dc3f-44d7-4471-08dedb35f7a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 08:09:56.7123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LDInXCHtOgIrk1guswHpniuYDOoPMvmGCd3ee9djhkxPvgwu6mHGffMZ1//hR/iUL/6nUFbQZ+vRuzIEjDkpjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9648
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS4PPFE901A304F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:dkim];
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
X-Rspamd-Queue-Id: 40A7170DEEE

> Subject: [PATCH v2 08/34] drm/i915/dp_link_caps: Re-enable link
> configurations after a link reset
>=20
> Re-enable link configurations after the link is reset via a call to
> intel_dp_link_caps_reset(), allowing a subsequent modeset to use all the =
link
> configurations of a sink newly connected or an already connected sink
> changing its capabilities.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 03e40e8d24fb6..667d2e55cea19 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -561,6 +561,12 @@ static void reset_max_link_limits_no_update(struct
> intel_dp_link_caps *link_caps
>  	set_max_link_limits_no_update(link_caps, &max_link_limits);  }
>=20
> +static void reset_max_link_limits_reenable_all(struct
> +intel_dp_link_caps *link_caps) {
> +	link_caps->enabled_configs =3D INTEL_DP_LINK_CAPS_FILTER_ALL;
> +	reset_max_link_limits_no_update(link_caps);
> +}
> +
>  /**
>   * intel_dp_link_caps_get_max_limits - get the current maximum link limi=
ts
>   * @link_caps: link capabilities state
> @@ -824,7 +830,7 @@ int intel_dp_link_config_index(struct
> intel_dp_link_caps *link_caps,  void intel_dp_link_caps_reset(struct
> intel_dp_link_caps *link_caps)  {
>  	/* TODO: Update the maximum link information. */
> -	reset_max_link_limits_no_update(link_caps);
> +	reset_max_link_limits_reenable_all(link_caps);
>  }
>=20
>  static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
> --
> 2.49.1

