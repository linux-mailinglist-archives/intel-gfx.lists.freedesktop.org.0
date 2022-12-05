Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8916D642841
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 13:19:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B53CC10E1CB;
	Mon,  5 Dec 2022 12:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F172C10E1CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 12:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670242768; x=1701778768;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=zGL70+SlHfT25vVozv+OVX252oEZ/LaJ52uE2h7FSN8=;
 b=K8FyhpEfvbrZqT7I8+g5reQdmyRozstX6VunO6Ytc+AmykeNPINe8aP7
 cBHS7qrCYI8JByvCitfuURl8U5QltReTIGil3eQIKwkhTd14K+yy0Qy8C
 yeYUkYB+9RIxtn2UcLi/2fLIc9A89slZnsvRp9UOrXF66tSl6UM7rplfE
 iHr3Yt+UDtZvs1j3ciyJRGTijhWg8gNvtPKKml4gBaEepZArG+B1V0oel
 kp6i4KkCLWpJMrE4IQgR3mqYIe1UFWb7yV7SKKo3SNxy20Sj7ULvGydyI
 AknaWVNLp/ushy/ghuscPnTYewURCZV0ujxzK+uDuzftz8ANS1fFe21/q A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="296690264"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; 
 d="scan'208,217";a="296690264"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 04:19:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="623486896"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; 
 d="scan'208,217";a="623486896"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 05 Dec 2022 04:19:26 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 04:19:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 04:19:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 04:19:25 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 04:19:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PhVLxoq2wZJBpSFVurdFaAPwEhM0z6oJIjLUu5gpoaI8h4i5I9rhfEfvxh8tT4IhzdX3Xxs1gFmQtXy8NCA0dgAqmhLwnaSXU/deC/rdOCLUjLA/qARFn7uxtf4vVsgBvBcjvPaHkRzp68yTg+oX/4gR9ndLmPag9SV0ioIYrM3zHPCd0VajmwBg7xobi65OiTAEUAR/zmwMrBoWO/DbWZCrpFsdSEYYVja20hYCP/bTz9FJj5EkvEwsV1j/Dk48GzwscZfxKKViuPErzLD5J285p0WrdOrS7yEoZ0zlwDgUwPrnEl6WPUPWpxPsGs7s6fGeA74kQtg+/fOsaY7RSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XK8DSQZ38kpJ9UjfUJ8r+ab14mm8x3ds0LDKJJVDWZ4=;
 b=CAOnjRCcXoVUCLJrGcFGLGRlChfDxrV2paRSy+az8yzQcsIwcjT710AwmS+t1I7DrA1EGMIi1Pz61G3jSAdMZc7scKo4F9E8tHwsyOYlH6ahKRfzaF6txwB/kq+fpQDJcBoTK1bCww2OGgjyRbH/nZYW0PvcSfMHCCfoTBBL29NtN7VTj2XUoZ+oEWzDzNoV59Mpj6cQlX8Q+eUasfzDXFqXp2hnBeFTdURjzZke/zs+6ceFdpOtJcUevyEkU+i6WS2jbDNQfAmLXAvTVhQC5PdTU2bdCVv+l0YYA+o7sgwfO09+3WBcTS8jtSKsjQUjbWYfhWoEe6AiUfBRGrOF4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB6064.namprd11.prod.outlook.com (2603:10b6:8:77::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Mon, 5 Dec
 2022 12:19:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c%5]) with mapi id 15.20.5880.014; Mon, 5 Dec 2022
 12:19:15 +0000
Content-Type: multipart/alternative;
 boundary="------------dxz4PMVKGld69ovqkvYS3hJq"
Message-ID: <0bd03be1-014a-6b69-5ece-c9c5d1009f92@intel.com>
Date: Mon, 5 Dec 2022 17:49:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>, <lakshminarayana.vudum@intel.com>,
 <saix.nandan.yedireswarapu@intel.com>
References: <20221127052232.3942831-1-ankit.k.nautiyal@intel.com>
 <167022554190.24406.12906635804703859096@emeril.freedesktop.org>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <167022554190.24406.12906635804703859096@emeril.freedesktop.org>
X-ClientProxiedBy: PN3PR01CA0053.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB6064:EE_
X-MS-Office365-Filtering-Correlation-Id: 08bb23c6-8df8-4909-df5b-08dad6baec79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zec4aFDqmRHvzh3vj7DIGPXGY3pIGUXPwTCT2CQYlu5YmTkwk/MAuHyDvnU1abPDyeaBOkCpGWfuPhcIlWTjyWrVRUV79MLMLW0hU6/M18yekTmBLisQlBalQJ5/myxURKaLRVqBNZKM/fW7gtXAevCIQUJ3ebDAq6760CtniQILOVfcsNbZGgeNRf3ivlo8eclVgImTG+1eFs4Kh37T1nWe6QkdyxlHNaEHzUWel+gxxMOnkmvkgy2IB6bavfsMAjgtkoMyhVd2P9FKtSveuHLHRe4pHPBEsUwJ4bE4/eqJtjAIWpJKBnU7WEhGPNm2r/CkZ3jD8KUyf6n24NdZm2dP2jU/E3aezJGWZDC4iq+Q9VjonmiMcWmv5blhHynioyQtb1XW/ISQi/7VEMs6o25LvEBSgGqxICrvTt0uKynODpXXBHf62mcWoSly85rvNmTGS2r3qy/oaCdTWhllbn7w80cCKn6kHQyzsQxsKUMSCpPCvNEObRiVYu9wqHEWPVRs4UCD9DZiL1qc8qsuVq1KhzlO4oseddRI3DnJ5U4FBPNdVUqHs8VCQQYP8Ba3oqHw3jOStSmeOJE1x/yBkXOOefvevkQiXeS/9XIKP1NWEt2RdVg7DBjz58yE8SzQpwC24bvy/1kX0FyBuDOaYfLMSo8nh6j86+IWkwwm/LgRR+2eOt3EWu05Y4/auoVAgu/jjC820GEKQw/0nWdpAVvbDunn/dWPZ5AHoH7XZ90xIDIqgyXC1N50HVe3HZ5iAH571gjB5bCTfZykHvJeDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(346002)(396003)(376002)(451199015)(83380400001)(166002)(31696002)(38100700002)(82960400001)(30864003)(15650500001)(5660300002)(21615005)(41300700001)(2906002)(8936002)(86362001)(55236004)(53546011)(6506007)(33964004)(6512007)(186003)(26005)(40265005)(6666004)(316002)(2616005)(6636002)(966005)(66946007)(66476007)(66556008)(6486002)(478600001)(31686004)(36756003)(43740500002)(45980500001)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGJuWnhGNzV4U2p0MGZzd2lNQ3RZTmlzbjAxN1J3RGJZZURJajZObUI1enBo?=
 =?utf-8?B?UXFEVHNqdHprdGFnMWR3R1VmQWdKaUFmVGczZnpiVWhoUjlVbEpzV3dWck42?=
 =?utf-8?B?U3NFS0RwZTF1RnVVbGVVVmZiNFdSWWQvd2pKVnRwR1FQb1RiR0J3ZWpZU1N5?=
 =?utf-8?B?SUtqdThIMGtkSzk1Nng2UCtXL0hYOU93QXdSK0hTM21PK1hCaGdFTXVRWTBw?=
 =?utf-8?B?YXhDekRDNDQ1UEtBQzN0c3NVdHZ3Yk4zQThNZFFqT3ZZRGZVR2xaa1NHZUZK?=
 =?utf-8?B?ZFhIMWdZckdYQk55TlFaR0JkVWNKd1NhaW1aK01peHRpTXA5ZmE4eTIxWFda?=
 =?utf-8?B?eHUxbUlYUmdxVy8rUXlVQUZZRHlVYzNMOGNkbVJDMW40V3Z3eHIycmxMNStw?=
 =?utf-8?B?SlRSMUhVRURmOGp0V1QyYlE4YUNPY20vUTZMWDFTelFMMVpMMnhjMjJDNTVt?=
 =?utf-8?B?MEVTeXFsbU1qS1BJVWFUSlQ5OHJIbWcyb000c0RTUGJ0OVMxOWlMeDZXdThK?=
 =?utf-8?B?MnoxV3NzOWZvVm5hN0oyZnE4a1FHRjJ2ZzFnUWcwVEpBRXNsNjBNdGs5OW05?=
 =?utf-8?B?SkF3azh2WVEvcDBabk8xKzJLbjhXSEZDNlVMOENoMnJHcFkvMEladklwQ1h3?=
 =?utf-8?B?amd1cHNkTEtwTy8zK1paeHZ3cVA5MlpTVG8rZEI2ZEM1Qk95aGVQbjgyRCt3?=
 =?utf-8?B?emszRnBEcWg3TUFFbTFtR3ZESllrdFBBYkowcVFpVVZNMzlTYUw2V05xWjZG?=
 =?utf-8?B?VmRmVjUzTlVtak5rczFHcmxhM0NvQmw4cTErV1JmWGM1OWFIaWJNM3k3dzln?=
 =?utf-8?B?NjJ5Y3prOWlkQW1jbkV0UzJ3dXh5ejFoWU83WjRtT0UyM2xveVRDOHdlVWo2?=
 =?utf-8?B?ZnhPa1gwRURWZEJMMU5SdTRWdjVhRzhaTGxMamxtYzR4OFdxb1N4UWhCUWZZ?=
 =?utf-8?B?Znc4d29lNlZkNm9vNnROcEQ1RjJLbmRsaVRUeWJWTFhZN0Z2eWhjNVRmY043?=
 =?utf-8?B?a1JFMzNnc1BCckpYMnkrcW1GVE1ZNVErODJmOW16NGtVYm1MalJVQ2kzc0py?=
 =?utf-8?B?TGUxbFQ3NmwvelJ5akliNTY2TTFhNkxJWi9QWVhYdHphd1U2c3RIS2dZVlNM?=
 =?utf-8?B?NTZRcEd6b25Hb0pEU3BIcTNTNEo0UmI5RXZxL012dy94aGQ4SHpjR3VlNDFB?=
 =?utf-8?B?bGZnS3ZUZWxQL2IrbHRvMTNhZHJkQWVQYU45UEQxdzdqc1I5ZXRZSGJlaHds?=
 =?utf-8?B?bjdJSkhhZFB3d0krS09wMG1jOTRxWkMxYndVQml4M2FERzRQZ1paU1NoQzc4?=
 =?utf-8?B?N1piNTFpbjQ5cVd0czZ1djA0SDN0THJtakhhWXRQNW4yM01zcWY5YmtwSnpa?=
 =?utf-8?B?RXBPRTNjYzFCcGZBMW1DbVZQcHlpUDRwcnZZS1BNUTYxSGp4ZXVLQy9OTjd2?=
 =?utf-8?B?akI0dW44WXlZNkFvZ21hSXhOTVJlVE9HNXNENnZKVnBacGt5R1V0bUFHWmNL?=
 =?utf-8?B?OEUrSWRoTWttazBMUWU5eUMyMStVVjRvQldReFNYV0VwYmU5eS9lR05HY1Mz?=
 =?utf-8?B?UVYwd0pUZWVsMGNRL1hUb1VMRE0wNWJmL1lNTUU2alp5RXBia3AyUlNaL01M?=
 =?utf-8?B?VlQrOHVSZlQxQ3NjYVFKNWhWOUh6ZlVWeERsQ1FrSHB4ODJGY0hqaElHd3Mx?=
 =?utf-8?B?enJKQ25wQzZCL1YxUGVGL3JoeVNxcTh3eDVoRXpXZWF2aGZSbW4zSXg5M0F3?=
 =?utf-8?B?RjljZmw5bDE5cHpPb0xSUGpBQWd5Q09rczdHUEZMKzgzN2FuRE5sMjJDOFV1?=
 =?utf-8?B?elVyMlJKQ0tCb0ZOQUpwS3dhNEJwQ3dxZ1VadzNGTlphRllFYmxua1hEVHNu?=
 =?utf-8?B?ZlZJSkN3WDNNS2ZZcEZ2OEh0aXN3Y0cyZzlnd1ZjakdqUW5vMDF3NXJrckJp?=
 =?utf-8?B?TGxmYXFLRVFKc2k0L3A2Y21MNW1nV1hQakw4cHBMNzEzNmU5RCtWUjhJeldy?=
 =?utf-8?B?Zzd5UW85TVZaTEEwSzE1RUZ3MmtKa3FXRGtTcG5qQlVyQkpDbmVhNEkwL2M1?=
 =?utf-8?B?UFZuTEcwUVBKN0Fldnk5NGkvMmFDWnBzZGNHVS9OallxQ0phMWZnTkNRbXNo?=
 =?utf-8?B?K2kxQjRQOWtCeWZzZE56TDFVOHBuT2tQazgrcVc0dWloOHJscWtKcnQreGFx?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08bb23c6-8df8-4909-df5b-08dad6baec79
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 12:19:15.2266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kxDamgHhYTFLHaudsuc5rfhFeJhsdRbGTFe6f1+RFZFTzHwbuAvXXEwErFPyqJqakyZ0/T4F8TorIYz5WLD5dnX3Z96wMXaE5yoxPS16cNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6064
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWxp?=
 =?utf-8?q?gn_DDI=5FBUF=5FCTL_Active_timeouts_with_Bspec_updates_=28rev4?=
 =?utf-8?q?=29?=
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

--------------dxz4PMVKGld69ovqkvYS3hJq
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Lakshmi, Sai,

The below failure is not related to the patch, it seems to be a known 
issue: https://gitlab.freedesktop.org/drm/intel/-/issues/7452

igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:

  * shard-skl: PASS
    <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
    -> INCOMPLETE
    <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>


Regards,

Ankit

On 12/5/2022 1:02 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Align DDI_BUF_CTL Active timeouts with Bspec updates (rev4)
> *URL:* 	https://patchwork.freedesktop.org/series/111373/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12465_full -> Patchwork_111373v4_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_111373v4_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_111373v4_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (12 -> 14)
>
> Additional (2): shard-rkl shard-dg1
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_111373v4_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>
>
>         Warnings
>
>  *
>
>     igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) ->
>         INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o {shard-tglu-10}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglu-10/igt@i915_suspend@basic-s3-without-i915.html>
>  *
>
>     igt@kms_vblank@pipe-c-ts-continuation-idle-hang:
>
>       o {shard-tglu-9}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglu-9/igt@kms_vblank@pipe-c-ts-continuation-idle-hang.html>
>         +42 similar issues
>
>
>     Known issues
>
> Here are the changes found in Patchwork_111373v4_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@feature_discovery@psr2:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb2/igt@feature_discovery@psr2.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb7/igt@feature_discovery@psr2.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@gem_create@create-massive:
>
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl1/igt@gem_create@create-massive.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>  *
>
>     igt@gem_exec_balancer@parallel-contexts:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +1
>         similar issue
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>  *
>
>     igt@gem_lmem_swapping@heavy-multi:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@gem_lmem_swapping@heavy-multi.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-multi:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@gem_lmem_swapping@heavy-verify-multi.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_spin_batch@legacy@default:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl3/igt@gem_spin_batch@legacy@default.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@gem_spin_batch@legacy@default.html>
>         (i915#2898 <https://gitlab.freedesktop.org/drm/intel/issues/2898>)
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#1804 <https://gitlab.freedesktop.org/drm/intel/issues/1804>)
>  *
>
>     igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl1/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>  *
>
>     igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-audio-edid:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@kms_chamelium@hdmi-audio-edid.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-hpd-storm-disable:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl1/igt@kms_chamelium@hdmi-hpd-storm-disable.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
>  *
>
>     igt@kms_color_chamelium@ctm-red-to-blue:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl7/igt@kms_color_chamelium@ctm-red-to-blue.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-64x64:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-snb4/igt@kms_cursor_crc@cursor-sliding-64x64.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>  *
>
>     igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +77
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@legacy:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         +1 similar issue
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +8
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/intel/issues/2587> /
>         i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +41
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +18
>         similar issues
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr@psr2_suspend:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb2/igt@kms_psr@psr2_suspend.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb8/igt@kms_psr@psr2_suspend.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2
>         similar issues
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>  *
>
>     igt@kms_vblank@pipe-d-wait-idle:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl1/igt@kms_vblank@pipe-d-wait-idle.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>  *
>
>     igt@perf_pmu@rc6-suspend:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl2/igt@perf_pmu@rc6-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl6/igt@perf_pmu@rc6-suspend.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>  *
>
>     igt@sysfs_clients@fair-7:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@sysfs_clients@fair-7.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>  *
>
>     igt@sysfs_clients@split-25:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@sysfs_clients@split-25.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_ctx_exec@basic-nohangcheck:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-tglb6/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268
>         <https://gitlab.freedesktop.org/drm/intel/issues/6268>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html>
>  *
>
>     igt@gem_exec_balancer@parallel-balancer:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html>
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-none@bcs0:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-tglb3/igt@gem_exec_fair@basic-none@bcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglb6/igt@gem_exec_fair@basic-none@bcs0.html>
>         +2 similar issues
>  *
>
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglb3/igt@gem_huc_copy@huc-copy.html>
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl2/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716
>         <https://gitlab.freedesktop.org/drm/intel/issues/716>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@gen9_exec_parse@allowed-single.html>
>  *
>
>     igt@i915_pm_rps@engine-order:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl1/igt@i915_pm_rps@engine-order.html>
>         (i915#6537
>         <https://gitlab.freedesktop.org/drm/intel/issues/6537>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl1/igt@i915_pm_rps@engine-order.html>
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>         (i915#2521
>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>         +1 similar issue
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>         (i915#4839
>         <https://gitlab.freedesktop.org/drm/intel/issues/4839>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>  *
>
>     igt@kms_psr@psr2_primary_render:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb8/igt@kms_psr@psr2_primary_render.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb2/igt@kms_psr@psr2_primary_render.html>
>         +2 similar issues
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>  *
>
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>  *
>
>     igt@perf@stress-open-close:
>
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-glk1/igt@perf@stress-open-close.html>
>         (i915#5213
>         <https://gitlab.freedesktop.org/drm/intel/issues/5213>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@perf@stress-open-close.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_exec_balancer@parallel-ordering:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#6117
>         <https://gitlab.freedesktop.org/drm/intel/issues/6117>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@gem_pread@exhaustion:
>
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-glk8/igt@gem_pread@exhaustion.html>
>         (i915#7248
>         <https://gitlab.freedesktop.org/drm/intel/issues/7248>) ->
>         WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk9/igt@gem_pread@exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>  *
>
>     igt@i915_pm_dc@dc3co-vpb-simulation:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#588 <https://gitlab.freedesktop.org/drm/intel/issues/588>)
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-skl9/igt@i915_pm_sseu@full-enable.html>
>         (i915#6991
>         <https://gitlab.freedesktop.org/drm/intel/issues/6991>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@i915_pm_sseu@full-enable.html>
>         (i915#3524 <https://gitlab.freedesktop.org/drm/intel/issues/3524>)
>  *
>
>     igt@kms_psr2_sf@cursor-plane-update-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2
>         similar issues
>  *
>
>     igt@runner@aborted:
>
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl1/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl7/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12465 -> Patchwork_111373v4
>
> CI-20190529: 20190529
> CI_DRM_12465: d196f7c5e3699db69773784a1f453b614bc8851f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7080: 14721e0783757dfa44ca2677851c3ba508b09682 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_111373v4: d196f7c5e3699db69773784a1f453b614bc8851f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------dxz4PMVKGld69ovqkvYS3hJq
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p>Hi Lakshmi, Sai,</p>
    <p>The below failure is not related to the patch, it seems to be a
      known issue:
      <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedesktop=
.org/drm/intel/-/issues/7452">https://gitlab.freedesktop.org/drm/intel/-/is=
sues/7452</a></p>
    <p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p=
>
    <ul>
      <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12465/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180=
-async-flip.html">PASS</a>
        -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111373v4/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-=
async-flip.html">INCOMPLETE</a></li>
    </ul>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Ankit<br>
    </p>
    <p></p>
    <div class=3D"moz-cite-prefix">On 12/5/2022 1:02 PM, Patchwork wrote:<b=
r>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:167022554190.24406.12906635804703=
859096@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Align DDI_BUF_CTL Active timeouts with Bspec updates
              (rev4)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/111373/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/111373/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111373v4/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12465_full -&gt;
        Patchwork_111373v4_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_111373v4_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_111373v4_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (12 -&gt; 14)</h2>
      <p>Additional (2): shard-rkl shard-dg1 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_111373v4_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-fli=
p:
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rota=
te-180-async-flip.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl9/igt@=
kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html" moz-do-n=
ot-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12=
_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109=
271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111373v4/shard-skl6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_rc_cc=
s_cc.html" moz-do-not-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-tra=
nsitions.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2346" moz-do-not-send=3D"true">i915#2346<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1373v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.h=
tml" moz-do-not-send=3D"true">FAIL</a></li>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>{shard-tglu-10}: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglu-10/igt@i915_suspend@ba=
sic-s3-without-i915.html" moz-do-not-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-c-ts-continuation-idle-hang:</p>
          <ul>
            <li>{shard-tglu-9}: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglu-9/igt@kms_vblank@pipe-c=
-ts-continuation-idle-hang.html" moz-do-not-send=3D"true">SKIP</a> +42 simi=
lar issues</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_111373v4_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@feature_discovery@psr2:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb2/igt@feature_discovery@psr2.html" moz-do-not-s=
end=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111373v4/shard-iclb7/igt@feature_discovery@psr2.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-massive:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-skl1/igt@gem_create@create-massiv=
e.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4991" moz-do-not-send=3D"true">i915#4991</=
a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-contexts:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111373v4/shard-iclb6/igt@gem_exec_balancer@para=
llel-contexts.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#=
4525</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111373v4/shard-glk5/igt@gem_exec_fair@basic-pace-=
share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#284=
2</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-multi:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@gem_lmem_swapping@heavy-=
multi.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-d=
o-not-send=3D"true">i915#4613</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@gem_lmem_swapping@heavy-=
verify-multi.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#1=
09271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613=
" moz-do-not-send=3D"true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_spin_batch@legacy@default:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-apl3/igt@gem_spin_batch@legacy@default.html" moz-do-=
not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111373v4/shard-apl3/igt@gem_spin_batch@legacy@default.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2898" moz-do-not-send=3D"true">i915#2898</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html" =
moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-skl10/igt@i915_pm_rc6_residency@r=
c6-idle@vcs0.html" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1804" moz-do-not-send=3D"true">i915#1=
804</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-skl1/igt@kms_ccs@pipe-b-bad-aux-s=
tride-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=
=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p=
>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@kms_ccs@pipe-b-bad-rotat=
ion-90-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-s=
end=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +2 similar issu=
es</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</=
p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@kms_ccs@pipe-c-bad-pixel=
-format-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-=
send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +2 similar iss=
ues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-audio-edid:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@kms_chamelium@hdmi-audio=
-edid.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</=
a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-=
do-not-send=3D"true">fdo#111827</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-skl1/igt@kms_chamelium@hdmi-hpd-s=
torm-disable.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#1=
09271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11182=
7" moz-do-not-send=3D"true">fdo#111827</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@ctm-red-to-blue:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-apl7/igt@kms_color_chamelium@ctm-=
red-to-blue.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#10=
9271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827=
" moz-do-not-send=3D"true">fdo#111827</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-sliding-64x64:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-snb4/igt@kms_cursor_crc@cursor-sl=
iding-64x64.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#10=
9271</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:=
</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@kms_cursor_legacy@2x-non=
blocking-modeset-vs-cursor-atomic.html" moz-do-not-send=3D"true">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-no=
t-send=3D"true">fdo#109271</a>) +77 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@legacy:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@legacy.htm=
l" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@kms_cursor_legacy@fli=
p-vs-cursor@legacy.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send=3D"true">=
i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@a-dp1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl7/igt@kms_flip@=
flip-vs-expired-vblank-interruptible@a-dp1.html" moz-do-not-send=3D"true">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79" moz=
-do-not-send=3D"true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@b-edp1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl10/igt@kms_fli=
p@flip-vs-expired-vblank-interruptible@b-edp1.html" moz-do-not-send=3D"true=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79" =
moz-do-not-send=3D"true">i915#79</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@kms_flip@plain-flip-fb=
-recreate@a-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2122" moz-do-not-send=3D"true">i9=
15#2122</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rc=
ccs-upscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111373v4/shard-iclb3/igt@kms_flip_scaled_crc@fl=
ip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a>) +8 simila=
r issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscal=
ing@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111373v4/shard-iclb8/igt@kms_flip_scaled_crc@fl=
ip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html" moz-do-not-=
send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2587" moz-do-not-send=3D"true">i915#2587</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2672" moz-do-not-send=3D"true">i915#=
2672</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downsc=
aling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111373v4/shard-iclb2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html" moz-do-=
not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-b=
lt:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@kms_frontbuffer_tracking=
@fbcpsr-2p-primscrn-shrfb-msflip-blt.html" moz-do-not-send=3D"true">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do=
-not-send=3D"true">fdo#109271</a>) +41 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mm=
ap-gtt:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pr=
i-indfb-draw-mmap-gtt.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl7/=
igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html" =
moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982" moz-do-not-send=3D"true">i915#1982</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mm=
ap-gtt:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@kms_frontbuffer_tracking=
@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html" moz-do-not-send=3D"true">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" mo=
z-do-not-send=3D"true">fdo#109271</a>) +18 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixe=
l-formats@pipe-b-edp-1:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb6/igt@kms_plane_scaling@plane-scaler-with-clipp=
ing-clamping-pixel-formats@pipe-b-edp-1.html" moz-do-not-send=3D"true">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1373v4/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clampin=
g-pixel-formats@pipe-b-edp-1.html" moz-do-not-send=3D"true">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176" moz-do-not-send=
=3D"true">i915#5176</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@kms_psr2_su@frontbuffer-=
xrgb8888.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#10927=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz=
-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@kms_psr2_su@page_flip-p0=
10.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-no=
t-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_suspend:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb2/igt@kms_psr@psr2_suspend.html" moz-do-not-sen=
d=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111373v4/shard-iclb8/igt@kms_psr@psr2_suspend.html" moz-do-not=
-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) +2 similar issues<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalida=
te-overlay.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb7/igt@kms_ps=
r_stress_test@flip-primary-invalidate-overlay.html" moz-do-not-send=3D"true=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5519=
" moz-do-not-send=3D"true">i915#5519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-d-wait-idle:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-skl1/igt@kms_vblank@pipe-d-wait-i=
dle.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/533" moz-do-n=
ot-send=3D"true">i915#533</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@rc6-suspend:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-apl2/igt@perf_pmu@rc6-suspend.html" moz-do-not-send=
=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111373v4/shard-apl6/igt@perf_pmu@rc6-suspend.html" moz-do-not-s=
end=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/180" moz-do-not-send=3D"true">i915#180</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@fair-7:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-apl3/igt@sysfs_clients@fair-7.htm=
l" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-sen=
d=3D"true">i915#2994</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@split-25:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@sysfs_clients@split-25.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-s=
end=3D"true">i915#2994</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_exec@basic-nohangcheck:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-tglb6/igt@gem_ctx_exec@basic-nohangcheck.html" moz-=
do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/6268" moz-do-not-send=3D"true">i915#6268</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglb1=
/igt@gem_ctx_exec@basic-nohangcheck.html" moz-do-not-send=3D"true">PASS</a>=
</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-balancer:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#4525</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-i=
clb2/igt@gem_exec_balancer@parallel-balancer.html" moz-do-not-send=3D"true"=
>PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html" m=
oz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk=
5/igt@gem_exec_fair@basic-none-share@rcs0.html" moz-do-not-send=3D"true">PA=
SS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@bcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-tglb3/igt@gem_exec_fair@basic-none@bcs0.html" moz-d=
o-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglb6=
/igt@gem_exec_fair@basic-none@bcs0.html" moz-do-not-send=3D"true">PASS</a> =
+2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl8=
/igt@gem_exec_fair@basic-pace-solo@rcs0.html" moz-do-not-send=3D"true">PASS=
</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-tglb7/igt@gem_huc_copy@huc-copy.html" moz-do-not-se=
nd=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2190" moz-do-not-send=3D"true">i915#2190</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-tglb3/igt@gem_h=
uc_copy@huc-copy.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-apl2/igt@gen9_exec_parse@allowed-single.html" moz-do=
-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5566" moz-do-not-send=3D"true">i915#5566</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/716" moz-do-not-send=3D=
"true">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111373v4/shard-apl3/igt@gen9_exec_parse@allowed-single.html" =
moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@engine-order:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-apl1/igt@i915_pm_rps@engine-order.html" moz-do-not-s=
end=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6537" moz-do-not-send=3D"true">i915#6537</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl1/igt@i915_=
pm_rps@engine-order.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:</p=
>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@p=
ipe-c-edp-1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2521" moz-do-not-send=3D"true">i915#25=
21</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111373v4/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-e=
dp-1.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varyin=
g-size:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-tra=
nsitions-varying-size.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send=3D"tru=
e">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111373v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-=
transitions-varying-size.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@c-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"true">i915#79</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11137=
3v4/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.ht=
ml" moz-do-not-send=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-ed=
p1.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4839" moz-do-not-send=3D"true">i915#4839<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1373v4/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html" m=
oz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_primary_render:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb8/igt@kms_psr@psr2_primary_render.html" moz-do-=
not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb2=
/igt@kms_psr@psr2_primary_render.html" moz-do-not-send=3D"true">PASS</a> +2=
 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalida=
te-overlay.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5519" moz-do-not-send=3D"true">i915#551=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111373v4/shard-tglb6/igt@kms_psr_stress_test@flip-primary-invalidate-overla=
y.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-fl=
ip-overlay.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5519" moz-do-not-send=3D"true">i915#551=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111373v4/shard-iclb2/igt@kms_psr_stress_test@invalidate-primary-flip-overla=
y.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.h=
tml" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4=
/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html" moz-do-not-=
send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@stress-open-close:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-glk1/igt@perf@stress-open-close.html" moz-do-not-sen=
d=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5213" moz-do-not-send=3D"true">i915#5213</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk4/igt@p=
erf@stress-open-close.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel-ordering:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html"=
 moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6117" moz-do-not-send=3D"true">i915#6117</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-i=
clb7/igt@gem_exec_balancer@parallel-ordering.html" moz-do-not-send=3D"true"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
 moz-do-not-send=3D"true">i915#4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pread@exhaustion:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-glk8/igt@gem_pread@exhaustion.html" moz-do-not-send=
=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7248" moz-do-not-send=3D"true">i915#7248</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-glk9/igt@ge=
m_pread@exhaustion.html" moz-do-not-send=3D"true">WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2658" moz-do-not-send=3D"true">=
i915#2658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html" moz=
-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658" moz-do-not-send=3D"true">i915#658</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-iclb2=
/igt@i915_pm_dc@dc3co-vpb-simulation.html" moz-do-not-send=3D"true">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588" moz-do-n=
ot-send=3D"true">i915#588</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12465/shard-skl9/igt@i915_pm_sseu@full-enable.html" moz-do-not-s=
end=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6991" moz-do-not-send=3D"true">i915#6991</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-skl6/igt@i915_=
pm_sseu@full-enable.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3524" moz-do-not-send=3D"true"=
>i915#3524</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html" =
moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111068" moz-do-not-send=3D"true">fdo#111068</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D=
"true">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111373v4/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg=
-area.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11137=
3v4/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111068" moz-do-not-send=3D"true">fdo#111068</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D=
"true">i915#658</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12465/shard-apl6/igt@runner@aborted.html" moz-do-not-send=3D"tr=
ue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
465/shard-apl2/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl2=
/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12465/shard-apl1/igt@runner@ab=
orted.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002" moz-=
do-not-send=3D"true">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4312" moz-do-not-send=3D"true">i915#4312</a>) -&gt; (<=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard=
-apl6/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl3/=
igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v4/shard-apl7/igt@runn=
er@aborted.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3002" moz-do-not-send=3D"true">i915#30=
02</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312" m=
oz-do-not-send=3D"true">i915#4312</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12465 -&gt; Patchwork_111373v4</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12465: d196f7c5e3699db69773784a1f453b614bc8851f @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7080: 14721e0783757dfa44ca2677851c3ba508b09682 @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_111373v4: d196f7c5e3699db69773784a1f453b614bc8851f @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------dxz4PMVKGld69ovqkvYS3hJq--
