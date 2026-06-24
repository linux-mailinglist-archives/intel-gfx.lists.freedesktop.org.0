Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FFYLBg+WO2o0aAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:32:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B356BC958
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:32:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cN7mlvwL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD7410EE06;
	Wed, 24 Jun 2026 08:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C664510EE06;
 Wed, 24 Jun 2026 08:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782289932; x=1813825932;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FGyuEg101VzpWlZRcn8YMHWVMSBlpLlp0km9bYGisjs=;
 b=cN7mlvwL+FD3dt71vri3fJR3nyiDW1pOEtU/hyWJg/EyIG4OKa3RAqEU
 3PW46Y5dxOgDkV7PYp47gYlFWw+kE5lpgom/n3VYU7DXHJNzzLVPUq7Lv
 MoUzMosLt+1ffjxKjRRO5bEtwr75t2XD7Y0GT3KlxmOWJsWtdVOEwAhw+
 wObYQz2oMkzGFy3NUCxMYMoFZ9pIuj/DtAM2dkyYbz9VFNGq+MlD8fVrO
 IrBHhNzS75wR9IjTCjpoh17ohmASpJKxWfVDm3Ga7aHVa8DzWSWrPEfq7
 oMjnmIteCStnX0Y3sZwSn/aFjykVUfmMalc0a4IR4BeN9HHvAbpw2Abo8 Q==;
X-CSE-ConnectionGUID: 6zUTY/hfQOCMDhIfR9NY4w==
X-CSE-MsgGUID: M36JYNqjRV2f0f0c9JlkKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="94442719"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="94442719"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 01:32:11 -0700
X-CSE-ConnectionGUID: pkH4Mx1UTlu/Ta8FrTyWww==
X-CSE-MsgGUID: UZwnzLX1SRygfs19yyXtDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="287896444"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 01:32:11 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 01:32:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 01:32:10 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.43) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 01:32:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fzW5qW/PRi4bI1aiTaBebKWEjYIjAJA94UrzuD1jToddg4MlTbnO/RQiUEz02IQ2RNRIrOB3lnD+zH6xXZbJw7IzItsCys+d242RIbf/0SmwdLXTf3/m71gk3m40F2fjzhDPJ4jtQ/lPfR2xSGSxaCp59uqLzpsnBtkjKFSK2Wrd5PO3CbeE++DvF+JcjwrJClUy+9ke/Qon1rbPlevQ7qgsENYtaivJ1LlytW4GuJ4m7SmTaw1rGDFTp+ldvvkMzISOjgrKskmRboxF3JmNDCsNhiJEpDuZjJx9Tf3lxbZW3+Hveqnp8sMPG7HPKJKhLm/t7RfEbGhLKlbFpcQrzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FGyuEg101VzpWlZRcn8YMHWVMSBlpLlp0km9bYGisjs=;
 b=jPhGYdSdiQtZK3YnSomLBL+8n+eYLuIvpJ27+hgWkYGO6iQ+qgwqMDrLnP6UosEuGXBnlW1ASEieQzoz2UXhBxVXyA4boMICg9JS5bOzimps9+pdZBR0B1rhOdnpB7chpVeeFJUmiDrEtj1DOgINFR/t5KOqwKqqmb4cWN7RUeWjPH4KczDClPjPAeoJJ5qHQE+I4w1XN0FmBEAJdkt1WsZWP2/v/OhIQgmdB57gQlyid/Q80ze8O22FAsP5yklNFVFmEMXZQTIM0FdGAVENX+fcvY4DYegXhtMGI0SvfVOrFrmBREmCUfF6MFD+w6NFsZQgpBfvS8irE+OhzAB1lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY5PR11MB6164.namprd11.prod.outlook.com
 (2603:10b6:930:27::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.18; Wed, 24 Jun
 2026 08:32:07 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 08:32:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 14/28] drm/i915/dp_link_caps: Pass supported link rates
 to link caps update
Thread-Topic: [PATCH v2 14/28] drm/i915/dp_link_caps: Pass supported link
 rates to link caps update
Thread-Index: AQHc/c190imWgCMrk0a30pfgdxrR4rZNbC8Q
Date: Wed, 24 Jun 2026 08:32:06 +0000
Message-ID: <DS4PPF69154114F77A7DC810FBA78798088EFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-15-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-15-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY5PR11MB6164:EE_
x-ms-office365-filtering-correlation-id: bc361745-4583-4aa8-795c-08ded1cb1398
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|38070700021|18002099003|22082099003|6133799003|4143699003|3023799007|56012099006|11063799006;
x-microsoft-antispam-message-info: LbYVRQ0qqNNhmyE1JCWp5fIiYsG580Eks7yvp90pNxTH7MLRQCsmOj8eUBLcx64gKWvXt4c5wyjsMreRoX7mZfV7RG7ajvXrxYIz6Joae2erslPgGkHU0u69IY+puY5KA3WFAU9A5WTwaT+vvm4YrwEeUsHUfpNHNcH3cXLE/N0ONXt8gSZ14Kbd3XeFWd9eIrDy4TCL1Rd643NxHipah45QQ67kF542RhpBOUh7gPa5R5KtzD4L/uR6SWx3XwvZxLPAyOXrLFbRgE0S087BfJglaSNOwnwtF31JOAABWl56Vga4OZcOmwsaRRwz/BW6z/Wn71HpvQsZ8frgk2YxBJdzKl1NFzlJO/wjV3LfsuoZbyJ81aoPzY3RnTSGNfacFxVlO7011zBlozYl0ODWairRI/d0wrbkbsj6xFmNgVDU56IYPDi93mCSk2c9s0jp8JJKfyOhhgblWDrCK1dHFbA/gt0+k1f7slytP2Y40W26WP0pXSn4qTEBCeGYjs76bDDI9x4yBJNoyyTDF8Ao+9xRaAPDq18PftWsHm6W77IBPpRmvKfMi8QmUm3rLE4bK+XtX9xwGtOOYlCMqC5CBuMNDcQWTx5MYDAPYqWFALEyKZYje/77zjlra76HY2y2OU5I+BibBEbuzLGRN4YPIpqPZLZ1SV+5Wb9fo6DcmzPdyzvPkDumNfaZmPwPPdotj/TZHsBF3yeZz1ySL8inJYUq3PbfRN1wCbnX5T/IAIM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(6133799003)(4143699003)(3023799007)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2gxSVAxRmZWSnJZdHFoSEFLT01teXFkYU4wUXZUNVlPL2V6WEQ0Q1VZcmNm?=
 =?utf-8?B?VE1Va0oyNG82Rk82ZWRoQ1I2OG5YdnliRUlxNzNJTUt0MkIxMmJrZHp5cXhI?=
 =?utf-8?B?SDBCV0JzZTZCZkgyUVZKT251M1FtMVdtUjVtU29peHJpclJSL3NrdHo1RGRV?=
 =?utf-8?B?dExlaDFYelVIenRQdVBZVzlWQzlPSFhsRlk1dnJ0SW15TGtZQlNWUjk4OE1a?=
 =?utf-8?B?TnNVZ29iSWFrV2REa0VHUUZIZzFOMnFHU1RFYThSRnMrTkkwdGtlWS81djRT?=
 =?utf-8?B?ZzJZeVpGWUlUNVpWQkFWbzVvd2hpQjcyK096b0x1WHZXcVgvNlpacmp0d1BW?=
 =?utf-8?B?SWI2Snk4bmprT0FJeTZNaExYTnJCZU5sZ1IrWGZ4ZHg1cjdDc0h1cldmeVJ3?=
 =?utf-8?B?S3NHQzN0YzhhazlMTXhQa3VRZ0ZvUUs5YThyclBjbnUwalRRVEdDT3pWK2tj?=
 =?utf-8?B?Vm5QeEQyYVdSbDA1VUEydlhOM2VYS0gyb3ZrQVk5cVM0enJSLzJ1cFYxdGVZ?=
 =?utf-8?B?K0ZxcGlsNzBYbm0xNmdzcjJjVlVheC80alVReXZkYTVnZUdMOG1PVW9aZ2NH?=
 =?utf-8?B?eHVDTXJlYkVEdGhaUWlta1k2R0hkc2Q4ellFbEE1czhvUlpmU2FpSzh5YlJp?=
 =?utf-8?B?WGRhcVJhSlUzczltbnFpakdZckNOdWE2cmc4L3REaHlCeVhVTGdxZk82K1BT?=
 =?utf-8?B?QzZvUUtWVXF0cmVsR05lSkhmUG1HTVlsbzJ2bTAwWkJVWU41SFlSZjlQYUNZ?=
 =?utf-8?B?V1J5cHRqWUwrK0xreTJQNmlSemRzU0U3cU5lcUtJSjkwTzEvUjZJM05MWTZs?=
 =?utf-8?B?VXQwRDNhNThsenU4TGpaQ2VZaW1wbWpRRHpFajVSbnFPcGgvWGhMNE83K016?=
 =?utf-8?B?N1FKa3Z2U2E0RnA3U2JoTG0yODJiQWxZbmxGN0ZiajdhSGJ4WFdyMU44bkJa?=
 =?utf-8?B?SHpBa3RtelZOTXJGYW9WY0ZDSXYxdDI5YWJYSGdhQi94K3lmWHZIM1VjTVFS?=
 =?utf-8?B?aFY1eEdwVGJlZkJ1LzZsdlkyeFU1ejQ0UFJOWXZYUWhvR00xc3gxSUorMEFW?=
 =?utf-8?B?QmIrYmtrTFZRcDhHNU9ObjdobkZTeW9EVmlKY0x1RVBhdUFuUUR1WmNzQlFR?=
 =?utf-8?B?N2hXb3pXcTZzTFRaM1NUWWlBNlh0VUcxZWlXQTZIb0xqYllCZnpVaFNmQU5E?=
 =?utf-8?B?clBWR0lHWDNQdmFxOFRBRUlxZWZTWVM0U2lHTFdhMGxlbUlxaFllVG1lblVx?=
 =?utf-8?B?WC91T0lmaS8xL1pwVWNqNjlNZ0xXRXVCcWgydnlsYVJBLzNLbktuRzFzMEZN?=
 =?utf-8?B?SmJwSEtqa3VsRUZpTk9NaVhURG94Q0ZNTndYd0FiTWVQTitnWmV0WmdVMkhi?=
 =?utf-8?B?VFg3bEh6NmVrajVHdlNaRkxXNC9CdlVsdkJHS0c1aGc5WURNWDBUMVExcUFK?=
 =?utf-8?B?aTBMcEtSZC9kZUQ0aWtaMEV6VEpiSmt0Q3A1N054T3JPTkpFWTNWVi8xcjIw?=
 =?utf-8?B?SnE2WVp0ZVBlemRTcG0rZmZMQmttMUUwKzNVeUFPczFmaTNpWXd2cVZOYTRR?=
 =?utf-8?B?WmlQeUUvZWczcHlqRmZENk1RcVVGbW9DOUtpSTRLUlBjMEQxUDVrTmRvRG1B?=
 =?utf-8?B?YzRBdTVWWkdrSGlZVFBvNyszQWZyWTVmclFiYVk5WWQyTUJRRjhpUTU1MWRL?=
 =?utf-8?B?VVdPS1AwTDdlRTBhampaWi9HUGxBOU1RTWlMUnNxNG9uT0RTMHRNRzljejQ0?=
 =?utf-8?B?RU1YTjB3N3NOYUhueE91anVtR2diRlovL0UyenZ1Sk9RTjN6aGc4azlGQzNk?=
 =?utf-8?B?ZGlIVmdkcjhVaDdiRmdROFJ4bHZwdWNqakdkK2JMYTR5WS9NaFZhd0UwNVFt?=
 =?utf-8?B?cElPRVB3NVVvWE5HTUhRMFNnNlh1dFRxWUQ1OEdhWmFkc3h4TVpSaVc4djJk?=
 =?utf-8?B?NVdON2ZpMGRhcUc3VWJRb1lFdmJYbFRtM0U4cThJbWNObDhGcjZ0OUtsajM2?=
 =?utf-8?B?QVg1bEtjZWd1TEpNZ010TzE2aUkra0VkSitMRXlkVEx4SG5PUDZzNEcrSVlQ?=
 =?utf-8?B?RDd3TFRRREp5M2NMM0ZraG90clU1TGNnK0c2d0pLY3RRNkdQRHVlMUlJakJF?=
 =?utf-8?B?bzB5dlhLblFYQjAyNVVuaERpdDViRWRMMmNpSi8yM0h3dnN5YUZEdDlwNks5?=
 =?utf-8?B?eHpJYzZXcjBibVQweHY3YW5pM1pIKzhLamxTNytzNmNvcXpTTnI2d0RVVXIv?=
 =?utf-8?B?WjVOTzZwQUkrNm9MUDh4Q2tLZFJwakdkOWFZbGxmeU55ckplSGpTbEdsOWdk?=
 =?utf-8?Q?ftsh3djSW0klfKKmTO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FTQd6qtro4UqIp+cW2bZwxzgnsgsGNyCXltGD9X6I+ygC7xPIXK5OzV19q9fgzZogFRFhCNKRRyU+PInkIBaAXOltyJk3DlVWUdEjH7SgfXQkEEUteqehNLs02Ns6/7WMOPe75FIIkEYi2Nid49K0vnbbISDa8fp8zXaZk5YjWw8T70SLuBbb/O7mz+SoyfZC316Z/v3kA3lNvoyNIprKQ9svAPReKjuDyMmG8H+0howThKOO34IDRundEvcLrGoZHbWeWGi9GcRMr2DSkd0ZUPZiJqu4XFfxp80YpujVUObGa8bRxCZXEO6YNvxi2vac2Go5FFnwFbIMQatmrBYIw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc361745-4583-4aa8-795c-08ded1cb1398
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 08:32:07.0255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NyhGkZKAeJC5bnb1xC3t/RKz6MLF+Z0JOuNx3HyhPYG9sY80wvU3MMnmg62PDHkoM7SCikivRtHmPnRVNru3yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6164
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: 49B356BC958

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDE0LzI4XSBkcm0vaTkxNS9kcF9saW5rX2NhcHM6IFBhc3Mgc3VwcG9ydGVk
IGxpbmsgcmF0ZXMgdG8gbGluayBjYXBzIHVwZGF0ZQ0KPiANCj4gUGFzcyB0aGUgc3VwcG9ydGVk
IGxpbmsgcmF0ZXMgZXhwbGljaXRseSB0byBpbnRlbF9kcF9saW5rX2NhcHNfdXBkYXRlKCkuDQo+
IFRoaXMgcHJlcGFyZXMgZm9yIHRyYWNraW5nIHRoZXNlIGNhcGFiaWxpdGllcyBpbnRlcm5hbGx5
IHdpdGhpbiB0aGUNCj4gbGluayBjYXBzIG1vZHVsZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAyOCArKysrLS0tLS0tLS0tLS0tLS0tDQo+ICAu
Li4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMgfCAyOCArKysrKysr
KysrKysrKystLS0tDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19j
YXBzLmggfCAgNSArKystDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDI4
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiBpbmRleCA2MzVlM2VkZTBkNDFlLi5kMmI5YjZmY2UyYjMyIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC02OTgsMzYgKzY5OCwyMCBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kcF9nZXRfY29tbW9uX3JhdGVzKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ICAJfQ0KPiAgfQ0KPiANCj4gLXN0YXRpYyBib29sIGludGVsX2RwX3NldF9jb21t
b25fcmF0ZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gLXsNCj4gLQlpbnQgbnVtX29s
ZF9jb21tb25fcmF0ZXMgPSBpbnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlczsNCj4gLQlpbnQgb2xk
X2NvbW1vbl9yYXRlc1tEUF9NQVhfU1VQUE9SVEVEX1JBVEVTXTsNCj4gLQ0KPiAtCS8qIFRPRE86
IEFkZCBhIHN0cnVjdCBjb250YWluaW5nIGJvdGggcmF0ZXMgYW5kIG51bWJlciBvZiByYXRlcy4g
Ki8NCj4gLQlzdGF0aWNfYXNzZXJ0KF9fc2FtZV90eXBlKG9sZF9jb21tb25fcmF0ZXNbMF0sIGlu
dGVsX2RwLT5jb21tb25fcmF0ZXNbMF0pICYmDQo+IC0JCSAgICAgIHNpemVvZihvbGRfY29tbW9u
X3JhdGVzKSA9PSBzaXplb2YoaW50ZWxfZHAtPmNvbW1vbl9yYXRlcykpOw0KPiAtCW1lbWNweShv
bGRfY29tbW9uX3JhdGVzLCBpbnRlbF9kcC0+Y29tbW9uX3JhdGVzLA0KPiAtCSAgICAgICBudW1f
b2xkX2NvbW1vbl9yYXRlcyAqIHNpemVvZihvbGRfY29tbW9uX3JhdGVzWzBdKSk7DQo+IC0NCj4g
LQlpbnRlbF9kcF9nZXRfY29tbW9uX3JhdGVzKGludGVsX2RwLCBpbnRlbF9kcC0+Y29tbW9uX3Jh
dGVzLCAmaW50ZWxfZHAtPm51bV9jb21tb25fcmF0ZXMpOw0KPiAtDQo+IC0JcmV0dXJuIG51bV9v
bGRfY29tbW9uX3JhdGVzICE9IGludGVsX2RwLT5udW1fY29tbW9uX3JhdGVzIHx8DQo+IC0JICAg
ICAgIG1lbWNtcChvbGRfY29tbW9uX3JhdGVzLCBpbnRlbF9kcC0+Y29tbW9uX3JhdGVzLA0KPiAt
CQkgICAgICBudW1fb2xkX2NvbW1vbl9yYXRlcyAqIHNpemVvZihvbGRfY29tbW9uX3JhdGVzWzBd
KSk7DQo+IC19DQo+IC0NCj4gIC8qIFJldHVybiAldHJ1ZSBpZiBhbnkgY29tbW9uIGxpbmsgcGFy
YW0gY2hhbmdlZC4gKi8NCj4gIHN0YXRpYyBib29sIGludGVsX2RwX3NldF9jb21tb25fbGlua19w
YXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIHsNCj4gKwlpbnQgbnVtX2NvbW1v
bl9yYXRlczsNCj4gKwlpbnQgY29tbW9uX3JhdGVzW0RQX01BWF9TVVBQT1JURURfUkFURVNdOw0K
PiAgCWJvb2wgcGFyYW1zX2NoYW5nZWQgPSBmYWxzZTsNCj4gDQo+IC0JaWYgKGludGVsX2RwX3Nl
dF9jb21tb25fcmF0ZXMoaW50ZWxfZHApKQ0KPiAtCQlwYXJhbXNfY2hhbmdlZCA9IHRydWU7DQo+
IC0NCj4gIAlpZiAoaW50ZWxfZHBfc2V0X21heF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCkp
DQo+ICAJCXBhcmFtc19jaGFuZ2VkID0gdHJ1ZTsNCj4gDQo+IC0JaW50ZWxfZHBfbGlua19jYXBz
X3VwZGF0ZShpbnRlbF9kcCk7DQo+ICsJaW50ZWxfZHBfZ2V0X2NvbW1vbl9yYXRlcyhpbnRlbF9k
cCwgY29tbW9uX3JhdGVzLCAmbnVtX2NvbW1vbl9yYXRlcyk7DQo+ICsJaWYgKGludGVsX2RwX2xp
bmtfY2Fwc191cGRhdGUoaW50ZWxfZHAsDQo+ICsJCQkJICAgICAgY29tbW9uX3JhdGVzLCBudW1f
Y29tbW9uX3JhdGVzKSkNCj4gKwkJcGFyYW1zX2NoYW5nZWQgPSB0cnVlOw0KPiANCj4gIAlyZXR1
cm4gcGFyYW1zX2NoYW5nZWQ7DQo+ICB9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBpbmRleCAyMDc0OTUyOTMxNzM4Li42Nzlk
NTljYzI1NmM5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2xpbmtfY2Fwcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua19jYXBzLmMNCj4gQEAgLTgsNiArOCw3IEBADQo+ICAjaW5jbHVkZSA8bGlu
dXgvbG9nMi5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4gICNpbmNsdWRlIDxsaW51
eC9zb3J0Lmg+DQo+ICsjaW5jbHVkZSA8bGludXgvc3RyaW5nLmg+DQo+ICAjaW5jbHVkZSA8bGlu
dXgvdHlwZXMuaD4NCj4gDQo+ICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPiBAQCAtMTMx
LDI1ICsxMzIsMzkgQEAgc3RhdGljIGludCBsaW5rX2NvbmZpZ19jbXBfYnlfYncoY29uc3Qgdm9p
ZCAqYSwgY29uc3Qgdm9pZCAqYiwgY29uc3Qgdm9pZCAqcCkNCj4gIAkgICAgICAgaW50ZWxfZHBf
bGlua19jb25maWdfcmF0ZShpbnRlbF9kcCwgbGNfYik7DQo+ICB9DQo+IA0KPiAtdm9pZCBpbnRl
bF9kcF9saW5rX2NhcHNfdXBkYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICsvKiBS
ZXR1cm4gJXRydWUgaWYgdGhlIHN1cHBvcnRlZCBsaW5rIHBhcmFtZXRlcnMgaGF2ZSBjaGFuZ2Vk
LiAqLw0KPiArYm9vbCBpbnRlbF9kcF9saW5rX2NhcHNfdXBkYXRlKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsDQo+ICsJCQkgICAgICAgY29uc3QgaW50ICpyYXRlcywgaW50IG51bV9yYXRlcykN
Cj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICpsaW5rX2NhcHMgPSBpbnRlbF9k
cC0+bGluay5jYXBzOw0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50
ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICAJc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnX2Vu
dHJ5ICpsYzsNCj4gKwlib29sIGxpbmtfcGFyYW1zX2NoYW5nZWQgPSBmYWxzZTsNCj4gIAlpbnQg
bnVtX2NvbW1vbl9sYW5lX2NvbmZpZ3M7DQo+ICAJaW50IGk7DQo+ICAJaW50IGo7DQo+IA0KPiAg
CWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sICFpc19wb3dlcl9vZl8yKGludGVsX2RwX21h
eF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCkpKSkNCj4gLQkJcmV0dXJuOw0KPiArCQlyZXR1
cm4gZmFsc2U7DQo+ICsNCj4gKwlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBudW1fcmF0
ZXMgPiBBUlJBWV9TSVpFKGludGVsX2RwLT5jb21tb25fcmF0ZXMpKSkNCj4gKwkJcmV0dXJuIGZh
bHNlOw0KPiANCj4gIAludW1fY29tbW9uX2xhbmVfY29uZmlncyA9IGlsb2cyKGludGVsX2RwX21h
eF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCkpICsgMTsNCj4gDQo+IC0JaWYgKGRybV9XQVJO
X09OKGRpc3BsYXktPmRybSwgaW50ZWxfZHAtPm51bV9jb21tb25fcmF0ZXMgKiBudW1fY29tbW9u
X2xhbmVfY29uZmlncyA+DQo+ICsJaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgbnVtX3Jh
dGVzICogbnVtX2NvbW1vbl9sYW5lX2NvbmZpZ3MgPg0KPiAgCQkJCSAgICBBUlJBWV9TSVpFKGxp
bmtfY2Fwcy0+Y29uZmlncykpKQ0KPiAtCQlyZXR1cm47DQo+ICsJCXJldHVybiBmYWxzZTsNCj4g
DQo+IC0JbGlua19jYXBzLT5udW1fY29uZmlncyA9IGludGVsX2RwLT5udW1fY29tbW9uX3JhdGVz
ICogbnVtX2NvbW1vbl9sYW5lX2NvbmZpZ3M7DQo+ICsJLyogVE9ETzogQWRkIGEgc3RydWN0IGNv
bnRhaW5pbmcgYm90aCByYXRlcyBhbmQgbnVtYmVyIG9mIHJhdGVzLiAqLw0KPiArCXN0YXRpY19h
c3NlcnQoX19zYW1lX3R5cGUocmF0ZXNbMF0sIGludGVsX2RwLT5jb21tb25fcmF0ZXNbMF0pKTsN
Cj4gKwlpZiAobnVtX3JhdGVzICE9IGludGVsX2RwLT5udW1fY29tbW9uX3JhdGVzIHx8DQo+ICsJ
ICAgIG1lbWNtcChyYXRlcywgaW50ZWxfZHAtPmNvbW1vbl9yYXRlcywgbnVtX3JhdGVzICogc2l6
ZW9mKHJhdGVzWzBdKSkpDQo+ICsJCWxpbmtfcGFyYW1zX2NoYW5nZWQgPSB0cnVlOw0KPiArDQo+
ICsJbWVtY3B5KGludGVsX2RwLT5jb21tb25fcmF0ZXMsIHJhdGVzLCBudW1fcmF0ZXMgKiBzaXpl
b2YocmF0ZXNbMF0pKTsNCj4gKwlpbnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlcyA9IG51bV9yYXRl
czsNCj4gKwlsaW5rX2NhcHMtPm51bV9jb25maWdzID0gbnVtX3JhdGVzICogbnVtX2NvbW1vbl9s
YW5lX2NvbmZpZ3M7DQo+IA0KPiAgCWxjID0gJmxpbmtfY2Fwcy0+Y29uZmlnc1swXTsNCj4gIAlm
b3IgKGkgPSAwOyBpIDwgaW50ZWxfZHAtPm51bV9jb21tb25fcmF0ZXM7IGkrKykgew0KPiBAQCAt
MTY1LDYgKzE4MCw5IEBAIHZvaWQgaW50ZWxfZHBfbGlua19jYXBzX3VwZGF0ZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQ0KPiAgCSAgICAgICBzaXplb2YobGlua19jYXBzLT5jb25maWdzWzBd
KSwNCj4gIAkgICAgICAgbGlua19jb25maWdfY21wX2J5X2J3LCBOVUxMLA0KPiAgCSAgICAgICBp
bnRlbF9kcCk7DQo+ICsNCj4gKwkvKiBUT0RPOiBBbHNvIGRldGVjdCBhIGNoYW5nZSBpbiB0aGUg
bWF4IGxhbmUgY291bnQuICovDQo+ICsJcmV0dXJuIGxpbmtfcGFyYW1zX2NoYW5nZWQ7DQo+ICB9
DQo+IA0KPiAgdm9pZCBpbnRlbF9kcF9saW5rX2NvbmZpZ19nZXQoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwgaW50IGlkeCwgaW50ICpsaW5rX3JhdGUsIGludCAqbGFuZV9jb3VudCkNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oDQo+
IGluZGV4IGFlZDIxMjJhMDVkMjQuLjA5ZTU4MGJjNWM5YjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaA0KPiBAQCAtNCw2
ICs0LDggQEANCj4gICNpZm5kZWYgX19JTlRFTF9EUF9MSU5LX0NBUFNfSF9fDQo+ICAjZGVmaW5l
IF9fSU5URUxfRFBfTElOS19DQVBTX0hfXw0KPiANCj4gKyNpbmNsdWRlIDxsaW51eC90eXBlcy5o
Pg0KPiArDQo+ICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yOw0KPiAgc3RydWN0IGludGVsX2RwOw0K
PiAgc3RydWN0IGludGVsX2RwX2xpbmtfY2FwczsNCj4gQEAgLTIwLDcgKzIyLDggQEAgdm9pZCBp
bnRlbF9kcF9saW5rX2NhcHNfZ2V0X2ZvcmNlZF9wYXJhbXMoc3RydWN0IGludGVsX2RwX2xpbmtf
Y2FwcyAqbGlua19jYXBzLA0KPiAgaW50IGludGVsX2RwX2xpbmtfY29uZmlnX2luZGV4KHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsIGludCBsaW5rX3JhdGUsIGludCBsYW5lX2NvdW50KTsNCj4g
IHZvaWQgaW50ZWxfZHBfbGlua19jb25maWdfZ2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
IGludCBpZHgsIGludCAqbGlua19yYXRlLCBpbnQgKmxhbmVfY291bnQpOw0KPiANCj4gLXZvaWQg
aW50ZWxfZHBfbGlua19jYXBzX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4g
K2Jvb2wgaW50ZWxfZHBfbGlua19jYXBzX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LA0KPiArCQkJICAgICAgIGNvbnN0IGludCAqcmF0ZXMsIGludCBudW1fcmF0ZXMpOw0KPiANCj4g
IHZvaWQgaW50ZWxfZHBfbGlua19jYXBzX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3Rvcik7DQo+IA0KPiAtLQ0KPiAyLjQ5LjENCg0K
