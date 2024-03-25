Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B022C88B4F1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 00:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1AED10EB6C;
	Mon, 25 Mar 2024 23:04:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W4+n7jkB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D8EC10EB69
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 23:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711407854; x=1742943854;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=nFKqe5iV4MQiFtrqRsjLK/muwRmhtaHsp6pf7IsTzKw=;
 b=W4+n7jkB+FUXWSXT5KgRLIvaChJ7AyYay47g0avFcfoWXWkYqIxkBhuP
 qP3mzemVuGTltuj9u5C0gx/yG1WTGIu19O8iE6uP0u4Ckfxhvuu8GRrDP
 l2LeiICE/XVM/kCMfIZDvVsuU8RmdNSTdA/UZarJd4+G1zovmaFQSLLGQ
 cE4euk/AvScjE+q0D7hyN9/e4RJUDpu5gONWJmQ/qveJLPrdC/4/ZLkRE
 Dw0ugXbxSvefFMk01QrAXIdfxQo+u2LxdN1IxCWxOvIi30feN6dLb+fIY
 kf1gbvgN0W7lp9bGpI/JyErF78VqB0557RUHO2cEFT9xvH8FEmRfrWwVM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="10230950"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="10230950"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 16:04:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="20440750"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 16:04:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 16:04:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 16:04:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 16:04:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A/vFlCQ4zAnBOp3VyM89bk9TOkG3pvb8UkZDi/Ge+jUXglfVkqOz3QBPe61FYiamQd+7rAXyJjZwiPts3V9NPwgKUZZi+sT3wMaFn0l8g648XiFGroljWyqfmHJTav70NzNc0w8GbQHyF6PMMjyx8BomJUTpsadbtnYH/tAQqLSUL9LiZplTZ29lhfl8MVGzL38/3rzBq7P3ZK+xsTgEvQyMjC/aHVfgoqxSI7Y1cJC5WqkVcj/xgY0xzNBjDnxTfI5KXvuYcgIqcN8NepXxjbQxhw7H5ZYmFOj/Ka87vCz5Oyu/b6qf+ceTLZ9KhzS737Gsrb3AoeexTZgkxAl+dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hX2tqGTQLE8ChTv2fSfBhVdw4LIRTqA8Y+lVMkO0ivw=;
 b=PtoWCDSAY0sKIJzFnkAcXQmvg0i9prYdyT6RM0YT9VHz1Leky8JaV0UxaaosKVDlMhspyxagv2PM8A3WVUtGQxC9/pKO+Lxn5/AN7su/wK3eJpmNVNPe2FNVuXVy6BIhIQz0EZ4yEDqpvM3QKF1Om8vkapMl4qMkyRwjqEO9lcB2IJYaFCmBlFZMt1OJf4R6NuG5Tx/s+boUKZutEcGhWsprV1CXziloF8poIYMFAgwJFrp8BSwTQppPL2Ki+l69hH7jJguO2+DWa/j2WajxR/wmkzhtXycqXEd3oUkdU/JgM0ZizFJ61Pbau8Oywv056HoBT/s01/FbW4avyCnwHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA0PR11MB4525.namprd11.prod.outlook.com (2603:10b6:806:9d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Mon, 25 Mar
 2024 23:04:10 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Mon, 25 Mar 2024
 23:04:10 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240320160123.2904609-1-jani.nikula@intel.com>
References: <20240320160123.2904609-1-jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/de: register wait function renames
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 25 Mar 2024 20:04:04 -0300
Message-ID: <171140784455.3229.10451794605525894609@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0350.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA0PR11MB4525:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XcydPsNSQ1+VcRR4jUg37u30uAb45u5Y/OcFolu3F48tyhhA9zN3bJONu5VKvbChkXkKa2N5gHqyzAPbEY6o6ICCzDPXab5iTLaEZaVdSXu3TfUiIz0T95fm3Aw5XBNs5/RSkSPbjsq04n3FdNR0gBAcep+BPxeoOU2kr77/dSP08Jg/cpxq0EGPGPe2Ef2K0e6c0IQkP1nstBRAjKjI7nHHlEd5ddreH5uU7J6A95pX3NUkl8i3MDsZd2u6KWmkMA5Zs352+F4ZFnh4UVwmDDEn2pw9zafNu07CqbdMugH55nHhKYfF0fC4OLsp6heHEcYi+bGE/zeges1l02M8AIQEHLYHQWPuX5ojAUaso2s4Mf3p9vyU3t9s5d8wfni3XP9Kzdzj5ohtDm4QVTzrNeKEp2ywxU3HvWVLzjOsBYkyhnhmdEwywke504noe6geSa+W53aqAXLIIgnNBZxCBjlSbSBZ+k6DTwqmEDDNIAg26EpRVROVlvQSWkpwWHLK/c37QCUmAwhq9szTn7+dDQoat7fKqoNm6j6Q7efZs0z/Bg2ymGjjhnXKcks71wbLDNG8jAmziSkY1jF/UDmIwJtxtW9w4fQG4cnT96LpuyE9QFW0yyXzTMAAcLVcLCLVI0/+jPGv6t+iDBHkAruNobY9Jp2tXtarVbdfDIhVm9o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dk12bEU2NExCY2xJWEowSmFva0xic2N2cmI4UU43MXgrak9ZaXFJVkVVT3pv?=
 =?utf-8?B?RkVUQ01MUWxGdytEWjRycmtTaS9kVmp0REkxS2xEOHY0TTNIRi9kUTd2S0tD?=
 =?utf-8?B?b1JGcy90UERzQlJNeXBnQjIxaEZGb0JURzFoSDRCOEhZcjZvK3pUVHd2RExz?=
 =?utf-8?B?ODZrYWJCdVR1ZUFMN0xwc0FzT3Y0TzNJY2JXc0UreE9OZ0J4NGJPc0tuV2lS?=
 =?utf-8?B?L1hxNkhvSTJ2d082a3Z5SWx4dFJqZVhleUx5L2NMcjFVdjkrNENzU0orNFpU?=
 =?utf-8?B?YlhpaGxvR2ZYRWdTMDc3MjNuaTJWR3Qwcm5pMW9vWG44N3hLOXJweHMwb1VT?=
 =?utf-8?B?ckRpVkVyTk1YSThoTXRMejJnSkJIY3hKcmc3UXAxNzFFZ1BKc0xUNnRIbVFK?=
 =?utf-8?B?NXZZbjZXc2NsOVU2cERuL1VZaUdVM3N6YWQ5bUwwMTR5WjVJdC9kaUhOd1Bm?=
 =?utf-8?B?YUVKT2I2enpBVksrVFo4L0VpRk9maVRoZngzVnA3L3hBQzdFZCtiVkpPRzhP?=
 =?utf-8?B?Q3oxTjlxVXNtTndRZnd4RnBVMTBqNVBlb0IwVktkSkRwanJGMytKYm5WYjVO?=
 =?utf-8?B?KzlpelBrQ2dxRUp2cVFBcm51TmgrZnJ6YkRpdGZzNTR6TTlwTjlnazZ2bzIr?=
 =?utf-8?B?YWYycllOOWNmWnJ3RUN5aXFpZWJ5dFZVTzJNQlhGd0ZBVDRyalhyVXFlVWE2?=
 =?utf-8?B?dnFXK1JRSTUyT3lMTWFEQStsWUdmcVdoRlZYT1V0Z05aa0JTRHpXQjlhZU4z?=
 =?utf-8?B?VkZSTVhRelpMNzJvYi9sRG8vRHUwNU5MTFBzVmZvbnQ0Q25vaFpkRCtKVkRL?=
 =?utf-8?B?eWlLSGJJQmI3aDBkTndxNmZTV01SaG5lVDRHRXVaa3grZDAvQ3FhbjN3eEtH?=
 =?utf-8?B?S3Y2eTFDNXkya21qdjhyQ1JFMkVRMy9LMlVPcFp1Z0JIV001QkE5UENoMkoy?=
 =?utf-8?B?NTR0Yzk2cGRzcy84d2FVbXdmSnUrYTRJNDNrdXk5NXFEb3pFL3VDTkhHRnRB?=
 =?utf-8?B?RUoxdEgwaGlUSmVuUHNHL0h5eDROYWJnd1JJTHhWUnl6RXBZcTdtNkhxQkNJ?=
 =?utf-8?B?OFJMajJqOWNnV3l6dmpOWUlDYnlzZ0o2TTFFaFRmYlFTRmE4MUVrOFdaWjFx?=
 =?utf-8?B?WTU2WDZCSVJEVlp2UkZxQ0NnajRRcFBzYkpFVUJ0TGdqYVZkcTVqcitVSks5?=
 =?utf-8?B?OXlVT3pYME5SQkt2SnppZVBRZkJsdTBheVVwSlhZd2dEcnZIaEZyN2ZzbEVa?=
 =?utf-8?B?UE5Bc2dYS0R1Y1YvYkFyZHpIWnFsQnpCRk5MY2Z6QzBnelo5YXp3c2QvVmNu?=
 =?utf-8?B?Y3I2Qzg1V1Y1WmRRS3lIcVpZZDNkaG1iTHlTSVlTTGkxb1N5bG4rRVRSclRE?=
 =?utf-8?B?RUVJT2xQcFFNQ3d1djlPek9MdzVGRXZaMzlTZlVhMnkzckpFaHhGYW11VGFI?=
 =?utf-8?B?TFYwT0tuNlhmVXQwenluTUpqSngvWlF1TmlncWpEVm83bmdBQmVGNVhEYTRR?=
 =?utf-8?B?UkYySDk0cE1CR1V6Y2ZvUDZCa3ozQzZsYnRZUVJyMWFDRE9NKzJQZ05CKzJo?=
 =?utf-8?B?RTVjcG5vMEhQQzg4TnN0QlVCa25YZTJmaDlBWmNocTFPWld0Wk9CZ1UvODl5?=
 =?utf-8?B?TmtDbm1QRTJ6K1pWNTh5SDBLcGhoc2xKb01uNUtoSkM4Lzl1ZjRVellaY1Rv?=
 =?utf-8?B?NVNCQXNNWXBlVkIxakdrTm9KVlBvVS92bFpXU2EzSEpURGJQTmhjaXVvMkFY?=
 =?utf-8?B?VktFcjRwMnhBSEdrOFJSTVBkcnRLZ3Zuc2VGa1M2NzBHOHh5aE4rWUxtWmVP?=
 =?utf-8?B?QmhkVjhuYjAzTlY4TjVKWi8vSFNTbmdWTnY4ekZOVEx1RWRFS0xUeTlabzNF?=
 =?utf-8?B?cVM2SzM5dzdrOVNacDArSmR0a3hNNXR2M1N2VnduVkl6NE5BMVczc3E4R1pT?=
 =?utf-8?B?aHp6Nkc3cmRlZldSV05JYTJrOEo2c0trdnRrd0x3RjI5TnhOUG9iL240enZv?=
 =?utf-8?B?TnNzQTRPQ05Mck1iZURtUHUxM2RYRkdJeU1sR2hTQkh0bGhnbHRSRWVYTlVJ?=
 =?utf-8?B?ci9idnczVVVjWkFKdFc4NHB2Vk41dFFvYy9WQVVRQ0x5cTkrWWg1NzVYaHB3?=
 =?utf-8?B?Mk5DK2plMGJaQVlvNXFFMVZhRTN2dDN2bFlQNlNRcGNNRmdiczFiU1pVenBa?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a4ff015-95c1-490e-3a68-08dc4d1fe117
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 23:04:10.2978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mN0201KAoDYEnDikxC7Z1TEGsKtGiKoMFAnW4uiWAKqYu4BmMW54HfHCtXbLRCng7jJI8oTbUiByR6aLYDzkLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4525
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

Quoting Jani Nikula (2024-03-20 13:01:22-03:00)
>Do some renames on the register wait functions for clarity and brevity:
>
>intel_de_wait_for_register        -> intel_de_wait
>intel_de_wait_for_register_fw        -> intel_de_wait_fw
>__intel_de_wait_for_register        -> intel_de_wait_custom
>
>In particular, it seemed odd to have a double-underscored function be
>called in a number of places.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>---
>
>Use 'git show -w --color-words' for easy review.
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 68 +++++++++----------
> drivers/gpu/drm/i915/display/intel_de.h       | 20 +++---
> drivers/gpu/drm/i915/display/intel_display.c  |  3 +-
> .../i915/display/intel_display_power_well.c   |  4 +-
> drivers/gpu/drm/i915/display/intel_dp_aux.c   |  5 +-
> drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 17 ++---
> drivers/gpu/drm/i915/display/intel_gmbus.c    |  2 +-
> drivers/gpu/drm/i915/display/intel_pps.c      |  3 +-
> 8 files changed, 58 insertions(+), 64 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 64e0f820a789..eedd1b4de943 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -143,12 +143,12 @@ static int intel_cx0_wait_for_ack(struct drm_i915_pr=
ivate *i915, enum port port,
> {
>         enum phy phy =3D intel_port_to_phy(i915, port);
>=20
>-        if (__intel_de_wait_for_register(i915,
>-                                         XELPDP_PORT_P2M_MSGBUS_STATUS(i9=
15, port, lane),
>-                                         XELPDP_PORT_P2M_RESPONSE_READY,
>-                                         XELPDP_PORT_P2M_RESPONSE_READY,
>-                                         XELPDP_MSGBUS_TIMEOUT_FAST_US,
>-                                         XELPDP_MSGBUS_TIMEOUT_SLOW, val)=
) {
>+        if (intel_de_wait_custom(i915,
>+                                 XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port=
, lane),
>+                                 XELPDP_PORT_P2M_RESPONSE_READY,
>+                                 XELPDP_PORT_P2M_RESPONSE_READY,
>+                                 XELPDP_MSGBUS_TIMEOUT_FAST_US,
>+                                 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
>                 drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for messa=
ge ACK. Status: 0x%x\n",
>                             phy_name(phy), *val);
>=20
>@@ -2536,9 +2536,9 @@ static void intel_cx0_powerdown_change_sequence(stru=
ct drm_i915_private *i915,
>                      intel_cx0_get_powerdown_update(lane_mask));
>=20
>         /* Update Timeout Value */
>-        if (__intel_de_wait_for_register(i915, buf_ctl2_reg,
>-                                         intel_cx0_get_powerdown_update(l=
ane_mask), 0,
>-                                         XELPDP_PORT_POWERDOWN_UPDATE_TIM=
EOUT_US, 0, NULL))
>+        if (intel_de_wait_custom(i915, buf_ctl2_reg,
>+                                 intel_cx0_get_powerdown_update(lane_mask=
), 0,
>+                                 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US,=
 0, NULL))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of Lane =
reset after %dus.\n",
>                          phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_U=
S);
> }
>@@ -2593,19 +2593,19 @@ static void intel_cx0_phy_lane_reset(struct drm_i9=
15_private *i915,
>                                            XELPDP_LANE_PHY_CURRENT_STATUS=
(1))
>                                         : XELPDP_LANE_PHY_CURRENT_STATUS(=
0);
>=20
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(i915,=
 port),
>-                                         XELPDP_PORT_BUF_SOC_PHY_READY,
>-                                         XELPDP_PORT_BUF_SOC_PHY_READY,
>-                                         XELPDP_PORT_BUF_SOC_READY_TIMEOU=
T_US, 0, NULL))
>+        if (intel_de_wait_custom(i915, XELPDP_PORT_BUF_CTL1(i915, port),
>+                                 XELPDP_PORT_BUF_SOC_PHY_READY,
>+                                 XELPDP_PORT_BUF_SOC_PHY_READY,
>+                                 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0,=
 NULL))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of SOC r=
eset after %dus.\n",
>                          phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT=
_US);
>=20
>         intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_re=
set,
>                      lane_pipe_reset);
>=20
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(i915,=
 port),
>-                                         lane_phy_current_status, lane_ph=
y_current_status,
>-                                         XELPDP_PORT_RESET_START_TIMEOUT_=
US, 0, NULL))
>+        if (intel_de_wait_custom(i915, XELPDP_PORT_BUF_CTL2(i915, port),
>+                                 lane_phy_current_status, lane_phy_curren=
t_status,
>+                                 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, N=
ULL))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of Lane =
reset after %dus.\n",
>                          phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_U=
S);
>=20
>@@ -2613,10 +2613,10 @@ static void intel_cx0_phy_lane_reset(struct drm_i9=
15_private *i915,
>                      intel_cx0_get_pclk_refclk_request(owned_lane_mask),
>                      intel_cx0_get_pclk_refclk_request(lane_mask));
>=20
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, port),
>-                                         intel_cx0_get_pclk_refclk_ack(ow=
ned_lane_mask),
>-                                         intel_cx0_get_pclk_refclk_ack(la=
ne_mask),
>-                                         XELPDP_REFCLK_ENABLE_TIMEOUT_US,=
 0, NULL))
>+        if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
>+                                 intel_cx0_get_pclk_refclk_ack(owned_lane=
_mask),
>+                                 intel_cx0_get_pclk_refclk_ack(lane_mask)=
,
>+                                 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL=
))
>                 drm_warn(&i915->drm, "PHY %c failed to request refclk aft=
er %dus.\n",
>                          phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
>=20
>@@ -2767,10 +2767,10 @@ static void intel_cx0pll_enable(struct intel_encod=
er *encoder,
>                      intel_cx0_get_pclk_pll_request(maxpclk_lane));
>=20
>         /* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> =
=3D=3D "1". */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>-                                         intel_cx0_get_pclk_pll_ack(INTEL=
_CX0_BOTH_LANES),
>-                                         intel_cx0_get_pclk_pll_ack(maxpc=
lk_lane),
>-                                         XELPDP_PCLK_PLL_ENABLE_TIMEOUT_U=
S, 0, NULL))
>+        if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encode=
r->port),
>+                                 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOT=
H_LANES),
>+                                 intel_cx0_get_pclk_pll_ack(maxpclk_lane)=
,
>+                                 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NU=
LL))
>                 drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\=
n",
>                          phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US=
);
>=20
>@@ -2858,10 +2858,10 @@ static void intel_mtl_tbt_pll_enable(struct intel_=
encoder *encoder,
>         intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port), =
val);
>=20
>         /* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack =3D=3D "1". */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>-                                         XELPDP_TBT_CLOCK_ACK,
>-                                         XELPDP_TBT_CLOCK_ACK,
>-                                         100, 0, NULL))
>+        if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encode=
r->port),
>+                                 XELPDP_TBT_CLOCK_ACK,
>+                                 XELPDP_TBT_CLOCK_ACK,
>+                                 100, 0, NULL))
>                 drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not loc=
ked after 100us.\n",
>                          encoder->base.base.id, encoder->base.name, phy_n=
ame(phy));
>=20
>@@ -2920,10 +2920,10 @@ static void intel_cx0pll_disable(struct intel_enco=
der *encoder)
>         /*
>          * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> =
=3D=3D "0".
>          */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>-                                         intel_cx0_get_pclk_pll_ack(INTEL=
_CX0_BOTH_LANES) |
>-                                         intel_cx0_get_pclk_refclk_ack(IN=
TEL_CX0_BOTH_LANES), 0,
>-                                         XELPDP_PCLK_PLL_DISABLE_TIMEOUT_=
US, 0, NULL))
>+        if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encode=
r->port),
>+                                 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOT=
H_LANES) |
>+                                 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_=
BOTH_LANES), 0,
>+                                 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, N=
ULL))
>                 drm_warn(&i915->drm, "Port %c PLL not unlocked after %dus=
.\n",
>                          phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_U=
S);
>=20
>@@ -2958,8 +2958,8 @@ static void intel_mtl_tbt_pll_disable(struct intel_e=
ncoder *encoder)
>                      XELPDP_TBT_CLOCK_REQUEST, 0);
>=20
>         /* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack =3D=3D "0". */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>-                                         XELPDP_TBT_CLOCK_ACK, 0, 10, 0, =
NULL))
>+        if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encode=
r->port),
>+                                 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
>                 drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unl=
ocked after 10us.\n",
>                          encoder->base.base.id, encoder->base.name, phy_n=
ame(phy));
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i91=
5/display/intel_de.h
>index 42552d8c151e..ba7a1c6ebc2a 100644
>--- a/drivers/gpu/drm/i915/display/intel_de.h
>+++ b/drivers/gpu/drm/i915/display/intel_de.h
>@@ -48,24 +48,24 @@ intel_de_rmw(struct drm_i915_private *i915, i915_reg_t=
 reg, u32 clear, u32 set)
> }
>=20
> static inline int
>-intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
>-                           u32 mask, u32 value, unsigned int timeout)
>+intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
>+              u32 mask, u32 value, unsigned int timeout)
> {
>         return intel_wait_for_register(&i915->uncore, reg, mask, value, t=
imeout);
> }
>=20
> static inline int
>-intel_de_wait_for_register_fw(struct drm_i915_private *i915, i915_reg_t r=
eg,
>-                              u32 mask, u32 value, unsigned int timeout)
>+intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
>+                 u32 mask, u32 value, unsigned int timeout)
> {
>         return intel_wait_for_register_fw(&i915->uncore, reg, mask, value=
, timeout);
> }
>=20
> static inline int
>-__intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t re=
g,
>-                             u32 mask, u32 value,
>-                             unsigned int fast_timeout_us,
>-                             unsigned int slow_timeout_ms, u32 *out_value=
)
>+intel_de_wait_custom(struct drm_i915_private *i915, i915_reg_t reg,
>+                     u32 mask, u32 value,
>+                     unsigned int fast_timeout_us,
>+                     unsigned int slow_timeout_ms, u32 *out_value)
> {
>         return __intel_wait_for_register(&i915->uncore, reg, mask, value,
>                                          fast_timeout_us, slow_timeout_ms=
, out_value);
>@@ -75,14 +75,14 @@ static inline int
> intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
>                       u32 mask, unsigned int timeout)
> {
>-        return intel_de_wait_for_register(i915, reg, mask, mask, timeout)=
;
>+        return intel_de_wait(i915, reg, mask, mask, timeout);
> }
>=20
> static inline int
> intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
>                         u32 mask, unsigned int timeout)
> {
>-        return intel_de_wait_for_register(i915, reg, mask, 0, timeout);
>+        return intel_de_wait(i915, reg, mask, 0, timeout);
> }
>=20
> /*
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index d366a103a707..38a711e2e2f4 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -383,8 +383,7 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_=
priv,
>                 break;
>         }
>=20
>-        if (intel_de_wait_for_register(dev_priv, dpll_reg,
>-                                       port_mask, expected_mask, 1000))
>+        if (intel_de_wait(dev_priv, dpll_reg, port_mask, expected_mask, 1=
000))
>                 drm_WARN(&dev_priv->drm, 1,
>                          "timed out waiting for [ENCODER:%d:%s] port read=
y: got 0x%x, expected 0x%x\n",
>                          dig_port->base.base.base.id, dig_port->base.base=
.name,
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dri=
vers/gpu/drm/i915/display/intel_display_power_well.c
>index 217f82f1da84..6ca92c4d8199 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>@@ -1390,8 +1390,8 @@ static void assert_chv_phy_status(struct drm_i915_pr=
ivate *dev_priv)
>          * The PHY may be busy with some initial calibration and whatnot,
>          * so the power state can take a while to actually change.
>          */
>-        if (intel_de_wait_for_register(dev_priv, DISPLAY_PHY_STATUS,
>-                                       phy_status_mask, phy_status, 10))
>+        if (intel_de_wait(dev_priv, DISPLAY_PHY_STATUS,
>+                          phy_status_mask, phy_status, 10))
>                 drm_err(&dev_priv->drm,
>                         "Unexpected PHY_STATUS 0x%08x, expected 0x%08x (P=
HY_CONTROL=3D0x%08x)\n",
>                         intel_de_read(dev_priv, DISPLAY_PHY_STATUS) & phy=
_status_mask,
>diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm=
/i915/display/intel_dp_aux.c
>index 8a02d9cd2ec1..b8a53bb174da 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>@@ -61,9 +61,8 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>         u32 status;
>         int ret;
>=20
>-        ret =3D __intel_de_wait_for_register(i915, ch_ctl,
>-                                           DP_AUX_CH_CTL_SEND_BUSY, 0,
>-                                           2, timeout_ms, &status);
>+        ret =3D intel_de_wait_custom(i915, ch_ctl, DP_AUX_CH_CTL_SEND_BUS=
Y, 0,
>+                                   2, timeout_ms, &status);
>=20
>         if (ret =3D=3D -ETIMEDOUT)
>                 drm_err(&i915->drm,
>diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/dr=
m/i915/display/intel_dp_hdcp.c
>index b98a87883fef..179e754e5c30 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>@@ -766,11 +766,9 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_conn=
ector *connector,
>                 return -EINVAL;
>=20
>         /* Wait for encryption confirmation */
>-        if (intel_de_wait_for_register(i915,
>-                                       HDCP_STATUS(i915, cpu_transcoder, =
port),
>-                                       stream_enc_status,
>-                                       enable ? stream_enc_status : 0,
>-                                       HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT=
_MS)) {
>+        if (intel_de_wait(i915, HDCP_STATUS(i915, cpu_transcoder, port),
>+                          stream_enc_status, enable ? stream_enc_status :=
 0,
>+                          HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
>                 drm_err(&i915->drm, "Timed out waiting for transcoder: %s=
 stream encryption %s\n",
>                         transcoder_name(cpu_transcoder), enable ? "enable=
d" : "disabled");
>                 return -ETIMEDOUT;
>@@ -801,11 +799,10 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_co=
nnector *connector,
>                 return ret;
>=20
>         /* Wait for encryption confirmation */
>-        if (intel_de_wait_for_register(i915,
>-                                       HDCP2_STREAM_STATUS(i915, cpu_tran=
scoder, pipe),
>-                                       STREAM_ENCRYPTION_STATUS,
>-                                       enable ? STREAM_ENCRYPTION_STATUS =
: 0,
>-                                       HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT=
_MS)) {
>+        if (intel_de_wait(i915, HDCP2_STREAM_STATUS(i915, cpu_transcoder,=
 pipe),
>+                          STREAM_ENCRYPTION_STATUS,
>+                          enable ? STREAM_ENCRYPTION_STATUS : 0,
>+                          HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
>                 drm_err(&i915->drm, "Timed out waiting for transcoder: %s=
 stream encryption %s\n",
>                         transcoder_name(cpu_transcoder), enable ? "enable=
d" : "disabled");
>                 return -ETIMEDOUT;
>diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/=
i915/display/intel_gmbus.c
>index d3e03ed5b79c..9c8e1e91ff1c 100644
>--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>@@ -411,7 +411,7 @@ gmbus_wait_idle(struct drm_i915_private *i915)
>         add_wait_queue(&i915->display.gmbus.wait_queue, &wait);
>         intel_de_write_fw(i915, GMBUS4(i915), irq_enable);
>=20
>-        ret =3D intel_de_wait_for_register_fw(i915, GMBUS2(i915), GMBUS_A=
CTIVE, 0, 10);
>+        ret =3D intel_de_wait_fw(i915, GMBUS2(i915), GMBUS_ACTIVE, 0, 10)=
;
>=20
>         intel_de_write_fw(i915, GMBUS4(i915), 0);
>         remove_wait_queue(&i915->display.gmbus.wait_queue, &wait);
>diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i9=
15/display/intel_pps.c
>index 2d65a538f83e..b5d9920f8341 100644
>--- a/drivers/gpu/drm/i915/display/intel_pps.c
>+++ b/drivers/gpu/drm/i915/display/intel_pps.c
>@@ -605,8 +605,7 @@ static void wait_panel_status(struct intel_dp *intel_d=
p,
>                     intel_de_read(dev_priv, pp_stat_reg),
>                     intel_de_read(dev_priv, pp_ctrl_reg));
>=20
>-        if (intel_de_wait_for_register(dev_priv, pp_stat_reg,
>-                                       mask, value, 5000))
>+        if (intel_de_wait(dev_priv, pp_stat_reg, mask, value, 5000))
>                 drm_err(&dev_priv->drm,
>                         "[ENCODER:%d:%s] %s panel status timeout: PP_STAT=
US: 0x%08x PP_CONTROL: 0x%08x\n",
>                         dig_port->base.base.base.id, dig_port->base.base.=
name,
>--=20
>2.39.2
>
