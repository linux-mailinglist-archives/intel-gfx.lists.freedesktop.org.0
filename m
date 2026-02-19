Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLPKN35Wl2lPxAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1BD161AEC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A30C310E73F;
	Thu, 19 Feb 2026 18:29:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DBaA5zn/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5791310E734;
 Thu, 19 Feb 2026 18:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771525754; x=1803061754;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=52nNHqz2eJUwXVlFXmvbqbRqLz+xosxfWmG/nYXFjws=;
 b=DBaA5zn/Et923luPus0Ko3SPzxd8xoYXmUcaJkjbdjSl/Y4F3SSg5Ysa
 kkzWhehAh1xwQ1aoh6CusbVMBe7eeCewQdvOaEK67WIkRD2FtJpsYm36D
 12txsVmYj+3zR8hDScD7NzFNOMKrBfyMKReBbKT5o3MvjlMtIFjTQALcV
 OPh97dG9W7QYNVnscbsVuLAiLhD0jb/I3I9G/uXt6DDxRht7wLwyG39a4
 w8bHjEY8pMe4fV/uckz+Gc1f5Xo+dN1+dwbb6OUFrua+Arqzxmrco/bUT
 acjuPJ2SuGm91JbtFNKPS2Vmp4xa8Gat4lzwW8Gfi3bWvdKLUqNTR1EBu A==;
X-CSE-ConnectionGUID: SHsRRYikT2qZ57raDC4eaQ==
X-CSE-MsgGUID: qmmoCNbIQS2irppLdrWw9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="71826123"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="71826123"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:13 -0800
X-CSE-ConnectionGUID: COgY1QbuT7Cp0tworsPSQw==
X-CSE-MsgGUID: E1CWTHDuS/6Yndl4iDTbSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="218765711"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:14 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:12 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 10:29:12 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pDANUlBnWHRY0+UHjS5UfLQ2DRVnBw2w+Jp9zM/bKrc/pV7AOqbXjp5xF4kbdpmk998hnalshYSkEKM4BCXyqRlde1ll1yvjXG60HqA5Hu2VE3Q8k67D9G39JonUvdt9SpdOoKX0wWBh/0ZCT3VGpNQrOrXh14LEDpUSPGQMwKpxAZc7XegisZ2USn0WR5Jxef6IrCMmUz7aHLZUNPD3y6rKphQa5W1JNM85i97jr+QtN7fjbR1JDwRDIUhlunHd2TYwhmDjhit7P1heyK+i0IvfmDUf6VKC0lwV5izCQlpwkms+WCAwi2/SVnnEhuFRs3JT5GE44TNHeyziTlqZ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SdvBCZUlcJ/91vngPnkNHmGTiFphPAU3+yAuPT75Ikw=;
 b=ubZALxBV1x1MSYM9NVg/6oD6egfTzEPvGi8BaGhjGnBI0MKyPTu3BTh6b76IIvyb2PSo3OUViy7E2I5acInJxy4gLmMW6DPvSAVmA8t4WGEvYDpWlFdC3eJxrnJ1ljnpEegclkXKkoRRzCDp4IMu8iifokHpyuUf1RhfZYJTX2GXxPzhBZju5YkIrfE6F8q7mPa/3Z4viAy+F1hzzXSYS0CTjP8eQFQz/7jQrJo/EUUUbTpwN91HeLT9rg0aSyTz7PHc5vN0VnuiquspUCFo77+kNMRDYoG9vhdoZpUm/wX9HvzJ+9EfIQ4x1OhPI0s+F1p44hmoZTBpV3/5eLVEgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Thu, 19 Feb
 2026 18:29:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 18:29:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 3/5] drm/i915/dp_tunnel: Split update_tunnel_state()
Date: Thu, 19 Feb 2026 20:28:21 +0200
Message-ID: <20260219182823.926702-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260219182823.926702-1-imre.deak@intel.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00006627.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3cd) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: af2c625a-3ac4-45b9-1f60-08de6fe4c4a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4Bl2MjQ00geMyqA+vrHeds/nUqrBbKQc62YKQZpBJHeS8W7cAMcLUneRTro/?=
 =?us-ascii?Q?qCOhpvFplU/9kGBaEKIWw+lI60MhYPB6FFgBTutLEpL2L+ieHxDJeAxwbdeK?=
 =?us-ascii?Q?9e9IQ+f8VYdOVRAUs7S45d6fXAvXCeocVdzKhJzJuwCsw+ENQfVwrBKzQ9Gj?=
 =?us-ascii?Q?vygPLGwiidDK96t4vUEae4saXoxfA3QC1wflThBxqrDsqPVLO1S3Khy6vvpB?=
 =?us-ascii?Q?zGfr0/Thrry/5jtmZ7ukN549qCDNHU79KiStySvXxX7EcAJ4GpKc0q4lDe4K?=
 =?us-ascii?Q?MQBG73lXwSH/ElO4aFXbTjj8iJbkEhQE2SmpYbGr67QhlJXY5DBXEfWru4wH?=
 =?us-ascii?Q?dzkSq1EymyvQZ1nw9/bZ1DMSUVX+rvs/DDfPWdiPko9BSWtVWem8zfWmORXV?=
 =?us-ascii?Q?6bgtPIM6HHQb7E0enVHVB+w5goOAIZ9ml5B6mHePm3QoX2KO+wUerTyYo1pM?=
 =?us-ascii?Q?buN3nlC28bDHO2nNb+nkvvubvLOwMlvIS8sOSPnzNl0a5GfqmL2lssXEH6/s?=
 =?us-ascii?Q?qTqE7DPzbXP91zUWaxW2ZwmkaExmKJXWI2ArMyKlTkHMyBj/JkED5ilwzFsY?=
 =?us-ascii?Q?zGK5XGg5wcKnprmpYeOrr67Yc2/qHSQdrTq9bkyfg4SJmTBz26f+84KsL7bb?=
 =?us-ascii?Q?wZ/sYm1YClxgKwI2eFfYCaUcVozXCWjQcQli4FGWCtdICuvw1YpzRAIzlTl4?=
 =?us-ascii?Q?7w8Y4rmmzzldLAeQ60gD9rWIyDPAqV3U1AV9FQn1lmC+4H8K5vPDOejGT9fT?=
 =?us-ascii?Q?mILMrquIp0LFoFYVUB00tx4diTQin1lVg904F7QK8a0985deKt1TE9hL4zof?=
 =?us-ascii?Q?E3TVUmyf2Juqk70tu/5eIo+EkP1nWcQa0XKrLWyQlZ/Sy4IkEZ9bIm7O8sLB?=
 =?us-ascii?Q?OamsePi58CQJHei8Okd34cnOwUx7b3es3+NoVTnqSjFsxGZnG+fTINueMfoO?=
 =?us-ascii?Q?H5LzCSJ/TkSuvXc1xgcHOeVyLPZCBnkctS4VQalRNRdxmLNjFlnoI86UmTpU?=
 =?us-ascii?Q?ykoBZgMhtx5pqypPyOk/vX/wUYuDqHvWjE7hx4mwlHxLt8qP4F8a4QZ0IocP?=
 =?us-ascii?Q?Be+IHVW7s97/qHqSzQqn7WLsa+ZvYbZd4iNbkC/79RBP51OZPBsTw3OjWCKp?=
 =?us-ascii?Q?x9/rZa9r0Shoirt9cHKdXzvMWnz+3rT7KM1rVay/Z7Y2gmKzxPjwywbIbOY+?=
 =?us-ascii?Q?yyUbwgs9FFPHaZZkVKkY6oHLbUM4Lu/3iMnbJ0FAe2KAJiwg+AWsX868wXu5?=
 =?us-ascii?Q?hZ4tv72HxEX8lmGQbdjbhZFeX4+Zxbgux3CJXidzqTRcsQ/JCiCv5i7F6W8x?=
 =?us-ascii?Q?1iwGwCyItEYZP3fqyPUHGP16YW0mCeElHFCCL9eQRA1PS1hR0TNPdUNFu5lK?=
 =?us-ascii?Q?IYeYHaDIsuLa5YvNaoKQCLLZNuJY06RIUn0mCzppxBh2AM3F8+N7Zp7HP4Dm?=
 =?us-ascii?Q?nemL0lpBSIeoAijRaiOxwUvc2JI90HJsGbv2saoEZwrj+8RLxWK/smIWq0Ea?=
 =?us-ascii?Q?QHj8FUtmVMVVdBLiHyT94mICrcTIag6c3rYwCfN5AiJnX4CInxqieESKkBVH?=
 =?us-ascii?Q?/yZ4U6zEOLbLvU7I3jU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ld40JKdL6giF1cZp3qWah7CbpOD5bkJGUObuqAl8zSlyTBN5y/ww79DtOUPL?=
 =?us-ascii?Q?p7TAU7sOs1WLbQAvRSTkChQ/ScGiusOiM+cQoCcByZWgv1PFlXqh1U8pFQaX?=
 =?us-ascii?Q?dkIjLKcHZ4mqpPuSNCC2pCNKOEpOIXv9GqRyOCwN5r+qZAVOj/nU8du4YNZI?=
 =?us-ascii?Q?uS0GcpupovGTUppPRChKxfqkDTSoU6SUsb9DQ7KhMYQUCloAXlxM5kFxpFiF?=
 =?us-ascii?Q?OY9zqwvhhi8dbf3bCHYYYG5JbRfOxGf0u4vvQ9sL8rG/dtuWRb+8IWkZLkyr?=
 =?us-ascii?Q?MdRENKTSkfXncmT6rg21MiR29+KiB7Rh0Qc+RfbG+iup5q9SylfDhYFzda7V?=
 =?us-ascii?Q?HjBNsqGcr0sgAwFHImOY4J2UNYNxMzk1v0+3AZwL2i551t17CD+Lc7q5ccKc?=
 =?us-ascii?Q?X8evFqIezBmA/94Vxc06hthmeLLXqTYh/8E4mT+uq1Rvb+1SssjT0H4DNx0Z?=
 =?us-ascii?Q?cjrpW6jxKZUQmq/9pFTS1tR2V3+6sbviJuhYomu0q1fHx24lMehvdqXH4KAG?=
 =?us-ascii?Q?3KH/X4QqKQHhgVoR+GKCbZUInABnkeG4Empoq1rB19xjNknkZbshlNPDI43L?=
 =?us-ascii?Q?3o1RKwKJmkmUnC4lJBqlXzMzPIMOqEymzXvGtjrBRiKJomSLb24CnLfkdTiS?=
 =?us-ascii?Q?Tl+9Mxq977eGYwSsgHf4py+gWy49f7xA6sWW7FXwf12PLjxYbB6vweLWBwuE?=
 =?us-ascii?Q?D+U2mpnkr6R55zlGdi9PjpTzA5FJV4WcWZWO30P3Nh8UZDqG2kejeZhpYTCI?=
 =?us-ascii?Q?FpDsK4jPGg8LaRziCtDcEr3Ew1RDkKgfQLZihSIP8jGilILDL4jFgoplOmdZ?=
 =?us-ascii?Q?0kqkdhrTshWQKttO22zGDaO51M79eKSch7Rhx8cSV0Z+2kizNfWi2BiFWGkb?=
 =?us-ascii?Q?2G9Fxjy1UjQT6dxRUL49FUXFEprq5tpERpwLneEKv1lXLF6nHpSRSDZQsh51?=
 =?us-ascii?Q?27VLNWwcXqQSm2IufMMm7Oal96clNvPs3nWlLdHSViDu1ohhYCdjMAmJJO/d?=
 =?us-ascii?Q?eFnxRpps9lK5JZdUlXkNof7SRB2oVIeZ5ra+Vif3vcXheQ+ZQJlnv5fN8rN5?=
 =?us-ascii?Q?Q9mtpr58etNmc70Bx+ci/YnK7IQhf1XTEvsuNKrzyXKqmKTwQUxKjc+2biUm?=
 =?us-ascii?Q?yJWojo3ty2M4e0szk9de/WDKkCK5wkmmux4FOS+M7ex2c+Sh81xA9R+yDN/G?=
 =?us-ascii?Q?IzzaxPVY272w4nU8jxUpqJTQd4SmwWOxqsZSwQ/+UNb4BhdLDrqhVvXAr4YV?=
 =?us-ascii?Q?fSTE8oj1WLaBuAaxkKh5n/nJQC6e4nm1aqHGD8rs04t8xTTsmj6KQHpRa9tJ?=
 =?us-ascii?Q?ATnt9/OBcHb4HgOpC9WRI4grZYdNxwoqupN+Z+PbRNlD4HXx/dygxQTRvvwU?=
 =?us-ascii?Q?dvyZzdNHA1tRWOJ6ckY7S8+H9YzWvRlAYzVVfDFywPv5DxuI2VvcGiyUQQIL?=
 =?us-ascii?Q?9lepN6Y2j6K0R+cthhUAoeXI0N+TveoNgNcHDnY+m6a/GJQ60hUoxiyqMl7Y?=
 =?us-ascii?Q?s9tLSSGoN97cDh4v0TojAtBKDx/dW5EebpMCy90EtGd6k8YOk7jSqmx3kmEI?=
 =?us-ascii?Q?4SqNDJMefRr6lgdOOWUNDf+o8vNNxHNDTxD241Wyrm2/3Krw8j828TIyTt4D?=
 =?us-ascii?Q?lFLWlbZnnpHZUyPAcdWlQWDF09nYK+upWY1UQvTF+9Nb6w+3EyuyRuwYPbs5?=
 =?us-ascii?Q?HL9aVaKhdK+oFv/Z9I5nM1MIaeW3O+GG12Eyns3SFefGa1wmWODAxaJwtY/o?=
 =?us-ascii?Q?CfOcMmenBg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af2c625a-3ac4-45b9-1f60-08de6fe4c4a9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 18:29:07.6940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m+gIcZPAUDVmdgAXuwfIKsdoe+BuyqPHS05Y5sr7/OHipLPhU/9rQaXhxJmmfOx3nlx5aMoB215zTqZ0Nb+81A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8A1BD161AEC
X-Rspamd-Action: no action

Split update_tunnel_state() into two helpers: one that updates the
tunnel state, and another that detects whether the tunnel bandwidth
has changed.

This prepares for a follow-up change that needs to compare the current
bandwidth against the value from before the DP tunnel was detected and
bandwidth allocation mode was enabled.

While at it, document the return value of update_tunnel_state().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 41 +++++++++++++++----
 1 file changed, 34 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 9f3750035f68e..5840b92dace19 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -62,16 +62,12 @@ static int get_current_link_bw(struct intel_dp *intel_dp)
 	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
 }
 
-static int update_tunnel_state(struct intel_dp *intel_dp)
+static int __update_tunnel_state(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	int old_bw;
-	int new_bw;
 	int ret;
 
-	old_bw = get_current_link_bw(intel_dp);
-
 	ret = drm_dp_tunnel_update_state(intel_dp->tunnel);
 	if (ret < 0) {
 		drm_dbg_kms(display->drm,
@@ -89,11 +85,20 @@ static int update_tunnel_state(struct intel_dp *intel_dp)
 
 	intel_dp_update_sink_caps(intel_dp);
 
+	return 0;
+}
+
+static bool has_tunnel_bw_changed(struct intel_dp *intel_dp, int old_bw)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int new_bw;
+
 	new_bw = get_current_link_bw(intel_dp);
 
 	/* Suppress the notification if the mode list can't change due to bw. */
 	if (old_bw == new_bw)
-		return 0;
+		return false;
 
 	drm_dbg_kms(display->drm,
 		    "[DPTUN %s][ENCODER:%d:%s] Notify users about BW change: %d -> %d\n",
@@ -101,7 +106,29 @@ static int update_tunnel_state(struct intel_dp *intel_dp)
 		    encoder->base.base.id, encoder->base.name,
 		    kbytes_to_mbits(old_bw), kbytes_to_mbits(new_bw));
 
-	return 1;
+	return true;
+}
+
+/*
+ * Returns:
+ * - 0 in case of success - if there wasn't any change in the tunnel state
+ *   requiring a user notification
+ * - 1 in case of success - if there was a change in the tunnel state
+ *   requiring a user notification
+ * - Negative error code if updating the tunnel state failed
+ */
+static int update_tunnel_state(struct intel_dp *intel_dp)
+{
+	int old_bw;
+	int err;
+
+	old_bw = get_current_link_bw(intel_dp);
+
+	err = __update_tunnel_state(intel_dp);
+	if (err)
+		return err;
+
+	return has_tunnel_bw_changed(intel_dp, old_bw) ? 1 : 0;
 }
 
 /*
-- 
2.49.1

