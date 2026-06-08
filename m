Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s03XHtmJJmp4YQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:22:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77C56548BC
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:22:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=g4VQbUni;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA27310F030;
	Mon,  8 Jun 2026 09:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C8710F02F;
 Mon,  8 Jun 2026 09:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780910549; x=1812446549;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=urK/ULgRNSZ2O51c+YgXqtFIIqKX0wSiiCAANrH5opc=;
 b=g4VQbUniaKOUdFNJuKf5o8SphlfIiWALnFwSUHpo/qeXd5UG8LTzfHfH
 1yGSAvWtcQRRO6O7LIFcvpey4ISSyBotSXeYpj2KxkiFkchgr005XHErn
 k6I3vu2kIhWKktsjZm55XWcpjjCxK0qoR25EGUEq2/x8ZrhWyheiIfHNn
 RGgy5uWAiBgyyHDfAL4NDM+2jvvMbvgEDG+8N0OeD33VOpOdXCZ7qMdIr
 b4W4nXeE3gofLqqbm26Xibp0kwotCsPFaOm4lN0ONEF2gWDPsrALBwBgk
 bC9LyNbsnr/ijhWhMepmd0EaKvB81nNZp6GTEMlwETprXtSl0KFFaWypR w==;
X-CSE-ConnectionGUID: FWTQEKsnTsiRNPcBYEBfFg==
X-CSE-MsgGUID: dJUYId+STjqDeFzQKBNDFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="93126801"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="93126801"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:22:28 -0700
X-CSE-ConnectionGUID: mS3e3yTPRwyvTOeALrOoew==
X-CSE-MsgGUID: V2IWuIP+SHyiitKZB2P7Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="243045908"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:22:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:22:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 02:22:27 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:22:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YShWDQEsvXQcu2QAztM3mV8KASeM8wR19p34vyDCm1WXEwVZsoNq37IpQOb50/5r/4SFEpOOAQTPOxWzmSnyw2X+D5p9/4fPWMZUZsjnCi1rZ06pGz7PcEP0QQg3d9b6/DzY+2C/w3uWKJOikk9zZnmkfAJeIOkUIZtTSzQ4y7dqgez8zs43u1/ku65A3U0kFCFjgLOWLOk0k5rPN5o1TZIy5GXkvmCgRFkDv5Z2qFoXYeNVVrq+CYN2RNItzlmcK375Bxuwni6IcVzgAKGMfsdsz287jKo9uSRGpJl4ElYOQo+hU4D7Tkh1VX80WGtLhvX+vW8Y4edr0plslXBrvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=urK/ULgRNSZ2O51c+YgXqtFIIqKX0wSiiCAANrH5opc=;
 b=xwKzRf+O5ActrXTKuWWxydyjbsVOurmIkMOUVF4OdmJpfv76F/Pmm+hExq2Bv+7P1TMHersVcQL1njyTq0tLzf+mHcAGcKF8PLxmk7axB6k2aMAdkVlIm9h74ZZtKEUoAig3U0Fh66WvUUxJozWFtkVQArYCiylI5UZzn3L61ovLIuJYK5YypPM5QxCdDiNgpmXC/MiYresUUS/f3iTJMGmtjyvid6AbESjUCmIXhLyes1Ob/AlNLB8uSkZcqLmIDONy1jGRWgbiNcDdgzNaj+DxNPnr1a82kkuo0LPoJAtNo1VWeGkqN0cZJs7mg2ReVHPRRnG/VRa7hm/wV/15MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA0PR11MB4735.namprd11.prod.outlook.com
 (2603:10b6:806:92::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 09:22:25 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 09:22:24 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 15/22] drm/i915/dp_link_training: Track link recovery
 state with an enum
Thread-Topic: [PATCH v2 15/22] drm/i915/dp_link_training: Track link recovery
 state with an enum
Thread-Index: AQHc8a4aSjoaTnkjJ0yr1nefUcn+J7Y0bTEg
Date: Mon, 8 Jun 2026 09:22:24 +0000
Message-ID: <DS4PPF69154114FE2EC6D8500DFD870C198EF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-16-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-16-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA0PR11MB4735:EE_
x-ms-office365-filtering-correlation-id: eb30f00e-e146-4312-8bf2-08dec53f73bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|4143699003|56012099006|6133799003|18002099003|22082099003|3023799007|38070700021;
x-microsoft-antispam-message-info: vbgqCT3j/ATLwvk0pXhXiZXm9VL7SxGZHUW/htf9xwhY09aApsbl9FvsauJmgWTRFSje405ezdgZotZFF/d0olzN0YGOB4mylsR5T/393N89vREjKd3CaDqMktKyGgQqZP+d3jt6dZs2JxxjWUMKXjXpEDLpNGzfle1b6Qkc7r6mseF8+3L0XH2Mw2q7fap7bWxZilxteh6hAF5PZt1xvLcHJjAD24lA9jW+gM50Kry/TYoyJ1SBw1byNKKItosxF8uokOAg2LIDOfIouvBYcP5KB30iTRapwgpJERM0STdeMva98hDleD4xN7TGRxEG962rlvlb2lHOhMeb6Rf/va5QeZNrQLLoa/s6TvUpta9owU15xSeWJO8BWmFNZNWe/6vXbZVtnA6HiQk1DrqvnX0qwu5gMckT8WyhmRQOTpTiFyl1xorfXLSXNHyRsuuzxWSUUheH5TR32rIpd1VieSh0fobkPuxMxNvOyORSvY/VDAvjdKxypBMajHuCH9VYfizALRWtToIVdW5DjHlfKLDPfNq9D6XBUZAyQ2l/1WRX2EChGsbIuAvwpt0cMDrhYFOlHkYPgV5qbDqLJyTiEjN5OrdwR6gHe20fM2hqpsglDFP9Jn4iPVMPaux8M4wgLu9gxss4Mis3Q6PwSDnw/16ELqEWAMgV+DakU4jktA1KQ7sHybGIKYHBKH3qBy34myK/emvK/qHr2tvr+QmFSAMwK33CyXj7NOw03YUc0mNYAlJBmNS8zhcfMJxRO4AW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(4143699003)(56012099006)(6133799003)(18002099003)(22082099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2VKQjdDY1pwNWsvNnVZbmVvb3NRYnRWbGZOd3hLODY5ZHM1bVU0bXp5dVBa?=
 =?utf-8?B?dFFadERmZUVieDVqUFQ3SDJmQUNxVmxkaVJud3VUUFdpeWxwMTNQUzlrV0JL?=
 =?utf-8?B?VnhvUk1lWlRUMG1RZ09LaEZuNXZPQ2oySHdFaE93c2kzNW9VWkFsdDJnTnF5?=
 =?utf-8?B?dnhKRGlSZWI4cmdsa2VDd1FDamVOQzkvWm5SalZKUEFqSTAvZU5HL0hSby9t?=
 =?utf-8?B?cWNISjIvZU1qZ0lFdDFSWllpVVV2Rm9lZWVvcUdPK1hlcU1EaW1SclBmUndj?=
 =?utf-8?B?N3RacG04TVBNQzFZTDdwY2RCYWIyY0tpdGxBWEtHUFJHYlRpWWYxdFJNSDFi?=
 =?utf-8?B?VWZVRFlybDV3Y2RaQTJHTXNOcGorK21MdURkMXdoMUthTUpPN2VsemtjOHdO?=
 =?utf-8?B?UVpQMGlINGF0UHlzd0l3clRBS1RvTGlwWHNqbjdOSWRMa0dBVjZyL0tPTFJB?=
 =?utf-8?B?ZDBWc29GVjU3ZjFvaWFQK0o3M2FKRDNuUGVrdllRQTVsRlIxaTB5YkJldll6?=
 =?utf-8?B?ajJIWUp5a3pjMG0rK1BvanVGVlV4U3gwdXNVM05tTUQvNTR5VHU3anZHZFpO?=
 =?utf-8?B?Mlh2U0wvZmhtSXBFK0VUQWFjVlZlNklvYW9qUytQdThaZzlRSXhWcWZkWnBH?=
 =?utf-8?B?MGZUNXZSUm4wVFBGNmdCaGJ0eWs1N0VPVk03OEFxNzdmZ0xhL2c1RzZYNGh5?=
 =?utf-8?B?SC9HcUdDckVYMVZwQ1RYcWRWRWtKT3FQVEtIVGlSVitVcVhwQWgzckJTZmdU?=
 =?utf-8?B?L3B4T1JFTndFQXVtSUpEV0tVaEZ5b1BQdDBEeUhqNnA3dzlrbGEyVlIzaS9F?=
 =?utf-8?B?VnB5akMwcWFMbDBVZzM5d3NUVkRWcGhyVW44V1NEZGZXMXlwK3JUemFtY1JJ?=
 =?utf-8?B?RHFOSHVRRDBQRS9uTTh0VjNYOTc1OHNwZVFDd0swQ21UMW5YblJDdml2L01X?=
 =?utf-8?B?bXY3S21hMm56OS9USHpZN3pLc1FsQllwcWNnSzZMWmZGNjZjZ2dTSmVyQzF6?=
 =?utf-8?B?R00wV08wZng5RkoxRzBhSU1lUkgyVGM0TDhHbTBvOXlCdnhwVUJlMDA0MlVo?=
 =?utf-8?B?MHRxb3NIUnppU0Zud0ZYZnQrUU9MVlF0Sk5mYVJwK2hlY2pxWThQUEY4ajY2?=
 =?utf-8?B?UEdxbWZMaHBJZnNONC8zL1B0Vm4vaWd0d1RqeXhGeEJzd1oxMUsxcnduVHN6?=
 =?utf-8?B?bkhFSmE0L3N2Z29oUzdoWSt3WXVxbkJsYU02UUN1YWVrdEsxTjFzcGdKYkYw?=
 =?utf-8?B?dGdIM0N0bThmSXVtdlRnYk9QSlJicUt6OW9tVWJ5cFBTS2NoZ3VtZ1NuZGZh?=
 =?utf-8?B?eEVlZlJyYVFKU3VYS2duVFRHZDg2UVRzVVVOMWxjTEFJbGdmWjRibHhDS3J2?=
 =?utf-8?B?K2wwS3ZjbWFSay9wM2hJNDhVY3N6UEduTk9XaHRjcFZ6dDFPdlZNTGpETXo2?=
 =?utf-8?B?RmNHdTdkYkhkUGl4T2NRQSsyRDRRZXJjTlNpNFdzcnZ3cVpwWlV2WlEzeEsr?=
 =?utf-8?B?YVZtY1Rrai9jV2Y3YnFSZ3ZiUnFSaGhXVGFpRjJXUXpad2l1c2ZMNUVmNGtF?=
 =?utf-8?B?UnFBWE93eGVaV1pVdDY4cDh1bDlDcnA4bVNkRXRhb1RqNElBVDhNNlZYWXYy?=
 =?utf-8?B?Q29YU1NxZmtadTBURkNiQitPVWNXWmwzVkJoL0xaLzRQZE9hMkhDdzJ6eUZm?=
 =?utf-8?B?V3dDTnB1U016UElmNDlUTmpVV0Vra1JobHUrejFpZGJidXJJTkpwT0lPN01M?=
 =?utf-8?B?aVZjVmtiRmxMMGRxb0xOTzNiSVNEaHJRYzlWNklsV2FvYzZRblkyenEvUGMw?=
 =?utf-8?B?cTBNR2RJYzB2bnBDNHVIQlJ6cG5vT3ZlMERjL0kwWXNCTEJlbnp5T2c1VUNo?=
 =?utf-8?B?VHpPbVRqeFFoU2o3N1loNXl5Skx0QjhoL2RoTGR6LzVRdUZ3RzFETndxRUJR?=
 =?utf-8?B?ODhoZC9VMk5GcFdsdFNYSFV6dURWa21kRnFxcFhNdkJvMXNFYUhTdDRaYTJz?=
 =?utf-8?B?M0d2d1BCTHBqTEdXbHp2MWZ4ajNiZ2hqZENvQ0U4YXJMOXM0NGdMM0krc21h?=
 =?utf-8?B?WVlLOVM3OWxyVStSR1ByNTg2UVJKeEoxTGhjRDVkK29nY3hUSlFaVWQrbUVL?=
 =?utf-8?B?NVBVMTJBVGYrRmFDMTVNaG5VZS85dWhYWFpDQUJVdWhkMExDZXF4azJkNXgw?=
 =?utf-8?B?b0NzU0JoUEdHMWlhTUJWR0FHblVVcEF5RVJYN0lpUmEwcm5xSWRaTkpIbUJ1?=
 =?utf-8?B?UXZwWHNORmZBSG5tWXVNeG45WjczZjd6b1hZYlMrY3l3UFNPa1Job0d5R2VB?=
 =?utf-8?B?R2p3bFM1OENyRXRPWEVmTWdRWGxhMXIxa1Zqbm9Jck5SdXB0djlUQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Vam11iCElaXW5TDgUkHUjxRNNXrkCJZWJtQ+4lOw1a2NE+2jHwJjPFJCtbhDIrZPBKtRqHqLw/v0GpJupNb7uRUKdFanIH9Oioo8Of8ip6etqAeb8atE2T4zFHHtIw1MZu3sgqWmcA+SAjNi9jaCrdp9hlrAwl2WcV/zQwGfcdWsBriakkvCspErOFHVzVq2iiegHddF9OFLhG8GV973lEG+T6FCId5QCzKIhtZBq+4oeKXzLJrusGV66pe1sYq+K90Lm2cLTBe36CPhNdSEislRRZd/Udit3P5kEBhPJZ7BLIBEyx4Jut74gJXvdphoWCwd3BJb8C2ujRW+89ae/A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb30f00e-e146-4312-8bf2-08dec53f73bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 09:22:24.7434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rq6Rtafr1eCi/psBtmqGho4vh7Y76CKCKHN04Z8Q+cSedqGf3hqcpNcVMGHzy4Bp4AqRjlunbMDQpFntUhF3Yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4735
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:from_mime,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B77C56548BC

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5p
a3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
MTUvMjJdIGRybS9pOTE1L2RwX2xpbmtfdHJhaW5pbmc6IFRyYWNrIGxpbmsgcmVjb3Zlcnkgc3Rh
dGUgd2l0aCBhbiBlbnVtDQo+IA0KPiBSZXBsYWNlIHRoZSBzZXF1ZW50aWFsIGxpbmsgdHJhaW5p
bmcgZmFpbHVyZSBjb3VudGVyIHdpdGggYW4gZXhwbGljaXQNCj4gbGluayByZWNvdmVyeSBzdGF0
ZSBlbnVtLg0KPiANCj4gVGhpcyBtYWtlcyB0aGUgcmVjb3Zlcnkgc3RhdGVzIGFuZCB0cmFuc2l0
aW9ucyBjbGVhcmVyOiBpZGxlLCBhdXRvbWF0aWMNCj4gcmV0cmFpbmluZyBwZW5kaW5nLCBhbmQg
YXV0b21hdGljIHJldHJhaW5pbmcgZGlzYWJsZWQuDQo+IA0KPiBBIGZvbGxvdy11cCBjaGFuZ2Ug
d2lsbCBhbHNvIG1vdmUgdGhlIHJldHJhaW5fZGlzYWJsZWQgZmxhZyBpbnRvIHRoaXMNCj4gZW51
bS4NCj4gDQo+IHYyOiAoSmFuaSkNCj4gLSBDb252ZXJ0IGVudW0gaW50ZWxfZHBfbGlua19yZWNv
dmVyeV9zdGF0ZSdzIGRvY3VtZW50YXRpb24gdG8gYmUgYQ0KPiAgIG5vbiBrZXJuZWwtZG9jIGNv
bW1lbnQuDQo+IC0gQ29tcGFyZSBhZ2FpbnN0IC8gc2V0IGVudW0gdmFsdWVzIGV4cGxpY2l0bHku
DQo+IA0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9m
Zi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyB8IDcyICsrKysrKysrKysrKysr
KystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX3RyYWluaW5nLmMNCj4gaW5kZXggZGMxYWQwZmM2YmQ4Yi4uYTMyNmU5ODAzZjJjOCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5r
X3RyYWluaW5nLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX3RyYWluaW5nLmMNCj4gQEAgLTYyLDE0ICs2Miw1NCBAQA0KPiAgCQlsdF9kYmcoX2lu
dGVsX2RwLCBfZHBfcGh5LCAiU2luayBkaXNjb25uZWN0ZWQ6ICIgX2Zvcm1hdCwgIyMgX19WQV9B
UkdTX18pOyBcDQo+ICB9IHdoaWxlICgwKQ0KPiANCj4gLSNkZWZpbmUgTUFYX1NFUV9UUkFJTl9G
QUlMVVJFUyAyDQo+ICsvKg0KPiArICogZW51bSBpbnRlbF9kcF9saW5rX3JlY292ZXJ5X3N0YXRl
IC0gTFQgcmVjb3Zlcnkgc3RhdGUNCj4gKyAqIEBJTlRFTF9EUF9MSU5LX1JFQ09WRVJZX0lETEU6
DQo+ICsgKiAgIE5vIGxpbmsgdHJhaW5pbmcgZmFpbHVyZSBpcyBjdXJyZW50bHkgdHJhY2tlZCBh
bmQgbm8gcmVjb3ZlcnkgaXMNCj4gKyAqICAgaW4gcHJvZ3Jlc3MuIFRoaXMgaXMgdGhlIGluaXRp
YWwgc3RhdGUgYWZ0ZXIgZHJpdmVyIGluaXRpYWxpemF0aW9uLA0KPiArICogICBwb3dlciBzdGF0
ZSB0cmFuc2l0aW9ucywgc2luayAocmUtKWNvbm5lY3Rpb24sIG9yIGFmdGVyIGEgc3VjY2Vzc2Z1
bA0KPiArICogICBsaW5rIHRyYWluaW5nLg0KPiArICoNCj4gKyAqIEBJTlRFTF9EUF9MSU5LX1JF
Q09WRVJZX0FVVE9SRVRSQUlOX1BFTkRJTkc6DQo+ICsgKiAgIEEgZmlyc3QgbGluayB0cmFpbmlu
ZyBmYWlsdXJlIGhhcyBiZWVuIG9ic2VydmVkIGFuZCBhbiBhdXRvbWF0aWMNCj4gKyAqICAgcmV0
cmFpbmluZyBhdHRlbXB0IHdpdGggdGhlIHNhbWUgbGluayBwYXJhbWV0ZXJzIGlzIHBlbmRpbmcu
IEV4YWN0bHkNCj4gKyAqICAgb25lIHN1Y2ggYXR0ZW1wdCBpcyBhbGxvd2VkIGJlZm9yZSBzd2l0
Y2hpbmcgdG8gdXNlcnNwYWNlLWRyaXZlbg0KPiArICogICByZWNvdmVyeS4NCj4gKyAqDQo+ICsg
KiBASU5URUxfRFBfTElOS19SRUNPVkVSWV9BVVRPUkVUUkFJTl9ESVNBQkxFRDoNCj4gKyAqICAg
QXV0b21hdGljIHJldHJhaW5pbmcgaXMgbm8gbG9uZ2VyIHBvc3NpYmxlLiBBdCB0aGlzIHBvaW50
LCBhDQo+ICsgKiAgIGZhbGxiYWNrIHNlbGVjdGlvbiBpcyBtYWRlIGFuZCB1c2Vyc3BhY2UgaXMg
bm90aWZpZWQgdG8gdGFrZSBvdmVyDQo+ICsgKiAgIHJlY292ZXJ5LCBwZXJmb3JtaW5nIG1vZGVz
ZXRzIHdpdGggcGFyYW1ldGVycyBpdCBkZXRlcm1pbmVzIGFyZQ0KPiArICogICByZXF1aXJlZC4g
VGhlIGRyaXZlciB0aGVuIHNlbGVjdHMgYSBsaW5rIGNvbmZpZ3VyYXRpb24gZnJvbSB0aGUNCj4g
KyAqICAgcmVtYWluaW5nIGZhbGxiYWNrIGNvbmZpZ3VyYXRpb24gc2V0LiBTdWJzZXF1ZW50IGxp
bmsgdHJhaW5pbmcNCj4gKyAqICAgZmFpbHVyZXMgdHJpZ2dlciBmdXJ0aGVyIGZhbGxiYWNrIHNl
bGVjdGlvbnMgYW5kIHVzZXJzcGFjZQ0KPiArICogICBub3RpZmljYXRpb25zLg0KPiArICoNCj4g
KyAqIERlc2NyaWJlcyB0aGUgbGluayByZWNvdmVyeSBzdGF0ZSB1c2VkIGJ5IHRoZSBJbnRlbCBE
UCBsaW5rIHJlY292ZXJ5DQo+ICsgKiBsb2dpYy4NCj4gKyAqDQo+ICsgKiBTZWUgYWxzbzoNCj4g
KyAqICAgLSBsaW5rX3JlY292ZXJ5X2F1dG9yZXRyYWluX3BlbmRpbmcoKQ0KPiArICogICAtIGxp
bmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fYWxsb3dlZCgpDQo+ICsgKiAgIC0gbGlua19yZWNvdmVy
eV9tYXJrX3RyYWluX2ZhaWx1cmUoKQ0KPiArICogICAtIGxpbmtfcmVjb3ZlcnlfcmVzZXQoKQ0K
PiArICovDQo+ICtlbnVtIGludGVsX2RwX2xpbmtfcmVjb3Zlcnlfc3RhdGUgew0KPiArCS8qDQo+
ICsJICogS2VlcCB0aGUgZW51bSB2YWx1ZXMgb3JkZXJlZCBmcm9tIGxlYXN0IHRvIG1vc3Qgc2V2
ZXJlDQo+ICsJICogcmVjb3Zlcnkgc3RhdGU7IGhlbHBlciBsb2dpYyByZWxpZXMgb24gdGhhdCBv
cmRlcmluZy4NCj4gKwkgKi8NCj4gKwlJTlRFTF9EUF9MSU5LX1JFQ09WRVJZX0lETEUsDQo+ICsJ
SU5URUxfRFBfTElOS19SRUNPVkVSWV9BVVRPUkVUUkFJTl9QRU5ESU5HLA0KPiArCUlOVEVMX0RQ
X0xJTktfUkVDT1ZFUllfQVVUT1JFVFJBSU5fRElTQUJMRUQsDQo+ICt9Ow0KPiANCj4gIHN0cnVj
dCBpbnRlbF9kcF9saW5rX3RyYWluaW5nIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZHAgKmRwOw0KPiAN
Cj4gKwllbnVtIGludGVsX2RwX2xpbmtfcmVjb3Zlcnlfc3RhdGUgcmVjb3Zlcnlfc3RhdGU7DQo+
ICsNCj4gIAlib29sIHJldHJhaW5fZGlzYWJsZWQ7DQo+IC0JLyogU2VxdWVudGlhbCBsaW5rIHRy
YWluaW5nIGZhaWx1cmVzIGFmdGVyIGEgcGFzc2luZyBMVCAqLw0KPiAtCWludCBzZXFfdHJhaW5f
ZmFpbHVyZXM7DQo+ICAJaW50IGZvcmNlX3RyYWluX2ZhaWx1cmU7DQo+ICAJYm9vbCBmb3JjZV9y
ZXRyYWluOw0KPiAgfTsNCj4gQEAgLTEyNjcsNyArMTMwNyw3IEBAIGludGVsX2RwXzEyOGIxMzJi
X2ludHJhX2hvcChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgc3RhdGljIGJvb2wNCj4g
IGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fcGVuZGluZyhzdHJ1Y3QgaW50ZWxfZHBfbGlua190
cmFpbmluZyAqbGlua190cmFpbmluZykNCj4gIHsNCj4gLQlyZXR1cm4gbGlua190cmFpbmluZy0+
c2VxX3RyYWluX2ZhaWx1cmVzID09IDE7DQo+ICsJcmV0dXJuIGxpbmtfdHJhaW5pbmctPnJlY292
ZXJ5X3N0YXRlID09IElOVEVMX0RQX0xJTktfUkVDT1ZFUllfQVVUT1JFVFJBSU5fUEVORElORzsN
Cj4gIH0NCj4gDQo+ICAvKg0KPiBAQCAtMTI4OSw3ICsxMzI5LDEzIEBAIGxpbmtfcmVjb3Zlcnlf
YXV0b3JldHJhaW5fcGVuZGluZyhzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190
cmFpbmluZykNCj4gIHN0YXRpYyBib29sDQo+ICBsaW5rX3JlY292ZXJ5X2F1dG9yZXRyYWluX2Fs
bG93ZWQoc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5pbmcgKmxpbmtfdHJhaW5pbmcpDQo+ICB7
DQo+IC0JcmV0dXJuIGxpbmtfdHJhaW5pbmctPnNlcV90cmFpbl9mYWlsdXJlcyA8IE1BWF9TRVFf
VFJBSU5fRkFJTFVSRVM7DQo+ICsJc3dpdGNoIChsaW5rX3RyYWluaW5nLT5yZWNvdmVyeV9zdGF0
ZSkgew0KPiArCWNhc2UgSU5URUxfRFBfTElOS19SRUNPVkVSWV9JRExFOg0KPiArCWNhc2UgSU5U
RUxfRFBfTElOS19SRUNPVkVSWV9BVVRPUkVUUkFJTl9QRU5ESU5HOg0KPiArCQlyZXR1cm4gdHJ1
ZTsNCj4gKwlkZWZhdWx0Og0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsJfQ0KPiAgfQ0KPiANCj4g
IC8qDQo+IEBAIC0xMzA3LDEzICsxMzUzLDIxIEBAIGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5f
YWxsb3dlZChzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFpbmluZykNCj4g
IHN0YXRpYyBib29sDQo+ICBsaW5rX3JlY292ZXJ5X21hcmtfdHJhaW5fZmFpbHVyZShzdHJ1Y3Qg
aW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFpbmluZykNCj4gIHsNCj4gLQlpZiAobGlu
a19yZWNvdmVyeV9hdXRvcmV0cmFpbl9hbGxvd2VkKGxpbmtfdHJhaW5pbmcpKQ0KPiAtCQkvKiBN
b3ZlIHRvIGF1dG9yZXRyYWluIHBlbmRpbmcgb3IgYXV0b3JldHJhaW4gZGlzYWJsZWQgc3RhdGUu
ICovDQo+IC0JCWxpbmtfdHJhaW5pbmctPnNlcV90cmFpbl9mYWlsdXJlcysrOw0KPiArCXN3aXRj
aCAobGlua190cmFpbmluZy0+cmVjb3Zlcnlfc3RhdGUpIHsNCj4gKwljYXNlIElOVEVMX0RQX0xJ
TktfUkVDT1ZFUllfSURMRToNCj4gKwkJbGlua190cmFpbmluZy0+cmVjb3Zlcnlfc3RhdGUgPSBJ
TlRFTF9EUF9MSU5LX1JFQ09WRVJZX0FVVE9SRVRSQUlOX1BFTkRJTkc7DQo+ICsJCWJyZWFrOw0K
PiArCWNhc2UgSU5URUxfRFBfTElOS19SRUNPVkVSWV9BVVRPUkVUUkFJTl9QRU5ESU5HOg0KPiAr
CQlsaW5rX3RyYWluaW5nLT5yZWNvdmVyeV9zdGF0ZSA9IElOVEVMX0RQX0xJTktfUkVDT1ZFUllf
QVVUT1JFVFJBSU5fRElTQUJMRUQ7DQo+ICsJCWJyZWFrOw0KPiArCWRlZmF1bHQ6DQo+ICsJCWJy
ZWFrOw0KPiArCX0NCj4gDQo+ICAJcmV0dXJuIGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fYWxs
b3dlZChsaW5rX3RyYWluaW5nKTsNCj4gIH0NCj4gDQo+ICsNCj4gIC8qKg0KPiAgICogbGlua19y
ZWNvdmVyeV9yZXNldCAtIHJlc2V0IHRoZSBsaW5rIHJlY292ZXJ5IHN0YXRlDQo+ICAgKiBAbGlu
a190cmFpbmluZzogbGluayB0cmFpbmluZyBzdGF0ZQ0KPiBAQCAtMTMyMyw3ICsxMzc3LDcgQEAg
bGlua19yZWNvdmVyeV9tYXJrX3RyYWluX2ZhaWx1cmUoc3RydWN0IGludGVsX2RwX2xpbmtfdHJh
aW5pbmcgKmxpbmtfdHJhaW5pbmcpDQo+ICAgKi8NCj4gIHN0YXRpYyB2b2lkIGxpbmtfcmVjb3Zl
cnlfcmVzZXQoc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5pbmcgKmxpbmtfdHJhaW5pbmcpDQo+
ICB7DQo+IC0JbGlua190cmFpbmluZy0+c2VxX3RyYWluX2ZhaWx1cmVzID0gMDsNCj4gKwlsaW5r
X3RyYWluaW5nLT5yZWNvdmVyeV9zdGF0ZSA9IElOVEVMX0RQX0xJTktfUkVDT1ZFUllfSURMRTsN
Cj4gIH0NCj4gDQo+ICAvKioNCj4gLS0NCj4gMi40OS4xDQoNCg==
