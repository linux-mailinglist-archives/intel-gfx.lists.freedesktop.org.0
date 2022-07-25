Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 936B55805DA
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 22:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E32A10F963;
	Mon, 25 Jul 2022 20:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B616210E5FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jul 2022 20:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658781644; x=1690317644;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HlP3/L6+5kwFYJ0RKMn0DM+9OWG/Pzx1ekUB+Q1fDxs=;
 b=XIm+kQWcbr3uTXNPiUw+P4i2m9noZkcy/JQDdiHPk34EUAj5K779CGDg
 l3fly0P6twjAeLw97K58CIM70BmV/Ijy99+KkgWxFc9Ubc2oaDfcV0Pkt
 wT3DNpjdDlokfBfc4hBeHeWcpD50iJKgO3z3/Arg8ujOelTraXZ2/Y4ZO
 8BcPCThB1EHdHwmHup3KtSoyEDd1H8P7dexY1exCSrYpzBrx14Bc46Auo
 +Xg+0JlCFey2X2EsVGSG63uv65fC75ZAN84TQd9h3Cu+OCksfXjJsbmZ2
 WrMzvHPM0TUf+Nj3Y25Z5BnfuoycGIPFMOX2GeJeKVpjdzVDcXnyOXFgO g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="349491935"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="349491935"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 13:40:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="702632579"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2022 13:40:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 13:40:43 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 13:40:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 25 Jul 2022 13:40:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 25 Jul 2022 13:40:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fDYbjgLBZFNd44v8Wu0O6I4hc1oRPf1JSbn5pZEnzAfGnge52AADIZB559Dk0rxqCE/lOmp/BRFugTAtMLkEYEnZ2inhuqcj7aZnTeNUFs6x5by8HO2SoyxSijKc+CSbByupxTZ4wPPWT7Q4VL97W+GPCFOsr9OZ/W7hYHlrXntppDdSooZ7P2i/LmjLwCvHOeKng5mUhG6AmESmVgE9AuZ2AHT8OZb8Rz/Z7XEgu3pq71O+xbv3UJPhvc1hmqVUQBEjrhJPtS2RHEmZ+Pxu6kWpucwTSfVucW1v+ClE26PSVZjd9qiOtUSyd0Q41UJ+ZYQKAy0BnInN5JVt05VABA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jVQiUkMASbbqMDMzjQyGVJqkfLk/6Y+Qx9JteNfOipk=;
 b=FNm7oJLFNaw805Kau5GtpyWOogF03HTPxowGEk5yEzXwyhaYyoJWX+zB3gr59etkWiCScNqih6UbcV/RRXW8GgfyknkcnucuxleAQM8xAubS4LJWAyNrdNhDFjcDrx3htfR6uuAq1pPObgxXVA0XZ7friN1QfgtJFc4v6zbjCNzKPV2/3NIdkd7J/X9paE0aLJDKosjQ3TsyT3TUm9/fK3pSC+TBoseD2Zc2zVlLwjCowKpT5KWIoAh8+j6NzjLbYxxHEgitOMzaLMZHleit+Gvcjj7JOk9zyerRz0vtNTBmp3n3dL1MeotVePmTwuo+HdYapcbk4nDsgAYCWa9oVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DM6PR11MB4283.namprd11.prod.outlook.com (2603:10b6:5:206::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.20; Mon, 25 Jul
 2022 20:40:40 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5458.020; Mon, 25 Jul 2022
 20:40:40 +0000
Date: Mon, 25 Jul 2022 13:40:36 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <Yt7/xBx+SLZMSP7m@mdroper-desk1.amr.corp.intel.com>
References: <20220721201754.534870-1-anusha.srivatsa@intel.com>
 <Ytm750lt72OSCuKt@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB21663B370857C045FB2CCF88F8959@CY4PR1101MB2166.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY4PR1101MB21663B370857C045FB2CCF88F8959@CY4PR1101MB2166.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR11CA0096.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::37) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c08dbf52-2933-40c9-b8df-08da6e7defff
X-MS-TrafficTypeDiagnostic: DM6PR11MB4283:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fTs87A/7qVZW9pfj1y6/R9Ax6+zFhLEY/sEEWNhQCdjQ6qd3KjYzLgDeRoeUUm3Y0BpYCfrZ4a+w3/NaaUd7aopFf9aGyDTXEhYZxfh5xSkYxF96BFtI4J3XQ1LO1VJhkSnNdfbMAKBZYtMTDHuMDg16vls32kf7WHegMFKmFjxJMebOhWQTwmBjqDL4fZAhnGRbz/DJIT/lkSOABa38oMnl5AaDqjtkHhxpZE163PYSOfaadh7fuOznED2bt4iPb8u04M7xVyvJYETz2HZH1AgvWR8Ef75jWbnqfqQSfhb2cNTy+1tI+N4vDDz/WYyu3QGaetBHeS+q+kkINoPZXdIuvIV7Eq6YMv+/3TYz7h0O+ggM8LpBAl8sutrancrOjHnecw42NPCeyBfTT2Gs500rQ/rnHfaENxF7Sd1crPTBuBOkFNANZclSLkQpKAGypWhTxcP2YKEI5GXYLxmgpA7kfPnzJlR8Ba/xqYERmeCJakDK58rIgq/gjqgozhccl3ezZEuVusuZjr1AtVm0fBfz4JDuzptce5e78N3zE00okLAS+iRmvhmy5tkMr8kslbXIF+kQyXXMco4Y2utNTi3wzePjBiRPO+GOhUQTAxaNIrxCjoiVH/iXGqBRb6+tTUF09CiwgBb1toSZrRTxCFr26H4rhnieHqmM2r/nprahL2GD7wDqYtUCicDpvP/yPdSGUeBe09GrTzNkTdAZH8SHoDB4Metu0XnxU/PVk+Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(396003)(366004)(136003)(39860400002)(5660300002)(26005)(478600001)(6486002)(53546011)(8936002)(6506007)(6862004)(186003)(107886003)(6512007)(83380400001)(6666004)(41300700001)(66946007)(54906003)(6636002)(38100700002)(86362001)(4326008)(316002)(66556008)(66476007)(8676002)(2906002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EkoGGtkihqPtE7sTLfVMPho1yKy48Qghx8URLk4UzRzQ0Jwyh4FwwJlRrWd/?=
 =?us-ascii?Q?GkjGI5Nwe834C7IixEVjhE44j0gh3pxeJwMBy4Gx5RqpGmrSu1gVrGeh4B0C?=
 =?us-ascii?Q?JI/NPP7Whyr054c3QLv/hCE4wNvdA9Y7uz4sc2AAELK1LeS3aqkNfFe0CmFt?=
 =?us-ascii?Q?TUiVc/XQcfzXeYmPxeohMWvI6Me5o48uJPv1nC0IaqPkIxirGW3MAo8q69Sd?=
 =?us-ascii?Q?PhbpU96z5PKGaQc4Yh9hiSDEkXXxj1H69rpAh0UmPwBEZOFH+hGa/usOKr7a?=
 =?us-ascii?Q?FtQqpQlAslZn/Vlx75SmzOTuJUJoNKbSIu7EfnZno9rfiZlE+SKSmLCaV5X0?=
 =?us-ascii?Q?+uVhomThgfpBMvTaWNrKyotVhV6xIqYhOtSaZlDF8Gg38/gTMYp0oHHWKScK?=
 =?us-ascii?Q?daRUo9FWS3ioHVpQwPMGCPX8zwV67fOZrQLpQoUXvu3sUV6ZT9DRzpENnYh2?=
 =?us-ascii?Q?ye06qUo8Q80z2Bg1FP32PAMJ7bnYob5tAob4CpoxIRivlAUU6C0IVdzSnGoj?=
 =?us-ascii?Q?kvHR4PBNrg8qgfr3H6BTM8vkIXI2ldqe/14E/eFy/fV1VJqcwt9EqNTPgHcf?=
 =?us-ascii?Q?sqiqMEkQ1T8yiNXs6gB0Dizzv/wiAX0cEULEvZg6H/ArQ+T/AjPx4cvZseSB?=
 =?us-ascii?Q?/xOObmRfhFR9RaTvZ8JXvlOwWF1SI9iY60051pLIHXIgW3XTOSdCPBoRE5T+?=
 =?us-ascii?Q?TkDNIXOWuJ1aH+YiHNU31/fUHthECo47wuQZ9oKBPdFTS+IORTOMpknPtrI0?=
 =?us-ascii?Q?W2IT+pQSOkTFbSBNjbD0bpQLiOIf0e7u8fuNUF+itEzhY0lNveOHNXfuQblR?=
 =?us-ascii?Q?inGZFM4vEsF71in7Rw1LOkUpKaHXTx2YWdpEAt6wBwIwvPMgCRSBQko3b5Bg?=
 =?us-ascii?Q?0pH65mTLt0WeXrGWLCqqlAgt/VpVBkvDVVG7MzJFh4d48agM/6kq8mSZFXH1?=
 =?us-ascii?Q?0gXbeSK1x9qRZehpkhCFA2TUU+GGayiK7xDsW5tb1E6xQWeGapf2INVcFnvk?=
 =?us-ascii?Q?N3q2XuSwg6d7a6iYisrlWD2Qe4r8c2+giLXkOGqW+bmTWUEgwyWMh/MtV1Am?=
 =?us-ascii?Q?5HkT3oKCkqiEr1gRMYm0NnRs1G3+nnalCGN9uENoQVftuJe3TZ4xi11pM0BH?=
 =?us-ascii?Q?LDB3xjY8yQ/f1IMkqGZgj2QVyLC99xf+Pon/a+QPXD1KxNUKotqyaGIH5GZX?=
 =?us-ascii?Q?/0CVbFHwPZFwAh5Mts4tFe0FpKUspdoemE35wMhb55DgBNhmOFGP53Q9wfzd?=
 =?us-ascii?Q?lQMlwbSxR/Ro9Z0vKMPYuvMnhrwBpKomPPG5d4IKUF2F+yJmxiLg5Bw9lR7o?=
 =?us-ascii?Q?HxyvGATdX88sZxH8Nt+NJpBTSHA1dJb6FuBGkeXY/7tFWgZOpTX4eq1HBYs/?=
 =?us-ascii?Q?WF+x2a/a1N5BTmxNCvX2XlrkJFZufIDyQCcWwnAs+RKTAcKj9YHBq01PfqCc?=
 =?us-ascii?Q?56r/9xxJcN9PQnLZbNz/TeGF0KK0a1UEftCF9T/hrtvtZDkRpBkcIKVJVzQ9?=
 =?us-ascii?Q?XvgkttxLmb6/T/MXojR0sOgju94LihDGK52H6Snv1p0u46T0vBDmf7DygEgH?=
 =?us-ascii?Q?LygJQZZ6kfIUKaMwboMMhrJjMiHH6i04HL10tEE2ifwYd/XGQmMiIU9BWNOg?=
 =?us-ascii?Q?wA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c08dbf52-2933-40c9-b8df-08da6e7defff
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2022 20:40:40.4702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7hjJREzD9noyke3BDJnnp4EUjyojCLVUMhnutzXFfbfKP4BYhff5NkeeE+XeUlFnG3sXHNuytagTJM+pQfwXl7AFQBSIKuKvmsy9fEFV348=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4283
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
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

On Mon, Jul 25, 2022 at 09:45:57AM -0700, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > Sent: Thursday, July 21, 2022 1:50 PM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Murthy, Arun R
> > <arun.r.murthy@intel.com>
> > Subject: Re: [PATCH] drm/i915/display: Cleanup intel_phy_is_combo()
> > 
> > On Thu, Jul 21, 2022 at 01:17:54PM -0700, Anusha Srivatsa wrote:
> > > No functional change. Cleanup the intel_phy_is_combo
> > 
> > But there actually is a functional change here --- display version 14 will now
> > (properly) fall through to the 'else' branch instead of being picked up by the
> > 11/12/adl branch.  I believe that was your original motivation for this patch,
> > so you may want to mention that in the commit message (and drop the "no
> > functional change" statement).
> > 
> > The code change itself looks fine to me since it seems like the traditional
> > combo PHYs may be a thing of the past and we don't want to keep assuming
> > future platforms will have any.
> > 
> With the change in commit message can I add your reviewed-by laong with Arun's?

Yeah, with an updated commit message,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Anusha
> > Matt
> > 
> > > to accommodate for cases where combo phy is not available.
> > >
> > > v2: retain comment that explains DG2 returning false from
> > > intel_phy_is_combo() (Arun)
> > >
> > > Cc: Arun R Murthy <arun.r.murthy@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
> > >  1 file changed, 6 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index a0f84cbe974f..b9d0be7753a8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -2082,22 +2082,20 @@ bool intel_phy_is_combo(struct
> > > drm_i915_private *dev_priv, enum phy phy)  {
> > >  	if (phy == PHY_NONE)
> > >  		return false;
> > > -	else if (IS_DG2(dev_priv))
> > > -		/*
> > > -		 * DG2 outputs labelled as "combo PHY" in the bspec use
> > > -		 * SNPS PHYs with completely different programming,
> > > -		 * hence we always return false here.
> > > -		 */
> > > -		return false;
> > >  	else if (IS_ALDERLAKE_S(dev_priv))
> > >  		return phy <= PHY_E;
> > >  	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> > >  		return phy <= PHY_D;
> > >  	else if (IS_JSL_EHL(dev_priv))
> > >  		return phy <= PHY_C;
> > > -	else if (DISPLAY_VER(dev_priv) >= 11)
> > > +	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11,
> > > +12))
> > >  		return phy <= PHY_B;
> > >  	else
> > > +		/*
> > > +		 * DG2 outputs labelled as "combo PHY" in the bspec use
> > > +		 * SNPS PHYs with completely different programming,
> > > +		 * hence we always return false here.
> > > +		 */
> > >  		return false;
> > >  }
> > >
> > > --
> > > 2.25.1
> > >
> > 
> > --
> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
