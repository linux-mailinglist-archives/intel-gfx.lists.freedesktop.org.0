Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A47461871A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 19:09:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C4FB10E2B0;
	Thu,  3 Nov 2022 18:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E5A10E2B0
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 18:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667498942; x=1699034942;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0h0382iX3oK6aRUA335/DwZ/S31bu/QFfHudP5hXJgo=;
 b=WPfWS6WqKZFVAFCogAY4XfYZK+eIMvJtsny46GTecDcLlyUXZWSqLBDv
 1DsN1uPMGfHLQBtL+IwEqJCUE1VDhdjMkuoZNl9siAXpGtdpa66VwNGg/
 ErGfGUkwJXBHHKAdPb2v2zOMzENb/wouqun3IeXQJoAM4izsZvKWSrw9P
 G4lhjHtT8QlBJBOUKVgj503IYq91zq7ohm8HOH6R5ZgI1YriF3LRCSPfZ
 6Ht203lfMkRLU64oSMMYw/iajBv3DahhCjPWYbT+33k2t/Gotr8H09WxZ
 3PD1CwbHxJ0FXGkO5TSn7q+CV5/V47JmfDh8rRvfvOFWGDc644EbTMseE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="297224494"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="297224494"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 11:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="637274075"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="637274075"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 03 Nov 2022 11:09:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 11:09:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 11:09:00 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 11:09:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N0xrRhse2ld/L0ots6oMviTjLN4h7IUDiUTAVpi7BO9sPtvCkes67QZn5sfKLb8DKPj+oDvRLvsgKOruLJTSkDPAAmKmZI8Cg8Mj+CZjFWOIpQkgo7m1oqhW0xKT+nlrBPKk3+ODKW8IlrVZ5TXB0Ee9t4OclkT+pwHuh21glSPvq6pn1R89cSTk4FY4rBy4qg4U1YHNmnKmzzv7mYRiLb51rSrCMpasS2U0KCdZXisaAHxcx75Uvb0+tCR/WC0K9DqSISGupkPUcOKycaYYn0GMaIaKYsPvIpql61LEQmVBdJfic+eZk98s7guTCA+hZBRrEPoteSWnQZKJpsvfkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nYk9+vqGs5K2RSqr9zwDQzZ49VXD3SwN7QgoiGsuIfk=;
 b=NyCWIciWz/Nv0Yw5gs7zaipTzMR+jhcSMVUM9EgYUOAgSLk9xnXgi6mc7F1sqm/N7Rco6NDCz/hShJzGh4MpT3Utx1qwyckqVvuI4yp7SQq7k1mpbDIgBMkE/0Nijfe+CeBBCawPNr+9Ugwvu7/qCbV5rvhtXOZpkK9uJ1Ysc/+H3+qsehluXv4sLXEAegWqwDX/lzSKEfesE/UWJu2Ce0cpJWe0N1lW2/tdVbcJzPTN0cdXMdJF+VYVugOf24FrGHtL4BPxy5iLhcWTW/cI72QUvL+yZly8mPpDvUgF3r46oke/2XGot+K1RgeXLvcHYa2TjF3uatbBRgvHQHmF/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH0PR11MB5831.namprd11.prod.outlook.com (2603:10b6:510:14b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Thu, 3 Nov
 2022 18:08:58 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 18:08:58 +0000
Date: Thu, 3 Nov 2022 11:08:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y2QDsHVX9phoVfC3@unerlige-ril>
References: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
 <0a0f1b3e-eddf-9b7d-fc09-f6f097592bed@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <0a0f1b3e-eddf-9b7d-fc09-f6f097592bed@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0223.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::18) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH0PR11MB5831:EE_
X-MS-Office365-Filtering-Correlation-Id: e2e13ef5-ff7b-4a39-00f9-08dabdc67a46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uSqxoqQ+cTGp7X2J7+7V+F8slIBGjiy4bWOZ528LA/eColZgBtIHugccX/aKfl0RqXhrQrj7Y3MYduIz8Y+t2h6sdsm3nBiqrUyD0vRlxHY61u1Seemvus24xjo8HVcGDqaAC72L9PircmjM0zWQTn0hDSIRPdTwk+Lx1RYfDdmek3qEDAVE2BXOnpO0Pv3GGNUMezD+nQ0Pu5bD3UhSYNiuFCrE/7hJotzeTmwYa65Ovr0MBxY5apF1hS43AVY7iUJ9dHIyRr00seMBj88tskL7ddfPJCHpamUJTZZ3QYOyUDkiVV5X0+eyvtm5mHZUB6JcTRKVGXXb1Sj6wCWwym2IGS04fo0oMFSlD4NF2PwCr0VG2qWKn/aUFlRX5RZtKU8XETap3rsLeEbZdH+fZWVBCJjBLn4cP6jFVJsm+2Yny4U/Frrm2JBzZsKWDAxGJLvZ7cxsp9c2hYHAtbQMjZmteCW98DwXgnOB05ACRIgd81MCL2YkYp5EJs0eOxFlRm4NzJhudNOUn46mdYFrJs65nXOIJopL/FQK2haZiihRg/bTIN6BptrWYYVLhmVsE/ccPaMvz3cvJoeliD86qIhhA6riBaqpiTpc6VhHrYpeP4EZ5iC+aDMY1/HKnX6s6xIhuTGB61zghtvYGZUrlpPy04C+2Q4+x02f6G4sO0c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199015)(478600001)(966005)(6506007)(316002)(6666004)(6916009)(66476007)(66946007)(4326008)(8676002)(66556008)(6486002)(82960400001)(38100700002)(5660300002)(41300700001)(8936002)(26005)(9686003)(6512007)(2906002)(186003)(83380400001)(33716001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWYvNStzSmhEVG02TjFUTEo0eXJiQkVRaVlMa2RpMXdNY1k5Q0xvdG96K2p5?=
 =?utf-8?B?VThLTTI1eDJIeWExSDdDQmZzbVdwRzlTM2cwK21qMU43S3NGQmlkQjVCOWZP?=
 =?utf-8?B?Vm9XbFlwSW4rSXZJN0ZjOHoxQ0VNb2R4VVpsVkxyY0lBNm9kNCtLdVRWb0hH?=
 =?utf-8?B?MTdid2tJeGQ2aFk4NnVla3dXYjhqWnBFcGJFdGlxclM2SjIwS2FuTVBmcGJm?=
 =?utf-8?B?c0Q2eEVvbi9jSVZxeDZPcXNwMjdWc0c1QkNSSmRDMkZMRVhJVnZ2Uk5NRkVx?=
 =?utf-8?B?ckdyNW0zNHhieTBSejZoUFZnT051NTRqSEs1NFpkM05EZ2s2UlJZcGhnSnRx?=
 =?utf-8?B?dmN4RWlQbCtpUWtrc0lBVThJeldrSWFCeHp0M1E1d1pNTjgxeUpuamtLMjds?=
 =?utf-8?B?dWlFb1Y0Z0RseWExRVJJQStkYjhRTitCN1lmdVp2ZWx5V24rRHMwS1lwekV6?=
 =?utf-8?B?MStPeUVzNGdGMmpZVWczS3k0UnorM05zR2s5c0dFRHNEU1M3TDdIM0dRMFU2?=
 =?utf-8?B?ZzQ2T2ZtZUZmM1lJS0pmai8rV0pubHNYUHpNWHp2UEV1OUVkZFFWVGZZVWZC?=
 =?utf-8?B?SzhJdTQ4Tytsc3krVHJOVkFPYXRyNzFScFhDcUFnNE14Y09aRXJoaXBZWjFI?=
 =?utf-8?B?RGUvb2NyVDRsQnRtQ3o2Skh1V3JuN2M4cXQ1dUNLUDREaW9DOUQ3WXd4WjdM?=
 =?utf-8?B?U2JDSDN5WSs3Z3NFOUp3V0hTSVBxU3ZwUXJRb2FRaVRQcXl0N0tuMmRWWG95?=
 =?utf-8?B?aEp4SVNYSmdoUjN2Tkx2clhrRzJ4eGo0TWd4bHpWZUxsak9UYk9yVXEzbklk?=
 =?utf-8?B?bTNNdmNWUzFpc3ZoUmZCeDMzMkNOU2JkK0pNWVlQRTdvUmcxWkg2VnkvZ3ho?=
 =?utf-8?B?V2xXWUxzak4vV3p0MC9JbDE2V2c4UFRuTG1oRThESk5PdVg3d1FLenAvdjF3?=
 =?utf-8?B?NHBVc1JZMENzQSs4dURBenlYdkl4dTNEU0hGUCtnN0dFaEVGWlBYNkJza2ZN?=
 =?utf-8?B?MXJuVTd3aU1kK1g4MEprN1hDcGpyek5NVFhyQXFyMkhwRGFlQXJYeWpUOHVB?=
 =?utf-8?B?SXQvQVc1c1JhQWlES2VqNWEvY29kck00SGhYY2l4V1cvbFZ0c01xd0ZENmZm?=
 =?utf-8?B?bElmUUhxdWtYVUZCbHhxYS93cDR1YmlNSmZsNlBHMnIvU3cyZEVjVzAwNFR1?=
 =?utf-8?B?ejFiSTc1dy9yU0hHSVJKb1N4S21WN0laQ2pFV1VSNS9oQmFVQXE1dU5pa1JY?=
 =?utf-8?B?dStFckxXc291WFNldUNJZEhidXR2aTlzakhoRFUrM3FWL2g1YUNnTTQybDNm?=
 =?utf-8?B?UXdGeFZMbnJSTndCMVR3TUlteldLUkcyQTdpcGpZN0VmZGtaZjN3SjhMYWhh?=
 =?utf-8?B?Z1M3QUZ4MmFVMTcvZGdKVGxFaEZMckxIN21KMTdTa2c3U3JPdW10N2JlRGdJ?=
 =?utf-8?B?QXpmQnk2R0svQUI5NWNObHZkUWVxaGs0VkhNd014c0JEY2l1VGlDaExiVWRx?=
 =?utf-8?B?UlN3Wkl0YmNDNVJTS3ZOWHM2RHR6dCtvbG9Bc0dEd1F3RW9KVWRuMjZBM080?=
 =?utf-8?B?czZYRXBvWjVRaWpOQmhoVkU3eENuUXZFckczRGdrMldqaVpOUmg5TGJJOUNO?=
 =?utf-8?B?VHYvdWZFaTdnd3lwMEIzNHR1ZzR2M2ExL01iUWRYRkZ6YzBrSE9MejBPZWFE?=
 =?utf-8?B?N2tMaVdrc2dGM084TTRONWJNWUc5d0ZPKzBmSWhYeS8zNVdkYk1GckF6M01u?=
 =?utf-8?B?WjY5UUVNbXdQVUs3eTFJaVBoenVFRmJOODB4V3l4Y0Q5U0o0NUhHZWlwbWM0?=
 =?utf-8?B?bVpTcmQ5RnNqZlhTQ0lSVm9neVovbFh6eTNqL3JoWnkwbm1vVktNVWZjOG81?=
 =?utf-8?B?MnhXbVFEd2FvVFJSQWU2M295eEs5MDlEbjBrZUtGbExONFdhWFVZVmFSdVBh?=
 =?utf-8?B?Y3dTMDFhOGczOW1EV0FtZVZyM1dxc29pRllTVllGb1QvSkFGUzMwdDFGZEE3?=
 =?utf-8?B?Zk1OUlZOU1ZEdWloYWkxRjgvVFN3cGNFdktYOHJDQzUxL2ZSeGxjN0FCYmpm?=
 =?utf-8?B?bVRwZ2pHZ1o0V1cyQWRaMVhndWtwOE83QWNMeUtPdjlQaDA4R3FLRDhTSmhC?=
 =?utf-8?B?SHZ1a3pWZGhZdmZPMk1pSjQ0SmR3Ni96anorckRZQ2tEZkdZb2F4d2x0RFFJ?=
 =?utf-8?Q?1IoBccNzRvZQWWJfdH36/CA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2e13ef5-ff7b-4a39-00f9-08dabdc67a46
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 18:08:58.0178 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5RN1PjjODPDodsfyXOGkdbFxuTn2iCqdVIhW4u33gRyl6GM7e6qrJVowxARDJpBoJgkQcXDPtQAffxy4t3UTsHA0LK7o/Wt2qfxaNARJj4A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5831
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Bump up sample period
 for busy stats selftest
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 03, 2022 at 12:28:46PM +0000, Tvrtko Ursulin wrote:
>
>On 03/11/2022 00:11, Umesh Nerlige Ramappa wrote:
>>Engine busyness samples around a 10ms period is failing with busyness
>>ranging approx. from 87% to 115%. The expected range is +/- 5% of the
>>sample period.
>>
>>When determining busyness of active engine, the GuC based engine
>>busyness implementation relies on a 64 bit timestamp register read. The
>>latency incurred by this register read causes the failure.
>>
>>On DG1, when the test fails, the observed latencies range from 900us -
>>1.5ms.
>
>Do I read this right - that the latency of a 64 bit timestamp register 
>read is 0.9 - 1.5ms? That would be the read in 
>guc_update_pm_timestamp?

Correct. That is total time taken by intel_uncore_read64_2x32() measured 
with local_clock().

One other thing I missed out in the comments is that enable_dc=0 also 
resolves the issue, but display team confirmed there is no relation to 
display in this case other than that it somehow introduces a latency in 
the reg read.

>
>Regards,
>
>Tvrtko
>
>>One solution tried was to reduce the latency between reg read and
>>CPU timestamp capture, but such optimization does not add value to user
>>since the CPU timestamp obtained here is only used for (1) selftest and
>>(2) i915 rps implementation specific to execlist scheduler. Also, this
>>solution only reduces the frequency of failure and does not eliminate
>>it.

Note that this solution is here - 
https://patchwork.freedesktop.org/patch/509991/?series=110497&rev=1

but I am not intending to use it since it just reduces the frequency of 
failues, but the inherent issue still exists.

Regards,
Umesh

>>
>>In order to make the selftest more robust and account for such
>>latencies, increase the sample period to 100 ms.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>index 0dcb3ed44a73..87c94314cf67 100644
>>--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>@@ -317,7 +317,7 @@ static int live_engine_busy_stats(void *arg)
>>  		ENGINE_TRACE(engine, "measuring busy time\n");
>>  		preempt_disable();
>>  		de = intel_engine_get_busy_time(engine, &t[0]);
>>-		mdelay(10);
>>+		mdelay(100);
>>  		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>>  		preempt_enable();
>>  		dt = ktime_sub(t[1], t[0]);
