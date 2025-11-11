Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF6CC4B8B0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 06:30:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F90610E4DB;
	Tue, 11 Nov 2025 05:30:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lCjaOoQv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCDF410E4DA;
 Tue, 11 Nov 2025 05:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762839007; x=1794375007;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IitxWJBzxVBIUnSRbJ3+TntKrJbny1RRtwPlfreWrQA=;
 b=lCjaOoQvD+uWNrG8EFr0SGExywNGwoleApnyYQlqliAtVa4NNWSPtiSD
 iYl70awpcR0Mrnc2wQJ5M655diutkTHRdAxk33mUgHfVXNoom725wk+9W
 a65++XdBROvBqdynBB2JfDvlp9WPi794ztKqV1D8VQ2S3BMpY/8+qdOOH
 yPdfYSPgEbQ1CJ/Kl7iByyD3yLbftH3bG6qZASYGE0827SnUGYX0gAlkD
 p6wJVW5wfiw5FeFesIRAnBevgsslZAobbpehw4E1IFdTVvmENB4yCybpe
 q/L/o73QDSh/21JWgvzvm7cyEIrlN01NTsgDi+5JehoTPnrJ0uVauXCRU g==;
X-CSE-ConnectionGUID: vL9idPsaSI2Pv9FKACZbgA==
X-CSE-MsgGUID: CK6QTkkgSP+vvh7hbFW8jA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="76000566"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="76000566"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:30:07 -0800
X-CSE-ConnectionGUID: Fic5ppUFT6iU5Io2m4T9fw==
X-CSE-MsgGUID: pIoYFUIUS/W2zR17W5JBhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="189120984"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:30:06 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:30:06 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 21:30:05 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.20) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:30:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fDdeuRJqcOOIZJMxk4i5sJwuHDOL8VlwPagbkAgACZkLoOyMWAZdOrLh5aCzvth+D05N7eHba0pBypV70owv2TGcbo4xAuTubrGvQ/2B6Apf+RCzj3eGeODIv3aBY3tabYl4DKQgKEBwDZPYO1RzuBajtVGPD0JTyetMICZugWvcondbJyBByP1KaTnuAQjn2brl9bqIvjLARmi1H5UMpK1e7KXQJpS2gwUgY/VTNgMcyYbDKhhgj+40h3wVX0FPZ40c8iwtsxrVXkpJYZizTujLTPGA4zzAJWlq/QIGav3TL/qPAmhJRlAJvGsF/EbcdHNB33/fyoB5z2yT3pPK9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jddu9lvZFZc55dwi+mlCDO99v7pk75eNIKJ0w9gPCcY=;
 b=KCtyAwgReFeUxz3F1PxxYiA3ssM+dDOEU1PZezwYsrtSd/2jBs+TZu/QrUpcLC946IJka7LDGcpPTNufdhcnnedjvcY6Nep2in0TlcRcmjPTvoacAh1RHXyjLmeETIRLDCY/W4f4eP5uKT5mG5IX+LT/0hzU6TW4Qq24N/zBFt9SVuF2IL6n6hnQzv9FfPPCCcF8IAmNnJHi2ugBRsSrn7Ga89nTbiDCDS/391GDDqykqqZ7rWrAcLFXMm8gqnORHnk2gmDSw6EDCi0W62MUVsMtnXsY9BCCCETBhdktiFOow3INn8msHeh8QWba5yRQ9Joje9DubZmC1uGWA5ok2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by IA0PR11MB7882.namprd11.prod.outlook.com (2603:10b6:208:40f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 05:29:58 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 05:29:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 03/32] drm/i915/display: Sanitize setting the Cx0 PLL use_c10
 flag
Thread-Topic: [CI 03/32] drm/i915/display: Sanitize setting the Cx0 PLL
 use_c10 flag
Thread-Index: AQHcSllQ+764kFKJ3kmAzPogxplfh7TtA5OA
Date: Tue, 11 Nov 2025 05:29:58 +0000
Message-ID: <IA3PR11MB893700CEA687852C468CCB88E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-4-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-4-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|IA0PR11MB7882:EE_
x-ms-office365-filtering-correlation-id: 4bf86c0f-f964-480d-38b6-08de20e35acc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Wo95j1u/DGWENkUp4dP1wvdueESwg5+Q9B9NzLYwR3szb2//ckTSQUThMbna?=
 =?us-ascii?Q?j8bD1ffFw7ybb99WKN2KYqT6xJS2rR6GEaTts9QIMP7SIq7SpOCk0Y41lA7L?=
 =?us-ascii?Q?HuBSTzYJ+2pvFd029nHHMrKy6CJTlV05moGhkxd87iAjlYp4eSke9Fvt13dE?=
 =?us-ascii?Q?Io47k820klhMUb2vnkZf+HhzUxP8c9ldSetUX3gdkGLF5y/3gOV9QxTfFlj6?=
 =?us-ascii?Q?mGBhY4+tRqECLU75rCXsV+1eRmsKXdFGdS4VZXl7c+dWNfdb/9j1stnm6qUP?=
 =?us-ascii?Q?D1zCSyKyZPTIz3V5vLxhOW7eOsNYnT4o2tZPJP5Y+LYAHNXgZTDscGNEBETy?=
 =?us-ascii?Q?w/0jFQ7ubco5BDeTyhwxCdFosHsfFUsWpQnvqP+nV3EsiQSYUWQ3ISsIYSvN?=
 =?us-ascii?Q?74yihYq/lRt3wdKy/2SF+Dy90hfipeVZ/Ko+cnF7iFR3SQ165Q9NJHF0kGcU?=
 =?us-ascii?Q?DUIKdKedqze4zorB8jVrwmMMwpvn6Fk76mlc7mHTEWu0TEBIglLZJl039nep?=
 =?us-ascii?Q?x7dBN0SfY5SVCqrzwwj8Fi4oyd0ObiXlfKyiOM+bk0IbFUcl6sopuH0zUksk?=
 =?us-ascii?Q?xbTE5zfGoeFK0ZH8Q4SJFcXOSob9xM7G0DfgdBZMP29eKnjq3aGI22AZy3YH?=
 =?us-ascii?Q?KEM7BYiNgDxjqq5f647HNfpKoBP0D/avlmsIjtFY1LFyndLZrn92mDNcLHfd?=
 =?us-ascii?Q?6Mwzf0PK56hLMFe6TSo6GDtsTrLOutbpIaDRtKkf9xvticQVN822LURNiVkh?=
 =?us-ascii?Q?fzHyY9IHNPUBI/W3eC58FzU3XygxHD1q0XZdDO8A2hW/ermB16fFO2FIrv07?=
 =?us-ascii?Q?QI4JJx8nOoznnB4dU2wyVKWCfNsTqs5V3+1KWn4qdIQmwsrFJFR6u440Kl8q?=
 =?us-ascii?Q?16I1XWTTpfQZauwiuEZAuAkKmMZvKLT1HorKxAX6Fnk1R5P+ACmTlk2uNXqp?=
 =?us-ascii?Q?6Igut9sVZBiExB4zN8u7p+STHXy6top+ZiV7ILvW3Nj2tGGQ2IawLio1JiOy?=
 =?us-ascii?Q?ebjML3Mq/8wJj5aBIZStP3Jm0CGYaZLMGBs3y+AZh7B9EIBcqmYjSH89KIAa?=
 =?us-ascii?Q?4F//VpCGrEs2ejf2PCXAPo0yO7lchixm4y+QgMIYMl0K3m57QyMJIoqWA5nA?=
 =?us-ascii?Q?IvwYQvFuDGGEGCSuKQMRgTlLp0G+Pi9aIbstty00mqmky3/sj3n96MCYtD58?=
 =?us-ascii?Q?s3qA0wgmkx+xA32caKt5HBc9QNU44fEKpCPMzZZALuvkt/3ccRlCObOwCeYI?=
 =?us-ascii?Q?XGd09VjfqVzpSr3PvHMCHQzYQoLi6slK20Rt6+7pcMhs3y78DMXfcZUWhN7J?=
 =?us-ascii?Q?NhCcH1gSfU9JEl2EnEhd38HVSw2f9h6NyIEA4KhmZzLGvNAov7Z1ccV8J4S4?=
 =?us-ascii?Q?P46OmleywFac4an1yas/RRg6hEhMJvJjWMArGct/1PTnVrxjTkVjSE/TWSZz?=
 =?us-ascii?Q?kwDpIT+/SrdGFE4Ac1/tU3QWH4v7fQwPSpiqVBK78YmevTp2vnLwwTv3ReJU?=
 =?us-ascii?Q?qu3XnAzXkCfoH9bY27jsoM+FDNVkQNVvL13M?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZmB5wIUitrp62HGAZfC3mX7hxpYwoT5wyJx60UIHp7EYDHIHKivGdFDxJubc?=
 =?us-ascii?Q?3Zx9i4lM/on8FgPEOmHUxiYWJKn5UG2hg7OLIIcWPckgvwwtpoytpbTvf8Nn?=
 =?us-ascii?Q?SLLaP4sj4mWa6kWXteo9CcWMn49kVyIDnGdjbDniELzBW5jTGI4Chw+BFSG9?=
 =?us-ascii?Q?reWKNVVM84ZvcXQl0vSGkiurg+YEvfa4S4WKxX3z5f42kmV37ssHdje+DO+I?=
 =?us-ascii?Q?6ip3d4QJxbmHayD10qvPlF8muLSD9OXpX0RQIO/DKFgqHtAWIQNydX9WBBMY?=
 =?us-ascii?Q?CugykkbEXDyape/1AUQfUtEHmuM1Rrh6NX92jNcPZvLG4hj3ydJT7ln29Dz/?=
 =?us-ascii?Q?XoYJ0G0/meLL9Ea5hpA/Ll4qt8oW44/ajPJLfcT4ZFtoGDPeNLYzYwZh3OpC?=
 =?us-ascii?Q?VeLLWHSxj67zEU1TqtsH7cqh0cgOGlcTV8QyYraq52BZn5kuFJJPErwq6dTS?=
 =?us-ascii?Q?L3/+Q5IprChPmT6zKw9mAGXKHbaoaqUMZZAorbMqnl3PH49Mt0jIScc3m16d?=
 =?us-ascii?Q?UY44K+I6KUKUKmAdQBgruFdA4FjIlzgcSLefSOTtO4Srm9OpqkTWHB6jU8cG?=
 =?us-ascii?Q?rv9B9VPStein1HEzvUfBOrSh6YKii/Ik8EFabcv27tcxLZWN0OhtWoIN+OB9?=
 =?us-ascii?Q?IdqfRTaEk9HWCg2z9iBisb+VLlFg6VoXU95fUqECeqpZQscmlRm9k0ThBbQN?=
 =?us-ascii?Q?POiqQ66si7xwOfQKVGwPKUNB90AYQacXasLPn3vvQ2C5BJv0ti1FvzhKqsru?=
 =?us-ascii?Q?tY/a1iIdZG+OLmXKAj+OCihaO9ZIKOVZUvtbmmDt6sRjR6t08y3Q3DASMxV5?=
 =?us-ascii?Q?FNbL1fIWDAUaMQQUFVvgmslp1QrWBuU93wgsaiLJJWcnQzk4VBIJks08vhyp?=
 =?us-ascii?Q?W3L/1WrDBW3L7lNsIonl0JqKD9GmxuUtiNRQIktgG3rX9O0fAqpdZyueu5z0?=
 =?us-ascii?Q?3zPbldKMPs0vyhnNuybHa/X1ShSsGe4GJhWjrTwqUEON0FHm5rxRk8CarmG+?=
 =?us-ascii?Q?rJJPIZVSdfxKS8QzLorQfbEX8dZpxw5ZUP9ZLMmhCFAokMDyRSvb1Y+MfW68?=
 =?us-ascii?Q?J2qeBAM7mWApqBnjBVXTevMYleyicdBx0TS/ECXMzdvznE+SsDQPyJc4CtpU?=
 =?us-ascii?Q?MkQQ85Eq70UXWZisqtznOSqLGpPxJ7ga622NtcCxixKDo9vqycLxT2+UQKsU?=
 =?us-ascii?Q?GnztcA7nxfyLbC54sH5VXbIVlmtMipMa0nT+SM6KAZynSx3vyS4XxBsdE6Dc?=
 =?us-ascii?Q?vRGfNpGkHqccW4ZR98hE5YHF5d8TkN1iXFlV7odCecEJ8BVuJtqnIIe7hv0E?=
 =?us-ascii?Q?8TV8yCkCYyCD9a4KV+Yi2qq+ROZILhp1VZHnnx6pWSJ92UmlRIxXNWmX35gP?=
 =?us-ascii?Q?9uzEZgg1ZbXM/PrypsDvqTUDHhQIK5dCxZZzx2ZN+FX43bdXB6G6H4xqcXH3?=
 =?us-ascii?Q?T3+/uu2J47NQLIexbpT5tSqAy5wmyfiz0+223pIY0h2rxBER5zTQBWHCTJj0?=
 =?us-ascii?Q?S/RWoSwUCSIroKG8SsjRxBQFNbI7mQdoUR2O+5HDj9e9yQTethLtD2Tq59e6?=
 =?us-ascii?Q?jjA7k7fOfi9IfkuNLo80HbAMM2IfMk0PT/+wwr+Y?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bf86c0f-f964-480d-38b6-08de20e35acc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 05:29:58.5749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8UXy2tRz4HzWbCIfvCvmxUP+Mf/CbqSofqvFV/PNQfIO8XPiW+/v5+EkfUO7ms/JxRkunJKskxlGvjjz7pAxIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7882
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

> Subject: [CI 03/32] drm/i915/display: Sanitize setting the Cx0 PLL use_c1=
0 flag
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Sanitize setting the Cx0 PLL use_c10 flag during state computation and HW
> readout, making sure they happen the same way in the
> intel_c{10,20}pll_calc_state() and intel_c{10,20}pll_readout_hw_state()
> functions.
>=20
> Follow-up changes will add more state computation/HW readout, this change
> prepares for those as well.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 23 ++++++++++++--------
>  1 file changed, 14 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 94ba7db2115a..dd4cf335f3ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2130,12 +2130,15 @@ static int intel_c10pll_calc_port_clock(struct
> intel_encoder *encoder,
>  					const struct intel_c10pll_state
> *pll_state);
>=20
>  static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
> -					  struct intel_c10pll_state *pll_state)
> +					  struct intel_cx0pll_state
> *cx0pll_state)
>  {
> +	struct intel_c10pll_state *pll_state =3D &cx0pll_state->c10;
>  	u8 lane =3D INTEL_CX0_LANE0;
>  	intel_wakeref_t wakeref;
>  	int i;
>=20
> +	cx0pll_state->use_c10 =3D true;
> +
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
>  	/*
> @@ -2361,6 +2364,8 @@ static int intel_c20pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  	const struct intel_c20pll_state * const *tables;
>  	int i;
>=20
> +	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
> +
>  	/* try computed C20 HDMI tables before using consolidated tables */
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>  		if (intel_c20_compute_hdmi_tmds_pll(crtc_state) =3D=3D 0) @@ -
> 2377,7 +2382,6 @@ static int intel_c20pll_calc_state(struct intel_crtc_st=
ate
> *crtc_state,
>  			intel_cx0pll_update_ssc(encoder,
>  						&crtc_state-
> >dpll_hw_state.cx0pll,
>=20
> 	intel_crtc_has_dp_encoder(crtc_state));
> -			crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
>  			return 0;
>  		}
>  	}
> @@ -2444,13 +2448,16 @@ static int intel_c20pll_calc_port_clock(struct
> intel_encoder *encoder,  }
>=20
>  static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> -					  struct intel_c20pll_state *pll_state)
> +					  struct intel_cx0pll_state
> *cx0pll_state)
>  {
> +	struct intel_c20pll_state *pll_state =3D &cx0pll_state->c20;
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	bool cntx;
>  	intel_wakeref_t wakeref;
>  	int i;
>=20
> +	cx0pll_state->use_c10 =3D false;
> +
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
>  	/* 1. Read current context selection */ @@ -3470,12 +3477,10 @@
> void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  	if (pll_state->tbt_mode)
>  		return;
>=20
> -	if (intel_encoder_is_c10phy(encoder)) {
> -		intel_c10pll_readout_hw_state(encoder, &pll_state->c10);
> -		pll_state->use_c10 =3D true;
> -	} else {
> -		intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
> -	}
> +	if (intel_encoder_is_c10phy(encoder))
> +		intel_c10pll_readout_hw_state(encoder, pll_state);
> +	else
> +		intel_c20pll_readout_hw_state(encoder, pll_state);
>  }
>=20
>  static bool mtl_compare_hw_state_c10(const struct intel_c10pll_state *a,
> --
> 2.34.1

