Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFupDmEBDGpcTQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:21:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ED5577F1D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C42C10EA65;
	Tue, 19 May 2026 06:21:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MbFB1fq+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0139710E35B;
 Tue, 19 May 2026 06:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779171676; x=1810707676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XhVr5OvU0yCRicP8rUBOuA5EOwbpPpXDmoDYsUPuAxM=;
 b=MbFB1fq+FSr5e6Syz//Iv9ugD3Qe+EV3huDBTYs8tiUCm4672L/PbQ2D
 ybmg321hOl+Uz272QK5BHLH3VNmkIo81Kp2vlyuGUhmSTTXzMR6v4p7Cz
 MNxLmgdiKOMCGLBGJZDn1oTjWjf10uh25vuxu0UZC3n4umKhKdBlsgcw8
 lOjPdRTAVJakr505eTGbkni8lC4jqR71CZMoTQpT4due0FPmpEfUwNN07
 bwUIhK82y0wffQPoJOLYGwN+jUuxGaI0ozww2htEKiLuzIv+srqHO0/iz
 sRKLlA7fqkmuyDG/TlBQLUxmr7xAeJF8lEiHUWvHM6Tm77/KUyD1xnfkI A==;
X-CSE-ConnectionGUID: o6FZcfV5Ryu5JlpdCWnuTQ==
X-CSE-MsgGUID: wGrwyY7cSXy8mts/M1PR+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="79757598"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79757598"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:21:16 -0700
X-CSE-ConnectionGUID: /jje8LoEQvWEATGRnV/P0w==
X-CSE-MsgGUID: 6a9zU1KYSsqAWPxJYBfM2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="277775706"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:21:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:21:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 23:21:14 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.40)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:21:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZvPVnzK1U5gmenbKdJ2ytg0Ik9dhbeVP4qBISOVaCFy0q4+9tdbeCryHswz/gKLDEmavX/8g8fTTiojsdb9LfNNLPTq7Rkk2XAzHURu5BUjqdg10giXP37x48HEUGGgXoEDUzlbQyNurKC/xYWfbNp4xn3tu4tygyt9f6hOpzA8X8dmcIUm0SMClrO3lswcx5WBiSE/hRO0wK0eJXUBLzveaGJsl/Ugno16U9xcaklsDtytKMcI52lz//0fXJXJUMS4oTWnJdt/erS1WGVKOAEmGhyTTsb/rBNSKBY/68OSp09Qn/OYkv9Hwjd85c+0FzkGoMipgS6X+OmuENVVbCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XhVr5OvU0yCRicP8rUBOuA5EOwbpPpXDmoDYsUPuAxM=;
 b=ToKl4MPd9MCeVk1UArIenZfOoiHg8eCZd82Kz8tgdDchsRhhK9vewycAaS0i7b00et1/YWzNJKOqESqB0w9nqUSwB+aoBSxIj0FOQPiq/w9oXndOPasotcx0QyUYycgBQMUpEKNkRjYMEu56PFE8IuHPIAU8rqYoEkg58qSy2BB4Yh5mQC8SafomuSOmUuV/ZLgmM/hlZpQeDGmxljvwrlHEsVEHSHMkw+KyzDNrW9+ewaPpid//+akyRPcwdRxYM5P9vzpaP8GPT/q46KCZf/NifpdDfw4QfFR+6R22o6z0BfVibmDjCpi0+nbe5Im11OtTTC5G+84FHjcYvS4PCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB8199.namprd11.prod.outlook.com
 (2603:10b6:208:455::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 06:21:09 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 06:21:09 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 25/31] drm/i915/bios: parse EHL's VS/PE-O tables
Thread-Topic: [PATCH v3 25/31] drm/i915/bios: parse EHL's VS/PE-O tables
Thread-Index: AQHc3cFj+gSZ8flPIkyANZk+HtOFJ7YU87mw
Date: Tue, 19 May 2026 06:21:09 +0000
Message-ID: <DM3PPF208195D8D8E17FDC4BF1CDA0B0CA0E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-26-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-26-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB8199:EE_
x-ms-office365-filtering-correlation-id: 355cff08-b7ed-40d8-8210-08deb56ed13c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|3023799003|56012099003|18002099003|11063799003|4143699003;
x-microsoft-antispam-message-info: qjJ9wRdEZNcJH7a5FltuVSmd259ZPI4kK/3GSsri4HJoQNHJcWP1elOcKbI3TiSgs4eObzlN+4v7nqauGuWItTG3DtGdn4GPej5wDqhcqyfP3TdChNGT2hTUanHyDsRcVdIZPftuK55Htf8C4Ar1lSj1NPAxhQviTLy0wix8HoywEV+VR+HKPH8QV2+Xz8As2UzXKj6MwD6/nQ+TWrJILgMD0xhzCEa/lYGCgr9skmvgFXCZEHGe6x+Pw1GeZu7CzTNSMBd7GJNDxZ3smJEsWwGRR9cmK44l/SoEcF13vDk/fkV/dZCB73u5EmP4E2Ri3WAjx9fTtB01oFfDqgL1PVGVcfcoeCG+XQ5+uScvuuNBhuOcU3cYkWUAP99r9sTxJTVX7HZyQgHCfDoja8Ccip220u9sv4DAbWA2p513GzrULKbgO9xWBRQt7avk449voTstzKX/7NiPxto3HaJ+OxZ9A8wSYAq2byz4CqpW5iv274Ajiiygn0cP97JHehP5HAuYLGcM6JpWM2DXz4JnLK5U/IOerU51r9Y9tVh4X0DIMVhZ2gaHflnKjz7jpw1dpGw2sD0jxRQEkIuKEtAFFmwp0RQ6YUXR1NH92pl4KRGTEK/Z7EfXN7ZbnkPviFKfmr4zdZQlqm5J9dVIhvyY7xgscSwMWH/hVmxqnaYE2rOH8Ms35t+5dPpWMpGMadTp6jAIQbQItp3eqshj5nP3cpHYlSz1+CpT4rYhUb1/XsicgdBEeM8juGb3hjhq0Lyk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(3023799003)(56012099003)(18002099003)(11063799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bm93WHJvMGFPMS95Q3VueFhtV2szeU8vYlVTbG5ob3VFRkI4RGYwVnBSc2lu?=
 =?utf-8?B?S1N5UU0vNFF6eXQ0bmpmbnFwdnN2R2JUbkFnb1NLY3BocEJBdHptSXE1WHdS?=
 =?utf-8?B?cFVsSkR4clBMeFpVWitmOW9aY2oyNDRNcWpHRmZvd2V4ZnN6S0J0TkdKVHlI?=
 =?utf-8?B?bm5YcVExcUlMVXBaSE1oQ2d3dXAza3N2M3p6ZTU4QjR3SUZCOE0zbFIvVVNl?=
 =?utf-8?B?QjR4OVQ4cnRzc1EvQTcyVnRVdCtQT0ZwT01mTFo1RHpSNXlGMWJ3ZjhmL3Vm?=
 =?utf-8?B?ckRqbURNN3pkR2liZ3JkWEdSc2pIZWxWd3JFYzk5TzIxQWVuT1JXYlJ6c25x?=
 =?utf-8?B?cklBak1kKzFpSTJJODlscStlUkg4KzZyakx0RjVlWFFGekNnWnNtTmlJUzJU?=
 =?utf-8?B?b0IvdUt2Rms4eFZ6VU02ZENad0ovNzliakJqZ0JHL085d25rbmNlUTc2OTk2?=
 =?utf-8?B?RnJ6UnRRa3REWmtuZmdmcm1vcHRKR3ZVVWtyY2ltcGs3RWRoMTBCWXg5Z09Z?=
 =?utf-8?B?bGNNaHdVV2FTK1hYNzNBMU5xdHFVYVB6N2VaL2QwWEhzV3RHT1VoY2dmcUlx?=
 =?utf-8?B?Q3dEZDFRWXF0Z3RQeTRKUUtsSkpxbmVLSTJzM0YrSmYwdHAwelhBMnZMMG80?=
 =?utf-8?B?RmFpSit0ZHVXWEtoSlRLMjR5eVVvM1ZwT0dodkFLVlZ2TXRkUHlWNUJuZTZz?=
 =?utf-8?B?d1hyNVNVZUdhVHd6NUN4SzhaZ0c1OWpiallRd3l5ZHM2U3c4L3RRUEo2WnJK?=
 =?utf-8?B?ZkNDU3RBZEdNYU1iQVNaM0dobDc1VStrbFNmMCtrVG1nRWJIYjFna1FoKzF1?=
 =?utf-8?B?ZXRPVVdLcHJpWkNqcTkyVVA2cjZCa3FTL0RuenI0Njlad21JQ1pZeVYrbG9N?=
 =?utf-8?B?VGtjbzh5d2szcVlmNjJjT0JsWG9zMlZ5Wi9QYWVsSHBpME9zbEQ4UlBqclFo?=
 =?utf-8?B?L0QyYktCazExT0dLcmM0OENLYUlObHNRSDl2czRHV0V4am00ZW1TUnM5WVdO?=
 =?utf-8?B?bDBEdDA5NnBuei8xRFdtcHBrdFN5dUxLcC9nZXN2YlBwQW1VTmN0eFpBNGNI?=
 =?utf-8?B?UXJSMG16NHRodGpCWU9vYjVKSUtPMVFJNGFnR3F1cCthMGZxaEV1RFNUS1hu?=
 =?utf-8?B?QjAvVCtwaFByQyswQThRbTdIcko5eW9aUnVKbUdMVnkySlB4WHZiQzNLb1Ax?=
 =?utf-8?B?Mi94UDd3N3l4Zy83MENSYUo3RVFybkduVTcrRjJGRTRlVSt4Wm8wa1hneUJs?=
 =?utf-8?B?MStQRUN5b1d2SjZROGMwY3EzU0pHei8zeXNMU0ViN2pydzVGTnRVYXlWemhT?=
 =?utf-8?B?aG5ESGM5cHgyK2E5UWlRYlRDNUJwU0FHMENHWmVMYTJvWHhFRkRGeXRqZFF5?=
 =?utf-8?B?NGdWZ0pJUGxzVnlKSkF0TGpjREhBSThaUGdNb0xHTk90V3RDM2kxeDZId1U4?=
 =?utf-8?B?Vmtyamd5SXBDZnFkdFJIbHJ0Snc5MitLY2pUR1d3bUJGK295bXhZRENKWlow?=
 =?utf-8?B?UmFEZ3k1Sml1Z3FrNkQ1RjZwdGlNNmhkbTFXUFlMMC9QSC9VV2dzSjc1MEdt?=
 =?utf-8?B?aVdLVHdZQ1VXYlBFTWtYY2tKWWZRTWRndjl6cUlyaC9HVmxZbEdSVFQ3RGo0?=
 =?utf-8?B?d0JpZnFYbTB5T3FvUWZIR3V3K3NrdmJMR1p6bUlubGJnYUUxd0RJWitEVWhP?=
 =?utf-8?B?Sm9uUUN3OFhpanRTaTc0YTZlcUhNQm1WbzYrWWlVRHhISStGZlpXR1RMUURt?=
 =?utf-8?B?ZS9vN0g1ai8zamlHeXNDRU9salZtZnJPYmNNWkQxeGFVaHhXZnIwQkZjL0d2?=
 =?utf-8?B?NUFhTXVwODJ5dHVOWGV1VVV1azRjNTdjY1p5aVJES1EvdGJ0WThUb0FOeCtJ?=
 =?utf-8?B?MEpQM2poRVN2NWZQSU13K0NqYW5yY3JTdjJkQStBbTZ6NG96VUlQRTJoZUNN?=
 =?utf-8?B?VjNwZGxseGluRWp6bm9xUUVWTG5BOW1CTDlIcFpEc0V3TkJBaUdDcjlyQkpl?=
 =?utf-8?B?TnE3RFIvWkN1QUxWMjNhQ3g4Z2pPaU1lYnJzMW5LNHdDbVM4bUt6OWU1eG1I?=
 =?utf-8?B?Rkg5M3FNa2R4aDlPKzVHT000dzQwQk5WS2xkRUloRWMxVVFQS1IvNktjdlFU?=
 =?utf-8?B?My9YQXdGaytWREd4OFR1dS8vRXVWNVg2VjIvYjVObURhbVJ3Uklwai9EeGl2?=
 =?utf-8?B?dUpmRjZ3QjZxWGt4eERFampsSVNYdCtEMHhicG1jNHBjWW9kRVV1MVFzVUtY?=
 =?utf-8?B?QkJNM0FaVjdPd21WMjlaS0w4Z2dRNDIxa3hKNHppTTlSb1ZBMHhVN0RYblZM?=
 =?utf-8?B?M29KbUtQS3oreWxoSmdMVmFIMFFlaEJUVTlWMTJZRHg4N1RyTk10dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SxFRDPKBAino+ZNiyTW+Q5hgnrfxe9wQxKdAJD7/TzLbw7tkZzfyVAV/gTPO8I//GpN1D6hcFYiPHFjDfDF1pVuV4rXcuXQ3m+CVCqwN9NDYTUEf4jP5Wkzrm8j5lz6Rh7ThnfefLknII0uqTAqq338jL9192nY48P8BqW7aqtawjiSWFN5MPBuVIM10jnA+uRpPASfeEhUiqBrM6/JN14+oX3WwKzpKgxmGdekGcAe08gOYsSdYe4ZQKNYKcst1D4cqO0lWUUB+Bgfr1wVuWqvPko6n2s91+TxLjYQWV12rKUL4wTqiZ5e/qxdZtm6gTK44xUH4ayWj4+jRXn1d8w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 355cff08-b7ed-40d8-8210-08deb56ed13c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 06:21:09.3396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VWw2MAwPRjMFQDkER9SDPw7JCxrMf7XkBQzT7wFta7HbHezUMp8HRRFDRVJQZ4tH3X1FcCerdBcHJBSbuOA2Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8199
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C2ED5577F1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMjUvMzFdIGRybS9pOTE1L2Jpb3M6IHBhcnNlIEVITCdzIFZT
L1BFLU8gdGFibGVzDQo+IA0KPiBFSEwncyBWUy9QRS1PIHRhYmxlcyBoYXZlIG1vcmUgY29sdW1u
cyB0aGFuIGljbF9kZGlfYnVmX3RyYW5zIGNvbnRhaW5zIGZpZWxkcy4NCj4gVGhpcyBwcmV2ZW50
cyBjYXN0aW5nIGJsb2NrLT50YWJsZXMgdG8gcG9pbnQgYXQgaWNsX2RkaV9idWZfdHJhbnMgYW5k
IHBhcnNpbmcgaXQNCj4gdHJpdmlhbGx5Lg0KPiANCj4gUGFyc2UgZWFjaCBlbnRyeSBmcm9tIGV2
ZXJ5IHRhYmxlIGludG8ga3phbGxvYydkIGJ1ZmZlcnMnIG1hdHJpeC4gUmVhZCBudW1iZXIgb2YN
Cj4gdGFibGVzIGFuZCBudW1iZXIgb2YgY29sdW1ucyBmcm9tIHRoZSBibG9jay4gQXNzdW1lIHRo
YXQgZWFjaCB0YWJsZSBjb250YWlucw0KPiAxMCByb3dzLg0KPiANCj4gSW5mbGF0ZSBpY2xfZGRp
X2J1Zl90cmFucyBzaW5jZSBlYWNoIFZCVC1iYXNlZCB2YWx1ZSBpcyBzdG9yZWQgb24gdTMyLg0K
PiBSZWR1Y2luZyB0aGUgc2l6ZSB3aWxsIGJlIGRvbmUgaW4gc2VwYXJhdGUgY29tbWl0Lg0KPiAN
Cj4gQWRkIEVITCB0byB3b3JrYXJvdW5kIGZvciBhdmFpbGFiaWxpdHkgb2YgVlMvUEUtTyBwYXJz
aW5nLg0KDQpTcXVhc2ggcGF0Y2ggMjUsIDI2DQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoN
Cj4gDQo+IHYyLT52Mw0KPiAtIHJlbW92ZSB1bm5lY2Vzc2FyeSBicmFjZXMgZnJvbSBpZiBibG9j
aw0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0Bp
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMgICAgIHwgMzQgKysrKysrKysrKysrKysrKysrKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oICAgIHwgMTAgKysrLS0tDQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDM5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBpbmRleCBjNmE1MzMxOTgwOWVlLi41
ZTEwMDBhNzJjZjc0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYw0KPiBAQCAtMjE4Nyw2ICsyMTg3LDMyIEBAIHBhcnNlX2NvbXByZXNzaW9uX3BhcmFt
ZXRlcnMoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXkpDQo+ICAJfQ0KPiAgfQ0KPiAN
Cj4gK3N0YXRpYyB2b2lkDQo+ICtwYXJzZV92c3dpbmdfcHJlZW1waF9pY2wodW5pb24gaW50ZWxf
ZGRpX2J1Zl90cmFuc19lbnRyeSAqKmJ1ZnNfbXRyeCwNCj4gKwkJCSBjb25zdCBzdHJ1Y3QgYmRi
X3Zzd2luZ19wcmVlbXBoICpibG9jaykgew0KPiArCXVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNf
ZW50cnkgKmVudHJ5Ow0KPiArCWNvbnN0IHUzMiAqdGFibGVzID0gYmxvY2stPnRhYmxlczsNCj4g
Kwl1OCBudW1fcm93cyA9IDEwOw0KPiArCXNpemVfdCBvZmZzZXQgPSAwOw0KPiArCWNvbnN0IHUz
MiAqdmFsczsNCj4gKw0KPiArCWZvciAoaW50IGlkeCA9IDA7IGlkeCA8IGJsb2NrLT5udW1fdGFi
bGVzOyBpZHgrKykgew0KPiArCQlmb3IgKGludCByb3cgPSAwOyByb3cgPCBudW1fcm93czsgcm93
KyspIHsNCj4gKwkJCXZhbHMgPSAmdGFibGVzW29mZnNldF07DQo+ICsNCj4gKwkJCWVudHJ5ID0g
JmJ1ZnNfbXRyeFtpZHhdW3Jvd107DQo+ICsJCQllbnRyeS0+aWNsLmR3Ml9zd2luZ19zZWwgPSB2
YWxzWzBdOw0KPiArCQkJZW50cnktPmljbC5kdzdfbl9zY2FsYXIgPSB2YWxzWzFdOw0KPiArCQkJ
ZW50cnktPmljbC5kdzRfY3Vyc29yX2NvZWZmID0gdmFsc1syXTsNCj4gKwkJCWVudHJ5LT5pY2wu
ZHc0X3Bvc3RfY3Vyc29yXzIgPSB2YWxzWzNdOw0KPiArCQkJZW50cnktPmljbC5kdzRfcG9zdF9j
dXJzb3JfMSA9IHZhbHNbNF07DQo+ICsNCj4gKwkJCW9mZnNldCArPSBibG9jay0+bnVtX2NvbHVt
bnM7DQo+ICsJCX0NCj4gKwl9DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB2b2lkDQo+ICBwYXJzZV92
c3dpbmdfcHJlZW1waF9zbnBzKHVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkgKipidWZz
X210cngsDQo+ICAJCQkgIGNvbnN0IHN0cnVjdCBiZGJfdnN3aW5nX3ByZWVtcGggKmJsb2NrKSBA
QCAtDQo+IDIyNjIsNiArMjI4OCwxMSBAQCBwYXJzZV92c3dpbmdfcHJlZW1waF9vdmVycmlkZShz
dHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSkNCj4gIAkJcGFyc2VfdnN3aW5nX3ByZWVt
cGhfbHQoYnVmc19tdHJ4LCBibG9jayk7DQo+ICAJfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkaXNw
bGF5KSA+PSAxNCkgew0KPiAgCQlwYXJzZV92c3dpbmdfcHJlZW1waF9zbnBzKGJ1ZnNfbXRyeCwg
YmxvY2spOw0KPiArCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMTEpIHsNCj4g
KwkJaWYgKGRpc3BsYXktPnBsYXRmb3JtLmVsa2hhcnRsYWtlKQ0KPiArCQkJcGFyc2VfdnN3aW5n
X3ByZWVtcGhfaWNsKGJ1ZnNfbXRyeCwgYmxvY2spOw0KPiArCQllbHNlDQo+ICsJCQlkcm1fZGJn
X2ttcyhkaXNwbGF5LT5kcm0sICJWUy9QRS1PIHBhcnNpbmcgbm90IHlldA0KPiBzdXBwb3J0ZWRc
biIpOw0KPiAgCX0gZWxzZSB7DQo+ICAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIlZTL1BF
LU8gcGFyc2luZyBub3QgeWV0DQo+IHN1cHBvcnRlZFxuIik7DQo+ICAJfQ0KPiBAQCAtMjcyNiw2
ICsyNzU3LDkgQEAgc3RhdGljIHZvaWQgb3ZlcnJpZGVfdnN3aW5nX3ByZWVtcGgoc3RydWN0DQo+
IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKQ0KPiAgCQlwYXJzZWFibGUgPSB0cnVl
Ow0KPiAgCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpIHsNCj4gIAkJcGFy
c2VhYmxlID0gdHJ1ZTsNCj4gKwl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDEx
KSB7DQo+ICsJCWlmIChkaXNwbGF5LT5wbGF0Zm9ybS5lbGtoYXJ0bGFrZSkNCj4gKwkJCXBhcnNl
YWJsZSA9IHRydWU7DQo+ICAJfQ0KPiANCj4gIAlpZiAoIXBhcnNlYWJsZSkNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4g
aW5kZXggYThjOTk4ZmEzMzllNi4uYmZiNmRlNDVhOTRlMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gQEAgLTI1
LDExICsyNSwxMSBAQCBzdHJ1Y3QgYnh0X2RkaV9idWZfdHJhbnMgeyAgfTsNCj4gDQo+ICBzdHJ1
Y3QgaWNsX2RkaV9idWZfdHJhbnMgew0KPiAtCXU4IGR3Ml9zd2luZ19zZWw7DQo+IC0JdTggZHc3
X25fc2NhbGFyOw0KPiAtCXU4IGR3NF9jdXJzb3JfY29lZmY7DQo+IC0JdTggZHc0X3Bvc3RfY3Vy
c29yXzI7DQo+IC0JdTggZHc0X3Bvc3RfY3Vyc29yXzE7DQo+ICsJdTMyIGR3Ml9zd2luZ19zZWw7
DQo+ICsJdTMyIGR3N19uX3NjYWxhcjsNCj4gKwl1MzIgZHc0X2N1cnNvcl9jb2VmZjsNCj4gKwl1
MzIgZHc0X3Bvc3RfY3Vyc29yXzI7DQo+ICsJdTMyIGR3NF9wb3N0X2N1cnNvcl8xOw0KPiAgfTsN
Cj4gDQo+ICBzdHJ1Y3QgaWNsX21nX3BoeV9kZGlfYnVmX3RyYW5zIHsNCj4gLS0NCj4gMi40NS4y
DQoNCg==
