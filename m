Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D601ADAF1B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 13:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2696910E361;
	Mon, 16 Jun 2025 11:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lWS88b0J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CF6C10E35B;
 Mon, 16 Jun 2025 11:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750074743; x=1781610743;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=LjAASHbC6Idbcf/fJCsZqwLX8cK/7BeXNJCg/Jfll4M=;
 b=lWS88b0JqO+hmHg1T6sirBf/vWc8dRx9wd8JEp6sxQkVIC/tCkmtTdzf
 Wxrt7IDRuipzibZydkSs1P/QW0PfjnCE2oCmT6cqOUQsJF9fP1+37HW1N
 //RDaYaLFVQBV+q5pDYXvviWwm0/buM+TAmsX5LRrSuY33JnMpwsmsznN
 TLi//H1pg32ASinFKmdJWTN7XX7WgcNECtMrODWzD55VnqQVUZFqwev3e
 /8xpnpvACCMVqv5rxuFIl5nzZ4nsvuGbbkI3IYQrTuZBRaSu8x7JNfsLi
 5R37gL17KC3kFwa3/skyAUqladEeKXl9uZtzlWTHMQXawxMJzGNLvvPqu A==;
X-CSE-ConnectionGUID: GscZRAZmRw6fLQTBuTHldg==
X-CSE-MsgGUID: EIyE90cRRlWDSa/8FQWT7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52304829"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="52304829"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 04:52:23 -0700
X-CSE-ConnectionGUID: ac4fE945Sxy/HUUy7lwrlw==
X-CSE-MsgGUID: XeTdOrU7TXGQYWVMKx0B7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="148441612"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 04:52:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 04:52:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 04:52:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.52)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 04:52:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rzxer1F9+emYfrbhjgyL6jJCd7Ew4+vESX00RxsajAxtpHX7exaA0GLFl1glzUlq9HiqtvlJDj78AWrR8eZc6AqAcODkTluJn0XbwqGODjg99LWvdX62G/8FTD5TM1ANM217cFdVAh8yXEts6zhdToZPt4w/avSB0CPIg35LkFmAn4N/bnHAcAcYbNDQkGQFLMSPzBLm8vyvhv48qs13YcYtMamIiw4zWySn6KlrZ35AXOv0qTKuTp3EtcDah9vnVc1LUf/zHx0RYpcl5nnqBMic6EhtLhq1EG8URbXJ9zjgPNsSii5QK1UoYrnR/PYJY5L3AMgGDPzCpdFV0sj2uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LjAASHbC6Idbcf/fJCsZqwLX8cK/7BeXNJCg/Jfll4M=;
 b=Rf8jmH+qJlOnOThuSHO9XC3jVmi4PNs1wsSgnLJC9Qakv45/yje7cpoqhmaGcf/zdpC7jMKDuZLVgol+1oX/CZmvn1tzrHI9kF7iQMdu04QR4ILxgDGgkpBwfcoCKO8mIWruv9Q2PwUbTSybvY3pbTMf3gk8xE0jwD876yuLm/fAjzu7N673whYHf5vGGKm+yfgEEsdglJmXNBxZ+jlIZMRYVh7p4A/AIT5fHFbOl8rxYCikvfRkJjXR2CA/ESVnwyoVVLqYfmjBE+kUZtYLL3DSbLOcEcjrXZT16OWmjOCiG4aXp0v37bY6qyUIO2A3hv74Zv0PL7+gV8WEoLiihg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Mon, 16 Jun
 2025 11:52:20 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8835.018; Mon, 16 Jun 2025
 11:52:19 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 16 Jun 2025 11:52:15 +0000
Message-ID: <DANXPUK6QX1D.3Q2EF3KG26LWR@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [BUG] i915 WARN: RPM wakelock not held in fwtable_read32 on
 Lenovo T14
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Damian Tometzki <damian@riscv-rocks.de>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <0107019739d4e899-81e90dc7-0ff9-43aa-91dc-d57ef84c64b3-000000@eu-central-1.amazonses.com>
In-Reply-To: <0107019739d4e899-81e90dc7-0ff9-43aa-91dc-d57ef84c64b3-000000@eu-central-1.amazonses.com>
X-ClientProxiedBy: DB7PR05CA0045.eurprd05.prod.outlook.com
 (2603:10a6:10:2e::22) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA1PR11MB8280:EE_
X-MS-Office365-Filtering-Correlation-Id: 041e4ff3-a8a8-48c0-fbfd-08ddaccc3f9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUFQU1VvelJDT2N0Q0EzZGNpdjkxUHErU3lFeGlBUUZMN21ERWYwM0ZBRHgy?=
 =?utf-8?B?ejhVK0k3WEMzM2U2S2RTWWg2dmdPcUoxRlRXdHJsNFlJM0w0QzVyV1JaTWZy?=
 =?utf-8?B?M1JCbFY5dGVySWtaZWtFNkNvYm1uMS9KejF5cWNVNDNmNW9iOWx3bHNWekM0?=
 =?utf-8?B?SGdRQThrL0lzNi9IaXFJZzlETVkrcUVMUEt5UnA1amFja001R1BOSi8vQ3NF?=
 =?utf-8?B?RVhhcktnRk5Sc0VzekN5TEJFS09uVXRaM3pWSkpRbXNCQUNhcFUwcVVXVkZE?=
 =?utf-8?B?TGpzRTM3RTJaTEJydExSY3l2NXlNNDhOUXNNR2xjRi9SZ3h4QmFBSG1vRm1r?=
 =?utf-8?B?aFgxS3ppbnZUYVZUc0lZOFR5WFIrWllOd3lXSGRFWTZRWTFsTC9ydFJidmRQ?=
 =?utf-8?B?VzBrV0hvVUNUMGUyNWNVQ3prSW11TkhaQUFpRmtsdHJZTmt0ZjluVXlVYmFU?=
 =?utf-8?B?SDlTWnV2eXpJUTRSZkRuTngzRjM4ako0ejgxRFpNbmhvMmhUOWQ0aExSZzB0?=
 =?utf-8?B?RU1GLzR5OE1oT3lIQ29rMUl1dEZZOU4rclg2TDUvdmk5emxYcnhsQjhDbGZ0?=
 =?utf-8?B?WHNna0FZaU8vYVZDWW9Fc0cvZjhDNWhUaGRJMndwZUFlRU1QQzc3VmtkcFdJ?=
 =?utf-8?B?YldUT3oxdlUyL2tERlZwbVBNZXVuVVdDcDFWYmJua1hqWmZjam5STjN0ZjdZ?=
 =?utf-8?B?VFNvYW4rV2g4T3Btd3pycktYK1l5N0k4elFGMjlGbDl1cHhUdEtrbHZOc1ZI?=
 =?utf-8?B?VW1mbDZpU2h1d1kyNTIvWUZqa1JvcThoS3M0bG8zMWpJMWNhYUk3SXZmYzFN?=
 =?utf-8?B?dTVwRU1UVDllQ3JDZHY3ZENDZEZ0UkthN3hYcW5vUC9La0hnYmVyWTBEbUJp?=
 =?utf-8?B?Y1VCU05LTVVVdFB0dlN4anRtU1pWMEVoMDFHaCthekJaZHBEUVlvdmp4OEFj?=
 =?utf-8?B?eHVhazRDakZjcVUyZUpOZ2UzbE9wRUNKeXNRVXJJL0FnK0c0Y3piVWYyOUJN?=
 =?utf-8?B?SnVlVm9WUUNaTGt0dVU1TnNuNWhUU1cwYjNpOTZKM2Vzc20rRndiQ0dLeFA3?=
 =?utf-8?B?OEc5eHpsUkZMUUhJTm5iVFZEL2hBcHFuek1veHoyTTZrME9OQm1JakNaSzVW?=
 =?utf-8?B?c3JadmFHUlV6OE1pQzVFMWZma0xRVWxGcytNbVR0NkoxQ1d6dXhtMG9LOVBh?=
 =?utf-8?B?akdrVENQOFpWUm5sR29xeWlTVnFSZFoxcUo3dWJrSEVOMFBadTgrWVBZbVM3?=
 =?utf-8?B?Mm9NSldOaFBuNVZDc280ZHBNQk1pd1ErU0JFT1NuTERZZloyZStpMkhPT29W?=
 =?utf-8?B?RFNJNXI5UkxvRlNxWkgyRjNVRzAyUWNvWVJoRnFQeGl6K0c1NEFlQUZna0tD?=
 =?utf-8?B?UlRrTXpmRllYWlM4YlZyV0ZYQlBZYnE4U2k5QjV4eXNJUWlEMHJWczVTSW1K?=
 =?utf-8?B?UDlWZ3BRZjU3ZnZGY3NzMTlnUWtuQUd3RENheWdTUnNlMVRtRmhzL0NVc21C?=
 =?utf-8?B?S0ZQQVR6Qm5leTlQbHJLbnc0M1ZwMmNvb2FTeG5RQUYvZForNTdjOTdTb1hj?=
 =?utf-8?B?d3V1cVJ0NktWdHBURzVZSmREeGZ2ZnJPY0FocnFMVzN3eGtCY2wwTzE2S1hl?=
 =?utf-8?B?MVk0eUw3VjZNTEl3RXNiT0xtTlNFNTFLVjdsOVp4QXdTRmtJUDZpWk5ZOTFk?=
 =?utf-8?B?YlpHaTUwU3FRSmlpampUenlwNHVGc2p6L0J4UENrcXRwbXU2dTNFT0pkbWZC?=
 =?utf-8?B?R2ZoU3RabDNPbHRGN3l5N0YwMVNHSHJYci9pTGpvdk5ackNMaXNZa21JSE5T?=
 =?utf-8?Q?B7wQCkf9WM61HYWV+RFgSdMWYxjiyrXzLwLi0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1luQW9WNU1GWWVtbW1hQ3BvT3pMbDZ6aDAzSVJEbHQ3NSsxaFZVZS9admFH?=
 =?utf-8?B?NmZraVZIYTN6aGlYSEFUUjI5dVpCeU1VZGNSTDFMOGtWL1dOSVVlbHFtMllK?=
 =?utf-8?B?V3NtZFFlclVXek1VcU1ySnpZUFFYVUdTNElkS2JvcjVoTldrNVVCSjhFemRM?=
 =?utf-8?B?aGJZdTlDYkpKcE5JZGNGREhCRWVIbUNMNytEV29sU0hiWGxFRnpaNjB4VEcr?=
 =?utf-8?B?L3EvTGV2SUQ1N05kOTdnU1k2bzlKeThXbUY5TjBYMExvNU9oWWFNSCtOVm1W?=
 =?utf-8?B?SGlRTXFZSUI3QjN0SzNlM2pqTk5paElJSzJmL0hDdUVmMDRZMUJqc2VwSVMr?=
 =?utf-8?B?ejFVWHBxV2RlNFVMZDIxZnFjTlM4cGNTVG9POWJVV0p0bmJhZXlsYUZUN0sx?=
 =?utf-8?B?Tm5KTVF4c3l2SEIzWk9MSnhDMHREdUVZYzdGYXQ3OGYwdTBjTUtWeTJaeFBS?=
 =?utf-8?B?UWViQUVzVDE2SEM0djNDS0E3NVRoS0Zrb21iYTN1YXhscUx4Mk5UcTludEVo?=
 =?utf-8?B?SXRqbUwyV2NOSlhiVDA0UlpHYVM0anh2MDJlbUFFVTMvblhHNHBrdEJXS3VT?=
 =?utf-8?B?eFhlZ1YwK3I2V015Q3BlSTUrWnJ2UzJ0SHB2dm1IMG0wZTJncVlsWnl1WGpV?=
 =?utf-8?B?bmdENFpSRzFrOEpodjdEWUxJVHRweWd1NmxwNHhyL1BQbm5kTGIrdlpCNE95?=
 =?utf-8?B?UThPZThNQmNzRGNhRWdtUEtqSHp3RmZaMFhyOGl3Q1k5OTlJak9wVUw2eGQ2?=
 =?utf-8?B?MklhNUtuMCtSRFdRNmx3WlF3aWJRY3VTdzFYejYrL2EvbWR5WlNHRWdGZVdC?=
 =?utf-8?B?OCt4S1J5R3NEd3FESlFrRXVRdVpaUUc3eFJGZUJzSWZCTmlqZTdRZElFem14?=
 =?utf-8?B?dHUrQlBkNjdBMHhhWnk3K2srTzNCU1Z6VzUvK1ZvY3NIbC9ZODBaMHpTQ1hY?=
 =?utf-8?B?M1JXNGpNaGpFUEsxTXFOc2c5SG9QZU5Ld04rY1BNcFhOQU9sK3I3Y1paR29J?=
 =?utf-8?B?cWZnMEIraUNNZCsyQThvUGRScHFacjQyZmE3MFJscXgvb2xvSmltcktCZW5z?=
 =?utf-8?B?eUFBL2U4UVgwL1hOTksrR0lsVlZTOUxtdXBiWmhsL0x6WXpvQ1NvL3NkdHVs?=
 =?utf-8?B?VmNDWkpHcHVmaWVRUzJvWFo0anFJZlpFK0tsQ2hWZHhqZEpGN2JiUUNGZVBY?=
 =?utf-8?B?VFcrTEJZVTZ2SFVrWk9GS0c5MUY4dUZ3UHBzQUliTVJnNTdxblBBNWs2WnpE?=
 =?utf-8?B?R2s5R1BjNEFoWXI3SVM3Q0ZVd2EwcENyRGpSTGg1K09PcHdRVXZYYnUxMnl4?=
 =?utf-8?B?ckRNNzhvNmZveXBudmFUREc4KzFwNFcxbzZoM1llc0pUZU51eGx5VHdveHE3?=
 =?utf-8?B?ZFZlS3cxL0pKbmpkYndCbUpJSUNtOFNBakx6bW11TjZuSTFOSEFZWGZKakdi?=
 =?utf-8?B?eDM5UlY3bXFjZkNGVUdoNmFwSVFOeXlUTmVKeTNGeE1XQ2pTd2N6ejNmZzdY?=
 =?utf-8?B?NktEVmJWeEJmTThCRXZ6b0hTUWxiZnpzL1NLSDhZSjFieVN5NmVnc2Y4aHFS?=
 =?utf-8?B?SEJ2Y0U2ODh1VUQ1dzlrbjlNKzNqek9WbEkzVkdHcGFoVkNnR1lld2tZZ3Ni?=
 =?utf-8?B?NDhaUkJFcjJ0SmpOTnJNd0V1dVAxa0gwc2FBYXBiaXlQVEFMcEZFTnQzdmc4?=
 =?utf-8?B?QmhNcS9IV1lIWkR1MmhDblM2RitQa01sT2trM0RCU1MvYTY3Qlp5TmZoaDlY?=
 =?utf-8?B?dG9IVmdzdjFPSHVhZEZRZlFJcG5wZXVxajZNU2NvaWZMTXQyaVJNRzY5RUEv?=
 =?utf-8?B?VEdqdFZZbkdEcHRlRmFtNVo5dWJLd09JVnN5dXNycWRWbHVMRUVRK1orUmVv?=
 =?utf-8?B?QjdxRXVkV3B1OEdnMEE0by9EVHBmbjNXU0V6em0rdGdoRnR6UkJNVDQvZ0d2?=
 =?utf-8?B?aC83dWp5TTU2dGFmb0d1KytBYTNyVWs2dm4ySEtZb3RlSnM5a2ZyNW1Kc0lO?=
 =?utf-8?B?Z2dSQWptVFNGWmJKdHNhME13V0dSY0VSclBpcGsyalN4ejUzMnA0SHhET1Iz?=
 =?utf-8?B?RWkvUmpUVW9zbTEwakx4MHR6Q1diRGRMMGtBNmdXTWdpR25sTTBLUFJZS0o1?=
 =?utf-8?B?NTJ4bnJSNW4rWFZZVjBadDIrWUJ4RnJ4TitkNzVTTEJHUkpkenBOY3QreFJn?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 041e4ff3-a8a8-48c0-fbfd-08ddaccc3f9d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 11:52:19.8676 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AeIxcCfy+12mZQUlfT8icauxHZHJpxrTbQ2LfHeCJRbFzBwifpj9nVHDomCIigT6gzm7f5+QEOszuJ8tn8hdfWp9f0skhlUNKttBYDpdZIY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8280
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

Hi Damian,

Thanks for reporting this issue.

To ensure the bug is properly tracked and addressed by the right team,
could you please refile it using the official Intel i915 bug reporting
guidelines? You can find the instructions here:

https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

--=20
Best regards,
Sebastian

