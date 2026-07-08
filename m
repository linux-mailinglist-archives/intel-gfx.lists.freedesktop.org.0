Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t/f8HN8lTmp5EAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 12:26:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31FC7244B1
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 12:26:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QmqbEZzU;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6645110F0A3;
	Wed,  8 Jul 2026 10:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8B8510F09D;
 Wed,  8 Jul 2026 10:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783506396; x=1815042396;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NJU1uAj6xVug1OoF+pcbXEwrmQu60vyDRsGhCQC4F+A=;
 b=QmqbEZzULOEA+ncWnPZNp7B24PzJ93BxPQXhTO/aXy8hvunuDZnpzZ1F
 781uVxlT5MiULg18x8R3r/GRaFox2a2ajbcfB70EhfCTckXSS3XCB107j
 w7FxKs25sSVDMT/Phg8JbIp4IJCUSCd6lEJc5DpWpeSF832Yk0IFt8gRG
 bnk+YU5/iK2Ja8w4NN/MzFBpVHe7NcOmOLn2IWG6eLUReTt/haeFKIeec
 HeHZJrqe8T/lYZQ03YfPCePg8mxAHlv0uL7sY09l+OI1qgDiiLTIrPZ7z
 Kvk4WXr7i8B2F/LBR6QFvT/IYlFAfmfgGy1N5Jzd06qJgqPPP6T+f95Ec w==;
X-CSE-ConnectionGUID: ZgQkGrKQQZ6pPVnoe6KEyw==
X-CSE-MsgGUID: 5DGa9SQ4RGuvtbsno0TCAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="83942957"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="83942957"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 03:26:35 -0700
X-CSE-ConnectionGUID: qwjWhZajTCKsqTucs/dJnQ==
X-CSE-MsgGUID: ZmEN0UXcS5yyVKv+cx4Q8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="253168733"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 03:26:36 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 03:26:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 03:26:34 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.41) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 03:26:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cZ9IIu7s1F1RuhGn98NlryC90ZheGxub8sHiKFMtcO9GHF9BTtznLLzD4q2kw/UKOOLkCKHBERi/KX5+N8mlNnORVnQKiHurmNUZ4WslQ5TZu0FfYwuLiZd8IT+V5dRQpv1wbFGeN0aZXvCxeEgMqXw2ZUT6QTESsKHGBDsxrjLvsNIW3O4++Co6BoNlnie/oKFPer9L+r4tJFExnInleZZXmpn+L9coPFePWxV4XpeXCgdlRqnIvUVScX01QycY7jz5GfPfWu/xFhFjCOuCGiC7TYGGE07hbnWVpU2QnDB9L0zfkuD4lB2C8R1S+sVxJTEqAF6N94sOLibwR39U9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bg1H9DgisNattseEzCwQKKhXKCZ4ADfRdTpwNSdtLFM=;
 b=H0ay0dS8jZ6+kj0JyL19qzMvf+MCo4tIRTkX0pFFvfC0ZkNV0etGI9wAq0P6A3GVwWtQsNT8NLC0zypFZTHxnCx7ks3Yacm4iFkaWd4+z/C1Y8+vCY9D05iGis6TkDq2eY3zgefhmy5OE8rletJGaIjeo0MVqPsSSg374Dpu3blkhVccNeS4MXqUdiq2qGa+sufw7Oe6INBX6LY81Vsqabxccu9Iyhit4vAPuobRcCpJcsHeDjg5H1TMWbf+vhDZAdiT0XU7jsVC4FeyWLH3OWyO/RgDmH2cIalo9T4b4R4RrOm6iSGeYqP1mKYCznK9m8p+hV04xnI/3SBPibBJQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by IA4PR11MB9420.namprd11.prod.outlook.com
 (2603:10b6:208:563::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Wed, 8 Jul
 2026 10:26:32 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Wed, 8 Jul 2026
 10:26:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>, "Vehmanen, Kai" <kai.vehmanen@intel.com>, "Nautiyal, 
 Ankit K" <ankit.k.nautiyal@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH v2] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Topic: [PATCH v2] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Index: AQHdDsGUi1c0mv1rlEWHdVr0cUTF9rZjaYrg
Date: Wed, 8 Jul 2026 10:26:31 +0000
Message-ID: <DS4PPFE901A304FC238F0FB49F2C8B7B306E3FF2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260708095624.1838706-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260708095624.1838706-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|IA4PR11MB9420:EE_
x-ms-office365-filtering-correlation-id: 3e07905a-ff9c-4e6c-aac0-08dedcdb6120
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|38070700021|3023799007|22082099003|18002099003|11063799006|56012099006;
x-microsoft-antispam-message-info: WQERgz0dhB3jFNfDSUDrsoclsSKKB6zdbeuuJfia2rFox68kEUYJB5yBl4RnKyOjoRq6PtpiGRCrDudLTuKcYnLm07QraxoxjLXF15rxCabHRjXDZW8D8gssSs4DcnKgVaOLD5HZt3X0b++r8f3d0Xu+JwZM4VgMIRHj5LdN4VXynnWWTBwBZq8PyBOw6Qbi6PsAFhypgBc48m586jR16XRAR7e1ZxcCwldwHclACFy/fmXRv9h+BYPsTUoV8iPzTCOOxZz1jkfwrceJ6EvXlsps4qRvgZ7GSlnQdKZtdiKA/yRzt1w8jMXJlopz5fu7+9qhVopGups5B1noV7rNRHcWi0vQYVtz9Hnncx/vnoiktN9o5XY2jbJsUcFmNC7v6G8bGVRhYV8R+m/STP+Yd9IyhcfRVVm5RpNBPvtsdEZouOm64SWp/3lkUYKTAUkBJmX9ZV8m2Zn+/WZNeZMtwUbTz1Hhc94qMzH0K3VewCuNqhM32+v5d604cmmQAV5aLD5sSGvoi3ZUDGr1CvbCPZ19ycvmKC/ekBOG4T4MOGxtJvZkI/SNqMXHGCv0iy24vPaJ+09uDTHz10Gy0GXQkqmmf6Mq02nQwUO6k30qXylEIyprxjJzVDpgcrwfse/oEPFkmvmPBBwh+4yM6mVAoqBOcuxYvoJeeMD+fkrej1ZmaYyffGDf6sR//OBBm/Tnoc+NsrlQJCK3gCXim9vnNnu4ionVhyD/P0qI/jRvjxU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(38070700021)(3023799007)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/CG1jiHMZdmHa6oNzF1r8dYPFYq5g8f0J1JJkWA9QolBHCaPkU1yXqtucCuu?=
 =?us-ascii?Q?V4ifO1l/cJkTAw14zSr43hUIomOXEZatzgiGW157l7UgQBTvpuuCklb2TAVL?=
 =?us-ascii?Q?8LedNFu4lUqBUHLBJ9knYjQQyKSsIjDBrg+JvfxMkAiI5fYWYaXGE80e5AQF?=
 =?us-ascii?Q?Z4BVZc2nf+Z27x4lgZprtXnWCPvukdZck6JnyTiNIyHNC3LhccYbnl3OtnAe?=
 =?us-ascii?Q?a0o+lqQjWIYUhjd05WB7wrGruhXnXUmnelzJIZPW0XVBienaEm8qbZ1mpdKt?=
 =?us-ascii?Q?1NA1p6tDYIWYN7K5zmLH0gyb+FFJRCqs1fwuRjBalNcIrUMfYeKBqk6r8teD?=
 =?us-ascii?Q?0EquGT6RLHk8dkduufOUtK117koAEcZwTS6wPj+TpKgqJED/hQFnb+Qxms3m?=
 =?us-ascii?Q?RFzqN7azUWFzbrMZrRvxs+YNt1asOm6BTLPUDLSDqnR0ghQ2Wf5RwEVy/3or?=
 =?us-ascii?Q?wuPv+M53baEDadrBKeFqCexGcC5hCsXw4ITSSHihbzmfumAEuP/fjTn+F8SL?=
 =?us-ascii?Q?ncD6ZVFINghvIVS2BgzUjAX9jEizgmT1x0s91HP0I0JYT2cmMCs1myPq9gzV?=
 =?us-ascii?Q?E1YrHSxiYmA3YHSTqH/sPLBfcisYAUuXHra5LJQ0EhqpsgEBA1GSFmbfMEzV?=
 =?us-ascii?Q?Y5OT/UUKNH5xsCV9ij3Emexu6O3oGnRQtnXoQAXDb6VW41ClIGBUIzO2VFrR?=
 =?us-ascii?Q?CtzBEqyXT9aHqsvrBGJf50exBmDDfkAjA+GChqmSWqgnW4eoDQ4i+2yVRjSZ?=
 =?us-ascii?Q?EpPdOZCUi4fJv9mzghkKPPSqJSvvWve+SxeNGP4iR7TEH1FnC3X1Rvs3AVFn?=
 =?us-ascii?Q?qxNIald6CaQtk5s0QNfxSILL2KAff8uivNcDFT+IB0DOOA6DKIzQ9vnrtLXg?=
 =?us-ascii?Q?aYb7KAWKHM2Xt7zbXDylPPiLxQC9r0GPEmYrMv6oklpwR8ce00NV3B9qJRB9?=
 =?us-ascii?Q?f5sQKern5N0XtkapfXS9Psb8/fyu5jUqA3FlXXvCDzGg71sxG40wr1tcVI76?=
 =?us-ascii?Q?KExgpMlWyojO2k4atvx+n2B95q/t7L3X80fme4ZvRPJg3Zabuklrmht98XXP?=
 =?us-ascii?Q?2s5nn9e+KSaD5wJaroyjAkIm4WUXLAI84Cf3ERZ6U+acQKl/X8nouFBBgwqi?=
 =?us-ascii?Q?Zb4bA1md0SkrIblGPJ46UuStoD2dC5Xm1k6NjfJ2tTFfmMyim/1FmqdXX8Ed?=
 =?us-ascii?Q?TvRx7KST8eOvH/o+nzVy7oFez/KO2tZ0A22vvS+jhfYrE2nFKXqQgeGcY6GK?=
 =?us-ascii?Q?SBQZHVbtiYVz0R23WMBqG8UrQox1I5whn5+hlqY6ta/esbZGdxU7rj9Jm4EI?=
 =?us-ascii?Q?vvnLLyyAKb9r/j4We4+ph5oTnDpNzcdtHfxkY4GxkeE1kWEEEQNu1Sor3iYE?=
 =?us-ascii?Q?K0XIPh55brhQoxVR5cq7AHWsh7TulVXXq/6iYocidx+evmZTHhR8xPvQ+ZYY?=
 =?us-ascii?Q?enRc0Qiwx8YaDD22BVQPR59X+hLblTR+hByMULRzONnv2FkJfu37LYJxqxUP?=
 =?us-ascii?Q?pfOKJxrpmHi9bcMGlvWaqsa84/7TKdBAiu2itwmEh+3fEFC8V89dbSm9mwKs?=
 =?us-ascii?Q?+XvD/YuJTZfeLmk/CiAPm87sPkD/UABDvh3oEXBlI26uSCkas2Ii5XtOxmMm?=
 =?us-ascii?Q?oxJ+hn/eaQyfrlEnV6YUDyJfLIqyxhm8iTRJljMJCVj5XH8UAH5ev/ny5Cw/?=
 =?us-ascii?Q?doKRwmmhsUjJKju2xTyTaosMH7JrNbLovSuP0vEgGS4eBSkKlkGoaIlurQwu?=
 =?us-ascii?Q?uxnqAAXl7w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FDwTNWMoqE5KqNhPIzNiiarDhXwpVkXe0GCqAs38lJ74CxpXN+JIKXQdNoHKDzpVjNYxwlDHDxqyeEs3MKeuPIdadcsm6U+8KPdY5ZsVnh8QXKWf8bawT0w8R0WSlVc43LT4DRTf3wv/N++fwnCIINcDaJ00hsqWjqW3i9JZWNjuHACqa9ZZ7wohIpM80TdquYAq4wiTJKXjqWIsgi3/9A+gtoWpb9yC/mUt5VV0OsAyy2ET3rKFTRfUNJ+d1FjWLvDle10S9VxGZcHoaWYWYJgV6GBexGNEmsbarKKbE1/aT62dYUdTdPMxoNg1EsdpIRo+aXqzOEfXGyWkzdZPKQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e07905a-ff9c-4e6c-aac0-08dedcdb6120
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 10:26:31.8126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P/dQnv5+wqTNcZD1/4Q73TmGG4FOMupdITt1IYGQARnJLROZnwSumL2uH7IjIVXab+NHzUGGAH2NhaaRbQ9EdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9420
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D31FC7244B1

> Subject: [PATCH v2] drm/i915/audio: treat UHBR SST like MST for
> cpu_transcoder signalling
>=20
> Both DP MST and UHBR SST require the audio component to use a real
> cpu_transcoder (>=3D 0) value to identify the audio stream on a port.
> For DP MST this was already handled; for UHBR SST it was not, causing
> pin_eld_notify() to signal cpu_transcoder =3D -1 (the legacy SST sentinel=
) and
> find_audio_state() to skip the per-transcoder entry for the UHBR stream.
>=20
> After suspend/resume or replug, the ELD lookup fails and audio goes silen=
t. Fix
> by detecting UHBR SST alongside DP MST when deciding whether a real
> cpu_transcoder value must be used for audio state addressing, in both the
> pin_eld_notify() signalling and the
> find_audio_state() lookup paths.
>=20
> --v2:
> - Commit message and comment update. (Suraj)
> - Change function name has_mst_transcoder. (Suraj)
> - Avoid Live crtc access in find_audio_state. (Suraj)
>=20
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 61 ++++++++++++++-----
>  .../gpu/drm/i915/display/intel_display_core.h |  1 +
>  2 files changed, 48 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 9729f1837d2c..7a2bc73744a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -38,6 +38,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_display_wa.h"
> +#include "intel_dp.h"
>  #include "intel_lpe_audio.h"
>=20
>  /**
> @@ -696,6 +697,21 @@ static void ibx_audio_codec_enable(struct
> intel_encoder *encoder,
>  	mutex_unlock(&display->audio.mutex);
>  }
>=20
> +/*
> + * 128b/132b transport is used for both DP MST and UHBR SST. As far as
> +audio

I think you need to mention DP MST UHBR and UHBR SST or else it gives the i=
mpression
That MST only uses 128b/132b always.
I recommend we can remove this whole comment altogether.


> + * is concerned the hardware behaves identically in both cases: the
> +port can
> + * carry multiple streams and the cpu_transcoder is a meaningful (>=3D 0=
,
> + * possibly > 0) identifier of the audio stream on that port. Legacy
> +8b/10b
> + * SST instead carries a single stream per port, for which the audio
> +drivers
> + * expect the cpu_transcoder to be signalled as -1.
> + */
> +static
> +bool intel_audio_needs_cpu_transcoder_id(const struct intel_crtc_state
> +*crtc_state) {
> +	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
> +	       intel_dp_is_uhbr(crtc_state);
> +}
> +
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state) @@
> -762,6 +778,8 @@ void intel_audio_codec_enable(struct intel_encoder
> *encoder,
>  	audio_state =3D &display->audio.state[cpu_transcoder];
>=20
>  	audio_state->encoder =3D encoder;
> +	audio_state->needs_cpu_transcoder_id =3D
> +			intel_audio_needs_cpu_transcoder_id(crtc_state);
>  	BUILD_BUG_ON(sizeof(audio_state->eld) !=3D sizeof(crtc_state->eld));
>  	memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));
>=20
> @@ -769,8 +787,12 @@ void intel_audio_codec_enable(struct intel_encoder
> *encoder,
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST cases */
> -		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		/*
> +		 * Audio drivers expect cpu_transcoder =3D -1 to indicate
> +		 * Non-MST/HBR cases. MST and UHBR SST are addressed by
> +		 * a real cpu_transcoder.
> +		 */
> +		if (!intel_audio_needs_cpu_transcoder_id(crtc_state))
>  			cpu_transcoder =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp-
> >base.audio_ops->audio_ptr,
>  						      (int)port,
> (int)cpu_transcoder); @@ -819,14 +841,19 @@ void
> intel_audio_codec_disable(struct intel_encoder *encoder,
>  	audio_state =3D &display->audio.state[cpu_transcoder];
>=20
>  	audio_state->encoder =3D NULL;
> +	audio_state->needs_cpu_transcoder_id =3D false;
>  	memset(audio_state->eld, 0, sizeof(audio_state->eld));
>=20
>  	mutex_unlock(&display->audio.mutex);
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST cases */
> -		if (!intel_crtc_has_type(old_crtc_state,
> INTEL_OUTPUT_DP_MST))
> +		/*
> +		 * Audio drivers expect cpu_transcoder =3D -1 to indicate
> +		 * Non-MST/HBR cases. MST and UHBR SST are addressed by
> +		 * a real cpu_transcoder.
> +		 */
> +		if (!intel_audio_needs_cpu_transcoder_id(old_crtc_state))
>  			cpu_transcoder =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp-
> >base.audio_ops->audio_ptr,
>  						      (int)port,
> (int)cpu_transcoder); @@ -1118,18 +1145,24 @@ static int
> intel_audio_component_get_cdclk_freq(struct device *kdev)  }
>=20
>  /*
> - * get the intel audio state according to the parameter port and
> cpu_transcoder
> - * MST & (cpu_transcoder >=3D 0): return the
> audio.state[cpu_transcoder].encoder],
> + * Get the intel audio state according to the parameter port and
> + cpu_transcoder
> + *
> + * A "MST transcoder" below means 128b/132b transport, i.e. either DP
> + MST or
> + * UHBR SST, both of which use a meaningful (>=3D 0) cpu_transcoder to
> + identify
> + * the audio stream on a port (see intel_audio_needs_cpu_transcoder_id()=
):
> + *
> + * MST transcoder & (cpu_transcoder >=3D 0): return the
> + audio.state[cpu_transcoder],
>   *   when port is matched
> - * MST & (cpu_transcoder < 0): this is invalid
> - * Non-MST & (cpu_transcoder >=3D 0): only cpu_transcoder =3D 0 (the fir=
st device
> entry)
> - *   will get the right intel_encoder with port matched
> - * Non-MST & (cpu_transcoder < 0): get the right intel_encoder with port
> matched
> + * MST transcoder & (cpu_transcoder < 0): this is invalid
> + * Non-MST transcoder & (cpu_transcoder >=3D 0): only cpu_transcoder =3D=
 0 (the
> first
> + *   device entry) will get the right intel_encoder with port matched
> + * Non-MST transcoder & (cpu_transcoder < 0): get the right intel_encode=
r
> with
> + *   port matched
>   */

I think this above comment saying MST transcoder means 128/132b encoding is=
 wrong=20

You can replace the this chunk with
 * Get the intel audio state for a given (port, cpu_transcoder).
 *
 * Streams are addressed either by a real cpu_transcoder (DP MST and UHBR S=
ST,
 * i.e. entries whose stored needs_cpu_transcoder_id is true) or by port al=
one
 * (legacy SST). Both the signalling side (pin_eld_notify()) and the lookup
 * side use the same predicate, so the two are symmetric.
 *
 * cpu_transcoder >=3D 0 & needs_cpu_transcoder_id: return audio.state[cpu_=
transcoder]
 *   when the port matches.
 * cpu_transcoder <  0 & !needs_cpu_transcoder_id: return the first port-ma=
tching
 *   entry.
 * cpu_transcoder =3D  0 & !needs_cpu_transcoder_id: falls through to the p=
ort-only
 *   loop so the first device entry of a legacy SST port is still found.
 */

Giving a more realistic picture of what we are doing now

Rest looks good to me

With above fixed LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>  static struct intel_audio_state *find_audio_state(struct intel_display *=
display,
>  						  int port, int cpu_transcoder)
>  {
> -	/* MST */
> +	/* MST, or UHBR SST. */
>  	if (cpu_transcoder >=3D 0) {
>  		struct intel_audio_state *audio_state;
>  		struct intel_encoder *encoder;
> @@ -1142,11 +1175,11 @@ static struct intel_audio_state
> *find_audio_state(struct intel_display *display,
>  		encoder =3D audio_state->encoder;
>=20
>  		if (encoder && encoder->port =3D=3D port &&
> -		    encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +		    audio_state->needs_cpu_transcoder_id)
>  			return audio_state;
>  	}
>=20
> -	/* Non-MST */
> +	/* Legacy SST. */
>  	if (cpu_transcoder > 0)
>  		return NULL;
>=20
> @@ -1158,7 +1191,7 @@ static struct intel_audio_state
> *find_audio_state(struct intel_display *display,
>  		encoder =3D audio_state->encoder;
>=20
>  		if (encoder && encoder->port =3D=3D port &&
> -		    encoder->type !=3D INTEL_OUTPUT_DP_MST)
> +		    !audio_state->needs_cpu_transcoder_id)
>  			return audio_state;
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 17f7d3abdb9c..a6129d0b523f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -97,6 +97,7 @@ struct intel_wm_funcs {  struct intel_audio_state {
>  	struct intel_encoder *encoder;
>  	u8 eld[MAX_ELD_BYTES];
> +	bool needs_cpu_transcoder_id;  /* MST, or SST on UHBR link */
>  };
>=20
>  struct intel_audio {
> --
> 2.48.1

