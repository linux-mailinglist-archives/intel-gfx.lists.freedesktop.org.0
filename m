Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 119F2B2C28F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D42910E5B9;
	Tue, 19 Aug 2025 12:03:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kIjB95Aj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8738510E0C1;
 Tue, 19 Aug 2025 12:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755604983; x=1787140983;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BgQ1jsTHrjFEP4TPX4dv96PNrvDuUvuqvq5PFTpb8OU=;
 b=kIjB95AjstT0GT3/eKNPlA9kkSuA7hEbBOvdkPP6T7vaoPtVVDYuJeBM
 TSR/wowT1CiwMmFejb1/W+b8GDUpfc5yEQWr309lwUtTWlxqrjmwRcyJ7
 7K/sOf/LJD03Cig78LKZk97vcCd7yKKOU7ejO5PWOce6cHvMcbNu9CzW6
 BLAu5V11vcWOUIvO9MtMaZyucKsyJ9Ib9GX7SxTVWer5dgXPP7MO3iybJ
 cacyIZk8ffUxHHT+/UNwORN/whpeEVuyLPnVF/JMtKxfLvu6dZaGE12rN
 FMBjIdZC3YvWpdZoorzoa32Xp+ZNjv3UD0H+4JZiC20Eylt7n3jWOiwhb Q==;
X-CSE-ConnectionGUID: 9zHaJdSxS6CbMvC8PRGk2A==
X-CSE-MsgGUID: Uye7C2xAS5+B+R6ds+eCYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="57799977"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="57799977"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:03:03 -0700
X-CSE-ConnectionGUID: W1fSAlKHRwqdCtAbmXv40g==
X-CSE-MsgGUID: i7iWFzToQrS3NYFZHk2IdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168236177"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:03:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 05:03:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 05:03:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.58)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 05:03:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dbIoqo4XPGcssQQK0fhhxKtS6mIU5CmXWYHud/e36zN9J+Q0n10YzSiRTUCuPGcHpHAFaMUXJbEOGKERr+lqmZQkRZKH/keIGmdUZVFfnWySSGvikGGSThmV3jZGRRZtLAlceZE0FGq9xCjgXzx7qE1vz5XuCjmInDAhXZRCofKKiVGRZsCVgaMmaro8f1DgQucuYYOOqFaLuKl3L+w4S5XnLYjPZ8VsakrzKiNu/RTt+E7P2K5h25Az8gSjOYxOf+/FHBJ7+X7hEUuR9OmGdimVnu9YRZ8ZdyyhG9gJOxNny4PqSFhD63CzOXvhvkieE8injVSDHnpO9zSeAnxgPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vzs8hLDnHP6XjQZq76VGRVOezAlGzNhxGvI+f5IEO9M=;
 b=vRtYvAGGzCNQpYoUa3kblF9pIxXrwBvwKsj1hWOziGua6H1dWQBq8nanURVnMsAe9maOkldH57JqgfFsgtKQYI2JAjpTupT67o1PRb3ndG9aVqsmPcAAE9ozSgZ5KdVKzO+OQkL0KFRRbsSuM+r5lxO+NMmWrXF0oYUPlqsmC4Q6nkjY4iV7WjY92uTWu5UGV0vrXIsVorkxXoKexDdVNQQcYytpe0obcwduRpZ1FyYwBCieVbMIahB6BGs4axv6jBXMeU6mPx54nKpaePDMUL/rb51Gq5t6efYDW7Xb0BmLyU/V8HzG1GRsSenoWR+6NCdyAQABPdfSFWTQFLz/nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 12:03:00 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%6]) with mapi id 15.20.9031.024; Tue, 19 Aug 2025
 12:03:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v5 3/3] drm/i915/edp: eDP Data Overrride
Thread-Topic: [PATCH v5 3/3] drm/i915/edp: eDP Data Overrride
Thread-Index: AQHcEOAtVEFhi1LX7kSaijHF2u5iTbRpuTYAgAAmc3A=
Date: Tue, 19 Aug 2025 12:03:00 +0000
Message-ID: <DM3PPF208195D8D72E6302229F3EA47BA27E330A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250819080602.84826-1-suraj.kandpal@intel.com>
 <20250819080602.84826-4-suraj.kandpal@intel.com>
 <d1124158037cf3cb0ee9f9912e9c067f707befaa@intel.com>
In-Reply-To: <d1124158037cf3cb0ee9f9912e9c067f707befaa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CO1PR11MB5057:EE_
x-ms-office365-filtering-correlation-id: e51fc95f-3b2d-4e08-fad8-08dddf18580c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6ITESrdNmC/4lWMMitme9cZtnxen1hbHbiU/ZSwpq6vOW9DyGsNKgShPcN9x?=
 =?us-ascii?Q?Nce9A23rPj90pYowucNqCGwkx+2WXHzTI8gjNIrqRs4mj25a4IshUp4NL/HM?=
 =?us-ascii?Q?nssSkpYSvLmxqTeqCrAP1VrgfPlRChYWm3JfuXq5eLP1/pRmjbgkD09UzroU?=
 =?us-ascii?Q?BE8FJ7AVEYUVr17gnXQoxDEtnR9Uc3A4vNkZjvwXhWml2XXbRyUB7sUr+kQu?=
 =?us-ascii?Q?QIPwhlmtLh8x6QGJvP8o+6tZagqdaDSAulky4VHX2AbGMx4UINDacCNL4qkf?=
 =?us-ascii?Q?iIJXYZiImXR/vxL4lCfq0+5qfhGeNRNK8iePGVKenqxWLyMMK1NMCgExT+WT?=
 =?us-ascii?Q?0mIgUqM3x2FEyAwCWXadF6DA8sJpF89/dvf1PGWq9RZO7r81E+z/hWrtyo/X?=
 =?us-ascii?Q?1NdLKXhm4N4iwNPwo9qEIVbNLKUOn1jqXV5KVEZqLduthXFZbZMhAO/MC6Dl?=
 =?us-ascii?Q?v3Okke14PEMiYMm2j1sr9oevCKekomgqNjzqWzPSsKSPDBV7ra1/PoOhdHBE?=
 =?us-ascii?Q?2Sp8wJh2WBVrSuhKnlCzGvIiZLdQa6I371y8ZRXtao+8Fxl9wwtKTfnbpbQ4?=
 =?us-ascii?Q?SQwpL1vUV5GteQPvMEr4mbBL1qyT4zE398uRE4wtItBncbEg42LtRRRWPaiu?=
 =?us-ascii?Q?Is109Sj54xPG4FNVr7CMTVxW50MBxHxn1v2bhR+HTyxHnw6yGzgCuE4/Z8LK?=
 =?us-ascii?Q?Tu6yAamSyZJmsX0TW1e4be+t/iV+TIP2smQoK50QcJn3pqSRoWpqkJGOUiU4?=
 =?us-ascii?Q?tFJw3DU18vJ+E5dgvgPJRDiiT3tOMz9vPBA/SLGwUi6hWWs0+jKIc5Vhv9P9?=
 =?us-ascii?Q?O6sxCq6kP1PAeQgR0VLzApdCKKwtrGwmujiJumS8RyB7/YYLIajHVyS8I1Ul?=
 =?us-ascii?Q?+rXdamyLCjmwAI57Q6vkAJ+4d6eFJHdBlSGqMT4D21g6rMnSslyfgUZ2TWD2?=
 =?us-ascii?Q?Nn6ChqIK/FN+LHr4v/HyRfpuAKv7idQi91d1NdJZ5pF3GYSARjqKrsenTWTE?=
 =?us-ascii?Q?Vc3UF/dpZFb4nURP1wqy6L7hYpz0mVinQmmjFtx7CsG1yj6ZmERTp1F19Uyi?=
 =?us-ascii?Q?MvlSdOyDn5e64u0z8BASWrOPX/5EllIYNlkfLK/OntGHNNI0Py6Bonxv6C7h?=
 =?us-ascii?Q?WHFkOmVFuUPBOSu9B0Ehn2Lad5W5CBqkjTk2G2gL2tfX1SaHufQhZbYQJHrG?=
 =?us-ascii?Q?MMq5+VpH400Lpgpp7m6+IOjGsqQ67Puo4nYuAHaRVIXjKhwiiTJWU+8BEHsE?=
 =?us-ascii?Q?PPYWRJ3KYmernL1KcLVXO06RgzPLmL8/a10FgwahY2Xb2p8feuIkzoQkc8l7?=
 =?us-ascii?Q?PAV/VLN3j2KFsZnGcabR0Tbf+atcXbhjWqE3pFJWv9rqJJ9utgNRtd8fhy4a?=
 =?us-ascii?Q?6RGKmqMNCz+0XD+gpR4tRpTNzikAyngq8ABDuWWsIk93LdzXnXKiW/fHFUcb?=
 =?us-ascii?Q?7hHYySZls7S0yuAghJjCRd4qLqgiRMPTysEnvpC/u6jhbsGyyOCUh0/pq0DP?=
 =?us-ascii?Q?DdJjr+7cz36ys+g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6XpK1LCgHEKjtHBPjWLdktOKBzTKjB7N2cRjzwPaBG6vgkJw/rE8GH5Lg8xe?=
 =?us-ascii?Q?WXM1GWvgoSsmSPWVnEIHXbnEmRhlSOAiMkpvnKaRgKxXt8feHdtbHF0yLc+w?=
 =?us-ascii?Q?QjQPQ1tMWBhnF6fw81hZ0+6cfN9BmtjMR2OGK5LPPIGGoyUAFxIRW5ukQ56S?=
 =?us-ascii?Q?dVvCaj7K0sICPK/X/nfk5KDuaBMjp/JrVqvzwi9rV7ZB2Bh4a1IP4v6AYuoI?=
 =?us-ascii?Q?ibEdCx0CTvNtRVj6Hy1d+yF2HGou4UIb+0UO2rpc9IQUMH4G5BZFZablxRjz?=
 =?us-ascii?Q?FqU4+k7xBgCpb0RC0Rra4JHAdzSVvk/2UN7SnaO7Zp58VCgfFyr3Z9msgDHK?=
 =?us-ascii?Q?HvCxmTtDvFn3jcc9Rtzrm9TFFgM8YJymzAIH6RBXIS3BPUGIxiU1KfmwsG6G?=
 =?us-ascii?Q?fsuumimGgc+M+HIxw2Ymuq6xvtysckcQljAl3KxLePlcd+ee36NrFfL1Am0i?=
 =?us-ascii?Q?CPZOiCz87nGedNfd6jajO00kBkXGsP6SbxuY6OASxnWjxCSRcxHQLwSoG0mO?=
 =?us-ascii?Q?l/LrrCoROo4unNHCtrKNKWnbRhlZzGeFZxERk49gxBHFcBd7rRH9d+UMwy+V?=
 =?us-ascii?Q?TJdcKbadps8vu/3PoAzr5cSFdE7jX87CWGGESdLsQR0v0iIPa+jhq5QcphJg?=
 =?us-ascii?Q?/O7vjtzN2VIMml672ls9b1zSsyY8xz9PEQXRIy3MNYX1eQcDdaQ5JTCP55Np?=
 =?us-ascii?Q?fbJ/MAtkinwbPVL/6Gr3uO9aGo2OY3Vg2n1fsBMs/LIbBfGis7BHx2EkAZhq?=
 =?us-ascii?Q?mTQW07h1e3ZLOuzwpfGzBwIKCfXGve7GxtoObF+On2Q0bGffTfj0xIxVPhSm?=
 =?us-ascii?Q?KFJH8av+LSP49EIi6qoGiQym5UJOj2fUFy1gq7J38bPywN+MZP/VryLsqZxX?=
 =?us-ascii?Q?FkxZnZlo8hjkBfvWjBhBHD/a8LuTpzGROUPjQdmJLJsGxxMgdOoHja7/xvji?=
 =?us-ascii?Q?8qst4eFWFHEv0EwiisCtLyhuMxxeZIJxsDkPxcng89aXAfN5MZ/edMV5j2x+?=
 =?us-ascii?Q?0tdy1vkI2V+L1YIv1SyLx2SA9zV+F2GhELGvOIq8Etqbz46nZxITFoPspkCU?=
 =?us-ascii?Q?vX3mPqxDBj4C2YkBJ77O6YaHV240BXxRIwCMKgXYXtsa9TzGnkH+95Xioz34?=
 =?us-ascii?Q?oTY/ifLNVMhlEVWznY+K06yooL+o0WqekkRmi47lCkJacRLy4gptYkNev/jP?=
 =?us-ascii?Q?TSgY5Moub9dChk7xSygxB4XUksc4xSGv+X2ieo7TMznB0czh5MLFN6Hap+CT?=
 =?us-ascii?Q?DaioX7SHyX39W6T5+02CqpJbYD+Y1Ld9bATmDuy6H7kYte9h9TC9DCIL+qKR?=
 =?us-ascii?Q?1UcoLJ7jR2jhwyLUHnm6bFxmeYY0LR6iLkY7wgrBqJvrzOw9su1cal4b5+bG?=
 =?us-ascii?Q?4yarMKgre3ogWSM6llPR0hcqWTtjKVyYxT8NRX/kQD63/jB8jswd+9rurnSG?=
 =?us-ascii?Q?zhe422lkUi2bjD/MeS+UwEvZGTldGvJ6CFmU1jppRDvaf5HZS6Hcq6OQoe2q?=
 =?us-ascii?Q?ylbaDs19BOR010JnS5TOBiU+uGFughVoMtDBOirTPnQfTE4OXIoiVFWNMj+g?=
 =?us-ascii?Q?ITvrhW8ntfx0+7AahVxgYc8BGD8ymw+FD8bMRmgk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e51fc95f-3b2d-4e08-fad8-08dddf18580c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 12:03:00.5317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OyRzbLBAL7l4hYgGaJ3VypdAZ0ih0XKX3VIU9Xw6PUpy/oGZ4BZTyJJ4OzW61qPpc4PADjEe3OAo0iTBqZoeXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5057
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

>=20
> On Tue, 19 Aug 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > We need override certain link rates in favour of the next available
> > higher link rate. The Link rates that need to be overridden are
> > indicated by a mask in VBT. To make sure these modes are skipped we
> > don't add them in them in the sink rates array.
> >
> > --v2
> > -Update the link rates after we have a final set of link rates [Ankit]
> > -Break this patch up [Ankit] -Optimize the assingment during loop
> > [Ankit]
> >
> > --v3
> > -Add protection against broken VBTs [Jani]
> >
> > --v4
> > -Fix build errors
> > -Create a seprate function to check if edp data override is selected
> > and using the correct vbt
> >
> > --v5
> > -Use correct number to check the num of edp rates [Ankit]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 15 ++++++++++++++-
> > drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 22 ++++++++++++++++++++++
> >  3 files changed, 38 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 444ed54f7c35..05a74c3bc9af 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2521,11 +2521,24 @@ int intel_bios_dp_max_lane_count(const struct
> > intel_bios_encoder_data *devdata)  bool
> > intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data
> *devdata,
> >  				   int rate)
> > +{
> > +	return devdata->child.edp_data_rate_override &
> > +edp_rate_override_mask(rate); }
> > +
> > +bool
> > +intel_bios_vbt_supports_edp_data_override(const struct
> > +intel_bios_encoder_data *devdata)
>=20
> Why are you adding this function? Earlier versions didn't have it, and th=
e reason
> for its existence isn't explained or clear.
>=20

This function was added in v3 (I did add a small mention in the commit mess=
age I can maybe elaborate more there)
 in response to one of your comments in which you mentioned the
Possibility of ending up with a broken vbt that masked all the link rates c=
ausing us to have no link rate
To drive the edp with this function now checks if we have at least one edp =
link rate using which we can
Drive edp if not we do not modify the list of sink rates at all.

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
>=20
> >  {
> >  	if (!devdata || devdata->display->vbt.version < 263)
> >  		return false;
> >
> > -	return devdata->child.edp_data_rate_override &
> edp_rate_override_mask(rate);
> > +	/*
> > +	 * This means the VBT ends up asking us to override every possible ra=
te
> > +	 * indicating the VBT is broken so skip this
> > +	 */
> > +	if (hweight32(devdata->child.edp_data_rate_override) >=3D
> BDB_263_VBT_EDP_NUM_RATES)
> > +		return false;
> > +
> > +	return true;
> >  }
> >
> >  static void sanitize_device_type(struct intel_bios_encoder_data
> > *devdata, diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
> > b/drivers/gpu/drm/i915/display/intel_bios.h
> > index 781e08f7eeb2..d24660bcc7f3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -276,5 +276,7 @@ void intel_bios_for_each_encoder(struct intel_displ=
ay
> *display,
> >  					      const struct
> intel_bios_encoder_data *devdata));
> >
> >  void intel_bios_debugfs_register(struct intel_display *display);
> > +bool
> > +intel_bios_vbt_supports_edp_data_override(const struct
> > +intel_bios_encoder_data *devdata);
> >
> >  #endif /* _INTEL_BIOS_H_ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 54d88f24b689..f6fad42182ae 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4277,6 +4277,26 @@ static void intel_edp_mso_init(struct intel_dp
> *intel_dp)
> >  	intel_dp->mso_pixel_overlap =3D mso ? info->mso_pixel_overlap : 0;  }
> >
> > +static void
> > +intel_edp_set_data_override_rates(struct intel_dp *intel_dp) {
> > +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> > +	int *sink_rates =3D intel_dp->sink_rates;
> > +	int i, j =3D 0;
> > +
> > +	if (!intel_bios_vbt_supports_edp_data_override(encoder->devdata))
> > +		return;
> > +
> > +	for (i =3D 0; i < intel_dp->num_sink_rates; i++) {
> > +		if (intel_bios_encoder_reject_edp_rate(encoder->devdata,
> > +						       intel_dp->sink_rates[i]))
> > +			continue;
> > +
> > +		sink_rates[j++] =3D intel_dp->sink_rates[i];
> > +	}
> > +	intel_dp->num_sink_rates =3D j;
> > +}
> > +
> >  static void
> >  intel_edp_set_sink_rates(struct intel_dp *intel_dp)  { @@ -4327,6
> > +4347,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
> >  		intel_dp->use_rate_select =3D true;
> >  	else
> >  		intel_dp_set_sink_rates(intel_dp);
> > +
> > +	intel_edp_set_data_override_rates(intel_dp);
> >  }
> >
> >  static bool
>=20
> --
> Jani Nikula, Intel
