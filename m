Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FFF7A94E8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 15:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EBCF89358;
	Thu, 21 Sep 2023 13:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ECAF10E115;
 Thu, 21 Sep 2023 13:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695304015; x=1726840015;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pK3PP5jkvpuZsHgn5f4j2/X3YEFfAV4QYTxLxG4VJzs=;
 b=H9HJnYJVqXK+dcXVhihDMM9m8zPx4LBSrD405qi5xCWszOnf8DsSVC+u
 4WZ3avPuWmgIMd9TrtEhy7PvJ1sfB/1K+zdrj6VgbZxnG+F1n+msdrE5j
 Hnkfz47gOKJIqBqExzRzXIxQ2Ug3f6OIZsQSjBxeTpKhbc7+dwNxLs3wx
 k2FeoE22h0lNjJbCp1pXGT6nYmyEDtoEV1CktwFC0n4+i2jwYp2vb3iKR
 e1zJeTcUYcZ8K1CUzKvi81r7SzE5mz1fWzSJ6sZEJHOpAZ/slSjV/3V7E
 Qgl6KjFSpYyjBJ6fGrvjsksgNwBHfjBKXZY7Yd9TbHkSmWnsmxfmZxCEp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="444636668"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="444636668"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:24:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="776412330"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="776412330"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 06:24:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 06:24:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 06:24:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 06:24:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 06:24:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XnNdDl43UajkAroy5LuRhUKyfJiM5hbjXOOQM6AbqkLFaVhxvmzi+r8yq7KD7B1DFpEtv27HI0AWYP5v2lkJF0xho4+TU7dRaCO8b8rjCobnA8Wc3jbiUzIcqW+duyjfWfV+EOWsYrsI0DzRKQziYLt7D2v4MlY17M7GSzY2fqoBc2HiEmyZLmceV4mvKesIzm3NAiueqO0bVU1X+THF2SIWaDUleqtmRE9AkJ3mAAyVCcxbvc4gTPEjtFBHuce+rN1Otwsk/gJCWfP8Q98w1VA4hl8MhPYIsJtClTGuyetexGIpEQjDh4wqrL445fhxdA+IzKmtqDOWv8pWUkWClg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZiLAQr7GUT1zQEE+x+y6AK8pyHGRiKtUyeAK4o5od5I=;
 b=POibSyKjIWh3xDPaLY2GlHVvg2p7K08jrV/G9H9+Hw1NtJ6OVbll2pPSAAOk7JATn6pmAFRKBzmHOpsyKGx1FCQ23myNymWVnX6SlbtBsVo2TxcMMMN9XnldJk+Yhq1uC79cOZw9B+db0pcF5jk1PW2BQszuj/wUo/N3mD5IRNN8ReWxOtXMLp6wlwWntsLQzoq9vtu5S+2Y2znl4gLPxszXTzfx7HXdpYtMs26uSHLvFMdZ+4RwPGf4ucFWUIjQIsgXAJZLkd8e1ZrPaIzOOsx2XTnRcJV3ZoL0wDVXa+XwkKARtKWE7OmKIMPJGxU0qGRL+boD43d+YAyLOyj8dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB4693.namprd11.prod.outlook.com (2603:10b6:208:261::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.19; Thu, 21 Sep
 2023 13:24:52 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6792.026; Thu, 21 Sep 2023
 13:24:51 +0000
Date: Thu, 21 Sep 2023 08:24:47 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <5ptq6smr5nkdpn6lmpvkttmy4bp6bxyna2s4ksx74z2wbw3yhr@r4iitctkpywh>
References: <20230904115517.458662-1-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230904115517.458662-1-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BYAPR08CA0041.namprd08.prod.outlook.com
 (2603:10b6:a03:117::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN2PR11MB4693:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a97806f-7913-42c7-9c93-08dbbaa6226e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dend3Zgvw27l0PlDJzePcyTqB7LzIzUGjQ17WBCODqr8GW5wwdWQfa8+D6tFc1A4J1s+4IvsoP+m2ulpz7AmwtMWyGXNlgZ43//8Jbvp3d3/kXOmeOpcLPEVK9icnlJtZ+wDaJL+Zx1xQVeNpVb0UYI3tMxuRj/eqlK5/cs4kPRE9c13PLSl7rlEopr1ItmQYaHab0j0wANq5QoulGbXl0/ZcVNizTsSPyHwc9ifk60f31YXdNWU84zuBFSMyh64PDQn9yeH64rzzwP9giAgaaZs10vt4oWV7G2UuWmOs2rM3l/aFNIFyRc8/BLvywBblIQvGvqcULTujr37J1Yy6Y51gi4ZWrVXjqba7VgzVT2/c2Gb74XC7EcZ3XHWPEEpIan0m6n5ssuZLKgg3ibT9g2jbwTTEcvlvzxA51e+AZzzvwPJfzZ5FOE0qtokghDw+eTLBEQkLymLSg2uocMf+/zdiqD/HYD7/x5sqWz+HRkT7Is83tpEMSNJYyNfdnNNIoe6V1vV40+rGioiEm1vbZQqIIfTJUUdMG83ZKyicVA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(376002)(39860400002)(366004)(396003)(346002)(1800799009)(451199024)(186009)(6666004)(6486002)(9686003)(966005)(26005)(107886003)(6636002)(66556008)(66946007)(66476007)(316002)(6862004)(8936002)(41300700001)(450100002)(5660300002)(4326008)(2906002)(4744005)(478600001)(6512007)(8676002)(6506007)(33716001)(86362001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ap5EwKKjseaMkSU8+rgisQxgowv2PC8+of3fndDzFDkqw+LhqULb96DNXHIV?=
 =?us-ascii?Q?RmuO643/K68ZadkSFbcfzzPFXQwYKxFdxbxMWXqaiPnFRqhoT1RPyRa1S9yM?=
 =?us-ascii?Q?6VGw5GOx1PoqGEdN9BRibMQWAh6FgepUvttdSon60WvKau8SslpazkzKLFRO?=
 =?us-ascii?Q?wAuYTfI/7hFepGIz+y4jhUt43sxXHrTGhvWwzMN09XTYpF8zpbcSEmBg1BIu?=
 =?us-ascii?Q?JLCdbOp5afHFo6xOk6avxaYOqK+cky1yN25mnuj6LzyHs0vaFOTDCyt0ChRV?=
 =?us-ascii?Q?LLxyG7wQQY81PQI/Furhz+MTMvJb1GKbazVVKM8iHSgSMAhWByVSvPlRiDpF?=
 =?us-ascii?Q?vZgSRfTh86uV8Zhu/ADtwSVWXIPZZoEYTvqvYhW5voVkCP6aNFg9vsF4TMWe?=
 =?us-ascii?Q?ynGZnPhr9ZedWt0r7bc1tFLIG/8rRtEaxw0j6eH1YF+e9bK7K2vT7A9/MTam?=
 =?us-ascii?Q?OKzLqiSKtMIGGSo8U8lq40mCB8um2eon7bfXbZ/6lzWIlpI5WbBRomBnsxlA?=
 =?us-ascii?Q?r6ex2r48ziuRcNm+llRsNcjMFQjz9RTJV1l0JBfUrGyzxuFFUb8BAKRUqdX+?=
 =?us-ascii?Q?pGBwUsTJH26yDeTdU4wBEt2p+HhgOqQgD7b4zBH2ruLXGsETuE9Dce+++Mcz?=
 =?us-ascii?Q?byZ4/qljypMJv/WeVP2baXO7oxWznWIp4bT+ocMat8YUL2nSicQaYaR5j9pe?=
 =?us-ascii?Q?HbNcLow7YTJEF3t5wNhRXLGahQdoq4sm4sNrSBUkigdubYNKMAbL7FkYMnlz?=
 =?us-ascii?Q?+lRqwgA1VkfK2pDjcSKoRkjY3iiyuaIVWr90V99H4ivSBeBZxHqrNsMX1MHU?=
 =?us-ascii?Q?0a7rKgsD4DpYloTsw7ycYdlrrP7/yjczQr/FLXtsi/uvJvehJt1SctpmpynF?=
 =?us-ascii?Q?qP6dK5EL2jnlHBNm1LDrB7mApjAaXdtbfujhQjm+N41qH6ztsdHK+sf0yvnG?=
 =?us-ascii?Q?qfmHNZ9Z3EUfNs4FMNMlUTMtTLOuNPNgWoOpd1NN6ZfaNaDA2JPO+5u/D7og?=
 =?us-ascii?Q?zofqow/D9ATAsdGf6lEJWzLUzxmIfjnsdmgFPmRkYgjiB+wxTssCZ1wPaydK?=
 =?us-ascii?Q?QfyD5tFiUYnD3X/6GmtRKcSSPBX28D684VNHa6khCOa+QNOLs761lHv+wSiY?=
 =?us-ascii?Q?OkcnnCtoUscsP2U/5w7avgdRlCNmgY+LY0+CJ9APbzMw6KsLgtGoc9Fu33m0?=
 =?us-ascii?Q?pkDYkoIB0pMOOoD8n2V1zZaZb+tVwlsEd6dmCchRHMOCvPPSY2TvxA1HcNBW?=
 =?us-ascii?Q?bY/Q2lq4gwniKENnUJoK4rbVuuNBstORn30Oqjy42lurnxfxUstVyfz90clS?=
 =?us-ascii?Q?D9xLJ0FY4L6rx3Cjwg7Qs72/ki2hfB3//gJH5tMbTI60sDur8+wety8EvdHW?=
 =?us-ascii?Q?eB6lvhC33vBMYAD4aHkeU5zZ2PpXzYLxCjXwPFjED+QTXv7cc/2zRYt9E33a?=
 =?us-ascii?Q?+f8vfoxYfXh+bdB7YkpNyWGROVaICe8DwvYd5ACMbGftkUT+ccSGGWqPOHpi?=
 =?us-ascii?Q?L8xhaqX8N3XP5NDQ49d/hVCcqMZePC7QHaE20FCW9DNIaG2wObQLkVBhYW9c?=
 =?us-ascii?Q?Jiu34QDIc2DqnOljnReKsal8Ure6oN6YptyH0hqCryGIEdavZZjTwhs4UrSw?=
 =?us-ascii?Q?vQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a97806f-7913-42c7-9c93-08dbbaa6226e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 13:24:51.0183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XPzp7A5iW6wueh2aS4OQ8KNCl5xdT/ygM760gFL5iFrhVau7OkrDpRloWhq6ieXZQx0tAe6BSPr9/r7yVAXUmp82IQXee9liLJh1tEgCbv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4693
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 0/2] fbc on any planes
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
Cc: ville.syrjala@intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 04, 2023 at 02:55:15PM +0300, Vinod Govindapillai wrote:
>FBC can be supported in first three planes in lnl
>
>Vinod Govindapillai (2):
>  drm/i915/lnl: possibility to enable FBC on first three planes
>  drm/i915/lnl: FBC is supported with per pixel alpha

please don't merge LNL patches before the initial display support is
merged, otherwise we will have multiple people shooting on each other's
feet.

See https://patchwork.freedesktop.org/series/123938/

	drm/i915/xe2lpd: FBC is now supported on all pipes
	drm/i915/display: Remove FBC capability from fused off pipes

Lucas De Marchi
