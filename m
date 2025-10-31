Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB342C24CEE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 12:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A48410EB19;
	Fri, 31 Oct 2025 11:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BxnWleYd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA0910EB17;
 Fri, 31 Oct 2025 11:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761910677; x=1793446677;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CF0iC/034KC3xmStdOo4OxHEPQx0LGjleOwwj0S3FJI=;
 b=BxnWleYdLrPyYdh4t63xDaCjnN6aScqQEf1Zsj9SwJMXnzDsgk39vhe3
 +IbEPE0We9J5EU8Hp1yDUoC8RyLzUmlpF9FApDbCq+3rNRdzciEC52kQG
 emOk9BOqKUWyk39mjWrEwsnWD0GsvmhGVSmYJgBAlvyg0hvnlzK/Z1goP
 t3KWb8lRf0aq6tpO7EWelQQU2v0o6BxyaGbKxk6wbOp8EUS1qiZa4iP6U
 urle07Idd57E9U4yT1/GbyH1cKEfwWkeU7X/PRO+jgpCIKeERunua89Wm
 czLJfym9N+D6juwKpKXP4qklgcRV2lB3+X+Y7o14xG6QCRwJ7samOisj+ A==;
X-CSE-ConnectionGUID: vpLU3f7gSUO4RcWy+vnVMA==
X-CSE-MsgGUID: JPgb4USJS22oXTvD5+GyBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63975067"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63975067"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 04:37:57 -0700
X-CSE-ConnectionGUID: x7rK+dPpQAWRH8NsSwvqHA==
X-CSE-MsgGUID: ed6iF2coQB+Frt990QjBow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="191363381"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 04:37:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 04:37:55 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 31 Oct 2025 04:37:55 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.18) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 04:37:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YB8GQdos52p8BOHNh2wD9+lJlfTCbdgm9aZ0TJmY1pGKj1yMtL0dReJlaFOH0utjSUxKsajcnDltA3iUV8wUhK308iz1lzV3UbagPcIRiAUS7GGDFxgLm0wZpTWfxP9wGqmMkAVMsLkqmwSkiABPkSp7KVOhQU0VJW6aN0TMivR7Ke06fHPK2yc/ZW8WPssozrqjnof4gx+xOxQl0wSwjZVMoWzDfllveEguWsc/EMvKuiWykJTlb+ftBArXXyY8ohjq7h9T44ttDtpYMl70EOmZUIOxzpTdCTmcn78v+Ay/QbiiC/Zhg08IIEUqUVELtVlB0bnV9bdUj4PNFEEd4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CF0iC/034KC3xmStdOo4OxHEPQx0LGjleOwwj0S3FJI=;
 b=AH7xgepE+u8qD5wE6XESeuw14CSUkJ427wGg0CNkUa9ahRdjIqebzTNy5b/lqbWUzZL97bAwcCeK1XbmikGUYvsPCmznkbdvTtvHGmjISqRz/OkUYYCVJM+6ixDFzgg9NAPpguHCYFlkN9FfdZNNysWVsKg05yLGGcxmYDzjzygizdYYMLvis/6ekjVdg5vRd1Nsv5uAFjGFhX94OxkeNj+thjxakn0ZzV9UTP9Z8/RiO4ew+FdphKCJXCEQ2z7nT8eSLKrV3B/L9mmIuCoAnaZI24XGl6C6zOQOGG6aCZ0TLAFCWLRjH/KEWAaUhgUI99L72+YPtKyVovbnPBD50g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS0PR11MB8231.namprd11.prod.outlook.com (2603:10b6:8:15c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Fri, 31 Oct
 2025 11:37:53 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9275.013; Fri, 31 Oct 2025
 11:37:52 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v2 4/4] drm/i915/xe3p_lpd: use pixel normalizer for fp16
 formats for FBC
Thread-Topic: [PATCH v2 4/4] drm/i915/xe3p_lpd: use pixel normalizer for fp16
 formats for FBC
Thread-Index: AQHcR0dO5aOQk5lWdECSAV+zafY4ubTa8JgAgAE2bAA=
Date: Fri, 31 Oct 2025 11:37:52 +0000
Message-ID: <fef8bd2103c65a90d93ce2b8e3fc39a4aacc120c.camel@intel.com>
References: <20251027134001.325064-1-vinod.govindapillai@intel.com>
 <20251027134001.325064-5-vinod.govindapillai@intel.com>
 <DM4PR11MB6360652BE5CE892C80AF27C3F4FBA@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360652BE5CE892C80AF27C3F4FBA@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS0PR11MB8231:EE_
x-ms-office365-filtering-correlation-id: be7cf64f-b1fe-4db8-41b9-08de1871ed83
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?NTRwYkFSVDlFVkptcE5GeXh3ME9iM1U3Mmp6VGkwUEMxN0NIUkJhWlZiTmJX?=
 =?utf-8?B?K3BPTVdKTXJPeWhFaFQvV2tPdmxpallWcEl6d1FUTWRpVU9TV3dOQ2VOSjdY?=
 =?utf-8?B?K1p4T2QxRElFSVoxR2NxdVFtdDlrVUlsb2pBUGROZTdPOTBkSmlOZDB1cWZE?=
 =?utf-8?B?cnd6bUt5Q3g0cVFpTGhWNmExRXhsZDZsWDBzekt2dkZldjZCTGhjcklvYnhj?=
 =?utf-8?B?YlMxd0JLWTdEV25QSTVFSktHanJKbFZld3RhaGlpcTVHZVRxUkZsYnZpOEQy?=
 =?utf-8?B?TEFrMVh5ZzVUNDVlalFjaVljYzZvYW1QL0ZQdE1EbTQvTEFCUm9RVVV4L2JF?=
 =?utf-8?B?TGtmNnJtOUxCT3lCWmthTDlSaHR4a3FVdW5meHJuL2NSb3V3ckVxSWZxWnla?=
 =?utf-8?B?RDErVmFwTHBBYW9BK3cwN3pFdGdVaFpDOWRON01jR0hSVHNSV1BvS2hpclk2?=
 =?utf-8?B?NnJQeHAvSWN1NHBWcGkwemM3dExJKzFweUh0SUhXS2EycnpEYlhZRG03ZWE2?=
 =?utf-8?B?cmt1bXFqam9BQXIvek9vaVdNeitrUUNUK0JEKzdnRzBDNEtMamYyYnlsUllh?=
 =?utf-8?B?U3BNbDUwSXZ2cTlYZ2Qxc0c2c3Q5R0JYUXplSzgwQ1dTS00wQlBqU2o5a1FP?=
 =?utf-8?B?NlRBc1A2S3F3WVdQZGlORXJVUnh3QXpnZ1dFR2E4VWFmbUU0c1I4VFFjVmg5?=
 =?utf-8?B?Skh6K0hQN2JGeUhRYkZGNm4xYmQwRmc4WHQ2TVpaSnVCS1ROUzd3SzI1dExI?=
 =?utf-8?B?VnhVS1J2QW11NUhVTzhYRHkwRWJyQ3ZHek5WQ095d3RjQWtreENwU0N0S0JO?=
 =?utf-8?B?RGtCMHh0WFhSNkR5Wm1MSDlMTFd5U1NQbVhETWkvNHl3ZWtFcWcxSmtmMzY2?=
 =?utf-8?B?RTZvVGxiaDI2Q1BlZjViMWc3SGJjWTQxMWlvaTBlTTJBZmMxWnJJV2RiakNC?=
 =?utf-8?B?VkU1blZTbmNDNUtpVE5WWTd3SzJDcHc0YTZjb3RQUDZ0WkdodHRWdDk4YzN5?=
 =?utf-8?B?cjhva3VYL2Y2dks5NUQ4UloyUk9yYmczV2YrMlZ5ajNzVWd2OHJCZHZ4QzJ3?=
 =?utf-8?B?ai96RGtjOTE0SmFhZ3psRWN6TDVDaTh1VlFDQTJsaXVsZmNGMDBiZDF0VkMw?=
 =?utf-8?B?anJKYjdxU3dlRHdaWXl4WDVrU3VTOFNIeUpUaWk5R3NyZkxlaHp3RDdXTlZV?=
 =?utf-8?B?bFJnQmNmWkE3akxkNlk2dWhVMUpxQ2VLb1hqVmtUYi9yVzlyYVA1N1NCMlFF?=
 =?utf-8?B?OHpQWXBub2s4a2x6QXhxbGdNUVBKNHd2UGVxQk9XbUJNbytraTc5d2owMHBZ?=
 =?utf-8?B?NTNpQzVXZWxqTEdkcHVIZUJtdW0xM01TcGV0a2FMakRreWlYUExtV2E2dVpt?=
 =?utf-8?B?OTlYNUROb0hWR25RcjJaTXBLQU9CclhEejV5RGxuL3h3OTVIWkhaUTVERlZp?=
 =?utf-8?B?UzRDZ2tObnJ6SXdIUjU0UCtJZitqUGZSWEwzZm50NjgremNZZVAvMURDOHFp?=
 =?utf-8?B?V2hYM2ZXdHZaWDR4V3BwSDJPMmdnME1QZ090SWRyTkNweFJHRWtpbHh2Rktp?=
 =?utf-8?B?eUsyZzJxNlhsVkprWEhVSlFvSy9GMHZGcXRpaGNoWmsvcngzVTZSaHlyMnFC?=
 =?utf-8?B?djhxL3prc050Z0xmRU9zeVdvcHROOEszczV5RXJWREtPVExsWmIwcFFQOFda?=
 =?utf-8?B?bGlVNG9CRDZBK21ZK0xJbktNYXVoTEJucHlOSWdYV0l5M24rRDgxdHVkeVAx?=
 =?utf-8?B?ak5uV216cWxXUVc3WmNEd3I5YXhBd0I5elJ6TWwwdjlzUHZ0eSsveG1OL2sr?=
 =?utf-8?B?YTV0ZXlsME5ETTk5Rk0vejBuVXJxeXZZQVFqK2JibU1qN0g2T3lYaFRhNUJn?=
 =?utf-8?B?eEh5dG1hVnVwdnE5Nnh2dXVoekZmNExuWHdkNlVyVG5mZ0xUQWVGTzBVY1Ra?=
 =?utf-8?B?akR4bENNRXQ0dG9GMlZGemEzNUhlcWhyM0kwRUdEK0QwYk9BYmNNMklYQmV6?=
 =?utf-8?B?T2hURnYyQXRuQ25TaWhHUjQ0U0VPNFFHczBJMEtaMFdBK0hBczdUcy9oMFlh?=
 =?utf-8?Q?FUI4TU?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnNMcU0zRUlEQkhXSlR1cWhEWDJzVkhEbDcxdTBIeHJXaHhRWEV4NWpua1ln?=
 =?utf-8?B?ZUtValYzSWRSSlFrMXhCbzNUeFhmMnB3OFovdUNhUVZROWd5b1MrZGx2QS9r?=
 =?utf-8?B?N2FHQytpVU52azFlNnA2QWhzQktuMk1vRi85VExqWTlzWGV0MHBuR0FBWFdk?=
 =?utf-8?B?ZWNKamcyelZOK3VvVDlpcTFBTEVaOFZiZ0I2elJzZ2RkUXdpOVp2TXFHb2c3?=
 =?utf-8?B?WmgrTFFOQkl3Q1cxTVZ5S2xYUGVvR0xlcTZ5bmQ5WDU4a3lZd09UNEZ2dWN6?=
 =?utf-8?B?eU1Dcm1NRzN6VHNhd25kNTN1aUVndjhzcFU5QlB0NDdZMUNRY1NraTZHM09Q?=
 =?utf-8?B?Z1Vqd2R6ZDRxa1JOdFl0UjZHVFVUcUY2cm03QWxEWVJaYmpxTHk2MUxKNmo5?=
 =?utf-8?B?M0RnNEZoS1lCM3R4RHZVY1IwYTZmOUFwUjBRUlptSnZXS2E0T1EwL0xrMTRw?=
 =?utf-8?B?Y1VDa1JyS0owZHNsN3dnL0JwbUVXb3l0c1lHUjhGRlU1YU1vVG1yUmVuKzBq?=
 =?utf-8?B?YVd2OURlUTFZdmdnZ0YyZEt3cS94c21uNzdXbVpKMlNTZXBUQmhYS3lnR2hL?=
 =?utf-8?B?ZjJBOVkzVk1Wbm1UV2F6cXhzblJIRExNZ21EVUlySUYvVTRRTEE1cENLSnJ0?=
 =?utf-8?B?S1VBekVvREdLZDJNbXgzblJlRDU3Y1MreFg1K3J3WVpuTUNHc1IrblFwdU1y?=
 =?utf-8?B?VjFFbkxGQ3FtQVZVQmNjZlhSM0tyOXBGQkh4SlJRK3g1YmJ6WVdIV0VxaDBP?=
 =?utf-8?B?SUh6Y093TC9iNXkvdHppaGxpK2kwSXR2bGltV3RVYmFHcGsxZmt2aDg2T2JL?=
 =?utf-8?B?K25CYVp2Uk9teEVyRVI0YitrcW1kSWV1ZlFZOUFMTmg0QXQxN3FGNloweHBV?=
 =?utf-8?B?TU1ETlIydzJseG1sbVpwUkdidzk2U3RaU3NjOTZSSmd0U0MvTWN2bEdVanRa?=
 =?utf-8?B?TmdyTTlUMy9STkVOblZ6ako1TGJDeDIwUFdMZ0U2U3VUaG9UdUJHV0owb3ZL?=
 =?utf-8?B?Z21CS0c1WWoveGt1eHdONG10MzhUemY3VDFnZTduUDFJQmM3Ly90UHJ1Qmgw?=
 =?utf-8?B?c296NVFFRE5jeUo3TmdMSlUzQ25TZUtPbjQ3MmwvQlJEV2tHUVhFZzdFTFVq?=
 =?utf-8?B?YkFpRDRhZENYUzhYUVNBL1ZoQzlSL0RUUzd3Y1IvRlhRdFhJakcreVVIVjFP?=
 =?utf-8?B?c0xPR3pTaVk5NGpNUXVqQTNCZ20vdGRwb3NIb3lwekVjTWZjZWdQUzl1VW53?=
 =?utf-8?B?WmwrQUtIaHpVZG9kTnNab0xHVEpjV0JYK0crbnZlOEd0WGc2TkVWcSt2a2th?=
 =?utf-8?B?Qm5samhlOGxBZXpYZ24yUXhBM1B5NVY5Z2FPR0NLK2Jlbkc2bGdOR1ZpclRr?=
 =?utf-8?B?VGFKdzNyWGpHVTh3R0ovZE5jeWcwaUxqSnVzS1RBOHE4OE5ES2ZXcUVsQVBZ?=
 =?utf-8?B?OHdZY3lrZ1VVbUpxVWFuaTMxKytrOFJ3U05XaUhxMVd5bnpqSFJXeUgrRDBj?=
 =?utf-8?B?YnRJUWNRbkk2YWJ6VTFxMzd6ZS8vUEtTK2RZZzdFWmUyZk1CbU05SUc4QU1T?=
 =?utf-8?B?VzAwM2kwdWlaQ293aW9rUjRIYnNiTlk3V3VBK21BbHRCWXkyZVlTekpVUURQ?=
 =?utf-8?B?Q3NiaGpDZEtRYjMrM2xLZlVpc3lQb0ZFVElMQkNaOEw5ZVRWWHdIZ0JCc2NL?=
 =?utf-8?B?ZHJJUzVGZHFqNEc1SkFKbjEvWlozQ2J5R0dNcG14K3UvR0dUYjg4SkRGYUNy?=
 =?utf-8?B?Umt6cUZrSkpDYVZrV25lZnlMOUs2dHVkUnJ4U1ZyNU10TWpORURiS2NyNzlO?=
 =?utf-8?B?YTJ0Q1RrWTY5L25ZYVRUNXM0bVlKa3BXNDdoemlFK1cxWkh0QUhOMmRWbUw3?=
 =?utf-8?B?c2prODlldWN3TGV1N0xvOUJEbGs5bG1UbXg1TjBuaUVJampkNHd6NHF3VU92?=
 =?utf-8?B?SFppa0tZSVloYXdMQWFjdkh2ZnIvQldDVFpGVFpkTFN6NXNkekVJcHFlNFlB?=
 =?utf-8?B?MVVzTXQxM0ZEMlFuNEQyU3J1UE1USkZqOWNqMzVNRXc1R3J4N0w1aC9UK1Fm?=
 =?utf-8?B?ZC9FN3JPeUdVNmtuVzgvb2JscGxYNGh1RlRleUJUSkNqaWNNMWxRUG1BTElz?=
 =?utf-8?B?RVppbmxaVGRKWmZqTDd5aFJBMmxvL2pVVGFhTDkwa2dNN1hiMjlyMGZydTVz?=
 =?utf-8?B?MXdQL2VxTUl5cnBLcmlLRnZhOXFjb3F6bzR0Szkva3FxR2FuVDFSOE1GTVNm?=
 =?utf-8?Q?a/4UK55raKGdzJ3Db4+mDlDmWKpSao+GysyE6BZqG8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F57A909C00990947AB12CBF5F7951903@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be7cf64f-b1fe-4db8-41b9-08de1871ed83
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2025 11:37:52.7847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0asOLw945x3xvHdCNI41MbVy1Br0KCPDqKcg9T5L8Ew8mq/tpvxc0LUFPtNn2ZE+13++hlQeHvJ6k/X77XxsV4VShPkHC9Av/13+4Ltu7ZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8231
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

VGhhbmtzIFVtYSBmb3IgcmV2aWV3cy4gUHVzaGVkIHRvIGRpbi4NCg0KQlINClZpbm9kDQoNCk9u
IFRodSwgMjAyNS0xMC0zMCBhdCAxNzowNiArMDAwMCwgU2hhbmthciwgVW1hIHdyb3RlOg0KPiAN
Cj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBHb3ZpbmRhcGls
bGFpLCBWaW5vZCA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+ID4gU2VudDogTW9u
ZGF5LCBPY3RvYmVyIDI3LCAyMDI1IDc6MTAgUE0NCj4gPiBUbzogaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEdv
dmluZGFwaWxsYWksIFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT47IFNvdXNh
LA0KPiA+IEd1c3Rhdm8NCj4gPiA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+OyBOaWt1bGEsIEph
bmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47DQo+ID4gU3lyamFsYSwgVmlsbGUNCj4gPiA8dmls
bGUuc3lyamFsYUBpbnRlbC5jb20+OyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjIgNC80XSBkcm0vaTkxNS94ZTNwX2xwZDogdXNlIHBp
eGVsIG5vcm1hbGl6ZXIgZm9yDQo+ID4gZnAxNiBmb3JtYXRzDQo+ID4gZm9yIEZCQw0KPiA+IA0K
PiA+IFRoZXJlIGlzIGEgaHcgcmVzdHJpY3Rpb24gdGhhdCB3ZSBjb3VsZCBlbmFibGUgdGhlIEZC
QyBmb3IgRlAxNg0KPiA+IGZvcm1hdHMgb25seSBpZiB0aGUNCj4gPiBwaXhlbCBub3JtYWxpemF0
aW9uIGJsb2NrIGlzIGVuYWJsZWQuIEhlbmNlIGVuYWJsZSB0aGUgcGl4ZWwNCj4gPiBub3JtYWxp
emVyIGJsb2NrIHdpdGgNCj4gPiBub3JtYWx6YXRpb24gZmFjdG9yIGFzDQo+ID4gMS4wIGZvciB0
aGUgc3VwcG9ydGVkIEZQMTYgZm9ybWF0cyB0byBnZXQgdGhlIEZCQyBlbmFibGVkLiBUd28NCj4g
PiBleGlzdGluZyBoZWxwZXINCj4gPiBmdW5jdGlvbiBkZWZpbml0aW9ucyBhcmUgbW92ZWQgdXAg
dG8gYXZvaWQgdGhlIGZvcndhcmQgZGVjbGFyYXRpb25zDQo+ID4gYXMgcGFydCBvZiB0aGlzDQo+
ID4gcGF0Y2ggYXMgd2VsbC4NCj4gPiANCj4gPiB2Mjogc3cvaHcgc3RhdGUgZGlmZmVyZW50aWF0
aW9uIG9uIGhhbmRsaW5nIHBpeGVsIG5vcm1hbGl6ZXIgKEphbmkpDQo+IA0KPiBMb29rcyBHb29k
IHRvIG1lLg0KPiBSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCj4gDQo+ID4gQnNwZWM6IDY5ODYzLCA2ODg4MQ0KPiA+IENjOiBTaGVraGFyIENoYXVoYW4g
PHNoZWtoYXIuY2hhdWhhbkBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292
aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+
ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jwqDCoMKgwqDCoCB8
wqAgOSArKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmjC
oMKgwqDCoMKgIHzCoCAyICsNCj4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJz
YWxfcGxhbmUuY8KgwqDCoCB8IDY1ICsrKysrKysrKysrKysrLQ0KPiA+IC0tLS0NCj4gPiDCoC4u
Li9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZV9yZWdzLmjCoMKgIHwgMTIgKysrKw0K
PiA+IMKgNCBmaWxlcyBjaGFuZ2VkLCA3MSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkN
Cj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0K
PiA+IGluZGV4IDZjYWI2ZTdjZWFkMy4uZDMzMDA5NDI0ODYzIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gQEAgLTExMTksNiArMTExOSwx
NSBAQCBzdGF0aWMgYm9vbA0KPiA+IHhlM3BfbHBkX2ZiY19waXhlbF9mb3JtYXRfaXNfdmFsaWQo
Y29uc3QNCj4gPiBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnANCj4gPiDCoAl9DQo+ID4gwqB9
DQo+ID4gDQo+ID4gK2Jvb2wNCj4gPiAraW50ZWxfZmJjX2lzX2VuYWJsZV9waXhlbF9ub3JtYWxp
emVyKGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gKypwbGFuZV9zdGF0
ZSkgew0KPiA+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVs
X2Rpc3BsYXkocGxhbmVfc3RhdGUpOw0KPiA+ICsNCj4gPiArCXJldHVybiBESVNQTEFZX1ZFUihk
aXNwbGF5KSA+PSAzNSAmJg0KPiA+ICsJwqDCoMKgwqDCoMKgIHhlM3BfbHBkX2ZiY19mcDE2X2Zv
cm1hdF9pc192YWxpZChwbGFuZV9zdGF0ZSk7DQo+ID4gK30NCj4gPiArDQo+ID4gwqBzdGF0aWMg
Ym9vbCBwaXhlbF9mb3JtYXRfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
DQo+ID4gKnBsYW5lX3N0YXRlKcKgIHsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShwbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZS0NCj4g
PiA+IGRldik7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmgNCj4gPiBpbmRleCBjODY1NjI0MDRhMDAuLjkxNDI0NTYzMjA2YSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5oDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuaA0KPiA+IEBAIC01Myw1ICs1Myw3
IEBAIHZvaWQgaW50ZWxfZmJjX3ByZXBhcmVfZGlydHlfcmVjdChzdHJ1Y3QNCj4gPiBpbnRlbF9h
dG9taWNfc3RhdGUNCj4gPiAqc3RhdGUsDQo+ID4gwqAJCQkJwqAgc3RydWN0IGludGVsX2NydGMg
KmNydGMpOw0KPiA+IMKgdm9pZCBpbnRlbF9mYmNfZGlydHlfcmVjdF91cGRhdGVfbm9hcm0oc3Ry
dWN0IGludGVsX2RzYiAqZHNiLA0KPiA+IMKgCQkJCcKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lKTsNCj4gPiArYm9vbA0KPiA+ICtpbnRlbF9mYmNfaXNfZW5hYmxlX3BpeGVs
X25vcm1hbGl6ZXIoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfcGxhbmVfc3RhdGUNCj4gPiArKnBs
YW5lX3N0YXRlKTsNCj4gPiANCj4gPiDCoCNlbmRpZiAvKiBfX0lOVEVMX0ZCQ19IX18gKi8NCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNh
bF9wbGFuZS5jDQo+ID4gaW5kZXggMDMxOTE3NGFkZjk1Li4wN2Q5YzEwY2IyY2UgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5l
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxf
cGxhbmUuYw0KPiA+IEBAIC00NjMsNiArNDYzLDIzIEBAIHN0YXRpYyBpbnQgc2tsX3BsYW5lX21h
eF9oZWlnaHQoY29uc3Qgc3RydWN0DQo+ID4gZHJtX2ZyYW1lYnVmZmVyICpmYiwNCj4gPiDCoAly
ZXR1cm4gNDA5NjsNCj4gPiDCoH0NCj4gPiANCj4gPiArc3RhdGljIGVudW0gaW50ZWxfZmJjX2lk
IHNrbF9mYmNfaWRfZm9yX3BpcGUoZW51bSBwaXBlIHBpcGUpIHsNCj4gPiArCXJldHVybiBwaXBl
IC0gUElQRV9BICsgSU5URUxfRkJDX0E7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBib29s
IHNrbF9wbGFuZV9oYXNfZmJjKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+ICsJ
CQnCoMKgwqDCoMKgIGVudW0gaW50ZWxfZmJjX2lkIGZiY19pZCwgZW51bQ0KPiA+IHBsYW5lX2lk
IHBsYW5lX2lkKSB7DQo+ID4gKwlpZiAoKERJU1BMQVlfUlVOVElNRV9JTkZPKGRpc3BsYXkpLT5m
YmNfbWFzayAmDQo+ID4gQklUKGZiY19pZCkpID09IDApDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0K
PiA+ICsNCj4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAyMCkNCj4gPiArCQlyZXR1
cm4gaWNsX2lzX2hkcl9wbGFuZShkaXNwbGF5LCBwbGFuZV9pZCk7DQo+ID4gKwllbHNlDQo+ID4g
KwkJcmV0dXJuIHBsYW5lX2lkID09IFBMQU5FXzE7DQo+ID4gK30NCj4gPiArDQo+ID4gwqBzdGF0
aWMgaW50IGljbF9wbGFuZV9tYXhfaGVpZ2h0KGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIg
KmZiLA0KPiA+IMKgCQkJCWludCBjb2xvcl9wbGFuZSwNCj4gPiDCoAkJCQl1bnNpZ25lZCBpbnQg
cm90YXRpb24pDQo+ID4gQEAgLTg5OCw2ICs5MTUsMjUgQEAgc3RhdGljIHZvaWQNCj4gPiBpY2xf
cGxhbmVfZGlzYWJsZV9zZWxfZmV0Y2hfYXJtKHN0cnVjdA0KPiA+IGludGVsX2RzYiAqZHNiLA0K
PiA+IMKgCWludGVsX2RlX3dyaXRlX2RzYihkaXNwbGF5LCBkc2IsIFNFTF9GRVRDSF9QTEFORV9D
VEwocGlwZSwNCj4gPiBwbGFuZS0NCj4gPiA+IGlkKSwgMCk7wqAgfQ0KPiA+IA0KPiA+ICtzdGF0
aWMgdm9pZCB4M3BfbHBkX3BsYW5lX3VwZGF0ZV9waXhlbF9ub3JtYWxpemVyKHN0cnVjdCBpbnRl
bF9kc2INCj4gPiAqZHNiLA0KPiA+ICsJCQkJCQnCoCBzdHJ1Y3QNCj4gPiBpbnRlbF9wbGFuZSAq
cGxhbmUsDQo+ID4gKwkJCQkJCcKgIGJvb2wgZW5hYmxlKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkocGxhbmUpOw0KPiA+ICsJ
ZW51bSBpbnRlbF9mYmNfaWQgZmJjX2lkID0gc2tsX2ZiY19pZF9mb3JfcGlwZShwbGFuZS0NCj4g
PiA+cGlwZSk7DQo+ID4gKwl1MzIgdmFsOw0KPiA+ICsNCj4gPiArCS8qIE9ubHkgSERSIHBsYW5l
cyBoYXZlIHBpeGVsIG5vcm1hbGl6ZXIgYW5kIGRvbid0IG1hdHRlcg0KPiA+IGlmIG5vIEZCQyAq
Lw0KPiA+ICsJaWYgKCFza2xfcGxhbmVfaGFzX2ZiYyhkaXNwbGF5LCBmYmNfaWQsIHBsYW5lLT5p
ZCkpDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCXZhbCA9IGVuYWJsZSA/DQo+ID4gUExB
TkVfUElYRUxfTk9STUFMSVpFX05PUk1fRkFDVE9SKFBMQU5FX1BJWEVMX05PUk1BTElaRV9OTw0K
PiA+IFJNX0ZBQ1RPUl8xXzApIHwNCj4gPiArCQnCoMKgwqDCoMKgwqAgUExBTkVfUElYRUxfTk9S
TUFMSVpFX0VOQUJMRSA6IDA7DQo+ID4gKw0KPiA+ICsJaW50ZWxfZGVfd3JpdGVfZHNiKGRpc3Bs
YXksIGRzYiwNCj4gPiArCQkJwqDCoCBQTEFORV9QSVhFTF9OT1JNQUxJWkUocGxhbmUtPnBpcGUs
DQo+ID4gcGxhbmUtPmlkKSwNCj4gPiB2YWwpOyB9DQo+ID4gKw0KPiA+IMKgc3RhdGljIHZvaWQN
Cj4gPiDCoGljbF9wbGFuZV9kaXNhYmxlX2FybShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ID4g
wqAJCcKgwqDCoMKgwqAgc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gPiBAQCAtOTEzLDYg
Kzk0OSwxMCBAQCBpY2xfcGxhbmVfZGlzYWJsZV9hcm0oc3RydWN0IGludGVsX2RzYiAqZHNiLA0K
PiA+IMKgCXNrbF93cml0ZV9wbGFuZV93bShkc2IsIHBsYW5lLCBjcnRjX3N0YXRlKTsNCj4gPiAN
Cj4gPiDCoAlpY2xfcGxhbmVfZGlzYWJsZV9zZWxfZmV0Y2hfYXJtKGRzYiwgcGxhbmUsIGNydGNf
c3RhdGUpOw0KPiA+ICsNCj4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzNSkNCj4g
PiArCQl4M3BfbHBkX3BsYW5lX3VwZGF0ZV9waXhlbF9ub3JtYWxpemVyKGRzYiwgcGxhbmUsDQo+
ID4gZmFsc2UpOw0KPiA+ICsNCj4gPiDCoAlpbnRlbF9kZV93cml0ZV9kc2IoZGlzcGxheSwgZHNi
LCBQTEFORV9DVEwocGlwZSwNCj4gPiBwbGFuZV9pZCksIDApOw0KPiA+IMKgCWludGVsX2RlX3dy
aXRlX2RzYihkaXNwbGF5LCBkc2IsIFBMQU5FX1NVUkYocGlwZSwNCj4gPiBwbGFuZV9pZCksIDAp
O8KgIH0gQEANCj4gPiAtMTY0Miw2ICsxNjgyLDE0IEBAIGljbF9wbGFuZV91cGRhdGVfYXJtKHN0
cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gPiANCj4gPiDCoAlpY2xfcGxhbmVfdXBkYXRlX3NlbF9m
ZXRjaF9hcm0oZHNiLCBwbGFuZSwgY3J0Y19zdGF0ZSwNCj4gPiBwbGFuZV9zdGF0ZSk7DQo+ID4g
DQo+ID4gKwkvKg0KPiA+ICsJICogSW4gb3JkZXIgdG8gaGF2ZSBGQkMgZm9yIGZwMTYgZm9ybWF0
cyBwaXhlbCBub3JtYWxpemVyDQo+ID4gYmxvY2sgbXVzdCBiZQ0KPiA+ICsJICogYWN0aXZlLiBD
aGVjayBpZiBwaXhlbCBub3JtYWxpemVyIGJsb2NrIG5lZWQgdG8gYmUNCj4gPiBlbmFibGVkIGZv
ciBGQkMuDQo+ID4gKwkgKiBJZiBuZWVkZWQsIHVzZSBub3JtYWxpemF0aW9uIGZhY3RvciBhcyAx
LjAgYW5kIGVuYWJsZQ0KPiA+IHRoZSBibG9jay4NCj4gPiArCSAqLw0KPiA+ICsJaWYgKGludGVs
X2ZiY19pc19lbmFibGVfcGl4ZWxfbm9ybWFsaXplcihwbGFuZV9zdGF0ZSkpDQo+ID4gKwkJeDNw
X2xwZF9wbGFuZV91cGRhdGVfcGl4ZWxfbm9ybWFsaXplcihkc2IsIHBsYW5lLA0KPiA+IHRydWUp
Ow0KPiA+ICsNCj4gPiDCoAkvKg0KPiA+IMKgCSAqIFRoZSBjb250cm9sIHJlZ2lzdGVyIHNlbGYt
YXJtcyBpZiB0aGUgcGxhbmUgd2FzDQo+ID4gcHJldmlvdXNseQ0KPiA+IMKgCSAqIGRpc2FibGVk
LiBUcnkgdG8gbWFrZSB0aGUgcGxhbmUgZW5hYmxlIGF0b21pYyBieQ0KPiA+IHdyaXRpbmcgQEAg
LTI0MDQsMjMNCj4gPiArMjQ1Miw2IEBAIHZvaWQgaWNsX2xpbmtfbnYxMl9wbGFuZXMoc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gKnV2X3BsYW5lX3N0YXRlLA0KPiA+IMKgCX0NCj4gPiDC
oH0NCj4gPiANCj4gPiAtc3RhdGljIGVudW0gaW50ZWxfZmJjX2lkIHNrbF9mYmNfaWRfZm9yX3Bp
cGUoZW51bSBwaXBlIHBpcGUpIC17DQo+ID4gLQlyZXR1cm4gcGlwZSAtIFBJUEVfQSArIElOVEVM
X0ZCQ19BOw0KPiA+IC19DQo+ID4gLQ0KPiA+IC1zdGF0aWMgYm9vbCBza2xfcGxhbmVfaGFzX2Zi
YyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiAtCQkJwqDCoMKgwqDCoCBlbnVt
IGludGVsX2ZiY19pZCBmYmNfaWQsIGVudW0NCj4gPiBwbGFuZV9pZCBwbGFuZV9pZCkNCj4gPiAt
ew0KPiA+IC0JaWYgKChESVNQTEFZX1JVTlRJTUVfSU5GTyhkaXNwbGF5KS0+ZmJjX21hc2sgJg0K
PiA+IEJJVChmYmNfaWQpKSA9PSAwKQ0KPiA+IC0JCXJldHVybiBmYWxzZTsNCj4gPiAtDQo+ID4g
LQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMjApDQo+ID4gLQkJcmV0dXJuIGljbF9pc19o
ZHJfcGxhbmUoZGlzcGxheSwgcGxhbmVfaWQpOw0KPiA+IC0JZWxzZQ0KPiA+IC0JCXJldHVybiBw
bGFuZV9pZCA9PSBQTEFORV8xOw0KPiA+IC19DQo+ID4gLQ0KPiA+IMKgc3RhdGljIHN0cnVjdCBp
bnRlbF9mYmMgKnNrbF9wbGFuZV9mYmMoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gPiAqZGlzcGxh
eSwNCj4gPiDCoAkJCQnCoMKgwqDCoMKgwqAgZW51bSBwaXBlIHBpcGUsIGVudW0NCj4gPiBwbGFu
ZV9pZCBwbGFuZV9pZCnCoCB7DQo+ID4gZGlmZiAtLWdpdA0KPiA+IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lX3JlZ3MuaA0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lX3JlZ3MuaA0KPiA+IGluZGV4
IGNhOWZkZmJiZTU3Yy4uN2M5NDRkM2NhODU1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZV9yZWdzLmgNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmVfcmVncy5oDQo+
ID4gQEAgLTQ1NSw0ICs0NTUsMTYgQEANCj4gPiANCj4gPiAJX1NFTF9GRVRDSF9QTEFORV9PRkZT
RVRfNV9BLA0KPiA+IF9TRUxfRkVUQ0hfUExBTkVfT0ZGU0VUXzVfQiwgXA0KPiA+IA0KPiA+IAlf
U0VMX0ZFVENIX1BMQU5FX09GRlNFVF82X0EsDQo+ID4gX1NFTF9GRVRDSF9QTEFORV9PRkZTRVRf
Nl9CKQ0KPiA+IA0KPiA+ICsjZGVmaW5lIF9QTEFORV9QSVhFTF9OT1JNQUxJWkVfMV9BCQkweDcw
MWE4DQo+ID4gKyNkZWZpbmUgX1BMQU5FX1BJWEVMX05PUk1BTElaRV8yX0EJCTB4NzAyYTgNCj4g
PiArI2RlZmluZSBfUExBTkVfUElYRUxfTk9STUFMSVpFXzFfQgkJMHg3MTFhOA0KPiA+ICsjZGVm
aW5lIF9QTEFORV9QSVhFTF9OT1JNQUxJWkVfMl9CCQkweDcxMmE4DQo+ID4gKyNkZWZpbmUgUExB
TkVfUElYRUxfTk9STUFMSVpFKHBpcGUsIHBsYW5lKQ0KPiA+IAlfTU1JT19TS0xfUExBTkUoKHBp
cGUpLCAocGxhbmUpLCBcDQo+ID4gKw0KPiA+IAlfUExBTkVfUElYRUxfTk9STUFMSVpFXzFfQSwg
X1BMQU5FX1BJWEVMX05PUk1BTElaRV8xX0IsIFwNCj4gPiArDQo+ID4gCV9QTEFORV9QSVhFTF9O
T1JNQUxJWkVfMl9BLCBfUExBTkVfUElYRUxfTk9STUFMSVpFXzJfQikNCj4gPiArI2RlZmluZcKg
wqAgUExBTkVfUElYRUxfTk9STUFMSVpFX0VOQUJMRQ0KPiA+IAlSRUdfQklUKDMxKQ0KPiA+ICsj
ZGVmaW5lwqDCoCBQTEFORV9QSVhFTF9OT1JNQUxJWkVfTk9STV9GQUNUT1JfTUFTSw0KPiA+IAlS
RUdfR0VOTUFTSygxNSwgMCkNCj4gPiArI2RlZmluZcKgwqAgUExBTkVfUElYRUxfTk9STUFMSVpF
X05PUk1fRkFDVE9SKHZhbCkNCj4gPiAJUkVHX0ZJRUxEX1BSRVAoUExBTkVfUElYRUxfTk9STUFM
SVpFX05PUk1fRkFDVE9SX01BUw0KPiA+IEssICh2YWwpKQ0KPiA+ICsjZGVmaW5lwqDCoA0KPiA+
IFBMQU5FX1BJWEVMX05PUk1BTElaRV9OT1JNX0ZBQ1RPUl8xXzAJCTB4M2MwMA0KPiA+ICsNCj4g
PiDCoCNlbmRpZiAvKiBfX1NLTF9VTklWRVJTQUxfUExBTkVfUkVHU19IX18gKi8NCj4gPiAtLQ0K
PiA+IDIuNDMuMA0KPiANCg0K
