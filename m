Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5AD5810FE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 12:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC1214AB6F;
	Tue, 26 Jul 2022 10:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1EC114B595
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658830887; x=1690366887;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=k/6wwxZI/a5WCRyYqhxIe+4mGOnLxSjT362+sNpKIVc=;
 b=BCle/s80I5W789yxRH4xel/ZmmSI55nxgvWIcQZgzcYJ4AdoZHvawL14
 nc6jbzc6MsFGgHDY/1+zweyOTQipG/dpOA3Wa7aLFpCZBpori1CJU+s4S
 o8QAtxJoY44BwlkEWHxoINTDPzOGSy3HSufCLOUULTn6cRgHaGaBhkOQ1
 D/xGpY/aixSSpBlUb4NfkhVR5Y+Oox+fid01skvZVHLDOqf0tEy60rr12
 K5M49T7b0UTxeAZgxBg8s7goOzuQcf+IgtkYoUeEkN8+bKe5HuxctLgpq
 dMj4BFHshmrc0CYB8C038X6fJhK6HTR0ANdccpIvfgwHlYLvl9Se/j51u Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="287930321"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="287930321"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 03:21:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="726489960"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2022 03:21:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 03:21:26 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 03:21:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 03:21:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 03:21:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VUOjAoLN9Gt9VZ6tMYuup1qfb9Fw0Y7zX/M+Xgi8CtG3ROQx5pts+ytaSsdX0qJT46wwb6vhwgJvjE2B37O6qt8tZ6F42M8Z8iJQ0KRcGAOqXi4AL6M1lAkWR4DyXMFcyeUlKbOt1hTwaSNw8KWQ9Jl8iM16tuXhVhXtiFQYtpmn/xqR9uyaBQ4H52erGBhjJnFI+BCZ4DEaUocQWGZcR+v0+2Jv5KGDIOLFZn/2eBxYk6w1rzx7Dj1rW8HOX6jXHlvfZ3w25NWCCqn4aYWANtns9CrMyoLZagKREi5BLa0RX6PriysHJc9sZfHGG2o0KRXG+yfLBctYCzH4x4Cktg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7StwyRouet2OBrluOwnAu/TQApfL6oLH0F2GBPWiWBc=;
 b=CUR24Lp6GNKUSvScxnwdO/BPdY68OhPMKKga0Qr8O6wvxgEJscXZDlIR8zmSmHNXs6y0Z23hzNcLk2Hy8Zdq/fM+4kLUGSEphv9mLcEsg6cpLym+JHCc9NPj9Qvm/UgxfahrKumNbnvmwOwlZ5z4ffMfsGizRzNVvug4ZyP+OrlM5FjDwtQV51HKZDr3dWejWCw+0IBT2QWpJ1Ffpkrr9/vxDSMRz6oU7BrLhN5Z/GiWru+uryov3agsX/2q0B7j0WdXVC0fKNx3OXJ2+I3FT8NJ0IdkzpZAqu7A0h+CP85ej8yJ9js4ye/yx11/uCzCpvuaxdTkdIgoj/MshyIO3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1372.namprd11.prod.outlook.com (2603:10b6:3:11::14) by
 IA1PR11MB6538.namprd11.prod.outlook.com (2603:10b6:208:3a2::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.24; Tue, 26 Jul 2022 10:21:24 +0000
Received: from DM5PR11MB1372.namprd11.prod.outlook.com
 ([fe80::bc9e:4951:a404:5507]) by DM5PR11MB1372.namprd11.prod.outlook.com
 ([fe80::bc9e:4951:a404:5507%3]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 10:21:24 +0000
Date: Tue, 26 Jul 2022 12:21:21 +0200
From: Piotr =?utf-8?Q?Pi=C3=B3rkowski?= <piotr.piorkowski@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20220726102121.jixa7fq6k2lcbu54@intel.com>
References: <20220725194105.4054734-1-piotr.piorkowski@intel.com>
 <165877833313.20164.15734365281835645846@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <165877833313.20164.15734365281835645846@emeril.freedesktop.org>
X-ClientProxiedBy: AM4P190CA0003.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:200:56::13) To DM5PR11MB1372.namprd11.prod.outlook.com
 (2603:10b6:3:11::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1f5b4bbd-4c20-4147-68d7-08da6ef09799
X-MS-TrafficTypeDiagnostic: IA1PR11MB6538:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fgcts85QMJ5n7OkgCKaCQ13jNr2mdS70RbP0ZDDnMgJYg7FnHhrh+Iz4hJdNdajI8MABlKWsZ/oeajRZRmxCm+GA6sylweXuyGTjAYUn+ckTc5EBtio7fHBMFHBsq+IiiLXuUs6/93M17kKlxcySfJvc3MYCEchttYnudzgDtBo0d69KdqxYnzgyc6eBXX89j7ZbkMXcgtQwhMNw2bFAPsHtYB7lSTSrlQ25GmNJrqYYI5gvVJaC4xFdbT5N/5Wf7bQrcH5cUQF1FKygGy+03/kIjo2kc0Z95qc9o5XUVi2EXLzCU1rv9uWiIHJzsxBRGlvpcDOUqrgDvzRRzWO4sr2IbriryFFtNtDwgXAxLm5IevH2sX6oTtCjOUbMdz0peuL9jTNd9PQOK8ThuBa/VcT6V2fukOUpMwj/QoM6DMc9nd6nVzH2DFAbAMSoYwELtcEsCWqUgtrxa1QPH/WJ7zBxwzFtkvOJJVTHXuf+e/ioP8zVBTZVQKx8m03WiAj6eq0AFsxmScTIEZTRL6uuzYkEJG0TsEI/n2coV99H4BR+K99igkAxL0YnEN15Ig7HC0X/3cuuUnMq3/TUMAERQycdHVwsWAr8QTA6wU6rxbbmIrWVKYlYnGZL2TN8QNrtvYwNMOw98Im3U96bmZUdSHpR8ow3dkoVuiAC5YgGsQqTQ4n04HtbLId0kUYzKAdN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(136003)(396003)(39860400002)(376002)(38100700002)(478600001)(8936002)(966005)(86362001)(316002)(6486002)(2616005)(82960400001)(66476007)(83380400001)(5660300002)(36756003)(66556008)(1076003)(186003)(66946007)(6506007)(26005)(41300700001)(6666004)(6512007)(6916009)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFFjL0pxZDBaOXIwaUhoRE1lWVNhWU5RbFdaN1g5Mk85ejUzamJucmFCOHox?=
 =?utf-8?B?OFBFMDhxNXpXWnY3R1J0UURhOW55aElCNXFmME82bVlJeTZzcjNsMW9GUkpE?=
 =?utf-8?B?VitMWEROdklPanN0ZjJ1RXJYTWlXbnVncVZOR1RTQ3VnUkJnY245RzNJd1Yx?=
 =?utf-8?B?TGprdFRuelQwMWFWZjhIOGZSY1pFWnBjVnBBQWR1Y2hvRkJRR3JUUERZNTNv?=
 =?utf-8?B?ejlZU0xETnlFUVBCVVl6MmFVSGdaZFJzeTdNOTl4bUpzWEhEd0JmR01hRThq?=
 =?utf-8?B?aFFsa0w5RUtxekdERzFnand4S2ZnR0RtQVNWUzFmVHZQSTRSQWVoVWtsNFYr?=
 =?utf-8?B?TUJXbE53V2V5OEUrTEtRNXhtVi9qNk14ZW1pMktWTXV0bExnbFZjVFJ6a1NR?=
 =?utf-8?B?Tm5ZOVY1V0NHWE5xNUpJMUMwS2N6dW83M243bzJUNUhRUFFoRENIVEY4dnBl?=
 =?utf-8?B?Tzc0emVKVWZjWHNLam1YRkVwSGlkTUY5TE9pazZITmVPUUFUdlJWaXVwUS9t?=
 =?utf-8?B?OTlFWGhWUnFma3l6V2RRdGVENjNqMmlFQ0lxZWNQQkhHYjhmcjljbDFmaGxs?=
 =?utf-8?B?YWxzSy9sYlJDMXlvR2Nzdk1sY2V2N1BEU2M4eklFbFZia1luQk5mcTJESGRs?=
 =?utf-8?B?UlpsK1pocmQyVXhuT3dPcVcvYXd0QnF1Q1B0djYrMTUzM09XNjZacHkxNmx2?=
 =?utf-8?B?Rk04T1MrVmFnQy9CY0wyK21WbElqbnJzYjJBc096N2ZpcWRIWW01OXp4b1Nl?=
 =?utf-8?B?Q3RrbFNUdDE4M1JDSklselZCWmczZlhYRWFJREpQL1V4blVoSVljUzUwZEJM?=
 =?utf-8?B?Qk9RbTl3SUFhVU4rS2NOWnpZK0l6LzlPRGhwSDJoRDVuV0tYWFdNREdZajJU?=
 =?utf-8?B?cGtjMlhENnQxcGpPK0EzcVZzQkFnbjNpVmpOTnJHQjZYZzQ4QWx6ckJOMlF3?=
 =?utf-8?B?d2JWNFNEd0tVaDUxSHJxNHYyQnk0TVRrMDMxM0s3TFQxY2l4ZDBpT0paQUdY?=
 =?utf-8?B?MzFNNXJpNDJNNzhUOVo4T3FDU1BKSmhFTUcxMnZjVHhNRzhmRTJvYk9obFBu?=
 =?utf-8?B?MGFnSTFNSXQwZk5vZmRsY0lWSCtMOERjdytPNU1JZjIrbW5RZk1sWXp1eGJY?=
 =?utf-8?B?RURsUTJhZUFYV2hIN3B2YXorYnRzWjFseDhmaTM2WXNYVWJWMkRCbEFlZzk2?=
 =?utf-8?B?bVV0Vmh3bWc4K0RzZGdPWnRRRXRGdXRrcGtrT3h2YkdicEN6T2k0emg3UEFi?=
 =?utf-8?B?TW11elhrVE81YThpdUZHVXJjZUROaXJiVFRYdlFiVzJ0Z3ExTmIxOWpUUC9E?=
 =?utf-8?B?ZWhnVUxrTzJ6MGxVODVudzBneHNmeEhvNjNob0J2L2thRDZRNllxTmZ2bDdM?=
 =?utf-8?B?bUxrQzAwVXRwRW5XQ01SR1QwcTR0ZzdQR1QxYVJuQko3YkN2dDk4OEp3Q1h2?=
 =?utf-8?B?RUV3TzhLc0tReFRiblBaN1hGSnhNa3BGU2g0UW5pZHNsRmczRWwyWDNndnJF?=
 =?utf-8?B?RDVLa0FPSW5jVDFkRnFnREhIQkRzYVhma3RVb2Z2b2pGZzZ4VWhhYVVraytU?=
 =?utf-8?B?ek9hT09sOWJsa3ZRcXkyV3JhaTlpRjBWZGJzd0I0bXAxb3NJUEVlL3FNdGx2?=
 =?utf-8?B?TU5nOUtKc0crK0RxMTJtUnN6SkVZUTZDNW5nNTVSanNCRkxDSys3OGxpNFZE?=
 =?utf-8?B?c01scnNLVmRudUYxY1JubVd6MjZPS1JHemQwZW1OSGg3QkI5eXI1VWVZVzZF?=
 =?utf-8?B?Qm1JWHhqNzJFRHliZmtpeXBSdSt6KzVvMEtXcnVpQzVFVUk2SmdYb1FiTDdu?=
 =?utf-8?B?MlN5akgwc3VKNlVNdGtoRk5tbTczc3Z2dTE3QmVQd29yTFJUUnFBZFlDU3ly?=
 =?utf-8?B?ZGw0TllCQk05cTRtSmlxR1lLUDN6cUYveWhhSnh2S0l2b2Vjd0dxbTU2dTJI?=
 =?utf-8?B?MVI2eEp0NFdyZUV4N0xDSFNsdis5eCtKRDRnNUZTL3dYUnNTcFcwQ2ZDZjJi?=
 =?utf-8?B?bklYKzRkWFZmOFZBNFhRcHU4MHA0bHFLa2l3WGtibGh0SitoOUhoOEF2T0ht?=
 =?utf-8?B?L3NHNjRpRzljT3grcUJLVUt6Zy9JYndWZ1QvckNSc1VBeURBYVFJN3M0bjZM?=
 =?utf-8?B?cURhb1c4bDBVRXJ1dndnNVAxQ1Rha0JNOWpnQkI3VFZob0t0QXk4SXFPWEc5?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f5b4bbd-4c20-4147-68d7-08da6ef09799
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 10:21:24.2997 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nWjXFv6xyBHuv/otPIS7Sgr05Y3pHRhXiPMn6DLF7mO6lev++ekE7Iu8zMiURYNcQJaamID/U6X6OVrJv8M2H+KpE4yTSR5qbC+JqTn6nSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6538
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?anitycheck_PCI_BARs?=
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

Patchwork <patchwork@emeril.freedesktop.org> wrote on pon [2022-lip-25 19:45:33 +0000]:
> == Series Details ==
> 
> Series: Sanitycheck PCI BARs
> URL   : https://patchwork.freedesktop.org/series/106686/
> State : failure
> 
> == Summary ==
> 
> Error: make failed
>   CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND objtool
>   CHK     include/generated/compile.h
>   LD [M]  drivers/gpu/drm/i915/i915.o
>   CC [M]  drivers/gpu/drm/i915/gvt/cfg_space.o
> In file included from ./drivers/gpu/drm/i915/display/intel_opregion.h:29,
>                  from ./drivers/gpu/drm/i915/i915_drv.h:50,
>                  from drivers/gpu/drm/i915/gvt/cfg_space.c:34:
> drivers/gpu/drm/i915/gvt/cfg_space.c: In function ‘intel_vgpu_init_cfg_space’:
> drivers/gpu/drm/i915/gvt/cfg_space.c:356:26: error: ‘GTTMMADR_BAR’ undeclared (first use in this function)
>    pci_resource_len(pdev, GTTMMADR_BAR);
>                           ^~~~~~~~~~~~
> ./include/linux/pci.h:1951:54: note: in definition of macro ‘pci_resource_end’
>  #define pci_resource_end(dev, bar) ((dev)->resource[(bar)].end)
>                                                       ^~~
> drivers/gpu/drm/i915/gvt/cfg_space.c:356:3: note: in expansion of macro ‘pci_resource_len’
>    pci_resource_len(pdev, GTTMMADR_BAR);
>    ^~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gvt/cfg_space.c:356:26: note: each undeclared identifier is reported only once for each function it appears in
>    pci_resource_len(pdev, GTTMMADR_BAR);
>                           ^~~~~~~~~~~~
> ./include/linux/pci.h:1951:54: note: in definition of macro ‘pci_resource_end’
>  #define pci_resource_end(dev, bar) ((dev)->resource[(bar)].end)
>                                                       ^~~
> drivers/gpu/drm/i915/gvt/cfg_space.c:356:3: note: in expansion of macro ‘pci_resource_len’
>    pci_resource_len(pdev, GTTMMADR_BAR);
>    ^~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gvt/cfg_space.c:358:26: error: ‘GTT_APERTURE_BAR’ undeclared (first use in this function); did you mean ‘GVT_PORT_MAX’?
>    pci_resource_len(pdev, GTT_APERTURE_BAR);
>                           ^~~~~~~~~~~~~~~~
> ./include/linux/pci.h:1951:54: note: in definition of macro ‘pci_resource_end’
>  #define pci_resource_end(dev, bar) ((dev)->resource[(bar)].end)
>                                                       ^~~
> drivers/gpu/drm/i915/gvt/cfg_space.c:358:3: note: in expansion of macro ‘pci_resource_len’
>    pci_resource_len(pdev, GTT_APERTURE_BAR);
>    ^~~~~~~~~~~~~~~~

ohhh... I test it with disabled DRM_I915_GVT and I forgot to add one header:

diff --git a/drivers/gpu/drm/i915/gvt/cfg_space.c b/drivers/gpu/drm/i915/gvt/cfg_space.c
index c22d3a388aa5..eef3bba8a41b 100644
--- a/drivers/gpu/drm/i915/gvt/cfg_space.c
+++ b/drivers/gpu/drm/i915/gvt/cfg_space.c
@@ -33,6 +33,7 @@
 
 #include "i915_drv.h"
 #include "gvt.h"
+#include "intel_pci_config.h"
 
 enum {
        INTEL_GVT_PCI_BAR_GTTMMIO = 0,


I will send the corrected series in the next version

Thanks
Piotr
> scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/gvt/cfg_space.o' failed
> make[4]: *** [drivers/gpu/drm/i915/gvt/cfg_space.o] Error 1
> scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm/i915' failed
> make[3]: *** [drivers/gpu/drm/i915] Error 2
> scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm' failed
> make[2]: *** [drivers/gpu/drm] Error 2
> scripts/Makefile.build:466: recipe for target 'drivers/gpu' failed
> make[1]: *** [drivers/gpu] Error 2
> Makefile:1843: recipe for target 'drivers' failed
> make: *** [drivers] Error 2
> 
> 

-- 
