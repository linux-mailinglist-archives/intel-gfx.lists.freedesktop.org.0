Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A67B46F1DEB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 20:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A663610E15F;
	Fri, 28 Apr 2023 18:21:44 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 086FA10E15F
 for <Intel-GFX@lists.freedesktop.org>; Fri, 28 Apr 2023 18:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682706103; x=1714242103;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3bNExJ3ALxId/NhdM6fuaTAVk3CdHbzOb3vXS8ialWc=;
 b=XdFOfSPGcg+AypsEjz7IXkPZTeGP/bqdvszbEJ6tUNYekhINs7v1Xacc
 R+7G0WyHP6hWhvA1wFbvBldllclTn5SDjb+4UpXz2Nkfipoom2UDFjoLK
 wwVRDBrJd9lJESiAb1COZJl/jlPhF39fkgO8yk5pSuOA85D0uc7DJsCcB
 iMZCIPLXUoTPBwb7PxKKDH/24K09kLPLa6+ODC/DgkE2l0Wx7BunUPpHr
 0MqxG/ivymREtWvD4Dbbnb7OVSPUN7NKm48sBhpp0vqZKez75ZyfJk0Pg
 0EIr131KmrfJ6gz9TB0RNU/fcTH/qCPKD49NGcjXz1tR6q76oZ5Fsq7lL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="375818084"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="375818084"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 11:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="806465525"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="806465525"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 28 Apr 2023 11:21:40 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 11:21:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 11:21:40 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 11:21:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oCMOnvPOCIglXj59XKNa7cnU9BkJPLS3bmVsmybAKjkhe4BFELRJ5Y9uGiI+086RHXJAJ0dJYp2ZqMIYhd5/4bdCyUWkTNBHlng7W9pCr+BkIeE/3WeEeL0KIRhdnGQXaGa1m+xIyJnviSjx/bsPvbOGxVWgs8ZqduWeoj9uZRtqPkNIJvs4YHX+JxYPtdoYwt6oyaErbk3tO4hw9wy1c2h02ulu7Y1Tic4p1gk2QBN/8ogISudb1yzOYJ94Z6Uo3ZxpT1PrbS0MWaf8X3/iEqeYZPDz6KeXVfSHyZ7R6adpnrg4Sx4EW38FPlZBMNccyn37qlaLEzOYzvTEnaThDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8/cfA1jSjc3TUlq8K+y78dAyQwW2BvlfcvRXlufOzFU=;
 b=HFHMEFdCXBcSzQYS6VmGLG53uO5KnBRnNZFSAcGK14HhyXhFiPh2NAtga+bf7GJl01UsnXz4B70uRlSpFy4Qz7L/z2A4qKaOG70xoLi8TV/5R9ddytLrAwuosOIBFtTQ9YSHVKN8GmBtRTtmw/emJ2K3BJoVRYpvSiz870hzsx9se8itFjF9qUNdU8K8ZNb53OwCfHUxbXMkLG6auYymYCH0lUrWxw556RvngnkvxMCgeDaEkxtLhD3ZoZfEF5QKCkRzNsqvDXLphwmd+L1Aj5SySkGU1Lb6wrcaSP0nnhhlOyF8wL5GRXk6q3VmBGEHSLxupjqTRUpYaJ6TLk2wFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BY1PR11MB8006.namprd11.prod.outlook.com (2603:10b6:a03:52d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.23; Fri, 28 Apr
 2023 18:21:38 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::2687:6af2:e0ca:c1e3]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::2687:6af2:e0ca:c1e3%5]) with mapi id 15.20.6340.021; Fri, 28 Apr 2023
 18:21:38 +0000
Message-ID: <459d569d-f7e6-802e-c76d-179e26164fc2@intel.com>
Date: Fri, 28 Apr 2023 11:21:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-GB
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
References: <20230406222617.790484-1-John.C.Harrison@Intel.com>
 <20230406222617.790484-2-John.C.Harrison@Intel.com>
 <97546a0ca475345fd18f8d80fafa5f7a11e34101.camel@intel.com>
 <0f23e701-8d7d-2fc4-192d-4c0497587a24@intel.com>
 <3013e1db18859c39cc94aae771ba64993f5c637c.camel@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <3013e1db18859c39cc94aae771ba64993f5c637c.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0115.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::30) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|BY1PR11MB8006:EE_
X-MS-Office365-Filtering-Correlation-Id: 66cf38a5-7264-4999-d64a-08db481567e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DGpw6YRQFNJRfs/PZiMic9Ts9zLq8bXB9a90IuKt6A58m4ds+oYFKAUSFEjZQbi8p+udUKDXJlXPVFvfCk8O1rB8qTS0wbfCpjBhGRlXvlDPtsalJdWwA96v6CEVt8cwtZIT5eWs1EC6bBXooO1gHF/0GPql4yv8F63FsZ8M4S/2O/ms91WJzqUu8j3VXM6fhCj5Yu1OjSPMG6WY67nn2n9dAVLxYA4riopfo4cKOsPxWSnLMBKrTj0MSEr2amEUAkElu0XfJYBiCHfi9CnCpoOHexv5hGkTsagW5liR4iydiqL+uVnoZYPujmo7AumZwo9tTY/lOFkzIDMdSIVPnyY86nXXYg9jxAXruN2sf/PCN4mjcrwY2fnXTjCB572/uoM+oehb5CBpVeTlCWN4AVSa+bQ/wioPiz2NwAjZGyLzSiVGCNHDlY0JzM/OMquakDrkZIRamDqrF3AwAbgnb6N8GiWXXI1aufnE0I08g8QOV0oQz5r/WhT6ZZm0tFwA2ROporE4IeFQwd8MjVpPSshnjaWr5z76K2MLoworikQGesR7IV5f7KqNdgY0iEC0tktNcMhkzvRCZaDiqVyat7hbS2Er80GquRfAL/oOujnP3Gx7gGGCPlRSAM0R+BTi2rPT8jdvW+miiPpaMsQVvQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(366004)(396003)(376002)(451199021)(5660300002)(38100700002)(86362001)(478600001)(110136005)(2616005)(31696002)(83380400001)(8676002)(8936002)(31686004)(2906002)(6486002)(66946007)(66476007)(66556008)(316002)(82960400001)(26005)(6506007)(53546011)(41300700001)(186003)(6512007)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTZucllUd3l0ODFFTysrNS9rWG1odDBvUVNtTTVoeVdIdWt4cSt3Rmxlc3ZO?=
 =?utf-8?B?dEZ6OXFTc0VjcUhid1RLSGtRNlBmVWNFa0xhL3d2VHRMMDByVTc3bVdWYkIz?=
 =?utf-8?B?YWdEcC9ObFp1MDRqY015VDNUK0tZaitrNlV2a0diWWVjbmE2OUQ0ZE1tQ1c1?=
 =?utf-8?B?MTlFZGp0ZElQczMydEF4Q3RzQ0xTcmF4MWdDeUlFYzlENnpkZ0pPNjRDWkJ3?=
 =?utf-8?B?V1Vya055d3Y3elVZZmlZdS9KNFRHWkN0S0w5N3lsdFJGeVhDRW5yVzZyQkpa?=
 =?utf-8?B?NWpOV3Y5aXlGMjI1V2RiNmh6SnhHWTRyWUxaYUE1TGJUbHBrRFFUTU1yTllo?=
 =?utf-8?B?Z1VMMFgrbm4yWjF2RVo4bUVwcnhuVWZvbHR2Rlg1QitNM1ZhQkVMZWxwcjIr?=
 =?utf-8?B?Ulc3cXRuZU50aHRPMXZoWG5sWUh0TWRBUGFIUW5KTVoyM2h6TkMrcTJNVmww?=
 =?utf-8?B?d2w5VXcwZWRGelY4WXZSdm1HeWFCUWtvaFB6TU1TcTZ1TDFWdWl6VzBlamdH?=
 =?utf-8?B?cjNhK1FqeFdhYVcxa2crS1BiU0lUemRJbkF4MXdOWUlLWGk2cFpHNWNDMVhH?=
 =?utf-8?B?U1M2NDdhN0U3TjJGRmlDOFdXZmYvMktBd29JK1dZOUVpL0FPdTFqTEtrVlFh?=
 =?utf-8?B?VXpTcm8xbHhMZFdjM2JXYUsyKzV1ZHhOTXNhWnBkeU1Uam1wNWRraTFsdDFj?=
 =?utf-8?B?ZUFUS1RidjFFc2lrZVV6NHhnbVJ6MW9mRmt0dG0zek5lSmVFd0hMUzBJZ0c4?=
 =?utf-8?B?OWoxTk9Edit3RjlOa21xUkJadGZ6S3NrTkhId3d0NkloeUx0WGNRWnZCMENx?=
 =?utf-8?B?UWsya1hxLzRPblFhVDZZWFQ1RnFtRVF6SUp2MDNkcTRzM2FsMFoyMnp6ZU5O?=
 =?utf-8?B?aVJVMXN4ZlAwV2o4WVo4clJDMldXU0xDcDZlT3RZaU1CZDFBNFloNVEva2JZ?=
 =?utf-8?B?RTAyMGgvWDU4bHlHUnRzU1AxYUlCVlBKZEoyUkl1NVd4Y0NZeGxJT1ZhM3hF?=
 =?utf-8?B?MVNLaHRWbGtVczRjT2hYMlVhM00yTGs0L204YzZ1Vkg1R1Q2dXA2K2Z2SUQ3?=
 =?utf-8?B?WGlXNitBdWxCeElnZ21DMUlVQUF2RWk2dFZyQkEvL3hoUUpNTkhCZVBxbHB5?=
 =?utf-8?B?czZ4R3F2c2NYWTc4RTBGTlNINnROZzYrbUp3R3M5YWtYNFR0bCtpQVp6WWZX?=
 =?utf-8?B?cEhBMU4wU1FZRTdHUTZxUWV4YnhMMHIyMG52SXdVUjNLK0VsSWJ4Q0F0b09o?=
 =?utf-8?B?NWcvbnNiMUhCM3QvVUVYR3BqNzBTOGhiRnFWbVVHZ1d6aGJyb2dXeUptM01m?=
 =?utf-8?B?NzFkYkxMRmlqNHNOVFBFcVY3amJMMUlGVmZDR1Q5Vjh0bks5RWhZTXUwWnQw?=
 =?utf-8?B?K05WenAveFRlaElibGJ0RW9GTTduUkxUaWo3aGJWL1Q0VHl6cEtTUFB4MExF?=
 =?utf-8?B?MnIvUmUvNkhCV3gwRXNqN1ZjQ21mSHBVTFdqaXFyRnpFY1NTdy9YU0pBVG9F?=
 =?utf-8?B?T3NyNVllVzNqOGVNYTFxN1FwRzRCYUQ5cytySnFCLzV4MkZLQUMxT1ZTYkt4?=
 =?utf-8?B?Z0hwOENTaVFmSkp2UGtpMHpmZ2EwbzdJbzhlcDJJVW9oZllGaVpOVWRvanJV?=
 =?utf-8?B?WVY2ekczNmQvT0sxR24vVmNoNU1VK1BCUEdCZ2plTUtTcHhLOWY2MDJheVBG?=
 =?utf-8?B?WVBpK3ZCS3ZLTkRVdVRxS29MVVV6UjNMazlCdm5LK1pVUjJTaGc3YVJaK21p?=
 =?utf-8?B?NFZXZmNYbjR2ZlBGVDFBWGdGQ1lmVkhhWUtGOEVwcitvZXdBTlhFL1NCRXFk?=
 =?utf-8?B?dU91ZzRjWnRBdkpyQVFNckdNR3FEVUppYUlTWUdOTDUvOHJ1MEx2aklacm5r?=
 =?utf-8?B?NTVVQ1hkZWY1UGtRR25Ha3ZSVlBVclFPQWFxODVXNFZUWGVtbUJMcGdTQ2gr?=
 =?utf-8?B?RzZRWkVOZjlqL3RleW50NGNWd0VvMVd2SE95eUNGWklXK1I4MHE5MFZIWTVh?=
 =?utf-8?B?M1k1bURtS0haR25XWjVTSGhGajQ1NDRRYmQwamFuY25qT3czR3hFYnU2MGN0?=
 =?utf-8?B?b21rQnJxSUpnYlpuWWQ4VnpxTTZrSUp2Y21JYitwTWwvNDYzbmRVSVBwZGZ1?=
 =?utf-8?B?WVJxQVFDcnNYZEVsNVA0LzdYTGRRdHNLekk3NWRCYTVSV3NxOGdZaDRpZlor?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66cf38a5-7264-4999-d64a-08db481567e2
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2023 18:21:37.9822 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Or3CJ1kkTn1ig2F3qap9bNc1RB2CblSOTxK87F/D9/voaeghehvLD8jreFLDURgaRlaMyCtUe0uXG0tLxymkBCFsV249im8lrhZAy6RmQO0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8006
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/guc: Don't capture Gen8 regs
 on Xe devices
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

On 4/26/2023 14:14, Teres Alexis, Alan Previn wrote:
> On Wed, 2023-04-26 at 10:23 -0700, Harrison, John C wrote:
>> On 4/25/2023 10:55, Teres Alexis, Alan Previn wrote:
>>> On Thu, 2023-04-06 at 15:26 -0700, Harrison, John C wrote:
>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>
>>>> A pair of pre-Xe registers were being included in the Xe capture list.
>>>> GuC was rejecting those as being invalid and logging errors about
>>>> them. So, stop doing it.
>>>>
>>> alan:snip
>>>>    #define COMMON_GEN9BASE_GLOBAL \
>>>> -	{ GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0" }, \
>>>> -	{ GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1" }, \
>>>>    	{ ERROR_GEN6,               0,      0, "ERROR_GEN6" }, \
>>>>    	{ DONE_REG,                 0,      0, "DONE_REG" }, \
>>>>    	{ HSW_GTT_CACHE_EN,         0,      0, "HSW_GTT_CACHE_EN" }
>>>>    
>>>> +#define GEN9_GLOBAL \
>>>> +	{ GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0" }, \
>>>> +	{ GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1" }
>>>> +
>>>>    #define COMMON_GEN12BASE_GLOBAL \
>>>>    	{ GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0" }, \
>>>>    	{ GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1" }, \
>>>> @@ -142,6 +144,7 @@ static const struct __guc_mmio_reg_descr xe_lpd_gsc_inst_regs[] = {
>>>>    static const struct __guc_mmio_reg_descr default_global_regs[] = {
>>>>    	COMMON_BASE_GLOBAL,
>>>>    	COMMON_GEN9BASE_GLOBAL,
>>>> +	GEN9_GLOBAL,
>>>>    };
>>>>    
>>> alan: splitting out a couple registers from COMMON_GEN9BASE_GLOBAL into GEN9_GLOBAL
>>> doesn't seem to communicate the intent of fix for this patch. This is more of a naming,
>>> thing and i am not sure what counter-proposal will work well in terms of readibility.
>>> One idea: perhaps we rename "COMMON_GEN9BASE_GLOBAL" to "COMMON_GEN9PLUS_BASE_GLOBAL"
>>> and rename GEN9_GLOBAL to COMMON_GEN9LEGACY_GLOBAL. so we would have two gen9-global
>>> with a clear distinction in naming where one is "GEN9PLUS" and the other is "GEN9LEGACY".
>>>
>>> But since this is a list-naming thing, i am okay either above change... OR...
>>> keeping the same but with the condition of adding a comment under
>>> COMMON_GEN9BASE_GLOBAL and GEN9_GLOBAL names that explain the differences where one
>>> is gen9-legacy and the other is gen9-and-future that carries over to beyond Gen9.
>>> (side note: coding style wise, is it possible to add the comment right under the #define
>>> line as opposed to under the entire list?)
>>>
>>> (conditional) Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>>>
>> I'm not entirely sure what you are arguing here.
>>
>> My reading of the original code is that COMMON_GENX_ means the registers
>> were introduced on the named device but a are common to later devices.
>> Whereas GENX_ means the registers are specific to that device alone.
>> That seems a pretty straight forward and simple naming scheme to me.
>>
>> John.
>>
> alan: you said "reading of the original code is that COMMON_GENX_
> means the registers were introduced on the named device but a are
> common to later devices".
> That wasnt the original intent when authored. The original intent
> was list names and its comments to corresponded to what platforms we
> supported (thats why the first patch was all of Gen12 registers in a
> single list that included Gen8/9 register definitions and Gen9 sublists
> got abstracted out later).
>
> I'm okay with changing the intent of the list naming - but your code still
> looks a bit off considering you have at least one list with two sublists
> that carry the term "GEN9":
>    static const struct __guc_mmio_reg_descr default_global_regs[] = {
> 	COMMON_BASE_GLOBAL,
> 	COMMON_GEN9BASE_GLOBAL,
> 	GEN9_GLOBAL,
>
> Again, i feel the name of these two sublists ("COMMON_GEN9BASE_GLOBAL" vs
> "GEN9_GLOBAL") dont easily portray differences and why they were separated
> out. If they both reflect "when the named register got introduced", then
> why not just have them in the same list? Since this patch is not
> about "when a register got introduced" but "pre-Xe registers are not
> recognized by GuC on Xe", then perhaps we can change the names to:
> 	COMMON_GEN9BASE_GLOBAL -> [same]
> 	GEN9_GLOBAL -> PREXE_GEN9_GLOBAL
PREXE_GEN9_... just sounds confused to me. What is Gen9 if it is not PreXe?

The point is to ensure that platform specific register lists are 
constructed from the sublists that apply to that platform. Therefore the 
sublists are named for the platform they apply to.  Thus the gen8 list 
should only contain gen8 sub-lists. The Xe list can contain Xe sublists 
together with gen8 sublists that are still applicable. Those sublists 
have a COMMON_ prefix if they are expected to be multi-platform and 
don't if they are specific to their one named platform.

Note that you can't get hung on 'the end result looks odd' when only 
looking at the first step of a whole series of cleanups. This patch is 
specifically about moving the pre-Xe registers out of the COMMON_ define 
so that they are not used on Xe. It is not trying to fix up all the 
naming and other issues.

John.

>
> Either way, i rather not argue about variable names - so here is the Rb
> (since patch comment describes the issue and functionality seems correct):
> Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>

