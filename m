Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC834A0940E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 15:47:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667B010F0F0;
	Fri, 10 Jan 2025 14:47:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eNgGvD8x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63F910F0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 14:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736520422; x=1768056422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=v8MVzkBydje2us4bDr0hSurFwtlzry+NxPPAYgkm1qU=;
 b=eNgGvD8xEKikESpUssHg95McalZWW+ri/eu1U+656NdpSZHUaHEMN1HF
 RJEreKQj0o+Y4+5fD4Ll+5WMwzBD+rr6GtOa/ae+oVz/SJq6HnLc2GJsx
 64z+Us5T+228eWqAkEsR8PdIavKTbfzi1FrcVJBs8LX3nyRA/Qla/1HMP
 Nf5fWQJleuJBbeCYoKqac+sjlVyCOtjA+ySVOF24+oFuQmxDLY+HGvOu4
 ucQJgSzyHsJqOSn43GlmaR3fwEQ4FJ0aksFkCiunShbmI2xJUwxDsTvyF
 4s51WC1WVWylZeU0E6Ukd51aRRmMpsPV/M+1Rdd7JhR5eKNL5GXJYlyau w==;
X-CSE-ConnectionGUID: /Ul3LPqTQdWHVVbn5p7H3g==
X-CSE-MsgGUID: Hpy27iwiRg6j9U51Mm7/9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="36101747"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36101747"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 06:47:01 -0800
X-CSE-ConnectionGUID: nkEHZq3FRXeMWMILjklHdQ==
X-CSE-MsgGUID: vf/3pdGbTI2GDIrBwIKnmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="134587189"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 06:47:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 06:47:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 06:47:01 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 06:47:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XLTysI4FiLVAn9TQ3nPd+linN+ZAh71Z4MKgdjLahl73bXDE6jdXIVM8u7cl3YyrEAzl8VT60h62jM4nrPdVbVX94760hO9FuNgTFMJK/Nihq87A6CdmcD0F1mK4Gy4rXEcJ6L1+Ew6P5iN3M4jokdcXgqRvwd2P06vZa2ldJcPjdUAFvZAUM397ccStwJMJeQQWAYRNT6OLW0pnlu6R1mfTmTJTv8dI44pU6Al3u9gPxtwthvDFFIkRTsqw1QxTyRSu0tzIP7CzrwoMSr6zLevJJhArkNKlHVXr7nNzFjOGrD4UFBFB1It2QWyxNfjy76xcmWssYOBoMWR0jlhIMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=epuLf5ON6uSGQwsm0THxkXZ+6l8zp+3vkMX0NAQ/9ic=;
 b=SoqR691V/qe5xn7fnxWOxeZI/LgeP6P6A0iykLYOQhBXrWtE14Beu3zoeqqNjQh83y3ReNMTZ8vTmkRPkkxuKrTTrHC+9IjgvQ44vOOXX+uClJFP/CMIEqCMYgLoxeuM+FnSuFNqsdOB0Fh1+FRbd7LQZNslqw7cwrKwCcNgFv6vSfA+GVOc5igmlaxTPxW/AI7IeOWcmXCqp5LK3Q/0DWVtEOOhEspl5Wlm1tgxwXQmVIIuGtXoWMAoLWbNaFrZf/euaBrnG48X8vphXeSBYRlKDjoHGl7U9L5dAjQKk08c1snA3sxGgd4A9NUwXXi0zglk1UlyzObemVUI15dpyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by BL1PR11MB5271.namprd11.prod.outlook.com (2603:10b6:208:31a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Fri, 10 Jan
 2025 14:46:48 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 14:46:48 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>
Subject: [PATCH 2/2] drm/i915/guc/slpc: Print more SLPC debug status
 information
Date: Fri, 10 Jan 2025 09:46:40 -0500
Message-ID: <20250110144640.1032250-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250110144640.1032250-1-rodrigo.vivi@intel.com>
References: <20250110144640.1032250-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0233.namprd03.prod.outlook.com
 (2603:10b6:303:b9::28) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|BL1PR11MB5271:EE_
X-MS-Office365-Filtering-Correlation-Id: 63a71aff-327c-4fd3-7af5-08dd31859c71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oVmhdIUggNzlHf4u+DQGJEi9JKwI07pToo/IDAlJeVz9TKEJ32fpJk8UovUo?=
 =?us-ascii?Q?M/z3ongqsxE2kOlVhgBWazLV85tqIMPg2mIo5njghC0I3S0zijNLw9GaFx2l?=
 =?us-ascii?Q?2cmglhtjp48YzNBtlYXxFXHD43/GoJIsubELavAJtkL2VWMFKr8KrRomIyW5?=
 =?us-ascii?Q?ATf/OdsVL3DiGC6ZTZzH96JZ+doXx1dYub5E1m4RzJVjm/neJrarv9Jep7t9?=
 =?us-ascii?Q?PGySh5C4WRgLUBQMTFM3mKmuLMJ/bV63ZZYOF6MffprpUuNyfd/HMwylqcXO?=
 =?us-ascii?Q?WX68NUrqZkk78tw6DU1Mn+tmPxj2wg8asnmNbqQr8YyuimD++dFznfGQyChd?=
 =?us-ascii?Q?8792xHiPTSx5PJcRk0CpIwxuM+kPr07k5HnZ0DxVET5jTrqg2q/YbX6QoQva?=
 =?us-ascii?Q?Mm7+DMp7d4OjCJqvWtb1773VmlfctRdM3jEd0z0DCOJ08YLQzGuZWL/0KXp9?=
 =?us-ascii?Q?ZArNJxVTyq+ZfwxMjt3pY4+Bqx23eU1ZKfgl15sFrKEvnYHjm2FTWZGjsNzT?=
 =?us-ascii?Q?YBfAKlALytA8J0OFhqw+qFRKKOWna8cXFgDJsnoVNcDJV545cl2cg9XkE4Yt?=
 =?us-ascii?Q?Z813H0/CNlslhlkVQs+BUBqluL3tq4bSB3o2VROXkqCED7P+SDhSz0Uj2wpX?=
 =?us-ascii?Q?5NNAaCuV0gD8VAUlL4MThBqb4QQDlpijYGjaV5XGgpPi1p6/o45BIAIssVTG?=
 =?us-ascii?Q?se1YFyFL+wYioGvURUXocVqGjGsvrosNi5qniHtv4TbgyRflOD1WdlvgzYqY?=
 =?us-ascii?Q?ox8TFjHRBgbc4vHIV4/G38K1E7wt2+3OtzackRvKUuxBb5ndztr2YSbAv5n6?=
 =?us-ascii?Q?SWU1MzsHjXLaZUj2t15thbGYB7kAKq2Q7Hnbl4wpP9EMbrcof2nOTMY+MAaN?=
 =?us-ascii?Q?5IdtINlPNxfg0PPEfvzK9se7n/b0Bd1jJW4aGB/RDZHqQePDhgTMjn7945HX?=
 =?us-ascii?Q?e5j17NH7Zw6+NNl6A3uf7181ThRIxZMEtYV6eAheOoBolZtKVbojAGEWUmoN?=
 =?us-ascii?Q?0I6UvQl+CFZWf8imIfSKRj975P9ALOdPL8kRJ46+1MdDuv8b2KKwS2TC96DR?=
 =?us-ascii?Q?5zrchcZrE0cqeAswrbMy+BGeYt3XphIjz8kW5lGxTE6SF5k7w3hXT6oZFwEa?=
 =?us-ascii?Q?AZ0/ifSgGM0ZHKUDb112zlN0fkhHUMFQKQXVLAwpSKqkhKGb8QqcIAD5eDaE?=
 =?us-ascii?Q?QmwRJGRxjuaXCu2LcIC+tVw0zUWjI+dZqf8nfUPu32ZN8gkU4K8d0YgEddvE?=
 =?us-ascii?Q?InsBwQ6EsfXCT6T6XT0ig4fJH6/nqYa6HP9DScQTpbDjifVOdlDoBX6A/ugy?=
 =?us-ascii?Q?Iddn6ZLk4I0+rGm8O7YtmijfgrCfZaf6MyFTevRLY6/FPCNLmHMukHI+P6vf?=
 =?us-ascii?Q?IU9nnTfiZjJHmu4kM67c+uWE1yV9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FQ031Cyi8zap0cZL2/v2K18xXE84q3dggYk5jTir9P9yNkRSkAGIU/hQdfD+?=
 =?us-ascii?Q?MrLH6spaJ1gUvbZg+chJuyLY3Sx8SGG6ZL7aDOzRjtozdTdSYiC8ibBiihOr?=
 =?us-ascii?Q?AeZraSUG2fy6nTan03jZGIk+5mcs8G6SYhSG+Tl8aIBI3KXoabrJAZwBjKyG?=
 =?us-ascii?Q?j/Cqu938wK5Tl1P2qJ20OH0Xbka+2qjOJ0OZHpGyD13xVfKAdoFURzZrpc0Q?=
 =?us-ascii?Q?Y7qVmxhVcDQK0QqukZnPc2pj+JM5fJopoq6kZPwlSoZ/iHTOF0BI+W4TOKnu?=
 =?us-ascii?Q?iHa7WBlj7aR5GwhSVMB59q3B4d1JzD8JeYqPZHbdmsURk7LFGD3BYIMh7sZ3?=
 =?us-ascii?Q?4S1xAZhZaPhnsIrnzPGic0itdEeCNPtxVkUSplePNL8IhSNpibt4dgDiPot3?=
 =?us-ascii?Q?fcYdt0AhWF5ossP7LRJP9QANU1l4Os71YiQjxnN9M81z7NZLdss2cPRNcNgx?=
 =?us-ascii?Q?u8t2BqfJAnT74+YxtGPoSlFotaRZ7JSpePICIls7qsekgUxtUvy0mItgtf4w?=
 =?us-ascii?Q?Hj/0ycWdElPiuwUPTjyew+LTuz3KspuhOj8KsxF1ud/N6iz+/ImyHxb7CIdU?=
 =?us-ascii?Q?+f1kS4IGW+Xy/w5UnC89TTu6uO/Sjgslwk5Omf97caYhyYyS5x5hQTEGSrI3?=
 =?us-ascii?Q?kVHBRJ23kzSK7EQE4txJhFKfUkTpncETSkGS/9Iw/zRPiL8nSskfPDFkx5AX?=
 =?us-ascii?Q?fJkxMOD0YFVVDlYNWuVoVuoY40gMX1zx8TGiQE5ngG5/HRO/GFu6Z1CvPRmX?=
 =?us-ascii?Q?gP6YYKT/cjoKJXl/oihAYGOgymO21l2nWshCDDfpeg7dG3U2RFD3HZD4cC6d?=
 =?us-ascii?Q?7MJqfKSOBTCQ9ipcDfzmG8MEQDCFxYj7Yu9ikYekWxLUVLsGcPBFwCQN77Ji?=
 =?us-ascii?Q?9Qd12BN8nnThuShuMKL8lpAUQJuitcxo+okkgcrIR6OHzWHKQUVvwl8uWU/C?=
 =?us-ascii?Q?v0Kkirkz/COlRONFZVdnzaF0dVO+lcaNvdhM4hNKdBOCu4b/SGjdsU7pJ5bo?=
 =?us-ascii?Q?JrT5gfyxXNKF9yFzIrfXri02eXmGiV/Ez+Hl4BqQwKHGRjWFwbGzJRUWiOSv?=
 =?us-ascii?Q?YyDiNY6Q5U7AZJQQdnv2kWFYZI/a2fQVEhhbdIJsuI3qNhw7+upetHOOpNO1?=
 =?us-ascii?Q?qitFf4z8UimX1nLOubt2JYfB11M0HQW/OxaR6/h1OFhBu1/h+/jPxf3V+4Fz?=
 =?us-ascii?Q?NIKVym7OBGK1kpFSACPFUv7Cxj4VLgLhjGyexSidRXGKrZviRmx1luYrgR/d?=
 =?us-ascii?Q?98SzpJPWnjU6Gkl/8gMuzNNOUa5i7m2MZvYbrDn+QD5Ee8stED6PfW5jMKH/?=
 =?us-ascii?Q?45DJOkyo9tfmJ8BfEVE+N/EcNRKlb0yZwZ5B/j7Wr5x+a792wAfril4s2IGp?=
 =?us-ascii?Q?tlrzI0E+tP/OUl//OcSdesHSO5OoWh0VQjVzfcExVX14tGTezKYAOF2gOm5x?=
 =?us-ascii?Q?zqHCWIV9Ku/BfAxFy5KkPdWulAbrsecQifnORdi55+J8m7qdhdWXl3GlQNZ/?=
 =?us-ascii?Q?91haCeLdyN27QU6CRzG48ygezpk1mc9vqMuqx3bNmlAs6VAqsCWzfM/aGqri?=
 =?us-ascii?Q?82Kg5k64ONWN/pzLSUtT/h0ACajYWYeXE/sqtQJO7zv6R6vmfoFxw0JBWRoj?=
 =?us-ascii?Q?qA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 63a71aff-327c-4fd3-7af5-08dd31859c71
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 14:46:48.4193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tHnIFtVx4ZHxpM8loAL3FTu2NnaGWszijypL3Kga/OFIr76b0kzWi+bmaBvts+26EX91ygABGbxN+2ejueXGCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5271
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

Let's peek on the Balancer and DCC status, now that we
are using the default strategies.

v2: fix identation
v3: fix typo (Vinay)

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 1f8e6f7c2c67..1a0e1a412fdb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -799,6 +799,23 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
 			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
 			drm_printf(p, "\tGTPERF task active: %s\n",
 				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
+			drm_printf(p, "\tDCC enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_DCC_TASK_ENABLED));
+			drm_printf(p, "\tDCC in: %s\n",
+				   str_yes_no(slpc_tasks->status & SLPC_IN_DCC));
+			drm_printf(p, "\tBalancer enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_ENABLED));
+			drm_printf(p, "\tIBC enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_IBC_TASK_ENABLED));
+			drm_printf(p, "\tBalancer IA LMT enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_IA_LMT_ENABLED));
+			drm_printf(p, "\tBalancer IA LMT active: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_IA_LMT_ACTIVE));
 			drm_printf(p, "\tMax freq: %u MHz\n",
 				   slpc_decode_max_freq(slpc));
 			drm_printf(p, "\tMin freq: %u MHz\n",
-- 
2.47.1

