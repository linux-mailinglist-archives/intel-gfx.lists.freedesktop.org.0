Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE0D6D68AF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 18:25:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD0210E700;
	Tue,  4 Apr 2023 16:25:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB6E10E700;
 Tue,  4 Apr 2023 16:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680625539; x=1712161539;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=hx5Y6J4QLCbNzbl1+T+h5rsMUw/CeZ4Hi6qcg5zisUc=;
 b=HKpzPQ5PQ/lcp6DcBtYhHyl3z8iP4jyMPshQpMQMqL87Vv68JGYW9vPz
 V9mlqEKDEzppro98o+tYgE0xHfc1ySwaUFiAUVur0Tkno5ypdmlM4fTLS
 WnvFipVUK87+35cGMqTjxZgCzImOfJkJuZAHC5AACLT2yD+s2ccv5YXkh
 KeHwsZbb0ioItBEtadVx9C0WacKUm9HZaMJ7FZ6mYVDpGy+EKb+U0BpRr
 adacIqTc56oSKrmlIDsaWHqO0QZbq+j7jN8wWmzTK9CrXmHdFQDDHlKu3
 NkCU0Nut+7kqhcEHXtbmcr/snogaDFy1W7+xnp57zF7Uv3ohYcTHXSmsa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="343940466"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="343940466"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 09:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="686421667"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="686421667"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 04 Apr 2023 09:25:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 09:25:38 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 09:25:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 09:25:37 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 09:25:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kb8hi7LgVvH6FwldxV1LAlLHXCjsHsGRJ419OmLgnNKpQxwlLAfcFvuMcduobfIN0bPoExxgwbJlDUYA4hA6uf6sCbv5L49EMUn/YFpvKIs9GR4ahdWA82I5FPNM1xIO7El1GPVYJVeT2KYlhWgQCxDu+opKFKxdVn8BwTmu9ihUghYg0/3ZAK5Tp3GBT8hnZappS7rzHzS+6Tlv3k5OFHIDGM4Crj3Bj2Ybm/G/lY1P8F85Lyd7Hai0cUYfI6410QXy/7GWOZZwsBQ+1LeoO6XMO+P0vWe+FpgMYAYBv/QZHl1Bty67xjdy05VwrTrSaqqmlumstrJ7yeijs2b6dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fRXNwQ1h1elyHYbLJCK750QShYxpM1kvVd6xeDYTXIg=;
 b=Rb9D+mcTaup4YOqkeDnChAt+frFBpCeQWXv0WYq/GecYWbKWWjXCCVC+XxxdKfHS1CskqmxRDQs+e6Cr+qBSQ1sDCdAzVI4NrLr0jlJHGooycP8ZxREokA8zeyNsSnAut+pregud/YVUReFOJcX+CgHnbor1H0kF520FJuEE4PGoLSPazk9MzQJTXgoihF2ceuaMTfA7RqCo1BSeTZUGOwuCxVvmmHv8A3iSmG5OJA2GsmnyWMdKSZFfm/O9pEY0G5OdmJ94f/xmuZ+6CXOh+eyzH4xaAIxbpLlQKMOsD/1E1Tapei10RzNRywyvXeJSS37htx4iERoBWIVnKUeefw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.28; Tue, 4 Apr
 2023 16:25:35 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 16:25:35 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230404141053.b2qi4deyus2it3p2@ldmartin-desk2.lan>
References: <20230403202437.1816411-1-lucas.demarchi@intel.com>
 <168061139110.5056.15908803129907670095@gjsousa-mobl2>
 <20230404141053.b2qi4deyus2it3p2@ldmartin-desk2.lan>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Tue, 4 Apr 2023 13:25:28 -0300
Message-ID: <168062552877.5056.12977298157155798040@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR20CA0026.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::39) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY8PR11MB7083:EE_
X-MS-Office365-Filtering-Correlation-Id: bf6a769a-f779-4c31-05d3-08db35293810
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z+Jdd7K7SZwbleGrqQ6c+hc59n5aYnOAIJDevUmIdc7h7Fv6PqwrPeXRnevxUvjqlVAI2843EBnjCUsYK1fjtpmMMwtwS2bDeiw/0LkZTSZOA6RbmDFM0lqpUXSiE6Rl1SYynbkoJIHG+Kd/YowsTV+g1/IOjcdCyhkXCPc4Lyfw/4+nurV41XpJwZrWyD+lxa7WDJN5QT4FvBfDw8KdS7M+kPHyUC7+Dp8uD7+O5bzYnvYsAPAI5CGap/4an2Qj2koLIbPRDoGmVEy7Xi7bkYrpMo5k9B3fmMZmTda46L65N7NJ/EYUQcEMwHFsZLh0nD/f+Lc2MFWBtTZkJzE46bSOzsnN4P1sMj+KLSZVQxVd5EwH5LtvKYzRFsPtT76NQCttTHsz2QTG+7Ng1Qqm9mA7zi473vcbqAKagqExzOeyyHhQBLDg3em3MNE541iowHeb3KlaAfKzIel2kCetG6FLzFkev7K+q+gwkjlBiK4I0/kUK3r+W5gMY4Ns7vf+FyfwEJzya3gHVH9nMPFoPW94y8bdQi8UU4yv2euE21iistKtw4y1Qr3FzGOnlI+ePstOF5YqtBptOnxOj1e/TFUSnmH+K5F4tlUsnxSMKGQ51HYJg0WJYkd98bwRR8jF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(346002)(366004)(136003)(396003)(39860400002)(451199021)(86362001)(2906002)(33716001)(83380400001)(186003)(6486002)(44832011)(6666004)(9686003)(26005)(6512007)(6506007)(66476007)(450100002)(66556008)(66946007)(478600001)(82960400001)(5660300002)(38100700002)(8676002)(41300700001)(316002)(6636002)(4326008)(8936002)(6862004)(505234007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3N2aDZncVFSOUdlV1pZcEcxR0NjKzk2V3dDUHpMcVYvbzlsUXZpalpRaFNj?=
 =?utf-8?B?cFNHUVExcGovVHIrdXp1VG5DRW5ZRGE3MWxCZFZ5TFFoS0c5bkY1K2VleWRU?=
 =?utf-8?B?WVZHY2lyZlBQVGNUdEZoRU5vVlUwYmdkaStyRXQ1a01qZjhVTmlwTlRuY0xp?=
 =?utf-8?B?OFY2SkhWY2pnQ0ZiYVdNY3gxbW02My9penhUckZ0S0c4RjVYWkM5TVBrZmtE?=
 =?utf-8?B?MGZEWngxMklNL0pMUFBIdGlXRXVJY0M2WDJVTURKQkVXVlBXQTJiOE1tWGE3?=
 =?utf-8?B?a21kek4xYW56TkFMSmFvQUlmMGs2L0JCVXlpemVLNXdtbFVuWDVRakZIRGpn?=
 =?utf-8?B?WWdFUEhWaGlLTWpNdUo0My80OTRqcFFPUUxLakdnUFA5cTRzdEM3MW1rcE9W?=
 =?utf-8?B?VGh0UVRqYXdLYjNLN2o2K0RSOGMvMWR0UWtibjZxUUR2b1BSS1VwSUdRaURS?=
 =?utf-8?B?K2J6Q2F0T2dGK3p5b1oybW9DN1F2ZHBmQTRqUXRYanhKM0NKVVh1Z0Q3cHNQ?=
 =?utf-8?B?bHF1NG5IMDkvaXQ1L0RBU1ZsL2xWNTZPR2RrV0d4OHJzR0UvODJQWWREVGs3?=
 =?utf-8?B?THFTTHV2ZkhaZWJiYnpTWGtHend2a3ZablFaOVhQREZmemc1L1VaS3JhSUR5?=
 =?utf-8?B?NGU0SitiNGdzMmIxSHpBakk4Vmp0VlQ2ZEdYbE9ZZTNPYmt5ZFZzeWpWUUF4?=
 =?utf-8?B?SXFJcmdiZGozMzgyd2RIREhjV21UOVMzdU9remFSRXJqTjNUY2MxQXFmOEJi?=
 =?utf-8?B?MEdNVElNMFVlTmtKRmhCMS9LVDhXSkpJUXNpckRGMkE2TTE3eThPYjBoSm5P?=
 =?utf-8?B?YkU4R1lIZWpTRU92UmFpeXhjNHhkNzI4QXh5L0o4NE1WSWd3eE0rV3ltVjdh?=
 =?utf-8?B?WEY0OEJCWk9WMXg3NE1Jbm5aWjkrNE0ycHNTMnZOOU04ME5GbVBHcHBvaktR?=
 =?utf-8?B?YkRvcTRXMG4wRm9TdjRyUXRnWHJoWFB6NWZUQkR0SHcycEt0ZEtpeEJYdEs4?=
 =?utf-8?B?T2J2RlV2ZWJmZ0xlR1paZzZHRWxtYnZtbW5QZ1drS2JoS01IT2ROTUZWN1Bo?=
 =?utf-8?B?VWFqakczYWZ6eS95TEkzREJHYkllRFhaWXRDblJ2WWwzOE03enk2WXRJeENw?=
 =?utf-8?B?NEpiU001MlhmcGRlbktpWGVUOERrQjVtSDZKSzJneFFCRWhYNkdFdzNEOWV1?=
 =?utf-8?B?T2hUNDAwcm00RkwvQW8wajEwN3c5dy9hU25TQ1Z4MUJrZFFkTVk4cDk1dnJ5?=
 =?utf-8?B?eGRnR1VBQXZiczJFQTR3dUNSRkVOYzE0YzJmUUJLa1dIUisvenZnb0RkeHRy?=
 =?utf-8?B?TEJRdVpNbEhqVUFxbkRqU3RsQW1DZG5SUTFicnY5aWt3d3J3cmRsOW1hdTVQ?=
 =?utf-8?B?TzV5VSt1RTZGUHloMmxOb01penp5a0xVNklLTEtxbVd6YmZkK1B3TEpCdHRk?=
 =?utf-8?B?WjNXb3NEb3Z4ZCs3VVE4bzFldjMvSVVaNEEvbHZXYi9STUZOcW5DdmRhUyts?=
 =?utf-8?B?amk0bDUvYUU5TklzYzlUYmwrVlJNUmlTMk5GYi9PVWZZVkxvT2NnS0U1cTVC?=
 =?utf-8?B?aWMyMU90cUo3OHdZRlhCNFI0RWE5cGRiUFhkM3krQ0JIbVducG5YUC9pNkx2?=
 =?utf-8?B?YXhIQ29hajdoRXFFWkJNbGhRUEloUkZoVXliZ0RUOHgzZzhEeXZHVExSS3oy?=
 =?utf-8?B?clJPUnR2MVR4R01sMHhVR3FYeVlaMktqRjVtZCtROW5YVWcyOVlGYlFFMmR2?=
 =?utf-8?B?R05TdVZoYjJDTkFCMmxKRWV3UG1sT0pRaWVEU3JkalJiWk9pV1JSdXB2TXBn?=
 =?utf-8?B?Nzh0YXVubEVPT2U1Mlh5OXAzWEdISUIyS3FuenFDSFU2U3Z2MCtlMTZhMTJh?=
 =?utf-8?B?MUVLWTYzVGNlTUowK2dPU01Yd29Dd3RlV2M1UmR1SzlSTTh4SjFFc0JrczVi?=
 =?utf-8?B?aDBYUG1mazRhc2V0SHlBV3FnOHUwV0ptQW9jTHVUUExsalhJQkhyRFRLaEQ3?=
 =?utf-8?B?Vjk3a0c0T1lWS28vUVZlWDFhZ2pIMVdJYVRGaEw4cUFHNUp6SHYxKy9rM3pF?=
 =?utf-8?B?VDZEOG1FL0srZEthdVZ2SGxyRjB6NGVLQUlRZTZkWXE4VFpGeUgvMWVqYkNr?=
 =?utf-8?B?TC9vcmVqanpFdnVLUXk0T2thRTVNbUpBR3NYMnNhb05LQjZkUDBnZzArdGIv?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf6a769a-f779-4c31-05d3-08db35293810
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 16:25:35.5883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q6je7FmvtOX2RYYl0mXPpCUmhx/YERMPaIZEG1eTpkhc9AzU6VXr4yq4msxpxnUJ9WwSrPHfuMu+iQXOmY2ViA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tools: Add tool to dump GuC/HuC CSS
 header
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2023-04-04 11:10:53)
> On Tue, Apr 04, 2023 at 09:29:51AM -0300, Gustavo Sousa wrote:
> >Quoting Lucas De Marchi (2023-04-03 17:24:37)
> >> Since we are now using unversioned GuC/HuC, it's useful to be able to
> >> dump the firmware blob and get that information from the CSS header.
> >> Add a tool that decodes that information and dumps the raw header.
> >>
> >> Example output:
> >>
> >>         $ tools/intel-gfx-fw-info /lib/firmware/i915/tgl_guc_70.bin
> >>         version: 70.5.1
> >>         date: 2022-09-09
> >>         raw dump:
> >>         00000000  06 00 00 00 a1 00 00 00  00 00 01 00 00 00 00 00   .=
...............
> >>         00000010  86 80 00 00 09 09 22 20  71 17 01 00 40 00 00 00   .=
....." q...@...
> >>         00000020  40 00 00 00 01 00 00 00  09 21 45 00 73 79 73 5f   @=
........!E.sys_
> >>         00000030  67 62 73 62 50 43 2d 31  2e 30 2e 33 31 35 30 00   g=
bsbPC-1.0.3150.
> >>         00000040  01 05 46 00 00 00 00 00  00 00 00 00 00 00 00 00   .=
.F.............
> >>         00000050  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   .=
...............
> >>         00000060  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   .=
...............
> >>         00000070  00 00 00 00 00 00 00 00  00 10 80 00 00 01 40 00   .=
.............@.
> >>
> >>         struct uc_css_header:
> >>         - module_type: 0x6
> >>         - header_size_dw: 0xa1
> >>         - header_version: 0x10000
> >>         - module_id: 0x0
> >>         - module_vendor: 0x8086
> >>         - date: 0x20220909
> >>         - size_dw: 0x11771
> >>         - key_size_dw: 0x40
> >>         - modulus_size_dw: 0x40
> >>         - exponent_size_dw: 0x1
> >>         - time: 0x452109
> >>         - username: b'sys_gbsb'
> >>         - buildnumber: b'PC-1.0.3150\x00'
> >>         - sw_version: 0x460501
> >>         - vf_version: 0x0
> >>         - reserved0: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
> >>         - rsvd: <rsvd private_data_size=3D0x801000, reserved1=3D0x8010=
00>
> >>         - header_info: 0x400100
> >>
> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >> ---
> >>  tools/intel-gfx-fw-info | 120 +++++++++++++++++++++++++++++++++++++++=
+
> >>  tools/meson.build       |   2 +-
> >>  2 files changed, 121 insertions(+), 1 deletion(-)
> >>  create mode 100755 tools/intel-gfx-fw-info
> >>
> >> diff --git a/tools/intel-gfx-fw-info b/tools/intel-gfx-fw-info
> >> new file mode 100755
> >> index 000000000..fc1fafdf5
> >> --- /dev/null
> >> +++ b/tools/intel-gfx-fw-info
> >> @@ -0,0 +1,120 @@
> >> +#!/usr/bin/env python3
> >> +# pylint: disable=3DC0301
> >> +# SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >> +#
> >> +# Copyright (C) 2023    Intel Corporation
> >> +
> >> +import argparse
> >> +import logging
> >> +import pprint
> >> +import sys
> >> +import typing
> >> +
> >> +from dissect import cstruct
> >
> >Since we are not packaging this tool in a way that dependencies are
> >automatically installed, I think it is worth to capture an ImportError
> >here and point the user to the github repository for this dependency.
>=20
> sounds good. I also have a minor update to this patch: we don't really
> need to remove the comments as stated below, it's just the defines in
> the middle of the struct that are not compatible with the minimal C
> parser from this module.
>=20

Cool, although I'm not sure keeping the comments will be really useful for =
this
tool specifically, as it is mostly used to provide an easy way to parse the
binary data with cstruct (the only fields we explicitly use in the code are
"sw_version" and "date").

With or without the comments in the string, the ack stands. :-)

> >
> >Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>
>=20
> thanks
>=20
> Lucas De Marchi
