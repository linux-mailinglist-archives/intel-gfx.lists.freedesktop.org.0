Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CD9eHnlWl2lPxAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AA4161AC9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C64510E732;
	Thu, 19 Feb 2026 18:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I+UKGbdf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D5310E732;
 Thu, 19 Feb 2026 18:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771525750; x=1803061750; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=1EbqrgpJNLnVYOl13iz971Oh9E9vWLu3ckPz+9oQgZk=;
 b=I+UKGbdfmLMNlCYy/rITd3xoGYp0bWekQKQ2xaB1sbYQKUNTGTXle+1O
 ovGSvXoQj7XV99GKFGpga1Mlm0I/wr4BLp4TY/qqUZacZ5SDpez8KmIWn
 w23ewJg0vhuwaSXjd6LNGrFQ8M3eH6bVQRLZ0Pt+RgXDTot9aSAGdyMDg
 MaVLI7NZVDpP/t2t7jm9j8UhfSu3wOJPzyX64LKp2tB4zJLRnej7M+kFV
 xB4Zf82jsvLhG6x8yyInQLZO6yvTwB4qTGaFmcWBob1WiDbB5c7edNLGz
 ZvLhtRBzxYNlWxAb2XPy4XW1g68UFdtSxI6Xus/sWCZARW721da51dFi0 g==;
X-CSE-ConnectionGUID: liICn0X9SOiM4SFl8PSQVQ==
X-CSE-MsgGUID: rlYzzxIxRM6Donc4vc+P6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72529193"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="72529193"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:10 -0800
X-CSE-ConnectionGUID: LUnyJ8qnS0Kzg4+mcvcGmA==
X-CSE-MsgGUID: vOev0EGcTcyIJn0SWeVWzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="214734745"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:10 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:09 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 10:29:09 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.40) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uxfCK/crUv5hv6FyycqYOp446mhqXUIocWU7Cio7m8Eujjh8zIXwfmMIimf/19B//bxwP7wcY68SuwgJmHHr03HDnMpmHv1QCBkGLzh+I4DCiUK66deNeLugHq7Ox9LO51S6SWGcQHAYMFOeuEORI3usNjlLAS/CUJorr/TcM7iTWy04wsz1S2g4SQymF//7ITjDtLXM5zhrKp3h3d49Cn2TiB8AdNS9hEOAD4+MdOjGtfBA290DHYCAos6f9EJEg6xaPvEFmwLebsuAPFTd/ubxwXone1iMxrr7SuymgXxb9p2/hI/XCsOcQ3cqu/DVPzG+TaGEih6tKgYFPvGQQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ZCYbw5VGKguhagsgHY5v3xYN3GP/ZJM2UZbDaWMzgw=;
 b=uoGhUGr+9J8pKs22cyuK6LWj/nEY2v94UGKgHB9wzOa1JouZTKxlFio/enLudeN964SUXOEl+5Wf5XuGVsP7I5ac2F7gJ88jtGEslZ0k04cM1S4vRxal+v4FPYpjUAVXgJEv3PnM/1Th3ajgRCzUy9m7T1qZtDi//cySqazlk+tiYOE9vODtPTdMXRCSOHadLt0lT+fHj2wZ+WxH1e2CmsPbRqIf04UDAew19Ezm8mTP90kXCHnK5ZOjKTXxCiFVHn4oLCIjBnvn/BcDu0O1EMyqBQJVToTZRkccev4yahljtYgcJ+vPVByjmliPbIAEG0BKeHxDA2XCK8YEdW3OzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Thu, 19 Feb
 2026 18:29:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 18:29:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 0/5] drm/i915/dp_tunnel: Preparation for UHBR DP tunnels
Date: Thu, 19 Feb 2026 20:28:18 +0200
Message-ID: <20260219182823.926702-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
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
X-MS-Office365-Filtering-Correlation-Id: b7e539d2-e165-4f6c-e01c-08de6fe4c2aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mpyz9liRe3Yze2yx0pEjT2DY33cIDhXzCDKTvdZGYYH/M/yBaaa7bsrBidNY?=
 =?us-ascii?Q?sMYWZNT83HfkM8hiD9XUGaGfHtBxKlkQMy7uJYaSw6QSc9nMTG8tqDUa/ZTv?=
 =?us-ascii?Q?892yBfOpfSBeOuE4J4NrR4QTYaWOZ4KSAWcBgnGJ3O/hgwp11xCqSvYA1WYF?=
 =?us-ascii?Q?c/X6Kg0HbvH2Ahlv92fOQ1yDySLBQ3p4Mu8moVlFPGaSk0ZrzgSO/7YGQGwy?=
 =?us-ascii?Q?tpCgOyi+oNb3UUpjjDS04s8eMiftQ5K6UGh9XU4Fvi7QIPOcBttd/0mi9w6J?=
 =?us-ascii?Q?gS7j2bISfyszn7znidWIyZ382BT0/+haSyiDtUKwJDOwAJUsB8cxg+lQtj4K?=
 =?us-ascii?Q?T+oh26DPrzky28sJ5QefIpISOcqPY+4HO9E9Q/yyiGY5Q8NAOXbygEZvVFbW?=
 =?us-ascii?Q?7DehWdNFFII8Eb6wwTE5VPvWyYN5QiEWeUZZl8VZM2Q87rTTrCATj6nUyhOU?=
 =?us-ascii?Q?p7j+xLA62q/8EV1FdB8Z7eL8zYLMJQcSRbOjB1/WECR7Bz+wNihepYp3kaf3?=
 =?us-ascii?Q?Iq0MDe5rxePEL6J0KrzBF0rexh0NKUuh/uysubZnDM31RbAP6FyLp4iKqEtr?=
 =?us-ascii?Q?Ad1+peqsVwTp4/qFUfDNBwwuo4EI4CUeeNYRGj4Ju04fD2S95Tvs5ma+qvD2?=
 =?us-ascii?Q?zbdzi4j3VxTn1+Y1h5hfNE/3UyaLChsQaB1iWtnh9VlpCRNoZ+sQKHBhYpCu?=
 =?us-ascii?Q?L3uY8cJS9c1cNyFcH62LtQ02zoDKdMyTw/PQ/6r+YfuLarAohWuY+OKvJdDz?=
 =?us-ascii?Q?9Q99FBrBaHxuHhCLefUg7ERCwc5C5jmdM1NU/Mbszlm5K5GXJveZYZep9RJM?=
 =?us-ascii?Q?xfmCcusqMwc5xJMxMb8EgiPNn1gAWIzxE6MQImTptCKIqezaIpmLuGPvztcK?=
 =?us-ascii?Q?YeUT/J3pNZWoQPBSFdh6a8oR1KgFOWCru47BVbre18ODWol3g2dodiolze+l?=
 =?us-ascii?Q?tYd0q9rr1I9UI2/pPmgjCX3Q5tkc94SMH7tcSRwE9UoEWhMC0MoSIClqH8P9?=
 =?us-ascii?Q?QDd7J2qouIbFC3GIgh5Ju32GeYHfn0K8f2el0qFYsxcO8mmpHG9s7qK00lji?=
 =?us-ascii?Q?v348qwi0rj2GjhYyESUcbcSwBhNlIizXBCB1nLGW26KE8mRpzNiIyvNRiOXq?=
 =?us-ascii?Q?bUl6dAovaABAR9LJP1lX8+uiDqOX+kUa2FU3OW2fUOJooxk84pYYvHe5g9VA?=
 =?us-ascii?Q?ILEJrZOIy0lbdnmEDOHuDhGskrqrg3goxvQbOJPr/3gnIcoGg6+WyfB2NPkr?=
 =?us-ascii?Q?8HmS9NuLyn10A7vej4SJCp21rgWWaZdkhYQBY6geVIpyPrWhCfg6pzsTGKH3?=
 =?us-ascii?Q?3zqVeIo/9p+a4Ng2gyS1h1ahAR9VcmUKuvAd2hkJNzqpi7wSmcg10AvR9jIt?=
 =?us-ascii?Q?mkqkyE8n8W+8iygUqOidRRlMzY2u8wXHxxsLCVNE/emR37X+J93ZEflUL4Rg?=
 =?us-ascii?Q?SdaE/QakqBd1L8HI8+wqLZMfJTfWjSLtLNL3XTs8ESvh2FZns82fkSNKAWJ6?=
 =?us-ascii?Q?PgNKxTj1rth3pgQZaKDtQML+Zt8cxaEq/GGuVLm+4iyKpVI03/RqeAycc/XP?=
 =?us-ascii?Q?OTPEFbjXQSAWthgA72I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iRdZeXF31KkYqTfJIo+xKuzu0xh9Ux5QDMK2VoFP7bx3X/2YEtbXPxeyAWQI?=
 =?us-ascii?Q?pU+hQTBnghSJQNLY2XDh/VkExzEkMUDHvFmsrHeD9qlVLbGYdY0LYQJ+zoWD?=
 =?us-ascii?Q?3EWQyhHKWoRJXlLv/yEVGHhE/m27idqEdtzjCJBooOMAD6Sna+jljRrI+Llc?=
 =?us-ascii?Q?iVvW1Q4ofgPxvt465+TljQZwTZaOXMYn2GttofFwd4b4qruRlx1dGeNi5mbW?=
 =?us-ascii?Q?qOfZXrJSWwAU5isYvWgA4CMF7q6YneWr8+mUu7q0kerArd5ZUy2EJ6WIjcY9?=
 =?us-ascii?Q?617kBE44fPAi7UpUi8kcdFj/bRqeBB/n0wBOpTIukd2DkM7o8C4A85k5aNP5?=
 =?us-ascii?Q?Wm6IqN2nQgOKjug8fDrsOnJgMNLFaGqCqbG6MD/0aaKg3jBVJxZ8roTLZUsm?=
 =?us-ascii?Q?hNqSh1wa2M3EPkEVI5DjoTkFeG6Z8NheKkJAEpKQnaCbNr9s219jzESqXfYG?=
 =?us-ascii?Q?PSIC3sfkLUG9Fvkng6kUSB5fDb1EeoAFvLgRUxa1AhuvSTlqJ/Q87hgFn4ma?=
 =?us-ascii?Q?2efrfX3SqlzYTIbN+pUsxEHoX3eRrpVexP1mUgaFWP1Dlx0Xpxj9k3QQbLhU?=
 =?us-ascii?Q?DuICFHiiDcWhsjE+9yE6hiloqmi5wnq2rvLJtE4R/XEDQEvf+eA1LYJLAhO9?=
 =?us-ascii?Q?sotdmljzb0xADyWrfKpgn0vHHuYp9I8PLnDBB6m4MPTlTvlKUPB0YFiFruy8?=
 =?us-ascii?Q?cEpLOx3F7us7KZh5pvt8+jHMIDgr2xZPvPiCYc1y4SGgvQGYwLjol/t87YN7?=
 =?us-ascii?Q?0N3uyKHsdLgscw8Api1CaUVg18B1VQ/Ct4atqStCgz5156OnzwVPpgfz2aFa?=
 =?us-ascii?Q?pSyqDvG0Oh/SiT86W51qwbdx2h/m7C9ducM77FTnuk5JTtXtjd1jDjuQhbaS?=
 =?us-ascii?Q?NgkNmedy3s2C4eBDjdNHtMFjn6Ru4jYBsyGO2j42+SdAM+LhBCC4CDZY2y5y?=
 =?us-ascii?Q?xktKSqQHPGvDlgTTVkMArwZ5qL32DPwD6pF226+G8GRBujT4EjnmGpWRELS0?=
 =?us-ascii?Q?njTInyVlBHUN0x5yF+XpBpxbM5KFwVuJmcLwEYSz+zNx+5tUpkRAgMg2HF+P?=
 =?us-ascii?Q?QMzyMElnia0EGagxJqdEL3pgcEFviGnDQNup9QZVsQodo/6GPRp4Bu0iQDhF?=
 =?us-ascii?Q?DgJ2DEVFVCjYzDAV/l8mzfnGnbexQEw0UKdRoKb/JhYHxkudcrY86kqzsjNl?=
 =?us-ascii?Q?opgqloyjBL4x1WOMyL3tM1mA5L1U6rTIcv2xaayfp6ZRBdq9hvcyQ90IXFMB?=
 =?us-ascii?Q?BnX1NOv/KbDWikr23UNKj539ww6L4M/x43lDi3w8x+I/qvQQU3YmHWvH5ku1?=
 =?us-ascii?Q?LqKLGsf5RTmL7qKWoyQTHfGSyAxxS0eZec45lm+JRI1jklJ2YvOFo8HVLWRn?=
 =?us-ascii?Q?mAgHr/8O2ifnMyMyw9MKdYAlYjijAf8LYb/iPhEcUvElZoyJQltmrG5jLBJ7?=
 =?us-ascii?Q?OrS9hdJ2NHxOad87uvS/SRQw/19R9g0IFEQOtja/thLXQkp4aYYx0McS9y12?=
 =?us-ascii?Q?7Y8hE5rpp4j/Hx4yD0z+J+6Zh0fDo3D7xy2VRmLRt0obyRwnSMsEGvj6VCE+?=
 =?us-ascii?Q?FF4p5NY2zdnEEHoOhq2mxs1bDYHoaIRS1R6K/KfGkgogVDMdIDmxOeZvCkoh?=
 =?us-ascii?Q?FHwPb9LD7KdChzz/pP89kqtdDSykfmEARscDPj+v3G2pAaed+AHjZ20+I9Zv?=
 =?us-ascii?Q?0WKcxZ0RyfbsSlZmvHnPzg9iWCjzUL1qUd8Nn79f/YT0dWAjNoblBVeddOyf?=
 =?us-ascii?Q?qOsGzFV5qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7e539d2-e165-4f6c-e01c-08de6fe4c2aa
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 18:29:04.5195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3xIkwm2iwnAC/LFtQjqxRAaTLsQpYADEFZrhx8XWPifCMb6deed5+a/sKDXFHR83W5c9ndFrij51tbTd36Wf8Q==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E3AA4161AC9
X-Rspamd-Action: no action

This patchset prepares the DP tunnel handling for upcoming UHBR DP
tunnel support by ensuring that a bandwidth change notification is
sent when a DP tunnel is created.

Imre Deak (5):
  drm/i915/dp_tunnel: Don't update tunnel state during system resume
  drm/i915/dp_tunnel: Simplify detection of link BW change
  drm/i915/dp_tunnel: Split update_tunnel_state()
  drm/i915/dp_tunnel: Sanitize documentation of intel_dp_tunnel_detect()
  drm/i915/dp_tunnel: Send BW change notification after tunnel creation

 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 96 +++++++++++++------
 1 file changed, 67 insertions(+), 29 deletions(-)

-- 
2.49.1

