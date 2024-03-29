Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62E2891D3E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 15:12:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE31112737;
	Fri, 29 Mar 2024 14:12:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZG/7PHYu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CAB910FE9B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 14:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711721541; x=1743257541;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rZ/3/DLZmeVjegWQ4Rb5fX1pbo+lkyGzisqbhzdbmT8=;
 b=ZG/7PHYunRxJ3UFXplfh7PfBGoHiEH+8NlgftFdi5IM4nLTLtN4run8n
 AS9w3FN2ixzCcCgskCHbOV2tLVuIktDSgUd9UgaNGUjO6ZN2Vo8S+kHHA
 7FIhxCdScf0z9QZPArIUedLShJhLzXDsDVGw7GiQvAh8hVVrizRCZITNL
 oggALlCc4LJEnXp6SR0389Piso5EdJ9K0rlRWQfw1CzUYu8+y6jY+PVDf
 21eGdZ7Ca4MZJNpUOGmQ34n/dJ6qVp6TiFdE2LQ9bCJphSD9ES1lPa0jP
 xJ5rgCCC7cynJTDB2lNn4N/RPYk/Hu4HpZOr3JqY0QPXqDUoLHLA0NcgC w==;
X-CSE-ConnectionGUID: DsM6/xsSSeibaLOGlL/iNA==
X-CSE-MsgGUID: 7K6nSpoARWio9IZ+693+UA==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="17465934"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17465934"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 07:11:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17620655"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 07:11:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 07:11:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 07:11:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 07:11:49 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 07:11:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZO6Q423iKkJU5D+VUNP9xUMVmlCmC4lVdcUeWhn8WpxRfocp7W2p5ENpohDfPje7cMb2jyGxsbhJxeaTjcKeg+ktuVwOrT4LKatqELFpJfbepPiWKRShFBdL+ufYJtk/Qd70qhCG1gDFNv0duGzyMnR0xwTLZcTfkLcFyA21LxhvHatij7AMYBUnPks5/BXNeFk4t5kU0Q0XlIPQgpPXwfH/63IyArMRlo5Lhm94T2z28RqP5IjI4wmWaWjujUNCEvk/QgQR5JbWyNHp6YP3A3ofVXCVbsv7V92ZifakPq83mSODE6vLjNOWSxMBseC6YC5XdCNCOwoHHE7RO/ImUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rZ/3/DLZmeVjegWQ4Rb5fX1pbo+lkyGzisqbhzdbmT8=;
 b=K5HWoex4k8Y8fHdjE8SybJsSx1KDhYC0rHOL+2X9151qllvHc98IbYFPiXBeAKRrtjfLYlZFLiKs709ezJ0pdUa/mee007QyrF4XGqPsmhjH/yapoRZd7I9Mx6t+pMr9XJ9WOLcpKfLDBiI3wcKu17GD8dOji3wC01S5WJZw3Fh/SHNo4JYuAWaPkqVtEi5JMQzhI3Y/QDnlp9if5PH2RgnMruJAETz49t0BKyWNThF1ojWkGmQLIW2kTttUTZQLOrOMCQR4f6Xze1hWBF0pzhqQdFDbbmnKKkSuZ2tFreqLxUtHggDUSaR8L/gwvcMjy3zLEhTkcfmkJtIwomMFqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW3PR11MB4682.namprd11.prod.outlook.com (2603:10b6:303:2e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Fri, 29 Mar
 2024 14:11:47 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.031; Fri, 29 Mar 2024
 14:11:47 +0000
Date: Fri, 29 Mar 2024 09:11:44 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Alexander Usyskin <alexander.usyskin@intel.com>
CC: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, <linux-mtd@lists.infradead.org>,
 <intel-gfx@lists.freedesktop.org>, Tomas Winkler <tomas.winkler@intel.com>
Subject: Re: [PATCH 05/13] spi: add driver for intel graphics on-die spi device
Message-ID: <scduob4mrujhnlnrfudfyjoanibitu2blnxc5vkqfev2kd5ble@cycghj5zmc5a>
References: <20240328122236.1718111-1-alexander.usyskin@intel.com>
 <20240328122236.1718111-6-alexander.usyskin@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240328122236.1718111-6-alexander.usyskin@intel.com>
X-ClientProxiedBy: SJ0PR05CA0114.namprd05.prod.outlook.com
 (2603:10b6:a03:334::29) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW3PR11MB4682:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j86XyD8ekbSIDUYX8HjrVITjpkzwGjLz074RO9m6dA9a8u0JZRdaQI+8HgQKKVZKduwI949cJLFpvBnf5Cl1PPADg0nzaDkPALqRQece7Ln5nSui+aD10eo3IF5mnKIh+v67hGTL+fmBUuVBSGwtQZB4TcffiEjf/wi13f30/MBWEllbOgoJHDLseofKng2YqwWECDR1yMK4VZM01bs2BJ1CYqFY5ZkhxsgKYuBq8k3GE3yIaBTfYr/z/yvz3rH28g8LMQ3VjKxR3FQSaTaOTHSIjhEWrt6wlWIMosR7Q4FrdOKNZvTqDmX084ToiJDbnpQf9q8JAKXWoO1wBx8UAHOUNzb468eBEuGUS/ehb9wkjJmsAOI5rExMd80NIlUpMvEV1JeHXi+jvjosbSAivjZ95DH2KsbPyCMHok7dtBSZ8oDJubjWN82CdtgPjinNpRXVrdKZss1BysQ+ZK9drtmVxUODfpqcKEX4ORyNRscq6fhDuFrKuQ4esQh8slVp/7AxHfdsr707ZOsfF2wYMgEO2bbwXF+zcNmRg/DjN833fhxz4ZQV59Y4saWJDfqNjwK8NBM2Djzbnt0D9p3sIhG9Mq0d7ieI9XC3wWQWzZ4F8Re74Vaweyj5NiHo2cjf4p+X136ZovAr7Gp18ynegTRiyHTdhBHwKPBNJdvqoTM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/RVRTgWIBF/Le/kgYyveCELaxNri/cHZBSJJFiEJiVlZ2o24H6PnB7TnfBU8?=
 =?us-ascii?Q?R82fSqfbbxw7tBnaPS7hz/M+LQwz+h8GOup2C8Oy9XPgVAxbJ5oTebiWQUqb?=
 =?us-ascii?Q?71u4Xdn4xfROCxDLBJT9ge4+9HSlQMtvanZi3nh15WMs2zl2nEq11gxR45fk?=
 =?us-ascii?Q?odFq+vyW1KdcCYwsO+uuAiXRF6zOni+Eq06SQF2BHv1xkATdZZqOm4Q0/LPH?=
 =?us-ascii?Q?6N2Dx5/CWPYEOScPN1yZhqQJUqXfeKGxnNqDv5fUz+CUo5WEWCN3lmIi8vVW?=
 =?us-ascii?Q?PPe0EjNFmp8N62EIdsvEg7ds3Js1VkyzVcIbps6wJhlZ97oMyi0hLPCiur7Q?=
 =?us-ascii?Q?F5nsDLoXopYBJFDU0Xzyw9+ZM4BUr6invvPzSLsSeRrshSLrh5xu7Yr13anN?=
 =?us-ascii?Q?APFCIBb/GO2ODp6xfXpnMiMNSyxCAXLbYOZa45KsSGMWB0bNKZdHU7QnFM4y?=
 =?us-ascii?Q?ruoEDLrmeBDyeuHDpdQ3MZLD4ACqrOoRitVHq6oGxQnBqb200AQp2iPEmYpA?=
 =?us-ascii?Q?BYy31TF9JJkVc+zWgGaScajLl4XBc6b2BytGkJvhvbaPw7wYd8O1FPZgUGz0?=
 =?us-ascii?Q?TAD63KQR3MWtvV/RCHCYkv7K+NiyT69cjEpjW6YgV/+bRGotQUMIpS3Hyy/h?=
 =?us-ascii?Q?9Fl5WYupdXyzacs+KyLepOXyryFhQGSsYB1WkH+cyHCBnofHwa4CX0FUsmKs?=
 =?us-ascii?Q?RlFNW3B8xka3FxEmXqO8kXKyI1qq8IDTlI03CxU15FGaFDm+NAsZUFh4W1qg?=
 =?us-ascii?Q?nO6yBqIwUCi7juvFbFGSR0MgSNLZF5vQDYGDrCSq+Le3hJfTZxROyb8JxfFq?=
 =?us-ascii?Q?WkgVexeIsOKNNMK3nsgOARavRfaxhRaITpHzmWDfhZUVQd7ynOLKMxn39DTq?=
 =?us-ascii?Q?8Kay8ph6gndqJTRNFr9ooTX5Ms+ofmOTfd2HHsE/rQY5P7hbygfMAEKuQx04?=
 =?us-ascii?Q?8KRtVODOM1dLf7FCI8JrCwt5r8dLjqJN1VuW5C+0+v6Xi/4GVNQnZPG3VklS?=
 =?us-ascii?Q?05xf77yLvmX2jtnrGx4ZrT2sNLpgiPm3cyaMHEc04rxIc79HcOjOGSlSlWmF?=
 =?us-ascii?Q?++RMvEl/is6Y4HHe0H80MsJJ7J903fNP/lVjfSNS1B1vKa0DJBsS9MzQzR5M?=
 =?us-ascii?Q?2OMcZUrzUBKWDLTM2rYxlf2+k5zg6+HPYHU5U7Ex+OSzUDs5ZA6WGhzyCHNf?=
 =?us-ascii?Q?dic1pg++KvI3alHvKrYtjWSq+FWCp5OlgMMItgfa8g1Ic2XmIa5A7Ryk5nCs?=
 =?us-ascii?Q?FB02fLbsmVbRtUsAobAgouc8AmRPxt1GsaO95XskRZJSbEPvZOfj6oCPvhmt?=
 =?us-ascii?Q?6HQFeRUJk2tUf7di/rDSR8aax446z2Z6RNUI68WHH0ZhEHLcG6g/2sbQrhXA?=
 =?us-ascii?Q?g7y3we8gQVjyv2N5KdJkBLnJXxtWOU1sZrttEXaJfD3fej6KeCMLklnU/cqh?=
 =?us-ascii?Q?0gqRYOhhr20vVoiQODAHCrgCDVWOafnYatWh3/hYVx7Jos+xVYFUL7Q0n9vQ?=
 =?us-ascii?Q?lNvTy6CjF9ZWbKikO2OzBmVemFqwHOCBZlYg6dIGoDyYit7nW9dOMfD76UPt?=
 =?us-ascii?Q?XDgJurCZCfLkFwe82wBKI8Li6I98iWv5p7Ca8UhD744eYFRFx7NGswddgYEe?=
 =?us-ascii?Q?iQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: debff279-29e1-432d-bccf-08dc4ffa2bac
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 14:11:47.4010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WcnxS+bNu23TPiNsCUvmHMOlI6VsKsydNBop/5waRyVNcVNXTI59lUDF8eMiTqNZ8InOgDX89qMcMeUAthII8x+LB76YLAgvOSkxnpoLwwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4682
X-OriginatorOrg: intel.com
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

On Thu, Mar 28, 2024 at 02:22:28PM +0200, Alexander Usyskin wrote:
>Add auxiliary driver for intel discrete graphics
>on-die spi device.
>
>CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

did you mean to Cc me? I never gave my s-o-b afair.

The order of the s-o-b in these patches also seem to be messed up. Who
is the author of this patch (and others)? Is it you or Tomas? If it's
Tomas, then the commit in your tree is wrong and you have to fix it up
so when you send the patch git adds a "From:" to the body. Otherwise,
please fix the order.

Lucas De Marchi
