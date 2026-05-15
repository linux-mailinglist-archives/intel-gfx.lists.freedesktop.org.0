Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hgasA7g+B2oCvAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:41:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D06552525
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:41:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E0510F573;
	Fri, 15 May 2026 15:41:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gfevskSQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D36510F56A;
 Fri, 15 May 2026 15:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778859700; x=1810395700;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dt0qimhKGXxPgGmwb0KjX+TxTHGGrR0caXO9xrBs8Yg=;
 b=gfevskSQdzPMbKiGE/49GjlhPOFAadOmkOib1HxJOYcW/EQQpr6GHJfR
 lT0JLPI/WQKFxa0t+yW6DGq8cALaNtimlqbghmgwgm0p9wx1JT+BbHowU
 jZbp4HcBUX/tuJJtofyyeAxNE+8OXyVa2FAzj5X18/NOd8U7v1L+0qF//
 DWrY188r6rieo8Oxv/lZyBQGhdYKBQLgoK9iCjaRL9RCrUz8kx9ELJ4fN
 4gUjSEFsOZmcDc+U1u+1JrSEioP370d8pMu1yNs4C+IQQNsDMCeS+AG5C
 CriS3y9J7oRaIYPj+5VVBk2GZJ1OxAfm/uIJV7eGBP2ZNe47O6bd0LSwv A==;
X-CSE-ConnectionGUID: DIDVVd+dR5WbV1fUe5CTmA==
X-CSE-MsgGUID: qWHTobOES6SMjZPDKiMMmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="83687580"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="83687580"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:41:40 -0700
X-CSE-ConnectionGUID: yO05cfFZR/u65tjM9oqYxw==
X-CSE-MsgGUID: q15VAAJ0QB2/YQuRMqid1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="235679841"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:41:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 08:41:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 08:41:38 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.68) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 08:41:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jDqL4NIE62opi8IZhVLiZUzpPNapVzgDoVN7lvqfMdyspboYNXdACjR7eA9Jzu8ty3AwnxU+FXSjLQH7JCnyRTQadw/YjzZjiUoXhEJL/7G2/qd5wFsrJwLz4AthzEtLcvpgvlUpKxW04jB3oRlSHaQy1YJEv9+HG8Ne66aPgo1q3c9YITGh6BgSMgDz92vIXA7yCwGuJESpPjZdcnHlrWrD4KPrbBlDNSeMPiYcRV96ieP7JOvGO17SMCHhzY2Ay33OXT4jEEHC60WDfuMtVfGNw30g3DOxr3AD1amtnkDz65PYUMt0xa62jZSagWrxyDtiAChDQpuc4M0MpfX99w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MN2HJHJ/fsTQivL3e+P7vnkUXmMNk/8GBJ+E94B2lJs=;
 b=nt618lh15q+pWM3kWeyYKIrG1iL+XbaE17QQVvungezR6vX7ZdkM3107Yd86H0aMtaJZcK2t2D4ZCehpr/CB3kCJzCQZGSQpsV6D7L5Pa+lm102FPqNfO6iSjYL4FP/QNp/uqNFl1nisbR05bhjqDcjimlBH8m/4DSVn47fBxoe12Bf300oYWVECI66/LZRtje6b2JFmuAWYxhwny/8HanBCFLQcCFNbb/IPHQg8FjOnkOeBQegzVFTcg8rrOxA1rfBIuWYyMLG1dq7glYLfgjNPTmY3p6WmNw9GeaeEaWDNRxRkauGnL20oXt637xKAzDWQc5wsPUWNCI3SJ5duzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7002.namprd11.prod.outlook.com (2603:10b6:510:209::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Fri, 15 May
 2026 15:41:32 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9913.009; Fri, 15 May 2026
 15:41:32 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v3 2/5] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-2-68727d6fe3ec@intel.com>
References: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
 <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-2-68727d6fe3ec@intel.com>
Date: Fri, 15 May 2026 12:41:28 -0300
Message-ID: <87cxywptnb.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0054.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7002:EE_
X-MS-Office365-Filtering-Correlation-Id: 971797f8-da6f-4a02-f21d-08deb2987017
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|11063799003|56012099003|18002099003|3023799003|4143699003;
X-Microsoft-Antispam-Message-Info: oFaht8kFcUfIEaHwzJTFqSBGkdvZsAm2OoAL2r0oHvlnZMTLNwvwywvxR2dAINptWxqzmRPsCoNSpbUfNIX0qvFMQiOe7LLQkz1DCUdQonEtBEKoDV2xNUp3DdQ1dcCJDN+QWPmdGzuMEJSEkYXfphqasvx/olveK05OSjXnVwdluDupmI0Yr04WwsMinfkh6toYpIDodFgzZOi4ztmmt/AolELXCKT8MIliNhnfB9Q3ZgVFjXGiut4KrSAhV+mwfECKfHW02MRVcPX9B4mnDdRADw98/2h7HSOl6I6veNo2S82wpRaYKETec+ORgrrD1tNWxJDfQHGHpyUdUx7SbUmEaAgsCHmeYsNPlm9tISfzoE413+B0t0GF0AJZqDJ03ghBCmWc4VHNBBtxCRne+kv7DEE9xVjyDcM/c0/3AbJV1Hiv6Pqxpg+7tTYZd68sKiq40TQH+cQ1X5JmYl9Lp/07tVotMN3FeUwLBMrkpducqu0noUbhJSvD6g+1vyyZtvcD1jchqVc+qvZZorfgUpmbcdsjAA2n+CCQvszZcmGGvEhp/4MGqzF2UzruTANWzrFXxu2BFPGBd1sQ/W4UbH7J8q5Ut9V2yRodZbRw56Eh0btuDhQ19MNC/+nEyfOTf9efGNI922uFFsk1gFclBLoWINErPI6HKGdSbnn5n9g8QNzwbQmNRvF1GPejOX74
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(11063799003)(56012099003)(18002099003)(3023799003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?scV7XlAp7Xc/Te4Xn5VV80Drt880EzKJmd3ppbf+bvLXws2WMzYmHk6wwWVX?=
 =?us-ascii?Q?uwlc1YkHBSvY/tCSCgTKZzFyA7EFOF59DXDEwSGe5W2xI4W9nRxY/MxRf4rg?=
 =?us-ascii?Q?9KOMp08/MDu/dySgY9tzyQc+cFw1g2WifR7/0ZX/etQuO/nTup3jNCFBWs+7?=
 =?us-ascii?Q?EmtvNLZbrcejlnRbZUxqi1MHfGIPisRP36pyHey2FxgswbZtcwflH/L3f15e?=
 =?us-ascii?Q?L4BDzMINdowsYZyF8aU36KqkjY00JOPF7RM7UZBhn6JP6+N6iMmow9NRf2PH?=
 =?us-ascii?Q?2Z0RI83DT6zd3NzrPOHXoc4XWe7L64p8To8TnwBc/SSY/s89XrSQdJoAWRH9?=
 =?us-ascii?Q?58OEvlDVBa3iIKbQqrT7KEtxFTubN5/M8WbsFuhCe1tW6cbi/vz+JBA9skle?=
 =?us-ascii?Q?SmedkHGz7NliDW8DQnRz9OstrAGVKjU1o+SrBlItvjuOSNfK1OmXFBiXRT3F?=
 =?us-ascii?Q?NHghG7j8EoHDHJv4ds29TEu3dPmDOat4i1ynMn+5ovuUhJ4xD5wxsOyIOv76?=
 =?us-ascii?Q?V0s2NbpWQKDp1R0GRPbyD5qxmRRf0NXykGIa9K9v2MlLXqj6HXcnwaxM5wI5?=
 =?us-ascii?Q?4snoZpAi+vn2dzvkqP1nuYZ8Ir0cCKx+DMPdtFhgxJYhzmOiT+i5SQH+PS06?=
 =?us-ascii?Q?E/xxFanh0bqZ3mYnVGS3FAfv/xEhIprlPM2Kwfyt3Q0edGjG2/8myGuy3wT5?=
 =?us-ascii?Q?F0vue7AJ07XZ7Z5w+h2BzWmrcDRrtt11VfOEs7wKOsTxlrqqI1w72rO0wiai?=
 =?us-ascii?Q?9aoqUjAVKZ4AEhmnW0OxKMjiZWuTGmFDoCK4HxDY9mkB4UvNwN5vcJ14KkCl?=
 =?us-ascii?Q?9/ewuNnulb6VxrBwzv2sVQS0gkHJMD2hmcPSeI1qd2efHVG4XOBH0B0/U3EM?=
 =?us-ascii?Q?I2VYDSkhxN3hWoXsrkyULcjNTmwxlL2gUidk0U13cgxbIcoSirqH22CKA6e2?=
 =?us-ascii?Q?CpsL6yysj4McoOMk6g+3cQk2pI7vZsRNVujQs4lUz6b6rtzfpr/nf3cax9pf?=
 =?us-ascii?Q?knI3BOHjaMWQZTXe91+EgPz/feKwrHxtwJwOmDOIjrRaZGDg0XSVgXsBWkFF?=
 =?us-ascii?Q?az65zjoZwSAtFk0pYhzgAIPnKVXWiVaWNIG+QM9wcjznfq73aKyyUZA8Olpj?=
 =?us-ascii?Q?efTSjY9uRKRnq3S19aFi/j5le4KAZQlD5F2fzyiHNC2vNhyt5tYWLtac3Hz0?=
 =?us-ascii?Q?SkWN5xbXDkMS8Iv56otpR6k62UdbscjSTIUQm4L0Iiz36qSe+r3aUIjSPk8Z?=
 =?us-ascii?Q?2N23P3skkXNBolPfOiLVmdj43LaOudh9Uz+Hurfg0C5MqybpPpIKBKXAwH5I?=
 =?us-ascii?Q?bo31PjDK3zhBWEDfL8jF2C8US37QyM5spSLnIYpTSIZIpPe1ucjbgBVC7WOQ?=
 =?us-ascii?Q?58KivXdW1z/a29nCxOyxwmcsmluWBdxy+iXRsWNy28/Ty50JDiySDChjBu51?=
 =?us-ascii?Q?KiffSjwYk35pucxsWKVqyrug7qnmy4CUACsOyDECizNzhjs3wb6iYM1dKlCA?=
 =?us-ascii?Q?37rYuSN/5OCBRr6aJA56k+RfaeEvdmrcgcrBuBMXcgEjzk0J6UW3N24V/9eD?=
 =?us-ascii?Q?bmPeke34XQtbnavkA87FQ2+OlG9bnBrJKk5SxY/gjfIlzjaD28DiwAlcqDXw?=
 =?us-ascii?Q?XdBmumfeW/T7GxtHM41aBQLk8z3v8gN9GcXr9lI/806ImvA707Gyd/VELfQO?=
 =?us-ascii?Q?obYNbvX8mck4/nLP0jPeS1yG9D8tTUNT8NiDShnvxUJdK7vKz39iwHTdEpQL?=
 =?us-ascii?Q?UQ7PU4arGw=3D=3D?=
X-Exchange-RoutingPolicyChecked: kCP8ylG+fzSBLk0LwEU1Ke5e21OXkqgNiNAP2wItVSqm/8f4cp/KLAWSP5XjOnsUxUnkONi/POlxFF5o0aqstXhCPPaRVROJXVmeZm3P6hso7QwJ2N8f3a6sueXBu7O3uXE5qOjn1gzS4Q2iYUe2Yv6KSLi60qZbPZPljuOmNwQkg+cYMWTtJZTvynk8SuCwRdYOWKuUOioYnsoMmoBFYKWFSrlfxMnRhscxRPd2W4IbIl0Agl+G6EbZs+/GrdEtsPtCC7c4X5g3WzjXm0gC1A/xlstNRs8Z63NQcj4DPVpfotJJVJCNF6JHkw4bVqvhR2zEHgd0/Q42hcJXyPK1ng==
X-MS-Exchange-CrossTenant-Network-Message-Id: 971797f8-da6f-4a02-f21d-08deb2987017
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 15:41:32.1954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RFceGiEFioaL28bjHMBDQYLZ/NxiSv4yD4nfcF638lMS+A3j3yAvXDRlGIgHK9wmv9uNkxBdLFJI7UTpDbuBYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7002
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
X-Rspamd-Queue-Id: 68D06552525
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Gustavo Sousa <gustavo.sousa@intel.com> writes:

> We got confirmation from the hardware team that the bandwidth parameters
> deprogbwlimit and derating are platform-specific and not tied to the
> display IP.  As such, let's make sure that we use platform checks for
> those.
>
> The rest of the members of struct intel_sa_info are tied to the display
> IP and we will deal with them as a follow-up.
>
> v2:
>   - Use good old if-ladder instead of weird-looking pattern "assign ret,
>     check platform, then return ret". (Jani, Matt)
>   - Have a single call site for get_platform_bw_params() and pass the
>     result as parameter to the *_get_bw_info() functions. (Jani)
>   - Avoid using "plat" as abbreviation for "platform". (Jani)
>   - s/_plat_bw_params/_bw_params/, since all of the instances are
>     prefixed with platform names. (Jani)
>   - s/struct intel_platform_bw_params/struct intel_soc_bw_params/.
>     (Matt)
>   - Do not return a default value; prefer to return NULL and
>     intentionally cause a NULL pointer dereference if a platform is
>     missing. (Gustavo)
>
> v3:
>   - Call get_soc_bw_params() only after the check on
>     HAS_DISPLAY(display). (Jani)
>   - Combine if-ladder branches for adl_s_bw_params into a single one.
>     (Matt)
>   - Flatten if-ladder by checking for WCL before PTL (as opposed to
>     checking for WCL inside the brace for PTL). (Matt)
>   - Bail out of intel_bw_init_hw() if display version is below 11.
>     (Gustavo)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 162 ++++++++++++++++++++++----------
>  1 file changed, 114 insertions(+), 48 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 7eef693b51ad..351ecf741b54 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -372,81 +372,144 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>  	return dclk;
>  }
>  
> +struct intel_soc_bw_params {
> +	u8 deprogbwlimit;
> +	u8 derating;
> +};
> +
> +static const struct intel_soc_bw_params icl_bw_params = {
> +	.deprogbwlimit = 25,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params tgl_bw_params = {
> +	.deprogbwlimit = 34,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params rkl_bw_params = {
> +	.deprogbwlimit = 20,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params adl_s_bw_params = {
> +	.deprogbwlimit = 38,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params adl_p_bw_params = {
> +	.deprogbwlimit = 38,
> +	.derating = 20,
> +};
> +
> +static const struct intel_soc_bw_params bmg_bw_params = {
> +	.deprogbwlimit = 53,
> +	.derating = 30,
> +};
> +
> +static const struct intel_soc_bw_params bmg_ecc_bw_params = {
> +	.deprogbwlimit = 53,
> +	.derating = 45,
> +};
> +
> +static const struct intel_soc_bw_params ptl_bw_params = {
> +	.deprogbwlimit = 65,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params wcl_bw_params = {
> +	.deprogbwlimit = 22,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display *display)
> +{
> +	if (display->platform.dgfx) {
> +		if (display->platform.dg1) {
> +			return &tgl_bw_params;
> +		} else if (display->platform.battlemage) {
> +			const struct dram_info *dram_info = intel_dram_info(display);
> +
> +			if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> +				return &bmg_ecc_bw_params;
> +			else
> +				return &bmg_bw_params;
> +		}
> +	} else {
> +		if (display->platform.icelake ||
> +		    display->platform.jasperlake ||
> +		    display->platform.elkhartlake)
> +			return &icl_bw_params;
> +		else if (display->platform.tigerlake)
> +			return &tgl_bw_params;
> +		else if (display->platform.rocketlake)
> +			return &rkl_bw_params;
> +		else if (display->platform.alderlake_s ||
> +			 display->platform.meteorlake ||
> +			 display->platform.lunarlake)
> +			return &adl_s_bw_params;
> +		else if (display->platform.alderlake_p)
> +			return &adl_p_bw_params;
> +		else if (display->platform.pantherlake_wildcatlake)
> +			return &wcl_bw_params;
> +		else if (display->platform.pantherlake ||
> +			 display->platform.novalake)
> +			return &ptl_bw_params;
> +	}
> +
> +	drm_WARN(display->drm, 1, "Platform-specific bandwidth parameters not found!\n");

CI shows the warning because DG2 does not use bandwidth
parameters and get_soc_bw_params() rightfully does not cover DG2.

We could just get rid of the warnings in get_soc_bw_params() and
get_display_bw_params() all together.  The idea of the warning was to
serve as an aid to the developer, but I guess tracing the null pointer
dereference back to those functions shouldn't be too hard?

Another idea is to make sure that only the functions that use those
parameters make the call to get_{soc,display}_bw_params().

Jani, I know you preferred the other way around, but maybe this is a
compelling reason for moving the call to the direct users?

--
Gustavo Sousa

> +
> +	return NULL;
> +}
> +
>  struct intel_sa_info {
>  	u16 displayrtids;
> -	u8 deburst, deprogbwlimit, derating;
> +	u8 deburst;
>  };
>  
>  static const struct intel_sa_info icl_sa_info = {
>  	.deburst = 8,
> -	.deprogbwlimit = 25, /* GB/s */
>  	.displayrtids = 128,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info tgl_sa_info = {
>  	.deburst = 16,
> -	.deprogbwlimit = 34, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info rkl_sa_info = {
>  	.deburst = 8,
> -	.deprogbwlimit = 20, /* GB/s */
>  	.displayrtids = 128,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info adls_sa_info = {
>  	.deburst = 16,
> -	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info adlp_sa_info = {
>  	.deburst = 16,
> -	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 20,
>  };
>  
>  static const struct intel_sa_info mtl_sa_info = {
>  	.deburst = 32,
> -	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
> -};
> -
> -static const struct intel_sa_info xe2_hpd_sa_info = {
> -	.derating = 30,
> -	.deprogbwlimit = 53,
> -	/* Other values not used by simplified algorithm */
> -};
> -
> -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
> -	.derating = 45,
> -	.deprogbwlimit = 53,
> -	/* Other values not used by simplified algorithm */
>  };
>  
>  static const struct intel_sa_info xe3lpd_sa_info = {
>  	.deburst = 32,
> -	.deprogbwlimit = 65, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>  	.deburst = 32,
> -	.deprogbwlimit = 22, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
> +			   const struct intel_soc_bw_params *soc_bw_params,
>  			   const struct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi = {};
> @@ -466,7 +529,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  	}
>  
>  	dclk_max = icl_sagv_max_dclk(&qi);
> -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>  
> @@ -496,7 +559,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>  
>  			bi->deratedbw[j] = min(maxdebw,
> -					       bw * (100 - sa->derating) / 100);
> +					       bw * (100 - soc_bw_params->derating) / 100);
>  
>  			drm_dbg_kms(display->drm,
>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
> @@ -518,6 +581,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  
>  static int tgl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
> +			   const struct intel_soc_bw_params *soc_bw_params,
>  			   const struct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi = {};
> @@ -554,7 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  	dclk_max = icl_sagv_max_dclk(&qi);
>  
>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>  
>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>  	/*
> @@ -599,7 +663,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>  
>  			bi->deratedbw[j] = min(maxdebw,
> -					       bw * (100 - sa->derating) / 100);
> +					       bw * (100 - soc_bw_params->derating) / 100);
>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>  							  num_channels *
>  							  qi.channel_width, 8);
> @@ -661,7 +725,7 @@ static void dg2_get_bw_info(struct intel_display *display)
>  
>  static int xe2_hpd_get_bw_info(struct intel_display *display,
>  			       const struct dram_info *dram_info,
> -			       const struct intel_sa_info *sa)
> +			       const struct intel_soc_bw_params *soc_bw_params)
>  {
>  	struct intel_qgv_info qi = {};
>  	int num_channels = dram_info->num_channels;
> @@ -676,14 +740,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>  	}
>  
>  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>  
>  	for (i = 0; i < qi.num_points; i++) {
>  		const struct intel_qgv_point *point = &qi.points[i];
>  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>  
>  		display->bw.max[0].deratedbw[i] =
> -			min(maxdebw, (100 - sa->derating) * bw / 100);
> +			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
>  		display->bw.max[0].peakbw[i] = bw;
>  
>  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
> @@ -792,11 +856,16 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>  void intel_bw_init_hw(struct intel_display *display)
>  {
>  	const struct dram_info *dram_info;
> +	const struct intel_soc_bw_params *soc_bw_params;
>  
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> +	if (DISPLAY_VER(display) < 11)
> +		return;
> +
>  	dram_info = intel_dram_info(display);
> +	soc_bw_params = get_soc_bw_params(display);
>  
>  	/*
>  	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
> @@ -809,28 +878,25 @@ void intel_bw_init_hw(struct intel_display *display)
>  
>  	if (DISPLAY_VER(display) >= 30) {
>  		if (DISPLAY_VERx100(display) == 3002)
> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_3002_sa_info);
>  		else
> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_sa_info);
>  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
> -		else
> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
> +		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>  	} else if (DISPLAY_VER(display) >= 14) {
> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
>  	} else if (display->platform.alderlake_p) {
> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adlp_sa_info);
>  	} else if (display->platform.alderlake_s) {
> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adls_sa_info);
>  	} else if (display->platform.rocketlake) {
> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &rkl_sa_info);
>  	} else if (DISPLAY_VER(display) == 12) {
> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
>  	} else if (DISPLAY_VER(display) == 11) {
> -		icl_get_bw_info(display, dram_info, &icl_sa_info);
> +		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
>  	}
>  }
>  
>
> -- 
> 2.53.0
