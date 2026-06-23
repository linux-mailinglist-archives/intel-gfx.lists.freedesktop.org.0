Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +Iu9HuMSOmoP1AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:00:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C76A26B414C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:00:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HgHeR6ec;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D8A10E93E;
	Tue, 23 Jun 2026 05:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E18110E93C;
 Tue, 23 Jun 2026 05:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782190816; x=1813726816;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VTOQI0O8hP1MTEH8w1amnbwEOwesNAJ2INTbK0Dln9M=;
 b=HgHeR6ecxqI/Q0s1cEusNyjFuX/P8bYvYWPlV5WLK3a3Woc20Exn7RpP
 lMzG/0OjXXDqNtdzKK146G5OMZ6vxr+/l6bZ79JsEFBr/WUGV+dYAHRzr
 Y85aWco47glIJVGScZIrH7y2CTriA+N91RsFtwHoYKra64uMzj18BMtAo
 o9zDFBZY+naFMDfISIqKWR7LQ6xv+jYpuqNmou1wd28dqHYzRKl/0yrDq
 usRiaKmbBX+qi68muIj3Q/EI8t5PFCKdBw9/vZST962RIG1VVdoNhackM
 haHm+OEqYbfKMONWsPnVwCqq3xhuNPob0C/UrdJc5Okslwgtdg0NlEhct Q==;
X-CSE-ConnectionGUID: SKAvnMeZSsKRLWVCqZI7GQ==
X-CSE-MsgGUID: xWvdQk+qSQifayoaT25BvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="100475983"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="100475983"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:00:16 -0700
X-CSE-ConnectionGUID: p1S3AZnZRGavdb18ChmI8Q==
X-CSE-MsgGUID: gOijZJXeS/eaTluhytb5tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="273106682"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:00:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:00:15 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 22:00:15 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:00:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N4A9uCjuqKDI/4a8lVD2jHyJ0Q9z9fDy+kdHGS/xISA0z+mEBq+JexUylvyDQIDXgz6HXvkhLNshH7J4aFsAFrX8x3ngp25n2wxdibbO4o5qCuXMtlS7gGrW2i4kDZnDFCeqZCUHQbZeLtgRR9lAxdNsC2LPhVZKBFZ2Sex4O9Ox3fafQ88LJ/zjx7Z9b12eVUL3MO6efzSK00FTzLopDIxUO9w4um8Vb25+/yeiFST/rew1wvSGmyQAinEkfUxE8noUd1OapDs+1+Y3Y4AyTYr3jlHTdNMW1VZsEtcWB9s17h1Nt2hDwJ8haViEMDELiwglK2PoG/DyGyW1Ic/1iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ny1dvKwnKhE1M2RDRs4VpvBWKDCOy7eOAqZXn10N1K8=;
 b=tC5oPLpwLwdGehuLNEP/4WmQEqSNoeX6lc1CsWDiZMGz/8iMETyeVfA9vTKBGs/quFK9Hbde+T5RnZbX9u4v4YnZWebHtzRZrY7muLJkLJbo1z233AWF+MeonzoKZ3t/2J8b6hAobliI3/OxQtftuA1fGF+Q9iPjGzwqbCTwF21rHnir+NYGRJZnuGXsf+DK9VPaQugtetNOTlEGb8KSiXW/5BNx2z4ckEbBZEg+YMX34UdN4tiGhKt+Pjf2glODjVHTrSWKYUkNBX0ASSn1PgmIjmITZpgJcNz8eKwQD4V7Dnm18XaA6mRDcM/w8Xe47xyUOxLITJZ93bYlveVg5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB6978.namprd11.prod.outlook.com (2603:10b6:510:206::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 05:00:13 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 05:00:12 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 0/4]  DSC max delta bpp support
Thread-Topic: [PATCH 0/4]  DSC max delta bpp support
Thread-Index: AQHc/+C7V6A2VdhMd0OlBcaF89PLy7ZLmmJQ
Date: Tue, 23 Jun 2026 05:00:12 +0000
Message-ID: <IA1PR11MB64672A1C0531552103C35F0AE3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260619113905.1413453-1-nemesa.garg@intel.com>
In-Reply-To: <20260619113905.1413453-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB6978:EE_
x-ms-office365-filtering-correlation-id: 8de12757-fd5f-4735-07f9-08ded0e44eec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|22082099003|18002099003|38070700021|11063799006|56012099006|6133799003;
x-microsoft-antispam-message-info: qLtnl2Ulmf6POXmsp1BU9MArPSKXSkKyHnHY1hf7uvLn1CZFM4YBhITJZZ/7+8jaH8Q7DMYSaoymh6dhj6BLKXX7BPhxDl6cJ6lbkeWTKqySnYRBCSMJ+KxeKV9W31isU2rLAXDKMnzpndtAQSuv3bO+jWCl/2f2IymrBgJViUYX3rjerhvEmyefq/Hd34PnFkv1epCOrQgOYdgeNEQV68BCvX+ZwgyqM9jkzD4kk9dtt9Ih0IwBVPLEJqF4dvtF07CQNYDeEAjenzqUC4GfetiPC0DqHPYH2jDq5A1UCaKA30ZyXL3DM5hvM2sz97EDfH50fM3abJNTcrF0uDOLRGYIb6rNVjVLTaXOPD+XS+uTTClVQmyCeMx6XAuTZnLeXvHzz1XD+Leu2xlNJ5exS7LtzZ8SYRJunycLGZnEgAzj018gkchhEy81+15uzBLleLE51Heu1FzW3Z9z0acdlLdIYmDEuHkAnxFtM2GC1wcN37qRAf9gbgQtdEJUmTaKtJ3lK82VCkF7MZQrmEVanKH2qUjkSOwmbVFsRDP+0k5VBsCKDf9jrbhjTs+CbuWEQ4Tm0DT5r+1kjSIoQDAV0q5FXJEghi9ZNJcy+hrIzlwnyHycHcdmfJQXbm7qgxDKRyh05hG8Jq7V+ah5DzxdnnWEfWfcgHBYlRdeAnyvlfpaYU8j7jaz0TAQwWDGNzICBsjmnMUUB7rF8H/Rpw21Dw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(22082099003)(18002099003)(38070700021)(11063799006)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VcSrawNvhAjExpP6i9fy44/LdWNZhsn7/GLwDuMCJEDxsfxbyLiO1j/kkpN/?=
 =?us-ascii?Q?UuY/NNQtQgjJ66ZM21Okn2zumb4dzyJgBiIQwioI6kQs0OGKUZ3U0EZqNtXr?=
 =?us-ascii?Q?8VNi5k0JlKV9wV8FyiZ+bj0tLnAxa2xFb5bW6OPSyB3K7+VRULGU5L+C9yp2?=
 =?us-ascii?Q?4oA+HBH7dPrqpf95CxFHvmFJct/CW2v/1l6yUsfI1aMSscSbpAKDPlq86GRy?=
 =?us-ascii?Q?Fll+XRgbxz+E+3JibH3sRnI4h6C6OtAGgL4rFArA5EwzC0ROEzHcOgKMrHJ6?=
 =?us-ascii?Q?tYfTD9OyFmyF57CGVEUvieJ33yTc1+Semg+P3pJzxjYKdn7JyqWz5n1kI6Mz?=
 =?us-ascii?Q?GcjzUAB3UfrzJ1Zxc3Nd1j/5MS18CHJyk9wiJ9sDBrxin1SHsnFK+4e0Flmk?=
 =?us-ascii?Q?5V8NOaZKLogoJWX1A+G4wUHKA11A92rZbaxR/VuenHeLFrIW8KOzThpzlqOa?=
 =?us-ascii?Q?nyMNbp2qq2/aKiNQ1ISYEYg8WlhV0k6km5OAlJYx/GGIM+pR5rWd3AYi6PYl?=
 =?us-ascii?Q?wXdSGsAZ+61ZraMyjPBIG9x2nl/jJTAuytryC4J4JhxWZgF4kWJVhbOyfrH/?=
 =?us-ascii?Q?KL84O123ob4veg8WhPYZZURmLK6y5f4BZL5+/5SZPscojyYHLrFU/UckE7rR?=
 =?us-ascii?Q?VHakDlL4YshHu47QEhUIR9zfqLF7eoy5uFUcM0A4+iS3MNZ+KpHf+280kw2g?=
 =?us-ascii?Q?zV78ERNPV0EEGcUbOUqK5TKKEgI+hZUYOlcoyaseWrEuJkvwcHNdAGZKmGPr?=
 =?us-ascii?Q?wNK2JPQ3EIoEr+hmWszr2MjfFjMgvdhMI6tt73i8bVFGyd4C+W57YBgLeWjh?=
 =?us-ascii?Q?KF0fQASXfyXjThZn0ogvIGyyg0DkXS17jdseLQevp8JOQ/bV0TtEmM+fvYI4?=
 =?us-ascii?Q?2UixJIxSqyTXIQiq+048hF3CGsz+HPBquVyVEkMhqve2+wcdo7qgPNcReQ0d?=
 =?us-ascii?Q?C0O1jJQvPjbgyo0cc3QUhZDEY02Xxt+1C+DXMUiETExLol4QHc+m/9R/Zfcw?=
 =?us-ascii?Q?EHPvpKnkeOQKsifnokdHRTdQpmgUk4m362+AkHLc6v5pz7aJFscX7QQ74Vd3?=
 =?us-ascii?Q?Vct057VkMA+zk9XMnmzV/s7iDnwlk++LQDSxsQJLg4Kyt8U+A5iDKkTAbhI/?=
 =?us-ascii?Q?TetN3FKBjvwp/Jh+1c8pkWanW++Xody1sKrGFWgOH0qLRTEExKy+n124qEsW?=
 =?us-ascii?Q?qBmK4SwzqXW7G37weYqgo6hZXxG0sGM3/NhzX2aZmuD9Sn3CmaNYx13e5mem?=
 =?us-ascii?Q?JWrbz2fEwwHI5MU2Nh1JaY83ps4eQ2SJgba1XmIAFB4ARK1iK3AJxhaJFiWa?=
 =?us-ascii?Q?E7BL0jlMVAcXkr74JfpX4Hk9Bhp3Pvia2Ohbhn7XMc4gTn0ncU+OPoKdU8Ms?=
 =?us-ascii?Q?8+XkYOunrMpVuLqF4t21ZGGEDiwSB3kaeymi0HfMONR/N0Gpfhnrs8EUu1G1?=
 =?us-ascii?Q?BesZS76Ey+GlACkUAkNaNCM4tJWKlVvHT5TaDmDPO9O6JSpeERePhmeoqlas?=
 =?us-ascii?Q?0WtPfzKy4Tki+RDaGwYYDeeQxLK202c6Uw6icGV7JuGKzZZsf2r9bdsqBo7M?=
 =?us-ascii?Q?KZHHTmMerwNIddd6aJ6n8QAmTKEkbozFV54H3fa1MRYsMaDYeSiIXeT2QJe4?=
 =?us-ascii?Q?rJU05rxtv7UhY/z6IFFOw4ZQH/ga6HFQIFrr8wjENCd1Gt+nHyU9w0WQ2CI5?=
 =?us-ascii?Q?APsUYt/ffKWrFcPjAjtssPI9CtSajaR32UR8/DDE9KAQFV9O?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iEbIim4cCEMg8h6LmUZS5PXzLoghePr2c+Kc06MlVVTuwfw+XiLYYssnSD6tVFnnnckXzb2J6Ildvhwjqj/bMikiHSmYGvBifuyx/MF5nc45Qk5GpPKPQQ4Xhj5Wv/9E+KOE/ZGMOW2XNHKYtyWXGKz4CmqjxjXkqVSYIE/E8Zha5lf57PAMp7XWDSwsdm5STXi+RRVwcB1jX0+0lqyCMujWBuN7rvYDrUwRC8vLrwAHdWvb71P1wGyKya4VlINQH0PK1oflulTiHjocAdqlXCvKgZTouikLQiRoZU+Mx1Auy/VrJ4P7Q3/7VE9f6ZTOppx4tbOKjGp6iufmJUvQrw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8de12757-fd5f-4735-07f9-08ded0e44eec
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 05:00:12.7769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AkQ3LsZIFeXL2ZFBCou+0FwzChnHdzoNTO+FKZM7cjn0MP1nukXZn5BE0LBYCzzOnIhNPS47aM/CAQoYBdM9Ag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6978
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_TWO(0.00)[2];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C76A26B414C



> -----Original Message-----
> From: Garg, Nemesa <nemesa.garg@intel.com>
> Sent: Friday, June 19, 2026 5:09 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH 0/4] DSC max delta bpp support
>=20
>     Some sinks exposes DSC max bpp through delta based DPCD fields. To
> support those sinks, add DP DPCD field field and logic to decode the delt=
a
> value in bppx16 format.
>=20
Hi Jani Nikula,

Can you please give ack for this series so as to merge via drm-misc.

Thanks and Regards,
Nemesa

> Nemesa Garg (4):
>   drm/dp: Add DP_DSC_MAX_BPP_DELTA register
>   drm/dp: Rename YCbCr420 bpp delta mask to native
>   drm/dp: Add max bpp delta computation constants
>   drm/i915/dp: Decode dsc max delta bpp from sink dpcd
>=20
>  drivers/gpu/drm/i915/display/intel_dp.c | 43 +++++++++++++++++++++++--
>  include/drm/display/drm_dp.h            | 13 ++++++--
>  2 files changed, 52 insertions(+), 4 deletions(-)
>=20
> --
> 2.25.1

