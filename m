Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AEEC3A303
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 11:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F118910E880;
	Thu,  6 Nov 2025 10:20:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OgoHO9t4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D018810E87D;
 Thu,  6 Nov 2025 10:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762424451; x=1793960451;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Yf/p8vpFUCY/YDs9gGOv9A+LiC+wxM5NfMW0QtRK3V8=;
 b=OgoHO9t4QGgoFlS0sLSGTn6bUBk33aGRby5a7/figkRZuIJPL95sbclA
 shKZKJ6pn9dWVOnfv6NGEB+vCmNB4iiJ2qjfDUoM61pabqLy7VHM60hIH
 Ha6anGEYQoMXgJTYyUqZVoRCq7HLTv5OMXPskOqGUDeSDtFlyl//VDlKf
 zJ8NvXLFEEna4zpFR/GCwMkvPv2JtRiELBPBfYYOEfzrYNEPAFkcy48nK
 EN/HhIsuSWQPS8Ul6s44EPZyqXEK4zZOWMm/lbJcIxtF0h07eGHiB3EAN
 28Q/8lNX1er8p/cKTAjjY8QAwd2IHExm5qA/4+dTSV1etycf/cAuXeCPV A==;
X-CSE-ConnectionGUID: lpdCNvvrQmCrUsZ86nDMiw==
X-CSE-MsgGUID: Nqg2bPFJSO6TUN3xq8ewNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75908341"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75908341"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:20:50 -0800
X-CSE-ConnectionGUID: dqm2zgHUS2it8ADCSizadw==
X-CSE-MsgGUID: OF3hxFvlR26iLxT1Dm+DnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187666090"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:20:51 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 02:20:49 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 02:20:49 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 02:20:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GbL9GGUyOSR5ah1CocsNrXqPsUZkjgXiJesT3OGQUM03hhJBPw2IC5k8Ec7UueAIrl0OcTRRE+21C1+HwotaVEYTzwOzeg5h9WtAogVhCdzkP33lj0kT7YAD+G5nTtq99RV8C2oVGOott0hM6gMYpY0uMYcB5YcqMblLKqzXHMAGsRrouj7qOXD0xlvUOPc0hg/JysIEaB7fm+CyN5XtqBgZVgY8uHbmS0qrWrA+oNa0OG8ucS1yxl1egvLzhEeWVaQeZtooOKQCwcZ446RQGIad+FRU/aJlWivZjIjidpH9r6VSNe/wo3OV5RfMv0s+yjl1AJcG+OvT0zbEUOYlsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1MB4UCwvJ8o8bmiQMWIY4EMLYXij9HX7KfwNnXaZL+4=;
 b=L7P6KygdYIwPCJEaKhck1yMppEh52JW9wxODBnqwQtCEoU4y12parsuaY/GFc7247aqp7i1x2K3ts5mcRTzkOC1Z448QeDnchmrOG2vbFjyp5jYv2hE/VdaANatkfCKwY3I+EYv7Z0aqN6CpVyess79liuNt6MlAE9StinSNbU3a2I1ZEHvkfBscl658vUkv9va5R+rdeKc6j1yS8VCa6ALMGJB0gJJVPAikGTdNGQPK01EUWsLhaAOTzNdsoU0sQEwKXLB2w4sYTy3P51/Z7plnOOKBvoUlcqcnPmEqh4qYarFeg5YyzEjapDZZzjXEd07hph+/9citRMs2bp4KTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6519.namprd11.prod.outlook.com (2603:10b6:8:d1::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.8; Thu, 6 Nov 2025 10:20:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Thu, 6 Nov 2025
 10:20:47 +0000
Message-ID: <3b9470b3-95df-4874-b6a9-a77df8f2a112@intel.com>
Date: Thu, 6 Nov 2025 15:50:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/ltphy: Return lowest portclock for HDMI from
 reverse algorithm
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20251104093425.154941-1-suraj.kandpal@intel.com>
 <20251104093425.154941-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251104093425.154941-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0086.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6519:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d96e768-8c17-4c5d-6041-08de1d1e26ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUVDMEd3QmFUSEVkMUMvUWJWem9NKzdMWGFXTk5XVHB1RHcvcjRiS0h6ckpi?=
 =?utf-8?B?blhVNVNjWVBwKytkc2hqL2RNQVVSMndnV0Uwb1M3R0FHdWNVMkpaWit0MVJs?=
 =?utf-8?B?LzFNQmZmTmM1QVFZR2lZZW43MVEvMmdtaTJnYlY2c0k5WjVKZS9pY0pNZnp0?=
 =?utf-8?B?Vk5ndW5wVkJNMkc0RWxNTUdNRHUzR3MrdjdhbGNQZ0EyS2lWZHQwMUxrN3BJ?=
 =?utf-8?B?SExiKzROVjN6RTVoYS9nY0srTmNUcDlrZHFSanhFcThWZ1RLa2NkRHhoYVcw?=
 =?utf-8?B?UWlLaUhMVW1TdThzbXlVZGhVOGt1QXR3OWpZcmROWG9PZ1NkL01pcjBXU2Yr?=
 =?utf-8?B?K3k1dll6T1M5b2pTQ0ZOakJFamVEK2dncEtvSU5VUjFrNkhEN0tRcE9xT1I2?=
 =?utf-8?B?Vlg0ZnREajcwYm9qcXJCWWpYd0crazBTUjRMZTRUSjNtZTFyQUE3UUVqOGt3?=
 =?utf-8?B?VCtMNmg1empRTXRJTUJUQlI0NW1UL3J6TFpQZ1NQUFNmd0w2VFAyODN3dk80?=
 =?utf-8?B?eWJDN0V6bnNrTVlzalZ6YjVTdUhEcjUydUZkS20yRFZvT1NYUHN3cVZ0bGFu?=
 =?utf-8?B?V282ZkNueW1rcFBKZTZvQ21pODkxMTQ3b1VpZ0xnNlhwT0VvRng0K0tBU2wz?=
 =?utf-8?B?dVFqNHVIUlN1dGhIMEZkcTRuZTJPLzFobFNTYnY1UkVBbmdhd2pCTk5uMTY4?=
 =?utf-8?B?YmgzZzdFZC9KNTlPTDMxZkFFVTg5TXNFYkcrRjI2KzJvSm9DQnlkSm5TL2pr?=
 =?utf-8?B?c0pkTEtVeGx1WGtPOW9YRlBURHBERE9Kbkd6c2U3cDdodVB3dmJmNFJBY2du?=
 =?utf-8?B?bmJiRVI1N0RSWmFDZGJXK3J2N2pjSVVNU2k0WXIvOUJWdHlUdkdPV2lhL2dX?=
 =?utf-8?B?ei96VDhsRFg1Vmt4TXN3Z2RsZFI2b2ttOFgwWFJLbGNmZXl6NHNQTDZOQ0V6?=
 =?utf-8?B?S0YvTXRncUNwRUMrRTU4dStJZDU4VnRxZU1EcXpFY2g5OXBqTjNOaUZvTk5X?=
 =?utf-8?B?ZnA2VTRhdDBreHdKMjJ6UGw3ajNVVkZ2Vk5LUTdxRmlQVkE1cndyM0xkUmVB?=
 =?utf-8?B?cXE0ZmtDWUNOUGRDMUQyTjErOHMycHZ6THNWdDg1ei80ak1IbHBSekpFT05O?=
 =?utf-8?B?dkFmR0tieUNjSmZOMER6Z2l4VjZQOEZaWnlzWENiUnVMbDlEWS9hMHEvUVNn?=
 =?utf-8?B?Y3FMeGlFZGx0a1BCR0Q5Y2xENHY2N2FVdlFDWTdSVVRNbktIenF1WVMzdlZD?=
 =?utf-8?B?TFZvRDd5bE9ISHpoYUYrQnFncjB3RXUwMkc2dFVLb0tmdnRFYmhFWElIMVdF?=
 =?utf-8?B?R0ppZ0NCNlNIcjhubTlaK2lBL2JNbGVza2xMZktabnlQZ2pBcUJ3K2FzNWVl?=
 =?utf-8?B?VFVDMGdyam51K2t5MVc4cmdxWXRXcis5R2JobGVNR3JIbGh0Y3VmOXNydzlh?=
 =?utf-8?B?eVBNR0ZtODV6M2hpTGU1ZzJnMUdCUmFVN3NDbVFVbEVGRi9pZkhDTlZ4R25Q?=
 =?utf-8?B?c0FaWlJaanRMVFk1T1VQZnE2L3lKWjhrTlFjL04xMDNTN3d2aFpwZHJlZzVV?=
 =?utf-8?B?MUFHVmZSZDBGaFJiYzZUY2tvcmxrMHB3WHZZSUs0eVFvQ1dQWGZQR296amdq?=
 =?utf-8?B?dTdrSTJHZFZpNmNxbk5RVGcrUnRMYlVzdnB3LzkwWFBjcTZ2dTQzb0JaZU80?=
 =?utf-8?B?ZnY4YTRKWjdTSTFEVHVSdU9oZ0NOeUVrN2Z1NVM4WVdqZXRDWmlwbWN5UUlI?=
 =?utf-8?B?Z0pzUXR0WUx0VFQyditmT1k0YnBWNGNnQ0htUlVJSVBlWkx6RC96amdRbW1h?=
 =?utf-8?B?TWU3RjMvaWtoYmRCN01DL0ozcFZGZUlINFVjaFdHSGFwTmpwNEVtUDMvcUVq?=
 =?utf-8?B?ZlNIaWJVeUp0bkpPNnJNWU1KbEFwbFNvRDBET1hkc2xtRUZjUnVLTWRidnIr?=
 =?utf-8?Q?kQKhuSHautn/24CDqerttN4RkdARS/qj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTF1SUd6Y1BYWnFSSC9lTmpFblRPQ0lIdmFzc21VTkNTU2lxY21XSmJZRnVO?=
 =?utf-8?B?dVdMZXlZQ3Y1VStpOXl1UnB4VWpPaHdtUGlvL1dGdE0zUm5vYkw3Wkc3ZmFZ?=
 =?utf-8?B?c2d1cDBuVWRPWjFCdndDQk5KZnN2UTlxTmRoUGRxNldkUW41STEzUENXWDZp?=
 =?utf-8?B?and0c1BTOXJ2UFh4TERhZ25idzR6REptQUN3TnZSdm10cjllYVZLYzN3cmJS?=
 =?utf-8?B?SGJzek9xWndpTXQyK0g4YWhLUXBSUkpoSXdISTZNTzNRVmVwajd1d0JuZVJW?=
 =?utf-8?B?Z2N0ZE9SMzVpUWhvV1JzMGp1eExmTW9vc2piVVRoQk44NFVFd3A1N1JKTzR0?=
 =?utf-8?B?RDVhOURaSFJyWVppcGFEMzVyeXlkUVR1S1pHM09oZlN6OUdacGlERlRlTjJt?=
 =?utf-8?B?R1BDWUJ4TFU0L2hMMFAxMms0TzNBOFFKbVMwRkpreGI4ZUpyZ1VUNnltOEg4?=
 =?utf-8?B?VzlUVUJMZ1lOS3p2c3NIOHR1SmZjWWR6WGVqTEZ1OGRkTnptNmhRamtIanQ2?=
 =?utf-8?B?bmEvZVZTZjB1UDNyUEV5K3Judmg4M0VWd1dVM3ZBRHJ2Y09PUGJESGNWNlcy?=
 =?utf-8?B?N2FnZDZkb3ZYMjdBVXVVeEpUYXJkei9ybFRrbjFZdHRLQ1JQMi9XZzJMYmR1?=
 =?utf-8?B?SG5MSjBKQWwwNkx5TVVHRzBsT3QyQzhaWXV5RXhWSmpjUDZTcDZqMVEvOEE3?=
 =?utf-8?B?WFlIU0pYSk95bWJhNldrQXduUnc4L1dHSzU1M1g4dms0MVR5QkQ2UXkyWkdT?=
 =?utf-8?B?MGZSc1p4alBvcUJpSDVjay82TUV6d1hhNEVxeGFDVm5PTDFVdWphNXM0ZVI1?=
 =?utf-8?B?RWRrVDVBK1Q4OTlQZHE0NkV5UnVhMGVDdDNsRlJuWVBiMHlvbHlYWEZEWmlr?=
 =?utf-8?B?a085WnZkdEUxbWNkQWxQemRCa25Oemp0RHJqQVljekJKOUJzT3VkeHFJcGNE?=
 =?utf-8?B?THFqRUFzSG15Y3pvNjhraFdOWU1STEU4cURHRzlJVWtlRDZZUHZCM2JJbE5J?=
 =?utf-8?B?dXNqNnRNbXFubW9tTXZXcFdwOCsvS0JMTmlVZWtWR2oycWJ5NVgvUXN3ZnhI?=
 =?utf-8?B?eXlQcVdObms1VHV6OGlFNFV4eXFlZDhva1Zaa2lwVVlsVGF2M0cxd0ZqeitN?=
 =?utf-8?B?dlFwZFF5RFBkWk5RV3pEc0VjeUo5N0Vjb2p4T3dLOHJ5VUJQYVdQTlJ4RUxw?=
 =?utf-8?B?eTNaSHZKd2JubGxoeU9xQXlncHBXTFYzcFhhSmlROEp0K21nZkJkaHBnKzZE?=
 =?utf-8?B?djh2OHhKbU9LQXF5N2hpZjM5My9ZMUduZCtaN25tY3lwYU04WEt0NmFzUVRC?=
 =?utf-8?B?RFkxVlBSdmhrc09FTVF4dHBORkdsZmJld2QvYUZBY3BJVW9hdmg5MWs1NGoy?=
 =?utf-8?B?Yy9oZmJnVXFRTXl3RTlYNE5nVmhCeTIwZFM4SnZqa1JXaGRFYUNTclNKMVU4?=
 =?utf-8?B?QjM3WTlxRllpQnE1ODhpM3ZqK25xQ1phQzlxM3c2REYrS09HNTNHWjRLQk1u?=
 =?utf-8?B?OEV5L3FJTnFwYkppNkdxS0pBbGV2OG8xZjNEMFd6TEZPeUlFRndXMXFZejh6?=
 =?utf-8?B?UVpmT2JmNDZnRnpuRWpSOFJLV1d4bzV0MWRqd3hIeStOSEZxME1TRHdjaWd5?=
 =?utf-8?B?MlNhSDkzdkxkSlozQ01hVDI5Tms2YkZ5THBRUmhKKzhJMWdmZkprbmFDdFRa?=
 =?utf-8?B?aXJ5NTJWU1RLdkFWL1lBdytVdmordXkwZ1NHZHg2NDJSa2xKYUd3eVp5d2pC?=
 =?utf-8?B?NmJDWnRDakpnNytBNnFsR2lGai9vUmc3TkRSQnV4elJSQUxKZUdwb3hROURm?=
 =?utf-8?B?RExtbk9OcWJXRUlSTUUwbWpQV3VDbXM4b2czMXlSaGxIVXdvRkhtS1Y1d0Ey?=
 =?utf-8?B?bXZxaFlzU0xzeXIrdlNMWmV2czB2eWk1N1FVb2RiYzFvc1NMUit4WVcxY3gr?=
 =?utf-8?B?NXY1VVFiK0RGVGlUL3NiZzViOHJ5RkVGWStaTStIeEZOTDdaWitLNWsvVTBE?=
 =?utf-8?B?LzVsZ0xJd0hXWDNnMHlFbEFLakhzOHN2dEtLN2ZQOC9yWTluZ0E3dzFNc0Fy?=
 =?utf-8?B?Q0ZoM1JURnF1SUVRdjg3VlZPMGltN1FWSCtvN2FyNnBOOEg5RTFaRG9hZmVP?=
 =?utf-8?B?Z2VadzMySGYwL01jNTU3SnZLemdKVU9iQjlTbGx0MUM3ZzdLTjBQMlBHOUxB?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d96e768-8c17-4c5d-6041-08de1d1e26ec
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 10:20:47.6119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: htJMvzqeFDP5Dbe6Ad665HVSjaAaq07rZrh+q2oe90LkE6FX56l8HUGmRK65IubpQ08zMtBUiyaOhPkS95fCjV1FSLRtQct9HF/3rsE/+2Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6519
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


On 11/4/2025 3:04 PM, Suraj Kandpal wrote:
> Return the lowest port clock for HDMI when the reverse algorithm
> calculates it to be 0 to avoid errors later but throw a warn.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 14 ++++++++++----
>   1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index c1177b294013..e6b15bf6445b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1675,7 +1675,7 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
>   }
>   
>   static int
> -intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
> +intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
>   {
>   #define REF_CLK_KHZ 38400
>   #define REGVAL(i) (				\
> @@ -1685,6 +1685,9 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
>   	(lt_state->data[i][0] << 24)		\
>   )
>   
> +	const struct intel_lt_phy_pll_state *lt_state =
> +		&crtc_state->dpll_hw_state.ltpll;
> +	struct intel_display *display = to_intel_display(crtc_state);

Lets have this as the first line.


>   	int clk = 0;
>   	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
>   	u64 temp0, temp1;
> @@ -1727,11 +1730,14 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
>   	 * frequency = (m2div * refclk_khz / (d8 * 10))
>   	 */
>   	d8 = (pll_reg_57 & REG_GENMASK(14, 7)) >> 7;
> +	if (d8 == 0) {
> +		drm_WARN_ON(display->drm,
> +			    "Invalid port clock using lowest HDMI portclock\n");
> +		return 270000;

Perhaps return xe3plpd_lt_hdmi_252.clock?


Regards,

Ankit

> +	}
>   	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
>   	temp0 = ((u64)m2div_frac * REF_CLK_KHZ) >> 32;
>   	temp1 = (u64)m2div_int * REF_CLK_KHZ;
> -	if (d8 == 0)
> -		return 0;
>   
>   	clk = div_u64((temp1 + temp0), d8 * 10);
>   
> @@ -1760,7 +1766,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
>   				      lt_state->config[0]);
>   		clk = intel_lt_phy_get_dp_clock(rate);
>   	} else {
> -		clk = intel_lt_phy_calc_hdmi_port_clock(lt_state);
> +		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
>   	}
>   
>   	return clk;
