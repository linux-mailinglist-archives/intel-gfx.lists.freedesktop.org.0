Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fjEKCedeS2ofQQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:53:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 661AC70DCBF
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:53:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=cLyuAosu;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4E610E306;
	Mon,  6 Jul 2026 07:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E20897FD;
 Mon,  6 Jul 2026 07:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783324387; x=1814860387;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=ii4Zg2kQ50HLkaJQvHjsJ7bMIkMaGwIzXn672uQKBDc=;
 b=cLyuAosuSkJXmyHLPLASQLACdicHctXN78HtvMkzlrYHAjmLjow/3C6T
 mFR+VK/2MvDhR+YyQ7hMnfvRnmP1DrA055WwVdCSkqQHeqL9OE06NHnsS
 JcM7g/Vf8Zd4zV2LwtgZbO/TNNWp6d6H9mSQ3+AgpR0f2u3MUTzQ/Uk/l
 NWIiWqAtRzDRC6+YyJoaIJojGH5vaxvFLdhGIu577dffY7Lm04k2/n3Io
 ePpEwB5Z4G63YvIxoDLUKoCc+Cdwg3DRzQWm9UETOoQt4wpgjBnS2RezI
 6WZaLgyVRaqUGOZNwFpzDdFYJ2Xtx1vDnG4GZbjGD97uvno+dXb1etPKb g==;
X-CSE-ConnectionGUID: 3kmFwHGOQgOvvsAY4pLozg==
X-CSE-MsgGUID: DqWE/UdfS5mgXqOFg2XUkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="95459231"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="95459231"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:52:47 -0700
X-CSE-ConnectionGUID: knqcdytmSQGo4pqRgp3KdA==
X-CSE-MsgGUID: znmM8bE8Sj2ZPmYen+xRSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="251906315"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:52:47 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:52:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 00:52:46 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:52:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fIbi0CVs/PQJQPn+258MHETLvzvkWGvrsVSjc//Msti1S8wevBxFRCAdsxJ1IUKYt6/G5mPRXwS2JwtcodJfd85OUZjU9Z3FNd4ehipQ3F82HuAUSqkhlIl8ynGFOTlO0LwFvK+a2lN4Z/kkgHBOBIWHnpEKjyeXg1N16pSNKDvNN/RLp+nyK/sns9pQsEMVJQAuyCODbn0PrUVWsCg/XalL4uXzjWmQLfkQke7HnyZcGOwd4buoQeVkT99tBr2fDRaMTjmIwbdBwvq16cP+dxonI+W0wVxcvHOujbF0YIduJXVfuh40kmWaNfU5rJTwnlA0LLEMc8oRrCe5Gp0wsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=72BPchk1RV7PGwAUsXbLI/B1HGTRuN/nySU77NBJfk8=;
 b=qOp11O7qxBFEJLavdwo54WAhERt9KKcBCRYfyie+WC4uE4IOYid+JHPp00UNbTMVUDJSw442l24TdmqugRj+HB45byyXeaoXynhM+kjA/zWIpn76rXGBwJSplj0EBEiPfBSLUCkGuNf1YADSDng6zWqoLyOCr8ihM4QULAEhlDnw9yJR0AqaHsFktU2M+xUqA7PDdML6fnTRz3veTNgyzKCOKauustOCPUkeHBDTdni57OwFpkAVMG+G+TlNQ15cL3t71uRwAJmEGgCha+xZG73+rP02mjXR686XzK/G1XjhzeSBFhyq9sUfF/dDEGtr8LAiG5uPpxjGsKopZSJg4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SA3PR11MB7536.namprd11.prod.outlook.com (2603:10b6:806:320::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 07:52:39 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 07:52:39 +0000
Date: Mon, 6 Jul 2026 10:52:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 12/34] drm/i915/dp: Add link configuration filter for
 modeset computation
Message-ID: <aktewocJFYsa6nRl@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-13-imre.deak@intel.com>
 <ca67336e985f9cbf8079c89bcc4387563cc00b0f.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ca67336e985f9cbf8079c89bcc4387563cc00b0f.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239B8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::23c) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SA3PR11MB7536:EE_
X-MS-Office365-Filtering-Correlation-Id: 0aa33336-7cff-4cfe-4f1d-08dedb338d2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|3023799007|18002099003|22082099003|56012099006|11063799006|4143699003|6133799003;
X-Microsoft-Antispam-Message-Info: gg9fNu78+l6UKICTs9kR7GlEFsJ0ZDiOFhgyRrtq0jBabIzpiv7OKLR1CtFPXfNDb9KR+MsUzp9PeMU8gIgMVWNKkuiSDH4i+zQtj3JgHEr9AHAo39ILorMn8p1PIndCw8rYOuyLUsuervJDduKyIkuB/5ttHIqpswrgrvCHJlP7mOffq+5J70Rb/Xxdwa7reANK5IfuM8DklpqGlUIk/XZ4goP9XUpqd9p+ljIeb0rSUpOJVbu7d/7G1E1jhiIJId5qZdP+nGvwa08CKFeL5NPH7U0ieQibGmDJnhFSUO8amTH3q6SQTe9ZREREzYRKhGZhon7NJ1R8HHfN+TCFOY3qVLA0LgobNeHkK+9oGGzpKIv8VI67KTwxwCIKj20GkhcHgqGCYTrX7Q3XKNm4ui5NGI5C54UJFDiJ9seaVh0ho/ABMCdyX/nHZBh+U05J2EzaI2iat3SjNe5BEqjx40Bb7vUjTArFyQBvJxd5Gg9c55Gv3Am/mPlcYBmlRNQ0ljjbjg3NUGzwdNcrje/KiGVS+5n3u9kLeVBLgKWd8n1cQARZf64t9kg0jDcZYe/DdlVRS/mTwUK89EdLh+CkCFrnfF6FeuWgSGmld6q6IANXwXA3C9zKgl2Yke42SO5ephKnESFwxcYsag6yBf7SJTBZn0Dz0l+n8KoHqmMmg50=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(3023799007)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KCP639zyYTIBt8w1NiQe2+q4hcvaq1qE0OtW6mBkSmBSJuuMDFW4DkA+v8q1?=
 =?us-ascii?Q?spobKz9qG52VQIZG7MfoaMLWjXfg/UXZEaOtz2GSTSFku+gzb9AkIyrr0e/B?=
 =?us-ascii?Q?zfFqxPkMo3Sal3G2y5CBXzvw1huxR6AEUFJ1piuFNQi+hCxIN3AjFHATUHip?=
 =?us-ascii?Q?oWW/U/up0suqqHicd29PwlT32Zk1safxvZgA3welg4YI2H+fSKyVRcA5C/Nu?=
 =?us-ascii?Q?YpwPBLvL8R0vyCsSFoHzNUfDXCJZAMMRmcqHhQlmm+6j0wJGG8CL4q399SO9?=
 =?us-ascii?Q?JEqcMLc3XWz3MishA2HNNqVamafJjqHesgHlYHGdYEeQ6tQF8vM9DMWDBbqr?=
 =?us-ascii?Q?50HgC8os3TAFr9AqGdK6+fL4FwPDetCPgHJAypX3F9SApBUOUiULqsJ4bMKd?=
 =?us-ascii?Q?F3NlH6arH/0liU4Gy2PHHfWJ6xHG0WWQhYKf7bcduL+OC41rXSIAmnGFwBuA?=
 =?us-ascii?Q?Dt1OXwydSjIwD4yKTSsR3YWXja8YfYk0RxTQABnlxlEo1muyRUEDEt9h6huo?=
 =?us-ascii?Q?do+EVsMgzBJ+uJV3waSQAhV5UHtilERt55Jf2v9gg6ezw53a3gzQdSClTUkN?=
 =?us-ascii?Q?9GKM5kkFtjrBkLvL/TKzzlr6uVCRGacdn0O9K8qV7CxNPk9Vxy/txBpSqTVg?=
 =?us-ascii?Q?oVf20V3VzYLtJ+Kvp926G3Q1xhc8J37/sn9fv5X/A0CNPLuDpnbHtgyVQgSv?=
 =?us-ascii?Q?1UHFow9hymUK9cYE5EZs2OgqJSjm4hPgBhPcW8mMG/WYb+wLTEcpYrecdK+2?=
 =?us-ascii?Q?4Li9ja6vFYJa4ikHbhHvxxYnSLbNMI4YXq6dDUh7j5rO/rNnbk8F871CX/x/?=
 =?us-ascii?Q?rP4BBJU62ACLky0BPNU/4O0ToEHHwrwI6CSIXJyAUVrZXNUXeW7f/Q1sopTj?=
 =?us-ascii?Q?5mpHh5WRyF1K3pgcPIB6WRj2bIPJw7baU6MR3IhxEOlYtCn0i/LAvWkGgR/9?=
 =?us-ascii?Q?o/LK8SPYeg0MzW3PvkDftswdWfefql9X3E3knC0CxnFXp9sJVXiu7yzU0OeL?=
 =?us-ascii?Q?s0GXcth6VETUeu+xZFDvb38cQJA9LzfrImS3Ni9w7Q5j8ublB5HoHjuOqIG+?=
 =?us-ascii?Q?4cn2q/QIQdAXkgtBfFTsYIxZAeha6ZrriPAWEySQZqTFGxMGZZgt1blGzdLb?=
 =?us-ascii?Q?o+aIt8TuPCV8kgobqWJ6tO0/k/Y+r7Y2C8jTx/99KQYg74CLSesbNc2IqOMX?=
 =?us-ascii?Q?uvmYU6cSI8QS2YUDXGKw+OabcbTRq9nJ3EKXcE3+exvI1P9F6/UG/BWfEG+z?=
 =?us-ascii?Q?mZ3D1ERA/qJYjq4+qk9T//lIvINe/t8JNKH8rLA3MlVwkENgP7zMjjHAkduz?=
 =?us-ascii?Q?Jv63ZDrOK0qi1omokJp8BaYh9wUaem67Yhk0s+r75xatDHM53qz4/WUINrZh?=
 =?us-ascii?Q?fSHCWc0FriJB/2rV+KHVei4mySO69AJpqXQTJwTD/xF4OGckQ0ZUP0aIqMSc?=
 =?us-ascii?Q?T85czfvgMTlpBf4ZOznt/XGACkzQs5C74LH6DTYP3e/efLBLK0dDRWZebcJj?=
 =?us-ascii?Q?rRMOcKWHwx8UBXzQzO0yfhy2M1PCNc13ISaJOvC8zOxr2jNXgcYDF2cqHu9w?=
 =?us-ascii?Q?/SJ75WyaCg6uLP4f3xqSI2fzlXb9nZLKiy8r6sQXSnzgDVC+VRtNuF6603Y/?=
 =?us-ascii?Q?ciIpB2nHjFPZwCZlUHvWfWCLqfSmnV0HLKibEi/Feel/nSdgBkH6uBPbLMbf?=
 =?us-ascii?Q?YgzqkmnWQku+2AjGr4HsX8SZwARtrfWtk70gbqffJidAYVxaMnWz0SeZM/DD?=
 =?us-ascii?Q?wwd5hM81OA=3D=3D?=
X-Exchange-RoutingPolicyChecked: CUH4N024nsWHFjR2+jJ6gp4qr2166gQHYNxksLSd5RNZi6Hmnv5+SIIshHOvu9KPlRbNM9QQ7WZ6RAIr0QhZAimnY/e4Oxup4wPPfz5JGjQMyYgabscCSC38AIvPXkQNs9aLwuoWujnSGo2ClvsjOFXqDpD42XLEE6HImgsyavDUL7rRLbEztF0Z3Rcwv7nlteakNAUMmjaFdZen9gZv71OP54ZMeXDxygc2/zM5CJOHgahWqnvpKtlZon37fogOvqcYE0nLLL7tUbzGL2fVj/ajnPLYQHEvrxP2BDD+XKwa+JepS7y/tzcKaAT3mj3KLqJjS/W6CwIRK01GdV3BTQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa33336-7cff-4cfe-4f1d-08dedb338d2b
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 07:52:39.3721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cj/miOiAMV/IAp6YX7v0B7n53jDQSh6eeaIjqTJGL7b9Gztj97CeHCu0w/VbQtQ1nQ2dAEOr7ldaihTu3uIfZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7536
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:replyto,intel.com:email,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 661AC70DCBF

On Thu, Jul 02, 2026 at 02:03:52PM +0300, Luca Coelho wrote:
> On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> > Add link_config_filter to link_config_limits to track the set of valid
> > link configurations during modeset state computation. Keep the existing
> > min/max rate and lane count limits for now, until all users are
> > converted to use the configuration filter.
> > 
> > Add the helpers required to select the maximum configuration from the
> > currently allowed configuration set. This will be used by follow-up
> > changes as well to query the maximum link configuration without having
> > to iterate the configurations.
> > 
> > v2:
> > - Rebase on changes using a filter object instead of a mask of
> >   configuration indices.
> > - Rebase on changes using an iteration object.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 42 +++++++++++++++--
> >  drivers/gpu/drm/i915/display/intel_dp.h       | 11 +++++
> >  .../gpu/drm/i915/display/intel_dp_link_caps.c | 46 +++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_dp_link_caps.h |  6 +++
> >  4 files changed, 102 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 23001541283b4..bc333bc9296b2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2577,6 +2577,20 @@ bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
> >  					       bw_overhead_flags);
> >  }
> >  
> > +bool
> > +intel_dp_get_connector_max_link_config(struct intel_connector *connector,
> > +				       const struct link_config_limits *limits,
> > +				       struct intel_dp_link_config *max_link_config)
> > +{
> > +	struct intel_dp *intel_dp = intel_attached_dp(connector);
> > +	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
> > +	struct intel_dp_link_caps_order order =
> > +		intel_dp_link_caps_connector_compute_order(connector);
> > +
> > +	return intel_dp_link_caps_get_max_config(link_caps, order.key, limits->link_config_filter,
> > +						 max_link_config);
> > +}
> > +
> >  /*
> >   * Calculate the output link min, max bpp values in limits based on the pipe bpp
> >   * range, crtc_state and dsc mode. Return true on success.
> > @@ -2593,6 +2607,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
> >  		&crtc_state->hw.adjusted_mode;
> >  	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> > +	struct intel_dp_link_config max_link_config;
> >  	int max_link_bpp_x16;
> >  
> >  	max_link_bpp_x16 = min(crtc_state->max_link_bpp_x16,
> > @@ -2622,14 +2637,17 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
> >  
> >  	limits->link.max_bpp_x16 = max_link_bpp_x16;
> >  
> > +	if (!intel_dp_get_connector_max_link_config(connector, limits, &max_link_config))
> > +		return false;
> > +
> >  	drm_dbg_kms(display->drm,
> > -		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " max link_bpp " FXP_Q4_FMT "\n",
> > +		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max link %dx%d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " max link_bpp " FXP_Q4_FMT "\n",
> >  		    encoder->base.base.id, encoder->base.name,
> >  		    crtc->base.base.id, crtc->base.name,
> >  		    adjusted_mode->crtc_clock,
> >  		    str_on_off(dsc),
> > -		    limits->max_lane_count,
> > -		    limits->max_rate,
> > +		    max_link_config.lane_count,
> > +		    max_link_config.rate,
> >  		    limits->pipe.max_bpp,
> >  		    FXP_Q4_ARGS(limits->link.min_bpp_x16),
> >  		    FXP_Q4_ARGS(limits->link.max_bpp_x16));
> > @@ -2680,10 +2698,15 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >  			       struct link_config_limits *limits)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> > +	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
> >  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> >  	struct intel_connector *connector =
> >  		to_intel_connector(conn_state->connector);
> >  
> > +	/*
> > +	 * Remove the following min/max rate and lane count setup, once
> > +	 * all users are converted to use link_config_mask instead.
> > +	 */
> 
> Should there be a "TODO" here to make it easier to grep for?

Ok, will add it.

> >  	limits->min_rate = intel_dp_min_link_rate(intel_dp);
> >  	limits->max_rate = intel_dp_max_link_rate(intel_dp);
> >  
> > @@ -2692,6 +2715,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >  	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
> >  	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
> >  
> > +	limits->link_config_filter = INTEL_DP_LINK_CAPS_FILTER_ALL;
> > +
> >  	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> >  	if (is_mst) {
> >  		/*
> > @@ -2755,6 +2780,9 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >  			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
> >  
> >  	if (is_mst || intel_dp->use_max_params) {
> > +		struct intel_dp_link_caps_filter new_filter = INTEL_DP_LINK_CAPS_FILTER_NONE;
> > +		struct intel_dp_link_config max_config;
> > +
> >  		/*
> >  		 * For MST we always configure max link bw - the spec doesn't
> >  		 * seem to suggest we should do otherwise.
> > @@ -2768,6 +2796,14 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >  		 */
> >  		limits->min_lane_count = limits->max_lane_count;
> >  		limits->min_rate = limits->max_rate;
> > +
> > +		if (!intel_dp_get_connector_max_link_config(connector, limits, &max_config))
> > +			return false;
> > +
> > +		if (!intel_dp_link_caps_filter_add(link_caps, &new_filter, &max_config))
> > +			return false;
> > +
> > +		limits->link_config_filter = new_filter;
> >  	}
> >  
> >  	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > index 02b691df67555..13872b8c4975e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -8,6 +8,8 @@
> >  
> >  #include <linux/types.h>
> >  
> > +#include "intel_dp_link_caps.h"
> > +
> >  enum intel_output_format;
> >  enum pipe;
> >  enum port;
> > @@ -22,11 +24,17 @@ struct intel_crtc_state;
> >  struct intel_digital_port;
> >  struct intel_display;
> >  struct intel_dp;
> > +struct intel_dp_link_config;
> >  struct intel_encoder;
> >  
> >  struct link_config_limits {
> > +	/*
> > +	 * TODO: Remove the following min/max rate and lane count limits
> > +	 * once all users are converted to use link_config_mask instead.
> > +	 */
> 
> ...it would be consistent with this, at least.
> 
> 
> >  	int min_rate, max_rate;
> >  	int min_lane_count, max_lane_count;
> > +	struct intel_dp_link_caps_filter link_config_filter;
> >  	struct {
> >  		/* Uncompressed DSC input or link output bpp in 1 bpp units */
> >  		int min_bpp, max_bpp;
> > @@ -144,6 +152,9 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
> >  				 u8 dsc_max_bpc);
> >  int intel_dp_compute_min_compressed_bpp_x16(struct intel_connector *connector,
> >  					    enum intel_output_format output_format);
> > +bool intel_dp_get_connector_max_link_config(struct intel_connector *connector,
> > +					    const struct link_config_limits *limits,
> > +					    struct intel_dp_link_config *max_link_config);
> >  bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
> >  				  int link_clock, int lane_count,
> >  				  int mode_clock, int mode_hdisplay,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> > index 4482e1f9d6cd8..d00bb8047de2f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> > @@ -504,6 +504,52 @@ void intel_dp_link_caps_iter_end(struct intel_dp_link_caps_iter *iter)
> >  	memset(iter, 0, sizeof(*iter));
> >  }
> >  
> > +/**
> > + * intel_dp_link_caps_get_max_config - get the maximum config in a given order
> > + * @link_caps: link capabilities state
> > + * @order_key: ordering key used to rank candidate configurations
> > + * @filter: filter for candidate configurations
> > + * @max_config: returned maximum link configuration
> > + *
> > + * Find the last configuration among the currently allowed
> > + * configurations filtered by @filter in the iteration order
> > + * selected by @order_key, and store it in @max_config.
> > + *
> > + * See also:
> > + * - &enum intel_dp_link_caps_order_key
> > + *
> > + * Returns:
> > + * %true if a maximum config is returned
> > + * %false otherwise.
> > + */
> > +bool intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_caps,
> > +				       enum intel_dp_link_caps_order_key order_key,
> > +				       struct intel_dp_link_caps_filter filter,
> > +				       struct intel_dp_link_config *max_config)
> > +{
> > +	struct intel_dp_link_caps_order order = {
> > +		.key = order_key,
> > +		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_DESC
> > +	};
> > +	struct intel_dp_link_config iter_config;
> > +	struct intel_dp_link_caps_iter iter;
> > +	bool found = false;
> > +
> > +	intel_dp_link_caps_iter_start(&iter, link_caps, order, filter);
> > +	for_each_dp_link_config(&iter, &iter_config) {
> > +		found = true;
> > +		break;
> > +	}
> > +	intel_dp_link_caps_iter_end(&iter);
> > +
> > +	if (!found)
> > +		return false;
> > +
> > +	*max_config = iter_config;
> > +
> > +	return true;
> > +}
> > +
> >  static int find_config_idx(struct intel_dp_link_caps *link_caps,
> >  			   struct intel_dp_link_caps_filter filter,
> >  			   const struct intel_dp_link_config *link_config)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> > index dcbde890809bc..6dd2ce64e24ed 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> > @@ -29,6 +29,7 @@ struct intel_dp_link_config;
> >   *
> >   * See also:
> >   *  - &struct intel_dp_link_caps_order
> > + *  - intel_dp_link_caps_get_max_config()
> >   */
> >  enum intel_dp_link_caps_order_key {
> >  	INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
> > @@ -140,6 +141,11 @@ bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
> >  				   struct intel_dp_link_caps_filter *filter,
> >  				   const struct intel_dp_link_config *config);
> >  
> > +bool intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_caps,
> > +				       enum intel_dp_link_caps_order_key order_key,
> > +				       struct intel_dp_link_caps_filter filter,
> > +				       struct intel_dp_link_config *max_config);
> > +
> >  void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
> >  				       struct intel_dp_link_config *max_link_limits);
> >  bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
> 
> Small nit, but regardless:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.
