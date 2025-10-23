Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60241BFFAB6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:42:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C813810E8A7;
	Thu, 23 Oct 2025 07:42:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwVNlqBH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2910110E8A6;
 Thu, 23 Oct 2025 07:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761205352; x=1792741352;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cJMdg8gEFGYo94ZgE5iHCnFL2hOYHhKtgujfrHJ56eo=;
 b=lwVNlqBHo5LsIpxHgwXRaoy5L3c2/W+HZjmeT7YezxklTHOjhMRHCTc2
 kg3+d2zgtOu8PLlB6joNlHpaHVd9OrHww1kRydjJRYrVVE5H+ayYvj3TK
 +3VCNZwWG+l5pbSaU6L7tDL3Vtz6ow/r7UN4CFvqthTC+37J8jOuxWI32
 pv3rS3Krp62upTxoTSMBkIDzQKVXksKftfMUPOUa7lbC+EeqU9ocQeA2h
 oajau3rXiIRhUbyuQXkJW92ImyBs6ObK0B6hs79vKhrK5ebi1odrs5Wus
 qbFDzGxaUiisypninS/Z0aGagotu/xBFSzwLF3n8OlZodM1SVDGW4iwoW w==;
X-CSE-ConnectionGUID: n0PRPc8tRj+qQlGJW513Tg==
X-CSE-MsgGUID: GUFShhzlT5SNq43SnSWfqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62576811"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="62576811"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:42:32 -0700
X-CSE-ConnectionGUID: 8wfVpuYVRyOPTESAov6sMQ==
X-CSE-MsgGUID: HYBi4GYKSACUhqGl5RDyVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="184152000"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:42:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:42:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 00:42:31 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.3) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:42:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tQ+hV5wea4zv1NBYksbNimeeDKmID6Pl/pjokqAkNEZAMFk7+DhyfwVFdG/YWmixYOqY8lyMM4wics4yFdnrY+AsswHt0kXjPTPGbE8gtncE7/MW/Sis49Is0DeTLZNaTAysVfqqFvl5W53yO/w6Z2VnAPFHl7W+ho/rmvgBuzHA3axOn+8Smhft1UqKNgdbCLFZq/fdtCsXRCUqO0VgZaFCsSBYlAZjyz66bHUziyaL1XD1SohbW0+RtGeyr4ArA/oauRr6njRFUzNZBEQEbbTBd0U44VzYxdeLLCK36BBFUQbwLyrdDrxosOBlAiuAeguQa5A5sWEvK/t1ZmLsow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+PDh6d5UvY6pzOU5Inrtp/3GALiFYLhqh6Z6nq0R4yg=;
 b=sBxjWroyoxSnVxydJLErvA0vdDn5OfWQM+36XA8QNbs/QDozvSoiQdAh34QhGs4Y/Srk5p7kgKRb+RhAZ3N7x1U33Y+5Fsgr97zOZKMZlFlEOs1GMPzuNqF4+Og+UEe+vNKU8El65yl6mgaFKKO5ZkqnAi3FtmoDq6HeyATKYKow/qJhZwR4yc8RQTw7q/wmNW8cB2obc4RW/h1rVyrzkbcNKgTepXLCY2MSZ1md4G/gO9Sdz1vkBDmumoj1K/zSHPCvD5hnTYtxLG/kTiEsxsLqfHpZJEi6Ze3gxKJ4HLS3CVO87U3TQ/mAnE6/tFlUeHzU24cAOrvjNHcMLn+ySg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH7PR11MB6771.namprd11.prod.outlook.com (2603:10b6:510:1b5::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 07:42:26 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 07:42:26 +0000
Message-ID: <27d0c847-df30-4409-a006-4e9c83755e27@intel.com>
Date: Thu, 23 Oct 2025 13:12:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/25] drm/i915/ltphy: Update the ltpll config table value
 for eDP
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-10-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-10-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0243.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::17) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|PH7PR11MB6771:EE_
X-MS-Office365-Filtering-Correlation-Id: 87303c42-3af5-4329-b882-08de1207b551
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aEthQ3Q0TzRwekI5UmJhZE56L2crQWhkeDZ1b3kzRDgrSDkyeXlxVTlrVmdZ?=
 =?utf-8?B?REZFNk1qMnNUb0RNeWNQUnBlbVFnMGx1TFFrc3dKU2RTOXpsb05pTXdmbEtq?=
 =?utf-8?B?QnlyUWdUWkljckJjSFNyWjZBZXY1UmM4WndvV2dQdlVhSTg0ZVh2TVJGNFNV?=
 =?utf-8?B?aFFWd1JiVWlEcXkwR2NiNlVxT0hSWVdEUkVBWVhBZW5OQ3pLa3NsU0dqd25U?=
 =?utf-8?B?SEUxSWxaNk52NTBTdXlnOUxPdmFKU3hIUUdCYkVCSmd1Yy9qMmVEOGlSMDUw?=
 =?utf-8?B?K2VTNWphV1hlN2FyVzg2MTBJOEdoTjk2Q1VqTVBhQjd3MS9ZNlhzbWQ5RUti?=
 =?utf-8?B?bzJxUkFOYThKOWVpVUo5Mm1aS0FnTFM3WlB1UXBZWCt1WEdoZzlsNFZ6dTdZ?=
 =?utf-8?B?bW5lVkhVbGs2MmZ0c2xkTUhkbWtkeFI5cnJYbG5vN1Z3VVlVcWVTb0RtQ1Nq?=
 =?utf-8?B?UVpqSUQvcHZ2YVVyUWFQYnJJRHdvbDVnZSs5Skk0MFRscm9DYjg0TDFYWUxW?=
 =?utf-8?B?MTE3NmtHMVFxaU8yYlVRZ05WcEUrTjcrVTBEaElMVzU2bXoyVnV3SHZvZXFF?=
 =?utf-8?B?ZEpDM0RQYktYUE54cmVXNmc3TTJ2U3ZiNm54ekw2bHI2bjdsbU50SVhhOFNh?=
 =?utf-8?B?ZVZ3TTVNNnZWUmNqeDh4RG9MN2lqMTA2Yk9CL2pVck95VTQ3ZHd0cFY4OUF3?=
 =?utf-8?B?eU81OVl1Sy9nb0RRR3VMODFvMlEvT1Znb01NTTRycHBQR1M1YzVMbVFpY1dw?=
 =?utf-8?B?OXpZSWNJWDl6ekxYZDdIdzBmS2tGRVZPN1FORi9tN1JYekhHRXdacVl3NENn?=
 =?utf-8?B?NzRoTGYvWFlYclg4Z0ZFQWplRTk0OFJ6ckhKYmlTaHo2ZzVMVTJnRE1tZ0Fv?=
 =?utf-8?B?cGZBRERVTVNhUmF0RlBjQ21wQ3lxbEdYV0tlVzFncHhGZTdIMGVSc2FUTXJ4?=
 =?utf-8?B?MVE5c09sMm1IRVJTRWpGN1FRcGtlT3BSUjhZS2lXR0RqQ0kvc3pTNVhIeHNL?=
 =?utf-8?B?WVRoN2kvTlZ5dGFFbG00bG1XTjIySWdaaDZmYkFrb1QybXVzdkRnWFpMN3h6?=
 =?utf-8?B?RkdWVHh1MldNMXZNNjFxRDlTa2RTMHFiekRobHBnL21yNTZ0ZzV1a2J0eDRM?=
 =?utf-8?B?UGNqeHVqdG5TTC9la2U4Q3BYdVQwbHA1Mzg5NTVocldSY2xXdG1Bb1JaVVRQ?=
 =?utf-8?B?d0QzN2c0Rm5vWGVRUTZaVHB3eHVFSmNXNFY5K0YwNytjVHFIaU05eUFtT1dZ?=
 =?utf-8?B?UExZR01LR0N4aEdHaDBQL2ZUOGVKNEROaVVPWVlNZFY3RVk2cVk3OCtVT2Jj?=
 =?utf-8?B?VFFtWnVpN1BKUEYrdkZRTXUvT0ZTZnlYdVpJS1BUMlZiSWFCU1ZJZjdlY1Mx?=
 =?utf-8?B?MUpxVGxrb084RzNaMzQ2NVJUNVdWdUt6YUZNb09OTGV5OHk4VHNwZXowUDdk?=
 =?utf-8?B?UmhQZHA1OUpPV1lIQjRVSUFqSkkxSko5WXREU25vRGx5WThtbWt5V3RKRCtn?=
 =?utf-8?B?c1NLVmxqZ2hoUEJNYWpVcU44WUw3aThlL3N1ODk2Qnd4ZllvTXYrempVNXRp?=
 =?utf-8?B?Y3FocDd3R09pYllaT3ZUQjIrdXhuK0xNelI5Q0NqQ0JvTjBvRWx5V3NIK0h2?=
 =?utf-8?B?QUszWHR4N3lGcmVzTG83Z3ZZREtkNW1US0RQZmM0WU1PMHJ5M3E1Z3FBVWRX?=
 =?utf-8?B?YVhmelJoWTdsQklsTjNjVDRZSTNNdFhoeUVjOHNtQ3U3OHhiNHovb083MEVh?=
 =?utf-8?B?SzRWdWJBMHhHc1o4L0FNYWVtcEJiOSt3YThLNVl6Z3NkdDU1WXlVQ1AxaTY3?=
 =?utf-8?B?WHhxVVpXTUpBZE1UcklZdzExK2duYkNVVUhnaDBCRzJyUzA5c0g0cGYwcXM0?=
 =?utf-8?B?cm93Wnc1MzVrQjg2bU5adXZxc25Dbkh3Q0xpNThtUExJbFFNUjJkWGlVSktT?=
 =?utf-8?Q?8AQ/uiav/S3Y8DvKBxY5kuPJYUpqJR94?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1JNdXBLZ2NObFA1YVphaGxoMEp0OGxIeUd5YnQvWG1DeDIxZXh2VUdFRC84?=
 =?utf-8?B?OVlhWEMrMmliVmJZdGt4OWwzZDUxNUhXVXdCcEY1NEJtRmcwQVBXOGRUR2lQ?=
 =?utf-8?B?d09WZTY3eENPRTlJN0lJeE92TFpUQ1ViOGNTOHZUa0JtQTJlRXBpd1Q2Y1lS?=
 =?utf-8?B?bHE3WTd0ZWxGaUVHSG4vSVJmU0dPRS91citUMTlPZFRrdDcyUkMyUkd0aWZ1?=
 =?utf-8?B?RFF0djBTbjhyTjZINEUxLzE5T05VeU5ySXlnU2RibkNNR0dkOFhYMEpZSk1J?=
 =?utf-8?B?c1VmSGdpN2VSWncrUWtPUTNnVlB0K01FV0hnMTBlM28rVjRJbVd6Vjhvdmtz?=
 =?utf-8?B?OWtBRHhkelM4ZDgxdjJtL3FKV0xOVi9JWDlEc0lqYWY2RkZpaG5YS2MvT3VE?=
 =?utf-8?B?YnhWbDlmeTU3aVdNVnQ4SjBFM1pUaDFoZGZvWXg0WEJoSFpXRDJlcTVYRXdU?=
 =?utf-8?B?VmY2QkkxaERKRnBXeUlLbWpoMmo5UHZlYVB1cG4zUTVEVk1hbXZQUGt5ZHR4?=
 =?utf-8?B?bGNPZU11aTNBWnhWNHh6YW53SkV6SmIwQjVaQ3pmbzFheWJNVmtUVTBOL3hZ?=
 =?utf-8?B?TEZhR2JVcnNUNW05cE5hZmgxb3VjUnNCVE9vL1p6WCt3UWZwaE9lR2xLYTBD?=
 =?utf-8?B?RElkNWdEVVU5OTVHUzNCSjAyaURqVXdoY1NmVHZYQlIrRHBiRXR4Y0FnWlRS?=
 =?utf-8?B?RWpCQmdzOVRNY2J5QmpOVS9nanpidnEzSkpOSzdQSnc1VnFZY2NMdGoxZmhB?=
 =?utf-8?B?RmZ2T2NNcGN6MWN5ZnN5VHZieVdtV05VZ0doM1FreEdoR3A4WEVlNlhmTlFP?=
 =?utf-8?B?WFpCU0pxRlkvQTdiMEtYdDc2clpLSi82SDNGZGZRd0kraTBOMS9UNDZvZ2o3?=
 =?utf-8?B?VFg0RFhUNkNnb1VXb2NiMjk0YUNXSEVsVlJvTndxbVJZT1plQWh3VWFkdk9v?=
 =?utf-8?B?Y0xpZzhJUEQzd0VNSGRqa01mYmljRHVVT1AwMCt3VURYR3ptMklXdVZUaUVz?=
 =?utf-8?B?Z2FXVGZHNEVudFZDNE5oRFdmNHpOV2ZoUXRpSGNyMTg2RTRweFA2eVRqNWRB?=
 =?utf-8?B?WTR4cWlCaWx1NHExcVZ6b3E5RGYrbFBxL3Nsa2xZK2JNQzdnbHhwUkx2WWQ2?=
 =?utf-8?B?MlBrUVc4dVY1THNYZEZSeXJpWWNOTnhSRXV1eUt4eE5NK01QeWJHNFFQSkt1?=
 =?utf-8?B?dStTMWZLc3NYbUNQdDlFQ3NCRTUzY2xjNUlxYVlBeWkrY3ljdWVEMFhPeUc4?=
 =?utf-8?B?cnhaZFN2ZkkvVUJqazNOdXlqWXFlclFteURPTFA5Z1JMS2V2TlUra3pOcXNS?=
 =?utf-8?B?WHJsRnRyQXJnYkZCY0FraXRQRHJyUk9KK3NZVTVLbVpnU1NFZVZZSWtBSHhr?=
 =?utf-8?B?S3lvbzB6QUZYTWk5L3UyS2V3RUV2eWpmNmV1dG1LcHp6OHpvZTQ3RVl3WVJo?=
 =?utf-8?B?RmszUGNGZkdvaG1qTjN4OTJKa2xkbmhUdmJNelVsdFkvWGFMUDhxZkRvb3B4?=
 =?utf-8?B?WStwMHVxYmIzL0V1NEhvZnkvekg2Q2x4aFB5K3E2ZUU0ejVhRGRLTVlMRHV0?=
 =?utf-8?B?ZUNTU1M5VkZqSmhtMGF3eUxsR1gycXUraGpvdEtiU09JRm5UYnZhOEhycmtT?=
 =?utf-8?B?NlF4RUxpeGU4UkZiamEzUTBqdkgwem9jYUdBVUVWQ1VOTEU1aEx2dnR2eE1U?=
 =?utf-8?B?dGt5eUZzK2pRa3BLUm9WQVlZcWoxRzFJOUZXdE92WDZ5dWhqSWpnUWVwNGQ4?=
 =?utf-8?B?Ti8vaVJGMFNabTRFeHhNTGY0eC8wN0YrRTgvd29jTjBoMndMM1dWb2VNNmU0?=
 =?utf-8?B?K09JWktqa3lpSjd2dWp4bVZVN2JHa0pQQ3c0WnZhQUtjVnlTdkpCQTF0YXlF?=
 =?utf-8?B?cFIwUm43WlE3bXFiTlBCemxyUFNEK1VENEd0YitxM09mZDc4Z29ZcXJ6NHV0?=
 =?utf-8?B?WGM5WmxxTElvU3JJdEFHSkcxRzA5blFKTW9SUlFrc3VibzFnOW9SK3lETGQ5?=
 =?utf-8?B?bGVHOVoxbUJnUjhMTWdKZlZJRWc3dEVVc2xoM2lqVS91dVZkTmEwcklPU3Ns?=
 =?utf-8?B?VENLdFFXZDkxYVFmQmwyVjRNcE1Xd3BhR2Q1OEZsQURKV3RCOHhva0l0WEsy?=
 =?utf-8?B?VzE1MWlpSDRnUjFqbVJyMEFQY28xYTdzZ3BCdXZNVjVVOUtMUzBLVkFxRURY?=
 =?utf-8?B?TFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87303c42-3af5-4329-b882-08de1207b551
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 07:42:25.9505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aRJ1GSbcoyOTODAnBFB5bbHxPEqcCQFWkVmx15SXPHG0XyNmL/JfczcAhlgUywDHdjTgc7h5L1Cxu6/UiHkVOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6771
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> When we get the eDP tables we reuse dp tables for some data rates.
> We need to modify the 3rd config value of this table to 1 instead
> of 0 since that is the only difference in the dp and edp table for
> that particular data rate.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 9380ba530901..8cd0009609d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1226,6 +1226,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   	for (i = 0; tables[i]; i++) {
>   		if (crtc_state->port_clock == tables[i]->clock) {
>   			crtc_state->dpll_hw_state.ltpll = *tables[i];
> +			if (intel_crtc_has_dp_encoder(crtc_state)) {
> +				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +					crtc_state->dpll_hw_state.ltpll.config[2] = 1;
> +			}
>   			return 0;
>   		}
>   	}
