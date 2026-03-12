Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNeRCqgrsmleJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:57:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8671026C83D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:57:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D9510E33D;
	Thu, 12 Mar 2026 02:57:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TfD/RK9H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2548B10E33D;
 Thu, 12 Mar 2026 02:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773284261; x=1804820261;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hLMwWHj4aqnwhV+69BqLa+grecax+tceC90O2SW86/s=;
 b=TfD/RK9HHzLtqv63lXJwb0CA5Hjpp0Y/27mbKGncRUVes6VE9rdqsZ1T
 ti7uvbsXtlYWJG4rWHxyf8JIqIQQxii1JpOgP9lpc//8OH6FLy7HYfjTX
 pQ3a8ZLP4T4duMfaCMx2YlwkIXGBCB5eMKOjtmLui7vSUQEiH3of8LL1T
 w/wYBkOZICF1+y0LTSYkbhQrgU7OSmULOuzJKK0rEIchR4/YzZiIwqdUH
 Q1s7S3qhkXjgRHjWsUhOximz/5EPU8XR8mcPbxvzWu33wWuE9hlmx3UqA
 fVremLP0Gnib7C5aiBqe/e+ThKIF+ThJbm4eQlfgAI6awoB6fvojCOZdL w==;
X-CSE-ConnectionGUID: U3to1/RGRWy1vRmzkS9/MA==
X-CSE-MsgGUID: pzeXElycSbeotnL50xTFFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="91939817"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="91939817"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:57:40 -0700
X-CSE-ConnectionGUID: veDsr6o0QLi55agtem64+Q==
X-CSE-MsgGUID: IrZmu0LZTguiokW6DnbAEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="219942748"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:57:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:57:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 19:57:39 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.58) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:57:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YVb4Peoxl+p0HPZFZCHu6ckAZ8OO1xoL21F+ijtUSuum50kKOlXpAvpJUj9EPjGoAGxUADvo1XY0ZPwzf1dh4X2LaoZD5H8qJyfyxQlciZ0MZ33f0u5dB3AK8kQEOzjYZ5UDs1OmhujJbjMqxSkH+FXtNFQaI0P/j5lExbvvUPvCSvUxl8UhjnlD1lkzr3eOSkO1K730wTMNsXUseI8ouwWCr5EIGHZU95QIi+QY1KKrEoZ1bY8hu6WUwUo0UUHjJPo/RxDwglbfnVRKdvBMXviFyYIp+L9ePSO5YGShmv3ecuBD8Wcaiusm/7GXJtX9YDAogYQ5ICu9j9Zm93Czrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPCtp76gfncQgbP4n2HU/HELGdgIJguFJK6JgI50z1o=;
 b=DcTceH3u6lxGiLMUxQT+e86YDDUZ7vYOukxwX5IadSvtsfpzTdooX5Y8NrlEE5cY8/cS5HdAfvkazJoiL5WzK74sKjEbGWHN0GmWS3FnSYhdeyrpWs3lj5HW4ic1/60zx5/YsKaKKlCW1zsCMlL4QtFacZdhrM8Timi/QeaFsJkxdhOS1zmvXnXfemjk3kE01cq5xTssDQgADK1gSRzCKlSPkFF4WuczCwNwEhDUn722IpU7zjQBzvEhNZe2JB8EwxyrcDVrFKh7hjAoENcRZA+8LlYC7plZXl+KPrCuxHySoG6a69lOkVz26eKwZPCLqjdQzbNdH/PNwIxj94AMkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY5PR11MB6320.namprd11.prod.outlook.com
 (2603:10b6:930:3c::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 02:57:37 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 02:57:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 14/24] drm/i915/lt_phy: Add xe3plpd .get_freq hook
Thread-Topic: [PATCH v3 14/24] drm/i915/lt_phy: Add xe3plpd .get_freq hook
Thread-Index: AQHcsWIXw9IAPhNKKUyR7LacJf+SwLWqNQ+g
Date: Thu, 12 Mar 2026 02:57:36 +0000
Message-ID: <DM3PPF208195D8DB3D629DEC228794A3912E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
 <20260311141905.2526418-15-mika.kahola@intel.com>
In-Reply-To: <20260311141905.2526418-15-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY5PR11MB6320:EE_
x-ms-office365-filtering-correlation-id: eefc7b76-f803-472f-1531-08de7fe31dec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: Ws87YZk29Pvte8HlAiYO+SgpXUo7cDsScZpV35EH3Gtxz8I2EJ6jLf/pPwnuLA1JZnS0I/u+jEbhS54bvUwe06cVZy5wzp0Ij78LM0shszBYknIFF1a7CjJbpI8ZqM1wgpji82+tR4+P3K1g9E4DSFPACKZwJTg/+MBGSRTHIVXArJQM/lFVOPAlLhNb9QQwsLc2ytfsbnwpnHVmfASboQm7YewT8qpCm1vmP+zrQkmkMXp+UHOqgdqphXFxKwWWid0kNaUH1GLwPtNr4WU4ZbRDMU1RrHC05KIcbcKEB5XsVgI7gIj518CN+VUPZh8DXRh5C2T1pB0TkuRAX6tGxrkxucSB410dKE88QH3bhpWliH6gULRQlMgo66YmR271YGGwAnHMu8elmNqKXduTAczef+7PG4oclH7S3S8J9bR994ZVJRWEaSU1o0/Pedx77z/W9mZI6M/u6W2qV31RGQZBke8RHeduayv5TkL1wvQki5ih9iTrYgncIKYy2jvNj/ELqEGYFKIlSdgfE9qFnEpD14evblVaGwMfftPEen8wHL3kJ04N/xRWM9dvBn6GhyHBEwtb4j1+joKixDExYMiQfaiVGJMNMQR+E7VkfSmeMraS6jTQ9sW9WokNn4bvzcN/ETkLDChFSNREBRMjmqr/eBAEOLGgJhwfSpHEYt+V4to2KWo1ouZgoh5INqPsker/jgWz70Yn0CfgtpC9jvU2MT4eKMQQ8qUFycgQMHD8U1ezMlosd92vBX4AFQZOex56HZkcM4QVJxnqJjzxpS+Fc+2ILt21AvpmswzzNmk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iLJOaIyCr155gBJWkJuirD2azBUE7+KcYs+8PyWj0otbENYUnyT++ePGL0Hu?=
 =?us-ascii?Q?5LHocqxap3RnsITIg7WK0p0Z5KTdcX3XX6aVlkM6zOs11emyNY3SS0MbXLZE?=
 =?us-ascii?Q?5WMk9NLTA0suxJsW1VJpUsbRmI6Wtv+HN2JBmVH27Ay5Bl8CtxO9CSAwfc8m?=
 =?us-ascii?Q?nYdZRB5mWwMBfWaZl6N/oed6TbBkBz/zgVUvU+tRiA74H9tTRyrZbAb6MpwV?=
 =?us-ascii?Q?fp4sUBaDCiTrZVI06FBE8eOIp2oQRs/Bxjh/qFzWlemi2iSY9wTZQS43u8Ym?=
 =?us-ascii?Q?FPBvBX+YzqlgYBeN0QVHSSzbp/chsvo7gLy/w4gKx1rIq9x/yKMSdeiXiDiu?=
 =?us-ascii?Q?pO38yAbvkwoaHR/4HTKadP6hdedv5VntWrapMMnPMy89gGVwiEKYfLUHDJOp?=
 =?us-ascii?Q?p2VF5dHwTsBHZY9O9IT1kTM8McM0x5vvHiojya6B4G/VXEM3Tl35ItZqz7/r?=
 =?us-ascii?Q?1ZSdcWDg5Vmbkf7HXvuAoSGbB5JAeyZk+5DGKTSHDkB+uXUNJA0fXcvfO7vS?=
 =?us-ascii?Q?aVuMtBfdCKCgINhKui0ELHHUxsE3IuvfeFej6DpFJLwnMS+qSDS/ID73iI9Q?=
 =?us-ascii?Q?rxqZ91px80KAXmJ7GECh5e61uf19df1B0ZhzVhZUW8YxGScWcZLGsRgBmrwQ?=
 =?us-ascii?Q?QD+kGm6HsSA+g1T2IW3/hm8SDYcrimbN7QObGapReuvQOWRWpz/hR/W08q8O?=
 =?us-ascii?Q?BixZaO0NMEwpa4FgISsRtuI+s5ud8kFDnH8a3qfOVcs7uGHE3WdUHGD5tUfq?=
 =?us-ascii?Q?xbbCFKsdI4Z7zlIdfaJC2bfA5uCOoPTSYvAwRtyKzf3AibPa15hBr9WrQeZF?=
 =?us-ascii?Q?jJzpdAYYibtBqbaoeOAYZUVbR/INFl2fOUOYFxPsBvDnICl4Au5LGHXdK9lC?=
 =?us-ascii?Q?8/4YbOxCb4z+hemBr1nnQXvlGecpxJtLUfBiOEg+I1duvUjK30xxkaOyctma?=
 =?us-ascii?Q?DiI8fJCAozvW739HIC4VPLeXbsLE7kMc3ZyhpUxtir08x1Dijm1kexX2k0u6?=
 =?us-ascii?Q?ZlYj8cmHk6cCNRIDTUgiVdNkUdZeUFz0q3UJq0WRjlWFaIu36uzCqgr5ZfZH?=
 =?us-ascii?Q?Rs33C9E/odqMJtptWXuN7Ic13w/oVCSKSr/RFNELps2rEg96iKuR9blFCPAf?=
 =?us-ascii?Q?y6MUsfllujAP1+82eTvU08DshvCXJo5GJ03tHwQTc8qghJaXCbxKP2B4L4CJ?=
 =?us-ascii?Q?5Qb8wuMAYgukmjZ0BexUYLWHQ4h4DhGF8TAdnEEAuAPUwVBr1D8w+wVZ1GHy?=
 =?us-ascii?Q?GRbSboga0Iy+xlqMSziJtCoOaGTOHA3NmxTnj/64Nhgx8Rk8KgGHn7hw4ksg?=
 =?us-ascii?Q?rPoat5bkoJJxiYUjcVoMCyelbV4SevVltnfAHg9YCIwlNqgC8dKGB3aaZHBg?=
 =?us-ascii?Q?aQp/pnJXD08BnFvNr3opkPY4azteIOX3kAyIkKGcx+FltlVsBec6cw/WVdhe?=
 =?us-ascii?Q?81WkgH7+tcvFV+Tosoz8fHArT/OF/VMc7eSWIW62t/uMyzezY4PMMUESWF4k?=
 =?us-ascii?Q?UQX42QN1PyV30geH/Bstk/SCNlIddgEwZ5Eb7blOTrlcCbuBh2ns1TcAIAbS?=
 =?us-ascii?Q?4gL9gAI0bujWyIcHAm/RlrEIyjcKZklayEDiZ9f0e39yRo2VkfdfAEMsL2qC?=
 =?us-ascii?Q?WHfgoFbDbsiWSu96YPLyZ7dz5+VZfzD/SHlPPB9LCbqrp1DeX3ChndG+vspU?=
 =?us-ascii?Q?amDsa/gqssP2Mk++zGMsn5gp0rGSY4CSWR43KuYjQLiXd9+Fv7/bHIb8gDo6?=
 =?us-ascii?Q?Q5+14Cw/8Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BLa7dfJztw97C9f6LyVp/yqonW4e0/GnOKkfQcyVDxrp56tbLkIN++2ZDnUUOmiAVKx4aYm+0rBfT+6pQEQ4U/DmnGo2HQ+9J5hxjAD4q5WuVbNOqJhqfmIogQKuijewXbIC6GGkb8G3Gf8/8X3Dfd6QJ+iESg+zvDVSb6aE/oDMqBJAzfmyECuuJGiuensostTLCxjr83OKakqlBFwkxPqTPPgirbqsUZ57KN+wkb8yDkvBW9sWLAbf5Pssh8LW8hK5jPLto+C42O3zKXg+8ItEKgoh4TOKSfgZ8iLAO2RYY10NeBr+PCJubFTUWq7FaX3GzRfKSdPKujE0L7CPVA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eefc7b76-f803-472f-1531-08de7fe31dec
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 02:57:36.9373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkN4qynpQYM9fNYIxKuxkP2w78aVBWSZ88dIKvXCAwy6zmMnh8F2PEe/MAnbUV5BjMVvgx3HldSjltV3c87rfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6320
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
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
X-Rspamd-Queue-Id: 8671026C83D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH v3 14/24] drm/i915/lt_phy: Add xe3plpd .get_freq hook
>=20
> Add .get_freq function hook to support dpll framework for xe3plpd platfor=
m.
>=20
> v2: Restore port clock calculation (Suraj)
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6502916793f5..412582e29ca6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4583,8 +4583,21 @@ static bool xe3plpd_pll_get_hw_state(struct
> intel_display *display,
>  	return intel_lt_phy_pll_readout_hw_state(encoder, &dpll_hw_state-
> >ltpll);  }
>=20
> +static int xe3plpd_pll_get_freq(struct intel_display *display,
> +				const struct intel_dpll *pll,
> +				const struct intel_dpll_hw_state
> *dpll_hw_state) {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return -EINVAL;
> +
> +	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll); }
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
>  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
> +	.get_freq =3D xe3plpd_pll_get_freq,
>  };
>=20
>  static const struct dpll_info xe3plpd_plls[] =3D {
> --
> 2.43.0

