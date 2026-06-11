Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p8uiFFfNKmrExAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 16:59:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAE8672DF9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 16:59:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=B34DERCr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB3910E7BA;
	Thu, 11 Jun 2026 14:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B8B10E09D;
 Thu, 11 Jun 2026 14:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781189970; x=1812725970;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=G4VdMq2qLtfJpfiudA7PnCsw9Eb9I67XGS87YFCpusM=;
 b=B34DERCrxnY5xTgPDDgsY9wEq6nELSCX2EYgA+1UAtut7irLn1wrI/7w
 /gUasZuPy5d+wRwQ9yZDbHaGEsHf4vRnofJmqbKAUtsFo6kRojZvn4LOY
 EKzPV0aPIleahekuuKpS2LpTJZTwVW7rDp2CT5MPwG1TMy+XEJSyLmQsn
 QeKiTfOd0jp+ealez3fOf3R+Hjdv3FtPMoQTTG0PW6YkIoFpan/JsWGnJ
 nFKtPMYBVOPcNSeuLcmqtMXkeqaohJhpsghlL78EfAhWnNONpKbz6NuiF
 JWSFCU4VWKKtQ6ZbRNub278DcxMSzQsUzW0OaPbvnF7tD5ItkFoMPUTX/ A==;
X-CSE-ConnectionGUID: mE4bv9xkSNGIt5Jc2Tu0kQ==
X-CSE-MsgGUID: NqcLK+vpQ9GW1dW+Y1HQHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85843808"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="85843808"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 07:59:23 -0700
X-CSE-ConnectionGUID: /DRXpNVDS1SNi6VGafW5XA==
X-CSE-MsgGUID: xwK+gqnlQU6HxLt89haDSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="245620424"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 07:59:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 07:59:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 07:59:21 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.13)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 07:59:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EufM/hNEWddjVnuA1936iPl/1KM2qhFZEv/G/Vj8tBq6wM5pkmGloIveG2DTe2lleIlRwtBDjstLmCjCbjUXdvohv7yUiKrRkxS/g9cva4e5HpPYw78f9QpCKYqK2C+WAsS284OYDxMI6OWu+jNeLqWiMEHm8T+VuRhl3KqEY5mhrjpnCaFqbaJxejof2Jm6qP2GKXcHPfK0sHSpXgFYFleBKX1/OdyJF3zFGiXEE15OfW1HIZCBgeIxCGUs7tKj/q8+qHZFTgozsTmzKoblAp3cnU7Oa6HnPWKA6MxjMv0Cc8Bmca+GHVNk91LPhYK34I1UCJA5mnrC20Tol/YgYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G4VdMq2qLtfJpfiudA7PnCsw9Eb9I67XGS87YFCpusM=;
 b=wGcI3GfmMYiqseuTPLcr6IIE0VocyODU/nQ1w+SUTe/isiOT4O3TdfiAp+U6EwL36puKAiYs/BmkkLnhirv/3i3TgO8/IbvfKoTNIOOIf7NRX52Z+woCRRhu1QgY64oyx04tF2OcV/gkh/wQHF/6vFkdqzDsnYvft/+eHkKsgvFU0rHHU/rzo4ZHwPMOAxg4FhqHnkcMXITsxWM8TvFxei3MuqFMwL7TlwFXodLdVzw55awVfI+718u7d686IAL3qhw8x24/IgxtSlUrXBo4MbnRjNymUPhltUc3Vwf/lv7pn1wpai4cPxfDrD2iUd3yNm2LpFmbRZEfEsoNo8+srg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.13; Thu, 11 Jun 2026 14:59:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0113.013; Thu, 11 Jun 2026
 14:59:16 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "fuhrysteve@gmail.com" <fuhrysteve@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "sashiko-bot@kernel.org"
 <sashiko-bot@kernel.org>
Subject: Re: [PATCH] drm/i915/display: fix ALPM error handling in
 psr_alpm_check()
Thread-Topic: [PATCH] drm/i915/display: fix ALPM error handling in
 psr_alpm_check()
Thread-Index: AQHc+bGbAcN+GRBjjkSc2pZHI7yQHrY5clqA
Date: Thu, 11 Jun 2026 14:59:16 +0000
Message-ID: <6a14793effb5021ed2c879d4054fa8721185848e.camel@intel.com>
References: <20260611125408.676626-1-fuhrysteve@gmail.com>
 <20260611144956.710911-1-fuhrysteve@gmail.com>
In-Reply-To: <20260611144956.710911-1-fuhrysteve@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB6817:EE_
x-ms-office365-filtering-correlation-id: 12e0fc87-abc0-450d-91a3-08dec7ca01ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|23010399003|38070700021|22082099003|18002099003|56012099006|11063799006|6133799003|4143699003;
x-microsoft-antispam-message-info: 1f6Q2X4PYhO4kbo17+CoNLPn5nmNd6PvqRPgk1oOQxA5yXSi2SLz5e/3pQOYw/3jPZyeQDXpLPl3HG6luZTtKwbXPahs0vxy++2OjieeJGwAjMYszh1k3/n2o4o//LhVTEbm2Y0BL9ZnH/mODnBTkmG2EYumQ+l8HYGKaNjSTrsN1g1ksF6SmMzyD+pS21PfwkqE965GaN+EDTzSnSP610T+LRP3iEIoH09qYUZvkYji6aDWBi9MeWjWJgU/M1RdRY1rKO1HQ20EpiSKxOaxtzzkVWMNB8rrjqJ4jUfbnZZnFKJhROhTHvnu5iIrEXcLQQ0em0G9urNL5MNUtqxNeU9CyLJihPigaysluYr8Kh2fnC5CX3xRu2NGEeb30bsT9/t0rxP60I0sIWd347OiT60MEV/8B6/fw2oGDKl/o+ATje7kxXPiajLZmo0JWqSKueNsiVaN48S10mlqcL8PvUyBbYIpnHgZyUZQ3+WrjjvJ34qDSdDIeia6w044qHFb8Jgz+02v99ZQx42WU2xt4C+Rt7S4/PZHGfD1ycz+rq5VIIniXhnq3e2qbXH2uI3+mdVqoO3lZ4HhQdU0RsopfFRzZqW2FHPENl0tqNna/rfpfEH4VCQUlwTFU2FTdxlyhcx6A+fYT6DKINZCZo+5amXVRacE6vhhQmiBFT9aMMw0M3zobd/Iyj57yvJ5E7h0uRU+pkALqyhcXy8cuTB2ajv1XnW/ft27dQAcH7iqUxOjuF9uRShcvYHziMlgq63/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(23010399003)(38070700021)(22082099003)(18002099003)(56012099006)(11063799006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmpNakVHMDZsODRNT1NMOEpkdjlWWkNpcXhud00wZHZMUjBJTDhmaDVoUmI1?=
 =?utf-8?B?MVBIZnhDT3NJK0FOWHhHOEJIb3VlTGFYMmh4SThUdHVyYVpNTk5MSlBMOVJa?=
 =?utf-8?B?Yzh6WFpqZGl4K0d6V3B4ZUFKZXFrcUFjaDV2T1A0T3B1VnJHK0ZwenM4MGJG?=
 =?utf-8?B?VTI3SDNhUUkzdWo1NHY5VkVLdkJudTZsdEh0NElyd3QzVG80ZTVSWFJ5ZGd4?=
 =?utf-8?B?c2pNdTBsWXR2aEMxeWhTZ082dVk5eVd6aTJxYmdBa0l3aFI2M1FnUW0xclph?=
 =?utf-8?B?OU5ueDlzNjgxNExac1Y3a3VaK2ticXYzUmhSZUhJTlN5aytianJIMXkzOVd2?=
 =?utf-8?B?S3paYkNlSmg4UmZJWW0xSGUrNnZkdXFFbHcyTzZXOHVLSDlQL3BuOGQ2dTNr?=
 =?utf-8?B?Mk9sZHRBbHVxZHNPVldWL2l4c0hFZ2RSUTFIcHdSTkhISlpRaXlsUThJald1?=
 =?utf-8?B?ZURkZERvRnB0aStqYjRMelY0SE83b0xLMURKT1kvMlhWVW1xU0RLWjFySzUx?=
 =?utf-8?B?VlMyTXJXMG4wbUovRCtnQ29BaUpQcUFGTVdZbjkwejZ4amlFdzY5T0dUZ3VF?=
 =?utf-8?B?dC9HMzRlRXJJYmhtbW5sWlJObGJXS2I4UUxJZG5BN2xPd0hLYUU2SzVIRWpL?=
 =?utf-8?B?SFlUdU9zWmhHMUVWd1pVdVNVTWxXZDVLZUxyaW5JRWJ1YlJ2QW95TWYzemxz?=
 =?utf-8?B?UjBtR2VBaGFGOHB2OEh4RXluK0NVWlhLS0cyWU5EYnl5SCtSN2hqNWJmT2U0?=
 =?utf-8?B?UFdOY0pUbXZwZGdwMm1OcXdiOHhEVlVKQlZ1NUN5eFNvTzMzT2NyUUZyWU9r?=
 =?utf-8?B?RUFoSW1rM1gwTklmTjc3VEQ3d1RXN291S2hyQnkrbG9SSk1Xa2xsZTM2cnhs?=
 =?utf-8?B?YW9hUDcxeFNjMUNVek9iZDZqOWZkRkxQVzh0ZkQ0Q2FGdWdGU0tRaUtweUxS?=
 =?utf-8?B?eWFZVWtZQW5OOUVXWjNid0FVMlJxRDJNeW1PZWVMbWpiVlpFWloxcWY4ZnBm?=
 =?utf-8?B?ZlZtYVJDUHAreHpGZ3M3d3UxUlpGUlVYdWZ4eHZINkRKNU5hNFNmbGZzRG9F?=
 =?utf-8?B?eUlTM2hOY2xHQmxvaE9KR0FpSGhEV0duWFRYenZHVkJtYWdkVmF1cEt3Nk83?=
 =?utf-8?B?S3h0UEtSRW5Wb3lwaHlPZlMzbXppT0Fpd0xVVzhLbVBCL0VOVnpucjEzcm53?=
 =?utf-8?B?dFZaRHBqdXlkZ29iWXcrZ0Y3N2tVaWptaytnakR0T1VEYkVRcjc2Vk14d0hF?=
 =?utf-8?B?NCtDN2FuWmYxbWpRVmdFQUFpR2RraHRkQzNMcFQwcTc0R3VnV0ZMYVpzbzhq?=
 =?utf-8?B?MFVyNkhGMEFUNDVDOEdtZ3Buc3JjRWpyam9ZVjJ4eTFFdCs3RGorRHJ2NElk?=
 =?utf-8?B?ODVUK2hGc2RBVFJXaERKVVh5SGxtUzY2NXAwaHg4aXVFeDZyM1orckFZSk9W?=
 =?utf-8?B?VExVRUlERnFwanltT04vSWV2NE13ZXpyOFdJTGtBWEpTenp2VE5uUEpLYmFi?=
 =?utf-8?B?bFRxR3lMRmxJRkxNYjY5K2lrZUpxdWVDSlFpMkFEUExrblk3ZzNCaEovWVBM?=
 =?utf-8?B?b1RaRjQwSUVLMVdDWENrNnhaeDZNSG9FYzhRR3BuTTBGenNrdzgza3F4dWE5?=
 =?utf-8?B?MUsrZFNlLy9zVGZnWDdlVW1xYWI2NlJvYjd1RlpzWUU0eFRyM1BXUnc0L1V1?=
 =?utf-8?B?OEFuOHZNaDlzcldxMUtkU0N5bkhXZGp2NFdQWjhzWFhrd1NaZ1UvMUcxc2NR?=
 =?utf-8?B?Q2E2YjY3b1VtWEY3SzJObEdxNTZ2LzJnZTl6MXEzMjh0SGkyUTRQZFhHVmFG?=
 =?utf-8?B?a3g0VkcyV0kwcFhkano2S0dmYzF4WUh3VEttTHV2b2JjYWFJTzZwUFU1MDZT?=
 =?utf-8?B?U2pXb1Jmdmdrb1RNWXlLQmJ0UlpVbXBvT2djRG1XMEVCMkNYanBVQlFLVnNK?=
 =?utf-8?B?dkFNd3daSFhIL0VLdGJYNkVuOW5qcEdXMThWVGk5d2NpR0NTUmFiVDJoUjVw?=
 =?utf-8?B?aWJ1a3RXWHBaYTY5dU1lWE5zRjlJcnZiSk5wbCtyVENNN2JXVkFSSGV5cmgx?=
 =?utf-8?B?aUd2d3NsWkUwY3hqWUxwbk9HSlJ0ZFhxeVZkbDhPS2Z0eWFjSFNqZkd3cmRR?=
 =?utf-8?B?dnF4TVF2RG13c0ZCSTgzMEhpZjMzMHQ4S3lTaHhxVG5oZTg0QzFBaDhvQW1h?=
 =?utf-8?B?cTFrQ1Z4eFdaWXorT3Z3bVpnMjY2Z2RabklNRnREZk1XTEkreEFBbG1hRmtW?=
 =?utf-8?B?T2FTOWVNT1FyeHZNUjZ2dk5hMUhpTG9CVEhUNHZSLzd6YXhPOGhWeXV4TVpj?=
 =?utf-8?B?bXBxbDhiaytXelpCSDJiT0laUzZzL0txVllkVVlBUjhTQ2Jxb3Mva2x2aFJM?=
 =?utf-8?Q?YUJcIzIlhMyjwmM35SS1ruKe+jwyK6XWyM0MGWtqRXq9L?=
x-ms-exchange-antispam-messagedata-1: AMXsxKjqWJB+HK8BDE5iYzqPz59+yefNThU=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2E3E0D8F0D2DAF499925E08160C406C4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: eM/KawbdrX1uKnx4FV7c0zuemN8jDf8weBq9oSXU9eo8+ShBnwwHX8Ml4CdF9qb6bxej/lEHAWaFZ2bfu2OFbSZRfmcWkJKUa86zXP7nK/foCQYHsME1NGPpNFvvqUwJc+CkhXxgQ5NSm9kQTkvGta+fYnPduQm1Yby48w+raC+v/XyvSPeMkk7MouA2DGHSgbJXV3JWGtDjPV4wGfeDYw9pOfxi5Letx5kR9Ieg/wX9Xk6Cu+PgBLQNofV+tUn9+IAVwUA5piQKeP8m9sTacrkrXhMQO8mcXvY/67EQIMEM8tloLgYxiW71po45X6p4BeCHwmbck8tF7M4ex5RzQw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e0fc87-abc0-450d-91a3-08dec7ca01ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 14:59:16.2886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QNqm4x5bbaONHf3FMmnaw+LuMn1Y0+mbg9rLySu3CGk3mlOkBXqdCk9J+7qNXyTJcZutfHqLc4NoAN3C9nGvj8KurQj0GDhQtb+U3E8NAco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EEAE8672DF9

T24gVGh1LCAyMDI2LTA2LTExIGF0IDEwOjQ5IC0wNDAwLCBTdGVwaGVuIEouIEZ1aHJ5IHdyb3Rl
Og0KPiBpbnRlbF9kcF9zaG9ydF9wdWxzZSgpIGNhbGxzIGludGVsX3Bzcl9zaG9ydF9wdWxzZSgp
IGJlZm9yZSB0aGUNCj4gZGlyZWN0DQo+IGludGVsX2FscG1fZ2V0X2Vycm9yKCkgY2hlY2suwqAg
Rm9yIFBTUjItZW5hYmxlZCBwYW5lbHMsDQo+IGludGVsX3Bzcl9zaG9ydF9wdWxzZSgpDQo+IGNh
bGxzIHBzcl9hbHBtX2NoZWNrKCksIHdoaWNoIHJlYWRzIGFuZCBjbGVhcnMNCj4gRFBfQUxQTV9M
T0NLX1RJTUVPVVRfRVJST1IgdmlhDQo+IGludGVsX2FscG1fZ2V0X2Vycm9yKCkuwqAgVGhlIHN1
YnNlcXVlbnQgZGlyZWN0IGNhbGwgaW4NCj4gaW50ZWxfZHBfc2hvcnRfcHVsc2UoKQ0KPiB0aGVu
IHJlYWRzIHplcm8gYW5kIHNraXBzIGNhbGxpbmcgaW50ZWxfYWxwbV9kaXNhYmxlKCkgYW5kIHNl
dHRpbmcNCj4gc2lua19hbHBtX2Vycm9yLCBsZWF2aW5nIExPQkYgcG90ZW50aWFsbHkgZW5hYmxl
ZCBkZXNwaXRlIHRoZSBBTFBNDQo+IGVycm9yLg0KPiANCj4gRml4IHRoaXMgYnkgaGF2aW5nIHBz
cl9hbHBtX2NoZWNrKCkgYWxzbyBjYWxsIGludGVsX2FscG1fZGlzYWJsZSgpDQo+IGFuZCBzZXQN
Cj4gc2lua19hbHBtX2Vycm9yIHdoZW4gaXQgaGFuZGxlcyBhbiBBTFBNIGVycm9yLsKgIFRoaXMg
bWlycm9ycyB3aGF0IHRoZQ0KPiBkaXJlY3QNCj4gY2FsbCBpbiBpbnRlbF9kcF9zaG9ydF9wdWxz
ZSgpIHdvdWxkIGhhdmUgZG9uZSwgZW5zdXJpbmcgY29ycmVjdA0KPiBjbGVhbnVwDQo+IHJlZ2Fy
ZGxlc3Mgb2Ygd2hpY2ggY29kZSBwYXRoIGNvbnN1bWVzIHRoZSBlcnJvciBiaXQgZmlyc3QuDQo+
IA0KPiBpbnRlbF9hbHBtX2Rpc2FibGUoKSBpcyBhbHJlYWR5IGNhbGxlZCB1bmRlciBwc3ItPmxv
Y2sgZnJvbQ0KPiBpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoKSBmb3IgdGhlIFBhbmVsIFJlcGxh
eSBwYXRoLCBzbyB0aGUgbG9jaw0KPiBvcmRlcmluZw0KPiBpcyBlc3RhYmxpc2hlZCBhbmQgc2Fm
ZS4NCg0KVGhpcyBvbmUgd2UgZG9uJ3QgbmVlZC4gTE9CRiBjYW4ndCBiZSBlbmFibGVkIHdoaWxl
IFBTUjIgaXMgZW5hYmxlZC4gSWYNCkFMUE0gZXJyb3IgZ2V0cyB0cmlnZ2VyZWQgd2hlbiBQU1Iy
IGlzIGVuYWJsZWQgLT4gUFNSMiBpcyBkaXNhYmxlZC4NCkFmdGVyIHRoYXQgTE9CRiBtaWdodCBi
ZSB1c2VkLiBJZiB0aGVyZSBpcyBhIHByb2JsZW0gd2l0aCBMT0JGIHRoZW4NCkFMUE0gZXJyb3Ig
aXMgc3VwcG9zZWQgdG8gZ2V0IHRyaWdnZXJlZCBhZ2FpbiBhbmQgdGhlbiBMT0JGIGlzDQpkaXNh
YmxlZC4NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gU3VnZ2VzdGVkLWJ5OiBzYXNo
aWtvIEFJIHJldmlldyA8c2FzaGlrby1ib3RAa2VybmVsLm9yZz4NCj4gRml4ZXM6IDIwNjMxNzRj
MjJkYSAoImRybS9pOTE1L2xvYmY6IENoZWNrIGZvciBzaW5rIGVycm9yIGFuZCBkaXNhYmxlDQo+
IExPQkYiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBTdGVwaGVuIEouIEZ1aHJ5IDxmdWhyeXN0ZXZlQGdt
YWlsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDIgKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTM4MmFk
MWUwMWQ4Li4wNzAxYzhiOTRhYTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBAQCAtMzg2OSw2ICszODY5LDggQEAgc3RhdGljIHZvaWQgcHNyX2Fs
cG1fY2hlY2soc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gwqAJaWYgKGludGVsX2Fs
cG1fZ2V0X2Vycm9yKGludGVsX2RwKSkgew0KPiDCoAkJaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2Vk
KGludGVsX2RwKTsNCj4gwqAJCXBzci0+c2lua19ub3RfcmVsaWFibGUgPSB0cnVlOw0KPiArCQlp
bnRlbF9hbHBtX2Rpc2FibGUoaW50ZWxfZHApOw0KPiArCQlpbnRlbF9kcC0+YWxwbS5zaW5rX2Fs
cG1fZXJyb3IgPSB0cnVlOw0KPiDCoAl9DQo+IMKgfQ0KPiAtLQ0KPiAyLjM5LjUNCg0K
