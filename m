Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A0E704EA1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 15:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6125210E0EA;
	Tue, 16 May 2023 13:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C7C210E0EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 13:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684242289; x=1715778289;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=lRhKa0dOt4PBBgXYXj4Sn34iWL6G5wTxR9Sm3Fg8SGQ=;
 b=PZIYPsRGtFlEIJ0tRElnzBFAArPIvN7zXPP9EnmXrrashV3P9PCKlAU6
 srF3rcLFXJOYqD52iApGUZtqOOXTN9dWCheMNaEV+9QCO9WUPP+0yP6Al
 Jla5ouiHZtLFk/BeiswUK/RyVze4A9bmeNFEkGB9ZBzlSUA133VMIpHEy
 vX+MQMkCfQoKdkoz4SoHpIobonDUVFdSgP58KwPp6TaMkM7pFopC+G9y5
 gs43wSX+BBcFyqjuFXyolaWiesw5hen8v5IL9ivrpm2i0YZNXSN2zRhcT
 nMzssdLgtRY8PwjZD8WLsi2FNqz+nXzag0qgk5LR3Qfvc3aMQwTEfGDv5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="331088413"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="331088413"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 06:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="813419251"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="813419251"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 16 May 2023 06:04:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 06:04:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 06:04:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 06:04:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AVW/bTACsfti5AUBp4NLBonB4Ep1SRHuagKgv8VzebZsuvrXbRrL5tod96WIKvrkmb8zNTkADZWQYiImsqtd974kInLWR0wGinxMrOz0kPFitbJoIKVtCWw6vz7ihj7pLQzzoSe9MFWYO1NLhTo6TJxPFq/PlhO0BDY73hYSgKK5TODdo9LPm0jnN2WEITa2uYImCpU1V21ayuPi+4qtjqBqDIE/DgrArLcdyXv5y/iJ4782Yv8A4v2l/f0tLfeCba66SdRglmpWS71uoOYC0OPgzvpB8XV4BajNL1c34fhlRcuLrr4V8PKMiU96Z8fKUt7bfG+FnWYpeMqRQGpE5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m+ctKm7N6b+ieuiu+jZ3ZzNadLFZ6HQNDWcXLxfI+5o=;
 b=QXB8Mn6YuniVi3oZWmvB5orsgRmWTG5vffSyfHeRK1vXI/z7Nq7yP/Jpi85y/73hW0vQ656BA+04Z6vQQfw1BtDFA7T3Jxmv/i3ITR/pmfSc8NdxGBkZNpp4fBHin3w71hyIIdLvwPeMihAkIRnphVnjW00Tku3Wv2CK61CEJCDDkU9FiLtYu2DxDRCoMBO9XGNy56YQqIuOBt7oWB9PJtenFlgICvugxJO8452t+FZgBevofLNuY/T4fOTcaXzVdy+PGzej3/i+TxOzC9cpWdaH1Age+kGsa0FnZYLnrYWTjEcQ+VHAVUOKl0r7S+O9rc7sSDY/JvriFgnkAo4VHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Tue, 16 May
 2023 13:04:22 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%3]) with mapi id 15.20.6387.033; Tue, 16 May 2023
 13:04:21 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230516122926.2720581-1-jani.nikula@intel.com>
References: <20230516122926.2720581-1-jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 16 May 2023 10:04:15 -0300
Message-ID: <168424225552.36532.14479350464099293863@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR06CA0002.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::15) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH3PR11MB8093:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d78d127-fe61-404a-e312-08db560e10b6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t2XlH2HYa5osZEthw7CeJUtm1l/kHryh/FuHm/yT8BP9wjr+wYp0+vDSUxEZyGJqbYinAgVyTUCzJBzLI29xC7rQW7YiaUEGYC7lGiiT33dbHyvA4maMM8XOFfJ/yJJTKtqyNNfw3y25WSoziZm9vyKG+nCcd667EFTAdz8NGGTixWx+u8LejTNk5sqRl2Y16PcPPjvvvSv9NulKcbw7b7iFP5mGsVTrhrInH+9/X/v79HcA9LEZ+OZUUC+IZDQMA4E2KlS9aNgOrAvMLadRQHpAG04FVxdOJiNOHtlCBBhRm+PnxJ/CGPpP3L+nnL37GAneg0UtkVO2GtXs6G0yKWDFQ8L2Un3XpyLKSY2uNUlGX9VFY+w7IAZxy3x42mjQ5sfM/6BFroMFUZUefXASUjUpy+Lq2t4RRXXrubi2x4vcjt8i+1H/m7XOIPK3+Ur8M2mkG2+bBhPKKsz7lbnDQSU4DU5CSt9ZwRmB/OjVYtrQKH2N1lpVxyrRmC53ZzTVLfZ6FaNJG0Qe4SnGZ8QqxFGgyWrxij/m7ho4ixDHANAAdY1OWY7/8hMD9pRcYaXw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(366004)(136003)(376002)(396003)(39860400002)(451199021)(5660300002)(44832011)(8676002)(8936002)(83380400001)(2906002)(186003)(82960400001)(33716001)(38100700002)(86362001)(107886003)(9686003)(6512007)(6506007)(26005)(6666004)(41300700001)(478600001)(66946007)(66556008)(66476007)(316002)(4326008)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXVsQituUFhSQWE1U2d0V3NuTW1aVVc5VTQyREFwd2dqaDdJTmhmbXZubDNo?=
 =?utf-8?B?ei9FL2tRc2o1UDBydGl5OEhyTnZQRFNRZnQ2bDNZcitGSG5DZmtRZFV4RFRn?=
 =?utf-8?B?S21pOUw1VDZrNDlSMEIxeE5UQmNvd1BuOE5uWm1UM0lLYUt6TzBtWFZGV1VW?=
 =?utf-8?B?MEJyT3J0ais3UTh0eU04L25IUzBsZ1pkYVMyc0RVajhNT3RRRmtnQnkrV3hC?=
 =?utf-8?B?YjZxZGYxMzhJdXY2MURwc3BGODlNcU5jenk5c2JIcGJaTy9yb01hVHg3amJk?=
 =?utf-8?B?SUNRdkI1L0ZYeGIwSFU4SHhHdXNtUUU1eXZOemo5UDZaNXFLaTg1bThhblhB?=
 =?utf-8?B?OEEvM2txUkxNa1ppY2cwRDN4anVhalRqQVl6MlVqTzYvMXN4dFVHOVN4cld6?=
 =?utf-8?B?MHFWTWp2dnh6WENpNFV6anc1Mk9QSzBQTmpueG92UnlPRVh6TlpvMHViSUpP?=
 =?utf-8?B?NTlpN200b0ViVEFpRFBNd0JITkdXUGo2VTQ4SkdIUDhERWFaSDdZcFNnY1Vq?=
 =?utf-8?B?aVBvQWFDQ29xRTBsaGg1am1Wclg5eWNRcHZOd1V5ZlZuVFlRdytvaU1DNG8r?=
 =?utf-8?B?TTU4NVNBZ2svc2NHTEpEcGE3dWRueHQzNWo1WTNENkp4UVhaSGo5SktNN2FB?=
 =?utf-8?B?OU1rWFlKMnpONjQ4b3pIWTB6VXhRbXI2Wlgyc21DT1lXSVJnMkc5akIwQmEx?=
 =?utf-8?B?dzcxVFBTeHdob3dRbWVPYTZMMVNQSHFOOUtncGZueTljYTVJMGQyeUZtZGl0?=
 =?utf-8?B?YVV0M2diRno0SEpWMHo4RDArSVp5SDZCdUdWMjFBVkFCd1g3Nys0azVKUCs1?=
 =?utf-8?B?aFMreVdFeHlSekxrODl2OFZNNXF5OGlVcWxOK3gwY0tKRFBQRkJTc2hZdlpT?=
 =?utf-8?B?bm9oMmRTU0dCcVl5cGdFSmMrbktidlVESnRsU2ViRitsc2I0aFVScEJFc2Zy?=
 =?utf-8?B?M29TbW9pR2ltVmRmSDZoZUJtYUppbnFiRGQrZkJaNE1Tb0t0L0dYWmoxMlY1?=
 =?utf-8?B?ZXpQdDg3ZVlKbG9NU2p1bjhWSTB0endVenNRdFZsZVNqNkdJS1luVE41OXlE?=
 =?utf-8?B?T0NCV2JvL2o4K2RuTiszanpRcUVsVzlVWjNWTFRrRFhxa2xOV2pKUmNPVTM2?=
 =?utf-8?B?MjMyV2pJSzVZaVE5UEN5aWF5UFBPTXJZTEpMbWhlT0VnV2hYUzBwejhESGhF?=
 =?utf-8?B?cnlHcmlubjZvSkVaTWtNQlg0NlFIdkZQd0Q5TXRRb2pGMEhrb0M0M1dOK2pI?=
 =?utf-8?B?eWxCZk9va2FPeGNJNjFBcGpnQU1VeXZjM1dFQk9PL0NzdlA0YS9UREZ2cFhh?=
 =?utf-8?B?UG5UZFVWUDJNQjI5SnRVKzBkNTh3RURRMnR6ZVN3QlZTcjA4dFQ0L2hETllE?=
 =?utf-8?B?TWF0eWFqUHNFWlU3c0pQeXR2elk1T0lONlJNVFYxSHpicU14d0E2OHZpMmRr?=
 =?utf-8?B?TXlDdHNYRmRZWkdtUlhQTFg2aVV0bFNPUkpORFJHNThpRGhHZGpNZ0xBWXVo?=
 =?utf-8?B?QXU1MS81Z0V6UXNvK2crRWswVUk3TDFFL1NjVHNrVS9aRkxDNEgxTGh4WHgv?=
 =?utf-8?B?SXBjcnE1ODNVZzF5UlVpaDNNcm1tcFA1RzJwYkY0NGsvRDladUNZa3orclZ6?=
 =?utf-8?B?ODBMY0pkeGtIcHBCQmFCLzlBMWNpT0hVSkhSNCt2UGlQclRYcFFSdzY0V3lq?=
 =?utf-8?B?clp4QjFXbUVNU0YzZGNUWStGdlNrNWIySEkrWW9VbmVUUXVQRXFJSmQvZEs5?=
 =?utf-8?B?WnJEb2RUMTQrZE9RREh4OUFGZUNYelhMSGhBS1R4REJPQkF4c0cwS3BTTlBL?=
 =?utf-8?B?dVU2TWJBY3ZPSklWZlk1N3Ywd0RwUURXU1ZUdDFkMG1URHlvd2laRThFNnho?=
 =?utf-8?B?TFVRTkZUencwSmpVd3hMUnpwbW1rcWt0QjFwVnE2dWU5NVYrcFdHS1p5Y2RT?=
 =?utf-8?B?RUIyRmh1QWVYNFE2bHhJL0lyOExuMHQ3YmI2MW5wR3ZzMHc1L2lUMGVySUda?=
 =?utf-8?B?QVFnUzMyRnlWVHVLTU9wNFF4Y21mOHh4OUJkL2NPNEhXOGdXUytxNHNJMU5V?=
 =?utf-8?B?eHg2SGtmbFBTNXFIQXFJazRWU0E5RFN6M1poZnV5QXg5Z21oSURpSkZWNlZX?=
 =?utf-8?B?VGcvV0J4MUZHb0pqMTZ5cnBaaXNxZGNMQmhmTU5aSUVyaDBrMzVEQ1dCSkQ2?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d78d127-fe61-404a-e312-08db560e10b6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 13:04:21.5412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sqhk2uf+xGbon0/lya3iG3lK2eOxv3TfpPTa2nV8Q9vlgRSWPdrekTZc/Pz6J3H6Ou5/iNiwXa8NmorjzcNbSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix intel_display_irq.c include
 order
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-05-16 09:29:26)
>I meant to sort the includes before submitting commit 2b874a027810
>("drm/i915/irq: split out display irq handling") but forgot, and it
>wasn't noticed in review either. Sort the includes.

Oops... My bad.

>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++--------
> 1 file changed, 8 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 0eedd1ebb389..3b2a287d2041 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -3,23 +3,23 @@
>  * Copyright =C2=A9 2023 Intel Corporation
>  */
>=20
>+#include "gt/intel_rps.h"
> #include "i915_drv.h"
> #include "i915_irq.h"
> #include "i915_reg.h"
> #include "icl_dsi_regs.h"
>-#include "intel_display_irq.h"
>-#include "intel_display_types.h"
>-#include "intel_hotplug_irq.h"
>-#include "intel_psr_regs.h"
> #include "intel_crtc.h"
>+#include "intel_de.h"
>+#include "intel_display_irq.h"
> #include "intel_display_trace.h"
>+#include "intel_display_types.h"
> #include "intel_dp_aux.h"
>-#include "intel_gmbus.h"
>+#include "intel_fdi_regs.h"
> #include "intel_fifo_underrun.h"
>+#include "intel_gmbus.h"
>+#include "intel_hotplug_irq.h"
> #include "intel_psr.h"
>-#include "intel_fdi_regs.h"
>-#include "gt/intel_rps.h"
>-#include "intel_de.h"
>+#include "intel_psr_regs.h"
>=20
> static void
> intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
>--=20
>2.39.2
>
