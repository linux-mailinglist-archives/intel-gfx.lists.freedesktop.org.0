Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF32A2C793
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 16:44:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55C510EB58;
	Fri,  7 Feb 2025 15:44:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AoESJg5X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F94B10EB64;
 Fri,  7 Feb 2025 15:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738942962; x=1770478962;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qo7zwuFLgJbT81zdKbqs/ioHaxcsyFjhsEn//+JHI0g=;
 b=AoESJg5X095irSwfCdozB9LXFEwrtSwQFTrJ4ZM2uhErzs8kr6kEjCly
 E7Ob1tuLji47U2TQbd3ZEe4uUp3OLwd6K0wP0egSWjHAWkMP6xafXWOrZ
 6XCgOZTvINyjdDcdn2AnT4GEe11tTtfgkwPuBAXWZGOyNTbXJdsu7rg7L
 Pr/nRsw+esfIANNDOyYTyA+d2QQmkU4wt1hQJuoCOxZbn6fXLL0cb9ttE
 PHUnl6u1DYENl5BoqeB3lNQ04DrmhVYbpuiO3B8ei1d80QpzzBt/SMbcl
 Xsge19oV2f3vAeUD3+9AxONw3Qx0r/WFSMc4AmqvKCdbX08LYCSHD2kmT A==;
X-CSE-ConnectionGUID: VtOVnvU9R9ePGCrh+1y/SA==
X-CSE-MsgGUID: OicFSZWqRwyzIi6xqngdQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39741369"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="39741369"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 07:42:42 -0800
X-CSE-ConnectionGUID: pcCvFLEFTEmCnfGSFRODUA==
X-CSE-MsgGUID: 26q0IB6qT9W3EhGIGVCnMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148761983"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2025 07:42:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Feb 2025 07:42:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Feb 2025 07:42:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Feb 2025 07:42:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DwYBTJRwIdL26gbUwa76hh+Mo7zW9vDqm0quJlw2i5ShOI+aSZ9lcAAIOLa2qtUoLoE6+Lmp9CsBzqXDig3fskaRA3wVr2F2aCEMNAaTxdgs1TLAnimptpaFE1HxGkmGt5vtpdrQQUP+Ay8t9c5FiOI6MZnVjEP6cbMhtGPQV/O/iLeW1sEPWSKXV1HiZl2u6mO5oWjG+qszv/zeS1Xvs/yjFRm2aLnl5hosslX4QLgov58KUduQWM1NawvFqHbOXnxFN5lkfVmDpBWsEs1hRUp692mvWtbQJrQj7z5kC7P/7yzEJ/vg1QxddJODkHHsWVSBHSYYSQ5dcLvlx0Klew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yubl4rGyZf6eAL+aLMYpJVv0VwBQeJeVzha5hTJ5E+k=;
 b=G8F0boma47HOcpHU82N9UmrsxLFrGga+lAMsULcxETpCfaU1P2bi9+/vimckhX86fqnxSn5atheQHi724wz3KdOAD+A3lyJqNJiQQi8IUkGOWAmyaE7IhlkvcwwkaH43QPfdnI3rWNohR6mFBQCeRtTRvESxCq5Xq5gpQyDb92QxGPKAkgO27lZGMLoXWTmJjzrH5IJidhUY4AmpIIbtPmjXme+kIV6Pm9s0czZt/8ayAWMV39hf6bpCHFQEdDWfPxCgObVvB90N/kZRjRI0C5mcmqm0ieKFwkWhanoJIpL/L2AuSfvlfcXQfkkSWT/aQXg1RUrkBkvO6yyZxVOWsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB5991.namprd11.prod.outlook.com (2603:10b6:8:72::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.15; Fri, 7 Feb
 2025 15:42:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.010; Fri, 7 Feb 2025
 15:42:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/3] drm/i915/hdcp: rename intel_connector to connector
Thread-Topic: [PATCH 2/3] drm/i915/hdcp: rename intel_connector to connector
Thread-Index: AQHbeUzfmtVO8ox3UUKKImmu6eUcQ7M7+q0g
Date: Fri, 7 Feb 2025 15:42:38 +0000
Message-ID: <SN7PR11MB675082203C34B2C653569371E3F12@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1738924826.git.jani.nikula@intel.com>
 <8f43542a8f0ce0ec5725b769c077d3cea723bde0.1738924826.git.jani.nikula@intel.com>
In-Reply-To: <8f43542a8f0ce0ec5725b769c077d3cea723bde0.1738924826.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB5991:EE_
x-ms-office365-filtering-correlation-id: c680dba8-857e-4fb3-0995-08dd478e0d23
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Efwu8qOQ6HiI2MACAGiVzsCWmnx/KCNs2u2zBE7XTrLWAVe4iNS4vzqo2KWL?=
 =?us-ascii?Q?Gte4E/TG5IZoNJ4wCyyUe5wefPFHfnAopM0FJ1lDxkGaLJHyxZRnbnZwPXXP?=
 =?us-ascii?Q?rTbfdalsnkLl+vq20wJoT2+o3JYUy7rWwkDfTBLVkXuVpDC7pzQERl9r8/nx?=
 =?us-ascii?Q?L/koKLH9WcIWonK+hWAOy2H88dr0H/zM7L2ilt7G+nRFGDn9W4ZM0uUg6imH?=
 =?us-ascii?Q?NxBk7FoKYt/3wv1hRAuk9Yb0kcuQ3eHWT8a+ydwOXZzmV5azhlZbmD9dFWxr?=
 =?us-ascii?Q?FSB7fyOCumjIhLknzd3BTj06Hq74bsy6OH0sgsnXkYbaNFLK8w34nOpGx3qn?=
 =?us-ascii?Q?mewvwiRiUG4/nitOybThQQVsRgxeohP04Kh6oIhTMf9ph/bH57Q4UV3sooic?=
 =?us-ascii?Q?q3tDEJ0rQBlNFxB27SMmlFp/9IMriri8a3wHZunMuMtAqFNKpz+Y7M6q5vqk?=
 =?us-ascii?Q?scZc8Z0CdK9dX9y2yQh/growsllPE8qbeMp6ZqFo9B3prf9+74zuwzbvFAyi?=
 =?us-ascii?Q?ouK9TZyb0vR8xS1G+QkQkgNONa+PNMz+9Szpt4fptKhaWLpwYJgoC7jXVLcc?=
 =?us-ascii?Q?GUS2k0Sb3N03svfJtdXhlCHL031PgJs/95UU2t8WO+uVH9l4vPWk3LnqyR4N?=
 =?us-ascii?Q?sqaeVhFZBXw6rbo2zgy4Mh4061T9d8Qx6xI3JOMdD0BapejQXq1HRH0IgdCe?=
 =?us-ascii?Q?45T3AKFG04sTHky+ZM5UpE8bC3hf0DELJw0L9TVlvJkVHlgPHaDEhB36XSLS?=
 =?us-ascii?Q?QJjrxo0U1RmjX6cxww69XKjKrveTRENi3w5/eAkitkUATjNXMQp8gkIjdBEB?=
 =?us-ascii?Q?McDMBjA2xJwi8XnQzG9qI0Cr6HOZHlUQiiLOA/XqBVA7sy9YmxmuF3i7k8ET?=
 =?us-ascii?Q?aTv8L4WVvG49S+wAeasfTYtqNwuRBJSj/c3mIrU9u7cTsJ9ptUwRORYj+Pfh?=
 =?us-ascii?Q?ivskBthaPYnLaVr7jXsiCZdTydsjVD49DmBBFO/YRto0E+n7QLmEY7iTgFjw?=
 =?us-ascii?Q?j4D3AdOyZ4xrWifYKQlFA1VwffGWQsSuijGgWJ2Zs5JDdhweL5UPwQiryOFy?=
 =?us-ascii?Q?biLArBRTDkKFzrexQC0hcSSukMmqa87LHlC1GwxsRgMJAH9yYWQ/HrwRkf9o?=
 =?us-ascii?Q?qM8Ej8U4peEwndSpeflguES5XawGfUmoNpth3jzZGK0T0xb4aCOz1Aeb7u5s?=
 =?us-ascii?Q?gZ/ZzUCp7ZxmzXFz6lJ7cHyRcDtGNZCq8Y/MWjSQWdrWSBzUjhlbgNj5egdk?=
 =?us-ascii?Q?IGmA9IoljIiWHNwpW74UCGlgKnQY4GafJGTTCjJHvmMqLqhQivbKbo5YDvkd?=
 =?us-ascii?Q?5wouQX0F/5bIqVyRBoyTJ9mtBwJmK9ewLyLY9mmMDPsI38gVs91Dk/oxHVSM?=
 =?us-ascii?Q?gW25aFer+3x1WqZRGVXO6kV4KralSiokXiXlwsEZdombQ9J0e6EqqEtcdzPm?=
 =?us-ascii?Q?EXsONA3Nt7z4JLLchHOcwgUdeWaqLXyc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QRKJ5NLKcdhDxdeunNx0XRPUcWO7KEpRITMifua7GN9/blGjDcLooUGx+MRr?=
 =?us-ascii?Q?4LGtRCGichU3/RiA44nrKYoUPwlIX/u1zArbaY2aFXJ7kLTzWM7Ft6g4KiIJ?=
 =?us-ascii?Q?cIwyR3DWxLbcOTPzR6b02pUxcMHLZa5+DWWO6dBD4lEvbzEVvzOMTBBX1TDN?=
 =?us-ascii?Q?SzOWGFPzQ2NH6/NrPnb+cJbFrbIcx9KMbR9P+tLUZ/y0JTrv4W/NQ/roQhCX?=
 =?us-ascii?Q?+WlxvoJG9+MWozLzDcfep+r+YXE0F4iB2K4Yw5+xtbRaiLsnjtJNwY9DfPFN?=
 =?us-ascii?Q?O8zTUetv8NAruwKA0038cpAYWKzDObBdOJPhD0TMpvUzKABVnuFFV9vRyGDu?=
 =?us-ascii?Q?Rf8YiO0jrFR9xdCv05u8r2s4qmrGkx7N2SOKkgTc1CIUbg1oSf27DcfrLhjY?=
 =?us-ascii?Q?i4q8uklawt3FbPLzQVB7Ko0ujC78AmelS7OjRuNQm6AamowZbA++LmVJ0sx0?=
 =?us-ascii?Q?tsrpyxQjcO6RWzUojjHG+GVei3+XKWMjQvXTe04ZM0okb6rstQJGbxugYwrl?=
 =?us-ascii?Q?dJpIvf3Y4ATr86eDvyRmuMg6BwkWUbeEXZUyWWI0SfwyyYbuFL1QRVXywYQQ?=
 =?us-ascii?Q?Suza9/+lS2sClbc+olzay/yE+KUm5BKIVCQ4BSPXAd1S+pk5bTXc1M3PLOam?=
 =?us-ascii?Q?Fk8oWjKEfmo50aXgTtucYxjQKAwAaRzYu/NF41WnKx2PtHPaL92jZ2DyEW6e?=
 =?us-ascii?Q?mEcUzfQomXm72aFKspyDcnLjIscsPwLcisPaRntwxL5ADqQFj3N2PsXuK87Q?=
 =?us-ascii?Q?4TvTQR12A6bzbMa6ZoCVKpedQJjexTaw99Et6HeOp4mt+qmX2opRSPncVRRp?=
 =?us-ascii?Q?3iQNU9RCf4VErFNyT+awM3Ns7B7MfltPP4f8QneLLqU42CUV9mZKJo7+9vXQ?=
 =?us-ascii?Q?stBiX5W1tghIlsAlsOMbQES22xxxCGH/+bFY6SZi3xtHsYh808IDdyaLHkfX?=
 =?us-ascii?Q?5L9Y/yaIemNua6gj1TfDkn+8EHRvcs/LSBbiIGyq3kRjOS3+weVo5T1Os5dN?=
 =?us-ascii?Q?3tu30Pk9hZfOA448l/I7J1s+cJlgpHHMqWOYU+nPg950WkTnjSCdR1i7r2pE?=
 =?us-ascii?Q?jlR8dVMnvJ3ZMYrUuTbjVeZHtXG6bsKQ5JGNR6dvJfDtI0vsybnj4ZYVTpEJ?=
 =?us-ascii?Q?00FzEv8JyAMZtUCiBzFFK6WyuMYbVFHUno+HEINrFBqQdPM6hMJ/Y45P5rCp?=
 =?us-ascii?Q?rU87yL89jOWhmYlNxBxq6KL7qrCN7LkXZ4PWK5C2rcRqviBQU31Jwr7s4IGg?=
 =?us-ascii?Q?yHAFqiXvnObUhIXlpDrpD42vZkNVpSdF12HDNLDjE3PczKh6MNgfaYbsCwpp?=
 =?us-ascii?Q?xd1jE/x0SKi47Uplip/bych80++0AhxCEb37xh+SzdzwSCXTt6ePgjCxjdiy?=
 =?us-ascii?Q?/oB8j5RV/LQPuLqDZ67tQiQLTbvEwhmx8ydbq9yaf2D15aFBOTvavvGEOMRi?=
 =?us-ascii?Q?E4Cq4ePfDP3ZHFN3rbSrg/zRejbV2t4WDjJpuuWWJHG5m3f1xEeWrU+t14IY?=
 =?us-ascii?Q?yGDF6nlchy2Y7gRHB/IGT1Q5/rI0jffecXYcbFA0zmHAP1FmF3rrEaL3zMGC?=
 =?us-ascii?Q?eIy+ZaPcQi2VK82mku51hWiA8fzI3jTCk99pUM7U?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c680dba8-857e-4fb3-0995-08dd478e0d23
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 15:42:38.7546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 38wYa0VJRbpZEaXhNP0srCn8JkNy+wC0YkNQnXe+RJKcu6N95/MrzxzYzWAiUG+37CUpIAjxp7pyDb/IhmU8oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5991
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
> Subject: [PATCH 2/3] drm/i915/hdcp: rename intel_connector to connector
>=20
> Follow the current convention of naming struct intel_connector pointers
> connector.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 718d8bad77a0..9880192adfe9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2733,23 +2733,21 @@ void intel_hdcp_handle_cp_irq(struct
> intel_connector *connector)
>  	queue_delayed_work(i915->unordered_wq, &hdcp->check_work, 0);
> }
>=20
> -static void __intel_hdcp_info(struct seq_file *m, struct intel_connector
> *intel_connector,
> +static void __intel_hdcp_info(struct seq_file *m, struct
> +intel_connector *connector,
>  			      bool remote_req)
>  {
>  	bool hdcp_cap =3D false, hdcp2_cap =3D false;
>=20
> -	if (!intel_connector->hdcp.shim) {
> +	if (!connector->hdcp.shim) {
>  		seq_puts(m, "No Connector Support");
>  		goto out;
>  	}
>=20
>  	if (remote_req) {
> -		intel_hdcp_get_remote_capability(intel_connector,
> -						 &hdcp_cap,
> -						 &hdcp2_cap);
> +		intel_hdcp_get_remote_capability(connector, &hdcp_cap,
> &hdcp2_cap);
>  	} else {
> -		hdcp_cap =3D intel_hdcp_get_capability(intel_connector);
> -		hdcp2_cap =3D intel_hdcp2_get_capability(intel_connector);
> +		hdcp_cap =3D intel_hdcp_get_capability(connector);
> +		hdcp2_cap =3D intel_hdcp2_get_capability(connector);
>  	}
>=20
>  	if (hdcp_cap)
> --
> 2.39.5

