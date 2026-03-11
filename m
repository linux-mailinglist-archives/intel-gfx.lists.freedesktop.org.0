Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBC3EcUBsWkzpwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 06:46:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF2C25C862
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 06:46:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA8310E0F6;
	Wed, 11 Mar 2026 05:46:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/UABdHD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980A210E0F6;
 Wed, 11 Mar 2026 05:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773208000; x=1804744000;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JJoTmjQZv5Cv/hGYq9G6CKBhIC5sIUm0sCsj4Zt6p8U=;
 b=G/UABdHDYgVXV+XBo2I4hRNK2BbID+3+ivviCVlT9kd5CUsSuhGhFOD5
 1WGuTtNDSz9obdmE0WIVezNnv4AOypYhh8j+z3I36rHv+3oNLC98yQKmQ
 n6ksRZG1bl3jgZFTSGMp0G5Qn9+YNncQK3+NgWZ4fuj6VKAha4yi0zaI8
 Y23PxRQUySXAPJ38Svd9DPB818EuqS2gRczodgees+sZj7BMFXZWcWGdJ
 /qP3Jf7plL/YEbzqWk6We9ZF/7QOpuYMYSt6IrOQqmB4jx8F5YPaN8tpm
 yQ8L646U8oWKOs8oC07j0nO+M9idrEUVmZbdz9drjh0qwNaoK9LQUaa4d A==;
X-CSE-ConnectionGUID: l/1YM3dSTh+3p7yOToKdfw==
X-CSE-MsgGUID: g04Eg0tqR62tihY5yc8/+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="84974041"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="84974041"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 22:46:40 -0700
X-CSE-ConnectionGUID: hC5UsIT1SIaeRBipDO2oew==
X-CSE-MsgGUID: K/vL8HK3RfeKedwEAWYNUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="250856908"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 22:46:40 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 22:46:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 22:46:39 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.39) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 22:46:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iPAdfeo6VcdTfHPyP6qjAihctP4LvWdoIJSdNKuEVyhUB90iFDsf2ihzcmmVlxawZU3AInBRe1JOSWFRzPNGQJ9bshAulPUb0/JRMDyzhv6Ph6sA2cjtRHveBGLfI3dXdhbQkytUAG8p3ce07n/Rk2keYwsz89pR0aHvS1f9UKZbU2TWrc8dPUPwdP/XGk4FFez5FqnmE9d/NDYcXACWKZm2R3wbnv1jDWIWCdnvmT9WDZe80wkXO6OR43ORBQj2kfjI+CuWN3TeOHrU5+/V3UTlTA1qiSsSNMt83obHuP32tbr125zzbB4FQz8Cwt4Eq5A6xGU8mKhUIRXOuyWYRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7bAzhXHAFNEvudinpKDv67CMPbHt3WXJZ84lXS2PaSs=;
 b=XTT9kc1xAbyVjy9sYVsyRtRUZJK3+XzyToeqHPUS8jMR+RxvtA6pkhA3JGV561wtzw4SHTMNPZTbUsWwlvl+/9N7SBTFojSDvIBoHUYwlEi4hSsKq+y/2G0grkaH/juhxyTsbuotKivPSguYev7BDMVX+wrB7Z5OgYD+CtGp4KZHgo2/vZNFsYxStqKw1wnYEYW3975Linm/lzaFv2ka89bXstGija8AXSEcODW60AwiAg8l4PEshsRJfy5GUNeCQpInSX+5w8pVglxlfN5TFuoBXKTme20NrC0O65bHFUA1iQloDVw/fM1+U3E5iirxaY1nykZl+9kizrZHXJoqFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH3PR11MB8776.namprd11.prod.outlook.com
 (2603:10b6:610:1c1::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 05:46:36 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 05:46:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 19/24] drm/i915/lt_phy: Dump lane count for HW state
Thread-Topic: [PATCH v2 19/24] drm/i915/lt_phy: Dump lane count for HW state
Thread-Index: AQHcq9pgu99m+XDVY0GL3pxhPmg8UrWo3Mbw
Date: Wed, 11 Mar 2026 05:46:36 +0000
Message-ID: <DM3PPF208195D8DEA86CD05D86E7A434E0EE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-20-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-20-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH3PR11MB8776:EE_
x-ms-office365-filtering-correlation-id: 8949cf6f-0166-4b92-fcbb-08de7f318f1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: dyAOq2h02wT/ZEbOU1Kb4tkrB24P5SwsGyxM53zotoEm7/umfvJvpU4vbhrfyYv+Y9WliJIwe2JuIQhdvcygayB07j7WX9LEgiCjfchSHvKa25mvJ6E8vtfeqY6XM45tkAfTKZEc731TJyxjfxw2PGiAzBA/bew1mr4Dxmm2datNENp+Sk3zVLOubVppiQ7zx5IzASroznwPqZJoQ/ox8n+epZYMqJwP7PhxYGyzcgv2xk16aOroiZzW861S9LejL48rDBk11PuKd+IMAjdcF73sygdV/RR+IGbGe9VkdhPWmYS7p+9l/l2ISeW1qQBANYt/SBAiafSyqAUi6rgexXXpfJRK7oDGUUvwoClKGjlocVN4HYCbbQ6cAIlw//+EpTKhBOC0WFzBSPgeibcRYBpwthVCic5pzMJnfKoTz6I+jeXsr2b+oLuhVPV61gA8mpJbY8obPbRcoNYXvSPKT/0EohLMBJ9sPr8lxC2kHhWqzw+yhH9e8ipHMkYSdIs6ZvixuNaorYpnOu3kEfXqZZs9p+rVmzB2xRYnmhbdfHjLJmE2gWZSLtbx9pvVGMe+VVammRPgb4gAAGuOXAWddgMnzoFwK81xZ0EWpc5WtI51bnw3Jw3A1WvTCBA7qynoM7RzW4KO/V+v5vAN1la+J7LEUC1N0lZawESdS/L/tt/nHFxmGNTHmMrjI/h3jTQ/T2UzMX9558tnha5E6MVrhLsCuDouc+SK4kiNFd2lTpT54J3LeaW8bmf32GAeu1azzI7r8dVRS/fuPnw7A6WujKc4yrl4vjPPXilTAfm+5t0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oIeh6+YPCJk9ZtV8wD6TRLpzypHS+jq8ZMKOk6eU1268LC/5pagnvhPcSL35?=
 =?us-ascii?Q?7w2JIxcA2QoW+IaLZ8K3pE8IybfAkesW6CitNFpMmihMLYtfFS21xDW/ja/Y?=
 =?us-ascii?Q?T2xWEVwHqO5x9BvRJAptyjlIpM/wTD8YmDjg3tt+oA3aamM6/XVMCIuyHVyG?=
 =?us-ascii?Q?Dcg2RsOdqmtBoTifcvjKYwMB0nRLD671qmFoUc6SQFciOjqzNQXYzkKleNmq?=
 =?us-ascii?Q?MModrjWm+brMThmoAqv+RJaiMbHnYghiv/lA0oRVTVUsiK36XSpHNSLT84QS?=
 =?us-ascii?Q?F8VMhmpKGIOIa0WarHz3MZ48ULN7biOM4Zbtp6U2r0pit/HsAJah4tvxNbXj?=
 =?us-ascii?Q?kTZmpiJ1sdmG2C0wXyx6Oglr4uo+OQLoI3hsr3JpASSSF92zU2eOHmdKCRGm?=
 =?us-ascii?Q?tMcKQSJrKDzIVRnXyoIYUjNowdXUfm/k9487Ir5EGpJ3wB1zhkzy0XcgO/ej?=
 =?us-ascii?Q?LXBIA6zizVviUQRLAN/lpRA4pSCrHU0kCMDh2kl2PUON+H3FeaXgP9S4ijzI?=
 =?us-ascii?Q?DKX4eI2T+VItANJTJ4PZksCviYIvSV16di4Ac8TqoFf80kpZtmFFXsx00aLk?=
 =?us-ascii?Q?joU1e/ZgOHgu7BNGDnExxlynzgWucYkyexZgYD+gShIA+07FiTFWXddJUWW+?=
 =?us-ascii?Q?tx89YK6lB7m1319bRW0ixofw13bm3gZHEESVD1Kn12B/yI5EioO23fKZPmSA?=
 =?us-ascii?Q?lPh3MzhOpu6YIr6Pe8eZ3aU1AVWDnKHbCY8ouNbpW51O+DlZHrE9hXhTz6Vx?=
 =?us-ascii?Q?30vkdUx+q/iOvoEErdI+izvWE3QwGyfDA5uc2cjj58RUZqg6SS7mfuMi5lVM?=
 =?us-ascii?Q?klOwpM9icy+aK2frbHsovQcJPb7KF82kaVqeQCkSCqrEWJSSonnweZ4uRjdF?=
 =?us-ascii?Q?ZtA7/wmTpMDaLqTogI9cRrPGz2WnGC93E8ZAm9tFRtaDiYqpMrLLAWvk9qOz?=
 =?us-ascii?Q?bsQNyAqd4HHK8KtbpEgQCwwsJyAW9ePdTUrW8SgQMu3JflhJJjrJ6EwiQ6Vg?=
 =?us-ascii?Q?L3Yilf3U/pEo1qvglWXepY30u7bsg/mBkZM4FIL4QoBjx391bckSMQjnKyZ9?=
 =?us-ascii?Q?kyO6GdlYU+MU87X0xvimvVfBBYPdk9mmaTXoU+SLAjIoPkEJtaUarQk7SW57?=
 =?us-ascii?Q?I/cqgBa4Dps797EcKt/jIIQ+Jw58AGRhZgvA/QnpZT1zhR6uHqd+ZT8HB/5b?=
 =?us-ascii?Q?XckM1TV7/JzaF6DcdOjdQsGKwgfFJO8TUdkhD0kZRxDIRM+8B3nSZmeUnh//?=
 =?us-ascii?Q?MyIRv8bv4tNcdMq8xxXRB42u7RJuZ72lztwfsRJEs91s9RHG3yLqZXMWtoab?=
 =?us-ascii?Q?MzWOs5ZiBMhifyLg44IeTlzsd63ICimtGJGgA4GIMQ+b6F9Gm6dHwMXbgz8G?=
 =?us-ascii?Q?J3XJG80cXZQLWlDP1QO+BlTeI9X+x4dp8+pgwgA9jFv8W/eqRmj0kND9b4BF?=
 =?us-ascii?Q?38KfPuvSy6W78qPpwV7xlg2hyR0h5CME6GPfEFPvq6H/Kmvoc5wZ2xQduT2H?=
 =?us-ascii?Q?Jr8bGbEUY+dAesYPofBqr8yTo1EpV8uTvt3n48cHGz7xUEk/K0wfsQquVRdO?=
 =?us-ascii?Q?MD1upzAoOE1lDnX3dNjCTFFyiOqCPTFue4PL2lvwSH/2PopXbX4N9x6c5tC2?=
 =?us-ascii?Q?I6nu0iYRlVG+MyfyfccxrR3uerOb5wglQ0I0m730tlUoUJIxKuB15AnlaWJa?=
 =?us-ascii?Q?XujVIN8UxahOyNkyTh77s6p7ZWvnUXkdzxMr7UafNmztPUkhvLQ2/Pc9i35u?=
 =?us-ascii?Q?OD43WaJeQw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Vp9FImqIMOfm/1piTOceEsxU4mJ59DKGtioPY0levms+uY8T+TjZp0+6pkDclbMyip2nlTIdkuKIdYmXxjsf/hQTNWq89v2Om3uLZHQP1WG2kn7ymhkxv2ChNSi8fD1j2jCXzHVuuO8dyM1ZgOBs4nwzrZCI7iW3ORGF3u6N0irnXpA3dO+1LoyPm7Wd3pVDcAOZ0zWIwd3RjBZylGsAIFBA1SYtXYDC3Eh6+exCWUQkD4kqx6t9z4ZwKAmI87B//qThNLlpQeRuDB+RatWf3admlFTo7Ux+Lc31rM9XslCd99QG3glvk8kgPiOVxuQGKOWMacFnTrQEsSllp35hzQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8949cf6f-0166-4b92-fcbb-08de7f318f1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 05:46:36.3920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1YAEkmLrZ9fei1+C28opLEdxGSgfFWDMNYy/gVS66/Z92jv4kq9pDP91xULkVwtBAfSUWz28k5zXXxTPnn0fLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8776
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
X-Rspamd-Queue-Id: CBF2C25C862
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


> Subject: [PATCH v2 19/24] drm/i915/lt_phy: Dump lane count for HW state
>=20
> Add lane count as part of HW state dump.

Nit: Add " To increase debuggability"=20

Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 3230d2e28d9c..066e2f16791c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2152,8 +2152,8 @@ void intel_lt_phy_dump_hw_state(struct drm_printer
> *p,  {
>  	int i, j;
>=20
> -	drm_printf(p, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode: %d\n",
> -		   hw_state->ssc_enabled, hw_state->tbt_mode);
> +	drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d,
> tbt mode: %d\n",
> +		   hw_state->lane_count, hw_state->ssc_enabled, hw_state-
> >tbt_mode);
>=20
>  	for (i =3D 0; i < 3; i++) {
>  		drm_printf(p, "config[%d] =3D 0x%.4x,\n",
> --
> 2.43.0

