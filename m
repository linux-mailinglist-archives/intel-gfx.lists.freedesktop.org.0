Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B587CEA0E0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 16:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08A6F10E917;
	Tue, 30 Dec 2025 15:23:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ba6BHTJ+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC9810E916;
 Tue, 30 Dec 2025 15:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767108179; x=1798644179;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=UwNMhmTMRmttPJOVhBuWzt7WxtY/BsIktyZJkAmmCM8=;
 b=ba6BHTJ+vFEgZ8+g/YkJw+CUYXZheLfHQOLXKjGW7UxrE+d9OTC1r7px
 OdVYnF6G43MmJcl8M3vYlatQuH7Dl8k75AwfKonYCR32LUTzhtH+GcDJu
 x4xnG4RmqmZQm19u7CqKprFQG0QLmuawxjcEC/L4jcaXIhk3bxtVIVwp3
 2z/xRzV9GCZRl2PBX9NwMfF9lvdyxFJUjivyAiKgDFgRf6D9Zv0XuDjWY
 YF27+moK7WTWOeM/w50QAgPx/8BQtfzFBSTqxIxwVrnXO3JrNykT3UZUN
 tUraHWA6jf70GFLDZObcae6Y63DWnP6gRMs4GTdJpmcFeE9TZIkyjddjV A==;
X-CSE-ConnectionGUID: kz/GVtYmQ5K4qG9lnRlN5g==
X-CSE-MsgGUID: tNJ9GNbGTRqCRWFUaX3t7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68638945"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68638945"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 07:22:59 -0800
X-CSE-ConnectionGUID: /bH0jhj9S5SM++HGxB5fng==
X-CSE-MsgGUID: bbQ8VeQNSbKD5EPPtIKkEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="231907744"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 07:22:59 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 07:22:58 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 30 Dec 2025 07:22:58 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.34) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 07:22:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AgpX1W+CDWvywaIDACmdzdivnMnvGYViPRXzSJAWtjcfwcyGcKadFazrXfZFWGMiJsmMdJSbDuZCNoqCIJp3YiAqV3hAIqByxHt6PfvbSqUlUGuVmf5SfPhI8tanOZXN3NcPDwwnD6FCh2HtvEy61eYTB3pST8pTAVXVQp6Kclj/Qb2bzIoKIOaxNnt2EwW9zlawoNorOD6CAfjPTVsSlzFoQi0+wOhpvcMuwXmrqQuV+7+MuvhkAG8wgGQgqBwjaDhX6jQGpGon8tz74MqWuhrH7jrw+B/gySzg7DTaGz+XZa6C2VI14LVp3CV8UWYAXXx/5UXcu4pS86xz6u04Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uTLTAqIFSbgpg3idyGFxPm9W1xkI71hd6p264Sig4xk=;
 b=lDGu6KuRKLYK7mZVLgk4aug41Y5Aa/G1GD5XvVMRUPV4jymgww8HJlXW+VqS2mHZxBrE7xB1P6cNzUsylahuRiCkmoXkyjynmqD4hwBGPkPyMRGkJ7Wj+wLWbVq2ui3DTSF5+l00je1+FUDXkrNwGsZbozCN7Tukrss3cpI/zkOyh63qYZP89al/jC7qn4UYUPx4jnUtNifShu4oFdPxuWo4qHHWvHhdJM+BrwM2WXyw9fqczmyeXpuRZh5O0Ty5T8MWDzcYpzkUmpVXy2M1fgSlA0Md44miWsmY+ogOxuuKBawYh1G/1t9Y7hG2CBTpsdB806WfTUi8RDce9qVjxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7338.namprd11.prod.outlook.com (2603:10b6:930:9e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 30 Dec
 2025 15:22:48 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9456.013; Tue, 30 Dec 2025
 15:22:48 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251230083142.70064-3-suraj.kandpal@intel.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-3-suraj.kandpal@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/cx0: Move step 12 to enable clock hook
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <ankit.k.nautiyal@intel.com>, <mika.kahola@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 30 Dec 2025 12:22:44 -0300
Message-ID: <176710816443.18661.15779385817780893127@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR02CA0020.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7338:EE_
X-MS-Office365-Filtering-Correlation-Id: 13f02aec-49f4-4301-e46b-08de47b74a3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUpEdzVDVThhTXQvdy92MVBkK3V3YzQ2Q0Iva2VrbjV6Z3FvcjJ2eXFIQlZy?=
 =?utf-8?B?RzlhWHlnbFJQRnFlb3Q3YUJwbTNabjRtNFhxUk5wVVJrako0c2RJK05hNXhR?=
 =?utf-8?B?YWoyNGxtLzhzeXYwVStWcmdRNHhMcnZacVNUb3Z3RXVZZmpXdlJaSEVwYzdU?=
 =?utf-8?B?NnpWS1Bhb1c3U1FQeC8yeGQzbC9Sb3JSdGpHUHh0dmc4eGI1TWN5dUpYdU0w?=
 =?utf-8?B?OFRLNmc5TEs1YU1GUGJTVzRheGE2VnR3V2tVWWN4c21lSnVueUM5ajJMSExp?=
 =?utf-8?B?alg1clpRM2RwbjRyNlhjK1ZTa1J0TEl4R2pBZ25tUTE4L09WQVJGUm80bVc1?=
 =?utf-8?B?SjNpc0lFVHlSZ3dTWjlDYWo3U2N3OW1GZ01sV000eXpHd281T1p6dFF2Zk1F?=
 =?utf-8?B?SWhkVm9wQ2dlNGlPMXJRQ3pTMTVVOXRPT2h3UzFSbDd4ckpsV2hqR0NNTlNY?=
 =?utf-8?B?cTFaY0gxaHdvVlFhM29kZjRraTJhbGwvSFgrUnlENzZkNXNXbVk5NmVRYzR4?=
 =?utf-8?B?TXRKTVp4NmlHRmpZeGVvMXVaOGFDUGJYNURReDQ2Rm9reVVpSTVLQTRSRmU4?=
 =?utf-8?B?d3pGRFl6TTdzN2trQ3NPYmZ3Z2VYUkQvTklxWDNxdEl5azVEUHRFZU15cUF1?=
 =?utf-8?B?NEZlOWVVcHdZU0YxRGc2ekh6Q3VFRzdZMGVuUGtUY1B4SlRjQTBMbE5kbEp3?=
 =?utf-8?B?QTluMytDMHIrRlVSUXhFV0EyY1NqR1VqeVpKajNkdUpqT0xpNC9QOHlpQ29y?=
 =?utf-8?B?cEsyYWRaUUZHQTRrTkY0VE5abzl4SXE3MFh1TzVycm1jallpTTFVZ2xNR0xN?=
 =?utf-8?B?Vm1COW0wVE5PQjB2ZGNxeWg4eXFhcDUxbFlmYURkTGpVb0ZTcERsSGczTzUr?=
 =?utf-8?B?bE9GL3NNNkZBN0lsWElOZ0pGRFNrRHBURjF0M1p4UkNaSldpRUJmVjVkc21l?=
 =?utf-8?B?RzVOR0FMdzE5OVBaakQ3dDY4Uys2US93Z01aQU8vWXFWbEZhY1c2a0h1cktq?=
 =?utf-8?B?c3FhdUxySzNmTFBLUFRiblVhUStUYy9MMUEyc1o2Z1Z6cE9obXVDZlhEWTFy?=
 =?utf-8?B?N0dTeWZkYlNQRUFpMzJEYTAvMHRIaDB0UU4xRHV6L2VyU2tKSzBweVV1a1JM?=
 =?utf-8?B?NGJIdVhvUXNhSVdIODJieFNmSVlTR3F4K0dVRkFyNWVFdHBIQWlJajJRL2k5?=
 =?utf-8?B?NHBUcitEbUFERHpFMTBESGNvVWdDaDE4U1EwaEg0bVlldHFyZUxhMkNtSU9y?=
 =?utf-8?B?WG83YmxHVXpFWGtkYWFWNnVZVDg1bnFhZUVHYXVvcFhwK1htNjJtZzkyNFcr?=
 =?utf-8?B?dDdHVE1POG1wQ2Rqb2ZYU0ZYUkJXNkg3UFI4aGVJc2g5azNXczF2L2hsMnRT?=
 =?utf-8?B?dDY2K0tkMTM2QUp5V1lSWmZ3a21IQWxEMnRFN0FiYk9sSHUraEl3bm9OTitH?=
 =?utf-8?B?NDA2SCs0WmNzcDhKbjg3ajdNY1BISEFlaXFkTWF5SlVvRjZkOTFzaXk5eTFr?=
 =?utf-8?B?Vm42Z3dUNitMeDRIcVJHdTl2Z1oxUGp0MkhyNjZoTmt6Yk5pK2U4RDYzdkMr?=
 =?utf-8?B?WmJiYmpMSVJoK0t6elJNdG5tTW5nbWx5U1ZGRU03MnZNZUo3aTNBeldtT0c1?=
 =?utf-8?B?ZTdBK0wxOHhWTVYrT3pHUkN4elNMYTl3QVJENmdyd01DeURyN291dS85bjFm?=
 =?utf-8?B?QnBPTDZ5dXVQWnNUUHBxYmVUVGwxQXB4WEVVOW1FRVVvZTFTaE93VUpvdmty?=
 =?utf-8?B?VCtYTmRQaTFLOTlIKzVZa1ZDS1kwTE1uZmJ2MzVEcG4xMmZHZWw3SXZnbWZI?=
 =?utf-8?B?WVZTZTg0TStHN1FWYkZQQTNmVE1MQUMwNTduVlBOa3JnWG5Yc1ExcG9FVXg0?=
 =?utf-8?B?NkxWclI1N0RCRk02TWxpRFQ1ejIyRjRPWGdFY3FtRklJWEIzRzQxZXhBN1BU?=
 =?utf-8?Q?pZKxLsHJyCn2MAVwAkooqAVCRHzzstxb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjQwSUFqMHd1aDZJeGkzaSt1QU9GMk95bnA1Q2lWNlBEMHZhdUFKRklpaE05?=
 =?utf-8?B?cmRBRWF3b3FCSlRtWUhLc09zcCtXQXMwQWhkTUxhUEJLYzR2Q0pYNGZmRHZX?=
 =?utf-8?B?akxCR3JKUXRSVnpOY2F2R3crWDBuZDZyOXpaOWhPOExxdFNoWW9XczVvM2Vh?=
 =?utf-8?B?SmdoVlhZTTIrTDQwbklpaFpLMmtSWjJ2UHltMll4SW1wVUFsV2VEUGt3QW1h?=
 =?utf-8?B?UThrY2t3VzRvTmxiV2JrMWh2TG16eEVIVnF1dU5GMEczbFlCK1BXQzRXOElN?=
 =?utf-8?B?NXFjWGNlK1UxS0FWbkRyajhEdkxjemdqNG5sNnpRbFI0VjByWWdNUjJQVkhK?=
 =?utf-8?B?Z0dxNG9SRUZQRjVRVmdzMmlRVVVKWS9XTjB5aGZRMWhKVHNMK0FIWUNjNHNt?=
 =?utf-8?B?YUlKcG04N1pLQ0dzZnJFc3d0NlhKWENWL1ZWS1oxa0VYYXNRTzBXVExXT3BN?=
 =?utf-8?B?ZzRZT3JuT1dISERqQzltNDNJMWxCcERYalRzNEhJZ2IybkZtQzdCU1RHdHBy?=
 =?utf-8?B?c0JQOXI0TyttYyt5dElYYWdiN0pZbndiMUY4MXVQTzlXekdyVG1xOWRGSVhR?=
 =?utf-8?B?UW82V3llS09QVHh2MU1tUFpJaUZkSmFWd2NXaFMrVnVrbzRVeVl3WmdUTXY4?=
 =?utf-8?B?R1JYTjN4SEoyN1pjSXFTNnFSc2NscDZ1aU9Xbk02c2xmZVhnOHEzbXJTN2w5?=
 =?utf-8?B?UEYvNG1KM0lnZHlYQWJWU1VERmxKdHFjMWxDTFJNWHFIeFArRW9EaFZqTDV0?=
 =?utf-8?B?UFRWdSt1aHJhekM4QkJOd1hmSFgxNkFjcTB2R2FLYTZDdW1za1c2emEvVk4v?=
 =?utf-8?B?VGwzV0NwZ3JxZUpTa0NsektKN2toTjFUOWxoVit3QXMySE40N3B1eWplVDlx?=
 =?utf-8?B?T2crMzBGQWNOemdtNGhOQkxkdW9CR2o3azJrTHp4TDNIeXg4TlhuRit4QXZw?=
 =?utf-8?B?RTZwSXA1YXZ3S0pFRVp2RkNLYVhjdGlYcC9rVWRpMlc3b2d0RlBwMzh5R2R2?=
 =?utf-8?B?Y2crY1Q2MnJvdWkxMSsvaUhqUUYwSUV2aW5UdktVNlZKT1hXaVkwSEduNERV?=
 =?utf-8?B?QlR2SS8vWXV6MUM2TnZxRmVyS2d5MWloUHZvbkQycGZuM2tmaExJb2JpT01J?=
 =?utf-8?B?UEZ6OGc1ZnI3eXF5cW5IcEdha3lOVmtiUVJvZUxycFRrUTVwU3NnMjZ6S3Za?=
 =?utf-8?B?aCtJbXFQdjR4c1JOdUw1WDZEUjZMS0lXenB6cWV0VW1OWmZzalJnR2MvcGda?=
 =?utf-8?B?MFQxbTM2dXdtQnlPZzZOVGx6YnFtSzN4Sk9ZN0o0Y2xFMWtYWGpWMUFTUW1o?=
 =?utf-8?B?VmFDZlFYUVkzWHRiUVlJZTVGUE9WM2VCWGc5RmtjdEcwcDVLVW80ZFNlMVVt?=
 =?utf-8?B?aVZJMzl5VUYycGdsN1plVGdBQnNGMGlsYW8yMC96ZkswQTIvVE0ramZOd3Jn?=
 =?utf-8?B?eWoySHBnSnA3L0hQbGtudDVWY0RMSUJjMEZhb2Qxak51TUMweWQ2TmxLZlpz?=
 =?utf-8?B?VjlIOFdZaGQ3dkQvWUwycW5EdFBPaTV0elVVTkR1enQ3b2VyVWNaVGUwQmtH?=
 =?utf-8?B?a3NSOU9rMUt2NUFTSi9UWkFTd2hLdml6OWFVOWJ4VkxHUjNRZGt1V0g1MDJt?=
 =?utf-8?B?MWg1OEpPQS9EdU50anNNNWpsc0thOTB2NlBoczdlS1lQQmpmMHd0T1VCZkc5?=
 =?utf-8?B?WDBTRXRqQUk3SUtSQ3pvYVNUTVdUV2xzcWh6eHk0aTVGZW9Wam00dTlKcG4z?=
 =?utf-8?B?UTI4b2hYQmpCMTJmVWhMbWp2Qk1aZDVHUkdkQkxSZ2ZvU1M0NEZvM0VmUDZa?=
 =?utf-8?B?UzRVSWFlbFc1QWVzQjFlUG9PTW80U2VYTEcwcjBleUVKOFA1OTdrT1ZlZ0Vt?=
 =?utf-8?B?SjdoTHNKbVhNNHpzOFE0cmdMb0NMS3F0cWYzMTVGZTAxajZFUC9BQVEreTQz?=
 =?utf-8?B?VmtUMVlYcmlxUG1tRHhnSzlQREFWOStzN0xpTHNwNDhPam1RSWw3aTZVN1BQ?=
 =?utf-8?B?V1ZJaitWbDdIcUFEemVMOUszeVRBbkNCMWFBWWROWXBFamErSS9pUDJYcVU5?=
 =?utf-8?B?LzRoUTZWcExFdUZPWnc4MlRzM1pqUmhOSjh4d1IvcFFVQjNLQ0l4TmwyWVlq?=
 =?utf-8?B?WFYrNVY3b3hudGlXTThHZHVwa2FXcFFHNkFjK3NiS0E2cGZ4emN2N2p5OHRL?=
 =?utf-8?B?U1Fnamg0dzhqcjB1NmtKbE9BcnNrWHpNZHY0OW1RTEdWMUROL1Y1Ky9RQVRj?=
 =?utf-8?B?MjBFSnF5NkJDTXBwM0pCUlZ2U04wYm5heGZJRXNjeU8xNkpYSTNuNFNiN1p4?=
 =?utf-8?B?NkIySHV6ak1hREFoaUhGc2IvNHhabkhpU0lBNVQvRE9JdFM4T3Qwdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13f02aec-49f4-4301-e46b-08de47b74a3d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2025 15:22:48.4416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U1Y24Snd1/370qSBeADYQZl1rtAUSrDftrXtq9x9BiFZAL2/hWbD1Z+Ze0FmhGeeh3MyRbhVX6GjkXfeBEWmKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7338
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

Quoting Suraj Kandpal (2025-12-30 05:31:41-03:00)
>Move the step to toggle powerdown sequence change for HDMI to enable
>clock hook where it belongs according to its sequence.
>Do the required changes to make that work.

This should probably be a squash into the previous patch?

--
Gustavo Sousa

>
>Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 37 ++++++++++----------
> 1 file changed, 19 insertions(+), 18 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index f3baba264e88..5edd293b533b 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3281,21 +3281,6 @@ static void intel_cx0pll_enable(struct intel_encode=
r *encoder,
>          */
>         intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_cloc=
k);
>=20
>-        /*
>-         * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
>-         *
>-         * Wa_13013502646:
>-         * Fixes: HDMI lane to lane skew violations on C10 display PHYs.
>-         * Workaround: Toggle powerdown value by setting first to P0 and =
then to P2, for both
>-         * PHY lanes.
>-         */
>-        if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
>-                intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BO=
TH_LANES,
>-                                                    XELPDP_P0_STATE_ACTIV=
E);
>-                intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BO=
TH_LANES,
>-                                                    XELPDP_P2_STATE_READY=
);
>-        }
>-
>         intel_cx0_phy_transaction_end(encoder, wakeref);
> }
>=20
>@@ -3379,7 +3364,8 @@ static int intel_mtl_tbt_clock_select(struct intel_d=
isplay *display,
>         }
> }
>=20
>-static void intel_cx0pll_enable_clock(struct intel_encoder *encoder)
>+static void intel_cx0pll_enable_clock(struct intel_encoder *encoder,
>+                                      const struct intel_cx0pll_state *pl=
l_state)
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>         enum phy phy =3D intel_encoder_to_phy(encoder);
>@@ -3412,6 +3398,21 @@ static void intel_cx0pll_enable_clock(struct intel_=
encoder *encoder)
>          * Frequency Change. We handle this step in bxt_set_cdclk().
>          */
>=20
>+        /*
>+         * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
>+         *
>+         * Wa_13013502646:
>+         * Fixes: HDMI lane to lane skew violations on C10 display PHYs.
>+         * Workaround: Toggle powerdown value by setting first to P0 and =
then to P2, for both
>+         * PHY lanes.
>+         */
>+        if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
>+                intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BO=
TH_LANES,
>+                                                    XELPDP_P0_STATE_ACTIV=
E);
>+                intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BO=
TH_LANES,
>+                                                    XELPDP_P2_STATE_READY=
);
>+        }
>+
>         intel_cx0_phy_transaction_end(encoder, wakeref);
> }
>=20
>@@ -3485,7 +3486,7 @@ void intel_mtl_pll_enable_clock(struct intel_encoder=
 *encoder,
>         if (intel_tc_port_in_tbt_alt_mode(dig_port))
>                 intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_=
clock);
>         else
>-                intel_cx0pll_enable_clock(encoder);
>+                intel_cx0pll_enable_clock(encoder, &crtc_state->dpll_hw_s=
tate.cx0pll);
> }
>=20
> /*
>@@ -3808,7 +3809,7 @@ void intel_cx0_pll_power_save_wa(struct intel_displa=
y *display)
>                             encoder->base.base.id, encoder->base.name);
>=20
>                 intel_cx0pll_enable(encoder, &pll_state);
>-                intel_cx0pll_enable_clock(encoder);
>+                intel_cx0pll_enable_clock(encoder, &pll_state);
>                 intel_cx0pll_disable(encoder);
>                 intel_cx0pll_disable_clock(encoder);
>         }
>--=20
>2.34.1
>
