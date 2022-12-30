Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B471365985D
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 13:42:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814AC10E17D;
	Fri, 30 Dec 2022 12:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B0C910E17D
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 12:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672404171; x=1703940171;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=klIPJGFhPcuqRirnklRz8G8mlxkbr6nY1Z8lOgOCJ1w=;
 b=T3WnWY02zp9JrEn86F3X1VWbSQaubZRzdBzTyR9GuborQekJDb6YBD0D
 Q7iREoRnS7lXxEm45rAxOv6g2RuyRZ2RPa7nX2OKcxcAeaDkek++nchqm
 ablIl5Sk2eBj/cgyv8hMY2wQlD1lbJTiCd0gj9YY6n613Mzc5pDkCTbkk
 VzfWATBbKqDjL3lXNUCMckkTjuYt2TmledxxTUd8g+1SbL8Nnwl52JcdG
 cPxyEb6OPPguqsvsQsLTVTtbIgmNkLLHIAlGQMzw2TXxe/+ggupdIocTM
 wpXc5BMiChmKDymJQwvOgUwRrhKaw6/EVBunxe4KgRh1XINUuubkJdBfZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="308966138"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="308966138"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 04:42:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="761235892"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="761235892"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2022 04:42:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 04:42:50 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 04:42:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 04:42:50 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 04:42:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iJTkUDrK+u1eSzcRLldHcBMOGTQ004FDiLnSIOeax1aZdGW+/7nRrwJ+subS2T2T6dGh+uUZwGiWvJRVSTCmHOKCX+QQnazN7e/gninte/8LcDJPsUjBwOiPoWOrNfbvIMepSWZKibauWQDUbiqcNis3ehRipCzwL914diBqmtjp2zC8IdisYS5TlPhh3KB8dpulIgGMTPn8KdLNFjtp595SYh20Q5XkACelTaROpubgsoGPT6uYwI7sEtjFDzeIC7y0Vov10EkDC5MWWXljC/legszNpe4NFqcTbxCnzz7oo4yQyYV+g9wE1MypY5ngbi78/7sHjuKmyk32jJVtHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+jZKpnqz2AsZrXH3Cz1ErwqfJyvvjDszR4z0cZONBw=;
 b=mpsrM+0vC3tr98Fn4rJ4Y0/YgY8N7so67/GFFekoSfU+b1MFVMvTcWqDWNlkL6Mms/olKcvXHQWCog92wnspMDz/TwzQQmtlHJrhOFCn5sBx87gXGfUGiUzFrtZdb56YxItzWSm+0/z1xbVJ7HGaMdvVdMrTg/1LIGofzkoVmDZMG91d8Ol9mHMn9joIYhSg+OJjGtPo9dYpZrONSeyV/7bLoEvhpSnd7kzWS0qRF8GDhtcIR4rc7strNo/F00F9TO35tMQBK9lZ7pUm5DN7umRDLKOqqUJN8x0z/tRi3LeELrkSxW+cpBA0DerK5fH1zdwg5P/G3LvgvWTgFFAsRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by IA1PR11MB7890.namprd11.prod.outlook.com (2603:10b6:208:3ff::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Fri, 30 Dec
 2022 12:42:47 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 12:42:47 +0000
Date: Fri, 30 Dec 2022 09:42:39 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20221230124239.hepfnh75dhb5urpd@gjsousa-mobl2>
References: <20221229190740.45471-1-gustavo.sousa@intel.com>
 <20221229190740.45471-2-gustavo.sousa@intel.com>
 <Y66iKQ5aGdMzyVh2@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y66iKQ5aGdMzyVh2@intel.com>
X-ClientProxiedBy: BYAPR07CA0041.namprd07.prod.outlook.com
 (2603:10b6:a03:60::18) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|IA1PR11MB7890:EE_
X-MS-Office365-Filtering-Correlation-Id: 397b5e65-4c84-4904-a858-08daea635a9d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9dsqu3enrHuifbsvn6KqDhie3EFS5m4GqA1kqkV50eAg7kLv4eiZfUUr6R3obFU2h4k2Y0qx1h95ds5q6VLADdVTwKk/WMWqrybw7ICb36SXwRL+6g0qsTYna6sBXTcqTM/6asmE8lKwa8ly3PI3gkUxQMtDwNb92HqQUPoFMam2M5qDAY+kVsoS+mAZbwW9XbWy/N28EQke6yEVkWqvuT4cEvt8n5OPlgFd/564tffiCE9Zyc7Txu2ARnG3Ox9J5gC1Vj6sZJZkp+DI1zlxAJ96eFvqXvIrNjqtRuvDba8yzn/fmhCaCIfSZLDIbqZQUPXsYXktPrimKMZpiWlzFiUa+qH+BO0cBsf0AkUz4V6CXMeleuB8w+Xz0OKCxpRkbUAv1ynwOv2NIjpmNM1R703b8OQ1Q/KZENRZyfj8Kq5dUyeAsfK7wOTGTTUTig2c3dz7QyF6jpp8qbV5uqeW5zCEVAeHhsUDbniiR/K+wTW+JW8FREEMn4mM2jxOPy8lZigbVBfzVfnmEdLnuPcFMORpqNYJLE+FV/SxAK46noXPbCdo/kK14sDtQqU18FhMgbLQaU82RGTOxHVMMKfyorqppB74LwdKbKOaHsWhl4HMe/vSFG62/Oq1ewcc0oIBCdQh/AyS7Oc45TzKvKWgRPLF6QMxt5edcuBidCGi07nukR/mZfRhJ/6pjIpwoskD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(366004)(39860400002)(376002)(396003)(136003)(451199015)(41300700001)(38100700002)(6862004)(8936002)(4326008)(8676002)(83380400001)(66476007)(33716001)(66556008)(5660300002)(66946007)(9686003)(6512007)(186003)(44832011)(478600001)(6486002)(26005)(966005)(1076003)(82960400001)(6506007)(54906003)(86362001)(2906002)(6666004)(6636002)(316002)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W0DtzcEb1me5fMVal9NXS6hBBUjE/BEMc1yHfd5VSYbJTUipKHlQamDbMM8B?=
 =?us-ascii?Q?Ws+/MKdUlSReTY2yamGUF9CpVpTEKm7t+4L4C5C1u97nEsqAQG66k+0OAEU2?=
 =?us-ascii?Q?TQTcUFEiwNcOtR4rkR/JFDg2SIk+KVNar5S3JMehzaRm8ht2c/hQ33tIIXkz?=
 =?us-ascii?Q?yEdjuOk7ebEoX4ozxZP0JOuJvlh6kJtE/jDV6kjH816nkmgYAb8EWIeYX8/W?=
 =?us-ascii?Q?Wa2Mkl7XLAx2kieGHKu7HIrCEmBKIWq3VDl+oAHkLDqWiDA5aaBROh7WU5pa?=
 =?us-ascii?Q?IvMyK14g9b6UqFJbf54Brw7tpCR0kIzXkcRGwlFyLTRbil462fvocAmRuOs9?=
 =?us-ascii?Q?aZYg82stwraR3axW1rVBOJdQ2Qn2JwqP17lpVEf4NAJ6AqiFg3Qt8drgBbKN?=
 =?us-ascii?Q?nxwXZAOnoHS31tfmsSEukqDjEzpK8G+F+Fblk5NFJmJmZ0cEykUNLjGnMlyJ?=
 =?us-ascii?Q?0jJvRrF1lUz7Y950MkpPmhlpQAbQ/UsrMA4c3dzKc28TjZdwZHH3W71dRuni?=
 =?us-ascii?Q?/xE1qfimrtq5yn2eR/1/rvhCtHwqOBO7Q8LT8pQtGTIIA+JFCO+OqWNXHuu+?=
 =?us-ascii?Q?bE4DY8Vdmn11Mg1XR9q9mWix8mNFx5t9vDaZckTY+Wg3dsN1xwiq7z689FpM?=
 =?us-ascii?Q?RfqQJAcbEN2Guw8ZUy9zZDtZDxBukNQw27j1/VBnLXzXmspJHMpCfVrmVZkw?=
 =?us-ascii?Q?fX6fpLdKXPN4Ud2rvNf9nDRAEZwpraS4lWp9zyQTf85ctDV8HWpNb0kT+IF0?=
 =?us-ascii?Q?22PyX42S/r3f5Yuv+2HatZOgjn4+fgGAbBI3/1hCTntvCKkioyZW4UR4s2gN?=
 =?us-ascii?Q?2Y6onnzlUd70uj2ZDr+Gs945vq1M4g5/w/mk+FVRaT46FXWIHfM7mjgRzImP?=
 =?us-ascii?Q?pmgRRsCv8CZdm4m+KF+dU/0PNdhhrU3Gj4WF2xKHowKnrktERGuI12NPQo3h?=
 =?us-ascii?Q?wDH1354+2H9iSmZupmblR4Kki4x4YyqxXWi1vJoXujC0bQGqzVws+IEaOx+v?=
 =?us-ascii?Q?OmGMVLSAizpArhdkkZwYNbKae+UoD/Uv8V6694K7wB8A+4FXUVD8W8Jv9key?=
 =?us-ascii?Q?L2PdvmYpQiXR0vdC8jJDql/qA3d0fLZlaJXo9MkpFwurRkuKAJqm7mNUutZW?=
 =?us-ascii?Q?U7NiA6XmsjqJzwxjxKejJllW0fjPNorT94M2XpvOJyewbEfN5UTvYuiJ2bYS?=
 =?us-ascii?Q?SW2w0LbHxR8yCyJ8bv6Ftv0Qy6VKEzaKkI36up0paff5A001kBk05fkXOwIA?=
 =?us-ascii?Q?ApUw2MQNXPvN3hBSvk7iL79vs4zX6bhuE2n3dehwAEwO6ZGQrk41m7pXMIT4?=
 =?us-ascii?Q?jUy8h4OIasDixf1KuQMBjGEM0TH2PQS05vjMkTe9jawUOrC77Xq5qi4b5Opc?=
 =?us-ascii?Q?1ahVlQRcmwN4+0brTgnLKeBJ0WIG2lRSQK/cHBZ69DQohMNQvp4sNpJrlhah?=
 =?us-ascii?Q?mCUBEPgqVZRQV0dI2DUpu+AqQ2IEMPI6L1H1HhNOS+HRiUzwntXdUYFyBZTC?=
 =?us-ascii?Q?9PObgqg4u1fJukK5yHQK+0/Hq7Nx+JF2cyANKOqlUZt7m/LPyTb5Iap7+28Q?=
 =?us-ascii?Q?Ha/fwI3lzoLcrDVuz7NHTNVqPWbxsrsd5L2oHh4L+0rXXqyf3t2VZgr+4DKz?=
 =?us-ascii?Q?tQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 397b5e65-4c84-4904-a858-08daea635a9d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 12:42:47.3352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NTjOXmKAyXw/5ihEPDw4wFGg/bhQ7N6dlmv47VxBBilIGS7rbsZeEAS54ea44AMSzarfhi4ANcTIv1Fr+I53OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7890
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/dmc: Do not require
 specific versions
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 30, 2022 at 03:32:41AM -0500, Rodrigo Vivi wrote:
> On Thu, Dec 29, 2022 at 04:07:39PM -0300, Gustavo Sousa wrote:
> > Currently there is no DMC version requirement with respect to how i915
> > interacts with it and new versions of the firmware serve as drop-in
> > replacements of older ones. As such, do not require specific versions.
> > 
> > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> 
> I don't believe this link is a good reference as justification
> of this patch.
> 
> Probably https://docs.kernel.org/next/driver-api/firmware/firmware-usage-guidelines.html
> is a better link?

Yep. I agree this would be better. Is there an "archive" version of this page?
Just to make sure we link to the exact version of that guide at the time of
writing this patch.

> 
> Also, in the commit message we should be more clear that i915
> interacts with the Hardware and not with any FW ABI/API, so the API
> is fixed within the platform, hence no need to get this so-tied
> version requirement.

Thanks! I'll grab this paragraph and adapt it into the commit message if you
allow me =)

> 
> with the commit msg changed you can count on my reviewed-by,
> the patch looks good to me.
> 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 35 ------------------------
> >  drivers/gpu/drm/i915/display/intel_dmc.h |  1 -
> >  2 files changed, 36 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 905b5dcdca14..4124b3d37110 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -53,51 +53,40 @@
> >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> >  
> >  #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> >  MODULE_FIRMWARE(DG2_DMC_PATH);
> >  
> >  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
> >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> >  
> >  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > -#define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
> >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> >  
> >  #define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > -#define DG1_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
> >  MODULE_FIRMWARE(DG1_DMC_PATH);
> >  
> >  #define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > -#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 3)
> >  MODULE_FIRMWARE(RKL_DMC_PATH);
> >  
> >  #define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > -#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
> >  MODULE_FIRMWARE(TGL_DMC_PATH);
> >  
> >  #define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > -#define ICL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 9)
> >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> >  MODULE_FIRMWARE(ICL_DMC_PATH);
> >  
> >  #define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > -#define GLK_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> >  MODULE_FIRMWARE(GLK_DMC_PATH);
> >  
> >  #define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > -#define KBL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> >  MODULE_FIRMWARE(KBL_DMC_PATH);
> >  
> >  #define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > -#define SKL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 27)
> >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> >  MODULE_FIRMWARE(SKL_DMC_PATH);
> >  
> >  #define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > -#define BXT_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
> >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> >  MODULE_FIRMWARE(BXT_DMC_PATH);
> >  
> > @@ -765,17 +754,6 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
> >  		return 0;
> >  	}
> >  
> > -	if (dmc->required_version &&
> > -	    css_header->version != dmc->required_version) {
> > -		drm_info(&i915->drm, "Refusing to load DMC firmware v%u.%u,"
> > -			 " please use v%u.%u\n",
> > -			 DMC_VERSION_MAJOR(css_header->version),
> > -			 DMC_VERSION_MINOR(css_header->version),
> > -			 DMC_VERSION_MAJOR(dmc->required_version),
> > -			 DMC_VERSION_MINOR(dmc->required_version));
> > -		return 0;
> > -	}
> > -
> >  	dmc->version = css_header->version;
> >  
> >  	return sizeof(struct intel_css_header);
> > @@ -903,49 +881,38 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> >  
> >  	if (IS_DG2(dev_priv)) {
> >  		dmc->fw_path = DG2_DMC_PATH;
> > -		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> >  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> >  		dmc->fw_path = ADLP_DMC_PATH;
> > -		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> >  	} else if (IS_ALDERLAKE_S(dev_priv)) {
> >  		dmc->fw_path = ADLS_DMC_PATH;
> > -		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> >  	} else if (IS_DG1(dev_priv)) {
> >  		dmc->fw_path = DG1_DMC_PATH;
> > -		dmc->required_version = DG1_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> >  	} else if (IS_ROCKETLAKE(dev_priv)) {
> >  		dmc->fw_path = RKL_DMC_PATH;
> > -		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> >  	} else if (IS_TIGERLAKE(dev_priv)) {
> >  		dmc->fw_path = TGL_DMC_PATH;
> > -		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> >  	} else if (DISPLAY_VER(dev_priv) == 11) {
> >  		dmc->fw_path = ICL_DMC_PATH;
> > -		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
> >  	} else if (IS_GEMINILAKE(dev_priv)) {
> >  		dmc->fw_path = GLK_DMC_PATH;
> > -		dmc->required_version = GLK_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
> >  	} else if (IS_KABYLAKE(dev_priv) ||
> >  		   IS_COFFEELAKE(dev_priv) ||
> >  		   IS_COMETLAKE(dev_priv)) {
> >  		dmc->fw_path = KBL_DMC_PATH;
> > -		dmc->required_version = KBL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
> >  	} else if (IS_SKYLAKE(dev_priv)) {
> >  		dmc->fw_path = SKL_DMC_PATH;
> > -		dmc->required_version = SKL_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
> >  	} else if (IS_BROXTON(dev_priv)) {
> >  		dmc->fw_path = BXT_DMC_PATH;
> > -		dmc->required_version = BXT_DMC_VERSION_REQUIRED;
> >  		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
> >  	}
> >  
> > @@ -958,8 +925,6 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> >  		}
> >  
> >  		dmc->fw_path = dev_priv->params.dmc_firmware_path;
> > -		/* Bypass version check for firmware override. */
> > -		dmc->required_version = 0;
> >  	}
> >  
> >  	if (!dmc->fw_path) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> > index 67e03315ef99..435eab9b016b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> > @@ -25,7 +25,6 @@ enum {
> >  struct intel_dmc {
> >  	struct work_struct work;
> >  	const char *fw_path;
> > -	u32 required_version;
> >  	u32 max_fw_size; /* bytes */
> >  	u32 version;
> >  	struct dmc_fw_info {
> > -- 
> > 2.39.0
> > 
