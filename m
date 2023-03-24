Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56156C862B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 20:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C9D10EC7A;
	Fri, 24 Mar 2023 19:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FC5D10EC7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 19:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679687396; x=1711223396;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=XLB9ipyDBnk6Fn4LyPp7taQKGJw69QDbnBWrW78LDIk=;
 b=KdxixjBhZvP3AmfQzsQBDlJQf2fDGg/YXi4C4Z3TyMGDERvdiUkezbC8
 ifkY0riGfot/Zv/rMDKwcE5k3hY+MD1zap0S3v2A/PSUQue9nofOe6ZFw
 V5dRDV6UTvoz8YNS+hD1uNaZu6ElhIB2BDSZsVBIlG5a+wNSfWdrfAU1/
 zvKkiy2a7GPd7A3OzRvNRYXwtlGTAswPnLcqodlgzjQZLwAvbYXrC982B
 KBBnb83QMr7VYzRz3cS3Q1Gr7zY/KTZvk79bjiYA7KJ/3fHI3hQ81wimL
 Zkn/dL6ed8aSYVoe6FIeuBlYmjoY36cuHQhMwjni3il4HO8WVrM4gh5cz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="323752620"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="323752620"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 12:49:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="1012401210"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="1012401210"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 24 Mar 2023 12:49:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 12:49:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 12:49:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 12:49:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CIPcQGsUDV7fjB1/gx4ep17uhonsEYxiYmOYoFkT4oPJpDZcIWkv+Z9TRq4dvdrjs/7pI3N9sAf7UI0l6VoOPFAtfxxv64dUvPk/7ZKXEJE1nOszQFZSyjxX1ysv0UR/xvB1eB5bq7/1GEZ/uGtSue2NSQapcHgTOpkhv+xurRMGQC7/rYY3QxMkxaRExhPMKnB/Z6q4Lt8HoLv7p4u1NpVpO3Ngg43hGB4/3Wvp2l43pjg42zOd/Mgw7/E7H2HoBOd/8fDYEqNaekNBDPPhDNOI7iqFSubK9wVyvFCxWHZis7wgw7TzYhbTT+baGuv8PHflhY80z4f0lLIaqAoAOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/LUt9ZUNCy5X73IeNNyN6C7Fb9hRvaWPZ+glUm5FpMw=;
 b=lHy6uf71rwFsU+StZKlwP5xSFSmF7b5BLGbK1/aV0Z18z/S8XD0ySFCHGbiNiW6vdD1OEYclsHjX3hqbkAepG4XN2/wMgi1dqAalq6gOqAjm7j+8707DWP9t3MPLkLgNlF3HLs7a6FGti6chwGbm98S+7BDYhAH7OFZmBBLXLcQzJyblfHodWVReGZ6qDbmcPFRZoxyfiVU76uRSiXemGBpnHVRcWjiQxonH1qF7g7syDJIiWTG/belcrpMdh75GB1qLz+UwKY6Qyu6anwUtHT2bTgfVPIiYBmt7mbOSTfNh3dzX/iSQ4Cv+hsGlHgnvo/Vxq9uZXSVnmP0cWyrxJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA1PR11MB6323.namprd11.prod.outlook.com (2603:10b6:208:389::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Fri, 24 Mar
 2023 19:49:51 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 19:49:51 +0000
Date: Fri, 24 Mar 2023 12:49:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <ZB3+3KndWkqSsqMV@orsosgc001.jf.intel.com>
References: <20230324180253.4182375-1-umesh.nerlige.ramappa@intel.com>
 <167968339951.30854.6983228257413970419@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <167968339951.30854.6983228257413970419@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0063.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::8) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA1PR11MB6323:EE_
X-MS-Office365-Filtering-Correlation-Id: 61ec7501-2741-4ce8-9143-08db2ca0ee15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KIPUUK/xhJIi9hYIl/Y+uyg5jp8EwW7ha4azh9iPLgyHqV1Jilbm76tbPiM9RHzuSY0wAhxn5loPHf+93qWABP92+gWbm43bNMX0r9sx55u63wHjHQ7+LbI7U9KVIBYAS2RI16TIFl0IBmxrc9i89qi2eNvWciaBculU87WhLuigEs2R5XOIFi4xjrINTQqDAAh+dMl1HlWE9h8gyeQLI6vknave3dGSitk4j0FfVciGAZsSL4HuZ30MaYrYNkrVrwFEbkR+QhzwM+a9OpHw7NXMm/hOaYFn74KNxU6ixfYecQYLKCbhqRebe4kRSeHn+CmVtxroNzYSZyL91diRTxPvSHMU89xrWbsmmyv4LhHVbfum9P9jnhA6S36IB1n4cCOgTnqAiFu6QerIPrnOf0B0UoQelMstPxi2YY0UsGEsuGhlwzlLdw3P3Jk66iZ2kvxKjk6aexKvA6r24WUzr6PH8VdEUAwy2I+ISS3bIsB/cEeOYZQL/yMD8AyKegyRnSfOZDQ9IDbUM4RAKCKIhYsGYkdDj6+kLhYwaOj3EzF3xLzD9G9CqlXDQWtcKKyuqL0RB/C2hs+gCGO+Y7DE35THVX3xqgD0nmsDxGckkne5neNacFeI+HebxvdEYAaSzvB2n+a54WwPAvOJn0lylbvpjgeSLeVfqMddclsfVU0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(346002)(376002)(136003)(451199021)(6666004)(966005)(2906002)(6486002)(6916009)(41300700001)(38100700002)(82960400001)(26005)(6506007)(6512007)(186003)(478600001)(66556008)(8936002)(66476007)(5660300002)(316002)(66946007)(86362001)(83380400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTVqM3lPckt1MVhrN2YzOUxiMjVaamwyejVSa2ZiMXVrUm04OXN0WGFGNEpq?=
 =?utf-8?B?ckF4RTBWa3JCdnR6b28zSmpnb2VWNTBweXczRERXQ1dsWUU1RXRiUDBRT09E?=
 =?utf-8?B?cEpmRk9aRm42VUM0S1FLbFFaUzlJK3NTaGh0T0V6dmN5bysxcVpBMEwwZDZ3?=
 =?utf-8?B?emExNkJqam96dWdqN2poQVVkMXB1bU05dVQwanBnVG90S0thdWx6SGJ1Wi9J?=
 =?utf-8?B?VXI1NDYreWZoRmFoUGxUR0tsNGNJRmtVVHBLd2JsWmtyWm1MK0tWYWsrZGVh?=
 =?utf-8?B?SXUvTGU0VFUyRzFOWmdaczRuQWV5SThoT2xRZERKVFNuaWR0ZnNVSVdKS2wr?=
 =?utf-8?B?bGZUaHkrbng4cXZVMlZPT2ZLZ0IzazdFQXQrR3RXbjk0N041bjZGZ1NIZmhB?=
 =?utf-8?B?OEEvUUwrUlV4bkZrdlNmSUtqYUFUc05Gei93ZC9scTkvM0trTXJVNURLNHI3?=
 =?utf-8?B?R0tGQjB3RUF2Y0hPK1ErWU5Bd2lZSEdhTFBpY2hmTDJqZHpxMkFvd1BvdWE0?=
 =?utf-8?B?b1cybU42dnVHSkxINzR5dzI5UDN0b2l1RndTVEsvK0kzRjM2NVVGNnZPSHAx?=
 =?utf-8?B?bU9wS0EyVkxBb09Ta2FYbEduWXh0bjFscDBMbHZDMGdRZkFieTFxcEFHQTBa?=
 =?utf-8?B?QXNma3hvOG9LTlJuNVBjc2tnQm8xMDhid0FGVVhiaE1ia1FOMU1XNDd5ZDc3?=
 =?utf-8?B?M29ENjVFRlIrVUJWUGcxZUptUVljZzlqMmRCS2FENGI5TXhLcGd6MHFzQmNV?=
 =?utf-8?B?OSt4TFM5YWRKZERrWnZvRjBrWDRVNkYwcGRHTDJTdUlENTRiaEVFWE40dFR5?=
 =?utf-8?B?cDVVVlV4RGdOQndqMzFrMzBuQnFZWUh0SmVTZDU4V2pCdDlVUGNTMWwyRTkr?=
 =?utf-8?B?T01tV3FxK0ViVDRmb3BGQUdmR1VrSlJka1c0L1RuYzNwSHVZdVpyVDVTL3lx?=
 =?utf-8?B?ZmI5SXIvN2tzU25WOFRqRnVZM09MZk84ekZMTExJckVwOGdGc1ZqZldKekdv?=
 =?utf-8?B?NmR6TElDcjVZQlNYU0pCQ1ROdE1KT0c4dTk0anlaV2xOaDNKQ3Z2WWNEaTVT?=
 =?utf-8?B?alFuQWRST0Jaam5JamNRdGJHV1hHWkU0T3BSY3p2bDVST0NQYzRDQU9LVlAz?=
 =?utf-8?B?Um5NdXFPb0p3VTdUTmg2cUJZTnVTZnphb1BPc0JyQkQzcENzK0laYmt3Z0hD?=
 =?utf-8?B?T1RrNDI4R2NnOUI5bXhLNWlyUFBlWC8yUlROMzBuUkhiY2FaR2RzWWtSM1Q5?=
 =?utf-8?B?anJOckZGTE8xNU5ZSXErVi9scUdkbHNkNjdOVUljREJUeDBiQmFhVThJNFNs?=
 =?utf-8?B?cjlOZnJSRkpLQjFEMGlUQTFpbUQyVm8rWDYxUDBtem5pZEVHdTVHK3dDZDRS?=
 =?utf-8?B?aUNGNEdXZ28xb1NWUTZ2UXVsam9Sdk44bFhPei9DUk40Q2FQWXlCUG5ZMDZ6?=
 =?utf-8?B?ZDVnNk53Y3g2b21xaWxIY0FzWXBZYXgwdTBLVkdMUWhReHFaOFFuOHRZTmtV?=
 =?utf-8?B?dU5YSnJwMzVobHlObGUzamJycldEemNVdCtGME0rS21LdUhwUHgrU1NDeTR3?=
 =?utf-8?B?bmtvdEhWRWtPZVh5OCtra2krT3BWVGdtOUtScU11Z3ErMlRUV2RHKzV2TW5Y?=
 =?utf-8?B?c205SklKdVBOQWd3NGI1TzZFSEJpVVVYajBGQkZCTDhwWWRIRFBtRHlrQVB6?=
 =?utf-8?B?QkUvellyeTdNZWdyalVWYXJFYk1xbjM3ZkdtZ1B4VGNEZnR0WnhVZVU1WVJL?=
 =?utf-8?B?YjlubjVxSmpqM20rV2swUXJ6dGs2RE14RGNKSVJDQWZweUdIcE5WN1pndDRR?=
 =?utf-8?B?ZUVNNGw5UCtVajM4ZnlHd2ZDTmc3ZHFOSTZib1NqMGtCdlN2b2MvN1d6NEFo?=
 =?utf-8?B?NnVhcmZRcjN5cEgraVJnOFdJbmdiLzJlTGNmZ2EzN1IyTG9OcEtKK1ExRE9Q?=
 =?utf-8?B?VEcxb0hlKzlFN2kwMVNCZ1ZWSjlPaFk2OTg1RU5ieEptS2JMZUFvQWdtTk9k?=
 =?utf-8?B?NFhRNUZHYVBzOHg0SnMwNnNXS0VkelRxejBlS3ZRWGY0Y2ZicWFCc0Rxc0Zj?=
 =?utf-8?B?UWUzYk9FZzhDOHhPZUt3VFRQWjdoazFVMmZEV3ZoRGRTTUpsV0syNWwvT1lY?=
 =?utf-8?B?N2tCZk1tTVFHMUZHcEI0OEIxZjNXbjdMS3Q0U09FZnc2TmJ5Z3VNNWM3emlN?=
 =?utf-8?Q?74lZFCxd9/mvyT3jP/K90OM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61ec7501-2741-4ce8-9143-08db2ca0ee15
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2023 19:49:50.5556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a3r6Q3dc9UlrP1ADr1LMRMXc+ycoBWh1bJQrj3LtmAQtTMWfW8DJTH7HQSeb0hXu2R0UMOloLIeFj6ILxPTtAoeW9Cz+Yuri8oCkdN8KQFA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6323
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Disable_C6_on_MTL_A0_for_media?=
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

On Fri, Mar 24, 2023 at 06:43:19PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  drm/i915/mtl: Disable C6 on MTL A0 for media
>URL:     [1]https://patchwork.freedesktop.org/series/115610/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v1/index.html
>
>          CI Bug Log - changes from CI_DRM_12911 -> Patchwork_115610v1
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_115610v1 absolutely need to
>   be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_115610v1, please notify your bug team to allow
>   them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>   External URL:
>   https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v1/index.html
>
>Participating hosts (37 -> 35)
>
>   Missing (2): fi-tgl-1115g4 fi-snb-2520m
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_115610v1:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@i915_selftest@live@workarounds:
>
>          * bat-rpls-1: [3]PASS -> [4]INCOMPLETE

Patch is specific to MTL A0, so the above failure is not related to this 
change.

Regards,
Umesh
>
>Known issues
