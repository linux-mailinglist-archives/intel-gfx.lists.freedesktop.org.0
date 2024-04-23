Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB758ADCE8
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 06:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E181F10FA89;
	Tue, 23 Apr 2024 04:44:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jPjrh8bC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98E7C10FA89
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 04:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713847448; x=1745383448;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jTrVyfnalMhgJLk/h2K5zLXO+r0CXtjiSkKV1UnUN+g=;
 b=jPjrh8bC+JhV29/IRObQamNSVPh2lHDtKkWrT2PwAuF0YjX7QfJjgxJ2
 usPQzmAySo9jPT3G+dd/E/7ruPSaE1M4OSlxXud2iG7a3WH7AN42mks5G
 9spCU/xQ/vnw7K9K401JoNKwExMSuvhNTlnOudGYVSMNq7FHy7+nZhMPi
 bdaFjriCGTEUG9hAAxkF6g7uUigQytQ/orxNFJ+8mm3NSN0s67nc14CgD
 YZ1lRMTnvi7lcpI+S+Z0D0Pff3krb6pY48MiWfnPFvBocHWIXFFP+jpqo
 Vtug+1fLtR8d+MTaun6vh6hWdjhlmYp/oxdRw2bllSLrTzZ7qRltfWrcM g==;
X-CSE-ConnectionGUID: jrvDa6jPQc2//NRxgRs5Nw==
X-CSE-MsgGUID: bzKGukflTxyt0EdD9llz4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="26872821"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="26872821"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 21:44:08 -0700
X-CSE-ConnectionGUID: Lcj819QNS0KP39omgGmmLQ==
X-CSE-MsgGUID: aRt7As6fRrq2m1idW/EknA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="55447285"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 21:44:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 21:44:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 21:44:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 21:44:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZvR9KXMt77ofFNjGsDEzk2D/Z9iK1W4bZN/5bTy14DIy8I+vOqjQGLr5etmNiGqPnshgHbFJl5SYXLO8VrBMRVHlswM68UXEQwFOsfG68733LHabuq3KuiBC/NGUY8q/1tKx015vDlr8xnF2MibLGNZcGX0MLtANxbtNgzC5A7JiNwq0Tk6CmrnF1f9yoI0IrJPLukBaFRD4TCU7HnhTrxlMPSuDvzetWGxS7xaH4AUDheUFpxlxlFt2PfiaBCE7mQTwQFfNzk3QyTOgXbenxMJYsM0CLmBB4wEO/zyxjQH8P6J1gTPBmJflCJFFgJeAuUNpTMXsaa0Td4G/ly24yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MlB+QGOMjwmgPRHm+tNdwV2JxEwioLYmZVidFtj7W9A=;
 b=FksPkUdp8QSMh3oWsehv6QfT75uAGT/AQBGaUvlV3DtZoCBnaVFq8UGiIRbVRJFSaxifE3WWL9KJbk9F2MISOPyWDVIgX2Yr/cd0I0hSQzMlFLXo4rgposnJl1ZuUGdc+6cPc0zGZkveKXdEz/XcZ+d3Nlu1Cn4dVZIT5/VbyqXdZZv4xnTtojUCbD9D2YtMliyB74g3SDYkasDPUbagZtH6QQNmkY8ORJCBYqd0jJXR5diq+pBzOub8OPr9tD5a3DR5PHeGZTN+fziR07y9WEEdcpcpMZLfuodpz91JbCfEkkTDEB8BEd0tDK1x6YMuriVFK2K2JEBa3l1NRT9WIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB4893.namprd11.prod.outlook.com (2603:10b6:a03:2ac::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Tue, 23 Apr
 2024 04:44:05 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 04:44:05 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Kumar, Naveen1" <naveen1.kumar@intel.com>, "sebastian.wick@redhat.com"
 <sebastian.wick@redhat.com>
Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Thread-Topic: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Thread-Index: AQHalGYm7Pw69oojf0WxtAG+T5/LOrF1KG+AgAAWtoCAAAl/MA==
Date: Tue, 23 Apr 2024 04:44:04 +0000
Message-ID: <IA0PR11MB73076DDAE3145A922905DE9FBA112@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
 <20240422033256.713902-3-suraj.kandpal@intel.com>
 <IA0PR11MB7307E137CDCDE6DC39F6B290BA112@IA0PR11MB7307.namprd11.prod.outlook.com>
 <SN7PR11MB6750E6BFFC0755CCE78E7B0FE3112@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750E6BFFC0755CCE78E7B0FE3112@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB4893:EE_
x-ms-office365-filtering-correlation-id: 6540b46f-ff2b-4b35-5f6b-08dc63500142
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?wW6t8/AyRrku7sX15S7POwbrPdY7qXqwTCWY8nmuEB6WxTqapAyL080UAopE?=
 =?us-ascii?Q?sKm6P9WJddZEuwHBX0Y1vY4LDuKTZzld3sQrvvumKnyVC+4l4V6IqWib4sWV?=
 =?us-ascii?Q?Ulb1zwqXC4BX5EPvIgO0mCF1ZFsWdL6F52LvTz6iY5Yem64rEFVbL0zKb/UW?=
 =?us-ascii?Q?hvcUmQIwLgEbmpHBFJvGxWtQ82WZqUDi22BQrVGpCh9KX9IjJgU9DdvaW8pF?=
 =?us-ascii?Q?FBrqJJZq62CS+ZkdiO+LwJDlk8Q18CGdvIHGXPtfh54fmUVqnwZIVGlrKJYk?=
 =?us-ascii?Q?f5scH/WhGBWnnWTqGjqHDZf51NwUvC2D2KENDuHrtF8eoyf/UuzrnvTXpCRh?=
 =?us-ascii?Q?xedgHjHYfV+0LxpLmkzK0s52P2qfF3AiIdnaMazBM9w5xV5OhopxInAP15YT?=
 =?us-ascii?Q?H9rz325vLy0s0Nv4SQeFMzPP1V7fZKtnRFTHNzSDnfjRArkJVB5uXnJKmxkD?=
 =?us-ascii?Q?7gh1ChZdZ+3yd004+s3Hwy5LGhgi4rkAzd/aDC0xhHJc/JTYyf4eCuIswAwx?=
 =?us-ascii?Q?W58XG1RD6juzVq2ZMIPQJ6d7Xv2Ci+kXt1zw9bFGr0saWXa+7C3G+dBKE18n?=
 =?us-ascii?Q?V4VPJW2yoF5OeUQEoy2Jv9vPzJ3HM5SA3rLbeVLFeI3hpQw4jkOQL7Ej4Fkw?=
 =?us-ascii?Q?W7AVcw/ftKn/rsLEHCcbSe9iVA50pYrEiq6xIUUbG7W61T+k3sPlKQC62eZW?=
 =?us-ascii?Q?K0Yr9Zy+BAs5Hzks2dm9XcPiw6vRGTNsyaTYj7bfSc+4lVUEQA9xiRONoFB+?=
 =?us-ascii?Q?21Fh7e8fzFVZbqUiGTjmSwRwB0def4217/CLfOwLy0h8Obder7xgQx04RHuy?=
 =?us-ascii?Q?ygVfL1kGqlqVjvzzYb6g/HxHLJ5jRskrOyPezoLwZ4qgkiz0Tbg5M++Cp8gf?=
 =?us-ascii?Q?aD4FobEdJlNkI3gKf6piREVQEbJ4sYnty/WbPhqZa2sqY8qrG+O2ID9o7FJm?=
 =?us-ascii?Q?rxrVSbYdlTQNQQ4Wh2PEMl51ZtlKwTfehNJMFCRY1mmA4gzMlr8Go/Bg5zp+?=
 =?us-ascii?Q?d5lT9AuF8eLK/R7oLbWZbSmD8ABkOGJqVW7EJfnVITynuvjH6ww/cQMTckkf?=
 =?us-ascii?Q?DsklOYaJNI9GSzaJIdg9MS6XrK1tkFt1I+A0r7IKtVceNeErdwDHO+wWjDo4?=
 =?us-ascii?Q?0YEqIavkXaG5qNCTyr8h+tkknqEat/kjObxfCK/zFBbrSynK8/9sPVKSSfF1?=
 =?us-ascii?Q?8n7H9FFx5Eg3b4zVNLx6oXTl1i4rfdBR2y6FY+4mFS1O8ptlGVudux9UJvGz?=
 =?us-ascii?Q?42oAE5HcnOg8hfxE47kEP1ClOxdlf6FTYDq1u8m8Z9lyERqaWYTfv5/U4cyf?=
 =?us-ascii?Q?FhNkXsv39ndb62aDy46RgufBacuxxhyiikiMxx4A4k8NWg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BB3JjohEoAJh1cq8ocAHHhZJhPy1vhBE82uKLLZVnhs3eWbulZUWbl8tRGVh?=
 =?us-ascii?Q?BuWoa8ViMDd+iwgmfCUCTtfO2xxlda4NTvn1XpBfIdeoJLELIcbA4Iihlvcs?=
 =?us-ascii?Q?KwaR2DC/DwVGwqOwTIe18LO6xiSzjHCLJiAKy7kr6rcOv95EuUEw6vT1viyv?=
 =?us-ascii?Q?ytWJFVEBcDCt9CVZo//hvF5fDhTmRbqMge4OI+Oy/nPvklsvOt3yQ+8bLMfK?=
 =?us-ascii?Q?otu9rJOsLDBanfW4sqNMtI9AfcY7ncwEsisvnHKar8q4Ci4lT+ab8UsgvI5H?=
 =?us-ascii?Q?s0NCL0kTlKVh/Rj8qzbAR7NSMlpY4k+rg2fE7LzPNzCmM61GnDMKttboKVWx?=
 =?us-ascii?Q?8rl1oc4wLe/Y6kdK0A3Y+lgeTn/HDGnDuylrmSJQHwDTRdvuPfE5UEVWy7T6?=
 =?us-ascii?Q?5KlOmrNE728qsOrmyMecDXe6h1fZpQdLHXpxUXlJB+u1TVbjhkYjCQCj5YNN?=
 =?us-ascii?Q?/RMh4/MRA+2eIr46Wk/EgOPdQDgPqCq78YpP3kUuBp80jRyPAYPdFKf2vHLx?=
 =?us-ascii?Q?E2Yr9HDOIll+RuAcIBFcK4T221av/vv608bGAehwwT6D2XrvQsHI5I2Ndq5X?=
 =?us-ascii?Q?W8K5kfWxFFGcPYAxicUZxWM4kySw378jqrE0cXFdXprXCOu5wVu4rPK8a4NC?=
 =?us-ascii?Q?LsqW+JBQPl34kYigXIoloC3n1I8RwUAtKDMtSjvubhLHviHdtTbCHOF8xR26?=
 =?us-ascii?Q?ppEXiyEd4QrAAf26XWq3xQElfp6QlI7we2wh8xUjZpMkzMyy8MdLw/t1txQU?=
 =?us-ascii?Q?9V0qRCRIYEpNizMEDcoDuSpJXWTkJdUMzhQgEV6HDMxTBZruvsh3ZDicc8Uf?=
 =?us-ascii?Q?hlDV8zuqkFV1iH55CBBJF22ATwxqd92fJwf65s+e6VLL0lVpBGKiEG7plrky?=
 =?us-ascii?Q?u+urvw6Jp3rB6vWBXj2fK5FwAaJAHw1MqGFJdkA5gVZ4jwnqz90znGOZeaux?=
 =?us-ascii?Q?x+/fUevErGHJhFxVQTXVqe+KNP6AqAHSPPSGodlbPkOksPTgCSqNov+vE5Uu?=
 =?us-ascii?Q?LqwMQIOFREfPF/kvdyh/TAsT531iBQN3b8xa7Hm700/r8Jz/E7MwW9eoKJWR?=
 =?us-ascii?Q?WGQO3gJAP1SPhsmatGPiTcnHsIyYixcRpr5BnmlY/aI86e126NQilziSCPG6?=
 =?us-ascii?Q?qQMh/+LWpIspwLo7nEKD7fDOyu/a3WM0yQbyFEGJRGmcfLQBYkH/cVcWAvwW?=
 =?us-ascii?Q?2rO5HDFKImeEyGGe7nzFeQQ8NIx4Qt2cxSViRKqrzXhiXxAMdJEcORgBjPkt?=
 =?us-ascii?Q?VoTOEw7ljpdhhlhDBxHigpMMQnwgk9xEYZX3sUdPVAI17rO6ELgOZa99mE1T?=
 =?us-ascii?Q?JNirnI0SUa7b6zwWZDhTNexaHR8mXEG6S64yXbmbLSdXHE293GTu+iNfwSuV?=
 =?us-ascii?Q?+HBsWQbQDLbiu11llmCK5TZAOd5KfN1vTYv94ZL6Y9pFmv/+CKPWBZYRcdFO?=
 =?us-ascii?Q?CIg7dQOW/prC3vFiYB+RxnzhcwV6zJgKCCCLx9x4id+gDmP4JxrRyeUP8uIZ?=
 =?us-ascii?Q?7uRYyLU4D/Y3dBxIDZ4A113jcaGFiVI0PWv5udyJEuIUZOZjIvVM9ybzS+VR?=
 =?us-ascii?Q?mvsanKjlENZkJH9uMGm4Zf/nH1peSPwjWr8buQ82?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6540b46f-ff2b-4b35-5f6b-08dc63500142
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 04:44:04.9305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fRscnxZ/aIJFy7VObwYlol8wYzZvmZeJkMMAnqxS49IUZV6QN9OQgzjVupDpcxsn7gw6AaFwzhLik0YIt6q/rQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4893
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
> Sent: Tuesday, April 23, 2024 9:39 AM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>;
> sebastian.wick@redhat.com
> Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
>=20
>=20
>=20
> > -----Original Message-----
> > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > Sent: Tuesday, April 23, 2024 8:25 AM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> > Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>; Kumar, Naveen1
> > <naveen1.kumar@intel.com>; sebastian.wick@redhat.com
> > Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
> >
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: Monday, April 22, 2024 9:03 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> > > Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> > > <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> > > <arun.r.murthy@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>;
> > > sebastian.wick@redhat.com; Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Subject: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
> > >
> > > Add checks to see the HDR capability of TCON panel.
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_types.h    |  5 +++++
> > >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10
> > > ++++++++++
> > >  2 files changed, 15 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 62f7a30c37dc..1cf4caf1a0a9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -401,6 +401,11 @@ struct intel_panel {
> > >  			} vesa;
> > >  			struct {
> > >  				bool sdr_uses_aux;
> > > +				bool supports_2084_decode;
> > > +				bool supports_2020_gamut;
> > > +				bool supports_segmented_backlight;
> > > +				bool supports_sdp_colorimetry;
> > > +				bool supports_tone_mapping;
> > >
> > 		} intel;
> > Even though not part of this patch, but the struct is growing.
> > Can you change the name of this struct to a meaningful one, maybe
> > tcon_capability ?
>=20
> So this was named intel because it comes under the following structure an=
d is
> Called like this Backlight.edp.intel Since there are two standards one wh=
ich is
> defined by intel edp hdr specs and One defined by vesa hence the naming i=
ntel
> here plus as you see above when getting Called it tells us that this pert=
ains to
> intel edp backlight capability.
> I think it makes sense to keep it as is.
> Do you still think this needs to be renamed?
>=20

Somehow just intel is not that readable, maybe intel_tcon_cap?

Thanks and Regards
Arun R Murthy
-------------------

> Regards,
> Suraj Kandpal
> >
> > With the above change
> > Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> >
> > Thanks and Regards,
> > Arun R Murthy
> > -------------------
> >
> > >  		} edp;
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > index 4f58efdc688a..94edf982eff8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > @@ -158,6 +158,16 @@ intel_dp_aux_supports_hdr_backlight(struct
> > > intel_connector *connector)
> > >
> > >  	panel->backlight.edp.intel.sdr_uses_aux =3D
> > >  		tcon_cap[2] &
> > INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
> > > +	panel->backlight.edp.intel.supports_2084_decode =3D
> > > +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2084_DECODE_CAP;
> > > +	panel->backlight.edp.intel.supports_2020_gamut =3D
> > > +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2020_GAMUT_CAP;
> > > +	panel->backlight.edp.intel.supports_segmented_backlight =3D
> > > +		tcon_cap[1] &
> > > INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_CAP;
> > > +	panel->backlight.edp.intel.supports_sdp_colorimetry =3D
> > > +		tcon_cap[1] &
> > > INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP;
> > > +	panel->backlight.edp.intel.supports_tone_mapping =3D
> > > +		tcon_cap[1] & INTEL_EDP_HDR_TCON_TONE_MAPPING_CAP;
> > >
> > >  	return true;
> > >  }
> > > --
> > > 2.43.2

