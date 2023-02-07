Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F7A68DA24
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 15:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D6C610E0A5;
	Tue,  7 Feb 2023 14:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B8510E0A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 14:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675778871; x=1707314871;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=k/BThjwJ5wumx4qtLnz7ynj6EoAfEClSGg7xTNeOXHY=;
 b=Es8HjNfeyPv96tHY41ABTA5prhjUKZ0i4uOe3G1t/RQ8e7L6hVhUQhL4
 dX7ACYl9e0nkZedNkhhREGjvfQ1hef88nkqcRwX65/em0Iob2UDVgadOO
 Jow3IFXkaBbrdQ+2RQn1utY4qTax+9K3rmqvU9XQ1TwE1+k4cqSVSnMfi
 VNZGGhQdPwyT8eEWcdf7YGOGyIjDV+O71lFOqzzVf3I/UIzHHzg+ndrGy
 IOXuGm9bfRiKLPJfnY6DHNo+jG/KRYSw55P1IJ9vM0yh9iXTIPPgEAJnm
 LnNjNALiEBwpw0MdHtqVIpBPPkkxuEr1sz5hyNvj0H+5Kdr+REXP5gms6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="391909667"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="391909667"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 06:03:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="790807996"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="790807996"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 07 Feb 2023 06:03:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 06:03:31 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 06:03:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 06:03:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z13ujQdMZK9Q/yVeor/R5XiAnsTJkJUh19bisbGUxQyevv6bUxljDdjN8zVSMXti1E5lLfCJDvqPicBlE56BW3JheFN3+JJT3jCXR3PYItWtJGA//uLnDAAjZge/nJjhFe3F8Wy9CXAmLdaDGZjVKjRgwqQ5c2eTLM9DTVQxDWP8RU5dctSgPbctnuXHYj461djDKQ7a4gPVeOC9rToaZ5X14J5dN5XoJL4PCkZarjaasq3YCWN7IExC/xvO+buuTAxiAtt3LZYftR1OljBhWduXsdUldoCE/5UFcYauv8Xm3I6r0nBmioV1REc3ldZpj8bkwAOxhIQDWP0yeYyh5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YFAUvdskr8oZbYYPzVlo6z0d+bmsiWUqis9BXNOWt9U=;
 b=YhZUUTzQSJF2AsZHz1tHCZ+lQtBuiDFACXwABQwnSB+wPAroIuhB1IcOuvR7vWzsqufS3Xf9zCYk8DvrGeijwspwpkgqTKuSGJRbYl/0ZI9fqUfnSubNeyhoO6vACTLfSccX0SClMK0C44XMXVC5PKk+mvb6t2xVTwYpEfuSxVCV8j/gFk/Rxp7ZvKE6VrLMwIXwIqnl69dL95sKytH3sTgA1Kb421H2ghHgZI7KF9TEeDNim+0Zvnzxiz60C7h6lUZhjM5NjtbulvCUKR1/3a8LIjOHoLFCHo2iTrkeAjPQenykZAPgfAN5gce9BxeVa+dnhWXxgF5d7qjBaRiLYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM6PR11MB4627.namprd11.prod.outlook.com (2603:10b6:5:2a2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.36; Tue, 7 Feb
 2023 14:03:27 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6064.036; Tue, 7 Feb 2023
 14:03:27 +0000
Date: Tue, 7 Feb 2023 11:03:20 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <linux-firmware@kernel.org>
Message-ID: <20230207140320.5xydvcqvkl6eiidc@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BY5PR13CA0023.namprd13.prod.outlook.com
 (2603:10b6:a03:180::36) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM6PR11MB4627:EE_
X-MS-Office365-Filtering-Correlation-Id: acdfd047-0191-4cce-da12-08db091415b2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iOG1rZS5V9+gWvpKlbOOU0YOoL33PSC/wtLTLv+CXhOYsBofu+8XOO0i0cJo3QMPh2dI15DYKR08ZWwfYTQwiMeB5+nTcrK9kG60P0wVg/iECRO8DASt0Ja/6xPQ/1RiCXg5CX9aPDtewZx98b+2XLE3W7SjZ0wmZDiLwV/F1jpZyiwyh4Aqc2sA+4iKSYofgtzFtx4yOEoes7gEFrLUVMQMW9I17MmX3eBNOXHa9vQLcjeeKie/HYT9D8XewMX8XyqPua4Wyu5+IyLd0ojWAsLfnJabr3aAUlJpA3nOEPqTszh6CDpgocc+vqoyn9fb50Uq/xZgrTW3eUklM00LL5Oqh2ezDiBD5QkVre3J6IRBNlg/+AkvGs+oWRSENDShZup0ozJfjRYVLR77oBENILS1MOJv6mB+q3sO6I4nUYFbpmJY3J5zs7/w3/H68pqsvNMemmFP9cx9rR24nHijB4/zLh2Ws8rrIZzAN9vKQZx1dgMzkH/9hdE7ZW0vhvX5s1H0ZUG3mfvADi2a/mAb4eU0jLNLKW5EKoIxOIft0ME30rMCRIEzhih1LsUx+EDSYgoIq+DDnW4buGAT0NOQJGSPvrUa0O6oJZdITGgmQhNaGVeoOCn0sEG+qne7SqdchxIhRHIAe0ntz6GnA/u7vQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199018)(4744005)(44832011)(33716001)(5660300002)(86362001)(2906002)(186003)(4326008)(8676002)(9686003)(26005)(316002)(6512007)(6916009)(66946007)(54906003)(66476007)(66556008)(478600001)(6506007)(1076003)(6486002)(107886003)(6666004)(82960400001)(38100700002)(41300700001)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+s0F/7oYCVBcTSmh0WEXiWmad4ilkbGRahbNDJ+EpTJBaV/ja632U5qwlTWn?=
 =?us-ascii?Q?c7Ep6w9KWaFR1XhMywp4QOVUMEnKFP3xxnl8VaIHhGsSxSNHXD4nglWlbPvN?=
 =?us-ascii?Q?iX6z7qihpa907rpuB4Q4gz84cPnWkkVQ4wPACaAGRZ+aTxuf2dXmee7C0Tn4?=
 =?us-ascii?Q?1DaAKRquFDF2O7w9Mp+/TWp4khNrTXsnvZgfLj1O+FB7InFKemA61SJ/tWcc?=
 =?us-ascii?Q?MfBjxGPsp72PDu7VnMN+cMuHDU9EA+OnKV2wR6RUEHnmM4kClDI0cLVGgYzj?=
 =?us-ascii?Q?8NSXDjhz4rG7MmtOTCIHynH2YdVMqWejp20AnfIm4LeXC3BRZsTDAfpBWBZT?=
 =?us-ascii?Q?j/eCS/mmH3DxjBKoMtEbWtbot4Zzuy5+CUV9N7bZcE7tQUztJbq7raG+gYEi?=
 =?us-ascii?Q?DuCTNXBHex45xzFpoPUbmJlueJl5DFlatPM+GtxNljk+0KrG6ajHgXVAPqOq?=
 =?us-ascii?Q?l4KIBeoSR8osr6dMYUoMdZlY+Aj99muemBVtdGvzpXu/u+YZjOqQvlb0jT49?=
 =?us-ascii?Q?HUqN2FixXkdVDSB7pXdFPwN8KRe94eu1lGZ0fz+Ya7iobe/CI5hStejM1PY0?=
 =?us-ascii?Q?ood3AEghNvlDEhFTIBkvp9r/KOMCLIHuy3SxdaWV1cZVZsQ7eI9ZmaOURWPD?=
 =?us-ascii?Q?Fcax0gL8zt3MPNXkncNQgsIhOYk2c00orASbXKnCmgKaQN9/PizTSkgW7T+Z?=
 =?us-ascii?Q?uSuOVNHJIN8jBSUdjBCLN/wSw6ePLvAVaQRklt2k/JeqZmFiIMjaNPDuc402?=
 =?us-ascii?Q?lVioUYkNgYSziA5TdN6rUa3oIajKOLJYbIb2hqL/tOg2aMX/HV3mYnY3IHeJ?=
 =?us-ascii?Q?GoF/9PQvTw06hU7rOtp0lYdIHZjy5/rbkCiq/mIqz+XNGZUOdfr59X8oFDET?=
 =?us-ascii?Q?2Hhd1cL2hG7Rk2P53+k5dC2YtGjkHIgb47/qwNhU0wfM6to8ZLq3tKEP/fa8?=
 =?us-ascii?Q?ppu3uk7iq4Mwb/9ZRiKhg7JyCl2FqxuhMl1V2yIdR5sUTJLhftwhe4oLfFAN?=
 =?us-ascii?Q?lh4UYklWxSXdTwy1T9BxN8ScXUVBFLNguaQeqexLO6xqmOqgiJ26XtiFt7Sr?=
 =?us-ascii?Q?1RDMt/5pXggdp77W8Q7/IuUtEOSlV3YhngShqQWeSH9FbUPae4dtQi4GAIjP?=
 =?us-ascii?Q?0jxiVbTJOHhZ42RJrW60sek9pPs6N4BMuZCg3oRcpB8+I4NXhl1GQjBwibx5?=
 =?us-ascii?Q?acfT5SNZ8a9Q6ZLkC9IMX9KiCFxNZI2nf3Jl9amAGex9pLGEJbxG7/pba4Yw?=
 =?us-ascii?Q?k0dzHLFi9p+klTxGYyUeTmbRy2cxlTJ1C2TAWrDrlDJqPZw1smbjFdbnP3YF?=
 =?us-ascii?Q?Jwe7RykwQe00wCr/8af4JWEHUkzR7kT/+GwXrS28AhHcrrD/ZRh41CYEY22m?=
 =?us-ascii?Q?QmFe9LjYkJM7AhHGyQEHhyLar7S/OxXC/EMYCXp+1ZHHphJ2nd744QxikBiM?=
 =?us-ascii?Q?HBhgr7nFc2Ng+NduBXJSfvRmFUeZ2pU2q3q03Y46ccgKtPL7kShsbQYnfocm?=
 =?us-ascii?Q?jh9rg+Z/RHbiAPRzuzUTkLtB6lOt+UbioQdJVznxuZIL+CVauc3Yh/kT4Hsa?=
 =?us-ascii?Q?fw7mzoGg6H6/3Mj8EaGyElEnX6U/VqJ+x3T8BGcpZsKr7JAIMHYPJPumElji?=
 =?us-ascii?Q?WQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acdfd047-0191-4cce-da12-08db091415b2
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 14:03:27.3126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vg3DDNr6GzKtsC7Ku71ErkooCy1E9W/0Fg7xf0FdJqUFJW8r7E3m5lw/H9mtnls/ogWUSP1v9gAbMSHJQfuOpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4627
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] PR for MTL DMC v2.11
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
Cc: kyle@mcmartin.ca, Josh Boyer <jwboyer@kernel.org>,
 intel-gfx@lists.freedesktop.org, ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit 5c11a3742947810ee8bffbd476eb5a1b0c7999f2:

  amdgpu: Add VCN 4.0.2 firmware (2023-01-25 07:40:41 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dmc-mtl_2.11

for you to fetch changes up to c1181ae796970b6b48218bd2bdb9392fab0e070f:

  i915: Add DMC v2.11 for MTL (2023-02-07 09:13:10 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      i915: Add DMC v2.11 for MTL

 WHENCE           |   3 +++
 i915/mtl_dmc.bin | Bin 0 -> 48512 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/mtl_dmc.bin
