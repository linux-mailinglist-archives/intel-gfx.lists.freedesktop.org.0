Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAB464A9EC
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 23:03:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E622410E0C8;
	Mon, 12 Dec 2022 22:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C896A10E0C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 22:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670882593; x=1702418593;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=j6myRH0exobVHEa9ayoYPabztFDvHMAPijXQDN4AXpA=;
 b=NBMxxftJDFTic4RLJ5SYAvweidFezvRYg6ZkvVAV7UyATjdCTDby7tuz
 DmRTbRDgptCZo1f37IJvRE+bzhu67h0Bbfwaaw6BVraCHe1t70MX1HHao
 3QbC4GAYHcispzlj4eazt9k7iwsTC07TI0D1Oyckff1hm1y/rb18qWEEU
 Y5DXRunOw6UlNxvgDb0DZK2x6VEHfRlodJUFmAygULrPMkT5MYbQQTcFj
 IQ3dQ9mScwa6Bh/CJdnQwM/wD9Jj365b7R3qhGOnQb0lqdWnIv2aqDD/h
 8+vpFg2KE7Erb5oas5YROKAUrDPQWQxkJV1xRmHADHIlc337q+dzi5BPR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="298317348"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="298317348"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 14:03:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="716965114"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="716965114"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 12 Dec 2022 14:03:13 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 12 Dec 2022 14:03:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 12 Dec 2022 14:03:12 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 12 Dec 2022 14:03:12 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 12 Dec 2022 14:03:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bXj/xPYJCvpinDszw5HclZCQqEcT7x/EmEEjlleGIGVN30ptPhXXSRUZQK85VU4J/SG6/w08Eni2o4RTehgXpFESixJsoDthxXOkfPkUKzrax5bEXSnv4rQMn9fk/Oqvbj4lJcg87PBl5/Nf/mIxbo4Op2b2GZcIO4XR7RhMRcwZWYFwptRxgT2j9LEsooH3+m29RGPFXr/VVGhAEA02bhpNGWvDjciFESGjr1NX/OXQxllClvs43RY69MlZKis+UZzzQC97o//NHEEiuQsrsHqg0nBo2KUQKit/yBydzrTo9+HVyz1OCCBgN+1GM11VBUYBQp5rI6P1slb2AaQ3zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NWGw7c84OmI09F+/G++8CCSf4sEr6chzmoxFC8LTuLQ=;
 b=g8sL+Htq8NPS8fkcxKfItg9GxiM6aoI9i/eJrr+y+kshevmo8mBhGMeS8wnuHxQiPXP4WP+BWWNWA/oW2d9gO1nfiezrpcs/kuj54zU/9QhPiHzvQ3YTPsCYXkcVVaAjGgG8ya2MunOnclsEk/Fy4iFxn/+cJz62MDcYyUFRakBQvFYGRJ6TsnLFb9gam67lAcTm4Dc/qtVVMQgyAkFhEeYlILCYcCjH2PZMqAzY3eFIeNx1e2lgdHnvDLEF8ETkXNp2/4LH2p2jb2IZt+L5Duk0A/MA/alQaBr3Wn2wqh7nVxhaFtloGQ4VwYgWC905cEUTxQbPJamux84zTI99Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CH0PR11MB5441.namprd11.prod.outlook.com (2603:10b6:610:d0::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.19; Mon, 12 Dec 2022 22:03:10 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 22:03:09 +0000
Date: Mon, 12 Dec 2022 14:03:07 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y5elG53efVUN/I8e@unerlige-ril>
References: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
 <167069218001.23484.3918258440682791895@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <167069218001.23484.3918258440682791895@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR21CA0005.namprd21.prod.outlook.com
 (2603:10b6:a03:114::15) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CH0PR11MB5441:EE_
X-MS-Office365-Filtering-Correlation-Id: b4f43c31-8daa-4a56-1451-08dadc8ca7fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aJV3ut8I/ayZrdS7K+oARP9cZo+/GlSupAV9K5aHDmdji6SdbesGgFCn/VKo03WzZdrkS8u9Cws1+FxDZt4kkwue3hhToVFlW09feVGwm+AjZzXKs2VD8T2QgifUCEDtuEO54KD3B2n2kmm9ZN81UK31ew9seb0nPlIc8KPhjXlBVsGtc4/0raw3lG+l/xSJMRTvQBsJ2YQb3sZ4/+x4z1QwgD1gXPAp5+9e4xTrp9ut9kS7ykUE4R0PjquPMcwVrLui7yKkJ6Sv1wpZmhnRTQWnzU+VpbBjtY8TsfrB7A5LaK3Z6ho/F7W/kADGdtVRrK6m/EzyFEt9+nrESTm76c9vGZvdFx3EkbRbrbF1DWKMm1942ejYqvbq4CcIM47Pz+5Gt//lgZJqhVG58Qk8oKXH0b0GTsY7+5B59R8bznIKbKEoxLMuYQyHZ57Hym7aZXGdp+7SEkPc7J+W3fazh5g3ND01akUpCxhypmu4IBlKT5UtWCuLavrXkjtQXRXjNo8ap/3Aipymi6W1HGQZEPdDSha+Vt5IGeCPXH4RUpLCOzKL5r4W54/GSr+q3E0tc3iR3lAa8196z0WBdWCjovewCMJTJTLCh1a5k0wGxypHzyf+MC2V3rJPqTgRRtAhCsmxKxZxBDla6x9WPa7Kc7Kx49Mf/YnojnDyhtixDu0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(366004)(396003)(136003)(376002)(346002)(451199015)(86362001)(83380400001)(82960400001)(478600001)(186003)(9686003)(6486002)(6512007)(966005)(26005)(38100700002)(6506007)(66946007)(41300700001)(316002)(66556008)(8936002)(6916009)(2906002)(5660300002)(66476007)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGVNeWI2dnlrbWY4T05GektoMlRPVUYzVmlQVnNPZlRiZ2dmSEVUZDR1b1Vw?=
 =?utf-8?B?Zy9HbFdGWkNBT0hzMWJIbGpEUzh4YkR6VTlxNzd6NXFaVFZkV0d5ZDNrTzFZ?=
 =?utf-8?B?bmZKcTFYdGI2SUJDWlFJazlSUkRuVU14WFBCYkFEWjlHVFQ5aExSYWU4ZmlV?=
 =?utf-8?B?allwMUYzQlZHTGtueVRVRVFEL3VxRlNRZm5BTno1T0ZQeEVYNzQ1S0NCUEl4?=
 =?utf-8?B?RjkwdHNVaEJOUFJJQmI3ankvekpIazNDdUM0TzZId2xidmJHVjNIdC9BZ0VP?=
 =?utf-8?B?dk5UL0Q3bUZ0WWtUNnNtc3JIbE05UHlKSGdhMkNQTGo0WEVMMVd3V2dkNDJN?=
 =?utf-8?B?bjhHajJQRXlPQXlKZUtsdlhiK1BBbHlPaXhrSkFKcEgzbzB0YzNQekdoMlow?=
 =?utf-8?B?WTdKTWIvdWpUZTJLOFd6YlA3NjRsNnZCdnpuRjdKK3B3ZEI0NnRLME4vNTZz?=
 =?utf-8?B?UnNTZ1lFV2pjUnVEeXExdzJVSmFocUU2b1dvRjI2dkhCelpWbE4wRmk5RHkv?=
 =?utf-8?B?NklFQjhEQUV2Mk1vdmF6WExDd3ZieGFiSUJ2M0p0SmFUbU82VC9Fc3NzOFF3?=
 =?utf-8?B?ZSsrWmlEYmhzVWpYek1DWUFJU0haZEVqdjBKdSs2b1JObWZSU0VLck9iU0Y0?=
 =?utf-8?B?TmtQeUU0WlJlYkxuUWpOMEtxZURmU0I5RzIrMnc4YWhlSTc2djY1eHdrcVJU?=
 =?utf-8?B?YjgvN0J5ZjhXMGladTZBZTNROVZzeFNFQk52cWxYNVlrc0h3NmVEc2hDZjBq?=
 =?utf-8?B?WGhTTkR5SXBQVEwrOWl0enh2S0dQdHN4TUMyYlRSZEZIN3Y2MGZRM291QVc0?=
 =?utf-8?B?bEtObnc0djlINVpRRWNXakxiZUpQRWd2cTNMNElmQlFQSnJlN0xUaXMrdGta?=
 =?utf-8?B?UDJKNER0bTFMSU1uWlVpQXZ2VXAzWFJOWkdIeFg3MDZRLzBDUE5Wcy90MnBr?=
 =?utf-8?B?ckErT1g3NlZMK2FaSXoxRFpQT1V0TEt6QVlmNzV3azg0Wjg3SzNDSlljRWcw?=
 =?utf-8?B?T0pVaXgrbmwvRS85MmdOVzcyNnhIc3d0RERlcmdFTmN0UjlqSDZRR1ZkZ3o5?=
 =?utf-8?B?TzR1bHJvRHBma25ZOXZXbDJKT0NKM2trQTVnZUoxQitBMmpjWW13YVJVb1Yr?=
 =?utf-8?B?bUJhQ0c2SEhIc2Y2RnJPTi9PZW5uSTNpOHp0SDREZ1E5VHBKZFQwL1gyYkEr?=
 =?utf-8?B?ZFl4OWxjakNZdStMa0NrL0NsMEw2V0p2MnMxYzFQYzQzSFd5MUdlNmluRjZx?=
 =?utf-8?B?K0cxN0IwRndlZ1Nrci9hdGpQNUNXSjZpZEZlck1zMFp5RTYxRXJFbS9vZFEy?=
 =?utf-8?B?YWNYS3lQNE1QL2JGVkEzUGFjR0l6dVdJelU1UlRTQm9rM3B3WUlTMUxsUE5H?=
 =?utf-8?B?ejNvZWMwMjQwRkFwV2RKV21wdmtzTlU4VXdNK2ZUSEovejladkI1M2w5dENl?=
 =?utf-8?B?ei9WUFJxL1E3WlZ6bTRYekRlNGJnZ3Nma1M1L1MyM2hoand3MDl4NjRoaDVk?=
 =?utf-8?B?L2tsSnczdERpbFNWVU42RkVVZXF6KzBMSThUcmNTcnVZMDlKRzU0emRjTUt4?=
 =?utf-8?B?cVVZZnpHZFNlOVpPZDVucTlNQUlKNHRjc292cGxzYXdRZ0REbHJmdXdxSVdi?=
 =?utf-8?B?WkcyODJkK3dUWFEweE0wQUpQZU9WMTRGZW9ZbklrcCtRVUw5am1lcHgxYzBP?=
 =?utf-8?B?YW1CT3BKV0JMM05vanNIUjQ5dkpuMW4yRHNlbDFoS1JvM0R4RzNqZXBnYlRI?=
 =?utf-8?B?azJCMlJtSkpNVWlqZ0JaMG9WSDc2d0RrOGJ0UVZNV1g0a3ZFQk1LQnRBNFlI?=
 =?utf-8?B?VVZra0lwZDJkT3JGZjdMMmwzeW9VakQ3OGwzTDRES1NKMmkwVlN6ajBsOVcx?=
 =?utf-8?B?MU9wVDhYa3VPUVBOYmFnQWJVSFJoQXhuSENPTitydXFHT2hIcDZyV0l2aHZX?=
 =?utf-8?B?QzF4andSdGtlNWpOUGRJR050M2hvM3FyS3JXWEE0djEvc2x4YmZndGhtTm5l?=
 =?utf-8?B?U2hQRUFKbVpvd0hWOE9wYVErRVNmRnJIN2JNTmUvaUhGM3JyNFM2ZDBPRi9x?=
 =?utf-8?B?VHpuREhWWWNmR2xOTWMvWVBSU1crRjNsKytSWUxnSDcwTVpsMXBUVy9FNEpr?=
 =?utf-8?B?ak5ZclR5cTkrZ2MybGRmNUpOT1ZvTzJHL2pPZVY5VGVwTi82ekY5bmtBbjBx?=
 =?utf-8?Q?b8Gk11tfgM1gr9lk6XpFr50=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4f43c31-8daa-4a56-1451-08dadc8ca7fa
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2022 22:03:09.9156 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AFtr3zIaycRdQ5WDPCu4/QeRwLLsnwXvrxqc4QTseXzw+nuyNIC5dH+3ac/uk7h8ZyKonPix8frZMF/VviuA+ofqV+ld28FGURzWqGBdDVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5441
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_OAG_32_bit_format_support_for_MTL_=28rev4=29?=
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

On Sat, Dec 10, 2022 at 05:09:40PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  drm/i915/mtl: Add OAG 32 bit format support for MTL (rev4)
>URL:     [1]https://patchwork.freedesktop.org/series/111512/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v4/index.html
>
>          CI Bug Log - changes from CI_DRM_12491 -> Patchwork_111512v4
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_111512v4 absolutely need to
>   be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111512v4, please notify your bug team to allow
>   them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>   External URL:
>   https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v4/index.html
>
>Participating hosts (41 -> 5)
>
>   ERROR: It appears as if the changes made in Patchwork_111512v4 prevented
>   too many machines from booting.
>
>   Missing (36): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc bat-adls-5 bat-dg1-5
>   fi-bdw-gvtdvm fi-icl-u2 bat-adlp-6 fi-pnv-d510 bat-rpls-2 fi-skl-6600u
>   fi-snb-2600 fi-bsw-n3050 fi-adl-ddr5 bat-dg2-8 bat-adlm-1 bat-dg2-9
>   fi-hsw-4770 bat-atsm-1 fi-ivb-3770 bat-jsl-3 fi-elk-e7500 bat-dg2-11
>   fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u bat-kbl-2 bat-adlp-9 fi-skl-guc
>   fi-glk-j4005 fi-ehl-2 fi-jsl-1 fi-cfl-guc bat-adlp-4 fi-kbl-8809g
>   fi-bsw-kefka

This looks like a false alarm. I loaded this on an ADLP and KBL and I 
don't see any issues.  This does not happen on rev2. Diff between rev2 
and rev3 is a change in commit message. rev4 is just a rerun.

I will post a rebased version to see if this resolves.

Regards,
Umesh

>
>Known issues
