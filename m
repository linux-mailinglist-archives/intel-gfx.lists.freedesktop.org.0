Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE39F6C1F05
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 19:06:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EFAD10E210;
	Mon, 20 Mar 2023 18:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24DE010E210
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 18:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679335603; x=1710871603;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=9lz2PtZSGaNZcAc7AO2AKWPWJMiD//fDu6IqcchF8mQ=;
 b=F+72JrFYEXIZr2WkM4+KT9mt2Zs5V4+FRzLo3S/8vfmoxWj88ewtVbx5
 ypwbc3NGf9HCufQoxocM8zIS7ElN8+Ndsmeb96fVs0l2vxTGG7TeQzqcC
 CG4jHlQn0Qfz7vKMmEe+WUX9+i69vG4vLRboUp0TXniZpPpCpVu62q/bn
 k0GpCkB3DUmSpzkRRyoNJpksm4LzVvVMoP2ZjIfUNYtPTCfC6FH3TFBY7
 6TcSMSYwSc3RECPplFSvT0EivQRUPVVVPrWFFSyGcnxRNq8SFwd2NBdMj
 MDhqPOMglBGZtx6u9/SantfRADXKDu894+cxTLrpNhtJMKTcY5BXulPzu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="337454805"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="337454805"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 11:06:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="683522595"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="683522595"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 20 Mar 2023 11:06:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 11:06:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 11:06:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 11:06:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VhoB8VBkMqQOo93g6WCYdNHZAe0th2u1Ads5oyZ6vD1A2zM2+gM6G8v/FfsTRZo2ygHu1JP5Ey8+6Il/23btuSS9uyOIXvTf+JrpECV0UiIdhB4pa2aHkSHcGRGW5vtpSheO/pYlTC1nR9YQL3KNg/5suVneYXOv6geMuR1w6/pfS39DoeQUgvru2fQDW6Y/q9iqp6hPvGg3iIrAEK2rr+l3PiL0Qj20cNG0QCKg5veF7bUNmxEY7CQm0PZgs0aejVJZlMvU34PfWhZmPleWDpuIS3k9NgxF8XCQVbIqUZzk3HQA6Zn3G1KeDyukriNGdtZ84VNTenjja2ZZkQQdIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ycPiQqsArKJEyYr5bAnJouZZyerz8CzIG29RAc5yPLE=;
 b=JXGzKS1Ofgx7tnfmx4WL+YTMl+p6vMFtPCGq5KvVpzOK9YaIMMs/geVIaOyO2PCIilcOrysL4O+E9cXNANhuwkhdJKdH/0EjxMMerJGbF0Hi5Itwihrsst6ELAVzhPuO8/aX0RbFkIWW2zAonaTCO8mbwXvoD9n0maPpXRyWtsGhGDMJt1gsw4k9Zx30kDpXyr1fpAW+AtcjIu5TMDXMJOHTMQgktfofq7SjFUR07cvTE3V2O7sjrwWA/25thMhcWhf3Jgd/DuGvPgSMKxCQVCJ9OszLgGMuOu51PGgJkT+ctscRgn0xL+ew/+mLZgy0RDpacHq8ejfW4WHlcXhHZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5117.namprd11.prod.outlook.com (2603:10b6:a03:2d0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 20 Mar
 2023 18:06:31 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745%5]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 18:06:31 +0000
Date: Mon, 20 Mar 2023 11:06:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <20230320180629.gkaxiguvxtedu4i2@ldmartin-desk2.jf.intel.com>
X-Patchwork-Hint: comment
References: <20230316111335.66915-1-mika.kahola@intel.com>
 <20230316111335.66915-4-mika.kahola@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230316111335.66915-4-mika.kahola@intel.com>
X-ClientProxiedBy: BYAPR03CA0034.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::47) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5117:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b3e7846-5e62-4276-c539-08db296dd563
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YfmqrMXkupgyK7DcKM6yGH2t4pi6xGy0yEBoMqur52f5TSyFv8sy/cdTtW9RZ7ztdN3u46SouMHb8Kr7nWHAQzwovwh9Gl24k58sKU5avcqFv50ubPDyp21dVkrU1dD0Qceqx8jtEeg18TWRftZbrrzMm1rVyY3PgqgsypEiX5o+I4fpz2X9FPNvGJotbftGbsJHj6EJwRCLj6nhA4FR8BrDBR2xFmhmJbdAhG37+6JIWaC10y25q8nJ1whl1cWyVmnJz3L1RuhS12GGen6wet9Bsi585khMmC9Skb76eeUe2p/e+up/VBjgYdDQCaNzj4b2HDTuZWxrItZglnIoqdneiERzBbbt+lNrJ3DkrVe56YQf6XmnzofPIr9OEqUQAkogML9/61O/Sv84s4j9/j6lwE2vxl4mKuGei+x2p7cgOTQ4165r/US9wmrbpn/AgHXY6aMiafUl+ERrcIbYpx1J6p99ulVYlq0bE3jle10P2flSQQK0Itgp8Do7Ix5RRfx58wyZpUT4w7xLpm3g18cUZIeRYG7KXOLeAzujhJeCAVoAbcGetvOhEh4vkBSzyY8Ujvwn1cBSIVNHlw5+o4kqvhCVgug+ePCALgXDAZUt6ivkyHXGk3NNuJZTAvJSEhcxM+8PfTY8UjxVuc1PpA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(136003)(346002)(39860400002)(376002)(451199018)(8936002)(6862004)(5660300002)(41300700001)(86362001)(38100700002)(2906002)(82960400001)(4326008)(6486002)(83380400001)(478600001)(186003)(26005)(6506007)(6512007)(1076003)(6636002)(316002)(66946007)(8676002)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?OwnIo0ypA/0Lz5z0MuVrkpus1dhQ61mx3xY5+UrRckKrARAJ4xREAcbgLK?=
 =?iso-8859-1?Q?LC49jlUErzrdWWcm1UBYV5L7GSdoafyPjB9P9I1CgVVQGdrxIPK4xNn20X?=
 =?iso-8859-1?Q?x4ytkOoymvLTWGp6NC7mhCgT4JFH7zcZ6Gx/rUa3Alk0Ae24gLh149iRyh?=
 =?iso-8859-1?Q?eRD8F5npdB1spXdUsH0h5LcOWMRV9f8PhZ2JjY1pSqJl7qYGDfEncKxygS?=
 =?iso-8859-1?Q?kLGD6Z75jzYKfWzGVDaygqEv9JdynuIXpzWUfbdynnmIpS5P3j0UIsYALG?=
 =?iso-8859-1?Q?bl4a8rSjKFroVtxSfg5nujCpQqiNkmiuYmUIbHE6PTStqAxi/GWi5A3vru?=
 =?iso-8859-1?Q?BvxnNZ3jbmJZhdNTM1khQxwb2ynULf/e+KGir1VUolqEo77HM7/vJmdiSC?=
 =?iso-8859-1?Q?8f0zLkJITE06EnZT/3TtYhZNjWYxscA4i49maJC4z/SIcGC/D9jyt2aeh2?=
 =?iso-8859-1?Q?MQICuh+GYbt1BnKyN++l8lTGzimSAN6VtdWUyAbVYKPXjqTVtZUhpwtkkZ?=
 =?iso-8859-1?Q?ad4BwUyE9cV6NlKqy4O/q/mXAQ9J7dhVU20CleBZYKTqbx7L8yCIO8NN25?=
 =?iso-8859-1?Q?5NtygyXcnYPxmfPvU2uphpBF71zMOwvonZZJi/RF6VOlFI70lGvPXVtnxc?=
 =?iso-8859-1?Q?ZCXIHM3kL49YeQvU8+f858ZV8Kye2fw5UlSXcWYxdySq/sAe7XVEWVa1Gg?=
 =?iso-8859-1?Q?9XMFFl7AO/CQc0hkXooHCmaBhsqMYnct2BejwfzUY6smUcfIuMD0y8nXF7?=
 =?iso-8859-1?Q?8bFrq4dis3PhBs31BrmEN/XVrj4wRX02e2jssJ3HYGVmKexlNg/sqY6ouo?=
 =?iso-8859-1?Q?bZbxfmw5Bn8BtkhO1EZ1H3Qg339JZGHhtzxmdnyMrc65SNtDXWEoRBJO+H?=
 =?iso-8859-1?Q?RIvGV8WTlDGKjAmqBdErQMAjC+hdBSSk051aQ9n0PvcJd2X3Blx5azprtN?=
 =?iso-8859-1?Q?gfMoGg+eXVU0WYFlwrtUHvd3RLhzoUaFTpI3cV0CVcNVSTFEPi6uXCneWu?=
 =?iso-8859-1?Q?K5bxIAoGzIlqV2xSmsiU4Lifl+NApUOxx2IEqMe9kS5kN1eY+4jLp5x7r3?=
 =?iso-8859-1?Q?+7hIRLcnvFWq+dcpXzPY9zmcvPOsyE1mEVW784UV+A2aj5O9OVfNg3oJXr?=
 =?iso-8859-1?Q?C2Ap4lZwzZP3P0URE0GdWtru0WHzL/XrWdZ3ITTG2QkeYUqsP+NCgPtHk3?=
 =?iso-8859-1?Q?kvL349DrcyOOH2/MVzqbJuPJ8tTIkG8MrmIoenkBDLwIA9D3Cwwn4OT9q6?=
 =?iso-8859-1?Q?cfTy98K2psVZDi1zF/3tX6imAb/iLjlOVzzojtP/9zUW+8LIbpuzu0KsJ+?=
 =?iso-8859-1?Q?Szj+SBj02b3zAYYXLZtrtcMjt82pZYUz16WWBGwg43B4+aObyqSbrtHwNQ?=
 =?iso-8859-1?Q?K/rbj3S6K8GpTk4PPD2yTkiHAvy8uT5mYth6xPg6qJR3o2PF6KVM1+RWID?=
 =?iso-8859-1?Q?keTxtM64v2MRRpf5iTwgsTDBFcDgAEjzeZqMTn/HKmH5ThCRDZaSbEUtTN?=
 =?iso-8859-1?Q?LdhfK7GIx4IaUqmkRZ5pWFXrEPghUuNqKl9uJvpbRdXvwzfmvxFoWhuNdK?=
 =?iso-8859-1?Q?+83HvCoxIa7iyo9BSV62JuhruNrAciSAGhKfrY98VgEHPgmwAeEi7ohC2a?=
 =?iso-8859-1?Q?TSsT/QUPiz825Ln+3+u4gJvpOsg7Wu2z1jsVixEnr2MxT6cKtbuUD5dw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b3e7846-5e62-4276-c539-08db296dd563
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 18:06:31.4128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WsybGyx7J6AAMMhN10JT1CloeW+aMTHrCY/sYQ+beHgWvoW4U1SGbhbCJrrN0rxjlKnXivlQ4hKhMiOcIV+1NYZw38RhW6yFS0yxfMtwMBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5117
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 03/22] drm/i915/mtl: Create separate reg
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

On Thu, Mar 16, 2023 at 01:13:16PM +0200, Mika Kahola wrote:
>Create a separate file to store registers for PICA chips
>C10 and C20.
>
>v2: Rename file (Jani)
>v3: Use _PICK_EVEN_2RANGES() macro (Lucas)
>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>---
> .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 139 ++++++++++++++++++
> 1 file changed, 139 insertions(+)
> create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>new file mode 100644
>index 000000000000..13e9bdd5df9d
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>@@ -0,0 +1,139 @@
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

you forgot to remove this _XELPDP_PORT_M2P_MSGBUS_CTL, that is now
unused. Same thing for the other defines in this file.

>+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2))

you forgot to add `+ ((lane) * 4` here. Same thing for the other defines
in this file.

>+#define XELPDP_PORT_M2P_TRANSACTION_PENDING		REG_BIT(31)
>+#define XELPDP_PORT_M2P_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)

	 ^ wrong coding sytle. See the example in drivers/gpu/drm/i915/i915_reg.h
for how this should look like. Everywhere in this file.

>+#define XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
>+#define XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED		REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
>+#define XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
>+#define XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
>+#define XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
>+#define XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
>+#define XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
>+#define XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
>+
>+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)
>+#define XELPDP_PORT_P2M_RESPONSE_READY			REG_BIT(31)
>+#define XELPDP_PORT_P2M_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
>+#define XELPDP_PORT_P2M_COMMAND_READ_ACK		0x4
>+#define XELPDP_PORT_P2M_COMMAND_WRITE_ACK		0x5
>+#define XELPDP_PORT_P2M_DATA_MASK			REG_GENMASK(23, 16)
>+#define XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)
>+#define XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
>+#define XELPDP_MSGBUS_TIMEOUT_SLOW			1
>+#define XELPDP_MSGBUS_TIMEOUT_FAST_US			2
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
>+#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2))
>+#define XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
>+#define XELPDP_PORT_REVERSAL				REG_BIT(16)
>+
>+#define XELPDP_TC_PHY_OWNERSHIP				REG_BIT(6)
>+#define XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
>+#define XELPDP_TCSS_POWER_STATE				REG_BIT(4)
>+#define XELPDP_PORT_WIDTH_MASK				REG_GENMASK(3, 1)
>+#define XELPDP_PORT_WIDTH(val)				REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
>+
>+#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 4)
>+#define XELPDP_LANE0_PIPE_RESET				REG_BIT(31)
>+#define XELPDP_LANE1_PIPE_RESET				REG_BIT(30)
>+#define XELPDP_LANE0_PHY_CURRENT_STATUS			REG_BIT(29)
>+#define XELPDP_LANE1_PHY_CURRENT_STATUS			REG_BIT(28)
>+#define XELPDP_LANE0_POWERDOWN_UPDATE			REG_BIT(25)
>+#define XELPDP_LANE1_POWERDOWN_UPDATE			REG_BIT(24)
>+#define XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(23, 20)
>+#define XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
>+#define XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(19, 16)
>+#define XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)
>+#define XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
>+#define XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
>+
>+#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 8)
>+#define XELPDP_PLL_LANE_STAGGERING_DELAY_MASK		REG_GENMASK(15, 8)
>+#define XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
>+#define XELPDP_POWER_STATE_ACTIVE_MASK			REG_GENMASK(3, 0)
>+#define XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
>+
>+#define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
>+#define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
>+#define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
>+#define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
>+#define _XELPDP_PORT_CLOCK_CTL_USBC3			0x16F660
>+#define _XELPDP_PORT_CLOCK_CTL_USBC4			0x16F860

the USBC3/USBC4 will never be used, so can be dropped.

>+#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>+										 _XELPDP_PORT_CLOCK_CTL_A, \
>+										 _XELPDP_PORT_CLOCK_CTL_B, \
>+										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
>+										 _XELPDP_PORT_CLOCK_CTL_USBC2))
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
