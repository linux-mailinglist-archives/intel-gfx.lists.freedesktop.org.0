Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E29F56A6CB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 17:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8D010E490;
	Thu,  7 Jul 2022 15:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E4B10E490
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 15:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657207277; x=1688743277;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Q/pjXdDJVfQkKD9KniiR6rCc9jSPhAp2bc75uNbJBuM=;
 b=gIIkM84Nt5kgoTpciNnUqdE5/F20mtLyFHCEAdH8pw9h/SlYnaUNPHCw
 1Ik/QnRIK9j6/w7Q16c9rMUrkWC9H3uf3lIhV9ACLqjrCyZsrQiuK93C9
 xQ9ghrG8FyYqxEDghmGXZpPqHJTnwi6KM1pJDR0+laQBw6QeF7jFG0jZF
 Pxv54m6fBun4IAETmjLEvHag++79MPM6B8xz4oGTWbGOnDfjG6Fa0uTDi
 5DzsheUZroVdX66Jwpfx6QJIrvTDrsA6bEipD9m2wPn1Ztgt3fUzeQO8B
 hywoNuSO6rrmbYzDg8QnbiyhbOQ8pvIygZLLClHcpqWDspb5bUMIX79Kq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="309609443"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="309609443"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 08:21:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="920627651"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jul 2022 08:21:16 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Jul 2022 08:21:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 7 Jul 2022 08:21:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 7 Jul 2022 08:21:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W/pjzJSsRE+2mJXlwB1FM5G0RbBIU3dCAvk4cm7A3qlqJR6HVrklQZcDATUC6/G55VFkqdY/xZ+ljAxdM+7cwONxnW9MxVLsemkSRpw9/27HvcLnZhPCfyFIiYMIp5ChOjhwx+gtl0oPP9296ek+7jE+dkH9F/AeUFIEmteun4VsU2HkCiFkvifXf8o+WVFUHlc50E0oHNUH0juO1MmyTCmjUEHpwHL0NdgVxBElSP7edmbcEgZ1wfWltO5D/xYfeigaCVwjcgbCgjrOxiu7UgrnrN3hn7+qvHxTbgOg5hI3frez4TF5iIkJqiY3cZVWd2FhtF/11NLi4t/UXwkORw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4+XBYWvX2tjnD1s8G8ivcd4ojML9ZedtOdi9iEkteMo=;
 b=nC9fX5z3Pn91hjG0cZw5eU23goNFXJis+kyeLr5iU2+dm1Hyzsp/ojbgsRN85CnTHKoVNhm1b3c+UX7Da7M9TI6mt0K/hHXV6SR64XBNOv131lliJUotNeKRGGic1i4ZGlGZi2dSWVoKtA2jWFSUCwpi4d2/TQH7t4J2Ag0I7AzFSqPlzmd8bODLZ08dK73lVeyS5oRiLKzWVoL7Bk0nb1dEi9lp3Zvep8xiPumrw660+t6U6XGfN/A82ypnNkV7Do28ulCRsIK/tL0I42LFuA2IaE0q9jdiwaiOezcWceWkN2kiXQKicCRYf3P2UkFqWSkEOOIkVVmtMbVxKBTmrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MWHPR1101MB2191.namprd11.prod.outlook.com (2603:10b6:301:5a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.17; Thu, 7 Jul
 2022 15:21:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5395.021; Thu, 7 Jul 2022
 15:21:13 +0000
Date: Thu, 7 Jul 2022 11:21:07 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <Ysb5464dRPxPrp0d@intel.com>
References: <20220706114345.1128018-1-alexander.usyskin@intel.com>
 <20220706114345.1128018-3-alexander.usyskin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220706114345.1128018-3-alexander.usyskin@intel.com>
X-ClientProxiedBy: BYAPR05CA0086.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a82f9a36-fd26-40bf-9ab2-08da602c53c3
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2191:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zmjk4O34CtwZwAPJhi1M6k97KI8WbNEj7Pz/LlWycqpIHa6krVNByY058peHnZ6k410qErPdTGq5D7OWcED/235NXZIwIhTgzQ2oQom6Jh9mCb5XRknbB2rtZ6zXj1GxZusnYlJZbZLL7704GZ2UCTQvNpogGWjFg1QZ90fdtymgDuWbQgy8wWqsf8YXIEXSyZ033oooqYbv9zbVvdsc/2eXSU4kmqiZXqgFOCII9bb2CcUW1qaAiu5l0UAsEKCB5b+6fl10RlJo2yOpkTxgeiu5ZLn0cm7l5IFWqgvb3Fu5VkOhPbmimetO7fB9Wu2STPimvQS5qQ+WmwWIBHap1Px8CA0m7CfASTfRuCODKJsjmsG09Tz/DTIs6V970ANVQgIhQdVKU5c+YRV1Y1zq34iMAHmgP1S0+MBjlIMJuABdeKLSInEN+1U6WfIkXz+ttmhQWEpzbldkwxawf2ERqPdxThNsOPuc//0rupnYkvaXlF3IWMOvlC8nSA42i7zAw5HZQvM5+3t8xcZt7omWy6g4NNGjCMvWYsNTTVgnhNbOG8HU88DtA8ls97IIqW2oaR7byAa/hPRUtWvIU+TGI8Jw3QgoHi5zLgwwAo1mzbifZIEQEJ/z9oLbKQefqh73eqJD6gaiIBVU8poIykKMsJjkHaVkUMsoB9/jtoxL/vfBHQg98k3msXbjDTJdW1VSbxny1TcYpfnxWtuO+YC1ba8TtitRrSB3KyD3+E1aFzv5n4bhKQEagGZNakI6fqPD5IU/78imysY6mybIVXd2zw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(396003)(136003)(366004)(376002)(2616005)(37006003)(54906003)(36756003)(38100700002)(26005)(82960400001)(186003)(6512007)(6486002)(6506007)(86362001)(66476007)(66556008)(66946007)(8676002)(4326008)(41300700001)(6666004)(2906002)(8936002)(6862004)(316002)(6636002)(5660300002)(478600001)(44832011)(4744005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?l21D2Lc8DdJJlATL3fJDspRwJISuldKGQCLe3J3DPGhpcLk4naFdfjBY2XP3?=
 =?us-ascii?Q?FYpfo7XvHKgKFn1xMczSfR4WVCFhXi5ZKbpZ7yW04k5wQG4++PWxff6xpWyO?=
 =?us-ascii?Q?IVWsBRd07ScyYZ3GSfYEFh6WiqI68Q/0UZX7j9T3SyK0P6ZMollzc4dybmzh?=
 =?us-ascii?Q?FGidRP8gDBztLojGCt6rIaV3ctEWaP5IDygiekcelZxCx91br/BonLZuCeqK?=
 =?us-ascii?Q?kaX2gwo+q/q5V7VFZRnHO506FXTvTbwWp8VbqSVVUcSUOzEtnGus9nqxvVho?=
 =?us-ascii?Q?DWI53QnJlw3RbtGxpfBw7koSTtaPMXZ8lKJbbKWjSrAVRbOmuVeZ1O8fs5o3?=
 =?us-ascii?Q?/wu42xHMuZKVj7DqwTMpBVpMAm9ovUOCyWoIGIGmfjQBNBF/Mb3unfmwf35+?=
 =?us-ascii?Q?Uh1MZHVvdSgljI9Ds8rnsNLPVxAT4oSoMKjWZzmVUvAEOhSsICXyvDKDP70B?=
 =?us-ascii?Q?Z4mpazeijdv0stbfA3Z3INlbz9a0TuAf8IFmHwh8YDQTWoMbytgRpn0I4ghK?=
 =?us-ascii?Q?Yd2b2NslGfv6WWMlmHTHpx4Hbkpx5S9OJyvruPrVNq7SnB0vKSryXmx7quFE?=
 =?us-ascii?Q?1F5cIkVCO71GZDX6eTsyt9sIEt1M5flSjhs8BrNSYXAxAstsHWmQzRAlB6k2?=
 =?us-ascii?Q?8cpyqth48JGY1xDCl/28zpUaa/8wnEVfJXbQYDoO7F1/BilP2n5BuPE5Yxx6?=
 =?us-ascii?Q?OO9GabAilJMhm+QY7ICRLHBghov5Kj0BR9/SeNNaQ7rR4cOMIndvbAJjRPXR?=
 =?us-ascii?Q?lRLKkTXxkXHXUfhNZfElyLq5Dz1gf4p2UecgVepxjNIUFmmev9bII85X3hz3?=
 =?us-ascii?Q?Q7KJla/VZCILheWjX4J0eBayg+yBIG0ttNSpx8sPmfWi7Axya9fg5JGmSvg8?=
 =?us-ascii?Q?V/u6w4U0l28Pd+4th09ozl7s4/r+n4oyOk7NQFj6rlGlpimGL1OzuT2ZtSR+?=
 =?us-ascii?Q?1IpaJ0WZgqp+ciPbqVj8PvOGCEdvKTR1lcXpTqQN+qeEV5rQzYboGWj7YLuF?=
 =?us-ascii?Q?62lrqhVr/4JO7uLEcFOzBMjVMBzIMTCvW8ObZUHhR6vH2YyAoOA1dSC1fhfn?=
 =?us-ascii?Q?rnoIoNLlSs6OX0uqFvpWtT4yjNnMCBSG1uZkR1w1ewbcE5x1+a1zTXG3Yz2/?=
 =?us-ascii?Q?H82/gRQMbIoku0ffOBmLLge9Lj/Fe//r1PSfR6IcW0at+gIuFudxEO0AaZtY?=
 =?us-ascii?Q?w7z3RV3nTqj6x0/xs0C7OrpEos0UmlKziVlAfDtnYqmUqIlW3sUQKEiX2tae?=
 =?us-ascii?Q?6vy5/h4D7HHuZDptfqZ3ftCVlMHmDSpj4Z1KDfbPU1YlKOKcRxmephuytL2q?=
 =?us-ascii?Q?El/5NzFXj24zU7Y/1Cx3yZL8yJFZkv7mBnxVzBKuEFYkTXMw9Su8Nncjgfxz?=
 =?us-ascii?Q?ZcIJwtk1mH3rH1GoJgctzJpgm0mGJfQrVRJ8HwYqRPxIG895e75/hZOlo495?=
 =?us-ascii?Q?H7//sxX+iA/QNbm7k76Kf8H4hQmW+LZHcrroNe40CvCowuUPbNjWjmYOQztH?=
 =?us-ascii?Q?t9a6C4hQUb1mSF0TxdXSeTz1Aup5qZBapJXUiZKYlz7FqM8ImrVzvEW4nChg?=
 =?us-ascii?Q?+yvPNhbpWoIXCwBk7eBDHUgABdhAEHFXWFT5Y7nWokwvr7eoL1S2jGTUZoVU?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a82f9a36-fd26-40bf-9ab2-08da602c53c3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2022 15:21:13.1032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tBPbAR9afD/UrmnNd0DWtuOYAoTuxlVAr/wrt9aXnyFZveHAt0EEjyrg96V9+43E5H9emWb/AqARhvDlzunG7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2191
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 02/14] drm/i915/gsc: add slow_fw flag to
 the mei auxiliary device
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
Cc: David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 06, 2022 at 02:43:33PM +0300, Alexander Usyskin wrote:
> Add slow_fw flag to the mei auxiliary device info
> to inform the mei driver about slow underlying firmware.
> Such firmware will require to use larger operation timeouts.
> 
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  include/linux/mei_aux.h | 1 +

This patch has a wrong subject since it doesn't touch i915.

>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/mei_aux.h b/include/linux/mei_aux.h
> index 587f25128848..a29f4064b9c0 100644
> --- a/include/linux/mei_aux.h
> +++ b/include/linux/mei_aux.h
> @@ -11,6 +11,7 @@ struct mei_aux_device {
>  	struct auxiliary_device aux_dev;
>  	int irq;
>  	struct resource bar;
> +	bool slow_fw;
>  };
>  
>  #define auxiliary_dev_to_mei_aux_dev(auxiliary_dev) \
> -- 
> 2.34.1
> 
