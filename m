Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3BAA3D116
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 07:01:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEED710E116;
	Thu, 20 Feb 2025 06:01:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N6TBD5EZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F171610E116
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 06:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740031294; x=1771567294;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g5UrAMPOpm/DIW3ez7i+eSPMaWc7EiSEgX8NoVDf3b4=;
 b=N6TBD5EZ5/kiqnAIFev4O4AfAQJ6Y5MZ9d9LAwKUrm9cp2D7CVL/f/Ot
 8rbStHRjDBwAes0gWKvavTevpxRcEL7NhXXcYmlsa/jzFE6pKWiv+sY/+
 BZwvv1gmINpBYgsDBEsS0Y+4oCXLT4YtMpHjZxM3xmzeNBcYpiZNCCXTG
 agk4uumTqeagCLjE3LM9/xblnErkli7Bit4rjPFzOA7iQrblHFxPNCnQs
 K9hd66QAg+khmgPy+8djDzjiQC6EPk201NnuyTAk6YeMovxIy64hfJr8y
 MMFT6my87CpVGdLImx/EZ7/slgEj1GRLviMGQYMZQrr656nMMLbnQA7jS w==;
X-CSE-ConnectionGUID: c584IVc6QoWmpOhRIvQ91w==
X-CSE-MsgGUID: zPrs8K97RK+TYtyQlmgBhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="51414661"
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="51414661"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 22:01:34 -0800
X-CSE-ConnectionGUID: PRsDMk18SaWlpssq4iQ7CA==
X-CSE-MsgGUID: DDE8wWg7Qe6QamSFtlNicg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115845667"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 22:01:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Feb 2025 22:01:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 22:01:32 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 22:01:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m89aVbpXRytZD0DhzHKU9LdwazhpM7YMEi/IDV8dt4o1+JV1oCPQymBwDmAGOveV+waulD6GZC+VMSTFyP5i9EtCRw9QihsYM4fXlVVsfOfVl4XaIbGU3/CZq0xorRz0niGrSSwt4pQqRUBTuXhLCUvhqrp3LkFKaVEwRqMRRAQm1B5Aw1B8hJPRiiUDPPUpsWakmqqoJ6xXe8ZnjW7YZOdV0jkaqFikQt4D87+xDjpaFF3GxrVKW7CK4/aFD0RUws7zNqLyyxWBLny2/+opv95F6qIHqfi0SuYD5m6BjU8n1fXetfY7ks2CJ/8B6ji4rIMbczUfkFF0zaTqx2ARrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PkyZwpCkqQJCqNPPQ1ItFTi9IFoh9ZCd+kBndhWqp8Y=;
 b=Z+rulHw+xD/M8NMU79IFO4gYxUEiscSBRPSwOHOb0eBUzoK8cPY/QkKyS9QcpMiakrfYOe06fsCWOpbr0ACcPjFjaieNbVN5fXaIlLRkxBJ1Bnd94qwwlshNdtH+OJMQnlXA8PJma0KaCx0JdSZo6UWvpnR9YoeYO/v3/cIgYsV/RCvcG9EhrRS8+YuCwd2vAT2hhaIc9z+bGAuCO1Vgl+HuNvdiIlGYtspy+f+7FJxuvxjfZTrxXZw3xA/+Alo+/Tiel/olNL6hGBTpzK8baJwqI9WicqyHWEshH1kvPBpkWrdcXWZmi6pJDzV62UXGEsf9mEHkEqZk25stUJQ8mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB6875.namprd11.prod.outlook.com (2603:10b6:806:2a6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 20 Feb
 2025 06:01:22 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.013; Thu, 20 Feb 2025
 06:01:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Tseng, William" <william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Nautiyal, Ankit
 K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/dsc: Change rc parameters calculation for DSC 1.1
Thread-Topic: [PATCH] drm/i915/dsc: Change rc parameters calculation for DSC
 1.1
Thread-Index: AQHbg0cyqZCt70jqnUGdUqxzMU3Du7NPsa/Q
Date: Thu, 20 Feb 2025 06:01:21 +0000
Message-ID: <SN7PR11MB6750239F361717E2AF71A4F6E3C42@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250220032603.434570-1-william.tseng@intel.com>
In-Reply-To: <20250220032603.434570-1-william.tseng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB6875:EE_
x-ms-office365-filtering-correlation-id: 1d4e8960-de66-4c66-568f-08dd51740047
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OIWvovKy6XKprOBE+a5dBOKpchlbGp47Y0aMsT85/LW/2ti+YUFPspLQQreX?=
 =?us-ascii?Q?gCmeb86XpnXbEua1SlB81UEnjILaClr7PF4wpaNwrCUjPUDAC2xCz+Q9AxvT?=
 =?us-ascii?Q?NVsEg3+Zrt4InlVeceVXwyXrhffcOwJRAImG6QT6O9/yQomZgRRqNYRtjqDu?=
 =?us-ascii?Q?jVSUaC96JibwzLz7MqrVL08quIB5E5fSg9PwMXOT0FJrFXVaYXGDWVGeJ4qT?=
 =?us-ascii?Q?nJgsKh4rGK93JRXxKGtpiCHyv1IO0gpRlgcs4fo7o0j6Qull4oa5Th9HdzXz?=
 =?us-ascii?Q?MxKgrXKiAC+yNljaitWuZ3itBc0GUDoQ8yL2/70hv4BTBAun6/lQoaZQeHVp?=
 =?us-ascii?Q?AGRJPnekRUAEj0Pgi1PmJ9dlXrHcWyZPn+jdLZTof57rzfp4c9xENgwsdxwK?=
 =?us-ascii?Q?LrHi6H683iDmWuRkG2kngNbc+1Sr7nEszrqs5YlpQowRcry71skP+tfQ2VbY?=
 =?us-ascii?Q?iEQttHKEDFvr+/8y87U7Q3CZtKiFXYSGm7j0RCDwM5EVgEZz0xo4eSRf42KD?=
 =?us-ascii?Q?bXaGnmrQIApjJl7BoQc2cSNzdRfzdkvfMMC7RL+Pq224fVSoqGFvPLirys25?=
 =?us-ascii?Q?g4j/XD1dOU/bIWlfQ6dhU9ZNctA0Q2Yibwn5AewxqSc9Wn5VKE5aFr2aaLWK?=
 =?us-ascii?Q?9S0xSdPU/AAztAs2P4hF2LmgBLrp3KaxA0Fvq19vwGp96ES5bTeB4G3Xc0N/?=
 =?us-ascii?Q?6/Ve/zGt60/ONpC1rLZkEC0GZlmEWQFquGpODKMlmvw7m7CwGJbIvus5gaSm?=
 =?us-ascii?Q?8sVC2oBdB4chfX5YgPxKQy+JzruDJsKamS465r0Z63ThDA0ziAWmaUrBSg36?=
 =?us-ascii?Q?ftoOVpMw0eLdcDyI2KNVHWReflN62QvVkexEDaWw7vO+aMV9p1hAmd/Kh9dO?=
 =?us-ascii?Q?7y01t25PHjhPGxzBeKmPLE4JqMGQnKCgohQv34jVeOlpkTlvIbU3oDfE44s5?=
 =?us-ascii?Q?Njg70POP6RDQneujd6q2MMJdQTdRbpVReJfMZM4J70lGBxjIJJ//jcGJCY7k?=
 =?us-ascii?Q?XR80QHjEO0ATOT/mxBxcsASIpIYMjoMfjVPLkvrBswJQw4St9rKVudMy/dnz?=
 =?us-ascii?Q?HxJglX/WbnsU2dQlLvcokVNDVR9KMRSnMvKrHKq08AjCDFE8O4Dh0y+x9amg?=
 =?us-ascii?Q?Qjkwi/8olYMYvCfnowzGknlnWpxCXzQEt8VNvoLCI1l5y9BQez0eWf8xxdip?=
 =?us-ascii?Q?DpK0wAEt80uyYtQKLBGhpyUOwz0UVijp8WhgP2B8svE+kmBxnPaytVvJeZLK?=
 =?us-ascii?Q?on6j4fQ64AyG5XTzMlxF42ZXjjk8cNEVDfgVSox7TvoHxCTpmTu2D6kUIO7V?=
 =?us-ascii?Q?gr1qRwT+bfuMmmK9YUUBoETFThLGZco+julZrmi1n7YgvoIxEs+lLAcCqzM1?=
 =?us-ascii?Q?aZ9k3auRnt8j5AoMQC8usj2nSrCHzCDaw11EOSJaNzo1c6y9xrfXemlqSe1/?=
 =?us-ascii?Q?qg0zId6060TVjSXBjD2N/zypnG8JHu5y?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1aOt5Bb/6Brfgelai+hWx0niHfYmV0zGotn54lhZ7YUdbu9BgKlNWCEezBij?=
 =?us-ascii?Q?5rHlblypWYy8cLMVEWR8bw+nBEVZZrloK4eIpstjFYERIiBE0RrX9XQwiDfE?=
 =?us-ascii?Q?2PPtuNdq/mf8CHbQME/WE+EkiJOYasZMgIYpT0tMzmPvTG9hHm2Our2Gxn8a?=
 =?us-ascii?Q?v3gMk97q8mdQaYgEZrVUp8TmqtFE9rm55gYtk8RVTg83kBSrmXLej2oyTlHs?=
 =?us-ascii?Q?6CS2Ua68/k2U+OpVU84JNWF5xe5bS890zwyUOKeHIvuS8LMgB4GulrCtlMKN?=
 =?us-ascii?Q?YSUOo8wyik3MuXp0p6ZsTYSLB5wg+dd0T87YR6347GypP7OiB9JEPNnOoPVU?=
 =?us-ascii?Q?T/rzf7QsG8GGywwvVnJblPeJt5oHUmSkptpkENz2V8XW1YAEWCQPFzLJEaNX?=
 =?us-ascii?Q?5V2oKFq0IuCu3M3O4p5YvHEjuTxyEai8PlBweFJiOjnvx+sckBddS0F6Cude?=
 =?us-ascii?Q?wSU4sX3xldJFTTpEe+dPLKEaEjw5+2BWpRkEVeIjUHe9LilSsuUM0XLFb78B?=
 =?us-ascii?Q?YGRcUxQeO0zprqyWHiK12Wm9u2rx7q1pR8gIGwFVzCOYngkplC5khuKwpCai?=
 =?us-ascii?Q?SSj/rnUnMHameTPI+8dWXLdQn/4JaahmgRG7HpQzPovdlc2eE7iJ71mMFy8R?=
 =?us-ascii?Q?+LicsD+UZV23wICYINv1P4HGeklHA9yATHST/OIQkoncYRIkDGZf72tQhNiA?=
 =?us-ascii?Q?LASY1QGU08mA+13W/3ltBZWCgVaw0eWFpJ6hr7LAJTQoW6Lq9tiXkpnWeOY9?=
 =?us-ascii?Q?bVDVZoRt8dIteneovBCRBeKtCMqbO/km0gbLd1YEgzRJOI9fIHsHGyuCTO4d?=
 =?us-ascii?Q?XKftsMdTQ8GKotLzW2x+AwGFzOUJEyPDNKRXhL+3h+dSN/0tUrL7iP+OXMmQ?=
 =?us-ascii?Q?fYDak7m/Tnm0TuZgE61fITfZhQMQCyqk9ectXJCJYkp4dSyoifNBjORzQq8s?=
 =?us-ascii?Q?zi30PerTVh+NHWBF0OJ9Ql7Vdp0Irl9A6VMDe9Fchx9Xwh0DB9g/vSJWmzA1?=
 =?us-ascii?Q?CYFDPuK/L65gnK4aHmKbjmEBtFqmHx7r7jGXKc4152JoiupOJr8IJ2PNA0dl?=
 =?us-ascii?Q?WUK5ENmuc6gP98QIATcGdZAh0uVyhzORS4+IzYAsa8hbYExXNFKCCZW+aCOV?=
 =?us-ascii?Q?A7L+Bp6huJ18I89CUi85izifIke+6ixiQYlHPvX2K2rRaUHVqKaq7z1FIus0?=
 =?us-ascii?Q?bmtxsiey2pH+Pz+5WmuwgaqzIhAtjH4nwhPaTcbUd6LIGLXJO+nmowMj2fzB?=
 =?us-ascii?Q?bsXBDXgXKXt/bfVfNIt4XH3BAN9WdBV9AmCqTr3ioXvzaYyqdiGfZ1Oj958N?=
 =?us-ascii?Q?oK01vxNQBaiBU9LUARMrHLnA+0pMazx1hU/kxeOoSDgUB4hBJ+X+9oDMy26m?=
 =?us-ascii?Q?norzWQ09qwHEp04acGhLjshtUfJBLJWWhcJ1FbKx3Y+JHZM75qVugbfgL9eR?=
 =?us-ascii?Q?k+cu6BTNux6b4UEUt7MPh+6ZyA0iEdB6w5rwFJW89oHKwKLk3my1rhROzcoo?=
 =?us-ascii?Q?pLkRo6xxuVe+vEAVGR9MrNBGB67W2B4Di5YWuye3kX39MGZJ73RuOubejde3?=
 =?us-ascii?Q?yXGmlXeSPPt4V/6NFBag016jhY/EWkmggk5bOtVd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d4e8960-de66-4c66-568f-08dd51740047
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2025 06:01:21.8990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MChHHlVSjrKHjNJcY95IKcEF8xMEXrysYAI9Pd0TMVHaAmFlmWvmPByT+jc7OjAhaLwKpkI9dwBhlVGNpLuKdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6875
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
> From: Tseng, William <william.tseng@intel.com>
> Sent: Thursday, February 20, 2025 8:56 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Tseng, William <william.tseng@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Heikkila, Juha-pekka <juha-
> pekka.heikkila@intel.com>
> Subject: [PATCH] drm/i915/dsc: Change rc parameters calculation for DSC 1=
.1
>=20


So to start with this needs to be sent intel-xe mailing list too

> When calculating dsc parameters, the rc parameters calculated by
> calculate_rc_params() may be incorrect in the case of DSC 1.1 and

"Maybe" does not work to get the patch merged we need specifically
what param does not work in calculate rc params so needs some more debug
before sending a patch over.
You can compare the dsc param dump when we use calculate rc params vs when =
we
Use the tables

> DISPLAY_VER(dev_priv) >=3D 13 and cause noise-like lines displayed on a M=
IPI DSI
> panel supporting DSC 1.1. The calculation seems for DSC 1.2 only. So, ins=
tead of
> calculate_rc_params(), calculate the rc paramerters with the function
> drm_dsc_setup_rc_params() for DSC 1.1.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b355c479eda3..e3443a1d12e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
> *pipe_config)
>  	 * upto uncompressed bpp-1, hence add calculations for all the rc
>  	 * parameters
>  	 */

You need to amend to comment explain the additional conditions

> -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> +	if (DISPLAY_VER(dev_priv) >=3D 13 && vdsc_cfg->dsc_version_minor =3D=3D
> 2) {

Needs to be >=3D 2

Regards,
Suraj Kandpal

>  		calculate_rc_params(vdsc_cfg);
>  	} else {
>  		if ((compressed_bpp =3D=3D 8 ||
> --
> 2.34.1

