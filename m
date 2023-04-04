Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCED6D64FA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 16:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E0610E6BE;
	Tue,  4 Apr 2023 14:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A5210E6B4;
 Tue,  4 Apr 2023 14:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680617723; x=1712153723;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RT2kxR1qM5bKHosxGWVihT4Z8uf8OIBCVQxnrR615Bs=;
 b=LnsHFyk3zeYZOIkjaUWJkzKADBIi3fr2A0IYqemT29bPDZlZZOC1aEn1
 uwZ84/ItID3oc1fklBP8FOmvJmzOVnmlk24ERcS5Jsbe0zzEsHlvbbLXQ
 VJsixMqEkTq3TRC1Qshzxb7oeys5U1bq7MtyVFRiKXoTXO6afDpdvJhHo
 xQAP+FH+pqax/m6znTPVFoWp1+Q3PIR7EhU0+FjNPNXp9WfWiLPoqeeNN
 EJX+27rT3lZo4dEAM0wAv4Ry7QkBZLa+25SVBxyteXvqOimD/8y7LE0je
 jYWEv6pdzigXlQMMVe6PuL+AqHJR4okZQSH+vfExVm1Dta5VpIUQxu5Dz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="344759622"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="344759622"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 07:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="755648831"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="755648831"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 04 Apr 2023 07:11:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 07:10:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 07:10:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 07:10:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gH1NXp8MG9v5o+ULF/BSU6Aa2wIs3Q99HTikSUZRAQDdYZp6G+Voc5GOqURl8VvddTXl1jOkcyU112QzaZgu+NwkH8c0tUjqm8AJQtCNWSnrBOcg+TSuFoAT4bCKeNUFpM7ybESQb9cr0B0Yr9MzQwWCuRDcZ5mWW0I92n/YPo+X/TV8X4uBTF7RwwVC10RXzCeXdF5xznOq6adBsxVyKW6ePxGdTRuJD1Em7+UHkVHv38F3Xq7d6eH97w433pBSAlrEOtGAS1pSKyvroCqE5/Qe2ieQwUYjyVqOWzkiKpmHeBtbVpxcPmuC8zCMcRlFYZZx/eN9al9B+yDKMdtbcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=poaLCjn+g/86NbgjKCX40F4ejPhwTp4Lgc+RpCGFcKE=;
 b=l6qbee4BqyC/efpPAQL/GNR0WbUnANnjzGUoACMRAX/dtwBYCi6B7L+0SI2dvbI9/00cBPCl7nflzLyY0IBeBs3/X1YPeRcxiaNPx/o2qUcUZyhXobjrq0lqMZ4gKPE0QHIx5MzbujrhQLFxOc7wLcWBkD1mEYfVpKb3x57492x7dCwFARw92T0S3HbBztRLSlnTE1UhPWkmXivdwnh9H+WjgObi9ItZXoZKJdoLzXtsN/pAPOR0q5tsAodIpx3/5huDd7YrLTBRfOuSMUIUBvpcfvCQ1Og/HYcL/SFhEGikPaNtx/1zESRILbN0kcb4DD2oSMpNEheC8ktAElrR4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Tue, 4 Apr
 2023 14:10:57 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745%5]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 14:10:56 +0000
Date: Tue, 4 Apr 2023 07:10:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230404141053.b2qi4deyus2it3p2@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20230403202437.1816411-1-lucas.demarchi@intel.com>
 <168061139110.5056.15908803129907670095@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <168061139110.5056.15908803129907670095@gjsousa-mobl2>
X-ClientProxiedBy: BY5PR16CA0027.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::40) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA3PR11MB8073:EE_
X-MS-Office365-Filtering-Correlation-Id: d4ced1f8-7b5e-4f83-b276-08db3516687e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W0/LCOyxkqDE8aU7hks3bPl1g0V+vRzvgLtSDVQAcMSCOa4SCaVKBrfTaGPYpBDU7z0jZzm9QcsLYUOzBRzdXQxUX7dG4VHG+o3ci0UZFtzZtFEa9mD4gqVvQ+R5sxJEjV+QXC/7vZMUrwBrsrW43p573CIvCA9Y1+hxIjlhSI3FrrzKbij0Vd4+/ecitUoh7O9k+QO6WfXBxxi14YhFrpUm91csGlBrePTVpXfjRjk/8YgZvQHwaeYG/8ifgznjLHvmxV/6w8jHP0N1YOjaryrL0ecWS3SDVM5i/R7ULf/qaUpmAyGnAwReTcheli92W+vWB84/lRyBR+0WfRYidp1Gky8nX5yHQKi6CBUOyKcO/iyYLWtvT4UGndtuVZAnEsr2RXHjMKRd8EVCQ3WshpKu1ZLqUv4QUttBCt6OyTjTLG2uWtn1dmvXY3bO/xt+BqIGJhxYBXCs+8DkkQEFrIzYnEra9TXucCkSw1SVKhLmdKF3rFe/GYZqv9VqIFSSflvkEQSZzEM25AwrCseXGZw+ZNQ6oFawVrcBVekZ3lZ8k+wm17TANVny56m1vWp0cwCDee7gJxIq8oPb+43bPyj2o8PZN0xn0iMsjoL7hQp7kVpLtqi3ChNTZQ7cqQFr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39850400004)(136003)(346002)(396003)(366004)(451199021)(186003)(6666004)(6486002)(83380400001)(6636002)(478600001)(316002)(9686003)(1076003)(6512007)(26005)(66946007)(6506007)(66476007)(66556008)(450100002)(86362001)(36756003)(41300700001)(82960400001)(8936002)(38100700002)(8676002)(6862004)(5660300002)(4326008)(2906002)(505234007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YSzUxIEivqiuhy2xHsghn5TQHqR/lh2u4KmtAwlOBLjuDxBHrAxi0+qCl+Sk?=
 =?us-ascii?Q?0/omJ7IXuovMT7QX7bQrvPCohKckCIW+ONCNgRYtqVQQayoluBtyCKEhIdqu?=
 =?us-ascii?Q?IuGPKp5oZfte0/5ml8OgT1TgwcZkyMX87Hz+6J79iFpe1X4ArT0+7sMp34rM?=
 =?us-ascii?Q?fa0I+1Dgi3uxCS4zIxoqvEB8FOo0N6BFD6GgRpxCTFNh6M5cB3a4WeRsieER?=
 =?us-ascii?Q?0D7aS8+05xit+JhsqFSy7DBfC4rFsv1xejC0XZnKCi23eB6oidk5NGu+czo5?=
 =?us-ascii?Q?cn3ZkKuKubitxiTILb8HThV4ebKJUWwfBv2HP6z8w/x2gng8zd9EjsO9cbYO?=
 =?us-ascii?Q?myWlmLI/Cfx0dC2FT2+BmVOpbJCMWzKKoqQ0ONA2K3UqanCxbaVnfpxBBMiB?=
 =?us-ascii?Q?drxqtNEdiJoSbAmX0U1BvRA1pYm4ZiJ9YuIN+Y9kQex0NosO38N5T+wQz7ib?=
 =?us-ascii?Q?sAYUvOHkO+KymMe07HA0mgfBZLA8cKpw1FtB34xI1hctY/Ya/mZd6EtvjQYF?=
 =?us-ascii?Q?CpCQhFhFYRLBShoxZWBgO78nK8VmCrlHWzVKIvgPk3FlrL+TITttTQ0EbP8G?=
 =?us-ascii?Q?+1qTD3u68NW8CVBPKOX9xg8ZthKkLMC+guM32572szvXkHaz8zaNDpC6v62N?=
 =?us-ascii?Q?fZiELrHWBrgRwddK0y9oG6muOWO7wsXmlKUvi4p9SVvnl/YE1chAr3P6pM+9?=
 =?us-ascii?Q?LQBRQ81qZUm6DbJGyz5TdpYComAOIVu6mN/XHvVsCtk4nEm5NuCfufL0GG7f?=
 =?us-ascii?Q?kMrJ31kIRc1pF0allTapcoYC5ZwfGMakf7R+kUJYW9TxePeNyvzKsPoUvF0u?=
 =?us-ascii?Q?4aWyT2InegNdhi7PxdnujeinKyfB142H5tIXTzKuoPtDKTM7HunK0cO+r/TK?=
 =?us-ascii?Q?s9/FUbdZ2Jmij40UVaoEN07BgjJ+/SpaFWtD04pJg6m+Jwkz2M4WvZLtO5Xe?=
 =?us-ascii?Q?EdF0uuGAOJyuhrfGv6RoGbp94udky6dFUx5RCGLztg9htT+0ALO4N9qpc1zh?=
 =?us-ascii?Q?1yqelgBKnf9o6J3lQOMvnbwWNCanuCTzPepau78TY6oPDIFSU4wuf2ALe3du?=
 =?us-ascii?Q?GxJyoPx+CFw27XUei3W26XcfNZ7sCqT1i5yeiISoVUaCjMcprIciX6yiRC1L?=
 =?us-ascii?Q?4Hnr/EpNSOiWF5iVhQ2cdEHy1prSe+O8NLXN8kNX8StcgEeD3hEKvgWLHNLb?=
 =?us-ascii?Q?GpRcnw/HcXUrZp4p6GkiJSioR2dWFeyY8vySiFiC/Ylza5tPYpXL2YmmzCFZ?=
 =?us-ascii?Q?Go+jnJetIGOEc2dTHPqUfMETlN6msNb8TSp5Fqi2iKGEayY3uhnTxbgSybt4?=
 =?us-ascii?Q?5UcIBTX2wWMlTiPjXcQs1/uKBpxUy1uky1ohzO/mx0zOEilCSJ9YCvrQAntX?=
 =?us-ascii?Q?fsZazG9+GH9xRfIoqtm1AlD+gZ8XWaP/81Uc0y5sn+gItQf5DsQ4dNYWPc+p?=
 =?us-ascii?Q?1DThjfkhc81Po8P/PTCpbjVhwgBaTwTXwSJcBtcFcNrneGp8FiFLcnAvD8Oc?=
 =?us-ascii?Q?Yl81OaLKZLNAEYNsy1OLiHUyZ8mAculnTgqoQn5TPquNP3mWiSXzqpYONTje?=
 =?us-ascii?Q?B3i176/hVVW7iEWEqhHvproiZH2TMFRSDxCR//DHZNRILaO7qdZhqUyQyTRk?=
 =?us-ascii?Q?hQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4ced1f8-7b5e-4f83-b276-08db3516687e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 14:10:56.3837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JMx3hMb/x/7hFTx3KcIBv/FD0+kiIoDeTUgxb9peWRyMjwEvFXC2zVYct2zWGvIpppY5mJeJ4l9OT01He+USPbN8VlKPUrvhnhSOwxc085I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
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

On Tue, Apr 04, 2023 at 09:29:51AM -0300, Gustavo Sousa wrote:
>Quoting Lucas De Marchi (2023-04-03 17:24:37)
>> Since we are now using unversioned GuC/HuC, it's useful to be able to
>> dump the firmware blob and get that information from the CSS header.
>> Add a tool that decodes that information and dumps the raw header.
>>
>> Example output:
>>
>>         $ tools/intel-gfx-fw-info /lib/firmware/i915/tgl_guc_70.bin
>>         version: 70.5.1
>>         date: 2022-09-09
>>         raw dump:
>>         00000000  06 00 00 00 a1 00 00 00  00 00 01 00 00 00 00 00   ................
>>         00000010  86 80 00 00 09 09 22 20  71 17 01 00 40 00 00 00   ......" q...@...
>>         00000020  40 00 00 00 01 00 00 00  09 21 45 00 73 79 73 5f   @........!E.sys_
>>         00000030  67 62 73 62 50 43 2d 31  2e 30 2e 33 31 35 30 00   gbsbPC-1.0.3150.
>>         00000040  01 05 46 00 00 00 00 00  00 00 00 00 00 00 00 00   ..F.............
>>         00000050  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
>>         00000060  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
>>         00000070  00 00 00 00 00 00 00 00  00 10 80 00 00 01 40 00   ..............@.
>>
>>         struct uc_css_header:
>>         - module_type: 0x6
>>         - header_size_dw: 0xa1
>>         - header_version: 0x10000
>>         - module_id: 0x0
>>         - module_vendor: 0x8086
>>         - date: 0x20220909
>>         - size_dw: 0x11771
>>         - key_size_dw: 0x40
>>         - modulus_size_dw: 0x40
>>         - exponent_size_dw: 0x1
>>         - time: 0x452109
>>         - username: b'sys_gbsb'
>>         - buildnumber: b'PC-1.0.3150\x00'
>>         - sw_version: 0x460501
>>         - vf_version: 0x0
>>         - reserved0: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
>>         - rsvd: <rsvd private_data_size=0x801000, reserved1=0x801000>
>>         - header_info: 0x400100
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  tools/intel-gfx-fw-info | 120 ++++++++++++++++++++++++++++++++++++++++
>>  tools/meson.build       |   2 +-
>>  2 files changed, 121 insertions(+), 1 deletion(-)
>>  create mode 100755 tools/intel-gfx-fw-info
>>
>> diff --git a/tools/intel-gfx-fw-info b/tools/intel-gfx-fw-info
>> new file mode 100755
>> index 000000000..fc1fafdf5
>> --- /dev/null
>> +++ b/tools/intel-gfx-fw-info
>> @@ -0,0 +1,120 @@
>> +#!/usr/bin/env python3
>> +# pylint: disable=C0301
>> +# SPDX-License-Identifier: (GPL-2.0 OR MIT)
>> +#
>> +# Copyright (C) 2023    Intel Corporation
>> +
>> +import argparse
>> +import logging
>> +import pprint
>> +import sys
>> +import typing
>> +
>> +from dissect import cstruct
>
>Since we are not packaging this tool in a way that dependencies are
>automatically installed, I think it is worth to capture an ImportError
>here and point the user to the github repository for this dependency.

sounds good. I also have a minor update to this patch: we don't really
need to remove the comments as stated below, it's just the defines in
the middle of the struct that are not compatible with the minimal C
parser from this module.

>
>Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

thanks

Lucas De Marchi
