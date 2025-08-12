Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43230B220FA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 10:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07A710E5BF;
	Tue, 12 Aug 2025 08:31:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eA0TZmjm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C0710E5BF;
 Tue, 12 Aug 2025 08:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754987505; x=1786523505;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=14BLbkmLwOpd3gaelHHW2QP3B9GAnKamU7ud4GxVCuE=;
 b=eA0TZmjmzDcSoNpkNXnZqU476+6vNEA8czqpuYmX20Z0vIr2BdZ1iZAQ
 l23i1vPmZvg1QMgXKVXxE10AexzM+lXA5JwYwbD9bFRaJJgwv6Z7njo4M
 26xdU8wcSicbKr7VThEQ+nXGA/qQ3zJz0ZSo/c7rslwN+0uHHoM87S9zw
 JjMbwiXf2SF5Kv7m/W7qQ2/vBPbcUZ7jDg7y2exfh4dgpQ9pIh37R5WvJ
 1Ozmzykd2tA+3jsonqeWdMVdjBeoiVefXevJyhNyrd7RrHMEXbzzSNBdH
 7FigtrlIFz2Qreb9JsNAKuvKti3rzvitzQSRMSENP7JP9Uhr37HZ5X0nq w==;
X-CSE-ConnectionGUID: OtAYk8s2Tn+BtKaUElxE7Q==
X-CSE-MsgGUID: 7YSxIyrXTfK6k5GxaXS4Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56283131"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56283131"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 01:31:45 -0700
X-CSE-ConnectionGUID: h8/iiQF9RHSB1rYe00ioZw==
X-CSE-MsgGUID: Z8gDgEn9R9qlh2+zLCgpzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165769538"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 01:31:44 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 01:31:44 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 01:31:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.70)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 01:31:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lCSApa01nd0tMQW19CD0/HjSVaT+8R+vuZk/junbVL5E8jUA0sxfsTrUpUDf6AGglGJRKR972IbEEuAQYmNL/JyplAda8KHzsUU1Cj0eFdEqukIDaJgkqOXq2jz+DWDyuDuPjNbU7+pxoxeVp716w1IYZp7S7BCuoS1wUsOYdiOByUurD3qmR0Tc4+5T6FSKfFnVTS+CmQ7rvE8FR+c3G48FwWWuBIvaY3BYbEVtnilAuJ74c/BliIohahP7tTzAyqxn54JP6rFw8d22e4LhwFeoXKuKRh/ezWJ1031EM512rl/8SYmmf0913YZrsc7NdoO9zIAEeIqQYAwFmGbpxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qj+AuMJBc4F20Q7+WoKZa1QLKu4wUgL60BAcTaHHC0w=;
 b=IXgvmR6wxsQYW2RyvfJOfche9Pj3D9K9e7PkMnvLmtjWKUfQ81/DN+IB/+f+idzwfakJCjF8Gx56CzO5wDBDNHUH9hSeJgNJ2altwFy4XvZ/8V+u6I7CvfiB6Q+889O62xDNiVTjWhEGgTQ2mUO1st2qOeeF1MsDvD6bm0tvY2Gsi5qdUP/TeW9vXtRd2InFLq6OP//dRTiKXjZWWWayfSKBnf+oB6Kg5a83F+UkP3oQOR4MYStkwgl47OpxzGIqwDntNM6N4caQUlaVOd/WXQvu14HZ/7t28DKJxWOpg+q6nRqRqZj3ACiJYjXXkqky0Mc2N1XykLfxa9pRl7+19g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6430.namprd11.prod.outlook.com (2603:10b6:8:b6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Tue, 12 Aug
 2025 08:31:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Tue, 12 Aug 2025
 08:31:40 +0000
Message-ID: <ae30d6af-16b4-4f50-b541-b11540794bfd@intel.com>
Date: Tue, 12 Aug 2025 14:01:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/7] drm/i915/psr: Add TRANS_PUSH register bit
 definition for PSR
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250721111406.1468064-1-jouni.hogander@intel.com>
 <20250721111406.1468064-3-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250721111406.1468064-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0183.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6430:EE_
X-MS-Office365-Filtering-Correlation-Id: 06cb69bb-a2dc-4b11-17f6-08ddd97aa905
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YlFPd2FWaDZ0YXd6ZHV3ZFpDWHdhUkFKcnhIZHVqa3hBNUVRSmNsbmQrcWQ5?=
 =?utf-8?B?dngzQUtoY251ckNCMWEzK3g3UmdhcHpmb2NGeDNpQVc0ZFR4UkJkUUVMd3VT?=
 =?utf-8?B?eTJ0ZkF3TnhUZG9GQUJkV24vTC9OZ0k1SU8zZ2x6K2JwMGliRjc1aEF6MTJy?=
 =?utf-8?B?aGZCakw0TUU5ZFJ0VFRPN3RNVlBZWGEvRW5VMnFJbitZM2YwOVNXaUtkR0U5?=
 =?utf-8?B?TXd6R1BCK1k3YkFDTmc5ZHg4RVFDdGJuRUVuOVdRNTFHUzI0VVZhYmlzbWU1?=
 =?utf-8?B?eFZ1ampKN1FLVDBobmxUcDVQODZ5bGxTWHBMVHJTZmlUVVZteW1NaXRRQXBF?=
 =?utf-8?B?Y2R1MksyYXdYT0loK3hVSEcrcjNZUWNQWEpic0ZRYkxoM2JSLytDSXAzeUdZ?=
 =?utf-8?B?KzVnSHdjRm55MTNBUTRycDZSUHZycDZIcUJaUHp4cko1TVczanJ5dEhRSlU4?=
 =?utf-8?B?QUhQY1lyQnVmbVZLbGo0ZVE5OUd6czIzWWFacFlEc0g3NHc3OVFXaldVRW1Z?=
 =?utf-8?B?SXYvdFlQcFo2TUM3ZHhuZWJ5eVVad25YWHpuUWhIdGdtVjF1WDdLdkRBSElE?=
 =?utf-8?B?UHd4VE1iL2hLWW1DYjlXT25DZjhFUFhXWm05eW5POXkzaG9yaXJHY2V2MEk3?=
 =?utf-8?B?aDdGcGZZRWp3R2p0YUFoTWt1MmVhMHNUbnBPeVp0anN6b3NNNzVlb3NvYWF5?=
 =?utf-8?B?YjBMUktQNWc1akxMK24yZ0VxaXpIWUlSSlJtTVl3Y3VaaW1TZ1lBVUJ2WlZo?=
 =?utf-8?B?MjIwTHREaVlTZmFMbS8vZzh2V0IvclpTclNJZUtpWHhqYU9iZVAyZkdJakRU?=
 =?utf-8?B?Y2F5UDlUaUZUdkdIbS9WWmFBdTFJMjVQa2ZDd0dOWWpKR3IxN1lBdWtycG9t?=
 =?utf-8?B?WWJmRHBRYkZVZzVRMFJiUHc5RFNjVWEzTTY2cE1OTjF4UkxrelRrckFVZnNY?=
 =?utf-8?B?MkdNR2MxWktKVlhhK0NQcVpWeHJENmRrclBEZHREenNEL1BobFFyMC8xcE91?=
 =?utf-8?B?SFhhSDRQUXhuc1hQN1k3QTNoQmpzaUhYclNYYlFRSFVzY1NKK0VmNzJDM0pV?=
 =?utf-8?B?Nlc2aXBmUUlNMUNjeHVtNDZZV1lxVHBIcEZZRUlORGRrK3RKaGVjNEUzWFFB?=
 =?utf-8?B?Nkl1V1c1RXNtWE1KRjAxWWhucGZCaVpaUDdMcVQxMlpXODg2ckE3M2lJUDk4?=
 =?utf-8?B?dFpqa2tDZGJlcndkZStxeERPNzREUmJPVnVySVN2YXF5NWpDamU2N29TemZp?=
 =?utf-8?B?dzE4czRNZ1Y0S05DN3hQRlhBYUFOQ1dDUlVvK1ZkdG1FbFY2ekhFRHRZU0F0?=
 =?utf-8?B?Z1p1YlJwQkZkTmpXWmR0Y1dwNjI4TFRNaUZpTS8rSmorZysrRHlDc1lZSEh1?=
 =?utf-8?B?STNsODBlbTlFdlpkUUZsZmkrT05EN0VLQXA4bnBUODRWNkpEb3lHTkF3RHhy?=
 =?utf-8?B?OC9hWmlPVFJGZ2toRjlWU1c1alVQcVNVdUFMaFFNcW5XcHdoQmZLOStBLzdC?=
 =?utf-8?B?cVVGNWNnamhldEpMT3hSbHIyZ3IrMXByV0k2cXlyU3F3MjRyYlNXUGNnb2dG?=
 =?utf-8?B?SCtSR0tsMWpjZExtTXNRdnVyaGlWM0xNd3BCdVZUSEY5dW05c2YvL29nT0xh?=
 =?utf-8?B?dGluRzF4MU8vdGkrNk1vYzNuZTRBMmQ1aWkyMmZXei9ZajVHN2g2SWVpVmhj?=
 =?utf-8?B?Nkd4NkxqaXZjOUlmd1dNWDlqN1NBclYxRHVWN2lFVjNEWnZjdFlzWnZLa2Rk?=
 =?utf-8?B?eVBxeVV6dHhCTkVNUjVGMDVnOU9NenJWck1KcVRZUnBHK2w5UkpGYi9WZGls?=
 =?utf-8?B?Q2lHTFZ6RHIydEttUnVQbU93blFicS9UUWlwejdJTXNpc0lEQ1pJU0UrYWpU?=
 =?utf-8?B?ZkI0dW4wR3JGOTJ4NjRRNGtiOXk5Y3JibVJtVHgzSjZ0VnpNc0Z4cnpVR0M4?=
 =?utf-8?Q?whGtUx0to8c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWVGTUlNNmk3K013ai9jbFhXOE80V2pyUnc2aEpQZWk1ZW81NWFlNnN2cTdC?=
 =?utf-8?B?UWhwTlFSK21YRVplclVzNGY0THZGQ3VxK1lSTXBTSGtueU5ROFh6d3l4eElQ?=
 =?utf-8?B?eVg0S25RTFh1UWt5NHc2TDFuWG8rdXcvd2x3MDBQTGtpeGhKaGJPRFBaK1c2?=
 =?utf-8?B?bW5SR2RYWnR2NWY0M0ZCcTZQM3djV0x3ODNURTJPQ0xqbEpKVVpTZXZyYlJH?=
 =?utf-8?B?WmhueHBYMXdpZ2dRM1dPYWRIZjlwVGw5elJVVkhrekZmN05rMEcxekp4VFlz?=
 =?utf-8?B?UW5uRS9xeDh2QXFTV2hRS0lINUVLMk5kd3MyN1dPcm92UmpKdytVWThCSi81?=
 =?utf-8?B?NG5TYWRnQ040S2RycHNLa1VsT1dUNDZuNDRjQ2lKV2Q5dG53dVUvTU02amU2?=
 =?utf-8?B?TmplYUJmNmc2eUNIK1ZGTUJ3WWpvUTd3RVh1Sko0TnNWb3lXcUVKWUxuZlcw?=
 =?utf-8?B?MythMVY4QkxXSjFyRVFHekZqVFd3TmxyM0RPSzFZL2dZSkl0TWQ2cU9BaFFV?=
 =?utf-8?B?QXc0SVZ3RDBMeTZIdkRKNlB1Mjd2QWtMUi8zNkdadTFzRGxMeE9JdkVoNjVG?=
 =?utf-8?B?blNBUGgzdWhTV3laZEg0TjhtYU5Ta0JvclZ4akNvR09RZ1FuVFhEeHQ4bGNv?=
 =?utf-8?B?Mmk0L01WOWFnUzk0UUJTUmhkcDZPNVRFVzZURUk3UCs5QUljU1lpV282NVJp?=
 =?utf-8?B?eks5Y2VjOTZWbnBBOXJ5c21XaVFkNmFyWThoc0w5blhMaXl5MndZSW5xZGU2?=
 =?utf-8?B?MkEyVGVoZitDRGQ3Ry9tdFNKcStEcy96dGV0QXRmSitHT2tDbEd0VE0xMzJI?=
 =?utf-8?B?aGt2cGNaRzlEblVEeFk2TTBPL0FUSDIrQU5nLzE0cW5hQTIrYXk0Witaa3Np?=
 =?utf-8?B?c2NmeHFkckRiakIzcEhoWWZuVlhJR2xuLzNoYW8zQ3VmcHBQYWF2UTlmYWJ4?=
 =?utf-8?B?dXNBKzZEcG5Zd0IvT3JLTVIrdkptWlZQSEc1Z0ZhWUhFakpCSTQvQmVCQm1T?=
 =?utf-8?B?dER0TFZKQ2RKa2t6UXplaEpndytiVSs0ZERmcVNkVE12ak5kUGVuOHhIMFg4?=
 =?utf-8?B?YnFNWklXL2VKZlYrdGtkaTVVeU5EeFR4SjVDc1puK0U5VHFmUXVWTkg0RG1n?=
 =?utf-8?B?clNWT1NrTVEzT0lJdEtrMzhjUzhZeVRjdHVrckR0SWZVWjJ3YWdUaXpLUm5n?=
 =?utf-8?B?eEQxcmNPQkd5THBRV3dqVDJzN1FqRW04Mm1WMVpQT2NKWFRvQ2wvM1FYbith?=
 =?utf-8?B?MGxMbDB5YkNNNm9jRVhVTmJXSnFveGkxQ21vSHpqYVNUbUZoQXduNDd2TExa?=
 =?utf-8?B?c0lIS21QYTRKOVdCcVZLazZnTDlXTEN3QzB5OEtsWHA0WHpsMDQyTzVmRmh2?=
 =?utf-8?B?bjlrU2xTLzIwUjNzS1BPV1JFOXRkeE8rS0lkeTFKVFFHeVlZaFNLbjIxT1Bx?=
 =?utf-8?B?b0pVOTRqOTBONFZBd2xRWUh4bEhkZVI4YnNPMnVjTjRMSnFNUStJRzI4Qyty?=
 =?utf-8?B?bkU5aWU1R0ZPRjlTemVranJXUS9ZUkxGRVlzMm1ZWWtFUHJUWUptd3FRa3ZE?=
 =?utf-8?B?QkdIQVJqOWxTNE5sdEZHSFVKdy9rYXduQ0M2UHJFNlBHdElzZ2lnSWZzN2Q4?=
 =?utf-8?B?TFFFczA5R0hmZG5hSkZpeG50Sk1TelhnbGpqV0ZCd3BwcEVWQVo2eGQza0xm?=
 =?utf-8?B?TitTeTZKS0NEbkJ4QTl6Z1dQTit6N2QvbnZuSTVmWGNST0J5ejZkcThYZXZV?=
 =?utf-8?B?N3BlNEJEQmJ1WnV2RU1VQUFRSlZ6d3VUdFVscTFkTFpWZUprTThsMnFIU1lU?=
 =?utf-8?B?SG1qK0NtWXhWNHk2YU9tNFYrNDNxNSt5eG1EUWVybDN5YmxNVjNxWTRNMmE4?=
 =?utf-8?B?WXd1N0MwZWtYMk80dUpaQTdmUU4vci85L0p2T0ZGckJsUXBnMEtCL0NpUTJv?=
 =?utf-8?B?eFZ4bkgxT0JHZkJSUUI3V2JudGxqdkRzZG5sL1IrNWpNdmZaMDZXOFl1ZUVw?=
 =?utf-8?B?dGtsS2tiem1CL1NDdWtPT3ZZbmlXKzRlRjh6eVlCcjZ5Tjh6dHRrUHNrRmly?=
 =?utf-8?B?ZUk0KzZXS3FBWE5xR25QbXZZMHMzUkhHV3lMdmlSSlhFcGlnNzIyV0plcFI3?=
 =?utf-8?B?VmNjS0FUdXZxNWZTUk1QUlVBOVI5NnRJU3JybFNhZEh3MjBzVDZYVjJ3MkVl?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06cb69bb-a2dc-4b11-17f6-08ddd97aa905
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 08:31:40.7118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w1U1rJDv+bEk4QpOEt/IsT3WSM8LNMuRkD7mZ/A1nZeEq9Uc4g2BxTBpv0TdeKNwpjssvQtGFSb8DHJPJoiTIj8yd2/1paHZC3RgZrr9nUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6430
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


On 7/21/2025 4:44 PM, Jouni Högander wrote:
> Add TRANS_PUSH register bit LNL_TRANS_PUSH_PSR_PR_EN definition for PSR
> usage.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Perhaps we can add Bspec : 69984

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index ba9b9215dc11..a67b2eb125ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -97,6 +97,7 @@
>   #define TRANS_PUSH(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_PUSH_A)
>   #define   TRANS_PUSH_EN				REG_BIT(31)
>   #define   TRANS_PUSH_SEND			REG_BIT(30)
> +#define   LNL_TRANS_PUSH_PSR_PR_EN		REG_BIT(16)
>   
>   #define _TRANS_VRR_VSYNC_A			0x60078
>   #define TRANS_VRR_VSYNC(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VSYNC_A)
