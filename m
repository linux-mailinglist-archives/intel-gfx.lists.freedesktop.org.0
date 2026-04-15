Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Fj3BBI432nAQQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 09:02:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF5B4012B6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 09:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639D010E132;
	Wed, 15 Apr 2026 07:02:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SNrc/PBY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE1610E10D;
 Wed, 15 Apr 2026 07:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776236558; x=1807772558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lKF8fdZqkeaFQrgN075mW5dNp6rNU/JX8xhmxbHdrYQ=;
 b=SNrc/PBYbpMxXg8iYWo8IgDheMCBfnQAYs3SEPBcDJTH42s5vWPpDKdL
 BcUBUskBwdaimBuJvhcM/Ak0M9iCgTYBf0Icl2Ow8TTlBcuboLDWuhqq/
 ZU4d1BOb0nx9pc1VAaIJMclh7zentY4yRw4IbNna5P16A9Lcxm+4hY2R4
 QRFSAdl8t9s5NPRl0hz0jXKAIo2uHBTrjPvUadEKjYVmocXnqJK4VzidX
 dTDQJUR3ZOHDK7hcH+WIudAdBY6e8+Ab4tegD88mknTD2CJkWRkL2ZbLB
 fULpXVu6z2xVwPibC6lbGwTMqw1cl5iQHSEaPPWc0cjwLyDzXgjUWGFdT g==;
X-CSE-ConnectionGUID: BEq4AYF3SCe++6YslvrBEw==
X-CSE-MsgGUID: pHL9kObUScyWHPmSzZ8c3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="88283730"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88283730"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 00:02:37 -0700
X-CSE-ConnectionGUID: s4AWH73zS2uHJPzxFqEK8g==
X-CSE-MsgGUID: CnZbzyx9Reepsj2W4sTKUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="226026607"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 00:02:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 00:02:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 00:02:36 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 00:02:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PdD8X17KbpIlzn3UCQtALjQXTvCgmGU68zbcqn2EuHvPRZbUtbDUEV8A1EsGe2KiC7lsjxlVJRceYYwd3Ig3lk4sMzAVEI1Tk1opqwe5uZx7D7qgsE71eisE1i8CdP8g3PYbXt5QEWUDhbWMuqm4Yme4gT3rEBev4tVtQQSCyrN7GfGGHV0OZXTKeofDGAnSJ26ybYgaqhw//s3/+3O93OEPKRrV3YqnTP4c/oH1PLXvk0LonPEXrjXPt7WbmFaStq4Zr1LpMYnCkMQuWtLScXUbDRHuMXSKIvJ5J+wYDSx9eCvvBcAHwi9AzngRidN1jbtD/9ijO5G5LM8jDywl3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lKF8fdZqkeaFQrgN075mW5dNp6rNU/JX8xhmxbHdrYQ=;
 b=YZ9IEicDmG2cewATNVGG77J30rH8O170FztMpUrrbbYPbTuteUs0rwWwd0TMGM7e9dPRRwTOD4j+qmwVN5JIMPG+BNrv/esQvinHDUzFRfwsrSnF5itjsZDvMPha2HFs8NAmb8AiLRDUuGjRb6YDOUDo+DJunAThmuLiM5/72LM8U9f0NPUC2GEKgf9RWkhDABe9pVveqd7re3dHcLxBD3C3BwKqmetfzM9wh5yeMMwtlL8QC9y8HOT/AwWuspdQ3aLwuWgcaJxTe1EhJX3Zc6q//0h45rjJVwFtzPFx2niKAi4N5sstit5CAQ77M4h8qTRirAZ/7fx63yDep77JXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB7805.namprd11.prod.outlook.com (2603:10b6:8:ea::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.48; Wed, 15 Apr 2026 07:02:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 07:02:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Garg, Nemesa"
 <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "error27@gmail.com" <error27@gmail.com>
Subject: Re: [PATCH] drm/i915/psr: Init variable to avoid early exit from et
 alignment loop
Thread-Topic: [PATCH] drm/i915/psr: Init variable to avoid early exit from et
 alignment loop
Thread-Index: AQHcyzgK0exsVBaoFU2jmN7Ajz56xrXeQtUAgAFyYoA=
Date: Wed, 15 Apr 2026 07:02:32 +0000
Message-ID: <baf923f0a3adf9bd0f5c7c25a1238e3cbd0788af.camel@intel.com>
References: <20260413112345.88853-1-jouni.hogander@intel.com>
 <ad4BVIxoxQXS5lFt@ashyti-mobl2.lan>
In-Reply-To: <ad4BVIxoxQXS5lFt@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB7805:EE_
x-ms-office365-filtering-correlation-id: 91260b48-99d8-4422-c34e-08de9abcf741
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: nkf2b8fSi5XtQbjpWqzpPbgsH3/0KAf0b19ZatF8uPZCrBftJ3p/YCxeAu//OjNJwa9/5dBcYm82eWAk8m/P6lkjDS5iaxW3MXB2xiuiaJUXIRQTtUCIvXJxxJkP3Y8PQdN90wjUOlfyOvD4NPlssR9ehl9FBYvu2zkqHgcGDNjQYomIqDY/yMH4wooXJmI/lfdED2KmaV9ko8lmdmGJqTIV4oZPPdFVxKsFRD1Sk3DLFEp2r1kWDNJYIdDvZurEtkyw4ESeRww3E4lkMRkyxrD03K0Y5rJuMRNFbCS3SAEeiV4qr7wjxNxqyi7CS2P9nrIFpx9LTqFwNSGVr8PdNejATkVw/yhv7DvpNptD/gG1JN+Ln+nTdadEzeE+GT7ok2s0Twr42PqX+xs6m4ESachxGQX7qCVJDGVCgIJFqykonM36/+NvORbApUejl65S9EqO1uj2ym115nLwfwgYWsxfw+6Bj6cqJEjJ7SOJyy2H6kyId5fZn21o+49ujh2G2ZUAUcok9eqlg2GtK/J50f3/HpRgHHksxkwFoaMlg6Z2n7nr+SNjMeVlKG//9AHV27QB8+jmH0E3bXkUeuTS+Zy4y6ljqaE9b/wbgqmVwT54oiNYH2YI+uFV0oaU+wvTBOmnPZWVEIu5TkyUqfPh2JNxVyMaSdn1Tu42gPPJPDercfFfkEzTMc4eDDpbLh/4WapHgueqsu6RsDunCAqlH5/lTZGP6wgsEd2Jn4MNw0S7YFx2I3U9hiv9L7gCQwtcdXD0UJR2fd3HcKYN+9aO726HgxfrDg/6wB0G9qDbe/4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEY5ZjBpemFPenNyYXRYUndOcWEzNmtXRTNWMU1tQVJ1bHRnSStSak80bm91?=
 =?utf-8?B?c1V1bUcxeHNTZmViVWI1ZGFacW90aGVQdGFzaWR2bmN1MEgvVWs3QU1DdTc5?=
 =?utf-8?B?SEc2SnZ6WDBvdjJoTkJKdVJ6QS9ic0diZzVDM0gxSFVJWGpOdFQrMlFNT2xH?=
 =?utf-8?B?NzRuekx6Z0dWZS9XaWFSZzRta2lxY2lJTElyYWNKRlJ2RG82TlBNUUl4UXFh?=
 =?utf-8?B?bHd3aFF3T0h1UHMzaXNCeEFTQ1lGMllkczJqeERhMWY3Q3dNL0JEMXRiZTRX?=
 =?utf-8?B?aW5LYTBRclgyNFFCM29sZG9EUEJ6SGpsTTh5clBzTVR1bmw2S0ZNSDcrckRW?=
 =?utf-8?B?Q0JMMWJoTVRJNlNwOU1SS0dTdGl1Q0VmL3hZNUFPTkkzSXlsSVdZYUdDRG9T?=
 =?utf-8?B?UDZxakxoamE3cDR4OWJyM1NlS0xGT2FkV2xMY1k1Z3VqanpWakpKOTVGS0Fx?=
 =?utf-8?B?YUlBRDJ3d3BYUlBsT0J1NUxYSk5Uc0V4cVVWKzl0RmZjRCtyWVJRMDFoSFJL?=
 =?utf-8?B?SkxwaDlveDhndzgydlBoMnBxSHhUYU5qZFMzNE1HbDVvSjNEdm9jMVZnMytq?=
 =?utf-8?B?ZUJkY1RzUDNiRng3RG9lMTlqV3M3UGxuMzhudHJZaWs1U25BeThUQTkydmxs?=
 =?utf-8?B?WnVqVmZMd3Z4V1dIcnVGK3crRGlQS1c4enJsTmd2UE1hUXZvMWcxdklIT1lF?=
 =?utf-8?B?aTZWNkQ1STdmSldxTVA3L3VnM1FXVFNEVkhtV0RYQklrNFJ6Mmw1QmFBeTRh?=
 =?utf-8?B?VHIwSE5xMzQ3ZE1XRE9XQnV1VzRrTEE3L3NVRHBLV0dES3hDSXp5bnd5Qkto?=
 =?utf-8?B?eFBtNE1OVlVsSnI3ZVRON013SkErYzVIamMvTDlUemdYVzRiRXI2dEhLMkg3?=
 =?utf-8?B?YVRQRjE0Zjk2aFVEL21BSFNZMFdMWG5acmFmNVNqWVpEdkJYMVlxUTA2MzUx?=
 =?utf-8?B?N0FabjlMQzU4a2syeVVGcUI5UHVhU2tYQ2pYaW9BWUxkQ0QwNmR5enRoWVE3?=
 =?utf-8?B?VXFKaGFhNmQ3R0pkUDBiSTdXODZCMktiNUFXajFDNWFyZENYM0FXMkxBYlIr?=
 =?utf-8?B?bGhZOXpleDRFSitvdzZpc2dmZVQ0Njl4cUdHWUVYZHArbVBaR1FIaXRZZm02?=
 =?utf-8?B?L1ZpK1hvZGZEc3ZiWnZXYUpjQnB3S0VFSlliMnIvNjJLOFhOY0orVTFSM2Q1?=
 =?utf-8?B?NWlqN3NoVFQ4N0wvSFRaMGlVVE1vZ3hZUHZsaERwbnZxZEJ3NW04NU5hWXlq?=
 =?utf-8?B?dnY4b3pBY2I0TFovVU5ldEk3WlRoeGZFWkc5bmlsTERxUURheVAxa0VFZnBF?=
 =?utf-8?B?MEhUeTlEUXNyUHhQd1YrRTlyclZQNFk2RXVhUGM3cWJlLzRkTlBoQk9CSjJj?=
 =?utf-8?B?Um9DWmhLM3BPejVLL0trWFhXTWE4R1p0REhEbE5SamFReXZLTHQxZ2MzdGRn?=
 =?utf-8?B?a1pibXRzd0RLZ1pLRDdxN0xZLzlXdGZHaFdMdWpPT0FEbmdHODU0UTJTUUZs?=
 =?utf-8?B?WFYwOCtyK1J5SnQ2QmhaM25uZ2xYVnZQbTRGNmMwRHJoZWZPMmd6Q2gzL01D?=
 =?utf-8?B?RUpWdGZTZEJhSDMyWnhDRGpKVmNia2pkSi9hYXpGUDlieWNqbzBvcVVLakJu?=
 =?utf-8?B?dEpHd3ZhUk5kc2FpTWVReUdPclBPRGZ5dDVrbUl5RkhDb1AzcXVGd2lJQkxZ?=
 =?utf-8?B?emo2TkZVVk4wUDFuT3QvaUJoNU9aQU1yY1QyVTc2eTUzOTZucEdaUTY3M3Ew?=
 =?utf-8?B?NHpHT25pdEdpQmU4NHhwOFFpOWpFZXQzYzRua1FtUi9VdDBndTNHVmNBRXUr?=
 =?utf-8?B?eUdaZjhXNDB5QzZYTXV3VVVrMnUyK0VkbmRMbWY2SGtRL3FGQVNYaWg1dUgx?=
 =?utf-8?B?ZGR0R1NGSng1aXdiSnhiUDNBbS93OTc1akNsVkdxM0NjSmFWL0F2OTBKQ0tj?=
 =?utf-8?B?aWFOOGk0eFFVbS9zdVdHRXlNbyt1M3IyVGJwNSt6QzRHSlZhaEkrcVhFVjhU?=
 =?utf-8?B?bnNWMmFMQ3dNaXZNTUhsSUNBZWpSU3dRVjY3cVJJVHU0QmNlQ2Q1RENTL2hZ?=
 =?utf-8?B?WSt3dEhzYmJmT3hKc0ZZYWtzbThYdmlXUkJFTkp0VVZscVlDRnJ5aXlsZzdY?=
 =?utf-8?B?TlBxYmJPYVFwbE92SUpROXNyc0dDZUhPenhvNStRVTYwQnYzNkt3KzJESGht?=
 =?utf-8?B?bXdScVYyT3hETkZXeFN1QzVHaVFCa1FaWDFvNmNzMlJXZ3o3T3Fvc2ZPSTNo?=
 =?utf-8?B?ZEhyMnJNNUVWV041SGtSK0NRS3Rva1IyL3hRVU9pdW5ZQml5anRHRXE4NVVq?=
 =?utf-8?B?WSs5VnFSdlJHYzk2L2t3bW0rUk4vUWJKTDVUTkE0UmNOUVN2TXBvNjFVUURy?=
 =?utf-8?Q?+OCzB6XuVerCz8slIOkh0PNu2wPhdZe3HzMNZEeCO+2Ij?=
x-ms-exchange-antispam-messagedata-1: +BeZJLuEPu0XfUH/NG/BiiDZb2pwhZMfd98=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E736C003C0534C4DAC1A8ADE20DE9371@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: v/Nay52h+oL1osXB8/Z6rc21lPv34/D3bQoxy157zktwJZULBmturdsyL1mVR+XMQvBXUUlBZRyIPFRTmc7uLka0b6Vvq1OPwofEAVHfC0lBHENncooQU8FnxnB80yuaR1BxZBWJXccXDh4bfrv1e7aMalZZPq3gpcnX7wMRq3IxtDkKqaehw1S2cumoaEF2BletqjgSp5HkNTEMuv38t9Z4f4rxmGJvz1lBKbqP7C80UzluH+/7hOzUP/X5KG+xmfIb7/KrBG/t+g+/2Bw0TkbALk/IUiZBIujWIghyWZ115ohEnvMnxYlC+6ZlJODHKxyuIgt8famUnYqtQDFS6w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91260b48-99d8-4422-c34e-08de9abcf741
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2026 07:02:32.5386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QWdZDepqLAKZD1M4U6sYoZhPmnif/p+jFN5fDuGZvHT0pIYnHmQ+g9lELtXcaCA2izzboCcTV6qMI0XwvGVKL7/dDdn++7rCWZi/0ljEmcE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7805
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,intel.com,gmail.com];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EFF5B4012B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTA0LTE0IGF0IDEwOjU2ICswMjAwLCBBbmRpIFNoeXRpIHdyb3RlOg0KPiBI
aSBKb3VuaSwNCj4gDQo+IE9uIE1vbiwgQXByIDEzLCAyMDI2IGF0IDAyOjIzOjQ1UE0gKzAzMDAs
IEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiBVbmluaXRpYWxpemVkIGJvb2xlYW4gdmFyaWFi
bGUgbWF5IGNhdXNlIHVud2FudGVkIGV4aXQgZnJvbSBldA0KPiA+IGFsaWdubWVudA0KPiA+IGxv
b3AuIEZpeCB0aGlzIGJ5IGluaXRpYWxpemluZyBpdCBhcyBmYWxzZS4NCj4gPiANCj4gPiBGaXhl
czogNjgxZTEyNDQwZDhiICgiZHJtL2k5MTUvcHNyOiBSZXBlYXQgU2VsZWN0aXZlIFVwZGF0ZSBh
cmVhDQo+ID4gYWxpZ25tZW50IikNCj4gPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMg
djYuOSsNCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gDQo+IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxlcnJvcjI3QGdt
YWlsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAbGludXguaW50
ZWwuY29tPg0KDQoNClRoYW5rIHlvdSBmb3IgcmVwb3J0aW5nIHRoZSBpc3N1ZSBEYW4uIFRoYW5r
IHlvdSBOZW1lc2EgYW5kIEFuZGkgZm9yDQp5b3VyIHJldmlld3MuIFRoaXMgaXMgbm93IHB1c2hl
ZCB0byBkcm0taW50ZWwtbmV4dC4NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gVGhh
bmtzLA0KPiBBbmRpDQoNCg==
