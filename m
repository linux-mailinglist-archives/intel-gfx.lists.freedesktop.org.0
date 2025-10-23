Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E83C003B5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 11:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596F310E386;
	Thu, 23 Oct 2025 09:24:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ajiGH/Ev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0282D10E386;
 Thu, 23 Oct 2025 09:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761211461; x=1792747461;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9DYTyIvQID5ZMUknfwfc0G3ZZQFajSzmAkePaocz6Z4=;
 b=ajiGH/EvFMHBQo8Xocy8Lq+FcPNP/fU6oyjW1dDrY5QJYr6iU+7efESU
 LX1PtOxW5CuLYhfQFfdNeTz82HaELUN/CP8GsUm/EuKft+cxV0tnvYSuh
 9vKxCRyQAqOwpqKWgDpZFm2jmRi5Us7JOOxOhiQMRpwjzBvN7ecPHud4t
 izqc7hcq6mC+htPWC1TWuC+yMCVNFy6OU+YSGONg6bTZijEULnR3K3Lu0
 WQoqZ8tjvjq5k5i+6vlyrryqO668IRJs8ek9q6587VoHRSIF/0tCxUymm
 rRx1vdaU6853oiGZqUYzGTV/1UYbswIh4PtdgHEzIO48EBV1CPEaAtZyM Q==;
X-CSE-ConnectionGUID: aVIuGoMIQM69cOITkTVMWg==
X-CSE-MsgGUID: A53ICaK8RgqAKdatiANlWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80812973"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="80812973"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 02:24:20 -0700
X-CSE-ConnectionGUID: iqofC17tSgWBGitlEhG86w==
X-CSE-MsgGUID: a51rNzc9T+2lAgFTjeI0OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="184885151"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 02:24:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 02:24:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 02:24:20 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.34) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 02:24:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f7XNG5W1z/YT4CEKMgwyC66P0Pzgd5/OOWiij97VpkVNza18h14u0/8e+wCm/GZ0dpWMBjG2jikhX+9MuLUaikqsnV2w3Rletol3/xVcdAM08lVnjRLJBKN6fnT8h9Hp+cXlGZjdj/3cVJPs4sNgUDL9rgX09VQGq3MQ18WagDfAu+YH8eetkALQ0SlR2va7UwRY8TAGMyrNwQofCeVGotjQWggi0mWS4ouvlj+cluGH3acuZhxXHjjIqcpk+46Ojin3uyCThRKhZBa6OzrP9kEQO/TCt8fc9DIoov7E+LRjN7y9uJGqviGrnLeRpt5eoQQq+4TgGStV66kLzQF5+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9DYTyIvQID5ZMUknfwfc0G3ZZQFajSzmAkePaocz6Z4=;
 b=LqpRbcCWFVTL2vxwMOD1GRhqbTln9MzfIECr1t6Cc6iOQs07WaoaBONVSa4Dt++2YvWDB5FbBcr0MssoFs5lcag5IP+OC+ZjTWjM9YG032KfxqIj+tAMjGGAhx9YlVX/HnUPKFzzukpRk3afdfbq65koH7PiRA/EKErBYgwWBFiJjUK/eiS8htE8tDXb0U4TCbm2wVYN4xknKFl6ljYJifH03ug4ut7ogdW2dFXztP1g1Yns+bqxlrrFZifGYP0abs82C5wH01+WZ6HY1Qb5iaX/b7ct15W9WiW6TWMvQfBDH5zf1w4dsg+mBH3L6CuWEsk4UXdQhyr8ZJqIwFIDRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA1PR11MB6845.namprd11.prod.outlook.com
 (2603:10b6:806:29f::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 09:24:17 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 09:24:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: [PATCH 12/25] drm/i915/ltphy: Program the P2P Transaction flow
 for LT Phy
Thread-Topic: [PATCH 12/25] drm/i915/ltphy: Program the P2P Transaction flow
 for LT Phy
Thread-Index: AQHcPYl3FTOXS6LXDUSQ3XdL61j5KLTPcB2AgAASKIA=
Date: Thu, 23 Oct 2025 09:24:17 +0000
Message-ID: <DM3PPF208195D8D6D34EE7E0E4CD7BD70C7E3F0A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-13-suraj.kandpal@intel.com>
 <9f7466b5-e5e7-4603-b564-0ef7f073d2c7@intel.com>
In-Reply-To: <9f7466b5-e5e7-4603-b564-0ef7f073d2c7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA1PR11MB6845:EE_
x-ms-office365-filtering-correlation-id: dfaba373-fd4f-463e-1ba9-08de1215f0e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VW5GZHZLS25RSGhFSVlPR3BpbzdaaTVIVndoV1NlN3g4dDVrYXNHVFM1OEI1?=
 =?utf-8?B?M2tmR09laVlER3ZNK3RpK05xQnhFS0pNZXNraUtseENoY0lINGxiQmQ3WG44?=
 =?utf-8?B?U29QK1NkS1NKZzRQb2xKQndub1Jvci9DaGIwNk1MN0RTK09XSG1vRVRmR1do?=
 =?utf-8?B?dWk1NVduWGVzNG5YRUxyVHQycWdrR3NUTjdxS3R3a3B3VTllemNTUmdoUU40?=
 =?utf-8?B?a0VPTWY4bFJWbWRPSFhEMFMvVk9JUmFqMTIvc2dZUFk3UU5FMzFhSzZYSVFE?=
 =?utf-8?B?anl3OGt0SXZBNHE3cCtqQmFWejdQYUVTM28rajFwMC85MmVjMm51RUJSd3RR?=
 =?utf-8?B?ekpZTTVlQmI1VHMySlQwc2VCb3ZELzhzM2F2elZBNUNNZ3Z0c2JPWkQ0VWdm?=
 =?utf-8?B?WHZTcmpxd0JtQWlQOXUrL1VweGZzQ3NjY25lSjI5Q0F2eDNxNnZWVG9sWWoy?=
 =?utf-8?B?QXNoNmpmZE1sN3NyVDU4RURWSEc0TVpZTG1QSWlNcENneHJhd2dSZGM1RGVT?=
 =?utf-8?B?ZXpVS1o5d0VVd2N3U2xGUjJBR0FNSnUwOFFycktUV2w3ci9lTzVVYU5OaGV0?=
 =?utf-8?B?VVByd0pVV1lCL010dHFVaGFnUER0MzRMd1pJdFhWaUxFZFN0ZHhIREZnQ0Rm?=
 =?utf-8?B?WGtLMUp0d0hIc3FHYXRQL3hnK29vY2RsSnYxeGxMTmtDdDhOOEZqK0lXL2xa?=
 =?utf-8?B?SkVrT0VZOXhoZU5FRWtJZnlTKzJlSk95SjBabWhKZkJvNzAySE5oVHJISlJU?=
 =?utf-8?B?SEdBV2gzUjl0ZkV2YTlKdHN5NFo2ZjQ3bklwRFhqRUcvQWJRak1IREp6dUYr?=
 =?utf-8?B?SWJ0MWxPTlVFWGVyV20wbThOOXFNT1E1SjNpR1FLeFJJKzFGcnhUMVFoQnlq?=
 =?utf-8?B?WlllMG1vZHdEcm1Gb0xvS2NZdU1FV3hsQThvVUdNaUU4NlhpSlRmbUgrSDIw?=
 =?utf-8?B?UkI2bVltZU1kbm14REtZOWNqbWVBZlFwVnNBdHN0OUdMWTJoK1VxQ0M2aUZW?=
 =?utf-8?B?SlhwT3ZKWlFXT0lPTXBOVGZyYWFMNmlHWWlHbzhhWTlXV09GcWZLL21lbkVO?=
 =?utf-8?B?SHQ2WTRnRzhUbURiY3BEQzNDOHJsUFY2b25GVTMwWEtZeVJKbG5DVVN6QStU?=
 =?utf-8?B?RlJWMFlHTUhTcUlTRjRyRmhraXhMdXdlUXV5ZXdKZ1g1TzFUejlvMUxyRTdt?=
 =?utf-8?B?bW4rekh4QWo1cXMvTjBaWFpWR1VPVjZXSjcrNGIwazI5OVFKQm4xdjNydE5h?=
 =?utf-8?B?MHprem1jY3dUa1VGbXpUaXJxTUFxcTNvUENKYlR3bGl5QmJFSWFyUktIcXhi?=
 =?utf-8?B?ZjEzT1lXVHpMOUtuWkprK1BKL0pUN3ZKWGY1TWlCVUxjRkFsMjVHOGFFeHN1?=
 =?utf-8?B?VXhCWlhZREYwTmFiZ0V0WStHZ0hKbXVQaFBxbDZFb2NoY25RSmJaNjg2V2Nk?=
 =?utf-8?B?enZ0L1BhL0plUDdmVjdmRm91eS9PTTczL3dWMkgvMmhYeFVIdVJwMS8vbXpP?=
 =?utf-8?B?U1lzbWRWZWpPYWJwNjczZGV3T1BBclV2L3ZXb2p0czNyeGxzcWwyWlI1Z3Zo?=
 =?utf-8?B?ZHdPOXNyQjdQT2VlQWh0NEFTWWlOL1N0RzZ5T09wUUxoTTZ6VkVpbjRCU0lU?=
 =?utf-8?B?d0JqZFRueXJkMHU0eXBkMUUxemVDbTBDWnQxNitMQUwzblliT0xSZ3ZpZzJQ?=
 =?utf-8?B?a0o2Q0oxcXZRVUxHdk1jSnI5RG5Iell4dFJOQTEwaHpKd2Q1NFF2c3p4ejZt?=
 =?utf-8?B?a0VGZ3RVNzBMeGIvNWxoY29mT0lwcnpHS3EzNGtSUjB5c1BOd2JZeFJvSjRV?=
 =?utf-8?B?eEQ5V21YLzdWNk5wTlVrQTZzUW5WeGZIWjEydEpPUGpHUjBMdW5NNlc4Sy9a?=
 =?utf-8?B?NXJhbDRMK29LakNJRGRSYnZFb2lYRlRITWp1Q2dJajNON3R2YlZVVG9nZmdN?=
 =?utf-8?B?OTE3WDVEcURwSDdOTEFKaWJiUGRXMHhHRFdMV0s5NkY3aHc4Z3BSVDZndG9U?=
 =?utf-8?B?cGh2Vk43QWlpY1grVnV3b3JmQ2Nac3FwK2hGMERJMk9xd2tFMWU0RFFhWXJk?=
 =?utf-8?Q?gkQo6d?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Wlk3eVdEVklvcXlFeHVTdEZSaUFvRW00dmtVTnpZSDB2Wk9uR3ZBRkFKTVFW?=
 =?utf-8?B?bk1UMVRicU5VVUFJUFpIM2s1SjBEcEdSamszZzNjSmpuVmphRFgwY0QyQW1o?=
 =?utf-8?B?K0U0LzdVckpqd2pkaEY0VGg0ZjRUeW40OVhJTGtqZnNHZExzMzhlRHpmeC9j?=
 =?utf-8?B?R3BabGV5bzRtV3NEeTgyTTI5K0VJUzBQK0FuUWkvL3Z4RFhuejIyVS9ncno3?=
 =?utf-8?B?QTNZa1haTUI2ZlZpNlRWU0xrMkhCanZXTGtPczdOYXZWWi9lSUFUUm9NTnBr?=
 =?utf-8?B?RVRNTUl2NXJuRWlIdW5VMlVndy94N3ZBa09pSEZXQjZlaXF2Rkw5UVU5Snpi?=
 =?utf-8?B?NXkzcEFWZ2Fhb1pNNDIycW1xQ2N0UlM5NnlzS2xhZWZaa3ZvVVdtM0YzWHcz?=
 =?utf-8?B?YmxEMWRCT0dUWnlHVlluVW9RL3g2c3N3dUZ0R2RJR284QW43VjlGYlVBaklP?=
 =?utf-8?B?WnFGTnZpbWlpdGJLMDZkMXRjWEQ4S09uL2pTSlVhajBCM0svUXZLUjNlRkJv?=
 =?utf-8?B?ZjN6R3lDYlVUVmplT2hnWmdsdUJ1K2dPWUxGOFJQOG9qL2Y4Znpta2VOayto?=
 =?utf-8?B?OWNCN3B0bkJUY3pvTzFDNWVrQU9VSEZ0bUxKRmdkRmkwemw3akE3WmhSRjJR?=
 =?utf-8?B?R0lPMGZrN3dES3JqS1ZSY28zVk02eTFsVlZEcWlGaU5CQkplbjFUMVh2bVFy?=
 =?utf-8?B?UUF2UkJPbUhyZHZzOVZYSFRROUVlUmJwQnEveWFOVThRdDJrd0FhajREYlhj?=
 =?utf-8?B?L0hHYUsybEd1KzVyd3IzaXREbFNKVC9QRzgxRnRrU1BNTkRqYUFWWFFoeFRN?=
 =?utf-8?B?SXhxczNaOHBLMTZJSFBtaUVJNFhqaDN1U2ZmTm1KOGRnNzA3QVZYT3hwUWFi?=
 =?utf-8?B?VG9IOWUrUERmblh4TGdqbU1CSm9qd0FhQVN4aDh3a09qK0x3aDhwSUdCbWJM?=
 =?utf-8?B?KzBEdDBYVjB4RlMrVVpTVzZuc1pyV05GSmZzcTFMbFJDWjFQLzFwSnhRTEg2?=
 =?utf-8?B?UHozV29rRC9KenZ4NUFuT0taaFBaLzRLZk9xYm43bmpVWTVyZmR4TlMyMjBZ?=
 =?utf-8?B?d0FIeDN0WmZ3Z0JUSTVQYWJEdEhxS2N3MUNMME9TSm9HSU0rU1FtVlkydzRs?=
 =?utf-8?B?blhpNlVqME9mTncyM1lZclk3dXovM3luYk9vaE91Sm1udG84R2VNZ08ybEJy?=
 =?utf-8?B?YlpjdEVZNG1FWnIrd0pmVXJ6MnBLeHVSa3hkck8xa0o0TkFJZ0hkTVloS1pF?=
 =?utf-8?B?K2hidTJyU1BWTkNibXc0Zk5FNmF0REhqUXVNdERvNjJkRnFxYkpBbzM0RlU2?=
 =?utf-8?B?SmFFY3pzUmtnZVVjOWZERklnSnFWRnRXU01IeDhBdllETXdBMThPbWJDUGFh?=
 =?utf-8?B?VDhiYktldm00WkF1YmJwdFNZMy8ybjlDM0pVSVdCQW5Ocmx4T3hWdjRsblcz?=
 =?utf-8?B?OFpBdS8rZ0pJV1l0WThjaTZOMzNXblhmb1ZMMlFmUmNGQzlreWZQckZ5aUJh?=
 =?utf-8?B?bnIvNE4rT3VoNlpKNUswT0ZucGh2cVpQOCtkMjhTRmo3c3ZRMHNCOWpDbkNy?=
 =?utf-8?B?c2VxYk83MU9xemlrTTVxcVBDMDJRVjZjd0xzWDZMRHVqN3FyRUxxMnZhNm9J?=
 =?utf-8?B?eHhaQitaNmhMSUlzbGlXMDBDb0ZlWm92d3NtcWpLdFAvTFJnbmRGNnRNcTF2?=
 =?utf-8?B?UG0rVHRtNnp6cGtrRE5FTFRyMVBHUG12RnJDTi82WnBqK3EzRlNtYmhoYmxC?=
 =?utf-8?B?d3hJRVoyMW9zdHlHby9FbEZnbjJ5dWZocWlnUjFWMWpWUHZ0b3ljTngzQnJZ?=
 =?utf-8?B?dXVzNGRoblRERmt5ZW5wcEZVU1p5YzRGVHVnOXhjZFMrcllRblZac2lLc0E3?=
 =?utf-8?B?RG9OM2x3dEt6R0hUNklGWjdhVS8rdVhnVDhDbHRXZ2ZlZDc2dXNXbnFOMjF6?=
 =?utf-8?B?NzVKaW9ESk5VcXJIUWV1T21KNmNad0toOEswb0ZFdDE1VWxuUE1la0RSTDNR?=
 =?utf-8?B?aUNSTUk3UXhoU1FnQ21TWHFZTmxDSFpoNk15WE14UTFUNnVuVHNyMFpsbm9C?=
 =?utf-8?B?TzJEVVFHS0Vjb1JaVjBlNisyTW1HRG5sQjBoaUUxZ2hzUnowRkpXZjRjUVpr?=
 =?utf-8?Q?QDbUjwUGGU1voZPVyAImr48xB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfaba373-fd4f-463e-1ba9-08de1215f0e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2025 09:24:17.7980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OqhwcmPlMs/dbb5W1CwK46/Q8EFnwnZAjzq9w2HVxaGsRefERj67yOvT7rwp+//TqKunUklhC/o4BehhndgpWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6845
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

PiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBUaGlzIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGdpdmUg
UEhZIHRpbWUgdG8gc2V0IGV2ZXJ5dGhpbmcgdXAgdGhpcw0KPiB3YXMgYSByZXF1aXJlbWVudA0K
PiA+ICsJICogdG8gZ2V0IHRoZSBkaXNwbGF5IHVwIGFuZCBydW5uaW5nLg0KPiA+ICsJICovDQo+
ID4gKwl1ZGVsYXkoMTUwKTsNCj4gDQo+IEhvdyB3YXMgdGhpcyBkZWxheSB2YWx1ZSBkZXJpdmVk
Pw0KDQpXaGlsZSBkb2luZyBwb3dlciBvbiB3ZSBjYW1lIHVwIHdpdGggdGhpcyBlbXBpcmljYWwg
dmFsdWUgYWZ0ZXIgYSBsb3Qgb2YgdHJpYWwgYW5kIGVycm9yLg0KDQpSZWdhcmRzLA0KU3VyYWog
S2FuZHBhbA0KDQo+IA0KPiBUaGFua3MgYW5kIFJlZ2FyZHMsDQo+IEFydW4gUiBNdXJ0aHkNCj4g
LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gPiArCWludGVsX2NsZWFyX3Jlc3BvbnNlX3JlYWR5
X2ZsYWcoZW5jb2RlciwgbGFuZSk7DQo+ID4gKwlpbnRlbF9sdF9waHlfY2xlYXJfc3RhdHVzX3Ay
cChlbmNvZGVyLCBsYW5lKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsN
Cj4gPiArc3RhdGljIHZvaWQgX19pbnRlbF9sdF9waHlfcDJwX3dyaXRlKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiA+ICsJCQkJICAgICBpbnQgbGFuZSwgdTE2IGFkZHIsIHU4IGRh
dGEsDQo+ID4gKwkJCQkgICAgIGk5MTVfcmVnX3QgbWFjX3JlZ19hZGRyLA0KPiA+ICsJCQkJICAg
ICB1OCBleHBlY3RlZF9tYWNfdmFsKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZW5jb2Rlcik7DQo+ID4gKwllbnVtIHBoeSBw
aHkgPSBpbnRlbF9lbmNvZGVyX3RvX3BoeShlbmNvZGVyKTsNCj4gPiArCWludCBpLCBzdGF0dXM7
DQo+ID4gKw0KPiA+ICsJYXNzZXJ0X2RjX29mZihkaXNwbGF5KTsNCj4gPiArDQo+ID4gKwkvKiAz
IHRyaWVzIGlzIGFzc3VtZWQgdG8gYmUgZW5vdWdoIHRvIHdyaXRlIHN1Y2Nlc3NmdWxseSAqLw0K
PiA+ICsJZm9yIChpID0gMDsgaSA8IDM7IGkrKykgew0KPiA+ICsJCXN0YXR1cyA9IF9faW50ZWxf
bHRfcGh5X3AycF93cml0ZV9vbmNlKGVuY29kZXIsIGxhbmUsIGFkZHIsDQo+IGRhdGEsIG1hY19y
ZWdfYWRkciwNCj4gPiArCQkJCQkJICAgICAgIGV4cGVjdGVkX21hY192YWwpOw0KPiA+ICsNCj4g
PiArCQlpZiAoc3RhdHVzID09IDApDQo+ID4gKwkJCXJldHVybjsNCj4gPiArCX0NCj4gPiArDQo+
ID4gKwlkcm1fZXJyX29uY2UoZGlzcGxheS0+ZHJtLA0KPiA+ICsJCSAgICAgIlBIWSAlYyBQMlAg
V3JpdGUgJTA0eCBmYWlsZWQgYWZ0ZXIgJWQgcmV0cmllcy5cbiIsDQo+ID4gK3BoeV9uYW1lKHBo
eSksIGFkZHIsIGkpOyB9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9sdF9waHlfcDJw
X3dyaXRlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICsJCQkJICAgdTggbGFu
ZV9tYXNrLCB1MTYgYWRkciwgdTggZGF0YSwNCj4gPiArCQkJCSAgIGk5MTVfcmVnX3QgbWFjX3Jl
Z19hZGRyLA0KPiA+ICsJCQkJICAgdTggZXhwZWN0ZWRfbWFjX3ZhbCkNCj4gPiArew0KPiA+ICsJ
aW50IGxhbmU7DQo+ID4gKw0KPiA+ICsJZm9yX2VhY2hfbHRfcGh5X2xhbmVfaW5fbWFzayhsYW5l
X21hc2ssIGxhbmUpDQo+ID4gKwkJX19pbnRlbF9sdF9waHlfcDJwX3dyaXRlKGVuY29kZXIsIGxh
bmUsIGFkZHIsIGRhdGEsDQo+IG1hY19yZWdfYWRkciwNCj4gPiArZXhwZWN0ZWRfbWFjX3ZhbCk7
IH0NCj4gPiArDQo+ID4gICBzdGF0aWMgdm9pZA0KPiA+ICAgaW50ZWxfbHRfcGh5X3NldHVwX3Bv
d2VyZG93bihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgdTgNCj4gbGFuZV9jb3VudCkN
Cj4gPiAgIHsNCj4gPiBAQCAtMTQxNyw2ICsxNTI4LDEwIEBAIHZvaWQgaW50ZWxfbHRfcGh5X3Bs
bF9lbmFibGUoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gICAJCSAqIHJl
Z2lzdGVyIGF0IG9mZnNldCAweEMwMCBmb3IgT3duZWQgUEhZIExhbmVzKi4NCj4gPiAgIAkJICov
DQo+ID4gICAJCS8qIDYuMy4gQ2xlYXIgUDJQIHRyYW5zYWN0aW9uIFJlYWR5IGJpdC4gKi8NCj4g
PiArCQlpbnRlbF9sdF9waHlfcDJwX3dyaXRlKGVuY29kZXIsIG93bmVkX2xhbmVfbWFzaywNCj4g
TFRfUEhZX1JBVEVfVVBEQVRFLA0KPiA+ICsJCQkJICAgICAgIExUX1BIWV9SQVRFX0NPTlRST0xf
VkRSX1VQREFURSwNCj4gTFRfUEhZX01BQ19WRFIsDQo+ID4gKwkJCQkgICAgICAgTFRfUEhZX1BD
TEtJTl9HQVRFKTsNCj4gPiArDQo+ID4gICAJCS8qIDcuIFByb2dyYW0gUE9SVF9DTE9DS19DVExb
UENMSyBQTEwgUmVxdWVzdCBMTjBdID0gMC4NCj4gKi8NCj4gPiAgIAkJLyogOC4gUG9sbCBmb3Ig
UE9SVF9DTE9DS19DVExbUENMSyBQTEwgQWNrIExOMF09IDAuICovDQo+ID4gICAJCS8qDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5X3Jl
Z3MuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHlfcmVn
cy5oDQo+ID4gaW5kZXggYTRhYTJhM2UwNDI1Li41ZmI0MzMxYzM4N2YgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHlfcmVncy5oDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHlfcmVncy5oDQo+
ID4gQEAgLTksMTIgKzksMTcgQEANCj4gPiAgICNpbmNsdWRlICJpOTE1X3JlZ19kZWZzLmgiDQo+
ID4gICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9saW1pdHMuaCINCj4gPg0KPiA+ICsjZGVmaW5l
IFhFM1BMUERfTVNHQlVTX1RJTUVPVVRfRkFTVF9VUwk1MDANCj4gPiAgICNkZWZpbmUgWEUzUExQ
RF9NQUNDTEtfVFVSTk9OX0xBVEVOQ1lfTVMJMQ0KPiA+ICAgI2RlZmluZSBYRTNQTFBEX01BQ0NM
S19UVVJOT05fTEFURU5DWV9VUwkyMQ0KPiA+ICAgI2RlZmluZSBYRTNQTFBEX1JBVEVfQ0FMSUJf
RE9ORV9MQVRFTkNZX1VTCTUwDQo+ID4gICAjZGVmaW5lIFhFM1BMUERfUkVTRVRfU1RBUlRfTEFU
RU5DWV9VUwkxMA0KPiA+ICAgI2RlZmluZSBYRTNQTFBEX1JFU0VUX0VORF9MQVRFTkNZX1VTCTIw
MA0KPiA+DQo+ID4gKy8qIExUIFBoeSBNQUMgUmVnaXN0ZXIgKi8NCj4gPiArI2RlZmluZSBMVF9Q
SFlfTUFDX1ZEUgkJCV9NTUlPKDB4QzAwKQ0KPiA+ICsjZGVmaW5lICAgIExUX1BIWV9QQ0xLSU5f
R0FURQkJUkVHX0JJVDgoMCkNCj4gPiArDQo+ID4gICAvKiBMVCBQaHkgVmVuZG9yIFJlZ2lzdGVy
ICovDQo+ID4gICAjZGVmaW5lIExUX1BIWV9WRFJfMF9DT05GSUcJMHhDMDINCj4gPiAgICNkZWZp
bmUgIExUX1BIWV9WRFJfRFBfUExMX0VOQUJMRQlSRUdfQklUKDcpDQo+ID4gQEAgLTI5LDYgKzM0
LDcgQEANCj4gPiAgICNkZWZpbmUgTFRfUEhZX1ZEUl9YX0RBVEFZKGlkeCwgeSkJKCgweEMwNiAr
ICgzIC0gKHkpKSkgKyAweDYgKg0KPiAoaWR4KSkNCj4gPg0KPiA+ICAgI2RlZmluZSBMVF9QSFlf
UkFURV9VUERBVEUJCTB4Q0M0DQo+ID4gKyNkZWZpbmUgICAgTFRfUEhZX1JBVEVfQ09OVFJPTF9W
RFJfVVBEQVRFCVJFR19CSVQ4KDApDQo+ID4NCj4gPiAgICNkZWZpbmUgX1hFM1BMUERfUE9SVF9C
VUZfQ1RMNShpZHgpDQo+IAlfTU1JTyhfUElDS19FVkVOXzJSQU5HRVMoaWR4LCBQT1JUX1RDMSwg
XA0KPiA+DQo+IF9YRUxQRFBfUE9SVF9CVUZfQ1RMMV9MTjBfQSwgXCBAQCAtNDEsNCArNDcsMTMg
QEANCj4gPiAgICNkZWZpbmUgIFhFM1BMUERfTUFDQ0xLX1JBVEVfTUFTSwlSRUdfR0VOTUFTSyg0
LCAwKQ0KPiA+ICAgI2RlZmluZSAgWEUzUExQRF9NQUNDTEtfUkFURV9ERUYNCj4gCVJFR19GSUVM
RF9QUkVQKFhFM1BMUERfTUFDQ0xLX1JBVEVfTUFTSywgMHgxRikNCj4gPg0KPiA+ICsjZGVmaW5l
IF9YRTNQTFBEX1BPUlRfUDJNX01TR0JVU19TVEFUVVNfUDJQKGlkeCwgbGFuZSkNCj4gCV9NTUlP
KF9QSUNLX0VWRU5fMlJBTkdFUyhpZHgsIFBPUlRfVEMxLCBcDQo+ID4gKw0KPiAJIF9YRUxQRFBf
UE9SVF9NMlBfTVNHQlVTX0NUTF9MTjBfQSwgXA0KPiA+ICsNCj4gCSBfWEVMUERQX1BPUlRfTTJQ
X01TR0JVU19DVExfTE4wX0IsIFwNCj4gPiArDQo+IAkgX1hFTFBEUF9QT1JUX00yUF9NU0dCVVNf
Q1RMX0xOMF9VU0JDMSwgXA0KPiA+ICsNCj4gCSBfWEVMUERQX1BPUlRfTTJQX01TR0JVU19DVExf
TE4wX1VTQkMyKSBcDQo+ID4gKw0KPiAJICsgMHg2MCArIChsYW5lKSAqIDB4NCkNCj4gPiArI2Rl
ZmluZSBYRTNQTFBEX1BPUlRfUDJNX01TR0JVU19TVEFUVVNfUDJQKHBvcnQsIGxhbmUpDQo+IF9Y
RTNQTFBEX1BPUlRfUDJNX01TR0JVU19TVEFUVVNfUDJQKF9feGUybHBkX3BvcnRfaWR4KHBvcnQp
LCBcDQo+ID4gKw0KPiAJCSAgICBsYW5lKQ0KPiA+ICsjZGVmaW5lICAgWEUzTFBEX1BPUlRfUDJN
X0FERFJfTUFTSw0KPiAJUkVHX0dFTk1BU0soMTEsIDApDQo+ID4gICAjZW5kaWYgLyogX19JTlRF
TF9MVF9QSFlfUkVHU19IX18gKi8NCg==
