Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEhMA1cEcmmvZwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:04:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 827A665B25
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117FB10E052;
	Thu, 22 Jan 2026 11:04:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T7KqWnKZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2462C10E983;
 Thu, 22 Jan 2026 11:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769079892; x=1800615892;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qnWQ8dZE8VM/Jg68Ccyns1KjE/A61SpbacDZFpOnn8U=;
 b=T7KqWnKZIbJjAp3F29Oc3bNyLH/g0mQt9vrLYsodo/OEwQU2/586o0a0
 7qHqekTc+kAeD1B6/dt2eayHtROpanktqnPpCErPs56c+COvPYUd2ULaH
 ZXPyTTIkMTFqGF9Wkj15cR2kaLOOms+qEk8jOJeLAWayxdqr+NYbGveLl
 /i56gUmP7+jFogatIv+dPmKPgKEegyGJGtFogz5R43jWNrjNFMlEwLlvd
 mYwAfJKlS7jISt1d4ofm3NQKyTzRZueyL4ZnvvQN9w+rMlUdqlHewjSdo
 kXzO96xUcoCHruTe8u8M2HGSFfFu1XH9Sv3W0u9MfED7E7pwhKawWq3KR g==;
X-CSE-ConnectionGUID: uv63OARqQUOtt1nmRmFTBA==
X-CSE-MsgGUID: jaIiaGO4TEKyccwhhqOFDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="80622444"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="80622444"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:04:52 -0800
X-CSE-ConnectionGUID: Z/zxxg2eRaK9+HpJMRKt2g==
X-CSE-MsgGUID: C508Pl93SVGey1YvABigkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="244312430"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:04:51 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:04:51 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 03:04:51 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:04:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xWLZD8w5YwWYm2rJ3DXmCiDX5q08I6nOfBnQVsUsVfA24R6cCLohW8nDuAGEE7tScRbU9ei1b+yBbY+3kEd4cOW8bq5LniecO9cZ0Wdr+se4VOmtMjnmbtyvj9FMnBC43a0sL12auRsX7DPNtDtEIhmb5+wFSNkGWriAkTV0aHuMTO6ep282ruL4B8gypIiJL2UpGxLLjxq1FIcfetWc5vop0P6YtBHpL6NRMlVE3XfwBvqyauKyVgidzY8vtrAcsuw7SuSP45Tcu6xLC8GDTBsqwwX1Odg18h/7LC0UxzHQy/s9i+0IGMVQthgDkpK7injE6zvoV4q1X2oxz1b2Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=shYlWJIAkdJnIXaVSdjKw8hGif2rAW010hG62/fa3o8=;
 b=Wv7hxPYo5Jcu52LtWcednCrfMyhsIkz0YIYPP7ImLbXmg1lnwzoCZVLUtQYE69lwAgg2WG4U29ZlpqyYqV4MkMyGqXAJe2Wim+vePuP7c8h6J8cgEic5l9d06AsnDq/e7Z7OCvri+CsyLxRowbqV4UB628HrttI/xWAEcvyC8KQ1gBz/f73LltoNd57Oj0TPU05uVuHLzQpvIcnLn45YP+Uj9npzZC7H90Xllpw1EDn3Tb4YjXfYUCPw7E5tBpbYXJFoGrimtusgoUxnCWEBBl1dpMl0Pus0iJg6npIrxcEs+jR77xTfixLwY43XTJxlQLKat0Gn/MxgluuWbhGYzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ1PR11MB6201.namprd11.prod.outlook.com (2603:10b6:a03:45c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Thu, 22 Jan
 2026 11:04:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 22 Jan 2026
 11:04:47 +0000
Message-ID: <8fb7e836-7ee2-4bb1-8f6b-abb7906b61da@intel.com>
Date: Thu, 22 Jan 2026 16:34:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 8/8] drm/i915/psr: Use TRANS_PUSH to trigger frame
 change event
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-9-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223105120.21505-9-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0257.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f1::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ1PR11MB6201:EE_
X-MS-Office365-Filtering-Correlation-Id: cbc14fcc-9ced-4643-0a59-08de59a60e00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHE5cjR1YnJpUWJ3TEpEWDM0Yk1UM0FlalZEazY3RzV1cU03bXA4UUFiSG8x?=
 =?utf-8?B?L2psNG55OWo2STd4TGZvdDQ3QWRUaElGTE5hOEQvbW1hQWYrb2JWdTMyWXU2?=
 =?utf-8?B?ak5RQW5pOXVSSW1KTkg0dVJNaHlESFhSa1FWQ3lnL3A2aktBZUFxZW1GV2xF?=
 =?utf-8?B?K0x3ek9wUnBkdW8yZjlJZytReVoyZHhucmJES2tyaUgyVjdNQnVaWWsxSzZy?=
 =?utf-8?B?SjFjUHF5VkRzY1poRkNlSUJWejFDaDZJOU9UcitDRmV6Nm1kWWYwU3dZQmJo?=
 =?utf-8?B?TmFwMVNmaHBQTitjMU05aVJ2KzFmMFFaVTRIdnFSSlpCK2s0bEhXa1RBNndO?=
 =?utf-8?B?ODErTlN5bW01eHJIdmVQSXcwV0hhTkFyb1BPT28xMHB4SnBaNHRUMklvSXNj?=
 =?utf-8?B?NVMzY3YyT1IrM1Z5SXpJbDZWajFWVXZmWFhCR1FGN1dYVmFrWENyYzRLeitl?=
 =?utf-8?B?TGMwRkJQdEpPRjhIR01IeUZkTzR0WE5qTWtUTzVIZlZqaUdPeUtLZXhoeEZp?=
 =?utf-8?B?T3JRaXpWNlNwbkxiTVlJTXJoVkNxd2JqY295c2FPUlRrUktjZWpUTFdnWkFD?=
 =?utf-8?B?SStvTklWby82eHVKTUYrakRBTlpDSnprMFd2ejIwUWhTcjdGZFFFSWsyVXQy?=
 =?utf-8?B?ME5TMG1xVWxjRVBNajVPSGFlZ05qRVVsNzR0U2d2SWhFQXVnSzFjQnFuVXNi?=
 =?utf-8?B?ZWRVQVAwN2pWOXRSQWV6c0t5Mi9aamdLMFp6ZnBrUTUydzVzZ0RiaVhPZUwv?=
 =?utf-8?B?aWJOenR2aXk5VitKVkd4eVAzVmx4bTVzeEQ2U05Wc25Nd2t1Y1BWb3djd1o1?=
 =?utf-8?B?eGsxSHBCcjNnUTgxbDVCY1NSN0FDWm9ZWlgxSEcybXpQNm9NTUZ0aW5KRGxD?=
 =?utf-8?B?Wk9yMm9XNFZiUWpxRlJGQ3c1WExlL1BRdGRDWjA4NXJVb25nUkQvWFJhT3lE?=
 =?utf-8?B?WUs2UWZHZTRLMkF5OHowSW9SdURpUE84anFIS3ZtS1VPaG9uYUNCZ1ZzUmd1?=
 =?utf-8?B?YTdSUTdERDNVSWdJZS9uTVNxVWxWN0RkelR2SGRETmprODRJelRXRzRMamla?=
 =?utf-8?B?L1hHaHUzZGdpM240NG1XcnZHUFNCdzhRcHk4OXlwWk1GYTQ5bTNEYnZkNmZG?=
 =?utf-8?B?TVhSdHc4M29McklnYk9UQTBYajh6QU1vVGJORGR2MjIyd2hoYWRrWnEyY29k?=
 =?utf-8?B?cWx3aG5HUlRKRkVrMnRnMUQ3RlQ0ckZ6M3ZJQkd5UDhGZ3owU1AzVTJTOThz?=
 =?utf-8?B?OEVaaWxKZDhEVS9BRXh5SVArRzFjdzBiU0NkRlIzd1dtMVJxWEtXSllsUkRV?=
 =?utf-8?B?WUVKTER1VERyM3JXRHk3dWpFVHFOQTQrZFZrYk9PcDJYSjNVelJ6aDRnTzdU?=
 =?utf-8?B?bVNZVGxKak9LZEFjQXNJbk1vUUgvMndpMDg3THgwa3k5eHJoVGxJR0ZoRWRC?=
 =?utf-8?B?UDlYdWtRQk85RS9UN0RTWkluUDFGRmFCcXNLeGNhUzFOY3g2d3VMYXVsdmJ0?=
 =?utf-8?B?ZWprdUF0b25MVlF5SFNSUGxYVkhBQUNtR0RKeC9qZEZ1a2VHeXdGNTJyMHNx?=
 =?utf-8?B?RkJNa3lZOFQyUkwvWnVaa3FZNk1EdytCd285OGxOTEFjTXJ0NDJ3RXE0amxz?=
 =?utf-8?B?ZkZmdVFJeVNOcytTT0xnQU5sV2kzZzhVNkd6Z3hNNDdRc2F3YlppUVJZNUps?=
 =?utf-8?B?cUN4L1RYb2JBT2pSV1JUMDVCUENzMm9zMzlzTDgyS1RXQUpNTFVyNksvdzQ3?=
 =?utf-8?B?S3R1QU5iTHJjQyswR2tPUTM2ZTVYaDdXQjV4a1ZZZjdZZ0w2M1FCRW50Vk5C?=
 =?utf-8?B?TDl0SFpRTnNqUWMyYWErcHpJSVlCNVgrWnhDSm5hOWpBWWQwaC9SNzh3cS9Y?=
 =?utf-8?B?NVRLL3ZSMkFoU1FQRTJLR3p5TmpVUVNDY2RBMVlwWFVPSW9GWWRXKyt2VEgw?=
 =?utf-8?B?UExQS1BmVkpiNUtFOUkzamRZV2tPV3dhbnVwbHdsQ1NqVVNrdjQ2UGRkYlBQ?=
 =?utf-8?B?MDc4OGZoVzFXMVkwTFRHUDdCU2Ztci9XMFcxRU9oOXMzMUVKTWdYR200UlJU?=
 =?utf-8?B?VmJFVlkreVROMjNsY3JEcVBuODRRbysyeGFVSlJxaXBubUlPZHlBaFZZaitq?=
 =?utf-8?Q?fUm4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1NDaDlSV0JUQlRSWk9TQUVWME55SkVLUVpLTnl0dHN0eUZRd2U2SEJPMElU?=
 =?utf-8?B?cCtXQ293MHRVZGRQY3RSWTBJa05GUFlkMGNURG9EbGNWWDNhY1cwNWVDRy9K?=
 =?utf-8?B?MlZCeUFDNkUwZ3laNEpSZXBvQWQ1MlZSN2piSVBrbFdya1V6ajBNYkF5WUM1?=
 =?utf-8?B?RE52RGhpdjFxbm11OVh2L08wOFozSWlHOWQ1QnpkUzdzSE5kK0Z4a2JMdFRN?=
 =?utf-8?B?eXRsT1NTcUNodE9FSXlFZVVpczZVeEVHUVVTa2Y4UWxxaUVXeVMxb3hjOVZ0?=
 =?utf-8?B?THhUcEYyU2RBYkpxUzN3VitGNmp0ajNIb1pQLytReGk2OXZnV0JmMXFlUWE2?=
 =?utf-8?B?bkJwZmdvZVRIRjdzRlcwVy82UG1EMVA4WkFIejF4NlRwZ05pcGxXdC83Y0xv?=
 =?utf-8?B?b0Y5NWtuSm1WTUNSZzdlNlA5bzlMSllIajFvWjVDcGVuankxaEVKbHVyeVNx?=
 =?utf-8?B?bExBbUk2eTQxL2gzTTQxSEpPejJuZjZ1dHhubnBnMjFzWndGd0t6US9IQjV6?=
 =?utf-8?B?OE5pbFg1T3hMeGpJVG0vWE9FdTF2d0VuYlo0RnlIQXM1cFBkaDFjaGlKaGVz?=
 =?utf-8?B?WFkxdTV6dGxkbkQ1S0tiazlCNjREek16MStBcnRSZGIzNUhRZklGSHVOcTBn?=
 =?utf-8?B?T3YxT3hhZGtXbERScUNPbkNCL1A4eUpsK2Z4dzVrTGVZOStwT1F0bURSZytQ?=
 =?utf-8?B?YmpreTNpaTlGL0xTbng0aHlRanhWR0xwM0xqc2pIZ3VvVktHMVZRb1lBSm10?=
 =?utf-8?B?M0l4b2lMSklGR3k5RkpjRHhDMDhxRGw0aDJzTEt6VzdpVnlVUFFQMVhybTNv?=
 =?utf-8?B?WFVZbnc3R0lVNUMrTDVVOVBxN0FnZnFweHdMRDVYL0ZYa2dqSFc5dlNoSnda?=
 =?utf-8?B?WFM5TTJHT0Z4M0tCUnQxd3VNVTZGck1kN2lpclJVMjJNZXJ5WVoxLzlKZ2tx?=
 =?utf-8?B?UG9NNitFbitBN01WRDhTZjdEcVVWUkZtLzlSSUFQanYvOTFxaW96SjdFSjhy?=
 =?utf-8?B?TXUwUDQ5cHk2UHdoNUdpUjA2UXdsNDNiUlV5b0s3bFpFZ2lFN1BxUmV5R05K?=
 =?utf-8?B?MzdUQWFCbjhTVHlaSzl1U1dFWFFoZ0NEZ3BqUnRRRGhzcWJRaTlGMEhkNDF0?=
 =?utf-8?B?SlRnRzZLM3AvNG1ocEJYK3RkQThLcEQreFVaOXMrYktpcmVLSzdGRmRxbUFV?=
 =?utf-8?B?a3F1ZGY4TkIzVk8raWNucXVxamFseDQ3Mkx3WHFpUGo4UHBNNG00UDlDZzJ2?=
 =?utf-8?B?R0phcy94TnVWOTdUWmNDanJjY0kzeWJYcHZKYzllaHVSRTNSR3JpRzlMNmpP?=
 =?utf-8?B?UGdaMlpwdTZJUzlYTlBLNmE4bHFNNGx3a0tUQ2d4RGR2SUZBcHVDNEtWaWV5?=
 =?utf-8?B?aHowalVuQ0ZJb1JEcVA2ektRU3dvOHFIbkFFUzdUeXI1QjFsS1l0R3VsOWV1?=
 =?utf-8?B?blJlNzE0N3BwNWc3a3pFTHFGNUZHNTRVWjgybFhZbWE5UTFRVjE5RDVvMUNY?=
 =?utf-8?B?WXF3cnpNVGhGeTFBazYzOHlUMUliQmFVcFlLN1BXT3RwR2F4MXZxT0VBTndh?=
 =?utf-8?B?R2hLdG9ZOWJQem1qTVpGbTErd1YrZXMrK0JPZUY3a2l1K3dCcHJnVisxeGFo?=
 =?utf-8?B?ZmlmUERvOHV1STU3V0ZLMFdrUXVNdGZjUGRBemo3WVI2dTdPK3l0a0E5Q3Qv?=
 =?utf-8?B?VTBUeXVVRFRvVEVWNHR3ZG9rRHBJU0V3OFQ3STlISmhaanZNUzJVTm5nYTBu?=
 =?utf-8?B?N3JBSkRGUkZhYVp0cTM1U2thYmtnUkJwbC9Lb2s4MktKdTVZNDl6MkQ5cWdr?=
 =?utf-8?B?ZitKS0FSdXFrc21ITThSZnVTZnU5QzFucEs5aFhVZ2FMaktUdDBLVWhWa1V3?=
 =?utf-8?B?SVNoUnYrUXU0VzE4STY3MnI3RVRCYUFWeGttQ01XQXFNQysxS3NtNDBtUHNi?=
 =?utf-8?B?NTA5bjlRZm1ZL3prVzlMZHRPWFZzOU9neFZnTWRGcWZvQkxZbkdmakVnQWdu?=
 =?utf-8?B?VkhCVjFpdEtjTFpUeGZucnNkazM4aUR2aVhpcnJUbEhaUVp4TVU5ZnVVamhr?=
 =?utf-8?B?YmhpNmFqdzhtaHpBcEN3YzlMcnQ4OW8yemdsS3BrREFJR3ZqTzZTMGlhV0Ji?=
 =?utf-8?B?aGRmRGlxWlNrM0xvYkFMVXdCdEd5UUJVV3haeFp4WFljVThsbEhDcmdENGhu?=
 =?utf-8?B?ZU9TeXNzRXVMcTg1SVU3VWQ5SnJqK25RR3ZCZUFaZU02Tlh0SzJpd2xFMVdn?=
 =?utf-8?B?bG9qYVozT3h2RCt3ZHVMTWlvRkg4SmFHZmd3cmhlSHhPOGlabGNpN3J6ZUFH?=
 =?utf-8?B?dmhvenpsOWtaQzhsU01VVjF1a2FDTm5VYmRwQ21xbVlia256Mm9kMnRxaSsw?=
 =?utf-8?Q?iIYkgukaq5MsUiOc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbc14fcc-9ced-4643-0a59-08de59a60e00
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 11:04:47.0702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ifwkEwLNs4KPN6/FBh+sisnkJo79O2xrfrEPriNhidE6U6k2kOqMIi4ENrHntsFj9Q8NMYK0CNniTL0IDrqJe1sJ1RRvsUx53ENDzhJtQvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6201
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 827A665B25
X-Rspamd-Action: no action


On 12/23/2025 4:21 PM, Jouni Högander wrote:
> Now we have everything in place for triggering PSR "frame change" event
> using TRANS_PUSH: use TRANS_PUSH for LunarLake and onwards.
>
> v3: use HAS_PSR_FRAME_CHANGE macro
> v2: use AND instead of OR in intel_psr_use_trans_push
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index ee70d0ceeb5b..353924f8c975 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -4569,6 +4569,7 @@ int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
>   
>   bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
>   {
> -	/* TODO: Enable using trans push when everything is in place */
> -	return false;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	return HAS_PSR_FRAME_CHANGE(display) && crtc_state->has_psr;


Can we just always enable this bit for LNL+ platforms.

I mean if no PSR/PSR2/Panel Replay are enabled, if we still have this 
bit set, can there be any issue?

The frame change event will be generated but the PSR/PR logic will not 
get activated.


Regards,

Ankit

>   }
