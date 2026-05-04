Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UG/ADJqk+GmxxQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 15:52:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0C74BE0B7
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 15:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97FE210E205;
	Mon,  4 May 2026 13:52:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IoaCP3/i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59A310E205;
 Mon,  4 May 2026 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777902743; x=1809438743;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8MOmqzqrKcppPng7aLXh6gu+Dj1k/9qRdQnqhfUyNj8=;
 b=IoaCP3/ibrYpkO4l1fubocKYDo2iolw0FhxJ4neSokg4DfiPTxIvFDNe
 E7HLJyNR7IaCMXT/61n56UlX49TO4uwnPuWQkfM4DsDWWDJm7/RYoWOf7
 Ag6mKcWNKhmKWqye25bxNbY8ZlRd51tMeWF5jRnCa4ce5zlLino/t1sau
 Dl9PiEUMWSB7Xwl3NmI/XemKB83zoHr8IPgWxZ+c4Mdy2zOvC51n/If5+
 MP/JBDVHvL1OILA5P/gVobJ0OdNF0lkXZ96cGcs3QIvuLHCDbtZuXS9CJ
 uf39goHK+572pCWWk9SUELFJWp3tV+O8JI6msCdIO419F7s4ufIqj4C6f A==;
X-CSE-ConnectionGUID: 40LpsZD9R6SJkzBVv7X4fA==
X-CSE-MsgGUID: v6PUZPoFQ+CXZIaWBmyE5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78688234"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78688234"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:52:22 -0700
X-CSE-ConnectionGUID: Dz2o0Q8jTdC5u1/zjDlGPg==
X-CSE-MsgGUID: nXxY6L61SxWX2ppHt3fQVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="231156961"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:52:22 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:52:21 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 06:52:21 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.22) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:52:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SkPe4x1sjvM1cDew8U2S3f5Dw9KW/YgCZigBgMnLOD5+8/3FJr9BGnil7G8MKX6HwtGMn0BsJBJAYENk6rEbFrAfVeAJRleE99nFDcpiqO+mSK0BWEuyf/CdAecrCd4TtNLrrHTCOxkl0yMUvAGBsYY6qfW6wg36ZXisjOeqWYq0KunM285kJ2G4avS4n/aozMuuHsFhFMXNc3TxjsIEpKuTd4ikJKv/gmLFOaRkZXqrTeypZQzshKHEnHcfDAWgctEVo46ZrqYi0/yQDPaB2xLq4ubhVnq8K7qOEPjVwA8ypRMfQFcK/PUWDj0OhvZjJO3LBw52Jb2W/wFyU0ABXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KKCKZLdK8eimH1TVwOLQzlMco1pVjQWPJ8VD0QDTPIY=;
 b=CAkjx6Oc3VzUPX9QJ9jey6QRRN11ZqCt7CY7RaOJUvb6LwQqq6PTae5DBFlQv96BaBXmUmAegqv+rzBYGAPqOJqFKGcuOhf7bsdTaxYHEt+cFYY/pjZlkTaQ66hmaBXgxQRyymZoulqgeBmELo7CIHp4Ct3VAehDpT42ApKI/M+c2x8EgmaR+cvP3W1uNDtfpHr2T+7qeFvWIfR8KGkgsHlXmkZzlZyyOBWqcTWVQkJW4b8ivSU5dBTAj7uKTo22sWnJheGTq5bNLDcnO49EZnW02mqZOC+PF+f3TbDVUC+0wlUebnz7D4CGeJG3DRV0XUUZJO1xKFVNRll/5DlinQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8165.namprd11.prod.outlook.com (2603:10b6:610:18e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 13:52:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 13:52:18 +0000
Message-ID: <54c6af87-7a66-46f6-869e-154fec0a7934@intel.com>
Date: Mon, 4 May 2026 19:22:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/intel_dvo: Drop call to
 intel_panel_fixed_mode() from compute_config
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
 <20260430131220.3891497-4-ankit.k.nautiyal@intel.com>
 <DM3PPF208195D8D54642D41174DDE0F9C2DE3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM3PPF208195D8D54642D41174DDE0F9C2DE3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0147.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8165:EE_
X-MS-Office365-Filtering-Correlation-Id: 3619c40f-b9a3-44e1-0c3f-08dea9e45b9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Uv3oyVV7VAo7PVKgifuyrIjyFBoQZI86iW0rrwxmH5GxuOZXSDSteteocyNavSp8TQsiQHVc37EQPu8Em50nEj9zbAKjlmIezw0mdIsU1DksVbsD7jZVpBUAUN5/5yRHsAxO6eONYQ3+lFlLFEjBWdFpOrId2+uLwoMu4A10Wr6mJ1fGZDCyMBtThRxGomx59/SzFwt5UbTsty7MvZBKW32zBJfKi8rucnXV5SZlPBeVb5PPjt3w8cKOKFdrMQiTkp1KvY8kiRA1QZFL+7bdCZ/3sFCh8FIGX++pM5FnN5Jhlaw7G8EMVlMLM4j+XG2hwId3ZHbY7F8PwnrY4By9YDUYn1AZGTrTMCGgkoZu2dqBYWFtLeGgcYqb+h3zuxTkZTMFrE4StGwbMdQmu/cwAfW9eP9Hivh2T2wlK5LjE6/8ztV54MUoj+LaU8v4SDnnZn1aEC7GGRwHAqVYVSa8EXRj56sg/cUMVIoL1cPlSDEdHV6qkTuj5bo/bY0DiBPZah9BqCcFx5q62auBV2TrxfS6xhqHrud5txmPBMH2F5dlBZnmeFi/JVVX7aXsmjAx/OeI2mNTfQmT9jVVX9tatuwoVq2mxoV2YV49jsDrchhLFcZq+KNvJPKAtQQWiu2QwH7GPCt3Ce/tD7/h8B7ZkRUlTVWWhq2jU7QYjEFWcWCkoTsXYBW+ldA0cYkUaIpD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzAybmlveHQ4OW9DenlHNThYNHdTRzN5NDYrUXJsMjAxTXNjQ0djQUgyYnZq?=
 =?utf-8?B?WHpGM3RQNmEwUFBiYUtkU2ZkMXlvSUFJdlZTTEtUYmtRclJHNUpOZkZtcUpP?=
 =?utf-8?B?ZG5KSFZzUEJlOEdSd1FVN1d6Sm5LSWJlTGVBcGc2NW9IazZvT0FUbkZ6OEhu?=
 =?utf-8?B?bkIzQU5iSHpuTTMwaCs4WnZWampyL0RvSzhaWFJldlJZRjNtd2VVbjFubStN?=
 =?utf-8?B?d0NqNG01dlJSWkhwdmdrVnFxdzB5cTI0R3Q3SXU4dGh1N0E1YWY3bmsyRzRW?=
 =?utf-8?B?a3BEb1Q1RzAvNUFhRzM0MElIZTNhdUZoZzlLYnB4eElzMGtENUowWURxbm1S?=
 =?utf-8?B?MDB1dXdEbVlDVGtqN1VDT2xoRk5JalJTT1o0a1JSdTFzMElMek9JM216N3hV?=
 =?utf-8?B?SXl2L2ZyWnFTNndNWlNYeHFObmJZYzVDUkZpZWRJRGowK3pOZUxNSnZheklO?=
 =?utf-8?B?UlJwME9taFBUV2R6K0poK01oa2p0WHBpdWpKRkYvbUozWW5JeldEOVpMTWIr?=
 =?utf-8?B?NXYrekNidlQ5Y2Foek5mc1I4RUlLT3hXSHFZclljWmhjL084R3V6SW03OWo1?=
 =?utf-8?B?MEErRDBxMmp4OGh2cmpyeUhrTkEvS1ZiejB3eUs2c05sVUVSTDg5VnhpbEZl?=
 =?utf-8?B?KzhBb3dnTkh0MFY2MElWVm1SOGQ1dExtVFkwQnFOQ3o5YkdLZUpqa0ZleXg2?=
 =?utf-8?B?RThwSktNZjV3OUtqdm5uaFpHcE9sQk85RjVlWFRaVVkyRlVwSXhPL2N6S3U1?=
 =?utf-8?B?dXdIeERKeWxLRlpkWkJkQVNFSGZBN29tTmpkeWUzRS9uSjlvOHVNRzVHU0JD?=
 =?utf-8?B?MzBhSzc0ZWtQTmk0MHIvektaMjcrYzdNUU1pTW9EemE3eXpJZ2k0ZjFLTVZm?=
 =?utf-8?B?UVBBMGw1SU1Jd1FEQXlOZVdyaWRkRndPdTJpNDF5WGhuTXBtVWNNM2FFZXY5?=
 =?utf-8?B?ejE3cG9hRSt5ckRDV091bGEvcTVwQU5RS3FwaVRjdU1SRTBWWWpsbks3RWdr?=
 =?utf-8?B?Y3NUMXBLbVlPT0hjaUVWS1RXd3F2YWswQm9qdlBoTS9YK0FHbjd3WU9kcGtL?=
 =?utf-8?B?b3Q1RmR6MmxOOXdpVHg0eUdJMUt0Ymd2MDN4cjAwRXhDVG5qN2g1TFRFQWdZ?=
 =?utf-8?B?cUNqWEJRR2hEVFdHUytvaW02RWh1WlIveFRTNkdwZDhEdms1MkxoeWhPc1E2?=
 =?utf-8?B?dnJRNFdlUllGa2dBckgxYlJGeHZnWEV5Uko1dXdNOGx1a2VveThSQ3VSNzRy?=
 =?utf-8?B?QnFrVzcyQTZ4SmxHaW13UkhENCt0cEduNFlNeDFnRW5uR1BkVG1BZEtabUh6?=
 =?utf-8?B?ZzdxRmkzd3RmbGdYeWlhVEVSNEs4VmFVZjZobXpxTXd4dStIOEwybWdXbU1i?=
 =?utf-8?B?UVdzeWFoUElHRDdrelpicUkxcWZKQXlOY2pVdmhWdkRJMDlVOWw0UWVNd3Bv?=
 =?utf-8?B?a2RUVHF1OEZOQ3VXNnJYOWdvWEZxbWdvK3lHSUplWVBGc2dLQnhGUzBBdnkz?=
 =?utf-8?B?V1dFaVlUVDhOMnhpWUR5eFQ1YlJUNDVMbWliY09VNzVMbkYwZ2ZHRDg4SFh5?=
 =?utf-8?B?cmJtZHdmQ1QvVUVnbDlLLzh4b05nN216UUlrSWFHUTMrM3hiUXR5QytzUGhF?=
 =?utf-8?B?Q25sWUVhRWdxdFF4YTNkS21WcVdNS3ZMZnVFSE1GdzlJT09JWmpLK2hiOUow?=
 =?utf-8?B?REx2WUFuYzRMcFo2WjkyNHo2RFRVMElJWFpGeExMNjVqTEZvc0dRay9vbjY1?=
 =?utf-8?B?NXJkbFIwcHFNV01Md3V3QkUyWWY5YlBlR0N5VHQ5bml0NlppZmhPWXlGdkZm?=
 =?utf-8?B?NmJRSTkyb29mMm56QVdPYW9nTVhrZlJnS2t3OGNud0ZNUHY1WjNWM09wWGJ0?=
 =?utf-8?B?SVl6emZHY1V1L1BTdTBDYnRHQ2I0ME1pY3AyTnlPcTNOUWhQRlhLWTRrYXll?=
 =?utf-8?B?cTlZWnZLZ1NFcDl3ME5VTXpDUVNDcWczbzVzTTc0YzBvekw4NXRqUFZnR0pm?=
 =?utf-8?B?V3dhbDdnN3JwZ2JkWm9DTmh0YWpMRjBVdnlldWZiM3ZKekF6cjBjdmFCd2xN?=
 =?utf-8?B?NnNCcFhGcTFFMUFabnRpdGdzSkNmQzNMMENQYk1wemxPYm4vSU93bXNCMm1r?=
 =?utf-8?B?ZzJ5NkxKZE9HOFUwQTlITFFEVU05SUVRZEl6VmdnelBCNWlwRlYwQTZlU0lP?=
 =?utf-8?B?clJKZk9GN1ZPOUpGUEp3Mk1kQVd0M1BZd2N4WVp3M2JzTjg0TTRwVjJZcHM5?=
 =?utf-8?B?NmVOcHYybytOZGh5M2xYTUtlVVVTaUQvT1dKdDRjYmlFZjdrVXExZnErdkhB?=
 =?utf-8?B?K3ZLMllIZytxSlowN3R0Q0N2UndYY1MrRjc5OU1mbjhqeG9CWm85eTE0OFBv?=
 =?utf-8?Q?2gZ2JqHqh2I+pIj4=3D?=
X-Exchange-RoutingPolicyChecked: o5Mb63P9XWvBN1KgCcSvUMzNY62SyK0ax8z9oziJGAxbGC5VHEwKs9CXi2hg5Dk8D3DtKH1CajAC40aadqHtpRT2tSsg7yZhILMNDFfyVkclXFpOBjkNkbHh5nij8uZKkmMI1CJYOk7emVa5dfuOxO7kY9dIZPLuHe7I1FZce/KhqZ8VRBiCSug3UKjkcem3b7LoXsFPzwZpU1HKwaIW5btMWxvhfXj2V/srxL3cctdehiG1mvOP6okOpT/rmCTCR3DPavZZdvKqiMLfqQiWb6rhDrr5Fj5Lucn0kmngTifyRTBPOCR6IrmcQ6zImjFmveE94/Ve1i829dcITvUEpw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3619c40f-b9a3-44e1-0c3f-08dea9e45b9e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 13:52:18.9063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W1wbQZ865vHGgLTE53DQX9XAGl2paDS6IBnes7XaKoFqt5ZAqFBqrxm4wNV6GuUkhMECKvqtKvXMZP/B4DjmFism4//rzhwSWRHmoqV6LGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8165
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
X-Rspamd-Queue-Id: 8A0C74BE0B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


On 5/4/2026 11:22 AM, Kandpal, Suraj wrote:
>> Subject: [PATCH 3/5] drm/i915/intel_dvo: Drop call to intel_panel_fixed_mode()
>> from compute_config
>>
>> The function intel_dvo_compute_config() calls intel_panel_fixed_mode() only
>> to check if there is a valid fixed_mode and based on that it then calls
>> intel_panel_compute_config().
>>
>> However, since the intel_panel_compute_config() already checks for
>> fixed_mode and we can drop the call to intel_panel_fixed_mode().
>>
> We can update this like below:
> * "Since intel_panel_compute_config() already checks for fixed_mode, we can drop the call to intel_panel_fixed_mode()."

Sure can update this.


Thanks,

Ankit

>
> Otherwise LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dvo.c | 14 ++++----------
>>   1 file changed, 4 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
>> b/drivers/gpu/drm/i915/display/intel_dvo.c
>> index 65015477abed..dd1a995c2979 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>> @@ -246,11 +246,9 @@ static int intel_dvo_compute_config(struct
>> intel_encoder *encoder,
>>   				    struct intel_crtc_state *pipe_config,
>>   				    struct drm_connector_state *conn_state)  {
>> -	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
>>   	struct intel_connector *connector = to_intel_connector(conn_state-
>>> connector);
>>   	struct drm_display_mode *adjusted_mode = &pipe_config-
>>> hw.adjusted_mode;
>> -	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(intel_dvo->attached_connector,
>> adjusted_mode);
>> +	int ret;
>>
>>   	/*
>>   	 * If we have timings from the BIOS for the panel, put them in @@ -
>> 258,13 +256,9 @@ static int intel_dvo_compute_config(struct intel_encoder
>> *encoder,
>>   	 * with the panel scaling set up to source from the H/VDisplay
>>   	 * of the original mode.
>>   	 */
>> -	if (fixed_mode) {
>> -		int ret;
>> -
>> -		ret = intel_panel_compute_config(connector, adjusted_mode);
>> -		if (ret)
>> -			return ret;
>> -	}
>> +	ret = intel_panel_compute_config(connector, adjusted_mode);
>> +	if (ret)
>> +		return ret;
>>
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>> --
>> 2.45.2
