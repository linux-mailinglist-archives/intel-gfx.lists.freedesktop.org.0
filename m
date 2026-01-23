Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKwqK1hVc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:02:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D0774BE7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E5F10EAC0;
	Fri, 23 Jan 2026 11:02:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S4hIdLcU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332CB10EAC2;
 Fri, 23 Jan 2026 11:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769166165; x=1800702165;
 h=date:message-id:cc:subject:from:to:
 content-transfer-encoding:references:in-reply-to: mime-version;
 bh=QhUZpoueQWzlypGRKh7jFSvA7lBTrfAyOspc5JSXelk=;
 b=S4hIdLcUWJNqhL8HJ5Av/TPBNf+vhqfLLDCU8UsrmeK5HDQ3ByAN5mM8
 Kk3GZM77luDeFdYaBmzwrXYNAg4TuWTFcWvQ4a4AjxWmwhVtwMrgTUGB5
 vlDb/m7OUJJA2USus61Se4QxyQju5asuZQbJLldWRLe2GNahscN9hGHBG
 CClmDm0pEHQ8qWlS3AA8+jh2RpvKe1dX1VLbMJFuQjgdNU0HfEuV53LO/
 fo+JAlZejBwt3WCB6mLKDfLyD9kUhaMpn1HaeRy+pfKVmEYT6gQlaA099
 lozJ5HFNrId/Pf2zLcBAHDMg/3zXzI8Io33KWqHAlcM/xkwjhfu822aQh A==;
X-CSE-ConnectionGUID: 7GXd7Bn6QYeMAVvqbl+ojg==
X-CSE-MsgGUID: QSsnISRhQnaMmgA0YYh5Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="73006452"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="73006452"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:02:44 -0800
X-CSE-ConnectionGUID: ROs81EITRjOTIV8/zBteKg==
X-CSE-MsgGUID: HI8wv4nkQYy5ZBQ820meVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211123502"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:02:44 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:02:43 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 03:02:43 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:02:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V84wpjw/nYb6u7gacyt+gBObShrljT25l3Po4U+e0OwepZkqtWs/yPo5MlvQOqn/pxla26bYG6M0n+5V6StMNxFKzQzAxX+864sW87kZlEC5EbGh5m7vtMU4w/7drAWHwG/3pNw8sYc+TjyCANoxFBBAcz+ENV+kh8ujl1v/VZbxqcmMUmu1kr4aN6BLM64SQ6y/28Z8sd3n438YDBpRXSVnCdXThiIjhID8sxVYCyu7mqQtaRgY9s5eQhq262XZQBHgCJX/e1E2EBW1IPE56+14uYwA+Use7Tlp2Dq+4ng+QfYxPLUrvXmsLZMKWn3f7d5IgFp9JnQuPvfHUGS2tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/7V2UcMeTZ9fMSHB8e94awKXd25hiTfGcOXOa7j2LZQ=;
 b=N/wOThOHMtRcmWoN/1ktzRHfZqCd8w+hb1OkeSgo9UOD+muT9gyhjweskGtAa/ZbeHZdJLNZqt1yD5+hxGO0juG7uhtLz7OncLtGtBUhN5jbhJst1ChZD6rRjdNKW+JOx9XLzL2AzJ6ubyeB8i077an/qiCHPNreOc1f5vRnZakEeVt6zP7KYrF1VOq4FtiBbQCZZU0X29UMSUxZ4T1tf45QRlMa/pjBd/UVYSeTQJ3feqr0K0kpImpw7pwz3V9I8Rh5K8gLFnppTNSBd3B/KyYNtCICTV3jjbEoiIxHWPPpmOAMjatAdxx6EEXcrlMH39cb0H4hZofR+yxMVVbM1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 11:02:36 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 11:02:36 +0000
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 23 Jan 2026 12:02:30 +0100
Message-ID: <DFVX25OT5Y4I.1UO45LB0A5M5P@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Kamil Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t 3/7] lib/igt_device_scan: Include PCIe bridge
 upstream port if available
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <20260121114656.1970684-12-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260121114656.1970684-12-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA1P291CA0002.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::26) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: 2222f72b-ca5e-4919-d8dc-08de5a6eea8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V2tEalZFWFJTdU92M3VtaEtRbWFiaWJ4ZUhnSkxWRkJHREsyNm9td1pJZk1n?=
 =?utf-8?B?VjR0K0VJdmEyNmVNOGV3SUNxQlU3YWovd2JlekpjUnJteHFHa1FSM2lFN3FK?=
 =?utf-8?B?dTBPVVZVZ1dURjlyS2ZQWGJIcHZiUXh1bVM4WFZSMzNZZ1gxLzhpSlVRUHBM?=
 =?utf-8?B?TVVqN2c2Mm8zNmIrVlU5OE5mU2NDRzErZTFiNUNrWGFSSU5TMHlvZWNFU2Y0?=
 =?utf-8?B?eVE2a2R5SGhqL3NFYWlJWEgvanIwOHhIc2llSjhRUTdWMDBNV2x6YlZpMDE4?=
 =?utf-8?B?Yk8ycUZ0NmczeU5XRHIyZ2VITnRXOW1JUjZhdmlZUWRldXROczBCR0JYaUhT?=
 =?utf-8?B?c21IV0pudFRwM0RObHpFRE9XOSs3RnIxbS91YS91aStYS1hqYlMzK0plSkpX?=
 =?utf-8?B?ODdTTExCeURubGpnbWRWTzRkUUZzZXQ0U2EwMnNIeC9NZkwzUVVCQ3h4VDlG?=
 =?utf-8?B?dnlWeUhkLzVWdzF0T1pVNllXVW1PaEt3a0FkWGNLS21HWEF6L3JoK2wrYWpx?=
 =?utf-8?B?WldEMGgzSTBDTkl6ZHREU1ZhcDJpVDhlVnV6eVB1UE9QNzhSVmd0VjVSU0dD?=
 =?utf-8?B?akpzWFlxRy81em1lSTYrOVgxb3FVREI0cUtjemlmUWE1dStXbUliRHNHVUdX?=
 =?utf-8?B?Y1hTNzRIOVdJY3hHY21CVWdzYnVYQ3poS1ByZUtFaUVjQWNqdllmSHBka1Vz?=
 =?utf-8?B?VFFHc3lhRGdOalR1NFRaWngzZmJDNHcwOU9jSzduTVZvVEpHQjF0Zm1YQkVB?=
 =?utf-8?B?Q1JTY3lqTlR2K0U1TE1PdmpJTjBmTWVONFFtS0h3R0l3QkdHN2hIWEJvalRI?=
 =?utf-8?B?QVBHb1lDaWZiMTUvZE5OSCs3SVA4WERJL3Q4QUtldzlTeGsyMFVMaE9XWTlM?=
 =?utf-8?B?enNqVVVBektRVFEyN3MyMWlkTWJrTlJpQnplVHhnSjFrd25xdUV3bGdWMmtT?=
 =?utf-8?B?eVJzNitCZVFPbGN4Wldvc3ZBTkhHYm9Pby9kTWgwR2VROW04MnJkaHpwTTdE?=
 =?utf-8?B?OXNFais4NEkxejNNeHdIUXRiaGozL1Z5Q2hLK1FLU2NXS2ZWUkp1Zm5TWHcw?=
 =?utf-8?B?WlhJd2NuV1VUcWpUZi9IMVFPcGxMTTI1RVlESnlKRGMwVUY0dGdHMnNhbG5m?=
 =?utf-8?B?UWVobjlrTTZqUmNOVG9Ybzg4RG12eitzYmNtcjVPb2JVaENNZzNqb2Z5R2Ez?=
 =?utf-8?B?WWcyaVhFQmtBNmtBcW9rNThpUWlxMStPRlVHVGdmc2tZaUJtaHpDblU4RUNo?=
 =?utf-8?B?RmJ3QjBSRXNZOVlaZThpSGRMY3p3M0RJdXVXd09Ua3FFVEVDRU00RUpzajE0?=
 =?utf-8?B?YWlIb3NDam5PWC9kK3lJQk9SbDZXd29SQTJoQ1d2VG91clJDNWRFYkpiTERS?=
 =?utf-8?B?VHJhRTc0RlFOUE41L0VmdzdRbFhOK2lXSm5sN2pkdGorSUJ2V3VrMWltYlhZ?=
 =?utf-8?B?U0ZpU3lhMERERGxzK2labkNXT2RJdWo1cnNueWUvWU1YSU1xTmRzb1cyRzFE?=
 =?utf-8?B?YU5JVHJWRnpZeVNyTmFnQlhXN2dkbmdaUGZnUFJpazZHaGxWMlJlSFp1QUZq?=
 =?utf-8?B?cVlhdnM0Z0k4Zyt0LzdTd1F2bWdyMWNDSHV4KzRScHQrbWdvbVY0N25TN0Jv?=
 =?utf-8?B?NkdVc0tuM3hLbHN4WmMwR0xTbE9rRmFxVGkxelNLTGVIZDJHMTlYWFJ4YmZp?=
 =?utf-8?B?cmJzc3Uvczdpbm03emV6eE5GaHpLTDYvWDhnWjczNXJZb0M3OHRvK1AvVWFz?=
 =?utf-8?B?QVZCY2VtcC9jc3dVTUV1SW1ObHUwM3ZFOWoveHNwQURmVVBxSWl4NWVhN0Jo?=
 =?utf-8?B?R01nVm9qSFBCanhVVlZQa0RWU0haYmFpdlBtNkYvc2cwVnpUUE9WcnJ5SGdJ?=
 =?utf-8?B?UFZHMXFmb2wvWVhWTjZXVlJQdUozTEhOcHY0ZjdNUVJldkxUWG0vUVNGbUQ3?=
 =?utf-8?B?NWZUQTc0cDVHbEtxZ2IzZTRtYzRRN2hjV3Y1QVI2V2NkUzZpU3BWREFRMThp?=
 =?utf-8?B?OFkzcFc3MWxNN0RleFFSZEF5YTd2UFFDK3JKSG8yU1R2VG9VRnhvbG5EM2NQ?=
 =?utf-8?Q?JO5y0D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b09uRHQ3ZzVWNTlLZWFBR2RJRnFFN3JsejBsS2dUVUIwOWFkWnMxVDA0elRZ?=
 =?utf-8?B?U1BkLzltUXlIM1lVbjhhNXZ4SUwvb0JXalBLSTlJR0I1a0p0WWxUVUNpRFZN?=
 =?utf-8?B?czBRck41MnpoejBtNVFnZFpLQWxVUWVQcmpkOW5UNFJlVDk2alNHY3pVZzg1?=
 =?utf-8?B?RUtqQkx4bXR2K3ZPL0RCKytWWDR2ckdXTm0rYVJRZGEwTjRydTcrVDlUMnZo?=
 =?utf-8?B?ODUvL3FIT256MlJzYkd4STVwdVBjLzBEUmNEeXVwR25TOXgyVzEzMDY5UlM5?=
 =?utf-8?B?Y0JleFRLbFRrM2V5Nk9mcDdqdktQM2NRaFQ3SVF5MWllWmdJQTQ3bjBRcnlW?=
 =?utf-8?B?cXIzb1BWQWhCRCtYWnlROU5uTGxWK3VMRUdHRmJZZ0J3cktSeUlKMEkwTVhp?=
 =?utf-8?B?OUg4b1AwTjlneTBHL0R1L3daRDVqcFpyL0txcHRZZ0ZvRkFLbE5WSzQrS2Vo?=
 =?utf-8?B?aWh6NHdmTlVVaXp0aFBPcEkrWm91SWhzcnNmYWJtdFJKM0RqQ2t1QXpvUm5G?=
 =?utf-8?B?cXQvMVoxMk02UVZsNlhDZ0xka3VvUHc4ellDUENxbERMdDM2R1NJRTFUTmNV?=
 =?utf-8?B?Y3BpYXNCQVcrdENrUWVoT3Vvd3U2YWFabklhUElSZHJMZXI5MTRORzdXTG9B?=
 =?utf-8?B?cU1jcG5qYnpKR0ZoQ05DWWFORGN4NkhRTXBzSkJXaGJYTGZpSFBZZ2lHUENI?=
 =?utf-8?B?STkxc0loSWo5Ujlyc3RPWVZ0TWFQMEtOVkxnT0FEaDZyVVhWNUVXUmw5blh6?=
 =?utf-8?B?TTkrYXVNNzRYcWZsaC9VQUZONzM3T25JSmcvejNvSHhFUmMzUHptTkhqRFFV?=
 =?utf-8?B?WXZXSHdqS1dzRW45THhrWktIZVZLQi9CS0pVMlRUQ2k1SjcwRWVkZW9KcklB?=
 =?utf-8?B?NGlJd0hpS0s1RHBabzNucXBoakVKUGljQkRGOWJDMHUvcXFnNzNUcVhLSGZi?=
 =?utf-8?B?TVVvanJGNTJLMnViY3g2UTRqMnpDa3I3ZVFqUFZ2SUpTWWl1dXZKWUlwNUVq?=
 =?utf-8?B?T05Zd1ErekQzNEhoYjhhZEV4S1U0SGxlcUZ0YTJFRldXUml4MXBITGhNYzhv?=
 =?utf-8?B?ZEJTNEd2RnhEaDg0SzFuSGRqTW42cmxuazdRNy8vT3FJVTVldDQ0UEQ0Sjdp?=
 =?utf-8?B?RHRHcTFhSDRtM3RrMG8wUCtXa3ZHSjIrSDFlYVdKWEVyU28wSVZabHFUYS9O?=
 =?utf-8?B?dkRTL1YwSm0yRDZlMkYxMVp4YjlWU1diUWY1RExlUGt6aEhCeGxIOTZuRHlz?=
 =?utf-8?B?ckxwdFNCbXBWUzM5emdIZ1JVTjF3MWJJWGlNdWlQemNHMFdSYmsxdmxyZHNI?=
 =?utf-8?B?c0dIRDNJS1ZQaEtuQzI4NVpDQ1pleHY4ZFRhWE9ZdnhOUTBkdEx1QTZqc2Ev?=
 =?utf-8?B?MmxhQ2tQanZoVjg1akFzelRaY0xNdUh2bWF1S2NxbElCdHVkSjYxMWpGR1Bu?=
 =?utf-8?B?V1ErZkdKQWFOT250NjQ4TTZ4S1NCdHAraWdHY0hMWnp3WGFHRXNTdi8ralRu?=
 =?utf-8?B?U21iMVllamlldmhSZy9hTERUMEdxdFQzYXAvQm9xRHN0b0s4S3BCcmc3QnFl?=
 =?utf-8?B?cVpiT1cyV0g2YSsra0JpMFhuSFlpMndjQnJ0SUNrQnZXTkNFdEQxbGVKdWxC?=
 =?utf-8?B?K1VabFAwUkM1aHhCblRhREVrYXB6bjFOOFBvZlJRbjh4STBqazBjK2hnU3Vm?=
 =?utf-8?B?VVNVU2ZQUEFjVlMxSm8yNHlNSFVoejVtQjF1L1AvRVRWcHhBSUNxMWMvQzRx?=
 =?utf-8?B?c0FVMERSN081NFc2b2F3QjNNQmVhamorRzVCMmFhc094ZXlNNnBoUjhEbito?=
 =?utf-8?B?R081RGNnVFIva3JYTEtVb0dLam1jaHJiQjdSMmtkL3MxZ1VIcTRHRURacVpx?=
 =?utf-8?B?RDk5SWdvMXR4dElHTkxPSDdhdk1udUhKdHgzUGM2R2RqQjJZNFdEQXBRbXpy?=
 =?utf-8?B?dU1sK3p0MTAvaTRNT1dHdU01M2FjK0d5WEczTzl4NXR3LzgwcTRxRjZKN1VI?=
 =?utf-8?B?akJ6VmtpUGxMZy9lcThNWnNJNEVtVnRuelZTRkFJT2drNU40RWY0SHRVMEYw?=
 =?utf-8?B?bWUyQm0zV1BQMXpkNFM0bE5wTktGaDhmN29CT2Z6dCtKc2djNXZaNzd5RXFQ?=
 =?utf-8?B?UzhmeTJlMzBrWHNURmxqdjB0TklyWG4wWnNDaGRpSzNQZjFPNG9YVmFjK1ZB?=
 =?utf-8?B?WWR3VmZlMEVLenRMZ2tuTVA3RmdyS1h3d1l1cER2aWhXM3A3eUs4eEttaDc1?=
 =?utf-8?B?RTZRVVhCcW5sc1NBdTZPWEZOZU9QekhWcTh1MnM3bnY2dEM4SENOL25JSHln?=
 =?utf-8?B?MGRVRnhzYlVMSUt4bGUxNFRVVit1TnlIdW96b3JSSS9sZUdtbDc5NGVzRWNp?=
 =?utf-8?Q?mfsrxHZFhyvkhiOc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2222f72b-ca5e-4919-d8dc-08de5a6eea8e
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 11:02:36.2139 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hOobe5pLOJ3kf2vwkx65/SlMUVcPZey7kTXcm2WBCiJGvIABp6jdLbT5jpPdwaPXnYLfbgeNcXG7roouQniGCNLnEXEpv8YJ1Vf6kMSlDro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
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
X-Rspamd-Server: lfdr
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
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,gitlab.freedesktop.org:url];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 22D0774BE7
X-Rspamd-Action: no action

Hi Janusz,

On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
> Users of Intel discrete graphics adapters are confused with fake
> information on PCIe link bandwidth (speed and size) of their GPU devices
> reported by sysfs and userspace tools, including our lsgpu utility.  In
> order for the lsgpu to show correct link bandwidth information, we need t=
o
> identify an upstream port of a PCIe bridge that sits on the GPU card and
> get that information from that port.
>
> Since the tool uses our udev based igt_device_scan library for identifyin=
g
> GPU devices and printing their properties and attributes, modifications
> that we need apply to that library.
>
> When scanning for DRM devices and their PCI parents, the lsgpu utility
> requests collection of all their attributes.  When running in this mode,
> also try to collect information about upstream ports of PCIe bridges of
> discrete GPU devices.  Once collected, the lsgpu utility will show that
> information automatically while listing the devices.
>
> While IGT tests are using pciaccess library for processing PCI devices,
> that library requires careful handling in order to avoid collisions among
> multiple processes or threads potentially using it.  That protection is
> implemented in igt_device with help of IGT exit handlers. That requires
> linking with full igt_core library code, while the lsgpu tool now depends
> neither on igt_device nor on igt_core.  To keep that independence,
> implement the new code around libpci.  With that approach, refactoring of
> IGT use of pciaccess is avoided.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_device_scan.c | 73 +++++++++++++++++++++++++++++++++++++++++--
>  lib/meson.build       |  2 ++
>  meson.build           |  1 +
>  3 files changed, 74 insertions(+), 2 deletions(-)
>
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index d3a2ebe8d2..34c7a8131b 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -36,6 +36,7 @@
>  #ifdef __linux__
>  #include <linux/limits.h>
>  #endif
> +#include <pci/pci.h>
>  #include <sys/stat.h>
>  #include <sys/time.h>
>  #include <sys/types.h>
> @@ -909,6 +910,27 @@ static struct igt_device *igt_device_from_syspath(co=
nst char *syspath)
>  	return NULL;
>  }
> =20
> +static bool is_pcie_upstream_bridge(struct pci_dev *dev)
> +{
> +	struct pci_cap *pcie;
> +	uint8_t type, dir;
> +
> +	type =3D pci_read_byte(dev, PCI_HEADER_TYPE) & 0x7f;
> +	if (type !=3D PCI_HEADER_TYPE_BRIDGE)
> +		return false;
> +
> +	pcie =3D pci_find_cap(dev, PCI_CAP_ID_EXP, PCI_CAP_NORMAL);
> +	if (!pcie)
> +		return false;
> +
> +	/* GET_REG_MASK macro borrowed from pciutils' internal bitops.h */
> +#define GET_REG_MASK(reg, mask) (((reg) & (mask)) / ((mask) & ~((mask) <=
< 1)))
> +	dir =3D GET_REG_MASK(pci_read_word(dev, pcie->addr + PCI_EXP_FLAGS), PC=
I_EXP_FLAGS_TYPE);
> +#undef GET_REG_MASK
Instead of copying the macro, we could just use:=20
	type =3D ( pci_read_word... & PCI_EXP_FLAGS_TYPE) >> 4. This seems cleaner=
.

> +
> +	return dir =3D=3D PCI_EXP_TYPE_UPSTREAM;
> +}
> +
>  #define RETRIES_GET_PARENT 5
> =20
>  static struct igt_device *find_or_add_igt_device(struct udev *udev,
> @@ -948,18 +970,55 @@ static struct igt_device *find_or_add_igt_device(st=
ruct udev *udev,
>  	return idev;
>  }
> =20
> +static struct udev_device *get_pcie_upstream_bridge(struct udev *udev,
> +						    struct udev_device *dev)
> +{
> +	struct pci_access *pacc;
> +
> +	pacc =3D pci_alloc();
> +	pci_init(pacc);
> +
I'm not entirely familiar with this pci library, but is it necessary to ini=
tialize it
for every device? It might be more efficient to do it once in scan_drm_devi=
ces.

--=20
Best regards,
Sebastian

