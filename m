Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CBF786CDB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 12:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F26F10E51F;
	Thu, 24 Aug 2023 10:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE6E610E51F;
 Thu, 24 Aug 2023 10:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692873287; x=1724409287;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1n1jJyDSnHWTC/EHE+yMMCK3nxvnYU8iYJ+waRJDfzY=;
 b=S4E5Vyd7XycqsqisznAOm/iOeNlnHIIDW7kIQKbvcI8EFM2x+yL0IDtg
 LHhqJxcxYH+C/hPkojH61zMpwxViZOAdefzRqAnIWqxON/CFueLTyzeJK
 PJSLuC0xMkYXOakATsFnDGC5Kqh8WtXAXn8E0CepuaknSvmYkN2X9FzEz
 81HIas3o5qDhbLswDxxStc04bAY6Vv+8dqd5vem7kl2C9zP2yQgyA3zWd
 rtbQKR5ai1k93MCn9pPkwDalIe/xZJUveuUYoRSLeMATc7bOK1UGLq50N
 NjTsBxzf/3YEYWrDmfSc2FWmtIF7T5abW5Zyiw3B0UboFRpHILn7MWG8S g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="377133712"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="377133712"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 03:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802495275"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802495275"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 24 Aug 2023 03:34:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 03:34:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 03:34:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 03:34:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eJrn/uKJrd/uCGQ6Yee27kgpMzUKduZloHFc8+/pY+hOY3/sQZJhNYrt8EqvG50njb/8U7KCRunGN7UCV0/AlNcPWYKUXfmC4D3gk7xdPcInBBCrde6R+OenVbr8f/v644A4NH02m2GzSpxTrU+zQAiq/75RmAvBEEhT+0Yz84EdbH+lARfsblhRZ8kPv7QiGLfX0n8Ywssp2F0vNQZoXJ6H/kSH/Qj5NWei2HvXmYWnszknoR4i/kWnjXejgpHvifz4+AkrPvXeYGg5q0aIBa4DAxkty5VBDogTFrQtw6zaFs/bB6yN3cQYRozkhhJniiH2Btblb+PxSLhYmuB9Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kiQeAIKqfCA1fv3dnttlWcIWl87gZKVw4yeZn00oOAs=;
 b=bi4+R69WNP7WquD/mg7NOgFf3iXxdz96lRAsJ6zqdIqLx5rGOFogTxzVdU79LDPh38DlAeGoALfdfpiWfew4WwNHgkfM360x2ewODdM/my3I3UTx2d7zVNk4+hRMEC3quFZBJOm4Vj21kGpsmKARR1nZALJmFlWHb7GyujzIwWeq1BY849mEAIFNmDtN99JQdGvKTJQwvug4PoU6d9YWVORRJRAmNOQkVbTEVIMbDfUJoNP7LKcPh5BVGkxDqHCDGgossIHmQSBX4K6QMSlXG1PGXplgUmOrrAL1iqIMBlVJgvd6cwbctJlJLyBJqPsrUYfltT2EJ8DuHtMjQNCcrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW3PR11MB4682.namprd11.prod.outlook.com (2603:10b6:303:2e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 10:34:29 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 10:34:28 +0000
Date: Thu, 24 Aug 2023 03:34:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <glbznedzmkljwoxxjj4svdd63mitprzukp4idw2ynarlseo34w@sdha33ofw2jc>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-19-lucas.demarchi@intel.com>
 <87zg2g4z4c.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87zg2g4z4c.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0283.namprd04.prod.outlook.com
 (2603:10b6:303:89::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW3PR11MB4682:EE_
X-MS-Office365-Filtering-Correlation-Id: 088495d0-384e-49e0-58c6-08dba48db1c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g8TtxnyMgSjbJ7/nltjdYDP3nhuuBQ/StLreplT8hnueboYyIdxzkuNzK+vls1xXeXf/ATmpNFZLdxShjQc6uMb8HdB7Pz+9/rZNcLt45D6dGtQ4ULnaBNbTzdlWhxBC3PKObRq1wgBp/MDI+BX4tPusdeTMQYKcVrmRrK0M/OiRwRsEAe34UogzMPBXAqJ1JvFvgU65X2mlrmtQ1Xi3cKcNVtc1fG3+XkGKkwI8ijSPOZ47aaQ8HliXwBVQ7lccpmQjrqHzFxANioNk0Yf4wTRBGwUU3KLhShoW+sJEdx7c5YmoAwmG08kItcowhSjdE3THdvVUJ0uq1iq151LVhm0du4yLQv53AEZ8yJXSijZF6YEdYCoEGAeInxQAuD0fdOQNioovMwMHUCnIW2v5GjcewlC+ctVXEHBQMvDMfkYnVHGgVpqn/MPC7JoPG+aYRc6EaJBWKtNG12+mdtOZEfJS+E3Q63ObejNyu1Q2ZNXgGA2v/PUMelf20ariu8eBwZObeYCIoYcQF7N1HMvOOp2E9SABqiyvF/iXKgcj2bvD+YOQ2jg/Hd2hP0qAB8wc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(136003)(346002)(376002)(366004)(39860400002)(451199024)(186009)(1800799009)(33716001)(66476007)(66556008)(66946007)(316002)(6916009)(82960400001)(478600001)(26005)(38100700002)(6666004)(41300700001)(86362001)(6486002)(2906002)(6506007)(9686003)(6512007)(4326008)(8676002)(8936002)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CvshXP8zcu5tyfS068q7kq6Xh1A5sbz4jz3wUmLrTpr95vSyP4AJ80ej8ERT?=
 =?us-ascii?Q?M+INzQA/dx8F2+yne+tDAu3p+SnbVSLBD/W2AThkib6WM01zXA9j9rBs5W70?=
 =?us-ascii?Q?QsmiO293sUIESasE89cIbrS55rA5SUCLVNUrtkPWI7hmLiyZhevHXmnRtZwI?=
 =?us-ascii?Q?8hu6y23yA6b16MfrobfOuUMxdGzTchgjpfmJJoVfFza1ETeZD9GjbyG0Akzz?=
 =?us-ascii?Q?lS4ReekNf9RoPxyoQoZ/HqtZ+Mw+nuOuwyVchhyhQvXDMSl1LiGS4s3Bo7KV?=
 =?us-ascii?Q?WeIR2aUK5GRuIaCXJWDYYFo8O6iBsk0FgTUpF+pGvU5uM+MHbwG995FqaAKj?=
 =?us-ascii?Q?08iw8nZUE/TaCb5uqyARE3yzE8P72x+2bINAXp4LhWBFT3UKODjc6fiLDPN1?=
 =?us-ascii?Q?WcfjCLoy9nOb+J1xUI8hkD8ZEbB2oQXDdiCvNgfIeEY3/BebgmsYhZ94dFem?=
 =?us-ascii?Q?/mR9oS1Pd3z7dzc21+ujn/CrinvHFLljjir7Uhb0imx9FD5cY1FOPkT0j7QX?=
 =?us-ascii?Q?veF4jiow8BrnVTAYUngxvGvcurIzTKFxuZcUyFWL9LSbPVUGSd+P8ETKfeLV?=
 =?us-ascii?Q?5vvPXr9N4GhnXrnynADIisCJdpFZ9MCJD+kgDAN3JPmgRKRmp4siN5fHYXjb?=
 =?us-ascii?Q?X3mAep8/1G0rMjNo9KAEHDSbY6uuUmlSl6vLbGPZZKCiWD647582/1cNPbQf?=
 =?us-ascii?Q?jhDaK0t8IZJyiR6gw846TUG7uia1cJYga0vXVMc+lAeeJBjHFzHIJtkcUKzD?=
 =?us-ascii?Q?5nHhly/cipeczet/XBWW5VdgKvAt2hutShoFJ0bRfp9TdC9/pIkAnQlC5t1z?=
 =?us-ascii?Q?0JVS1c1C8eRR6f0W33K3G9sgxnPzwtX2+Qb+pce+onnso4//PiC9rgTNCKZp?=
 =?us-ascii?Q?YCDRv96KKlOxrMQ7DliHc571FzqnRpMmEA8yjO+GkUgPne6EPTQryF60K2cG?=
 =?us-ascii?Q?jyrf/kFHtI9lCRX8UrZHxN0fda0E8XJs42ka+nxhOieIEAdfA9pvzk8I80sH?=
 =?us-ascii?Q?WUXSgrpYxE+KlFkj+hOivMu5mrXwZANb6V4o6GBsNqpine0DrfY/VOmDLmks?=
 =?us-ascii?Q?48H2jpSDHSL0vSfGKPsMKK6l4ir9/UhnMXglsraL8Dc9cPkkeHfvUw9iHFHc?=
 =?us-ascii?Q?T+YsT9X99fHd3lI4LOZ6HrpXZ2q8juC5o4mTHJ9nESWlGsEJHhgNQyFmJyBE?=
 =?us-ascii?Q?4U1QF2j/yzbA9AVCuIvCjIUQANj1D+iYWF2F7SFA/+75I/vC6W1lTdlvivuV?=
 =?us-ascii?Q?v1tv3t5zY0i6k8M9eFyUQzMJT9HjzRuHPY1p5HcCfWAqhgTYPDvkk1CZb46w?=
 =?us-ascii?Q?ULn1lK7rZfVY50fSYHMOv3X+8X1djeARPmSk+segmqH3IfKrHqg5uS4R+/p0?=
 =?us-ascii?Q?fUMh7HlYVa3T7dQqxVCeSspGOSBESJykaC4iR/tbzLrDdfu284nqtQt9GGr/?=
 =?us-ascii?Q?381UAt34mSypySvuK2Mf+p/2wdoZAgJkGZUOI91fJYZBT/Q82+bLCUdFsUWe?=
 =?us-ascii?Q?n5cimun77dRZecLFuWI+lU5ADp+ZbMnM3+18/RWke4k5OZcZmr0lrElPTZOd?=
 =?us-ascii?Q?CGOrX6MDWrPmq9SRRWmq4/JZi5K4jsPtdWuXEzNDszghlfLT8/tFIQyNM5gZ?=
 =?us-ascii?Q?eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 088495d0-384e-49e0-58c6-08dba48db1c6
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 10:34:28.4769 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5QR+so7cNgDVVhjXcK8sFVca/uAaADOw2r4e11fJwStBQX43YP6vW+TQMfIWyPRPqvjNSim0apF5xo01QceF5DyqvYwdgtoWU4mJJUujbhM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4682
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 18/42] drm/i915/xe2lpd: Move
 registers to PICA
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 24, 2023 at 11:34:59AM +0300, Jani Nikula wrote:
>On Wed, 23 Aug 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> index cb5d1be2ba19..4b5b9a97142d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> @@ -6,13 +6,15 @@
>>  #ifndef __INTEL_CX0_PHY_REGS_H__
>>  #define __INTEL_CX0_PHY_REGS_H__
>>
>> +#include "i915_drv.h"
>
>Please don't do this. Please don't add inline functions that depend on
>i915_drv.h etc. being included from headers. This simple headers just
>changed to including like half the headers in the entire driver. It's
>that bad.
>
>I think the main question is why does anything other than
>intel_cx0_phy_regs.c need the helpers? It's probably the division
>between that and intel_ddi.c that's wrong in the first place.

because on platform N-1 the register was on DDI and on platform N it
moved to the phy. So how would the divide be?

Lucas De Marchi

>
>That's actually been one of the benefits of splitting the register
>macros by area; you can tell what registers are used where, and
>sometimes it gives bad code smells about stuff being accessed in the
>wrong place.
>
>BR,
>Jani.
>
>
>>  #include "i915_reg_defs.h"
>> +#include "intel_display_limits.h"
>>
>>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
>>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
>>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
>>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
>> -#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>> +#define XELPDP_PORT_M2P_MSGBUS_CTL(idx, lane)		_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>> @@ -27,7 +29,7 @@
>>  #define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
>>  #define   XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
>>  #define   XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
>> -#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>> +#define XELPDP_PORT_P2M_MSGBUS_STATUS(idx, lane)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>> @@ -54,7 +56,7 @@
>>  #define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
>>  #define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
>>  #define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
>> -#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>> +#define XELPDP_PORT_BUF_CTL1(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>> @@ -75,7 +77,7 @@
>>  #define   XELPDP_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
>>  #define   XELPDP_PORT_WIDTH(val)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
>>
>> -#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>> +#define XELPDP_PORT_BUF_CTL2(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>> @@ -95,7 +97,7 @@
>>  #define   XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
>>  #define   XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
>>
>> -#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>> +#define XELPDP_PORT_BUF_CTL3(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>> @@ -114,7 +116,7 @@
>>  #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
>>  #define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
>>  #define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
>> -#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>> +#define XELPDP_PORT_CLOCK_CTL(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>>  										 _XELPDP_PORT_CLOCK_CTL_A, \
>>  										 _XELPDP_PORT_CLOCK_CTL_B, \
>>  										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
>> @@ -271,4 +273,61 @@
>>  #define HDMI_DIV_MASK		REG_GENMASK16(2, 0)
>>  #define HDMI_DIV(val)		REG_FIELD_PREP16(HDMI_DIV_MASK, val)
>>
>> +/*
>> + * All registers are in the same IP, with a single range.  However the registers
>> + * for TC_PORT come first.
>> + */
>> +static inline enum port xe2lpd_port_idx(enum port port)
>> +{
>> +	return port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A;
>> +}
>> +
>> +static inline i915_reg_t xelpdp_port_clock_ctl_reg(struct drm_i915_private *i915,
>> +						   enum port port)
>> +{
>> +	return DISPLAY_VER(i915) >= 20 ?
>> +		XELPDP_PORT_CLOCK_CTL(xe2lpd_port_idx(port)) :
>> +		XELPDP_PORT_CLOCK_CTL(port);
>> +}
>> +
>> +static inline i915_reg_t xelpdp_port_buf_ctl3_reg(struct drm_i915_private *i915,
>> +						  enum port port)
>> +{
>> +	return DISPLAY_VER(i915) >= 20 ?
>> +		XELPDP_PORT_BUF_CTL3(xe2lpd_port_idx(port)) :
>> +		XELPDP_PORT_BUF_CTL3(port);
>> +}
>> +
>> +static inline i915_reg_t xelpdp_port_buf_ctl2_reg(struct drm_i915_private *i915,
>> +						  enum port port)
>> +{
>> +	return DISPLAY_VER(i915) >= 20 ?
>> +		XELPDP_PORT_BUF_CTL2(xe2lpd_port_idx(port)) :
>> +		XELPDP_PORT_BUF_CTL2(port);
>> +}
>> +
>> +static inline i915_reg_t xelpdp_port_buf_ctl1_reg(struct drm_i915_private *i915,
>> +						  enum port port)
>> +{
>> +	return DISPLAY_VER(i915) >= 20 ?
>> +		XELPDP_PORT_BUF_CTL1(xe2lpd_port_idx(port)) :
>> +		XELPDP_PORT_BUF_CTL1(port);
>> +}
>> +
>> +static inline i915_reg_t xelpdp_port_m2p_msgbus_ctl_reg(struct drm_i915_private *i915,
>> +							enum port port, int lane)
>> +{
>> +	return DISPLAY_VER(i915) >= 20 ?
>> +		XELPDP_PORT_M2P_MSGBUS_CTL(xe2lpd_port_idx(port), lane) :
>> +		XELPDP_PORT_M2P_MSGBUS_CTL(port, lane);
>> +}
>> +
>> +static inline i915_reg_t xelpdp_port_p2m_msgbus_status_reg(struct drm_i915_private *i915,
>> +							   enum port port, int lane)
>> +{
>> +	return DISPLAY_VER(i915) >= 20 ?
>> +		XELPDP_PORT_P2M_MSGBUS_STATUS(xe2lpd_port_idx(port), lane) :
>> +		XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane);
>> +}
>> +
>>  #endif /* __INTEL_CX0_REG_DEFS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 3147ed174d83..3587ddc6d8ed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -176,7 +176,7 @@ static void mtl_wait_ddi_buf_idle(struct drm_i915_private *i915, enum port port)
>>  	int ret;
>>
>>  	/* FIXME: find out why Bspec's 100us timeout is too short */
>> -	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) &
>> +	ret = wait_for_us((intel_de_read(i915, xelpdp_port_buf_ctl1_reg(i915, port)) &
>>  			   XELPDP_PORT_BUF_PHY_IDLE), 10000);
>>  	if (ret)
>>  		drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to get idle\n",
>> @@ -224,7 +224,9 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
>>  	}
>>
>>  	if (DISPLAY_VER(dev_priv) >= 14)
>> -		ret = _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),
>> +		ret = _wait_for(!(intel_de_read(dev_priv,
>> +						xelpdp_port_buf_ctl1_reg(dev_priv, port)) &
>> +				  XELPDP_PORT_BUF_PHY_IDLE),
>>  				timeout_us, 10, 10);
>>  	else
>>  		ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) & DDI_BUF_IS_IDLE),
>> @@ -2365,7 +2367,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>>  		dig_port->saved_port_bits |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>>  		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
>>  	} else {
>> -		reg = XELPDP_PORT_BUF_CTL1(port);
>> +		reg = xelpdp_port_buf_ctl1_reg(dev_priv, port);
>>  		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>>  		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
>>  	}
>> @@ -2385,7 +2387,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>>  	enum port port = encoder->port;
>>  	u32 val;
>>
>> -	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
>> +	val = intel_de_read(i915, xelpdp_port_buf_ctl1_reg(i915, port));
>>  	val &= ~XELPDP_PORT_WIDTH_MASK;
>>  	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
>>
>> @@ -2398,7 +2400,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>>  	if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>>  		val |= XELPDP_PORT_REVERSAL;
>>
>> -	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
>> +	intel_de_write(i915, xelpdp_port_buf_ctl1_reg(i915, port), val);
>>  }
>>
>>  static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
>> @@ -2409,7 +2411,7 @@ static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
>>
>>  	val = intel_tc_port_in_tbt_alt_mode(dig_port) ?
>>  	      XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
>> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port),
>> +	intel_de_rmw(i915, xelpdp_port_buf_ctl1_reg(i915, encoder->port),
>>  		     XELPDP_PORT_BUF_IO_SELECT_TBT, val);
>>  }
>>
>> @@ -2829,7 +2831,7 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
>>  		dig_port->saved_port_bits &= ~XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>>  		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
>>  	} else {
>> -		reg = XELPDP_PORT_BUF_CTL1(port);
>> +		reg = xelpdp_port_buf_ctl1_reg(dev_priv, port);
>>  		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>>  		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
>>  	}
>> @@ -2967,7 +2969,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>>
>>  	/* De-select Thunderbolt */
>>  	if (DISPLAY_VER(dev_priv) >= 14)
>> -		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(encoder->port),
>> +		intel_de_rmw(dev_priv, xelpdp_port_buf_ctl1_reg(dev_priv, encoder->port),
>>  			     XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
>>  }
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
