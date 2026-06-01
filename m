Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFfDIfT2HGokUgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:05:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA68619079
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B6510E585;
	Mon,  1 Jun 2026 03:05:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WDYVtJCq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A603E10E585;
 Mon,  1 Jun 2026 03:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780283120; x=1811819120;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vOmbMgZN+bJIeHEn+mAmj/SXcCg/AoD7Mgq5bBDoEU8=;
 b=WDYVtJCqDcVKl/TUIJXHwYyIlmQ/h7nHFBYkrM6xK0Cvr1BY05qAEwOS
 kO/oV508AZXPnsbEi5sXBoYavuuWCH7Rek7KCI6J+tlsKLINmSbW84LyG
 MDxWR7Ag1jvscE0dUb+CJY9L6qVn9uRwPgVbX3NGj7J3au5fzrMxWzRIf
 DpkdOkt4nEmwUWuKLS8Aaa9f+AZkz+/1ItFV6LifdRC4A9xgNvvsUH4Vl
 8o4H65818oLW2ZDwuH8yNuWe8Rn8J8uHq+57VEu+V9J0mfaoUZOwJp6lc
 wn1qbqtAFQPri3frpAUp7s/wxV8qYJsfXQfVhd7aA4LjIcWQ+3CNz4H8T A==;
X-CSE-ConnectionGUID: zPwyh2CyRmWcp2PxDcuGyQ==
X-CSE-MsgGUID: qFAgrQehR0KYTjYSZ8wphA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="103706989"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="103706989"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:05:20 -0700
X-CSE-ConnectionGUID: TuNyH1YoQ7uZSt32wYNx0Q==
X-CSE-MsgGUID: QrTDV/iGSkCea7s1zVp2jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="239036516"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:05:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:05:17 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 20:05:17 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:05:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eciZnh9qf/WYSH+d2u3fpiURYfNGEDL8KiWVeyiJT+dufBh1iVP+Un/6SbIUlAk4QMVB47PErQDqEEHazUAfHWj3WxARvdjRLri6IdGh0mPegLmTPosw5PQV4vTSfg5I4BVQXGSxGlFjajbalr+1eURhRnVNBjtNRiTxonNy8upCHGiUglq1RO/235FY85YXgxWLOOvGklFfVUkP/bXPJzsmUCsf6iup58RQZVxRbs6CjXwTWfrH7+3qk6bE8iOd3gPnNdpZBtUrTs5qm4OszUrSGVsUvikLU6a9u+GGcnoeQfCFlLGk+a9E/hRVSYmyiDE1QEIYgMcfyKe79frRIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vOmbMgZN+bJIeHEn+mAmj/SXcCg/AoD7Mgq5bBDoEU8=;
 b=MFBW85H45IZ2Pp7zjuo7sNhOUXO1srukQEl1846Ewvw0L3j0OJeuFzFRgt/85iHNWmkZI7/GOlSNObBA12u4LsDxPxrDKr/1ANzb6AHJlIWD4+5csxojzwtHy1ut3vQ2ZJslOpVxxlUlvbo2rSqSKBIRENUVc0KaaIIyh7EZ/PGR1M1wpuDIQrnkccPkozzMaZwyjBC18J5SWOmw74XqPRNGbY8+d/+cZAFD9CTmiaQRUIl30DwE8XQMFCTAcjMGtEuWCfDme90N5vwjDnCVTkWbmIOKsWNAN6RUKoOj/GyWgIP0/jiIcwzw+AW8yO4mjWU7kYyUbGs9bFuaZr8iOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH9PR11MB924967.namprd11.prod.outlook.com
 (2603:10b6:510:3e8::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Mon, 1 Jun 2026
 03:05:15 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd%8]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 03:05:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 03/10] drm/i915/bios: structurize VS/PE-O metadata
Thread-Topic: [PATCH v4 03/10] drm/i915/bios: structurize VS/PE-O metadata
Thread-Index: AQHc76F5g4li6hQ3cky8Y9hoXoak7rYpB4dw
Date: Mon, 1 Jun 2026 03:05:14 +0000
Message-ID: <DM3PPF208195D8D84EE6CE5E125CE52E340E3152@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-4-michal.grzelak@intel.com>
In-Reply-To: <20260529192859.4172376-4-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH9PR11MB924967:EE_
x-ms-office365-filtering-correlation-id: fa1ff99d-02f8-4f70-ebab-08debf8a9a30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|4143699003|56012099006|22082099003|18002099003|3023799007|38070700021;
x-microsoft-antispam-message-info: Nw/v7tNM2l96004FG+V5Ogs4Y4lhQESVsjc62Eo7onkoBwFwi3xWzhWXKjstuefaEQW/ezhtR+0IoBJQqwCPZwW2VmGFPX57QEHdAOt5MRF8s23gH2COtDX45RBaP7wn+6Zs97VnAnWdTS06+sGX1ryjSEcZ7bUq5mVD+uTxGB9zAHCJ1UyzT6AiEnyTX6Hcb4w0ZVRDoG2z7sw55Z1ox+t883IiktYWrR+Nh8WV+KUlAhuQkX5c89sqk+3O9LOUxRGjcx5pHBT1dlTBEp8jmFlZ0xEu2qLMhOK+985LyHls88Ao4YYbleYx2dgUdRGI8KrAtaasM8ipRoVaQbrhnOxBdoEod2fiS0YuLpPitSE79XpZa+hMod4fvQJpP8HSUOmDXwBy/Ll5Tnkh9Oglwq15cW3aMsB2TjWC2Teshytl5C2h4P79AxuRAWqsB9MMKHsDf3MjqXwR9b6bJTzJMhQXRrs/vRMxjRvbEkkFSW1clfOEQs3XajMu860Xg+Oz6cPdlLuel2KHs4DOTPZR6PsRCIc/8C3f0TPT4SCuaJkA4NqDW37SfTmbsQ7i8nRl+Sr6reW7mapiJKJW6YT3c7V76nnP6BjQqZkdT9Lf+Itf8DnIdII6v8r+5C1NmK+7EuOt2CGUkvsTF0h+MqRzllhdEr7gcaDoBzEPRdtj8deZtmft1qSGUVqmvqhINQgBrtqpp1FxL3a5rzJvqrl2nvvrQoEvFV6kOW5aiC+6BjiVT9VA6+BZ6aJzlL61Lfxn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(4143699003)(56012099006)(22082099003)(18002099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUE4eFYrRm9jdk9hY3V6T2xRd2lFdzVNTjZNdy9DdHBub3IzcUdXbzQyaVVq?=
 =?utf-8?B?SXUzMDJkMGJ0di9RRlZiNk9RUDE5ckVwQTByZitDUWZIRnN1UVh5cEpLRWdv?=
 =?utf-8?B?ZlZFNTFWRGJWNSs2eWZwYXdtVXlPaDFqdnBQMnhISFl6NlB0RDJLdFlubWkx?=
 =?utf-8?B?dGRxUC8zdDBjWlJyckpGbm0vV3BnblhQM2NEVE5uQkRURXF5WGl1ZDdZNHlC?=
 =?utf-8?B?c1RReUwrKzIxRnB6amJ4LzRDVHFGNllFOVpjSjYvRUZScUJRa01lR0l5UUtP?=
 =?utf-8?B?ekFFQU5pOUR4SGs4NDFIelFRa1htOXFNVVNoOEJ4WExoRzlWMHlObko2MDlV?=
 =?utf-8?B?N1JRSmtUY0J6V2p0d3lETldueHNFNllmdnZ1SkFFbmlqYkFUR2dJYUt2a2l6?=
 =?utf-8?B?dW9VYlYwQWg2VXZMVHR0eHpGSW93dml6QzhqUEcyNUlPUDdzQVNKWkNnTU5t?=
 =?utf-8?B?b0tsc0l1QTZEeUU0YVh5bGpNeXNRaDJNS0VPVVA1RnBhTFJBSE92UVU0K0la?=
 =?utf-8?B?b2kzOXM2UXFYSkJ5M1p0ZEk0Y2VCTnJHVUoyTmkrdlpCSVVJS2N6ZzJza01o?=
 =?utf-8?B?NTZqWXg3dGh2bzZVeFZDWDY0ZmZQeG5idkFRZ25WNHdRMklqc1UvbmJsUUFW?=
 =?utf-8?B?NE1pZWlqenV0V3ZVMmRJdHRJZXJYWVlBZzNjVzcwUDZtZkNTM0syVk1wOUhE?=
 =?utf-8?B?aVdyVlE4eVFKTkNJeVZOVmVwYlFWaFBFazVIb2h0bGJpZHltc3ZiQkFjdlMy?=
 =?utf-8?B?R1B5dGlBcDFMa2NKZVRVdThDYlIrRzhTbGducGNDWTFuUjlGYk5aTGQwK2xZ?=
 =?utf-8?B?SmQ2Zi9hU3c5QmlwT1U2bEhHQ09USTZmOWpsa0F0MHJOZ25BdjdxSWt0YlFP?=
 =?utf-8?B?V2pGNkhLV3FPRTZncFhxYnl0OThrbHNNbERpbHQvWjVPNW5xenF5SEFERVR1?=
 =?utf-8?B?Y3NZMzNHQ1MrUjg3eHN2Q0RNVXY0K3RVMlhDbGo2YlJOUXdhMlNHZThqTjl3?=
 =?utf-8?B?NXpvS1lmQnlXaHJqaStUNWVCOEErRVdKWFBxQW1ybXdIVjZ5Z2xkNTlHZTlO?=
 =?utf-8?B?NHN6TE01QkpNUDJ2MmdOQkFXaHNqS3FUL05SNVd3Tm9tV1ZBZmdzdE1Gb3RI?=
 =?utf-8?B?VUg4S1lWL05FL3AvZ2tTM2prOUFUYXFucEsrczNDMkNhWG1rT3BNZjVua1JD?=
 =?utf-8?B?cEtBOUk5eVJxLzF5SXpyUXZRUWg2YUJJWWs3dXRKdnB4dnBPNmFQYUkrMTdZ?=
 =?utf-8?B?eVc1cDJZVmg5cFpMSVVnaFlhdVpYVS9xV3dZekYvWWxBOXNxODJnck1zNnNS?=
 =?utf-8?B?NG5ZZWtIOVFISElGSEFmTFZJdEpJQWo3SmZZUkE3dE1vOWVTK1J4aVlJMnFk?=
 =?utf-8?B?ajZjdUdZUndHUTRoNzFHcFNjZHZEMWR4MHNVakR3eHB5bmdVZkdKcUhPbDNh?=
 =?utf-8?B?SVRFN3k4RnNTNHFYVmZ2anFWRHlZTjF3WGhIdDUzRXREeDM0SkVxT2xwOHo2?=
 =?utf-8?B?SWVWQ0hwWVo3TVRkL2FZdE5FcFVYZnI2dUVOZ3JuUUhJMU5EMmxQUDdScnNC?=
 =?utf-8?B?MlZ0VklRcmUxS2V0NmwvbjNkbU54NDlVdzl6dFB4dUF2T29sWXExNHI3aEhL?=
 =?utf-8?B?anFkM1lXZ2M3cHAzNGtlQXpMSHNKY3lZakcwemV6UDZ1bGZIQVdENFJwdnFa?=
 =?utf-8?B?SmxZQ3hqL0VvOElJc1ZKM2ZLcVhXdXV6aG5LVjhxcHcydnFjWlJKWWtzS0Rk?=
 =?utf-8?B?OWFsM0hDSkppdzhuMDZqZ0l5blFaU2NydTJlaUJZV01PVnJHU1Y4WVpUTEha?=
 =?utf-8?B?cFNQbDI5SlNyM0RjTU1zNTFrdFpxZ2owVlZKeEZQaFRRS09nYkM4U2QxS0lR?=
 =?utf-8?B?ejJwU1VybERaWStwdWR6TW1JNHJXMUpkWDdWQ0RKWkI5aTZuQ3p6WERHWXhi?=
 =?utf-8?B?MWpKVDNSM2tFOTBuQzhUK08zcWtYdFF6TnpxRjZ5cnBvWjdURWJoQXAxTlhy?=
 =?utf-8?B?NWVQQTAzNm92ci9RTTFXVUUwTDROYldQckxvM2o1VldXWTE4Q01ja2VLajcz?=
 =?utf-8?B?eGdwd216N2RRdnBQWDB5MUc1dkIrMVJHSTdGclBHN1VWaXRCWkxBNnl5Tjl2?=
 =?utf-8?B?UXhMUWl5d3dMT3dKaE82N29leDJBckc4dE9oVi9lczk3ZXIraVlPS3UraFFx?=
 =?utf-8?B?RUIvVS9OUlVOaWkyakVHZFUvd1ZvVmJUeTNqbUpZeWhIMW5neXRhREtlOWs2?=
 =?utf-8?B?SXJkOG5sSTV1Vkt5MllGWDB3bDUxZ2tDK3Iwb3JLWWoyN2s1YnI0MGdtT005?=
 =?utf-8?B?Q0RXeVZpWmFLL0VUQU5Zc1p1MzRabXBrTFNDaTIxUVd3ZGJaMXNRZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nKicbJcydcEEAfSlhXhWi/JqYj8rUcJRXcJ/OG6qvtd4xo+BdxBT5Xxc5EZuOMF/si/SlReyEIv3UdWpuju/nX7u4Rq725UiUN5uKZmVCqq6VnrrK9ByPGyvKLlzlHEp4vHKHC7nN8Qy7LLumSGlxppnncGrppycBFvT7Rs8elH12FAup0Pc5eMJTRS766oSqKkNrDe4n8R9n1i9Ubprn6dBpV/gWJXFyMSVRitAf1jGEHF1YBZDiPHiIKnD6WOYhD6PEOCdvn7EjARSHbyVSjveGMS6QVQ72tZ/IgkfNgMIw9IYR+m7j/4yuwf8vH7s94AxKNtiPBAu75JFahlJcQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa1ff99d-02f8-4f70-ebab-08debf8a9a30
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 03:05:14.6450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MtOJNHPzEKAr8fQ5CLXe2CIYyZT1enin8JUVYDnpOjx0fGrJeo0vXzVWYqD00FcrQ8gY0lV3wqzY46+9yKHahg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH9PR11MB924967
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2BA68619079
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDMvMTBdIGRybS9pOTE1L2Jpb3M6IHN0cnVjdHVyaXplIFZT
L1BFLU8gbWV0YWRhdGENCj4gDQo+IFN0b3JlIGFsbCBWUy9QRS1PIHJlbGV2YW50IG1ldGFkYXRh
IGluc2lkZSBhbm9ueW1vdXMgc3RydWN0IGluDQo+IGludGVsX3ZidF9kYXRhLg0KPiANCj4gTmFt
ZSB0aGUgZmllbGQgYXMgdnNwZW86IGFuIGFib21pbmF0aW9uIGZyb20gVlMvUEUtTywgd2hpY2gg
aW4gdHVybiBjb3VsZCBiZQ0KPiBleHBhbmRlZCB0byBWU3dpbmcgLyBQcmUtRW1waGFzaXMgT3Zl
cnJpZGUuDQo+IA0KDQpTcXVhc2ggd2l0aCBwcmV2aW91cyBwYXRjaA0KDQpSZWdhcmRzLA0KU3Vy
YWogS2FuZHBhbA0KDQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgR3J6ZWxhayA8bWljaGFsLmdy
emVsYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jICAgICAgICAgfCAgOCArKysrLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaCB8IDEwICsrKysrKy0tLS0NCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4IDEyMjc1NzM4
Mjk5Zi4uZDA3MWYwZTVkNDM4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuYw0KPiBAQCAtMjIwNCwxMCArMjIwNCwxMCBAQCBwYXJzZV92c3dpbmdfcHJl
ZW1waF9vdmVycmlkZShzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gIAlpZiAo
IWJsb2NrKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtCWRpc3BsYXktPnZidC50YWJsZXMgPSBibG9j
ay0+dGFibGVzOw0KPiAtCWRpc3BsYXktPnZidC5udW1fdGFibGVzID0gYmxvY2stPm51bV90YWJs
ZXM7DQo+IC0JZGlzcGxheS0+dmJ0Lm51bV9jb2x1bW5zID0gYmxvY2stPm51bV9jb2x1bW5zOw0K
PiAtCWRpc3BsYXktPnZidC5udW1fcm93cyA9IHZzd2luZ19wcmVlbXBoX251bV9yb3dzKGRpc3Bs
YXkpOw0KPiArCWRpc3BsYXktPnZidC52c3Blby50YWJsZXMgPSBibG9jay0+dGFibGVzOw0KPiAr
CWRpc3BsYXktPnZidC52c3Blby5udW1fdGFibGVzID0gYmxvY2stPm51bV90YWJsZXM7DQo+ICsJ
ZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9jb2x1bW5zID0gYmxvY2stPm51bV9jb2x1bW5zOw0KPiAr
CWRpc3BsYXktPnZidC52c3Blby5udW1fcm93cyA9IHZzd2luZ19wcmVlbXBoX251bV9yb3dzKGRp
c3BsYXkpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB1OCB0cmFuc2xhdGVfaWJvb3N0KHN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5LCB1OCB2YWwpIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBpbmRleCBjMDUzMGE1NGFi
YjYuLjA2MWJmNDc5NDU4ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IEBAIC0yNDIsMTAgKzI0MiwxMiBAQCBzdHJ1
Y3QgaW50ZWxfdmJ0X2RhdGEgew0KPiAgCXN0cnVjdCBsaXN0X2hlYWQgZGlzcGxheV9kZXZpY2Vz
Ow0KPiAgCXN0cnVjdCBsaXN0X2hlYWQgYmRiX2Jsb2NrczsNCj4gDQo+IC0JY29uc3QgdTMyICp0
YWJsZXM7DQo+IC0JaW50IG51bV90YWJsZXM7DQo+IC0JaW50IG51bV9jb2x1bW5zOw0KPiAtCWlu
dCBudW1fcm93czsNCj4gKwlzdHJ1Y3Qgew0KPiArCQljb25zdCB1MzIgKnRhYmxlczsNCj4gKwkJ
aW50IG51bV90YWJsZXM7DQo+ICsJCWludCBudW1fY29sdW1uczsNCj4gKwkJaW50IG51bV9yb3dz
Ow0KPiArCX0gdnNwZW87DQo+IA0KPiAgCXN0cnVjdCBzZHZvX2RldmljZV9tYXBwaW5nIHsNCj4g
IAkJdTggaW5pdGlhbGl6ZWQ7DQo+IC0tDQo+IDIuNDUuMg0KDQo=
