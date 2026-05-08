Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHiqMxrY/Wl2jgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:33:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BB44F6683
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AFE910F495;
	Fri,  8 May 2026 12:33:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aRcriGvr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30C1810F490;
 Fri,  8 May 2026 12:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778243607; x=1809779607;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6JmHgO4+0EFRKiQBzzcfp3HSHyYydDjXRqXcO5tdS/Q=;
 b=aRcriGvrnAnN+PmtekPqUuJqGHupxzf7iX41cDO4JqVPrUi/dyJBWRuc
 a41Pq50mT8Jf80ZygP+a2YG5doz7K7syLrCJ4urSWZA7BMJF18e7av0o5
 GixBQ1/W0If3fSlfJ5bv6hcK1Vj1NpZJNza6L42XtfCp1JnIfAu5Izjkv
 vObe9BsfchaDvH7RHVb2oA3tTe9aKtiki3QI89HSs2GtyNRLrJ701MBKb
 rk4cItL8JP8Q3N2+7a9FMTvWu2b3vfZWtGqQ1QjyD0UFMB0qeLR9Y83TV
 DZPH4GsINuuFs8DV2dMCUImws4S5sGwBhwhN1X1ykKD8D+WDaLr3/KAyA g==;
X-CSE-ConnectionGUID: cViZDq8nQKO/VixFbMH16w==
X-CSE-MsgGUID: xIG5d+oDR6eLVjCJ1HKv1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="81773874"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81773874"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:33:27 -0700
X-CSE-ConnectionGUID: N59kBfdgSwqg4W24jcaOGQ==
X-CSE-MsgGUID: omDz0eBSTp+CkxMtUjMEVA==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:33:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 05:33:26 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 05:33:26 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 05:33:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AF8mKpQNjbW8YCZ1KDVg3QuwvNm4rPTKdimuEvuj6Z1S1YwEeiErbPcm27YGNDy6hboFDTCRZLtOWIInnuN2ZeT+WsKQaWJ3w3bOjtwV8/+0RITkq0JzMoiePZrJGuihuOp9nFMZflhrtNBYuhBAltgjNBmj/fBYid4Na3Us+CRF4p2/1R+8hQbNdPUFaUaqFVABljCv0SWwnNrJ6swGmxeLcMcD7qYpS+iP+hURyvzVfuYgCqYUTUx4UD4wxr0zfXBwmj0yJMdZH52efeB4FweENQuj5Z+xxGP89Fidei6tiYPOVy2F5bdWtD8jkd4IYaydmpRhPndBXkOul52wbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SVsfYRBwip5sRK29DRqOcbxFJJ6q2JItXXre7aB4OpE=;
 b=CiehBy61fewfe+mAUr7r8pnoXnJMVLLRUafbThpAvd1BQGoFOt1zxJ+XnDOyTo1SO1D0mVQoaa3xEy0kqjhx6LUMKbkdUpR4SyRuRUTZoqKrDaq6yRF2T2Hi699ywZXuTBjik3+Qtmhw0s0CIxTBxCQXttiLvQaQdIDv45NxNpKOAqkrYEkQh2nQtSxqC+pphHb7pDcT7n4jAOiEj3oKFd4f3QXM/tU8T3Sp3fVjF2ew9amXS1CI8RxsIgGoyr0KhSruyHGU3WMBVhQAyBlH2YNLJaQdjJuMLE9wb7Hsat+wa+CH2TbLc8T1Xa/bVv3OqpsH2Qo2iFHsJOp9i3Texw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB5991.namprd11.prod.outlook.com (2603:10b6:8:72::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Fri, 8 May
 2026 12:33:21 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9891.015; Fri, 8 May 2026
 12:33:21 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, James Xiong
 <james.xiong@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <jani.saarinen@intel.com>, James Xiong <james.xiong@intel.com>
Subject: Re: [PATCH v2] drm/i915/dmc: fix assert_dmc_loaded WARN during
 async firmware load
In-Reply-To: <b02ec283a5d2137f48859884805d9c55f216cf58@intel.com>
References: <20260507164605.608368-1-james.xiong@intel.com>
 <b02ec283a5d2137f48859884805d9c55f216cf58@intel.com>
Date: Fri, 8 May 2026 09:33:17 -0300
Message-ID: <87v7cy6pyq.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0059.namprd11.prod.outlook.com
 (2603:10b6:a03:80::36) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB5991:EE_
X-MS-Office365-Filtering-Correlation-Id: a968e6e4-2443-41d5-1f1c-08deacfdfd6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ZJLfu45W5a71QJyu8jiFF1xZt6RFVru6kzNTifhN4blPjk85qrNkJm+HsMSZOtL1Kpl+/fb5XBTdiQUvKmN1Didu1b13oLllYLB5Eb3ErY1G6chm4xl9IKZUz5qXLeazlflwPdTUu8WYTx4o46enJ4KhdhmBX/TCrSDn/XwcvJOj++zni9bJYogP9nIegsWqGG52leyEuMr1cEFvh9Hy+M+MO+WGTmDDOYhuzzNZbbtXZV2FoCctnIqHMZPPdGcF/7IsS1vi3MzwkctQdoeGT7+1D985rKTQHrCsPLIDXXtrELl+SGe5wOr6EH17TnSWAh6uL5V6qFN3QlDIn6i9EmdYca74SCWtj3iCFq10zN46f4CjmqfkDZhX7VlPPoEMyVa5i+MJfwoFtUiXWa3yAeiTcC4vbOFiToTlG844f0B0FAtb7//V1ZbAjy5R9CBOjmQNgt2m5Dnqgt7UwDWWiIZVVw+ESEqrzn1f1eIcSlmG5H1krbcZaOZ4niEyiiTPXBdZFwZYOEpjvQ9ImkgbAwy+EHdKFtqWHWemTp+se8we3bb8lbFKUsimEgZqQJdiKjxt7KL0MhV3lOjIDMIoRE2s2ik4dHzJpty6zs3UFyp//qT+FsekzyX6pgATYRGrrMViZMgJ+Hml15V3G3DnPdfifbJxrtlVTlOGbGVyxWnF5YH1PTPKwjhkQQK7dTBz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S5zlzOhlMbi5/fcySeRwJoSBoGCl92A69k2VzCUbnYaNIKDR0KJ0Zek/k14a?=
 =?us-ascii?Q?a5j+CISQP4jo7VhWS8Ux/SSZ1zCeBAXlCbgyMkaYg72ZOQyqPQjtvIh/XIQb?=
 =?us-ascii?Q?h7xLMGmrtLbkuloTSHxMoNhvZ7DR1pzddw+MDui/sRQz1dcxVppjQo3c5h6c?=
 =?us-ascii?Q?R+ObuT9HUH6BQJSofjb9HlWLADuycAbO4mHTyEinojylNbGdw2l3LXzhqnPi?=
 =?us-ascii?Q?9SWdjzAh/oP+RsW2/miBugOl6iuuobzSWdbMS9rxVoM0qW3Qlr3uCIGV70+g?=
 =?us-ascii?Q?H1uzbaJ/dQS8GIZD9uv3r0xkMq4yr5p+JwVHzgwhYOyMkCaQ8d2pbsLOgrM7?=
 =?us-ascii?Q?tXRplGviUnIoF/eO/TwGLL74cyubbnFWgGYJtPbfe53FpfRErN7RCQAqFvp3?=
 =?us-ascii?Q?QZ42FrLoFt3Eynum9BFMctmq+VrVhNaNjfF0P3bp5DjsI0NhNNKoTnVGLHzC?=
 =?us-ascii?Q?LBV1vcJhVnWnbF0CJkGU2CpvGV2AdNxbowVsBbNBLmnUSDoZL+0J/Z0Rnvt0?=
 =?us-ascii?Q?ZfvRaKT4QU0sA18VtphVilqBerzGDigssX4EaliZkTqInY8B4Chdqq489bJm?=
 =?us-ascii?Q?NBcgb+chJLPsj5CFMeCsq7tKqYvEgsHqNxbXkBOJe7C0jJUnHssxQK8gNxST?=
 =?us-ascii?Q?XO5rb1cDrSgd95VFWPdtu29xTPwh1tHmuJIDP6J70KN29KHg3Ba2HbIFE7fP?=
 =?us-ascii?Q?qHYkGtppNMacGwF1WF9sA4cv8dJSR/r5FeMof5II7oNyuWrY7jMQ8yPFtbVo?=
 =?us-ascii?Q?ONsaJCe+tN2abcdWy7Dl6ulsq7Irhkey3rLDeM7h3qslpND2+1t4FAtJh2cO?=
 =?us-ascii?Q?U835lBicnUK0fpfqyhMNrsh/3go89RCrL/yo70uRqKp/39xoEmhWOIGIflgw?=
 =?us-ascii?Q?dE/QuOsHeezMgn3DEf38a3faNpqnLyjsOSViAGZinj/Oh/bEJf1fK8ud6Aiq?=
 =?us-ascii?Q?4QqoMAA3zx5+HqbbYUqT//tB08UNBldLcxtcBVN+zV/x89jUyMM+2uEfC68E?=
 =?us-ascii?Q?z3e9ovcGo+X+RzjGNKIIAIbtb1vubpLIcDtVL6aWgO7i/A0BViYEAWcmnbJC?=
 =?us-ascii?Q?WD19UxIM7H9xNBaugZ3lbld+55kttvYiACronQA6W1y338bdplA9h/uaHClz?=
 =?us-ascii?Q?aqJedgbRqTZhoQ7EK53GoXhV1CGopio/z0AZkIskPeNBJSFNTqUWt4Bf2EHo?=
 =?us-ascii?Q?DNHrSOG6MQ4tUEW9ONqXNqZgrWhw9BOHdLnwCvB4yC9hvKUFDgII/D3f1rG8?=
 =?us-ascii?Q?rwfOq/1zdLlCqZM6O7gKJNXySGX8NCnb6CjMWZFZb3yKyEaIDq6LKJu2YH7X?=
 =?us-ascii?Q?0bQ+fFs3e21+4J32DBE2uMMjBFGnImiBn8WUgsUANJ5Ln4WU130Kw9OoW+Bh?=
 =?us-ascii?Q?kycYa/ERhW/Rvxo/JI9qaeSKVOM1p4ROOfbPPWzHoqSc+6TwTyyE14A6hR0h?=
 =?us-ascii?Q?yEKSgYpF4xm2dW9Vg2//lEnhroQ7rFRu4BHjd1sJgwDgom1CCHKi75c8PW+6?=
 =?us-ascii?Q?Md6uL4DtaJeUgIiS/CgSkP6FLkXxLTzDHGNDH4Yvxuwvk3z29F5vXkZ8mJaw?=
 =?us-ascii?Q?gkkvg2subIGrCyp5+OS5pS3l2Mmd9wgBCVkncF30L+ScICoxs9CvmE/EMHE5?=
 =?us-ascii?Q?smHkmPUOo8ohXGoJOpjACu1+3/CuhtvJBRuUYX3FyBfbnjqlgGNkKtfC7A63?=
 =?us-ascii?Q?+qfiXp7MlAl2jF8Cvu0vq3oTnveJlGgK6cSzkf/FdCVr3PCIX/vrMUTroh7f?=
 =?us-ascii?Q?SB7D4OmxZQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: d3LNdNIDv8OYk/6Gg4/STspFeGWXtvpeKqosjzTatvvKMB2UfxYDGmusQ6dRprELhDZVtRyQNoNts93Ull36hTREOBsvgytwWGbOsug2M+qqAEz0/DpI3UC302L9yYx4k+bn9P43D9xLPPIBGjOYNxFNDWXZ0j4jFfcUQAwyzd+cJGLuQUcO8Cpc2pu67Mvo108lj+Q+OM3gcR37kRInDEuPt8zi0Yr7j83mw0FKf0QCLj6X9n2wdtux24Ds0yvfefdUrDNGg3CSfdVva8iHgHQ5TRURLXDfY+KoWdZ1hSjkJ1GzB4oJGpcMAcrnmBezMEEifIrqvS1yEXFPVd+vng==
X-MS-Exchange-CrossTenant-Network-Message-Id: a968e6e4-2443-41d5-1f1c-08deacfdfd6b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 12:33:21.3051 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PAzEFtbUha2Pc1LkLwFU0NdwXbfxr40ejOLgnXUavI/gL5EITwQsaX0W3UhxR6OAbnPWN7cuzHJiVn/yOgrcOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5991
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
X-Rspamd-Queue-Id: 47BB44F6683
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Jani Nikula <jani.nikula@linux.intel.com> writes:

> On Thu, 07 May 2026, James Xiong <james.xiong@intel.com> wrote:
>> During driver probe, DMC firmware is loaded asynchronously via a
>> workqueue. There is a race between parse_dmc_fw() setting the payload
>> pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
>> writing the firmware to hardware registers. If the probe thread calls
>> intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
>> intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
>> registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.
>
> I wonder if intel_dmc_enable_pipe() should call intel_dmc_wait_fw_load()
> itself?

I also though about that, but, if you need to call
intel_dmc_wait_fw_load() in a regular modeset flow, wouldn't that be a
symptom of a bug?

--
Gustavo Sousa

>
>>
>> v2: Fix by calling intel_dmc_wait_fw_load() in
>>     intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
>>     Sousa).
>>
>> Signed-off-by: James Xiong <james.xiong@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> index e88082c8caac..277e56848470 100644
>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> @@ -961,6 +961,8 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
>>  	 * intel_sanitize_plane_mapping() may need to do vblank
>>  	 * waits, so we need vblank interrupts restored beforehand.
>>  	 */
>> +	intel_dmc_wait_fw_load(display);
>> +
>
> No matter what, the comment above now appears to refer to this
> intel_dmc_wait_fw_load() call, which makes no sense at all.
>
> BR,
> Jani.
>
>>  	for_each_intel_crtc(display->drm, crtc) {
>>  		struct intel_crtc_state *crtc_state =
>>  			to_intel_crtc_state(crtc->base.state);
>
> -- 
> Jani Nikula, Intel
