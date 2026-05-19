Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFR2Kgv0C2pJSAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:24:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F1F577692
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D8AB10EA58;
	Tue, 19 May 2026 05:24:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mwU8yXSD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1D110EA55;
 Tue, 19 May 2026 05:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779168263; x=1810704263;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3gFri0UhXd2w9+nILRrBRS5twgOJdzkqr6rL7Y0gIlo=;
 b=mwU8yXSDy+owp40o3dsp1bhh11+ANQWkEBTH/F3UJpdPuOATso7n6dAW
 MCOkgzEXELs/9bC8kAnuG5OE6NhVoupQwhnT42+3QuMNNi8Gj5+VVbPvP
 d8zH3r/oZADa28uDcQIdTzxY7uXUYLojKcX7eFb7Ze/mKLeVAct3f3o/j
 /N2OLmzzlW90P5hz4zQQwWZFqcjA6pBASDqvuEvICPSkXnePb7nqhFAq1
 C0itlGlaXzzrKP9PZPM9wx3uLPDq4o1AhxCFwZ1QHK+MM9c0ssJ696s05
 cytO7+JyHBCiEb3nYHen9Y6kxxePeCExKiFatHtHDFm0vwekEebuB+t2N Q==;
X-CSE-ConnectionGUID: 9v1Q4IrqTCugr5URY/SVuw==
X-CSE-MsgGUID: 8XpFiItpROeN1e8Kiz5i5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="91430529"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="91430529"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:24:23 -0700
X-CSE-ConnectionGUID: ZJAy0egDQDaaLJKuEskKcA==
X-CSE-MsgGUID: 8flI7Ok5Sl63wT8za1pyeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="241489515"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:24:22 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:24:22 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 22:24:22 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:24:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KvRtRDxnvM//2xzV0QKIR1j34GfPRfOd9bVOAmmnjbnNP7+OMR/gD9bvNFda3NYWvk5IIc4TZd11TIFtbic89eFXlBS5XlChZaWOp6rycst4zzXjniys3THfpFaFfJ62Lp+aumpuBSf4OnjAKzyw/gvV7uDmxk4vC+7nSD1fHIWZOH0myl//mjVzT3TUWcWi9CGKSjupxLpUpjRa0jjCVekjkUt+GAnHj/dcNncYwif6wWulMmsnoXdYtRfljH97QsugGxmAhmnN/wuOcZUU/dkpCoB6f/kIULe68Wcc+3RDbiFOKgPS7I2vI3GWjq5ZKKWtZTDlAjlz6YPh5Qz6dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3gFri0UhXd2w9+nILRrBRS5twgOJdzkqr6rL7Y0gIlo=;
 b=LGPmu5wBYcR8wXDiViKsw8oQH7NJAZ3vWkt8l4Ho/u8WgopwoEjLd3mnz5HuNuFFDlzOFk0G41Dffu7POf3MMfniJPZSJDn72ZZkUicnKqCIxI5MVlrF7ObTeVPiF0FOg2Lh1Z8EvTV01VfaUw5zrjHGLrAqz8lfiXNPw9de5J6BoLiFBpgyeimziUZ5eq2p8LBSCAabDlBT2Rr8lJucKN8g0qw1xcaap8kwJxElU8sSEMoKHZ8o0nzIz4ncbg+y6INmqR8Da3QKVC3MWRy0As23LyVVFEBeYuSlUuoepbXMnBpvleIEYUZCpaBKh2tTG2hTIHGBfv8kyY7X6sMZpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB8164.namprd11.prod.outlook.com
 (2603:10b6:8:167::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.22; Tue, 19 May
 2026 05:24:18 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 05:24:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v3 07/31] drm/i915/bios: add buf_trans for each
 bios_encoder
Thread-Topic: [PATCH v3 07/31] drm/i915/bios: add buf_trans for each
 bios_encoder
Thread-Index: AQHc3cFSGpj6tY29UUCn+ux5aNpbIbYU422A
Date: Tue, 19 May 2026 05:24:18 +0000
Message-ID: <DM3PPF208195D8D01BC03F2C5409DC5DBCFE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-8-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-8-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB8164:EE_
x-ms-office365-filtering-correlation-id: 653e4969-a1f2-4525-86a7-08deb566e00d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799003|4143699003|3023799003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: 9QiwftBFXb79eb2zPzG305wvuhLGB/LiJAnwKnTVnsCZq0ocWJscQVj6GNo/1LsmgcjY0SRci834f2ebGRqbabJA9h+/XikxMHfSJ0dgCx0ZJyWleOge283qLkkox94ugculyLsWe4cosrdS5EASsDLlNJ6rx6eN/hecdAa7nm+HcFES+/3cBWeNmvxZ6zbys6HvGnQVmcuKPab9WiU+cAYyxYUjRmTp4MIfJE1qtS5jH0brSYjeERrlT4sthBfCrYYapuM+HQTeJ7wtirQwydb3arEBhWBKRwMCwc8tQxgWlOBioL0AN1glKk8EwvGIBQRw7q7vE194dp4riqCazThbgEvSjnpw5YyT5CJ8Ef4UeVRpXulBVG1DKtuV4jynInZjawaO210ObD1n+Lu381sd1qgdEWREiH6CsvQ90QepnJ7Tr+leD1VzFofK1RyIIDnOEosdu3deKURecC3nV6nk45fW8YX4yEvNlplugWyh0ycsAcD2V96dEAEpVjo9sKXDkQK14uSCZ+cUdlZGQf05Nblx1N3sADsDf8R5Cu3GxvYRLLrOsf2zPkaExpHqQX7TSQmHyXdRxDanxuLHM6/tqv4mQV5obr5aN2B+1GabN9WoNHrdSjAthe2f++9ZN6kqBm/jaDgsaM1V+086u1Icvrb/gC0TeCKtHmTd8uCXRN1r8XyWxURKfU5ca+hqCCvS36TgXob9PbYUO8wRO/br1QTlxqI7F/8ziPSjJCC8by3pAQK7CfT5/W2lLuA0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799003)(4143699003)(3023799003)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUZVSlJjQXQ0UlcrdVY0Qmk1YWJ4VVNzM3Q5ZjlQTDJVVi94RTMzUm1TVm93?=
 =?utf-8?B?QUdnTGlQazhnYmtWVWcybHJncWlPUC9lMUxIMDd5bDV0aWNuZWFsMVcxUTJz?=
 =?utf-8?B?U3pVNnlZTUUzZkdVS1BkMmc3VkVJaDcrQzNabTFIanE4WVhlQXhHNXNVNUFD?=
 =?utf-8?B?WWtMd2NIR3U1Z1VXeFZaaUNQc2tTYlRYZ0lqWWxyTFJVak0yZldodUtKNzdv?=
 =?utf-8?B?RzJBZXFRWGxZN0ZhTXZRRk1mNUhkODhBN2RjN3dTM3ZvM0szeWdiTzJTdC8v?=
 =?utf-8?B?ZVZhMDhFd0V6RThvUzhWNW5LL1ZUUS93ZWJRaFV0NFhUQ0lkTjVteXdJUjRh?=
 =?utf-8?B?TjNqYmlpYnM3cFJrNkZmSEEzMFA3dEtTOFh1djRJa1hmSVlwZzhvTnAyd3lU?=
 =?utf-8?B?Vi91NG1mK2phSyt3d2Q0QjdUMSt3Z3hvK2pBNVpydkFSTTVXS2lZMTVpZUVL?=
 =?utf-8?B?V3l1YUZzeGc2T1Rsb1V6MkVveWVxWENkNVhlTXgwYVdCR09MZEh1OE5uS0pz?=
 =?utf-8?B?SHdKZmJLYjFIUGZxTUx2S3F2V3V0czI2RDEyL2NmcWFRcGFRNHRDb1JTdFlD?=
 =?utf-8?B?Z3gzVElIR29VT3VrY0lOczJjU1VHNS9UUTVrRDB4RCtBMFNSdFdyZVBwZU5H?=
 =?utf-8?B?bzBNbVRCZ3JBU0JUWDIwMDNucFpXRm5XVml0dWpNeDBEdjNsamJWZThmN3Q3?=
 =?utf-8?B?TUtXYmt5TE9TVlM3endtbjR1TllDcWczN0FDYVVJODZZTVVMWjhDVmlNeUdK?=
 =?utf-8?B?ZkhWTVRFYkhtc2F5bWo2bExXUTRhOW5EM3FHZksyTkFEY25XNWRrcDNoZS8z?=
 =?utf-8?B?cGd6MmRwd2Zmb0EyZHo4RGEvMmQ2T3ZNRUF3czRycjB6VDZmN0czUXlWWFBO?=
 =?utf-8?B?SVVUUkJqSWFmSGNlL3lvbG9sUW5xdklZdkRBcmNMVG9TSVFUdGREV2lnc2d1?=
 =?utf-8?B?Z2gvNGlyYjZTYXhvUmZhNnc4Q1J1L0ZXWHFuZmtGeE1telhDM21JU2N2cmpR?=
 =?utf-8?B?OHpaTCtZRVpnVDlBTWE3ajFxV1JFaGxCclV2OHF2ZXJER1JLbnFKMUdSam1M?=
 =?utf-8?B?bC9FUCtwTVdIbVpsMTY1Z3oxYjRPemY2VTBWdExId1VCK251WjluME5qVndQ?=
 =?utf-8?B?YVZtdGNTUnhrSFlPSWJ4VUVOcDNGeW1HM0FRdU5qTGlCSVJvRHBVVkZzdU4x?=
 =?utf-8?B?bVlBVmhYZVJFQW96b2lYYmN5ZmdOMVBsMG1HTlRaREhBRDJSWWNmWE9HN2Z5?=
 =?utf-8?B?eVBXYVM5bnZlc0ZabVRQRlZNL0JsbURxdVQzZVBKQWM5a2RGTTQ5TlZnSFIw?=
 =?utf-8?B?Sy8zeGRBT2F6NEtwRWNSTVpzYkZvQURWeUxpbldoOUxwSC9wS2tpdU04Mm0z?=
 =?utf-8?B?K3lYalVQMEFWeDlZNlFQQkpvczNHY1oreEtUUDBJdldCMVJ5M2FhRVp0elR6?=
 =?utf-8?B?V2dSRVhaRU1Cbk9lRlJSVkhuR2JlQXNIY0w1NWZtcEs2WmREcTl6WWpRUFU2?=
 =?utf-8?B?UktFc04xckZxbEVQdk9YQzhsVVR5SThqck4wYmVtbzdnd1N0c2tmSU5rakJG?=
 =?utf-8?B?aHZsZ3gzcWw4TmNmc1IxSGtzbUozVlZWejQ1cXhHeE9RTlFka2dNdGJjeG85?=
 =?utf-8?B?d3lRS3dJTHJUMnVhNXB4aW42bVlkdmtoeExtNmdrTC9zMUgrSDl1T3cwdDNn?=
 =?utf-8?B?cFhQcERsaEJGNEdhWXg0NkRlamJUcC90VVVWSFVObDFpczZ0YVJPdFhCZDhI?=
 =?utf-8?B?aTB5OHg4cGhxMWFkTStPRm5pSHpncW55bmJIczhlalZMb09sOHR5TVpYTjJS?=
 =?utf-8?B?SFNvbUM4bE1lTnp6dmlsZmlSOFVJaEhMVkxjSkdvc1B5dmFUTFFKSm1CMUlJ?=
 =?utf-8?B?Mkp1ZW1GeHdqVmMreXZYZC9lWFZoZmQwb2FPY1lFZ3lvSzlrMU1tYmp6bEpC?=
 =?utf-8?B?b1d5Z3BwbHNSWXFtMUhWeXExL3psdjBCd0NtanJMd0ZJNmtnVFFUSGhkZlEw?=
 =?utf-8?B?cjlmSlRIc3JMNm85STQrR0VTcmc3NE9DUmFsYSsyU2hRY2R0QVpKaDg4am5I?=
 =?utf-8?B?ZWZSTXFvZ2s3ZDhudFNFVTYvUlgrdkpCaHJ0WmVkQzM4T2lqSFJDRXkxS3Jw?=
 =?utf-8?B?d2JvUXM3OU1GZ1VpMVFYSCtaU1drRHFJRjZaNlRCeXQwMkFWTm5ubE81dHIy?=
 =?utf-8?B?c3JZdzYyL1hsSnYxQWVVekpLYW1rTE81Vi94UDZMYTg2YXVSakd5TUc3UmRN?=
 =?utf-8?B?eXViUXArYVpkT3RqeEJJOTJYWFczQk5EMkpSM2VCYWRTNHB0a1RQR0VaOWtw?=
 =?utf-8?B?Q1M5Mk1pc2c0Vm5JZk0zM28vQXVLdjRuVkU1eVZ5UEQwcktQK1M2QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jG6a6T3ILVoDx3x5/+XDpdt2tDoAOLQDzMGe3dxVDoFSMEwOZiXhWK5p924drSUMmNFcSg4BD2OlN4dr1gNprXeegEdUSOWgy3m2Kf8K1Os4Vn7pI17GkkieXDZuIGX4ztT7mwxhoWVIEivFeLl+8d3GzIRbNNk1Txv/0tgJ3Gc9KqShZUu0igJbQfF3kG+ILq5DiXRK5RkjqqGviasDryJq9ILraMqJJI1VAPimNyEaFpxh12DYSOON8t/O08O//s4Tl9+fFzQxVBtxQz/6U5flQNXc+P9fo7dZ8jm2YvRnb7QUJN4jGsQMg3zZmcSbcTeNW0AyECVRePQywRnpew==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 653e4969-a1f2-4525-86a7-08deb566e00d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 05:24:18.3368 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +4sLOKmWdomK0Pyo8137Em6gbJ/ws7yHZPZvzxszmtfyn6BoFX25og7EkQmeSeMh5hwCHWRVd6gqaGTaLfBbmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8164
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 19F1F577692
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDcvMzFdIGRybS9pOTE1L2Jpb3M6IGFkZCBidWZfdHJhbnMg
Zm9yIGVhY2gNCj4gYmlvc19lbmNvZGVyDQo+IA0KPiBFdmVyeSBkZXZkYXRhIG5lZWRzIGEgc2Vw
YXJhdGUgaW50ZWxfZGRpX2J1Zl90cmFucyBzaW5jZSBlYWNoIHBvcnQgY2FuDQo+IHJlcXVlc3Qg
YW4gb3ZlcnJpZGUuIEFkZCBidWZmZXIncyBwb2ludGVyIGludG8gaW50ZWxfYmlvc19lbmNvZGVy
X2RhdGEuDQo+IA0KPiBJbml0aWFsaXplIHRoZSBwb2ludGVyIHRvIE5VTEwgd2hlbiBubyBWQlQg
d2FzIHByb3ZpZGVkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNo
YWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMgfCA4ICsrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYw0KPiBpbmRleCA2YWM4ZGQxNmVhN2I4Li5hM2YwMzM0YzNhNTgyIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtNzMsNiArNzMsNyBA
QA0KPiAgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhIHsNCj4gIAlzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheTsNCj4gDQo+ICsJc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKmJ1
Zl90cmFuczsNCj4gIAlzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyBjaGlsZDsNCj4gIAlzdHJ1
Y3QgZHNjX2NvbXByZXNzaW9uX3BhcmFtZXRlcnNfZW50cnkgKmRzYzsNCj4gIAlzdHJ1Y3QgbGlz
dF9oZWFkIG5vZGU7DQo+IEBAIC0yNjU2LDYgKzI2NTcsMTEgQEAgc3RhdGljIHZvaWQgc2FuaXRp
emVfaGRtaV9sZXZlbF9zaGlmdChzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRl
dmRhdGEsDQo+ICAJfQ0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIG92ZXJyaWRlX3Zzd2luZ19w
cmVlbXBoKHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YQ0KPiArKmRldmRhdGEpIHsNCj4g
KwlkZXZkYXRhLT5idWZfdHJhbnMgPSBOVUxMOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgYm9vbA0K
PiAgaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX2NydChjb25zdCBzdHJ1Y3QgaW50ZWxfYmlv
c19lbmNvZGVyX2RhdGENCj4gKmRldmRhdGEpICB7IEBAIC0yODQ3LDYgKzI4NTMsNyBAQCBzdGF0
aWMgdm9pZCBwYXJzZV9kZGlfcG9ydChzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEg
KmRldmRhdGEpDQo+ICAJc2FuaXRpemVfZGVkaWNhdGVkX2V4dGVybmFsKGRldmRhdGEsIHBvcnQp
Ow0KPiAgCXNhbml0aXplX2RldmljZV90eXBlKGRldmRhdGEsIHBvcnQpOw0KPiAgCXNhbml0aXpl
X2hkbWlfbGV2ZWxfc2hpZnQoZGV2ZGF0YSwgcG9ydCk7DQo+ICsJb3ZlcnJpZGVfdnN3aW5nX3By
ZWVtcGgoZGV2ZGF0YSk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGJvb2wgaGFzX2RkaV9wb3J0X2lu
Zm8oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpIEBAIC0zMDU3LDYNCj4gKzMwNjQsNyBA
QCBpbml0X3ZidF9taXNzaW5nX2RlZmF1bHRzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
KQ0KPiAgCQkJYnJlYWs7DQo+IA0KPiAgCQlkZXZkYXRhLT5kaXNwbGF5ID0gZGlzcGxheTsNCj4g
KwkJZGV2ZGF0YS0+YnVmX3RyYW5zID0gTlVMTDsNCg0KUmVkdW5kYW50IHNpbmNlIGRldmRhdGEg
aXMgYWxsb2NhdGVkIHZpYSBremFsbG9jX29iaiBzaG91bGQgYmUgTlVMTCBieSBkZWZhdWx0Lg0K
DQpBbHNvIEkgdGhpbmsgcGF0Y2hlcyA3LDggYW5kIDkgc2hvdWxkIGJlIHNxdXNoZWQgdGhleSBs
b2dpY2FsbHkgYWNoaWV2aW5nIHRoZSBzYW1lIHRoaW5nIHRvZ2V0aGVyLg0KDQpSZWdhcmRzLA0K
U3VyYWogS2FuZHBhbA0KDQo+ICAJCWNoaWxkID0gJmRldmRhdGEtPmNoaWxkOw0KPiANCj4gIAkJ
aWYgKHBvcnQgPT0gUE9SVF9GKQ0KPiAtLQ0KPiAyLjQ1LjINCg0K
