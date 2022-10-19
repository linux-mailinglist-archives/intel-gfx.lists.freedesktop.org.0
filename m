Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B53604D46
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 18:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41BF210F294;
	Wed, 19 Oct 2022 16:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DAC510EB14
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666196578; x=1697732578;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=/tY1ZFxAh1xztOVkWhqkxe4h56F5aqqfvY0d7DSiad0=;
 b=ijm1nHcv7CmV63LBioT+2+pjJ9qI7Tw0WZt9cNy13Rw/S7QTRN3gtym6
 408wt/03xTV9M4G3jE9c/hdqSTXV0m4zvsSTl8xDA35i8W8rIoICeVMAK
 lWHhsro7lr8p86JZ/aQT0ryWJu0KWkmql0GdRXyKUF9LPoZjTk2x1O9hB
 E15mlxbU1S02EDfJ7UMYBmJ2fFsJQ/wsreAApgIlmQF1iVQiAnjrsElye
 mq1UKa9IwfAeJq8gWikyNSyGdAePnKCk3n+4xeOGYTHI6hedTs0GMiywa
 AZILK1YhSqS5wa1SnZd8+Wpf0eI4EOQkojehOddmo7W3SadmZI10rNRzm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="307568728"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; 
 d="scan'208,217";a="307568728"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 09:21:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="958418724"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; 
 d="scan'208,217";a="958418724"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 19 Oct 2022 09:21:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 09:21:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 09:21:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 09:21:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 09:21:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k4ZnTBl4ulZnIriRPExjuR72fe7U19c+c3G6lI5Y2Kk9MZb8j+hELVrrWaTXEVgMtytjBPpo4dPWII4VHGCxGDu+OsQeIc/CVY3LNivIZtLswjoi+SCSXcExiUe3NcmCPIOYbPNxSMMlj7C0n0dyWjCpbmT1l0HQvH/xWkGxLF1xahPIO+kaEKpdLhmGuMhsYfNDC2cvdxLCNRx/uNUOEHh6mHk1m8uHFpG6DNmANtArK4+M77xQtMry1bbt0sKQ6V2gPalF2E2TbnXHHf6Ycc+NZ9IXpPIwMCnErkV2GFa9dMO5Wf13K0phCqCiXTT7ttd6wk594Rd9E5C4tDKOXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A9ojhP3TYOoI0mihLbXRxadBrRdWvUQpXGItbsDvTTE=;
 b=kqm1XSZIt/lMlECRtyEOvqq0BIcxLP4FInN3Cla9/65XXVanqW/5RXGBdnOER5VMCFbryqFjHWizqnPSZXEoefCeqDtwVtCD+tj4yLLdTG42uy8KUwqloqx92tc5Z4hjImO2aWkF6RZDGh5+q2E8I4HS69DE1oYeL8VI9D5nawXZ3pbT9ES05s02oonXgl61U0LZa4SoMuYKmpV4ZH/SRtrpzIF8ZOEjVSRM3FX/IcpKFP8WoajBffDsmbShwiakxwNO6Si4BJ8T3E7sygr6eI/RtskgbLg6Oy2Qk2Ag2fjH1lgc4+qgWEaSTL5s4ZrvohEZH+QzrqVslZWOTts0Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH7PR11MB6331.namprd11.prod.outlook.com (2603:10b6:510:1fd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Wed, 19 Oct
 2022 16:21:02 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 16:21:02 +0000
Content-Type: multipart/alternative;
 boundary="------------uuR40RIy7ttzYWyJXkswBQuA"
Message-ID: <dd25282b-655b-eae9-6e02-ea4b54b167ea@intel.com>
Date: Wed, 19 Oct 2022 09:21:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221019083325.214960-1-andrzej.hajda@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20221019083325.214960-1-andrzej.hajda@intel.com>
X-ClientProxiedBy: SJ0PR05CA0168.namprd05.prod.outlook.com
 (2603:10b6:a03:339::23) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH7PR11MB6331:EE_
X-MS-Office365-Filtering-Correlation-Id: 19d46d02-c5d7-4bb8-8480-08dab1edea15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hhOtAyNajUHFhwKTL1Q+jg39c2HSIRpEZZLjZErTQqSO5ruiiHl+gOwRgs145uOaGk3RXK5OG3/jXFPWHwO7SgLpkPLDYvdQ0E4YSk31wT3ejWguIPrNIBChjcW6uCuBJFNw+we9zYMHU8cpC/9HE7hzdYMPmyUerUCIaV5Jd1gIWzDR73YqWUTZS7jrFqjpZRimN95XS8OvhLkQBWDZmyP7jGIlkM5lhtCKVyq/7YUH2raa4wf7cYZcnGw4qbbXZC4mAuR8ziZidrelZj1u3dYXNa8VYC0CQ7CFNEV7Slu8oIGRfSVa+rQygVt6NLTQxBmnEdr7jnQekFeQDLLwgEaq9M66yary8X6dQmG+foY50I3uPoPHWHy7k7xXQdT8lQBH6/Lt8WlyHJQ08qrUU955iymbbXolmGXFbTFR3+EaMk+ffm6lKhtxt3Vq0hxCWySnkFcotdgJOFQ+hblj4v4HfjyeBrLG9RULPhEAEVgQhnNYhegymod/uimf+ichy+uJCgyyLT4E0fSLW1gcPu7Sdg0IoqlkPnRGwvCg7SgPJ2LR6EjuYt8NQMhMVE8A4E1RsVzfko15bZx23Yxuehinyi7uHPSSc1QKmIm8EOu6FJrnDTDTdWX/q8vINbjR1si1+oAFJSH+Qv3nenmuN1dvI9yhNz5YhTG1wwf1A6bBeEkupjijg+Jb8aJqe4M6xyoqkR0LHZE19FJT+pqLG8DX9DQ+x9UWnQAs7WqO0mOmMV9zJZwYiesJVbcu/mT5gnOmEs+dHZl+NBV61X0/tTxJ++xivzzvagTERp2CrPY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(366004)(346002)(396003)(451199015)(5660300002)(38100700002)(478600001)(316002)(54906003)(82960400001)(6486002)(2906002)(8936002)(83380400001)(36756003)(41300700001)(31686004)(86362001)(6512007)(26005)(31696002)(6506007)(33964004)(53546011)(186003)(8676002)(4326008)(66946007)(66556008)(66476007)(2616005)(30864003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTN2R3liU1IyS2c3Q2tRSjU5MjZRWVcvRVJwMUU4WEQ1aGR3VmUwVGJLcXVD?=
 =?utf-8?B?eVpVUGc3STJ0TVFVVHp4d2N0R2NlNXVrU3lxOEhpNmJlZFl4U3R2OEdKSk0v?=
 =?utf-8?B?VWtCaEdRL1Fhb3hTRWIzRGxiZ0FOaHZkUGptNnR5NFhkMitkTDNaR2Zicml4?=
 =?utf-8?B?dk1hWDJ2MXdZMHk4Zm4wYWFsMnU1dm1zc3UzcTNVbWZQbWcxUm51aXlTUkhF?=
 =?utf-8?B?K0xZMEJxTVpXcFJsWm41NXM2QlpySmpocm9IS3oyUXdPRTNhaHhEdWNmV0JK?=
 =?utf-8?B?NzduaWo2Qzh2d2RXK09zWHlPSG1xOGs5RnppNWptSkppNllhVHRkWGtLZndj?=
 =?utf-8?B?OGZFbnluZVVnVm9IWnNmdmM2TWxYVldkZ2pEZkY2RlJOemlQUjNNbSsvckhI?=
 =?utf-8?B?eDNaajFlTVdkT210eG5GaG1vNHZYRjhyZXdKZ3l3K1l5dEp4L281dkNOKzJ0?=
 =?utf-8?B?U21XYThMVytHOWZaVHFLazFkUWhkSmd3SjY4S21BdG1lUmd4NFhyUkR6MzhL?=
 =?utf-8?B?cDNVYWg0aTNQY1Nld3hONjNxLzhRZ0J1V2hzRk9LSzFtalpweThKcVNZN3pi?=
 =?utf-8?B?TmhvWitsVkNWOVp6OGJnb2tWdjgzSUkxeWZQeEJGRndkK0p5N0dHUE1kNlBp?=
 =?utf-8?B?NkpGRkxEYjZyem1JbDlGMnRjVmg3ejZKYktaV29rLzkvT1pWaTVIMURVR0hl?=
 =?utf-8?B?WUxPcDlOOUpycDdDd0VoYkgwNms1ZGpIQnF4SnNUVGFlbDUvRXhPSVc3Tkha?=
 =?utf-8?B?ZHNiMXNqbzJxdEo4a1IrUW1FVFdrUWJiUWJMdWdGQit5aS96dnBCUXc0Ukpm?=
 =?utf-8?B?Y2F2WHVzckRVdDkwSnd4V3hwSHFSLzVsRjRCM1M0MlZuUkxmK0hxRlVxamVK?=
 =?utf-8?B?UHA3ZmxhK1lZbmo5a2RmVW00d3llZkF3Y1lacTR5ZEYxSHk1TEZWckhPMVI5?=
 =?utf-8?B?K2RvNUg4WURXcGhGQXpOTllUSmhwVitLUUNJbERlOE5sSmVsSU5QVDdvQ0FR?=
 =?utf-8?B?SG13a21wNnFYSzBYYUdtU0lJNnVQVlN2TEgza1ZyVUtuQTVWZStud1JGb0Fa?=
 =?utf-8?B?K1RRRThVcHFtWElIV1pEekQ4bmVnQVA4RDJCajdDNVM1NEQzUmJEOThhWUM4?=
 =?utf-8?B?dG5XODNPLzBYU0RCbXNrdCtnZHJOUGNIUkN4K2IyUWJKd1V6cy8xZnBkY0x2?=
 =?utf-8?B?eDRRVnlUTG9ZcG1sVHFkZ0VzNFZYb0tvTlJQaFFEQzNrTlo4OE5DMEhTSnNT?=
 =?utf-8?B?U0NxRm1VbTZ4WFlMUTRNbHo1bEVnZ0RXM3JNUGVVTTFBYmtmTWNuSFYxN0k4?=
 =?utf-8?B?dzNRSGJPdW5yTW5rZVRuQU1aMFRzWVhkbm9nM1Z4Ry9FbUxvbWNEdDEvKzR6?=
 =?utf-8?B?U3NsU1FEcmVzdXViNnRSa0d3MVRBK2ZmMXVZV2xpSmxrMXF4eXE0YVBvMVJ0?=
 =?utf-8?B?a01iRzBkV1VEVHNPSDJtVUdpZi9MdkZyY3k1R3ExL240L2tsYmphZ2h5TGVa?=
 =?utf-8?B?TktpajhNU3BKNGVFbnVqM1d6T3o4ZEF0dWVubXNMZTNtbE9kdzdCWFk5ZXo5?=
 =?utf-8?B?c3pzUVMrT1ZzTUM2ZzdRVnRJZE9YU1VidjJaYjF5TzRJbklFdlpGSk9WU2k3?=
 =?utf-8?B?UjdweTVUQStmcWNoS2tWTUV5MnJMaGdlcE51d3psZ0FBQ2NqOU9aVi9ueER2?=
 =?utf-8?B?ZDVjZ2c4aG9KUU5pcEtnOTBCVkg0bE01eGdjdTFGaDd2cGd1U215MTNhaG84?=
 =?utf-8?B?QjBGOXRvM1JENHJQSC94dDRBeHJnRlBnb2lieGVyaUE5dzVydVhpMlpNQ1hq?=
 =?utf-8?B?T0Jhb24yOEpKa1Y4em94TytIZEd5STZ0UUJpVWJ3OFRWT0F4YkhnT0NSdVAv?=
 =?utf-8?B?aTg2UXB6dm5HclpqSkRIYVo4VVFrNFM1MWorNWpmYlBWUVhHeHlmOFFRaU9W?=
 =?utf-8?B?WFRQVFQxem1nMkQza3pEa3ByVVg1d2RGUDVna3UySm1DWnpiYzBQalZzeUhm?=
 =?utf-8?B?dWxLeTJCbFcyRTNEMlQxbVQ2QjVmVThIS1Z3L011Wmdsc3J1bXJCZ1dHQ2JO?=
 =?utf-8?B?NGR6Qnh3bDlMejZtL3NGSk5Dc211TFgyWVRrUUZta0RsRHhmRHlmUXVUWlpL?=
 =?utf-8?B?SUVkaFRlUWg5aThhUi9HNTE0SVU2aHBpT0l6b0xOUEJ0eURkT2s1L2VrRlY4?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d46d02-c5d7-4bb8-8480-08dab1edea15
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2022 16:21:02.0240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TnMcB6P3hmplzVyAZmzxzI3934mc3IbfXa1ZBooBjyy8U8MxiQEZl3RIHjUYMFydAHFNRUdY/LGmszZrGc91sNO0oqUxCi9BQPKCuWvPNV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6331
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: add CAT error handler
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------uuR40RIy7ttzYWyJXkswBQuA
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 10/19/2022 01:33, Andrzej Hajda wrote:
> In case of catastrophic errors GuC sends notification, which results in
> cryptic message. Let's add handler which, for starters, dumps state
> of affected engine.
See below - the notification is sent by the GPU memory subsystem not the 
GuC. Also, not sure what you mean by 'cryptic message'. It would be 
better to say something like:

    Bad GPU memory accesses can result in catastrophic error
    notifications being send from the GPU to the KMD via the GuC. Add a
    handler to process the notification by printing a kernel message and
    dumping the related engine state (if appropriate).


>
> Signed-off-by: Andrzej Hajda<andrzej.hajda@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  3 ++
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 +++++++++++++++++++
>   4 files changed, 37 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index f359bef046e0b2..f9a1c5642855e3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -138,6 +138,7 @@ enum intel_guc_action {
>   	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>   	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>   	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
> +	INTEL_GUC_ACTION_NOTIFY_MEMORY_CAT_ERROR = 0x6000,
>   	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>   	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>   	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 804133df1ac9b4..61b412732d095a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -445,6 +445,8 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
>   					 const u32 *msg, u32 len);
>   int intel_guc_error_capture_process_msg(struct intel_guc *guc,
>   					const u32 *msg, u32 len);
> +int intel_guc_cat_error_process_msg(struct intel_guc *guc,
> +				    const u32 *msg, u32 len);
>   
>   struct intel_engine_cs *
>   intel_guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 2b22065e87bf9a..f55f724e264407 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1035,6 +1035,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>   		CT_ERROR(ct, "Received GuC exception notification!\n");
>   		ret = 0;
>   		break;
> +	case INTEL_GUC_ACTION_NOTIFY_MEMORY_CAT_ERROR:
> +		ret = intel_guc_cat_error_process_msg(guc, payload, len);
> +		break;
>   	default:
>   		ret = -EOPNOTSUPP;
>   		break;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 693b07a977893d..94f91dfa3ec456 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -4659,6 +4659,37 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
>   	return 0;
>   }
>   
> +int intel_guc_cat_error_process_msg(struct intel_guc *guc,
> +				    const u32 *msg, u32 len)
> +{
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> +	struct intel_engine_cs *engine;
> +	struct intel_context *ce;
> +	struct drm_printer p;
> +	unsigned long flags;
> +	int ctx_id;
> +
> +	if (unlikely(len != 1)) {
> +		drm_dbg(&i915->drm, "Invalid length %u", len);
> +		return -EPROTO;
> +	}
> +	ctx_id = msg[0];
> +
> +	xa_lock_irqsave(&guc->context_lookup, flags);
> +	ce = g2h_context_lookup(guc, ctx_id);
> +	if (ce)
> +		engine = ce->engine;
> +	xa_unlock_irqrestore(&guc->context_lookup, flags);
> +	if (unlikely(!ce || !engine))
> +		return -EPROTO;
This is not correct. There is no guarantee that a context will be 
associated with the catastrophic error. Certain categories of error are 
caused by context activity but other categories are caused by 'global' 
activity (e.g. CPU hitting a bad address over the PCIe bus, other 
non-engine hardware in the GPU, etc.). In those cases, the ctx_id field 
will be set to an invalid context (~0, I believe) and the ce will come 
back as NULL.

> +
> +	drm_err(&i915->drm, "%s: CAT error reported by GuC\n", engine->name);
This is not accurate. The error is reported *via* GuC but it is reported 
by the hardware. The GuC does not do anything to detect memory errors. 
GuC receives an interrupt from the hardware to say a catastrophic error 
has occurred, it then reads some data from a FIFO and basically returns 
that data back to the KMD.  The sole extent of the GuC processing is to 
convert the hardware id into a context id.

Saying that GuC is reporting the error implies that GuC knows what went 
wrong or could maybe even do something about it. Certainly it makes it 
likely that bugs will be logged against the GuC which is not correct.

Also, you are not reporting the context in the error message. Assuming 
that a context has been provided then that is important information to 
debug where the error came from. You should at least include 
ce->guc_id.id (which should match ctx_id) in the message.

John.

> +	p = drm_info_printer(i915->drm.dev);
> +	intel_engine_dump(engine, &p, "%s\n", engine->name);
> +
> +	return 0;
> +}
> +
>   void intel_guc_find_hung_context(struct intel_engine_cs *engine)
>   {
>   	struct intel_guc *guc = &engine->gt->uc.guc;

--------------uuR40RIy7ttzYWyJXkswBQuA
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 10/19/2022 01:33, Andrzej Hajda wrote:<br>
    <blockquote type="cite" cite="mid:20221019083325.214960-1-andrzej.hajda@intel.com">
      <pre class="moz-quote-pre" wrap="">In case of catastrophic errors GuC sends notification, which results in
cryptic message. Let's add handler which, for starters, dumps state
of affected engine.</pre>
    </blockquote>
    See below - the notification is sent by the GPU memory subsystem not
    the GuC. Also, not sure what you mean by 'cryptic message'. It would
    be better to say something like:<br>
    <blockquote>Bad GPU memory accesses can result in catastrophic error
      notifications being send from the GPU to the KMD via the GuC. Add
      a handler to process the notification by printing a kernel message
      and dumping the related engine state (if appropriate).<br>
    </blockquote>
    <br>
    <blockquote type="cite" cite="mid:20221019083325.214960-1-andrzej.hajda@intel.com">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Andrzej Hajda <a class="moz-txt-link-rfc2396E" href="mailto:andrzej.hajda@intel.com">&lt;andrzej.hajda@intel.com&gt;</a>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  3 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 +++++++++++++++++++
 4 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index f359bef046e0b2..f9a1c5642855e3 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -138,6 +138,7 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
 	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
 	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
+	INTEL_GUC_ACTION_NOTIFY_MEMORY_CAT_ERROR = 0x6000,
 	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
 	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
 	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 804133df1ac9b4..61b412732d095a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -445,6 +445,8 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 					 const u32 *msg, u32 len);
 int intel_guc_error_capture_process_msg(struct intel_guc *guc,
 					const u32 *msg, u32 len);
+int intel_guc_cat_error_process_msg(struct intel_guc *guc,
+				    const u32 *msg, u32 len);
 
 struct intel_engine_cs *
 intel_guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 2b22065e87bf9a..f55f724e264407 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -1035,6 +1035,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 		CT_ERROR(ct, &quot;Received GuC exception notification!\n&quot;);
 		ret = 0;
 		break;
+	case INTEL_GUC_ACTION_NOTIFY_MEMORY_CAT_ERROR:
+		ret = intel_guc_cat_error_process_msg(guc, payload, len);
+		break;
 	default:
 		ret = -EOPNOTSUPP;
 		break;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 693b07a977893d..94f91dfa3ec456 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4659,6 +4659,37 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 	return 0;
 }
 
+int intel_guc_cat_error_process_msg(struct intel_guc *guc,
+				    const u32 *msg, u32 len)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)-&gt;i915;
+	struct intel_engine_cs *engine;
+	struct intel_context *ce;
+	struct drm_printer p;
+	unsigned long flags;
+	int ctx_id;
+
+	if (unlikely(len != 1)) {
+		drm_dbg(&amp;i915-&gt;drm, &quot;Invalid length %u&quot;, len);
+		return -EPROTO;
+	}
+	ctx_id = msg[0];
+
+	xa_lock_irqsave(&amp;guc-&gt;context_lookup, flags);
+	ce = g2h_context_lookup(guc, ctx_id);
+	if (ce)
+		engine = ce-&gt;engine;
+	xa_unlock_irqrestore(&amp;guc-&gt;context_lookup, flags);
+	if (unlikely(!ce || !engine))
+		return -EPROTO;</pre>
    </blockquote>
    This is not correct. There is no guarantee that a context will be
    associated with the catastrophic error. Certain categories of error
    are caused by context activity but other categories are caused by
    'global' activity (e.g. CPU hitting a bad address over the PCIe bus,
    other non-engine hardware in the GPU, etc.). In those cases, the
    ctx_id field will be set to an invalid context (~0, I believe) and
    the ce will come back as NULL.<br>
    <br>
    <blockquote type="cite" cite="mid:20221019083325.214960-1-andrzej.hajda@intel.com">
      <pre class="moz-quote-pre" wrap="">
+
+	drm_err(&amp;i915-&gt;drm, &quot;%s: CAT error reported by GuC\n&quot;, engine-&gt;name);</pre>
    </blockquote>
    This is not accurate. The error is reported *via* GuC but it is
    reported by the hardware. The GuC does not do anything to detect
    memory errors. GuC receives an interrupt from the hardware to say a
    catastrophic error has occurred, it then reads some data from a FIFO
    and basically returns that data back to the KMD.&nbsp; The sole extent of
    the GuC processing is to convert the hardware id into a context id.<br>
    <br>
    Saying that GuC is reporting the error implies that GuC knows what
    went wrong or could maybe even do something about it. Certainly it
    makes it likely that bugs will be logged against the GuC which is
    not correct.<br>
    <br>
    Also, you are not reporting the context in the error message.
    Assuming that a context has been provided then that is important
    information to debug where the error came from. You should at least
    include ce-&gt;guc_id.id (which should match ctx_id) in the message.<br>
    <br>
    John.<br>
    <br>
    <blockquote type="cite" cite="mid:20221019083325.214960-1-andrzej.hajda@intel.com">
      <pre class="moz-quote-pre" wrap="">
+	p = drm_info_printer(i915-&gt;drm.dev);
+	intel_engine_dump(engine, &amp;p, &quot;%s\n&quot;, engine-&gt;name);
+
+	return 0;
+}
+
 void intel_guc_find_hung_context(struct intel_engine_cs *engine)
 {
 	struct intel_guc *guc = &amp;engine-&gt;gt-&gt;uc.guc;
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------uuR40RIy7ttzYWyJXkswBQuA--
