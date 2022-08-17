Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 631CF5967E0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 05:58:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA34710E4FE;
	Wed, 17 Aug 2022 03:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4B110E4FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 03:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660708683; x=1692244683;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uV7dTlQuq64yzHe6pOzn81ZRXz4B3qZo+diMgRr+msk=;
 b=ifvohTNyEKDifAGYfMxtDNdlIv6mGN+zDqjFioM/fKYLB0Wna/XAnR21
 apMuRim16cYckeJqrVWFQqAGSpTbwSqpKJJsKLgaaWpXN9RRLOq5hl42F
 3UtXxeXTYUWfdsUqXXuzsGKkwj8jRk9JMGRaARCM2OadqwekeidnFPpAl
 zha+cqv2HtmSHBFLb2nOiWeoWPiqdXhqbmslQqP8llVvMHtnb1a6CpejQ
 N1GPF/YFi6eInjQzst0g4F/7QfOBCs7IFs6rhM4y1a+Nn0rWdnI155Mm4
 cgapn43FE90XAMdju7YUqM5RYZZoZu05RqE1OeykaHY0NbTnjHzcW6zv8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="272161791"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="272161791"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 20:58:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="710397888"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 16 Aug 2022 20:58:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 20:58:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 20:58:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 20:58:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 20:58:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gb4jY5dM/bSxDIOPn57Jn3vUi12B2lS6EU+2jgtWPEwQc8TJiCAh+jUS60+k5zMuQ3+8vlNl1GzghRKzQew02/E4Lk4CqV7pqq1e6Gk9upxGulXSgxm77jsCnWQ0yuJimMfgao1ABpsGO+ssY5XNXlpH7QsqN4ZAz/zUTBf5fMfjit8st1GXtW7MgqxDx4qLnuIRj/vWnbOii6AoBTfrd6QfNRapLabA9L4L1sk+RCyPc2ioLuf7yfJUZ+lH90Gz2skot1N7buaqb9OBExEcKFS/ALTX3o9VHNqI8jrcu1HXImceJAI4LuXRiVdogbyDCWaOXfFCdoKX2WpVEZWJLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uV7dTlQuq64yzHe6pOzn81ZRXz4B3qZo+diMgRr+msk=;
 b=O8vyv4mQ6iPDwDAzKTDLZorgppluZpRnd+dMJf+p2xVjUruLScgTZEZ7lKlihdwSoJBg+AqtR8lpUNk+z+kTZvf3o3kounJg33SXZ/Tk72gRxe7ipmZDTsKxJj98xg1tNxAj+aa1gEhOqk6SJ00RFbV5jDoF60lpqX9ZxCgx4FJOJOQO0LKAaFlYb05ZKJlvEsjRfFKI2mnRfNKKA6E50r908znNeMmWm82lowZr3L+6SRLigQWVZu1OU2HY9odfH23AZ0fv24baPjWYjCqRS8mBVSV4RBnf1Uzclcl7Y3GTMf2ZXKDthU7voq5cscttAuw7K31zD1hshwBVa4oo0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB3629.namprd11.prod.outlook.com (2603:10b6:208:f0::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 17 Aug
 2022 03:58:00 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 03:58:00 +0000
Date: Tue, 16 Aug 2022 20:57:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817035758.32bruwtrznxplpgw@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <b4e59508841a110f16d76a8da08ad94fdfd3a4b4.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <b4e59508841a110f16d76a8da08ad94fdfd3a4b4.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0036.namprd08.prod.outlook.com
 (2603:10b6:a03:100::49) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aaa8d2a6-9599-4cb7-5582-08da8004ad1c
X-MS-TrafficTypeDiagnostic: MN2PR11MB3629:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A+Vo4BzBg1nOnN1oALJvnUz7AK83+Kc/JuOmA/saibCbUPoJXMdJfhtEYyyj0e4UzRwTPzJfTOy7ukPJZL6ULj1QHFh2i525X7MzlVJYY7RaKBijV7vQyDzpUqlJBUSpGY2VIq7ZCUtWSdKXw4fmuZI5lsp06Nr2FIeCh7im+c9sxsONmvULnLgbyIGXzpBkCtxJOPsdwY5K0EMJ3O0aHpohiDDVuD/5pPRCVr4t2dAgdKmpd0BIHnvwPh8cEhjDNVRlczCXIiAEUmEumELM+FHtgUwxSQ7OwKa67fUZ5+l5DuKpteod7YjLkJOqGib1USWVlMfMTDwIRxMhlDfvtTNkqs2rfJQdDtKgLfs2cI/0S/0v8XKVarZWiqCS8bN/LbbVFyXesINs3+tVQU2/nUKKsJCiSM7boj+c5aYUaktayGvQqSSMt+Atl4ZsKiPB+xbYvrQl14AxPUypNIaQYTvtmCLVn/i+TnWrfoSpUxfoAWto/BoU9VWG8pqySlrppaggD7kouY5+ntvrRFffnQw8S6CmeEglytVkMu1pimA/mowkGsUrHqR6sFkH1XFHJt8+GFfRXCjdmfhh7wDFGdwsfpHbVsA+NB+OljlCW82kP9VEbqJ9FJrHKRPk/9MZ7H7eExRVcLkIoI2KYuTUXoEeoN+2brxA1QOaDcoEtUxBNYnypmpzuVG6wLXAvm4PoRYtvAgKlC8CU4AQc+j3n/nHS0886NxgdPmafM+z5MGLGKDfRDR160Z+MW0o4I6d
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(136003)(39860400002)(396003)(346002)(4326008)(8676002)(558084003)(66946007)(66476007)(66556008)(186003)(1076003)(6862004)(8936002)(5660300002)(86362001)(6636002)(316002)(2906002)(36756003)(6512007)(6506007)(9686003)(26005)(82960400001)(41300700001)(6486002)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3Ht+gA9iZvLh3WtdBiXImi4ZVwWGy3ishG0DTlMJNAJbgz3goec6GUaqbPen?=
 =?us-ascii?Q?SCHusgSFZz4UVNHQcfNLkDUIV9tikXStVXjefEtqV8K+vdF/Ygdr5UXVdCjr?=
 =?us-ascii?Q?gJ8omS55mulAVeBI/HgHVnOoXOmII16dmH4QE+GiBtWsa82k7UJjxOWo2IaR?=
 =?us-ascii?Q?i7iiP2j58QxAnFjC8t0yubWvka8fziL3af3uDAVRpr32gUZtWrwzan8ciCE+?=
 =?us-ascii?Q?ot84kSBFRM7cQ+3bDQdakZgtjxcV4Df9HIqtUyIA+1dwKjICjGR/8LvM+IdU?=
 =?us-ascii?Q?3xeI/pss9BybRmRE0vExh2LdfiJhmJge5jj1j1hUTJOuUjdNoQkNduIIDcs9?=
 =?us-ascii?Q?wi4TDFkAPwMF7De22Mqkn6B/D54Gjpgt/9FluMp/yufINsdIMfajvDUkCwPc?=
 =?us-ascii?Q?NgcmYKwa0oJ7SK8PhTMp43PoF6HnFwP1+kSxZiwYFc+BNm61WXeC97bEqZbm?=
 =?us-ascii?Q?2BI69qSiq661cz4quO6HYVid/8DmFa2oodMslHVYdGOaX/qRjpKx9ujNnlXV?=
 =?us-ascii?Q?N3c/ikmL1FYQr622xEIN9y+jFsVblAKlG6cI99vgkJV7Ji538R/qKnhTs6iY?=
 =?us-ascii?Q?M2zRCnf1xgiO0eISvHRh0fZxcw3+BPHFxmc7LTr8bCiE1cX7FmEK+ifuWHOx?=
 =?us-ascii?Q?Jqb6m+qjfoAYSJKZh9n7WSsyvHAL9QI+/vo6mQskfcTuLL7xsUwckX6qZZkT?=
 =?us-ascii?Q?BgdXXcszvUi9joNQ15flhf5+HDHQHEJf50EqqvShf8u3YfBLbmwC+xBXhSKi?=
 =?us-ascii?Q?auWUwLEItu5sgDffsCjfvoSMHb3GBTlbo4bxOFyYOKrJx6lsE/AEDZeNnkrf?=
 =?us-ascii?Q?2E0UHr6y9O6NttI6ncTPpNf4O8pCUX5ZB77KaO0z+FNQl4IBXnnjTkp8LaxA?=
 =?us-ascii?Q?m4G4xxm3Czec8pHC5M1jNIcI1+KXf9qXqVGuS8gOW2uHSKyZb+o5/w++qUhU?=
 =?us-ascii?Q?GvUvv5CBavkeqSYd/JDqXJlH1TIs2WjJHgSJmsUijoBTqBXennrq0VhsCcn1?=
 =?us-ascii?Q?t7ZkICFzHxuxzS3aTCTPJyqNmrZbexUpANiwSqlg81NL5g/qThimwEpEJ40s?=
 =?us-ascii?Q?alPrKmNvEBaf4+ih8yDW6O8rs22zwuCMEFRU6axJmfwMu4XCY8udLzpljGRw?=
 =?us-ascii?Q?D7galHWxiARvLNV8AI4XF25vF0/Egc3RcL47xvvI8GoRI0W9PB8k1vMzRVOD?=
 =?us-ascii?Q?+7wWrP6bhICekrJZDCo9m9lfA47YH15O771AdC3ByWcKuBmuqX95OIH+ijcP?=
 =?us-ascii?Q?GZRmzkGsiF2+X2SShKkhGi/H1YjcbAmaIo9jDob7Doj/C0sB72ya8LC+2gg3?=
 =?us-ascii?Q?LAlcOSolAJ8MY4a7kDH0xyVYnPMd5n5kNMMx4Tx6A9JVgkgc0C4CwLLjYsF3?=
 =?us-ascii?Q?QzWIiQvD7ZNfN2kB2ebXITHdVxrogT1vlX7fuX7r9SjufsU6aRsfKOYZrBDH?=
 =?us-ascii?Q?9kBzH5lDEr6oNK1VtDt+uOkm0KtFCfmCwNy/VWdw4NHNCr47xPxI+J2y7pK8?=
 =?us-ascii?Q?R3l6mZl3EnpyvFvSRPIxkpCyPlSuaLIc9sKi09gA6PYA3e2zKlo2quBXp6Ew?=
 =?us-ascii?Q?xltliR7iwntQI1p7xL5HiBPi57A6R4D1uOcno8keAax+u+hrRfOP6gYampa1?=
 =?us-ascii?Q?OA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aaa8d2a6-9599-4cb7-5582-08da8004ad1c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 03:58:00.0917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XCf1TyP9jTidwhQOPTlBhXW5wTcvQqeUNef1ScUaVZgajGmcYD4tIGJoLP8zxFH0tJIuOR9DcwptJPRa1eFZwwH2Da5rvcbH5QDcm7+KjWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3629
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps members
 under display.pps
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 11, 2022 at 06:07:21PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>



Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
