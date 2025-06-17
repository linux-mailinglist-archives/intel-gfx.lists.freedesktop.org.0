Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D769BADC1EA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 07:46:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B25910E4D4;
	Tue, 17 Jun 2025 05:46:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BCHaZVb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1071D10E4D2;
 Tue, 17 Jun 2025 05:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750139198; x=1781675198;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vjQLg4Ej/bzo3PFjnK+awwzPJj2HBmNCPu76EtuVNMQ=;
 b=BCHaZVb3ImtJQQn60zgYRbJZBeuqNI9oF74JQiEHiTAFawx3V30PfUPb
 dsTSTDrrZ2xh/koV586zF85OCAIhnLJ8ak0biWDFzGDlwAK9Xas1OQwJm
 3UljwB7e210yQ1PauzWnxfelQITSKyYkDLDv0nlusCBaSPsYWv6euWtsP
 oNoTCU5MfmgAW4S8hrXijuemwaHaI9A5fgc0KQzoBjR1eUQmQ/U/qdk/H
 OFi2lSRIdGP8p57QEO1Owf04dmMbsc81PTBSiPVzPouYpae98SFh21gI5
 U+DJekT3evdRkO3/bXfJQ34orxtu0JfyLGMR6lTnTyIMZRs7ZAgkw7WVl Q==;
X-CSE-ConnectionGUID: LnGp7m4wRDqf9e72VI1TfA==
X-CSE-MsgGUID: ggk63cF5Ts6hrPQXtnSsqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52213237"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="52213237"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 22:46:37 -0700
X-CSE-ConnectionGUID: 3OtvdGmFSPSlnkNrxNkjEQ==
X-CSE-MsgGUID: QQBmnPTmTlmyFjT0Y9ZZjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="148577922"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 22:46:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 22:46:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 22:46:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.52) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 22:46:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D8afSSaFTWTrNx8tza0De4kF3lMJoqxTWTT8vdG5ALXZ28a62kzKdE/cAIS1BsgBtBdk/e5Z5rXALrC5U+MoTuuPNnkrTKwQ31ql480JRSBsFeb1nhA2TUoOc+putsW3VvJ9ZaTlibcyZ50EUKM18Ig5G1kmunvHKbByPIQKBHJ3nCT0oO/BraiK3UFUvrlW7S7qENoPATf7SuLNxctR0KUHul+6zqAMcZTP1oE64bpOscu0OA99RQV6CL5DQzNPqsym7xS2JtS0PSqhzERIV+qzMmRLZZQa4E6/T0lU/UQKLMCxuaDfNXgY1+htwyiNK8B8RjFOgeVTtwgq3huPuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tHbHWuphJmg5cBzyGCYvbHYjV45o8IEB2a3IqV4ka3o=;
 b=WIKTBOLc1I/J/wqUj86mCqDfCryNEQO/+yZGMq7gj+jC1dyQPkYtMgvlmbgALnfzDpTa6suFYkkwwcCezYBZRRYbb/yJXFvuNE4apmIet6Qx3QFLf8EqqZNt5qEZatbC3eu3iTCCJ0VqCvklpNQyD+aqB1sB85R2zF2nvL2Zw+p5Y5uYuXRz8YPRrEcEWmJNEzNiG6lA+UfV/7MFH0mxk5QXD76/5lytDn0I1XkrV9MRxzcrzFvE4zMeYVBB70uxaxHwG9Jyy878xEug503d64jF3cEn35mKtlFPTM+7YL7d/jI0pHZmZTHFjhEL1xbdH6s9bVAg6Fkjtv+zlKugfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CH3PR11MB7795.namprd11.prod.outlook.com (2603:10b6:610:120::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Tue, 17 Jun
 2025 05:46:21 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8835.027; Tue, 17 Jun 2025
 05:46:20 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A and B
Thread-Topic: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A and B
Thread-Index: AQHb3JnZIehpGkx7CUGPoBeQxEygCbQFevWAgABqXMCAAOziAIAAA2Xw
Date: Tue, 17 Jun 2025 05:46:20 +0000
Message-ID: <IA1PR11MB626642AEEC0EF2A557957C08E273A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250613193146.3549862-1-dnyaneshwar.bhadane@intel.com>
 <20250613193146.3549862-9-dnyaneshwar.bhadane@intel.com>
 <DM3PPF208195D8DF1F76C172386940583D7E370A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <IA1PR11MB6266B72FDB377689AA1E741AE270A@IA1PR11MB6266.namprd11.prod.outlook.com>
 <DM3PPF208195D8D168DBEF7523422288F50E373A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D168DBEF7523422288F50E373A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CH3PR11MB7795:EE_
x-ms-office365-filtering-correlation-id: 539ca59d-b568-49e6-54f9-08ddad62498c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Iv8qkITk8AkJBtCAwFXtPLnNFQCdTuOWpdBxUb0vtF3e43zQ6APPquVVZITi?=
 =?us-ascii?Q?hRllULzBR71Y71eywCN1UGE97kIJbGujYNTxtyq4HNlk0JT1D442BkgbBEi/?=
 =?us-ascii?Q?at9w27E811KyVXlc77+M9qAIApVyso2C3/mqgEe2sR40N/XpEzfnv2qrwC5Z?=
 =?us-ascii?Q?6mSLXM01f7sYy5ieCAfc2Rl1S4S0LpxIIqLJ/FXrBL9Ki64bVVhiTXxx2FZb?=
 =?us-ascii?Q?OVnDmpsq8/60PWYvUvfDRBBW8lOaHn3JnL9OLnsuthNr5U2GuhmwOajsVraG?=
 =?us-ascii?Q?ea+FkGXMOvwSA6GGOAnnMKBtDdo0gNXmfAn+TlyAgFG8BzGDLdmSucOGwHb0?=
 =?us-ascii?Q?Eaf9fhyoF84HkN7QVXY0aLui2rGlx4Py+jZaKrQVdRRTLSD/wKDxPOvtceES?=
 =?us-ascii?Q?iIR3rD/8/sB4eAyloAQG7x+dERbuFuAZ9lgHhqhU/oI28uCIRdg53fP0LsYX?=
 =?us-ascii?Q?3Yb3b6UcWFSGjraeT3RcgVS3tPpEh9uKCQD+doS8wKepVv9S01EOyNqiFrrV?=
 =?us-ascii?Q?j/LC3Y1kauVd96AqNzZQW960A4EHxZZxC4hkFkYXbyfF4KGTremURsDEQwC9?=
 =?us-ascii?Q?6EdTe00xdgZCA3AgcF95fFeIam7g1be1gkOSUjrOH0Kvj0ktij0vWQWJGrF8?=
 =?us-ascii?Q?to0Jp0mJ2W3C0gEF3etUgalBSxQ5xJTPOVGjBRAztWeBw5uPuuygy0YOyCFh?=
 =?us-ascii?Q?hz6A5r6tD26eZJMGrIOUu8wQluY21b5nO4BL98/uNnAf1wZzUKIjHYG38XsR?=
 =?us-ascii?Q?vzgIMPEVzhK1siB5s5SxAEWyj04Lx1dDiBdMi+/erpXTf8+kblmW5wGRA17Z?=
 =?us-ascii?Q?whcMsU8JPducv2ki22OVpK75VeaD9xDHeDv4yvf9WjaaPRt3EtLVBTNu6jvX?=
 =?us-ascii?Q?lqmatmzVizGSO+RFv2Gt1YpJ0KResJeoeFcAxU+jO7X+uIB4Gj70dhqyT/ZD?=
 =?us-ascii?Q?yDLhp2SLOmB1wFIoZ4rfQxXbSe7/Z2+uPUbHSKR5shyGe2HKSGUzZN6kJ7kx?=
 =?us-ascii?Q?5UGZG+zcixqQJVhmB4KdTtBcpT0uWZIIVMgLXi6nUujQe4D/SPkMD45kbeZ4?=
 =?us-ascii?Q?mkvR7aVw6S983dP57NVH/FryfTTOjByxTdmOb6wBXBfnK0NCBkUf8nWlF51/?=
 =?us-ascii?Q?B+TmtrAC18k+4DuH37KeTZhw2LJ/Ynq020ox4OYV8/Cw3ejP66qBlN0pYYl9?=
 =?us-ascii?Q?xcrby6sNFQhNefnYpg9C57SHDXbkY1j3GvYdkf+rkNb4AdN1DWtZQGkzSW7+?=
 =?us-ascii?Q?ad55xfQEmSK+rx/4N6LYsw7I2HhpckNZSLWWK/LpcAXJQtUBYYL+VGf/1pA2?=
 =?us-ascii?Q?gicRvbJSJrydcrKzh0Uy6FoK9KOh4w6edHM1r0pgdUJJy7p8eJo4m9UGSECb?=
 =?us-ascii?Q?5+ZSMZBtJjRJsU4MsNchcKQGTiySGpAvz7jbuPHy9RBTk/mvhJSQkhSANU0u?=
 =?us-ascii?Q?ht6BLaiyoHdxYT2Efk1hcj6NF98b1gRzs6LL3SgxbeIPDST9Dw48aQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hnyRrwQBBL5xlma83Qg0fpjsT1Ou3GrwIZ3Ks0EgqPM+x9TpNU3H+xMp+bjN?=
 =?us-ascii?Q?R0yTIS0l5OgppUr5ZVHAQbIS8CLQ1qMU1N/4i4+c6k85tw+KUx4zrkT9JeAJ?=
 =?us-ascii?Q?AsLLYS5s2lNgkVakbB9Ym8H33AfkYM+0H7hYqm+IGCdrE5i1ArPh+poMdOxb?=
 =?us-ascii?Q?T9RWckJoypZrMmCGwRXBPphQFf+iuNhIXCRelD1+/OprcVlnOdjuovBYVNeE?=
 =?us-ascii?Q?14I7yXAb2X/s7vKwMa5Se8goFrpM87pHHLOEh7GjTXhpcHMbg0gNAteXeKQL?=
 =?us-ascii?Q?sov9cCponrThAKT5S8kraDhqZDOU8KyUCz691kslfON8xhrFBepeh2yugbhx?=
 =?us-ascii?Q?uFnr9zplirmh0QBqacf5MpoS0hkImeBzwyuBNUAiEy2t4L5AthZ3wHb2uklM?=
 =?us-ascii?Q?Splu3NBkhMVKNnqwJamKOdYRrzT4X44tJfv8eGY2TPPGQH/5TAkWGygwwZm0?=
 =?us-ascii?Q?OwRQ5pooTY3Dul1kyZm6/YjHwbbHax33dxs+EytqhuPwkhfGf68VOUqiBPXe?=
 =?us-ascii?Q?UYB0g2e7M9TTWKQJ8TNMPs6GLRInB6tyAt7w44tRV6HDPYmhrojW153KZ9/i?=
 =?us-ascii?Q?MOzCeHz0JoAukuAxE7Gf3isdqVBlGdaIPikzjU53XRDnr+QbHLpeMWcEY78a?=
 =?us-ascii?Q?qXoV76y/Qny50Y0ZxTLJi9L1buqH9d9LeBTPjVjIfThx0vW/oNlNFy6+NZcL?=
 =?us-ascii?Q?tF/doRKwfcyrmv+u1RGa3lAQyXYQZHk3/chCUG1PBmtr7AfHIBYakB4/uRCW?=
 =?us-ascii?Q?59ROse/qmCdRV128+/kD2+00CHXsanN9ucd43ykQuRVm0dQEK3HgmJ5C+Qy3?=
 =?us-ascii?Q?af+yNYa3g9bRTiR+0D0voiF7ZWMF57e0HvYKT0P6E2EEoTa79/1aRTlTn+8q?=
 =?us-ascii?Q?4PtE2rTs2mS423rYYy/kFZ6LFV2rTTFo2PgM5I6kC3fsrgamsOh+JRiIEax1?=
 =?us-ascii?Q?VVsWibN26ya+TqKf6cr9/a3+Am7S8CqQMEQD8rU2P1+kYhItE3f52Nv3yXsV?=
 =?us-ascii?Q?Uw5pOC+YjrYh6DwIssIh9LlSHHsTuauoFOQ6s1Qz/8gIRce0mAtZtSayRQDH?=
 =?us-ascii?Q?DZ/RowQHKnqnnzkig8QARNB4IFVFV4baBi2PIKkuAbrpKuw62YFcb85s+Muz?=
 =?us-ascii?Q?zvL9fm+TOC5Z2aNivRMgGQOXMPCdrsjl6EXoFie8JnIWdML7qJ/R9HjLXhcA?=
 =?us-ascii?Q?oMevO1Kq4n38WqXUCjRvuT9rxCujZkD2ji1iRpI0ZqAEssp0vPcf9H/tKgNO?=
 =?us-ascii?Q?vzoic5e2BFl9Ny/X4ipJxSf70eSsnHMAAjtbAM0aTGT75vAB92XxgoOaZ42M?=
 =?us-ascii?Q?Mdo9A98HipLwxd3AfluWsCbi3qKyXsG5zrOUzZyzavFIdMLfriS6EcevUA8A?=
 =?us-ascii?Q?RPdorKc05Ax6QOfGpRpnAHqhFAi+FtKEmIImHCAfyjpl51Zi4IwAIe533qvE?=
 =?us-ascii?Q?ExL9of8dXcxqY7pV/UNln2E/ULwMgVzHuGE0JuBqbJkI0z71Gx/nBfNxW1gb?=
 =?us-ascii?Q?6p6y06LA5/xw76KkJQvhELnp1SLC/Dob7Mo8iaTNg+/Lyoa7qYGKCHf1ppTf?=
 =?us-ascii?Q?Xk2VurfzjHzSQmSb2ZgMHrL98t+YYFNlovfWAocb+1k9SzlpM2tyFl7Ptsm3?=
 =?us-ascii?Q?mA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 539ca59d-b568-49e6-54f9-08ddad62498c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2025 05:46:20.8192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uNpH4XIrSb6jULxYf0LpDoLtmZCqFHWNSXHrcXNyZvVOAT4+aU0pYiov/Q5VI3LHOzvORTuFdHcVv/XKDnKAbnFQZ8EUjJPBxhMaoUq2gDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7795
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, June 17, 2025 10:37 AM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> xe@lists.freedesktop.org
> Subject: RE: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A and=
 B
>=20
>=20
>=20
> > -----Original Message-----
> > From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > Sent: Monday, June 16, 2025 9:31 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > intel-xe@lists.freedesktop.org
> > Subject: RE: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A
> > and B
> >
> >
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: Monday, June 16, 2025 2:09 PM
> > > To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> > > xe@lists.freedesktop.org
> > > Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > > Subject: RE: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port
> > > A and B
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf
> > > > Of Dnyaneshwar Bhadane
> > > > Sent: Saturday, June 14, 2025 1:02 AM
> > > > To: intel-xe@lists.freedesktop.org
> > > > Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > > > Subject: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A
> > > > and B
> > > >
> > > > WCL added a c10 phy connected to port B. PTL code is currently
> > > > restricting c10 to phy_a only.
> > > >
> > > > PTL doesn't have a PHY connected to PORT B; as such,there will
> > > > never be a case where PTL uses PHY B.
> > > > WCL uses PORT A and B with the C10 PHY.Reusing the condition for
> > > > WCL and extending it for PORT B should not cause any issues for PTL=
.
> > > >
> > > > -v2: Reuse and extend PTL condition for WCL (Matt)
> > >
> > > Add the bspec reference here
> > >
> > > >
> > > > Signed-off-by: Dnyaneshwar Bhadane
> > <dnyaneshwar.bhadane@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++++++-
> > > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > index 83c8df9dbc0c..ed8e640b96b0 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > @@ -39,7 +39,13 @@ bool intel_encoder_is_c10phy(struct
> > > > intel_encoder
> > > > *encoder)
> > > >  	struct intel_display *display =3D to_intel_display(encoder);
> > > >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > > >
> > > > -	if (display->platform.pantherlake && phy =3D=3D PHY_A)
> > > > +	/* PTL doesn't have a PHY connected to PORT B; as such,
> > > > +	 * there will never be a case where PTL uses PHY B.
> > > > +	 * WCL uses PORT A and B with the C10 PHY.
> > > > +	 * Reusing the condition for WCL and extending it for PORT B
> > > > +	 * should not cause any issues for PTL.
> > > > +	 */
> > > > +	if (display->platform.pantherlake && phy < PHY_C)
> > >
> > > Just because PTL does not have PHY connected to  Port B does not
> > > mean the code wont come here it seemed like this is the check That
> > > made sure we go to c10 PHY and with this it will go for c10 phy when
> > > port becomes port B
> >
> > This would be case ever. No,
> > PTL don't have PHY connected with Port B so this would never be a case =
ever.
> > Specs: 72571
> >
> > As you could see similar condition is also extended for lunar lake
> > which has the don't have PHY connected with port B,
> >
> > Dnyaneshwar,
> >
> >
> > >
> > > Regards,
> > > Suraj Kandpal
> > > >  		return true;
> > > >
> > > >  	if ((display->platform.lunarlake ||
> > > > display->platform.meteorlake)
>=20
> Got if that is the case you can merge the condition with this check since=
 it
> basically does the same thing.
> I would get it if you are holding out to see if the wcl platform check co=
mes in but
> in that case I would say Wait till that comes in and merge that change.
> Add the Bspec reference in patch before merging


Thank you. Since it has been extended for WCL, it would be good to keep the=
 conditions separate for the time being to make explanation easier.=20
Later may be year later, we can combine them into a single condition as you=
 explained above.

Dnyaneshwar,=20
>=20
> With the above fixed
>=20
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> > > > && phy < PHY_C)
> > > > --
> > > > 2.34.1

