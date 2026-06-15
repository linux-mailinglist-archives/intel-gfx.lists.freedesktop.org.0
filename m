Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aRsRKuOKL2qXCAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:17:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A436836A5
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:17:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QAADPxD3;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96D410E1C0;
	Mon, 15 Jun 2026 05:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46BC910E1B8;
 Mon, 15 Jun 2026 05:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781500641; x=1813036641;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ih9x06xF9TxXgV6P+167UcebANW9yc0qD/Xensh+xmk=;
 b=QAADPxD3mOeWkGomc8s2A1iivnpS9sXa6TE5tl5TkCU3TRL7w8B4ywik
 EzDynhPX9hozw1jpDqSXj0Sv0kRIZytd5aD3/fXkuz7umH8cZ5EWxEXMy
 sJbfHFs9N7RQ+C4qYv5ITh/qrdgptFvigfxDWyQ3HxSqJ85+jzOMhm1z1
 yEk4oOmaAuAUsBIGn8CVsHaRJRvzS45FATQ3vbH4u/oo6PaPx6+x/b/fK
 wKo7Lku+JVihf4ByM6YyWVSfUorUv1KKYh8FuMY2aEKC0j/KwV/Si6R/r
 bDKHpZgVRlAiPCmELQ7DPnuBOYkflF39cTfosD/oPDcSgwlHiV/Wevo/g g==;
X-CSE-ConnectionGUID: 8rxEM6jNTzi/ALCn65i0OA==
X-CSE-MsgGUID: MNzhjPZlR6akYtODJnaTQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="92791489"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="92791489"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:17:21 -0700
X-CSE-ConnectionGUID: nyaxVaqfQwWjyNQJV7Cowg==
X-CSE-MsgGUID: DnIAkAd5STqEZMqA1hFeKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="243003646"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:17:21 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:17:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 22:17:20 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.0) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:17:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OP00skeUyTQ8UN0P/Qp8rVoZipZ4YONQ+9qFLaXiJvA0ylcJxU5zH2twfra5/KYqDBeoIIfNUfROfJIVl5KxeBm7Qv6Cd12Ym4wn+xL82b2xx/jKSnz86/aFHSVAqoWEI59bqK07EDzlat2xEjEQjRJSu3vF4ZEy5zykGXAi+DLLjVX/uskzOZdpiN4UuWrbOsJi8BZZp//qdNGovpRKekOgZRlUbStPGHPs+scS+2Npt9WqK2t9FbagEy4yH1TgCrS59z7hJlskeIMoMo/hQhICp7QgPNyWLI8kLrgaxk94QaZkk12NLoZdYgoCOPXjJAvn8nSDv6LDVdUu2TEoBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=thN4LSbsav9rCr96KDdBYw0wkOWn4fUpwha6UoHIxJs=;
 b=iyqYpKxxtecspJ6gyGuIUxglAU8zWWliU+ts0EDgyBafsNiySJEHKpxflhGKT1OC6zsLVXHjVvkpHv7qo4/5Yn3wiNnEf24FuSOwrd6vfpU/gnlcz4rESupIOrLqZ2PHFEFw/ZyVexcehc7fMTOXdUdwTDv1FaB5v0xnJ1Fns4DSSbvplV2taeviwHgA5TsJYU2ELGd2CZxsl5cbpg8hgMRB6deYUHcntvwtPqCkW4VP+6Hd0zRtMYpSsI0+jRM3GL4Uakh6V2YkypZj86+E0QFd7yCW4JtrZfrIae+PbWAQW8XrNv6YCvHj8v3R79Q2RqdXAJ9ZcU+5ImfOa0zuuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7433.namprd11.prod.outlook.com (2603:10b6:806:31e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 05:17:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%3]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 05:17:17 +0000
Message-ID: <e7414943-3902-4209-b372-3cddce601d78@intel.com>
Date: Mon, 15 Jun 2026 10:47:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/i915/panel: Attempt VRR based refresh rate change
 for !allow_modeset
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <20260612144203.31715-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260612144203.31715-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN4PR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:266::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7433:EE_
X-MS-Office365-Filtering-Correlation-Id: 8231eb0b-8a33-43a7-3082-08deca9d5e6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|22082099003|18002099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: ZV1rDH9X/xH1x0mdErFPrWMbpaBt9iv/QDm68BNZxJBOD5Kuzcex9U7K8QVCjovk2hC2AoGtclVJKzJ0frARGI5Tzu13W56kAH0tQUSSwcMoxm8zpfWfXesOFIndMssCQn3wqmRASQIxmyAfvMZpZXLUBVuLUByLEhkesU9YYaGga6JG6NL666s9ZZ59TXR8FLZq/G10HzbJ/1TH45mDTanGZ04echS65hcUlt7GhdNPjKGwyN34KId1U6q3QUq2H85dTJLtGOr0QQOzb6ePb+CWW/mBk+1XR0RfuoEFzUSMsJgKhmauHxLa4pcBCGkOUKY67vPMQyqF0hlIk7xXRq8Z+gcj3Um/fi9wOPXNisEnHieil64dzV7PAlwDIUgxRDnUYEQ8mL2j/VbPezHspng4c+jiGgAC+PjWy01S99qkCrAUuemUmSKpU5ipTqGBVdVwes9JdSBqU2Sd0hu9Kwuy7IkyEEL5ltSaKw7q4gQtjB6fj4ouErXkQ3yLjfX7IgWJoPv98GJ0VExMgZwJfvwEsNXD7MUN6QlUMiQKGvRPB2ieQ1IWjmZlJTwhp9vIF1phpWW2WaK8t9ptTny0MRzP4X7lAOlfuD+LgLNU5vZDVF6/I9CmceFsz8UKZrCjP81k/uPO4ntIHRwmjwszKOHd/PzoRtsZ1yArWhx7OTTjr0YXvUcqCvNhJVdNKkeh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cExzeStUWFNmRU9GdEZ4VExmZEVBcVZSbjNFR1lEQ1hpUVJIRzBmbGxSWWpN?=
 =?utf-8?B?QnFDTHlYcFNQbEhRYXhZSUdSb05sZDVXeFRIYUI1WWxwMDRxWVIra09lOGx4?=
 =?utf-8?B?akJVdE1UNzIvR3h6MURMaWhhRVl2MjVZRjc3d1hhRS84bndNcmRxVEd3dXVF?=
 =?utf-8?B?LzZaSS9TTjRpZDNoS3JreDBRV1pVdFpYR2NZRlEvVnh2ajY2TXVob3pyQ3hl?=
 =?utf-8?B?aGdmbjBlOXZhSTRSVHQ1MFgyYlViS00xTW9va3ZFcm5aKytsSVZhN01RcER0?=
 =?utf-8?B?YStZZEh6UFVNalJuckY5cmQvcEdVM0VQLzczVjZiT2FhYWQ4c3hIdGd2dUY1?=
 =?utf-8?B?eTVOejFicU5NZFMzTGxWdmwyYXh3SlV3dXlOQnQrQWxNdUUwVW5aa3dydVpa?=
 =?utf-8?B?WUZreCtZSCszdXE4RW9TbWE1dll4L3p1RkFXbkpWY0dUalhNanRsRmJSRHkx?=
 =?utf-8?B?QkRnL0JTdkNBRzF1Rjljc2wxbnFXSkt6eVl3T05peHN3bkFMM0FhWHFlN2xp?=
 =?utf-8?B?cE0reENlWVpBZjdzU1hDOFpsaGdNVUJzUXRsN2tNZjdTVmZqcWxuNjhiNS9o?=
 =?utf-8?B?TGlOZFA1WmZNSzZBVnlPVUdmUmxqYVEwTGxNNFhYL3VIWStTL1FMMUZ3Zzhk?=
 =?utf-8?B?dmlsSHZDamErVnNvWnQrVGhIVm5mUWJUQi9YVjFZcFUwclFFM1Vqc0dKcUpm?=
 =?utf-8?B?Zk11QVd6OThSc1lEOWp1aWlEYjAxUnd5YTNXdjkyMU8rMWtHREVIcCtITDJQ?=
 =?utf-8?B?QzRkL3plSmp6L2RUcnordWlkTGJxQnBOTWE1cGlpaFNtcTJ1UTdKRnBoRlBR?=
 =?utf-8?B?TVdOaXE2UVYxYXM5Y0ZIcHJhQ3dsTVgxcFVKR1E1dTZTNzlOemNwTHdjZmZp?=
 =?utf-8?B?cWh5TTB4anJWNjNYdGdhZU9zbjBubjZpZUptYnpHbzBjV2ozemMrWXlQN1BV?=
 =?utf-8?B?TTljdHkyMlc0UktkYWRyeWR6dzRodzQwMDJTbUFrWkxYbENROFZ0eGFNUXNo?=
 =?utf-8?B?clkvNVI5eFBmdGhpM0psWmhUTjBXMnZvRUorOUc4UzQzakNGU3k1TlR1NjU2?=
 =?utf-8?B?aDV1akZsdS9ESkRRcXArVlVPcVkzMUJUUDFoNVBRMnExakxURzBxNmVxc2kz?=
 =?utf-8?B?dEJIeS92b1VVeXdFc1U5cFFkN1Q4UHQzREtvdGJCc1c4VEZqNkJkbU1nNFBo?=
 =?utf-8?B?bGIvczk0RVZrY1hNMjU1eHMxRUwyaWJPS1I1SEJtN084eEFZSVU4Um1NK0Zu?=
 =?utf-8?B?SW42cmwvWDhZNVF1amZjdmRXRWYzcDArTkpKTzg0RXFVVFpLellmL0l1aGMy?=
 =?utf-8?B?RUFvS2xzS1RJaDF1MHU2WkxtR0oxcEFYUHppNWFFOG5RQ0pFbDZSeFl6ek9n?=
 =?utf-8?B?RnkzLzE3bEFPcXRSSHRFcnk2S3BFVk9pbUZIbUZsU0RCb0R3d1I2dkFqTFFS?=
 =?utf-8?B?M2lCLzBmZ3hGK2NsN3Jua2NOckwwUEZJbzNtMHkzVVllNDhxWmZyeWdlQkJC?=
 =?utf-8?B?RlZIM25ETFVNbDVEbkhOeEJHUTY2TzR5eHI1U0twR2dhc1BHNGRZNzcyUXMr?=
 =?utf-8?B?WUdUbitneDlXVTcyYlFFWnBha3BMajU5N0VvYWZrR2NCN3g1MHdJdjUyKzg1?=
 =?utf-8?B?ZWZMY3Zka2VBaUVldlFoQkpLUVdzbi9ROW5YMUN4cENzRmxIdytZRENZT2tQ?=
 =?utf-8?B?SjE4cWlqRUZtR215Y0ZCWXRsQjEvYll4ZnpyVzJrTWtYc3NMdXV0aVVRdytT?=
 =?utf-8?B?eVl3SjNQNmhQUFhwU2FGQWd5VXdJQzVKV2ZML0dOZkpIRFdRYVNMYTIyRWUv?=
 =?utf-8?B?VnpGcG90TzJRaEUremlSZXJONlJ6OGdLRyttTkFsL1l5eG5ieGo5eHVMNXY4?=
 =?utf-8?B?dURaSUlHdHZBMXpWcllzc2I5NDczZ3RYVkFoZ2NBTzFwM215Z2tpR3RMQ1dH?=
 =?utf-8?B?REZTcVh0UzMvUHJ2a1NyK0tONlYrcS83Q2pJcStoYXIreEpOZHJBVDBpOHdV?=
 =?utf-8?B?Nm1xd3F2MW1mWXVGTXNxQ21TQ1lWc2x1am5TVjQ1bE5CT2pkNmhiNnpRYUNX?=
 =?utf-8?B?akNYUHdvNWd1dmx1N1psL3p4a3RrT1ZNWmE1WUp0UGhWRk8wcHg1SUJlcWNV?=
 =?utf-8?B?eklhSnZPTVZQV3lBcTBHbkNwRzhjNmdKS3N1eXlkSFdlbXZ1ZTJJWUQxaTdJ?=
 =?utf-8?B?VkMrTFltbGVnQTJKa3d1eFd3Nk13Wnp2ZnRWSS9lZjl4MzBnWDRQR1hUTXd2?=
 =?utf-8?B?dHNEbnNETzM4cENaNDBvSjI0MEM1cHdGSXd4NkRPc0lyd2xETTV1WHQ3YXBk?=
 =?utf-8?B?RmM2WXd3QmxuR1RKSmZIcXpDcy9WS2VvdmQyZXBVYjZ3ZkJyenlXMEFqMnFC?=
 =?utf-8?Q?WiSRjT+3S6qn+Hsw=3D?=
X-Exchange-RoutingPolicyChecked: lHS2bJHBb7Y0KzmR6CXGCCTcCCkPFbVU1ZG8w5xCih2jAotwHBWcY2VH0yOA4QvMtyiP8Ce0CKvlF47KRmr+FK32gv1XMFfLGIrl3PHSt3MITbEkkDVUe56UmnNlzDK+k8b331JOqum9KOzB6c27G7KeDf9Rrrt3hr7u07BP/tg0VJfb4UD1hZAIq3HWNtx2VEneoyVf1Rh5ItpYd0wCLGVnmxg4yrQZXn8JQe99kBnAgzaRQSt6ObSdUFzhwmOfTK+9kRQJdHqfNzYQ6ueQdeInQSnVUCpGU34ch1BIsFVOCFCozsxbd6SwA9evjTBhSz270YB6mGcXWdgiLo2Fzw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8231eb0b-8a33-43a7-3082-08deca9d5e6e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 05:17:17.9096 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s6wWIbzQlbpmwCxpHZlwwRe5JXn+py2Obj5u53xfAYGcZ1QiFdJauld1ax/ajGiKA/JetpRqxbyaHlPXYgyvpdtjeGlm66NwrfmO21lraCs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7433
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38A436836A5


On 6/12/2026 8:12 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Adjust the panel fixed mode selection algorithm to only consider
> fixed modes that are "VRR compatible" with the old fixed mode
> when userspace doesn't want to allow full modesets. This will
> allow a VRR based refresh rate changes (ie. just a change in
> the vblank length) via the fastset path.
>
> When full modesets are allowed, we still use the original algorithm
> as that may pick a fixed mode with a more optimal dotclock, potentially
> leading to reduced power consumption.
>
> This approach works as long as userspace does the initial
> allow_modeset=true commit using the highest refresh rate it will
> want to use. Subsequent commits with allow_modeset=false can then
> switch between lower refresh rates without blinks.
>
> One remaining hurdle we may need to solve is the guardband length.
> Assuming the highest refresh rate vblank is too short for
> intel_vrr_compute_optimized_guardband() the intitial guardband will
> match the highest refresh rate vblank. A subsequent switch to a lower
> refresh rate will then recompute the guardband and select a value
> that is higher (since the vblank will be longer). The mismatch in
> guardband lengths will prevent the fastset. We may either have to
> preserve the original (sub-optimal) guardband,

I think preserving the original (sub-optimal) guardband makes sense for 
the seamless case, but we will lose out on enabling some power saving 
features like PSR/LOBF for which the sub-otimal guardband would not be 
sufficient.
So this really comes down to how we want to interpret the 
DRM_MODE_ALLOW_MODESET(state->allow_modeset).

If a lower RR mode is set with allow_modeset = true, then doing a full 
modeset sounds fine.
In that case we can recompute the guardband and enable the additional 
power saving features (PSR/LOBF) if they are supported.

If the same transition is done without allow_modeset, then we should try 
to keep it seamless.
In that case using the sub-optimal guardband to avoid a full modeset 
seems like the better choice, even if that means power saving features 
may or may not be enabled, despite being supported at the new RR.

So effectively:
with allow_modeset -> recompute and get optimal behavior
without it -> keep things stable, even if sub-optimal

IMO this will make the behavior predictable and lets userspace decide 
when it wants to pay the cost to get those benefits.


>   or we'll have to
> revisit the idea of changing the guardband without a full modeset.
>
> Note that I'm not 100% happy with this solution because
> intel_panel_fixed_mode() is no longer fully idempotent, but I wasn't
> able to come up with anything truly better either :/ The simple
> solution would be just to always pick the fixed mode with the highest
> dotclock, but that could lead to increased power consumption even
> when high refresh rates are never used.
>
> Perhaps the proper solution would be to just deprecate this
> idea of taking in random modes for internal panels and then
> cooking up a compatible fixed modes. Life would be easier if
> userspace was required to provide the desired fixed mode directly.
> But in order to do that we'd need to introduce new uapi properties
> to control the pfit aspect of this, and we'd probably need a new
> client cap to select between the old and new userspace behaviour.
> Something to consider in the future...
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_panel.c | 55 ++++++++++++++++++++--
>   1 file changed, 50 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index af59fc946fcb..a5fcac1318da 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -82,16 +82,37 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
>   		abs(drm_mode_vrefresh(best_mode) - vrefresh);
>   }
>   
> -const struct drm_display_mode *
> -intel_panel_fixed_mode(struct intel_connector *connector,
> -		       const struct drm_display_mode *mode)
> +static bool is_vrr_compatible(const struct drm_display_mode *mode1,
> +			      const struct drm_display_mode *mode2)
> +{
> +	return drm_mode_match(mode1, mode2,
> +			      DRM_MODE_MATCH_CLOCK |
> +			      DRM_MODE_MATCH_TIMINGS_VRR |
> +			      DRM_MODE_MATCH_FLAGS |
> +			      DRM_MODE_MATCH_3D_FLAGS);
> +}
> +
> +static const struct drm_display_mode *
> +_intel_panel_fixed_mode(struct intel_connector *connector,
> +			const struct drm_display_mode *mode,
> +			const struct drm_display_mode *vrr_ref_mode)
>   {
>   	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
>   	int vrefresh = drm_mode_vrefresh(mode);
>   
> +	if (vrr_ref_mode &&
> +	    (!intel_vrr_is_in_range(connector, vrefresh) ||
> +	     !intel_vrr_is_in_range(connector, drm_mode_vrefresh(vrr_ref_mode))))
> +		return NULL;
> +
>   	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>   		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>   
> +		if (vrr_ref_mode &&
> +		    (!intel_vrr_is_in_range(connector, fixed_mode_vrefresh) ||
> +		     !is_vrr_compatible(fixed_mode, vrr_ref_mode)))
> +			continue;
> +
>   		if (is_best_fixed_mode(connector, vrefresh,
>   				       fixed_mode_vrefresh, best_mode))

This works for all practical purposes, but if we take a hypothetical 
case below, it would not work as expected.

2 fixed modes:
with lower RR rate with same clock being first in the modelist:

"3840x2400": 60 1199280 3840 3848 3880 4004 2400 4968 4976 4992
"3840x2400": 120 1199280 3840 3848 3880 4004 2400 2472 2480 2496

vrr range : 120-40Hz

Scenario: 120Hz is set we want to switch to 80 Hz.

iteration 1
     fixed mode = 60Hz
     best mode = 60 Hz

iteration 2
     fixed mode = 120Hz -> 80 is nearer to 60 than to 120 so best mode 
remains 60
     best mode = 60Hz

We will end up selecting 60Hz mode and try to stretch vtotal based on 
this mode.

So perhaps we should make is_best_fixed_mode() such that the order of 
modes should not affect our fixed mode selection algorithm.

Note:

1) As I have mentioned, this is hypothetical case which I have cooked up 
by changing the modes from a real panel, which has highest mode as 
preferred mode and 120 Hz mode being preferred mode.

fixed modes:

                 "3840x2400": 120 1199280 3840 3848 3880 4004 2400 2472 
2480 2496 0x48 0xa

                 "3840x2400": 60 1199280 3840 3848 3880 4004 2400 4968 
4976 4992 0x40 0xa

2) This issue will also not be seen with VRR panels when the clocks are 
different but Vtotals are same, the patch should work perfectly in that 
case too.


Regards,

Ankit


>   			best_mode = fixed_mode;
> @@ -100,6 +121,13 @@ intel_panel_fixed_mode(struct intel_connector *connector,
>   	return best_mode;
>   }
>   
> +const struct drm_display_mode *
> +intel_panel_fixed_mode(struct intel_connector *connector,
> +		       const struct drm_display_mode *mode)
> +{
> +	return _intel_panel_fixed_mode(connector, mode, NULL);
> +}
> +
>   static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
>   			     const struct drm_display_mode *preferred_mode)
>   {
> @@ -202,11 +230,28 @@ int intel_panel_compute_config(struct intel_atomic_state *state,
>   			       struct intel_connector *connector)
>   {
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -	const struct drm_display_mode *fixed_mode =
> -		intel_panel_fixed_mode(connector, adjusted_mode);
> +	const struct drm_display_mode *fixed_mode = NULL;
>   	int vrefresh, fixed_mode_vrefresh;
>   	bool is_vrr;
>   
> +	/*
> +	 * Attempt a VRR based refresh rate change if possible
> +	 * when userspace has forbidden a full modeset.
> +	 */
> +	if (!state->base.allow_modeset) {
> +		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +		const struct intel_crtc_state *old_crtc_state =
> +			intel_atomic_get_old_crtc_state(state, crtc);
> +
> +		if (old_crtc_state->hw.enable &&
> +		    old_crtc_state->uapi.encoder_mask == crtc_state->uapi.encoder_mask)
> +			fixed_mode = _intel_panel_fixed_mode(connector, adjusted_mode,
> +							     &old_crtc_state->hw.adjusted_mode);
> +	}
> +
> +	if (!fixed_mode)
> +		fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
> +
>   	if (!fixed_mode)
>   		return 0;
>   
