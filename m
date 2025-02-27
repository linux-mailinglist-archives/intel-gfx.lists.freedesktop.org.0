Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F33A479FB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:18:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A73B10EA9A;
	Thu, 27 Feb 2025 10:18:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ntr710hI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726C910EA92;
 Thu, 27 Feb 2025 10:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740651535; x=1772187535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kyhb2e4OQalevlHKIJ6w1wzqfGmAjLuGCJf99ASos70=;
 b=ntr710hIF/eP0amzJqqllEchQbdhVCl9FxZFR6cNv3SC9vzOJTFrfqBG
 qzbZHDfCLfbD03iJrXECU5lnNLvqN/3RPPtS6cOuHa4HMV2mYXEL/PRYq
 28QvTA+AG3/O8udch104P9gLNHGuC5NqZCuI+P+rAGykZ6leyzzO72R27
 JZrkIu2ZgzOWeLxmHbi0TKMPRd2MEkmvDcwtImwcKgeJPNvlJQENj8Bdo
 F4rCV3nJRcgcS4cZJ9K4E73tqbHmNQlfoXgkWNCnPHU/TPSjyr/MTxZUs
 4ArVFwfhwXfDVLXaAUzVg+ENylH1zdlY5PDMvIuWcW+YwZPgkZ1Qp2W6i w==;
X-CSE-ConnectionGUID: gfbjqQ/GRaadtQZcC8swlg==
X-CSE-MsgGUID: /y0f0XTKT6u0RBK/s/k+nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41731417"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41731417"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:18:37 -0800
X-CSE-ConnectionGUID: f24AVl5aQi6+HLSlC8dlKA==
X-CSE-MsgGUID: /OJAHQfgRYaEQe7yDd8gcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="116755389"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:18:36 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 27 Feb 2025 02:18:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 27 Feb 2025 02:18:35 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:18:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NzhCakfUKe2yd0jBV+JhS3asxW49MYGa9pdQJ5f6BAEWjNs+NiDEyywc1yHRDCewh0crpN38iTrULHp4LoKdRnDFP3v5vW0ubomNAmjeOjMaWLmiGm0VRoI0Qv8DAl9mmR3sk2B5tXio5heWf9CQR8XMA6CCkVQzHMVyMdjh60K/nQd2BswtQzehaeAQsT1zdwebfAykpllk55IUApNW/lct2y/N0+5iwVkpcoD+xB4p9uKJKsdU8yhPqx6a2BAjwSVzO8wQipKe8yjQ8nBv6iy3iXsIGfwj+10iuHTUh+um1YwqDFq7yQQ1D9Ak/oAcWx/NluJLBp5qanoy0NLZDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wAts/rzkWWA0IH0Ejikx7hNcd2n5mjvpf2FIXd/sra0=;
 b=a+snKyFLLqWUXLzWgClB+hLKlDk8XdOj5txRGQc6/HjmDSboJcXSIEqeMvPaNROALFbqPBGlzMzppUDZySTr7+F6OOuzk5zQ1ZUPkL35Hij81Re8CHlMBIl8y0KrlUhWuBLmPCXWCQPpNa7EV7t0kzbzSQ6jKlVV9rKrGFFGHZ+Z2hOKFFnNwPlGOjnydmXj4VLw29ihddo7WNQfXzMHddUXtFRdKToYC7VUnIER+k9gUFyVqb9w5Dx2rTywkBsJPoSghbuAumX8GcP+1x9N9S6gwStO7g8qS6jTnf8F4mrJFGDETodeR9RG8bg2eKmAHPFTpf1+KkP7sBuvGObf7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB6521.namprd11.prod.outlook.com (2603:10b6:510:213::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Thu, 27 Feb
 2025 10:18:32 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.016; Thu, 27 Feb 2025
 10:18:32 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Topic: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Index: AQHbh1ynxA6dtsvJ7kaK/vE1vKqgv7NXtOSAgAAA15CAAA/7gIAAX+cAgALNcwA=
Date: Thu, 27 Feb 2025 10:18:31 +0000
Message-ID: <SN7PR11MB67505D632A7CCE485E8FB81FE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
 <20250225080927.157437-6-suraj.kandpal@intel.com> <8734g276o6.fsf@intel.com>
 <SN7PR11MB67507C9052363FC4E8E34450E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
 <SN7PR11MB6750A509052EF04B959BA7C1E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87ldtu59fb.fsf@intel.com>
In-Reply-To: <87ldtu59fb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB6521:EE_
x-ms-office365-filtering-correlation-id: aa84d75d-e9a0-484d-83b0-08dd57181649
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/hYEirl9Blx6LgZ4kqfeSDreZUtgWSGOAv0s6Od4R9BMWpE9a0MRjdRSUP0O?=
 =?us-ascii?Q?nyarjcZ7F4Azu8o1ZSbUa3/llPXc4BDnvQ5bFi/mg8GM1f1BSqNrnvD/0X4Q?=
 =?us-ascii?Q?avyExIK1n3CwNvOH/n0CFoTkfiZBXAMKmUBwccTIvkETlXJDcz+Ntviie8mh?=
 =?us-ascii?Q?jFKFoa5O1TiZ6cSIouf8tdxXykkk83QmbVqFa+YkemIWxVykjVHWmvmc4Oew?=
 =?us-ascii?Q?NQaEfP56ntT7MFzvWYxsC15Ri7dBAB/wTYnDB5wKNOvBcBqC/PBPMdRkucyw?=
 =?us-ascii?Q?CrPTexHQSjt/zK4+f6iSZmwiZU79S4W9rq3kcewDq3TFkc0JyY+nmqe6ETaU?=
 =?us-ascii?Q?90oBoTeHFeHJ1HVORnzvyypcJWxEvxbvKTjPFWapB0OUWO+ypAaYuuJs6j95?=
 =?us-ascii?Q?H5+dpgNkoopq8i9OV26sjkPTVnmy2OCsKDisP/AmwpAIJ/1AHrJikK2xa4dS?=
 =?us-ascii?Q?AKpzHEfYOEyS0ISEsfdxAemYZnimL/SMgKDV6XozqjhtqATB+siqir1rI9eo?=
 =?us-ascii?Q?oryepZqic6i9EFq+DPWc+uSTg+C3FngyAYNefcXCxKkZAWgUUifTjUpWI25C?=
 =?us-ascii?Q?Mc0w2KlMRnn1znb2F4wtjrQJ0oLtO09I4Ptf8E76oYbFT6kLQNsTYJcD1PX/?=
 =?us-ascii?Q?03CVCulAVEXNtEiuEJOluSpI5mniN+04DCZufDVGLh7QuMT2h0UaYh/KoAle?=
 =?us-ascii?Q?EHbYNQCeknUmH7shXElID79gQckqI/ar3nwKl8AJiWQTEGty1ZFAhXbVYCeG?=
 =?us-ascii?Q?WBLbmfjrDIQianZfSkRDrHbZ4m7nAmlkBMcDABN8VyJ9eAHoB3iKhoAV9xjw?=
 =?us-ascii?Q?wZaBq7CcTRIycMySz8XGSpamkAU2KRpR3SSQIs/l8BkdaYTmHFhqqQXy0GnK?=
 =?us-ascii?Q?DLIZWtTtOxS15Am7FoCPvJpBUKJGEIqZ84yw2ipdV+MctUwvg6IeL57lOPwD?=
 =?us-ascii?Q?HmqixC7FTGkPqELH8MmlorgsYOprogLiGWxXhBYdCgsboj0Y2xN8+NZ2F6GZ?=
 =?us-ascii?Q?UCPCwIPF50PoNguKpcVJwqxQPkAIMupTy0nWDsmmCmViH/tYeXnh/WWGEsCD?=
 =?us-ascii?Q?tN0wVmH+1IqWoC1FCcNTjhDO1vbrHHUUKxkt5V2KxNUih+Qj7uaERDJNrHQt?=
 =?us-ascii?Q?cWG04t2trRqLdV8gjWSWTlRPB/I9kjpAwQOPAVMaE0rPopqAC/vmw7sqGK++?=
 =?us-ascii?Q?ItqrXCcSDJoJKkl3TGdCHOtZuDSJS0v4NdByjYMa0QkRVXpTu6XPaS2G4C2G?=
 =?us-ascii?Q?AIBo6mxk/Fi45jZJho5/i6ZjauuX6BDoOIFhVeUB2eQ90YhMmJMekrpRjzgP?=
 =?us-ascii?Q?AvgXoUWjoIXbWtfOZGq/KpawBiVgrw5xR3AEcZ2Ui7BQ/TLmZZRTIQgjtJZJ?=
 =?us-ascii?Q?aREC+PpVruPX5lAVtc1S9ykdk+cLqOlKeAAJ8ZUxOdlF3rkla5962CMIxn13?=
 =?us-ascii?Q?Vyg1C3KbzhzjCIRvlxkzIcOmA6Jsnmav?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4LViKyEkuCKdl3YeZELX0wXiQLHtor/G0jAhJmQbsDS7I+Vi8+hBXKjIRxqx?=
 =?us-ascii?Q?WSWoeRFcOlXWI/FOU4s+LNSb2LmmDD7JvHDF9E/Q360AFsKrCvaeBNpc6Ir9?=
 =?us-ascii?Q?BvDikgpcpIzaucpDelgjMvgXueRkqGagHgxZS6FFk6WDy1n+42/nP8BBJVbc?=
 =?us-ascii?Q?ZnQS3SikqJZV1EYjXGLvuFTKNIKKIM6NFG3SSRUQn9/QYQCJ0SOBJK0vMpin?=
 =?us-ascii?Q?ZyommkjYsuEjK0UgTCrNLFpAez0Lc3B63364yHNXPWJ/V/HcYmD6x1SAdjcH?=
 =?us-ascii?Q?R+mUhJ6+Adx3zpYKLzp03entuJlFWEFSy1HjMQDoHAOBny1JRoXwgJ+cHJb4?=
 =?us-ascii?Q?6h2Ftc/DpCM8W3LXflVJ9wSTPBUGVzIujqhlDemP62QSxxh7NJIj+UXxdwBZ?=
 =?us-ascii?Q?YRes7qlMbYId6axLDHJBjGRdInPllg3LATGZEjqzRzhGqg3P03Tb05Ede1/S?=
 =?us-ascii?Q?RPUaNaP8Mqu1QxOotEvJzi7mrWEIPRQeOOA/sLGtXsfJtLaL4Blocuiqv3wk?=
 =?us-ascii?Q?Zg2Orw2Bv40axa2smfXGzwcciQ2iZQ+NvbLLwrbt0/y9YXD6mpb1s8GwTjRV?=
 =?us-ascii?Q?cNdYWZy8TTTwAzvB/hkEDijgnF64cQj8tLQE9wFmi+JuSixbJUtbCjyC5P7M?=
 =?us-ascii?Q?4AxJnJRjYhFTWXdWeRSNqzju3+ix3LGFPC6Smq+HqcKmkICK/dVWcuPolQxf?=
 =?us-ascii?Q?ASO5ebmUdrtNBjRa7TzmygIXgWg2HE2dPdPMGhSt7oui46CX6ZJ4QcePz9VN?=
 =?us-ascii?Q?pNBFPC3mPqm15lGekJ215gnOR9DYZZxMC2Cgv2EqsAJJmQL/+BQc8JiVldC0?=
 =?us-ascii?Q?vl16Ql10CeTkBnHVfcFmmWUE7doVL+Y3/nDgy819S7LvsF8w/9nePs6I21N4?=
 =?us-ascii?Q?8wfRaSifuZKaIvd4v8RiOGuYG/IOwGWFR9wdIo38t8Fvbbmv/T8jZVPfKhlS?=
 =?us-ascii?Q?XVDUmZa2dTu6UeKIywmSfZD6na3ybwkboXNy5ahsjQ4qT8rCx7uPvuphwv7l?=
 =?us-ascii?Q?aM29SA6v5l01EUc6HGkoUdb3+L1dMzVORGeg2bsU3ugVGNGr0zDMcQes9Xc/?=
 =?us-ascii?Q?2NMFzJxFhJQdawm3mT4qs3IA5xqpgxZtaAtLnYz3mTltEMusF/9q6DNkI8rZ?=
 =?us-ascii?Q?lxllpDDrvGyh+FWk+OqIRtvv/YAS0EPAuY4HZ8IuxBHuRIl8Ylj7fD91FJRO?=
 =?us-ascii?Q?9Ttx1Kbqe9L/cJNiACzMYnb9x2ng3OuV8t2bfVVihrMUBhXuKr0M5i8i5DfM?=
 =?us-ascii?Q?FlmDspxMIpQXfFpRp2mGPsQEccwmYhKZh/+Qsq6eYkRk0iPOLx/NDzwI1YTP?=
 =?us-ascii?Q?HS9sjfwA1oMeesglhYeOvWanuARc5Vy7kXaUAtZz69aoP8JRPyChTub4sV7S?=
 =?us-ascii?Q?6S8d+9/5q0jo0qp2Wj4kk+05osRb8dNbT6JoVF23r1Je6N1I04Hzq4OdNQEA?=
 =?us-ascii?Q?wbzP0gx4watoKP5SF8Nts2t8UoL/PuLmPDKcCxqbTyy/59YXOHsadB7vG5Uy?=
 =?us-ascii?Q?l000PIOCBVBQ/8rI+8rYLsRSFtp9PMcshng6ZHOJcPDp8qcZ58K6UEsw12eT?=
 =?us-ascii?Q?ew3DBblx01u6T0xZ2GzxV5rETYu/TSyFyMThVWoD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa84d75d-e9a0-484d-83b0-08dd57181649
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2025 10:18:32.0621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pLF67aoFyJKZ0rpKL1ROUpIajxYvtJfkNREjkJZLLaEzCS67vUyWL59SPLolmTrqVn0bkXoK1F1E2JzJoYuB9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6521
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, February 25, 2025 9:00 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.com>
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpl=
l
>=20
> On Tue, 25 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> -----Original Message-----
> >> From: Kandpal, Suraj
> >> Sent: Tuesday, February 25, 2025 2:25 PM
> >> To: Jani Nikula <jani.nikula@linux.intel.com>;
> >> intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> >> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> >> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> >> Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared
> >> dpll
> >>
> >>
> >>
> >> > -----Original Message-----
> >> > From: Jani Nikula <jani.nikula@linux.intel.com>
> >> > Sent: Tuesday, February 25, 2025 2:17 PM
> >> > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> >> > intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> >> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> >> > <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>;
> >> > Kandpal, Suraj <suraj.kandpal@intel.com>
> >> > Subject: Re: [PATCH 05/11] drm/i915/dpll: Move away from using
> >> > shared dpll
> >> >
> >> > On Tue, 25 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> > > Rename functions to move away from using shared dpll in the dpll
> >> > > framework as much as possible since dpll may not always be shared.
> >> > >
> >> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> >
> >> > ...
> >> >
> >> > > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> >> > > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> >> > > index 6edd103eda55..ef66aca5da1d 100644
> >> > > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> >> > > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> >> > > @@ -387,24 +387,24 @@ struct intel_global_dpll {  #define
> >> > > SKL_DPLL2
> >> > > 2 #define SKL_DPLL3 3
> >> > >
> >> > > -/* shared dpll functions */
> >> > > +/* global dpll functions */
> >> > >  struct intel_global_dpll *
> >> > > -intel_get_shared_dpll_by_id(struct intel_display *display,
> >> > > +intel_get_global_dpll_by_id(struct intel_display *display,
> >> > >  			    enum intel_dpll_id id);
> >> > > -void assert_shared_dpll(struct intel_display *display,
> >> > > +void assert_global_dpll(struct intel_display *display,
> >> > >  			struct intel_global_dpll *pll,
> >> > >  			bool state);
> >> > > -#define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d,
> >> > > p,
> >> > > true) -#define assert_shared_dpll_disabled(d, p)
> >> > > assert_shared_dpll(d, p, false) -int
> >> > > intel_compute_shared_dplls(struct intel_atomic_state *state,
> >> > > +#define assert_global_dpll_enabled(d, p) assert_global_dpll(d,
> >> > > +p,
> >> > > +true) #define assert_global_dpll_disabled(d, p)
> >> > > +assert_global_dpll(d, p, false) int
> >> > > +intel_compute_global_dplls(struct intel_atomic_state *state,
> >> > >  			       struct intel_crtc *crtc,
> >> > >  			       struct intel_encoder *encoder); -int
> >> > > intel_reserve_shared_dplls(struct intel_atomic_state *state,
> >> > > +int intel_reserve_global_dplls(struct intel_atomic_state *state,
> >> > >  			       struct intel_crtc *crtc,
> >> > >  			       struct intel_encoder *encoder); -void
> >> > > intel_release_shared_dplls(struct intel_atomic_state *state,
> >> > > +void intel_release_global_dplls(struct intel_atomic_state
> >> > > +*state,
> >> > >  				struct intel_crtc *crtc);
> >> > > -void intel_unreference_shared_dpll_crtc(const struct intel_crtc
> >> > > *crtc,
> >> > > +void intel_unreference_global_dpll_crtc(const struct intel_crtc
> >> > > +*crtc,
> >> > >  					const struct intel_global_dpll *pll,
> >> > >  					struct intel_dpll_state
> >> > *shared_dpll_state);  void
> >> > > icl_set_active_port_dpll(struct intel_crtc_state *crtc_state, @@
> >> > > -418,10 +418,10 @@ int intel_dpll_get_freq(struct intel_display
> >> > > *display,  bool intel_dpll_get_hw_state(struct intel_display *disp=
lay,
> >> > >  			     struct intel_global_dpll *pll,
> >> > >  			     struct intel_dpll_hw_state *dpll_hw_state); -void
> >> > > intel_enable_shared_dpll(const struct intel_crtc_state
> >> > > *crtc_state); -void intel_disable_shared_dpll(const struct
> >> > > intel_crtc_state *crtc_state); -void
> >> > > intel_shared_dpll_swap_state(struct
> >> > > intel_atomic_state *state); -void intel_shared_dpll_init(struct
> >> > > intel_display *display);
> >> > > +void intel_enable_global_dpll(const struct intel_crtc_state
> >> > > +*crtc_state); void intel_disable_global_dpll(const struct
> >> > > +intel_crtc_state *crtc_state); void intel_dpll_swap_state(struct
> >> > > +intel_atomic_state *state); void intel_global_dpll_init(struct
> >> > > +intel_display *display);
> >> > >  void intel_dpll_update_ref_clks(struct intel_display *display);
> >> > > void intel_dpll_readout_hw_state(struct intel_display *display);
> >> > > void intel_dpll_sanitize_state(struct intel_display *display); @@
> >> > > -437,6
> >> > > +437,6 @@ bool intel_dpll_is_combophy(enum intel_dpll_id id);
> >> > >
> >> > >  void intel_dpll_state_verify(struct intel_atomic_state *state,
> >> > >  			     struct intel_crtc *crtc); -void
> >> > > intel_shared_dpll_verify_disabled(struct intel_atomic_state
> >> > > *state);
> >> > > +void intel_global_dpll_verify_disabled(struct intel_atomic_state
> >> > > +*state);
> >> > >
> >> > >  #endif /* _INTEL_DPLL_MGR_H_ */
> >> >
> >> > If you're renaming almost everything anyway, I'd appreciate moving
> >> > towards naming functions according to the file name, i.e. functions
> >> > in intel_foo.[ch] would be named intel_foo_*().
> >> >
> >> > The dpll mgr is notoriously bad in this regard. I'm also open to
> >> > renaming the entire file, intel_dpll_mgr.[ch] isn't all that great.
> >> >
> >> > I'm not sure if the term "global" (instead of "shared") was very
> >> > well justified in patch 3. Maybe all of these should be thought out
> >> > together for the
> >> naming.
> >> >
> >>
> >> I agree with the renaming I would have very much have to keep the
> >> naming simple something like Intel_dpll_func but that exits !
> >> intel_dpll_mgr_funcs but intel_dpll_mgr already has some hooks defined
> inside It.
> >> I chose global since that way we will be able to represent both PLL
> >> using shared PHY and PLL with individual PHY.
> >> Also renaming intel_dpll_mgr.[ch] we have a intel_dpll.[ch] making it
> >> a problem What if we renamed the file to intel_global_dpll.[ch]
> >
> > Jani what do you think of this ?
>=20
> I think Ville probably has opinions on this. Cc'd.

Hi Ville,
Any thoughts ?

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
> >
> >>
> >> Regards,
> >> Suraj Kandpal
> >>
> >> > BR,
> >> > Jani.
> >> >
> >> >
> >> > --
> >> > Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
