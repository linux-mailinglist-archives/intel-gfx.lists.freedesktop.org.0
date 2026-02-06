Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KjbGc3FhWnAGAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 11:43:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C79FCBF0
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 11:43:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C6110E70A;
	Fri,  6 Feb 2026 10:43:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SGZINuYC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7450010E6F6;
 Fri,  6 Feb 2026 10:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770374602; x=1801910602;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ygwrQHCGUySpXVcGSTKANDVraMmXdiPT60QEejeAXmg=;
 b=SGZINuYCatpS3+VeeLhBoR66UV5t0CJPP7zQxnMhp6mk/de7OOZ1R6Y6
 Z2cziATcL9PSb4aw5eJy1E1QOHa1U8nAuygvW7eT0sZqdGRX+ok5oZqKh
 FGcHeSaUS8Q8mHmnT5QGLcE10f9ptE4olBsn2ES96UiA4dzjNSbY40qjE
 nLKpZ15LJh5Ouj5kmuKRKgDSCFTGLH9zu6rb4quQ45R3zeezjhayY2m6D
 ESXdxFny3mJRxA7kISEtTF6VFjAJ+NAxs4q9c0FniKee+5h64bZZAOsWX
 8z4b4+buYURQxeyLa92d+LDRk6Eson+3JwsVIk4S+o3w0VdrYNDwB5As8 w==;
X-CSE-ConnectionGUID: FUI9ue2eS/+hAZpFt6hLIA==
X-CSE-MsgGUID: +uF0pU3SRCivgP6lNPfiUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="75435773"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="75435773"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 02:43:21 -0800
X-CSE-ConnectionGUID: R7HVHX/uRY23sUZXi70e3A==
X-CSE-MsgGUID: AbhPNwMxTpeoGnO9TctvcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210662366"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 02:43:21 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 02:43:20 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 02:43:20 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 02:43:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wrEGYvdeivXLRExpO+9MY7S97vDauC4E/xhiSuUoU8l/rOBrgWm08XvFkcGs1FTp8gadA5lO/qLFaQoaWVFqDDMW0RvWjVYWstlWb4VmIlDWTbExYqTXYcPlt3P9ohCn8NtY9KQfGw/8UGiJF4eakPQcXfWyt7oln8HguepgBoANt5voeChC8gOGvvAYXaCUNQ1DoxmBdyaY/MC6n1GC049y0VfHqgFW5VZDerh8ZOPW0zMfwP7lhaa1UVQ3k6HlFluJIf2PB+LUMiyz5fic001Z5Vk3BMKjt8WuGfLy2Ufi4fqXbRESwmIrSnQyTR6BYJLaZcYgVO6gN2pfAoYIHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DelsvYHBEy0VM16HennwGxkb+ZYbYepVDE8iJm2ZyrU=;
 b=biMdfXw9jo1mHS6rfumt395hcgheGNznLKH2bb4+lA4ziW+WNRquQpobhLY6BAPfBSdj6G8t/B98LFA9Um5dRDxTMqnn2fMUd5H035ZO7IVkdl5F0xjx144OflDC7pBEUQknjw/Kx7aj2GiZU680JPKPJegjp/cUSRzVfxWMSxZ2DQUfihauk7zcLRIdMsYRkS4+KL7y4BBNnmxu+MXwbUOKe/hqyM9NenA6rvBA1QtA/iJj8wyI8IgIQE6OVcpXK2rwK9SONi9Kq88Fm/sg6bwtT9gzM8PeE+en22H4wrGFCS5MK0ZIIjTUckene0ASawerpM/Lp5lnykQD38YeDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5053.namprd11.prod.outlook.com (2603:10b6:a03:2af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Fri, 6 Feb
 2026 10:43:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 10:43:19 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 2/2] drm/i915/dp: Verify valid pipe BPP range
Date: Fri, 6 Feb 2026 12:42:27 +0200
Message-ID: <20260206104227.290231-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260206104227.290231-1-imre.deak@intel.com>
References: <20260206104227.290231-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3P280CA0053.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5053:EE_
X-MS-Office365-Filtering-Correlation-Id: b3151d53-1c12-4f71-e648-08de656c8a99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rO8XjNRbG6HrdguZ7nP247k9SvZjYPnT1mvh+kNvELTqsHL5NNFYR/46b4Bl?=
 =?us-ascii?Q?Ih3eEp4+6GkMw5jG6/7aV3bTOFetKRKLtMucq4AVMJp5LD5V0RWD7mBYGGIa?=
 =?us-ascii?Q?KSynFIPMRC+YNF87aBMTsE9zTtqBlDNT+BZpn8cDlYcQg6mnhQQ5YvSH1Ino?=
 =?us-ascii?Q?RfME9zjQaDj6OcRUFMum0LUKYXnKGPQ5ehn5CHfAIQ0mY5x5KwwG5h+fOB1P?=
 =?us-ascii?Q?lgKhYAEVtvuG+J18jjvDl2mq5zDdxOnvFgJGOGpKBdebALikbWabM8BNEIPZ?=
 =?us-ascii?Q?ej7qX3c474iW3YmSdHzr++IzbsSTwxY8s8Vr/8B8nDS6xKgSRTDgtIDYozit?=
 =?us-ascii?Q?dE/aSFYZcLNsIG9nbH06OXMUQS5o/GzDmUe8f3vzzcHGrcmUquNH0BQPlcPf?=
 =?us-ascii?Q?q3IZ/WIY/c5jeLXXpgUYseu4PXmncDduNFJsueXqpja37RY5n7YzgBogmra3?=
 =?us-ascii?Q?vNwprcDh67kSAiDTGr13kKhP7Y747B6YFDQlu2bHS7wVDPKWJhbjwIvpKkic?=
 =?us-ascii?Q?Dqyn/IMINmhuA+bFv/GpaZopNTq1fhdrmhj+ZvSwJLGuSqoT1kRMsuYFsbAi?=
 =?us-ascii?Q?imgNBj44Igp+8kFN6JCWEXEl727gQdsWgbyF/LbKrKWfUi+oOv/eJE9EacSE?=
 =?us-ascii?Q?LuirUMgXdf+O2kURKSmekrUP0OG61zoTTQq7lWxksH3QtI19TCStscFQ7jG8?=
 =?us-ascii?Q?RtR9fLeHcWY9wx/Wm3EswwHuCq9Xs45sKYjPCHd0nnvuTiid5RgMuaTJL8l3?=
 =?us-ascii?Q?YOTA15ooGu52bNeRMagOq16vn5h48y/8u6yuX9FyTLQ2KNgqRQOMI+0xgCDx?=
 =?us-ascii?Q?CGIEvMCXIWNZSvl9HWNsezqoPrcR8o27rLV18xaAGd0xQ4sC28nOpda1vxny?=
 =?us-ascii?Q?LcWFrGJOHHST2sYfzd+gXAlOijIACqNjNLFsCc/5bX9cZQ7l09Aczd/rnqfK?=
 =?us-ascii?Q?pxDQqMfMpGizOxR9qJvWGCByoTUCoX9lZFaEdWho4lvNaoOpN8nc38sBTsYi?=
 =?us-ascii?Q?T7s7Z58y9i5kiuXyeG+Yr1SyUoilngnZ6CVbVhybs/O9zh3CY+xcHLFSZKXu?=
 =?us-ascii?Q?6jlLUZyteAjW3hgUuI2NxAnleXyctzeKeE4BQ/qV7ft8WLOIG3wmXUn7FjY8?=
 =?us-ascii?Q?WS3mDFJWDlThbL3xf16EPWQrZVzh9zJDOD3RPrLyh2JHN6tjhOxv14ukcMfu?=
 =?us-ascii?Q?xTUmcgESRrSOMCCHVcaw9B+Cb5R3a4DO4T854T7+GcfIUeFpHVW4tMW0NksT?=
 =?us-ascii?Q?nwxuivNDw3bFSOjO/wEzpgWbTW/ct4EE/rbqAhIOmA7xPXf113wUrKCyww0x?=
 =?us-ascii?Q?C+zNufKdbl/jKeKZ3iPR++/Gg5dADixVbUU1QKvhULmqJhanemp+BIdHx3ju?=
 =?us-ascii?Q?qMTTagRaRkY+yDhhMyEkAZY/3KH67j1weAef0zHnsJW6pPzOvbc+asE0rMcI?=
 =?us-ascii?Q?j9zLqv4xda1fVuugroXTHhch5o9JlzskqgXuSLVT/MrXToAg4YSXHXf4rLIf?=
 =?us-ascii?Q?FEvX3fu3SxJKFUwQ7grOaVB4VHk4GkWEH5324goQaymyZ+jmNxUIlx+TNFUO?=
 =?us-ascii?Q?WH9Gd5WShlL7kkcEY3Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?trm2je88jyGZ9a69ecOwciAUUDTggXWGUCzbhzJZ97K9ZduUa91DUJCMMML+?=
 =?us-ascii?Q?O9gsbjBuEvaW3GBDamNBzGA0tCnQBppVDru8k73clQ9gFA9hdhslwDBDAXXH?=
 =?us-ascii?Q?kmSZtZh8nSEkHX5dwcyMjPpwPNlTazHTtKuf2fXuwyL0Uz07AzWOXiaKRk43?=
 =?us-ascii?Q?espwg9g97y64MEk6/2C+EMyDAem/le/zxPMG0jkhbtXOH0QcPPPiG1V2DfXX?=
 =?us-ascii?Q?lSgalKAzvdnn8Xt7W/av8T6mzDQzjTsN0/0IL681GC0IP4pyqiXpePkRwsf6?=
 =?us-ascii?Q?BIBOgn3y5xECfPtLa5ChuOrtaVtZb9snBtMranexEIU1b+yBbrvGAhQBLkky?=
 =?us-ascii?Q?11hT0DVS9BFOqf+lXXj0qizHEWlmoyEYNiPHheGkQMqWqB1guBIEwf/YDbBz?=
 =?us-ascii?Q?Y2mnehls2XQi3CiBshAX9PAap+eymFxfBdLiyAWmAeivbCigSWCrdOxrpjlT?=
 =?us-ascii?Q?ZKCL1G0Z4i+Q1tBF1eLv8pGYyHZrEgrSgvm4pGV087suzUwyZPBcQeA9g5PT?=
 =?us-ascii?Q?N2uYOiybsQ4o7R1E+etEzL6+zc39tOMF5xbSQKO5GAj+HPHa7WU6WigkvqX6?=
 =?us-ascii?Q?TP0O2IpYBq9R8agOI10kvxg8oMmTfUdr4UGRkM5s0oGZsHCzy6J7cQKQSCRU?=
 =?us-ascii?Q?6errWlyKqBbEy32csYS8/M5epmQHDWtp2ZHJ8pJrwBpmYtRYNHptTrICCIgL?=
 =?us-ascii?Q?O9oo2djteZdE6lPx/6EUBl8ORwp9tCL2pqB7oRidpWZPO13wTRlpMa2KSOBJ?=
 =?us-ascii?Q?EboI+PFG3SMsorYWUln4HaHdAbp8sIAYBxWJhs0NIcnJYsfwS37QVBIQ3Qxy?=
 =?us-ascii?Q?NtESaq2/IMTa1JtnzvRGmU4Sj93vfEk8Cim8qva2c0EkUVCL5mWutJwceZUf?=
 =?us-ascii?Q?+zb3NDjd8nh1JlKVlAARHtw/bcDSJnJx0E7Yce90qGQopRzYiJUeiKpwP3/j?=
 =?us-ascii?Q?cuAC6Dl55fALbBFpIausnPl9h3Zg5WvJhAO57aqlLeBuBTGyQ8enNGiUk5nK?=
 =?us-ascii?Q?yzOD3zJWvbMlbTaK3F+LhMufOgI81johUS25jrG+22SviZJmTll2JsR/2fpf?=
 =?us-ascii?Q?Nk5mAFkHsoiiufrBdv4L+JmJn9v3Ne47m4f5GVY2GqCa+VNRPJZEo70bhzIj?=
 =?us-ascii?Q?WNt6Ag/xCCfF+SumamSkPjdNhYKFRIkxEV94dTnZmpKrTxxKunMgJCMj/J97?=
 =?us-ascii?Q?H8r5Td1Zn/tqmXb8wA1RgQzc56nUp28UfcEVG/Kg+WIrHaAUB8TBWkGakZwC?=
 =?us-ascii?Q?vZ7VjyKs0U5aZIpiuSr/nhGbKp3Zqg3kC2SWrAegTET+ITCxlEJ55CrLCLwl?=
 =?us-ascii?Q?G9fsnFyjAw7LQa6tv+h6EAfGgxEZrCRnLCbphFdv3ZXaULGurBMBaIfI1BwF?=
 =?us-ascii?Q?SH+t8ujQU2Fsn7H9EbZ88UTdz/xinE1PLyle0RKwUmq1wRvcmc7iZcchb/G2?=
 =?us-ascii?Q?JSz1NDhPI7W/saiX5cUWZEdR3n1q/ofvBy7gvfc6b/qjbEB5IagxKWDeZA4E?=
 =?us-ascii?Q?gnGgcf5m3+dsa4LtSsMDBgeJBguPYYcNEFo54+SiK41y+AkY0xIu4ojbbI9Q?=
 =?us-ascii?Q?TbhwdnUXwCCuh5CYVeBxBWoT39O9+kMSSRF7+Vy8k0UvWIQ+z6YgoK+R0vyE?=
 =?us-ascii?Q?WXGk9C83ovSeltG5NSAH47lUcCbjlqbO42EJpva5VrphIMrc4DskJXqR0gwo?=
 =?us-ascii?Q?vVNoZyyrWrR5UFz9u08uEIEbrV3051OWCnlDj+p74qr3g8qigMoa1FVVFH4/?=
 =?us-ascii?Q?8iD3xH/cAg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3151d53-1c12-4f71-e648-08de656c8a99
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 10:43:19.2162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CcdN3gjTRV+KYkaONhGpTVzpdm8RDw2wkTFrJJeKT5pOPiJpOQnyWc896jT6J0qLNWWFPliM7eizrsa0Zn78Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5053
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F2C79FCBF0
X-Rspamd-Action: no action

Ensure that the pipe BPP range is valid after calculating the minimum
and maximum pipe BPP values separately.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4d8f480cf803f..720787e86ff17 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2736,6 +2736,15 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 				    limits->pipe.min_bpp, limits->pipe.max_bpp);
 	}
 
+	if (limits->pipe.min_bpp <= 0 ||
+	    limits->pipe.min_bpp > limits->pipe.max_bpp) {
+		drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] Invalid pipe bpp range: %d-%d\n",
+			    connector->base.base.id, connector->base.name,
+			    limits->pipe.min_bpp, limits->pipe.max_bpp);
+
+		return false;
+	}
+
 	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
 		return false;
 
-- 
2.49.1

