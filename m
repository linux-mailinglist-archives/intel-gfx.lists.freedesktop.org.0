Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C8D470FF4
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 02:42:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A2E10E35B;
	Sat, 11 Dec 2021 01:41:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34D710E35B
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Dec 2021 01:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639186915; x=1670722915;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0rgAkvF9AItRVOqouXjybPYF990IEf9pV4Hdc7Ey0G4=;
 b=AhhOtzxaoAjHj1ogZCKYjNNzIghKYULSsH9rmx4RPED6db+RR+sqCo31
 e/YQ/fYK8SCfmgt8ElxMS1qDzCkAVHSSiMizRmJxMmE8NOM6CEC7SGpNJ
 XUHEqvJ/SqrK9x/WiyEURjmHa2bOkGAcUYfFrJNYFojdgo5coC+mJEWxm
 7j4wJiGMgRZQn4Qt5qXQ57E+C2/JjPfzuiU7nyfxoCJdpWGBV2bXxnfcs
 CPjM6EDHXwojcgJHXgaWqMFEmYRX0jCjYe2iJ2PwmhSbrPsIMWYpQ016s
 nCrZiDyuR8wrnt9xgkdLWzb3FzQ1V6pqxsr4B/BAyEWfWayatcLgP2KTj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="238301245"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="238301245"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 17:41:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="517485245"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 10 Dec 2021 17:41:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 17:41:54 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 17:41:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 10 Dec 2021 17:41:53 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 10 Dec 2021 17:41:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LtYGmHar8NowzgbMucG3oEibPvo8UrGquuoFf2AzeqB52tzeAkwYdPe/F/YZuHdBS2VboijAHu46/Rv4wQEt1Wbr8ZL4rcxwZUvdOqTxAsjkGcAFWICY9sliwcCs3XpklGjgwuvm4Szwu96R7uM00B99cInNaFFmRLojqk384UEprZUwcx30hmRwkCclNYj2CSHsYxagwhQ2TAPc9i8lGkL2OT8jXkIU4zgPX3l4Elhg/kLd2ikt1yOW6JuFcop8HVkJA0sum8s9nQ/WoGTrtKh9cP4ZvuYCxw5TeK2tQBQpKnH0taj58mzl8VvD1iXS3eI4fKyGvtWIgV556W0TqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gn+dYv7BtEE4B/rnOlLqBYE7P8j99QfLV1roZblHYBw=;
 b=BQO3Ej9k1gEgRPkJQN3aoNH2MnlXvRzmIciaXBzT91GAgKhvcy7WBcTmzStzCG6HKqm5AVvmms6kazJD1mM5vnE2/Vj+mRWbc24mmWaGbr3HMJHQ9oYzBrlsGOh0tq8UOwgw6Whk4xxiQOhqUR9FSp4AwtAQB2+TBRzMqwT9hsUpAnVq7DnHZ+7yK7sIKmV+3Iag12a2EwNB+wZim/QgA/w/MiJ8aaXVKmJq4xgfdnVV0V4v4Il38m/RsIi/wq2h4/zfc/tzyvWC+V/B3cLn7YRtpmYWnsF6k0Yo9xYEQD3JkGHdGMOUAfoIjoPNIr4QhR2Dh2unrMcu3Y5BwAcFUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gn+dYv7BtEE4B/rnOlLqBYE7P8j99QfLV1roZblHYBw=;
 b=PMUK8kw0eOt9sA6dSlH5uvtvPILZ1w89bdURVGNAAXsJDfiyGB+z6/0aFGSrH8lb8/PCLoH2POvQKj8CiU/YxxvxwagKuS5Fy/AQBWSzEAqLGZ9AaFluXj6F7KhPhhOj+NQkGc/tbohzZ28whpMO19m+r0inpI3PnnVq7XEHpiU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN6PR11MB3908.namprd11.prod.outlook.com (2603:10b6:405:7d::13)
 by BN6PR11MB2034.namprd11.prod.outlook.com (2603:10b6:404:43::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.14; Sat, 11 Dec
 2021 01:41:51 +0000
Received: from BN6PR11MB3908.namprd11.prod.outlook.com
 ([fe80::81a3:50a8:5c1f:f754]) by BN6PR11MB3908.namprd11.prod.outlook.com
 ([fe80::81a3:50a8:5c1f:f754%5]) with mapi id 15.20.4755.022; Sat, 11 Dec 2021
 01:41:51 +0000
Message-ID: <4bb349c0-5518-b93c-1925-59bb7e1dd08d@intel.com>
Date: Fri, 10 Dec 2021 17:41:46 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Content-Language: en-GB
To: Matt Roper <matthew.d.roper@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
References: <20211203145603.4006937-1-ravitejax.goud.talla@intel.com>
 <20211209172139.jze46pphfosafv62@ldmartin-desk2>
 <20211211012254.GI2219399@mdroper-desk1.amr.corp.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20211211012254.GI2219399@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MWHPR10CA0002.namprd10.prod.outlook.com (2603:10b6:301::12)
 To BN6PR11MB3908.namprd11.prod.outlook.com
 (2603:10b6:405:7d::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 MWHPR10CA0002.namprd10.prod.outlook.com (2603:10b6:301::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Sat, 11 Dec 2021 01:41:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cc082d19-5e9b-4709-3dee-08d9bc47672f
X-MS-TrafficTypeDiagnostic: BN6PR11MB2034:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR11MB203426E01FD46493D8A8317ABD729@BN6PR11MB2034.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZO/7VOcfKxUWmYaHS/gK14glb/cmZY85VZINnHOhrPc+FeodVTzLbJcOzxUDi0EXEGFRf/VdmIOiAUtT/JrzhHYgSLE0gcAH5Mz+JS2cvIzygQUGK7a5cPpyaticQHjAvWN4QBL19REmC6zy5mUBU0L51k6dZL9i4/6w+ITJeuu2o5/fWMDHe4Uho/QBkiEiwvy+R8vPHIcVC35J5MLxWiNBnx0RM6cXoJk4aNZ5lWj2VnZN2Go84UT/uRR2kwwiH1WjzwGSI1+47QlX7hDUVn8sH56EnNi7QlXw5qllKE39ihrRxq2Vkbh5pgK+xlXpGmWkor2xSin7/pXpQzB47UNNwrsRCaTj5286177Y9RofdtYwOhKvoYZjSyC811O3DKionZztW3qFvBiBQUfDSLWRe7nkyUSQJ8h+hBaorsiyfH5Vu4tMnMqGNjX7jzqHKG2PlK2WBoW29Xol3LE2167z6JjdrRxerq7tIMXokt8YIwsBpGPH8eOGDhAztrvmr/ec8nyP7m5OgIdqIPA+C3NaoVvZHsdi6FhJMknswAwLKGRsvswD1dvUyGijrGOdpF1rpBCVpsfdkhUPkrtGMl3EPIDf5ldYotDmNF3oYG2BoFSQ/ANm/bJXkTQNbMuYcWCnosAE7UxvNrAF+uS8kOlNoEfacHY1Ofl5m7oe49uFSc25osoLYGC45xOFOaPkH0MEKKOi6PgQtUmnEgLGyjp7T2H8Ngu4DRC/LqDALK63MINiS8ytsOGeWof5mWeJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB3908.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(36756003)(6666004)(8936002)(8676002)(6636002)(82960400001)(2906002)(316002)(5660300002)(16576012)(110136005)(4326008)(53546011)(31696002)(66556008)(86362001)(6486002)(107886003)(956004)(508600001)(26005)(2616005)(186003)(966005)(31686004)(83380400001)(66476007)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzJKeExXeGJOeWJVRHF1QWtYRWtoQU44TWdRMzBvUkZoVmpYMm5CRGNYVzNz?=
 =?utf-8?B?ZTNDU0ZxYktIeklqRDYwS0FtWXBKczVJdXM4bTVhVWdncXdwaXlsS2QvWnBz?=
 =?utf-8?B?MCtQTERnbmdEY1FsVjR1VnVFbHlrY0d4cE9EemNDcDhuRHZHL3ZwVWV0eWZp?=
 =?utf-8?B?Y1FrOUZRZnBsUmpuaEQ2SitlbEZVeWNkY0lLZEtlMjU5OXhHT1F0dWNJMzk3?=
 =?utf-8?B?QjR6STZDRE11MzhBazhYV0luSjBvUlZzVlJmbUp2Q3RvdjNqQTVDQzFEL3NP?=
 =?utf-8?B?MjhGZlVZTS9XWHl3UUxXTVAwU3F0aFlBdTNLZHVtR2RXd21SVUQrS0pxY1dB?=
 =?utf-8?B?M25Bc3J5VTgzYlVDY3MxRUxPNUE0Vlp3L2NqVGRZb1hmNEJHYlYrTURYQXVz?=
 =?utf-8?B?dzlvVUxQOTJFR2ZEQTRicWdzSzk3NEhxYll4WHU1aEVnL1BlbDZ1bGl3L3ls?=
 =?utf-8?B?U3pjYTU1MTBsWXdqejh2bnNFSWU2UnhIZTFsckgzZ2lBcy9iNTBldzFtZFlV?=
 =?utf-8?B?RGdVeVNpbnUxcVBiNTZnMHJXaHdwSTUvL09BcXJnMzZtbkR0QWR6djR6dlQv?=
 =?utf-8?B?RFBxTGtQZGZyQ0I5L3IrSHhzcnJTdXJ5S3gwc1dEOGxucE4zc1A2TncwYzZM?=
 =?utf-8?B?VUpDazRQWGs3NE9ZdERGR1Y1eDBxYVhkOVhOb09iZWFoWUhyTjlQdkF0a1lG?=
 =?utf-8?B?NGVEeWhsb1ZJQmRRaXl6QUpuOVNtbmM3VmFvOVZOSi9reGFWYWNUYUUxek5N?=
 =?utf-8?B?TjRsYnpYU0tLZk5vZUZUR1hwc2JvRU5INlA1cm55elp5eFpuWVhxZi9iK0J0?=
 =?utf-8?B?ZldtdGxBc2Q2bVJSY0FzR0RoYXlPbGQyVHNLWWtsSWhHaFRyWmIyZE5VNis5?=
 =?utf-8?B?L084SGRoYjJvMjgwWm8vMTliSVg3WFRWTXROVHIxZWEzN09PU0VJOHJWVGJi?=
 =?utf-8?B?MkVsWENSeS80K0hZazhRaHUzaFRpdDErTjBQUEw0NWs3N0o1V3R0NzUwdENt?=
 =?utf-8?B?SjNKT3hDZ3djajA3YnBPZjE4WGFOcVJCdWVITVRvQzJURzBLZGV0WWt1WGhW?=
 =?utf-8?B?QWIwYy9BQ0E1TUMrTnRmMzg2MmxCSWR2RllscXVndU5xWDFVRGV5enJQcyt4?=
 =?utf-8?B?R3lPN250blhKTStoVGtWWnU5NUt0U2tEbHFaUmVCZWJnekhIcnRSdms4TFdv?=
 =?utf-8?B?ei9GWmlnTGpYOXdiclQwTkxqUkFBZUZyWU9nTW1uMHFobG1IeXVFUnAxYThl?=
 =?utf-8?B?WG9kWEljRUZJaGlrRUlCNzEzQzdhQlBYQ0J4V3A5TFlLbjZiR3pMUUN1QnRm?=
 =?utf-8?B?UGJQRE1pekh2d0JPMHU2dFIrcEc0d1pHeStmeUdNRlUzYXJrNE56T3YrTXF4?=
 =?utf-8?B?eGRBUng4aDV3eEMwZnBwTEpSNnpib2d4Y0dQeGtFbDZIYUhMeXJvclk0SEhx?=
 =?utf-8?B?Skcra2VGVnpFZk0rTFQ1NEtTNlNoT2E4TDlmNThhUC92dENPTTJPQ3QyS0JV?=
 =?utf-8?B?ZC9Zc3Q4aDJCZ1BlcEFHNmpTZkRzVk9ZUEpRVlFiNHVGd1IzNjAzNWNscFpF?=
 =?utf-8?B?V2M1Um5RbTNGQlVtN1BWck5Uck15V0FjbDN0akk0QllrWW5mYTA0ZUtyVWFF?=
 =?utf-8?B?QVR5b1dRY1FlNDJxQjd1OTRmSFJRNHNFVkxzVkkyaEpJV1pLSXFQQTFWeFJp?=
 =?utf-8?B?SW91YUN4eFVNRHR1dmMwT3dlM0JGejJMNzVqbVliakpLZUdDTlc1RUZ1SjJq?=
 =?utf-8?B?anJLZkxXc3Z2Wk1KR2loL0IzMkYxaGE2KzlPL0hTWndkNzhmb1R5SnJHMGht?=
 =?utf-8?B?NVJjdHQ1cCtTWGQzSkFLTis4SzF6a01oZnlxeDhPTXdGSlFVRTUrLzZnMXdP?=
 =?utf-8?B?Y0wyY0NQazRLYm52a2pURlBEMnBKY3BvOFp6S3hPOUE0ajJ4VXRDa0tsNTRH?=
 =?utf-8?B?M2ZzclZvdDdYa2s2NWl3Qkx5Rk1ZcVBwSVlna3E1WldGR0dadTl6NjJmK0FR?=
 =?utf-8?B?czE1alo0Vno2WXhQdzI5U3lrSldNMTVwZTkxZ0JvSVpSYVFFSjU2eEJER091?=
 =?utf-8?B?YWgyaFVXYm1peDVaWm9pVE9IR1dsK0p0MkZYbDloVTdJZ1k1VmpUOVQ3MDFB?=
 =?utf-8?B?SnRnRk40ZHdaZzFaWnlwRjA1WUp5UFoyRnRvcXlYRDJHdVBEbG9BSXlaQytV?=
 =?utf-8?B?anRuUlFvRDRtYzNIeGNkTDZaRHQ0NnZiV2M5OVkrZVZLcThXQkRvK0JWNHN1?=
 =?utf-8?Q?Q6FxOQkWbIwFZvyg0eZ5iXXzVsnWMCXjkgwuABi65Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc082d19-5e9b-4709-3dee-08d9bc47672f
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB3908.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2021 01:41:51.3078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u4QSTHCeHxAkO0JX8MPM+T1BTPXBPJa4FGRBGMN+/U0kRFvaKDnT7/Wk4Djn509nsWKkUjJ2GYOyhPjJTg8krb2R62qdZstTLm5Ki4GF0VE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB2034
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/gen11: Moving WAs to
 icl_gt_workarounds_init()
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
Cc: ravitejax.goud.talla@intel.com, hariom.pandey@intel.com,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/10/2021 17:22, Matt Roper wrote:
> On Thu, Dec 09, 2021 at 09:21:39AM -0800, Lucas De Marchi wrote:
>> On Fri, Dec 03, 2021 at 08:26:03PM +0530, ravitejax.goud.talla@intel.com wrote:
>>> From: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
>>>
>>> Bspec page says "Reset: BUS", Accordingly moving w/a's:
>>> Wa_1407352427,Wa_1406680159 to proper function icl_gt_workarounds_init()
>>> Which will resolve guc enabling error
>>>
>>> v2:
>>>   - Previous patch rev2 was created by email client which caused the
>>>     Build failure, This v2 is to resolve the previous broken series
>>>
>>> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
>>> Signed-off-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
>> It seems like this patch is needed to be able to load GuC in ICL:
>> https://gitlab.freedesktop.org/drm/intel/-/issues/4067#note_1184951
>>
>> And that is failing on Linus' master branch as of
>> 2a987e65025e ("Merge tag 'perf-tools-fixes-for-v5.16-2021-12-07' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux")
>> and (at least) 5.15.*. Looking at the appropriate "Fixes" tag I found these commits:
>>
>>    1) 1cd21a7c5679 ("drm/i915: Add Wa_1407352427:icl,ehl") - original
>>       commit adding the WA
>>    2) 3551ff928744 ("drm/i915/gen11: Moving WAs to rcs_engine_wa_init()")
>>       moving the WA to rcs_engine_wa_init()
>>
>> However (2) is on v5.7-rc1 and (1) is on v5.6-rc1 and according to the
>> bug report GuC loading was working on 5.13. So I suspect the move
>> to GuC 62.0.0 made the checks more strict, or there is another patch
> This is correct.  Having "GT workarounds" on the engine list by accident
> used to be harmless (because i915 [with execlist submission] and the guc
> [with guc submission]) would simply re-apply the register setting more
> often than it really needed to.  However the more recent GuC versions
> have become more picky about the set of registers they're willing to
Actually, I think the GuC was always picky but we haven't supported GuC 
submission upstream for quite some time. There was very old support 
(never enabled by default) in the VLV timescale. And at that time, we 
were not using GuC scheduling anyway, so no save/restore list. I think 
by ICL it had already been removed as broken. All you could do was load 
the GuC in order to load the HuC. It is only recently with the ADL-P/DG1 
support that GuC submission has been re-implemented and the save/restore 
list added in.


> save/restore for workarounds and will fail to load if they see a
> register on the save/restore list that isn't something they think is
> appropriate for an engine reset.
>
> GuC submission isn't officially supported on ICL; you can force it via
> module parameter, which taints the kernel and takes you through untested
> codepaths, so you do so at your own risk.  Given that, I don't think
> there's any real need to worry about getting this backported to specific
> stable kernels; having the workaround in the wrong place doesn't
> actually harm anything on the official and default non-GuC mode.
As above, even with GuC enabled, I still don't think it is a problem for 
any kernel using a GuC version earlier than 62.0.0.

John.


>
>
> Matt
>
>> that paired with that one makes load fail to load.
>>
>> Anyway, it seems that commit is the one to fix and we probably need to
>> bring both moves to stable (5.15.y and 5.10.y ?), besides propagating
>> it to drm-intel-fixes so it applies to 5.16
>>
>> Cc'ing some more people.
>>
>>
>> Lucas De Marchi
>>
>>
>>
>>
>>> ---
>>> drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 +++++++++---------
>>> 1 file changed, 9 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> index c3211325c2d3..3113266c286e 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -1224,6 +1224,15 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>>> 		    GAMT_CHKN_BIT_REG,
>>> 		    GAMT_CHKN_DISABLE_L3_COH_PIPE);
>>>
>>> +	/* Wa_1407352427:icl,ehl */
>>> +	wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>>> +		    PSDUNIT_CLKGATE_DIS);
>>> +
>>> +	/* Wa_1406680159:icl,ehl */
>>> +	wa_write_or(wal,
>>> +		    SUBSLICE_UNIT_LEVEL_CLKGATE,
>>> +		    GWUNIT_CLKGATE_DIS);
>>> +
>>> 	/* Wa_1607087056:icl,ehl,jsl */
>>> 	if (IS_ICELAKE(i915) ||
>>> 	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>>> @@ -2269,15 +2278,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>> 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
>>> 			    VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
>>>
>>> -		/* Wa_1407352427:icl,ehl */
>>> -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>>> -			    PSDUNIT_CLKGATE_DIS);
>>> -
>>> -		/* Wa_1406680159:icl,ehl */
>>> -		wa_write_or(wal,
>>> -			    SUBSLICE_UNIT_LEVEL_CLKGATE,
>>> -			    GWUNIT_CLKGATE_DIS);
>>> -
>>> 		/*
>>> 		 * Wa_1408767742:icl[a2..forever],ehl[all]
>>> 		 * Wa_1605460711:icl[a0..c0]
>>> -- 
>>> 2.34.1
>>>

