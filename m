Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AEB58811C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 19:36:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C28AD93415;
	Tue,  2 Aug 2022 17:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3ED933A1
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 17:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659461751; x=1690997751;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+fuj0rMIgQXd18zX3b1mvRT2L0S/D+KFWYGUFTzTTDs=;
 b=j0785MGHppW9CxUbND+hyJ2oQ0AZLsxE0beyL5KPoxnbK4MMaOPm3Pen
 P8lc4+5Vmk6M3S1AMMix9NwgZTvbL/i7EPHhKvIbEaqQRMqDuzLNMNUH8
 cg45+bb2gfRf1myyjXf25V/7nKLxfgtdmMjD7aYBY2LkO7NgHpWYGRsab
 GPs25b5UYBvofz317gtOBt1CWEflK6/jWwPH3BsnAVfomhC+tZEBv6uPI
 NRhPWCwrTWwRqww+wvg0YVvIlt2MmVtnqurE+Vr8OT7dfZYuk0imTGfrv
 7nfJceeyCchW7my52Z2RIeTKL1A18P8aE7FmqYX3lgay7n2WNSs3xZuML w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="269855221"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="269855221"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 10:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="635377708"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga001.jf.intel.com with ESMTP; 02 Aug 2022 10:35:49 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 10:35:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 10:35:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 10:35:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 10:35:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HThN2NdJIf77DgKJj9qIUCk3DAEJBGX7CZ0CRL6CRWAH8OtChrRLiaLEzF6JNXNrq+zkDXaDRor5n8mVvtXKlWY/9bhP/0ZrJHKBraS5d5DNqOmtEE5SROpPYfdXXGaKl/lPujyR+lJXVdGcjeIfn7kXJAvW9aQj9qgsemEUZNuhLfhMsy+kstcfKPJqIiYVcTsNj36aYJq+0RZpoYBD2tIc4tNySPsb7sF3wJ6rc12n/tdnrlqs6UN/FpMswJEhLIbFcTwRGCUYjoScjYTyncyRQWj+kdiU1Soabl9nw7x1AOHEWAIYD1sQQtr0BdTbx0LN181FpWENczi2jENsEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qdmYN9gA+OtU5uoZZ7dFsn6pFEp1+IYm8203VVkkaQo=;
 b=PuGas22Oru4JkdJZIo0yPpRaN2rJTuNRvBB9M8SSnVJfSN+pDM6m0Qh4r84ztKOpwE5D+/9XO5WOUNOdQzny34xAcr3isIQCVCAVOP1gDC6jc8JNY9DILeFQz2Z6khaEU4ha8T+TAyD2RrJxjxS1GAFSAdTncShCu2Q6FAw/VWLi9qwHZlU+6PpGSNAun/AqYayxDdR73IFaJjNEJycufu5cvlO9TdQv4DK2Kt2yfLZS87AQeX6cOpYJ5zdDaKj6v1nTo1Q3YqWM+R34GCUCL2DiGPSkw1CKdqdw44sAdm5SWs5McSS4OslibTO5//Yk6jZ1sYYVfgm+xSyh6wKZ7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BN9PR11MB5466.namprd11.prod.outlook.com (2603:10b6:408:11f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Tue, 2 Aug
 2022 17:35:47 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 17:35:47 +0000
Date: Tue, 2 Aug 2022 10:35:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulgcJhq+8MnZIfz@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-19-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-19-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR05CA0161.namprd05.prod.outlook.com
 (2603:10b6:a03:339::16) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8e67c92c-b9bf-4ebf-ed71-08da74ad6f37
X-MS-TrafficTypeDiagnostic: BN9PR11MB5466:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ll1dC2MPL6H/mWL4lwxJHoBhwpX7zl+ueIUx5YgBNuBYdRTb9Lt3oB+C5XL9+RLIYaSFMBZwD+g2Xl+otPHlAYCo8cJggOvJr0B4yWQS8TH9RzFIOVeVJdMzalVqd3yS4SNx3/5Q1sDXOilrJW92qWy2yUmiHABEQVdLsKrpzPMOxY2mLr8um3KiFOcrj/vFsWmx69KYgYBUT5g3D542Wr6WPxEONhdAMvkf318+Rj5pXU0A5wPD/7wVegQ7z4/Dtid1UO4Ant/51YPrwDv9n0jvnIgESYwSAI65ZJd6mjzrXiG/bUy1V9iukmYZFWRp0WHmzt8xx1Jm3HS2/rfey8sZtxKCokB7MMW1jAyYFhIxdg+CDBhOYp2uNfkJZAy3zVCilQxPgoGBp5jDlk0Tmd+z0Ps1+FwYF4y62g+tns5NGazP0/JXAXJfh1eq0jcyNVQfXZZ+gxj1m4ZzzNI4rroKrwpFJ05GKVwPc2qw26h/L5PN82lyvTspCELgaUR57e4wE7aUb+nIS3EU1KlJQe/UlRJop1qOT0fj7C/n8Q9kswLS2x3dEEopbHDAKhMCiwlwUROLPoXNOopeNKa295JFRGSrG5wMrMOkr1AZTXQGxqkecMwkDza9mga/g2hptz42M441cNJgOx6EQe+WivEPwQyX1SzbteT8UdvePaMsbyJRRCjtmBVaPTVd5kXbOL2I8tyqQKlzKI1DyszRXbcTr/ms51NzUkbvqD/y3BG/o9DLpnh2LIAFPEINboQTD5/JX4EVtj1+yMbQmOIQJ+x8IoR2GVwnwnjRykpR+QM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(39860400002)(346002)(366004)(136003)(316002)(38100700002)(6636002)(86362001)(6666004)(82960400001)(41300700001)(6506007)(2906002)(66946007)(8676002)(66556008)(4326008)(66476007)(6486002)(83380400001)(186003)(5660300002)(8936002)(6862004)(6512007)(478600001)(26005)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UkGPvUn1P+PflnZJG0BBhN2CpN27eZZ3/VshJnlZTxMMAPhXzhm/Q1flw3Vm?=
 =?us-ascii?Q?mzJYM6pBgdy35qZrJHzHV/faB1dWJeHeOGJQtsaWZUsmCW8Zw2Yaj/rRavsh?=
 =?us-ascii?Q?6iJobqMuvlKoPvD75DHmZfbpOpsRIKbs8zJLrISjy1HRWAWi6VLPMAE5etUb?=
 =?us-ascii?Q?9733R+gnaOwuRPGY9jHVxDAECSld6QewNnjAXTgN40Asl+BjA0o+rnqssDTo?=
 =?us-ascii?Q?jKAgtqO6AKofEkDPRcwpChurpCSB8Emom9tHumLlCOsJ9gR3lY8jv2JRqm0L?=
 =?us-ascii?Q?ETosIfoLN8zV8gCayr1eN3LwvPlVlUi7f9v/U/1G+LTADiHlQLpYSxYvN5j9?=
 =?us-ascii?Q?kSghgjMBztGiuUixahEMzsd2aJTwwtFRM/P5HdkYkFaHmQl7b+klemwzZbE0?=
 =?us-ascii?Q?7/JC4y9rsOpe2ZbWoUH5DGERLv7pZimA6ysYcI509bmjWdKCPOLi2x9gtTK6?=
 =?us-ascii?Q?TCuGtyK4PitwNqjSRRSPOciQ+0AZuDa+9xLhXmklDCQzLWSVJzOgG6X78Qq0?=
 =?us-ascii?Q?pt4r0BIwt88LxI+f+b8DQvW0WIPtyiSTuNMqxw8bhAejZUMeze2Oo/scDcqk?=
 =?us-ascii?Q?E7vWrVeTEICijBC76NyWaERQ/Gtvps8wp6wqihFW8/BL277ECC+3Wkb5mHKn?=
 =?us-ascii?Q?Apmm16dA40QTCKhs19hu11aoKaRxuaJQYVBPTGgiWEh9cM34gI1oETJ342wK?=
 =?us-ascii?Q?vyOEwtYtBWbLfk7O4CEuiTRpDPa4cnvwPew/niZHj3KK/mMJwvaxI3Dvwm6v?=
 =?us-ascii?Q?AjvoUv+Jgmo0Ai7bh5+kanQZ0a/1tHQI8VG7T5tM5lhNbpNhgn4GaJVpP4DW?=
 =?us-ascii?Q?ClbguUvTDKijWq1Na/PYpNQWJ2kujqeqgwUM6UJt0Ku7lFyXY1kjldcgrX3z?=
 =?us-ascii?Q?Yfwn2KN/tKzFW+Zw6wG6rTA5N7lyB7jCXPdB8Y7vk/E9Ymd5rgIvvfGci/+S?=
 =?us-ascii?Q?oEJGrnqJKy/uPNpm5YIjlLYzm1Z5c+u+lUhsLF/o3y2Bmi8m/JgqbkoA40Hw?=
 =?us-ascii?Q?P4CUu3e8qsv4C3BBgA57rbFaR9/EeIlT5DQo8v7mDsSdhwe2VLrdUvuLUdlW?=
 =?us-ascii?Q?HjOoPTQuLy+5JROLeplUPMdvKqNuDFCnBgC6e3aajAIHwCd8zoKnHfBszf/j?=
 =?us-ascii?Q?GlvaoQMNNBbOIW6F/7sN0bGlQHOFgXopHeq/cXGrVUSp+l3Hf37yVc/ulwpl?=
 =?us-ascii?Q?YqU4RBbGj5YzAbmcRvZFzC89LSLrMXv4ZImG1RxPib2NBEBwZRvdiORXmPxd?=
 =?us-ascii?Q?EvSjjhr1vPJBq0VfuGbMq+bCcRaUXBftMrEZ0dx9U8SGdpTLpxLRtKThBbuk?=
 =?us-ascii?Q?8jGHGCmcAGRC4gOCkSRyqzNs46FxXHdI4GkG+/IueuPC0UkyeIh2zgep1jF5?=
 =?us-ascii?Q?KLvKlTbZBiJpKpAVNVOv+4mqj3TQD66mvKadSEbSiKaO6yq1NcQeVXFzGCKx?=
 =?us-ascii?Q?Xnpa3j+0+i1MHZBV6uCEbddN8THMToytQZ8KvWRng8OHgdMbbI+FKSebZzZZ?=
 =?us-ascii?Q?R0+qYabaomvqng1w+VOnO76/U22sUqEcl1naeDRosWHa8/FKRiNaySYqE4Sz?=
 =?us-ascii?Q?18XW/OdaXLIHKH8CFPPETBaDQ/bRe9ggOEso9WCuj+nCDF+MpfDgc7uHxcNp?=
 =?us-ascii?Q?qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e67c92c-b9bf-4ebf-ed71-08da74ad6f37
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 17:35:47.1853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aAi2QfknEjf/ai4/VC4vIJnEB0H23x3y03HkZIX5YPPlLf88ky2cTKq/78kqXgYvxWvObaG0q32ckjCjcYX2tNQrWc9QjOD94T3YAHmuInc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 18/23] drm/i915/mtl: DBUF handling is same
 as adlp
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

On Wed, Jul 27, 2022 at 06:34:15PM -0700, Radhakrishna Sripada wrote:
> Meteorlake uses a similar DBUF programming as ADL-P.
> Reuse the call flow for meteorlake.

Although the patch below is correct, the commit message and subject line
here are extremely misleading.  MTL uses _very_ different
handling/programming of DBUF (via the new PM demand mechanism).  The
only thing that's actually the same is the computation of which dbufs
will be enabled (which is all this patch deals with).

> 
> Bspec: 49255
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Original Author: Caz Yokoyama
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 58a3c72418a7..d73be4bbaaa3 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4934,7 +4934,7 @@ static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes, bool
>  
>  	if (IS_DG2(dev_priv))
>  		return dg2_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> -	else if (IS_ALDERLAKE_P(dev_priv))
> +	else if (DISPLAY_VER(dev_priv) >= 14 || IS_ALDERLAKE_P(dev_priv))

An alternative would be to just do

        else if (DISPLAY_VER(dev_priv) >= 13)

here since DG2 is already broken out into its own case above.

But either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

with an updated commit message/subject change.

>  		return adlp_compute_dbuf_slices(pipe, active_pipes, join_mbus);
>  	else if (DISPLAY_VER(dev_priv) == 12)
>  		return tgl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
