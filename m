Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D5A594BB2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 02:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92B4D8596;
	Tue, 16 Aug 2022 00:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 783BED856E
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 00:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660611224; x=1692147224;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=Akbrl2HUwsQ0QpjyFZHIhl7THKlpp4DdhTNwmIHsJEU=;
 b=jV+KMIQOnO65o+yjHp7WngIwK5ShbVfBstxN9vh6gvnKNtkAn4q0D8x+
 ozWtc/krZAk2+LDz/S+mLVjxC9cJYS1QZke0flHwMK+D8pAC557ds3GqC
 ML0q0XYnUXOMuKzvf9WVX8TE213RS7UQN9XB7sdLgUWP7nWZY9LwB00sg
 WQWfpYn0q4JIC82BKVAFKYPCYFAS3b+Yn0EydrIetSshUb2UTvS2jWdMT
 0D+0k3/q+exSZAGBe9S3aLmi+Oqbz7YGNPwNgPcErtsfrVmDDY9jp8oBV
 LlYohA80b0zJMcNGPLbCxx4cwS+y+03sK25HPl27Iqol0sMgrNNhe8Tw+ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="279053754"
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; 
 d="scan'208,217";a="279053754"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 17:53:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; 
 d="scan'208,217";a="934686805"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 15 Aug 2022 17:53:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 17:53:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 17:53:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 17:53:31 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 17:53:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SnHHnhv+nEbS80bAAtOfBQia/FEYZK0T+TTY4IEYLSFLZ4HdKhHoDRc9uiJf0X3CqrgRBMWrZV2FgxSMpKBAWH424gQfCX+0YQILBv4S0cEGn1magU7JLeeb1jQMT0ym/LeQpJU94UTJB6u3hiVmyt8d2ooGIY9npkT1hMSLu8IBvFax18hFAQmqVxKj+5fgX0Wj+gmaOK5zSd6MVfT7jFXGbI/wc+mJa/m6fSiJzsfKADYSKK6SwtObMJiRmNwVAt0YnUZ+YrFngfC58dUi0SD1AQsqrjXr092eWOCaNbTaTGhjJBIywxiuAbcr3pe/8VNYso/NzvFMagOLePcLug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YdrxW50jBzJI/wJawRx8p/rmUAy488okgUTWsCTibVU=;
 b=U2Ti8nWXnhem9tehOh+yQ+Pa2j0YUNXXQ+BhTQhFuKzaVZR0+apcO6Sr4Ow8cFJvBbP3Ii3eZjy6dPiLphxfgVZN25d90bkR8ulJIIeY8+XDSKuZ2K7peLaWsJ0iROi/EabmjdGg6cNkx+tcSBRWCT6iBuyJpni2uZ2rAWIGOEjxNTizwMxAJIMdaqqs7FuGQ1rpHiECZK8CXEymlpwHY/qxYrr6kzDoU0gqIyGPFPc0ZLAf7pgq/eEyOh1/P7Xl3Q3YuJjpAlLrjWdnxtFbwjKllp3FEu8tq1CqnR1v5g+yXdOgtf764aZDaG2UxoVHG9vobJ5VWFbpHnMXP8SbDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DS0PR11MB6518.namprd11.prod.outlook.com (2603:10b6:8:d2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.28; Tue, 16 Aug
 2022 00:53:27 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e%5]) with mapi id 15.20.5504.028; Tue, 16 Aug 2022
 00:53:27 +0000
Content-Type: multipart/alternative;
 boundary="------------xvkpfFKJKiMr6NfG0uh7bnva"
Message-ID: <41c9a187-f374-4604-02c7-45a47c5a8fb9@intel.com>
Date: Mon, 15 Aug 2022 17:53:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20220728022028.2190627-1-John.C.Harrison@Intel.com>
 <165900071689.21235.1714109481710944405@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <165900071689.21235.1714109481710944405@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR02CA0053.namprd02.prod.outlook.com
 (2603:10b6:a03:54::30) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b8c94926-76cb-41ea-d7a8-08da7f21ba76
X-MS-TrafficTypeDiagnostic: DS0PR11MB6518:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wiw3gzGN3NyMLlZI9QEXfLiue6SYInzc7IrN1j8or+Lpzv67L8GGIIggxTUGHiPMf5qsa9vso7EZTy3xM5M3ZsELEvBIXAwrDYK+eaJzJPRIWILfrbpqsJ2+YidzoSFC8XO1O8dn0iUtTV/UEBYwmd+bDrynGd2V0p2wjrSrcTHlVbPUQtexuR/SkoFGZze82N2vtME29/4nosWp8P2SFRGA0/0kgoNONSB887S2vUQorNFerkRi9hy3bB/DIha5qPbLeXSRHnML3rsX4K/Dnv1KQ5FKAK0L1QH6BVQAgi/ef7EqIGFoywS4Sf4gKXwi7O3bIa39hNlPCshuqJ2/H47sOF8D89reQkPPZXlDLRc8Sej6tbC7pNAYPhi245Bq0bXRx4Cg2lUCGXvCxlCm+9NfMos5alVDoyHM8h6xgyRvqQsN2DesA5OYllv556LwAPzlkfztfyEVsZ+WpAzCyMNIfJgkUV3KA8gT+x4W1wdG77hjGEG9hdjmCvoGE71EWAKKfFpUZOFNnGEhUPMiIcmJqOVQPmTzSfBSLnjBwvj/MjUYKpfk2Lrfdm/t+3MNmdK5XzDfBPAXO8TlQOe2yaMEdNe5uG87KPQWKOUUYu3E4BH1Jny/J43546gcsYEDmQcqCCBrLO22ceQA8KHULELT9EqCSl6K9Z77AnPK+tGuAq/s5TBjUhBfQrIRItI6ldLdOReRlRrIX22XgY7vX20Pz1gm2WwhznyKkET1MBJrYIW4wIbEKDgWFr75KsLiGmP7tzFjwZoBj0UoDZWdta/jUZUxQUa/WC7IwIBjQU4cGO29Aw4iAawH1dXpQ6IH7hc9s0BK7WjAnxdCiJktXuToKMVaSn1nq2Sj1ycTgpfkk1sRcbzwaqQYWs9tkL5gzaOZtGcGN28YHEiYx9Cp6w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(346002)(396003)(39860400002)(366004)(40265005)(2616005)(186003)(26005)(6512007)(53546011)(30864003)(21615005)(6506007)(6666004)(33964004)(41300700001)(36756003)(31686004)(6486002)(478600001)(966005)(82960400001)(166002)(31696002)(38100700002)(86362001)(83380400001)(2906002)(8936002)(5660300002)(66556008)(66476007)(66946007)(316002)(6916009)(43740500002)(45980500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2hhT1hxb2pORVF1c28rSWY5Rk1BRUxJeGxHbXZNUkNxT2pFZzVqTUQ5RVFD?=
 =?utf-8?B?R0ZOeEJ2V3FYM2RzeFVwSG1qZmtSc0RsYnV4SmJYQ1FoSmVpZWVWUVZnSW5v?=
 =?utf-8?B?WnEvV2FFRVQ3amoxbHJYYkFaSlpXejlIbTFIWDZtSG5sVGNHUFlxU1RyS09o?=
 =?utf-8?B?VFc2VS9hZ2F2UkN4bitXYTRyb2sweDBNMzNiTkQvRHhlNFplM0UyOXFBNUFQ?=
 =?utf-8?B?WkI3SHFtVDRYN3BIWW1RRHVjUnF3WGloeUdQVk51bEIxaStjQmY2Vk9WUFlh?=
 =?utf-8?B?NEx0em5CdlY4UisxeXhMV3gwbU5iTEd2cWdOUW1GWFEvL3JVbWJMT3MraHox?=
 =?utf-8?B?ZEFpeW8wS3Jtb0RhUGZMQ0dndyt6UFBEWXJCdktaY0hTMnl1d1MrTUlpYlhZ?=
 =?utf-8?B?WWlSMDZtaWdoMjBhWGlQSWx5YjZBVmE2S1lvUEFuMHIydm1jajEyNEt0c0Uy?=
 =?utf-8?B?eTJsRjVicVo1aThTRmd3eHV0TlBHTGJacW53UGc0TUJuMzIwNlJDZWNLUW9y?=
 =?utf-8?B?c1I2ZlNBNzNkalUyYmZEUmlndWs4a2NyQlhRcWdtVXVsUWtDZmJSdlM1SElD?=
 =?utf-8?B?dEV1V2VzTUN0RTRIMmxrQnFWaVgzVkFOd29ISkkvVkE1bzMza2Q2WEt1ZlVz?=
 =?utf-8?B?UmxhSnBGZ21yblRrZkRBMGNjQ2tpYU1CNXpSM2RMOXJmZGNKMVNvR2NPWlk0?=
 =?utf-8?B?M2pONUFrRktGVDJ1U0Zkd3RzbFFpVGQ2d0krajVBKzRQMWZEVWd1cTJtOWVP?=
 =?utf-8?B?YWZkakVValhJdlpQSW1JWk5OblJaOUNPd3poZlQ4NjliSUdyUkFneTR6RHZS?=
 =?utf-8?B?OFVLeGpaanRBTi9RcVFOWWdUcURreFlCbkpFOVFpL3pkMzU4ejMrc00rMTBD?=
 =?utf-8?B?ekxkSlk5NE5MLzVkN2w3VTdhZkpqcm5iVkxDWEpaYW1aQ2JYWDdXeElaeWpD?=
 =?utf-8?B?eDltWjhlVE5PK0dKOVhwbXhiZUxvOVF6OThOM2ZsbkNqczVvUlhOcUsrQ2pa?=
 =?utf-8?B?OFpNSkRZcm5SSVQ1eVU5b0dFVVgvZ0M1TEFqMEpSUWlMRmF4a2ZtUmNLZy8w?=
 =?utf-8?B?VnZvdy9kM2xadFFmSWRPaEp0YnBCdzlwbEd2L3Q5WVB1R2NWNkFiOFViYmJW?=
 =?utf-8?B?VTkxcTFSY01KdGU0YzFnN0ZESjVJN25sNXd1SWtDZEFkcDZkRUR1djVDcWgr?=
 =?utf-8?B?Nm5GVUNjeHZ0SlY0SXpLS1FlZUZLUisweU9XTFFkWWNOL3M4OHYrSmhENjFx?=
 =?utf-8?B?VzN2K0xnQnVwdjVpQTBYTmRsdEsyZ0diaEJDd1R5dVdKU041bTZYeTVYcEVq?=
 =?utf-8?B?UUg5Z1RtWEZEclNiSFliQ0YzZ3BmOUlhcHJBdm1YOS9naWo2eDhZN3oyTFZt?=
 =?utf-8?B?WlppRjRzWmJsRUhSN3JheG5DaUxJZlV0TFlmWE55VXRPSi9nbE5hZWNidzFH?=
 =?utf-8?B?aWd6cnl5NmZDNTRXNHpFamtSdmxoaFNUWnRnL0JyMkRxQnZGWmdEZThraEQ0?=
 =?utf-8?B?eEVSc2FRM3lKckJFcml0eDdESkJpblA3N2ZOcnduSjE1dkRTNGREbEIzeDZr?=
 =?utf-8?B?S3JYSVNOa25GdGRMRnY2SUw5T2MyMDkxckh0eTVKNlJrdXl2ZDVNODlic2dJ?=
 =?utf-8?B?OUxaK0ZFK1d2MTFRZzZhQzlmNXZhSCt0UDNycElDaHJlSlZGQjlwZk9BRHVs?=
 =?utf-8?B?MXpxelJBMyt3NW9qNjhZK01QRHRON0VBSHBQV2syMVJjR1VGRE9heXBuMmhn?=
 =?utf-8?B?UTUxUVFEU1l6T3N3NDVzT0ZCRktnTFJmMktyVVFPMW5aQS9FRkdaTEdFMW9I?=
 =?utf-8?B?UFp4WU1adUJuV1pVZC9QbWo3RDluWkR4Q0VIWTFGRmVSdGZNN0JyQ3Roa0kr?=
 =?utf-8?B?UW9UTGN5K2VYUVdHUnpWRzRHZDExLzhyZElmY0VGS1ZiWllWd2NrNHlJQlVU?=
 =?utf-8?B?TFdGcnlFSGNqTFJDcWRxc2xHVFd3elZEZHlBcy9pczc1Ymc1M2VBVkp6SXFJ?=
 =?utf-8?B?NmhVaGNtWjZSaUZxY25RMXZxK05yNEswWWJQbVZPb0czV2tlcFY2L1ZyWXdz?=
 =?utf-8?B?bjgzdDhrcmI0eDU2VS9lZVYxVWg5bDI0bThEQTNDWXFsWnN4NnM5Tk1vaUo2?=
 =?utf-8?B?RFRndWNCaFJFbHdEQlRjS2dyUzV2MERxMFhZRWlrTDRTS2hOclJ0T0hhNWtS?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8c94926-76cb-41ea-d7a8-08da7f21ba76
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 00:53:26.9251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ABOHPPZaKgorOXMpYTKQtNtkron0M/KYYkB/KBjKEwOAlvncBWr1Bo7+M1ZW5joMC3Sdk67z5uZgtBW93PBYVFgAs4kuMXDK88AmNysjv88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6518
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?es_and_improvements_to_GuC_logging_and_error_capture?=
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

--------------xvkpfFKJKiMr6NfG0uh7bnva
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 7/28/2022 02:31, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Fixes and improvements to GuC logging and error capture
> *URL:* 	https://patchwork.freedesktop.org/series/106789/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11946_full -> Patchwork_106789v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_106789v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_106789v1_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (13 -> 13)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_106789v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_mmap@short-mmap:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl6/igt@gem_mmap@short-mmap.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl4/igt@gem_mmap@short-mmap.html>
>
Looks like the system just died in the middle of running the test. 
Unrelated to this patch set as the test is not about error capture or 
GuC logs and SKL is not a GuC enabled platform.

>  *
>  *
>
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html>
>
Looks like the test just takes a long time. The max test timeout was hit 
but dmesg suggests it was still doing stuff the whole time. Either way, 
it is a display specific test on a non-GuC platform. So again, not 
related to this patch set.

John.


>  *
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * igt@gem_ctx_persistence@many-contexts:
>       o {shard-dg1}: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-dg1-17/igt@gem_ctx_persistence@many-contexts.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_106789v1_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>  *
>
>     boot:
>
>      o
>
>         shard-apl: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl8/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl1/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl1/boot.html>)
>         (i915#4386 <https://gitlab.freedesktop.org/drm/intel/issues/4386>)
>
>      o
>
>         shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk1/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk1/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk1/boot.html>)
>         (i915#4392 <https://gitlab.freedesktop.org/drm/intel/issues/4392>)
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
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@feature_discovery@psr2.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb1/igt@feature_discovery@psr2.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@gem_create@create-massive:
>
>      o
>
>         shard-glk: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk8/igt@gem_create@create-massive.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>
>      o
>
>         shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@gem_create@create-massive.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb7/igt@gem_eio@unwedge-stress.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-tglb3/igt@gem_eio@unwedge-stress.html>
>         (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>  *
>
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@gem_exec_fair@basic-none@rcs0:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_lmem_swapping@verify-ccs:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@gem_lmem_swapping@verify-ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_userptr_blits@input-checking:
>
>       o shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl7/igt@gem_userptr_blits@input-checking.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl8/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#6405 <https://gitlab.freedesktop.org/drm/intel/issues/6405>)
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl10/igt@i915_pm_sseu@full-enable.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl10/igt@i915_pm_sseu@full-enable.html>
>         (i915#3048 <https://gitlab.freedesktop.org/drm/intel/issues/3048>)
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html>
>         (i915#2521 <https://gitlab.freedesktop.org/drm/intel/issues/2521>)
>  *
>
>     igt@kms_busy@extended-pageflip-hang-newfb:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-snb6/igt@kms_busy@extended-pageflip-hang-newfb.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>  *
>
>     igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>  *
>
>     igt@kms_chamelium@hdmi-frame-dump:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@kms_chamelium@hdmi-frame-dump.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>  *
>
>     igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl6/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>  *
>
>     igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl1/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html>
>         (i915#4939 <https://gitlab.freedesktop.org/drm/intel/issues/4939>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@flip-vs-suspend@c-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl9/igt@kms_flip@flip-vs-suspend@c-edp1.html>
>         (i915#4839 <https://gitlab.freedesktop.org/drm/intel/issues/4839>)
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +1
>         similar issue
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1
>         similar issue
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +7
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-suspend:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +7
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +24
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +14
>         similar issues
>  *
>
>     igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +1
>         similar issue
>
>      o
>
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         (i915#1188 <https://gitlab.freedesktop.org/drm/intel/issues/1188>)
>
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2
>         similar issues
>  *
>
>     igt@kms_psr@psr2_sprite_blt:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +3
>         similar issues
>  *
>
>     igt@perf@polling:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl1/igt@perf@polling.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl1/igt@perf@polling.html>
>         (i915#1542 <https://gitlab.freedesktop.org/drm/intel/issues/1542>)
>
>
>         Possible fixes
>
>  *
>
>     igt@fbdev@info:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@fbdev@info.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@fbdev@info.html>
>  *
>
>     igt@gem_ctx_exec@basic-nohangcheck:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268
>         <https://gitlab.freedesktop.org/drm/intel/issues/6268>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html>
>  *
>
>     igt@gem_ctx_persistence@many-contexts:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html>
>         (i915#2410
>         <https://gitlab.freedesktop.org/drm/intel/issues/2410>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html>
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>      o
>
>         {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-dg1-17/igt@gem_eio@unwedge-stress.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-dg1-13/igt@gem_eio@unwedge-stress.html>
>
>      o
>
>         {shard-tglu}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglu-6/igt@gem_eio@unwedge-stress.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-tglu-2/igt@gem_eio@unwedge-stress.html>
>
>  *
>
>     igt@gem_exec_balancer@fairslice:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@gem_exec_balancer@fairslice.html>
>         (i915#6259
>         <https://gitlab.freedesktop.org/drm/intel/issues/6259>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-2/igt@gem_exec_balancer@fairslice.html>
>  *
>
>     igt@gem_exec_balancer@parallel-contexts:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl7/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846
>         <https://gitlab.freedesktop.org/drm/intel/issues/2846>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@gem_exec_fair@basic-deadline.html>
>  *
>
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
>
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         +3 similar issues
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>      o
>
>         {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html>
>
>      o
>
>         shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html>
>
>  *
>
>     igt@gem_exec_fair@basic-pace@rcs0:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-pace@vcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk7/igt@gem_exec_fair@basic-pace@vcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2849
>         <https://gitlab.freedesktop.org/drm/intel/issues/2849>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>  *
>
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>         (fdo#109313
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109313>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>  *
>
>     igt@gem_exec_reloc@basic-write-read-noreloc:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html>
>         +15 similar issues
>  *
>
>     igt@gem_exec_schedule@semaphore-power:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html>
>         (fdo#110254
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110254>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html>
>  *
>
>     igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         +7 similar issues
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk3/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716
>         <https://gitlab.freedesktop.org/drm/intel/issues/716>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk8/igt@gen9_exec_parse@allowed-single.html>
>  *
>
>     igt@gen9_exec_parse@batch-without-end:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gen9_exec_parse@batch-without-end.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html>
>         +3 similar issues
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>
>       o {shard-rkl}: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#6405
>         <https://gitlab.freedesktop.org/drm/intel/issues/6405>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>  *
>
>     igt@i915_pm_rpm@dpms-non-lpsp:
>
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-dg1-15/igt@i915_pm_rpm@dpms-non-lpsp.html>
>         +2 similar issues
>  *
>
>     igt@i915_pm_rpm@fences:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@i915_pm_rpm@fences.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@i915_pm_rpm@fences.html>
>  *
>
>     igt@i915_pm_rpm@i2c:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-2/igt@i915_pm_rpm@i2c.html>
>         (fdo#109308
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109308>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@i915_pm_rpm@i2c.html>
>  *
>
>     igt@i915_suspend@forcewake:
>
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@i915_suspend@forcewake.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@i915_suspend@forcewake.html>
>         +1 similar issue
>  *
>
>     igt@kms_atomic@atomic_plane_damage:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-2/igt@kms_atomic@atomic_plane_damage.html>
>         (i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_atomic@atomic_plane_damage.html>
>  *
>
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>
>       o shard-skl: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl7/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html>
>         (i915#6371
>         <https://gitlab.freedesktop.org/drm/intel/issues/6371>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html>
>         +1 similar issue
>  *
>
>     igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html>
>         (fdo#111314
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111314> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098> /
>         i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html>
>         +4 similar issues
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html>
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>         +2 similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html>
>         +22 similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
>
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl9/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html>
>         +1 similar issue
>  *
>
>     igt@kms_plane@plane-position-covered@pipe-b-planes:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-b-planes.html>
>         (i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-b-planes.html>
>         +1 similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3546
>         <https://gitlab.freedesktop.org/drm/intel/issues/3546> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>  *
>
>     igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html>
>         (i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html>
>  *
>
>     igt@kms_psr@cursor_mmap_cpu:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@kms_psr@cursor_mmap_cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html>
>         +1 similar issue
>  *
>
>     igt@kms_psr@psr2_primary_mmap_cpu:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         +2 similar issues
>  *
>
>     igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html>
>  *
>
>     igt@kms_vblank@pipe-b-wait-busy-hang:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@kms_vblank@pipe-b-wait-busy-hang.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_vblank@pipe-b-wait-busy-hang.html>
>         +26 similar issues
>  *
>
>     igt@perf@gen12-unprivileged-single-ctx-counters:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-2/igt@perf@gen12-unprivileged-single-ctx-counters.html>
>  *
>
>     igt@perf@polling-parameterized:
>
>      o
>
>         shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl10/igt@perf@polling-parameterized.html>
>         (i915#5639
>         <https://gitlab.freedesktop.org/drm/intel/issues/5639>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl7/igt@perf@polling-parameterized.html>
>
>      o
>
>         shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb1/igt@perf@polling-parameterized.html>
>         (i915#5639
>         <https://gitlab.freedesktop.org/drm/intel/issues/5639>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-tglb5/igt@perf@polling-parameterized.html>
>
>  *
>
>     igt@perf@polling-small-buf:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@perf@polling-small-buf.html>
>         (i915#1722
>         <https://gitlab.freedesktop.org/drm/intel/issues/1722>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@perf@polling-small-buf.html>
>  *
>
>     igt@perf@short-reads:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl6/igt@perf@short-reads.html>
>         (i915#51 <https://gitlab.freedesktop.org/drm/intel/issues/51>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl10/igt@perf@short-reads.html>
>  *
>
>     igt@perf_pmu@rc6-suspend:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/igt@perf_pmu@rc6-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl6/igt@perf_pmu@rc6-suspend.html>
>         +1 similar issue
>  *
>
>     igt@prime_vgem@coherency-gtt:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-6/igt@prime_vgem@coherency-gtt.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         fdo#111656
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111656> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_exec_balancer@parallel-ordering:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#6117
>         <https://gitlab.freedesktop.org/drm/intel/issues/6117>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
>
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@runner@aborted:
>
>       o shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> /
>         i915#92 <https://gitlab.freedesktop.org/drm/intel/issues/92>)
>         -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> /
>         i915#92 <https://gitlab.freedesktop.org/drm/intel/issues/92>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11946 -> Patchwork_106789v1
>
> CI-20190529: 20190529
> CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_106789v1: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------xvkpfFKJKiMr6NfG0uh7bnva
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 7/28/2022 02:31, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:165900071689.21235.17141094817109=
44405@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Fixes and improvements to GuC logging and error capture</td=
>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/106789/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/106789/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106789v1/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11946_full -&gt;
        Patchwork_106789v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_106789v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_106789v1_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (13 -&gt; 13)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_106789v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_mmap@short-mmap:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl6/igt@gem_mmap@short-mmap.html" moz-do-not-send=
=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_106789v1/shard-skl4/igt@gem_mmap@short-mmap.html" moz-do-not-se=
nd=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Looks like the system just died in the middle of running the test.
    Unrelated to this patch set as the test is not about error capture
    or GuC logs and SKL is not a GuC enabled platform.<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:165900071689.21235.17141094817109=
44405@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html" mo=
z-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_106789v1/shard-skl9/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-0.html" moz-do-not-send=3D"true">TIMEOUT</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Looks like the test just takes a long time. The max test timeout was
    hit but dmesg suggests it was still doing stuff the whole time.
    Either way, it is a display specific test on a non-GuC platform. So
    again, not related to this patch set.<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:165900071689.21235.17141094817109=
44405@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>igt@gem_ctx_persistence@many-contexts:
          <ul>
            <li>{shard-dg1}: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_106789v1/shard-dg1-17/igt@gem_ctx_persistence@=
many-contexts.html" moz-do-not-send=3D"true">DMESG-FAIL</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_106789v1_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>boot:</p>
          <ul>
            <li>
              <p>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl=
1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11946/shard-apl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11946/shard-apl2/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1194=
6/shard-apl2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl2/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11946/shard-apl3/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-a=
pl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl3/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11946/shard-apl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl4/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11946/shard-apl4/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_119=
46/shard-apl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl6/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11946/shard-apl6/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-=
apl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl6/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11946/shard-apl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl7/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11946/shard-apl7/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
946/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl8/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11946/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06789v1/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl8/boo=
t.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_106789v1/shard-apl8/boot.html" moz-do-not-sen=
d=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106789v1/shard-apl8/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard=
-apl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl7/boot.html" moz-d=
o-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106789v1/shard-apl7/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10678=
9v1/shard-apl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl6/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106789v1/shard-apl6/boot.html" moz-do-not-send=3D=
"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106789v1/shard-apl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl=
4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl4/boot.html" moz-do-no=
t-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_106789v1/shard-apl4/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/=
shard-apl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl3/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106789v1/shard-apl3/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106789v1/shard-apl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl2/=
boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl2/boot.html" moz-do-not-=
send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_106789v1/shard-apl2/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/sh=
ard-apl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl1/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106789v1/shard-apl1/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6789v1/shard-apl1/boot.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4386" moz-do-not-send=3D"t=
rue">i915#4386</a>)</p>
            </li>
            <li>
              <p>shard-glk: (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk=
9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk9/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11946/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk8/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11946/shard-glk8/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1194=
6/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk7/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11946/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-g=
lk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk6/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11946/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk5/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11946/shard-glk5/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_119=
46/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk3/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11946/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-=
glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk3/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11946/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk2/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11946/shard-glk2/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
946/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk1/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11946/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06789v1/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk9/boo=
t.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_106789v1/shard-glk9/boot.html" moz-do-not-sen=
d=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106789v1/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard=
-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk8/boot.html" moz-d=
o-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106789v1/shard-glk7/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10678=
9v1/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk7/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106789v1/shard-glk6/boot.html" moz-do-not-send=3D=
"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106789v1/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk=
6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk5/boot.html" moz-do-no=
t-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_106789v1/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/=
shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk3/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106789v1/shard-glk3/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106789v1/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk2/=
boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk2/boot.html" moz-do-not-=
send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_106789v1/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/sh=
ard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk1/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106789v1/shard-glk1/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6789v1/shard-glk1/boot.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4392" moz-do-not-send=3D"t=
rue">i915#4392</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@feature_discovery@psr2:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb2/igt@feature_discovery@psr2.html" moz-do-not-s=
end=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_106789v1/shard-iclb1/igt@feature_discovery@psr2.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-massive:</p>
          <ul>
            <li>
              <p>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106789v1/shard-glk8/igt@gem_create@create-massi=
ve.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4991" moz-do-not-send=3D"true">i915#4991<=
/a>)</p>
            </li>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@gem_create@create-massi=
ve.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4991" moz-do-not-send=3D"true">i915#4991<=
/a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-tglb7/igt@gem_eio@unwedge-stress.html" moz-do-not-s=
end=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_106789v1/shard-tglb3/igt@gem_eio@unwedge-stress.html" moz-do=
-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5784" moz-do-not-send=3D"true">i915#5784</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fe=
nce.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb3/igt@gem_exec_bala=
ncer@parallel-keep-submit-fence.html" moz-do-not-send=3D"true">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-s=
end=3D"true">i915#4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@rcs0:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html" moz-do-=
not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106789v1/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106789v1/shard-glk7/igt@gem_exec_fair@basic-pace-=
share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#284=
2</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-ccs:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@gem_lmem_swapping@verify=
-ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do=
-not-send=3D"true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@input-checking:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106789v1/shard-apl7/igt@gem_userptr_blits@input-=
checking.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4991" moz-do-not-send=3D"true">i915=
#4991</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-apl1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106789v1/shard-apl8/igt@i915_pm_rc6_residency@rc6=
-idle@vcs0.html" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/6405" moz-do-not-send=3D"true">i915#640=
5</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl10/igt@i915_pm_sseu@full-enable.html" moz-do-not-=
send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_106789v1/shard-skl10/igt@i915_pm_sseu@full-enable.html" moz=
-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3048" moz-do-not-send=3D"true">i915#3048</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p=
>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@p=
ipe-b-edp-1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl1/igt@kms_as=
ync_flips@alternate-sync-async-flip@pipe-b-edp-1.html" moz-do-not-send=3D"t=
rue">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
521" moz-do-not-send=3D"true">i915#2521</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_busy@extended-pageflip-hang-newfb:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106789v1/shard-snb6/igt@kms_busy@extended-pagefl=
ip-hang-newfb.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#=
109271</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106789v1/shard-apl6/igt@kms_ccs@pipe-c-bad-pixel=
-format-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-sen=
d=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-frame-dump:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@kms_chamelium@hdmi-frame=
-dump.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</=
a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-=
do-not-send=3D"true">fdo#111827</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106789v1/shard-apl6/igt@kms_color_chamelium@pipe=
-d-ctm-red-to-blue.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true"=
>fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827" moz-do-not-send=3D"true">fdo#111827</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.=
html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl1/igt@kms_cursor_crc@cur=
sor-suspend@pipe-b-edp-1.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939" moz-do-not-se=
nd=3D"true">i915#4939</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-tra=
nsitions.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk5/igt@kms_curso=
r_legacy@flip-vs-cursor@atomic-transitions.html" moz-do-not-send=3D"true">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346" m=
oz-do-not-send=3D"true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_106789v1/shard-skl6/igt@kms_flip@flip-vs-expir=
ed-vblank@c-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"true">i915=
#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html" moz-d=
o-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106789v1/shard-skl9/igt@kms_flip@flip-vs-suspend@c-ed=
p1.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4839" moz-do-not-send=3D"true">i915#4839<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_106789v1/shard-skl9/igt@kms_flip@plain-flip-fb=
-recreate@c-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2122" moz-do-not-send=3D"true">i9=
15#2122</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downsc=
aling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106789v1/shard-iclb2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html" moz-do-=
not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>) +1 similar issue<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upsc=
aling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106789v1/shard-iclb1/igt@kms_flip_scaled_crc@fl=
ip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html" moz-do-no=
t-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2672" moz-do-not-send=3D"true">i915#2672</a>) +7 similar issues</=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rc=
ccs-upscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106789v1/shard-iclb3/igt@kms_flip_scaled_crc@fl=
ip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=
=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mm=
ap-wc:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pr=
i-indfb-draw-mmap-wc.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-snb6/=
igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html" m=
oz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html" =
moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@kms_frontbuffer_tracking=
@fbc-suspend.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i=
915#180</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw=
-render:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106789v1/shard-apl7/igt@kms_frontbuffer_tracking=
@fbcpsr-1p-offscren-pri-shrfb-draw-render.html" moz-do-not-send=3D"true">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" m=
oz-do-not-send=3D"true">fdo#109271</a>) +24 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</=
p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@kms_frontbuffer_tracking=
@psr-1p-primscrn-cur-indfb-move.html" moz-do-not-send=3D"true">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-=
send=3D"true">fdo#109271</a>) +14 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
          <ul>
            <li>
              <p>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.htm=
l" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_106789v1/shard-apl8/igt@kms_hdr@bpc-switch-su=
spend@pipe-a-dp-1.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"tr=
ue">i915#180</a>) +1 similar issue</p>
            </li>
            <li>
              <p>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.htm=
l" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl4/igt@kms_hdr@bpc-switch-su=
spend@pipe-a-dp-1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1188" moz-do-not-send=3D"true">i=
915#1188</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-=
5@pipe-a-edp-1:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-do=
wnscale-factor-0-5@pipe-a-edp-1.html" moz-do-not-send=3D"true">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/s=
hard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@=
pipe-a-edp-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235" moz-do-not-send=3D"true">i915#5=
235</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_blt:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html" moz-do-not-=
send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_106789v1/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html" moz-=
do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) +3 similar i=
ssues</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl1/igt@perf@polling.html" moz-do-not-send=3D"true"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106789v1/shard-skl1/igt@perf@polling.html" moz-do-not-send=3D"true">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542" moz-=
do-not-send=3D"true">i915#1542</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@fbdev@info:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@fbdev@info.html" moz-do-not-send=3D"true=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582=
" moz-do-not-send=3D"true">i915#2582</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@fbdev@info.html=
" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_exec@basic-nohangcheck:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html" moz=
-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/6268" moz-do-not-send=3D"true">i915#6268</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5=
/igt@gem_ctx_exec@basic-nohangcheck.html" moz-do-not-send=3D"true">PASS</a>=
</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@many-contexts:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html" =
moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2410" moz-do-not-send=3D"true">i915#2410</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rk=
l-5/igt@gem_ctx_persistence@many-contexts.html" moz-do-not-send=3D"true">PA=
SS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>
              <p>{shard-dg1}: <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11946/shard-dg1-17/igt@gem_eio@unwedge-stress.html" moz-do-no=
t-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5784" moz-do-not-send=3D"true">i915#5784</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-dg1-13/igt@=
gem_eio@unwedge-stress.html" moz-do-not-send=3D"true">PASS</a></p>
            </li>
            <li>
              <p>{shard-tglu}: <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11946/shard-tglu-6/igt@gem_eio@unwedge-stress.html" moz-do-n=
ot-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3063" moz-do-not-send=3D"true">i915#3063</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-tglu-=
2/igt@gem_eio@unwedge-stress.html" moz-do-not-send=3D"true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@fairslice:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-5/igt@gem_exec_balancer@fairslice.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6259" moz-do-not-send=3D"true">i915#6259</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-2/ig=
t@gem_exec_balancer@fairslice.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-contexts:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#4525</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-i=
clb4/igt@gem_exec_balancer@parallel-contexts.html" moz-do-not-send=3D"true"=
>PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-kbl7/igt@gem_exec_fair@basic-deadline.html" moz-do-n=
ot-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2846" moz-do-not-send=3D"true">i915#2846</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@g=
em_exec_fair@basic-deadline.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7=
/igt@gem_exec_fair@basic-none-rrul@rcs0.html" moz-do-not-send=3D"true">PASS=
</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>
              <p>{shard-tglu}: <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11946/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/sha=
rd-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html" moz-do-not-send=3D"=
true">PASS</a></p>
            </li>
            <li>
              <p>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html=
" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-=
tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html" moz-do-not-send=3D"true=
">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@rcs0:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html" moz-=
do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5=
/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send=3D"true">PASS</a><=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html" moz-do-=
not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-glk7/igt@=
gem_exec_fair@basic-pace@vcs0.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html" m=
oz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2849" moz-do-not-send=3D"true">i915#2849</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-icl=
b4/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send=3D"true">PAS=
S</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-defaul=
t-cmd.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109313" moz-do-not-send=3D"true">fdo#109313</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
789v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html" m=
oz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3281" moz-do-not-send=3D"true">i915#3281</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/sh=
ard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html" moz-do-not-send=
=3D"true">PASS</a> +15 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@semaphore-power:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html" =
moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D110254" moz-do-not-send=3D"true">fdo#110254</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-=
rkl-5/igt@gem_exec_schedule@semaphore-power.html" moz-do-not-send=3D"true">=
PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-re=
ads-uncached.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3282" moz-do-not-send=3D"true">i915#3=
282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_106789v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-unca=
ched.html" moz-do-not-send=3D"true">PASS</a> +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-glk3/igt@gen9_exec_parse@allowed-single.html" moz-do=
-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5566" moz-do-not-send=3D"true">i915#5566</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/716" moz-do-not-send=3D=
"true">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_106789v1/shard-glk8/igt@gen9_exec_parse@allowed-single.html" =
moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@batch-without-end:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@gen9_exec_parse@batch-without-end.html" =
moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2527" moz-do-not-send=3D"true">i915#2527</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rk=
l-5/igt@gen9_exec_parse@batch-without-end.html" moz-do-not-send=3D"true">PA=
SS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html=
" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6405" moz-do-not-send=3D"true">i915#6405</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-=
rkl-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html" moz-do-not-send=3D"true=
">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
          <ul>
            <li>{shard-dg1}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html" moz-do-=
not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1397" moz-do-not-send=3D"true">i915#1397</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-dg1-15/ig=
t@i915_pm_rpm@dpms-non-lpsp.html" moz-do-not-send=3D"true">PASS</a> +2 simi=
lar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@fences:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@i915_pm_rpm@fences.html" moz-do-not-send=
=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1849" moz-do-not-send=3D"true">i915#1849</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@i915_pm=
_rpm@fences.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@i2c:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-2/igt@i915_pm_rpm@i2c.html" moz-do-not-send=3D=
"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109308" moz-do-not-send=3D"true">fdo#109308</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@i915_pm_=
rpm@i2c.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@forcewake:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-kbl1/igt@i915_suspend@forcewake.html" moz-do-not-sen=
d=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/180" moz-do-not-send=3D"true">i915#180</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@i91=
5_suspend@forcewake.html" moz-do-not-send=3D"true">PASS</a> +1 similar issu=
e</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic@atomic_plane_damage:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-2/igt@kms_atomic@atomic_plane_damage.html" moz=
-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098" moz-do-not-send=3D"true">i915#4098</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6=
/igt@kms_atomic@atomic_plane_damage.html" moz-do-not-send=3D"true">PASS</a>=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl7/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html" m=
oz-do-not-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6371" moz-do-not-send=3D"true">i915#6371</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-=
skl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html" moz-do-not-send=3D"true"=
>PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-ren=
der-ytiled.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111314" moz-do-not-send=3D"true">fdo#111=
314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098" =
moz-do-not-send=3D"true">i915#4098</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4369" moz-do-not-send=3D"true">i915#4369</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/sh=
ard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html" moz-=
do-not-send=3D"true">PASS</a> +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@a-dp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"true">i915#79</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789=
v1/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html"=
 moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptib=
le@a-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2122" moz-do-not-send=3D"true">i915#2122=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06789v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1=
.html" moz-do-not-send=3D"true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb101010-d=
raw-render.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1849" moz-do-not-send=3D"true">i915#184=
9</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098" mo=
z-do-not-send=3D"true">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_frontbuffer_tra=
cking@psr-rgb101010-draw-render.html" moz-do-not-send=3D"true">PASS</a> +22=
 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl9/igt@kms_frontbuffer_tracking@psr-shrfb-scaledpr=
imary.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1982" moz-do-not-send=3D"true">i915#19=
82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106789v1/shard-skl6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.h=
tml" moz-do-not-send=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-position-covered@pipe-b-planes:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-b-=
planes.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3558" moz-do-not-send=3D"true">i915#3558</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1067=
89v1/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-b-planes.html" m=
oz-do-not-send=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha=
-min.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D108145" moz-do-not-send=3D"true">fdo#108145</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/265" moz-do-=
not-send=3D"true">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_106789v1/shard-skl1/igt@kms_plane_alpha_blend@pipe=
-a-constant-alpha-min.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-coverage-7e=
fc.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/1849" moz-do-not-send=3D"true">i915#1849</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3546" moz-do-not=
-send=3D"true">i915#3546</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4070" moz-do-not-send=3D"true">i915#4070</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/4098" moz-do-not-send=3D"true=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_106789v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-coverage-7e=
fc.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_multiple@atomic-pipe-a-tiling-y:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-=
y.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3558" moz-do-not-send=3D"true">i915#3558</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070" moz-do-not-=
send=3D"true">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pi=
pe-a-tiling-y.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@cursor_mmap_cpu:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@kms_psr@cursor_mmap_cpu.html" moz-do-not=
-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1072" moz-do-not-send=3D"true">i915#1072</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@km=
s_psr@cursor_mmap_cpu.html" moz-do-not-send=3D"true">PASS</a> +1 similar is=
sue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html" moz-d=
o-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-iclb2=
/igt@kms_psr@psr2_primary_mmap_cpu.html" moz-do-not-send=3D"true">PASS</a> =
+2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-f=
lip-pipe-b.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send=3D"true">i915#184=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070" mo=
z-do-not-send=3D"true">i915#4070</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4098" moz-do-not-send=3D"true">i915#4098</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shar=
d-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html" moz-do=
-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-b-wait-busy-hang:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@kms_vblank@pipe-b-wait-busy-hang.html" m=
oz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1845" moz-do-not-send=3D"true">i915#1845</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4098" moz-do-not-send=3D"t=
rue">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_106789v1/shard-rkl-6/igt@kms_vblank@pipe-b-wait-busy-hang.html=
" moz-do-not-send=3D"true">PASS</a> +26 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-count=
ers.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109289" moz-do-not-send=3D"true">fdo#109289</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10678=
9v1/shard-rkl-2/igt@perf@gen12-unprivileged-single-ctx-counters.html" moz-d=
o-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling-parameterized:</p>
          <ul>
            <li>
              <p>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-skl10/igt@perf@polling-parameterized.html" moz-do-n=
ot-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5639" moz-do-not-send=3D"true">i915#5639</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl7/igt@p=
erf@polling-parameterized.html" moz-do-not-send=3D"true">PASS</a></p>
            </li>
            <li>
              <p>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-tglb1/igt@perf@polling-parameterized.html" moz-do-=
not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5639" moz-do-not-send=3D"true">i915#5639</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-tglb5/igt=
@perf@polling-parameterized.html" moz-do-not-send=3D"true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling-small-buf:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-1/igt@perf@polling-small-buf.html" moz-do-not-=
send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1722" moz-do-not-send=3D"true">i915#1722</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-6/igt@per=
f@polling-small-buf.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@short-reads:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl6/igt@perf@short-reads.html" moz-do-not-send=3D"t=
rue">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
1" moz-do-not-send=3D"true">i915#51</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-skl10/igt@perf@short-reads=
.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@rc6-suspend:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-apl1/igt@perf_pmu@rc6-suspend.html" moz-do-not-send=
=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/180" moz-do-not-send=3D"true">i915#180</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-apl6/igt@perf=
_pmu@rc6-suspend.html" moz-do-not-send=3D"true">PASS</a> +1 similar issue</=
li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@coherency-gtt:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11946/shard-rkl-6/igt@prime_vgem@coherency-gtt.html" moz-do-no=
t-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109295" moz-do-not-send=3D"true">fdo#109295</a> / <a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D111656" moz-do-not-send=3D"true">=
fdo#111656</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3708" moz-do-not-send=3D"true">i915#3708</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-rkl-5/igt@prime_vgem=
@coherency-gtt.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel-ordering:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html"=
 moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6117" moz-do-not-send=3D"true">i915#6117</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-i=
clb5/igt@gem_exec_balancer@parallel-ordering.html" moz-do-not-send=3D"true"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
 moz-do-not-send=3D"true">i915#4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-down=
scaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11946/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32=
bpp-linear-downscaling@pipe-a-default-mode.html" moz-do-not-send=3D"true">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" =
moz-do-not-send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1888" moz-do-not-send=3D"true">i915#1888</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/s=
hard-skl6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downsca=
ling@pipe-a-default-mode.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=
=3D"true">fdo#109271</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:<=
/p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-=
exceed-fully-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915=
#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106789v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed=
-fully-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920=
</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:=
</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous=
-exceed-fully-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i9=
15#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_106789v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-ex=
ceed-fully-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#6=
58</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg=
-area.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111068" moz-do-not-send=3D"true">fdo#111068</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do=
-not-send=3D"true">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106789v1/shard-iclb2/igt@kms_psr2_sf@overlay-prim=
ary-update-sf-dmg-area.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"tr=
ue">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>shard-kbl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11946/shard-kbl1/igt@runner@aborted.html" moz-do-not-send=3D"tr=
ue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
946/shard-kbl6/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6=
/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl4/igt@runner@ab=
orted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@runner@aborted.html" mo=
z-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3002" moz-do-not-send=3D"tru=
e">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4312" moz-do-not-send=3D"true">i915#4312</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5257" moz-do-not-send=3D"true">i915#5257<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92" moz-do=
-not-send=3D"true">i915#92</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html" moz-=
do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html" moz-do-not-s=
end=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html" moz-do-not-send=3D"t=
rue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_106789v1/shard-kbl1/igt@runner@aborted.html" moz-do-not-send=3D"true">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789=
v1/shard-kbl7/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard=
-kbl6/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/=
igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl1/igt@runn=
er@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl4/igt@runner@abort=
ed.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106789v1/shard-kbl7/igt@runner@aborted.html"=
 moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=
=3D"true">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3002" moz-do-not-send=3D"true">i915#3002</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send=3D"true">i915=
#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257=
" moz-do-not-send=3D"true">i915#5257</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/92" moz-do-not-send=3D"true">i915#92</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11946 -&gt; Patchwork_106789v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_106789v1: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------xvkpfFKJKiMr6NfG0uh7bnva--
