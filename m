Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D8E78492F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 20:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06DD910E3D4;
	Tue, 22 Aug 2023 18:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A24C10E3CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 18:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692727397; x=1724263397;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=zeoH3a+7bFAr/g0z8MF9V/bRSCxTZ5/cBImMHuB2VBo=;
 b=kSdnlMtlz/1+KPEjJiESd8hYZgp92ZujnT2bUkVg4aOvzat8uWMij9Sd
 NW7SdD+qyeEE+JmcAqSBNXVJ4sNRmqj8XzRuRASXZyy9l5MA2yooAqMmU
 u1BfvlV6j3lYRM0kJF/SivIrTFwNdpwZqSKK0vZX6JhQClGy1RwP9p5ro
 c13cRxmGxp7Utw2mf/hG0hpQnOHgyNwWEDjSVI5U3YZ6VgpWYLjc2DLUp
 B/RuTvpwkeUS5z6dSy7jARB8D6BifEbHndBYGXazWu5Au//0kuWoALC5Y
 oiYN2FYqtOpXaaQ9E83tbYzimLNdb1rSgQo8BrwSxEiUHYnfvdMYmgTDQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="437889887"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; 
 d="scan'208,217";a="437889887"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 11:03:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="736322495"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; 
 d="scan'208,217";a="736322495"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 22 Aug 2023 11:03:16 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 11:03:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 11:03:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 22 Aug 2023 11:03:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 22 Aug 2023 11:03:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=irJTn69I3gHKJQXnRIJcoE5pDVW4DAfblH+TzFR410D5vxu9iXcaAV11xyF7IaLSggeKrGt/SOMcDzaC4Rjbr/5Na4I4XkJpFlcclfe9G9UG12VsLABUupEq2TSomU2H8moxeBeOBWzid8UADb7Cl19Sd9z0GKxLHsLtjys3+y/7S3qxfLlxR155RktbLmuRRc1Hwpu85zapGrBtULDnwFCX9vLsIiz1PhAstvE8nHu5TrBYDd/xLXCD1974F/ps3Pou2lNFS04rMjF7TuzfQEDKoNpKFxmn4aU/EwrAMzj/nwVCfxagQ3qFX29ppuTincnPOHZ/VzjqKREpdvCBXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wb3GmFjySd0eKOcKddgJaeOfAE5LmZZyU23z1355fNc=;
 b=iNvL8uoXsnXB8Gen4V+jnhDmSaddKxllaCDlq9F2csG8SroJp3YARCum3NTuuvWIi6SOFnASYludop4j9XnSF2u0kat9RsczOZonvt6SZKpcqG+Doxun6nTrz187/iCn2cFSFIiTu7XhFPkOqJ/pz4bzji5Y/9Gq9gWJiX3GcBkaPtumbInpqQ5fq9pombQFO93Ur1SA6FkenM/CdqVxAExE6x5PRoEmXsOEzmWgc9QybpB4ZOOh6yxr0wrnq4ym0lB8QQCAChZhqg17oaCxW/Q1I4mtmOY9sEYrD4HtLSrrOIYQu70ZkaUxcrIKT41ZcARykBseyJCs2ccJcphNVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA0PR11MB4527.namprd11.prod.outlook.com (2603:10b6:806:72::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 18:02:45 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::6bdd:6fe1:4045:c26f]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::6bdd:6fe1:4045:c26f%6]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 18:02:45 +0000
Content-Type: multipart/alternative;
 boundary="------------uM7hvfxYCbMuDruf5xpaBtkd"
Message-ID: <79fda40c-4434-ed09-532b-d8f6b307ac4c@intel.com>
Date: Tue, 22 Aug 2023 11:02:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20230816003957.3572654-1-John.C.Harrison@Intel.com>
 <169216789721.10285.7088494843662517420@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <169216789721.10285.7088494843662517420@emeril.freedesktop.org>
X-ClientProxiedBy: MW4PR03CA0142.namprd03.prod.outlook.com
 (2603:10b6:303:8c::27) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA0PR11MB4527:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c2204bb-e155-4882-e179-08dba339fc6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wwAlixb2+OxCx7sWyvm0js3RTHU00fG2u0nch6q2JXKdsI4wcV5687yzOyP1PKQBosN8Vnw4yhni4YKoDlxWDO6i89aGYbYymebFPM5Cv5GpoLIjqXlMR26NRp/xglQy5Td7L+4QQbmC1kCEZQk6SUwO60BrKqvYrX38L2+37+Pukj0uPBGnNw+kpI+lehSzGKbemxjUbNTFxj4a12qaQg171u0SxhzcqQtm61HvWhuvEkRSEruOvMWLMpZnU8J9NW6JPJibzP4P8ZIHXUA6bImwZ+Vyo9cwvPV6Q4xhjNxvSzoK8TrKgPkwakNA9247hcKe9nGCaVevg6aIFBoS1qkhDiQ5wuhn8PD41VTa+FOjhrhFBCh7SvNvgePYtt5c287J/AnKJql8mSx9TVwZOgQI1H1kBN6gXA8/Hdftoglast/pkmLksLpLYbM38qXmZ47ipxFY20j4vWUcgOicYuLq2b4sMqCIMQLIwi+lA1sanW31E+jkPsFnLI6e6+km6HAlXPXyTtk9QdbQUhqebgXbAFNTRrNoOYJS9tmGMHlRDWigjA/qcBR1r8focXYbpdtNLF6DUo/8W0FjboQR4jyp6zMvpRSq9fVbzcRKTAuXxtGqqTE4nK4DQj3pMzoAQTngCfkjHJv+B8arHngUeM9J51kN11QMEWMNtGsIwNQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(6916009)(6512007)(66476007)(66946007)(316002)(66556008)(82960400001)(8936002)(2616005)(41300700001)(36756003)(478600001)(966005)(6666004)(38100700002)(6506007)(166002)(53546011)(40265005)(6486002)(30864003)(83380400001)(2906002)(31686004)(86362001)(33964004)(31696002)(21615005)(5660300002)(26005)(45980500001)(43740500002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFBCNnZEdUxwWjdGUE5CNjNHcHJnWGo3NHZXNkdGTk53bVI1bkROUnV4OXQr?=
 =?utf-8?B?Mk5xS2YyUkFIa0Q3aGpwc2I0S2owUUFETXBMY3dZNU9sRmZ2QWtvN2M5cnlv?=
 =?utf-8?B?UXFFdE5ZV1J4SkRacURRdEJKNEFNU0lTWEpWWFJNeWplV0pXK1RvOGNjWVVM?=
 =?utf-8?B?djJ0UmJmaG9PY1Awd1VOQlppMnh3Z2U2TGlpcE1hdzVqcER2QjZEY0ZlYjdY?=
 =?utf-8?B?UEd0ZUprYzRBdmloMkliOXpJbW8zcTVvMS83U2V1VkJKNE9YTlV1OUcyeS9u?=
 =?utf-8?B?YzRFR2t0SzZOeXZ2QVQ2LzNSczE0ZjJvTTJlTU1NbURUZFh6UklIVURTTFhi?=
 =?utf-8?B?WTJ5VGo5UDlQdnE5SWpwMmJCclFWa1lMcktKYmo4d2c1Vkx4T1RNd3ZGNWwv?=
 =?utf-8?B?OXhtUE1EVUVMVGN5bHY0UGtLc05pSjZqcXRMTGZhbWQ2elpHVHhNdXhOQWx6?=
 =?utf-8?B?STA3WmJQdDFXdGNtMHhBTVZNZ3pYc3orN0NXejd6cm1zRzFaODB2c09tYzNn?=
 =?utf-8?B?Vnh5aDlQM3J3RnUvSlg1WU03OGhmdG5lZHFKeVRnU2V4YklFZ2hSdU1Ndkk2?=
 =?utf-8?B?MWwxdFc5NVdJMjVDeDN4Wk9EQVcxNWhRZG5FNVZ3NnFwU2gvYVl5Y3dYTWJU?=
 =?utf-8?B?V2h3R0YrS2wyak5tL2lvRWRBa2tPWDRtRGlSRjQzUis5K2VvL0hGbFhseFpw?=
 =?utf-8?B?REUzTFVyQXlTUGJZQTkxbndUUEZESURUWnc1LytyeEtHRWw0WUdZaTNrRXRh?=
 =?utf-8?B?aXAxU2kxdHNFbWJuOElha1IwSS9RSHMrUVVKMVpXNllKMkRMK25HOFQ0K0N0?=
 =?utf-8?B?K2JLaFI0RWpZcW10eUk2YkRSUWl1L2FoNWhXYTdreUoxRXo4TVhudnhOWEc5?=
 =?utf-8?B?M2ZYSkJnY3hSSHBLNWlsV29IZlN0NEIzTEsvUVBnUXQ5WkJTc1JuQWZVVlVB?=
 =?utf-8?B?NUlYcjV3cjRIaExpTTlVYnhWWEVIb1A3Y2JiSDcyeFVSdmh5NThMaXlKem9R?=
 =?utf-8?B?WTk2VE5nUVh6TFM5MkpLbFpkVUltSmZZc05OKzVGdDZ2amh3MFBYandvWFIr?=
 =?utf-8?B?Zm5YT3EzYzZRWTBsKzJCN3c0T05YbE92c29raE9lTmtiOWgwSWhhc2Q3OUhY?=
 =?utf-8?B?T2VwTXVtL3J2L1M0UXFlREN3c1BRS0FIL2Q4UmtmeGpSMHVyb3Nmd0N4YXk4?=
 =?utf-8?B?dXZ3SjhOa2IzbGhoZ0kvNllzcEJoUXVwdC9iQnhDaU5uNWMwdzRCVVgwMkx4?=
 =?utf-8?B?UnZTVlVEQTRkNUhzck1LTlJsMW1IK3JjdG5hcEdrVUtjRGtrL2IyQ2hIVm9a?=
 =?utf-8?B?OXdtcnFZTmNxRHJRL0NwYUdnQmMwcko4Tjd6Sk1qbXZzMEsrNnFNeGtZMWxp?=
 =?utf-8?B?NncreWVzZXBSVzMwS245QzZGWWpjWUVVOGVnVjJhWWJnOUt6VVNrSG5wcDhO?=
 =?utf-8?B?OGJDTnpKb1dtSGFrZ1NnRzhpNFNxd28rZkFqYjhlcjJjbi9RbGxQdUEyM3dJ?=
 =?utf-8?B?c0xZa1h6UXhXYzJKTGlhUnR4L2dIYTZvdDZTbXBOWDhDc1RqcDZhMGlwZHd4?=
 =?utf-8?B?UVljYWJpQ1BhN1JNamlYaWRnZWV6clVaWmJSYkRxeWNXSWxyNFJRR1M1NVJ1?=
 =?utf-8?B?TXlaUk0vZlBxQkxqYy9jZGVXdjFOVFB3KzgwOUpwT3NRNUNTYjhxRForSGJ5?=
 =?utf-8?B?VWk0NkZ6bW5yd0tCaCtRa0RoSEo1YkFNM2RVaW1xaDlBL0RYaFFQZ0Vjb1BP?=
 =?utf-8?B?VVlYTHZIUGlReVozajg4dUJVUGo2cmVuNHpzOG9nYlJ5NnBrV0Q2U1hLRHZz?=
 =?utf-8?B?MWRRdEpNNm1VQ2xxN1JJdzBndjhVNU5qVnZtSmNFbjVSWE5WQnhlMGYrVDdo?=
 =?utf-8?B?ZzFTcHJBL3l3Zi83WEgyTDV4MzBaMEl4ZHU1M1VSTHMrWGQwdnZGWHN3V1dT?=
 =?utf-8?B?SzBETWM2WGl1ZEwzSFVmY3BEVmlrVG9rUGRnRldpcEZ4cFdlSlBFYkVxWXhh?=
 =?utf-8?B?alR6aCtHRmlTM3ZLVk8wYmFscEhSaTFxZS9TRzBUMWc4OGZaVjZXV2FOUjRy?=
 =?utf-8?B?dVpaelpDL0Y0NFV4VWZycjdzYWF2dHJKOU9LVGkwdklCQktheDdNM3lVdklQ?=
 =?utf-8?B?b2hjTGZvRzZ6WVRCeVBhc01YRmxQQlRxbE9JQmJlOXlsWVc2UUF1eXF0UHRN?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c2204bb-e155-4882-e179-08dba339fc6d
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 18:02:44.9181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1uia69XQUgKueTHsZCaF19Y6NvvG5vkpdeS8CZUIUHm+fxWQziDqyRziAYNxsbqw9KGdSf/anQiHMfLZ3uvpz8uUYksk9D0zeADyTQQroCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4527
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Force_a_reset_on_internal_GuC_error_=28rev2=29?=
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

--------------uM7hvfxYCbMuDruf5xpaBtkd
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 8/15/2023 23:38, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/guc: Force a reset on internal GuC error (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/118890/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13524_full -> Patchwork_118890v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_118890v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_118890v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (9 -> 9)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_118890v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-glk8/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-glk7/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html>
>
TLB invalidation timeout on a non-GuC platform. Not related to a patch 
about handling internal GuC errors.

John.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_118890v2_full that come from 
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
>     igt@drm_fdinfo@busy-hang@bcs0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@drm_fdinfo@busy-hang@bcs0.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/intel/issues/8414>) +20
>         similar issues
>  *
>
>     igt@drm_fdinfo@most-busy-check-all@rcs0:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html>
>         (i915#7742
>         <https://gitlab.freedesktop.org/drm/intel/issues/7742>) +1
>         similar issue
>  *
>
>     igt@feature_discovery@chamelium:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@feature_discovery@chamelium.html>
>         (i915#4854 <https://gitlab.freedesktop.org/drm/intel/issues/4854>)
>  *
>
>     igt@gem_close_race@multigpu-basic-threads:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_close_race@multigpu-basic-threads.html>
>         (i915#7697 <https://gitlab.freedesktop.org/drm/intel/issues/7697>)
>  *
>
>     igt@gem_ctx_persistence@heartbeat-hang:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html>
>         (i915#8555
>         <https://gitlab.freedesktop.org/drm/intel/issues/8555>) +1
>         similar issue
>  *
>
>     igt@gem_ctx_persistence@hostile:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-snb4/igt@gem_ctx_persistence@hostile.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1099
>         <https://gitlab.freedesktop.org/drm/intel/issues/1099>) +1
>         similar issue
>  *
>
>     igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html>
>         (i915#5882
>         <https://gitlab.freedesktop.org/drm/intel/issues/5882>) +9
>         similar issues
>  *
>
>     igt@gem_exec_balancer@bonded-pair:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_exec_balancer@bonded-pair.html>
>         (i915#4771 <https://gitlab.freedesktop.org/drm/intel/issues/4771>)
>  *
>
>     igt@gem_exec_capture@pi@vcs0:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-5/igt@gem_exec_capture@pi@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-7/igt@gem_exec_capture@pi@vcs0.html>
>         (i915#4475 <https://gitlab.freedesktop.org/drm/intel/issues/4475>)
>  *
>
>     igt@gem_exec_endless@dispatch@rcs0:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg2-12/igt@gem_exec_endless@dispatch@rcs0.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-12/igt@gem_exec_endless@dispatch@rcs0.html>
>         (i915#3778
>         <https://gitlab.freedesktop.org/drm/intel/issues/3778> /
>         i915#7016
>         <https://gitlab.freedesktop.org/drm/intel/issues/7016> /
>         i915#7921 <https://gitlab.freedesktop.org/drm/intel/issues/7921>)
>  *
>
>     igt@gem_exec_fair@basic-flow@rcs0:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-tglu-8/igt@gem_exec_fair@basic-flow@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-tglu-5/igt@gem_exec_fair@basic-flow@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>  *
>
>     igt@gem_exec_flush@basic-batch-kernel-default-uc:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html>
>         (i915#8962
>         <https://gitlab.freedesktop.org/drm/intel/issues/8962> /
>         i915#9121 <https://gitlab.freedesktop.org/drm/intel/issues/9121>)
>  *
>
>     igt@gem_exec_flush@basic-wb-rw-before-default:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-2/igt@gem_exec_flush@basic-wb-rw-before-default.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-4/igt@gem_exec_flush@basic-wb-rw-before-default.html>
>         (i915#9121 <https://gitlab.freedesktop.org/drm/intel/issues/9121>)
>  *
>
>     igt@gem_exec_flush@basic-wb-rw-default:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-rw-default.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/intel/issues/3539> /
>         i915#4852
>         <https://gitlab.freedesktop.org/drm/intel/issues/4852>) +4
>         similar issues
>  *
>
>     igt@gem_exec_params@secure-non-master:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_exec_params@secure-non-master.html>
>         (fdo#112283 <https://bugs.freedesktop.org/show_bug.cgi?id=112283>)
>  *
>
>     igt@gem_exec_reloc@basic-write-read-active:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@gem_exec_reloc@basic-write-read-active.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +6
>         similar issues
>  *
>
>     igt@gem_exec_schedule@preempt-queue-contexts-chain:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html>
>         (i915#4537
>         <https://gitlab.freedesktop.org/drm/intel/issues/4537> /
>         i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>  *
>
>     igt@gem_fence_thrash@bo-write-verify-x:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_fence_thrash@bo-write-verify-x.html>
>         (i915#4860 <https://gitlab.freedesktop.org/drm/intel/issues/4860>)
>  *
>
>     igt@gem_lmem_swapping@parallel-multi:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-glk1/igt@gem_lmem_swapping@parallel-multi.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@smem-oom@lmem0:
>
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         (i915#5493 <https://gitlab.freedesktop.org/drm/intel/issues/5493>)
>  *
>
>     igt@gem_mmap_gtt@cpuset-big-copy:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +6
>         similar issues
>  *
>
>     igt@gem_mmap_gtt@medium-copy:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-1/igt@gem_mmap_gtt@medium-copy.html>
>         (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>)
>  *
>
>     igt@gem_mmap_wc@write-read-distinct:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@gem_mmap_wc@write-read-distinct.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/intel/issues/4083>) +1
>         similar issue
>  *
>
>     igt@gem_pread@snoop:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@gem_pread@snoop.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +4
>         similar issues
>  *
>
>     igt@gem_pxp@reject-modify-context-protection-off-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@gem_pxp@reject-modify-context-protection-off-1.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +2
>         similar issues
>  *
>
>     igt@gem_unfence_active_buffers:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@gem_unfence_active_buffers.html>
>         (i915#4879 <https://gitlab.freedesktop.org/drm/intel/issues/4879>)
>  *
>
>     igt@gem_userptr_blits@coherency-sync:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_userptr_blits@coherency-sync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +2
>         similar issues
>  *
>
>     igt@gen3_mixed_blits:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@gen3_mixed_blits.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +3
>         similar issues
>  *
>
>     igt@gen9_exec_parse@shadow-peek:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +3
>         similar issues
>  *
>
>     igt@i915_fb_tiling:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@i915_fb_tiling.html>
>         (i915#4881 <https://gitlab.freedesktop.org/drm/intel/issues/4881>)
>  *
>
>     igt@i915_pm_backlight@fade:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@i915_pm_backlight@fade.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354> /
>         i915#7561
>         <https://gitlab.freedesktop.org/drm/intel/issues/7561>) +1
>         similar issue
>  *
>
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>         (i915#1937 <https://gitlab.freedesktop.org/drm/intel/issues/1937>)
>  *
>
>     igt@i915_pm_lpsp@screens-disabled:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@i915_pm_lpsp@screens-disabled.html>
>         (i915#1902 <https://gitlab.freedesktop.org/drm/intel/issues/1902>)
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>         (i915#3591
>         <https://gitlab.freedesktop.org/drm/intel/issues/3591>) +1
>         similar issue
>  *
>
>     igt@i915_pm_rpm@dpms-non-lpsp:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) +1
>         similar issue
>  *
>
>     igt@i915_pm_rps@min-max-config-loaded:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>  *
>
>     igt@i915_pm_rps@thresholds-idle@gt0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@i915_pm_rps@thresholds-idle@gt0.html>
>         (i915#8925 <https://gitlab.freedesktop.org/drm/intel/issues/8925>)
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@i915_pm_sseu@full-enable.html>
>         (i915#4387 <https://gitlab.freedesktop.org/drm/intel/issues/4387>)
>  *
>
>     igt@i915_query@query-topology-coherent-slice-mask:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@i915_query@query-topology-coherent-slice-mask.html>
>         (i915#6188 <https://gitlab.freedesktop.org/drm/intel/issues/6188>)
>  *
>
>     igt@i915_suspend@basic-s2idle-without-i915:
>
>       o shard-snb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-snb4/igt@i915_suspend@basic-s2idle-without-i915.html>
>         (i915#8841
>         <https://gitlab.freedesktop.org/drm/intel/issues/8841>) +1
>         similar issue
>  *
>
>     igt@kms_addfb_basic@clobberred-modifier:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_addfb_basic@clobberred-modifier.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +2
>         similar issues
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1:
>
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-1/igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1.html>
>         (i915#2521 <https://gitlab.freedesktop.org/drm/intel/issues/2521>)
>  *
>
>     igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp-4-4-mc_ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp-4-4-mc_ccs.html>
>         (i915#8709
>         <https://gitlab.freedesktop.org/drm/intel/issues/8709>) +11
>         similar issues
>  *
>
>     igt@kms_async_flips@crc@pipe-b-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html>
>         (i915#8247
>         <https://gitlab.freedesktop.org/drm/intel/issues/8247>) +3
>         similar issues
>  *
>
>     igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html>
>         (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>  *
>
>     igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html>
>         (fdo#111614
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +3
>         similar issues
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>  *
>
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/intel/issues/4538> /
>         i915#5190
>         <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +5
>         similar issues
>  *
>
>     igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +10
>         similar issues
>  *
>
>     igt@kms_big_joiner@2x-modeset:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_big_joiner@2x-modeset.html>
>         (i915#2705 <https://gitlab.freedesktop.org/drm/intel/issues/2705>)
>  *
>
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_cc.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +43
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-glk1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>  *
>
>     igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +9
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +19
>         similar issues
>  *
>
>     igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1.html>
>         (i915#4087
>         <https://gitlab.freedesktop.org/drm/intel/issues/4087> /
>         i915#7213
>         <https://gitlab.freedesktop.org/drm/intel/issues/7213>) +2
>         similar issues
>  *
>
>     igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html>
>         (i915#7213 <https://gitlab.freedesktop.org/drm/intel/issues/7213>)
>  *
>
>     igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html>
>         (i915#4087
>         <https://gitlab.freedesktop.org/drm/intel/issues/4087>) +3
>         similar issues
>  *
>
>     igt@kms_chamelium_color@degamma:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_chamelium_color@degamma.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>  *
>
>     igt@kms_chamelium_frames@hdmi-crc-fast:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_chamelium_frames@hdmi-crc-fast.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +5
>         similar issues
>  *
>
>     igt@kms_color@deep-color:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-1/igt@kms_color@deep-color.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_content_protection@atomic-dpms:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_content_protection@atomic-dpms.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/intel/issues/7118>) +2
>         similar issues
>  *
>
>     igt@kms_content_protection@srm@pipe-a-dp-4:
>
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html>
>         (i915#7173 <https://gitlab.freedesktop.org/drm/intel/issues/7173>)
>  *
>
>     igt@kms_cursor_crc@cursor-random-512x170:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +2
>         similar issues
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-64x64@pipe-a-edp-1:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-64x64@pipe-a-edp-1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-sliding-64x64@pipe-a-edp-1.html>
>         (i915#2017 <https://gitlab.freedesktop.org/drm/intel/issues/2017>)
>  *
>
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +3
>         similar issues
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +5
>         similar issues
>  *
>
>     igt@kms_flip@2x-plain-flip-fb-recreate:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_flip@2x-plain-flip-fb-recreate.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +3
>         similar issues
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@flip-vs-fences:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_flip@flip-vs-fences.html>
>         (i915#8381 <https://gitlab.freedesktop.org/drm/intel/issues/8381>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +3
>         similar issues
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html>
>         (i915#6880 <https://gitlab.freedesktop.org/drm/intel/issues/6880>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +13
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/intel/issues/3458>) +21
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html>
>         (i915#5460 <https://gitlab.freedesktop.org/drm/intel/issues/5460>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +1
>         similar issue
>  *
>
>     igt@kms_hdr@invalid-hdr:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-2/igt@kms_hdr@invalid-hdr.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
>  *
>
>     igt@kms_hdr@invalid-metadata-sizes:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#8228
>         <https://gitlab.freedesktop.org/drm/intel/issues/8228>) +1
>         similar issue
>  *
>
>     igt@kms_panel_fitting@legacy:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_panel_fitting@legacy.html>
>         (i915#6301 <https://gitlab.freedesktop.org/drm/intel/issues/6301>)
>  *
>
>     igt@kms_plane_lowres@tiling-y:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_plane_lowres@tiling-y.html>
>         (i915#8821 <https://gitlab.freedesktop.org/drm/intel/issues/8821>)
>  *
>
>     igt@kms_plane_lowres@tiling-yf:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_plane_lowres@tiling-yf.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#8821 <https://gitlab.freedesktop.org/drm/intel/issues/8821>)
>  *
>
>     igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html>
>         (i915#8292 <https://gitlab.freedesktop.org/drm/intel/issues/8292>)
>  *
>
>     igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +7
>         similar issues
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-snb4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +186
>         similar issues
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +7
>         similar issues
>  *
>
>     igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +1
>         similar issue
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +15
>         similar issues
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +7
>         similar issues
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +3
>         similar issues
>  *
>
>     igt@kms_psr@dpms:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-glk1/igt@kms_psr@dpms.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +39
>         similar issues
>  *
>
>     igt@kms_psr@psr2_cursor_mmap_gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_psr@psr2_cursor_mmap_gtt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +6
>         similar issues
>  *
>
>     igt@kms_rotation_crc@primary-rotation-270:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_rotation_crc@primary-rotation-270.html>
>         (i915#4235
>         <https://gitlab.freedesktop.org/drm/intel/issues/4235>) +1
>         similar issue
>  *
>
>     igt@kms_selftest@drm_plane:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_selftest@drm_plane.html>
>         (i915#8661
>         <https://gitlab.freedesktop.org/drm/intel/issues/8661>) +1
>         similar issue
>  *
>
>     igt@kms_selftest@framebuffer:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@kms_selftest@framebuffer.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#8661 <https://gitlab.freedesktop.org/drm/intel/issues/8661>)
>  *
>
>     igt@kms_vrr@flip-suspend:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-1/igt@kms_vrr@flip-suspend.html>
>         (i915#8808 <https://gitlab.freedesktop.org/drm/intel/issues/8808>)
>  *
>
>     igt@kms_writeback@writeback-invalid-parameters:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@kms_writeback@writeback-invalid-parameters.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>  *
>
>     igt@perf@global-sseu-config-invalid:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@perf@global-sseu-config-invalid.html>
>         (i915#7387
>         <https://gitlab.freedesktop.org/drm/intel/issues/7387>) +1
>         similar issue
>  *
>
>     igt@perf_pmu@cpu-hotplug:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@perf_pmu@cpu-hotplug.html>
>         (i915#8850 <https://gitlab.freedesktop.org/drm/intel/issues/8850>)
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@prime_vgem@basic-fence-flip.html>
>         (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>  *
>
>     igt@prime_vgem@basic-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@prime_vgem@basic-gtt.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>)
>  *
>
>     igt@v3d/v3d_submit_cl@valid-multisync-submission:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@v3d/v3d_submit_cl@valid-multisync-submission.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +10
>         similar issues
>  *
>
>     igt@v3d/v3d_submit_csd@multi-and-single-sync:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@v3d/v3d_submit_csd@multi-and-single-sync.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +43
>         similar issues
>  *
>
>     igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +8
>         similar issues
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>  *
>
>     igt@gem_exec_schedule@noreorder-corked@vcs0:
>
>       o shard-mtlp: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@vcs0.html>
>         (i915#9121
>         <https://gitlab.freedesktop.org/drm/intel/issues/9121>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corked@vcs0.html>
>  *
>
>     igt@gem_lmem_swapping@smem-oom@lmem0:
>
>       o shard-dg2: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         (i915#4936
>         <https://gitlab.freedesktop.org/drm/intel/issues/4936> /
>         i915#5493
>         <https://gitlab.freedesktop.org/drm/intel/issues/5493>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-12/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-glk6/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-glk1/igt@gen9_exec_parse@allowed-single.html>
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-dg2: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#7061
>         <https://gitlab.freedesktop.org/drm/intel/issues/7061> /
>         i915#8617
>         <https://gitlab.freedesktop.org/drm/intel/issues/8617>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html>
>  *
>
>     igt@i915_pipe_stress@stress-xrgb8888-untiled:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html>
>         (i915#8691
>         <https://gitlab.freedesktop.org/drm/intel/issues/8691>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html>
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#3591
>         <https://gitlab.freedesktop.org/drm/intel/issues/3591>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         +1 similar issue
>  *
>
>     igt@i915_pm_rpm@dpms-lpsp:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html>
>         +2 similar issues
>  *
>
>     igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-15/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html>
>  *
>
>     igt@i915_pm_rpm@modeset-lpsp-stress:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg2-6/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#4817
>         <https://gitlab.freedesktop.org/drm/intel/issues/4817>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@i915_suspend@basic-s3-without-i915.html>
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         (i915#3743
>         <https://gitlab.freedesktop.org/drm/intel/issues/3743>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-256x85@pipe-d-edp-1:
>
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-d-edp-1.html>
>         (i915#8561
>         <https://gitlab.freedesktop.org/drm/intel/issues/8561>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-d-edp-1.html>
>  *
>
>     igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html>
>         (i915#8248
>         <https://gitlab.freedesktop.org/drm/intel/issues/8248>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-rte:
>
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-rte.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-rte.html>
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
>
>       o shard-apl: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html>
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html>
>  *
>
>     igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg2-1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html>
>         (i915#7838
>         <https://gitlab.freedesktop.org/drm/intel/issues/7838>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html>
>
>
>         Warnings
>
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html>
>         (i915#2681
>         <https://gitlab.freedesktop.org/drm/intel/issues/2681> /
>         i915#3591
>         <https://gitlab.freedesktop.org/drm/intel/issues/3591>) ->
>         WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html>
>         (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681>)
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>
>       o shard-tglu: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html>
>         (i915#2681
>         <https://gitlab.freedesktop.org/drm/intel/issues/2681>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html>
>         (i915#2681
>         <https://gitlab.freedesktop.org/drm/intel/issues/2681> /
>         i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>)
>  *
>
>     igt@kms_big_fb@linear-16bpp-rotate-0:
>
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-2/igt@kms_big_fb@linear-16bpp-rotate-0.html>
>         (i915#2017
>         <https://gitlab.freedesktop.org/drm/intel/issues/2017>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-4/igt@kms_big_fb@linear-16bpp-rotate-0.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982> /
>         i915#2017 <https://gitlab.freedesktop.org/drm/intel/issues/2017>)
>  *
>
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg1-16/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354> /
>         i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-15/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#4423
>         <https://gitlab.freedesktop.org/drm/intel/issues/4423> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>  *
>
>     igt@kms_content_protection@content_type_change:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg2-2/igt@kms_content_protection@content_type_change.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/intel/issues/7118>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-12/igt@kms_content_protection@content_type_change.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/intel/issues/7118> /
>         i915#7162 <https://gitlab.freedesktop.org/drm/intel/issues/7162>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-mtlp: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2017
>         <https://gitlab.freedesktop.org/drm/intel/issues/2017> /
>         i915#5954
>         <https://gitlab.freedesktop.org/drm/intel/issues/5954>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_fbcon_fbt@psr-suspend:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html>
>         (fdo#110189
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110189> /
>         i915#3955
>         <https://gitlab.freedesktop.org/drm/intel/issues/3955>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#3955
>         <https://gitlab.freedesktop.org/drm/intel/issues/3955>) +1
>         similar issue
>  *
>
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4816
>         <https://gitlab.freedesktop.org/drm/intel/issues/4816>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4816 <https://gitlab.freedesktop.org/drm/intel/issues/4816>)
>  *
>
>     igt@kms_psr@cursor_plane_move:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg1-17/igt@kms_psr@cursor_plane_move.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-18/igt@kms_psr@cursor_plane_move.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072> /
>         i915#4078 <https://gitlab.freedesktop.org/drm/intel/issues/4078>)
>  *
>
>     igt@kms_psr@primary_mmap_gtt:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg1-16/igt@kms_psr@primary_mmap_gtt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072> /
>         i915#4078
>         <https://gitlab.freedesktop.org/drm/intel/issues/4078>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-15/igt@kms_psr@primary_mmap_gtt.html>
>         (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>)
>  *
>
>     igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html>
>         (i915#5493
>         <https://gitlab.freedesktop.org/drm/intel/issues/5493>) ->
>         CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html>
>         (i915#7331 <https://gitlab.freedesktop.org/drm/intel/issues/7331>)
>
>
>     Build changes
>
>   * Linux: CI_DRM_13524 -> Patchwork_118890v2
>
> CI-20190529: 20190529
> CI_DRM_13524: f69ef04cfdd4b810e790bef365001e58e2d1037f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_118890v2: f69ef04cfdd4b810e790bef365001e58e2d1037f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------uM7hvfxYCbMuDruf5xpaBtkd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 8/15/2023 23:38, Patchwork wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:169216789721.10285.70884948436625=
17420@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/guc: Force a reset on internal GuC error (rev2)</t=
d>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/118890/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/118890/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_118890v2/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13524_full -&gt;
        Patchwork_118890v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_118890v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_118890v2_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (9 -&gt; 9)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_118890v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled:
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-glk8/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytile=
d.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-glk7/igt@kms_draw_crc@dra=
w-method-blt@xrgb8888-ytiled.html" moz-do-not-send=3D"true">DMESG-WARN</a><=
/li>
          </ul>
        </li>
      </ul>
    </blockquote>
    TLB invalidation timeout on a non-GuC platform. Not related to a
    patch about handling internal GuC errors.<br>
    <br>
    John.<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:169216789721.10285.70884948436625=
17420@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_118890v2_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@drm_fdinfo@busy-hang@bcs0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@drm_fdinfo@busy-hang@bc=
s0.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8414" moz-do-not-send=3D"true">i915#8414</a>) +=
20 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html" =
moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-rkl-2/igt@drm_fdinfo@most-busy-ch=
eck-all@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/7742" moz-do-not-send=3D"true">i915#7=
742</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@feature_discovery@chamelium:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@feature_discovery@chame=
lium.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4854" moz-do-not-send=3D"true">i915#4854</a>)=
</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_close_race@multigpu-basic-threads:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_close_race@multigpu=
-basic-threads.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7697" moz-do-not-send=3D"true">i915=
#7697</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@heartbeat-hang:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_ctx_persistence@hea=
rtbeat-hang.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/8555" moz-do-not-send=3D"true">i915#85=
55</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@hostile:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-snb4/igt@gem_ctx_persistence@host=
ile.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1099" moz-do-=
not-send=3D"true">i915#1099</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_ctx_persistence@sat=
urated-hostile-nopreempt@ccs0.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5882" moz-do-not-sen=
d=3D"true">i915#5882</a>) +9 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@bonded-pair:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_exec_balancer@bonde=
d-pair.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4771" moz-do-not-send=3D"true">i915#4771</a=
>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_capture@pi@vcs0:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-5/igt@gem_exec_capture@pi@vcs0.html" moz-do-no=
t-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_118890v2/shard-mtlp-7/igt@gem_exec_capture@pi@vcs0.html" =
moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4475" moz-do-not-send=3D"true">i915#4475</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_endless@dispatch@rcs0:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg2-12/igt@gem_exec_endless@dispatch@rcs0.html" moz-=
do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_118890v2/shard-dg2-12/igt@gem_exec_endless@dispatch@=
rcs0.html" moz-do-not-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3778" moz-do-not-send=3D"true">i915#3778</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7016" moz-d=
o-not-send=3D"true">i915#7016</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7921" moz-do-not-send=3D"true">i915#7921</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-flow@rcs0:</p>
          <ul>
            <li>shard-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-tglu-8/igt@gem_exec_fair@basic-flow@rcs0.html" moz-=
do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_118890v2/shard-tglu-5/igt@gem_exec_fair@basic-flow@r=
cs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>)<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html" =
moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-rkl-1/igt@gem_exec_fair@basic-pac=
e-share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2=
842</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-2/igt@gem_exec_flush@basic-batch-kernel-defaul=
t-uc.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-4/igt@gem_exec_fl=
ush@basic-batch-kernel-default-uc.html" moz-do-not-send=3D"true">DMESG-FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8962" moz-=
do-not-send=3D"true">i915#8962</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9121" moz-do-not-send=3D"true">i915#9121</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-2/igt@gem_exec_flush@basic-wb-rw-before-defaul=
t.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-4/igt@gem_exec_flush=
@basic-wb-rw-before-default.html" moz-do-not-send=3D"true">DMESG-FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9121" moz-do-not=
-send=3D"true">i915#9121</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-wb-rw-default:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_exec_flush@basic-wb=
-rw-default.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3539" moz-do-not-send=3D"true">i915#35=
39</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4852" m=
oz-do-not-send=3D"true">i915#4852</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_params@secure-non-master:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_exec_params@secure-=
non-master.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D112283" moz-do-not-send=3D"true">fdo#112=
283</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-write-read-active:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@gem_exec_reloc@basic-wr=
ite-read-active.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3281" moz-do-not-send=3D"true">i91=
5#3281</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_exec_schedule@preem=
pt-queue-contexts-chain.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4537" moz-do-not-send=3D"t=
rue">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4812" moz-do-not-send=3D"true">i915#4812</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_fence_thrash@bo-write-verify-x:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_fence_thrash@bo-wri=
te-verify-x.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/4860" moz-do-not-send=3D"true">i915#48=
60</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-multi:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-glk1/igt@gem_lmem_swapping@parall=
el-multi.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#10927=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613" mo=
z-do-not-send=3D"true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html" mo=
z-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_118890v2/shard-dg1-19/igt@gem_lmem_swapping@smem-o=
om@lmem0.html" moz-do-not-send=3D"true">TIMEOUT</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5493" moz-do-not-send=3D"true">i915#54=
93</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big=
-copy.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4077" moz-do-not-send=3D"true">i915#4077</a>=
) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@medium-copy:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-1/igt@gem_mmap_gtt@medium-c=
opy.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4077" moz-do-not-send=3D"true">i915#4077</a>)<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@write-read-distinct:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@gem_mmap_wc@write-read=
-distinct.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4083" moz-do-not-send=3D"true">i915#4083=
</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pread@snoop:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@gem_pread@snoop.html" m=
oz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3282" moz-do-not-send=3D"true">i915#3282</a>) +4 similar =
issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@gem_pxp@reject-modify-=
context-protection-off-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4270" moz-do-not-send=
=3D"true">i915#4270</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_unfence_active_buffers:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@gem_unfence_active_buf=
fers.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4879" moz-do-not-send=3D"true">i915#4879</a>)=
</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@coherency-sync:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@gem_userptr_blits@coher=
ency-sync.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3297" moz-do-not-send=3D"true">i915#3297=
</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen3_mixed_blits:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@gen3_mixed_blits.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109289" moz-do-not-send=3D"true">fdo#109289</a>) +3 simi=
lar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@shadow-peek:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@gen9_exec_parse@shadow=
-peek.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2856" moz-do-not-send=3D"true">i915#2856</a>=
) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_fb_tiling:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@i915_fb_tiling.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4881" moz-do-not-send=3D"true">i915#4881</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_backlight@fade:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@i915_pm_backlight@fade=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354" moz-do-not-send=3D"true">i915#5354</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7561" moz-do-not-s=
end=3D"true">i915#7561</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp=
@kms-lpsp-hdmi-a.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1937" moz-do-not-send=3D"true">i9=
15#1937</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_lpsp@screens-disabled:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@i915_pm_lpsp@screens-di=
sabled.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1902" moz-do-not-send=3D"true">i915#1902</a=
>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-16/igt@i915_pm_rc6_residency=
@rc6-idle@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3591" moz-do-not-send=3D"true">i915=
#3591</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html" moz-do-not=
-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_118890v2/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html" m=
oz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1397" moz-do-not-send=3D"true">i915#1397</a>) +1 similar =
issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@min-max-config-loaded:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@i915_pm_rps@min-max-co=
nfig-loaded.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/6621" moz-do-not-send=3D"true">i915#66=
21</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@i915_pm_rps@thresholds-=
idle@gt0.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8925" moz-do-not-send=3D"true">i915#8925<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@i915_pm_sseu@full-enabl=
e.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4387" moz-do-not-send=3D"true">i915#4387</a>)</l=
i>
          </ul>
        </li>
        <li>
          <p>igt@i915_query@query-topology-coherent-slice-mask:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@i915_query@query-topol=
ogy-coherent-slice-mask.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/6188" moz-do-not-send=3D"t=
rue">i915#6188</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s2idle-without-i915:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-snb4/igt@i915_suspend@basic-s2idl=
e-without-i915.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/8841" moz-do-not-send=3D"true=
">i915#8841</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@clobberred-modifier:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_addfb_basic@clobber=
red-modifier.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4212" moz-do-not-send=3D"true">i915#4=
212</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1:</p=
>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-1/igt@kms_async_flips@alter=
nate-sync-async-flip@pipe-d-edp-1.html" moz-do-not-send=3D"true">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521" moz-do-not=
-send=3D"true">i915#2521</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp=
-4-4-mc_ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@kms_async_flips@async-=
flip-with-page-flip-events@pipe-a-dp-4-4-mc_ccs.html" moz-do-not-send=3D"tr=
ue">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/87=
09" moz-do-not-send=3D"true">i915#8709</a>) +11 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@crc@pipe-b-hdmi-a-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_async_flips@crc@pi=
pe-b-hdmi-a-1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8247" moz-do-not-send=3D"true">i915#=
8247</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-3/igt@kms_big_fb@4-tiled-6=
4bpp-rotate-180.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5138" moz-do-not-send=3D"true">i91=
5#5138</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_big_fb@x-tiled-16b=
pp-rotate-90.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111614" moz-do-not-send=3D"true">fdo#1=
11614</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-asyn=
c-flip:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-r=
otate-0-hflip-async-flip.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mt=
lp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3743" moz-do-not-send=3D"true">i915#3743</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_big_fb@yf-tiled-64b=
pp-rotate-180.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4538" moz-do-not-send=3D"true">i915#=
4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5190"=
 moz-do-not-send=3D"true">i915#5190</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-ad=
dfb-size-overflow.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5190" moz-do-not-send=3D"true">i=
915#5190</a>) +10 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_joiner@2x-modeset:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_big_joiner@2x-modes=
et.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2705" moz-do-not-send=3D"true">i915#2705</a>)</=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs_=
cc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_ccs@pipe-a-crc-spri=
te-planes-basic-4_tiled_mtl_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do=
-not-send=3D"true">i915#5354</a>) +43 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@kms_ccs@pipe-c-bad-aux-s=
tride-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=
=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +3 similar issues<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</=
p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-glk1/igt@kms_ccs@pipe-c-bad-pixel=
-format-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-=
send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:<=
/p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_ccs@pipe-c-ccs-on-=
another-bo-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-no=
t-send=3D"true">i915#3689</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-not-send=3D"tru=
e">i915#5354</a>) +9 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_ccs@pipe-d-bad-aux=
-stride-y_tiled_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-not-send=3D"true"=
>i915#3689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5354" moz-do-not-send=3D"true">i915#5354</a>) +19 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_cdclk@mode-transit=
ion@pipe-b-hdmi-a-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/4087" moz-do-not-send=3D"true"=
>i915#4087</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7213" moz-do-not-send=3D"true">i915#7213</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_cdclk@mode-transit=
ion@pipe-d-hdmi-a-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/7213" moz-do-not-send=3D"true"=
>i915#7213</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-1/igt@kms_cdclk@plane-scaling=
@pipe-c-hdmi-a-3.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4087" moz-do-not-send=3D"true">i9=
15#4087</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_color@degamma:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_chamelium_color@deg=
amma.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111827" moz-do-not-send=3D"true">fdo#111827</a=
>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_chamelium_frames@hd=
mi-crc-fast.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/7828" moz-do-not-send=3D"true">i915#78=
28</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@deep-color:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-rkl-1/igt@kms_color@deep-color.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic-dpms:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_content_protection@=
atomic-dpms.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/7118" moz-do-not-send=3D"true">i915#71=
18</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@kms_content_protection=
@srm@pipe-a-dp-4.html" moz-do-not-send=3D"true">TIMEOUT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/7173" moz-do-not-send=3D"true"=
>i915#7173</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-random-512x170:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_cursor_crc@cursor-=
random-512x170.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3359" moz-do-not-send=3D"true">i915=
#3359</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-sliding-64x64@pipe-a-edp-1:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-64x64@pipe=
-a-edp-1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-4/igt@kms_cur=
sor_crc@cursor-sliding-64x64@pipe-a-edp-1.html" moz-do-not-send=3D"true">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/20=
17" moz-do-not-send=3D"true">i915#2017</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_cursor_legacy@2x-l=
ong-flip-vs-cursor-legacy.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=
=3D"true">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5354" moz-do-not-send=3D"true">i915#5354</a>) +3 similar issues<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-p=
anel-8bpc.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555=
</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_flip@2x-plain-flip-=
fb-recreate.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=3D"true">fdo#10=
9274</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@a-dp1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl4/igt@kms_flip@=
flip-vs-expired-vblank-interruptible@a-dp1.html" moz-do-not-send=3D"true">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79" moz=
-do-not-send=3D"true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-fences:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_flip@flip-vs-fences=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8381" moz-do-not-send=3D"true">i915#8381</a>)</li=
>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscal=
ing@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_flip_scaled_crc@fl=
ip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html" moz-do-not-=
send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2672" moz-do-not-send=3D"true">i915#2672</a>) +3 similar issues</li=
>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_force_connector_bas=
ic@force-load-detect.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109285" moz-do-not-send=3D"tru=
e">fdo#109285</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-bl=
t:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-pri-shrfb-draw-blt.html" moz-do-not-send=3D"true">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6880" moz-do=
-not-send=3D"true">i915#6880</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mm=
ap-gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_frontbuffer_trackin=
g@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html" moz-do-not-send=3D"true">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8708" mo=
z-do-not-send=3D"true">i915#8708</a>) +13 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw=
-mmap-cpu:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@kms_frontbuffer_tracki=
ng@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html" moz-do-not-send=3D"true=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3458=
" moz-do-not-send=3D"true">i915#3458</a>) +21 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@kms_frontbuffer_tracki=
ng@fbcpsr-tiling-y.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5460" moz-do-not-send=3D"true">=
i915#5460</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mm=
ap-cpu:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-5/igt@kms_frontbuffer_track=
ing@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html" moz-do-not-send=3D"true">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825" =
moz-do-not-send=3D"true">i915#1825</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@invalid-hdr:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-rkl-2/igt@kms_hdr@invalid-hdr.htm=
l" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228" moz-do-not-send=
=3D"true">i915#8228</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@invalid-metadata-sizes:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-1/igt@kms_hdr@invalid-metadat=
a-sizes.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228" moz-d=
o-not-send=3D"true">i915#8228</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_panel_fitting@legacy:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_panel_fitting@legac=
y.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6301" moz-do-not-send=3D"true">i915#6301</a>)</l=
i>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@tiling-y:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_plane_lowres@tilin=
g-y.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/8821" moz-do-not-send=3D"true">i915#8821</a>)<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@tiling-yf:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_plane_lowres@tiling=
-yf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8821" moz-do-no=
t-send=3D"true">i915#8821</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-rkl-2/igt@kms_plane_scaling@intel=
-max-src-size@pipe-a-hdmi-a-2.html" moz-do-not-send=3D"true">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/8292" moz-do-not-sen=
d=3D"true">i915#8292</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-=
25@pipe-c-hdmi-a-2:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_plane_scaling@plane=
-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2.html" moz-do-not-send=
=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5176" moz-do-not-send=3D"true">i915#5176</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rota=
tion@pipe-a-vga-1:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-snb4/igt@kms_plane_scaling@plane-=
scaler-with-clipping-clamping-rotation@pipe-a-vga-1.html" moz-do-not-send=
=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271" moz-do-not-send=3D"true">fdo#109271</a>) +186 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rota=
tion@pipe-d-hdmi-a-1:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg1-19/igt@kms_plane_scaling@plan=
e-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1.html" moz-do-not-s=
end=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5176" moz-do-not-send=3D"true">i915#5176</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@=
pipe-b-hdmi-a-1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-rkl-7/igt@kms_plane_scaling@plane=
-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html" moz-do-not-send=3D=
"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5176" moz-do-not-send=3D"true">i915#5176</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi=
-a-2:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-2/igt@kms_plane_scaling@plane=
s-downscale-factor-0-25@pipe-d-hdmi-a-2.html" moz-do-not-send=3D"true">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235" moz-=
do-not-send=3D"true">i915#5235</a>) +15 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-=
25@pipe-b-hdmi-a-1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-rkl-7/igt@kms_plane_scaling@plane=
s-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html" moz-do-not-send=
=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5235" moz-do-not-send=3D"true">i915#5235</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_psr2_sf@cursor-pla=
ne-move-continuous-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true=
">i915#658</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@dpms:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-glk1/igt@kms_psr@dpms.html" moz-d=
o-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a>) +39 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_psr@psr2_cursor_mm=
ap_gtt.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1072" moz-do-not-send=3D"true">i915#1072</a=
>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-rotation-270:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@kms_rotation_crc@primar=
y-rotation-270.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4235" moz-do-not-send=3D"true">i915=
#4235</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_selftest@drm_plane:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-10/igt@kms_selftest@drm_plane=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8661" moz-do-not-send=3D"true">i915#8661</a>) +1 =
similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_selftest@framebuffer:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@kms_selftest@framebuffer=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8661" moz-do-not=
-send=3D"true">i915#8661</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@flip-suspend:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-1/igt@kms_vrr@flip-suspend.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/8808" moz-do-not-send=3D"true">i915#8808</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-invalid-parameters:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@kms_writeback@writeback-=
invalid-parameters.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2437" moz-do-not-send=3D"true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@global-sseu-config-invalid:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@perf@global-sseu-confi=
g-invalid.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/7387" moz-do-not-send=3D"true">i915#7387=
</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@cpu-hotplug:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@perf_pmu@cpu-hotplug.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/8850" moz-do-not-send=3D"true">i915#8850</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-flip:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@prime_vgem@basic-fence-=
flip.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3708" moz-do-not-send=3D"true">i915#3708</a>)=
</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@prime_vgem@basic-gtt.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3708" moz-do-not-send=3D"true">i915#3708</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077" moz-do-not-send=
=3D"true">i915#4077</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_submit_cl@valid-multisync-submission:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-11/igt@v3d/v3d_submit_cl@vali=
d-multisync-submission.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2575" moz-do-not-send=3D"tr=
ue">i915#2575</a>) +10 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_submit_csd@multi-and-single-sync:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-apl2/igt@v3d/v3d_submit_csd@multi=
-and-single-sync.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">f=
do#109271</a>) +43 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@vc4/vc4_wait_seqno@bad-=
seqno-1ns.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/7711" moz-do-not-send=3D"true">i915#7711=
</a>) +8 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-apl1=
/igt@gem_exec_fair@basic-none-solo@rcs0.html" moz-do-not-send=3D"true">PASS=
</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@noreorder-corked@vcs0:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@vcs0.=
html" moz-do-not-send=3D"true">DMESG-FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/9121" moz-do-not-send=3D"true">i915#9121</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11889=
0v2/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corked@vcs0.html" moz-do-n=
ot-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html" moz=
-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4936" moz-do-not-send=3D"true">i915#4936</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493" moz-do-not-send=
=3D"true">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_118890v2/shard-dg2-12/igt@gem_lmem_swapping@smem-oom@lmem=
0.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-glk6/igt@gen9_exec_parse@allowed-single.html" moz-do=
-not-send=3D"true">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5566" moz-do-not-send=3D"true">i915#5566</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-glk1/=
igt@gen9_exec_parse@allowed-single.html" moz-do-not-send=3D"true">PASS</a><=
/li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload-with-fault-injection:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg2-11/igt@i915_module_load@reload-with-fault-inject=
ion.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/7061" moz-do-not-send=3D"true">i915#7061=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8617" moz=
-do-not-send=3D"true">i915#8617</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-6/igt@i915_module_load@rel=
oad-with-fault-injection.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-1/igt@i915_pipe_stress@stress-xrgb8888-untiled=
.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8691" moz-do-not-send=3D"true">i915#8691</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/s=
hard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html" moz-do-not-s=
end=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html"=
 moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3591" moz-do-not-send=3D"true">i915#3591</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-d=
g1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html" moz-do-not-send=3D"true=
">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-lpsp:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html" moz-do-not-sen=
d=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1397" moz-do-not-send=3D"true">i915#1397</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-rkl-7/igt@i915_p=
m_rpm@dpms-lpsp.html" moz-do-not-send=3D"true">PASS</a> +2 similar issues</=
li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html=
" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1397" moz-do-not-send=3D"true">i915#1397</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-=
dg1-15/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html" moz-do-not-send=3D"tr=
ue">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg2-6/igt@i915_pm_rpm@modeset-lpsp-stress.html" moz-=
do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1397" moz-do-not-send=3D"true">i915#1397</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg2-1=
0/igt@i915_pm_rpm@modeset-lpsp-stress.html" moz-do-not-send=3D"true">PASS</=
a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html" =
moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4817" moz-do-not-send=3D"true">i915#4817</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/sh=
ard-dg2-6/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send=3D"t=
rue">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-asyn=
c-flip:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-r=
otate-0-hflip-async-flip.html" moz-do-not-send=3D"true">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3743" moz-do-not-send=
=3D"true">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_118890v2/shard-mtlp-2/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-0-hflip-async-flip.html" moz-do-not-send=3D"true">PASS</a></=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-sliding-256x85@pipe-d-edp-1:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-256x85@pip=
e-d-edp-1.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/8561" moz-do-not-send=3D"true">i91=
5#8561</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_118890v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-d-=
edp-1.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.=
html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/8248" moz-do-not-send=3D"true">i915#8248</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/sh=
ard-mtlp-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html" moz-do-not-sen=
d=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@c-dp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"true">i915#79</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890=
v2/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html"=
 moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/79" moz-do-not-send=3D"true">i915#79</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-g=
lk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html" moz-do-not-send=3D"=
true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-rte:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-rte.html" m=
oz-do-not-send=3D"true">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_118890v2/shard-snb5/igt@kms_frontbuffer_tracking@=
fbc-1p-rte.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-=
dp-1.html" moz-do-not-send=3D"true">ABORT</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v=
2/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html" moz-=
do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-=
dp-1.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
8890v2/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html"=
 moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg2-1/igt@kms_vblank@pipe-c-ts-continuation-dpms-sus=
pend.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/7838" moz-do-not-send=3D"true">i915#783=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
118890v2/shard-dg2-2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.htm=
l" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
          <ul>
            <li>shard-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html=
" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2681" moz-do-not-send=3D"true">i915#2681</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591" moz-do-not-send=
=3D"true">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_118890v2/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@=
bcs0.html" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2681" moz-do-not-send=3D"true">i915#2681</a>)=
</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
          <ul>
            <li>shard-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@vecs0.htm=
l" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2681" moz-do-not-send=3D"true">i915#2681</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard=
-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html" moz-do-not-send=3D"t=
rue">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
681" moz-do-not-send=3D"true">i915#2681</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3591" moz-do-not-send=3D"true">i915#3591</a>)=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-2/igt@kms_big_fb@linear-16bpp-rotate-0.html" m=
oz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2017" moz-do-not-send=3D"true">i915#2017</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/sha=
rd-mtlp-4/igt@kms_big_fb@linear-16bpp-rotate-0.html" moz-do-not-send=3D"tru=
e">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982" moz-do-not-send=3D"true">i915#1982</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2017" moz-do-not-send=3D"true">i915#2017<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg1-16/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_cc=
s.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3689" moz-do-not-send=3D"true">i915#3689</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-not-=
send=3D"true">i915#5354</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/6095" moz-do-not-send=3D"true">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-1=
5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs.html" moz-do-not-send=3D"t=
rue">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
689" moz-do-not-send=3D"true">i915#3689</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4423" moz-do-not-send=3D"true">i915#4423</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-n=
ot-send=3D"true">i915#5354</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6095" moz-do-not-send=3D"true">i915#6095</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@content_type_change:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg2-2/igt@kms_content_protection@content_type_change=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7118" moz-do-not-send=3D"true">i915#7118</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/s=
hard-dg2-12/igt@kms_content_protection@content_type_change.html" moz-do-not=
-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118" moz-do-not-send=3D"true">i915#7118</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7162" moz-do-not-send=3D"true">i915=
#7162</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varyin=
g-size:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13524/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions-varying-size.html" moz-do-not-send=3D"true">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2017" moz-do-not-se=
nd=3D"true">i915#2017</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5954" moz-do-not-send=3D"true">i915#5954</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-mtlp-3/ig=
t@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2346" moz-do-not-send=3D"true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@psr-suspend:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html" moz-do-not=
-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110189" moz-do-not-send=3D"true">fdo#110189</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3955" moz-do-not-send=3D"true">i9=
15#3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_118890v2/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html" moz-do-not-s=
end=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3955" moz-do-not-send=3D"true">i915#3955</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-c=
heck.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4070" moz-do-not-send=3D"true">i915#4070</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4816" moz-do-n=
ot-send=3D"true">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_118890v2/shard-rkl-4/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4816" moz-do-not-send=3D"tru=
e">i915#4816</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@cursor_plane_move:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg1-17/igt@kms_psr@cursor_plane_move.html" moz-do-no=
t-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1072" moz-do-not-send=3D"true">i915#1072</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118890v2/shard-dg1-18/igt@=
kms_psr@cursor_plane_move.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072" moz-do-not-send=
=3D"true">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4078" moz-do-not-send=3D"true">i915#4078</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@primary_mmap_gtt:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg1-16/igt@kms_psr@primary_mmap_gtt.html" moz-do-not=
-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1072" moz-do-not-send=3D"true">i915#1072</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4078" moz-do-not-send=3D"true">i915=
#4078</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_118890v2/shard-dg1-15/igt@kms_psr@primary_mmap_gtt.html" moz-do-not-sen=
d=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1072" moz-do-not-send=3D"true">i915#1072</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</=
p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13524/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_apertu=
re_limit-smem.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5493" moz-do-not-send=3D"true"=
>i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_118890v2/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_apert=
ure_limit-smem.html" moz-do-not-send=3D"true">CRASH</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/7331" moz-do-not-send=3D"true">i91=
5#7331</a>)</li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13524 -&gt; Patchwork_118890v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13524: f69ef04cfdd4b810e790bef365001e58e2d1037f @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_118890v2: f69ef04cfdd4b810e790bef365001e58e2d1037f @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------uM7hvfxYCbMuDruf5xpaBtkd--
