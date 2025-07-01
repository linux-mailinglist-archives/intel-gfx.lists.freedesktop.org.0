Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEA7AEFBD8
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 16:16:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D3010E295;
	Tue,  1 Jul 2025 14:16:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AWPEYn2/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D9B10E295;
 Tue,  1 Jul 2025 14:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751379367; x=1782915367;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HDm5gvDegfqBrtaFpuVXukVj+HfDRM7QyRH0PIqW3SE=;
 b=AWPEYn2/jlQBYQVQoYPeW4gTbfXoYjedJtQdBTWzRWKkTGG3wgSjIxsm
 vsThjM4ldfwJiPOhTOEo9Uy9SgVUgPzjf9rUyp/PGB2+Q0F3hhXh1WjBW
 IlCqn/CGeAALICrCLHYpCOh95eRBx1ZvvlIM8RTzJK1/YO5znFmcPUs7/
 xbqycZB1BOSBZoYWec0fhz3kDgQ5i3GrPnvhavw3tg2UYLppyn+Mp3+5j
 S5MqprqKMxyPKGS5YwqTJua8jElYoMz9F60W6PnTFPux4QvrDn/2CmLrO
 SZhi8GwJ/yYpMV91V/H5BAkB79xwf5Ok2PHBiFBr52VMiaW8JITtu7aVF Q==;
X-CSE-ConnectionGUID: Il9vlc6vRjWrjiWecTerHQ==
X-CSE-MsgGUID: QxfD1kgfTWe8nMaAptoyuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="57425035"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="57425035"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 07:16:03 -0700
X-CSE-ConnectionGUID: h8uWRj7PS+WV+dqYpYuKGw==
X-CSE-MsgGUID: Y2X0ZoogSBiVPJGx/3SrJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="154095541"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 07:16:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 07:16:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 07:16:02 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.62)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 07:16:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i61qPN39ox+C1GyOHfsHhstkTCRSbsE/8c8fvSqWQa0Vcryeity+3RmPX+ns0b/MGm405vxCuR48P6jID85qVi9o5MghPjD5iZ0jKkdSs+XrpICC54IdbwQDY/+kbiNZM0ZAXdSVit1L8TRZS1RNP3vs8Q3A/wMOAXOFjUTVODFANaZ2obJdKR1+NqaCkmDfUTH8qehBTndOg+Cse6IxqRF/1jEeAea4QZfii7Sn13ZaRBtoBjFpQevmC/MMO+1XiSPOW9QV209vZNfIwlDwbi6LBqs/wNmRoxBGFkywOK9obmrFpgwEXavEUSv07DCNA4sDG9MqCYaJEvTy12vi/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LksYT+5DgdZ6Rr4MThk3dApS4RuQqDhVL6UGGzx1Pkw=;
 b=PXO4WBv/R6y8qTs+/TsgzCvHTodBubcKUzdipPvyr2V+0BPXP/5RRXZuvzsXTYH/HHL7QcSZwpKstbwUGLieVRL1qPJG2TmUoVjfCcBMzM6r5ho7eRHHnKly3HIq5LTIL9M+c/qiVNWKpkQNsF8kxLgQYeAJUueTJClg4lZt5BinU0lKEa/f9eOUJUDUvK+FddUPAeWbASVzHbSvVyzOj4Q8nqIDLVQ5j2h3IqeVS1c1AOoy0k1KVfTQ8RsIETXyzmL0Rba0SpST1kP1/1RYZuqiKp5OpiPE4T8zd5iijSwCaXkPAMEgBdPsaax9nlfDMqbLjUlzrls2RLOuUvipkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.30; Tue, 1 Jul
 2025 14:16:00 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%7]) with mapi id 15.20.8880.029; Tue, 1 Jul 2025
 14:15:59 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>
Subject: RE: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
Thread-Topic: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
Thread-Index: AQHb6l79+0USuhLXME2A2vBL/1twR7Qc8IwAgABc3PA=
Date: Tue, 1 Jul 2025 14:15:59 +0000
Message-ID: <DM4PR11MB6360159E89ED014F3EBEB8ACF441A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250701081756.2821286-1-uma.shankar@intel.com>
 <aGOdDnjfj7NJs1aV@intel.com>
In-Reply-To: <aGOdDnjfj7NJs1aV@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7041:EE_
x-ms-office365-filtering-correlation-id: 4a036c81-2f4c-475a-83a1-08ddb8a9cdd6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ibwnVcR2u/cNAyhuEoVS1TqIBieJa/++hJs1lhsnOBUzKM7PJVW9XKmNPP?=
 =?iso-8859-1?Q?GnGM9u4f79+kLmkK+8ZKpxhiYtSt/ybCbVEdFSkQU/weWRxBaiu9BULcQy?=
 =?iso-8859-1?Q?UvN1D909hqplUMcV5OIu1Dlncq3tcOz8h7PmrGispeUpdX9RpH8IJHxRw9?=
 =?iso-8859-1?Q?M4IhUxf0fe/OUtukIEX0+2e3c636o8qm8U0iitDwATPL+W6Me2Inx1yXUz?=
 =?iso-8859-1?Q?qTu43iLMorLVDsaCUBXynsjDtciqamkN/ED5N0DICWd6iJUw/FX9C3BmtZ?=
 =?iso-8859-1?Q?69o5oQRUHPE29yzyqeqZs30EKxkWK3KQ774OkstJMFBiN10ILpGo2U+MeR?=
 =?iso-8859-1?Q?nT4gF7ouzfgXqLa8R4IYJ25MT36MVw3A6IA4ukxZU0LlDQCb9DTRn3KdSI?=
 =?iso-8859-1?Q?wux0OZwYU2AotWMRhp9QUHrgqmHTJC+iraz0Emgcs55ok9x440jkYfNE4T?=
 =?iso-8859-1?Q?E4JVKIcmMRb6xKdrPfoZsz25e8H9ECoLiA1HcpHxCtIO8j94fWI1v1EnGK?=
 =?iso-8859-1?Q?IWlCSoRW5cYTih1LeXPAzHjgspPb9lw/lxA11v4Uv2jninb7+jX9WiC2Mi?=
 =?iso-8859-1?Q?jDuH8sBp/6P8/TKIKoGzrDjmD4bQrEZ2/0weNMfVb7cyI+WcEhAfjciuGd?=
 =?iso-8859-1?Q?JTn/xuLtDixixqokmvm6VpSkfUlNEObU3d4qApsprZebxF0KW/e2zkNavq?=
 =?iso-8859-1?Q?aQ0VQm9KCBJXReA1sIMiZ5FLf0vbRvFyL8GE/NNri0HOQrh0XeSzISw3AM?=
 =?iso-8859-1?Q?ZN0qweZXg0AS8adMaqtsC7HRD3tPNXZyqfcPMRWauc57xd9emZNvrr0sE1?=
 =?iso-8859-1?Q?Z9vgmEQ5CnleDSlv5GynEpiDNOOwKz/j9Go+0f2U4+ACTEHHGaJlM7/uz+?=
 =?iso-8859-1?Q?BjqNx4xIGO0/jdcjmFSiIm6SkuowHtFRRdacxp4UTQFrAW7EaAdSmEish5?=
 =?iso-8859-1?Q?rIT0vmN2Ml2mJDQ7RG3OW/wpKUgAnZv61s+qgsZbfgghb1Up4z83QfdmyK?=
 =?iso-8859-1?Q?x2RJxZfp3RVSILyJessoRDDe5C1ei/5HFCru7ew3j7Xf2WcC5oxQWZVAoF?=
 =?iso-8859-1?Q?/nn7kldH5rJWBCT5CYngwWz87RDiRb+NMM9SPLj4Byg585WxnYmlgOFbFo?=
 =?iso-8859-1?Q?APK8i+SXN8sR+TZa8E67J+yP15w5kFgfmhOo52M7tyvxCI+DCU0AFQ/V60?=
 =?iso-8859-1?Q?FVFQp9Rc5aO1cJUb5m6yzif23bV2UVLXJSx9af5z9StQDLPjuBouLHrhB7?=
 =?iso-8859-1?Q?Gk2KMExmZONRF5yLVXLBVwkM2scbksS5ibASCbgDAhX2o3UTBlNQRZumVs?=
 =?iso-8859-1?Q?A+X12sv66G28q4GbOfax+zv5BrKmd8C6aFXohWwU5UX0B6u/5yUfF8y8Zz?=
 =?iso-8859-1?Q?+/k3r5ZEz6/Q4gWtRE0h880YYUDBFcedwPmFuuQVerYRB/rgrNmI4PSLz5?=
 =?iso-8859-1?Q?xh3lbubPfPVNFUvC/kQdgakvliEmU7F3gKyIi4e/qtBa51RcZizAkY9QPd?=
 =?iso-8859-1?Q?4bse1Q5KGlEx/GxIwda64MGs57gim7g+IMxJ9XRQBotszkvid2YqH44qTq?=
 =?iso-8859-1?Q?ZQVFKVA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?/g8X4RUPVLbpTAZsGMwGnnDX8Ks0TjbUIoewa3NNq2tdS8qgVmc8zg4Vvw?=
 =?iso-8859-1?Q?4FkU7wbIDEI1CBwPSLLmS65lsih86gWcd7RraXdlH8Xk7eCNay9AKfyZBD?=
 =?iso-8859-1?Q?WTex8Zfgva29WcKMJO83DMWdT8YxSb1pky1mJKyuxeyOcdBR6NXBBAsccb?=
 =?iso-8859-1?Q?EBaKcidJFizQ43Bm1bOdRrzOnm2jUw+3cS601/KLOazhK8U3+WBfKn+zx3?=
 =?iso-8859-1?Q?yrZ+pwmCNDZXBzSW3fVOLX69DHmRhSHZZThfrzoUqo5vNJUoOWWgN/iCWZ?=
 =?iso-8859-1?Q?NlBSqSWhqO4klmdx1zas1Nd3HNsWABvEFxVcQ97FUgr+ZDR4LIjYZuSuCs?=
 =?iso-8859-1?Q?1tcNllM8LkP8Vm+2r6GDMqJl+guXsL4TmwqyXhrAONEpB2Ko1h7oFQUdrR?=
 =?iso-8859-1?Q?FzClNYl17Ld6x4G3ZbgFQ8mcqdZvH4RQr+8Up0RaDEWahhepkTb1ZfPc1b?=
 =?iso-8859-1?Q?ImNHGmausOClbxRmKfh+jhufHwC5jsU+NiyPVQlKUROQvkZpgssptyBz83?=
 =?iso-8859-1?Q?b5LfStqI0vedN/bZERrFdRBJs8CP4hOzHPoYDUlI1kONUa20k93L9Ae/QF?=
 =?iso-8859-1?Q?AZjzzHvcaRtrGAdzPkE59+9WQhrPtg37BydbxYxvbX2IT6/xMs8bRe7f/T?=
 =?iso-8859-1?Q?Xfd980Z7O0y+t0nRd7zHagBf/6uSlg8XlRX1CwFQIt79+6k7+d9U+OA+3V?=
 =?iso-8859-1?Q?QEyaZSu3MMc4rvHR+r5Lzmf/mQPi/5B40l/u2JgB9hrKDtShneayErG8Wb?=
 =?iso-8859-1?Q?XQ5lnIqfw3ZUEFxthb/HI0P8KZlyLIRweddVuuhc9VFHLlDdoXSoPKo2UZ?=
 =?iso-8859-1?Q?c4IZiszcpusxTUe4c+S4WTZiat2kQTXa0KtxuDq4+DGNbfI8WpiLfe12id?=
 =?iso-8859-1?Q?xAksgb1Fw0FYnSGW8ZWoXkiEiqMO0g3kYDElve0PUPZtI+XTvMFiKly9yG?=
 =?iso-8859-1?Q?Bm2lH8ogq8V1RHkr93JrJZngbx3odPlyF+Uri7+/b27/f5dryM5S1FxfKH?=
 =?iso-8859-1?Q?xLVLuLrESsgZ6ryEkssI7q1gVvfsQr7sM6zOs/C9tto/f6aux2Rr7DUrxV?=
 =?iso-8859-1?Q?LAG8Ma3Bscrn4lG/ik2HUz6lD+MZN+HaCS9VxMGbz4Pnk8EBocY+oalXcX?=
 =?iso-8859-1?Q?+V+jZpCS61wJjEapTLvbQAYJs8EU+5lho5kE/JJgIl7Ouxoi12nRfUbP0R?=
 =?iso-8859-1?Q?mkKnQ3gnaAKc80lMfvr2ntpDyTnP2MDDE1wm4y6k8uYWXeehxKWXM6PbGY?=
 =?iso-8859-1?Q?t0w9tiGb3pXu6RfloL03aIGQMPttCPtKFyTT17OsnlptE2voH1LdjoFiHp?=
 =?iso-8859-1?Q?clVPgPYCdO4E3r+mLpr4dK2WTUYMuKc1M0pEJpieEaoEqDwqPJNvrA1owC?=
 =?iso-8859-1?Q?lviIQJxffL967lWNj/IFwvosnPNtQpU+NUgl0nDYi55/iqg1cuWydYLI6E?=
 =?iso-8859-1?Q?KQkWdJqhjwfWEqRyeGl5peqBX0JXmebsaQ12pfcqesFAf62KRunKm0NDAo?=
 =?iso-8859-1?Q?ooBmgr2lDe6+527CoPk2BXSn2rZ0eQD+ow0jkLEFQm1EhQ06xI+qV5xUqT?=
 =?iso-8859-1?Q?W/Q0N+j0g6VErVcTb24UpPg0EyK3UcjB3v8FzC2czlpiqDc1P7UMF6Uc1k?=
 =?iso-8859-1?Q?fE3/QEKnF05F1Wiz/dfZjSfxaMIDqPZ66M?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a036c81-2f4c-475a-83a1-08ddb8a9cdd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2025 14:15:59.8671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6QD2VgPq+CDjQ09JlPwb6DFTYm7hzGkcoOGCJLYg7qCl0dde6gichy6KuoRpROknALnFeX0fbI4Z63S3SCs7CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7041
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, July 1, 2025 2:02 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Bora=
h,
> Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Almahallawy, Khaled
> <khaled.almahallawy@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Fix RGB limited range handling for=
 DP
>=20
> On Tue, Jul 01, 2025 at 01:47:56PM +0530, Uma Shankar wrote:
> > RGB limited range should be selected only if explicitly asked by
> > userspace by the broadcast RGB property with LIMITED_RANGE. This is
> > mostly enabled in case of CEA modes.
> >
> > Display port by default uses Full Range, fixed the same. This will
> > help set correct MSA information for colorimetry. Fixes a CTS issue
> > wrt colorimetry.
>=20
> If the CTS is expecting that then it's not following the actual DP spec.
> Originally the spec required limited range output for cea modes, but late=
r version
> relaxed it to "should" and also notes that full range may also be used. P=
resumably
> it was realized that existing implementations had no consitency here and =
so both
> behaviours must be allowed.

Hi Ville,
Yes, there has been a flip flop. Ideally both should be allowed as spec is =
not enforcing.

However, we can default to FULL RANGE and do Limited range if userspace exp=
licitly asks for it
using the broadcast RGB property. DP mostly have the FULL RANGE while limit=
ed range is more
in the HDMI TVs. This will make CTS also happy. What do you suggest ?

Regards,
Uma Shankar

> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++--------------
> >  1 file changed, 7 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index f48912f308df..8758b9d60d5e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2708,8 +2708,6 @@ bool intel_dp_limited_color_range(const struct
> > intel_crtc_state *crtc_state,  {
> >  	const struct intel_digital_connector_state *intel_conn_state =3D
> >  		to_intel_digital_connector_state(conn_state);
> > -	const struct drm_display_mode *adjusted_mode =3D
> > -		&crtc_state->hw.adjusted_mode;
> >
> >  	/*
> >  	 * Our YCbCr output is always limited range.
> > @@ -2721,18 +2719,13 @@ bool intel_dp_limited_color_range(const struct
> intel_crtc_state *crtc_state,
> >  	if (crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB)
> >  		return false;
> >
> > -	if (intel_conn_state->broadcast_rgb =3D=3D
> INTEL_BROADCAST_RGB_AUTO) {
> > -		/*
> > -		 * See:
> > -		 * CEA-861-E - 5.1 Default Encoding Parameters
> > -		 * VESA DisplayPort Ver.1.2a - 5.1.1.1 Video Colorimetry
> > -		 */
> > -		return crtc_state->pipe_bpp !=3D 18 &&
> > -			drm_default_rgb_quant_range(adjusted_mode) =3D=3D
> > -			HDMI_QUANTIZATION_RANGE_LIMITED;
> > -	} else {
> > -		return intel_conn_state->broadcast_rgb =3D=3D
> > -			INTEL_BROADCAST_RGB_LIMITED;
> > +	switch (intel_conn_state->broadcast_rgb) {
> > +	case INTEL_BROADCAST_RGB_LIMITED:
> > +		return true;
> > +	case INTEL_BROADCAST_RGB_FULL:
> > +	case INTEL_BROADCAST_RGB_AUTO:
> > +	default:
> > +		return false;
> >  	}
> >  }
> >
> > --
> > 2.42.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
