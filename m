Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F52D2B64D
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 05:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69ABC10E7E6;
	Fri, 16 Jan 2026 04:29:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q0FuhX81";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D284E10E7DF;
 Fri, 16 Jan 2026 04:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768537790; x=1800073790;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EuIqSEVDYnZut4k4kdP/T2AuAMIsUWHaBXvBJEU9KUE=;
 b=Q0FuhX81vS/52cr4Y4/1qq1p4MZPSj8yV/QfeW8cupdqaCO6EA61xyWJ
 mJwLL3oJJGVlvWhSU32UPbRWonKnsV+xhBqqoE0jkkk/+n61YFKchA2MN
 pDtlF1DrmyphGfZ8f8emkyBqEutgI2wiwR2ZP0dmPrxWFIz39ceMZ0md0
 nZfSqoV6X+Q5qQn/ypQeKRJHy/Dg7QE4HT2VCd9/ZO3qtEiY89awrV4y8
 /1EnVZh0N0u1L3dWJ0BEeUoYHin1oM6ZW/kHDwidHuD695NDl7Mc0fP/H
 uk3bLTQ89nZe1lbWFlAsN76nsG7/i4KEokzWPQBKWfrtuCxM7hAZzz44P g==;
X-CSE-ConnectionGUID: aF6xqhyUR8WF/UEXOwF8rA==
X-CSE-MsgGUID: nCRu/3XjQuyp0y+PbHuKwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="69056237"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="69056237"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 20:29:49 -0800
X-CSE-ConnectionGUID: KU+KdpDWRTmJEJT9Ygj8dw==
X-CSE-MsgGUID: IpkO6zghT7unKc+gR3henA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="205611466"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 20:29:49 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 20:29:48 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 20:29:48 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.43) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 20:29:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uize9UYzL1bXd8cE57AFPeIpPgXqdyH/fPZXe7n5+WYW8eznR8wfKODFWH39clqWGbEFWwW+pG6+RDkZEXNcB04qKo4MA6A7ibiu+eJs8VoWcEbquTyagwGX1c5q3AgOF02GfWWD+Ztsb+DsdBtJaBo0U1fHj2gRI9epnA6s7+zAnLt1DUmAW3YXsnsjVSyxVg6XJD8PSXFJhTT3v62RKickMTe2g1WUiVNyjrigSjgOEAkKBi659zmMPKgA1LT+d+uWP1sf9k8vxl7Mo6oCqL9sHFHmcJgnsRgEtQ1qzPa+z6KIc+7TrrlKO94KZE/RhDQlrMBIOY44MJDD5+fGTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UIQFyqjcjixW3FxF7GIuNJQoMzxH9yYSo8g3LeaGc7M=;
 b=LJI+RkpDss/7k4JzMf36R06gJkDKAcM3Z6qOPihb8B0lB2oBWDuZpbXGQ++Mz521MJfyyqxeeKbC+nD5Oj5yFmQVfqKQvUB6xW4uXIxUef6Ykl1aXQgt2hqRo4MNWMvyszog1+XMbBhhmpwmjyjSMV3E1sl6Mke+yoebr273feYVQJ7WtqmQKe5Vdvt7+yWmpb2OYTa93eFLe4XVQlONns/qbbXZb2waH+enrAKMGa8ZS0vmL/kDX81STxzZ2J+lTe9hEG2DeTNw5xkf+2ezt9Vzb70laG2Mhl1mWuUYQpdwSfrVCYtJznarPr21/S1qBJfElAjowbfDidBz5xV3yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4928.namprd11.prod.outlook.com
 (2603:10b6:a03:2d2::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Fri, 16 Jan
 2026 04:29:44 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 04:29:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH v3] drm/i915/casf: Disable CASF with joiner
Thread-Topic: [PATCH v3] drm/i915/casf: Disable CASF with joiner
Thread-Index: AQHchhSdQTXbizjDkEGmdLgS6+vhbbVUNNJg
Date: Fri, 16 Jan 2026 04:29:44 +0000
Message-ID: <DM3PPF208195D8DAEB76E35C1BCA1BADB76E38DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260113054925.633053-1-nemesa.garg@intel.com>
 <20260115113948.641822-1-nemesa.garg@intel.com>
In-Reply-To: <20260115113948.641822-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4928:EE_
x-ms-office365-filtering-correlation-id: a6fd23fd-0394-423d-e902-08de54b7dff4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?wMf20naJ5F933nehQHjZwN11ONFKPjAUL7qPvPBy3dZEgdl7PuPuewpApyrV?=
 =?us-ascii?Q?1de2ek7iM4ZhfCHxLzpFmJi4a4goTPcPNKjkW7/D8+iShQN1CC1qTAfr6AaW?=
 =?us-ascii?Q?lLJGfWgN/ktaUZGtWKFN+E/Q0VWNjFCSiCHw+rfMUqUrNM866jqGQJ7RAwau?=
 =?us-ascii?Q?0YDgvVJr20FAsElnztBV0TOZpkQ1lV0OztR4cdCXsqSHNNAHdQuvPyRUyhUQ?=
 =?us-ascii?Q?sYmIaZLsCpojQ5Vk0lENvVgalfpjEkHCoo1kZpjWWQU+rnwaHvHxX8xIwHoE?=
 =?us-ascii?Q?R4d0sNuoPDzFT7rqRRb1ztqCwv24n1CbkmN5RWWHVbwgzBduVby1NDabxb/j?=
 =?us-ascii?Q?sFJOBwX4Dk006b7ilbWdBBiV6peTRXS/se1faepq44tQ8YuZndst/1vSpOFW?=
 =?us-ascii?Q?lucSZbZQVrScdONVQQ/FHwdvtTKkrpaAE4+Udi5wLfQrlOZW/ASzgmOlR5X0?=
 =?us-ascii?Q?knfoDDK5oKn1G0fPmaS37aQouI/6OL9V9wm2A6raByaz9fM2S920aDM/F93O?=
 =?us-ascii?Q?P2uAtNTxHECMLN32wqUyH6paTmp8fgSmek9V7txEa2cfJKCX15M4l2acin1t?=
 =?us-ascii?Q?gmolQf3OhwZDHq5IUam0HVSdVALBp049TWpBBK1TdfDdNKiXAGN7+J3VkBWS?=
 =?us-ascii?Q?MtjT836sxAMWS9lCBI6vGzIBJ+s4YdUnP9cfXJPXpDZEomZYlCWnn0WEhFx5?=
 =?us-ascii?Q?6cbr+2Fwp5Vq4z8Zauu8o1K3aEKHXnFP1jaIRLNOfBN6epRkBggjiugN4WSD?=
 =?us-ascii?Q?3LEc3RDxodXUkwYyJF9rBEMYidtH9BGmf5IBZtZ77q1NV54gzRLyTiQIy12m?=
 =?us-ascii?Q?5PbkPulW5H+V4LOYhghG4SL1q695y7O0ApAGlJ1dvgE1HxYdYUgXwHiFHRMu?=
 =?us-ascii?Q?6l3E4Eacc95TOY9BcwbhpL4IPOSOfPWl3EL/F8wD49+CC2btvxGe1JpwFel/?=
 =?us-ascii?Q?o/tOIUMm5ujjdGm6uxquQW7GZ7qPPePcO1ezoqWyAs3cFkItDkXdCMycsFuW?=
 =?us-ascii?Q?EYJFX87yTEFYt05ODzgQUjHciMxlDmGRjpiECVRVHJ1HJ4RQvAcHVxXiZuC0?=
 =?us-ascii?Q?q0F/baQdwEhYOvpbGR2lMV8/qxB9ZpBu5pQw9EsVPIY74NVvPn8CS6gg1oS9?=
 =?us-ascii?Q?HFTbi756hXpDlfGWUAbmwfPTrZYwyNeZBiBuBraACxcrNho1/IpSqh5jv3RF?=
 =?us-ascii?Q?LFifNzBb4jh452Y61ejlXLbPHHG7OnhbPe+QKTjQFlKMBbhkXCuJOxNIZVMI?=
 =?us-ascii?Q?T15Ir0w1DC3xvjJ5RYjSHDBKTknv6+bbYW58n7CKclwlCaVIM90dD3IGbuUm?=
 =?us-ascii?Q?O8/U6e6QdObZ4c8lSy7/wmQEsE+y2RFYEixCaV9eGCY9/nJoeVU87Zt4PHBq?=
 =?us-ascii?Q?YzD/JjK4DUbEYxkhPn4MyuPhqsMXy0ADkx55X1dq5fPyXzKegxayBA/Aas1x?=
 =?us-ascii?Q?WvmCi75/l8k4voLfhmXhEnqUc+DVgW/TStGoR48VIxkIyxtenLZjr+G59/71?=
 =?us-ascii?Q?t1RTXuZKNjS4qppy7sb0oq/r0IdEuCpBofDkMCTO78/XXOJWjmbXWSCZkuVa?=
 =?us-ascii?Q?6PD7ypPqBXh72D35/HM/J3tRhzTdz3uHrAxTFR5KXQrHt1Ssye4Zmr2JSEY5?=
 =?us-ascii?Q?mBP6N/pZhybWQCE/7WqvsnI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mLo0vHLXdOIFEo0Ik2LvZWes83H5mG2cgWs381NVXZaxc4cSfCXXsW9+Ow37?=
 =?us-ascii?Q?qF7lyHGX/wtQngUuFprzvYog9f1V7mPCkt2+LcYkaNogT66LfizuhidNnYVS?=
 =?us-ascii?Q?FQ2heZdbHW/fKNP1zHiMzaEJZwFIUX1HBR8RO7YYLhEXyj4mJhH1i0l+CAgI?=
 =?us-ascii?Q?E7oZyNGsTuLN43vAXs/qIbegamVe2YwY+sH17ike2aiLGe8vKEGcSEJ6JRSs?=
 =?us-ascii?Q?9/fTMwZHaeu8VLS783M/QyfSloX1ErpGWLFMVg/skRMmMjkZhLzfkHQqiAN6?=
 =?us-ascii?Q?xfHjSLdmjs/s2pAq8pWvcrL9h2gBHe311QbZk8ub9g6SZYs+DxZJWmVWK3VG?=
 =?us-ascii?Q?lD7xBML8tIm7w1p2vI28GLh7wn+dxWHogG2lKKesuBriUPao/q+h75z8smxK?=
 =?us-ascii?Q?exTOD6CH0DQhRXJHQSFFgcrpdb78whLqcB3Kpq7jSn3qMscjm9Sn2qqwVt0v?=
 =?us-ascii?Q?2p014DvVzeudUkbx2TTccD3fBLJTMi5rGCGL1TayetwBmlpO4jzoIUcEhSGA?=
 =?us-ascii?Q?um1LighlmtP75c9Gux6xIXWIut7FCLTYnxO9lI7roBH/GIoKWTG4jYGkDdrD?=
 =?us-ascii?Q?BkcNocCIGEVANru+e3qHOWfc1a2KY4c3ZMTVa6FCyMIc6bXQJDJePqXXWJAW?=
 =?us-ascii?Q?GV3IE2QzL7Cy6b4l+LjaQtmWQLIxqyagAzHSThrVrAu3UgUxPcie7Kr2mN0i?=
 =?us-ascii?Q?aJ8lXjt75RyWsnfntYmqJ1gU5YeWS3dhymgZms/GJykn+WHdFFrqL9ceSpUe?=
 =?us-ascii?Q?XkjKNikhHNwWls2joDWQxl/qEQYjYoSYcbIBruz/H5ggvuW25THmvYDwmk6q?=
 =?us-ascii?Q?9+Xz9RPEHJVOSimhlFciZ2B2J116YznBe1ZJwL9nQdjDz+PM0z3hBuNkw6nk?=
 =?us-ascii?Q?n8Q89etHcWhmReIor4wEg7Jk0XXDM9043L0mkJwZm0G8xDC1hYTaez0HwxzH?=
 =?us-ascii?Q?R0NuYE/tUoBLp9ZQqWUwRdwayjiSOhCHy347qfJXJ/dcjQeDZ9gMbsh2dBcU?=
 =?us-ascii?Q?/ygYl0DqPo8M0qdtP85cPeyVl8NNPWFTH2XHGwg6pK0XmfaUig6Uw1Cu438U?=
 =?us-ascii?Q?K4+KmVVGSYM/DK8/w6U9XnlyCfU2aLdvh9mxgo7ZO4Uk5RitjoUIP5yZbDV+?=
 =?us-ascii?Q?Cv0i1ZpacQWF2kKaEuWWOQNhs96gjk3RrCK3CjlqqefLMmjEYfTjza/SGAGk?=
 =?us-ascii?Q?l6imvDoFbMyDld8MuCsMiRleEa3O5TE4d//66K6xjqV1wNbIK3Ebg/Hv1rQZ?=
 =?us-ascii?Q?GOx6M97rg8e/6zaQh+89KI1mCf8Btkts/Sdht+TY3a+S73ab5n0xpkvvLynI?=
 =?us-ascii?Q?QE1Jx4CTNATv5sqKdsQt/2hM3SDevsuprfPKgHnCssFckCLEFtc9hlBIiUye?=
 =?us-ascii?Q?sPIRYvLzW2Cb2v59x3lYFJrLYIhmjwUtXWkM7OAgWoO6BWfIGJvSjj8f0yFb?=
 =?us-ascii?Q?C7ke6XvINmwkdgcAEy6jlqxMyXhbKteRwGsIhVnd0y2IG7lC8BWTph6nV2dP?=
 =?us-ascii?Q?6RCixGatFWSeAlGkCJkXlX/vWjh7hIoBPg0vgBZsX4jLo5ITw5PO1LKOGqIg?=
 =?us-ascii?Q?xYPPHztZMLdjTWk75BEaudjtNRkjVgszCiPV+OYAP845Yy5kWLekDmb1/hT4?=
 =?us-ascii?Q?l/cs2+Bo30kYiqHwoHn5tDl19q9MA6/W8n8sYWbsYdnpoqic/Rsr09SlMKMe?=
 =?us-ascii?Q?uB27sXh/+4O5K4fahuY7r4Iex9HTqxdOhkfWi+ySao1casEjcG893PMSIndX?=
 =?us-ascii?Q?+PrEUeeV5g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6fd23fd-0394-423d-e902-08de54b7dff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 04:29:44.5982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UbwUmC+cNv/qcSFt4VlzwxMUIMz1L2eplXXhyiw83PgnQf5ybTB/zDYDRFnFbQNCXEHg3auo7Klf2HfB3ibdPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4928
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

> Subject: [PATCH v3] drm/i915/casf: Disable CASF with joiner
>=20
> Disable CASF with joiner as it is not yet supported in hardware.

Just " Disable CASF with joiner as hardware does not support it."
=20
>=20
> v2: Replace dmesg_WARN with drm_dbg_kms. [Jani]
> v3: Modify commit message. [Suraj]
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_casf.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> b/drivers/gpu/drm/i915/display/intel_casf.c
> index 95339b496f24..63c2c94a243b 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -116,6 +116,12 @@ int intel_casf_compute_config(struct
> intel_crtc_state *crtc_state)
>  		return 0;
>  	}
>=20
> +	/* CASF with joiner not yet supported in hardware */

Similarly here no need for the "yet"

With that fixed=20
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> +	if (crtc_state->joiner_pipes) {
> +		drm_dbg_kms(display->drm, "CASF not supported with
> joiner\n");
> +		return -EINVAL;
> +	}
> +
>  	crtc_state->hw.casf_params.casf_enable =3D true;
>=20
>  	/*
> --
> 2.25.1

