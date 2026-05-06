Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hqflDQrt+mkTUgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 09:26:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB2C4D730D
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 09:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540FE10E439;
	Wed,  6 May 2026 07:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bgPrQzcv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9642310E410;
 Wed,  6 May 2026 07:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778052358; x=1809588358;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hnteHs0JmwjmRYNdSgZkB/Sd5HKT44V9oImqXCjLkSc=;
 b=bgPrQzcvMWj8OaQDtRFnLtMfxmMPQ/JZa11dC9xan9xSdHvbeNW7E8e+
 wl7BRxn8M9SCbzdOZ5oIOf1HfLuGZMd8eQbLvlIwILyEGN2rHANhinKMO
 DzE4HtoElxwEEczAlz3vVxjDRSGYefbufOdwf1HywGeYW1X1gqQSJL14c
 3t3gm4w5+AZ+lKBvrLiHb8/VmTlKgXOZ0pZwXEKGQceMFIYkh6mTG0zq8
 FOlotKAX2TGO5JaP0J16HZlQx5yc1sqvvOzrjzY5Q049eDP9OlXKdsTLA
 +GUoL+1CXXTM6UHnVsIfNR4JbsW6DvDsAnE4qW/9/74mohmRG0UixI1Ia Q==;
X-CSE-ConnectionGUID: 1hnV/5LpSiCRtyYiu+bDWQ==
X-CSE-MsgGUID: xnMPcT30QrCjf5+mBHW08g==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="89283479"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="89283479"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 00:25:50 -0700
X-CSE-ConnectionGUID: dL8CYv+xS92KkDZsIwPlww==
X-CSE-MsgGUID: /5uE6x6aSrGEZR+69DjIeg==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 00:25:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 00:25:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 00:25:49 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 00:25:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oXLAG6ggVy2bGbcUycewSnlLjQExwjeAuANeDdtNpuUzXr0e0wCAJxf/4AoxewIxq+O63M+zbLYDi5wN/2y+73l+t59YzkyQbpMJwI8Butf/XoHcG0bbeLPeg64eyBMHyJqe6Rs7vrvstBNMmPu2L0JEM6nH7vOMJLYRL6+X4FvAC2JaMWOSwZBAKN2nrlf3LadIZJBiR5mKIAyhY57TFjZ1n0sgKT5P+aBcXvoVp79Sq8bot10BiPx9o9s5iyG3pO0MVI5CIgOit+6s8LyglZ9RBffTcqGMA8+PRiLHl/ZoKzB9CBhZcXOCwWfMSYRA/heWvbX5iBowphX473T0cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P8wvCjemUnw+ZVTO78sCgOfjsJaORGN/a+YEzEn8iz8=;
 b=hZ9fzEhYY/PnzGnUyrAItu0pzsFlzwiW7JP+OZGIj80DOd9IY/4y5CyQ0tTE09C1VZL4QHSg/jcNsMofbFFhDA+WIa5QTGYx+KZfS/j1uIZ6eUNmmp7EMjEttE7qb8Fggox/jmWU8X9uPJI5PrItL0jSbHPZKOReR7glbkom9TUsEAw0liUBiyW21HtHWUQSsAgfXPdDhiBiTA7h0cYwXGqvX6hH87cun4lq5Vq03bI+rLsBIyWryHTRnaW5f32D0KgjlEBrpE9lGC2U4hesUi21hNbCzYQ7RGaJ0be2ccHcbPF2OImNwzi8wboyM2gXu375rGx1PiSILij30qGZ8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7193.namprd11.prod.outlook.com (2603:10b6:930:91::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Wed, 6 May
 2026 07:25:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 07:25:46 +0000
Message-ID: <172dd0cf-8e0b-4e00-a50e-708196928a7e@intel.com>
Date: Wed, 6 May 2026 12:55:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Manasi Navare <navaremanasi@google.com>
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <afH2DKWGJs5nmFwh@intel.com> <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
 <8878f6d3-0d38-41f3-a0c5-2c229fd553ec@intel.com>
Content-Language: en-US
In-Reply-To: <8878f6d3-0d38-41f3-a0c5-2c229fd553ec@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0139.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7193:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ee74efa-4211-4844-8bbd-08deab40b058
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: MH34VSofwKuRY+kafmL5ZqWBsqZlSZNtKyc3gBw9ciE20KeBIxe4OYvwejshbmeoz2/8i8rl4GjfDhsuCInWBeLozoNwmLQsuXRBfdY1cFeJP8f5NNhLn0zd9z2CifguJmah5k8XefdpQ9dXn/ssZG4nYu5NUpkhAHyMKTno4K0spxICOGhJd1cRBEZaw8BfQQAVESduR0ejk9LND/kzsZ0FJdvYoUaFHRAuU05V+H2WqlC2LE1ngFxcTzd3c/VbApUaHK7Ojne1jDEbImTn8DBCP+SlbVR/YlHsnVeT4UdAyHDDgwQCIqFoaG/Y6vpaNBA62kj/Kiv9V8hnclo8Fd61DVQLpwvbt6JZxHsH0SRUYILNaq0CX0AXfnuCnxx6tVZCITSOrCgN+WdX0sF0kaKagT1g0r3aUzVWXiL7T5O4MLJLGPxUcuQogjHNlWdCZNCss1Nl00pc9e2NxB5wW0Q8G+DKd9eu4dh7apO8OaC1mTfBBb0YqYXgCpdeuXbmbHxyRfBFXzQxqT65RYxw+1qSeCnQkdRq9Duas4cm2G0GZTVamI3IfPylAgwl3L9ML4i9siOpWN+SABC/uZd5Oa0Rlx0E/vp+nAASTOnOVmvyvii2AVofZv+avLG9SVRuPvHmYR7Xc6LihTTg16tX+XPD57ElrFXDl2vOr+Rl0bHt8uziSlcAvbsbUrxPiyk1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SktWaTFkZWJVbjFzYjIwNm9JY2NYZ2x0MWY1ZDY1a3NoeHpjdFF0VHpXNEk1?=
 =?utf-8?B?SUwyNzd1cXJ5NWxCSzh4czlQZkhaZG1jYVpsdzFlQVpXaVpmSFR1RlRiSlYx?=
 =?utf-8?B?eWY0bVBBSWx3QlN3WlBZbGJoOXUxbkRxZFNkSTdLb2FMMjRSdFJmMDJYUjkz?=
 =?utf-8?B?NGRjNVVGQWp2VGREVUlub24yRTB6VTgzbWd6SzlEblkyOHJXSlQ3bHprb2hk?=
 =?utf-8?B?MTl5NXk4TTREWGZ0eG9BOFQzVCtOUHh5TkQvcE1XWjI2akZRUDJoVnRNUERx?=
 =?utf-8?B?amhwa3FlLzUrWmZIb3ZkUGRrRlhmMzc5TXRuQnl6WXR2Znp6M1ozTmVQd2Er?=
 =?utf-8?B?RUxZN2VEaFFCVE5SQUdTckNCM3FycEVNRDFvaThjbk1yYU03REgwbWo3UnJx?=
 =?utf-8?B?ZEMxc2FZQy9SY0t6eXphLzRIMU1zY2hkRytoWno2Nkl0ekhyY1pmRC9DTVBl?=
 =?utf-8?B?MDlaTFlVQ0szVWJaL3ZtZHJSOFJvRnJCLzIzVmJENGEyalZ4OUp1LzRxSUpE?=
 =?utf-8?B?VVMraE9tV0xkMlIzWTh6RFdMeW14bGZZelEvS0pEYUI0R1BLWVJFS3pqVWpX?=
 =?utf-8?B?YkV2TVFKbHlBQkRndXZyeU5OSmdtVnhNTDExRThNVHRnR05Wa25zQ0t3Rm5Z?=
 =?utf-8?B?dTAwVDJjdWI3dHdzMklERTNpNUY4Z0htSG5PWlRWeHJHOXlSblYvVmFqVHor?=
 =?utf-8?B?dEtzNDhJdFllcU5xOVdlMHpXeXU3eUNkWWhpMEsxNmxoSXljbCs5N2hUUS9u?=
 =?utf-8?B?UHVkalZhd1dEMHVsd0pOdTNSVmRoQlFsNFE0RTI0bzc2a29PZGxrY0dBbEtR?=
 =?utf-8?B?NVlodFh1YzROaEVQekhMeWlMK3VkNUhyKyt6VzFpRjJieGhnMGNidllSOS9x?=
 =?utf-8?B?VS9xR0RFTVRDZlV4cDV0OVptWHJ0VUVzUFFHa1JjeUVNWW5YRjgrOElvWE5s?=
 =?utf-8?B?aGZzRktsQi9UU2JuQ24xVmJkcHBVdXN6S3dlNHY5NVR4M1l1RVM3cXFQbndq?=
 =?utf-8?B?WDN6L0ZadHpUU0VUMGdzVnpoc2hldmN3RjFLVVBEdXR5Z3ZqZjJDQUxwb2Fh?=
 =?utf-8?B?NG4ySkgrdWhiYWJ2S3NBWjZxSWxnK1RHWTRMV3NkYlV1bkhBczJQQmdWQ21p?=
 =?utf-8?B?Tk4vSnNMMllvODZQWTlsTjVLY2l6NDRwT3dsRE4xTkQ0MWRSb29DRFRKZVBX?=
 =?utf-8?B?RG1veVdGMjNOekZZUlFNYjBUczUxYTlOcHdTdy9OdWd5cXRwaU14aGJ5UGEy?=
 =?utf-8?B?QUJxMG4rVlpYelQxUHZBVERBMDZYbCswRG84TlBzWjVVTkp0Y3U4ZDc5eGxq?=
 =?utf-8?B?aGdqaXRCODY3am5NOUZyaHNGRGZ4dzZVYUtpNVBzUjFxNmEzcXJUc0VxV3lW?=
 =?utf-8?B?Y3E3U3pISGozY2hONVdDNlVMd2RYUEhWRGNjWVhyWmYrUkM1REhlYkhPN0Q2?=
 =?utf-8?B?SmlOUTFkUE9sWHZIRG9RL1BwVzJPblFoVFBWUkx1VnlWZ1lEdHNzazR0R2k5?=
 =?utf-8?B?U2doYjg3SkJydkRoVHBpQUwweTBmcEMxZUhrMWVuVkJsby8xZm9QV092VWQ1?=
 =?utf-8?B?eW9kUFJ4NU4vRWlMZlhtVFp6ckpseHMzdm9mSFdJWnJGV3BKZGJqZUZkdFZz?=
 =?utf-8?B?Z1BNVTZRQ1JtQUZtb2IrRjN3K01SOE1WTEZRL1FjZzhzczhaWDdXRjQ4aE0r?=
 =?utf-8?B?Wm5aWUlnRTZkMkNJdURab05wVjY3SkhZbzFub2UwMEdFVWJ3NVBLeWZPbGoy?=
 =?utf-8?B?NGllVHladW5Ya0I0RDRxR3k4SG9kWncyM0RJcEg2dC92YW5NRWhMZVh1QUlx?=
 =?utf-8?B?dVNsRWkrdWZvTGtGTFp3SFRpWHBzbkF3aFhKeDRMeVhqM3BQZHdwOUszdEFa?=
 =?utf-8?B?WlFCamFteE5yUDRVUUJwRjBHdW1ZZU44aEN1eVVUd2hOMXdienhER0VwdUV1?=
 =?utf-8?B?Yy9aVjAyZUE2TGo5Z1pyWGh5V2wxS2QrVEk5Vjh2YlV2L0prcGI2Q0hOOTA3?=
 =?utf-8?B?RnRaQWxoOTJ5ZkJhYUQwQzJSMEl3YkFZZzBJanRoRVBJZGRGNU5yeDZGTERM?=
 =?utf-8?B?RVFoTmpFazNPOGoyVlM4KzdZTERWY25CaUUwSDRYaXJzRFI1UndCb2xoelNK?=
 =?utf-8?B?RFBDN1FDenpHVklQbjVyVEhhU1BSaGFPamN0Nm1sVnRHcjJoOWNVTHJtK2JI?=
 =?utf-8?B?RkIwNG0vODB3TU1uRUpFUktkSVdBdjNweXJ3Vm1qRzhBa1RiVmJDcDMrYVVK?=
 =?utf-8?B?akp5eUpseW1Qd3c3bmFoYWRySHZCMGo4VEs2RkQ3ZEJMV1hHOEMzUEFqQVQ4?=
 =?utf-8?B?TU8vTVU3WElvZEd4eWRhVVVjMTBRaE5hcnlqajFGbVNYZ1lDN3p2V24wVEZ0?=
 =?utf-8?Q?rIXalESKXm+mbrJI=3D?=
X-Exchange-RoutingPolicyChecked: E5a1C+lF3reF2fNcyqo19clGwenXGmdWWE04Y0pAj0vERWYytDcmXdKgZ4xUDQwjHJKBEVBFMWurRy3ktieTITL+XLVyYpgtgcVcRWLeHvmoE21fa0E+ZwhEnQhShlhLm1D2EetRNccAuF+/NA62nttsX45dP0tZN2cWp5eVKTNEz4RfFqvJgjrEmKA4wybwP1nic0qz8amm3b+EDBVWY3yzabLZB81pejgjBYHvekBvQa4F2b1SAP7vquJNijMoqMQqXYz/pv4egk2LOH/PhGqruewLKaAUJx+d3d0J1F3C5WX2yAIcDL2sL2ncuxQErNbGkfxY2Qayu48Dngw6DQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ee74efa-4211-4844-8bbd-08deab40b058
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 07:25:46.0429 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nCT+84pMM+U3GxI90/qS3O5lETg0Jeg+IGcXoIhkthdpfCNwBzsrlfVwczOIoclc25FIly2ajHa7o+tvlBvsuktzqmE4fQpkGJHW/3rZhWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7193
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
X-Rspamd-Queue-Id: 5AB2C4D730D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]


On 5/4/2026 6:47 PM, Nautiyal, Ankit K wrote:
>
> On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote:
>>
>> On 4/29/2026 5:44 PM, Ville Syrjälä wrote:
>>> On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal wrote:
>>>> intel_panel_fixed_mode() intends to choose a fixed mode at or above 
>>>> the
>>>> requested refresh rate for VRR panels, so the requested refresh can be
>>>> reached by extending vblank.
>>>>
>>>> This is called in compute config to find the 'best' fixed mode for a
>>>> requested mode and also called during mode valid phase to prune the
>>>> unsupported fixed modes.
>>>>
>>>> For Non-VRR panels there is no issue:
>>>> - When a user wants to do a full modeset (sets DRM_MODE_ALLOW_MODESET
>>>>    flag) with a custom mode, the intel_panel_fixed_mode() gives the 
>>>> mode
>>>>    with refresh rate nearest to the requested mode.
>>>> - Seamless switch to a lower mode is only possible if the platform has
>>>>    support for Double buffered MN and the sink is Seamless-DRRS 
>>>> capable.
>>>>    In this case the user sets a lower refresh rate mode and doesn't 
>>>> set
>>>>    the DRM_MODE_ALLOW_MODESET flag the intel_panel_fixed_mode() 
>>>> returns
>>>>    again the fixed mode whose refresh rate is nearest to the requested
>>>>    mode.
>>>> - Since Duble buffered MN is not supported on LNL+, the seamless 
>>>> switch
>>>>    is not possible for such panels from LNL+.
>>>>
>>>> For VRR panels the current logic has some issues:
>>>> - For VRR panels intel_panel_fixed_mode() intends to choose a fixed 
>>>> mode
>>>>    at or above the requested refresh rate so the requested refresh 
>>>> can be
>>>>    reached by extending vblank.
>>>> - However, as per the current logic the helper can return a lower 
>>>> refresh
>>>>    rate mode, if the lower refresh rate mode is first in the list 
>>>> of fixed
>>>>    mode. Later, if the selected fixed mode's refresh rate < the 
>>>> requested
>>>>    mode's refresh rate, then the requested rate is matched by 
>>>> extending
>>>>    the vblank.
>>>> - In case of a full modeset request with a custom mode this is not a
>>>>    problem. But for the seamless switch features like LRR (Lower 
>>>> Refresh
>>>>    Rate) and the Seamless-DRRS this creates a problem as this 
>>>> results in
>>>>    change in vsync_start/end and resulting in a full modeset.
>>>> - Furthermore, as with the Non-VRR panel case, the Seamless-DRRS is 
>>>> not
>>>>    supported on LNL+, but for VRR panels, the vblank can be extended
>>>>    similar to LRR case. But due to the above mentioned problem in the
>>>>    intel_panel_fixed_mode() this also results in full modeset.
>>>>
>>>> To solve these problems for the VRR panels, identify if the user 
>>>> wants a
>>>> full modeset or expects seamless switch. If seamless switch to a lower
>>>> mode is desired, make intel_panel_fixed_mode() return the highest
>>>> refresh rate mode, provided the requested rate is in vrr range. This
>>>> will then be modified to extend the vblank to provide the desired
>>>> refresh rate.
>>>>
>>>> This is particularly needed for DRRS panels on platforms without the
>>>> double buffered M/N support (display version 20+), where seamless 
>>>> clock
>>>> changes are not possible.
>>>>
>>>> To understand the user requirement for full modeset/seamless 
>>>> switch, the
>>>> intel_panel_fixed_mode() and intel_panel_compute_config() need 
>>>> access to
>>>> the connector state to check the allow_modeset flag.
>>>>
>>>> Add a nullable conn_state parameter to both. The mode_valid callers 
>>>> pass
>>>> NULL since they have no atomic state and the compute_config callers 
>>>> pass
>>>> their conn_state.
>>>>
>>>> Also remove the VRR check from is_best_fixed_mode() since the 
>>>> selection is
>>>> handled upfront in intel_panel_fixed_mode().
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
>>>>   drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
>>>>   drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
>>>>   drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
>>>>   drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
>>>>   drivers/gpu/drm/i915/display/intel_panel.c | 35 
>>>> +++++++++++-----------
>>>>   drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
>>>>   drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
>>>>   drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
>>>>   9 files changed, 37 insertions(+), 34 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c 
>>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>>>> index afbaa0465842..1efe81404d01 100644
>>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>>> @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(struct 
>>>> intel_encoder *encoder,
>>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>       pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>   -    ret = intel_panel_compute_config(intel_connector, 
>>>> adjusted_mode);
>>>> +    ret = intel_panel_compute_config(intel_connector, 
>>>> adjusted_mode, conn_state);
>>>>       if (ret)
>>>>           return ret;
>>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 35b8fb5740aa..f014ce28e69f 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_connector 
>>>> *_connector,
>>>>       if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>>>>           return MODE_H_ILLEGAL;
>>>>   -    fixed_mode = intel_panel_fixed_mode(connector, mode);
>>>> +    fixed_mode = intel_panel_fixed_mode(connector, mode, NULL);
>>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>>>           status = intel_panel_mode_valid(connector, mode);
>>>>           if (status != MODE_OK)
>>>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct intel_encoder 
>>>> *encoder,
>>>>       struct intel_connector *connector = 
>>>> intel_dp->attached_connector;
>>>>       int ret = 0, link_bpp_x16;
>>>>   -    fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
>>>> +    fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode, 
>>>> conn_state);
>>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>>> -        ret = intel_panel_compute_config(connector, adjusted_mode);
>>>> +        ret = intel_panel_compute_config(connector, adjusted_mode, 
>>>> conn_state);
>>>>           if (ret)
>>>>               return ret;
>>>>       }
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c 
>>>> b/drivers/gpu/drm/i915/display/intel_dsi.c
>>>> index 9005c1f5d857..a480bb79dca7 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>>>> @@ -64,7 +64,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct 
>>>> drm_connector *connector,
>>>>       struct intel_display *display = 
>>>> to_intel_display(connector->dev);
>>>>       struct intel_connector *intel_connector = 
>>>> to_intel_connector(connector);
>>>>       const struct drm_display_mode *fixed_mode =
>>>> -        intel_panel_fixed_mode(intel_connector, mode);
>>>> +        intel_panel_fixed_mode(intel_connector, mode, NULL);
>>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>>>>       enum drm_mode_status status;
>>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c 
>>>> b/drivers/gpu/drm/i915/display/intel_dvo.c
>>>> index 405b33aca9dd..0ec25d895777 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>>>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connector 
>>>> *_connector,
>>>>       struct intel_connector *connector = 
>>>> to_intel_connector(_connector);
>>>>       struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
>>>>       const struct drm_display_mode *fixed_mode =
>>>> -        intel_panel_fixed_mode(connector, mode);
>>>> +        intel_panel_fixed_mode(connector, mode, NULL);
>>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>>>>       int target_clock = mode->clock;
>>>>       enum drm_mode_status status;
>>>> @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(struct 
>>>> intel_encoder *encoder,
>>>>       struct intel_connector *connector = 
>>>> to_intel_connector(conn_state->connector);
>>>>       struct drm_display_mode *adjusted_mode = 
>>>> &pipe_config->hw.adjusted_mode;
>>>>       const struct drm_display_mode *fixed_mode =
>>>> - intel_panel_fixed_mode(intel_dvo->attached_connector, 
>>>> adjusted_mode);
>>>> + intel_panel_fixed_mode(intel_dvo->attached_connector, 
>>>> adjusted_mode, conn_state);
>>>>         /*
>>>>        * If we have timings from the BIOS for the panel, put them in
>>>> @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(struct 
>>>> intel_encoder *encoder,
>>>>       if (fixed_mode) {
>>>>           int ret;
>>>>   -        ret = intel_panel_compute_config(connector, adjusted_mode);
>>>> +        ret = intel_panel_compute_config(connector, adjusted_mode, 
>>>> conn_state);
>>>>           if (ret)
>>>>               return ret;
>>>>       }
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c 
>>>> b/drivers/gpu/drm/i915/display/intel_lvds.c
>>>> index cc6d4bfcff10..2e30bc3f1e62 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>>>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_connector 
>>>> *_connector,
>>>>       struct intel_display *display = 
>>>> to_intel_display(_connector->dev);
>>>>       struct intel_connector *connector = 
>>>> to_intel_connector(_connector);
>>>>       const struct drm_display_mode *fixed_mode =
>>>> -        intel_panel_fixed_mode(connector, mode);
>>>> +        intel_panel_fixed_mode(connector, mode, NULL);
>>>>       int max_pixclk = display->cdclk.max_dotclk_freq;
>>>>       enum drm_mode_status status;
>>>>   @@ -460,7 +460,7 @@ static int intel_lvds_compute_config(struct 
>>>> intel_encoder *encoder,
>>>>        * with the panel scaling set up to source from the H/VDisplay
>>>>        * of the original mode.
>>>>        */
>>>> -    ret = intel_panel_compute_config(connector, adjusted_mode);
>>>> +    ret = intel_panel_compute_config(connector, adjusted_mode, 
>>>> conn_state);
>>>>       if (ret)
>>>>           return ret;
>>>>   diff --git a/drivers/gpu/drm/i915/display/intel_panel.c 
>>>> b/drivers/gpu/drm/i915/display/intel_panel.c
>>>> index 5e918ee0c8ea..65d017371d78 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>>>> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct 
>>>> intel_connector *connector)
>>>>                       struct drm_display_mode, head);
>>>>   }
>>>>   -static bool is_best_fixed_mode(struct intel_connector *connector,
>>>> -                   int vrefresh, int fixed_mode_vrefresh,
>>>> +static bool is_best_fixed_mode(int vrefresh, int fixed_mode_vrefresh,
>>>>                      const struct drm_display_mode *best_mode)
>>>>   {
>>>>       /* we want to always return something */
>>>>       if (!best_mode)
>>>>           return true;
>>>>   -    /*
>>>> -     * With VRR always pick a mode with equal/higher than requested
>>>> -     * vrefresh, which we can then reduce to match the requested
>>>> -     * vrefresh by extending the vblank length.
>>>> -     */
>>>> -    if (intel_vrr_is_in_range(connector, vrefresh) &&
>>>> -        intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
>>>> -        fixed_mode_vrefresh < vrefresh)
>>>> -        return false;
>>>> -
>>>>       /* pick the fixed_mode that is closest in terms of vrefresh */
>>>>       return abs(fixed_mode_vrefresh - vrefresh) <
>>>>           abs(drm_mode_vrefresh(best_mode) - vrefresh);
>>>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct 
>>>> intel_connector *connector,
>>>>     const struct drm_display_mode *
>>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>>>> -               const struct drm_display_mode *mode)
>>>> +               const struct drm_display_mode *mode,
>>>> +               const struct drm_connector_state *conn_state)
>>>>   {
>>>>       const struct drm_display_mode *fixed_mode, *best_mode = NULL;
>>>>       int vrefresh = drm_mode_vrefresh(mode);
>>>>   +    /*
>>>> +     * With VRR always pick the highest refresh rate mode,
>>>> +     * which we can then reduce to match the requested
>>>> +     * vrefresh by extending the vblank length.
>>>> +     */
>>>> +    if (conn_state && !conn_state->state->allow_modeset &&
>>> The foo_state->state pointer should never be used. If you need the full
>>> atomic state then plumb it through from the top.
>>
>> Hmm noted.
>>
>>
>>>
>>>> + intel_vrr_is_capable(connector) &&
>>>> +        intel_vrr_is_in_range(connector, vrefresh))
>>>> +        return intel_panel_highest_vrefresh_mode(connector);
>>> What we want is the fixed mode that matches the current adjusted mode
>>> exactly except for vtotal, and I think we also want to maintain the
>>> vsync pulse location relative to vtotal.
>>
>> Oh alright. I was thinking the issue is in the best mode logic which 
>> is resulting in lower mode getting picked when we wanted a higher 
>> mode as best fixed mode.
>>
>> I was under the impression that since the vsync start/end of lower is 
>> not the same with the higher mode and since this cannot be modified 
>> on the fly, it results in full modeset.
>>
>> However, as you said, vsync start/end can be modified indeed the 
>> problem becomes:
>>
>> - we are not scaling the vsync start/end similar to what we are doing 
>> for vtotal.
>> - even if we do that, we need to remove the check for vsync start/end 
>> for fastboot.
>>
>> Another consideration is that is the vsync_start should be inside the 
>> vrr guardband, but I think if the vsync_start scales up then it will 
>> still be inside the guardband so we should be covered.
>>
>>
>>>
>>> We should in fact fix the vsync_start/end mess first.
>>
>> You mean the existing vsync_start/end change due to AS SDP thing? Or 
>> you mean the above mentioned scaling up?
>>
>>
>>> We need to add
>>> TRANS_VSYNC handling to the LRR codepaths and allow that to change
>>> during fastsets. And intel_panel_compute_config() needs to preserve
>>> the vtotal-vsync distance when adjusting vtotal. I think that should
>>> all be fine for DP since it doesn't really use TRANS_VSYNC for
>>> anything.
>>
>> Hmm I think I got some direction here. Thanks for making it clearer.
>
>
> Hi Ville,
>
> Going through the Bspec, I have a query on the TRANS_VSYNC part.
>
> For NVL onwards, the TRANS_VSYNC seems to be deprecated. As I 
> understand, this is no more used with VRR timing generator, instead 
> TRANS_VRR_VSYNC is used.
> So we can avoid reading/writing it completely for platforms that 
> support VRR Timing Generator.
>
> But for platforms using the legacy timing generator, BSpec says 
> TRANS_VSYNC should not be changed while transcoder/port are enabled.
> Given that, should we treat TRANS_VSYNC updates as modeset-only on 
> legacy TG platforms, and only allow the fastset path where VRR TG is 
> always used?
>
> Just wanted to make sure I’m interpreting your suggestion correctly 
> before changing the fastset checks.
>
> Thanks,
> Ankit
>

Just an update:

Maintaining vtotal-vsync pulse seems to be working, along with the 
change to always use highest RR mode as best mode.

I still need to address the comment about avoid deriving allow_modeset 
from connector state directly.

Cc:

Manasi Navare <navaremanasi@google.com>


Regards,

Ankit


>
>>
>>
>> Regards,
>>
>> Ankit
>>
>>>
>>> +
>>>>       list_for_each_entry(fixed_mode, 
>>>> &connector->panel.fixed_modes, head) {
>>>>           int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>>>>   -        if (is_best_fixed_mode(connector, vrefresh,
>>>> +        if (is_best_fixed_mode(vrefresh,
>>>>                          fixed_mode_vrefresh, best_mode))
>>>>               best_mode = fixed_mode;
>>>>       }
>>>> @@ -213,10 +213,11 @@ enum drrs_type intel_panel_drrs_type(struct 
>>>> intel_connector *connector)
>>>>   }
>>>>     int intel_panel_compute_config(struct intel_connector *connector,
>>>> -                   struct drm_display_mode *adjusted_mode)
>>>> +                   struct drm_display_mode *adjusted_mode,
>>>> +                   const struct drm_connector_state *conn_state)
>>>>   {
>>>>       const struct drm_display_mode *fixed_mode =
>>>> -        intel_panel_fixed_mode(connector, adjusted_mode);
>>>> +        intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>>>>       int vrefresh, fixed_mode_vrefresh;
>>>>       bool is_vrr;
>>>>   @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct intel_connector 
>>>> *connector,
>>>>                  const struct drm_display_mode *mode)
>>>>   {
>>>>       const struct drm_display_mode *fixed_mode =
>>>> -        intel_panel_fixed_mode(connector, mode);
>>>> +        intel_panel_fixed_mode(connector, mode, NULL);
>>>>         if (!fixed_mode)
>>>>           return MODE_OK;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h 
>>>> b/drivers/gpu/drm/i915/display/intel_panel.h
>>>> index 2f7a317995ea..c1189a20c8b2 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>>>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
>>>>   intel_panel_preferred_fixed_mode(struct intel_connector *connector);
>>>>   const struct drm_display_mode *
>>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>>>> -               const struct drm_display_mode *mode);
>>>> +               const struct drm_display_mode *mode,
>>>> +               const struct drm_connector_state *conn_state);
>>>>   const struct drm_display_mode *
>>>>   intel_panel_downclock_mode(struct intel_connector *connector,
>>>>                  const struct drm_display_mode *adjusted_mode);
>>>> @@ -47,7 +48,8 @@ enum drm_mode_status
>>>>   intel_panel_mode_valid(struct intel_connector *connector,
>>>>                  const struct drm_display_mode *mode);
>>>>   int intel_panel_compute_config(struct intel_connector *connector,
>>>> -                   struct drm_display_mode *adjusted_mode);
>>>> +                   struct drm_display_mode *adjusted_mode,
>>>> +                   const struct drm_connector_state *conn_state);
>>>>   void intel_panel_add_edid_fixed_modes(struct intel_connector 
>>>> *connector,
>>>>                         bool use_alt_fixed_modes);
>>>>   void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector 
>>>> *connector);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c 
>>>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
>>>> index 2e1af9e869de..e07c1070a3ec 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>>>> @@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timing(struct 
>>>> intel_sdvo *intel_sdvo,
>>>>         if (IS_LVDS(intel_sdvo_connector)) {
>>>>           const struct drm_display_mode *fixed_mode =
>>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, NULL);
>>>>             if (fixed_mode->hdisplay != args.width ||
>>>>               fixed_mode->vdisplay != args.height)
>>>> @@ -1396,11 +1396,11 @@ static int intel_sdvo_compute_config(struct 
>>>> intel_encoder *encoder,
>>>>           pipe_config->sdvo_tv_clock = true;
>>>>       } else if (IS_LVDS(intel_sdvo_connector)) {
>>>>           const struct drm_display_mode *fixed_mode =
>>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, 
>>>> conn_state);
>>>>           int ret;
>>>>             ret = 
>>>> intel_panel_compute_config(&intel_sdvo_connector->base,
>>>> -                         adjusted_mode);
>>>> +                         adjusted_mode, conn_state);
>>>>           if (ret)
>>>>               return ret;
>>>>   @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_enable(struct 
>>>> intel_atomic_state *state,
>>>>       /* lvds has a special fixed output timing. */
>>>>       if (IS_LVDS(intel_sdvo_connector)) {
>>>>           const struct drm_display_mode *fixed_mode =
>>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, 
>>>> conn_state);
>>>>             intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
>>>>       } else {
>>>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c 
>>>> b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>>> index 76e8cd0f65a4..bfe465443d20 100644
>>>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>>>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>>> @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct 
>>>> intel_encoder *encoder,
>>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>       pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>   -    ret = intel_panel_compute_config(intel_connector, 
>>>> adjusted_mode);
>>>> +    ret = intel_panel_compute_config(intel_connector, 
>>>> adjusted_mode, conn_state);
>>>>       if (ret)
>>>>           return ret;
>>>>   --
>>>> 2.45.2
