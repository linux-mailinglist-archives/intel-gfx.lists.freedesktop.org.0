Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E33076348E5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 22:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D784D10E47E;
	Tue, 22 Nov 2022 21:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 723C710E484
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 21:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669151005; x=1700687005;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=asv6TvaeJxvuZxcpTOEQoLyodv3+sM651qR0awUbPcI=;
 b=nZix9LmEc2ZwZJ3VhugBjfmY20c7QxRx+J+rbUE+Ejb+6X9MjuLvipil
 DiGKj2un6We58tdN70G6dOe2SGucHYckDfGAgqE8bm3Okc8WiqZVPAS9o
 XUtBQ2QV1OMPa9hl0QLMyppGL2Mv2nCaEqrmgt4YI+Y1HzTYk8OWPSL8+
 ChjBPJwHNO7E5OH1rqkb+ecnRh/PGkc799xEOGzvpIQBeezcxEDE6546b
 xND23Lzmal5+clG7+BNo2azRfJ4BvGlozEXGmd5NbtTag7uR0IXohHoao
 sglI1xzIktt0Ec5dITamgA3J4jljsIS4MX65WC6ngWRUskOlULy1LaSMR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="313947160"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="313947160"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 13:03:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="592279464"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="592279464"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 22 Nov 2022 13:03:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 13:03:00 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 13:02:59 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 13:02:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 13:02:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ch0os/ti6+UGkV61jZKyuEMqes9P9pXZ7L8XsFmmgLYTIFhtv85sbfbQYUIcUXar4thBAoaofRKQd0EjrIf89Aj4ZOw9TDDvF0MV2kcm3Lvv+AF10A+U11SbbDTCqu4YgC+tox45nZJJZilh6inSLTMJ6hVvVnqsufk22g9GZukqYjZAyehWW8DO5mZMYXb4OUOOIyUqe25ap2CAlvi+ecPLHg5dxswJ8oADAmuU5BW4o5Mf/mTBJnLmE6xEnbFsQUApXS2ciXCgug5hcs8g90dqrjnwwHwGb+mUB8VqvR5Jn9eu7sQfYd169tfLE3YUB5pVvJLcgUGManxwbYjG7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0g4/fEQAG7mHoUy1+MPu4n8a7CC6QsKzDyheLbfkz1Y=;
 b=PvPu5++06HeZ2WfKtuWjFWwM6Ofb8pZnef2toQ2BZGV2OmCqjynA/y3tQXZcX1HTpd9dYPp+f2W+DfT+waV7rm1PTf3p/+LP8/mX2VI0HN5yfz2kQ0P1faks72m1pduc4DUioQmaMD11hxS7+cyRSa3gCRKer9CV4r1rKK88JjX6xLGkrkgweRiD6ZzTqssGmUBLXCpIC/LL1K8JuzkHZ38xnbsRyimpmJVfozZuykF1xlMlYi+PCFfk+36ldbBXfyCc6nZYgwWLf8eQEZifSapDR73QO/XDT8gpcdEKqTkAcfPOYhml5h9TUniJR2fNgd1s9wucG5XPBKjdpYNkdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SJ2PR11MB7597.namprd11.prod.outlook.com (2603:10b6:a03:4c6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 21:02:58 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 21:02:58 +0000
Date: Tue, 22 Nov 2022 13:02:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <Y304/9MbVjASfcr1@mdroper-desk1.amr.corp.intel.com>
References: <20221122121343.18136-1-gustavo.sousa@intel.com>
 <CY4PR1101MB2166D6D3BF6E094DABF5372AF80D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <20221122180543.4arm5bkfjjfvx5lt@gjsousa-mobl2>
 <CY4PR1101MB2166B4E880FEF54845E85026F80D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY4PR1101MB2166B4E880FEF54845E85026F80D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR06CA0060.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::37) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SJ2PR11MB7597:EE_
X-MS-Office365-Filtering-Correlation-Id: f98670a7-1b1d-480d-8020-08dacccceee0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0WML0G+eraAtOZC0A9vWjsL7HzrHOR7CSduf19ny/168xYbwnr/cq79XEXx4d19o8hHtprwZamih8ijlBf8+CHSWPtwvjtOI147x5Tur4mKcAPpK3LIJhfGW/IQi0jdeSLFHc+UQPqh67LtH7ILUqQLjlDB85cno/mvqqq7h8ha9gzYvx4rq01Q0OYJooFAIlA6Y3izZUk1e9hyF7YIJ0wdMfoazY2DOVd6AOK/gjPfqtV4mRKL9QnRmvtrka7eFJUtr7qM0zAJ62gw/qHL51gmAG+ifvtsBnzRn6LWd1uvbgcXcoLwegX6/1qc+xxPvr+vPbxXnHY6NRQWif5AJUhmeRE8i0bmRIQlgsK2xatqZOxp9AyIxJRDPkxqK9y2z8+mOO4X0wim25l4X9jeJbgtTAFjEbesLo+R23ALNvGBRmNXZkHnF0Zw0FL4SV5h4ucdH2tv1Dx5PdBi8AMmEriXRANmLfOQbd6uzMTl8dHPFb6SMRTTiukzSHkTeyiqLE+2wbZwLvc0jME/mCbcKbG8qsLIc5AgwPMNbQJglZlMbE9LpcWVdukSFuGabeARw1/VfaAJGCTxNnBWS8yXm7w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(376002)(39860400002)(396003)(366004)(451199015)(6506007)(6512007)(186003)(6666004)(53546011)(966005)(6486002)(478600001)(2906002)(26005)(38100700002)(86362001)(82960400001)(83380400001)(8936002)(6862004)(15650500001)(41300700001)(66556008)(66476007)(8676002)(66946007)(4326008)(54906003)(316002)(6636002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rCzCbYGXJh/Wpr+utleqU9rw43SOAETK1ho0dwzuA3HWsC5UkTrB5/PcvUWI?=
 =?us-ascii?Q?MhsvmvwJ323U3RNxYHj12WVMe2pjnMDZPREVwAy4WckMAU3X5WpS+m4OLuBv?=
 =?us-ascii?Q?ICKyk8nAL56pn/+nmuGN9jAF7qQZAtC9KEqUnFU8whUgN+Sw62SP9FEAzqWU?=
 =?us-ascii?Q?+8fTQmtFA8FOEg0Eh1sfzuJhwKL9tz2ICXVh6/UJCPbhJOKk19/5L1GJz093?=
 =?us-ascii?Q?+hgWZYHM/yCfD/vzgNgFPJHzudNCDGEXg/DOscVd2b6BkA4f1TAynVyFdLQk?=
 =?us-ascii?Q?IDP09HtJH+FwyuSfKoR713Gq5amOimkf9BW64zwrXuenkdPAMBUzsFqkK+rj?=
 =?us-ascii?Q?KIJ8HqvFM26p+7iPgCZhJinlXwoWP1COvkNbwWDyLNDJVSgjqwFbABYytC3N?=
 =?us-ascii?Q?Be19D7WTxPKM6xe1a9YAYrFJwpJU62VghZV8X6whCWSNoGLgSzD3UHUY1D4P?=
 =?us-ascii?Q?AyC1LJsQzy+QZM41kHFmM+Xkj8tTxe8+SjOi1WVDaAwvgfKiT3Yb/cNHjODh?=
 =?us-ascii?Q?YbhfxeU25LdXoJ9ZG2+MHg9GNuPHrUqSSy2IoOAYSJnYJ0Usmee7dRBFNn5v?=
 =?us-ascii?Q?QBZnkGNBjE+WTF9w7uPPWksD4Ym+a5UmUj+WCtyKvy2D+IO4fh6b/PF4uhl4?=
 =?us-ascii?Q?KdjsyrCPEinp9CRuotiM0h/rmJ58LLj133QMoZQrjULiq1bEvNayDTNdsinl?=
 =?us-ascii?Q?FcAMg35L5aKb2VRLagdDp+3w1bVCka0NsdFhBroG5B3ttasxzxh8jMj5hu2p?=
 =?us-ascii?Q?U2prJiLzSLournf4HT6XnyC/YDJAJ7i72LZhZ/VqbT7Oz7ewtjnmg69UUmrI?=
 =?us-ascii?Q?H5BDf5mmbh2vWhyZP8+C2oQctx9cHNRe1DW9bu1Tc8l9vEdQpBhtTnFXSnr0?=
 =?us-ascii?Q?2vGWMIFWZPSdlrEGxa3+jXMoWMC6U+3X5jyCiFmBgMvKRd8F1P05iR07QH/Y?=
 =?us-ascii?Q?qYQseQDbdaZwtdBfUItxue0RPF2LR7cAUV5jzoi5uysTlTx+9eXtFSDTc+4A?=
 =?us-ascii?Q?qIBNLFOypqBZ5XA5SgLFWu1qXRmJTKGD61kgiraV8bEa19e/Xkw5hg+DLQrk?=
 =?us-ascii?Q?h1b1L7DJ2yJLN7KLRn+BjgEVgyfwlTtruVhzCtqyE9gkPjxXkyzXapblEptd?=
 =?us-ascii?Q?ljLV+yc9e5gcmah+5hd+NR/qUfgylhs+rtw4H3KwBm3E3O7Mbu3h/uQRFQC8?=
 =?us-ascii?Q?0vTUWin/CCrSAHfiIyqLHtjYU2doD18EEVz8vA/7TTtoMPFfS0b32Vv+2vFa?=
 =?us-ascii?Q?ygCTjQigsw/IawXvDLoZEj18l/7eEnIjgXnC8dYHSylJwyVjKA2kRzGEt2gO?=
 =?us-ascii?Q?iEQYDuS621bGCbuWUET75m14j/7D3kYRVwPok1NUCK1fIm9rvMYe0qBQVcmP?=
 =?us-ascii?Q?5nMvBzXZMlUNwb0e56xsSNASbPgBASSFBK0faq4qZVVLCMWSAJzFM4eIQuoX?=
 =?us-ascii?Q?TkEsRTmHmu8WDZmlzOEw5bhInbXOftUi/AEfEsFBQIoGCMeQsiDXcRI5f2oJ?=
 =?us-ascii?Q?uM6CX9bKqK3faJ9qrlUyWmlAWrFymG1w0aTpKhoACtf6OKtVLczWYw/xx2Nx?=
 =?us-ascii?Q?Hgc5nfXMrIQY/HNfNEklOPZepG1VnCslyw43/3EkfIKZi31m+Cj5T3C46DnG?=
 =?us-ascii?Q?Zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f98670a7-1b1d-480d-8020-08dacccceee0
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 21:02:58.0837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Umh+wSm4pi63SrwMo3SJJ1UB4kkfrT+b+PVDEHISF7WCs3x7+0ZJ+eeOiz82PusjUdp0XmjNn85YNWzVdiBSYaWKU6dfDynZaEOMIofx8/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7597
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I replied on v1 of this patch before realizing there was a v2 here.  See
https://lists.freedesktop.org/archives/intel-gfx/2022-November/313046.html
for my feedback.


Matt

On Tue, Nov 22, 2022 at 06:17:15PM +0000, Srivatsa, Anusha wrote:
> Thanks, looked at the rest of the platforms in the file and the changes look good.
> 
> Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> 
> 
> 
> > -----Original Message-----
> > From: Sousa, Gustavo <gustavo.sousa@intel.com>
> > Sent: Tuesday, November 22, 2022 10:06 AM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version
> > to v2.08
> > 
> > Hi, Anusha.
> > 
> > On Tue, Nov 22, 2022 at 02:27:05PM -0300, Srivatsa, Anusha wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > > Of Gustavo Sousa
> > > > Sent: Tuesday, November 22, 2022 4:14 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Subject: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version
> > > > to
> > > > v2.08
> > > >
> > > > Release notes:
> > > >
> > > > 1. Fixes for Register noclaims and few restore.
> > > >
> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > ---
> > > >
> > > > v2:
> > > >   - Use correct numbering for the minor version (8 instead of the
> > > >     invalid octal 08).
> > > >
> > > >  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > index 081a4d0083b1..eff3add70611 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > @@ -52,8 +52,8 @@
> > > >
> > > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE
> > 	ICL_DMC_MAX_FW_SIZE
> > > >
> > > > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
> > > > -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
> > > > +#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > > > +#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> > > 							^^^^^this should be
> > (2,08)
> > 
> > The v1 was using 08, but the problem is that this value is interpreted as a bad
> > octal, and that caused the compiler to rightfully complain about it :-).
> > 
> > While the path should contain the "08", I believe the version required must
> > contain valid numbers and we should represent them in the decimal base.
> > There are other similar examples in this file.
> > 
> > --
> > Gustavo Sousa

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
