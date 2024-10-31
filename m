Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D48559B7CD8
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 15:29:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7681010E8AC;
	Thu, 31 Oct 2024 14:29:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rw4O8uGH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA3610E8AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 14:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730384961; x=1761920961;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p27rxilwm4UFvyIGYJFyFKALiHJ5Cyyf0/NuLCe7aaY=;
 b=Rw4O8uGH/OgYGDRPci6CROHt9jo51uf2Vc+QDGNR6Y2fRy3dGycw0jzl
 SMG/EyIv3Q8Lou65XGBcaPVL5pxy7VuDmAWyZrNdHOn/LUBfPjEDW2ORR
 NGSoMMQVcjCdkM7hJLWQ0qAS9PcHkT8P3P0k9xPKPfa7jnVSY9O1bcFy/
 qTMLmdFkv7WreIb5SeWeiGnR/Su3mQR4GlEMbMuta/gv0YTYqv5kLU27f
 1IGdNla6JnmUGxcsAiXVxwWjcy1YjnJY2VY/kM/GFUK+B0dNICxfwv/yZ
 f7m4VEqjeUKIpmc5JRAUBrjSJG3aBvUs6k8DCC1k/d8kRxzOYU7KguPU1 g==;
X-CSE-ConnectionGUID: wPxEsbWfSxWnZMuEy3i8ww==
X-CSE-MsgGUID: WY1OjPW4Tfacw+YzHWiZuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29981921"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29981921"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 07:29:21 -0700
X-CSE-ConnectionGUID: /GOWP1eVQMC2tFUkjKIsjg==
X-CSE-MsgGUID: AsIAzhmOQeOXi3iNOxgvsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="87173399"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 07:29:21 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 07:29:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 07:29:20 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 07:29:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hyQI+xZVNWEo6OjVa4JS2IErGBJGef107hjtNCHCHw/E7Vr2oXBTOSfuA4aQasyEFo7aEprgldY36ffKiA2ddg1ZUwfUVPzCsM8wsoYhoB4cB+7YYn4JgaxD6g8Os1VJWPxm8ji1/iWX+tEZxFy2RoN3cQ1sAkYdtsZPLjNZBsxXzaF/j6ivVeoJ7aCIHKsElUzESe3qRhnhhW5vCtaUXDCCt7qXWDBwO16+EH74WhHa6tIHLrpn3d5Fsn3fQkEsrHjTaT38SSF2TR+L5ySCqq+PLFd6q5AWk2B+mDAh4oAKPxJ50Vwt0cCxkYJVKBUJBXnjWYeNFHjz9apM/enbsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p27rxilwm4UFvyIGYJFyFKALiHJ5Cyyf0/NuLCe7aaY=;
 b=IZrbe+5rOapj6fdTjTX5UUhlm6BqyJtYfAHv5v589PRYan/VXiTM4NFdrAUGb8Y9vUCx97W6HBRHwExs4ngIoJGSO7DYYG1+fmpytvt5IiYwf7fuy/ua3kdFiZm275DpskzezI6pNRmClKpQX0560cbTU1AVALk3CWSKTRW30BpVq1NPXTY1FG24FXFhONTXJZ5X2+f9b2XyWLf40QZHyjCsniuiiOFBbiNq7hR1JF8ToUkpHhHN23Jx0ecmNWzWlkTipvyQzgHDsZsixQA1de7QalyyvzRZmO8S4sPjzXQQFLCdFEcCW37SIZav5UrZ434mXJHVhyX8S51kEGgTew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB5921.namprd11.prod.outlook.com (2603:10b6:806:22a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.23; Thu, 31 Oct
 2024 14:29:17 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.027; Thu, 31 Oct 2024
 14:29:16 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Jadav, Raag" <raag.jadav@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v3 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
Thread-Topic: [PATCH v3 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
Thread-Index: AQHbK4rwFb3jKXhIhEOpDuXThCMgYbKg0SOAgAAaEyA=
Date: Thu, 31 Oct 2024 14:29:16 +0000
Message-ID: <MW4PR11MB70547BFB1F1942AAA3E94889EF552@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241031114027.225217-1-mika.kahola@intel.com>
 <20241031114027.225217-2-mika.kahola@intel.com>
 <ZyN-K6kvCJdri7Lj@black.fi.intel.com>
In-Reply-To: <ZyN-K6kvCJdri7Lj@black.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB5921:EE_
x-ms-office365-filtering-correlation-id: b7332017-1070-4c55-55ec-08dcf9b86688
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bTZjV2VpLzBjVW9xcTVXMDNxb1I0QktyZW1SaUFWWldNOGlNdnJOLzZlN1BS?=
 =?utf-8?B?NDNtbnViWEtRRjl5d0tnK3IxWXZYVDI5Ynp0ZzdPSENFRURvVzBHNWUzekpI?=
 =?utf-8?B?SlUvZTVPYy95VExVM1pKd0FwTkZMcUlEKzIzUjY2NE5hWFFGdEwzM3oxSkZL?=
 =?utf-8?B?bGlma0kvTDFaUWRUQ0FvR3U4dG04cFJtWGQ2azJ3dGY2clQ0WWEyMkoyZ21l?=
 =?utf-8?B?V1JyZHhtNE5ZU3FEanNmbjBlOG5wbWVrdDZlUmJnK0YzZEh0VjhOV0tST0xZ?=
 =?utf-8?B?NXowZzlDa0MyNXd1aEVSUGVlcGJmRnpLY1VBMjNyaEJEN2JRL1lzMS9xQlAy?=
 =?utf-8?B?cDFkcEhWMGFtanNCR2NiMmdKc29iSkRzdEQvNzVMMWNrelQ5UFJ6c0xQUlZW?=
 =?utf-8?B?OXoyVmdiSTdtSFhueDVydjBLckQzVVh1bkQvdXdDeWFpZytuMjRtNWVySDVi?=
 =?utf-8?B?ZVlJQ29JOWxuK3F0ZGlBT3BTVmlDOUxJaGkwekxiNnlDQTF5TndWL01lSVBM?=
 =?utf-8?B?WWFpeG5hRHdZREpWc3hGTFZVZWcyR2h6SEZiREF1UkhEQTE2MlN3cmtnOFdM?=
 =?utf-8?B?cmNHazZwMnZYNFFmQllXVTVWYVBpZWNrdXFUV3RYMkE4TS9MOW9NQ0xSVkU0?=
 =?utf-8?B?QUljY1ZvS3lLMlEvd01DOWNPd2dzUEtxM2gwSFMxY0Z5VHVrYmhHV3dvQWsr?=
 =?utf-8?B?L1c0T0Z4dG1UMmZhM293elI5UXZVdXlvVEE3ZU1NSmp1dUVkVGZhTUU4L2Zk?=
 =?utf-8?B?Z3VrVjI5UEYxa3VhS2NHVEFVRjdmZXRaVnZLY1dlYmUyR0ttMlJqMnVRdFY0?=
 =?utf-8?B?VEgxMGl0VG43cWdwREhXL2EveENsWUt2NXkxZXpXMGRnU2JGUGRZVFRROStQ?=
 =?utf-8?B?c3NsSVNicHo2Y0V6b2ZzY05pNmNyYlU4QmRvTis2RDQ5eWJ0OUtPNDd1MWJr?=
 =?utf-8?B?REdNZXlwMTZOMlZFbm55ZHhFWFFCL281emJGYllrWG9EUEwvd25seGZUSHBt?=
 =?utf-8?B?dm9WZXJTdUxGNlV3UEcySkovb0RjTHd5d0xxUXFiRFJuZXVHZS9hbGFYbzJK?=
 =?utf-8?B?MzVPUkkzZWF4bXJNL25CQnlreEQ5M05kYWFsM04zbHdzZVVINDdUMGZRQ1o1?=
 =?utf-8?B?aFg5ZWhqazZzNy9uSUZXSTgwOGJ2WjU5dlVDbzlRcUNNdXl0bXJ3WUNuMlg4?=
 =?utf-8?B?M3JseXkxMUFxNkpNSGRJZHk3c2RKVjRQdERaZ0hwdmtKMURUZ3lZTGNJRnJl?=
 =?utf-8?B?aW4ySWhzVnVaeWdzejlUQXpkS1dJWEJRTmloVy9ReGVnTkE2SWNRb2NkdUZZ?=
 =?utf-8?B?WHpIK05RTG9SR0cxUDNGZ0ZwZURtU2tQaWxJVERhR0VTSzVLM3lNVDhQSWtX?=
 =?utf-8?B?cFdQeGhBak1YVkJpSk44VURPdHlrUlFVcGVZYUVSMmFOaEtraTR2a0h1YkhV?=
 =?utf-8?B?cUE3TExSNm1kdTgwaUY4bUNpTnZVRmhXamVPcVYrSHBORXdYdFJwNTc1NDc0?=
 =?utf-8?B?MVBrYWNDWVJXRmZPMWNCa3NJY2wxZyt1RG1GQ1lvUG1ibExYVUxrQVhUK1Fk?=
 =?utf-8?B?UGdhVG96cExYbFpVVHg1K1drYjRXaFdyQUJobXZnS2lMRzZtc2FLdmRoR3VK?=
 =?utf-8?B?SFJHZ3lvN282bmZEczdrQzArdi9tNFp3bzZ2Z3F2SXR1MkQ0VGZPblpJamRy?=
 =?utf-8?B?UnQ0cFFTd0YweDdGZWEwZUZLY0ZJT0w2TE5kZ05NYXRsUVBaZUtrc0EvajJi?=
 =?utf-8?B?TllBTmhEV3pUWEl0WTFKZkZHSDJLY1dXNU9CbHg2V1ZUclg2SGR6MzlJNHNJ?=
 =?utf-8?Q?7EaWWgObPf927AfDcrAPnKUWAnujU5e6OzCcE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHAyZEloZ1A0dzdRejNFa1ZIeGF5LzZzcTFYdGhyeTRnMzlWU3BXM0Vpemc0?=
 =?utf-8?B?Y2hrWWFxVlFuNFBEUmdZTlNGMWo5dEJZa0p4eWpzaHpESGYydXJ0Y29nZnh1?=
 =?utf-8?B?bkF0M0xsTlVjb2JXQnh0c2Z2MFFlSFB5Nk5uUGYvNmxkajhlTCt2V3IvOUpO?=
 =?utf-8?B?OG55RjFJWnMzNzlGN0Q1cnRIVkpBeXFIZVVpU1J0dlArUnAwS1hocDhZbXZt?=
 =?utf-8?B?bkFIWlZsL3IwWUMvVlZ3T2lTcjF6MWpkYXQ3Y1pPRE8yUUVxNExPeVQrbUhu?=
 =?utf-8?B?S1R4VjBLeXltd2xWQnNSWmpKdTByRjVmWjF0cTNURm9lZGExWXpmNDRXY1o4?=
 =?utf-8?B?VFhDN1d0bUF5ZEQzaGhLWVBKQkJDOWJYc1VNWEtUenpkY3hmTmp1QVZkRXNY?=
 =?utf-8?B?RGVsazJjUVVTakp0dVlYYitLTW5EYkI5aFgzTlBnUG9uTkkvQkc2a0p2cVFY?=
 =?utf-8?B?T2FBTS9SN1doVWV0T2NyTHovd2pWdkJYOVVqMmYvVzg2dlhacGUrQ1grb3Rp?=
 =?utf-8?B?K1lXMEJMZURxejJ1cDdJd1hxYTVqa2doeHJhTzdsejF6eWRNWVF4dEhVUEdx?=
 =?utf-8?B?VDM5UW85TGFEeSt2Ym94Tno5S2M2N21sd3JML3FSVkdzKzNMRHQrQVAwTmI5?=
 =?utf-8?B?M0NsbVZhcTlDdkw5TW45WkRwV1NJMXMxQWV4VzBLbW9NNVUxNU4zOG5waGVo?=
 =?utf-8?B?NmhsT29pdmI4SVRYdEQzWThveFpBUnRVNmQ3cG83NFRaTCtwaldWV1FTRkpB?=
 =?utf-8?B?SW1RTE0rdzMwNmFkTTJJSGQ1aTdqRWtTbm5ySWFzVXVRMFVuakV0cXBpcTNv?=
 =?utf-8?B?aDBQa2d2VkIyV1hUcUFHOGI2RDJ3cDE0cVJjdlpJbXgyemZVZmRrS01kSDVi?=
 =?utf-8?B?U29jZm9venlPUkowa0NmRGhPc0NsTmdwVTI4aTF5QWF5R3ptd1A0NDJvNHJS?=
 =?utf-8?B?dWo0RGxQM3BYc01WdU9OUEpxVXpNRzlrSnprcUpJL213alRyYjBKM3pvMzUy?=
 =?utf-8?B?TjBOVlc5cmFiWDNzbWpkZU05RXVtdGJCdS9QYmtrK2U0NTRRenN2VWZ3UkFo?=
 =?utf-8?B?akZuc3FzVkFPbG1yYS9WUzFnSnhzNEdac3NNWFYrOUFJWS9JUzNDTmJqeE1K?=
 =?utf-8?B?aTA4ODZBN1hidGRSUUlWWGdQd2VvQnpuMWo3Q2NUSStKQllFM3A1M3ZLNXpT?=
 =?utf-8?B?UUlxOXNmSGxUU0VkOEZWMmZhMlhtUFlpTTFiTkkrL0NBdWFqSTFCaWk1WURZ?=
 =?utf-8?B?ZlFrRENJNldWY1dwdXBaQWxEZ0loZlp2QVV1cXN3eXBjMm9LelJEL3JqeTdH?=
 =?utf-8?B?dGNrdXdPR3ZQN250MXkxWHI2UXoxbmRGQUU5YkN1ZzdyRHk2eEFIWnlxZzBv?=
 =?utf-8?B?UW85RHRJTjVvYk1hOWQ4ZWJ2ZUU3NjhKTzk1dzlWUi9Qb1dHZjcwSjc4cDV0?=
 =?utf-8?B?MWxIT0dUMThHR2ttOGNIdDFzVTJsdHNHbzFIVFdBWGtNVldrRWo4eVBPWjZH?=
 =?utf-8?B?NE9WZjZwRTZoS1FVcnI2MkN1eW5yQkFkUm94OXFBOXNNVHJzSHBSUDZxd2tx?=
 =?utf-8?B?UitYV3NqcGZWdHJvQnRhSzdFUTE1bmJWRFNZUEg4MTdNbklyUzhIcjc1RjJZ?=
 =?utf-8?B?UjJlblBXZ3BrZ01uajBjdXVVcm43VlNFdUNWU3VKV2xnaGNYNFVoVU9MVWNF?=
 =?utf-8?B?ZHFZZnpZUEJnc3VXTzVFelV6b1gwdDRrQ2lRbFhmNnZTRk5JTGtkOGR0SEw5?=
 =?utf-8?B?UG52U1drdGJXd01LdWZVdjFpd3drNkVZOVZjV04xQjBZUjFFbFphVE9abDBJ?=
 =?utf-8?B?TzJubUpzbHVwUXBlUGpSM1JpcW13SXZ4QjlCaEt1c0JCelAvb0dGVTJzcTJr?=
 =?utf-8?B?dFI5bG1ORlRsYW44bkZEbWdEZllNOHBCSXhXbWs4SE1JVG1GalUyT3UwczlT?=
 =?utf-8?B?cjFtNFlMeFpzd1g1SFdUZWxkT0FYUUNyUVF2K0JDdk9sdUUvL04wYTdPWklG?=
 =?utf-8?B?NE9PZHJhL3hESy93NW91R3hGenlUVUhZVjJVcjZkZlhGZmZ1RitscllvamxF?=
 =?utf-8?B?Tko3QllMRllGS0tqTXNoRHNqL1lRK0NXSCs2bEZjUkF1OTduMDB1R05ud0o4?=
 =?utf-8?Q?/aN8Y+nQPyAPay2SIRtKc8u8O?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7332017-1070-4c55-55ec-08dcf9b86688
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2024 14:29:16.8744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZCuWqab9QIHDZrRgS3/GIubICiRg2/bmg5mKKH3tyl4UTJLDQ5mEel1A459Va7gASBmPr4sDC2ZPEB+SGU5F+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5921
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYWRhdiwgUmFhZyA8cmFhZy5q
YWRhdkBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAzMSBPY3RvYmVyIDIwMjQgMTQuNTUN
Cj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FA
aW50ZWwuY29tPjsNCj4gamFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tDQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggdjMgMS8yXSBkcm0vaTkxNS94ZTNscGQ6IFBvd2VyIHJlcXVlc3QNCj4gYXNzZXJ0
aW5nL2RlYXNzZXJ0aW5nDQo+IA0KPiBPbiBUaHUsIE9jdCAzMSwgMjAyNCBhdCAwMTo0MDoyNlBN
ICswMjAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4gPiBUaGVyZSBpcyBhIEhXIGlzc3VlIHRoYXQg
YXJpc2VzIHdoZW4gdGhlcmUgYXJlIHJhY2UgY29uZGl0aW9ucyBiZXR3ZWVuDQo+ID4gVENTUyBl
bnRlcmluZy9leGl0aW5nIFRDNyBvciBUQzEwIHN0YXRlcyB3aGlsZSB0aGUgZHJpdmVyIGlzDQo+
ID4gYXNzZXJ0aW5nL2RlYXNzZXJ0aW5nIFRDU1MgcG93ZXIgcmVxdWVzdC4gQXMgYSB3b3JrYXJv
dW5kLCBEaXNwbGF5DQo+ID4gZHJpdmVyIHdpbGwgaW1wbGVtZW50IGEgbWFpbGJveCBzZXF1ZW5j
ZSB0byBlbnN1cmUgdGhhdCB0aGUgVENTUyBpcyBpbg0KPiA+IFRDMCB3aGVuIFRDU1MgcG93ZXIg
cmVxdWVzdCBpcyBhc3NlcnRlZC9kZWFzc2VydGVkLg0KPiA+DQo+ID4gVGhlIHNlcXVlbmNlIGlz
IHRoZSBmb2xsb3dpbmcNCj4gPg0KPiA+IDEuIFJlYWQgbWFpbGJveCBjb21tYW5kIHN0YXR1cyBh
bmQgd2FpdCB1bnRpbCBydW4vYnVzeSBiaXQgaXMNCj4gPiAgICBjbGVhcg0KPiA+IDIuIFdyaXRl
IG1haWxib3ggZGF0YSB2YWx1ZSAnMScgZm9yIHBvd2VyIHJlcXVlc3QgYXNzZXJ0aW5nDQo+ID4g
ICAgYW5kICcwJyBmb3IgcG93ZXIgcmVxdWVzdCBkZWFzc2VydGluZyAzLiBXcml0ZSBtYWlsYm94
IGNvbW1hbmQNCj4gPiBydW4vYnVzeSBiaXQgYW5kIGNvbW1hbmQgdmFsdWUgd2l0aCAweDEgNC4g
UmVhZCBtYWlsYm94IGNvbW1hbmQgYW5kDQo+ID4gd2FpdCB1bnRpbCBydW4vYnVzeSBiaXQgaXMg
Y2xlYXINCj4gPiAgICBiZWZvcmUgY29udGludWluZyBwb3dlciByZXF1ZXN0Lg0KPiA+DQo+ID4g
djI6IFJlbmFtZSBXQSBmdW5jdGlvbiAoR3VzdGF2bykNCj4gPiAgICAgTGltaXQgV0Egb25seSBm
b3IgUFRMIHBsYXRmb3JtIHdpdGggYSBUT0RPIG5vdGUgKEd1c3Rhdm8pDQo+ID4gICAgIEFkZCBU
Q1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfUlVOX0JVU1kgZm9yIGNsYXJpdHkgd2hlbiB3cml0aW5n
DQo+ID4gICAgIHJlZ2lzdGVyIGRhdGEgKEd1c3Rhdm8pDQo+ID4gICAgIE1vdmUgcmVnaXN0ZXIg
ZGVmcyBmcm9tIGk5MTVfcmVnLmggdG8gaW50ZWxfY3gwX3BoeV9yZWdzLmgNCj4gPiAoR3VzdGF2
bykNCj4gPiB2MzogdXNlICJzdHJ1Y3QgaW50ZWxfZGlzcGxheSIgaW5zdGVhZCBvZiAic3RydWN0
IGRybV9pOTE1X3ByaXZhdGUiIChKYW5pKQ0KPiA+ICAgICBNb3ZlIGRlZnMgYWJvdmUgQzEwIGRl
ZmluaXRpb25zIGluIHRoZQ0KPiA+ICAgICBpbnRlbF9jeDBfcGh5X3JlZ3MuaCBmaWxlIChHdXN0
YXZvKQ0KPiA+ICAgICBNb3ZlIGRybV9XQVJOX09OKCkgaW5zaWRlIFdBIGZ1bmN0aW9uIChHdXN0
YXZvKQ0KPiA+ICAgICBSZW5hbWUgd29ya2Fyb3VuZCBmdW5jdGlvbiBhcyB3YV8xNDAyMDkwODU5
MCgpIChHdXN0dm8pDQo+ID4gICAgIFVzZSBib29sZWFuIGVuYWJsZSBpbnN0ZWFkIG9mIGlmLWVs
c2Ugc3RydWN0dXJlIChSYWFnKQ0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5oIHwgIDggKysrKysNCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jICAgICAgIHwgMzIgKysrKysrKysrKysrKysrKysr
Kw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5o
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5o
DQo+ID4gaW5kZXggZjBlNWMxOTZlYWU0Li41YTBiNTVjY2E0YTMgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5X3JlZ3MuaA0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmgNCj4g
PiBAQCAtMjAwLDYgKzIwMCwxNCBAQA0KPiA+ICAjZGVmaW5lICAgWEVMUERQX1NTQ19FTkFCTEVf
UExMQQkJCVJFR19CSVQoMSkNCj4gPiAgI2RlZmluZSAgIFhFTFBEUF9TU0NfRU5BQkxFX1BMTEIJ
CQlSRUdfQklUKDApDQo+ID4NCj4gPiArI2RlZmluZSBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTUQJ
CV9NTUlPKDB4MTYxMzAwKQ0KPiA+ICsjZGVmaW5lICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01E
X1JVTl9CVVNZCVJFR19CSVQoMzEpDQo+ID4gKyNkZWZpbmUgICBUQ1NTX0RJU1BfTUFJTEJPWF9J
Tl9DTURfQ01EX01BU0sJUkVHX0dFTk1BU0soNywgMCkNCj4gPiArI2RlZmluZSAgIFRDU1NfRElT
UF9NQUlMQk9YX0lOX0NNRF9EQVRBKHZhbCkNCj4gCShUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURf
UlVOX0JVU1kgfCBcDQo+ID4gKw0KPiAJUkVHX0ZJRUxEX1BSRVAoVENTU19ESVNQX01BSUxCT1hf
SU5fQ01EX0NNRF9NQVNLLCB2YWwpKQ0KPiA+ICsNCj4gPiArI2RlZmluZSBUQ1NTX0RJU1BfTUFJ
TEJPWF9JTl9EQVRBCQlfTU1JTygweDE2MTMwNCkNCj4gPiArDQo+ID4gIC8qIEMxMCBWZW5kb3Ig
UmVnaXN0ZXJzICovDQo+ID4gICNkZWZpbmUgUEhZX0MxMF9WRFJfUExMKGlkeCkJCSgweEMwMCAr
IChpZHgpKQ0KPiA+ICAjZGVmaW5lICAgQzEwX1BMTDBfRlJBQ0VOCQlSRUdfQklUOCg0KQ0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+IGluZGV4IGIx
NmM0ZDJkNDA3Ny4uZGFiMmFjN2VjMGRkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+IEBAIC0xMDEzLDYgKzEwMTMsMzEgQEAgeGVscGRwX3Rj
X3BoeV93YWl0X2Zvcl90Y3NzX3Bvd2VyKHN0cnVjdA0KPiBpbnRlbF90Y19wb3J0ICp0YywgYm9v
bCBlbmFibGVkKQ0KPiA+ICAJcmV0dXJuIHRydWU7DQo+ID4gIH0NCj4gPg0KPiA+ICtzdGF0aWMg
dm9pZCB3YV8xNDAyMDkwODU5MChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiAr
CQkJICAgYm9vbCBlbmFibGUpDQo+IA0KPiBDYW4gYmUgb25lIGxpbmU/DQoNCkNvdWxkIGJlLiBU
aGlzIHNob3VsZCBmaXQgd2l0aGluIGV4cGVjdGVkIGxpbmUgbGVuZ3RoLg0KDQo+IA0KPiBSYWFn
DQo=
