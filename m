Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A4BB21BBA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 05:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DAC010E320;
	Tue, 12 Aug 2025 03:44:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JMq/8qju";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8FD10E0BE;
 Tue, 12 Aug 2025 03:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754970255; x=1786506255;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o2C2aEzSwkqEGd16VItB8UBmJ69A2dJwC+GZTxTViXU=;
 b=JMq/8qjulUO8E8+83S7Axa9ulHfmTEHHBVnE2tLmVsVcZILmWBbhwECX
 i4VRqkXvO8KF8t9YsnZk7G9XFhlD1fXENd9LTxAbjgvo7g9imBRMJINbi
 vEhXVekCNMXADF0qFnlCnecL29UXOh2HEJ+QDq5jC89hosSi9G/EvkA8s
 Um4ZXt167ovFsCokcZSjj3R7W1swWqm0HLSSOOSDxOkp0UTdnBFREctIn
 LVGMlCTKuqtu2sxHiZG50Nsj5bTHeOC/qJYfRk2WmyIxJMBPxPNmMLRSo
 2GfVbC/qnYdAEiVjVJ7TdlA9G0YBtayeP7PJn+V/mlEzHJUa/Y03p6u84 Q==;
X-CSE-ConnectionGUID: Y5xlQxuKQsOGWhjNULYpYw==
X-CSE-MsgGUID: s0riZakfSX+ERQqXuFi2ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56264092"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56264092"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 20:44:14 -0700
X-CSE-ConnectionGUID: xQLsN6+jSsmYsFI3SXioEw==
X-CSE-MsgGUID: oHhiU9zSTiCs1IZRQmoASQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165974393"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 20:44:14 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 20:44:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 20:44:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.68)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 20:44:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vgkBzukRT9k0oLPVtr2VVnjiZv8Wo4+oIgG6eGm+ov0E2f74moYFMoBZKJjGKBru7RXUxshxptijwW+lQzvtqFZY/S5/dZAZrJi3MnREhXDHYtl+bPHhFJqaTWNPig7BunTjwKcmARES/UwGargAqVYIo4bNO2OiubMseWYMUr8x6a3W0KBUTrbO+1vWdmWgK41vLNCE8ngfdvFWjQVFI3oioj54iVdKoF2YDDdPkmzqv0Ui8b1cK5AP7IWI65iInVFjfX62GKEZktSSCYv5jWGgfyiyAKMZ03VFq1gz2wskWYX5hNjiU0jaLqpsTkApCtpZ2GWOLH8FNnUQYajZow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gqwob9rojz46Q8K0VZY830Hea5Pp5A392BJQo2pPmQw=;
 b=Ztia+yLvyq1zgM4IGAJmejceksSN6oQGa3AJXt32arunsiUzBbvJX6ugz65Ae95VP5QfS1l5gicXIO+57LN8lBo/eSkYLLLhQ3wAuOLmXNh8NMVv626C/q0uxcNjORIr6wXCU2jaZ1CiwlxYaZ4pLvMJled5u9/ZjWtwpW/YxMVPBq3lI/GM/zwaW/V7OEhG+bFqyd6dOSuKIrDhvfK5JaNQbQ0c+OCxy5ZbO2oIE6Mz0oPtkXNX7XBjXnkYj2w5mIWtNrs9z8E/Tdw4mVk33P+X4miqmyXqhpRBJ6YyfSHsWVmG+ONM17TtCPgjd9Bj436gLHEv6kgvco0uAdMssw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB5871.namprd11.prod.outlook.com
 (2603:10b6:303:188::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 03:44:06 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%5]) with mapi id 15.20.9009.018; Tue, 12 Aug 2025
 03:44:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 4/4] drm/i915/vbt: add missing DSI VBT defs
Thread-Topic: [PATCH 4/4] drm/i915/vbt: add missing DSI VBT defs
Thread-Index: AQHcCtRVSCAT3KU/eUOLgUhU93mtfrReYO6Q
Date: Tue, 12 Aug 2025 03:44:06 +0000
Message-ID: <DM3PPF208195D8D139CBE1718D2223E34FDE32BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1754925923.git.jani.nikula@intel.com>
 <17e0f38391314aceff12619a04829c3e36fa26b7.1754925923.git.jani.nikula@intel.com>
In-Reply-To: <17e0f38391314aceff12619a04829c3e36fa26b7.1754925923.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB5871:EE_
x-ms-office365-filtering-correlation-id: 774ec6f7-2ef0-4697-9944-08ddd9527d0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?CBSNScdOlz8QFujoUztDNPf0aps75d4UVYuA5LLVOO9hCa9LhlfjRG2hZLF9?=
 =?us-ascii?Q?PoTIxUlrCJoLr12/QMTBn5ChG2AB5r+NwE0z5M8KhI8TXbrHcteEAmhkX2GO?=
 =?us-ascii?Q?RmodnM1y4xuV7pj5nYw2XIXjatkF5OEql5ENZ3WQl+rKr43W7RklYvZEp72J?=
 =?us-ascii?Q?wx8HKDxQ5z06xcDjAUoeWa2IROgIQv1g2siOCnGgRJMstNWpCJCkkS17QcCZ?=
 =?us-ascii?Q?b9QALKKr7mjCSgRatEPgt26u/3pwiTh0XNx4i44zRN7Vx3QlAvyS18H0ghLS?=
 =?us-ascii?Q?zpBxEucYhHUtrvVxO9WFfpBhX1Q63McYn8v7gsFI7YtQ4fMunUbefSigeQ1x?=
 =?us-ascii?Q?JBoIim4VJeVvJOT59GTf2PThRspR7JdX8lKWT8i8r83rRaDPFiXnkCW1BUfV?=
 =?us-ascii?Q?ZsxHOei8pnCKEZtN1eZXgIg92K9p/tSIYVV9pvyQcBBr4/uOD7QBLw4n2dMJ?=
 =?us-ascii?Q?UK6TV29n8xb6R5HIbX//D/xNYwQrcULX1PON/xO0JdB/m4CQK5aiJkGI+SlX?=
 =?us-ascii?Q?iRugNK0mu1YMukpGKTIZigtyzXkqp5Ex+YQXPsPHrbP2iA2HkzVdvPIdTkdU?=
 =?us-ascii?Q?P2odDTdBcVDHQ/7Qxjuq+3o70KFI1L02IA+VHKxjM78SVmqCgD2qVi1Uzql+?=
 =?us-ascii?Q?LJsqAZJ7zzip3GmKAOzHUYRUZw/4DOmyCl2h729PbYJHPm+hDgHpat/UVdkE?=
 =?us-ascii?Q?Dvfbh7CAVZG0Guc8W/M9N+qDoYWv9hJKEJobD2fpQrDP0ffX9+V60LGjr0e2?=
 =?us-ascii?Q?fG9E89RXjKTXSMA4dhOFof2z7Q1fohHDnudY1qYuyQQSyW5F5AUvnzn5eP/f?=
 =?us-ascii?Q?RjRasU34DfKCgvR5IT3hF/iSJkpBRADgqwpPWXRTkLqMRq37x3sWk83HBsNh?=
 =?us-ascii?Q?OcTi2PIS8t9Qo/KZDEkl+l834fDGoRR3rbD5Dh9smX+QUPqNT3qj5NRafmgf?=
 =?us-ascii?Q?Royu7nU66zHWEQxz1GAt6bw6sk+CgRgWTXw6G1GXo1MVhPU0mfcH+f90bbvw?=
 =?us-ascii?Q?VIjH8RuA8rZtHAY4MIhGqZal4h4KE5k4ez6blP2oOB8F1TLMkSVBz1yQNA28?=
 =?us-ascii?Q?XgIRMsRygYag6TKaFkRZ/dxJSQ2nECNoFGFqBHYzLbqU7PFjAQZ9FvO5+qZv?=
 =?us-ascii?Q?QFSKwWWxzBTZu8axVT/MFaueG0xiMAcK0GT3DnI5Wnq3JgaSGb3G0A8ghboa?=
 =?us-ascii?Q?nODRJYePs7YkMGByI64vlcBdk/vJBfNWwqnDN+Y+Dm27mhZOHHH78vBTiRzy?=
 =?us-ascii?Q?CfrnBKQVnQpOfSJM3H14Oq1nNmTmMq8LlAFLuGnMDGE8UtygKWRBik1yAQYm?=
 =?us-ascii?Q?IjR9VNmvvjBVauTceD5Go7D+2ezgx02aBpdA+SEN7ORX619tCybBzE90rcfl?=
 =?us-ascii?Q?AnzblOZAyzVoypd5HWhxQVNiP6dxcgbsdgrlwnCU50w17fChkpSAA/hqKejp?=
 =?us-ascii?Q?RawCI74FvCy7dQn1gyGCgymzb8Q1jufC/Ic1CthBtpJl4xRzRpoSznGrNOtQ?=
 =?us-ascii?Q?zD2n3g92r7kO+n8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yw2MuqrdWlyM20EqpjOxB6DP3y/j7mv++aEsaA7zyTXueTcT3VRf6WJ8CeaN?=
 =?us-ascii?Q?iHsbbBtDr0uxB0S01dGuumG5IzNubfNJzsGZj6AExda/ttXgCNUXtEEuHMUK?=
 =?us-ascii?Q?Pi0RyaKUriL5eo7akC30Yvz2Jg40wgmVes+ZIwcbLf/FkM31c4jaxIZ15+eu?=
 =?us-ascii?Q?KD8giUps8Qt8YHcMn9+Y2gORXbJd2ZzW3qo5CV79nP74WDdHEAGHMRCOaQxE?=
 =?us-ascii?Q?S37Gnw+JShT1/1Eud8eG9FotfAw54KXES0xeVq5zPC7kOhhEmzDGzw++FagW?=
 =?us-ascii?Q?HX34b7Hz3fW86HBrj0/+jTGFIooHJkB2t3Ic6+uebnwjuzJqKP3CAi2pdcO6?=
 =?us-ascii?Q?ArJdA9vl2xRjCyGWQYyH7RusMZlW2cmI9e15iRzHfQ++/xJ+OLfWtvd1y+tq?=
 =?us-ascii?Q?wzk+7DxxWQwHPeF81O0updX45n8Buc3K0yswkNXCxrTkyQN7tKnj/K8hwV3d?=
 =?us-ascii?Q?o9fiL9M0rWl2O7joWLh78OUkwUXBXvJXMGSAV/mceOQCJ9HrVVY0e9FfBI3J?=
 =?us-ascii?Q?/CvmqLp7drpINxfIYdYMUjUxwzpCPJNS2vEeZnht5N9HZfvzSTaZJIxgxyLd?=
 =?us-ascii?Q?vld0wGdVAWr4FJcHagFtZWm4tbzvhXUj96ZO2vhcJmYnQvV9MdR9AlVJGZ41?=
 =?us-ascii?Q?doeU5icLPG8dNP1CJRIels/+iVtqZ3UL1kklMfyfwlegbPhEOdnyvw+eLqRy?=
 =?us-ascii?Q?gJYaziFS6Kba8RzV0QN/LWR4YDKZ72km2m9zYAakcNndQsEQZeOGlX7mI8Lc?=
 =?us-ascii?Q?9ov3BqlAblEKWsyh3a/ilNtaTgHpgRlbves7oVwCijSDig17/8UGZH3BGn2d?=
 =?us-ascii?Q?k1UNUTEOLBiRIgAnB57q0LfuSnJ9u69N6TIL0NQJsCq4xDVoFXrzoIF9xCi8?=
 =?us-ascii?Q?byt3tOw/Eaoek1xHEk6iToXNI6v0mGfEuYRC562Gk/5yq9RF1vlukTKYgop7?=
 =?us-ascii?Q?kgKh51hbwdiNgIynMxANBHd6A5bZfOqNlCxZXuP3P56n1emFpERRhe/Y8Thk?=
 =?us-ascii?Q?ESuboAIHlzz2J3zua1a3i203umm+x6QMxIhQP/mewu0+lsopYKBrstWJ4Hzl?=
 =?us-ascii?Q?RV5WT35VHItQ6cnz9cvKAz7yUOhkkMv0AArkiQAkzn+LzP6YOWW/gOr0Wiqb?=
 =?us-ascii?Q?I7TSGUc04Ja5IbtPVrxNWAV9Lnr3yL9DKjZbgsMRnOqFqjCMwYLm2v2HmXme?=
 =?us-ascii?Q?JQh9GKfvI+YWD0T5jEWi7hYqNzsi0aamzUDOs5P3KPaNga/WOqBoLsxHm3ct?=
 =?us-ascii?Q?YhByhOAYoYQ5pxSWvVhQOHNgbTuwN5paBdpP8AhYmJ8HjxnP0cMBKmDcGRuH?=
 =?us-ascii?Q?M5FTRU9BccRKEJTbpDfNoCEA8PfdsmfY8Bn0lTklNTHZWSm0wuTkVsdGFzga?=
 =?us-ascii?Q?G9ltIxM45mNN5Y3I9dXcIVX1QR+U+sNhcWwLN4eyyJQTdfQRIg4toOHaWP/Z?=
 =?us-ascii?Q?+FhH0Itys5mAnsVJJNBtCwqgnjxQZdZUK8WeMeEDPb8MddyiZ4htlCvJMZVn?=
 =?us-ascii?Q?YWeedkY1tPdTxEWQLj8Y6gvq/uFyefRqV78XZrXXT0ybpO3CXxzPSo+AYNgB?=
 =?us-ascii?Q?zYUGEUECDRTdI8V6nE3C0YqAiCz/nh5So71uDUDO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 774ec6f7-2ef0-4697-9944-08ddd9527d0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 03:44:06.4971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3MDETP4EdO2G70tpSw4DrhR8fRIZbJ4Wt/jDkMF2Ggjt7/zsJLnw1cdxogJ1CHGy9Rtw2qURW4AuucSb8aLV3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5871
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

> Subject: [PATCH 4/4] drm/i915/vbt: add missing DSI VBT defs
>=20
> Add some missing DSI VBT definitions.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> index 3f9b9ed6592c..edc7331dcca2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> @@ -94,10 +94,15 @@ struct mipi_config {
>  #define DL_DCS_PORT_A_AND_C		0x02
>  		u16 dl_dcs_cabc_ports:2;
>  		u16 dl_dcs_backlight_ports:2;
> -		u16 rsvd3:4;
> +		u16 port_sync:1;				/* 219-230
> */
> +		u16 rsvd3:3;
>  	} __packed;
>=20
> -	u16 rsvd4;
> +	/* DSI Controller Parameters */
> +	struct {
> +		u16 dsi_usage:1;
> +		u16 rsvd4:15;
> +	} __packed;
>=20
>  	u8 rsvd5;
>  	u32 target_burst_mode_freq;
> @@ -118,7 +123,9 @@ struct mipi_config {
>  		u16 dphy_param_valid:1;
>  		u16 eot_pkt_disabled:1;
>  		u16 enable_clk_stop:1;
> -		u16 rsvd7:13;
> +		u16 blanking_packets_during_bllp:1;		/* 219+ */
> +		u16 lp_clock_during_lpm:1;			/* 219+ */
> +		u16 rsvd7:11;
>  	} __packed;
>=20
>  	u32 hs_tx_timeout;
> --
> 2.47.2

