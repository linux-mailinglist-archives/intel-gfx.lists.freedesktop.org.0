Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3AF6A63C8
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 00:27:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2086210E009;
	Tue, 28 Feb 2023 23:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16CFD10E009
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 23:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677626822; x=1709162822;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=8xvmwxUPU7pJUygWiogq1/NEDhBL+PTnEWTWiIq8zV4=;
 b=mvuPkRfIpqY6hVDeATAGoly10epE3DC+bZHxj4c2QOELwoJ1J3UlASgg
 B4gz3IWMDuVlroA6XyP7gkhPb9cuLhEmOgquC1aDk4QSGmkxSiZ87GESJ
 tjMNXl3jGuLU6oj4vwrKZCEk+MfT5/hFP2FoXbNur4mi+iAJ8KJrw2FpL
 B3+IjRk/9WPczfgUGL3oWq6TtbqZCU+aBYNfIK8C4Z6bkWUYB+H6qS1jo
 eK0pRNR2V+j+g3KUeZpQ85KgwuZKybYOGsWVUXxjT/jg2G5KcUaKJbOl4
 JeZAJ/yOfLIrweIV4D17J7+QtR/iBsAsos1r0OnaRf5Z4quts0phv7JAe w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="322534515"
X-IronPort-AV: E=Sophos;i="5.98,223,1673942400"; d="scan'208";a="322534515"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 15:27:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="676491788"
X-IronPort-AV: E=Sophos;i="5.98,223,1673942400"; d="scan'208";a="676491788"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 28 Feb 2023 15:27:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 15:27:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Feb 2023 15:27:00 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 28 Feb 2023 15:26:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jmat/MndROghKzjZcWF9w0kmau33T0H0gEJDtepBghp3fiDhYJ/7XUS9rsQDWfYDy/oBtarSzwYsgShq/ohG+G1J+o4mMoX7gO5X5//JGIu41VC7o+kVVcY+WDBh9Fh80yFQn7HOd8FowaL20Wyea5tJzTM1Faqe9IHTuyjv/b2vHaZ8+aNKFmMhKfVRd3Vgi+46VBKcIa0fN/IsMmRwH39ctbl/GRI2oLDGErfm53zkAL1Cnvee6PuBrbjmA2wUlQ+C/HP13HNn/iT0c8YwPSlTSTfoMLO4b5WJa3WiB97e+duHQXJBMvIw8EWR6upyuYV0vTAr7CSwYKyCOIAXgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45g+xUGqBGcgBmRdw8plJf+IevOStUQP416OM0KM5+k=;
 b=CztIgjOaC+sH3CJITmk5RVnZeO28MjYuBymx77WWM0kwvqfXCCIZdFKKJPznFUblJLYnDImegcCtT+x3vp5ogfXMDxJGXrLU43R90LsGBQj5aLlklRoykR1GpCht5RgFoBvZd+QQkcyjgKevJQlHZ3ek0okln4TY38A+olOG3JYZDoaIcaSIIWnzxY6A0b3/HgCYUSh77yvcsEz0ljYuiYk/E0DWKNoVNPX6TIMY+9XZHmZIfviXZmxZg6XtLa5H+LHRNJZCC2o6HnfPLMubUPC6+pHuiGjaLFrMUA3IbJ+IBcRyS48rUM8oazIicJfvEnr1Nbg4HbTV0hwR795wcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL3PR11MB6388.namprd11.prod.outlook.com (2603:10b6:208:3b8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.25; Tue, 28 Feb
 2023 23:26:52 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7bcc:b9b8:78df:1bd8]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7bcc:b9b8:78df:1bd8%6]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 23:26:52 +0000
Date: Tue, 28 Feb 2023 15:26:48 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <20230228232648.k5apzylnijjef6qt@ldmartin-desk2.jf.intel.com>
X-Patchwork-Hint: comment
References: <20230224101356.2390838-1-mika.kahola@intel.com>
 <20230224101356.2390838-4-mika.kahola@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230224101356.2390838-4-mika.kahola@intel.com>
X-ClientProxiedBy: BY5PR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::37) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BL3PR11MB6388:EE_
X-MS-Office365-Filtering-Correlation-Id: 753fc98b-21d2-4d7a-2115-08db19e34560
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7+gmuiyqMm1+HV6jz6D94moFomAvTAt3qBTjB7TXlHofWVLwdXY9N44mdUSutm9oSW8VrdgEgFut5w2puenOx/VVSsyGzwYoyQSdSNbmCXnfgartvE+9yZ9pko8lE+0zM+AjzYPLZHIMBlBMklcjAPkX0btFvpoyPSn+2oGOZHsJZeMbGWmUhA4J37wAVP7E9eGOFfRKczneCUjmops6hP9GJOMqearu4RltBIAJnfeI+xsu+zOrPJDvq8pmxX2gxueiqBWtJYGgOZ74hwaucTGn1KSxK4WtolSi/FWWuU34YzPozOvcO1rqyNUTmT4CCoyfVP/RigWq5F0StLLva3mVnBV9Vvlvk1JQ+Ii1ENSF01Oe7Jo5KIOQG1VYpUYvtkzGqP9sQisBYo4STTUguN7XplVVYU+/x0fRglVh1L4wPmiJl8t60UFS6skgZX4VyLW53gyv+uQEbHp5i+V/bPKPfeJOqpYSz0hwIhCl1Gslo4X6ko8Ialc4ht0R3R51ifgLKSGVWjgPlBgFE2x7dhuSM/SKeejDqHF3ZzbJ8DPPWPd5mhT78ECxexERpbXMnaErTLqWQ74EzIqw4HqOZYnZ/XEUdUE07LVeWUzcDe9F5I9h46SjTkzGxE+WwUOOLWRYNC3lReSJhayIYeAaBQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(39860400002)(366004)(396003)(136003)(451199018)(6862004)(66556008)(8936002)(316002)(41300700001)(6636002)(478600001)(6486002)(66946007)(2906002)(6666004)(6512007)(1076003)(186003)(4326008)(6506007)(8676002)(26005)(66476007)(5660300002)(83380400001)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?SZ0wJn7h9FVtjFCu8LA+GitDlG7rSEfQQjznfWvqyEDNkNE2KoehBvAECm?=
 =?iso-8859-1?Q?tEWlZZfNl4kH0a6KpcZXWEt6l3u94ZJU1MhsHsPBn59VrceClRYTeGBgf7?=
 =?iso-8859-1?Q?hBHUxA6CW83jaV0zuozWFuUHwsC1pC+PkPp0FwkIyqvm13u6NPDelKMJdL?=
 =?iso-8859-1?Q?HGg8H4jL5+BIDE8uDTk8jbu2yTxEwxx5UwOIW063/WkEaOKEEcKw5NvErT?=
 =?iso-8859-1?Q?tSgRQ6cM7u2/igQg7BNrkBaLpFdvAfcNj8iaGw0jZQHbXXTlutc9xJRgdS?=
 =?iso-8859-1?Q?UWDcx9wUz/vGVzsVp5OsZzaZQzRHcZjXfWxSMjLAwdfIfJRBihtfINphwu?=
 =?iso-8859-1?Q?YDHCHVj+CUKqqw2nk7yeV73st9RVd7Tss/iDHK2p67M/Z6+1lj58bIqDVr?=
 =?iso-8859-1?Q?Yob6OHy5uurlcm/Iyga721wmnBEcQaXAxOTLsufj+s/Qv6GTvYLr3ntDoq?=
 =?iso-8859-1?Q?K9uFGbMTbyO0D5ysYZYQLWFx8dF5YMqbqzyza6b3doQ0YhgzhqH6qnDoIQ?=
 =?iso-8859-1?Q?AQz7sv+woxz2ILqewgykgMfPxWct5c8GyQNsQNQKK2hvNObToQXKltNVB2?=
 =?iso-8859-1?Q?BtRPNNcEyuvJ82afAlDsPM3Nbt2n1BMOAmiZ1+U96Tm4CRRm9HACPgPNmQ?=
 =?iso-8859-1?Q?6LsLf/syTIhPXhuTYNLcOjEOJCZXdKF5a+RQI43upkIwQLb/lQ8hgeBFjI?=
 =?iso-8859-1?Q?+JEDz4FQwn8JcVyL2MBX97oI04YWoK9NnaZtko4Y8ptuFy0vloI9KBQv/g?=
 =?iso-8859-1?Q?C5zJGn4Awsk77wwMDuJR0rGsoAN/N6PaJGG0gIPHJKgkNK4grJQMeCnWXK?=
 =?iso-8859-1?Q?G476afkeE2deApxYOKNpBjYYVNwYajnRObbM5/PfKl1+bslG0Qu4/Au8+v?=
 =?iso-8859-1?Q?Hqz5XNhps08t/l4Rq6RK367C8b/BqtUFv08+SnJI2y04Lvp+X+1qxBU5Ee?=
 =?iso-8859-1?Q?s2nTOfWcqXYntOSn7dpURrXgo1dSp+fqj6Q25YL6kxR6CmHt4sXLta8oTb?=
 =?iso-8859-1?Q?xs202sYCCen59ru718FgesL1Y5X+4ZVBIz6QhgLA90VdgIZu2tIPB4qrpM?=
 =?iso-8859-1?Q?bhv+GB7uhpujm+l+gR7l1aGCOTZuAKapQaORlW9FYKOcXH6KIgMHNNH9Pa?=
 =?iso-8859-1?Q?v+txSwAADZkDfGlpsS5QYbcM2ygnNgxCQEMd3a61XdhELHWk5jBLEvhbXM?=
 =?iso-8859-1?Q?C5Tb4Zw4nTd6WX+er6YZ9tQ6lWCo1nSmKeownSL8RG1VRJGC5ElIIVVctp?=
 =?iso-8859-1?Q?t8bGjTulGCj0jjsHz5zCGWVXR0QNqlW3YodA73DedHJkvqAmRn15FB4KeD?=
 =?iso-8859-1?Q?fdswXFtpk0DZ56PVxJyE4mpD1mq+UdJeyaRLqeac/E2EcMdUX6bjM/9gpK?=
 =?iso-8859-1?Q?49XWU9HDtK6xZqvn/rwgCF296jm1pvs0RougjP40afanZnTsQWGcaIu7iH?=
 =?iso-8859-1?Q?SVlaVKQMpzxxdruysZM4F6lQkM0fXpkcEToaI97X89nr0YXIHZjYtGOK5H?=
 =?iso-8859-1?Q?xTlixOdRXrh9z7hwe5Le8yZ7esenJc6/UOFhQvIsx8JarwVx1UAziNlErJ?=
 =?iso-8859-1?Q?d9nAqBZnza7jltNKLsJNkBcYw14NYqcxzvZqlf8yCX6eUwzq300p0zaKDb?=
 =?iso-8859-1?Q?C+ynLppFifp7qRqRk9f6WCPUjSZS9PYwoxwkTiEL0w+nta8cn3Rcy/jg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 753fc98b-21d2-4d7a-2115-08db19e34560
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 23:26:51.8848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jg4vDVqEYTm76kDAcPq4F1zpAJ62cumBb+GTBdWUkbJW0BrUVs52XXGVZZ3f9jpjp0+puXX3qvf19E2f7JRv+nNb5qRL0zh/EFhBtK5qhrQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6388
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 03/22] drm/i915/mtl: Create separate reg
 file for PICA registers
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

On Fri, Feb 24, 2023 at 12:13:37PM +0200, Mika Kahola wrote:
>Create a separate file to store registers for PICA chips
>C10 and C20.
>
>v2: Rename file (Jani)
>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>---
> .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 136 ++++++++++++++++++
> 1 file changed, 136 insertions(+)
> create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>new file mode 100644
>index 000000000000..d6b3709d3762
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>@@ -0,0 +1,136 @@
>+/* SPDX-License-Identifier: MIT
>+ *
>+ * Copyright © 2022 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_CX0_PHY_REGS_H__
>+#define __INTEL_CX0_PHY_REGS_H__
>+
>+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
>+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
>+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
>+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
>+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3		0x16F640
>+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4		0x16F840
>+#define _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		(_PICK(port, \
>+							[PORT_A] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>+							[PORT_B] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>+							[PORT_TC1] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>+							[PORT_TC2] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2, \
>+							[PORT_TC3] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3, \
>+							[PORT_TC4] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4) + ((lane) * 4))
>+

stray newline

>+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))


one of the reasons _PICK_EVEN_2RANGES() was added. We usually have 2
ranges for the ports due to the combo vs tc distinction.

#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1,
										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A,
										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B,
										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1,
										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2))


>+#define  XELPDP_PORT_M2P_TRANSACTION_PENDING		REG_BIT(31)

           ^ wrong amount of spaces. See the example on top of i915_reg.h

here and everywhere in this file

>+#define  XELPDP_PORT_M2P_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
>+#define  XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
>+#define  XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
>+#define  XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
>+#define  XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
>+#define  XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
>+#define  XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
>+#define  XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
>+#define  XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
>+
>+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)
>+#define  XELPDP_PORT_P2M_RESPONSE_READY			REG_BIT(31)
>+#define  XELPDP_PORT_P2M_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
>+#define  XELPDP_PORT_P2M_COMMAND_READ_ACK		0x4
>+#define  XELPDP_PORT_P2M_COMMAND_WRITE_ACK		0x5
>+#define  XELPDP_PORT_P2M_DATA_MASK			REG_GENMASK(23, 16)
>+#define  XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)
>+#define  XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
>+#define  XELPDP_MSGBUS_TIMEOUT_SLOW			1
>+#define  XELPDP_MSGBUS_TIMEOUT_FAST_US			2
>+
>+#define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
>+#define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
>+#define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
>+#define XELPDP_PORT_RESET_START_TIMEOUT_US		5
>+#define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US		100
>+#define XELPDP_PORT_RESET_END_TIMEOUT			15
>+#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
>+
>+#define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
>+#define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
>+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
>+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
>+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC3			0x16F600
>+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC4			0x16F800
>+#define _XELPDP_PORT_BUF_CTL1(port)			(_PICK(port, \
>+							[PORT_A] = _XELPDP_PORT_BUF_CTL1_LN0_A, \
>+							[PORT_B] = _XELPDP_PORT_BUF_CTL1_LN0_B, \
>+							[PORT_TC1] = _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>+							[PORT_TC2] = _XELPDP_PORT_BUF_CTL1_LN0_USBC2, \
>+							[PORT_TC3] = _XELPDP_PORT_BUF_CTL1_LN0_USBC3, \
>+							[PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))

same thing here, please use the new macro

>+
>+#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port))
>+#define  XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
>+#define  XELPDP_PORT_REVERSAL				REG_BIT(16)
>+
>+#define  XELPDP_TC_PHY_OWNERSHIP			REG_BIT(6)
>+#define  XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
>+#define  XELPDP_TCSS_POWER_STATE			REG_BIT(4)
>+#define  XELPDP_PORT_WIDTH_MASK				REG_GENMASK(3, 1)
>+#define  XELPDP_PORT_WIDTH(val)				REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
>+
>+#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 4)
>+#define  XELPDP_LANE0_PIPE_RESET			REG_BIT(31)
>+#define  XELPDP_LANE1_PIPE_RESET			REG_BIT(30)
>+#define  XELPDP_LANE0_PHY_CURRENT_STATUS		REG_BIT(29)
>+#define  XELPDP_LANE1_PHY_CURRENT_STATUS		REG_BIT(28)
>+#define  XELPDP_LANE0_POWERDOWN_UPDATE			REG_BIT(25)
>+#define  XELPDP_LANE1_POWERDOWN_UPDATE			REG_BIT(24)
>+#define  XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(23, 20)
>+#define  XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
>+#define  XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(19, 16)
>+#define  XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)
>+#define  XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
>+#define  XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
>+
>+#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 8)
>+#define  XELPDP_PLL_LANE_STAGGERING_DELAY_MASK		REG_GENMASK(15, 8)
>+#define  XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
>+#define  XELPDP_POWER_STATE_ACTIVE_MASK			REG_GENMASK(3, 0)
>+#define  XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
>+
>+#define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
>+#define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
>+#define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
>+#define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
>+#define _XELPDP_PORT_CLOCK_CTL_USBC3			0x16F660
>+#define _XELPDP_PORT_CLOCK_CTL_USBC4			0x16F860
>+#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK(port, \
>+							[PORT_A] = _XELPDP_PORT_CLOCK_CTL_A, \
>+							[PORT_B] = _XELPDP_PORT_CLOCK_CTL_B, \
>+							[PORT_TC1] = _XELPDP_PORT_CLOCK_CTL_USBC1, \
>+							[PORT_TC2] = _XELPDP_PORT_CLOCK_CTL_USBC2, \
>+							[PORT_TC3] = _XELPDP_PORT_CLOCK_CTL_USBC3, \
>+							[PORT_TC4] = _XELPDP_PORT_CLOCK_CTL_USBC4))

and here

Lucas De Marchi

>+
>+#define XELPDP_LANE0_PCLK_PLL_REQUEST			REG_BIT(31)
>+#define XELPDP_LANE0_PCLK_PLL_ACK			REG_BIT(30)
>+#define XELPDP_LANE0_PCLK_REFCLK_REQUEST		REG_BIT(29)
>+#define XELPDP_LANE0_PCLK_REFCLK_ACK			REG_BIT(28)
>+#define XELPDP_LANE1_PCLK_PLL_REQUEST			REG_BIT(27)
>+#define XELPDP_LANE1_PCLK_PLL_ACK			REG_BIT(26)
>+#define XELPDP_LANE1_PCLK_REFCLK_REQUEST		REG_BIT(25)
>+#define XELPDP_LANE1_PCLK_REFCLK_ACK			REG_BIT(24)
>+#define XELPDP_TBT_CLOCK_REQUEST			REG_BIT(19)
>+#define XELPDP_TBT_CLOCK_ACK				REG_BIT(18)
>+#define XELPDP_DDI_CLOCK_SELECT_MASK			REG_GENMASK(15, 12)
>+#define XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
>+#define XELPDP_DDI_CLOCK_SELECT_NONE			0x0
>+#define XELPDP_DDI_CLOCK_SELECT_MAXPCLK			0x8
>+#define XELPDP_DDI_CLOCK_SELECT_DIV18CLK		0x9
>+#define XELPDP_DDI_CLOCK_SELECT_TBT_162			0xc
>+#define XELPDP_DDI_CLOCK_SELECT_TBT_270			0xd
>+#define XELPDP_DDI_CLOCK_SELECT_TBT_540			0xe
>+#define XELPDP_DDI_CLOCK_SELECT_TBT_810			0xf
>+#define XELPDP_FORWARD_CLOCK_UNGATE			REG_BIT(10)
>+#define XELPDP_LANE1_PHY_CLOCK_SELECT			REG_BIT(8)
>+#define XELPDP_SSC_ENABLE_PLLA				REG_BIT(1)
>+#define XELPDP_SSC_ENABLE_PLLB				REG_BIT(0)
>+
>+#endif /* __INTEL_CX0_PHY_REGS_H__ */
>-- 
>2.34.1
>
