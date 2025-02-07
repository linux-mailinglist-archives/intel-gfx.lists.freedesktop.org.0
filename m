Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 579D4A2C7E9
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 16:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F3F110EB65;
	Fri,  7 Feb 2025 15:52:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aX2sx/ji";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4662010EB63;
 Fri,  7 Feb 2025 15:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738943575; x=1770479575;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kJCEFhUyrCdC0fxkt1WFerMdIfXoHkySbqK7i4lfNns=;
 b=aX2sx/jiRppg/WZqeMm20Dn3IZ8KPeAXzX9c/gDkMMfvADNvoy6u43bf
 kgW0VOP6HWZv4JkSFIbQuecenHbVGGscOmQQuisog+UFSA4Tj7iZFcngC
 t8/+H2ZTX3ueeaT4J0dVaZC2v2S+J39bLK3RjUE+SMpRKVURWv+Tbp5Ze
 Xs1r8ASUuRFRKv/zx3HzpyriCKfpRTAc0/yKEYN172evJoU3TxAk2TYRZ
 RND9Oj226yz91hu0rtfKxJY423qNt85y9669axboj809sETKqVBoEyr+U
 12ISKYhR34KcUnWfZtV40HfpxMAwVUjQ0gU5jFCMLOlPBe7Nzu5qcyOlU A==;
X-CSE-ConnectionGUID: WAov8SCoRsqEL+DSIHyFTQ==
X-CSE-MsgGUID: DmV+c7sSTYCW80wyyfnGmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="43349724"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="43349724"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 07:52:55 -0800
X-CSE-ConnectionGUID: O9/EVFXpSKqzuw/Fd9WCVw==
X-CSE-MsgGUID: vquxemFyRaSyQ7mbn9dgYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111405082"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2025 07:52:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Feb 2025 07:52:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Feb 2025 07:52:53 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Feb 2025 07:52:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mnqgEas7FtsPa6fxplaCUCGfNQ7etomVh6sfJCaSbN6wVMjotwMxTXpzMxJGG/mgAx9HN7ptj0LsUwYE9Cz3wBVDLhVS5/yB0JxvPPZqsnhHTSk4+JDOskkPppls3dTtlA+kdRZOiINmeai1VWC6/avUUCoTkUCj8wJPKNDmqXi1EbC+R89PxxPtl3ObTne0GQN+t6SG/mvhxV9DJXqX5tCQiHqkutU6Ma4ua8uia3EpF97hWf1cpbF0aAkye58G+RucIEohB+9TQz7I0QsJkGdQLn7gks78hZCVXqlXPb+7LBUL14i0coCM5vai7CdUWBzr06szaKwT3tlWdNnVkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qnY7QisdgEl6i3r7p2WwohAzMoCHo0fZyeSPoEf7dwI=;
 b=qVg8hZPRH09frDgVQ4Jx2ELzJaHpIbvNfVe3OeWYfBXvqR08k1SUt3+ASZBSpIwq3C4B1aP8rJLanfrd3iuXhDkNZHWnUQEEoybn2cKoTF4Vob4jbqnycAEi4pa7bviLkxnaaMmaGX/d6UkFswjvmc7QqjLjqsIo06JMzPa8FNMQ01l2Mpa83/A4YoEvctlCBLkMT78E5rcGTfgErAxKWb4OwyDb5wiNxMXE00SnnqxN+nkC6kIBssxUZ7rQxZaPZGgqpMiUJYgqnbRoMn3yaho4zloK/mbonRQhRnadZ5Xq1RFFpJGM/pe/mHanAANA0sm9OVUBRNq8DGNTJJP/ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH8PR11MB8285.namprd11.prod.outlook.com (2603:10b6:510:1c5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Fri, 7 Feb
 2025 15:52:49 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.010; Fri, 7 Feb 2025
 15:52:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/3] drm/i915/hdcp: Move HDCP debugfs to intel_hdcp.c
Thread-Topic: [PATCH 1/3] drm/i915/hdcp: Move HDCP debugfs to intel_hdcp.c
Thread-Index: AQHbeUzczSlg5EQgf0+QjMK/hmiso7M7+65w
Date: Fri, 7 Feb 2025 15:52:49 +0000
Message-ID: <SN7PR11MB675010FEBF08875405A0E490E3F12@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1738924826.git.jani.nikula@intel.com>
 <c118e992673f6b054aacaff0e1850fcea329e000.1738924826.git.jani.nikula@intel.com>
In-Reply-To: <c118e992673f6b054aacaff0e1850fcea329e000.1738924826.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH8PR11MB8285:EE_
x-ms-office365-filtering-correlation-id: 7ebbe632-3687-4000-6441-08dd478f7939
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ACT9rZ8mFTIWgEB5dtsAFW3hCooOcra0atW/YwYB9KNNVzHPBe5AMvyrVmDx?=
 =?us-ascii?Q?RHswDLg6bZMl1igZjY0YVqEAWJe9/nZHjGwGOGY68Ejj7YWO//Nl9BsDXQpE?=
 =?us-ascii?Q?h1HMhC6toP6GVPaPHafinkK0Jy13Izp5gmkmbgu1WXy94gWfS3w+0sKG9lYb?=
 =?us-ascii?Q?l0/417U1fCppQXb95MjQigjoUmNr8lI9CDGvSu7+1s99BLzn6shCs2+nQv6K?=
 =?us-ascii?Q?1wd7TI1coHO65rnWumO8b5A2+52vhHR5GG15H7kTq5yNDer3lHgzc1wTdYZr?=
 =?us-ascii?Q?oj29f+afomAodNqQNkbbrL7ihR2rt5AD4FQIpRGKba4y5clp6fZeuJJfyPDI?=
 =?us-ascii?Q?prH58hP1tbEZsa0QbdcWnCYU+YlhzG8B3Rb9+xValV0+q5TwdB9mofe3ULIp?=
 =?us-ascii?Q?goIktwCo/QdQip0CSzT2aFIIrbfficSC2rZ2+7+WXIJ6KNjWHmPHQY55iDFQ?=
 =?us-ascii?Q?HDBT6YXp5o1ZpalE7Y7VWuWuRmD3Ly2qMWR2PBwLvhmdOiTHjz8t8/DSJaU3?=
 =?us-ascii?Q?66FREytytz5tVeSbYPX6cJcMzXoni7nL4AWApu8MNVDEaFU13TwZHFDI7WzH?=
 =?us-ascii?Q?x8pdP3ZHDVIiWvTby0HWBLahnv8Q/BW/1lOji7KHfUbevdumouqBSeTQExrO?=
 =?us-ascii?Q?0v+XxRLXl05tVkkdQsGBY178dSbiutfMHMJgkE1DiEfF4bSvkcxKzHabWaA4?=
 =?us-ascii?Q?kfqkzrUk94U7QtmzouwEKdFiSllPK01X3oJzkU34Nw4Abg8cDejtOk2H1GB7?=
 =?us-ascii?Q?FbS7QdOtHEn6ViBoLI/EtDOXZNsl8UfcTCJKAewOrEGK4Tg8mw3WqVKaghFm?=
 =?us-ascii?Q?lHdA2FBP1RKgXWR0uuXJIAdS9+P6nPWC/I+kYdjTzKSJauegyv2cukU3kLM9?=
 =?us-ascii?Q?awc8mG78i1py+8MrpO1azu8PLkE67voeKwEBACSfs5qQIu8Mc6pcZxSoY3D8?=
 =?us-ascii?Q?mjVdAZXhsiLovu9ypEK+Av0qCzjuMjKUiMpOy0i2swsL66mmSilCK3z4ifq3?=
 =?us-ascii?Q?1B53VNx8OAdfMiUF/TPheg4QaLQps+KDMjN7k/E8BnJ2VuBDN4o9KvBI5xVk?=
 =?us-ascii?Q?CCgDwpGGqWJsLKQXnS0MrMzpjaqMOHDP2C/dpG+iAhrCHrwovWcjY7b9Biqp?=
 =?us-ascii?Q?6AQP9wLWgChC62vr4ySa7ZzgMjaNLtVw9Wz4bkiu0Cynx/ejXdbsiiexAMur?=
 =?us-ascii?Q?EigrvXYKeFIX2OvWwED/LpA9doT4UJ2sKaG05AImwnquouw97RlT3GkAzQ5j?=
 =?us-ascii?Q?T5OStFSX3OGX1vJDlMHy9elLQHuc7Q8jIuBhdwlBv1TamDBAoi3K00pmx0at?=
 =?us-ascii?Q?iOWR+oreVkvCTjtKICZY1ZkTwT0sCjQU31wJWIDQ+4Z+vvlmnX0RaQ3JS/4W?=
 =?us-ascii?Q?YNZSZxgyfe5EI35frEX3FezZfCL+agOd+4G0zPI3OLxm6ReJ77wTAONtehKj?=
 =?us-ascii?Q?Pfut2fG15KQHBrSZWl1vESAHdhNxX3Fj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zuS8DL7zfC8DC2aVQmbboKztIR9DYA1copL2I7o1pMnrZmQJmZ/GEHJCPK0l?=
 =?us-ascii?Q?C6qzuXPhmUs0Rfht9E9TwuIMjNtyAivXMi+EJPSfi5njfx9WV7HjwdAce7Wg?=
 =?us-ascii?Q?dpctoUb+bsl5EhkDsr74KgDjcFtkwoMqc/IJYaEFX0y10WU8GHsruqdzNKcl?=
 =?us-ascii?Q?2BgecFLhBs4YV+kebqECTUFuojO/W4rfgqNmOLNtbEL7wDYf365/+Cg8M0yJ?=
 =?us-ascii?Q?qLLtRAIb+Ct7NY12aN7mAQrR75iZUIbMVdY1NMWjQv2ocyuYj1BlvwuzDBpm?=
 =?us-ascii?Q?NJS7W33d3x6q2+IF7tP4vTzGxJ5uOxBLAyAzjw5SozG1ThsYfZvhTxqBh+BA?=
 =?us-ascii?Q?L6KWZXi6AEXlvqFCvw15FAh8t6kcaFyWtZvy/xJtsCrTY5DeUEmYYNoejj5+?=
 =?us-ascii?Q?rRMjYu/fqRuFBaRkEDomcOpSKc3U3Zxv7WkQIjBWOCfl8Dw7DO6imRzvBwBu?=
 =?us-ascii?Q?kFsFWtwNw/QkXkH1NYnyA7DecOpe9gYyuymkuOekQdsoKf3jeCKJn2Gi26NI?=
 =?us-ascii?Q?UR4d3zMnP0YH0MA5Z7TIHuPb4ZgY8A6HV0gCAbLqPvYwF4TZN1LwmiTprY0J?=
 =?us-ascii?Q?1pDkUIcI85m9AkozhF9JmRfyhEm0h8QanTcuki7c5m0b9jpgW/lh6tJJEwwJ?=
 =?us-ascii?Q?+27GTU5DY+lvbNTK97sZGg+GJHGvsuVppucWG7g934JME10bs5hOF7ZrYuZf?=
 =?us-ascii?Q?eYSeUtQGL5RK3znASVdyyo8c5mDob1twppjcxQuT8cNT+dBBtZKitJhZUFT7?=
 =?us-ascii?Q?y1DxXriVecaxitFwUq+mTYli4NAmmDi9lvfnYeyIwAVaYqnH9A9TMnUhwXhB?=
 =?us-ascii?Q?GhFC02TLCK97E/d8RfqO70GsPdPDY+RVtLWoNKrgEIqzVcwIeyDdwLDBHiro?=
 =?us-ascii?Q?ZAAsMdq6hLuKDvXRdylJ8bZjjlhY2RTs2LfjPIsJAUAgGHHnPQMxQRDyU0zk?=
 =?us-ascii?Q?ymV54JWoKCHSQ+LX5zXdXpXJTnao5MWtHZRcDQQiyjpLvC5RBiRdBgwPSdOd?=
 =?us-ascii?Q?ZT6pOEyHkRpFLf2ylbITPKT8eBmbX74QiCBuVSeemiaXcZmJh7HQbKGnDRny?=
 =?us-ascii?Q?70fJoj9FAuDJlXqoM5SbEsHH2wS64q2oB/EguMMiaxxo12rGqeV5COQ2wbFg?=
 =?us-ascii?Q?j1jj3KjX/hgPk4Us6sMSRwMaCk6qTexs/1lzwhtpfy1UQiHUVOedEh1z63F3?=
 =?us-ascii?Q?4llzFXHVHYS1+tWyIfhAwigctDqaka8FXjDC5JeB/HRvYJkaYL9wnll845F2?=
 =?us-ascii?Q?VeuvzUsRF55FM8o1Ru7wtmG5y8fIPf/Jky3vAhpwO5Ta0MJLy3Cd4cXaoJLu?=
 =?us-ascii?Q?MIMxwZsn/34QKAVgwitWVrD3cVEIQCqdhcjZD7jsLK1CVqz8xpTkZ/0aCf+Q?=
 =?us-ascii?Q?uLq/4gAk8xezegRBtC/bs+ndQ84F8liiJ4IJzDVstDsUwEvedT83Q1uFYTR+?=
 =?us-ascii?Q?hqN5r7eQMxl1jHoEh0rezR04rZPUqBw7d4gaIcW5banQFc+BuG4ZzZQXWSbS?=
 =?us-ascii?Q?iasl25ffWS/JzeW3eXqyfIJqWMQ/72ITfiQi9yRGpFX4UHhRze49Ki7os1kx?=
 =?us-ascii?Q?NP/clNIpEjbY0neU9QvI64asxpQmIhxfVkaRwIxo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ebbe632-3687-4000-6441-08dd478f7939
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 15:52:49.5816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hv8CwWbCJWJ8vTkOOccfjPgTMrV8rGJRC8s9Prpo/6GdliYYa8XhL3hQek4Pe8Eoz2CiJchOdg/9tKreDxPC2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8285
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, February 7, 2025 4:11 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 1/3] drm/i915/hdcp: Move HDCP debugfs to intel_hdcp.c
>=20
> Continue with placing debugfs next to the implementation.
> intel_connector_info() still needs intel_hdcp_info(), so we'll need to ex=
pose
> that too.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 74 +----------------
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 82 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp.h     |  4 +
>  3 files changed, 88 insertions(+), 72 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 926f09c35084..e547ea66657d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -213,38 +213,6 @@ static void intel_panel_info(struct seq_file *m,
>  		intel_seq_print_mode(m, 2, fixed_mode);  }
>=20
> -static void intel_hdcp_info(struct seq_file *m,
> -			    struct intel_connector *intel_connector,
> -			    bool remote_req)
> -{
> -	bool hdcp_cap =3D false, hdcp2_cap =3D false;
> -
> -	if (!intel_connector->hdcp.shim) {
> -		seq_puts(m, "No Connector Support");
> -		goto out;
> -	}
> -
> -	if (remote_req) {
> -		intel_hdcp_get_remote_capability(intel_connector,
> -						 &hdcp_cap,
> -						 &hdcp2_cap);
> -	} else {
> -		hdcp_cap =3D intel_hdcp_get_capability(intel_connector);
> -		hdcp2_cap =3D intel_hdcp2_get_capability(intel_connector);
> -	}
> -
> -	if (hdcp_cap)
> -		seq_puts(m, "HDCP1.4 ");
> -	if (hdcp2_cap)
> -		seq_puts(m, "HDCP2.2 ");
> -
> -	if (!hdcp_cap && !hdcp2_cap)
> -		seq_puts(m, "None");
> -
> -out:
> -	seq_puts(m, "\n");
> -}
> -
>  static void intel_dp_info(struct seq_file *m, struct intel_connector
> *connector)  {
>  	struct intel_encoder *intel_encoder =3D
> intel_attached_encoder(connector);
> @@ -309,12 +277,7 @@ static void intel_connector_info(struct seq_file *m,
>  		break;
>  	}
>=20
> -	seq_puts(m, "\tHDCP version: ");
> -	if (intel_connector->mst_port) {
> -		intel_hdcp_info(m, intel_connector, true);
> -		seq_puts(m, "\tMST Hub HDCP version: ");
> -	}
> -	intel_hdcp_info(m, intel_connector, false);
> +	intel_hdcp_info(m, intel_connector);
>=20
>  	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
>=20
> @@ -893,33 +856,6 @@ void intel_display_debugfs_register(struct
> drm_i915_private *i915)
>  	intel_display_debugfs_params(display);
>  }
>=20
> -static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data=
) -{
> -	struct intel_connector *connector =3D m->private;
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	int ret;
> -
> -	ret =3D drm_modeset_lock_single_interruptible(&i915-
> >drm.mode_config.connection_mutex);
> -	if (ret)
> -		return ret;
> -
> -	if (!connector->base.encoder ||
> -	    connector->base.status !=3D connector_status_connected) {
> -		ret =3D -ENODEV;
> -		goto out;
> -	}
> -
> -	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
> -		   connector->base.base.id);
> -	intel_hdcp_info(m, connector, false);
> -
> -out:
> -	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> -
> -	return ret;
> -}
> -DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
> -
>  static int i915_lpsp_capability_show(struct seq_file *m, void *data)  {
>  	struct intel_connector *connector =3D m->private; @@ -1401,18
> +1337,12 @@ void intel_connector_debugfs_add(struct intel_connector
> *connector)
>  		return;
>=20
>  	intel_drrs_connector_debugfs_add(connector);
> +	intel_hdcp_connector_debugfs_add(connector);
>  	intel_pps_connector_debugfs_add(connector);
>  	intel_psr_connector_debugfs_add(connector);
>  	intel_alpm_lobf_debugfs_add(connector);
>  	intel_dp_link_training_debugfs_add(connector);
>=20
> -	if (connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> -	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
> -	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB) {
> -		debugfs_create_file("i915_hdcp_sink_capability", 0444, root,
> -				    connector,
> &i915_hdcp_sink_capability_fops);
> -	}
> -
>  	if (DISPLAY_VER(i915) >=3D 11 &&
>  	    ((connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort &&
> !connector->mst_port) ||
>  	     connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)) { diff --git
> a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 7cc0399b2a5d..718d8bad77a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -9,6 +9,7 @@
>   */
>=20
>  #include <linux/component.h>
> +#include <linux/debugfs.h>
>  #include <linux/i2c.h>
>  #include <linux/random.h>
>=20
> @@ -2731,3 +2732,84 @@ void intel_hdcp_handle_cp_irq(struct
> intel_connector *connector)
>=20
>  	queue_delayed_work(i915->unordered_wq, &hdcp->check_work, 0);
> }
> +
> +static void __intel_hdcp_info(struct seq_file *m, struct intel_connector
> *intel_connector,
> +			      bool remote_req)
> +{
> +	bool hdcp_cap =3D false, hdcp2_cap =3D false;
> +
> +	if (!intel_connector->hdcp.shim) {
> +		seq_puts(m, "No Connector Support");
> +		goto out;
> +	}
> +
> +	if (remote_req) {
> +		intel_hdcp_get_remote_capability(intel_connector,
> +						 &hdcp_cap,
> +						 &hdcp2_cap);
> +	} else {
> +		hdcp_cap =3D intel_hdcp_get_capability(intel_connector);
> +		hdcp2_cap =3D intel_hdcp2_get_capability(intel_connector);
> +	}
> +
> +	if (hdcp_cap)
> +		seq_puts(m, "HDCP1.4 ");
> +	if (hdcp2_cap)
> +		seq_puts(m, "HDCP2.2 ");
> +
> +	if (!hdcp_cap && !hdcp2_cap)
> +		seq_puts(m, "None");
> +
> +out:
> +	seq_puts(m, "\n");
> +}
> +
> +void intel_hdcp_info(struct seq_file *m, struct intel_connector
> +*connector) {
> +	seq_puts(m, "\tHDCP version: ");
> +	if (connector->mst_port) {
> +		__intel_hdcp_info(m, connector, true);
> +		seq_puts(m, "\tMST Hub HDCP version: ");
> +	}
> +	__intel_hdcp_info(m, connector, false); }
> +
> +static int intel_hdcp_sink_capability_show(struct seq_file *m, void
> +*data) {
> +	struct intel_connector *connector =3D m->private;
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	int ret;
> +
> +	ret =3D drm_modeset_lock_single_interruptible(&i915-
> >drm.mode_config.connection_mutex);
> +	if (ret)
> +		return ret;
> +
> +	if (!connector->base.encoder ||
> +	    connector->base.status !=3D connector_status_connected) {
> +		ret =3D -ENODEV;
> +		goto out;
> +	}
> +
> +	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
> +		   connector->base.base.id);
> +	__intel_hdcp_info(m, connector, false);
> +
> +out:
> +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);

I think a part of this series we can remove the dependencies on i915 that c=
an be a separate patch of course.
I am currently working on converting and removing the drm_i915_private from=
 intel_display_debug_fs.c which now will hit the
Upstream after this series is merged so I think this change should be a par=
t of this series here.
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> +
> +	return ret;
> +}
> +DEFINE_SHOW_ATTRIBUTE(intel_hdcp_sink_capability);
> +
> +void intel_hdcp_connector_debugfs_add(struct intel_connector
> +*connector) {
> +	struct dentry *root =3D connector->base.debugfs_entry;
> +	int connector_type =3D connector->base.connector_type;
> +
> +	if (connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> +	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
> +	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB) {
> +		debugfs_create_file("i915_hdcp_sink_capability", 0444, root,
> +				    connector,
> &intel_hdcp_sink_capability_fops);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h
> b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index d99830cfb798..76bd3996f636 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -19,6 +19,7 @@ struct intel_digital_port;  struct intel_display;  stru=
ct
> intel_encoder;  struct intel_hdcp_shim;
> +struct seq_file;
>  enum port;
>  enum transcoder;
>=20
> @@ -48,4 +49,7 @@ void intel_hdcp_component_fini(struct intel_display
> *display);  void intel_hdcp_cleanup(struct intel_connector *connector);
> void intel_hdcp_handle_cp_irq(struct intel_connector *connector);
>=20
> +void intel_hdcp_info(struct seq_file *m, struct intel_connector
> +*connector); void intel_hdcp_connector_debugfs_add(struct
> +intel_connector *connector);
> +
>  #endif /* __INTEL_HDCP_H__ */
> --
> 2.39.5

