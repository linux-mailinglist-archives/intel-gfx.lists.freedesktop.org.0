Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C804F5880D8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 19:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585EF929C3;
	Tue,  2 Aug 2022 17:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2707928DF
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 17:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659460487; x=1690996487;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qlBpti9RIsLJ3cSXLm+AzvEBC6jxu5ugMuFJBPiQh9w=;
 b=SK+a4UjGrFpPRbwS/zIvb4BhaxQya7P3AdwIwWzMGJu55MhK7nJCgBHx
 j/GdJydDiKPYuZLh6Fvir8YJE6eN5uJjh/WbGuI3zv2mh6YD6YvxkBKsB
 DcVZp4wGFXF17rC2lltiQM941JMzzhiQdaDWn1QfuyGv65hUyELbnaSTY
 nL3wCXas2MqT1oPJm6l5HmO4rBjt0HjKAeKBxgSQkHHALTYZfmVM8jjOn
 C3L7AmQ1eKNP7wiSvhijFGTeD/0tiSmug+HTsN6Bil1rmFj8/4DSnqm09
 5DoWeulvNROTDtOLYAviH/phzcFs96bNBpb/ln7L1DKZPyeTpldpVOBDz w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="288226898"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="288226898"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 10:14:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="930051186"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 02 Aug 2022 10:14:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 10:14:41 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 10:14:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 10:14:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 10:14:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HrZK0IiemDeX3GLsiYsUIq5Z5w7I3wuvadQ5Cq2qtsiM3aFtLMqALU9d68a3+4VsRmhF6My1gedGHGf1jSQXLN1b7a3fzR93KfwLPYdCzqcFRKoscTlEOB169QNMQdAasuQm+LYcTfQmlUs+2xijRpldNrpF3pahejocwEU4aIZo+AOWewyhQs+Q9O+Ovoe8Pn5mgtSpcktzlksDUmYGNqA4eiiS1rgC1k4k1Ylns4zWHKJGrDdP3MOx8Lu5ir2VS1q485ECGnqu/09Zh6mENvKcnB6SbGWkGm/o8X+h2DawrjUqCEmymF5lRs+yVpZY3pFq/+dYKTD4t5h9vf6ktg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a9Y5jSLf8jB0M5tPFak7sklySiXUHDyqIIUDcQdoml4=;
 b=nX6sb0tPQe9ZbMNlcDoI9/z4v+5yd1ZXIp6ys8bSiyv5oBdRy1Lwihhj5DKbdY3qP+4piSnqN+6Gi3mWpW9khR/4pPRqMhtOENHBxBHUZzvpdOmvfDIeo/IytqoWaFdmnlUBs3TaC6ujxghAQR6TeH6JUy6/yp7vgudGBIHSZt0buMguylQMOc+BTWtmXk3m/5ag8n69APdJ2/EI4R1yf+lt2Dpl0BmJw6IH8mt1DxY0E/SbLQ/ZNq2fcEKC9sFd/qXr4Y42c7SGJfqsRwnbhbsb8XZfAQ9HXcbQ1df1unE+fK4lwzlMr2cqfPYQKRBaOahuOSk7mEx6Wkw5lj58jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BY5PR11MB4006.namprd11.prod.outlook.com (2603:10b6:a03:188::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.12; Tue, 2 Aug
 2022 17:14:39 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 17:14:39 +0000
Date: Tue, 2 Aug 2022 10:14:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulbfVT1q3erZf4P@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-18-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220728013420.3750388-18-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR05CA0182.namprd05.prod.outlook.com
 (2603:10b6:a03:330::7) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d96f4398-d026-45e7-1ec5-08da74aa7ba9
X-MS-TrafficTypeDiagnostic: BY5PR11MB4006:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gTKhcgScNZubddH7d9ocb/VNMSJ3y5g3OkNeIqKNBpNaqUXcoFt/B4D4+Ewn9uwd21Qr66/Ha+exzj4FfUufGzGxslNexdvQOxUF3luTsDW7ES1+ggSlRVSXR4MXADMouIait302SuO4GoJOxkjE6Be+XgQMBcb1YEva8pp4SZDkhWeH8h8qVmT1cV+qMwhuH6lBA96kJSpUqLKWle4pH5MwX1g6/U0W823KkMQHxz8eu+wLG7Ow47JgQjCllQHfwvfRwqxFqgOezgIaXpWLf9Gt9EmS4AsqRsoTQxp64HC987Oz8s/phgdXuZWHCeR7yPNMHuRBtVnf3s2pHExCGkp/wJOpbzisMwVLov9dGlfy1yX4uQBfHx4//H6H3M75nFIOKK4HeJuEvVsWw9XEfNfsOQqdvS++DnqjUXfd8tmQtM2QKAF6+MP6mpG9lWXh90qwzyuBKxIp4Qn+9Rl6axoik5bSaSvT0OSMHwFhqo7Z7a+N+A2AIb3N5fA4EEhSSS73SpeP2SzfRELFtz3Z7a8z4Woj7v1Kub9f3/YlCDaIn2v/GlyfyTmm/lre6ePQ9VI+URMkDsqK53rxkP4ASeBLQVXoE7S/PGD+V6vWJjDBsq9gtCki3gu+Hs7ZRgB+WjskmtHRAu68IoTsdTDBt+1/A0Y9xSCsTqVo69whX2iwRFD0wxW4J+C7n2mHR8u9DNC+9CcoNF6o9ZBJjdRstbOQrIE1XMpfjJwfBWBOxzQD49n+G64Ne6jvVx3UXJPd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(346002)(366004)(376002)(39860400002)(2906002)(8936002)(86362001)(5660300002)(8676002)(4326008)(66556008)(6862004)(66476007)(66946007)(38100700002)(82960400001)(15650500001)(83380400001)(478600001)(186003)(6486002)(41300700001)(6506007)(6512007)(26005)(316002)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?B/t2n48/6RYuNHvpEISGovUDwHyFXrk86P08pEeoYUpFZEJHcZs6eV0xkS?=
 =?iso-8859-1?Q?mVo1yQWkis+Fai57HtAa1V6XpvGNLgdjk7AcJt8+Bu++e1qhW7b6/infZr?=
 =?iso-8859-1?Q?A7m7pZAXZdugY9s8jpQuF/Vz0PldafG8xbF0byvuqD+GXndfXIasUtV9Kn?=
 =?iso-8859-1?Q?YE9yoLUTYSXH+I+hW+IjfbiPzgBmXCuYh+9bobcYlLKh7jbFSEVNJzMDpL?=
 =?iso-8859-1?Q?5Lci6lghv4syQclMd+AbpIg+aw0Ozd8aXO1aZLUxkiNnegVLUXiszNM3+r?=
 =?iso-8859-1?Q?ZYzkB8Xmi6wR3tMyy/h6GUDScVO05Z8tsUu9SA8BADxVPXmZusD9LnomgK?=
 =?iso-8859-1?Q?PahSY9ZeZ4WtmeswCdikrbUB64mokD1nNpHFY8R2RCCkUh5ZAzE/vpA1sr?=
 =?iso-8859-1?Q?ir9lhz+K/KXiXGbAPwi5G3cyw/+swxCqklIspVViVA5LAp3ZSaMIWz1RxQ?=
 =?iso-8859-1?Q?s5pe2irJcDrdxk/K/ITtL5WMP15LIbc/qKaHC5ItN57JS0NJMUHQ1Y90qK?=
 =?iso-8859-1?Q?kyH0yFWkE3fW549p/dDr0Sb2EOppyhRw+/9EfQBX6YzHGI5xH6prmw1xlD?=
 =?iso-8859-1?Q?xR1nYkC5H8QjbO5M2xCaWY4F4ZU9ZphoFR3NSik7fb3qNtntUW4JLo9B2B?=
 =?iso-8859-1?Q?IGvFe5wopX5nYHisgcMnm/S5cr2FSA5xq11lzyNOFPZFNJGzkHLVoXLaKp?=
 =?iso-8859-1?Q?XqRZ4P7EqU5wTrTZqMwKtNqkt29QFD32cj/bpyKzNZhmXAV52tfVbWt+Vy?=
 =?iso-8859-1?Q?uuy5YcQInnOMYFHQJfdLG9DkFGi+QH0IvcZYRGI2Wpzq9IG+p75CX7QnRJ?=
 =?iso-8859-1?Q?4LhRSaR+20uuxwbtZB40+3NbYmwHJqBi8ELgl7r15oLwHV3piP8z4Vy0Sm?=
 =?iso-8859-1?Q?OLhNgigerdVHanDlg7jOK9hzCiu4vuJwrogwxGXoo1r9a+W+hX756FdPri?=
 =?iso-8859-1?Q?OwacqFJmGYCp0FsHeOLv73MLsyGbngxaATuI0/3AlqTDCCQaTBD4N5pxw9?=
 =?iso-8859-1?Q?JKvyQfl24+Xct/Bcru4wDV9+O9Xq8OB94jL97QKqNFKqZtz2jUp2r1mEly?=
 =?iso-8859-1?Q?VdpK9PKPzj/vfSl3S0xnAJbVchYhIZTuqYKDNrI8eY+ScGsyWcJMCWwdE+?=
 =?iso-8859-1?Q?0mDo5IHxdlidmzPwavZrLaZgGcg88ql0htcxtzZpGA1I8ey7c8P6JeZXcE?=
 =?iso-8859-1?Q?VXtItajdRcatxyU3rY8ZLK3ISAtr19W2yVm4StpIHvfdJFcBDCWvKwKsOB?=
 =?iso-8859-1?Q?xUVg7bmjrNhcpttVdKgcjkc6oHCbW+Lb1YvH+92Q6n3j/yFBJ3azZ4B9pP?=
 =?iso-8859-1?Q?c62+Gr5m4ykqQRXe06VxX4AvY4KTXMdRUp/MgIrkUCrdRd538W+fcTPK9o?=
 =?iso-8859-1?Q?gK3sDJK6huP6XExH9GAv4QodsGeDd1K0fpGfNKwURcL8O44J2salL2ugEv?=
 =?iso-8859-1?Q?qN4QINwutiCDSKBaTMFwpZtehxZA3UcTwsqihlibOZVwpIo/p4PdcMwuMk?=
 =?iso-8859-1?Q?ViYxZfHD2XN7UdP+bO436b51iuQnDoOxqSTc6dYtfRjk2v0dfdtOjKh96D?=
 =?iso-8859-1?Q?YAuivwQtqsybWZF30pRnVS1OQabA3b0NHG83xx29CQrtbuWiEYzzX15FSf?=
 =?iso-8859-1?Q?ATYWDQgc2BND3n124QUB0K3iCfXqDiZu+tPivsuRBt3q1UQQTcP/+38g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d96f4398-d026-45e7-1ec5-08da74aa7ba9
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 17:14:39.6008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wHTzgrQf6iaf5B+dxCGMoKiYnQNfCFCCiZTUitW7XE98Vpp83TDdfkRcruOZxx5lSAC2g/Md09PKqwEZAMtyLDwTYsFfa1aj9tsgi0Ka7UA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4006
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 17/23] drm/i915/mtl: Update MBUS_DBOX credits
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

On Wed, Jul 27, 2022 at 06:34:14PM -0700, Radhakrishna Sripada wrote:
> Display version 14 platforms has different credits values compared to ADL-P.

s/has/have/

> Update the credits based on pipe usage.
> 
> Bspec: 49213
> 
> Cc: Jose Roberto de Souza <jose.souza@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Original Author: Caz Yokoyama
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h |  4 +++
>  drivers/gpu/drm/i915/intel_pm.c | 47 ++++++++++++++++++++++++++++++---
>  2 files changed, 47 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d37607109398..2f9cbdd068e8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1125,8 +1125,12 @@
>  #define MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN	REG_BIT(16) /* tgl+ */
>  #define MBUS_DBOX_BW_CREDIT_MASK		REG_GENMASK(15, 14)
>  #define MBUS_DBOX_BW_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, x)
> +#define MBUS_DBOX_BW_4CREDITS_MTL		0x2
> +#define MBUS_DBOX_BW_8CREDITS_MTL		0x3

It might be better to move the REG_FIELD_PREP into the definition here

   #define MBUS_DBOX_BW_4CREDITS_MTL REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, 0x2)
   #define MBUS_DBOX_BW_8CREDITS_MTL REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, 0x3)

and then...

>  #define MBUS_DBOX_B_CREDIT_MASK			REG_GENMASK(12, 8)
>  #define MBUS_DBOX_B_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_B_CREDIT_MASK, x)
> +#define MBUS_DBOX_I_CREDIT_MASK			REG_GENMASK(7, 5)
> +#define MBUS_DBOX_I_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_I_CREDIT_MASK, x)
>  #define MBUS_DBOX_A_CREDIT_MASK			REG_GENMASK(3, 0)
>  #define MBUS_DBOX_A_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_A_CREDIT_MASK, x)
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index f71b3b8b590c..58a3c72418a7 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -8443,6 +8443,27 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  				new_dbuf_state->enabled_slices);
>  }
>  
> +static bool xelpdp_is_one_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
> +{
> +	switch (pipe) {
> +	case PIPE_A:
> +	case PIPE_D:
> +		if (is_power_of_2(active_pipes & (BIT(PIPE_A) | BIT(PIPE_D))))
> +			return true;
> +		break;
> +	case PIPE_B:
> +	case PIPE_C:
> +		if (is_power_of_2(active_pipes & (BIT(PIPE_B) | BIT(PIPE_C))))
> +			return true;
> +		break;
> +	default: /* to suppress compiler warning */
> +		MISSING_CASE(pipe);
> +		break;
> +	}
> +
> +	return false;
> +}
> +
>  void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> @@ -8462,20 +8483,28 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  	     new_dbuf_state->active_pipes == old_dbuf_state->active_pipes))
>  		return;
>  
> +	if (DISPLAY_VER(i915) >= 14)
> +		val |= MBUS_DBOX_I_CREDIT(2);
> +
>  	if (DISPLAY_VER(i915) >= 12) {
>  		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
>  		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
>  		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
>  	}
>  
> -	/* Wa_22010947358:adl-p */
> -	if (IS_ALDERLAKE_P(i915))
> +	if (DISPLAY_VER(i915) >= 14)
> +		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(12) :
> +						     MBUS_DBOX_A_CREDIT(8);
> +	else if (IS_ALDERLAKE_P(i915))
> +		/* Wa_22010947358:adl-p */
>  		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
>  						     MBUS_DBOX_A_CREDIT(4);
>  	else
>  		val |= MBUS_DBOX_A_CREDIT(2);
>  
> -	if (IS_ALDERLAKE_P(i915)) {
> +	if (DISPLAY_VER(i915) >= 14) {
> +		val |= MBUS_DBOX_B_CREDIT(0xA);
> +	} else if (IS_ALDERLAKE_P(i915)) {
>  		val |= MBUS_DBOX_BW_CREDIT(2);
>  		val |= MBUS_DBOX_B_CREDIT(8);
>  	} else if (DISPLAY_VER(i915) >= 12) {
> @@ -8487,10 +8516,20 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  	}
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		u32 pipe_val = val;
> +
>  		if (!new_crtc_state->hw.active ||
>  		    !intel_crtc_needs_modeset(new_crtc_state))
>  			continue;
>  
> -		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), val);
> +		if (DISPLAY_VER(i915) >= 14) {
> +			if (xelpdp_is_one_pipe_per_dbuf_bank(crtc->pipe,
> +							     new_dbuf_state->active_pipes))
> +				pipe_val |= MBUS_DBOX_BW_CREDIT(MBUS_DBOX_BW_8CREDITS_MTL);
> +			else
> +				pipe_val |= MBUS_DBOX_BW_CREDIT(MBUS_DBOX_BW_4CREDITS_MTL);

...just use the values here.

        pipe_val |= MBUS_DBOX_BW_4CREDITS_MTL;


Matt

> +		}
> +
> +		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe_val);
>  	}
>  }
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
