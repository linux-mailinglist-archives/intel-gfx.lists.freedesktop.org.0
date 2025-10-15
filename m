Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD916BDD500
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 10:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB0AF10E262;
	Wed, 15 Oct 2025 08:09:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ijyKHK6v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F8D110E03E;
 Wed, 15 Oct 2025 08:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760515756; x=1792051756;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z3tONKGUVqY8Tl7VKaYqyIBL8Mz71ha9j2VWVz+XrEw=;
 b=ijyKHK6vidfi5yCQ8tzPJ7zNimRpGhJE7VWhk2iw6CZ1D/624MrduKFs
 JartSgWKrklD6gMIMLBBNmA0DMrHF9BGb8lP9knsJ4s/bv8c1dmm+S3LG
 YL3T2NcOB739olLJLygRr4A25f1q5EWwXNj/CPQlnjtaQ3AvaY71+Pm4w
 3E56T/yq9tG9ltdHCKp4Yp6SnapeH3OACigEq+K5ZCiAGIAzzI1nWsgMq
 TEijSK9C4KtMUoD/LxlvLLEiC0cDtAzbccASKi5p60RjgS/CmCsrIdFTM
 xxbXYCqNtnTniOWQdBKsrnauIZN2yytjT7USC8oYkkeG0+APUdZmdTWE3 Q==;
X-CSE-ConnectionGUID: xtbfSZOoS+eiCScOKLfl2g==
X-CSE-MsgGUID: 0yBePtAkSs2W2dqA165DaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="88150317"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="88150317"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:09:16 -0700
X-CSE-ConnectionGUID: z55uU4wTRg6W1rHTeXDeCQ==
X-CSE-MsgGUID: x+q31Go2SFSq7eYzR7MVgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="181240533"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:09:15 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:09:15 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 01:09:15 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.31) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:09:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fqoNYXRGqgjd0Cr7jITb2U7xypMFgcE5/iKvWysnNRHko8OYubJVmkHxyaCiI7mrXSEd9aUxcdsa4fvdsXt6nFA4dXHQRaRIOWElFIYCwvCgoTba+/hd96fsGZvmQq+VxIUwGWbdVmJRmHnxFmzN8K/Qe58y9cmkbqvC6cpfjJdWZk+IEQWCsD6QjZkqpDy3T+vjKu8RWxKscqmRYP3uoM0p9vyVPU8V2eeQynD82a5lJQRe6qZMHC2Bb9v0JWtQnK0sLGQqFmjIK1M4C6hlyibnjrtuBxclYSZDnJS0k6JfbD7yczdYokhqZO7G7QuV6OZIcn6cUQEsN183QEo6MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wYFTK//zRzZklNYilCqTJd1EB8234UMlVrUQtJS/wCw=;
 b=oD6SzzwjSmwFrnTFQ5DeumpIb+BTfXOlG5mT6qjhHKlFwHarLIs7WFXagZz62sZVCrcF3F+snfyc7Ffv1m8sJ4rmq8LqnaFQf6hbjXgEHuBD5iNhsSKxIQa7vvg+kG10aiz0NUfCXV9e2QB9IFui2rtAgz13YGvmk/tTX5LDtUo3S7FrefziCBVSwXf5jqgIjsqqWmm20jXkInHO937MdPVgAR+zIADz5s3jJjPKF6eBogjn0u8pPprmOhHTOZnMqbYE5VA7lFiFRTu6zI8JWgf7btrVOcAJrqeONxb4NF6MzkcmebpUYOcNHR9jz6j4T2uJ0/EK0o+Q6glxelz7vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by SJ1PR11MB6250.namprd11.prod.outlook.com (2603:10b6:a03:459::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Wed, 15 Oct
 2025 08:09:12 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%5]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 08:09:12 +0000
Message-ID: <1fe5d1ca-c9d7-465e-bf8d-981c525f6230@intel.com>
Date: Wed, 15 Oct 2025 13:39:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/32] drm/xe/nvl: Define NVL-S platform
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, =?UTF-8?Q?Jouni_H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-1-d2d1e26520aa@intel.com>
 <51e1126c-bf71-4adb-9d22-071b5d02021b@intel.com>
Content-Language: en-US
In-Reply-To: <51e1126c-bf71-4adb-9d22-071b5d02021b@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: OS3PR01CA0031.jpnprd01.prod.outlook.com
 (2603:1096:604:db::18) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|SJ1PR11MB6250:EE_
X-MS-Office365-Filtering-Correlation-Id: 314dfbf9-9370-4111-43ec-08de0bc21fd0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M1BlUGdUaG9wT2V3RnEwQ3lmekZIdWU5R3JmN3VoZnBYTURuajBlOTlrZXlL?=
 =?utf-8?B?eGpMYzAxT1hza2ltSTdBb1N3UFNURVFWVkU3ZStKblBHd0lCUjdMNnl2eEds?=
 =?utf-8?B?dHRsbllBZWF6MTBXbUt6dmtJc25ERVFwMHBZcHBIczRkVWNpZFRqMUhWcUh2?=
 =?utf-8?B?NWt4K2RkSGhNbDl6bUY4dmVscnRkcm1iL09NbnBCOGpPWHl3Y2pBZVVIK0pC?=
 =?utf-8?B?eVNsOEhRbXZZK1lVV3c1QTQzd2MrbnpXNEJId3Q1aFdudnRxZitGbHZNei9O?=
 =?utf-8?B?dDJjVmdCd2RDVTJCcFAyTU12Qzg5SHJRc3poZGRwWVhZWUdPTjh0YWhPWGR3?=
 =?utf-8?B?dTZnNlQzWXJVQkRFdndDZkw4UkMwTTlrU2YxSmVaVDBGWGpSUTR5NFkwZ1Rj?=
 =?utf-8?B?a2xnODU3ZW84WFdaWHpHa0FNSTZiekdGVnl4T3hyK3FnbWxkYXpOQ1FVQkFq?=
 =?utf-8?B?YWtyczNGTnFNWXoyakR6UEVlZjYrMHRtRFdBNE1DZlp3N1ZvNHgzYnhDRWw1?=
 =?utf-8?B?YzgwdG1zRVZDckR3MTBOa1oxaW4rSmNKRlZ0cWlkNEVPY2VTZ09DakZ2bi9P?=
 =?utf-8?B?cjFrM0c3YnRyVjg1dHE1dzBjc21yM1k0THRvZHZqRDhDaGVLMXlQQmM5M2s4?=
 =?utf-8?B?eGNVM3FLMnN6S2JWK0xFOElHa1NxK0VpT2x6bWt3YVQ0RGNaWE5zKzJaWk5O?=
 =?utf-8?B?aUc5bXp6L1ZlUXNhTVFnKzRjbW9jZWtVRFd0K0ZZVDcrUHo0NHBCdGNVUVlk?=
 =?utf-8?B?UW93SkJISExnaUtsMHhZWHlYYzh0L1hyZm5TdHNzSUkzNkpjejQvQ3QwSlRy?=
 =?utf-8?B?NjBaUzNsVFdUV1BYaG5FRVB6eStUekwyZjRGVzMvamI2bW1iVmkydjZmZlZr?=
 =?utf-8?B?UE9BMzAyVXZ4L24vOG1QZVc2V0p3TWwraUFMVXY5UWRjVWVNcWFSV1VmWGZK?=
 =?utf-8?B?UlRlYXNZM0N3QVhvYnZuSS9FNnJCUURnNURpWmh5ZldrUHF4Q0g4MlZPVGdI?=
 =?utf-8?B?dHlkNkEzWTlJQXdKT0N3b1BnSzdkYURieURzRnZHT3cyYmcxeDBwdVFTZWFF?=
 =?utf-8?B?ckxEWmZaSlZFTHREbEJsZ1IvUWpFQkZHWEpFVmRtVVRMSVhQb0FsR0NZbWww?=
 =?utf-8?B?NjV2RlZYQzBaTXlnMlZXckNaMWdmVTVyQndORGJSQU5OcTFrK04zcm12aUVB?=
 =?utf-8?B?ME5WbWQ4Vjc0RUxxMERpa2JHTWQzKzVzZytiY1NvNHFjamJjWkcvV2VVUE9x?=
 =?utf-8?B?NS8yNVdYVWx4R2VCZnpZaFBtcTZEM3lZdk94VmZxdGtiTmtiSkUxaHlMczJS?=
 =?utf-8?B?ZmtpRWx4UlVMMGI4Myt4SVpNYmZ6QldFSkVyMGJ2MWNzcXpKc2J0Skc4VDc1?=
 =?utf-8?B?SHhJTTZuQlJsVXJlcmIyWkVpUklIZXdxVitWYmJKblZaay9BUnlpMnZDVTlJ?=
 =?utf-8?B?TXdRcFo3RjhOTEZQTTNDOG1zaUFvYURqQmRVR05FNVpiT2huajBZUHpaS2pi?=
 =?utf-8?B?Si9DSENDSG5SWG5nYVkxN0JWLzlVOWtXWjNMQUF1aUJwZTJiMkJKVE5IdHpH?=
 =?utf-8?B?QWUvMFFQV1h6d1B4ZVVCcGVOaVF3Ti9MaHZDY1Q1bU9MUTdpbFRGRUZ3aWts?=
 =?utf-8?B?NzVONmJSRllkelZQMXZFaTRha3RrSFpTS3NkRGU4MXFFLzVha29pcWNVOVBK?=
 =?utf-8?B?UUhKQWtZM2hWZGNUL0dYUnErRStLVXFDbklrVGFreWhUcG9Xd25UbG1mSktj?=
 =?utf-8?B?TnJXS2tQd1FneVRVL2JlRDNzd093azNLcE5rbTArZEVZY1R3cFptcnFOY2hx?=
 =?utf-8?B?Tkdzb1kyKyt3aFJyVzVFQ3hOZ3RPd2JJczU2Qk54R1YyVWcvamZQZzhJZ09y?=
 =?utf-8?B?bDIvV1lNRlBYejRvUzJPNjhkbi9pa0dYTkduc2hBTXZlTnc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WU5obStwT1ZldUV6c0RLbHBzemJtK2s2bStSUmE3Mjc1SnhzTmtxOENKcHl0?=
 =?utf-8?B?TS9FeGdrbmZ2UWhBVHZ0N25KR3ZjWjZ3bXJuUEthbURFSTY3Um5zcjhPRnB2?=
 =?utf-8?B?TTMxbTBuQVdCcGVhR2Z0TzBKa0FvV2VSdXlSSTM0WkswN3gyUnVDUDFXNFpW?=
 =?utf-8?B?RDdxMGsyNklDMG5DQzZyaGJZcW15c3dMVGppMWZpYWpEajRLak40Unp4MFpF?=
 =?utf-8?B?Q2hJNzZyOVk5Z0xaazI0cDVRQmpDbDBFdjFReTNDV2pibmVJZFQ4TFNDNFNZ?=
 =?utf-8?B?L1Y0eDVYWVJ5ZWw1STRrSjFacU96Q1lLV2dvcW1hL0xjZzREMS9BRkQ3ellT?=
 =?utf-8?B?U3JkdS90RjJueThZekd5UVFtWmY0SlJUYkFQS0EwMkhNRCtZNWV5em9UcFdQ?=
 =?utf-8?B?eU9qOFpTY25zQmx5SzAvVWY5VVVkQytGMHp3Qkhwd2dWemxVZ29ZNlA2WnVv?=
 =?utf-8?B?QVFSL3ZRZXZZRXUrWCtKL1FRRTZTQkhEKzV4OTFwdFVCVDhraEcvcitFb25G?=
 =?utf-8?B?VVEzeUdnRmJYWTc2dnlsT3RZQ21sMWpUQXF4dkNHNmQrb0pmVTc1eE5sUUdK?=
 =?utf-8?B?aUJSRDhLYXhoQ1Z5L0p5b0R4cWtkajBuQXlEajJNOElmdG05UTdlYjZoVkh3?=
 =?utf-8?B?eDBFbHdQajhFZDBJWHhSQThiL1ozS2JvNHVyUHFqSjg5ZDdlNjlIMWdpcGNz?=
 =?utf-8?B?Ujd2a0hRVXY3YlFvYU16Sjkwd0dqTDI2emR6bEpZc2hIS0dHRFF5aGJOTHhp?=
 =?utf-8?B?RERxQUNQdkJ4RFZUdFNwdllMdGtnL20xbjQ5c2gvRWVKWm02dGRGMVJwMXlX?=
 =?utf-8?B?STZzb2RsZmVENStNVStMN3dzK1ZmOFpSSUc1cEZ2bGJUT2NGcTFOaGpyYkpw?=
 =?utf-8?B?MTF3ejF5Ukp3ZW9wejdTb3MwYVFQd243WC9WcnE2bGFabi9PODdGMmcxVXFr?=
 =?utf-8?B?dk9CQUdHbXQzdDhwWE9XLzZpbDlQL1RXNm9kQTB0ZGcwbStqRy9HT1hWQXhz?=
 =?utf-8?B?d0N6VytVbmsxdWNCTXZZR2xhT3hpck5WdDNkOGorUE9sNVJDZnpWU1VTV1pH?=
 =?utf-8?B?R1dzRHh0RmxZT2ZIb2FNZXlRc1czQ1FYV0RyeGJZMFNRaDRJa0hGQ242eEZs?=
 =?utf-8?B?aVJZc0c4ZkdPVkZVRXVOYWl5TGIvL2Rrd0dKejlIOWFWVXlMampGMzNyZUpq?=
 =?utf-8?B?VmdIYVk1OVdXVEs5Z0hyUjRRTjBydXdPVDl5QlpVeGRtUnhmYjZZUWVSaTE1?=
 =?utf-8?B?ZEE5ZVR5aXlueFB1MFZBL2tLWGp2RTZuSXB0NU5qb1Z2U2RtT2hTZ0tWanZV?=
 =?utf-8?B?K09XVnNXdEhPUkxCRTNoWVNRR2pySEtPQkNGVGZjRVVSZFhSV0pxUFN3TXNs?=
 =?utf-8?B?KzRQNHNCOEFCYTB4TDlVM2NCaG9LeHFaM0NoRGlWcEhmeVRIUXJKSk5nMFdw?=
 =?utf-8?B?U2hIWHgxU294K1k3TDlqb1Baa3dKeFR3VlFNRk5WeG1PYlVqVkhsUHR0MGFJ?=
 =?utf-8?B?UDh3ZCtvak9ld0R4V1hObjl2WkdyUVZmK1MwUFFUcm1qbkVTK1Arc1Bac1lt?=
 =?utf-8?B?QjE3cWNZR1Zoc3UwQkQ5MDl1WWhsZ1AzNk9sMEZaVXQ4QTdQS01uZmgwcmhi?=
 =?utf-8?B?Ykt2aGtNOHlUc2I2RXh0Z3U3TTE2b21QMzNJWHA3WU9Xa3BydVY1S1dqaVM3?=
 =?utf-8?B?aXNrYVhMNUJzME5pR3U4Vndqa0xVWHJIV0lCTFVaOUNiZ3NHalB4d2ZHTlN6?=
 =?utf-8?B?Zm1pbm95RXI4RGJmeHFQSkpiTExTSUZ6NGhRdkx6c2hjTHZvQWptSjZRN2NH?=
 =?utf-8?B?R1lFbDdONERwMlZRNWNkWWo0bWp2MDlHY2VhTmkyc3o5QnlxODY1Y011M1F2?=
 =?utf-8?B?L3pxK2VkZmJDeTU3bWpFakx5OWJ1eGwvT2JzRzJ4eVZiL0gvWVZVM2x4UnVG?=
 =?utf-8?B?dCttVS9vY2x4NXNKd2t6cS9laXZ1ckx1ZzJSUWFVYTF1bzg4dkNuNEZkTVlF?=
 =?utf-8?B?cHdKU1ZvdDZBRWNSMlkydWp1QWlUWWtiUlUwdXIzd2hhYWNYd3ArZXdEQzdy?=
 =?utf-8?B?ZFRCTjFwR1NocEhaSHBMUGpBTlJsdGE0ajJ6MmNrZXdwRGlrYzBFY3BoU3Bz?=
 =?utf-8?B?cUYzL0EvUkVvYlhaLzljZFB4bUNFTk5LU1Q0dmdmR0l3bVFlY25naTdmdVVY?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 314dfbf9-9370-4111-43ec-08de0bc21fd0
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 08:09:12.1650 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HKvOBHhsPu2NLdOB6aeRvp30Yar17xuQ/oMlZoW0OtSMl4QiCam3yHgNHREvEpjtdisXltCs6tI2Yrt9h81fnrWdDdysOCjplbp8l/7GRd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6250
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


On 10/15/2025 13:37, Shekhar Chauhan wrote:
>
> On 10/15/2025 8:45, Gustavo Sousa wrote:
>> From: Matt Roper <matthew.d.roper@intel.com>
>>
>> Provide the basic platform definitions and PCI IDs for NVL-S.
>>
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>> This is brought as a dependency from the series for Xe,
>> https://patchwork.freedesktop.org/series/155866/, so the display side
>> can be reviewed independently.
Wait, I realise, its the exact same patch brought in for dependency 
issues. My bad. Though, the patch looks clean, the RB stands.
>
> Some of the changes below are redundant w.r.t the Xe series you 
> mentioned above, but maintainers can take care of that while applying 
> these patches.
>
> LGTM,
> Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>
>> ---
>>   drivers/gpu/drm/xe/xe_pci.c            | 9 +++++++++
>>   drivers/gpu/drm/xe/xe_platform_types.h | 1 +
>>   include/drm/intel/pciids.h             | 9 +++++++++
>>   3 files changed, 19 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>> index 24a38904bb50..cc29678be1fa 100644
>> --- a/drivers/gpu/drm/xe/xe_pci.c
>> +++ b/drivers/gpu/drm/xe/xe_pci.c
>> @@ -373,6 +373,14 @@ static const struct xe_device_desc ptl_desc = {
>>       .vm_max_level = 4,
>>   };
>>   +static const struct xe_device_desc nvls_desc = {
>> +    PLATFORM(NOVALAKE_S),
>> +    .dma_mask_size = 46,
>> +    .has_display = true,
>> +    .max_gt_per_tile = 2,
>> +    .require_force_probe = true,
>> +};
>> +
>>   #undef PLATFORM
>>   __diag_pop();
>>   @@ -401,6 +409,7 @@ static const struct pci_device_id pciidlist[] = {
>>       INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
>>       INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>>       INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>> +    INTEL_NVLS_IDS(INTEL_VGA_DEVICE, &nvls_desc),
>>       { }
>>   };
>>   MODULE_DEVICE_TABLE(pci, pciidlist);
>> diff --git a/drivers/gpu/drm/xe/xe_platform_types.h 
>> b/drivers/gpu/drm/xe/xe_platform_types.h
>> index 3e332214c7bb..78286285c249 100644
>> --- a/drivers/gpu/drm/xe/xe_platform_types.h
>> +++ b/drivers/gpu/drm/xe/xe_platform_types.h
>> @@ -24,6 +24,7 @@ enum xe_platform {
>>       XE_LUNARLAKE,
>>       XE_BATTLEMAGE,
>>       XE_PANTHERLAKE,
>> +    XE_NOVALAKE_S,
>>   };
>>     enum xe_subplatform {
>> diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
>> index 452c1de606ff..13c592e1a28c 100644
>> --- a/include/drm/intel/pciids.h
>> +++ b/include/drm/intel/pciids.h
>> @@ -887,4 +887,13 @@
>>       MACRO__(0xFD80, ## __VA_ARGS__), \
>>       MACRO__(0xFD81, ## __VA_ARGS__)
>>   +/* NVL-S */
>> +#define INTEL_NVLS_IDS(MACRO__, ...) \
>> +    MACRO__(0xD740, ## __VA_ARGS__), \
>> +    MACRO__(0xD741, ## __VA_ARGS__), \
>> +    MACRO__(0xD742, ## __VA_ARGS__), \
>> +    MACRO__(0xD743, ## __VA_ARGS__), \
>> +    MACRO__(0xD744, ## __VA_ARGS__), \
>> +    MACRO__(0xD745, ## __VA_ARGS__)
>> +
>>   #endif /* __PCIIDS_H__ */
>>
