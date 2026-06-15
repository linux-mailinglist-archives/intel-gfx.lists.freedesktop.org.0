Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3V8ZMn2VL2p5CwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 08:02:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5A2683A28
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 08:02:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QhMYx5mn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D655010E1C3;
	Mon, 15 Jun 2026 06:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A58510E1C3;
 Mon, 15 Jun 2026 06:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781503354; x=1813039354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2ZJKUbYXugoVHMrHoqI9wklwY3OinijKhZ3cbMTO9Fs=;
 b=QhMYx5mn/Qrvo8vVc5Tc6EjOYc6Km4UgR9nhJwFOxl4OLCdOlmFSnWbz
 nzHbprlBmdjS8DXw02Q1INWUPxHAJwlsO4H15n5oF6yP1y/bIT7C2a9I9
 MrcJA9ngZcmsGPSNZ5RWFZsYMWJ9mBsGU54xcxE1G4I7AU4jYFTYykVOX
 vKTxb0dWoGUeBD4N35g3GjPhiJW10ASh0aH+s4l8MaJ3ILa7txCSm1WDK
 o46Be2/MbF2JLb55I/i8ws1vALzVbiEcB9mfh7ma05BAAsNQfx95/I33W
 C+V4NjbLaOyyHdac1CQ7GGRQEuTCi0tQDrnbxmI2qNINCZBtTey/hUG4u w==;
X-CSE-ConnectionGUID: PIf3ZxA7Qg+Kd1OHJFEmpA==
X-CSE-MsgGUID: AWCFd9B+RUOQlVGRzknLhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82219929"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="82219929"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 23:02:34 -0700
X-CSE-ConnectionGUID: BEWYT5a2SKSvZ8+sDjPqgQ==
X-CSE-MsgGUID: YdFEsZVxSRmQvBJYsvV6Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="246491008"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 23:02:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 23:02:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 23:02:32 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 23:02:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qEWeS5Qj7HqpVbuWgAfVf0IUxadHdYJTY5E0LfalVPQkQsTi6r4/zxVPsOYJspkjEz1ORGbkXOKFEzv/Jb41VtHckbyzCIP6vZMkxJGw112pQSo7LuOmvFm5EQU553QZ2l6ZhUwRBIxnVYnX07LSYlE7spslcXDtHbLgFcF6ahbk8v6kOAysXM1bbbk4Q4ly4IxXFUafc3D4EeiwFyLkSkE3W/PgafImkwXvK32NZM6gRRkruPqJKqOe6et9vY0de8mlAj6QtkK9MqC5dpS5Ly9BdoZMeJiVJtlJzTr+JCQOCEFdqebY6QOVbzWe2hV0kCMF160GwUh0iIU4xgR7tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ZJKUbYXugoVHMrHoqI9wklwY3OinijKhZ3cbMTO9Fs=;
 b=TqZBBTf4S8smDx6TbUT6KgfqjPD+D42mQEvzpYxqOWeJ7V6TsZfuXE+yjKI4drpiiEpuIBDp6oBolJVXqmvoHPQM5TL8JYmFdSLF5sjTp90/2KvyWiHFC/kxjoQg/dyFnDRuoBs2LJyVxB7XE5kRMuYDrdAmy47xAG4U0DCYFmX2we9MGVGX5iAlFfBJ+AUMTc+aTjjvmFR/0asFeeDJVVdt4O4+bVV2JBgdiqTsdzjEQKyZjIlE50MVb9u1ICZE7HGDZHsgVDlEcGBzIVTzf82Rm33S0HCTguCtMAnA5mhliCrBcmvRl8x22JM7OMvjUeg3ZBjwJkH4YE6+PSFc8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SN7PR11MB7490.namprd11.prod.outlook.com
 (2603:10b6:806:346::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 06:02:28 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 06:02:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "Hogander, Jouni" <jouni.hogander@intel.com>, Marco
 Nenciarini <mnencia@kcore.it>
Subject: RE: [PATCH] drm/i915/mtl+: Enable PPS before PLL
Thread-Topic: [PATCH] drm/i915/mtl+: Enable PPS before PLL
Thread-Index: AQHc+pCyt2FKf7pSlUWxCC66Bsr5SLY/I9fw
Date: Mon, 15 Jun 2026 06:02:28 +0000
Message-ID: <DS4PPFE901A304F1D03341B3A2CBF39E46AE3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260612172617.3427027-1-imre.deak@intel.com>
In-Reply-To: <20260612172617.3427027-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SN7PR11MB7490:EE_
x-ms-office365-filtering-correlation-id: 16953819-4db5-455c-2cef-08decaa3ae09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|22082099003|18002099003|38070700021|3023799007|11063799006|56012099006;
x-microsoft-antispam-message-info: bNcIGtC3iRHTJRerwbENM06Ed3u5zsbhVo/LxyGf7Isxxlq87MxsiMSPgYdy2QnhbPyKB18ryAlG9YSFZx+2ffyQdgySQghsDEOHbiEr+xLvUyYgUbarJlZjkWpmRgBd5YI2upAwUnRTa8OqI2IwEPmbVcLhbT7tcMQeGjbF9DbVyp9rkXf3WELJl6c1s2nB+6hCcyddbVrFAgHwWS0Fznp+LxJuyUPLpj/kssjnUa/xafnDGnWEdq/SSaN1j9mulmKyk27FIJiC6+cBCMKW8TEV0KDhBVhtXCk5O7riTy4PpUO4c0cspr6VVsyXPnZtc/lcDUR+jgkUFXdeFHwX0IZSbIAZ6+Vzfz3lAKe5UdzADPnszwKPx8AN6kLvQoZD/kP34RPIrmyG9O2t1KjyCxfOozbNv3alRk/0r8BFB0KO4wb996K3V70DQnJmgDx3aYE73y85k9/J1c81xDnFnL5QXTBkIFov9s6Ha0wDRRwL3mXSJ3pnGkYbaNIN222hFzpCycixWJbIA94kqvBmpL+EoIxFHA9XppCgATvwV5dQE7rF93/cIqR4Ivu2JPzu5MzksWhUJ2xo7wwHSBXmOUTi0U2JIGmv+7yyil+1PgYbFjDwKLpydGyOy5eaGZFek/68pWLNmcgm2mZlGGI4TdLIg6+Xa7DCwMmpJOaStCzxBM6vwKJaEdPrDxPrHYkpoQGQxPjMviz1zrN++SVDmA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(22082099003)(18002099003)(38070700021)(3023799007)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VnpVT3lVODRnSEJDamptMlNlcDJjU2hJNStvZjd4Q0V3VERERjFObTIvYk81?=
 =?utf-8?B?V3o3OVR5UzY2dDVrOUI4L1hRRWRCL0RDQm4zWXpTeHJBNzF4d3c5RUdnaGlJ?=
 =?utf-8?B?dFJlalpaaENybmFLUjFYNXBlR01iYk52Tkovb3RFT1dBeVpIQXVMSUxGQ1Er?=
 =?utf-8?B?emJJbWtYNDN3YlFzKzF3c0xDNmVkdVVBL2t6M0RvTUMwMEZDaURSV2N6ZzVU?=
 =?utf-8?B?M3Q1VDlYT1Z6NXpEWmFCZFRIZlFVLy9PUytITWRiaFM4UnE4cVkwNktrQWxy?=
 =?utf-8?B?YjBDelFZTmhZeGFjVm5SVzMwR2NNSkdXd2pZQ1JiZ1Vvei9lVzdnb3oxeTBr?=
 =?utf-8?B?SVVsWTUyQXgvU0hDazdmU2Fzcm5lenhZMnFRTEdDZ2xZRkxHRC9HdTA1c214?=
 =?utf-8?B?UFFVUFRoL2dJb2l0NnAyUC9VQTR1MllmZjJxby8zNjFGM2FCRzBPcldZenoy?=
 =?utf-8?B?UWRrdDNqVyt2SDU5UEpRc3VjOElkUjdWKytoWEtUZmE4M3lIYWZaRGpWMjk2?=
 =?utf-8?B?NEhudDdqWlFXVXJhaVE4Wndqc2t0cHRUVC9QTzY1OEU5emcyTDVLcGdTVmpo?=
 =?utf-8?B?bGdxTiszU05nWGkzM3NOdmpmRURUVlBjcWpidkFGK2RvTFM5MGRmYTNORzlO?=
 =?utf-8?B?ZytpR1BPNFlVa1h5RnVXUkpZTm9IQXhKVEltV1JMMzRmKzlDNVQwTCt2WTJm?=
 =?utf-8?B?U042NmFMbEw1djQ1L2F6c0xJNG1ETjNmbVNjQ2NmU2djOVRXc0JiTTBNQW1I?=
 =?utf-8?B?ejNiemUyK20vWlJQaWQ4RGJiM0c0OFFEaHpoRGlLaDgwa3RPWjAyZVJIZEk2?=
 =?utf-8?B?Y2VURHpuQ3ZSbFZNbXBNVlB6clpOT0xhZVdhQ1J2RDVpbEVJem9xdy9IaWlj?=
 =?utf-8?B?dTZlK3lwcnRZUzFqN3A3emVwVHByRGFsVFFKWC9rVmI0eE9KQmloRitid0xE?=
 =?utf-8?B?b0RhNnFzZlM0MlkwUUhVUSsxam45VWdQQ0p1UWI2aHdFTWRORFZyLzVmMDUx?=
 =?utf-8?B?ZGpKSjMxaW9xRXljQWxQd05OQ3FnM0dhREVMNm9vaEVadmh4UW5ZL0tPZG9V?=
 =?utf-8?B?MTdIdHdESVFWcElDejU0czhVcDlMRXFURVkzeHhIUEZGNmFlVnNCaWcvRjFB?=
 =?utf-8?B?QzVFcUllUUUrMTkrNkFPcUZvT0IzblM5UWFSemwzeENpWXdyeVR1QXhkdXpG?=
 =?utf-8?B?d0ZiTU1Bbmhtb3RhRjZmQlY2R0loWGlBREN2WGg0YmoxUlFJUU8rZk90RHp4?=
 =?utf-8?B?MzBwc20zQ2xRYUJGVHA1cEh4ZkI2VzYranRYVi9oRXliZlB1NmNvOWZRYWJV?=
 =?utf-8?B?L1B0UnZ5TkdxeGgvMFNFZFJnVmlQTWN4M1hTSFg3RW5mUHlDRHY3dzN1d2dT?=
 =?utf-8?B?c1l5ZEdkSmE1cnFLNmEzSG1EaHlnUlBqRXhqQlJrQlZBV3ppMjdqOEthNE13?=
 =?utf-8?B?ZlpiR2xuQ0M0a3htZCtEWWNoTlZjOUlTSkZUcDMzWWlMZ0FsWDFjWitoVWpa?=
 =?utf-8?B?RHNLK2NRcUpFSDdRMlhBVk4rNUJrOVhlWjIyMVRESXljajB1eXBEVHFlRjZl?=
 =?utf-8?B?cVYrRXdHblRwUXJ5Rm5FSUVNeWl3YnYrVDFnUVRsVDhoQWQ4MVA2WlZIQW96?=
 =?utf-8?B?N01PcnljM2dubFFhY2xwMlBJUC8vMzJ0UzRzQTdSb1hPOHY0RkR0NzR1d092?=
 =?utf-8?B?VkRJOTJOdHVJWXdJdXpCWXVHK0taL1R1SGpubWl1QXNaMHJNKy9vSlZjeXlm?=
 =?utf-8?B?UXpzSlFuMTlpZ3BrQ1NIMEJwMGRnQThEVi9Ld2RMR3pBMFF2b016UVd2ak9v?=
 =?utf-8?B?TXFGMkkxZVJEaW15RlBzdDNGTTY0ZE4wVEJlOFNxVVMwK3ZkWlF3NVhOREth?=
 =?utf-8?B?Q2FjcUdYZWYrdDNKRzJZc3htQm80cTlrWExDbXlQaGZJeEYwcmx3WVlxKzVj?=
 =?utf-8?B?eGlKanRkMkNKQVhkdWNkd25KWENzTkRqV3RtWURSNnlMTDFxUDV4dE1SV09C?=
 =?utf-8?B?YUk2UVFudllncjJPOW5ZMHdUcHpzOHdSSVlLMHBmRzVNbHN4UWRVZm9kQU1y?=
 =?utf-8?B?LzJSVytLRzFRUitHUEl5QlhRUCtGbVpzMldaRlhrSUxNeDhTNXBmQ1l2WUpr?=
 =?utf-8?B?OXFJS3RsajhiRTMyVmVIUU9WcEhuRFE4ckFZZmZENWh6T0szRVZDS3VrcThE?=
 =?utf-8?B?a2NxclBJK0pyMDNIa2ZYZGdWZXZ3Q0hlY1hiaGJpbXZLYmJhZVhJSHBQSUdt?=
 =?utf-8?B?QkUzMUFiMzczOFBJeHI4WXFoeExrNndaMGMvaCtHai9iVklBNGdpbXIweEZS?=
 =?utf-8?B?eWE0RERZcVZUWG5RZFRRUGFML3JZQUozT1pVK3VjVHQ3Y1cxWXBqUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RT7VwImlrh5/Ll8iZOKoGAXTR2FtmJEI37hq4EkM1b1ahL5RzWRVaObYxGEQxZU3m58BD+mz5KRYUsp9CGgACJamRMX5UGy1kk5BGvqVWnnXtoC59Q4TSB7aEu7fQ777d1v7MWk3RxQE8PKToLwA8ZV146F1d90kffboHhmyokwDKTBZow141fwVn098lB4oAyU44lkqGr51D/uDQlH6ImaEAbokKBKe8n6TtMWcTJqas/TtpwJKHDm0la7wOqMQ8mmSGuE1+C2wVgj/1jMmyFyhVQFs2BXu7NZZOQ7pEpbPoAX/6q2O4DJsnatB6GP5pMm1C3ca2nD9b4G1JE5SGA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16953819-4db5-455c-2cef-08decaa3ae09
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 06:02:28.1364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: to/rHYUC9apQKcfjRnbaLRdHV6f9ikl7XR4hLSZppcLWuF9EuGeUZjaZt0XcteTOM8qEURKuF9fX6JvTVtVoCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7490
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS4PPFE901A304F.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC5A2683A28

PiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L210bCs6IEVuYWJsZSBQUFMgYmVmb3JlIFBMTA0K
PiANCj4gRW5hYmxpbmcgUFBTIGFmdGVyIGEgZGlzcGxheSBwb3J0J3MgUExMIGlzIGVuYWJsZWQg
bGVhZHMgdG8gUExMIC8gRERJIEJVRg0KPiB0aW1lb3V0cyBkdXJpbmcgc3lzdGVtIHJlc3VtaW5n
IGFmdGVyIGEgbG9uZyAoPiA0NSBtaW5zKSBzdXNwZW5kZWQgc3RhdGUsIGF0DQo+IGxlYXN0IG9u
IHNvbWUgQVJMIGFuZCBNVEwgbGFwdG9wcywgZWl0aGVyIGFsbCBvciBzb21lIG9mIHRoZW0gYWxz
byBjb250YWluaW5nDQo+IGFuIE52aWRpYSBHUFUuIEVuYWJsaW5nIFBQUyBmaXJzdCBhbmQgdGhl
biB0aGUgUExMIGZpeGVzIHRoZSBwcm9ibGVtIGZvciBhbGwgdGhlDQo+IHJlcG9ydGVycy4NCj4g
DQo+IEEgc2ltaWxhciBpc3N1ZSBpcyBzZWVuIHdoZW4gZW5hYmxpbmcgYW4gZXh0ZXJuYWwgRFAg
b3V0cHV0IG9uIFBIWSBCICh2cy4gUEhZDQo+IEEgaW4gdGhlIGFib3ZlIGVEUCBjYXNlcyksIHdo
ZXJlIHRoaXMgY2hhbmdlIHdpbGwgbm90IGhhdmUgYW55IGVmZmVjdCAoc2luY2Ugbm8NCj4gUFBT
IGlzIHVzZWQgaW4gdGhhdCBjYXNlKS4gVGhlcmUgaXNuJ3QgYW55IGRpcmVjdCBjb25uZWN0aW9u
IGJldHdlZW4gUFBTIGFuZA0KPiBQTEwsIHNvIHRoZSBmaXggZm9yIGVEUCB3b3JrcyBieSBzb21l
IHNpZGUtZWZmZWN0IG9ubHkuIEhvd2V2ZXIgQnNwZWMgZG9lcw0KPiBzZWVtIHRvIHJlcXVpcmUg
ZW5hYmxpbmcgUFBTIGZpcnN0LCBzbyBsZXQncyBkbyB0aGF0LiBGdXJ0aGVyIGludmVzdGlnYXRp
b24NCj4gY29udGludWVzIG9uIHRoZSBhY3R1YWwgcm9vdCBjYXVzZSBhbmQgYSBjdXJlIGZvciBl
eHRlcm5hbCBwYW5lbHMuDQo+IA0KPiBGaXhlczogMWE3ZmFkMmFlYTc0ICgiZHJtL2k5MTUvY3gw
OiBFbmFibGUgZHBsbCBmcmFtZXdvcmsgZm9yIE1UTCsiKQ0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS93b3JrX2l0ZW1zLzE2MDk4DQo+
IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8t
L3dvcmtfaXRlbXMvMTYwNjQNCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2k5MTUva2VybmVsLy0vd29ya19pdGVtcy8xNjA0Mg0KPiBDYzogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyB2
Ny4wKw0KPiBUZXN0ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiBUZXN0ZWQtYnk6IE1hcmNvIE5lbmNpYXJpbmkgPG1uZW5jaWFAa2NvcmUuaXQ+DQo+
IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCg0KTEdUTSwN
ClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxMSAr
KysrKysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiBpbmRleCAyNjg0ZTMzYjYwMmQxLi4yNTMxNGVjNjVhZTc3IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTI2NTIsOSArMjY1Miw2IEBAIHN0
YXRpYyB2b2lkIG10bF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwNCj4gIAkvKiAzLiBTZWxlY3QgVGh1bmRlcmJvbHQgKi8NCj4gIAltdGxfcG9y
dF9idWZfY3RsX2lvX3NlbGVjdGlvbihlbmNvZGVyKTsNCj4gDQo+IC0JLyogNC4gRW5hYmxlIFBh
bmVsIFBvd2VyIGlmIFBQUyBpcyByZXF1aXJlZCAqLw0KPiAtCWludGVsX3Bwc19vbihpbnRlbF9k
cCk7DQo+IC0NCj4gIAkvKiA1LiBFbmFibGUgdGhlIHBvcnQgUExMICovDQo+ICAJaW50ZWxfZGRp
X2VuYWJsZV9jbG9jayhlbmNvZGVyLCBjcnRjX3N0YXRlKTsNCj4gDQo+IEBAIC0zNzEwLDYgKzM3
MDcsMTQgQEAgaW50ZWxfZGRpX3ByZV9wbGxfZW5hYmxlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiAgCWVsc2UgaWYgKGRpc3BsYXktPnBsYXRmb3JtLmdlbWluaWxha2Ug
fHwgZGlzcGxheS0+cGxhdGZvcm0uYnJveHRvbikNCj4gIAkJYnh0X2RwaW9fcGh5X3NldF9sYW5l
X29wdGltX21hc2soZW5jb2RlciwNCj4gIAkJCQkJCSBjcnRjX3N0YXRlLQ0KPiA+bGFuZV9sYXRf
b3B0aW1fbWFzayk7DQo+ICsNCj4gKwkvKg0KPiArCSAqIFRoZXJlIGlzIG5vIGRpcmVjdCBjb25u
ZWN0aW9uIGJldHdlZW4gdGhlIFBMTCBhbmQgUFBTLCBob3dldmVyDQo+ICsJICogZW5hYmxpbmcg
UFBTIGJlZm9yZSBQTEwgaXMgcmVxdWlyZWQgdG8gYXZvaWQgUExML0RESSBCVUYgdGltZW91dHMN
Cj4gKwkgKiBkdXJpbmcgc3lzdGVtIHJlc3VtZS4gRG8gdGhhdCBtYXRjaGluZyB0aGUgQnNwZWMg
b3JkZXIgYXMgd2VsbC4NCj4gKwkgKi8NCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0g
MTQpDQo+ICsJCWludGVsX3Bwc19vbigmZGlnX3BvcnQtPmRwKTsNCj4gIH0NCj4gDQo+ICBzdGF0
aWMgdm9pZCBhZGxwX3RidF90b19kcF9hbHRfc3dpdGNoX3dhKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyKQ0KPiAtLQ0KPiAyLjQ5LjENCg0K
