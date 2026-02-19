Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDbaJntWl2lPxAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EE7161AD0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3DCE10E736;
	Thu, 19 Feb 2026 18:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDA/G5pf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 853BC10E734;
 Thu, 19 Feb 2026 18:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771525753; x=1803061753;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=AekJxXHDnKG50vUScXBkz5WxowE2MWo0SV/FzuH+veY=;
 b=XDA/G5pfFQZrMbax/qovOUq4aUinuRC/WHdeEsYdY5SjKjDrzhafai4K
 KS4IWMufv8u0x9KqnfRvaY1q+2KSd2afcge7jIew8WNKxrJxs6ZCb4AQN
 Kb72bDKc/+ks0GUS4uWPlvAr1gu5ru8mC8unFt6LaTCR+bLBJeX/mYK1J
 eP8Bb52fex9rm6tj0EGBD9lXvjaVvOWLJ/0UNtUVoDGwn9Mio6dBnxVoM
 I4848NAcJeZMHj71Bjdbs0DJoSWi4T58aJKi8JzEHT439UK65evJTPVGC
 3Ed9xbU83CBkQzv8QAMAIuHaYPpNQ8WZjvETnA/Ac8CqaxhnXfBC0FnwQ A==;
X-CSE-ConnectionGUID: nPZiTALbQm6buUyr1BHlxQ==
X-CSE-MsgGUID: BCSn5Z95SOGsM+QG7TkHCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="90029958"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="90029958"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:13 -0800
X-CSE-ConnectionGUID: 20du49rkRLG1Qw9hXCtyWA==
X-CSE-MsgGUID: 8vahSrshT7WF1pyHNLfUZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="245196402"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:13 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:11 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 10:29:11 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yTR7TKtH7ZQFqJdAJtX2H6jd55LW7BTTl87wUl6ScUSsXlXxh5ujgvvSbgnZn0KgWFRrEEMpj87ThjCy+13gth/zLHkE0kfq7HzrcFHqJqlyTU2cK7bOce4tykBsXH2I/TEqvWiJxTVGd/uLKjSAhtcXKQVF+CnEvSTsE/6pRcKEiYfLoyOdW1+xqSXbqq6+61EEryCvy2hYK7iTgtFiTRWkhq+WsQzUzp1lxZN6HfGbHhVpPuDp8o/Q6H+V1E4D+nF6dFNIrjRdpCAhtpK5Lhq5oGiEXEWF6e6ECpNqIt07ia7BAL42nfJF9D5xDLSOWFq1Gfwq5+PPhnLRTKClNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nrhxkcyVZnmvzQo2bgAyeQ7u7oPCZWZWzMOafgkMK8I=;
 b=OtWQ5Vipolr3IFzQkimMyiK+s5DgG/2W2Ei+eaGWpCLgRn6kcgQ8vIrS7ew3t6o+Tkx9bPnSn1Y/sk+8sMXdLW9S0RnwdmOKz9BfC6tmEY/2mwpKO4mF3P8zyyMqgoi0BbBj9Vdd9XVjPGu+dhyZLmPfY+iu8x+cebk9POiry/kaI1exSH7lERXSRR0gaRALCLHhy3cu6jF6bTLLiL1xgtYOmHslokDvDb63iAaRk2C4jpDZ2DtDygacAgAOrpNZ7rtv/GkPabaIat5Gp/OTgNjRDFXyvIaHWRS2FFcvtoWAS2u9WSR1R/tbI7gQUVRU+GrarUXGTaUaqVgr2vt0PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Thu, 19 Feb
 2026 18:29:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 18:29:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
 system resume
Date: Thu, 19 Feb 2026 20:28:19 +0200
Message-ID: <20260219182823.926702-2-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 574e9eab-d8cc-47ee-69a8-08de6fe4c365
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?f0/zgKBozrxXHYW1p7DkwFWZSJroG+E2uZIDobL3QN+5X+hWkFIrfO7Q3R+/?=
 =?us-ascii?Q?kcp1xiCGM2aHO19yqhkuazsI5H3wwol/NoVYwGMs3TFQW+8Ep/s8I9gMNNqv?=
 =?us-ascii?Q?2aqyo6LFxAMikSvDzaLtgJmS4LdYE+uhxmL1hW1Zdt3IDEh7wC6rlIsxuo3+?=
 =?us-ascii?Q?RJ3KDYJG1P2e9lddgJ3LW2ZotlzuSC0VesFx4be+qLugru0grIWdLAQZ9AMp?=
 =?us-ascii?Q?FADIhRY/uXiOGLhVDC4vbfk0+L7EMd7dezDCv605rwPogkI/qzCbQndv9xB+?=
 =?us-ascii?Q?PU65r5WdKilmXvf8vx2dEwnr0hizLwxty26ySxRa9Wi7RLjAZk1CIa+MYe+M?=
 =?us-ascii?Q?x90sppb3paSBxpgskcucXbYRUXLPSwMGgNoc+ftJF8hrfIJcYZVwMBwHNJxk?=
 =?us-ascii?Q?KVgIYxXDEkWlH78D0pVZ+2OKXBGiEazlgoSJVLa7DcbxyqpCbxoJB2+0S/Su?=
 =?us-ascii?Q?C14KcmxpqEafHgixNrmQatAVxWS6t1UwdDsqds2kE3I90mi3M54dzrZvxQL6?=
 =?us-ascii?Q?OW9YWet5oIuq/rp1HLJmyw8D/yh4nx3P/j3octeFtmnyuh7Eh6mKlqF4/HNJ?=
 =?us-ascii?Q?QNJZLIhlLzzvfZw6gIbaGcRo3Xs2Ees6Wn9FjLPYFDtj7E+BAwWyxWeHMQjN?=
 =?us-ascii?Q?UaKoJnVHy5jsHQDkXC8extAQov7WmDhYjGhoV9DzZtrf1r2RLHYqtk5sylD9?=
 =?us-ascii?Q?zv877/gn5yXuqjMLqrWrxIzyRnZOdvxNznEr5YjJscwJSPaSXhiPlLZhgh/2?=
 =?us-ascii?Q?srasQMNNNz13auRZbhPS1f+YqEAobHI9lzvmLm1nv01ouuVr43DBVHNO51iM?=
 =?us-ascii?Q?K5JdsY+qwbnYEtT4U5GochTgLykKfLZGpna8Yv+I4qZlZQ993f1OlrAvvLo9?=
 =?us-ascii?Q?mo0QXjoa6VGxPykQXyazIAEY6jlazJrG9nVdJYbQFgerfBVtM14WFt7T+ijw?=
 =?us-ascii?Q?It/RVVt/Lai3UxREpikWgdSJRtAdCGaxg4vIaRbQYA+7af3cFCTddt05Enwn?=
 =?us-ascii?Q?Qa+FxboJExdTDUKFFF6+KBqZAzsEcDoOTCJo7wQ6+sccQU/AqjI/uiruSK+0?=
 =?us-ascii?Q?lKZr3Z0i34ImHjRFaplnFs9kUxJdxNXupiofStpd4QQ42h/A0KiQirSMaDph?=
 =?us-ascii?Q?TC46KCpxmYdM4ygbTC0/NrlCBOQEZwneiK8t8rXYqPXoy5zknXlpvX9/Lwnv?=
 =?us-ascii?Q?mXLNcvZuIYhuMDRG+44m8bohupgqs/4tA6nFzKlDwhGXTcrbZG2JQfABaP83?=
 =?us-ascii?Q?DdC7RWsO+2LVpFYPqjZf8y8+pcY7y9VD3t+1RoL2FEHCh0k8DzeSxC/1QHlW?=
 =?us-ascii?Q?vhkDNYgE7llXHsHfURTrqdutbhLltn/PMLA8qpl2BJK9RW/J7Qlde0dRD2o6?=
 =?us-ascii?Q?0PGaB/zkf8rdtK2qQ7RUuUt15bQFjyDpHvgRcjfbAhhgqHcQiVYRAmKT8Rv7?=
 =?us-ascii?Q?XW45wO5bUlt3ad8X1R2cIWUS0eP+XprDMWjzf4C+tldc5K+gkxshaM/chzFX?=
 =?us-ascii?Q?RFbRIYosTfhtLf0gqfD1jsStAL51IA6OoEnZt5zi//Wi/4XvQL1tuHXRrAME?=
 =?us-ascii?Q?jxdCPYtZ7kUojVt2B60=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lA/w+IXcBMa9yXb8IB+4AHICosQxjBlXptxevgh6ojqTzz2cj65rytkhZW6e?=
 =?us-ascii?Q?dQAJM3wmcZCP7Ajj+3xsW1/+/sesKj/VNxPeATMQZksdVgRnWPNrKz4+QWHL?=
 =?us-ascii?Q?1yvqAXdvTShrUuqV4NUFLHzDZF/Z8nLwq6VV1G+rKbEHw5h4I/wFZJ0YgOWw?=
 =?us-ascii?Q?PvnjHE6Xd8fGWdA//xYLu5ol9BHxHSrRgL+STDXJpVuRkLpXPepcw0cWdjtg?=
 =?us-ascii?Q?y63sEU0C6et86R3UeaPp/DSQM2p1jQHUr7PYyF/5O6mL/DrZQdd9IxDiW2m1?=
 =?us-ascii?Q?msUSiT64PhLnCgjkYg1UrGQcX03XT0f6tjwUXV6N/SiJFaMZkTtOpt3fFpPT?=
 =?us-ascii?Q?ZISTBZhIhWV3n2ykfi4cFRchdUAPOB7WCnQ9bShemN6nvICl2b6v4QuzGlHD?=
 =?us-ascii?Q?AK6sC7SBN89Er0k+l/1S9LaJ6QbgXexapvWCEZwyDyGSPnCyTSEDs4urGqE/?=
 =?us-ascii?Q?/5Hn/nsOLjrxCg5G+3FwO3mVrQZ1Yy5E3r0oLAK9SDqVvRSnN1uWV+fJgJVx?=
 =?us-ascii?Q?3N02UrYYJe31GpNRz/iehcHf2RYJ9df4EeujrNlN3W8C8H8pX55ar2a+R+uu?=
 =?us-ascii?Q?wT54hx9rKoUgCL6YLl2lrf8ECgJYb7siiD3eM70AhjERFpO0zB5S+tlwiEcH?=
 =?us-ascii?Q?jsAbvSw0jBmdfPfLgAsR2bkGloLkCRnya/p95vmMeewiXc6EGNOIbVgtPAYe?=
 =?us-ascii?Q?OIHyEML6f9Y3vQ4ZCMgT/nsxGi87tn7b8WskTqfjoyHRb0pQ+GximNek16F6?=
 =?us-ascii?Q?vXmO+Q3NB03CG8QSfxgO8rQ7xf5/mLxdfNB31sG7H5G8+QgahZDdz4m95g7p?=
 =?us-ascii?Q?Ke3FFje86UqtQ0bEIxcK/633zY7Yq4xl/QQhLI7kujatX/LCIfGgLtzNuOYN?=
 =?us-ascii?Q?SpQFTFY78YxRVqfuhP8hSAlWHbB4CgU4cm38yXdJ4V/1DbOwq1uRuu3jCrTb?=
 =?us-ascii?Q?HMR1/u9n/kRdRgwKM/ocRisS1OXgCJ00zjxE4qaU5GyiKFmu16+5+S2ojFIH?=
 =?us-ascii?Q?g2YN9Vc4+uvG/VZOEtsmM8vLUCAObN28+tyK1S0n1ZG++DONC9sEkvAnv92u?=
 =?us-ascii?Q?M2ZVKLP6EQGlKZ1PIuFZ0GH4N1DF0O8GfrZFqaCrlxhLHkXzMckJ9XwayGGp?=
 =?us-ascii?Q?evXjFZ7nsU8mFj34CMvf4YJ0WijlqNFxDHAtgQ/4h4na630xyyZ0CpDIsv1k?=
 =?us-ascii?Q?6smm+kdeco/ng6KGmMw1E921GKp8MVTxHitbHVdqxcBX+OCButGQrTcBic7L?=
 =?us-ascii?Q?bFS7ugO2cpeusus5CYq7j2aCPasLqiGQgwwBvp+xB9KXY8gZNaC+ENkYnypy?=
 =?us-ascii?Q?oYd/b6YF5mRq1LmRtNHZLFKJP/rVu7MQ4jxZY0ljVgEgLzV2zyoYRQ1Ff09k?=
 =?us-ascii?Q?n57SfCZxRACs3h+s8JRzOPQR299428s4ou/5Y5Zu1zPJGzQsCkWN9T3Sn5OX?=
 =?us-ascii?Q?6BHwe5WmRAfuJZJ84i+Rpk5upg6B5SFIyMYpyJo8ABl5codFZKNvOQxc3Kgw?=
 =?us-ascii?Q?Kt7yuQHRuH2a4L9COiLhUUyBWVVzp/9fE79CNtZp76gbncCjLdGz2PQ2ME4E?=
 =?us-ascii?Q?lVWvBrR+2nnTBxOwphPqIdZaHMUFbRz0c6DpJ3z9dT0vNQ1gXpBvuy1ZZhoB?=
 =?us-ascii?Q?pQC0SW21nKzADnkMLTskrB2FOB5Qxt6mnPzkq8h5pDj3JECa9QFAhmQhmChu?=
 =?us-ascii?Q?a27fUN02H/h3X8pA4KIh0jZLQDs02syKbgOCT1WGo7UxTPpFOkqZ6pbo576f?=
 =?us-ascii?Q?hobcW+/j8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 574e9eab-d8cc-47ee-69a8-08de6fe4c365
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 18:29:05.5316 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QLSe4qo9flxG2lC1IGo5f4sbFQEKXn/XyXsh0xsxLOZojQcjFwbtcScLzn/6DgmT/b64x0ScsoWsgkKSJBaRtA==
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
X-Rspamd-Queue-Id: 42EE7161AD0
X-Rspamd-Action: no action

During system resume, restoring the pre-suspend display state must not
fail. This requires preserving the sink capabilities from before
suspend, including the available link bandwidth.

If these capabilities are not preserved, the restore modeset may fail,
either due to a missing sink capability or insufficient link bandwidth
for the restored mode.

When the sink is connected through a DP tunnel, prevent such capability
changes by skipping tunnel state updates during resume. This also avoids
updating the sink state via the tunnel while it is being resumed.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index faa2b7a46699d..eb1eed1c8c7bb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -150,11 +150,9 @@ static int allocate_initial_tunnel_bw_for_pipes(struct intel_dp *intel_dp, u8 pi
 			    drm_dp_tunnel_name(intel_dp->tunnel),
 			    encoder->base.base.id, encoder->base.name,
 			    ERR_PTR(err));
-
-		return err;
 	}
 
-	return update_tunnel_state(intel_dp);
+	return err;
 }
 
 static int allocate_initial_tunnel_bw(struct intel_dp *intel_dp,
@@ -200,10 +198,13 @@ static int detect_new_tunnel(struct intel_dp *intel_dp, struct drm_modeset_acqui
 	}
 
 	ret = allocate_initial_tunnel_bw(intel_dp, ctx);
-	if (ret < 0)
+	if (ret < 0) {
 		intel_dp_tunnel_destroy(intel_dp);
 
-	return ret;
+		return ret;
+	}
+
+	return update_tunnel_state(intel_dp);
 }
 
 /**
-- 
2.49.1

