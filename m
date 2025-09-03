Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5257AB418F2
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 10:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B358310E59C;
	Wed,  3 Sep 2025 08:44:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="muX3tU/B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B11E610E59C;
 Wed,  3 Sep 2025 08:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756889052; x=1788425052;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6v4Dv00fC7VtpiqpgRxYlXX4Nffjj3CCdiN4MpdmzkE=;
 b=muX3tU/BQWViD9sk5T/RTRGcSl+L15fYSUUpM4YyWCKIyl8Lghum1nZu
 qn0/dJWxZ9ReoxWnsMsbOaFx95mPzYjtEEjFtW4+huK8ATo7faeR/+XIu
 N0DAYvlBfHQ9cDvksFF1ozvZZrezKEIddWBt9rfnL1VQ8SRPo6ByJJzRO
 xY1j964v/O9yt5nXXT6GJNqXv13pBNmq0IjPIIcidmhGAe0xg2LDgra/1
 XaH4HFmujG9d4HCd9xPFGkIdXgUJodmuRAsAsZCBm3wraQG2k7w11Tza2
 gzoIm+CG5gZJXDoBCL/zll5YSauLvaL2Qhl2MkzEQmlu8J364kLATEBpG Q==;
X-CSE-ConnectionGUID: KsbzQmSkSmG+8/J1o6d6ww==
X-CSE-MsgGUID: apPwAP6BT2290EI/T9/mtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59108280"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59108280"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 01:44:11 -0700
X-CSE-ConnectionGUID: h9UFNALxSZSLPPGL4nHWDw==
X-CSE-MsgGUID: nR9HffrBQ82MPXhU5SocHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="208738270"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 01:44:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 01:44:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 01:44:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.67)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 01:44:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MM17gpX9cuXPxeqlYVEElKNdPhv7LJGXMuaiLENPv2xqmtkw1TVGQ4+w/a0+tY7X44f3hc0BuKNMQSv0XBThWR8gcviIU8PekX40qE1dy6Xl7kjy3mr9ebObF1jFypgk21j7Hq/zLbMEvW3NTeKGKP22UpLnw3Q+lUyJGRBMFgHB2gXnTlRjVDIsPMFqpv78yEaHtgL2p+4qJhBCnADyb9y4afqK2xUW3n/jtyPw6+RGPH0pzXo8mOzFwIFiYXRirfu/mkUrFbMpb7m6DsjrINo61YEiFcdhM2RmIqmFCx7Xm10QWDPt14JbENLB2Eb4pddtYmJcQ0sZpDQDcE1XWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6v4Dv00fC7VtpiqpgRxYlXX4Nffjj3CCdiN4MpdmzkE=;
 b=SvuSPYgdLJS5HPhk51YGLTiYp5sHl5okDHMvPMB6dqDl6MXiw9bRuIEXPIb8Mnd89dD15db9sGFMBTyWDS0QptYunhlHW2l6UKu48fLgzF3C90qYkn0yR4hd8ityAkynWxGZqBnz37nnnSmDL3R2YPrzONx55BVG+j/264/4eCwD8sEHGYPRlSXlVqHTj0XRtc6bv0IYv+AMUqlwGZIvDoyK0tKePJscRb5r1+PhZj87QlNhi4kxqJG/Di8k4w5cmZ3XvZNhfCiGp9ssNylgQZ/xXBK8WwShBlXEYJ0NQ7EH9hVUgUZ1crnEM3jasqgOPZRdLQljzY9lvfAG0JBO8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7114.namprd11.prod.outlook.com (2603:10b6:806:299::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.29; Wed, 3 Sep
 2025 08:44:08 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9094.016; Wed, 3 Sep 2025
 08:44:08 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction for
 ADL+
Thread-Topic: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction
 for ADL+
Thread-Index: AQHcG/wM8z3OI5nBj0Wr6LXcKKjnGbSAiHSAgACLtACAABEuIA==
Date: Wed, 3 Sep 2025 08:44:08 +0000
Message-ID: <DM4PR11MB6360DEB2B1417F5DCFEEAA1EF401A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250902113538.269338-1-uma.shankar@intel.com>
 <20250902113538.269338-2-uma.shankar@intel.com>
 <CH0PR11MB5444E377ECA3214907F2BBF5E506A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <6b7b3f91e48866d1ce0aa680faa3a44e0b63e45b@intel.com>
In-Reply-To: <6b7b3f91e48866d1ce0aa680faa3a44e0b63e45b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7114:EE_
x-ms-office365-filtering-correlation-id: 4ce8dd56-4b30-4378-2695-08ddeac60c14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ypp6M0ZBR5N6n338IvOlvohJnRGvkj4Q28FuId7isvrt4xDSxIAVGQG6bfcS?=
 =?us-ascii?Q?0iciIU9Y0xLW2XJVg6u2c6D/RhJ5j9BSaVBpD4nNgBQ32INBxHWqCDQuKrK3?=
 =?us-ascii?Q?xx7HbH+BHHHMGC97R/8F9If2aak/G6kjllEPZh4WOMq4pflqoySYc4rlMhL2?=
 =?us-ascii?Q?v5vJ/ny4uwY5CSqzKWSx7A4DWIV8wLb9xmdcXmrwabpvBFFQXxEOhPZla03C?=
 =?us-ascii?Q?JDVH74WnOcpkGu5pBWPlsw9cAmbUF04zB/xVEu6duDPaHzdWiABROUuuJfVH?=
 =?us-ascii?Q?BH1jp+/P2sphpPEZJomBCuw6EGPfJ9AF0aYruNMWGJpvGunADQ8cdkoalHTV?=
 =?us-ascii?Q?PzTL37AdKcr1nyl8rX6xxxMXkiXlfWM2OcXDgxTK3+hY5QlvSwo6xYnUP7Kl?=
 =?us-ascii?Q?W2SRJlmWLlkNpIPoPy3+LGCoKt1eUnQm7JkAkeAUgW09icFcosxMHsitg8bF?=
 =?us-ascii?Q?T781pgHhJboP6GlXveqB7AODXou0BcJN9sD4ii59hTKxrg6Jjzb7tHp/4z/p?=
 =?us-ascii?Q?kKMDXi5RFdS49wg+8Mp1CXl9ifth8iidbf4aVJV6gKTD4unPHsOrVHiFmHqR?=
 =?us-ascii?Q?vmo2KlSDzTEinDRrOg+K2Z2Gt9hgf37Tq2ajMQ/QBBeuEIFRvRxQr9FkgdPU?=
 =?us-ascii?Q?dDqwOwMLq5vCT7PNJS0FnDq8tX5FPvKWX+mj4usW+Dqwhl0dLpFA6PCkzOrs?=
 =?us-ascii?Q?FjOBmG44RaBzG25+e+TfiSGYLIv7JxSNhJe3gPc22rb2cqEUGf3q2RON307R?=
 =?us-ascii?Q?ADurt2sBrMhpfckgYQj97se9zw23VkfnLJgwoaMGsSNtvxmMq9N3+5Fs2QJP?=
 =?us-ascii?Q?kaCKjUj8inxHmrP8u8UIrPZqS3ounX2b+9yb017+RJ+YPVGTLoQb6fbDRcxm?=
 =?us-ascii?Q?L7Yh1VavNmtSE7geHPutVnwZ1TQBe+prz0XbE3KynYiUucdl1GyPRvL3UZ9F?=
 =?us-ascii?Q?w8tijF4JZeJKVt+FV6DTbFZ2jtkczvfYYp90qsGgywyw8Qba/uLzE1hBusvo?=
 =?us-ascii?Q?vQhUyiykwrLmxW4edg+IoJi4G/2DAJFVeqokFEGq0cBoQNflTbxcmtQ1SCBi?=
 =?us-ascii?Q?AzJ7v5GuDtRV5YxQybNB9dC64qLwc7+isNMvAuNi5W0Nazt5E4alCQSPPsF1?=
 =?us-ascii?Q?SVtCD3OKTDeJCmGBMEAWhfG8NQ/AautsFIQLzMryZWA8SJTDwX5JqGRkjtjb?=
 =?us-ascii?Q?SIGK6liNtSkP/jsykWn2dJLXeli4KbhF14EeHKaM6qYKzvGbSrmemWfGCBRA?=
 =?us-ascii?Q?Mmn60Z7AgQG5uKQSQE5cXb+jCw+/vqoCe+eHLgYLkko0pSy8ISY+6AhJR5qg?=
 =?us-ascii?Q?k8qYjc5tqTdtoogIMPYWdNWUU7MdMyLp/DJswIzDoL+deXhMWyc4uRgSNYbQ?=
 =?us-ascii?Q?U8sFG5oXGi6/nMm7Hw29Bwp7Ucn3lU8YLmuIngJqowJik+a18vNC/u7Qloir?=
 =?us-ascii?Q?QiSbDot9qnjxDm8qxuFaJPndU5fmisa4VI3nryqlVWrzZ3BrO0tHon+r9OMu?=
 =?us-ascii?Q?16FNOV3j9HcQnS0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aPQoOtPblD3RU0cNxiGfolOm7TCUjPxGj0LE/McXAP1hgs70GXFUNYffrUWF?=
 =?us-ascii?Q?vRmezgy8M8Eviwd/X+CO3aqkaVogjm2u08aKkTHYCbQCSOxyYqQeKyYvJB1Y?=
 =?us-ascii?Q?vshRbZOhEeo/MjcxKP2ilMBoENErA5cBRvqkkfgbgZwDs9vdNLra5RDeIcKG?=
 =?us-ascii?Q?hneVR+S1TXRgmOmb/h3OBsx4rU7uIYJQT22ezB/GGn7Y4OgX7W+sjrnSb33m?=
 =?us-ascii?Q?/TjV3PkeOZ+I0yCLkuIYvpRJGrYoR647kVB/gEK9ybBL/GjXcsf/VpdAzLhQ?=
 =?us-ascii?Q?OZ9l+et1ckyU2311QhPU08cbziZknPRcOJJQuyrHplm6s285U6OUTlr8C1zX?=
 =?us-ascii?Q?6a/d5laYEecEKoKuJhlJWjzeMp+uqtP735VbHp8lZtfjiTyLX6BsHqnsIPG1?=
 =?us-ascii?Q?71sYXgafhuPJ0WaBZUMsZuHQIPpDRmgWEEYgT78SJENdKw6WKk89UEIjgjKv?=
 =?us-ascii?Q?Lv6plCQVCCvXBd4BZeoXjojgj6VzZDmCkOco8Dv20JpeQ/EsUtbi4mVqK65+?=
 =?us-ascii?Q?LLft2dUZXgU+7pbtUaeUmDLSiO0Th8sdGHI4MvJ7wLkNr9rN6o09YHvprY5R?=
 =?us-ascii?Q?w6DFHdepXz2Q1198vdS+yo93tRDtveTRlC5qlX39sLrDrxYSsmIG4YCdJiiF?=
 =?us-ascii?Q?vBlMzPe3JRih808azRQIMFNnDPbLHurlokqDBFj8oVA3p/KZwPXnbEaxRg7S?=
 =?us-ascii?Q?PFvXMPcIHV4j/pi8suMfvklwe+dfBDfLRHvp/qaF9TvJqCjwMCWJabV/4qjz?=
 =?us-ascii?Q?V7Krc9lDJ2ceaMZzIecAyekFtF88OCWiKmM1m+T3caIsYW/uHNFjSRYHLjfm?=
 =?us-ascii?Q?ca4XFy7v6vMMKO1Go5UcPi2iV9jKtLWeNjIKPdBh+HxEROjebOhfsSgre28y?=
 =?us-ascii?Q?u0tdk4jCaFifSMjBXSEVL9RI5dMDvS+//FF7zjhVXWQCZsr6y6Wigf9lj7C3?=
 =?us-ascii?Q?1i6DklWslOOA0SLEt26iigG4gZjZ2GWBMlgxCtPNB66E7c7ySwIeOBVzaE13?=
 =?us-ascii?Q?Vo8eY/P3GjdlQK7Z8rXfEQtb83EJSZPGVEcTbSMjPJFKZDhDYKOTB3e1vcJ7?=
 =?us-ascii?Q?Zwh1ZVjmn8RxyrH6fG8B3EjNnQood3mBCogc0u9y5YvrqXnB4E8lL1MjBLML?=
 =?us-ascii?Q?6yW6KobFsuMyjA8XjL3g6qbJh5xEShIAgAtT0EU8JOiOoHEZkLTFiQ0DLQnS?=
 =?us-ascii?Q?4VLphVuNC0qoSoxyvlEPfXJ4hsckXvmzU4g3zyLjaa8NoKFUGKVBn4ctac23?=
 =?us-ascii?Q?QZztyPn9oIkzYIKdAxgogORgpcz9uXvvT8Y9IRaaTB7LqyXB3j+XkPdNC8QD?=
 =?us-ascii?Q?r2iX7KwFfsvZtTpiwHZY5MwvFnn0AIrOauo1ocPruf6PrMYJslJz2dhaQYJa?=
 =?us-ascii?Q?Qi4PIY9MPFsd/EFBghj+aVaEmAlxl9t+7SndHHXoMa7lnKUnWFsXn2dhrqDc?=
 =?us-ascii?Q?SM99SCShOeslsql+MaJ5IwjDG2J/JbcaIm1ebMYIZRtWDt4BBhiGfMJpOTwA?=
 =?us-ascii?Q?21mJq4OxR3h/d7gvDk7NZ1kf37EXkJff1zJW32z1/ZMofIllxLTJqEdacM+J?=
 =?us-ascii?Q?nRICygJlWDexa1URrgObgH+vxfFA6rqTCo9HYPJP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ce8dd56-4b30-4378-2695-08ddeac60c14
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 08:44:08.3134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xtosa3wJFogrLJyWOgTVERX21U7XYlpI1HqcYLmNXrNRwDnTWK3IxyKnKXXwvimD0fCSucoOQoEYY0Zn0axtNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7114
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, September 3, 2025 1:11 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org; intel-
> xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Govindapillai, Vinod
> <vinod.govindapillai@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: RE: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restrictio=
n for
> ADL+
>=20
> On Tue, 02 Sep 2025, "Cavitt, Jonathan" <jonathan.cavitt@intel.com> wrote=
:
> > Reviewed-bys should go below Signed-off-bys.
>=20
> Mmh, I don't think there's a hard and fast rule about that one.
>=20
> When applying patches, I usually go by what b4 does.
>=20
> But when sending patches that have previously been reviewed, I usually st=
ick the
> Signed-off-by at the bottom instead. And I think that's quite common prac=
tise.

Yeah, the usage seems mixed in the tree. Have updated it though, also dropp=
ed the
Credits-to tag.

Thanks Jani and Jonathan.

Regards,
Uma Shankar

>=20
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel
