Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNTGBy75/WlilQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:54:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1884F826F
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CF7210F50A;
	Fri,  8 May 2026 14:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+W2ivxb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62F3510F503;
 Fri,  8 May 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778252073; x=1809788073;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=o4eEDJg/RSmcswxeowYCyMn98hc/dq+Q0rW11PFKm68=;
 b=C+W2ivxbkVeD2CoTPzOzhylTUS/JVyPjtw+jh6FnQi8l8s4SQxqq0QEp
 cY7YY0tSd6mu9Wa6NXdd7NEI4d/oONbiG3CifB7Twq7rgiH/iuwgUGsM7
 gdo/T6yYhs6LIjmKZGnR4WnyPrTAhY7sAiunGrWSQCidJ9v37ibu2zlU0
 gpaMeryDMqdNMqbrfT2dzq1dGVJkal9d40RcslXhAuGDMv5x5pUwPcyGg
 SqRSFirZxSZqdshHfKWVFG7dLtn3Svuv9RBGSEQ6q5pM7KakMdYC41fMa
 XZurqB1rX6Ci1mRJawyk3fY1gCdGtwG2KVfcUymrxszdNIBpmHH8kRO2z Q==;
X-CSE-ConnectionGUID: QVjEFQrTTIud9sLi+CUVrw==
X-CSE-MsgGUID: MYiLj6+DTvKJ6un1Z6fyAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="89924096"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89924096"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:54:33 -0700
X-CSE-ConnectionGUID: X9uvxlhRTEyh/2YYpWx3Aw==
X-CSE-MsgGUID: x1YZIb8VSdKziEwVmaUMWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="234132322"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:54:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:54:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 07:54:32 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:54:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bYVvwK3+sO5ajIrlCzFnQ+kfE3VvABKorBQ8ujHsbWH6g1FJUu0whJdcHZGllWdiVTlEW8xGbyJKjB01T7GqL0NhXT1qg9mix2aCvDlubf87xD8fSeofF92tE+M2Bu2UIgKGe3PG9b2m+UzbuDFvY453odB7FU+5+njVBOAmDb0LFiAYkAdqWWliv6ScyXX7NuP/juJhwi8FyVyDjTPAt99oFQfrS6pAkAFCpLlaBPSoRXdlkDgo8570V8G4mdoxuCq5cMLpi0qF2W0/ydi/CJZjfqRB71l93/JIJ11+y3hEjvnlmKtuw0PKcxUaASq1PDr6VARMnHjq7du3khB6dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nepbX/MlzzuCm+x2ByO8OIvpVLDOF4j9F7eSOSRf67E=;
 b=Pdw8fI1UDYxRxJa64Pa9CoyagbEKfZmYapjAynPmvmWkXtQupNmPn4CoK8+YhRj9jAiL70OM7aI6AmkwoEwpW/SYC+w2/Xw/MGr8yvMR8gQT5zjNhSoJxxBS1uXxSCBSl35Jt5PrpSTYlf8DXh8u5X2OAN/5enoPAMLoao59y3wjlc3evyNmc3bOm9v13Q/WK2fYhEbP7efjzpCs+Rs3WdFnKBmtucbqK4sshZyQllVJR05XiE35ffKpkbRV7zc7TyzLxb50pEq8cOdSNlhDdgJPtnZtMJGFurC+FJPK44g4Ld9jbdYu1xd1nE0lVdah4jtb9t+/EQpWpKcLY63S7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA0PR11MB4686.namprd11.prod.outlook.com (2603:10b6:806:97::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Fri, 8 May
 2026 14:54:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 14:54:30 +0000
Date: Fri, 8 May 2026 17:54:24 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 009/108] drm/i915/dp_link_training: Use link_training as
 base pointer in debugfs
Message-ID: <af35IGTwVpc9scXH@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-10-imre.deak@intel.com>
 <5585535a68e00ea1639ae4ec386929a0836fef35@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5585535a68e00ea1639ae4ec386929a0836fef35@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0095.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA0PR11MB4686:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dd7dcf7-8a1a-46cf-79aa-08dead11b516
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: AaOQZ2BbRgz7E706sTGcxuYv7Bp1/GsSVRqT/qZeHMIK8xq+o9D8aqWMjA1MTnkP3RGHwCJJXLAkjJn++78gv5zf/BM9ar2QZceb3ee64EuPXdrfw/x9IW7FezmGw0bjbrpdF/wS1gI0K28mszoBEhuTGwrww3D2Ylbeuk8s+J+WicU7BZjfUbiUV96VSCrpkgluaKANAW0dxh5LdWFrLxTCwnZndo77osZdHWGRADYd4embVxMFgSdD2Be56+SkXQdOVNZ+JDZ/rWFvmw90P4n7dmxCQDNElH7tUnwc259/0KJNn24qfXmT+Jv6tYOwpXkkgNaLISEO/SjvSDH7lEc4EVA+wjELl65TaGncBgZGcKPUNa29j7MWyLuAbVCTAA9OdwEKnN1GlR8eeKrIFLCVm5BoiXDDcdAiNFWNGYwVmIRBQm0V1xlwZmiiIk6Z1qdeSMF/wh+xP3mhqPXCTgYvjUNKsqxKdJmmCgpkYeJ2kxfaZ0Dw9SylBurUaoa+3qSMEyoPfl6LpsVhX9bYjqOwWtGTqorBADejKtoMwHJMQD6o1cU1yG/JYk8sRhHcnN8yHthT+hiBxGs8wE0sqqX8O/Dv28IoYbxaUoWJU0y/Q67nyxOAW/yYUsSW3TbJTLmJSw2NAqOa7hx0s86YXXAcsgf04iHuuO321xBNGsj8f2BNpUNFhTax9dhCj4ZK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FtH3j6pZFRUJLwrDdw6uw+6EFeqIzRsyrlw+asVPtrC4iJu3u/9b91azkxDc?=
 =?us-ascii?Q?t9U7jU/orl2k7dpvWf2WRj7TR5/Achx7u34PEuRtgmbRYalksYOBN8nvIq6X?=
 =?us-ascii?Q?MeeRnYoGce2i6jmIVt1Fd+EBFd7A8NeueSQwh/h6aFQaGgJKWfvcwRXzEu7O?=
 =?us-ascii?Q?mzeAUjBVWIGyxgIG6lx0KANhlEdEHD5QWKvKTmo/7ZYxwNiJzcedm+kX62sT?=
 =?us-ascii?Q?sSiQQKi3GnKz4xS0oDei3TPj38cKYKNO/jICFx07zdBlxTBBnt3YeFBSvZWg?=
 =?us-ascii?Q?yP3dLW2htaAJzIBl0ZeNIj9CILqs90aV1pMGVLTGBFslMUlZZ8plnEREYLc3?=
 =?us-ascii?Q?D6tp6S8IrDrEFbMhUj9wTTP3cdSKA2Uc0Pe1OqacRl6pd4smq1sLOjzaUejr?=
 =?us-ascii?Q?ATrDiqeUFXT7vW7S7n9VgZmNtyiO50XFdqOAdknKSU50tZNF36aCQ6f8YL0j?=
 =?us-ascii?Q?5LvXh1WzAl+Q66B/biCEB3pHcxUqVX1TMEAqbNOzGxgalrE2Kwkr0BUZBkYi?=
 =?us-ascii?Q?aAzOYFyC/REryd08XhECll2UuHyaJ2qlSdsozt/68HjBe7Jka05ooWYPTOBG?=
 =?us-ascii?Q?MYBZmjNQSpd7jG1JNZvVWLRHQrJydAATSYOPqaSS5PM0fRfdfGpKwCNJecuR?=
 =?us-ascii?Q?V+BGgpC4yNWA7WpH/9jwJNz2P0a43QhfSOoElT2jO3iK5GYgo6ni2oC6RJzg?=
 =?us-ascii?Q?HRwPJndjqWj3AactZ/7AoLRsSdafNfE4EjxQ52vv82peAcmrBxbR1jOvmmrW?=
 =?us-ascii?Q?AQKLEaMETQIzfF3xDhVaPdX5GHoB1ic5wLBUQ+mHUB5lex5ecOXyj1cDs5Zp?=
 =?us-ascii?Q?+gPbKWmETfbthLKPCosO8Vfe5BusBwAzUZE91UqAWChe+JoGPXUX8imDZBmn?=
 =?us-ascii?Q?Y1TfiUnjHi2wIKpnSaRF247UYKHjZSjvR8gh92Gg/hUsg/Z9UG/USClwXh+J?=
 =?us-ascii?Q?kXVStja4aAzulQJ7qoX0dJKbV9YNcucLvwa9galq/cJIYgQri7jwBDExSZzR?=
 =?us-ascii?Q?ZfdACs/h2O6KrbAWlHf/lhaL5+3bkYy1EEWISCwSmaNDTeKkAsj0ZGFVw3GX?=
 =?us-ascii?Q?J7mRyWVLYxz4PVtzDCjaRY3NlEBG4IoNVPFqKkwQ+6rzs3RztwPunc1fJVcw?=
 =?us-ascii?Q?qEmoltQDCn3KkwBOsKWKutasNV9J62UCyNs4Qvc/FPbvOQEzgiTLs58av0uY?=
 =?us-ascii?Q?QJTYe7qx92xz71B24D867N3ENVgnzOIgAYeyherUu5xgCC505fNx1i3xPYEl?=
 =?us-ascii?Q?zbCvnhQ2ydJZAdQfD8NkNWBWWjAK3swiJDw2ZIDMe29Em0pbr2aB2byGCI0/?=
 =?us-ascii?Q?BRHlvRYnOPU2u5lQ6l5eJWdTDvfLF4Sfoz7ZXfv0YDjyNvTpQljsABePbLkP?=
 =?us-ascii?Q?T+PpL2LBetCT98nOV3gYrsxsAJdCPTAUXXjy2NKF5vQEbW3HFoS9rmzY6GN1?=
 =?us-ascii?Q?H0LFh/slQuWUHKB0nsPv3g5J04bladilWxYUncgTXGRGUk9aK9+RAzd85lOh?=
 =?us-ascii?Q?TmiwFh/BvjwDa7BUYB8XlDxhwqasJmT3liutIGYyipYGT3MULLyQItagk6Of?=
 =?us-ascii?Q?zlb8s7lSPlx0uZqKCdJLxAV1REeKPxKjSoKIqeghdxbADim3VTTAr1+HYj4f?=
 =?us-ascii?Q?NyrG21CEtmCpUfXX1iNOabKypHAm2F5C0yU4QoeYhjeAVbfbS2b6e/acKzwM?=
 =?us-ascii?Q?evU4FD2wYO+hwFMEgyMNHuLbXA4wW3XYznVldCxMnM1RIIM5cEyx11keKli7?=
 =?us-ascii?Q?nq0gM2SVyw=3D=3D?=
X-Exchange-RoutingPolicyChecked: Z5poTluM0t9vvaKLcaaBjvyo8KM0W58XattlD0Dj/d7nr+hk5L6Le5KpUt8ellxMOaael+WLb3vraBvE4FpnighC/QO8iTZ32x8YgGsqDUmt9XurOwEBKuIdQ0/iH1KLH5wEjPuK9MAWISSsJAwy52jWCN1jV1ZnSNNogubeGssRh5mVWqGtgBUhZ3XLiVR5+Wkco3ZeE3KWQgOPS5IfpgqNe504jsugLznycato1Ytl0UnCTySVGFL9HJeKwl3IM0uryDOJtl8UfYjPI8oVCFqo/5faqHXuu9sReLKkWPFTyPwsVG4o9Otd+2iN3S514G41Y8Qbu3aeJltDGrbxMw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dd7dcf7-8a1a-46cf-79aa-08dead11b516
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 14:54:29.9734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GflRRSUKFbIyV2Y74CHhQryZYqouA3kbXQhDFKimnsk74rORKy+iAPVzJqbJTc+PjsL65SvmUgPid+JQSMEHsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4686
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
X-Rspamd-Queue-Id: 7F1884F826F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid,intel.com:email,intel.com:replyto];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:13:54PM +0300, Jani Nikula wrote:
> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> > Retrieve the link_training pointer from the connector and derive the DP
> > pointer from it in debugfs entries.
> >
> > This prepares for a follow-up change where values exposed via debugfs
> > entries will be retrieved from the link training state.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 25 +++++++++++++++----
> >  1 file changed, 20 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index c2f9af251b6a9..1762e507dd1ec 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -67,6 +67,11 @@ struct intel_dp_link_training {
> >  	struct intel_dp *dp;
> >  };
> >  
> > +static struct intel_dp_link_training *connector_to_link_training(struct intel_connector *connector)
> > +{
> > +	return intel_attached_dp(connector)->link.training;
> > +}
> > +
> >  static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
> >  {
> >  	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
> > @@ -2307,7 +2312,9 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
> >  {
> >  	struct intel_connector *connector = to_intel_connector(data);
> >  	struct intel_display *display = to_intel_display(connector);
> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> > +	struct intel_dp_link_training *link_training =
> > +		connector_to_link_training(connector);
> 
> Nitpick, this fits on one line. The newline is a worse distraction than
> going over 80 chars. Ditto below.

There's also a guideline to keep the length of declarations decreasing,
which imo does make the declaration block more readable. This is ofc a
subjective thing, could be argued in both ways.

> 
> > +	struct intel_dp *intel_dp = link_training->dp;
> >  	int err;
> >  
> >  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> > @@ -2327,7 +2334,9 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
> >  {
> >  	struct intel_connector *connector = to_intel_connector(data);
> >  	struct intel_display *display = to_intel_display(connector);
> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> > +	struct intel_dp_link_training *link_training =
> > +		connector_to_link_training(connector);
> > +	struct intel_dp *intel_dp = link_training->dp;
> >  	int err;
> >  
> >  	if (val > 2)
> > @@ -2353,7 +2362,9 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
> >  {
> >  	struct intel_connector *connector = to_intel_connector(data);
> >  	struct intel_display *display = to_intel_display(connector);
> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> > +	struct intel_dp_link_training *link_training =
> > +		connector_to_link_training(connector);
> > +	struct intel_dp *intel_dp = link_training->dp;
> >  	int err;
> >  
> >  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> > @@ -2373,7 +2384,9 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
> >  {
> >  	struct intel_connector *connector = to_intel_connector(data);
> >  	struct intel_display *display = to_intel_display(connector);
> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> > +	struct intel_dp_link_training *link_training =
> > +		connector_to_link_training(connector);
> > +	struct intel_dp *intel_dp = link_training->dp;
> >  	int err;
> >  
> >  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> > @@ -2398,7 +2411,9 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
> >  {
> >  	struct intel_connector *connector = to_intel_connector(m->private);
> >  	struct intel_display *display = to_intel_display(connector);
> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> > +	struct intel_dp_link_training *link_training =
> > +		connector_to_link_training(connector);
> > +	struct intel_dp *intel_dp = link_training->dp;
> >  	int err;
> >  
> >  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> 
> -- 
> Jani Nikula, Intel
