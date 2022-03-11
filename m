Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1996E4D6931
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 20:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B7D89202;
	Fri, 11 Mar 2022 19:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6640289202
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 19:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647027987; x=1678563987;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N1tPYoIJxa+zKKFTtIugbmev0R+uyo2Da3oE3W9X8Kk=;
 b=kxgI2XF24tDpGA5ilslZF4npoXyfthOuejjyfF1qbBDVvX18OOaNd5zt
 CqEgUFd12sRYBsPtwhindJOtNv9iPS7wCj7yfdXPaAhTx15fKpxxCHram
 3iZuro0v0ULVy14syAeG5cCC5hOLNVpW2nnkZ6QTgEEuEOvMcxl3Hz0M8
 N4XHnJxVSk//Y4ZikZO27RSToEobelnuLQgCZZ5lz1yQVZHRg336FFdc/
 UnWip68R1upgKlUIgcCu6NpwdUgbA0CSkEiz5CssJVBTkB6Y51pqcB5uy
 nMt8RhbicZuDftcvOZfo22Ue7wzZ8lbFHuKUwfohL04tYWM1lPuThrlJ4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="255830691"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="255830691"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 11:46:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="712953573"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 11 Mar 2022 11:46:12 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 11:46:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 11 Mar 2022 11:46:11 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 11 Mar 2022 11:46:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fwd85c7mjfDYUxpg6UwpUdgKoRAM/u+3786bjrIk9YUiAHwfI2ZvuGnPoKU2f8Ta+3qCvq0B2LMwp2e7/FXVPLq0DhW9crO1KJyf9t8D9XkkGNtYR3+Ojt+rias2hTNO8i8A9d8Njr33p/B4gECUaalkAJmYTCpe6pintD3EpEWat7gl8eY8caUh0+l1dnNy9nnxpWXjyRfORjBTl6SqIwEidnksBAbopRk/60lh9feIjSH4S1kykuTNrAWzBQVukdQmriN+RM/dE/TmIUN+EhClkVNMpFLb9LUYyO00hbtMGsL62IDmZCAvQIJnJMyR+haovfL0Ji/LwAW4g/ARWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FznRm+SAeHdSIbk86XlXgATjREcOTnqOJaBHja8iwDc=;
 b=S+X0R8QiepoysbFRQMbWRTfSqO0gYov0yqRKPxP9fAFalUyeMaSahDzc6CsquZzdmQR9HknHFisrFYCxfouhY6gDR+bLKizN44Ym4Xdc+ZY1t10gn19gC/kZlCQO134IEgml1IR51Eor+TVNxdGacsiTL2Dn77/8rCmPPR9RJ/2APTuEpOhXmes5gg0fiyj1D1G2vkvFRG3qdUMC8wIbFQeqiGNmiw6pbR+1u8/QEvtOm3VzkSeR3ZuORJCVrlmr30L47mWF6Fj5tniNLtlcesyA7CA31old9NgigshBHCGoDEVsaFlJf6ny+R5QiLLsen1cXIdOwyfrolVqF4PoIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 CY4PR11MB1351.namprd11.prod.outlook.com (2603:10b6:903:26::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.17; Fri, 11 Mar 2022 19:46:08 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890%11]) with mapi id 15.20.5061.022; Fri, 11 Mar
 2022 19:46:08 +0000
Message-ID: <afe227de-82ec-781a-9c63-b08d2d6736d8@intel.com>
Date: Fri, 11 Mar 2022 11:46:05 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-12-alan.previn.teres.alexis@intel.com>
 <20220311194014.GG23794@unerlige-ril-10.165.21.154>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220311194014.GG23794@unerlige-ril-10.165.21.154>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:d3::9) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 61835d13-7f4f-446b-dc7e-08da0397c97a
X-MS-TrafficTypeDiagnostic: CY4PR11MB1351:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CY4PR11MB13512131EC2692B7A5A944B38A0C9@CY4PR11MB1351.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7XAgqeTKMjQQv3lsbuPApmsoS5dhUFJ+a9E/1J+Bc+SHXPTN4i5dS3zOmu0wA6GtCT1u3WA2tI4KGGaMXRWfbTv5sCAgpLSeSlSZMvvSDz5++cmbNzgyfHmuxVu7w+5qOM0iR+SZJ/5NsvW05BrAXffJNA20qWHk2YNdtLoVyhYy5QpwAujiIhnW5M/WvcfhH+u4uZvjLywUsPndmQYoN6kCbtkV9NJ3UCAS3k/YXfCxXwLX6vyLMjA/pCLSn4+Htor3/QNFcDjvGHnTpb7YIcqeN3kJOp/1edzy4295ISgMHmFv7QbWCOzRtSESdldJbITo5/ubrHHiA/HM0NBKaDBr9xdvycFly1y9Cokg48U9tTyXoTvpTtVhCLMiR1zc32REYVt7Y0hxuLbPXl12PVToW6LdJgq5tCDh6fN7cqw9buHHFjj3KX3HQFnqcUtl8wLem+ujWtwDx8AhhyNSF2esaC4f9M7ZiBxSJb8pu8/h/A9QCU7stzOixoJYyWyT8fPd2XLQivqoQX0nASC6ARyvfBKzXWemroLgaFjZ4YaoR2JEXBhnHEe10QmhyvXpaAauOSuaA6eQ46iwG5FiaaGAPBT1z3qgzZ6xzmgIfqMZ06KR5Fh+a7aUMZPie9b3czlBPoFzeMpBXUKY7YOReJciYUpr6Q+aJ+d5tueQTSZz2VRwnnx5UE/vEIa0z+1ICwqCR84vAYEBYjhsWOj/47j5bqZhRqcAY8Fpi3lynkVlbPIqVOm8IQdDHnsEMIZA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(4326008)(2906002)(66946007)(6862004)(66476007)(66556008)(8676002)(30864003)(316002)(8936002)(508600001)(31686004)(37006003)(38100700002)(26005)(186003)(86362001)(36756003)(6486002)(31696002)(53546011)(6512007)(6506007)(82960400001)(6666004)(2616005)(6636002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elRkc0JqeXBSMUJZRUlwZjAwb0Z0YWc5Q29Uekd3cWYrY2JZOHdCdUgyU3BN?=
 =?utf-8?B?Q1NadUZ5RDVoanBPSXh3ZnE3OEhCUVJETlJXb2Rac09SSnNCaGRiMnNjNlNG?=
 =?utf-8?B?RXpIcmxhaCtDREx0alIvK3h0Sis0T003MjdSM05WNzRFdmFwU21LVkZUK0FC?=
 =?utf-8?B?dTdZSittWGRJS2dzSG5EWWFYU1lmVldJOVREajRNWWdtTGVQZS9FVjhGWmxD?=
 =?utf-8?B?a3oyN25BU3dSWXhzVExzazhiM0FsbmxBd2dhMnRLQ25nWjhpb3hQM3R1UVR2?=
 =?utf-8?B?QnJqeTcrMnVqWWpzbXkxUmNweFlzVGFBWUNsYlg3ei85ZXBPTU9sLzNkVWVP?=
 =?utf-8?B?dHlHQXNBaTBJeStMMGMzL3lPdUF5cEZ4ZXl3MUZaYlRYTUF1NklmTHlWZkth?=
 =?utf-8?B?emFmbjEvMlZ3MDhEdXRQc29VQU51czJKb2NoVGpvMnZOTGcxMmtnYmg0MXIw?=
 =?utf-8?B?amRwRk5CK1ZEYWVTOFZIekIwRlpaa2trSHEvLzduakRaQnV1cjByRWVmRXQz?=
 =?utf-8?B?UDIwQTVKbHF6WHZyYlpyZVRrZ1pRZURkeUZ3dGVNbmNySFlacDI5QU1EZVlT?=
 =?utf-8?B?ZDRxV3JOZE1JL0t6V0JBU3NKZ3VuYWtScjMwdDliSUMxSW9VcFd0MHBETCt2?=
 =?utf-8?B?dU8zSEgzbjRWQzFKN3NOUUZSVEl1MUFBRWE2d1RvcmVnUkI1d3dDYlpVTTIz?=
 =?utf-8?B?WmtlbzFPeklsTzBEbEpPdUs2bjVON3prNi9ja05WRFBhWlBEOTZXYlFpZ2h4?=
 =?utf-8?B?U3NPZVM3RHlKQTZ0NFVlWlZIZWZHMU8yKzJ0MVIxNUVBSEVBRytEd0I2UHFz?=
 =?utf-8?B?OUExRFJLU21KSDdVU3V0cFZ0TFJ0L1hyRnpka25qK2lUMXlKeEJ3Z2VIM3Nm?=
 =?utf-8?B?S0FoMllxYktSb0lGMDN4Y1pxalFEOVdkcUplYlEvTXRTZm84RGd5RThobDNR?=
 =?utf-8?B?UHowckZVbFZaclM1YmsvclViNXhieEl3L3FaeVdsWXZPOWtKZE5HUmxJVXRX?=
 =?utf-8?B?bFM0aXNVejBVZVIwcXhONUZqeHhnTmJKTERMTHJIRXB4WjFtdmdneFN3YWpL?=
 =?utf-8?B?RzlpTU9XZXd0ZGR1bGd4ZlZEdGpmTWRmSFN2WHM5VGdmYVlqWVdkbEM3c240?=
 =?utf-8?B?bjZiNHhtZzJ4amd4NnFURVBPU0xTSXlIUTVFTVJNMm41K1YzaG0yWmdkTGpr?=
 =?utf-8?B?QUVDdTZGZVREYmU4T3JjbWs2TVdXQ1F2akhZalpPR01WMnBRK2djcy8zMFRF?=
 =?utf-8?B?VW5QM1VIeGZNeGVPbCsvMFZQL0h2N1BVT2JFZEtSNlNidDUrVUJZcCtzRml1?=
 =?utf-8?B?blg3WmRoT1ZnbVlRQkFiQWZ3WXhPWldrS1h1S0NQZ0d3S1JJVXpjMTNQZVFC?=
 =?utf-8?B?dnI3MG5kMm1DSjFscjR1Zk5oVjhWWEhXSzNhd09ZemNLRmgyY0d0akZ4U3hJ?=
 =?utf-8?B?Q0JrcGQ5eUFjZnB3NDNSc3F2ZUIxalBSS1o3V0I0Vk5Wa0FrbDliZm01TTd6?=
 =?utf-8?B?WGxQTjVNZ09vUjBBNW96WFpBN2dNV3hiak9Dei9qa3dacmpyZWR2a0NWbFFV?=
 =?utf-8?B?K3QxWG1xQ2RJVmUzYmpLNE1uVlV5cFFmQmxsZVZhcXJ1VWc1SG9TNVNLYmhL?=
 =?utf-8?B?MU1sYmVUVkFrR3BSaDkyTzNoVVNsZk9pMkFzLzhMQTZQek1NaENQSkpyT2Jw?=
 =?utf-8?B?akZRMnV5U1BGZUp3WlVYUFZyYjAwNzhCRFlMaGovUVluWGIyVm4ydTJOMnJw?=
 =?utf-8?B?WU1raTJlUmJjOVB4bE9xUG9KbEtRam50U2VHZVN4Mm51anFjSkl0L3BWVWFu?=
 =?utf-8?B?Nkt1ejE4am1MS05pUjZvVXpXZmFRcWk3M3pUMkZtb1IwNFNPUVFVMFMydk1W?=
 =?utf-8?B?Q0t6eXg5UGVNbjRtUXpnKzhzblcrZUpsdUE2d3dnNnpvQytJNDhITDBzWWx1?=
 =?utf-8?B?MnRTSlpZLyt2TzdUNmRlRzdZY05wb3M5bVU5UzF6MndwNStmVk81b3l6dHpW?=
 =?utf-8?B?OHZnYnB3dVBEeld0ajZkOGtGUEU4RWkvYThmYk1xaTl0TjhKTDFmNFlEeFo4?=
 =?utf-8?B?SUQzWUhtdEo4QmVPMkVpZUtDMXlEeE9uamtLVEx6SFFXVXplT1ZhaTY5N3k2?=
 =?utf-8?B?dEt1M3k4T0VUQzZERUFmRVR3ZXY2d3dJVVoyVFBsdDlXeDNsUlJXS2oxVFBw?=
 =?utf-8?B?YXVDcUp4OUtpc0oxbDVyVDA5Z0FlN29uYXZTN09NNkFZNzNRQ3lmTU9tN0NZ?=
 =?utf-8?B?OUdhbFd2aHYraGg1RTdFS29uWVVyekxNUzhsZzZXcDhYUmpEdkY2ZnRhNVVz?=
 =?utf-8?B?ekxPeC9Ca293MmRDUkhJbnNIaXVka2NHV05aQ01rNFIvVVJEbXJldz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61835d13-7f4f-446b-dc7e-08da0397c97a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2022 19:46:08.3282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yFopGF4UkHAUVz8DWbNK2LBkXvSPPUn5PzJLBOLTCuEla+0/uP1+niW6Ff/hcW0doaCZ0ArlvtRdnd6JZR11eX6se3dZjhKmgmcHfY9BY5EUoL8Te1AbMdTczBD3/psI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1351
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 11/13] drm/i915/guc: Pre-allocate output
 nodes for extraction
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

Thanks for reviewing and for the Rvb Umesh. ... will fix 
guc_capture_alloc_one_node as per below.

...alan

On 3/11/2022 11:40 AM, Umesh Nerlige Ramappa wrote:
> On Sat, Feb 26, 2022 at 01:55:39AM -0800, Alan Previn wrote:
>> In the rare but possible scenario where we are in the midst of
>> multiple GuC error-capture (and engine reset) events and the
>> user also triggers a forced full GT reset or the internal watchdog
>> triggers the same, intel_guc_submission_reset_prepare's call
>> to flush_work(&guc->ct.requests.worker) can cause the G2H message
>> handler to trigger intel_guc_capture_store_snapshot upon
>> receiving new G2H error-capture notifications. This can happen
>> despite the prior call to disable_submission(guc);. However,
>> there's no race-free way for intel_guc_capture_store_snapshot to
>> know that we are in the midst of a reset. That said, we can never
>> dynamically allocate the output nodes in this handler. Thus, we
>> shall pre-allocate a fixed number of empty nodes up front (at the
>> time of ADS registration) that we can consume from or return to
>> an internal cached list of nodes.
>>
>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  19 +-
>> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 178 ++++++++++++++----
>> 2 files changed, 160 insertions(+), 37 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h 
>> b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>> index 2b09aa05d8b7..a77a6274e0b0 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>> @@ -31,7 +31,7 @@ struct __guc_capture_bufstate {
>>  *
>>  * A single unit of extracted error-capture output data grouped together
>>  * at an engine-instance level. We keep these nodes in a linked list.
>> - * See outlist below.
>> + * See cachelist and outlist below.
>>  */
>> struct __guc_capture_parsed_output {
>>     /*
>> @@ -188,7 +188,22 @@ struct __guc_state_capture_priv {
>>                         [GUC_MAX_ENGINE_CLASSES];
>>
>>     /**
>> -     * @outlist: allocated nodes with parsed engine-instance error 
>> capture data
>> +     * @cachelist: Pool of pre-allocated nodes for error capture output
>> +     *
>> +     * We need this pool of pre-allocated nodes because we cannot
>> +     * dynamically allocate new nodes when receiving the G2H 
>> notification
>> +     * because the event handlers for all G2H event-processing is 
>> called
>> +     * by the ct processing worker queue and when that queue is being
>> +     * processed, there is no absoluate guarantee that we are not in 
>> the
>> +     * midst of a GT reset operation (which doesn't allow allocations).
>> +     */
>> +    struct list_head cachelist;
>> +#define PREALLOC_NODES_MAX_COUNT (3 * GUC_MAX_ENGINE_CLASSES * 
>> GUC_MAX_INSTANCES_PER_CLASS)
>> +#define PREALLOC_NODES_DEFAULT_NUMREGS 64
>> +    int max_mmio_per_node;
>> +
>> +    /**
>> +     * @outlist: Pool of pre-allocated nodes for error capture output
>>      *
>>      * A linked list of parsed GuC error-capture output data before
>>      * reporting with formatting via i915_gpu_coredump. Each node in 
>> this linked list shall
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>> index 9308157d9a74..7bd297515504 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>> @@ -583,6 +583,8 @@ intel_guc_capture_getlistsize(struct intel_guc 
>> *guc, u32 owner, u32 type, u32 cl
>>     return 0;
>> }
>>
>> +static void guc_capture_create_prealloc_nodes(struct intel_guc *guc);
>> +
>> int
>> intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, 
>> u32 classid,
>>               struct file **fileoutptr)
>> @@ -604,6 +606,12 @@ intel_guc_capture_getlist(struct intel_guc *guc, 
>> u32 owner, u32 type, u32 classi
>>         return cache->status;
>>     }
>>
>> +    /*
>> +     * ADS population of input registers is a good
>> +     * time to pre-allocate cachelist output nodes
>> +     */
>> +    guc_capture_create_prealloc_nodes(guc);
>> +
>>     ret = intel_guc_capture_getlistsize(guc, owner, type, classid, 
>> &size);
>>     if (ret) {
>>         cache->is_valid = true;
>> @@ -721,7 +729,8 @@ int intel_guc_capture_output_min_size_est(struct 
>> intel_guc *guc)
>>  *                                err-state-captured register-list we 
>> find, we alloc 'C':
>>  *      --> alloc C: A capture-output-node structure that includes 
>> misc capture info along
>>  *                   with 3 register list dumps (global, engine-class 
>> and engine-instance)
>> - *                   This node is dynamically allocated and 
>> populated with the error-capture
>> + *                   This node is created from a pre-allocated list 
>> of blank nodes in
>> + *                   guc->capture->priv->cachelist and populated 
>> with the error-capture
>>  *                   data from GuC and then it's added into 
>> guc->capture->priv->outlist linked
>>  *                   list. This list is used for matchup and printout 
>> by i915_gpu_coredump
>>  *                   and err_print_gt, (when user invokes the error 
>> capture sysfs).
>> @@ -865,19 +874,20 @@ guc_capture_delete_one_node(struct intel_guc 
>> *guc, struct __guc_capture_parsed_o
>> }
>>
>> static void
>> -guc_capture_delete_nodes(struct intel_guc *guc)
>> +guc_capture_delete_prealloc_nodes(struct intel_guc *guc)
>> {
>> +    struct __guc_capture_parsed_output *n, *ntmp;
>> +
>>     /*
>>      * NOTE: At the end of driver operation, we must assume that we
>> -     * have nodes in outlist from unclaimed error capture events
>> -     * that occurred prior to shutdown.
>> +     * have prealloc nodes in both the cachelist as well as outlist
>> +     * if unclaimed error capture events occurred prior to shutdown.
>>      */
>> -    if (!list_empty(&guc->capture.priv->outlist)) {
>> -        struct __guc_capture_parsed_output *n, *ntmp;
>> +    list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, 
>> link)
>> +        guc_capture_delete_one_node(guc, n);
>>
>> -        list_for_each_entry_safe(n, ntmp, 
>> &guc->capture.priv->outlist, link)
>> -            guc_capture_delete_one_node(guc, n);
>> -    }
>> +    list_for_each_entry_safe(n, ntmp, &guc->capture.priv->cachelist, 
>> link)
>> +        guc_capture_delete_one_node(guc, n);
>> }
>>
>> static void
>> @@ -894,21 +904,80 @@ guc_capture_add_node_to_outlist(struct 
>> __guc_state_capture_priv *gc,
>>     guc_capture_add_node_to_list(node, &gc->outlist);
>> }
>>
>> +static void
>> +guc_capture_add_node_to_cachelist(struct __guc_state_capture_priv *gc,
>> +                  struct __guc_capture_parsed_output *node)
>> +{
>> +    guc_capture_add_node_to_list(node, &gc->cachelist);
>> +}
>> +
>> static void
>> guc_capture_init_node(struct intel_guc *guc, struct 
>> __guc_capture_parsed_output *node)
>> {
>> +    struct guc_mmio_reg *tmp[GUC_CAPTURE_LIST_TYPE_MAX];
>> +    int i;
>> +
>> +    for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>> +        tmp[i] = node->reginfo[i].regs;
>> +        memset(tmp[i], 0, sizeof(struct guc_mmio_reg) *
>> +               guc->capture.priv->max_mmio_per_node);
>> +    }
>> +    memset(node, 0, sizeof(*node));
>> +    for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i)
>> +        node->reginfo[i].regs = tmp[i];
>> +
>>     INIT_LIST_HEAD(&node->link);
>> }
>>
>> +static struct __guc_capture_parsed_output *
>> +guc_capture_get_prealloc_node(struct intel_guc *guc)
>> +{
>> +    struct __guc_capture_parsed_output *found = NULL;
>> +
>> +    if (!list_empty(&guc->capture.priv->cachelist)) {
>> +        struct __guc_capture_parsed_output *n, *ntmp;
>> +
>> +        /* get first avail node from the cache list */
>> +        list_for_each_entry_safe(n, ntmp, 
>> &guc->capture.priv->cachelist, link) {
>> +            found = n;
>> +            list_del(&n->link);
>> +            break;
>> +        }
>> +    } else {
>> +        struct __guc_capture_parsed_output *n, *ntmp;
>> +
>> +        /* traverse down and steal back the oldest node already 
>> allocated */
>> +        list_for_each_entry_safe(n, ntmp, 
>> &guc->capture.priv->outlist, link) {
>> +            found = n;
>> +        }
>> +        if (found)
>> +            list_del(&found->link);
>> +    }
>> +    if (found)
>> +        guc_capture_init_node(guc, found);
>> +
>> +    return found;
>> +}
>> +
>> static struct __guc_capture_parsed_output *
>> guc_capture_alloc_one_node(struct intel_guc *guc)
>> {
>>     struct __guc_capture_parsed_output *new;
>> +    int i;
>>
>>     new = kzalloc(sizeof(*new), GFP_KERNEL);
>>     if (!new)
>>         return NULL;
>>
>> +    for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>> +        new->reginfo[i].regs = 
>> kcalloc(guc->capture.priv->max_mmio_per_node,
>> +                           sizeof(struct guc_mmio_reg), GFP_KERNEL);
>> +        if (!new->reginfo[i].regs) {
>> +            while (i)
>> +                kfree(new->reginfo[--i].regs);
>> +            return NULL;
>> +        }
>> +    }
>>     guc_capture_init_node(guc, new);
>
> In guc_capture_init_node, looks like you are just saving the .regs 
> pointer and then restoring it back. If so, you don't need to call 
> guc_capture_init_node here because kzalloc already zeroes out the new 
> node.
>
> With that, this is
>
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Umesh
>>
>>     return new;
>> @@ -921,7 +990,7 @@ guc_capture_clone_node(struct intel_guc *guc, 
>> struct __guc_capture_parsed_output
>>     struct __guc_capture_parsed_output *new;
>>     int i;
>>
>> -    new = guc_capture_alloc_one_node(guc);
>> +    new = guc_capture_get_prealloc_node(guc);
>>     if (!new)
>>         return NULL;
>>     if (!ori)
>> @@ -932,16 +1001,14 @@ guc_capture_clone_node(struct intel_guc *guc, 
>> struct __guc_capture_parsed_output
>>     /* copy reg-lists that we want to clone */
>>     for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>>         if (keep_reglist_mask & BIT(i)) {
>> -            new->reginfo[i].regs = kcalloc(ori->reginfo[i].num_regs,
>> -                               sizeof(struct guc_mmio_reg), 
>> GFP_KERNEL);
>> -            if (!new->reginfo[i].regs)
>> -                goto bail_clone;
>> +            GEM_BUG_ON(ori->reginfo[i].num_regs  >
>> +                   guc->capture.priv->max_mmio_per_node);
>>
>>             memcpy(new->reginfo[i].regs, ori->reginfo[i].regs,
>>                    ori->reginfo[i].num_regs * sizeof(struct 
>> guc_mmio_reg));
>> +
>>             new->reginfo[i].num_regs = ori->reginfo[i].num_regs;
>>             new->reginfo[i].vfid  = ori->reginfo[i].vfid;
>> -
>>             if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS) {
>>                 new->eng_class = ori->eng_class;
>>             } else if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
>> @@ -953,14 +1020,58 @@ guc_capture_clone_node(struct intel_guc *guc, 
>> struct __guc_capture_parsed_output
>>     }
>>
>>     return new;
>> +}
>>
>> -bail_clone:
>> -    for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>> -        if (new->reginfo[i].regs)
>> -            kfree(new->reginfo[i].regs);
>> +static void
>> +__guc_capture_create_prealloc_nodes(struct intel_guc *guc)
>> +{
>> +    struct __guc_capture_parsed_output *node = NULL;
>> +    struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +    int i;
>> +
>> +    for (i = 0; i < PREALLOC_NODES_MAX_COUNT; ++i) {
>> +        node = guc_capture_alloc_one_node(guc);
>> +        if (!node) {
>> +            drm_warn(&i915->drm, "GuC Capture pre-alloc-cache 
>> failure\n");
>> +            /* dont free the priors, use what we got and cleanup at 
>> shutdown */
>> +            return;
>> +        }
>> +        guc_capture_add_node_to_cachelist(guc->capture.priv, node);
>>     }
>> -    kfree(new);
>> -    return NULL;
>> +}
>> +
>> +static int
>> +guc_get_max_reglist_count(struct intel_guc *guc)
>> +{
>> +    int i, j, k, tmp, maxregcount = 0;
>> +
>> +    for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; ++i) {
>> +        for (j = 0; j < GUC_CAPTURE_LIST_TYPE_MAX; ++j) {
>> +            for (k = 0; k < GUC_MAX_ENGINE_CLASSES; ++k) {
>> +                if (j == GUC_CAPTURE_LIST_TYPE_GLOBAL && k > 0)
>> +                    continue;
>> +
>> +                tmp = guc_cap_list_num_regs(guc->capture.priv, i, j, 
>> k);
>> +                if (tmp > maxregcount)
>> +                    maxregcount = tmp;
>> +            }
>> +        }
>> +    }
>> +    if (!maxregcount)
>> +        maxregcount = PREALLOC_NODES_DEFAULT_NUMREGS;
>> +
>> +    return maxregcount;
>> +}
>> +
>> +static void
>> +guc_capture_create_prealloc_nodes(struct intel_guc *guc)
>> +{
>> +    /* skip if we've already done the pre-alloc */
>> +    if (guc->capture.priv->max_mmio_per_node)
>> +        return;
>> +
>> +    guc->capture.priv->max_mmio_per_node = 
>> guc_get_max_reglist_count(guc);
>> +    __guc_capture_create_prealloc_nodes(guc);
>> }
>>
>> static int
>> @@ -1076,13 +1187,13 @@ guc_capture_extract_reglists(struct intel_guc 
>> *guc, struct __guc_capture_bufstat
>> guc_capture_add_node_to_outlist(guc->capture.priv, node);
>>                 node = NULL;
>>             } else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS &&
>> - node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].regs) {
>> + node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].num_regs) {
>>                 /* Add to list, clone node and duplicate global list */
>> guc_capture_add_node_to_outlist(guc->capture.priv, node);
>>                 node = guc_capture_clone_node(guc, node,
>> GCAP_PARSED_REGLIST_INDEX_GLOBAL);
>>             } else if (datatype == 
>> GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE &&
>> - node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].regs) {
>> + node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].num_regs) {
>>                 /* Add to list, clone node and duplicate global + 
>> class lists */
>> guc_capture_add_node_to_outlist(guc->capture.priv, node);
>>                 node = guc_capture_clone_node(guc, node,
>> @@ -1092,7 +1203,7 @@ guc_capture_extract_reglists(struct intel_guc 
>> *guc, struct __guc_capture_bufstat
>>         }
>>
>>         if (!node) {
>> -            node = guc_capture_alloc_one_node(guc);
>> +            node = guc_capture_get_prealloc_node(guc);
>>             if (!node) {
>>                 ret = -ENOMEM;
>>                 break;
>> @@ -1117,17 +1228,13 @@ guc_capture_extract_reglists(struct intel_guc 
>> *guc, struct __guc_capture_bufstat
>>             break;
>>         }
>>
>> -        regs = NULL;
>>         numregs = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
>> -        if (numregs) {
>> -            regs = kcalloc(numregs, sizeof(struct guc_mmio_reg), 
>> GFP_KERNEL);
>> -            if (!regs) {
>> -                ret = -ENOMEM;
>> -                break;
>> -            }
>> +        if (numregs > guc->capture.priv->max_mmio_per_node) {
>> +            drm_dbg(&i915->drm, "GuC Capture list extraction clipped 
>> by prealloc!\n");
>> +            numregs = guc->capture.priv->max_mmio_per_node;
>>         }
>>         node->reginfo[datatype].num_regs = numregs;
>> -        node->reginfo[datatype].regs = regs;
>> +        regs = node->reginfo[datatype].regs;
>>         i = 0;
>>         while (numregs--) {
>>             if (guc_capture_log_get_register(guc, buf, &regs[i++])) {
>> @@ -1147,8 +1254,8 @@ guc_capture_extract_reglists(struct intel_guc 
>> *guc, struct __guc_capture_bufstat
>>                 break;
>>             }
>>         }
>> -        if (node) /* else free it */
>> -            kfree(node);
>> +        if (node) /* else return it back to cache list */
>> + guc_capture_add_node_to_cachelist(guc->capture.priv, node);
>>     }
>>     return ret;
>> }
>> @@ -1255,7 +1362,7 @@ void intel_guc_capture_destroy(struct intel_guc 
>> *guc)
>>
>>     guc_capture_free_ads_cache(guc->capture.priv);
>>
>> -    guc_capture_delete_nodes(guc);
>> +    guc_capture_delete_prealloc_nodes(guc);
>>
>>     if (guc->capture.priv->extlists) {
>> guc_capture_free_extlists(guc->capture.priv->extlists);
>> @@ -1275,6 +1382,7 @@ int intel_guc_capture_init(struct intel_guc *guc)
>>     guc->capture.priv->reglists = guc_capture_get_device_reglist(guc);
>>
>>     INIT_LIST_HEAD(&guc->capture.priv->outlist);
>> +    INIT_LIST_HEAD(&guc->capture.priv->cachelist);
>>
>>     return 0;
>> }
>> -- 
>> 2.25.1
>>
