Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C488A2C57
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 12:30:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555B110E5E2;
	Fri, 12 Apr 2024 10:30:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Twyhk/18";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB7710E5E2;
 Fri, 12 Apr 2024 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712917834; x=1744453834;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BV+xcP5eUsQMsXFqbwGkN+NVILjGjeTz9B2E0ArmW70=;
 b=Twyhk/18KV+2NWnD6At2byl/kEu4vOVMmWGdHlYGeW7/ilfWO+Sen3kk
 QKVzalmVNvwwbAO6cuI+2RihFpr2q1F51oMTZItNkHWrvtA1fYE1gMDZy
 qJYMOrsbwkUkZe/9fo66seFyXq7X8dO2djnDBMbFHbXgeyNUZzP9tWmyV
 HKWbItTdlo68AxK1AIUxXjdLBmOWVgFS/O/ItGCOQuBK8Z19Ak/pX1vJu
 fPYwaAN0S3Q36xDYdh7TJg8E9+L12LR63gQ3gj6Vql8nrA5DddX3pYFLn
 sol9PEvg1WHeVmF3YaHrly7CHUQ6XKXigajQYE/NhANcyhPWFLIZY3Qyp w==;
X-CSE-ConnectionGUID: 4QcXr5IvQzCr2GmXKzDJGA==
X-CSE-MsgGUID: yB1EyaCuQOCiUftE1wGr4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="25823290"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="25823290"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 03:30:34 -0700
X-CSE-ConnectionGUID: m9PYdWstRSa8vEodkaI7wA==
X-CSE-MsgGUID: sYBVnOFcTBi3SiNDTYEStA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="21238549"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Apr 2024 03:30:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 03:30:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 03:30:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Apr 2024 03:30:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Apr 2024 03:30:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bX1oEINU2V+U/t/TR0qRQ5W1F2zrN6YZ0mJBlwRs/JTcjnUaR29fl/5cVX12tJbKCJ28jqk4BdfP9pZgHzjEzgxIQRmTGpspxWV8QoiW1B1mStPjU4M6Ysq9Vj1+N8ajv7rEUscWyfwdY2oGXSAbnBRj/MqeHRTSOydIKrGPC6jdwien1lkiAIuPYVbwXwThoE/BVR5n2z4yObmzwhWGZm+nleWYE4jWWbli7OAHErZVB7ueFJurAcwKANtKi5ZxL9Eg2L/X7R4iu6D22xIKlieAhV/2IQdaYZYGql3ogy432VVlQuh8VeK6COR5xTnZTzvUyrfkpzbzQMi/3OUoqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K4qKSBgDBSmjIrQvxbbDlQ1ME30AEY2Tgjqw3DaXmP4=;
 b=R5el0IFtu374nFREq68bTHGrfU0j2OZFZjeWjWtHzXXqGSoVTQKAZLPo4VQk5CWGto009hcalRTyso5Lh745UZP13vUEq7aA6PzvdHQzu0KxN9PFbCSXBTmFKLug7e7u5cP8c8XodTaPPXOgok96ZQxy3Zz4orUo5p1aZwNpVOoU2f+RpG/NZkhwKqRQnv84bGVTNEZn+V+YUu9RG4XW/ueFTJI6OiFpi9rtprPh2TxYf11L6KmDazspcYTGcB5eVDNqqoZVQYgqL/rEcYDyqAWYADroFRbpkSy7QwOZH3I5RcRoMOaqC9bEvrk1w6Pq9M7J4O+b3Unevt+JROhs+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW6PR11MB8409.namprd11.prod.outlook.com (2603:10b6:303:24c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 12 Apr
 2024 10:30:07 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Fri, 12 Apr 2024
 10:30:07 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
Thread-Topic: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
Thread-Index: AQHajL2wo6LU8JVDVEqegBwiuHcABbFkbtcw
Date: Fri, 12 Apr 2024 10:30:07 +0000
Message-ID: <DM4PR11MB63600F7F0EE905B24FED01B2F4042@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240412094148.808179-1-luciano.coelho@intel.com>
 <20240412094148.808179-2-luciano.coelho@intel.com>
In-Reply-To: <20240412094148.808179-2-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW6PR11MB8409:EE_
x-ms-office365-filtering-correlation-id: ac77d4ae-7ee0-4aeb-7da6-08dc5adb8604
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S4t1EQ4InyStsQy7vVlMF/at9gB2/UolTDcFtMv+2RAv07TaANpkmrGPKqLy8+shyVzzBs5R6dwPKtH4a+PhGhDhaxMvVTdnCg+W5Dmk8Rl6tSTx79w0JucutkCjutnvIxYHbK1Q6uHyXqNvmZTGIGHQWZt3ibiX0jLot+KWk4xJ5EWDJi/63FsRcJ0NqAIrEKePLmr1o5ts9xx/XpsYV8kI/VG6e8WfQBjFSENCaBM6O9mEMhPrAdvnjW1EGtyHJT8abc0yCbrOjswqC9bG7OrEXpR48dJyVyWW71Uxdn5UnRs11ajgRX5eKvKN6ouG9oMLTfuEM5dgvEykxlmOG55Jtb7cPdopuNuOKqRhSB+Pn3UBRstRbTq+b+MgzwpRAtZmch6YWuEoT5hUZHOBbLBrHK8SvQ1XotvaMPlqPHDJyvZqORiyr5hYfysQEo6qPrfFWS9/pDB5AjVPmchieHpB/tf3u346f6wBS4p8N4yasSlJcbFwb8ws1eB50ppea6WS3B8ysvHTPluLucP8oZMlVw3CFiUL4V3qQe84HgehIJ4Xg7bwDiIjlHWAMCzc+7t0eNC+a5gq9SpkaWXYs2QNdqOuaHTPoD0n2sA46EmaBxGrN04yvTSUO2DxHZHS+UCUSVbbGNuOg/Ex6vggDIQOkbwUSFEN1m+ujLw89JR+SfHlW9zhV0tlr4M/oWUK3j3VGDcWXW6Tidj/1Qz2/WJTIkSEnHcnJSdy+i3nQDY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fXyvClk3AD9S7ckcxHF4PEl7g6e3y0Rv0DBQ4P3QFnw6lOipVtYi1KYI5Ovu?=
 =?us-ascii?Q?Na7/JILIVl7RRZsa4ZSHmelxAvsHLLQ9qJufrYbwGhij4fHSVLNwr467niH+?=
 =?us-ascii?Q?Wg5zw1NWNfP1avx8MQLaH8VIDVP/SFFbFCj0hmakzcq58XqnZ3mPB4TG/+Fu?=
 =?us-ascii?Q?4BwiwQoZ+0LE0oKFJGi0MVrN1K1OlgSvDqCxpY+p6y7Ofw/iC5SbNmVKdQlj?=
 =?us-ascii?Q?hIhOOyMDHRO8+BzGieJd/L2cHmny1Uq4cTtSP6s/VKD/rs1zkGBlgmOV9xVH?=
 =?us-ascii?Q?zqa2n6gVSLM1cfTazpMtXycPMDzy4gGFyYxpiCjoGjXG++4NkRMYizSbJuio?=
 =?us-ascii?Q?rbieo7br5ewjCl2VW9ofNuAGfQ0sQT8ksPnngud8GgqCRMVyKkvYJ2zoXNVn?=
 =?us-ascii?Q?x9AR4ZWLOoLokYWVKDxwXT4mWwRvLtN5+GpevPes+d0Ig05xnW9FkN3xFAr0?=
 =?us-ascii?Q?OxOlXGFkXQEAtGQRilfAoUcqZttqoxxzCMqKewzezTdTSIIRP+YgaPpjBDX1?=
 =?us-ascii?Q?EkWM3XRu+1KNDZz2d2y6IBl59Kk7QPczBpciNQr3TDBSctcnAt2I0YazbcjY?=
 =?us-ascii?Q?00BlXTb3v9LDiGmhkXelaSGDp/6GZ/8RG5ZpjgTbDwKUVgE8i7QI2Xuvh8nn?=
 =?us-ascii?Q?KLOYMk92TLuilqmf4eQpfZRCo9CKWLwCsKMwzsVwADdHyW8e3kWzr4VprzbT?=
 =?us-ascii?Q?cB/wFoWWUjj7NPGiDe5ko5o+uYW6InexGZsymQVwK4e1uFRvQR3hAkmZrQWd?=
 =?us-ascii?Q?V9S5TbImJMFgzpYGqewvfLq870IkYSykvgGTucjDiwgcP3jMYR3NEgfFxO+y?=
 =?us-ascii?Q?3Dh6fyT+Rydj1/eZaW2OxihO+sgx6hBmQ6yaWr0dDvO5md7hylcC+BDt8dI3?=
 =?us-ascii?Q?6WV31J6As+umfwb/S/QQicHb8Mqm0mov19ubonDjE0/ujfzvtUE2pPJafz5y?=
 =?us-ascii?Q?XMmoFLGT3/zyIXjK6a++B/pSM+1ky64yjwiWT6AZA65oPxpNFbtffHSZf9rW?=
 =?us-ascii?Q?kegY3d0Hjlynkn8pAGzip1yzNUcQ2QLOpMD7VF11wsEWRiMZtRiadBCykHld?=
 =?us-ascii?Q?wVPhap3v59xL5MxKvd54ygk6LSQyChsJlbRuwkzreHwL5WUHC++HxBa9UAiG?=
 =?us-ascii?Q?uo0fDXuvz5W+rVNN6HAjhJKKc4lk3/SbyBqxTP/BtP7CPVhgsJP+2CCmGy1S?=
 =?us-ascii?Q?2Gfs6GY90FIN7UR/yLP/L3QPV5lGgewhr6oTaw8IHIidpRuwj6m9Q1SBY9PD?=
 =?us-ascii?Q?B9mTwPcHXCJ2mHqaYclQUS46HF94LLJq6TPlKn/SQwsh4NA9BOqg9BbPegjR?=
 =?us-ascii?Q?v/XYYdh68gxRyGQeMm98fG+dlwEVLSYqm9CsGkyfTOMUuig5xAS7eG/7FTTd?=
 =?us-ascii?Q?Nnw3/8PiLkFPueT/ziTDgbpNgFIgEvC0yGpq4DLHD5I33soGWWpu67eimNVX?=
 =?us-ascii?Q?PwjYJmg4mlTRKGRJnc9T26sQoH0JE9yqI3kxQVTZ900yavSMYruW5PxbNCz6?=
 =?us-ascii?Q?mpE6VDT9KNlHWf6IZpF0V91OW3uJ9a8jiCNLUn9S7AGlkvxVwf5ygIk1HZa6?=
 =?us-ascii?Q?tUnKFzkO8s8YV/IMX+4AiQArj9icqWyvpQAkRnuOUH6nqw+l/5U4EQ5wp584?=
 =?us-ascii?Q?3Nyj5Yi5xISDenpH/ssSaqW/0dGG4wLlLyuN5WV8V1Cg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac77d4ae-7ee0-4aeb-7da6-08dc5adb8604
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2024 10:30:07.2054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o13zoa3Q20hrJDU+pKWSvuWyDSsOdjt7q7rRj9pnZl6UdXZ3VGZ5zEPFYtcUOg+Omx6/zg9Eca7L5tEtsWsyOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8409
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
> From: Coelho, Luciano <luciano.coelho@intel.com>
> Sent: Friday, April 12, 2024 3:12 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
>=20
> In order to reduce the DC5->DC2 restore time, wakelocks have been introdu=
ced
> in DMC so the driver can tell it when registers and other memory areas ar=
e going
> to be accessed and keep their respective blocks awake.
>=20
> Implement this in the driver by adding the concept of DMC wakelocks.
> When the driver needs to access memory which lies inside pre-defined rang=
es, it
> will tell DMC to set the wakelock, access the memory, then wait for a whi=
le and
> clear the wakelock.
>=20
> The wakelock state is protected in the driver with spinlocks to prevent
> concurrency issues.

Hi Luca,
Seems you missed to add the version history.

Anyways, changes look good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Regards,
Uma Shankar

> BSpec: 71583
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  Documentation/gpu/i915.rst                    |   9 +
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_de.h       |  97 +++++++-
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h |   6 +
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 234 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  31 +++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  8 files changed, 373 insertions(+), 8 deletions(-)  create mode 100644
> drivers/gpu/drm/i915/display/intel_dmc_wl.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h
>=20
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst inde=
x
> 0ca1550fd9dc..17261ba18313 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -204,6 +204,15 @@ DMC Firmware Support  .. kernel-doc::
> drivers/gpu/drm/i915/display/intel_dmc.c
>     :internal:
>=20
> +DMC wakelock support
> +--------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +   :doc: DMC wakelock support
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +   :internal:
> +
>  Video BIOS Table (VBT)
>  ----------------------
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index af9e871daf1d..7cad944b825c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -266,6 +266,7 @@ i915-y +=3D \
>  	display/intel_display_rps.o \
>  	display/intel_display_wa.o \
>  	display/intel_dmc.o \
> +	display/intel_dmc_wl.o \
>  	display/intel_dpio_phy.o \
>  	display/intel_dpll.o \
>  	display/intel_dpll_mgr.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h
> b/drivers/gpu/drm/i915/display/intel_de.h
> index ba7a1c6ebc2a..0a0fba81e7af 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -13,52 +13,125 @@
>  static inline u32
>  intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)  {
> -	return intel_uncore_read(&i915->uncore, reg);
> +	u32 val;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	val =3D intel_uncore_read(&i915->uncore, reg);
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return val;
>  }
>=20
>  static inline u8
>  intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)  {
> -	return intel_uncore_read8(&i915->uncore, reg);
> +	u8 val;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	val =3D intel_uncore_read8(&i915->uncore, reg);
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return val;
>  }
>=20
>  static inline u64
>  intel_de_read64_2x32(struct drm_i915_private *i915,
>  		     i915_reg_t lower_reg, i915_reg_t upper_reg)  {
> -	return intel_uncore_read64_2x32(&i915->uncore, lower_reg,
> upper_reg);
> +	u64 val;
> +
> +	intel_dmc_wl_get(i915, lower_reg);
> +	intel_dmc_wl_get(i915, upper_reg);
> +
> +	val =3D intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
> +
> +	intel_dmc_wl_put(i915, upper_reg);
> +	intel_dmc_wl_put(i915, lower_reg);
> +
> +	return val;
>  }
>=20
>  static inline void
>  intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)  {
> +	intel_dmc_wl_get(i915, reg);
> +
>  	intel_uncore_posting_read(&i915->uncore, reg);
> +
> +	intel_dmc_wl_put(i915, reg);
>  }
>=20
>  static inline void
>  intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)  =
{
> +	intel_dmc_wl_get(i915, reg);
> +
>  	intel_uncore_write(&i915->uncore, reg, val);
> +
> +	intel_dmc_wl_put(i915, reg);
>  }
>=20
>  static inline u32
> -intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u=
32 set)
> +__intel_de_rmw_nowl(struct drm_i915_private *i915, i915_reg_t reg,
> +		    u32 clear, u32 set)
>  {
>  	return intel_uncore_rmw(&i915->uncore, reg, clear, set);  }
>=20
> +static inline u32
> +intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear,
> +u32 set) {
> +	u32 val;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	val =3D __intel_de_rmw_nowl(i915, reg, clear, set);
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return val;
> +}
> +
> +static inline int
> +__intel_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg_t=
 reg,
> +			       u32 mask, u32 value, unsigned int timeout) {
> +	return intel_wait_for_register(&i915->uncore, reg, mask,
> +				       value, timeout);
> +}
> +
>  static inline int
>  intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
>  	      u32 mask, u32 value, unsigned int timeout)  {
> -	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout=
);
> +	int ret;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	ret =3D __intel_wait_for_register_nowl(i915, reg, mask, value, timeout)=
;
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return ret;
>  }
>=20
>  static inline int
>  intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
>  		 u32 mask, u32 value, unsigned int timeout)  {
> -	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value,
> timeout);
> +	int ret;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	ret =3D intel_wait_for_register_fw(&i915->uncore, reg, mask, value,
> +timeout);
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return ret;
>  }
>=20
>  static inline int
> @@ -67,8 +140,16 @@ intel_de_wait_custom(struct drm_i915_private *i915,
> i915_reg_t reg,
>  		     unsigned int fast_timeout_us,
>  		     unsigned int slow_timeout_ms, u32 *out_value)  {
> -	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
> -					 fast_timeout_us, slow_timeout_ms,
> out_value);
> +	int ret;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	ret =3D __intel_wait_for_register(&i915->uncore, reg, mask, value,
> +					fast_timeout_us, slow_timeout_ms,
> out_value);
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return ret;
>  }
>=20
>  static inline int
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index db9b6492758e..9d89828e87df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -26,6 +26,7 @@
>  #include "intel_global_state.h"
>  #include "intel_gmbus.h"
>  #include "intel_opregion.h"
> +#include "intel_dmc_wl.h"
>  #include "intel_wm_types.h"
>=20
>  struct task_struct;
> @@ -546,6 +547,7 @@ struct intel_display {
>  	struct intel_overlay *overlay;
>  	struct intel_display_params params;
>  	struct intel_vbt_data vbt;
> +	struct intel_dmc_wl wl;
>  	struct intel_wm wm;
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 90d0dbb41cfe..1bf446f96a10 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -97,4 +97,10 @@
>  #define TGL_DMC_DEBUG3		_MMIO(0x101090)
>  #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>=20
> +#define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
> +#define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
> +#define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)
> +#define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
> +#define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
> +
>  #endif /* __INTEL_DMC_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> new file mode 100644
> index 000000000000..abe875690e70
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -0,0 +1,234 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright (C) 2024 Intel Corporation  */
> +
> +#include <linux/kernel.h>
> +
> +#include "intel_de.h"
> +#include "intel_dmc_regs.h"
> +#include "intel_dmc_wl.h"
> +
> +/**
> + * DOC: DMC wakelock support
> + *
> + * Wake lock is the mechanism to cause display engine to exit DC
> + * states to allow programming to registers that are powered down in
> + * those states. Previous projects exited DC states automatically when
> + * detecting programming. Now software controls the exit by
> + * programming the wake lock. This improves system performance and
> + * system interactions and better fits the flip queue style of
> + * programming. Wake lock is only required when DC5, DC6, or DC6v have
> + * been enabled in DC_STATE_EN and the wake lock mode of operation has
> + * been enabled.
> + *
> + * The wakelock mechanism in DMC allows the display engine to exit DC
> + * states explicitly before programming registers that may be powered
> + * down.  In earlier hardware, this was done automatically and
> + * implicitly when the display engine accessed a register.  With the
> + * wakelock implementation, the driver asserts a wakelock in DMC,
> + * which forces it to exit the DC state until the wakelock is
> + * deasserted.
> + *
> + * The mechanism can be enabled and disabled by writing to the
> + * DMC_WAKELOCK_CFG register.  There are also 13 control registers
> + * that can be used to hold and release different wakelocks.  In the
> + * current implementation, we only need one wakelock, so only
> + * DMC_WAKELOCK1_CTL is used.  The other definitions are here for
> + * potential future use.
> + */
> +
> +#define DMC_WAKELOCK_CTL_TIMEOUT 5
> +#define DMC_WAKELOCK_HOLD_TIME 50
> +
> +struct intel_dmc_wl_range {
> +	u32 start;
> +	u32 end;
> +};
> +
> +static struct intel_dmc_wl_range lnl_wl_range[] =3D {
> +	{ .start =3D 0x60000, .end =3D 0x7ffff },
> +};
> +
> +static void __intel_dmc_wl_release(struct drm_i915_private *i915) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +
> +	WARN_ON(refcount_read(&wl->refcount));
> +
> +	queue_delayed_work(i915->unordered_wq, &wl->work,
> +			   msecs_to_jiffies(DMC_WAKELOCK_HOLD_TIME));
> +}
> +
> +static void intel_dmc_wl_work(struct work_struct *work) {
> +	struct intel_dmc_wl *wl =3D
> +		container_of(work, struct intel_dmc_wl, work.work);
> +	struct drm_i915_private *i915 =3D
> +		container_of(wl, struct drm_i915_private, display.wl);
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	/* Bail out if refcount reached zero while waiting for the spinlock */
> +	if (!refcount_read(&wl->refcount))
> +		goto out_unlock;
> +
> +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL,
> DMC_WAKELOCK_CTL_REQ, 0);
> +
> +	if (__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
> +					   DMC_WAKELOCK_CTL_ACK, 0,
> +					   DMC_WAKELOCK_CTL_TIMEOUT)) {
> +		WARN_RATELIMIT(1, "DMC wakelock release timed out");
> +		goto out_unlock;
> +	}
> +
> +	wl->taken =3D false;
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> +
> +static bool intel_dmc_wl_check_range(u32 address) {
> +	int i;
> +	bool wl_needed =3D false;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(lnl_wl_range); i++) {
> +		if (address >=3D lnl_wl_range[i].start &&
> +		    address <=3D lnl_wl_range[i].end) {
> +			wl_needed =3D true;
> +			break;
> +		}
> +	}
> +
> +	return wl_needed;
> +}
> +
> +void intel_dmc_wl_init(struct drm_i915_private *i915) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +
> +	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
> +	spin_lock_init(&wl->lock);
> +	refcount_set(&wl->refcount, 0);
> +}
> +
> +void intel_dmc_wl_enable(struct drm_i915_private *i915) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	if (wl->enabled)
> +		goto out_unlock;
> +
> +	/*
> +	 * Enable wakelock in DMC.  We shouldn't try to take the
> +	 * wakelock, because we're just enabling it, so call the
> +	 * non-locking version directly here.
> +	 */
> +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, 0,
> +DMC_WAKELOCK_CFG_ENABLE);
> +
> +	wl->enabled =3D true;
> +	wl->taken =3D false;
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> +
> +void intel_dmc_wl_disable(struct drm_i915_private *i915) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +	unsigned long flags;
> +
> +	flush_delayed_work(&wl->work);
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	if (!wl->enabled)
> +		goto out_unlock;
> +
> +	/* Disable wakelock in DMC */
> +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG,
> DMC_WAKELOCK_CFG_ENABLE,
> +0);
> +
> +	refcount_set(&wl->refcount, 0);
> +	wl->enabled =3D false;
> +	wl->taken =3D false;
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> +
> +void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +	unsigned long flags;
> +
> +	if (!intel_dmc_wl_check_range(reg.reg))
> +		return;
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	if (!wl->enabled)
> +		goto out_unlock;
> +
> +	cancel_delayed_work(&wl->work);
> +
> +	if (refcount_inc_not_zero(&wl->refcount))
> +		goto out_unlock;
> +
> +	refcount_set(&wl->refcount, 1);
> +
> +	/*
> +	 * Only try to take the wakelock if it's not marked as taken
> +	 * yet.  It may be already taken at this point if we have
> +	 * already released the last reference, but the work has not
> +	 * run yet.
> +	 */
> +	if (!wl->taken) {
> +		__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, 0,
> +				    DMC_WAKELOCK_CTL_REQ);
> +
> +		if (__intel_wait_for_register_nowl(i915,
> DMC_WAKELOCK1_CTL,
> +						   DMC_WAKELOCK_CTL_ACK,
> +						   DMC_WAKELOCK_CTL_ACK,
> +
> DMC_WAKELOCK_CTL_TIMEOUT)) {
> +			WARN_RATELIMIT(1, "DMC wakelock ack timed out");
> +			goto out_unlock;
> +		}
> +
> +		wl->taken =3D true;
> +	}
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> +
> +void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +	unsigned long flags;
> +
> +	if (!intel_dmc_wl_check_range(reg.reg))
> +		return;
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	if (!wl->enabled)
> +		goto out_unlock;
> +
> +	if (WARN_RATELIMIT(!refcount_read(&wl->refcount),
> +			   "Tried to put wakelock with refcount zero\n"))
> +		goto out_unlock;
> +
> +	if (refcount_dec_and_test(&wl->refcount)) {
> +		__intel_dmc_wl_release(i915);
> +
> +		goto out_unlock;
> +	}
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> new file mode 100644
> index 000000000000..6fb86b05b437
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> @@ -0,0 +1,31 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright (C) 2024 Intel Corporation  */
> +
> +#ifndef __INTEL_WAKELOCK_H__
> +#define __INTEL_WAKELOCK_H__
> +
> +#include <linux/types.h>
> +#include <linux/workqueue.h>
> +#include <linux/refcount.h>
> +
> +#include "i915_reg_defs.h"
> +
> +struct drm_i915_private;
> +
> +struct intel_dmc_wl {
> +	spinlock_t lock; /* protects enabled, taken  and refcount */
> +	bool enabled;
> +	bool taken;
> +	refcount_t refcount;
> +	struct delayed_work work;
> +};
> +
> +void intel_dmc_wl_init(struct drm_i915_private *i915); void
> +intel_dmc_wl_enable(struct drm_i915_private *i915); void
> +intel_dmc_wl_disable(struct drm_i915_private *i915); void
> +intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg); void
> +intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg);
> +
> +#endif /* __INTEL_WAKELOCK_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile in=
dex
> 6015c9e41f24..23eeda2b4910 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -280,6 +280,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_vdsc.o \
>  	i915-display/intel_vga.o \
>  	i915-display/intel_vrr.o \
> +	i915-display/intel_dmc_wl.o \
>  	i915-display/intel_wm.o \
>  	i915-display/skl_scaler.o \
>  	i915-display/skl_universal_plane.o \
> --
> 2.39.2

