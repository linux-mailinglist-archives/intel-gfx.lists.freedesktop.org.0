Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF7542AF94
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 00:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC5C6E9F4;
	Tue, 12 Oct 2021 22:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15BBC6E9F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 22:15:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="250691714"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="250691714"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 15:15:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="626119879"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2021 15:15:41 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 15:15:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 12 Oct 2021 15:15:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 12 Oct 2021 15:15:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kccHVyLmM1aa0wwuj35pbFLf2w6oMSSGcQvsl0Yqz6bPuohgGzlPoZIXcUOkxc+reM8tJmO8hQ08txiMMxubwu5bB8qQQjwVMie373cPtAiCsfzIZ3Im2xdlXIq+ZCvCZRdyC7v7fE15R5eNmc1Z8n9bNvtD/lF4O8bB4qUUtrhfWCqzpuwz70lc/7I7gZh2X4PlNjNbmHYbFzNuI/vXFYELyitm0DvTiOC1MT36pJMjdUUwynVvI7xPWeS45Xh9bRED43wLubPq7YYcUwj1ZBKvfLhyEi/BVw80YHjGrQYbrMY9aMF4/OkvHZkiSCXOB22ezwNPGK1/HqGPkBiehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4yu3H0/+ZE7/hWLXrEnM0styapwjlfE+DCwHW1rUPtU=;
 b=dDVUhbrcCPWa455QMwEthYq+bTPCvXtKYzhifm8rvwrv9/LFVjEkk1/ihI1HSWOHDowprtj5E67z0HWmRoeBhQ8cX/j4MsxElW2uKpwl+D58W7pfrgfJk9WX1v8vrMPzLkqfT8yjEZKRfxFPIUoldQOOkzuSIPKXL6OJ7CBOysG1XTSUTXvV2R4ppl4kS12q9VzHYedNjkxYOHEDZWxsi7seRWej7YzvwnDJj50/cH3Y5DPfbutR1GT+4mOQVEuNPsAa3Ep4mUBDEf0JUqhX9xp+GDKbMRUprKXjyTMn7DSQmTUROTWWCwJMLdjOnjFcAVXz/INAjfv9OmzhuLllwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4yu3H0/+ZE7/hWLXrEnM0styapwjlfE+DCwHW1rUPtU=;
 b=puZdypzd2zDVeNcy7knD19b3IHKp27LZTHeJ2ytkx0q2xMihBvonOxb2IeU2szzKPPyVqKjRikat0Zj44sFbXTV1kjypoP8M4HsshxQqsSFiLTzviNa298u1rGyDL4Ykt7lzmp91WmYXYYkbgP91KdB/HFuXnRGgHpFzw3MHnyo=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5580.namprd11.prod.outlook.com (2603:10b6:510:e5::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.20; Tue, 12 Oct
 2021 22:15:39 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a%8]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 22:15:39 +0000
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, Matthew Brost <matthew.brost@intel.com>
References: <20211004220637.14746-1-matthew.brost@intel.com>
 <163338641382.1481.16854458251824370216@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <fcb604f9-5e2c-d694-5f02-ce0acb780947@intel.com>
Date: Tue, 12 Oct 2021 15:15:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <163338641382.1481.16854458251824370216@emeril.freedesktop.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-ClientProxiedBy: CO2PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:102:2::27) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 CO2PR05CA0059.namprd05.prod.outlook.com (2603:10b6:102:2::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.4 via Frontend Transport; Tue, 12 Oct 2021 22:15:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 11f3b26d-ea66-4392-e345-08d98dcdd2f8
X-MS-TrafficTypeDiagnostic: PH0PR11MB5580:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB558050019A675DA1CF062676BDB69@PH0PR11MB5580.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZTY+JmR6v1Ksw+VhPU0aRophPZvXJ81aAIfafv38fFHrIOR34zRAJiIayVs9kp2Aag6fiVQD5VBPkbS2otPMKmSBbMjtFC8xTJcNQwDrV9xCRl4lx1fnp0cKk9Pu3s+fWIGh4d0QBWeMhbcoVxuKURC8G3vJ5/kzDRR3OtKhq9OglRyVRIhClUgheh/mNcjLJN0o6afGX3FQj7/tVQR3V2qfbYWXsTsgAXV7cvMFHaLdOaZSecTrDJ4b1pkJtPKlrG3iTJGZidB+g7d81ou5pogG7MCl7tT2jri0v7J2zkTrkxBK0fGnQnpDVz5jjYuQ72B2BeOcQbjS1VlTnuyyNY179kW6foq5NxQpKmYgMpT7ZnrK/wFfadQFHIo/DiDlUgePA1SbPMKDn4MFgFZJgtG+/29WFYy4fIHnpEOO5pbBb2pMKJKH0Z+9ZrsFSUdDMy3KfyyEl4y4lHoAzFDkqnrcn+VR3Yp6rz257b60YHQ4yi2AaMdiEJqBbe7HLrMtthP5gdUKOUaMcjQeRxnRbGelmEswCtyXvesV/af6iDxJpQxdpbO4gJQ92CRcLlXeL9fCiOM+IQ6FlNZLgz0I7IgfF0qotLzglSO5pdSCNW6Kmv1YAQo+zWeftClIka5DWR0FYC/ciBARPMmbbhpYsWtfudKwa91pOPLtGuLgdTkFLRCMw/4DNY+6dJfvio1GMP83Hk/VnOX3Uk6oOE8YXVkM2nRdgiR/RalLfacorVY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(31686004)(31696002)(2616005)(53546011)(83380400001)(8936002)(36756003)(86362001)(4744005)(38100700002)(186003)(26005)(508600001)(5660300002)(956004)(82960400001)(966005)(66476007)(66946007)(16576012)(6486002)(316002)(110136005)(6636002)(66556008)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZCtkcXB0dGREQVV1S0ZlMDVlNHhtYW9mYU9qcXQzT0tSamFIS0NGOUI4dkpF?=
 =?utf-8?B?QnFOQkZsNmRaRG8wVDYvS21sdmxBNS9BWDJRUFRyeWFIWk5tWEJ2UGlNTm1v?=
 =?utf-8?B?Tjd0RUtQbWxNL3g3YjBSdVNhN2JrVm8yZld6eHRSak5UMk1raGhEM2p6c0ky?=
 =?utf-8?B?R29qbFphRGl2d0RyRjNIOHErZy9MN0lIaXMvN2s2aXMwOU1DN2FCOTljdEU2?=
 =?utf-8?B?YmJyUndNZFYwMVNRWUpoMlRqRzA1bCt2Tnh0czNyYmZpNStaOHJxMGlOK0Y2?=
 =?utf-8?B?VW03Z08yK0lJakZuYkhmRUhMVUpWSUI0SEhVYk5Qd3Z6anN2UVovU29OYmxH?=
 =?utf-8?B?eU04UnRLRFdGcXZpdjFwN1hHK2NVZDI3Y3k0cTZQTDJ3S3c3dXVRaDlLVW9B?=
 =?utf-8?B?VlJEdDdNeGpqTlhQcTFUdnVYWkczR2tlbUNXM0thR1lWMW1pTW5GOVpMb0px?=
 =?utf-8?B?VFpsMGxrRGk4QkhiZkI2UWtXb283aEdaSGxtVnFOdjkvL3cvSyt1Yy9qYnFu?=
 =?utf-8?B?OVFoNlpjbFhQc3ZTYVcyRStkc21aUThrTmYxZjY2bkRJZFBOTDdWK1JjbFNV?=
 =?utf-8?B?aktpTFY0a0ZrOHNrVWlnejN5QnVGRVpJYVB5WE9HVmhoM09JOXphNll1MGlG?=
 =?utf-8?B?YnMya1ltdlh2MS95THEzSVBVMWw3WHFmR0FPWU5OSHJqMUdTNEJuMTBJcHl2?=
 =?utf-8?B?UmhTZlFsMWNRUEJDVjNKVzNRbzFXQy91a01BZnZad0R4NVVST0N1R3k3Ymww?=
 =?utf-8?B?eUZUeW5BSUh2alFaV1J3ME1uZjBia3lYOVlxMHJwcUtrb1VLOU1VQmR5MTZk?=
 =?utf-8?B?QzFicno3dzNTRmh5NllKRENIZjF0VHI4YU9iZDNLRWtBNGorRmFkTFNUMVhK?=
 =?utf-8?B?ZmFIWm9mTEhLdTBHSVEvdHhkanV1eHdQcWJoRllDVkNCT0xvOEZ0SFNQYTZU?=
 =?utf-8?B?eUtHNTFqckdHSWVLamlQZGp6ZG1rc09YOGpGWHFKQ045Z3hiMlI5VEkvSm10?=
 =?utf-8?B?eVBnK3ZsbzY2K2pzeVo1Nk9kdVdiMHl5R2NvWThGNjhqd1QwUjc2U2E0UFlU?=
 =?utf-8?B?eHo3V0VHajNSTjdHN0VQZ2ZwbG1YaGVSci83NWx0ZXU1NHQ3OUhORVJ2eFJs?=
 =?utf-8?B?UjBPV1liblprZGpDUEtDUjgyazVDT1g2THE3S1JSMFA1czkyNkVVWWNPZity?=
 =?utf-8?B?ajlGaFJ6ZnRZRWVZNDBLdjRoY05DTmJvdmlVYWU5ZGd6V1NLL2lhNFdzWElG?=
 =?utf-8?B?c1pmUFdZYU5UTi8xYVJIdGFlVmU3bTgrWVVSQmtWYlg0QWdwd29sNllCWXho?=
 =?utf-8?B?TWRLeXdhSHV1UnRJaWlxNEhVSDdNQjhrVWJUQTAyM1R3cVlDVnBac0MvVjFR?=
 =?utf-8?B?NFYrVEVEUzAySm9yc0R2WVVSS21OdzRjbDZacXhxR1AyZlo3VWM1MFZjbjA1?=
 =?utf-8?B?M3JGZFZyWHlmTE5saTZWby85U1c0NGN4WTRpVS8vQ1MxdE03SVVFMWg0UVNO?=
 =?utf-8?B?eCtPcFJ3ZjcrVmdVQUJOV2xxSk5lMTN5S0c0ZWVIZllDb0kxdnNVR05GV0kw?=
 =?utf-8?B?RGtMVTNsbFBXMEt2cUF1WWpGY1FmVExpaEFxS1o5UDA0K1ZHOU9xcXhFcUQ5?=
 =?utf-8?B?MmhZd3IwSXQ4ZHhQQStwREJvMnVVTVlWalJzZG1ScjQrR25wK1p0Q0VnN08w?=
 =?utf-8?B?SHAxNW5mN09Nd3lIQ3pMWUJZTDJxSjJJb1F6MHhLanhrTUVYdDliL1AyRGV0?=
 =?utf-8?Q?C79YYJ7I+CG1K2EvXD5eIam2jYxfsQKjn9UE9P1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11f3b26d-ea66-4392-e345-08d98dcdd2f8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2021 22:15:39.8189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NIa/hprbZg2HRGsmdTzG39alzq7FLpBNG/vkkacIEKx+0v8A7co6q3h2tpcjqtNt/8+RsZDxIQND2T/zfjF9XKla5ovARyNM5h+KNFu3LLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5580
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIFBh?=
 =?utf-8?q?rallel_submission_aka_multi-bb_execbuf_=28rev4=29?=
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

On 10/4/2021 15:26, Patchwork wrote:
> == Series Details ==
>
> Series: Parallel submission aka multi-bb execbuf (rev4)
> URL   : https://patchwork.freedesktop.org/series/92789/
> State : warning
>
> == Summary ==
>
> $ make htmldocs 2>&1 > /dev/null | grep i915
> ./drivers/gpu/drm/i915/gt/uc/intel_guc.h:166: warning: Function parameter or member 'submission_stall_reason' not described in 'intel_guc'
> ./drivers/gpu/drm/i915/gt/uc/intel_guc.h:166: warning: Function parameter or member 'submission_state' not described in 'intel_guc'
>
>
These seem like valid things that need to be fixed.

John.

