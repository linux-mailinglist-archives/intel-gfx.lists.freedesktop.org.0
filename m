Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YcI1O1o5PWrUzQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 16:21:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6182E6C6907
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 16:21:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=d2T0Wo3j;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E652E10F2DD;
	Thu, 25 Jun 2026 14:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358B210F2E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 14:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782397272; x=1813933272;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=DAeGtBy4I+FKMJz8zNi3nj7FKc6IM73EB7D7P4xOw2c=;
 b=d2T0Wo3j2lVMKe1y080NvqBvnxNYbbS1lP32PNdPRwiVM72u/EFew8sU
 OVTcEoeHcX5yRkKd+VyhT56d5VZ/veFAxGfZ8hGxSI+5qkLuJXtl19EaL
 Ofq/Ij+mv2IvOvv5FA4JlKpHEVOcfO3EF0c0KLx82trWfNCc9pQJ0g2sU
 pNBVRBPuRYlxZozYAMjrCzNX9bqtexgAwWLb52lCZFSvequwkkbrQ1wFU
 bHZPek+sou43fXkHi4VL5d3IJFHS9nlxsvlR8IYYqvwe9sfl9KdeqPVzL
 Va8EaBeZejvxdoSYbq8kD4BmUI2Isjanadx8YfS2Z1UvPDSDfjgS9NTEu g==;
X-CSE-ConnectionGUID: daEqlb1jS9ChPgs4pURa2A==
X-CSE-MsgGUID: 8imKbFZhRL6yj1Im4oWF7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="82294832"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="82294832"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 07:21:12 -0700
X-CSE-ConnectionGUID: ObUaGSe2SzqjRW5W/2sgQw==
X-CSE-MsgGUID: EssWG2U7SxCnkthjT39fZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="274104598"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 07:21:12 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 07:21:11 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 07:21:11 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 07:21:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wzIsSICihTG4z7P/beVIxYaAULVFQwX0NGvYy8Er3Bs7IjuiTfK/aSuNyQYIFoDNSwyZbzSM9HghATYK11zgzdbYpr8FHBNHade2wR5/0hPSvrm45qVtCs8jULXMPQ/4TKuPNR0X68Vnzq4f1UfviuXzLL/UweXBjOZukgdq/6KkxkQcoN6xYtAImYrWKTZAqmbPUWoqNQwvQRCZCP8vDZTmmjHXrY5ndtKG91cAVUt+FxWaKoTPuag6tBLI5MgXRyIVA1e3yZ7TgT/4+bWrECXBAb/WiFVp/rL3ZelooZdglXveH75c/0oT/xPPuyBprz1atAPoIxDQc03QAiJdeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PKmZ0KibSqnBtaIfgKcTNRvW2HnwMb9C+UHQ8uDD2GQ=;
 b=ncM4Acp7773gQNdcZDcMfSnqb9Jwi5bf4f0KmkSQf6USj9jIySRq/ANPs1l5dw3CgRo36i+eo2lVO7AQTZOhDtl9I8vDi6x/2IAyq3raE2mjIVdSbhcCzwGdweKjgHDlgPXJ7SIUxeqWE2Mc1+aBDRb2zInjrI6H4wY7SVKHgujFGnRovN/tz00Qcw8sA847TGTpb2/pGAMagm5Sy5SWSuNh4U0c4CS2RdDhyLnO12Y+ZvG5B/71wuQdL8kaIOuurvByBkI0bLnUOCBS7ygdLeLGvYJcqtt50g8s/UGs9KxqYhPia2TcLcQtdQk0f1FcCjbN6q68rLnzSBGjagVVcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DS0PR11MB7803.namprd11.prod.outlook.com (2603:10b6:8:f5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Thu, 25 Jun
 2026 14:21:01 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.012; Thu, 25 Jun 2026
 14:21:01 +0000
Date: Thu, 25 Jun 2026 17:20:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
CC: Lyude Paul <lyude@redhat.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/dp_mst: Handle torn-down topology gracefully in
 drm_dp_mst_topology_queue_probe()
Message-ID: <aj05SFG2veo42vf4@ideak-desk.lan>
References: <20260622140532.526722-1-luciano.coelho@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260622140532.526722-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DC09.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::277) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DS0PR11MB7803:EE_
X-MS-Office365-Filtering-Correlation-Id: 49671621-3327-4aac-4310-08ded2c4fb7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|56012099006|5023799004|11063799006;
X-Microsoft-Antispam-Message-Info: qnMsjjib3edtDZcD2V41OYQMV8/3RTjbBRQrQCpdiq5ZW4ggQViDec8WcFBtiQDJCUDm7emtNeiY79xwfZ/CMVEX8o1DxNMewKySDGJtb18APtu7hsxtZQuTlFVTanpycxdZrf0ugdK4LNjl34pmvfHZ54DluXmLJASTt2mBRn3pe3vDkPH23AX2avO/eHrsJC8ypoKuJZHgjR5xAYqGK0rl6tBPoQl7YB6cbNOaverUtBV5iIq9V57eY7t7Y5MOYfTUV8i2ilzzPxtuAFQyNjFvM+/rnk0XQswKIbxjxdu7Ecu0Gr/sz2XbZ4QoI4zVeFc1yoIiIXRqSE/J2SAHYu5j9RK7VpWsQDrlkjzH7OfEYh4p2ORJbfEKOCvMUrmqYnyJRsikPg+8QlvH5hFuUo296KQCG/a83/TyB8MYlQGyrRR+/FIcoj1JZcLTdSACfi7WUyefS4yLwk0bq5m2Xfiw72BEOlBLsxTM2e5okB6E5rSgZaITbQnuzgM4WLzN1aOm3Z1kZhHBimba1EzabzJJPfWH+O1Ad2KL02+73cyeRDFkN+jM8S4NMx1NPdXX+8ITuO+wdzoMoNcN+iwAuXBC8558ijW5GrbCBR8oCN7JFggS7hcCN1PGEn3k+8qlenfsljwooQqiMUp6qPXPi3Nid9qKOegr+t00GJD9v5o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099006)(5023799004)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EvuemZtTdeXAEuxN6q+NxP5EFpdXMVOOknIwWGfrnqblyxOMhftadljFhZZK?=
 =?us-ascii?Q?EJnuoNHgWUufrqfBPOcJ2o7i/0JyJaBmknwLmOOqtn3SepynZwVxQGdE0l2H?=
 =?us-ascii?Q?Thz+lmOh+bynyVh7Oto5E5E2/iGkPS6jtusSwNg+BJfRdny343H9mbdnV6vD?=
 =?us-ascii?Q?O+ztQjJofn/f+MomsDMLjECfNhVhRNcgkplQEdVBLnjpGUxVYoilni9FQINY?=
 =?us-ascii?Q?v208+tkfLttgx0UttVLHrq3ovYKoy4xQLRmZyScFiSd8y4ad0u2/FtF5iFuw?=
 =?us-ascii?Q?HZKVAIDwOEosAx+ZxulVigSjI2PGS3d6ZoyHUD0MXa/IMruMYS0KCr659mkp?=
 =?us-ascii?Q?3QdcdjNBGEnM3LWJtr9k2cEQiXY/ZlItZrxaTRNh/v1ucwcn243V6ju3hvFq?=
 =?us-ascii?Q?SSJDat15pvRecL0sEr4AjIvi1O6PQ2h4rdbDx1/sCT6ahRR1liD6Jfha8Kam?=
 =?us-ascii?Q?L4ZD+idwo3KUeRldfVrtGjmXtFJlWnLOi94DqgPIwe/tuXsjDCJmG8AIMXfy?=
 =?us-ascii?Q?UF+5htW8p7n+cr4Vyt1IYY5GYxYnpGFT0xwv8DVgxXrUipcyeTrgO5Z4T8N4?=
 =?us-ascii?Q?tz1lvc8uwptx+yuxhhDoIVlExRteh39OKGidZuQ1xbKO5ELakYSu89ptr9r5?=
 =?us-ascii?Q?NVDI4yDtOOUDj7Sk8WRXU/mrFUT4lUsXUQM8lSblPuC4RhNv5ARfZQ4uI8uu?=
 =?us-ascii?Q?ma+MgHobCKB38vGg2a6Ckdl9WIy92rtzDYA7GcuGw43UEckHE50o7c3SOr2T?=
 =?us-ascii?Q?K5DlgaH0PX8CyqMlKE7fgQd/b9nr9mP2v1qicQ+68EwR41/bOfXC5lNBCMzp?=
 =?us-ascii?Q?CvGU8I4btKpxwdXSe0Zm9TDiRfgKRLGtDcNhYy7KalypKsS3mmolxQZJmqP4?=
 =?us-ascii?Q?0qDSo+AwnYdduJOxEwkwucM7Zt1m+7Es8tMT5Wl3nAAYzQlLNeFfan/NXwlh?=
 =?us-ascii?Q?3ulp8PHlmjAEPqoGMlCuvm90JMYGEBDjoypjm6D2tt3fUxpz8Zf10ABrwBCH?=
 =?us-ascii?Q?SGbBcHOlC91RO/s0RSkIlFagM7qbmV9d5JkAp7oTFvhV+mRdQsN3Vg4It22Y?=
 =?us-ascii?Q?ATUePRXksr9zqAbdnceCuU2wPGwmgy3tzYf7dLWYxFxWxPflpcdzF5FDUg6/?=
 =?us-ascii?Q?Z4QlO0EGI2aRvJ7WRTplnYx+O1TRcj8HDtGQbLDl8UfD4jjUhHmCICOKbptn?=
 =?us-ascii?Q?RjSqJjUgn2Pz/jrdFnBWIretq6gxxgUNl3GkmKDUPHlpPRxRY8yZaPBA0+hp?=
 =?us-ascii?Q?e0isbu5kPXmOFjON1/xaecFuoBu4NYCA4z8QYETUKAl+p1kRmRGlK0sLHPoj?=
 =?us-ascii?Q?xRYujmCMH56lmZE+drG986Yi7NqIYCD88NBGCA5FFR6l6KmhstueJxYYgWI/?=
 =?us-ascii?Q?6W7TTmlqulnA7b1BAlAfu/3O08m8JojDUIY9EyQz5ZO5iScg/chAIzplQO5y?=
 =?us-ascii?Q?6ytV58azpRINxnYj0egyu9LaMqFUFfrbudb7H4feqsRGqSLqQ570RPRzQ4ga?=
 =?us-ascii?Q?oSzDiVPNvNvWWOXbqgN1mEolWRRUqqRQp5i7XDXqEcSoWzRsjIjN74LLy2Y2?=
 =?us-ascii?Q?XfFtylHoM7np0Jo2wk/zhSdxSunPsLrVBFnMLwH7ms8BN/4WQx8gGXaf9Zi+?=
 =?us-ascii?Q?TYylw+P9WGNDcnyLDP8EiAABitdBzc9u3SSPTfXBIJIZkcgamNW0kSZdA4+X?=
 =?us-ascii?Q?/lQcRzOuKI6i1RsXm/5dHORpxxkYHJxRJjtr+hA7dcXbQ/P2aObb7tAFPzjN?=
 =?us-ascii?Q?gmIwywZLtA=3D=3D?=
X-Exchange-RoutingPolicyChecked: CU8YomwfAQv8O3GVgBoOXVho6SVYSH4jhPDzuAhq+pv8AhD35laC6HKK8obMx9UxYSbbQdpEmji7PVvgKCKpM5E3K8t6FFrdU0Uc9II0WIENi18BjjQbOJeoATH5VxMU0vLIYAjCDN3GlvXROEGqUdx+XB+7dhK0Nhe+Z1cdDuwVxymDy222WDWhtEPwzCF4DhOuJPVnW5/AT3nrGmypfHYaA6HhNk7tPtlRAo6UcpywH+owMP/V/TQzUYUslwd0upORM2RwUpmhoCsBq+Uf3svfvPJS07S9Ch8rJ8iV64Gu6qtj+0B7CFha6l0YbcYLuJ0jvV1qDV7/O7KlvtKOsQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 49671621-3327-4aac-4310-08ded2c4fb7a
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 14:21:00.8974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h4rRyA/de3z2Q2N2kcO3mDiUdksb7R5RMcdp/673bYdU1dEHGSbzgt9Sgh9/76/n/JeKMf4sooIGGpvQoxgfKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7803
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:luciano.coelho@intel.com,m:lyude@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ideak-desk.lan:mid,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6182E6C6907

On Mon, Jun 22, 2026 at 05:03:58PM +0300, Luca Coelho wrote:
> A hotplug or link-loss event can tear down the MST topology
> (setting mgr->mst_state = false and mgr->mst_primary = NULL) concurrently
> with a caller invoking drm_dp_mst_topology_queue_probe(). Since the check
> is already performed under mgr->lock, the condition is not a programming
> error but a valid race -- the topology was valid when the caller decided
> to call this function, but was torn down before the lock was acquired.
> 
> Replace the drm_WARN_ON() with a graceful early return. This eliminates
> spurious kernel warnings and the resulting compositor crashes observed
> when connecting/disconnecting DP MST monitors, while keeping the correct
> behavior of doing nothing when MST is not active. A drm_dbg_mst() trace
> is added so the skipped probe remains observable under MST debug logging.
> 
> The existing WARN_ON(mgr->mst_primary) in drm_dp_mst_topology_mgr_set_mst()
> already catches the case where the topology is initialized twice, so no
> diagnostic coverage is lost.
> 
> Fixes: dbaeef363ea5 ("drm/dp_mst: Add a helper to queue a topology probe")
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: stable@vger.kernel.org
> Cc: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Jonas Emilsson <jonas.emilsson@gmail.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

Could also add maybe:
Link: https://lore.kernel.org/all/20260503034533.1023686-1-jonas.emilsson@gmail.com

The change looks ok:
Acked-by: Imre Deak <imre.deak@intel.com>

> ---
b> 
> Imre asked me to resend this with the small compilation fix as
> requested by Lyude.
> 
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> index 4de36fda0544..7ce9e212770a 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -3740,8 +3740,10 @@ void drm_dp_mst_topology_queue_probe(struct drm_dp_mst_topology_mgr *mgr)
>  {
>  	mutex_lock(&mgr->lock);
>  
> -	if (drm_WARN_ON(mgr->dev, !mgr->mst_state || !mgr->mst_primary))
> +	if (!mgr->mst_state || !mgr->mst_primary) {
> +		drm_dbg_kms(mgr->dev, "queue_probe skipped: topology torn down\n");
>  		goto out_unlock;
> +	}
>  
>  	drm_dp_mst_topology_mgr_invalidate_mstb(mgr->mst_primary);
>  	drm_dp_mst_queue_probe_work(mgr);
> -- 
> 2.53.0
> 
