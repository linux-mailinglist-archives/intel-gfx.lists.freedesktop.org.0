Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6B36C53D6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 19:38:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6106010E3DA;
	Wed, 22 Mar 2023 18:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F5710E3DA
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 18:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679510280; x=1711046280;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=BPg2eh9sYPAP4zqzHL1Mj9PCI7L9qkONg0rRhZc13uE=;
 b=TvHSS5mrZuBrlpyBMs+0TQYO/amygSWbo2tsUjuuBm9zKKLumlr4aMHp
 ROA3Rp+F6t3aHGisTHLwsp1QeSSpbtXeaf4jo7/t1tTuZRKCEjEHNfgCd
 xM3jilLzb3wBferAExRGfyiGEzVVQQplj7w/NmvuGEQPJXeaveC3+85Vt
 /+YlBq213wVJqPUviVYZkNGyKoMDCQr+ZGb6xl8I/icJX4/ArVhjVDv25
 UybqIs0Ylcec4Fdch24DSCdZGR4tVKSUnA+Bkb2A2UTss9ofzfUyUQNGO
 P0T9UfaIkoGk4zQh2tv29onZYpRdu3GZPJVLmRCCtOs38QeZUbb22gduM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="367040367"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="367040367"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 11:38:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746433459"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="746433459"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 22 Mar 2023 11:38:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 11:38:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 11:37:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 11:37:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 11:37:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kOWma7PA0av3VnT5khmHiNWVt74Am+Jxub2/eqZNVI60CiUaX0KSdaoqvmCKQsIapwMNPlpwAKlSb+b5s4vFiWsuSyDAFb0ivs4XD9ok8Jk3dgcjz549W1RRlTc6T3VZ/X8prjtcuIKevpw6lK1e6ejuolG+4VO2a+3Pwz9/TXhGGze+MQAo58anOeJzJPRInR+nbsiZ0HZZIvBLmB7r/WdwyI3MUfvGLagJiaKSHofK5Gi6iKK3LIb903HHLOhSSL0OLSuKTgsE1uNHJ32jYzr9EdkGqm979hYz88/C/uGWefx9BUQEeitfPGa39olV/kujL7H3GSzrmZ3Zh3AsJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uog1yu13MGV/pZl8rBp5I+30c5B0zDa98oy6FuYyQ1k=;
 b=H4X8m0pWvKm8IbU4nU1a777wcnmsdUXelIOIX2YEL1K6uitFYNniSCS+moC7QvkqLUlU+nS1YLBSe48uXFkKBn0rVaIFc25PwpkmxnDpoet+100W/0v1SB0s8gM+I0jnh/i1UenoAW8LS2FTMbWKfTvHXmkJODfY7vSX3IU5367VMxQlDD6jBZVgUQGM9kinRxNZXj9G8LgI9LC2uQ4TY/qlvFaOW0aXzXPsD+3Skuf52dq77etKbBsTyhbbSaSluTWVLbAX7HgC7ZUrgKFDe7xB6tIAxXmE42TQo3tAkUYJgY5lsPYouTx+NTWPM/V6mHgmXkPbr64jGy9ccx/ZyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 MW3PR11MB4588.namprd11.prod.outlook.com (2603:10b6:303:54::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.35; Wed, 22 Mar 2023 18:37:58 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 18:37:58 +0000
Date: Wed, 22 Mar 2023 11:37:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <ZBtK/GiokTYNAUKQ@orsosgc001.jf.intel.com>
References: <20230322000854.3310481-1-umesh.nerlige.ramappa@intel.com>
 <167947627521.13423.10208361443492960135@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <167947627521.13423.10208361443492960135@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR07CA0030.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::43) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|MW3PR11MB4588:EE_
X-MS-Office365-Filtering-Correlation-Id: 775384ff-83ab-4338-c43c-08db2b048eae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JKuIYduCMcm0AL9PfojCiy/jM29nedFruMA1+SAwfwS9zUfDOWyS7dir13rSrW4+r662aYhtsoQpnjeKcM1ndV1WARqWEPNdUSuPcWZs32we1IV+o83Tfm3qdfuXYwuu68qS9sT05xaLUi5iqIc8zmuugIASEQvUf95DcIgES2IRElpWiDSJhaWlJZW/d5koL4fFmOT70e/70gcE3oMlJcGAGFR27mm6ctJBcAKG4lcN+Kn2tUlexaoPtpj51Sm7U2DY/vQDG2PqSw+xki0ISXS3OUHIRTmUSgq/0vdj05HN7n4mVoWH/qPXoEDiQumG7xaA/NAlF5piRatPAHzMyHqPe9HZfoS6/jyvI2d97mw6A8RUP6Z51hYiFInNZIrPyGgYwrAomixLcZFBOJN0i2i5ot5fQAgc+WrWVQovwNQLR+0XFtxOk9Dh6DIuK4jImVo5pCdMxOLY3O5JPTKDhtwyh1GpxNNLVU/r7s/lw0dNx502DDIiqTWlWAKyzg8QZCwNBvhrj6+ED7OTShAxXWYdOcH/HKX+3oKooYJLUYA2/6oKKlVz1lml4nI7W0wWKWotUxCp8uem90XgL8zAPpqaeaii+R5vMVArYoYo23ShJtVEz3ro+Hn+ZCHXWZrz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(39860400002)(396003)(366004)(346002)(451199018)(6666004)(26005)(478600001)(6512007)(6506007)(86362001)(83380400001)(82960400001)(41300700001)(8936002)(2906002)(5660300002)(316002)(66476007)(66946007)(186003)(66556008)(6916009)(6486002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rk81emdIdVhFN3pOL0F2bDFlNGM0UDJUZ1NWYkZ5eWdEcE9IR21PR2xuNUxz?=
 =?utf-8?B?RWZkTXpqTnA1V3NPNlRidWxCM1NSMnh3bVdyK096cGF4elZUUTRRVGRlSlNq?=
 =?utf-8?B?cGRsQm0xd2orV25selh6b01Vb3BkSTZaSk5ucE9uUWRoZm1sdytyM05PR2E3?=
 =?utf-8?B?eWRWWE1sdVBPSkc2U3h4ZTRRajVlS3VMU1BGS2MrdEtGdTNwRkY0c3JpeXpz?=
 =?utf-8?B?MFBndHlpZHRYbWNWQzdtWjgrVXBEenRINlVJakx3Y1VGOFJyQlp6cy9xajdK?=
 =?utf-8?B?bHhaT1AyekttRlZmdG5vQWlua3NXN2FZS0JQRFBOWGllcDRWOVJ2RG1YYStn?=
 =?utf-8?B?MGlJSXRoMDFjZ0NaWFRJNitZZm51elVubkQrMStCTGtqUUFKbTB6Q0twYktK?=
 =?utf-8?B?WGpEOXJldzRONitiR2dUTHJibDN1dWhQY09nV0pqck9EUnVJUjRvUUhNZk9F?=
 =?utf-8?B?cEZaaDloYThsZGFpanFFV05GUFBvMkl4K2IvVmNabGNYVDNIYmptalVidGt6?=
 =?utf-8?B?NUc4T3c5eWpxb1BTc1Bid0o3TkpaSGhoaHJvT1doVVNrMGtSREtNVTBEUmx3?=
 =?utf-8?B?b1pBRHdJdEsyMVR6OVU2NW93T2c2cGJlT1JVLzl5RE5CRlRKV21lSGxFdnhS?=
 =?utf-8?B?cjArdzcybkRRSENkZWl0U2ZHWGlXeU9ONDlOYTNFZ0xWcGl6NTdRaWp0Y1Ja?=
 =?utf-8?B?SFhrQzRlVklHNXJ5WnlUR2dVbXluQTBjOERucU9EMmV5ZG1TV1NiZm1OS3N0?=
 =?utf-8?B?MzFDclpzU0ZDbHlUNHl6WHdXcVJzK0diZm96T2duVUJpb08rbTB1WnhvZVRw?=
 =?utf-8?B?bm5KQjRNQUFOWGd6RzlVQ1RJbkJ4aU1yQVF4a1ZhMTJUNmRBVFhaT3VieENC?=
 =?utf-8?B?OE5zVzIwUm9JK2paMld4RUV4cUhKZ2dBdmVvSFF4SzRRbTBlSFVGclFveWwz?=
 =?utf-8?B?VENocmtlVXlMYlplSEtJcHdXNW9VWDdwazIxeDducDlEWlowcDgzQmp0N2xB?=
 =?utf-8?B?TzJhWC9ZMTV1WnlQVGxwQkVSaU5ZenJBTlg0L2pLQmFmQUx2SFEvZHF0MFhl?=
 =?utf-8?B?NHlDVjNVTEJvKzlodW0wRU1xTUJsSXNhdkFGcjNjWkJTYWIxZFJreU9ScXJG?=
 =?utf-8?B?NVdmVU5PYnY2bVlYV2R4V2FoT3UxZmRRZXBBaTR5TGU4dmxSS2tLZjZlUFJ3?=
 =?utf-8?B?am4wSTcrTnpxcE9EaXhXWVpOUmdidG1pVTNPL0NNSzA0bE5zUVYyYzQyK2x2?=
 =?utf-8?B?Y1FVWVZjbUJzZ0hiSVFld2Y1ODZYdmlJTythYitRaFI1eFo2SjIzQTltNEFZ?=
 =?utf-8?B?ZEtKSVM5ZlJGeUF3L3NDS1NYL2tYL0cxcmxUNmhySUpsQkhGUGFzSVo4MEpW?=
 =?utf-8?B?WWZLVWhrdHFOSnRQZkRPRnJUT3ZsRFlwYlk5YjNIeEVuRWU5MlFrQ0JINjNt?=
 =?utf-8?B?L1BDV2V2WlkreDZHWGZ4Yk1BVVNKWmlCQk45bDNVTDVrQy9YbkNGZy84cjVH?=
 =?utf-8?B?QVNCNmQvYmplWVMxMUxXejNKamg1eWtaaHZPTUdpL1NXYmlpam12NDBabzBK?=
 =?utf-8?B?UlJiU05CeUlLV0pTWElIZ1o3VENaWGF1dkRNTGV2TWd2LzZ1em5YUCtHN1Fm?=
 =?utf-8?B?OHVXVTk3U0FHTkZGT2IwYmVJOGY2Nk05R2NheGZnMU1rcVp4VTB6ZS8ybENX?=
 =?utf-8?B?YlZmMWhnUXA0dFdWaHdlVVRSY0VqZFp1Sjc4RlVPRWZYV0owZHlkVmU2TW9q?=
 =?utf-8?B?dFRLL2dxaE9YakRKbzRIVFhDZkNidlo1M3VFT1ZZUDVsSVczeHBkVFRXYlBY?=
 =?utf-8?B?cjFTR2RtN2l3WXJkZVF6Z0pvSFljVUlJR1JXK0dnZzZ4SlNManl0SjhTcisx?=
 =?utf-8?B?L2RkZkNFTDlOdUhqTXo1S2gxb0VBcXVLV2VLSjlvWWVZazk2VTRYcTF2QWFB?=
 =?utf-8?B?K2FnOXhOR0NETGYyT252TUdDbHE5bERsQlZpckhncWp1MHAxakNnNkJZeDBa?=
 =?utf-8?B?VndJdG5hYmM0TG1DcjQwd29SWGVGU2p5MTlwMXJuWk1CbHF2TW1LdFlEbVp1?=
 =?utf-8?B?a1hZUFlFN3FFdnVqd09iWXlJbGgyaVZqZkJTdWJTbnBIc3ZLQ2hEL1lBbGF6?=
 =?utf-8?B?WTBSa1ZGcEI4RWo3bXFBM1dUeEpXZUU5TWZkZDVwdHRvdEVCMy9hYk45N3ZX?=
 =?utf-8?Q?WVVOO/cVjlzgz7eKmbvUWdI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 775384ff-83ab-4338-c43c-08db2b048eae
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2023 18:37:57.8613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rfah+RB9C19X/JXCNmvW2tHbY4fSW1vvk8Oc2M+uaHJhILJeTKxUBVZAdLSIU7nTDPgCPDbCW4Pj0iYPggwd+NR6aN8f0UdpY+fC/QEpm8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4588
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_OAM_support_for_MTL?=
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

On Wed, Mar 22, 2023 at 09:11:15AM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  Add OAM support for MTL
>URL:     [1]https://patchwork.freedesktop.org/series/115469/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115469v1/index.html
>
>     CI Bug Log - changes from CI_DRM_12893_full -> Patchwork_115469v1_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_115469v1_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_115469v1_full, please notify your bug team to
>   allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (7 -> 7)
>
>   No changes in participating hosts
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_115469v1_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@i915_pm_rps@reset:
>
>          * shard-snb: [3]PASS -> [4]DMESG-FAIL
>

This is unrelated to the current series since the changes are localized 
to OA perf (in both IGT and i915).

Regards,
Umesh

>    Suppressed
>
...
