Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A3D67A1B7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 19:50:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9492010E08A;
	Tue, 24 Jan 2023 18:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295BF10E08A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 18:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674586213; x=1706122213;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=eojP/MeWXKSW+hwpXkt8elb9emxERWqoW4aKZ4JRjgo=;
 b=VCWj/GlXQapoKfa5U2aZZdJ56aDwStVd9eVS98cKdpOXkRYx74eFowEB
 sda2zRNkE+pzXCxH7GZ7QN8RFsgbKKOs3+nntvWUsUp2uAnAT2Esot5O1
 hmYlUItJOt+DrZVBkplX4vMf59HrtbbkJouA9DOQTE++jCmGUXB2PK++1
 Ir6+O++kNkH4RBphN/ZKCQliDK93Q87rYeQcyVHuGYRkPqbENcNorsKVh
 3wn9SgbbKWMRfwMqiZ+9pppIuelMfa6cDt/sFtc17R38yLEaUJs+OmoR7
 v1ipvGZmhJXgdGUJ3gUePUSTNtkVGrUYLBqlY8RO7Z3q54JKLi8of9E6F g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412607456"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="412607456"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 10:50:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="694451732"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="694451732"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 24 Jan 2023 10:50:08 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 10:50:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 10:50:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 10:50:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QYADrP+aV2E6dcmeNy29MmrLRIJih09NPN7hEGiL53uderQ73ntrHVlSgPhgxAir1c8dGLzSZZL5QrNIOthOqGCcRZlLCnP3bybYoZeoNWsgv7V8E9OWQlZPu4HAoC5jxhqEUQcogFE7rKS2BoSL/ineb6npmXi6SogcisEwJo+fKgpQ/4GxKbXT0UpTgA382p+0jCXKRoOnbvu1a02q1ejFncTPK7eo9so1wfOBu/ZxIOo0rLBtuINFsl7KD0fjVhLHxNvphad3XQUgl6PTX3vBxUzrVXb4YX16/eDDTGij19AhU7kj5r/nhwX2s7oUSOdcTZvp2ZxPdoMK3gYyrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b5N43RtZoP40u7x5kjuJ7H1pnVhtg7X3sZp6wyhAnHI=;
 b=nJmmqlCzeJY7Q6NJnhLbrJF5gfi7ml7gd70IWvr/3sXiKQ3rNwy+njSxKNbJAZlFfU4xFlyiUBHipniJJoRR0wciJW34Od0XWTxIPpfHbzInL/SUzILZZweOZk1dhgeNl+iZFf7i+DyqnoKLqR2M0tAlnFVOFwidVN1EZO+tILW4/Jov+U6cjIfUbIpSxcV3rhGaCGKf1kT1nMZDF8WM2FNOO7YJ0GPfLLwE1AkYWn9LAzINBDAZG1zeGiywyBYt3xOlkXY/mqGlE1np2qD18WHUE6twuyJ171vJSebJoEQAqw0r2ek9rmxGo/BKieVj6KM89XJQSXTW52g5ITe/8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:388::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 18:50:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 18:50:07 +0000
Date: Tue, 24 Jan 2023 13:50:03 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y9AoW90V/ngg6Orl@intel.com>
References: <20230124102636.2567292-1-jouni.hogander@intel.com>
 <20230124102636.2567292-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230124102636.2567292-3-jouni.hogander@intel.com>
X-ClientProxiedBy: BYAPR05CA0104.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::45) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5501:EE_
X-MS-Office365-Filtering-Correlation-Id: cfb30129-216e-48a5-5e95-08dafe3bcfaf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r8rGlJGA/3I/fx3YjU9e67nbIYjgtmWdI0iBGqK02gJzVZcK3MGGo364IwQEVrF8RJ8mJENaIH8fN1/mC7MGKSO/5pepp+uquZy6L/A+guBk5NrtnmEDD3TmYPs2EwZuLXMbit5GeVbwT1Z70NhEhqfrjHvD+3CPDHQu4Fqd35L9Yf3iMsxkbL+vBfWzjF2B2v4Ii34Jx/Tr38kAUnna6AaSwNDxvYsT+8AhN0QWOYSNQFVFu5bKbs+E2lUysrOt+Wh4zDO0jsQw4w7fn9voe+wZemmItso8nYYv9zm1M+FD+NC3ckgirk0kCOxSr6JZVEZIZ1PPvSmiZ/1qZ46rVQh2rXhVlWce97mBrcoGhLFLriLJarOEmGRLvkW0bKt8+lUzK1YtVhV4EQ7ZMsGp4cvwLTCCn9ATSnfeXfn/qHolVX6xlsssaHkyijaw3vwRP9LoKFFcs/98DgfmBKW7QyWWDc3qXpdRjgf86NSFbKee1I32ovfSAL9rjZ4ONlT1TyFy8mejEuDnq0PWPdUHGwZNACgLVxb2rN+bKo5M4VN8P4mloTElR0cYn+c7KV0RF4+ZkFbg42X6FwQj65G4WUnmO5r+NRZvSUYHRqThzRsgIL6fkkckkmFF97wTCcchpyHuETNdpaxhlnai0orHYQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230024)(376002)(39860400002)(136003)(346002)(396003)(366004)(451199017)(8676002)(186003)(66476007)(66556008)(316002)(6666004)(6862004)(6506007)(26005)(6512007)(6486002)(36756003)(66946007)(37006003)(2616005)(478600001)(6636002)(83380400001)(38100700002)(44832011)(2906002)(4326008)(8936002)(41300700001)(82960400001)(5660300002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?J7fn7klRZmeqGujei1WAWws3iyIpohSxPCkXNy2Z4AjYBX9SFtllgmtjQR?=
 =?iso-8859-1?Q?3huOJx6QepqTgLZziENGPMkef87hKSb+7Z3hZEgvGzQS1asO1S4vK/+bqS?=
 =?iso-8859-1?Q?uGenhCPO0qXp3drfQkPUMU80eFmMRbUYQ+wtzRbv08l7qYvZP7hNGkZhQu?=
 =?iso-8859-1?Q?zeND/VdI70dKlBKVCI9iWqxp20om56btDKRTGJlTA3weGpgZjrEk8T23Z1?=
 =?iso-8859-1?Q?JKOTeZ/R1ZdvBSnP6XiiZqZ3lRcWqEJYMR7Ro3HZh50hqsrhyNuWp6fiAj?=
 =?iso-8859-1?Q?nxhevVmru+Cic32SAi4W8TEx29aeOwP91+ej+n33GBgoyxsVDfSg7QcHph?=
 =?iso-8859-1?Q?5piyDGh7XVrpmqDS8AUkioBUtGL2IyCPrBBcMdlLUgMJ8SYY5ZDq/w30Wd?=
 =?iso-8859-1?Q?YPAB1Eb1rR/kCL6BP42DnQFr3+7+VErpEFEC6WBd9S9fbZgEBfcljjmVKy?=
 =?iso-8859-1?Q?ukZuQ3gSavQjZUFHft7qGGuu0NGgyShKLuf7ghxPA1a1o8w//SE4sPdoQu?=
 =?iso-8859-1?Q?SQBwEJxPby3tyPZDLhHaW5IwR9Lt+a5o3RgN8AwITqNODnpkRvlyfrshnL?=
 =?iso-8859-1?Q?TjWf0dni9GgN0lKJlJFGN7YQLP9fIx6JSbm0v707/w8KcJrQINiZW+5zuo?=
 =?iso-8859-1?Q?IydcUbLllaGKs/+rZvxqSalcFqatMr6v2FWygtggTe/fVf1Pv+lzk54yxe?=
 =?iso-8859-1?Q?07t9PNN1fOT+v3kzhXxMtlZ6mIjB1Csm0mOkyo9b6nls+XtT0RoUIgdlYV?=
 =?iso-8859-1?Q?0qW62NOq7I2i6N56zkCvgfKGOd9sarxkDURgcMlxQstwBrL1/jnscSIUm6?=
 =?iso-8859-1?Q?ZC/PeuULiHMUORlk8Y+MrqMcH1S9Vd86JcaftdMBItSKQbGvs5nBIHwQJj?=
 =?iso-8859-1?Q?g1VZpYsC6K+PQqZ4FLxlWTO5l3s1GkPpJjiiLlktP8yeL+Bq92mVwNALFg?=
 =?iso-8859-1?Q?m6aiyZ4M+LkKxA8CxcJ5d8De6UsXz8phBeY2plLuDku5I1aU2LmVBNcEZv?=
 =?iso-8859-1?Q?j9LYmv6l8fIWhvkppnXoqWhtq/Ydsn88LbjWlAMYIX3v9nLFjfMw2XfeOx?=
 =?iso-8859-1?Q?55T9rv0rg3gqdr51GmAeDiL92npkdtD7fPjlti2oJI+Ur3adfASHNwuGaF?=
 =?iso-8859-1?Q?usoA0khC9zdbC7h6nPZzOUA3GxT7GMxj9vC0tILaPcLpvF4Ufq0CrLzX1r?=
 =?iso-8859-1?Q?GF3I/aDcP4cNs2DtNVtMo2lhysjTXuMFeUuHaAUiqKeyDVDumzikoMbARP?=
 =?iso-8859-1?Q?L/CdTFhSx9Xe6tyIBkd0lHusZglUTYrtYSzepWDlHx5WPqSiBvE0CyJD92?=
 =?iso-8859-1?Q?hzdPk5G4MoX7EMLLJEbb64fu7bPs3ZXFwgFu2HLu/DPb74H2x2j9TbCk0S?=
 =?iso-8859-1?Q?peyeksRs7nEt3iix8zQ4Wc2UqR2jtOhxlUvKiFZx1hua7txTGEEMq9/NnM?=
 =?iso-8859-1?Q?SUS1aq70WnyB9TS5dglElmdmlBQd5/lP3fhLafa6ejFub9OBUkq2zSXl16?=
 =?iso-8859-1?Q?p3mNt/guJotdsOpP2Ct1Saw/eZFwHbRbFYO2yCU7J5V83y9PrdPgU9+CeX?=
 =?iso-8859-1?Q?mVKQ0kVJfDviSDrD3uDD8QALAu/lXfhFzoYPZEcPH7B1w+vU9/DT9V8XxC?=
 =?iso-8859-1?Q?j5lwWpfqOn1znnP7Xo79TI5DPZdLk8NNct/bqRFnRwe4RR/gTmEFgeyA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cfb30129-216e-48a5-5e95-08dafe3bcfaf
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 18:50:06.9435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hNEQE5AxBc1Tfk+B5XgmDpm8YA+oiFKsjaCXgow7AgeTgzU/xmOIbM/mC0j/4yt64TmwYJ5jub2nsZ5BX/9mbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5501
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Apply Wa_14013475917
 for all MTL steppings
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

On Tue, Jan 24, 2023 at 12:26:36PM +0200, Jouni Högander wrote:
> Wa_14013475917 has to be applied for all MTL steppings.
> 
> Bspec: 66624
> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 6a2ee342eab5..b7a154b46da6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -537,9 +537,7 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
>  			       0);
>  
>  	/* Wa_14013475917 */
> -	if ((DISPLAY_VER(dev_priv) == 13 ||
> -	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
> -	    type == DP_SDP_VSC)
> +	if (IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr && type == DP_SDP_VSC)
>  		return;
>  
>  	val |= hsw_infoframe_enable(type);
> -- 
> 2.34.1
> 
