Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDF398A75B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 16:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D2710E522;
	Mon, 30 Sep 2024 14:37:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nO67RO1S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCDBD10E51E;
 Mon, 30 Sep 2024 14:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727707032; x=1759243032;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=inTIk8tG3j3TV8T4CUNQFWsgqnSkvlM7Sxk8Guvr1NU=;
 b=nO67RO1SHlyocJGMNeVF3bz8hyUXq3SLem6AY9Nj+YFygUoodZ15tGkk
 44RU8LJH4mAvdptL48nxqOjqpJSz3H7WnPeC3U2i5kJvh27G0mWupni87
 IMfX9OhGFlhqc/mzgKosXNOunKo8NhKwSxPUUB9ujOK9qe8AoXLWX+DsG
 TSAe9ZNyHsDtkmugXzJqKMuLcLAaWGku6LGe2I1xErBnKVKCGpv3pFRqO
 /fiE8i6ryjpDVW1F4LuZIb9hg6t3g5/aRLaeOeSlJ7mOTWEtjfFh3sHm6
 OdKPipZeQ6isYPaJk/BRLe6acb/t4On9g6tXNTg3SFNWUXnz/nDZEl8+I Q==;
X-CSE-ConnectionGUID: XvAiva6QQzq/8TeyEwxYKQ==
X-CSE-MsgGUID: VTLBC2ftQ7KFucjvskfzUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="26897899"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26897899"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 07:33:59 -0700
X-CSE-ConnectionGUID: m4dj7Ov6RFeRGE2hPqGdjA==
X-CSE-MsgGUID: av6V7cPITXmKgRr4B38H2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="78151238"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Sep 2024 07:33:58 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 07:33:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 07:33:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 07:33:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 30 Sep 2024 07:33:57 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 30 Sep 2024 07:33:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LB1ssrSg+LZEFJw8Wg0qfkFbBpBp4fyIbMTx3M//C/wfMv7sD/2b0iumlx6lUIr/bP/nB35H9E25J56OOjCAvV4JxsVnth7joVaO3txmTO1XEbPtXJ5Pt+6HVJoJgdejs22Ra+oH0fqtBtNkYsYw5I9Tw2/1BvvbO5F5rHX67AcIX0zN2yrILJxRpHV9BwwKlBMZJh06KJl0/2UzXYeU2GJH7CkJaIWYh/5pLcQHUnNjzInkVB6MA/jBG8UBzz1n47ZFYfes8RMSIpZrpPpy46uZa2nO7miNgJArXszolJUtMAcc29RH7LnLHf7rGL7OhfYr7UAXl8HITsdUXoz3aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ibAMIJErTMQP8NnUk489AMyiME7s9CXIb2tS/n7CE5U=;
 b=lHnTyxW73tujjW4RlP1NICKisXf494qpQaAeWcDRdsjM3r3smnyV/ZoUcC2R7/A8vZHHimD0AQT8KaSl7y5dmT93qb409veY7jWSQ1++ugOJVsZBY/AaJGqvFoMdTsQV8jtC0rHjAP3iL0+7Z2bdg1KogVzW1fEsINaivK8uc+Ah9xV3yeG4mcaQdOyTMDV1/1dAmMtdRwDB/Q54Imt62jD4/++Lm6SKYtm3ZwM6kdWVNCk9RmYjGQIq8JpVQCnt497wHPT6rJcqWXWbdxgq08mBnnyfJnoQHRTKDXEo87eINMyc9UrPgN0GSO2MkZiTueH+ORqdB0rOEjYYDZ1E1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB8296.namprd11.prod.outlook.com (2603:10b6:a03:47a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 14:33:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 14:33:54 +0000
Message-ID: <7e2a421e-8015-4cd0-9c4f-8c2839325a76@intel.com>
Date: Mon, 30 Sep 2024 20:03:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Enhance debugfs for forcing joiner
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0117.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB8296:EE_
X-MS-Office365-Filtering-Correlation-Id: 122df7b8-1c28-4c78-1632-08dce15ce8d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZU0zNkpqUU1XbFZ2YWFmSDRxWXF5MjhaL21KQnpneXcyUERzaytRUkh4ZG9C?=
 =?utf-8?B?Y0hyYkFjdkxqa2ZXMnFZT3RuQmZ1K2ZQcHA4NjlkeUtWdHhNUmU4TGwvRmc2?=
 =?utf-8?B?Y0x4K01EdFNDUW8xMEl1dFZsZ2tqSUJUWUg0cFFPYVJDMzdDd2F0NnNSVm9Z?=
 =?utf-8?B?ZGR0YmYyWUoxZnp1QThQZTM0eGltcVNyNDJvZnVhV0Y4RThsaE9XSWxhTXpy?=
 =?utf-8?B?ZjVpbEI4OE81REprdUtlc2VOT0lLdWc0Nkl0QjFuZTBtZTBtcDJuM0dpN1k3?=
 =?utf-8?B?cnZwTDJkRkNzN2dQL1BKSk44QmZITGpWaG80emdKalhBZ3RYUGsycjc5bWdR?=
 =?utf-8?B?eDE1RmM2OEorc0N1UU5YUXhwR0NrbmM1em9xV0xIUGdYcXRjL05ua1dQN250?=
 =?utf-8?B?QUROSTZiZE5xK1ZqdVBLRC9nS2lLMzJDanZTMlpXQi9DWHo1VmZteVRBT1ZX?=
 =?utf-8?B?TFREWmc4eE1haTdtVzNtRTJGQTRrVGFKWGRTQVZ0TXlmL25tVUpGYlhTNHp5?=
 =?utf-8?B?Y3kzcHBDdUpSUERLMTdKdmlMVVZjT0xoaDlwQlRxVzV5Z1lQRnU2NS9RT0Zr?=
 =?utf-8?B?cXd1OVBQamliVGxUQmFyL2FBK0p5c2x5N09ReEtGYXljZGNKQ0lWS1dHbDUz?=
 =?utf-8?B?SWd3VXE4OXpvd2ZQa2ZYU3JNTEhQNzdHY3ltZ3o2aFM4V1kyQUJsd0ZOT3po?=
 =?utf-8?B?a2s0ZXV3MkFYV1haV0U0RzRzM21rTHNEaFQwaG1CMWZpR2xoY3QrZ2p3ekNq?=
 =?utf-8?B?UVVkb3VVYy82ZnNDcVlqUzhEb1huS01xQkdqTzQ1NGt2Uy9RMzg1THNFZXZu?=
 =?utf-8?B?aTZndFQzb25qdWljMlc0U3hlcnQ4YnU4TXJRa054YVNWKzVOTmNoWEVPTklM?=
 =?utf-8?B?djRXSVBPLzh0eEdINWdteUVmME9vdnBpak5iNElBZU51QzBFWXg2MEpjTUJt?=
 =?utf-8?B?eXpHWlFZTGxCZThxYTlBQ1Yva0V5Qmp4emw5Sk9zWElFQVlnRTVEV2syWHU3?=
 =?utf-8?B?NE0zVkFFMGtpOVByMnh6eHNKNFE4NGxLZE10VXJiVThldUp2NDZLNklRR0g5?=
 =?utf-8?B?bVpSWlV0cTNoVWs2WVg4TllMbjhOUk5CeDZiZUNWS1hsSDV3U0JtNkg1WDZk?=
 =?utf-8?B?b3VtcHVZekVjOWwwZVFGeGxkZS9iSjNmeWtKV21UYVVPbFEyU0JTRXN0RFg4?=
 =?utf-8?B?Vk5WQ25YVHhVNnBha0NGTnMwM0FjRGo0cFViR0NHMDViajE3RmdEYzlnY2Zo?=
 =?utf-8?B?MmsyWUZ4VmViUStvZ2xKRURNaFRkVUZtcElkWnJjN0d4bGk0NENaRVJ4TG1O?=
 =?utf-8?B?UkxGaUFZU1hxY2VtWUxlTUFDWHBUSXd3dzVkc3ZqRVp4aSs5TjRmWGgycXVy?=
 =?utf-8?B?NlpkTTdMNzYwdENJOSs4RDR4bVNpMkw5NVl3aVNaMjgvdHo5K21SeDNTc2Iv?=
 =?utf-8?B?a1BYangybXRGR0pyay8xOHRQQldVRUdTdjM2S0ExVEUxUUlBcjFQaCtGWS9B?=
 =?utf-8?B?RXAxUlpGYnhEWGFGR3duVDRnVWwya3lOQnJrMzc2WGFBZUFvT0ZUL1JRL3Mr?=
 =?utf-8?B?Qk1tUkFRN0xqWjJTRGdBZW5mNHF4c0RyVVMvb1lBT2REeGZraXVLM0hQRjdT?=
 =?utf-8?B?bG8rSUs5SEZPNlZQTUhOSFVjNVZXelFIZXVFbkNmZVF5R0djSldXL1Y2T3BM?=
 =?utf-8?B?YytSa3VqTVA4eTZLcmlkVzErSjBFY0k5TXZWM1B4TFV4Mk5laVlyb2p4OU5N?=
 =?utf-8?Q?z8yVUwvFGlDcJcAvj0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFRvc0ZUZmlmYXplVVA1djJyZkNjQ2d5U2xZT293YXE0YlhhRnZURDRyT0s3?=
 =?utf-8?B?WmlaTU15UzB0U1NGSEQrTG1xYitSdkpqZ0lnSU5KTSt2aDRpTkpZTnA0N2k2?=
 =?utf-8?B?YXV1SjVnYnIyeE5jaWtVNFZnU1RpWHFCMysxeENJcEUrc2dsWUxxUUEwTDZ5?=
 =?utf-8?B?OVNvSDVxTXFFY21CMzVYRnorSFV5Qkg3dFg0QmR4QnZlWk4rc2ZmUlZJQVN0?=
 =?utf-8?B?MlVIUVovbHJzV2JKVDVXbUtUWmdiSm1zcmR0SWFuRWROYVFvR2xRT2d6YXJI?=
 =?utf-8?B?WDROVnVQa2dQL2xLeEJmWndsYkNlK1NPc0tYTGcrUE8xRC9IODdRLzN3MitQ?=
 =?utf-8?B?clgwOU1pc3J5eXhGVjFjT3Y1TXNtVncrME9DNkNPcjlYcTQ4K2tvZFNzUVJE?=
 =?utf-8?B?V0VpZ2xxbTFqcU5JMndrdVZjZ0EzUkhvaVM1cFZadnVWVW1rSHNnYjR4bjVZ?=
 =?utf-8?B?OEdrQS9LYW5QcVlSZytJTHFlWG5xTXNrMlh3YmRwdkdHdk9kR016TEhTRTB5?=
 =?utf-8?B?cDlpbW9FZUx6MW5PblNrVVJaTmxGMFhqL2ZRTmZCSUFqZ29XQ2hjMXo0Z3pq?=
 =?utf-8?B?MnJ3ditaMWlUZmFjSFVodGVUcm9oQlV0bDEwSytPWUVqb0w2aEk1dW5GOHo5?=
 =?utf-8?B?VkhsUEl0OXpvVnNyTXRSTTZreHVkc2dlcXI5dit3OCtGOVhsdElTdTI3ampX?=
 =?utf-8?B?R0FUSVdqTFQwY3hPb0dNRmNEb2gxV0ZtZjFlNnBOM2ZSMTdXbkY0NmZ3TFor?=
 =?utf-8?B?aTF3djVRNmhpcFJQZ2pLRmxpUXo0eVdCRnpDZ3BWd29udzNybjY5eXhKU1ky?=
 =?utf-8?B?V1h6cTdHRVE4VTN0TnFaZVkrakY3TUxkTzdBaFRnQVV0VEdiRGJpa0xFTTBh?=
 =?utf-8?B?ckFicCtqK0xJbmVLQnFwZE5WTEl1TDBOOExaUC9GKytlZllvWGZhQ1ltV0Rt?=
 =?utf-8?B?d0wwR3ExNk9aUUxNN0xLeDVacU9SVlNXeVhUZjM0YUViazlFbDdURHU3L1ZL?=
 =?utf-8?B?MHRabnlSVFphWG1nU1VlN041TFVzVXFHeWxFSzdOS2FKUEF5YzAzbVhmSTY2?=
 =?utf-8?B?Y3ZPeTRCbTlaZlJkRmExTXlrRlM0MUY0NmE3NE8wbExJMngyRzhoQUF5ZWl1?=
 =?utf-8?B?VHBXVDJWWDRjNE9GSE1FM21MZmFrbDNMa3pmNXFuYmxNclZVSTNXMVBzS0wx?=
 =?utf-8?B?MmRyQVMxcFFWQ0Q5ajh6TE5YSGlHSlNsV2tjK0NsclJ3TXp2MFlSWkw0NTFv?=
 =?utf-8?B?aEZHNnRGbVNuN2hsSUx5Q3ZyU0Zjb1lWNHArVFFTYW9hTytaWVZKRTNxYTlS?=
 =?utf-8?B?Tkpsdmpxd2N4VEhnSEtDcG1GakpLZXR3dnRXMlNOOHoveE1RZGE5VG4yd0NK?=
 =?utf-8?B?RzlOT2J5bTI4ZXM5L25heUgxL3ozVWJGTHU2bkRXWVZ5M0NESHNiUEpWVlJW?=
 =?utf-8?B?UGhKb2FSQmw0WEE2ZG8vUEZzK1kxYTlMdHMrMHY0OWgzaGdndFk0aXd5TUpG?=
 =?utf-8?B?NGE3NFR1eUY4ektqL0hockp1dGcwbW5jeFBUTUVVZ0s5a3RSYzhtQUxMbkpT?=
 =?utf-8?B?Tys5dHU4R0JOVEgwSTAxanFKQkwvdlcrRS9BbjNacWcwZndWazlIV3R1UWU1?=
 =?utf-8?B?RVZqeXpKMFFFa3RMbUV0RHRySGMzMk5qb0NpNmVZeWJaZlZvVHF2bFhsRTBz?=
 =?utf-8?B?L2ltajFJZU5uNGIrRU1ka1ozSEFmZE1aWFA5VHRHWXRKOGNHU0o4U2xZOHdL?=
 =?utf-8?B?clhhZmJGYUFyYXUwcGFQQ2JrSHFWNGg1Zm0xZU5DdmVHa3loWnhldEJOSUpX?=
 =?utf-8?B?WlZMKzZUVCtyUjdRYUVsQXZPWXV6a0xHRVV2U0tZZFFIR0JBUjhpcmhMNEl1?=
 =?utf-8?B?SDRJV01zeTZqTTF6eTE2UldtUlhDMUFrcHJhNHlVY1JOK0ViYkI5SjIyMVcx?=
 =?utf-8?B?U3RhbzlDcVR3NkRhZElrODBQVHN5ZXIxcnliZEtEeEZuQ2JBemRuTjgyY3hx?=
 =?utf-8?B?dWdJV1VCTEhMTUFsSi95VVh2K285OEdXQ1RLTWRpRlBmanBjN1FQODBGbVUv?=
 =?utf-8?B?enFPQ09xNitZTnZjemhiMmtHWEZkWDZBRVVlaFZxc1RLUjZxYzcvTXRQYzB3?=
 =?utf-8?B?ODFhN2ZIcjhUYnBIYkwvZXRraXU4T2lrU0N6ZE1VSlFJT0NNMysrcVR4cGlJ?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 122df7b8-1c28-4c78-1632-08dce15ce8d3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 14:33:54.3077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a7CN+6UmdnST5uP07KyYrygCkik/g7ycRCAbc+9nLb4Oe7+eEmKbLBcj/H6dizr3P5TAuT2FNzHhKGNkfycfSag1mKhcM8j4OW6Nq0P4scI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8296
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


On 9/26/2024 7:13 PM, Ankit Nautiyal wrote:
> This patch series introduces enhancements to debugfs for forcing pipe
> joiner and prepares for the implementation of the ultrajoiner.
> These patches are derived from the original series [1] focused on the
> basic functionality of the ultra joiner. The debugfs enhancements are
> intended for merging prior to the integration of the core patches in this
> series.
>
> [1] https://patchwork.freedesktop.org/series/133800/

Thanks for the reviews, pushed to drm-intel-next.

Regards,

Ankit

>
> Ankit Nautiyal (4):
>    drm/i915/display_device: Add Check HAS_DSC for bigjoiner
>    drm/i915/display_debugfs: Allow force joiner only if supported
>    drm/i915/display: Modify debugfs for joiner to force n pipes
>    drm/i915/dp: Add helper to compute num pipes required
>
>   .../drm/i915/display/intel_display_debugfs.c  | 64 +++++++++++++++++--
>   .../drm/i915/display/intel_display_device.h   |  2 +-
>   .../drm/i915/display/intel_display_types.h    |  2 +-
>   drivers/gpu/drm/i915/display/intel_dp.c       | 46 +++++++------
>   drivers/gpu/drm/i915/display/intel_dp.h       |  6 +-
>   drivers/gpu/drm/i915/display/intel_dp_mst.c   | 23 +++----
>   6 files changed, 100 insertions(+), 43 deletions(-)
>
