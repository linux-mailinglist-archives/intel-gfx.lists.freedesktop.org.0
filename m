Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLXANpd+lmlRgQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:08:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4829D15BD3E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1C310E665;
	Thu, 19 Feb 2026 03:08:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fO5wcvED";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C27A10E660;
 Thu, 19 Feb 2026 03:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771470485; x=1803006485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P29G3me9HbnErvyPTmzKhcAcGAlfyCDN+9ckIivujXE=;
 b=fO5wcvEDBZP9IL7OjATDXwooueG7d492OWIzzwG/bI8q9KnwI1Tt76kn
 gFrU+EpY9lYtguEOJ2VOVhLQseSsqSRSwCqTvLnVDgFJWVnIKImy5rgxF
 M3MJGOUvUQfPX+kyfd88qcnfVk6ItrXqucPR9kdLYUBLe7Xn469rfID4D
 h9hbJnUdzmm4qIwGNHEcLysJBBzGxGwlgu3UXtXeC1LHjBzCvSrDKJneG
 EfCM/Bnv6TjOHjRnDbFt/RwBXpb+HNds5O6W7gKmw6cV3pBSdR/nC9FHc
 oJhILMTj6VBHIU0/AJ1SKUxkESFFnqVkQpPKs4Vn79ZUxdxD21CI2BQYL A==;
X-CSE-ConnectionGUID: 4nacicL5Rw6DeJbGMSACyQ==
X-CSE-MsgGUID: U2UONh20SXqPvJUi6IkCMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="60130994"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="60130994"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:08:04 -0800
X-CSE-ConnectionGUID: onDv1rQ2R7GOQZjMyLK9aw==
X-CSE-MsgGUID: FXw3cYIPR1Ocv8qXYlgaOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="219389482"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:08:04 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:08:03 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 19:08:03 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.37) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:08:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PR19Cey6oClEUlgszFjQrb0JJ/PZhZ9nHkifjDheyBT4jFwY5rC5P7QyDxLIHqbUoz94mLZ04P29oL0jwG8btOMfIv7fBG/g23ImmyjGvr7ec++UhVywaQTevhBJhXBSfY9ar7v3KKf1Wa3LglHgKSl3tKk+JIxJKde+dXYpSsOz6M9OPufDgdMe9TWQrpGrbLGNDT9gIeFMZ6ghirkDC2XW2ETvJRG1xgyLFBLnPXjURVXjoLy10MU4vv7dpFsOWodYmo6BQeQ7H4008kA9n4xVlU0E1NSjr38d5mHBLxXGfcYushG1M5OCllgpAOVMaeAmemrIkZRRqLCGy7Aa6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rWSqqL4wI5d8nFsZ9tcQjJmWPavoT5jsFdkkj6tlq04=;
 b=GSw/+/RI3c82e0HTaMsXDIoNF/rL/y//ujqr4HsBWf2LeK/KSrsojUfu5te9mtzLc29WJbvc175qzu9L943kBhqN4M1CJcJ4r3hlPqr+nNTmmoBm8hlecHyjQbggsoniLmANeWNjrvJuNpSj8u+IYJ7EiYuhRIsWbot+GZpbGxJXCwVhryVNd7bxd7xVNgiUWZqLx94Q72WJ3yYqyEI28P3PP8HT3x6B5gcZue1Aupb0UT2GcVODUZgS+U5omMCyGnsPcRw/TLlXcEbG02xHJYNk+suc1RmtIx3NDcPCyXhrPWDoZlpw0JWq7lSPU9oTnE8j/Hpk/5gV/PXTere2ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA3PR11MB9255.namprd11.prod.outlook.com
 (2603:10b6:208:578::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 03:07:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 03:07:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 07/19] drm/i915/lt_phy: Add xe3plpdp .update_active_dpll
 hook
Thread-Topic: [PATCH 07/19] drm/i915/lt_phy: Add xe3plpdp .update_active_dpll
 hook
Thread-Index: AQHcnOedm8StM4U7GkOOaMN0Be8QSrWJX+3g
Date: Thu, 19 Feb 2026 03:07:56 +0000
Message-ID: <DM3PPF208195D8D2BF5952009632CC70275E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-8-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-8-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA3PR11MB9255:EE_
x-ms-office365-filtering-correlation-id: 551c93ae-9c04-4a34-94bd-08de6f641493
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ugqhPr1qY3DARYEZYfLEvsug0ERVZx+hTNe+dKYtHwcSCjxBkV9thLMAxIYS?=
 =?us-ascii?Q?bOhID1+Q6Ovb42pcCcbsghaIudlqu8yYvLpIjqHB6ZVTlh9eB0sMBUFymKiR?=
 =?us-ascii?Q?lgOAGd/XV+A8Sc+AqXqwPgwI71rrfr1XOGWtoxuRNFbaW2peSopwDqzSqUCx?=
 =?us-ascii?Q?Sx5LtX5EbPLsiVzROa/JW1noUCHVqosCjYypUFRKrF+Z1AJ3hfKNylQWI6A3?=
 =?us-ascii?Q?on39OlKY7C12SQDPILl8BgWpnr3wZHCpFSiL6H9okDGFZU9uADXSPPUnRSBV?=
 =?us-ascii?Q?p1XJa3mdGhs5Q9FnSTzSfsOWx6WizTyl1RZvIPX1CrOmnp7bBJUPPnNrDyjs?=
 =?us-ascii?Q?Tlq6hzrQXwhwr07DzcJvld7LyZENr33g0mRIYy9Mza1JH4c+TcRdjrRpHurk?=
 =?us-ascii?Q?IdmjNxG9vOaeX6Pn0ywiqKNwHPAumbgLU/lTW6mYfZjTcSPh3l1OfN5mlRUd?=
 =?us-ascii?Q?ZQGS3LI/kVjz8ue7zsPAVSkNjIX5Lv1hIgmpKG3HFqlhJ2rtCZQAXQyYMxCA?=
 =?us-ascii?Q?OvGp12UFDxTMBU+pf6VjAcdLkewxKzcOQl9cUlRgc3+mfpeX/52icVRxBCPw?=
 =?us-ascii?Q?lJUBDwXi/13QsgTfEO2UHemUhbKb3SkjPobacvKtYqyi6H34PGzhMwZmfF8i?=
 =?us-ascii?Q?u0v1krU/JuB1pOmtWTFNSrk68bapc395Jqdx37hPDw+r3GlX8KyFPYcH+GvZ?=
 =?us-ascii?Q?NaEus5wPheY2QdEZHzNtxULandWPBndyr2lDMu6sDvp74zxOiUhO5qJFgII3?=
 =?us-ascii?Q?sRGAP7BYxXk4+MqxOCqvifEYIOYT3+2u8Q/FpmagIGVe6W82qTpEV/VDcjce?=
 =?us-ascii?Q?CNriY46uhh8cetG7+KiILMUZm9Z8EBhyMyOzHr2O2fbssUV9G3eJ9Ayg4B2v?=
 =?us-ascii?Q?6O+rh1I8kiMVgcBZhVjXBNtHD6VVPr1R3kV6AnbjjIxA8eMYadxUldbqe/CF?=
 =?us-ascii?Q?G5ItXNhrQBGJb86nF5GHvDDHpsVbP7ZJGcYtwuThOdFdud6oihDgF+rvljCs?=
 =?us-ascii?Q?FOdMvNBR2C+14tu77HPoPksL5nKygTGIBb5Q5XjqwRcMx9R8FrGWsWrLnLYs?=
 =?us-ascii?Q?rKKFt1S2jHwT62YXAbSeLVCVgicaAHq+T3zJXWPn0dSetf/oaBXhAFmQa3Ib?=
 =?us-ascii?Q?hHez0Ca80knvcKwz3xsEoniUyarrXPXpKTrCPygI3+/phLfXk29EVEQPCWxy?=
 =?us-ascii?Q?LWLi7o4stIxKdgXu34VX8XTjyxPHWK8e2dnKGtvNh8oc+abJsnEt9QXk6cTZ?=
 =?us-ascii?Q?gX6ZaRii/LvzWVaA+6aKavBEr395HGxWRqXyQCwjKdO8Pt+gMMHFZMUA/NRO?=
 =?us-ascii?Q?AV4PRO1HNogf+Xhiy+tHPf9QPZhPzSlszblnVX1kCTp/otg90vcaZ2ZMvlDO?=
 =?us-ascii?Q?BW0btZMAT63pPJBUEOWRCXdxwxWAMzCF15t0D4Vhomp9mVztMNxhiMBQfjQm?=
 =?us-ascii?Q?oNKuRQbesPpOyqWiV5DyToNtbH6XkDFcPZAwlS9spAzZyScFKFDKT2zGNZzk?=
 =?us-ascii?Q?kpEqub4h3E5ASM8T/dekLWgu+QtWsjzatDjmOjr+0+ahk6IDNXo/qLaVqUp4?=
 =?us-ascii?Q?cW8RI/HBQIYuG/8Bd3jGRJZfSuQ95woatp2Ue5j8FSmFcwx2nObTtChTdFkO?=
 =?us-ascii?Q?oisR0VQj9vmboZCl1d0g7C8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hvp0nJehXsHKxYAMVSYb+03YKC16URZGcmZUxHEibcAVfdsbZpaBhKsndN45?=
 =?us-ascii?Q?vS4cFiNgb7aA2qgFI1ZtJBRXZcp3GO73i6PahnxvY9rNRKkN17qSXcaGfch5?=
 =?us-ascii?Q?qnhF5tiRA2IhB3VQyR310TytyIwCDu03E10dfPwq//uOAF/rlwIqtCQdUHHW?=
 =?us-ascii?Q?jlHwSaAdtzlPkaLCtlQton1mnQzlNkoPue0kLw7a+uoi97hc1GcTmiGLH9lb?=
 =?us-ascii?Q?QdJJ/0ZYIpTqshWS96rgoU9xKsVZ7oTdDOg+C2ltavQ9T89ideCNnFxWNnEl?=
 =?us-ascii?Q?1QEIX+7E6OXaNvKACR2Knxg8xHproDTNfycQIe663kLMv66NBpzlvfLCc+VE?=
 =?us-ascii?Q?wLTBll2oGe0V0dQlH0vlQFbedAWxPeW+tmB5p5Xlc7iJcoZkD9erPm3dq5SF?=
 =?us-ascii?Q?fQ/qVJkqDODORY6BGTRW38mjiUV8rarfej5yQophDIsHIfSxeJFrgGH2Ye6w?=
 =?us-ascii?Q?OfZOTTylEIThpUj4At9uT8YAPdkUjF6PycUpeiA2w68esqHSQKVIq6GVn3/M?=
 =?us-ascii?Q?9S/lq3yciT6WzF++amcITpYY2NUFy3PfLm8PCI5FYXPNTOt6OKriaXRxlsfq?=
 =?us-ascii?Q?jsMu4J1uDugK2L733r1HJOxX3JLuThIOL9juz4/Cvy6r83cJQq0bgd4wypjh?=
 =?us-ascii?Q?4FD09a+1YTwRzC6OqHL/bKIekt8h7xhTa/cDBz8PdTmfJ3DzcITgIJpzapeN?=
 =?us-ascii?Q?b7+xj/netL50GR8PI5DcsRYt32DO5UXHeWnIy9ZwiNSrpNyB95bv8qHSW56W?=
 =?us-ascii?Q?D6A5L/F9Q2EUN5suCAh24LWLFoYzZByxXQW8kjahUX0e/Ad5exyoApyIHNh5?=
 =?us-ascii?Q?8Zjf1LHW5cVo/E4GVDHM7dbA33Ncdk0+ehcHi6crTd1MHRZXG5YM0ApOyAAZ?=
 =?us-ascii?Q?RG9eglKQQhd8Dg/Sq/pJ+F2jwdGKxDeuJ9ZMVGUs3W3HnxFGNayHoXl25s5y?=
 =?us-ascii?Q?7noJhrokeVDoQVLxhMnsAGJgEWY9b98wniq1QoIXrb6saNgS/OlcBCVjJYrp?=
 =?us-ascii?Q?ICn5XC3VNWWFDDP59EL60Yr00PHiwGzqjlERXlx7x8vEgMORL8TLIlOp9YMn?=
 =?us-ascii?Q?C7SIXUuktOEpbanxxlT+7Ns5a4m08AGqt/xmRQUOuKd8xp84zG1VI/JVeW7K?=
 =?us-ascii?Q?zwJshIvGGm50uKsKPTDSQGS8g5cTKZ3R8qrViK2SMR2awFzMmHKgzPf7LojJ?=
 =?us-ascii?Q?4+STRYKsntF+jHOOta3uO618Gi6k3hWYJ6advoytlzC/jQLbx9U+Aw+BUHcn?=
 =?us-ascii?Q?PEve7Tfq6//T0jqxkWpHHqxUc1+kZOEw3N36OHFd9IKw2I8QcahIOzPh87Ck?=
 =?us-ascii?Q?THqggMsQ9BV79F+TssWKmDm5VwOjzuUxGZKzIQLMJkzwzcE6DjMnKPTNv5xT?=
 =?us-ascii?Q?iHc4Gk/8M2d3TaN7xNySuoyNJe54+UOQ4d3862yk95BBGZSscX9ALTeSuPDg?=
 =?us-ascii?Q?x72vdHkeXUNQzWqP2+ZVwxSkLSZUgHghXdtQX+edcyuxEP58tAcyiZ4gB6RV?=
 =?us-ascii?Q?CF9YHfAgiUdzmK+tSvnQV+SqtIDJOrPFDTnJXDpriE/7OMHOdfRoriUVEPak?=
 =?us-ascii?Q?0/ws2ST8ZUjjRIzR/LcciaXkcJkjRClkzqxQMcDnkTEN/MKut3SBNbWXToWB?=
 =?us-ascii?Q?yvgPhahLuuptvUwzLCLdAI7IrQLHIngQocpVAxUrO/kn1Whn1QQawY4GVjFY?=
 =?us-ascii?Q?f1+aFpBgpBw9NO8lD/j57CZ9bL/aMe/BsaVFiGUwi+zhxzqCw0pT/OaA8y/b?=
 =?us-ascii?Q?hwY+IFiaOw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 551c93ae-9c04-4a34-94bd-08de6f641493
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 03:07:56.5565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dti9ss4sZk73ASjE6us4iB0ZKhT498LuQKj4j95OpOrzo++XzLIUNbdmqIpsifxWvQRkQ7qtB05ntW2GAvOdjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9255
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
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4829D15BD3E
X-Rspamd-Action: no action

> Subject: [PATCH 07/19] drm/i915/lt_phy: Add xe3plpdp .update_active_dpll
> hook
>=20
> Add .update_active_dpll function pointer to support dpll framework for
> xe3plpd platform. Reuse ICL function pointer.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index af2613eeaf92..c1ed44b23bba 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4655,6 +4655,7 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr
> =3D {
>  	.compute_dplls =3D xe3plpd_compute_dplls,
>  	.get_dplls =3D mtl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
> +	.update_active_dpll =3D icl_update_active_dpll,
>  };
>=20
>  /**
> --
> 2.43.0

