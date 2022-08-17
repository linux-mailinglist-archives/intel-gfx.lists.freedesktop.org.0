Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDC45967D0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 05:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B4810E4A7;
	Wed, 17 Aug 2022 03:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4317E10E4A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 03:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660708237; x=1692244237;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=psMKQj1BqfGTOvAV1quD2lUaPSmMqSDjJ4fTxMwIPk8=;
 b=lFm7djLC+X0baIojcNK15lS4xKpCwBqCuuPpq2KZUqaZ5I71t23jXyl7
 jbioCMyZ6g0CG6G/esA6NT5k64tVkQK3BoBdXlGsAJOh6GrpAEDx1v9gK
 0r2Hz+xYweEhI1Zr7UZ5JnuAlzr5mCC+8DZGCRcUeWvHgqkr+l7O+65xU
 Wm4wKR3zH47Bv0Ijfa9D/D6A+AJNhOv/ppS0xWCY9rapGKyF7c1vbsAA5
 ljBFD10SCleBye0dy54Qd+HUoEcSWsgK0HKme2avVcuPmt2NolmOmA5kS
 VHA0w1UPNS5TFxB1A15DimEUl/oovxxBhoTrNfVBXwT58LqiiuWwofj1F g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="291145034"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="291145034"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 20:50:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="667421390"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2022 20:50:36 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 20:50:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 20:50:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 20:50:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c7tyUyYlwLBDXuXYSATR+LBxfDI1ogIvqK4X/XF94ZLne8C+ckOP4gHoTBDVI95vdADbeUyWrbgbbI2J0zqdV1yFph3yKISGyRsm5soB9c/caAs4eE0+nACdnrVf0N2bOjiwCw+p3kd5jkOcKYKfQX+jKV2ocnk4iZWLqk3t4AWSD57IuenkGVm1+4X3FRDM8nZoqrRkMrYXm4JfI96WSPNwEB/eIiWUjZcXr0LwiCKyVY4lOdM4kW73mjc7ejSdna6uXHf3xHBQVwcL7ZnMTWIvvI0IuOkjp4wTb6VunV+3rplVKldb5SfIVFiWvW1xz+JrUSatFrozeLNY8ta2lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=psMKQj1BqfGTOvAV1quD2lUaPSmMqSDjJ4fTxMwIPk8=;
 b=NiyD7jcCm63urORdQaxYyAnw4/UQXdAXwypOj39EbhKVmCZh20SirKS+hzK5rGT7OFQ21RvqZ1vwypxCGxHNf5hkmFYc9vuefPdw3M5XCz3pVBdsd/6plG154voOPMMvzChDruSSOlUezcMBY7E0cFQ4/oxxLq30Emkt0gmUGwN8RK+ERKu4vWB+3Rus2nk/4LSl4kptsbfNyLmLKIvXUh5eISrNePtBLK0ZB3oq8KeC7XrPGWuWrhJ07cQnUhqpMYTIQahsssqtcSE+o1PAjphufzTIwScbiDE7jk6U4u2PoYJpQkUR1+aL8ye8NvxAOPykwPJUyLpKS7eddLvKbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM5PR11MB1771.namprd11.prod.outlook.com (2603:10b6:3:113::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 17 Aug
 2022 03:50:29 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 03:50:28 +0000
Date: Tue, 16 Aug 2022 20:50:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817035026.ygz6br2ept7lrczb@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <97a3e319f4c55a6d0a1f32a18dc25f0474d7b02f.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <97a3e319f4c55a6d0a1f32a18dc25f0474d7b02f.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0023.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::28) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 21074489-1dcd-4e58-e6af-08da8003a032
X-MS-TrafficTypeDiagnostic: DM5PR11MB1771:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jtcVGtSc7kkziDQvaUHaiBZvxRk4XvUBPxfEySCz8Oz/ak+IAeGa0vBF5yW22EHug+iHUv+FHjEuhIOKVI+wrCrJF8AuLjslcWH5iVszt87Iuy2HrLvLHdLvg2U5KR0RgQW1AQ8jZzUSkWAp5R6m90f5OrcND/yZMMVN7sFiRpM/IBG8/Dkyo1jfLMAGy9/ewT94iWdZR/GPIj+U6mweuJEU5hGcH0HBTYTGDboptWhK4VMdxGalAMR02HhQDId27c4MfpbzO5O3/GEI1dyDT7Oo9cX+3ZM+zZdXEI7voVT6e0vs4zv9TAksyW6GG0buRXsxEo7xZkVa9VjSROmVDtzZud5vT7BoDLCyD6YCQXo3mNACYPkVDVxjSeZ0x57mTdFTRQdKbys/JyffB7KZWBjXLK/6yqfb1OyRtVpQhgigLCdc5wcPLuiLpazV/6pdCmR7/npk8lGp2SlVUci1xrJzG4sJYRA1VcqbO+FasCn7auJg3Bhb5r/R69RQoQ5oSgyZsyZgQKuVTyv1Lyp+9DvacTf6sTpUPQ6iNMcRPEOlVGWAjv1BiaflP5grD5qZkl2TwfdzOulaZXFfeSi/9YRgRRHeLfjgSb4REZwIGEL35ibQqXGRqt775BxHT7dy6VVhavPB5eOwH8u3MhqHUlKEgtvlCKxMB4eyFwju7Gdn+EUKeBy7GYnUkLVRF1g0BfIu8iT2pTwQlx305k5EfAFkfLw+LhOdNwJGvDPX/qjN2mkTk0e8N9+Jb2/cfghR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(136003)(39860400002)(376002)(346002)(26005)(478600001)(6512007)(9686003)(36756003)(6862004)(5660300002)(8936002)(4744005)(41300700001)(2906002)(1076003)(6506007)(86362001)(186003)(82960400001)(6636002)(6486002)(66556008)(8676002)(4326008)(316002)(66476007)(38100700002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ccFlQDHkF9Kz1Q7JMHCZf2aJgmKJgZN+CdUkiKeyS+fgyM589EEWkyIFN18q?=
 =?us-ascii?Q?JB5BfOz4gmqct+b0zdlvG6HNUHrXzmSg/bygcS6aoUtdPUmYmxDYuIzia5no?=
 =?us-ascii?Q?N4yBWA0FN80eCc2ecTOLdGDVfJSgV4qeLbBlzslAMNYjKqEmA2cUO52IrIW1?=
 =?us-ascii?Q?/xYzSiDrGLgnmdSbKUGWLPkI2zbxjd3t6bkz37vpRKHJ/ez56oehxmwIHytJ?=
 =?us-ascii?Q?04Vt5Y+mu5DZ2oGvBk2fsH8NFKO5FFXLEUYPD5pr1Aa5UXjNuQhS7WoUacF2?=
 =?us-ascii?Q?nvRE38A+8vYMhxF1Cugm1vK8mJTfIVtw38MTTlr9aaotYAmtH3/ATghdI4fW?=
 =?us-ascii?Q?DJ67emkAefkt8h/6mf6wvkSdxWs0WTzJ/f84qbUxLO0IOjMU09oxOdwAsKbp?=
 =?us-ascii?Q?LWQz94hpE82jMDVw5yJ5b40b+0fXYxWEhcpr6EpdFgSgXmvO6HjT5cRUd/N5?=
 =?us-ascii?Q?ov2buoetib641Uo5m3Is561lR2B1iOU9xuXSWA4KEvwFjOua4MgXDB5cwMyV?=
 =?us-ascii?Q?u2Do8ZBUF72iKlV8KVpnjqX6IychD7RfLWxRDpIix5NocDtN2EKRI91vDwZD?=
 =?us-ascii?Q?I7vE4MfZxXFyncvqKLmlx0daGXhawWIPPbINTIeLhGVfBbcntToq9B9wuXc2?=
 =?us-ascii?Q?aOCYWDVJ4BLH8pLn4dc2D7qvqVHsYr+ugN9r6QqYtcoaIRfAPmC37u7TSYBF?=
 =?us-ascii?Q?QfpqePyrgV/ZB7E+beZCMR07kng12ixqxpNOggmQ7RO8fuQAfZ3L7uMymmNh?=
 =?us-ascii?Q?ATNJfKkA5MUlVEtVXLuS6wLSDY+jGMNggN0+BQKR+Vm5sBfiskHTOkT54SJL?=
 =?us-ascii?Q?U/kLrpUPNeU5TAI4deR+PNZzYjC3kBZ/gXffgHhoL9MllUMlqxgMT7Q3qr/7?=
 =?us-ascii?Q?MY1Nt2y6+gS7YnXPFn+8G+2avdDqXROB80Ib+98mq0HComOcuBnAf3LTZ/48?=
 =?us-ascii?Q?HtoemiMsf6sfu09oUPXkQdAZbqXUpgyW+kJPOunrWfR9GLS2ht/ncscRCtyp?=
 =?us-ascii?Q?6nDKlObNwMgzwK3Jqrr02W6LZJrm/h+vURsjbUPaEsslUUX6wBRIWJwZktX5?=
 =?us-ascii?Q?J2BnXpexb07LsTnYDk0ZzDOFSG/XwQ7Q9ieRioNgKgot1MCZssZbPK49lgnf?=
 =?us-ascii?Q?DmXLcIhKNnGGs3CPpmnTKjvU9Tc3AH0d2GTrgY6nfc/TVWeu4MKF+fVhQnK2?=
 =?us-ascii?Q?+4tfj5Y5XNHuE3F6YA9oG70We7LU9ETDrRro3bG6l8w8jhN1lOB64RWazloT?=
 =?us-ascii?Q?9GgfK4Ck/7jhhil6hSldt7P2MmHnJF8zu3n/gag+OKiR4X0n3FkZq63tIvqz?=
 =?us-ascii?Q?OgCqpNZuvui6oClFm/oIC5OHLOTpFUMwd1FXq5NgOc1nhADx3hpVreHQKLUJ?=
 =?us-ascii?Q?iuNA/Mct2GhHLuRvCUCj+6C/zPvzbDAQBnt5GtxG6/fZbxw2Z6U0VSgz1SMh?=
 =?us-ascii?Q?AzYikBSMUS+uIvptXwS9Gn0xkWZWxifH0XhJ5Q+mdB6fIYn0qTCJY7aSMPBy?=
 =?us-ascii?Q?U/rWSXx83C+sOBTsS9tclLbz1z7gmY6pKrt78ELzfR9VqA9RWJAIeY7DHkyq?=
 =?us-ascii?Q?q+36lgZSxBPiIhsNgRBB/Wr4DZZOYmP9KiG/Uvq91UmrD8uqz1OOyecaInA+?=
 =?us-ascii?Q?gA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21074489-1dcd-4e58-e6af-08da8003a032
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 03:50:28.9168 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FWMkRBzUol5I10QxI8aNl01Y5ynJMhILMzvtrJkToOz1JRp6gm4wf1Dqon2+wENH35f9fC/hwzk3xsWUA5KkNDE3b1ic5Snbn0tWrzwbJ7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/39] drm/i915: move wm_disp funcs to
 display.funcs
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

On Thu, Aug 11, 2022 at 06:07:17PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Rename struct drm_i915_wm_disp_funcs to intel_wm_funcs while at it.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
