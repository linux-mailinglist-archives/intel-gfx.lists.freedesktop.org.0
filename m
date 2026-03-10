Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHdLHZKYr2lGawIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 05:05:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2ECE2451E3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 05:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AB7710E643;
	Tue, 10 Mar 2026 04:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PMrwiK7N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B6E10E642;
 Tue, 10 Mar 2026 04:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773115536; x=1804651536;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pS0vQ/b9PMwI6CGRFIGJUWtzBxTfzv0afzF+be7eYrI=;
 b=PMrwiK7NzwEAFrHMCT6nG7gKJf9SYHz4p8QZv8lo2poYUi+2wla9at97
 JRqxN1ve2i9+EH+xOSHAR3MZjzF4FT/qaJyAk7ednzB4dQaCCFvjkW0r1
 TTfUWTdMzHal/pV9+k677+yy4r1rtWbWDD6fv/aarJRZYgc66mwcyO/Lb
 zUTrj7UaT/B4agAWw6lCZDqUydQpMTkhAJWxsQ32X9wPVjmLD6jmntLhH
 4PuIbYHZVPjOndwdiWHhFl8Bf79MN1kvKUEP2By9uPuPBDpJIhBoM/GAn
 BUEur7C7n3hqGZt2jMSdXHds73yyioEXDfGqoONJkpTEwGMRWWJ87xr4j A==;
X-CSE-ConnectionGUID: BmGhwaxfSSmzOAI09z13bg==
X-CSE-MsgGUID: xX2yhX2ORxSvJ9aaY2uJ8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="77758456"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="77758456"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 21:05:35 -0700
X-CSE-ConnectionGUID: l1xZgxVlRjSMByjW/zT0gA==
X-CSE-MsgGUID: rYts2UoDSU+h+97WRW+Z0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="257890926"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 21:05:34 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 21:05:33 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 21:05:33 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 21:05:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S0ZSclUPtUZqCzITbFHWJaTIe5Ni1kEK8OItt+fhoR/mhibp9R5D+vCAkJTxd1V4iJ7yCgRXdrYFtqS5ZgzASWYpH9WhMQucIb8VDBFC8oTq0r1iRBwMIJo2veKTNZHotw03XEcvrGKKNDJ6IRapJ1T+d8qh3oUXI39z1lBWo75QRLLBmyzaSP3G+i/157egHNPJRj5TDlPadgR2BhdVnJu9totF5Q3UL5t4c4uaWGHmWfHdbX3Zz4q3lXC93lYcA1pJ2od+Dfadkn61nodUbgqLGVjumQgg+Hrr/uWjHGvScxQcoFgql2pyoLK9xYchANOSJtmLYpghf0MJNW9NKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7/LqKnsHcYzA6vYdRhCa8AeJSJ/KWyw97sLNqB+2r0k=;
 b=uWQEkj5V1CMRDR/+7yUAk7TPTdlo546mCXi72yBxL5qq5tZ3oLnxm6q5GYG71gdiYKdXEMAy8PNL2kobZ9Xwss55gD6AUNLBoemGsX8RWbjj6nmB1FAKr0RKhA1rHG+2V9O+bHn/B/wBMx4zGDktUCJA9Bei/rggEIzb5yOodSdzy/JIma/y14AzwV9OIxX/v++ZGaFmrQsYkOHjHH5j6tGCJ+VA9uDaKN7QSLziGtELNVTPDx/h4+U8VNevvWWUeNJmZ86qBucDW8gDvJlgvCJYy9bTSliumNKguAysyb7XZsrxhnv5hcZc803Yr7leAt+Xy1sx4grWr7N1ikhcOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6394.namprd11.prod.outlook.com
 (2603:10b6:208:3ad::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 04:05:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 04:05:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 05/24] drm/i915/lt_phy: Add lane_count to PLL state
Thread-Topic: [PATCH v2 05/24] drm/i915/lt_phy: Add lane_count to PLL state
Thread-Index: AQHcq9jp9CgJiRSkqkiJAhx97JPIb7WnLmow
Date: Tue, 10 Mar 2026 04:05:30 +0000
Message-ID: <DM3PPF208195D8D8AD58A807D097D1860B6E346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-6-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-6-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6394:EE_
x-ms-office365-filtering-correlation-id: fb79800e-5736-46ac-16ca-08de7e5a452e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: eCoMu1t5rMaL/IvFjsZP95//B1lbGTb78k/KiRHgFKYKp+ZvYXebZZNzVi0AmUFt5sHI/gh40xDRkPzRJcGd3i62HYncOK6opH/mNf3oTBvyap3OSeQv6CtgRZg4qMM5dW2vwhGWr5cdVpKseZPCD+6x04dLc9Oia9T6VreMobbGyFrVFpi+9j9hRjeJjIQoW9DbVBRfRFvGc/v/PG7z/JHkdc9J10/jLYEDzNKdi1Ga3zpB9W2UW0e9uRqoTuhd98oh3uDHYp2QHVAsl79golTfP7zpBZSacNSkGZ1JH+TfhRashfNyZ/TAPHG/lgDSBhhgF9m03lKcXirhCv6RaablEWkgMw4hfwjHbZyjZM1QtlGq/Q6/ehFi60ruHOFNaHsBRaUAe4ZtAabrMN6hpBkX1QbQl/oqACXCg/VtzBaC4JnIWDsQoIkePl//KwZvXQckVsEBgYusmLWAMpe+FeXlCHBT2c4xzXRoUW1shCj/ov/iKJL/f5SDoCyPSPdrJkLHiTE2U7Yf2ZTdkIS/GyPYp7j2qH5c478yNZSYYwMY015e85aFM5eRalokHkF+ngkHCvVEK8ODTQHt1cBIS6CFlFfNueKrHRtbvRt5+S741ZmIHdNX6h8CoYm82UJhDOa0NO9N9UV5SBSZ5diOEqnUjEjKPtLhj6ocK5t8H1kVLE13Ej72ugQpzdDH0D44OUGdh2WeHDRXISJwwNKTrwabb/Avpx4U3EhZRMLjrEzRszbz8GhHJ7ziS8K97IE9s/8YVOe7/pdiXyEPBJhQ10Xx/S0lDu8RVS4jHaBYSaM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n33h01g39pMSlYy6fdm3AN9hO02Fk4r2BAS6BvPp+MJazb8sYzRpNUOZ+5/T?=
 =?us-ascii?Q?7wLW2D92f2rzXW/1wT0ZXBJmhgmIceL291pnHXj3WR5fxIsjuNynxNwC50i0?=
 =?us-ascii?Q?lc6nNp+sM9ccu7u2AuY+Wfw95lT6UWSdxTwv+CVF0MBBCL9vDouxXAvsYK2d?=
 =?us-ascii?Q?/uYxP5QmSTgvW5rBNQ7k25d6jSpAk4ln5Jx+IS/Q8u6qmIZD9TvLPPXyJ/Ri?=
 =?us-ascii?Q?PV4PUefvxrDr/CRTAqpojBO+zKJtpQ71sNTSKZj35uetSKXQnfeTWOkS5m2N?=
 =?us-ascii?Q?oYDu7lgviq9jRFxi3+awR8K2r+Y0KJFlwd3O+vGy1oUytjHdxz+5jXOsF0jR?=
 =?us-ascii?Q?4BS3yfr5dI0ku2/ergNf4h+hBNUOcGZL5+tLZ3ST9dEEkZaJqsa4McSFatL6?=
 =?us-ascii?Q?D3z21ddqq4jugOCTghuup3AAE+pEykFG+fVpBcduGgLKxsqHwryaQ7YGO8BF?=
 =?us-ascii?Q?w8obXlrQkjXLVwh0ZQ2km1dlRlTS2RVBx2jvCYNg/PeZTT4Oi6KRq3YW64U9?=
 =?us-ascii?Q?NE17Z/uHlnosF1zlZMGX1Za8DocT5nXmL3NaecCVZpDfBU5YymTvvoPXMTu0?=
 =?us-ascii?Q?U6VINmRV1w8ghnQgHUiYPt2H4/NALVKoKqHf7hp/Ax9wC4ahdZvaJd7XBcJh?=
 =?us-ascii?Q?y4RHmmODpwfqaygsIEu6EAYZI4b4Z+/rduzM3eqipXk0U0wWJLVg+hzGgNdE?=
 =?us-ascii?Q?Zn8IV7+ljclgw7HgiHl8lwlGY8eGAGFYYoI0P39FbBe4xDUa4KwYVIWL8t4L?=
 =?us-ascii?Q?k7Mln//6B5O9WpyOidQiI3HaXQ211L+AROec4oMQ4j2qZJ02vGqpAVj/XKh5?=
 =?us-ascii?Q?FTEk9S3hu6PkK9o6O22SjRSOiWQmv95TLG2fs0IauC5fLfiprP7EJsxL2jpx?=
 =?us-ascii?Q?lNWntAe1Ooimag3BUo9BTl6eAuke03fdITMsjfN/xcgvfY5uRAb+xSLQM9lo?=
 =?us-ascii?Q?VefkTFma3PYvbKvErMWKRyqiu6XHfjoKxnQx3MuHdinoAzFFAHu+ghKL3eF8?=
 =?us-ascii?Q?PHPKpgX9IJerO1DoISqBC0JzRtxJ5QRD7mG0EVqiZhgzRpT22cUfe6/wMh3s?=
 =?us-ascii?Q?OAeOK9xY2eLdG7/CgIneOYatH7MXoF2oG1YQJr8cn+F+QkaZ21PK+G14JAGg?=
 =?us-ascii?Q?uwRB+OLK5EOdp2B7A7gIOj/YgVlwgoSkXybD6DMZyNcovAXuloJuloUuBPnE?=
 =?us-ascii?Q?+hnevcgF8IMgltgeSLYyK0ymfMi4vmg6m2GM63r3jlC7pCClnq3lawQocBo1?=
 =?us-ascii?Q?1FuwAeinLzbP8RvF5cBlUUf59mC9HDreXr61e9Fe1F4rz2ur8ab0UVpedMtQ?=
 =?us-ascii?Q?EzyVH/u065hZ5ymAoesg5xbKaoT6VwA+b5Sla2FsqiwY8wnbXMk25D393FEQ?=
 =?us-ascii?Q?WZ4ezVJP8b71G5r+BOD81/7Gh6XMpVCvsZvI1Jbs+tCdnHfhMu3vIyn/pYnS?=
 =?us-ascii?Q?q4Kl/rArZfZ6wCDQE3AOsiRhzBHLcUks+0eAnnpC99HPQ3Ya9JTyHcp64pxP?=
 =?us-ascii?Q?2+9mzwc5FvjT197z0yE6XroGMSq0MbJ8C7tPmDKLdhiXIE9yLyyi8za/BKwh?=
 =?us-ascii?Q?QYIxLrQOWflwvo3HIHXS9rSk7V6hmmRBrGHJBGmlVhKHF/S4pMOUiHa1nG8U?=
 =?us-ascii?Q?AS+7GHBP7mIvSYEnnyCXlAuOFl00mCbE8tA7lecZpOnRuV8MNx2tPJ97ihat?=
 =?us-ascii?Q?PNBvmou6IATcLMRVhVH9LoWavYXMtmFOsbQ11o+c+6EKYkjXTO4hwrgqVkho?=
 =?us-ascii?Q?gIZczJZdlA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: wZte8x4/OG1EKmL2XUSKtDcnqg+3Ka6O52o/E+1ZiO1P0dYJg/Wk4G+hJm4LFAnf/3Pz3ZD7QmaO14FxYZ82/IOMzMk2WWXEV4HTe4xcBsslXY0QbdSGbEFkiFQS1OEoy9RFSW0bbLuplhKbh4KGr2PQlq0o91bpYZZnawhb9Ajti3MEs33kUJpGpBULhQnQVmXvmFmPwntmLwQWSPoeKj6lFGLe9M/hKiZlmHokorokGpnmqmBhJq5OPmBdqy+UTCDau8BF22No7rW0ALciQql6tTpIGviHwtB4ohP28YbRTMoKZd2TNUDAFwxnVgGDXkiqTqknf9xqRY/mOIGU4w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb79800e-5736-46ac-16ca-08de7e5a452e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 04:05:30.0543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f1CPl44I5kg1Gresv6UzP+N7PRj4LqRccWUwaOUVy3+VR4o82PdjpFfUBjGErSkRmJ6GmcKgyVKzBmFJvzrLQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6394
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
X-Rspamd-Queue-Id: D2ECE2451E3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 05/24] drm/i915/lt_phy: Add lane_count to PLL state
>=20
> Cache lane count as part of PLL state.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 1 +
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 9 +++++----
>  2 files changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 4cc14ce5eebe..d408ccf6f902 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -278,6 +278,7 @@ struct intel_lt_phy_pll_state {
>  	u8 config[3];
>  	bool ssc_enabled;
>  	bool tbt_mode;
> +	int lane_count;
>  };
>=20
>  struct intel_dpll_hw_state {
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index ebdcab58df4a..07eab4d7bcff 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1749,11 +1749,13 @@ intel_lt_phy_pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  			}
>  			crtc_state->dpll_hw_state.ltpll.ssc_enabled =3D
>  				intel_lt_phy_pll_is_ssc_enabled(crtc_state,
> encoder);
> +			crtc_state->dpll_hw_state.ltpll.lane_count =3D
> crtc_state->lane_count;
>  			return 0;
>  		}
>  	}
>=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		crtc_state->dpll_hw_state.ltpll.lane_count =3D crtc_state-
> >lane_count;
>  		return intel_lt_phy_calculate_hdmi_state(&crtc_state-
> >dpll_hw_state.ltpll,
>  							 crtc_state-
> >port_clock);
>  	}
> @@ -1793,11 +1795,11 @@ intel_lt_phy_program_pll(struct intel_encoder
> *encoder,
>=20
>  static void
>  intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
> -			       const struct intel_lt_phy_pll_state *ltpll,
> -			       u8 lane_count)
> +			       const struct intel_lt_phy_pll_state *ltpll)
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	bool lane_reversal =3D dig_port->lane_reversal;
> +	u8 lane_count =3D ltpll->lane_count;
>  	bool is_dp_alt =3D
>  		intel_tc_port_in_dp_alt_mode(dig_port);
>  	enum intel_tc_pin_assignment tc_pin =3D
> @@ -2006,8 +2008,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> *encoder,
>  	intel_lt_phy_powerdown_change_sequence(encoder,
> owned_lane_mask,
>  					       XELPDP_P0_STATE_ACTIVE);
>=20
> -	intel_lt_phy_enable_disable_tx(encoder, &crtc_state-
> >dpll_hw_state.ltpll,
> -				       crtc_state->lane_count);
> +	intel_lt_phy_enable_disable_tx(encoder,
> +&crtc_state->dpll_hw_state.ltpll);
>  	intel_lt_phy_transaction_end(encoder, wakeref);  }
>=20
> --
> 2.43.0

