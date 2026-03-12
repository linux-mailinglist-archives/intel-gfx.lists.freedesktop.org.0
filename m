Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHf3F+0osmnlIwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:46:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C66D826C690
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537E710E939;
	Thu, 12 Mar 2026 02:46:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PqGlbIdf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A2C10E939;
 Thu, 12 Mar 2026 02:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773283561; x=1804819561;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=avgLDSydrYHmZ2oeM4ZWJI+vVa9k0e6yRMSg7fQDkEQ=;
 b=PqGlbIdfrCyQQQxNhNj/6myB42iFsHdLODvhaZfJm+ivY6zv0DTuMzpG
 ZB0ChdRoPz6pFmXLXbpXmyFv6bi0dL4ANQqnc4F5uVZqO5mozd+uLzh9I
 RPJ/Uws6+0f/UJ8rf0tUVD7xaxHa7h6bLA9RsDgxbqf+MkaezYCnz4RJ/
 2vpK3GH3RyuC2uvba5TwStLLFFRpu/5JReHNfD+sgReCtqTAvNxvCuse3
 2yMhPJs1hnvTG/nSya5PsM/nXHny8p0BmNrS7uzBQXR4YYE0SmjeEZMB3
 Qz0WzhceyQ8OqqxJvJjLIsJMXsbHdAWviMMvZ1QK5c+HTBj0JxuXIxEcD w==;
X-CSE-ConnectionGUID: 0XRGPBn7QsGH3dnSCNH07w==
X-CSE-MsgGUID: t6Y8lU6pTsaHG8wlkiuXUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="99832996"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="99832996"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:46:01 -0700
X-CSE-ConnectionGUID: UGoKZv5wT+mkTKePHHllOw==
X-CSE-MsgGUID: qsjxO1z8Q7Ks6xlNdBjghQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="224811988"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:46:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:45:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 19:45:59 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.29)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:45:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m7eBw7eOsoAK76j0MH5iP2m2AJCnCJKMcwAeXZ+D0v0u8VO1allCrhA720OjwHJk9XupvtvomP+B8+qPbiEZKhCTQDLCAlvMd6gjcUu8RFM2PO/HIuxc5ABadcYlutRIhd7OYAcDA5tVq/ssAvmpN4nbnQb8x8fr1hgH9NG/KKXZ69Qd7bJS1p3SoDIPEMxi7IaPJfCSmObrbVmw3tdAH1a9Jla7yCcyEzMJ99+Rbj5ZweR2uRUxjFM6qBFgHeOeiN6v2tmHzKzAw6vOAIjkCJw/7EyJytpV/9gO+QlTi82iG8ydRpQLxK09CHFYBVRwMBra8x5yKeWCxq8dh5zSjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6pVNFTOZlVCPZvsTkukfN0wL4zpk75JQnKMkODKzUik=;
 b=HwZD8yUZ5yGPZT4g/3yB10nLrlWATelZmnREPg/RXZyd0uR6MLMG689Ew0o5pV/OeQCQUgxt41POjaJDQ9qwR8CkvP1MqPzm1sJZ+3dk/lIBIHi3kHn4EVvTKA1KUBDB7DBdwW9R4IWXQ5T5TNQ0hTA8g/xvv9/jLB//i0evZlKJ7DP9L4VLztRuq6bG43XQH128lYdk3G+kWtwEs377SgjVugD3GESBS86amYcKtIsUrifVJ4r6INkYcy279n2AmV+Kz3o6/hp2dx//q+Slpnbzn1yiVPX2ObG36F9FQU12Ue6uZuqcqwAqPXICgqalyHwB0C2aHPeWnJ8YzdqQVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6692.namprd11.prod.outlook.com
 (2603:10b6:303:20e::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.3; Thu, 12 Mar
 2026 02:45:49 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 02:45:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 02/24] drm/i915/lt_phy: Add check if PLL is enabled
Thread-Topic: [PATCH v3 02/24] drm/i915/lt_phy: Add check if PLL is enabled
Thread-Index: AQHcsWIQLiSQZwJHcU+haQfWKdhDubWqMbdQ
Date: Thu, 12 Mar 2026 02:45:49 +0000
Message-ID: <DM3PPF208195D8D20FA61F082A81BCA4F41E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
 <20260311141905.2526418-3-mika.kahola@intel.com>
In-Reply-To: <20260311141905.2526418-3-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6692:EE_
x-ms-office365-filtering-correlation-id: 89979fa4-0bd2-428a-d7f0-08de7fe1782b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: +iDnqqgg4GckIRIgg4FQq3fuT0RnEr6jS6Sj9mvJS3c17fUIkD2AAsnvUl2bjvHlIMqIo4cYLDsoo3M/7Jr4q06wt+68h6zf4RyP4WOucAakeeIu6ER6qbyuFNtYJpKIqdLfSdBE9gdUazBTDhRqPjgoFiC7/GKZNGDHkSBZCmkpi1P3RO/KZ6VPPMlkvqYYKMkKg2kc/xX+yg2tMZ7mVkWSqib/WC/JiHYbzzPf0U1pVXVvBCXboGcDoYeb8xtSzAqDp9MLEXfS3qSPxLHwi7HwOKIxvYWwlL3wJvELrVPeTco5C6TYfJe6TybvfaQvOEazMIETAA7i7Bc7ammuHDUeqDRm3QtafHBVlWiTxemP1ZrbrZHRPOaz4gZP5nPojoQZ20xVN+ZUX/WcD8FlOUQW9j1lAGl1dbegtD2g8VhwyFHorq2PRw4PWeUgcTwG/sWRW+/6ALyhj3tnNjiansvL5IX6shedhq/0WbyhuXqu8ZghJ2VWQbd6cXSIam8Vsq71ANaQR8WFUVtt9vNsPNKjOJqfhu9QzVYKzGia2tOaTYziSU+Z70/6r+HaFgY2k5r3Dwg/k0P82U4kAzDf7XavZqn3J5fB7uaAMbJhYdZW/gDYJtbLiwndjN2aHXVuwAtiZpkOn+dEkaAoL41qGHelKxNJdsCPumi7r4Ou5/ae3pRu8IPj9rmpoqT4gMexq6+dk1gj5AtvW5tVzw4STGrMcSGaKaz6Xxlcizd0jHdJ2sZqiqh21y58SqNkh82WxW2nh6+Et04qhy86xYRXYHbnURyGzvYJKCSINQx9jMs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mrszUiHh2/40JIrg7ugDLMDXbwm7qPyKenpeA7UIcR09yowP0dx/d1rf458M?=
 =?us-ascii?Q?8CdRphpT5C6APwgBvgI8YfK2qDZ2GLGdRvrPctyz+tu5qkJzcFzsPTJ7X4eK?=
 =?us-ascii?Q?Tk4Kn3YxJNtkOcBZIoPFhOuiJYMhzoTySm6G3aHHgRP8UvajhtPBAiNeGK+c?=
 =?us-ascii?Q?lj5AfPsFZgpsM1f2kYrkd6ol0JyzGD/uWSN4vx3I8sJ7AyWbXoCWepCItRHe?=
 =?us-ascii?Q?xO1v5JJihqW5RM+/mlh76Ciw68ycylnDASzJnpKq+VZLoEtC4zDhd6hMThD0?=
 =?us-ascii?Q?t8NevT8hHLjGhFJXj0w6suqkGQYuOLDu+fwNuqLyCmpvsDY7d/K5oO/yi/BA?=
 =?us-ascii?Q?RgwEt51mpTCFYtArtaLXbsrsirD9ewcF9DyKBW3qvxPSExCJvOzfJtngPbu0?=
 =?us-ascii?Q?Cu/VDen5T1cMrsrzVtnvrAqRgIonN5mZPYbVcnSJe1915zewbqgOzptCK5e1?=
 =?us-ascii?Q?g7H+An8thYf4wNFzDHxvZqQEAiYdSkg1gyJvXb95wCfN8m79Bs0kyLDJNU8i?=
 =?us-ascii?Q?62NwIEEw5SEQZ87XYG32FB/hwlWmdgni7iHVZw49ZS15yBbS59RK8poOTIa2?=
 =?us-ascii?Q?pO/aBb8n47+co2WwgBPi9A55xSXO6zRIjiQTdgyrYkz2e+NQq4Vg9R3Dt946?=
 =?us-ascii?Q?SEXpoR/K7H2EnHlfqKrSKlLUfPBCL6kq7Ihb4DsfPt/5KCCOHHFZgT37it9c?=
 =?us-ascii?Q?SoHz//1KbRF3iOEQwlktN0Kic1LHg44TwpCoMJRx6q8l2u4OJRTqZgrd3hkj?=
 =?us-ascii?Q?DBBnB+n1/9AbrX42I+IrwKTfTBbU/CejLFuV0Pxo5pB4xMiXQXI3w0WJqyBE?=
 =?us-ascii?Q?lI2hKcFLyo31DPB76DXXP59A29PwqbifNa6n8S9Y8TmR3R813wgYG8atkuqL?=
 =?us-ascii?Q?7U5M7NRIKJ4s3x8g6wrB1xpPC3n8NQoyk6nRX9FpTXFrzfHIyVm6yrP1+by6?=
 =?us-ascii?Q?c4N5zw4yAKN6DZD6gviXTH4HnGjc0mjihmU5DH0MJT88rkN7ecpKkm6vhc8E?=
 =?us-ascii?Q?glVKcweBFnpgQLeTY4/4+cqtm10kKEiDZ2mesqKBR1GACLjBbovM5gcfBdsx?=
 =?us-ascii?Q?Rr+CH2xJpDHGtjdXFmsqVo+bRAnZchjG/L+K0D3Mtd0qQfj1C/YwkP7FKM4D?=
 =?us-ascii?Q?IlvvXWvL97ICgN6VcKzHWCzWfnpoUU4QSd0YJXJSgx4U+T7lfYY1HuebD0gv?=
 =?us-ascii?Q?QWrCPtYeFeWHULA9p4XDG1EhzvKoLCpGFgYcbT6UFic+5teV1vAzCEANOe/X?=
 =?us-ascii?Q?/M9NQtDzhha00gh9w1jHnvaIEX42eGFoHrpEMAFZid4T/h6AiG7Of3stdA6g?=
 =?us-ascii?Q?sd+VziWeJR4V/CepPtWxLLJ3Glw6lCxJDuBNqV8Ox+pZ0dTT+g7DF+sP3GPO?=
 =?us-ascii?Q?VlA/eIY1ZuGiNgDre75/zQBfub178rtUHBGs1VvK3uddueV6oPCwesteYnpS?=
 =?us-ascii?Q?jKFaz9985n1Gv7+Kx2OpQxoYQp9dgPVXQTOKXziNwU2KfqTpPgrdfLQIcDyj?=
 =?us-ascii?Q?qV7VXYXbeeC0hSPkqKcdbB+7TD74oTKHtPijVJdxFqRtSiSXltout9UEpd0r?=
 =?us-ascii?Q?U7W8jmdLfEMuHY8c4qg8zIRl7H66ogRRjKP+Ej20nMFFT08MtakGCpvlVQz0?=
 =?us-ascii?Q?jLE+85ZH/mPxSFKC5jxW9Vd6rstT/3M1uX3JkEqkf/q3Tjqaa3a92cxghqyt?=
 =?us-ascii?Q?ArkA6w9jFzLn5Vrhw6HXolVT3z213ruIHenq6Va/hE2K3u1BTHMl9p9PqBfl?=
 =?us-ascii?Q?512DLMR3nw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BMhQiRLiMWN3chPaEFoXk98GL8rQIQFfueGXFApFFh8eEExqsqrOGFIq9q3eqlJRh3jFTAaXr+Re9KLR+7lrt5MsZLRRb26Ir0Z6FaOp3Ttm14aIM0qwWKu7T7Oc3pA6hELr5+AE8QT03/BTh3RLK8xKVqRFLOj+h72jlhphqcxX+MA0iGwwqi8P0AaF/TNqJ/QAaKbTn6uW6eZFZTDsCLqZR2ZWRkFMGrE4MO2mF3yhnDkCrF4SZnQzx9zL2AcxJuvpOOFe0jDbjUAMc6PymJxX8UcJPj5v7S2e2aVAAhzFgZZhC25j/US6LzLxDQgz9QiSSfx/4TaqVuBgFguMdw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89979fa4-0bd2-428a-d7f0-08de7fe1782b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 02:45:49.3660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MUUMpbjqq9k4jKgM0qsM5P6Bjka7ZTTaOWXZeWuzkC7/zGrgZn3LbxKETneoXR7gV3BLfkTef6Op4UbMDwtlcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6692
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
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
X-Rspamd-Queue-Id: C66D826C690
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH v3 02/24] drm/i915/lt_phy: Add check if PLL is enabled
>=20
> Add check for PLL enabling and return early if PLL is not enabled.
>=20
> v2: Use PCLK PLL ACK bit to check if PLL is enabled (Suraj)
> v3: Check only if PCLK PLL ACK bit for lane 0 is enabled (Suraj)
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index f768804122c1..e1c95f58b6ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2176,6 +2176,14 @@ intel_lt_phy_pll_compare_hw_state(const struct
> intel_lt_phy_pll_state *a,
>  	return false;
>  }
>=20
> +static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +
> +	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display,
> encoder->port)) &
> +			     XELPDP_LANE_PCLK_PLL_ACK(0);
> +}
> +
>  void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state,
>  				       struct intel_lt_phy_pll_state *pll_state)
> @@ -2185,6 +2193,9 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	struct ref_tracker *wakeref;
>  	int i, j, k;
>=20
> +	if (!intel_lt_phy_pll_is_enabled(encoder))
> +		return;
> +
>  	pll_state->tbt_mode =3D
> intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
>  	if (pll_state->tbt_mode)
>  		return;
> --
> 2.43.0

