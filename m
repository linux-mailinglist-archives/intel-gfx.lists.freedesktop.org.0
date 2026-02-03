Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAsBMRWxgWloIwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:25:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF53D6348
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3123F10E58A;
	Tue,  3 Feb 2026 08:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DinWpIzz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E79E310E586;
 Tue,  3 Feb 2026 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770107154; x=1801643154;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=MTrBmHi2suFKvWZuPTKxO9DcMr7oN3+YXkXYF7oBnB4=;
 b=DinWpIzziwU4aOAhvWe+fNZvI3TOOzobSppl5ZmQ4yQFfPpJyiSXbP+f
 mH60Q/PjVMSfWpUEHOYM8HuYyGYVOv/1tZWBPDnXu5LfzCfTErQavdN2q
 865ql5HyhtEPUpjjknhXAqTr4HHSNdWwWuLiH+IKFhCgTTA65+VPDGHIG
 ggDl0IscXR7mmuPYFe3QdftO+Mwy6GERJnaDJMrkf1rCz30d6UOAHF9RE
 txOCPmdpfDqCSkc/O62LY/rKYb40fH20Y6y46iMUWE+ay1ixTjeBOLyWW
 sht1Yrlfes2cePpiwCevfKyMbmg79x5DfGJUWQWwXAvGFgmKzC6U1iy29 g==;
X-CSE-ConnectionGUID: T7APlCabRXGdSI+lrwtL8g==
X-CSE-MsgGUID: FeQuITeqQvmy3TsZpglU9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71254063"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="71254063"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 00:25:54 -0800
X-CSE-ConnectionGUID: 35nbNiO9QwmzI3tJl0kgcA==
X-CSE-MsgGUID: KkzSEENqT0C/UK2FjiBO7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="214741053"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 00:25:53 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 00:25:52 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 00:25:52 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.22) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 00:25:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hrOouVawdDP6gwjWGU2FZuw+9D6QwJtx4amr8A6i9rPr0wrtHuMEZRNAZTDgUJumkYdk3HDzAhDi6CPqTFzUkUT7No4d0IFKoV9n0qKPLUBChkq8O+5x/+azFscOWs3eT7wTcVd50J23TkxEQQLxe46Fi4akDchYapkD1+NMAS1c5mgiMn7DYxQJvJADVnZ0DmjR3Rcl/uwHnUry3pO5Y8q9UTv8L0Xs0tmH1CJvtl/hwWWMgE7WgfHu89q3ZcGKCJZYoBYrkpGWwmmPvCrUl99U7ZfsHBmZIcuGWrMgzPvD89QhlW83nhTs/V52IvjsncsAU4bwgzN5Z5hj2lIC8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QNUuJR++8A+t+nDGTYuZQQZDd8CxXncKaDpTN4PdVTs=;
 b=JaGCikdYoD3T/PWqCwwel6yiEa9nuhGR4sa5mSjRVY0cPEiIz+F8xM/DuUH2/H2k2bPec7XT7H4uKidt8Hi2VMgXfdXp/Ut7xyDl8EL7TCaVc7JzGEaBzBLJ+iM4aQHYlQbdkUC6iH8Nmwt6BhODlxO+i5mQCo/sKt5gqdp+0ohZuMIakAFoVLKbZSTL0AfoODRP1HWMLpALhAIclSATDnZgeajVfM6/yiZKJQLfCIQQtEH09xyEosJJZim4tURlAwtjfIwLTfeUCx9+87ofWKZlrIpo/r5QMAUaDBTACsiKV2H8zMRkzdxSWifVGOIGBTCD3h3bGUsvsyz8axdISw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5032.namprd11.prod.outlook.com (2603:10b6:510:3a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 08:25:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.010; Tue, 3 Feb 2026
 08:25:51 +0000
Date: Tue, 3 Feb 2026 10:25:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
 lt_phy_state compare
Message-ID: <aYGxCTupSRGPp4jH@ideak-desk.lan>
References: <20260203024141.1549517-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260203024141.1549517-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6B4.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::295) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5032:EE_
X-MS-Office365-Filtering-Correlation-Id: b018995f-5345-4109-7451-08de62fdd751
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?A/8+6yy208nOoR9mr8jJxNL9Y8mpiVjH0s+Dgg+LCEorNof+uWVUrL3RSRYN?=
 =?us-ascii?Q?dsEpphj6SCHvGKr47A4BACEKeuTA/p2zS4WWW4wk8UQ4dmOTXMfim4s18r/j?=
 =?us-ascii?Q?bXZR1GBFSciEOMb3Zhkwg8MT8yrgXAcwR2lQHA5sse/p55YSrop+v4RLP/u6?=
 =?us-ascii?Q?TxrRGtYFUZLMKYewJWi105lJh/FNP6udM0WBI7po+adXW2hLvU/Ixjjj+v/6?=
 =?us-ascii?Q?WdistxU8X6+2M0efnVRA/4B7Ivy9oCgOB4yUmm2/6h3gY5YgAaQ4S3AzWGKk?=
 =?us-ascii?Q?+4A6QSncIgcjiCj7BPqNtPrT+BZxmNQqjrvyj1ZHm6n264IC4J5jBIHeRe5j?=
 =?us-ascii?Q?WBSsat3INf7TODIxEgtkzikc3nOaRBB+i2ugKkri/8ngMC0F/dkAcrdlRkPK?=
 =?us-ascii?Q?7MoSMVeeJwNE170nUw7UFkEsYLU4NiU3T2xFIdWDI+mlnl7SsehCEFfcVMDD?=
 =?us-ascii?Q?M8mMXVy71O6MnqMcu3/rQabGJDb7dhfTYclqTT03YlgKnsI9B0FFMor1ZnsA?=
 =?us-ascii?Q?txTG1QI8wxDqzmlEuNnPLci1oi5xFFr95U6byvxmGJE7Z0EhKQZhLJ/7hWHc?=
 =?us-ascii?Q?3jksLhYI5pYsLNIa8TJzIAsIAfzMAJhSpUS9ftoxvG2q0BTqk96h/IDF3Wbe?=
 =?us-ascii?Q?cU0HnTREEZghyWiP3EN/q66AuaJuhkI+Y9W2rVgDmkeyl1ntnlagjS4UvMhW?=
 =?us-ascii?Q?9Uk/lsRGQZytAUaT6ZQHbYNzbaz+khWd+o5DSDWlvPT81hdTu2IT+tHZTeKZ?=
 =?us-ascii?Q?PCmsUvmBne6v37cZNQuAzrQhvOwHCcOe1OnwYf7MfnwExUmkyqXwCNeGSZai?=
 =?us-ascii?Q?TQdnMx1RWE/gnIZUAEXi/tmAGmvTIkUSnbG1dz5djjszpvfRMeMJSLVIaNau?=
 =?us-ascii?Q?v5sXCPKHbcd96tmmnvOQ0gLC/jsYaUmcWDqdkLJdcoy1dsSIYlIEWhfrDd2V?=
 =?us-ascii?Q?9lXo+6BsA2vOIQ/G6+D9BQnYd14b8+8tVwsReSNhiUEB6mWfXg6fDVgEw+6I?=
 =?us-ascii?Q?x0WiiQbvhLYDtvlU9WY1PlmVxjDbAJhgZ4O+jNRrfUwPrBNyKeKp8rjkP4m9?=
 =?us-ascii?Q?ZhL2Zzb2pweNBOo172+drqPC3s9rbb74D1kTlPbp7Tyh5a/GT7cMn5HUKUkQ?=
 =?us-ascii?Q?f8dmTQYnkWWaqiZ77g7qvVkZgPKRqeQTp0TbE1XMEL8gNd3jqOrJ7MxScV7B?=
 =?us-ascii?Q?DAo8w8UQGW1qiafzv7v6y0zrE+fvGKNHNij8rsT0XmiEA8zSG6yoWhCQ5L6c?=
 =?us-ascii?Q?5olRc2183h1Hdnc9aJI3NhhtSyMTHG7ItFPN1blVqMCuGHyMMRAyekXOGGID?=
 =?us-ascii?Q?RkIsSQofIuBE9WTkkh0H3uF/grPpwY2FZB7uALRw49gYN09QCPf3IvNUmWaA?=
 =?us-ascii?Q?Kft/u/pqpXLo08CKM2jP1lKCki4t90yIwk2rMXW4OfszNnovdNiaJWC19lp+?=
 =?us-ascii?Q?CQm7Pudk5MQcQt7B7Mii6KRHm537c+5r+S6sU+f2En41ecYareCj2sv4woBA?=
 =?us-ascii?Q?RBjJNzksUZjDiIC7GJvwpoq9UeJXrTOVN7UYqaBfXVb56ntIAa5VvDlNYtGt?=
 =?us-ascii?Q?zejTnJloEGo0ri1TyXY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6xbhN9iW1iTPRuU6dk0Dqg6CgppJIt5qOuQFaKauDdAeAMvskOLV+x1vPibA?=
 =?us-ascii?Q?kuDzgkvbGvYeWAwQRVv//Ex9cZqXJkoz9qoA8f8jSeY4TL05WlppGtDpOtVb?=
 =?us-ascii?Q?XNL+CAnEZlzkg6Kv4sZdr/QiFPAtkFOOEaeR58EOk3GCZIdn0iDvvkFNbnGg?=
 =?us-ascii?Q?YeTIMIkTS5qkG8u4zZ9GIix9WU/GOc2iKOIZssUk/Kt1ysVbcvqxCfHlSzkA?=
 =?us-ascii?Q?ynMpED9Leo9lSvJmKrjJ9koJE5x4Kt80f44O+PDXgJ5AUqcZMg/Ii/MqbzBj?=
 =?us-ascii?Q?U02LqzVnCp9GK3zQC09xvXG7yG09Vbovf4vn+zMbb8Qr7Vl9U2jfqFX7HcQi?=
 =?us-ascii?Q?oEX+iDYwxMQVFP960EV3u8X81t7MrMJZYlCZNz4tM/x8usuA1cOkuPP8f2Ge?=
 =?us-ascii?Q?nBSR94UVIIwWwT+SSfRLXGbYo8JgV+QsGUMSF/H88GcvbgmpVJHabl63ylxX?=
 =?us-ascii?Q?zvexscfZhaYP92yIqqNoiQYexbxuy2tXTE+zvOVvWbixq0d7RkZywBRk/fmb?=
 =?us-ascii?Q?en3wxmAxcsf++y3FwV78zsJINtLmLq5QjubpcMTCdE+Y916wPk1/ukJw7Gqt?=
 =?us-ascii?Q?VpH6aJbMCQqKagFOuM8y2Ro6FfxqTKMb8oAOP5HIkzc5N2aEFBwUclizV7zf?=
 =?us-ascii?Q?DL1LwF5na/5CJ1X3TGCILmU1EHZjJZPGWW0EPsq098JsY3+C7CCegrd5eUbH?=
 =?us-ascii?Q?4kZlvkwLdLQ+lOjNaIblf92K9fnMKtJzTgy+tUjoLZWYFZBwSgXwppeZ2ZOZ?=
 =?us-ascii?Q?lo4kLBOIwNnSttuKiHJCB49T8ubcCsSHkTAHylGQRvExdOSCrR7aXr3hqSo8?=
 =?us-ascii?Q?W0Iz6y1dDOa0goirOix9qFOFv/OH+TUGeyP90RVmYyJcn2kn7wj/K89ew5zN?=
 =?us-ascii?Q?jw0SPioJXAIuFuBeheXsg7Ptq9C3lyZqj/+SlCbsGKgtKcksVU9Z1MnSl+o8?=
 =?us-ascii?Q?j4ZlxZt9+XTdxqLh8oxxrXIdllMvKTHflLGmUw6WYfzrpsNdtfgbTw+dOthI?=
 =?us-ascii?Q?8EPXqkH6qMbAGKS7V37wqaReesRVlExvsgCHE9HFC2iHbFprRxyjLsMcedqh?=
 =?us-ascii?Q?NgQvLTYVpIVWCHjJZ7SdhjeYaOxOh2IhGMCtbU76tI+LKiRueN2RRZTVRjOd?=
 =?us-ascii?Q?yG1FpywbIwy6kTtH6QLtD9/5e+Xwr2nuLFWjEFCSpmuRwNAyFg7UB0ulyDeg?=
 =?us-ascii?Q?HijpN3S+ZpMZgsZO0QRxI9nntUCYwyQi7hbD0DU/oVNbDy+zZmB+BEXtbbtx?=
 =?us-ascii?Q?IvoaYV4wIzYjvC9narXAPz7CUbKtSEkCNktI9sBoLdim180fXHZygkOAbkF2?=
 =?us-ascii?Q?erDFRKTjnA9kSAj84pS4Pq2sVpG5BBYTcOoc15ToZF0vTtejPNASO76Nn1uG?=
 =?us-ascii?Q?kiSBNVqUA0Vo1BNVEDhbAP0GzYqfTY2yz/8VtalQPBpGRwtmE92bJ1k2vwAp?=
 =?us-ascii?Q?i8HdDdMWS3blitRjfaIXI9+QO2T7xqSdof6L227NWTGy0h0kFI4x/m61gFcw?=
 =?us-ascii?Q?G0k64rkFRW8k7id1JhoJg3cjDADzMysh+5FA7huJAfLkrYE6y76JkygiHphp?=
 =?us-ascii?Q?vS7aKj+VGXD30qSLCDnkctlCTTw7f2DXOf+mF1KERc6AWKyNKE0Z8QtkfFY3?=
 =?us-ascii?Q?LQdgFv7ltm/uGIEX0eLen2VGWwGXBfrZvqAztsfC3dlF4QQ7x93E27K7EkNV?=
 =?us-ascii?Q?tN704HNyh1ScDlp965i4IpjsdiuzEF0mSJlTKnx7AWOD2S6DbO+/H6KGoDNP?=
 =?us-ascii?Q?wo57c0YFlw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b018995f-5345-4109-7451-08de62fdd751
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 08:25:51.3351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Sc0SSKqnDvHrPNbpxoWjr/NCnyLwzmvmJqR4Q2Yvc77ZTX8mLX9EPJoBsmsChydFeWEIYQuhWhDVpEMDT/yUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5032
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2EF53D6348
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 08:11:41AM +0530, Suraj Kandpal wrote:
> TBT PHY is enablement/disablement is handled by its own TBT module.
> We do not play a big part in it's state management that being take care
> by it's own TBT modeule. With that in mind comparing the state would be
> wrong since we really don't touch it.
> Simple return true when we are in tbt mode.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 04f63bdd0b87..27ad8407606b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2158,6 +2158,9 @@ bool
>  intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
>  				  const struct intel_lt_phy_pll_state *b)
>  {
> +	if (a->tbt_mode || b->tbt_mode)
> +		return true;

It is a relevant state whether the PHY is in TBT mode or in a non-TBT
mode, even if the PHY is programmed by the TBT HW block in TBT mode. So
it's not ok to ignore a difference in this state. Please provide the
actual context for why the change was added.

> +
>  	/*
>  	 * With LT PHY values other than VDR0_CONFIG and VDR2_CONFIG are
>  	 * unreliable. They cannot always be read back since internally
> -- 
> 2.34.1
> 
