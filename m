Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACBA9E4D9C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 07:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC2E110E385;
	Thu,  5 Dec 2024 06:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gid2gOnv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E2BD10E383;
 Thu,  5 Dec 2024 06:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733380156; x=1764916156;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0qwC26Fwj28WeltJkgilBOoRw3/LYlz9lHbDaf9/09I=;
 b=gid2gOnv5FOp7bRflnSFo/3LEcFoG/ah9Wh7VAjW/Nu7Vb922BoUZKJl
 yxwChIR7WOgVA4iADEtOVYsbAAYSx0kJCs98JMRMFocUAUzXgpNhhNPtu
 UxTXHHRs6n8N3iPt8lmS0UlPy6doQeazlkruH0R1AhXaQSzapDw8XeMiW
 2ljR+lTswuWllvUFq7tYMltaxJi8Vuk41zFvRYRVlUbOyw4dTm8FNHZoX
 pu2YcDg59hOyhZ7bATxWbLdi+kef40l/Ep+bmEqD/6lwhIy3ppggdGAqp
 HYCdIVF8VGER0gDYiviOYEIlaO1bWd8Hl/I+ju6VxpJmCQJAgj0mKYnVC A==;
X-CSE-ConnectionGUID: 0vZSQDDkSl+Sqt4F+dhWdA==
X-CSE-MsgGUID: rUlB57/QRbSXDyU6IxsvxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33011612"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="33011612"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 22:29:16 -0800
X-CSE-ConnectionGUID: KTUfah7FR8u71Wihd1Gb7g==
X-CSE-MsgGUID: c2Xry4N0Tgyaxc+e/plHRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="98067866"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 22:29:15 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 22:29:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 22:29:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 22:29:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tHMdNb6h8wOSES3kVspxjw8Hrr7SomuVqgS4zvNbkIBeY38/OgF4qdR8FE2o2AmqUE89Y8/w4ZYiWsZ23SRK1j/Fx7TTl05/dtibimkQKCU4UhJMP+fp1JEKMcCFhQvlxEXroBk/Pr8LdbdUuyzEAJ6AoxsfbQ8ABD6a8o1Z5eL36rIqXljb/si3BZz6ERHbnj8FWdhj33CcMr7OylbsZBIAKP0rkYFc1u5fwY8hwv+H4Z0rd6tFhFHHKwblrqN5rL8dXM6ExN7AfrD1CZb6k55nDy+FddbYEfS48DZDl3ZuRvanmNokVINAX5V8qNdH3V62gbJO12S1WTuwS50KfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XhFNL4e3mJ3qjI8m01UNkocGRZNwnKOuZs2lO3dhyn0=;
 b=k5ER1jMWg5gqctLbiF+mk/JXmfOflwuCjlXlLDF8q40NGYFUp0EFjC1IaIPTciu5snLLGN0ToBt+PUbPZEcgbW3hZS5ENS1SQXxCUpBc5zuJwbJt+qi7MnDT3NcvktJ1zsFNSICBIp02Fam2IHtM3x1wk5khsbsrNScbtj5cxDhpXMG4sPKWq/ziAG1/1BXWhy/yPcApfD++oSwPmSW6HN6eCArkjjpyNvS+/nwyG1h6h8nS72qE6UIEpiUgvotUPcaWtGoURNyriiTpqMKk+UwJMUnOs5k2SxQTWu2A+qIC8oo8wUVhntNGDegv9CRGfLccayeh8VMNXIISR0Q3Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB5799.namprd11.prod.outlook.com (2603:10b6:303:181::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Thu, 5 Dec
 2024 06:29:13 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 06:29:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 08/14] drm/i915/dp_mst: Use helpers to get dsc min/max
 input bpc
Thread-Topic: [PATCH 08/14] drm/i915/dp_mst: Use helpers to get dsc min/max
 input bpc
Thread-Index: AQHbRi5MMYhX6ZuNskavlPljPtH4N7LXMXLA
Date: Thu, 5 Dec 2024 06:29:13 +0000
Message-ID: <SN7PR11MB675002CB378BCF11A7C8A1AAE3302@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-9-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241204092642.1835807-9-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB5799:EE_
x-ms-office365-filtering-correlation-id: e02daba3-8efc-4456-43eb-08dd14f622a5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Sz2mXFz4VxkJcNmKWPtdPNH2gj6EF4OMvSu3CSWycNjau+qXqSd2s+1KsaiS?=
 =?us-ascii?Q?3ZqPaR1nBazFnVH1q/iQQD5dVGXSTTsk4DKeEqEHsOwtCMtzrFxWBC9yBYDi?=
 =?us-ascii?Q?6CYCb2PB8Tgz0QKCnMKi9FQDLYw1oR6pM4Y4k1B61i6+oJ/an1YBRPkuJOoT?=
 =?us-ascii?Q?Yjwa3UGv+AiSevuSBUBNLe32jk6HfyasVLV5nVtVtsbq3NNdP7dv3z2+6NeP?=
 =?us-ascii?Q?nqCpWqDj7ElCCvsdxP/OE4HNXWOp9OP+c2zxTJciDUTokrDV7Adndmj66DfV?=
 =?us-ascii?Q?EFRWnlYPsQO+H0Ja4Llz/8wR+3T3Sx6SuXijN4kEfVGj3GsdfkVBuVIXCVPM?=
 =?us-ascii?Q?cIbkiDR1ydvg0rfOcy0WGc+bI3+5Q7RQ5b72ZOG6lpawhKhhrB4sZiCvbzaY?=
 =?us-ascii?Q?fak0mElcPV9Vy6CZMA5XMTO75TV0RHCVGIqMDfXhvGGb4IT47wzy5SBx7f4u?=
 =?us-ascii?Q?gL8zuZW9BjehovawpAbvEw5ntzr9mbLoiZhciLYCVdJho6yv1xFALkYVj/uP?=
 =?us-ascii?Q?VLIUXwJSBSCRnoWCVoB4LdyShoGNrbLX3IpnlJ2/yPzxQaYQ09oT+yyYS993?=
 =?us-ascii?Q?vB+sm+T90eZwpJBrMJn6c7aTBF7C8IxOUFln7SlDzpBU/lfIp9DPXKXI3Wwe?=
 =?us-ascii?Q?Mij2yBfYUYVeKuVOMch0qy4LeGK9nq1KIV875dKqOxIJ8T3ibFoluMBHyXky?=
 =?us-ascii?Q?QpKK4eRL8PKLcepi5JK83eI9Ms4cFxhuV0kYReJI3tKWmrKC9HvKwUYe7Syp?=
 =?us-ascii?Q?L5UjXtEa+5hLjwxdVxwiKQ7zshYHt2+RoQ1hpRYW/9umL1REXmsrPnXfU2sm?=
 =?us-ascii?Q?nh6BAuM8J3QeMSZgK8OYEV6O91viYUunsJRTojR2RNi7hvng7+JNdVtTkIlQ?=
 =?us-ascii?Q?xSSiLyi3AMCL7Pr6VE48UShCCFFndDD7s821uZUSYY4T3Ud63wlwgfe2cX2A?=
 =?us-ascii?Q?V5dzqVxfKbf3/M02JI10fTxGO+e4lcZ4uJFryWsxUlIQPg29zsc7uFnF2HNa?=
 =?us-ascii?Q?thKZ1qZ9mjwqxsXcDcx5JGw1gSYvNx0ZK0OGWPJtwbhsFAMpDwq9egzDu8zM?=
 =?us-ascii?Q?GM7BmZN2SwssOKEOBWKmB0bMlY+Iwo6y3v3IysjAIIcfzysDTzYMWB3cyoW0?=
 =?us-ascii?Q?IgLBZNH0afBFB/QaQaHBSptEEn8ZmOtMCnoEOPhFpGlNJLGxQ+4vg/fJdMKG?=
 =?us-ascii?Q?iHX0RwmP20D8PSxIbqZ2HdBrjyZqez5vk9TO+J5arTx3fls8XuQFUVtzOWeX?=
 =?us-ascii?Q?+MjXKNqeimy+ybMFuQsuTpuNQ2ASlx1caicMMY/MdZiwCc5gyMTEbTdTUoZM?=
 =?us-ascii?Q?TA5IYU3T5OLp9dzp6ZGuKxyiJ8D11o0lnTC8Bw+wblQCAFDeEO4A5ag8ckmV?=
 =?us-ascii?Q?29rmS0eaZ7alxJwUiGRXQAyrcqsP22h2WiRhmt0B8T0Mag28Cw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ub6gExV+8ng4S3eN20ZysnFmwt3HzInmTCrgAkOXA6JCVNVpC3oJInQVOzmw?=
 =?us-ascii?Q?Nt06EZ+4WZDsftcS+Bb4x9YBFsh3p1txsqgJiHWBRnMX9DXj25oaQHFMbePI?=
 =?us-ascii?Q?tXbdpWJCf4x6m9x5/lJrb5T3yQ1L8yGoInpmsQi4JXnZN7HXpp9WjrqT+dS3?=
 =?us-ascii?Q?qwPjv4C8qPiBfqyEFQqfPite0y1R8YTpmNiwx/KEACi2FNmS9a5MKNHkzWI9?=
 =?us-ascii?Q?Z/yrD4eZ0fpahLiAzZy5LGfHOJdSswaHPE2pfNs+qL4f13SgDankDsi2HYzp?=
 =?us-ascii?Q?3HkcJOMa6ZOieWqti3HcjfAZg0WU2XZi25Tx5MnbFsaurm5Ya3zFeRB7m0yi?=
 =?us-ascii?Q?XeuaMTR1sp5dWIJnHHWpWqG5ZR8IS4IAJByS56qTuKzZ7cgu2m90Zu77ybQb?=
 =?us-ascii?Q?GJnlyeXSMpx0Q2SN+uJH5zfhBuMN6jIAHW1e8oyV3yZv8Xw1jU02pnj7x2Ru?=
 =?us-ascii?Q?ULBglAKTvvUqsabUkEBsEak9lCQN8gYRefLDy1MTwXJ0K/7HI2hWbUv3VnG1?=
 =?us-ascii?Q?91zfon81zo5AwYoyDQBd9oekPodrPXtHnVvyv3X0pqJpe+H7LC+i3+4vai9V?=
 =?us-ascii?Q?bYNc90d754lwcrduHj1f3WCF9j3auQcYpeCheuEOS1DlusMvaHjwLqv8SJEg?=
 =?us-ascii?Q?gt1xlCmnEBgILsgEPqjllwzsR89F3/4kK7U2c7DXIX8O8VboQfF9WpJxF9of?=
 =?us-ascii?Q?ePbPvI9VbHWB3o75YZuvs3wRX76tkh22pe3/qG4CmiGpxmUVJR7vykBi7xTa?=
 =?us-ascii?Q?ldmIvGY9obVktsvH0e0wzVOnBFUjP56KTKNaE776PbuAprnuf+Bi/MLf0Kq1?=
 =?us-ascii?Q?LZsi/XUJJPUJqZ/D9CG5Ts3ZwNQJk4PY/7wx6SDBww9D3Jve2qqMNeMExdBh?=
 =?us-ascii?Q?7t4oqY0Z85CL4I/zn2o4x80rnRHhGS+Z+qKR7zE7PmEmrNEi5MjWxr2/AWJF?=
 =?us-ascii?Q?pnNca853EsPwQLqUbM8M2o+AQ5EdXXUnhu1x8iIPFHXlWGd1o8Vjzpj+5ghf?=
 =?us-ascii?Q?SiBqzllUnfyNaQQE4tm+12ql6IB9gcmeQl0JfFevXhyfQM385PnXETKIe3YN?=
 =?us-ascii?Q?yPAeOsiAJGNGv9CQkvrG/dpRKzQVhyHTmtdqyhvb9DBnoFQ1NkPTj9ufOqRn?=
 =?us-ascii?Q?ppejXCMAOqOMpOOo5g4Eo6GMi07wnJx/l45SBjGfPOu/YlZxmih51hKO3TW2?=
 =?us-ascii?Q?fV3aNJJ+NstjauFv517YFzp6jh6gZyuFBmnysf/AsnVoIQsJk5AOL4Wk1UTy?=
 =?us-ascii?Q?JnrP3VLM3PNl0FlHc+qRVDy2RSrI4qsgAKVYgQrI5KGS4dLRiFqGAT6pNtl6?=
 =?us-ascii?Q?44dhUX6CbGXIO/Gy6Y0Srf1E42tYC01mp/r+VDHfxcp2JUpvO/7FsR27MFSU?=
 =?us-ascii?Q?lMQdr7GdRfQ/XnNHJoWp2GFUTqE+E4kk7xPNAkqTuOZtRCJF6DcTB7iw5346?=
 =?us-ascii?Q?UWZKfR5TK42eFjNAwjhOcABUGYn189H8SEKaCjKL5u5ac7ml9aTMPSgHskPK?=
 =?us-ascii?Q?jTbiNP6uNKMVuxPdaC5JwRamGjUSGxbaixJO5AaqlaRiRum+veiIQMb7Amwj?=
 =?us-ascii?Q?Hf78XvtOrX5FMHl3qN/cT/+MNz2gCs4XUDGmPPvp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e02daba3-8efc-4456-43eb-08dd14f622a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 06:29:13.2185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TTfx/myNZmj0gjoPHRVKsQ2k81rVBlYvSDGXIf06dDPFFy10uwz73rt7RgocMJ2sBihc9Tn40PHZblKsTNTMQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5799
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, December 4, 2024 2:57 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 08/14] drm/i915/dp_mst: Use helpers to get dsc min/max
> input bpc
>=20
> Use helpers for source min/max input bpc with DSC.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  2 --
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++++--------
>  3 files changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index edfe084dca39..bff7441d2ddd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1780,7 +1780,6 @@ intel_dp_compute_link_config_wide(struct intel_dp
> *intel_dp,
>  	return -EINVAL;
>  }
>=20
> -static
>  int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)  {
>  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */ @@ -2183,7
> +2182,6 @@ static int dsc_compute_compressed_bpp(struct intel_dp
> *intel_dp,
>  					   dsc_max_bpp, dsc_min_bpp,
> pipe_bpp, timeslots);  }
>=20
> -static
>  int intel_dp_dsc_min_src_input_bpc(void)
>  {
>  	/* Min DSC Input BPC for ICL+ is 8 */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 4ae54e9718ce..4895b52d41e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -20,6 +20,7 @@ struct intel_atomic_state;  struct intel_connector;  st=
ruct
> intel_crtc_state;  struct intel_digital_port;
> +struct intel_display;
>  struct intel_dp;
>  struct intel_encoder;
>=20
> @@ -207,5 +208,7 @@ bool intel_dp_link_params_valid(struct intel_dp
> *intel_dp, int link_rate,
>  				u8 lane_count);
>  bool intel_dp_has_connector(struct intel_dp *intel_dp,
>  			    const struct drm_connector_state *conn_state);
> +int intel_dp_dsc_max_src_input_bpc(struct intel_display *display); int
> +intel_dp_dsc_min_src_input_bpc(void);
>=20
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 9b64c8a0e55e..795594191717 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -365,17 +365,14 @@ static int
> mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] =3D {};
>  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> -	u8 dsc_max_bpc;
> +	int dsc_max_bpc, dsc_min_bpc;
>  	int min_compressed_bpp, max_compressed_bpp;
>=20
> -	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> -	if (DISPLAY_VER(display) >=3D 12)
> -		dsc_max_bpc =3D min_t(u8, 12, conn_state-
> >max_requested_bpc);
> -	else
> -		dsc_max_bpc =3D min_t(u8, 10, conn_state-
> >max_requested_bpc);
> +	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(display);
> +	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc();
>=20
> -	max_bpp =3D min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
> -	min_bpp =3D limits->pipe.min_bpp;
> +	max_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> +	min_bpp =3D max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>=20
>  	num_bpc =3D drm_dp_dsc_sink_supported_input_bpcs(connector-
> >dp.dsc_dpcd,
>  						       dsc_bpc);
> --
> 2.45.2

