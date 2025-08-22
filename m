Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA445B321AF
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 19:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C25D110EB7C;
	Fri, 22 Aug 2025 17:47:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KUEEmtxF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF64310E0FA;
 Fri, 22 Aug 2025 17:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755884874; x=1787420874;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=G1q8gGkpFtG/FL4YFbXKJ4tU6Cvr/+/oIgRuOaMK4gg=;
 b=KUEEmtxF5cTw5LjaDiLA6tpg9+xwHoeM5d5qMCSWZFLsNQrb0FKg9Eev
 FdQlqbCeTYXCi8WoUBad4ExLkMOwqjPwAdjAXfgEUT0teOj2CFRWlJib9
 7KqEnLF1qCxgd2aLtOjJbfjJIljbgje4sB3lF4VfomEgoLy8h7wtjW16G
 ZFTFj6cxXqsg4/b+Scmy9j1FxC19qCL9gm/Igdubp/DHxsE9hAvYv87IW
 3rY2ttj0Pkm8iH7hobUQWo+kMjdmQLKbzubhp+iPE1R1ZPVqawplTdeeN
 k6TSgtjLcd3Bo7br9EyfKkUs4Mp8ZmN35n14I61N7jO75Vdqt/xZ/MtZl Q==;
X-CSE-ConnectionGUID: dAcGE5/bQpWS5o/QzuBaAg==
X-CSE-MsgGUID: vuY/QZJ7TdavJOwdU00WRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="68900036"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208,217";a="68900036"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 10:47:53 -0700
X-CSE-ConnectionGUID: LnXUwsY0RB6G04x7aRIM3A==
X-CSE-MsgGUID: 9l4hGrHASVixHOmCUiaXOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="scan'208,217";a="167993435"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 10:47:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 10:47:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 22 Aug 2025 10:47:52 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.51)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 10:47:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VoX1RjRqa001rVy1hyq7iJ3ibdD/PLRRxFeP1Rxr++UM3Q4NT6VLLc8upvRd17fW/MBZgk1n6zOJ+Ks2pyCwGIX/CB8TMudyIbVFiSLF97uVERNVIanQC5gtyAIImuFh45lgLu9EO40lwjUgFfeKoohCZrpMaW5G/OtJ0V9qVJmpHVu7nAt6vetPodRH32sJB+FWVbFYFc74ZLyfcBJCSpNqEThmQLrwte2SSASYzocsOlhRKgYPJwccoBcoZXZXlIAuwdxYknYc0fAU0l1JccvB83sXm2Gyvwni5VsmmL244/b5oJlN5dy5DEjq4MaIOshrMM6VT/UqnpcBfd99MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6VGPifbkfCP/N76vZJ/gGZZ+rNd1fbWm8rYKYKZkJwU=;
 b=XMsux4+iXT4Ilg+jcvgE0IzPhB+/BPn0q1u6zSQfEgf+oIxo35qr0sdG7K3M3I7vuioAimcbgwPigs2EayJI1ndtpZEwoRP72PouYH6d4qXm4ZaiPZKFCb7tXRmBAmgUy5d2QVtm1PfOh1I4T7iprYcAGY0Mb2JdfAF9rdVg/iRMD+QZgmdFTcUBJ9CQLAFpSN2MXVNmNMDTQ/rC/sOEiuHMeuDC6zMVZv1RPDQc8B4DQ2StUsjuUdTgAt0Y7TbiomUJjX5wXsDAWARCovKjGLx7MfAd0tfNDoyT80dmygvtVn9OVSxEm302xueW6Fv3fBQK6mDZIr3HdO8R5nPIhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by BL1PR11MB5221.namprd11.prod.outlook.com
 (2603:10b6:208:310::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.17; Fri, 22 Aug
 2025 17:47:50 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%6]) with mapi id 15.20.9031.024; Fri, 22 Aug 2025
 17:47:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH] drm/i915/display: handle return value in
 intel_sdvo_enable_hotplug
Thread-Topic: [PATCH] drm/i915/display: handle return value in
 intel_sdvo_enable_hotplug
Thread-Index: AQHcE3ufHsSYym+hJEKZ0/76t4qvS7Ru7a/d
Date: Fri, 22 Aug 2025 17:47:49 +0000
Message-ID: <DM3PPF208195D8D82815804D709EAD476F4E33DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250822154327.109766-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20250822154327.109766-1-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|BL1PR11MB5221:EE_
x-ms-office365-filtering-correlation-id: 44468b70-b50c-4082-5afa-08dde1a40323
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|8096899003|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XEVXKAOOkY7RGgShbuUi4Drhcj3SQwJcA28mW7k2fRfWrE4JC9bx6Pei2L7f?=
 =?us-ascii?Q?nqj3TTRqg+e8LRU2g4Vk/rFcklAc7w30+HSQqfafnlc6LsJp0YO2ZCk+L882?=
 =?us-ascii?Q?JOKV4lWpDRrLnZHqQwPfu/LOChMk8GLHiNPk9w1x38JuCu6NJkU/g+Gz/vB3?=
 =?us-ascii?Q?Fjn+a9hOGH7oHIZai2JiE8paXUIM3Ahv4yiWcbg8jx2KsBnbnPCoiqyoVu3I?=
 =?us-ascii?Q?iQRHw+kMtnofs5gDc4N0P5oLc7XlmEKG8rHxMjkd2nyaf0qrvRhaEFJvs/cW?=
 =?us-ascii?Q?6/r0x0VU854mzopYSzkXGZYc9QTfZ3ykqXy6m1SjmqoeZgI6L2yPFbl8Zj+2?=
 =?us-ascii?Q?NdITIWyTlxM4/x/M/j54HGblHnI7hrI243RBOuDdAzwGkebmGG4d4c2Sf90n?=
 =?us-ascii?Q?7Yge3ryU/UJjQrqcDkeOpRurskyKsxQy6hLWJv7MXIxGeFxQDY9hfSb+DVid?=
 =?us-ascii?Q?fc23Sb8VS7bTa8vWBv+cWGcKKPlvLygtw4ugvlbWugdDWfQd5FjC1E6ZTy+c?=
 =?us-ascii?Q?ac0rIMY91wT+SrI66AZmwNeb+KrcmaozS3bIMt75VuDIlJ44/xvIC1b2mUL1?=
 =?us-ascii?Q?EbtOIvYfWm6xJSblXCAOMlwiOSCLf2dL/aA+AnUhpk2KkB7TxQWUOS/MnZ9h?=
 =?us-ascii?Q?q2fefo7H87RVnoYHxSKqiq8+cE3r4opev+wWFJrK53KpMRhJ1sJllRWn820A?=
 =?us-ascii?Q?a6+4G+bFUSTQBGEf/oB6VYYy4jmLE0NNHSWWQW427rQV6Y02FTPdtI9GYIPn?=
 =?us-ascii?Q?CR8dZqIzUblRsWGPOS8rNEQcupAOckG1ulw7AcTttx9VhejyjAEfa94MyZYA?=
 =?us-ascii?Q?hSywquqQU1BbeJjqOz9ohiwhv/j0vaxWroOZhp9XwCnCVS4gVFwoSQ9NnMwH?=
 =?us-ascii?Q?V4O4L5XTomLMo6G6P0k89kKmJDlIhLp+wwwiFF427n+afQbvkYhlu5kdwF/l?=
 =?us-ascii?Q?p8c5PA8iImn3C5IEdlfdPy+qaAC7Fn2QybA6ic9q4hL+c6YWPTX5DAYHAM7p?=
 =?us-ascii?Q?s/FXLBAQJr+qSpLBomulGmOHBUNqah5uoP2vwYcGRrF3DR9U617OUY3rWFHB?=
 =?us-ascii?Q?miMY+SKL8ZLYZProcjBjH/Hdep8kJYjUP5PUKTLMSyxa1YE6A5eVgpcRkYGf?=
 =?us-ascii?Q?9IoARn1mfTYne5BjJH3+AES2XeNAjIkUaMvDkF3Ug2i9Fjf+oAPk+9BXu0hV?=
 =?us-ascii?Q?JojSqZADvdiZiqad0G85M1bd3KUafi+T+Z1k/9aDevaDSETNLMlc/Th77PTl?=
 =?us-ascii?Q?wZ6vaghXQ3MnNI7ie7NIaNXLiT23Rm2pfRTGodPiEjeDFrpc84U1n8JZKC2s?=
 =?us-ascii?Q?Zdb21FIYdp0pH7fL+ApmqgyETMvoKopOwC8kG2QHX49+jp0dc2mBoZbdFASK?=
 =?us-ascii?Q?eGx3jy5YUjYPZhXkuvlRR48ZH7mBgZx+emNkfvACLpoV2LKN+HJMf5G+EZjn?=
 =?us-ascii?Q?/wlTWj3toQ5gWnLFCX39a3wC6l2KjVTETKCGhYmypudCktzK94wfLw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(8096899003)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sEX1KtMZGwjVnkL4/41pzuIHzU3Kfi59O5Itd08KXvsdItt8u2pQLXljmbcZ?=
 =?us-ascii?Q?JZHeffOPiexcX82sVMrHlUZMil36wsGTt0MM+vWs0hOi2TQt8U8bU+2T2a4B?=
 =?us-ascii?Q?LPIUPvJCqvovRRH5QBz4STqhJ1gQtqxmP0dgpMrmZBpCkebAprxdbbPhFCdE?=
 =?us-ascii?Q?qEMykoP1hrhy8zv680fesAJBLxUiORF27eD3MzxDolLEAsUWFNV3UcXAxemv?=
 =?us-ascii?Q?wKGjfUW//+krubY+WpbzBy/+iMwoKkn+7YfLIs9ra/JIbZk4bnllbQWBmr2n?=
 =?us-ascii?Q?LVbVJXi9YFG9qaR2qNnNwnqY11WWVENLQh6LDWPSfmfIEEwq/bXF65hxPnCT?=
 =?us-ascii?Q?dNy8FtZUEgEPliGMdcs/vy+K/XvolE5Ka9jZ8JaTOiIyzrthSJKkXM76rXld?=
 =?us-ascii?Q?MUL+GzsFHa5MpTm735S+OEcic/AJd/d0ihhNyhDhgZI//nShDb3d3qICdghq?=
 =?us-ascii?Q?mYv0G3dStn6hjpGBRM/f4Aof48DJwcz0xvmfTikach6sIuVmsGJXJhCKgKsz?=
 =?us-ascii?Q?wvSxMJc3Dy5o3KMnmyHIxorfK7IjWahts7lkEQLPNuF1ikiPWSJlodYysICy?=
 =?us-ascii?Q?svr2n86dgUYybWL2YJL7EMH20NZfEkRnv4Xe19klkhTMx+YCt/aPvBC5f297?=
 =?us-ascii?Q?M9IHg9gpT+OrlrTV+iNr7eAip7YXGNEKRBo50Z+VPeQlBKwN5Tu1A7uDqS2s?=
 =?us-ascii?Q?8+Z+7sYOkki0nK7DgDQYkXB7tT0MEwsIHZlvNf2ofjRolWXt/S8pQBMwSV8j?=
 =?us-ascii?Q?BmYDh4Grtff2hJM3eF8OdtORzENR27yU5dgky7kZH7Hk57CQtfcB33uaMtsO?=
 =?us-ascii?Q?tW9Zn96pQSjXBnfkqej8VqsUwTwrZjyTEMXZAFpvc+GRvbjGCq5NoZDkCy4X?=
 =?us-ascii?Q?FGs9ZT7sy/+WOn3g9YkO23+gg/9wLoLt2DEcKHxpD4YhAma3sfYQsOf2p4N1?=
 =?us-ascii?Q?1uNva3pDcSdZhJiVRbDQ3x5jeby8/B+zfIw8ZmX5IkZfxrSMCICBWA/Z+Lz0?=
 =?us-ascii?Q?Py3rLUvD3A7ckLEfiRr5ckZtqRAXE1S3KUi6eUIEmDWo0NpyD1TMmmC6VbPo?=
 =?us-ascii?Q?dwNLn8h9qCGtQ6zsYBmwAFuiYHL2Q2Exsbmr0QlAP5O4UKFBvLsvlYq24SCt?=
 =?us-ascii?Q?3c9GrCeT3JZz4+Y+itp7JO74utH75Y3LTVs12EsoXP/2ckNFlIHIkSMQdDAr?=
 =?us-ascii?Q?kA2sB/e8CtbyRCdfQ6CbMQN9MXGG0oCXtJkKJ+59Sfb1CZNhDdXE96F8uOa7?=
 =?us-ascii?Q?zXA060mvPvrtegFnAAAgy+SWzJXTcXdFJvM7zKfTZ+QeAqrfZHHAhDeRSn+r?=
 =?us-ascii?Q?FUR/SMTBZk3o2W/TO1vfZF1HseWmzPt4WL95kfBc64qEOZbXDUeVCqoAUjEW?=
 =?us-ascii?Q?x0IZQ9t5J6HyGQvTqHEJjYnVpwR91sAxHB8lsUEK3TCFsBowXxg0HQK/Wzpc?=
 =?us-ascii?Q?4/FZZyvZVVuZjCPynNTb4LxR/W+X7V9nnONqx2t1mC0XzdICTshNVygso1mm?=
 =?us-ascii?Q?NVp1e5UcDDqX4Dr4a9tZCwi+6JygcsPbIGhW3w5ao4Ycd4s0OUw+BAr6nCUC?=
 =?us-ascii?Q?1L1FGzEC9Pyr+4mEijFRlODNwRkRPbgfhJAXysbvn9mIcV+m+67eEI3gK8vc?=
 =?us-ascii?Q?4w=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_DM3PPF208195D8D82815804D709EAD476F4E33DADM3PPF208195D8D_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44468b70-b50c-4082-5afa-08dde1a40323
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2025 17:47:49.9446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Du3V+HUynbqNelAd46yTpmYmbFu5gMcoCvDcxYPp92DtGlO3cmU/NFcLw6jt7JxzS/Eeaj4D7Yin4eDSWnezhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5221
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

--_000_DM3PPF208195D8D82815804D709EAD476F4E33DADM3PPF208195D8D_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>Subject: [PATCH] drm/i915/display: handle >return value in intel_sdvo_enab=
le_hotplug

The subject does not match what you are doing in the patch maybe fix that .
Sorry for the noise my email client seems to be acting weird.(may still not=
 be working right so sorry again will probably be fixed by the next reply I=
 send :D)
Other than that everything
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>
>Report in log if intel_sdvo_enable_hotplug failed
>
>Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>---
>drivers/gpu/drm/i915/display/intel_sdvo.c | 6 >++++--
>1 file changed, 4 insertions(+), 2 deletions(-)
>
>diff --git >a/drivers/gpu/drm/i915/display/intel_sdvo.c >b/drivers/gpu/drm=
/i915/display/intel_sdvo.c
>index 87aff2754f69..99a5ef1401a8 100644
>--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>@@ -2052,8 +2052,10 @@ static void >intel_sdvo_enable_hotplug(struct intel=
_encoder >*encoder)
>{
>         struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
>
>-       intel_sdvo_write_cmd(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,
>-                            &intel_sdvo->hotplug_active, 2);
>+       if (!intel_sdvo_write_cmd(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG=
,
>+                                 &intel_sdvo->hotplug_active, 2))
>+               drm_warn(intel_sdvo->base.base.dev,
>+                        "Failed to enable hotplug on SDVO encoder\n");
>}
>
>static enum intel_hotplug_state




--_000_DM3PPF208195D8D82815804D709EAD476F4E33DADM3PPF208195D8D_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
<b>&gt;Subject:</b>&nbsp;[PATCH] drm/i915/display: handle &gt;return value =
in intel_sdvo_enable_hotplug</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
The subject does not match what you are doing in the patch maybe fix that .=
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
Sorry for the noise my email client seems to be acting weird.(may still not=
 be working right so sorry again will probably be fixed by the next reply I=
 send :D)</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
Other than that everything&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
LGTM,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
Reviewed-by: Suraj Kandpal &lt;suraj.kandpal@intel.com&gt;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
<br>
</div>
<div dir=3D"auto" id=3D"mail-editor-reference-message-container">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;" dir=3D"auto"></div>
&gt;<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<div dir=3D"auto" class=3D"PlainText" style=3D"font-size: 11pt;">&gt;Report=
 in log if intel_sdvo_enable_hotplug failed<br>
&gt;<br>
&gt;Signed-off-by: Juha-Pekka Heikkila &lt;juhapekka.heikkila@gmail.com&gt;=
<br>
&gt;---<br>
&gt;drivers/gpu/drm/i915/display/intel_sdvo.c | 6 &gt;++++--<br>
&gt;1 file changed, 4 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt;diff --git &gt;a/drivers/gpu/drm/i915/display/intel_sdvo.c &gt;b/driver=
s/gpu/drm/i915/display/intel_sdvo.c<br>
&gt;index 87aff2754f69..99a5ef1401a8 100644<br>
&gt;--- a/drivers/gpu/drm/i915/display/intel_sdvo.c<br>
&gt;+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c<br>
&gt;@@ -2052,8 +2052,10 @@ static void &gt;intel_sdvo_enable_hotplug(struct=
 intel_encoder &gt;*encoder)<br>
&gt;{<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct intel_sdvo *intel_sdvo =3D to_=
sdvo(encoder);<br>
&gt;<br>
&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_sdvo_write_cmd(intel_sdvo, =
SDVO_CMD_SET_ACTIVE_HOT_PLUG,<br>
&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; &amp;intel_sdvo-&gt;hotplug_active, 2);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!intel_sdvo_write_cmd(intel_s=
dvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;intel_sdvo-&gt;hotplug=
_active, 2))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; drm_warn(intel_sdvo-&gt;base.base.dev,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;=
Failed to enable hotplug on SDVO encoder\n&quot;);<br>
&gt;}<br>
&gt;<br>
&gt;static enum intel_hotplug_state<br>
<br>
<br>
</div>
<br>
</div>
</body>
</html>

--_000_DM3PPF208195D8D82815804D709EAD476F4E33DADM3PPF208195D8D_--
