Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 382BAADC1F4
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 07:59:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7E4110E4F3;
	Tue, 17 Jun 2025 05:58:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WCADFnkl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3190510E4F3;
 Tue, 17 Jun 2025 05:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750139937; x=1781675937;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+nlCVaUz7P23YbGZbtp3Sk7EdMJz3qLq9X6uFk9MxEM=;
 b=WCADFnklqjuPcUVV95sYb0m8j/+jtL+MYss5HxaKtxQjPdmXT1yOFAZe
 Ip+jnp6ia7nT4ZNC+EaxriuSgMIpNjTZEDGrWaUhCDq5oDRiXudkCt4DP
 G3huQ+1B03pbMYlGug+hpiZ0Jv1jlxtWrLUmIEJQpEMqWHROHv8spfHrf
 GqM/ju7nWWPlE9RCfEkjLBUA14TZi46HY1TjX66pVsKmI6INrFuCnI4Ck
 9lZpJ3oH4iUu0WpVUERBtQ6ay/X9xuJyTtDENOt4XPLGJiy87BcFE0kH8
 eUAJfCwWskpggQKxoSueddT4H3RYDlTuOgR0rPcq2cW+la/aIbRqVgEce w==;
X-CSE-ConnectionGUID: peLesShFReG6xecsECBpGg==
X-CSE-MsgGUID: 2Rvf8GIlTk2FFQOfbBHQVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="62952680"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="62952680"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 22:58:43 -0700
X-CSE-ConnectionGUID: UY3N9StYSLW8WWq/EHlPdg==
X-CSE-MsgGUID: bgMlmCvbSUS70FtNC+HoCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="148664619"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 22:58:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 22:58:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 22:58:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 22:58:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FBQYBzZfy2MoGyNYj4xVrLHYyAOs6pk0zNIRlun9Az1tpowt3DCG96CoRl1PhvaTFZ/j8xtDVD/MczY72lC48DbTKaDLfqJPYBzW7x7dObtIKAQl3Co0mg1rZSKyG9RwQR6DYhe+A08DHN1PupNKVPr25IJ7I8+nTpW2GOycHo3xbz4rWZtGdv6FobZPkmg9YX0Npk5x+gNyBf6MZtCXaVxLfolwVpkWo2BqyCBka/eW3J8bxbK/VSVXRcSiAAGv2xq52mLk126E6ETKY6JF9rmKA+o78NX6lA1/yQauvpvc1y6XezsZnpB0g8X/TOPX0JJwfKkKmHlONLw12sCYlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FigOEbSZWy1jRg9nZ7BbsMHqgnFAepY0vglyPPmjHv0=;
 b=BY3Q4F49RRwKrD5I9ni6AYT1SH7blckCl1LdXwUjoQBqiC4fo1kBghin0cvR8o4Tmlk56XqQ3ONoRw09jOommCdbdj59N14HYnpfmuOLpUrSE+nHVvzA30wlRyN+KY71W4Llr476KFROIbZiL0YpzpsRjDD1zBJG16gMYv/5QLKt94kDCsSGUGf3FgVaEXG6u9CTVSea18qlVf6B8hDf49waGn2moOSNFYVNVYrmEHENH/4/73ojLfqseT1RRRwqbXG2kLynayjm6GxFuRN9UT80l0Y7yq18QuIuJnxSuoJuWCMaiWNJ91r5hM/fBdZ+Rz8Bv907ODOPE805dkTLtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB6215.namprd11.prod.outlook.com
 (2603:10b6:8:a9::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Tue, 17 Jun
 2025 05:58:40 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8835.026; Tue, 17 Jun 2025
 05:58:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A and B
Thread-Topic: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A and B
Thread-Index: AQHb3JniEvCDxlpTY02mQFyxzTgU8rQFeNtAgAB9voCAANqpAIAAC9cAgAADT8A=
Date: Tue, 17 Jun 2025 05:58:40 +0000
Message-ID: <DM3PPF208195D8D47A1A298C64C78DF2B28E373A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250613193146.3549862-1-dnyaneshwar.bhadane@intel.com>
 <20250613193146.3549862-9-dnyaneshwar.bhadane@intel.com>
 <DM3PPF208195D8DF1F76C172386940583D7E370A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <IA1PR11MB6266B72FDB377689AA1E741AE270A@IA1PR11MB6266.namprd11.prod.outlook.com>
 <DM3PPF208195D8D168DBEF7523422288F50E373A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <IA1PR11MB626642AEEC0EF2A557957C08E273A@IA1PR11MB6266.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB626642AEEC0EF2A557957C08E273A@IA1PR11MB6266.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB6215:EE_
x-ms-office365-filtering-correlation-id: 491f8968-fe57-45f8-904c-08ddad64024b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UefnbW+aMNtLUF1NVlPV9QR4xOodtmsgTBZPJWQKP3U+L9gf2Lh/NQK6PfUr?=
 =?us-ascii?Q?Yp98sYMJ7uDDjbEjmW2qRTws2LdF//ftg4sVQIu37rEcN1UXpbeCw8qPtDSr?=
 =?us-ascii?Q?JnujIIS7Rk0Rk0S7au18dm/mjWklZSS17sJieTEw4F2F04pdJyIHAgDHuU3Z?=
 =?us-ascii?Q?mVJBXFs3cc/t/jhbnbBRIV1MJ3DgYBxSOK41incb+CCxnk3HRttOgYQG1tJX?=
 =?us-ascii?Q?wUuY6YZnxujqHmeIJngKDP61govMKo+xNi2lZvtvkGAOKm0mJR2LkqXYOv68?=
 =?us-ascii?Q?6VqY1TL5wm61/Si1+f7h9tfbX3nQ/L6c7TAhOP18MdmPvk7Hnbol/Fo8wkEi?=
 =?us-ascii?Q?DWT9luuzCFN/se3qEpzgdXS4RMAqEqX9tmykBj5fw0uPAVauKyBteBIfIg5Q?=
 =?us-ascii?Q?MB14OaJEvcts2YUG0SOmZcmjPkInZxHP8rehbZPUSXp/8voFFVjp4TQfDy/3?=
 =?us-ascii?Q?Ozd45hpviF2Q5BUsJwx+YOup3DDJVvfZWDmGckLkj65XyCuVTt47JOWAo/KM?=
 =?us-ascii?Q?iZrczqDXue43lpMje+HVD2vPo79A0lsq/OZMoZg8VZrTzN8hWT9s5X6Mj3/U?=
 =?us-ascii?Q?Ui/Q2VSq4vGml9YiuPum261y0hhexa076NCz0qOnaS+I6qm/8PLqNZ/SdPsZ?=
 =?us-ascii?Q?bJLE/JdxO+oyQfMcp9XJW1IJ6sDLCQGy8u2oZPfk7MBEID7XDAJ8CYVXL+g/?=
 =?us-ascii?Q?IIGNDCdwOOSgEL+TIowXjODs4/7B0QsjEb+K2GbXhdLtrRTRgbl9wyufImvO?=
 =?us-ascii?Q?6EaI1h2yHIuNERiKrhmcrA0U+9Km1Vj4iFEAUuxW4fuWiUw4RVwgKo9mteQ8?=
 =?us-ascii?Q?1s70oxJmEMdoE4sjKki3NB3HJDLCyErR5ppgUSC4Z3jG3cFqCaam2LE9Goof?=
 =?us-ascii?Q?B1MVtVLqbJijbOaPPoZ3XITh7OGQGJDaTL3755MFXDXfgxcWY21xhIc6ySV5?=
 =?us-ascii?Q?9Y6/Hz/q9haP3TkPyARpLHe38pHsmpi+Pa5HtNG2ouCpg4X8NLnm3FxJ6ca9?=
 =?us-ascii?Q?ryefT2+WdL25xPT+mP9oF/q9pRyvY/KbupZ8JgyEo/dycZIrhp0fStWmzo3i?=
 =?us-ascii?Q?ysd7JTIwbsi+WTAo1kesDrZlP0/cgiscTYBQ5AuVppCWfnzSYNOPqv1Z+mWh?=
 =?us-ascii?Q?lTA0AevHXgLPbb2AgU5Ba07aZL9pc7mdxEJLqLF3o05yijXlD+kKrFSNPvXM?=
 =?us-ascii?Q?Uyex/1B40GxgvCTNm2Ixk69utAMfoRpOCXr9r73LUfFo1oMse9vI3L8g4/+P?=
 =?us-ascii?Q?KBU06K4VAc733RJ1WA3XT3DyQwwh39g4kQNzAlkZ14VY//eSqpxSS8Cy6wt6?=
 =?us-ascii?Q?YhTHiepKJaSYVDUYJUYyRRaFKbKKvluhjW/TuakPmNi1vZnOGI7CSRagqeWU?=
 =?us-ascii?Q?UknqUOCLAXjSY6PlT6Jd8y1B6whZ9IwJMPXCMdZLD7j0nnBTTNHeIHi6oo8R?=
 =?us-ascii?Q?CoaCq6JcJAXI6B9ayYZSYTkvmgdhiZkQABNXOy0tYebn2AAf9iSEyw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HfpZdxNL+OuK2hK6fNNED7+xc7TuLHrsYa/kBUSZgcvr69eJ46ojWYdiV3xL?=
 =?us-ascii?Q?JwPOTpUGoltuh76JOWW1v+1IOYNUL/uwljIvyZw1VrrnQM1o5Wvxsee6gdW9?=
 =?us-ascii?Q?n5N3QWYct3mkZOOtCBk39snl6D2oOnUFTfw73GQhKm+/cNooO9foHGqam1G5?=
 =?us-ascii?Q?iIIm4SsZcvh2pr/kMESBu9T0vr2pXyT0GQPXK/od9WoDlcsPV7XGUHQ3U/HB?=
 =?us-ascii?Q?2cfYWcw6DAWskOMOLiWGBGgEmW/sRsO6vXmWpfWfiV9/GC12OGoY3SSoMQzR?=
 =?us-ascii?Q?/YU8KJ6B3NzNBGnWHSRxrA5fj1gi4aduzFyIh773d1F8cd5uEwCvglC6M5/O?=
 =?us-ascii?Q?iO9sre83+zIegUjTTh+qM8YRUUzmgREL2SLgJnwp1atzVSq4J6bNgmmKIroY?=
 =?us-ascii?Q?mOxtZuecMLMUzKTw5JJ6PUE5tofjm2HTwg9IpREy0rkERACBhMj0CWWlwN1z?=
 =?us-ascii?Q?cFWBvV5qXuTaIERXyPNDBmLpSWJ5sw4z7eh8rsyoXrjdU2/6iNalq0fqXDLQ?=
 =?us-ascii?Q?rPCEw/1OQ6ZonkE3HnF/QlqLnjGVaZ6r5dRqtT6GeLS/HnIZL/GTkIJ6kqW5?=
 =?us-ascii?Q?+jiRUyCq/S0ejzRd4SwNhuDepFIkrVZ0vKm3qgVCJ/TXtaAt/gDY3RQ/QS54?=
 =?us-ascii?Q?+AYOnoXgMAeJxNYS9E5X2/IwKewFRwu8dNj5/29HygpOkutOlwyJvZ29QF9V?=
 =?us-ascii?Q?bGRdo8PFnSGB26yoUSH/9UtZvZLCZZYncy9FdvFagNdNO4we2OVf7vhjAjoq?=
 =?us-ascii?Q?C+r8fknnzDXuaAqDjqzwdjafXAvPajmihKrss9SDNLB9dbdemPgNB55AJwWo?=
 =?us-ascii?Q?CilGlU0ER5xpW6j+WHgkIV+JbFo2zwvHuEuQfut3IzF7N265iL4T4T8w2O3E?=
 =?us-ascii?Q?NnMWFatNNnd7JRoDv4KRluvHNmArRD399IXyhpgbaEq7aDNafTNJMCOQGGCE?=
 =?us-ascii?Q?MXuQyyFCAnzGejm1AYz8HeoevUlCmHRb7+R/LZL0iI1MbqWB82kZw3uzBVnf?=
 =?us-ascii?Q?0Vq5rTJUlIXUgHMHRwukke08JX3t0k7GXKBKjREVe/VmKDd4EgWYbSNh6GJn?=
 =?us-ascii?Q?29DEjG5AFmMyIdasMthWttk+y94Dhcp2ViGNw5F7mkp3L2YI5Dkz8Qn+BNmm?=
 =?us-ascii?Q?nyKiWSFA0EOhMhcYEjYnX+9CaX+wXOmIrRgfDaZDKnwyYMqBQSjoChcHKBX4?=
 =?us-ascii?Q?v/m2EZ29+p8FYomqQb3zV3gDNYHpuRLoNUkeqHc6sBNBnoob96pJ6vKVXSKJ?=
 =?us-ascii?Q?oWbm+6c5rPxPJwZvKnweGGzKQgaF/kw4DoEPfOf7V4XC3qrc5tE+u2VzuQqX?=
 =?us-ascii?Q?AdnXG6hDGD8b5oaeIhs5grM1vvhXg9lpGGLSiPuxwKGpzzKfmBPVnGuygmQ4?=
 =?us-ascii?Q?SIa2L1avgVHna6FVPKS+DcGo4Q4ZSSBIzHnL4IAIcGvnZSVdFDjyLG2GUEBb?=
 =?us-ascii?Q?lBuYIQrFIcZci22eG+UW+IJsKfWF0mup08DAzBkRBF26WBMbC3Dv0SpCQQeW?=
 =?us-ascii?Q?/4x57OqyS0tzJK3wvOI6/Ha1IEBcR6Ed0ajgmuE6SkLmYf30EpVf+eGaGwkz?=
 =?us-ascii?Q?spMlkjzAwz/YkLEsMhzKzvBghTWbaz6kSMpKB0Xb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 491f8968-fe57-45f8-904c-08ddad64024b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2025 05:58:40.2878 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eq6INzGiCG5aj/CmBeoj7bpwJCun/a4b8R21Xu5pD3pSeVxGn+PwGWbAUjcMUXJdEnVBMr8AO5whDsPpGSI3yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6215
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
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Tuesday, June 17, 2025 11:16 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org
> Cc: intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A and=
 B
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Tuesday, June 17, 2025 10:37 AM
> > To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> > xe@lists.freedesktop.org
> > Subject: RE: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A
> > and B
> >
> >
> >
> > > -----Original Message-----
> > > From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > > Sent: Monday, June 16, 2025 9:31 PM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > > intel-xe@lists.freedesktop.org
> > > Subject: RE: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port
> > > A and B
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > Sent: Monday, June 16, 2025 2:09 PM
> > > > To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> > > > xe@lists.freedesktop.org
> > > > Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > > > Subject: RE: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to
> > > > port A and B
> > > >
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Dnyaneshwar Bhadane
> > > > > Sent: Saturday, June 14, 2025 1:02 AM
> > > > > To: intel-xe@lists.freedesktop.org
> > > > > Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > > > > Subject: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port
> > > > > A and B
> > > > >
> > > > > WCL added a c10 phy connected to port B. PTL code is currently
> > > > > restricting c10 to phy_a only.
> > > > >
> > > > > PTL doesn't have a PHY connected to PORT B; as such,there will
> > > > > never be a case where PTL uses PHY B.
> > > > > WCL uses PORT A and B with the C10 PHY.Reusing the condition for
> > > > > WCL and extending it for PORT B should not cause any issues for P=
TL.
> > > > >
> > > > > -v2: Reuse and extend PTL condition for WCL (Matt)
> > > >
> > > > Add the bspec reference here
> > > >
> > > > >
> > > > > Signed-off-by: Dnyaneshwar Bhadane
> > > <dnyaneshwar.bhadane@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++++++-
> > > > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > > index 83c8df9dbc0c..ed8e640b96b0 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > > @@ -39,7 +39,13 @@ bool intel_encoder_is_c10phy(struct
> > > > > intel_encoder
> > > > > *encoder)
> > > > >  	struct intel_display *display =3D to_intel_display(encoder);
> > > > >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > > > >
> > > > > -	if (display->platform.pantherlake && phy =3D=3D PHY_A)
> > > > > +	/* PTL doesn't have a PHY connected to PORT B; as such,
> > > > > +	 * there will never be a case where PTL uses PHY B.
> > > > > +	 * WCL uses PORT A and B with the C10 PHY.
> > > > > +	 * Reusing the condition for WCL and extending it for PORT B
> > > > > +	 * should not cause any issues for PTL.
> > > > > +	 */
> > > > > +	if (display->platform.pantherlake && phy < PHY_C)
> > > >
> > > > Just because PTL does not have PHY connected to  Port B does not
> > > > mean the code wont come here it seemed like this is the check That
> > > > made sure we go to c10 PHY and with this it will go for c10 phy
> > > > when port becomes port B
> > >
> > > This would be case ever. No,
> > > PTL don't have PHY connected with Port B so this would never be a cas=
e
> ever.
> > > Specs: 72571
> > >
> > > As you could see similar condition is also extended for lunar lake
> > > which has the don't have PHY connected with port B,
> > >
> > > Dnyaneshwar,
> > >
> > >
> > > >
> > > > Regards,
> > > > Suraj Kandpal
> > > > >  		return true;
> > > > >
> > > > >  	if ((display->platform.lunarlake ||
> > > > > display->platform.meteorlake)
> >
> > Got if that is the case you can merge the condition with this check
> > since it basically does the same thing.
> > I would get it if you are holding out to see if the wcl platform check
> > comes in but in that case I would say Wait till that comes in and merge=
 that
> change.
> > Add the Bspec reference in patch before merging
>=20
>=20
> Thank you. Since it has been extended for WCL, it would be good to keep t=
he
> conditions separate for the time being to make explanation easier.
> Later may be year later, we can combine them into a single condition as y=
ou
> explained above.

In that case this needs a TODO here

Regards,
Suraj Kandpal

>=20
> Dnyaneshwar,
> >
> > With the above fixed
> >
> > Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > > > > && phy < PHY_C)
> > > > > --
> > > > > 2.34.1

