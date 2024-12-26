Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E439FC88E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2024 06:19:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92BC010E711;
	Thu, 26 Dec 2024 05:19:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CQ3dSE4A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB38210E711
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2024 05:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735190363; x=1766726363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=39fb7zsXvxNVZRXHFgGUBNKA5e88QLvTZ03qr5h1qyU=;
 b=CQ3dSE4Af+GKGOE8Obxbq6IlaSb/pUs6/SaB+XODAZwl+5OtPB4+1am/
 /h9fWN9ZrfTw1SN1BRAWDMEGkAdrhIO91ObVRPARD+dwYFU3PDrU6xwQa
 oyEryT/3tlFjBrHl8yKfE2RoW08n/yzzbpMHr7HRGcpdYqwVFm5mixTV6
 BQOlMpRJw9qV7RhCk87QuonaxYwevI8jsjQa+ZgEiWcT8ubnVE4/8Wogf
 IBsfY6JaKc+yNB/57BsPPzlmJKOOQgVfSVyuakRy/lKzYDqy1QMlb27lg
 M7cHYkV8qO/+lcJ1YRdf9yfckxfwxOXHJsCadKJjlnZ38eX/pCnQwj00D A==;
X-CSE-ConnectionGUID: vdlX0QmiSHWxmXCCxldhFw==
X-CSE-MsgGUID: 1pNLCwiqQaaqfsui4NwTAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="53012344"
X-IronPort-AV: E=Sophos;i="6.12,265,1728975600"; d="scan'208";a="53012344"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Dec 2024 21:19:23 -0800
X-CSE-ConnectionGUID: YR25MyXwRnK+irnHgbyjzQ==
X-CSE-MsgGUID: It3P3hvsSAWH5sYVvMDODQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="104927711"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Dec 2024 21:19:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 25 Dec 2024 21:19:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 25 Dec 2024 21:19:22 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 25 Dec 2024 21:19:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QptMuuTx6WlsXhOOn6jVUzKZHGg46How01694AkogkXLz1/UcAQdgaWpDNFwSEzszTQXxM0Gk6jKv7bMB4A+OYUpTOeOVNDfhBpwZGAkCJWA5xA0zD3sq+NWdD/pi2bRxdjGo56lWXpwdcU60FUMlNDH0XGcqK6dxoGtDIxnL9MYrNudS9LMxKRZbvBdKV74Ml6pR/q4Q5w2x7h5XbHmKScDt/8bBJiaZPsJIo+UcJVsoiUcBMLNReQACRDrPX/40LwhL8TDhvCmEGA54YMAPM+qHOV3A33U2nCQ8RhgRVNR72rLfE9g2e03vv1sSACwPnvXkD4ZV2ks7o85R8o6og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q0mj5dbaxP+HhIL7bLHfUmcRW+McLBpxJRxXg+zYP9M=;
 b=VNSwAPEciDziNglq4RVMGbfXRtGY9qf6deIiZJZQGWRhSzL13jOMvBq9S4AGBifDl5IlXfw2xXpkqKXMcdp1Wi4kgWUCDqBUNLUkS68GQP0MdCzp0/Vv3L5pKLS3aKTuiN+0m+HI6urEGIN82OaryG3ubgOsEQOuyQL9BkwlLbAHYTFH3Wuz3vhzzCJlQi4gSykn3FjsKsnuruwBuvbIhj1CTl6a7PY8GQtKIIGYC3IlporxIeLuD9hvbXPuajXqN3Xpb94RLxi8wy6iNb3pXSNRLzZ8DBpYVGSQzwi5DUFg6/3YxRO1sGC7G0qIzM/Fjzq4qXAtRqrm8zH/JNAEig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by SJ0PR11MB5037.namprd11.prod.outlook.com (2603:10b6:a03:2ac::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.18; Thu, 26 Dec
 2024 05:19:19 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%5]) with mapi id 15.20.8272.013; Thu, 26 Dec 2024
 05:19:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Subject: RE: [PATCH v4 2/2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm
 value
Thread-Topic: [PATCH v4 2/2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm
 value
Thread-Index: AQHbUMBWcqjD1AduWkOL7bFpAtTfxLL4CcDQ
Date: Thu, 26 Dec 2024 05:19:19 +0000
Message-ID: <MW4PR11MB676134D7936BB5BF0B0ED0AEE30D2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
 <20241217201301.3593054-3-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20241217201301.3593054-3-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|SJ0PR11MB5037:EE_
x-ms-office365-filtering-correlation-id: 5a458c86-bd9a-43c3-da3d-08dd256cd98c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?olRNbNwiWzTCGStQS5ESTN40DVejTSto206oXzYkgxQKbC7yWRbHYZhviYod?=
 =?us-ascii?Q?aVvItk9x/cnDL/G88IdYQqvQm48pUiWJoWVG6YgH34ymNRIDBgRs1vV7u7QH?=
 =?us-ascii?Q?VdEhRyHO67jWNMYX6AoCX6dkjoxVOHL6wBNE1dQzY8OBL5+ZUcwo5Is1XlJL?=
 =?us-ascii?Q?DNq2IUFEG2ccnId+rd2NPoNDpC2Rz2j/0UTGmQA8aAYRVXs8kG/o6mNISstD?=
 =?us-ascii?Q?ThkfE8Pe+mDQaRxRoRPU50LMq1JtIQ7OdW7g2VAiAlgbs11A+8PnIeiLoS+X?=
 =?us-ascii?Q?bcCVRdZSwAMvAOFccs5e+2rsZLBZnbVT2e+2SpXvKD9sgGP02tbP2AImrZJt?=
 =?us-ascii?Q?Rfxg5+ke/QSjOU+1gSkpSoMiyUKlfQiZgrjCJpfkdOr4UdXHE0AaMB7meNwS?=
 =?us-ascii?Q?bwwk597ZKzaBgWByW/oI/FNCaDzhreZJ5fxQTXx+8rLIOyrlRX62xDHo9b9Y?=
 =?us-ascii?Q?ENolGDg0lu6GHj3ixdWo7zqSXYr30kf0j+iR5jHCQ0VxgyZfQI45C/Mo3g9L?=
 =?us-ascii?Q?8mXbT7WQcopLWZwMJ+qCPvgRH7wOCTnqIQgD4UB9+E7be9zkK2z6ZPnUeq0j?=
 =?us-ascii?Q?Afx5t/CUeWTtECk3odGfMlXfEctIVW4mF5vFpVGqTpHxEdcxPM53xAYrzsrx?=
 =?us-ascii?Q?3peSCRjUJrK8wq7yyJRSjx23BWqkNlp7x88Hk7TaVaddVpu7jo6Ij0TexrIs?=
 =?us-ascii?Q?w3KMxCWu9tWGzgAaoCgWLjg1Ie5UVXQE9SWmPcyQ4FfxWsvqeN/f0qE32YIK?=
 =?us-ascii?Q?2NqpFtKpYb3aog5ceBY+iZ2lsJO+id0Hz4FcW10j9zim64fV/ziYNIvYLzdE?=
 =?us-ascii?Q?kUNqUWCX1GvMrv3ob9RtXccfE4TnGkGaqqz1zlWHCi+cO1hsGXS0Bg8fB1Gg?=
 =?us-ascii?Q?XEQ/jndpAsEWDpkcz58jKJqB4sK4U75J8cq34WQNWf+ct2znz/oV3rehFWc3?=
 =?us-ascii?Q?u0E6U3mwijO0hu+9RryxIbPcox3wAYOMWt9DAJ4NWoPc+wnVE9udb3KUmv7F?=
 =?us-ascii?Q?R+4K4KmmNAHgoY83O8ocQ/Knc+xWffMTowqWxaEjSrNRv7NjOdRT0GTAoIG9?=
 =?us-ascii?Q?WYVZiGAXOmkHL5hoxC5Gwr6De8dYU9XHgggwmrngSLx1ru1+aPpdHjSOn7iG?=
 =?us-ascii?Q?RtGfSDKFIhu2CjGSEtU3c6JungeiPzKUL1HcPVpBJXA3JUnPtg6hRSaDyHDe?=
 =?us-ascii?Q?fa+TB7chMAbgObgZ99d4xVTBGYkX5AzQLAOUBqVkaiS7RaQp8h5bmzDQP+83?=
 =?us-ascii?Q?OtKjbDVJsyZqOLqqhb4QrMipy/TuABXWpRx6NVd6IDO610QsVMwtAe+6PtRz?=
 =?us-ascii?Q?LWC10mMPebgQUM8oCe/zdlrIfEH1eRqdQSLkHlbmIpkuMFJAtIH7tWSOwwi7?=
 =?us-ascii?Q?aqSbCcpN2AJu0MGfhkqJTiQ0KrLBulGR1Xks3s2luo0QZgo6i6NW764eWSbn?=
 =?us-ascii?Q?qw16IJMluXLbwLIc3/QWG2G2eg1SWcH2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8bbp4tqfZVxOTJLWVz7Aijo/VSubfMRLsHvMNG4GB3F66+fE+HxWfAdr/lKg?=
 =?us-ascii?Q?HuUjsUvIrpcLCPGfL5Rw15V9TiqAeyL7EQzJXnphhp44Nf6ItbzLU4ijXOt7?=
 =?us-ascii?Q?18Ewxf17fIGPwvK6FXSe1yXuEsl8pvjBpegUq18GdOVqsLWBVl5tD3wDn/kF?=
 =?us-ascii?Q?FKG4LZMCeNqwQ5lFzUoU2bc020b5K2ujdevDPsfdxx3LK78PR8u2bxL6uV5m?=
 =?us-ascii?Q?/BWl8KyuJ7CHQB7klYN1SWBRdtgg0u4K+hZlOpia3tpepuCl0rjbA5zB9lPC?=
 =?us-ascii?Q?OjfardsJNiXDW+yNMQ74h9xowWReBK1M+qjE6q4L7II18yUhqGKcl2QR6TU5?=
 =?us-ascii?Q?ZrMLH4TjVWE6BgJdSQc8tGkHdMpdwyFMYRUwpRa5W3BMamg+nspzINT+87/V?=
 =?us-ascii?Q?GwszQVXaE+jTI6O1zdACjquH1bZWlrbqQtT//1hriGNFsldyQ/Qroln0DslT?=
 =?us-ascii?Q?V6wpL2DJyIuIpK8Y1QW4CxwFGuq7tl3uzJv3UVTh1vcNXSTQghX+8Eb/tEk0?=
 =?us-ascii?Q?Q1o4a++yqSMPoIfVqJJePpjtIvFcp3u0mz9ef6/nj+UjByLYgqpUMWQHgf6K?=
 =?us-ascii?Q?bQ+w/DcKpzaHts+3BvED62Y6JKq10DF/VjPTjms4/EqpjkPgS8GaE+HMXw94?=
 =?us-ascii?Q?UXOroA0BkJvDeXpmdSWSaSFpBHlBYCnr+8PXI1A7/0wsFYbdgnjvfQPdBS9R?=
 =?us-ascii?Q?qpHa5LPsPRpkM0OYTDeJnYGMoLkUPn3i/20bjHnGHr0u93u2HejwtAWymhx7?=
 =?us-ascii?Q?q6cMmljuIoX7ai85XAwmToV2bwWFrTx+iPU7wB2lXQZWad1O3dC8KJ4uSgds?=
 =?us-ascii?Q?WLz2rWv6jATwVOUlWf/Me2/ayeNwuCKh6JLifhLZgHOGmjYCXqgunkcAC2tp?=
 =?us-ascii?Q?gYnn8/KcYePrEnkghXlF0jUyQZSDRA3fLqz7pBV6jYBwBQ6WQWZ8fBSFxZyq?=
 =?us-ascii?Q?FStMd8IF9oywQFHqBsU8TasCpX/qPPrliN7lbTLOh1DjHuIWyowoIs4hvbm2?=
 =?us-ascii?Q?ZRZc6QUBD+2+2CDz5f4StExmlnqY9KYfEPw69lXOqCVXNMt3MV04Dg7V91lh?=
 =?us-ascii?Q?VPLkoLif0OQaf1Co8OzufBThKIH+hODf/ze9z1hfGL3KMhDCpQloQn1+srTc?=
 =?us-ascii?Q?+hmziF3CTlqnZc9L9X4stCjRIBX92gp/M6lDKW4VGdneQ84CslGISJe3M21G?=
 =?us-ascii?Q?P9hpc4bNKkNqd7umgQVqgWnZtx7hjuW9TOKReJdmU6d4oWWjMCh5/VMVUrR8?=
 =?us-ascii?Q?2NYNmyJ2sCDTRWqXw2Pw5z6ZdyGlrORM1yJW7c5aCRH9mSkl6XJ8UFg3FY+p?=
 =?us-ascii?Q?ju+dF86hryoiLLimVXEhrj9uEp+kgHjfaKdzAafC2p9bzPKG4Xzq6zmr9whf?=
 =?us-ascii?Q?a+Oc0r77Q/9p9RIuP6+IOJoLzEPTrjzXzehsOJR88NSg7Ec+Sz68YpmRXWHo?=
 =?us-ascii?Q?hn3//RPGsQjOSvX8+ATsfcczwl0L/KBJTKcmUZCxKFUlT4oikSZZ8/5OvnOr?=
 =?us-ascii?Q?//En1WVhiEPq8Q/jIwqNlamGPSSSEMl87+XtRHX7+B2f7Hva6iSGhallR40R?=
 =?us-ascii?Q?3gT0MXwe6nM+TPTEvRqoba3jfVW0DL/F+2R60d3T?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a458c86-bd9a-43c3-da3d-08dd256cd98c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Dec 2024 05:19:19.2790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dvYpYsRFV9A69WTsHEADzlnL7jdYmkryaSJ//D6r1JUomduseMK+HymGQglmmETEikAaDZBDIBgMM5W9JkO0Jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5037
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Dnyaneshwar Bhadane
> Sent: Wednesday, December 18, 2024 1:43 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH v4 2/2] drm/i915/cx0_phy: Update HDMI TMDS C20
> algorithm value
>=20
> In the C20 algorithm for HDMI TMDS, certain fields have been updated in t=
he
> BSpec to set values for SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, such as
> tx_misc and dac_ctrl_range for Xe2LPD, Xe2HPD and MTL/ARL.
> This patch covers fields that need to be set based on the platform type.
>=20
> Some ARLs SoCs cannot be directly distinguished by their GMD version Id,
> Specifically to set value of tx_misc, so PCI Host Bridge IDs are used for
> differentiation.
>=20
> v2:
> - Relocate defines and Restructure the code(Jani)
>=20
> v3:
> - Replace conditions with display.platform.<platform> (jani)
> - Move host bridge check to new function (Jani)
>=20
> v4:
> - Identify/Replace arrowlake_u as meteorlake_u(Jani)
>=20
> Bspec:74165,74491
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 48 +++++++++++++++----
> .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  6 +++
>  .../drm/i915/display/intel_display_device.h   | 11 +++++
>  3 files changed, 57 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 142de06818a7..223fa8ffc889 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2177,9 +2177,47 @@ static void intel_c10pll_dump_hw_state(struct
> intel_display *display,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
> }
>=20
> -static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state
> *crtc_state)
> +/*
> + * Some ARLs SoCs have the same drm PCI IDs, so need a helper to
> +differentiate based
> + * on the host bridge device ID to get the correct txx_mics value.
> + */
> +static bool is_arrowlake_s_by_host_bridge(void)
> +{
> +	struct pci_dev *pdev =3D NULL;
> +	u16 host_bridge_pci_dev_id;
> +
> +	while ((pdev =3D pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
> +		host_bridge_pci_dev_id =3D pdev->device;
> +
> +	return pdev &&
> +IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id);
> +}
> +
> +static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> +	u16 tx_misc;
> +	u16 tx_dcc_cal_dac_ctrl_range =3D 8;
> +	u16 tx_term_ctrl =3D 2;
> +
> +	if (DISPLAY_VER(display) >=3D 20) {
> +		tx_misc =3D 5;
> +		tx_term_ctrl =3D 4;
> +	} else if (display->platform.battlemage) {
> +		tx_misc =3D 0;
> +	} else if (display->platform.meteorlake_u ||
> +		   is_arrowlake_s_by_host_bridge()) {
> +		tx_misc =3D 3;
> +	} else {
> +		tx_misc =3D 7;
> +	}
> +
> +	return (C20_PHY_TX_MISC(tx_misc) |
> +		C20_PHY_TX_DCC_CAL_RANGE(tx_dcc_cal_dac_ctrl_range) |
> +		C20_PHY_TX_DCC_BYPASS |
> C20_PHY_TX_TERM_CTL(tx_term_ctrl));
> +}
> +
> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state
> +*crtc_state) {
>  	struct intel_c20pll_state *pll_state =3D &crtc_state-
> >dpll_hw_state.cx0pll.c20;
>  	u64 datarate;
>  	u64 mpll_tx_clk_div;
> @@ -2189,7 +2227,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct
> intel_crtc_state *crtc_state)
>  	u64 mpll_multiplier;
>  	u64 mpll_fracn_quot;
>  	u64 mpll_fracn_rem;
> -	u16 tx_misc;
>  	u8  mpllb_ana_freq_vco;
>  	u8  mpll_div_multiplier;
>=20
> @@ -2209,11 +2246,6 @@ static int
> intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
>  	mpll_div_multiplier =3D min_t(u8, div64_u64((vco_freq * 16 + (datarate
> >> 1)),
>  						  datarate), 255);
>=20
> -	if (DISPLAY_VER(display) >=3D 20)
> -		tx_misc =3D 0x5;
> -	else
> -		tx_misc =3D 0x0;
> -
>  	if (vco_freq <=3D DATARATE_3000000000)
>  		mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_3;
>  	else if (vco_freq <=3D DATARATE_3500000000) @@ -2225,7 +2257,7 @@
> static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state
> *crtc_state)
>=20
>  	pll_state->clock	=3D crtc_state->port_clock;
>  	pll_state->tx[0]	=3D 0xbe88;
> -	pll_state->tx[1]	=3D 0x9800 | C20_PHY_TX_MISC(tx_misc);
> +	pll_state->tx[1]	=3D intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
>  	pll_state->tx[2]	=3D 0x0000;
>  	pll_state->cmn[0]	=3D 0x0500;
>  	pll_state->cmn[1]	=3D 0x0005;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 4dc6e179a774..0bc651c2351d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -294,6 +294,12 @@
>  #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
>  #define   C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
>  #define   C20_PHY_TX_MISC(val)
> 	REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
> +#define   C20_PHY_TX_DCC_CAL_RANGE_MASK 	REG_GENMASK16(11,
> 8)
> +#define   C20_PHY_TX_DCC_CAL_RANGE(val) \
> +		REG_FIELD_PREP16(C20_PHY_TX_DCC_CAL_RANGE_MASK,
> (val))
> +#define   C20_PHY_TX_DCC_BYPASS	REG_BIT(12)
> +#define   C20_PHY_TX_TERM_CTL_MASK	REG_GENMASK16(15, 13)
> +#define   C20_PHY_TX_TERM_CTL(val)
> 	REG_FIELD_PREP16(C20_PHY_TX_TERM_CTL_MASK, (val))
>=20
>  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG
> : _MTL_C20_A_CMN_CNTX_CFG) - (idx)) diff --git
> a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 5853472bb9c2..a7b5ce69cf17 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -234,6 +234,17 @@ struct intel_display_platforms {
>  	(drm_WARN_ON(__to_intel_display(__display)->drm,
> INTEL_DISPLAY_STEP(__display) =3D=3D STEP_NONE), \
>  	 INTEL_DISPLAY_STEP(__display) >=3D (since) &&
> INTEL_DISPLAY_STEP(__display) < (until))
>=20
> +#define ARLS_HOST_BRIDGE_PCI_ID1 0x7D1C #define
> +ARLS_HOST_BRIDGE_PCI_ID2 0x7D2D #define ARLS_HOST_BRIDGE_PCI_ID3
> 0x7D2E
> +#define ARLS_HOST_BRIDGE_PCI_ID4 0x7D2F
> +
> +#define IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(id)  \
> +	(((id) =3D=3D ARLS_HOST_BRIDGE_PCI_ID1) || \
> +	 ((id) =3D=3D ARLS_HOST_BRIDGE_PCI_ID2) || \
> +	 ((id) =3D=3D ARLS_HOST_BRIDGE_PCI_ID3) || \
> +	 ((id) =3D=3D ARLS_HOST_BRIDGE_PCI_ID4))
> +
>  struct intel_display_runtime_info {
>  	struct intel_display_ip_ver {
>  		u16 ver;
> --
> 2.34.1

