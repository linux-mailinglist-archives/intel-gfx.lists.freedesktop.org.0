Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPHnC0Ku8GntXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D5D48556C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D438810EC81;
	Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="crCk9NOg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A31210EC6E;
 Tue, 28 Apr 2026 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380923; x=1808916923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=eKjsq3/kUr0Lo+ioK6MlDHsSci3RoulF4PUMsKt9PTY=;
 b=crCk9NOghofKgoMyiRshfOr4riz7b/PnidISsCQ08wXKG4uifcrb0JYS
 RjCubXsunFc3VXodj1EStUkNVUjP3+4+TaEGI9RM3yiY6NOjfB2qXDgVP
 zwPAjEvVvbPgoYuGw/Q3VFJI2I6Obn763KChwBXSfMusF35g3fSlEq9ON
 yunjmbsu+PCeDxgxqrgV1QIsF45HTufOdg+A9FAjqSP8DnT4K4Hrwibwi
 sbVhaY/kW7kLffX2NJKkWuGHdGofPOgXAlgQYgftC3wHqdSoNhSwCpVmG
 r0X/EX5na4eSAPxvQsJYyZqLUBSxX8irfoFPJhw1H+GxKB1Ne1sfGkSAY w==;
X-CSE-ConnectionGUID: Jqq4E5m5RU68n1xXc8/+ww==
X-CSE-MsgGUID: 8vxU05byQXKz99ycGpRL+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203309"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203309"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:20 -0700
X-CSE-ConnectionGUID: Bm75hmBDT1iFviz0tN0hsg==
X-CSE-MsgGUID: aMRPMBQ/T3iVNksdV//FWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244813"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:20 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:19 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:19 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k0bTy1qEk93OfEGXCTsK6+dovYdSUT98CPe8sjZfYT2IwImgvZkfsT8Jdki0OWFXM1ROaG+MAUXeowXCA5BjlR4F+PTtULVgF9pYDm00RuNrkm/OUrWshpp/cIheTwIRneg6EEtO/UYhWtpqbUuy41tgFWnYTry8o+NTiOGiCUZyQb5fuX5sR43FlC278eJmxloGFQzikxNI7c/H61spIMnCO7/a+z77d4aSj2FEEMbXU21qKojRu3iU9PmTKhlFnbFyD8HSiQx0lUj4qdMd2G9AipY6YBOV53paYlUqL3xbjkecYJ04UdUR/JbJclkJog7K/9dBLqETquXtZt/gNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z1DJ3HS23A6EeGeSwmmtK5ynsPyHZ/20LbKigQj47aE=;
 b=nDiY4aW35WVHCQEv4esmrQYF4Ri0Yz1wEwMJmkHn3AeQWKb+gzHp9eWNg6o6J/YXRQ4JsmbC+Scg2ABocsZxOXSk9PK8wP64ZaYVb7tamiUUrzjGmgnkvgf2oNlWE0/ha/CKR360XlKQ7yWWPqh+yaMN5n+wTgHfuBYPKp0NKtm9GYzhKpiqz4Bw6TzM9nSWO+OrU5SyOZIeR19ofnbPFVWyG9Op1XKMTuHimPnJM8hzQZHLIjqretfOm4TPEKNHZ78WINTtdMelZ+7McyEiFRmUpYuwlcIL5W33zshd+Qrp77GK6WSE7vojA1HsmK6vrFKY4Y9Zt+FdGA0Wviekcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:16 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 079/108] drm/i915/dp_link_caps: Compare internal config
 entries during table matching
Date: Tue, 28 Apr 2026 15:52:00 +0300
Message-ID: <20260428125233.1664668-80-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ee1957a-05be-46a8-8259-08dea525555a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: i1JcJ+Q60JGm0WCVpDHW3YOp+/P4h8MYYq2D8Y32B3ayrlY4uabp/YNjNdq4tixwDyvMByvTIz5e4vEgVGxOP18emY3tzF8i2iMzb5CakuUOS9FE7oWZlmMfr1sIlx18e9UcABZfOlAg/k2vQ9XNFNB38wZmR2V1S9DBgKE5b/Hf7Cg9K3T76sWraa1S50tUF6ZkvX4e8h9OJWnVDSznwagW1rW8bRa41FOvIGd8Ht7nBXkt/XymIzj/34gPzF1HatgD/z+hwuttMAEgK/6nNYWFviEkayYqB5mxwkVho4pYxhdrv8d8n21gSi6P0ecSojxaIPTtBsxx+F/Iig8NiQu/NPvA7U27UhY7W94wKjyifQR+l0E/7SKASHomjBBYaCdkqgtJcvVXqDBPQ4kER5z7e/F5VRcJprKr/eqLODrrPaz70jr+3DyRgosQvFDAiYf+PHAVEsXK1CQq6C4V5NdHY87Ra5FjV8pML6wueY9QAYD4uuUDIJEwkCq7ndjxY/PGF5HVnh1UL/Oo+btE9WyIVVHJzkt89I8yllv5oZSgC8pS2vAmXJ/k1u+BRR0YW3EAdPO560/G4sUgb/oCPgExqys8pDxMTZWhAl/uryJPbV9d1ZOjTSw8/XzTNIUI5aMIV1Ew1zepPMIfbYmyjCkfMlZm7XVkDWzOaxiBq6yZjtvXtPdSZq/rnjrm2RZZRvoarTjfmOOLJAHtOde/npBfh1bTHAqTjOpEcxP/Efs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qbZdp8AsDHm9/0L6jfUswW4J0mHd8tGFBK8V8ZNxhs4xhQazh1qNCAwEJPhP?=
 =?us-ascii?Q?RqC/lYVJo2v7jBu+vZXHpwK6r3sDSsfMm2v5T8YLZcgGDWWcEjXwfiIx6Fbl?=
 =?us-ascii?Q?+i895U5/VAPxQXjtHTs9VkrcQw9vrRndjZT8uaN4uUjakWU0/I/XFN9jnB0F?=
 =?us-ascii?Q?uq7tslmHBQfIdOS6RdsBf5reNsCBhJn++2Nf9F/8ZtOlTnNhufIkMgt6Evgu?=
 =?us-ascii?Q?06jLeNjXgjTGG6RGoKrUdRj59R67NwI7gE/DSgkExrVye4fMwnnbHTZ2yqw4?=
 =?us-ascii?Q?ghoiO/OX9oqyz/gFKJFFwj2nXmjnfYbLRtuGhErd+pJGhMt3UM5Yvl5N86ku?=
 =?us-ascii?Q?n6v25At5shgAaiBq2afjT6EvI9c+wPyhTl2p8rwuE+pCdCtMEwk8CMLuMfn0?=
 =?us-ascii?Q?aQYvDOX6w126Qxz2c1f6lkL8s+SECwD9xX4zyj4IIiB7jd18Pj5QQ9lUTSb8?=
 =?us-ascii?Q?86uRqO+C8tKXVozjUzJ2NMbf8u9oJxW9MFfJkTH4Fpla8D+2zV1R2wPh2Zd+?=
 =?us-ascii?Q?xGas5vsmUqSt1kAEtWlr+B7EYO40+gz+FTZDpRaCO8xikpdHXbh6Lq6SXbP2?=
 =?us-ascii?Q?/dmfJvgBbYMPWxPWRSAMVjwpdWl7pAnpWIqNx95pcnzxmSFExt56q9qK3tdR?=
 =?us-ascii?Q?tZYNylVXbp6pUIsXhTr+yZH97DzNCvkZc20R7c48rEB+Utt3reg26SN4C+gN?=
 =?us-ascii?Q?ZaiEYxkE5aZH2bjpttYmHIIYvUo6LbdnEzsGC+DAnGAhQdIpeYjLVcmUFVvF?=
 =?us-ascii?Q?plQESRh6NAR7/wcUgu+oVT+pWvj15THwMAy67K7RWD+vc8S67D9RSgMt6+M4?=
 =?us-ascii?Q?unJ2GL+0uF9on6FffuHpdg9jB9VkFtJH25eksW9ViOuE2RkfFkWALU1j1XkN?=
 =?us-ascii?Q?EWJjLgG3HaoK3eWKTS3WjgdXH4zVwoyPiPGAuUrS29q8Th4Ht704l/aZHaO+?=
 =?us-ascii?Q?J63YjJH1YYASzRzkQp64cIjVM87Iy5W9j7JhD9uEV8xT90m+kpbxp8bMmECL?=
 =?us-ascii?Q?cn916MlMEXGHbgNM0wA/Wagf62wsPofdrUFPVBasot7DX6JflZ9dxgnuCw3i?=
 =?us-ascii?Q?lFYECmPUJKIvuEiTzkKHH6zhUvdTJcxMdK6Bq1SwrXc0Jl2HEuOvaPqU4lp0?=
 =?us-ascii?Q?5FlBF4g0IkW+G8arjSnkcaHRUiR4s7p3dHUHVIKCHZv++oWEYnT48N1mt0x7?=
 =?us-ascii?Q?Vifte+XApr0aEoPomIsVGqSoZlV/vufDqwbRW0Ti7w6lTMeYbl2MUxg8wTJZ?=
 =?us-ascii?Q?0obcNVuBU8yaex6EbokkPu5y+sd/OJoJLaBk3+gfAEoVHF4arzIzwiMrds4T?=
 =?us-ascii?Q?ATy5ycN5eQfFeAnyoUC6tGj8Tx+8Ed7OhEUJAsDO4s40JkWQ2I9WkMLWF0/A?=
 =?us-ascii?Q?pMsJOz0RdI5KBIexeYHzp/s+NSMpklXjxa8YmJ9x9/se5cRN7fTonG/GS90H?=
 =?us-ascii?Q?RuaK+Yo+mzo84SyXuEhHXVcwwfZQRhscs3iYPa46XlwGT77UcnxXQGw2wwOC?=
 =?us-ascii?Q?hSnwnvg+x9rpjZS+b8Z9cxSbQro2XGO2l+hYReSIFOnYUhysxO8Rf7RUPCv0?=
 =?us-ascii?Q?WAsGA10METRCLk6C0cmR8Efum/El5HqG08A5InGbCM2igr+K2Ec7q5e/fxOR?=
 =?us-ascii?Q?CFdQC7W56IQmBd3NT/z79aYABCNkKmRgZn8XLbVLMBiiC4bsLBSc/D8pGJEd?=
 =?us-ascii?Q?4Y7GT68KOmGx+vZ0dnkcrIdMgyYsxaStfliC51tdNZQJgxyh+gi18i4deSbZ?=
 =?us-ascii?Q?Hn8zTfvkOw=3D=3D?=
X-Exchange-RoutingPolicyChecked: jXa8ZW8IffcjhWtpSrazs0Q34cp35xzRxoxnrpfm+fqsrkY0fiahU6fuiPifKASAiEQKCL5d98UuZZsyt3V6B8fu68wanHGPe3gxBmin9SGOAAXxnTEmUUROiT8wK+5O2Cpjmo205okwt/tHhR38Vb0K8xLAvWhLVj6ha1VVE68hRI5840qZGP4Q74UAITSZgBOGuW+qZrKrdm7rEPs8dN/HkGoWS9tICqFA7Gbx76gznBl7hLTC16VoYEpnq2QbsG7bW3rHQBjy0VpdjN4+/D+ufFyNORXka7/8Rol6DbRW52y0y8YAeqCwgMqNoUpDnFwQS/qZNqWcpeFHmQRgog==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ee1957a-05be-46a8-8259-08dea525555a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:50.0605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ZyZOFoiioYMnS6TP2MiM5fRhUHvFQTp7XSIpqcqeYC3sCRPlyPOWSmV3Eb1K61WFwfKsdXimMyqQ6am+NPfGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: C8D5D48556C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Include the packed configuration entries when comparing two link
configuration tables, so that any change in them can be detected.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 65358ec34d44b..a6390ed024940 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -762,10 +762,17 @@ static bool config_tables_match(const struct intel_dp_link_caps_config_table *ta
 	if (table_a->max_lane_count != table_b->max_lane_count)
 		return false;
 
+	if (table_a->num_configs != table_b->num_configs)
+		return false;
+
 	if (memcmp(table_a->rates, table_b->rates,
 		   table_a->num_rates * sizeof(table_a->rates[0])))
 		return false;
 
+	if (memcmp(table_a->configs, table_b->configs,
+		   table_a->num_configs * sizeof(table_a->configs[0])))
+		return false;
+
 	return true;
 }
 
-- 
2.49.1

