Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZvW6KJ6tMWo4pAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB7B69519B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bEYQEZFy;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD3610ED55;
	Tue, 16 Jun 2026 20:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A07B10ED41;
 Tue, 16 Jun 2026 20:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640602; x=1813176602;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=gG9v37RocP+czAabOpSyLQqq6kOQz7fwmu5U+OgAAWc=;
 b=bEYQEZFyxyGWfJbjTImSM+ksLhQf+zTmNYczL2NeD5VjANXPqhX7G4i8
 zrIlN5NxFFavZKkdlJXpgJiA2xMwzYLeM+lSQlnhk4eNH4w6pn7L0ueCQ
 iyVAzRNM5Dc1zUHbinPRVESpkMTPVNmHBAiWy+97p4TxhIjwoRhEYP9on
 vu6bR3WtXLc5oBoyBMhAUpV738edrGGbQPRe8Pv36RFQBUuT4hSJfjuCm
 wAF5IDuLCgGZE7K2h2tsIcaEbPWtKzM5z7U4JNpCARVnmInCG5p5LkEyM
 86Q9N6RVTp96HwTYMChGe9Ngfn2osxxmrHLca3OsotIWx7xyvvzaLEzFX w==;
X-CSE-ConnectionGUID: UHl6knsUSTeUnLSNLuzG7w==
X-CSE-MsgGUID: qA4nrsHFSIWHj0aMPq5PVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93913257"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93913257"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:10:01 -0700
X-CSE-ConnectionGUID: 1sl4D6QkQOuFqxEJ7K3jzg==
X-CSE-MsgGUID: 1JDrGyezSVOWcUwq9udlEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="243711605"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:10:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:10:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:10:00 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:10:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z3XnJeLoxtzGF/z4MNjrgpfmgexzbgnnakS6wenPl8woKefaxDU63dcTHAwApTqmNFrYkn/jTwyRvIA6WWcVA/3IjQ+3AjVBnaIFi+FIFVStSyuENVElYdjS0d4v0dE7Xsy//rfQ6YTRBtinnTK4w6SX5nHm2dLtArTTHMGkTqBRxj0PG03wYVSDcd4mkPVC/2kyS33limkptS3OATLPuf06/J9A5A+AMfqQ33z0y+gmTbR/DOpyyRfm/8iWM8xai40hip6mlmFrelITZ7Zpydt8UOdETu2714P5eBo+jc1HmZxmO8G0sr/Fvj0q/mC8qL1zXTryaYWrZpvNzz5WEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6/jTSUWqRVSMdx82rgPfVecQLP3ZpDpUB5i1nXpo3lY=;
 b=RAeaAKUHP21hIaAzjAwhV+SfebMnaNUfmEok3vtw+QLQYl7kzGG9kdwMsC4jXdBzUF/31mY8CWexBJho3YMqPHGu5Z5BaQkX58yI0aDpLSIE+ZJKI5QPHFrswc+B0m2RtovI2iszBlzXJwRPSgSlL6eB+4oivE16nIfehp8dxxJia9+nexlfkJ7Ecxw0kcr8xH6SlpLr4qxeoJu1cJBUgeW1ku5wUSExbAwELQF7h87GgzZZtNuTmdcaCSLo5jKjyrH48mLAk1TV1nW2EURDVIW7H0XFus4RA6Hv2aJ1DSobC2ZBM6EzsIC79U+YxnP4xtOUJW+hUaRa8/3FLNcvlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:53 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:53 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 27/28] drm/i915/dp_link_caps: Pass link_caps to config
 update/lookup helpers
Date: Tue, 16 Jun 2026 23:08:47 +0300
Message-ID: <20260616200849.3534628-28-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH3PPFE994B740C:EE_
X-MS-Office365-Filtering-Correlation-Id: cba8fe77-33ee-48e2-5bc2-08decbe33a6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: cFUJMLgHx+NDGdWyt2TuzoBpQ0aPYgXPW9M449KumJLsjKtHEaq8c1PseIQjhuahUIkx9SOEnr/dPyqHTkITqUkKgBnz1+eLiZLSSW9frf5HMEk2xz2AgVetvNnTtqXHuOTZK1CVD2mmaCh+KAzQsYQQTq2zsYIUSkdBtWEjYSQn1o41uzxxokUrEUDOv/Yc3PFS/BJsJ7QFzqB8x5YEX1Ai3pBDZ2I1SN8GEaX9fJW7SkJ8abNnocNrBSuxGXq6GrbRgGZxKopnWBNYc6uxj7CKgDJq6XkLXshqwVbcmYCcXFJxBk3Lo+rND9AMxuNzz0giqahCyWR8Tg/VOJtG1V3GD3ZBM8svnFfyhpuqwsasxcV8E4YJc4Q4wg0XVNiSUkiGFA8ZzwH6fkJ3ihGRkvBfgZTFj/rr1BWxzTgJqSSDg4GtrIFLMp+TP0RM5Px/s1cm8BmDbjFbbT8O49Z/JzMfIbmCcAPtehZoHb5z15S6Cz6Ff/H41GTsT6Ul7vKb/Fz1IaLe0nGr9lwgSQvuEZFWZg1qUc2ntg0E0kxMTNS4Phjq+hdLRUz7efz8lR2Mfw7l4ffs66fyFtCyPskuN9mupusM+5g96V2iSnf+/4nNYE3w5KDZRx0XC9SgpmlTH6++3+9kB+Y7ekAsEFTTTzze7eAVMerEaMbhVADa9BTYFvhtw5HuT3uNu4e4cab/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(22082099003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x/WbfIdHZ0WVwft5TDmy2vv1EMzqakKA4hW3kGFaz8QgnHYkNhLe2b5bJ92B?=
 =?us-ascii?Q?3yOCh8tkTVT6TKadG0QCzU2ZH9AO7OwwseHsX9fWz/HnvdUWEGCCdYNgtTQR?=
 =?us-ascii?Q?oFtdU5Ilgfo7NHf2NMPlBd/2oXca72rw9qVt49hfxfGiCICJUj/wNODlvs3G?=
 =?us-ascii?Q?z9PLjC6qhfZg2z3lhLEiX15P+4ynd3E767d4r6r4Hr2vr5f2g5UMtvEPx1Ze?=
 =?us-ascii?Q?ng0qkjZ71zfQiX0fGTjMJIhbSx8WRjRGVl9QWun9Dx/23KiHIxCkfdIWEZfc?=
 =?us-ascii?Q?HGHsgeSvEl2VKqgurjarLQ9001ivA+2pLBHIBL+rAaGn1VHmEvBcSA1yFpQm?=
 =?us-ascii?Q?NN6YW3ozqZq2qStxCCOoSIi2kmqi3GtVhHquNpTn0j/3ZykOO5xEIJmupGhI?=
 =?us-ascii?Q?jkV9A+1C/jDgvyQQ28RcB3da50L4+SGVV/K07p8WZbEMMmhgt6lU818Kqy6b?=
 =?us-ascii?Q?Wg+fjXQS/b3gPGe4iJo8HP1B0++/7P/P6kHUsoh3coQH+2/2jjweu1r1hGRS?=
 =?us-ascii?Q?cTs+xaCpWnbzMHs0iuRye2jUJOTWypT7Mj3GuBlCdUTkHDEnLK5YIj2zLCON?=
 =?us-ascii?Q?csZRaID443OkfW9jtKPdUP5wzixzwYhyadZkHzS8uLAGlJStipDmUuR+/owK?=
 =?us-ascii?Q?r3xCIjb81diY8tNH5Bg1yIAThX5sXpokyWupio2Vzs+3WvgYPsHHRK7Yzorg?=
 =?us-ascii?Q?jgulMKSYNa53Ofo/ulR30JG68///NdWfr5TE5iU6tdo1hRJplYItsh+VVWv6?=
 =?us-ascii?Q?gnGqJT0M4byV/t5x/EjaSY+1NhZMYkvVnAQ6TUudUwCDHwPln1d9hBoom++5?=
 =?us-ascii?Q?N1EObBF8o6IEazZDeg0kt07t3he0PsaB4i57n1Dx3kjnBwIMv/GjwPHldkhm?=
 =?us-ascii?Q?d0blMKWGJwQzyYEgdRjK8wEjrCyiC/jFl9wNl3NsUVpJqfvoNECv32BDI1uy?=
 =?us-ascii?Q?vK9DPS63AAeiGdVhS/AKm7fGDbbMB+E/fAZkmNFfk1ZPXtKbZrhlS04/2FEU?=
 =?us-ascii?Q?Yd/SdI5RW7ou6NSabEiNG8yPRokYRXPtrEX87baSp5KxKcwIJr4dt3LaJ4hK?=
 =?us-ascii?Q?USQY3E9gy4y9j5NHkYmQKVL5kwBzvHKx5WZ7gYmWl4XfGEVp76fcAFQj6BS6?=
 =?us-ascii?Q?CteoiTB6CVOzMB7m/vqPCmyGoL1yKrCgjPlY4RLZ4BV0VpRr/26HX+0FvyD+?=
 =?us-ascii?Q?ttATCqsasWZc5kZoDz8WMUXMfpxsAPb5xjRdhXRD5AnjCjCBeNB2SrS1z39O?=
 =?us-ascii?Q?RKB0i+GxwDd47x3Ru926DX7g8Lk+AnCNpHftpx5lM7IEB3MC5yXDN3nKOajQ?=
 =?us-ascii?Q?edfP72JUQtICxYXNEvJj+Ex6hg2O4TKdbQmWWCjic4cRmSAbb+hgkOWfX1aS?=
 =?us-ascii?Q?njXV40GZJtX0XeIlzQ2xSdwbu7Gy0qab3acs7/OOS9h4n27Jj+WR0Rko259/?=
 =?us-ascii?Q?LXiTMkRgHmTmSVCGLhFYXnQIlvfWfAVM8wjgnmTfy0cXHBtZ9kAwS0dwI+Ys?=
 =?us-ascii?Q?dPYg53ry0Xt6wEd8H6pr2PrFyUDPzkNxCDoY9H/m9T+YGLkWkz8O6ctrsvQu?=
 =?us-ascii?Q?nsvdxNwAEJzJRSDRapuE21Kp2ady0FOygg325/5q1uin7AiCWX38FKI0lOfr?=
 =?us-ascii?Q?E3ijGHAvCoDU8Rx7IZedLSjiDeB5p5GVnV3PXnf32MP9kAEWAaboSvQONZAL?=
 =?us-ascii?Q?m9IjtsaenQFunMNiv0wTG8rsbnXdA7Nh0n6KAuP2s1ZBQMMKZIXx2kWf/qNI?=
 =?us-ascii?Q?OFhzPaZyQg=3D=3D?=
X-Exchange-RoutingPolicyChecked: nDtdNFlAYcdc23cLMyQvN/s17sw/I/3I/sHgHZL6H1yxwS41epEcjqunW1Mh8Ao2lrQp683L2aPHJqVBi/FRYHolbieuqRyKoqCqIQQqwsXcZUoX+1UNmZhc+9RjSX3Iec/tLJogtvRoI+ELqSpMSkYMXAsFJzvm3wCRWnM5BNEimjxAGK9WzLIVHDhZwUMt+W0j41+Z/p1q/cnFCPRaQ9TQpWzOx/zYa14yRPiqdmMO6Fw3sLpuCCstZO+L0ONJKIyUOw3iitgmFAxeVs2lO9fgOkgf3gTaRq8w9bgU3OxDUDfD77OYN29yLQJYsYEtMGbKM+2PFfc2DJBDfv3qHQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: cba8fe77-33ee-48e2-5bc2-08decbe33a6e
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:53.3378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a/8KoLR4iENo7FScJIuoMYriQKUaVNIajOrw9HMBf4vEPpUuS2eCfKwYTW4xLAfM4kWFBdzuhjAfAcmmnsSx+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE994B740C
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
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
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DB7B69519B

Pass the link_caps pointer to the update/lookup helpers in
intel_dp_link_caps.c, as it holds the state with the relevant
information.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c  | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h  |  8 +++++---
 .../gpu/drm/i915/display/intel_dp_link_training.c  |  5 +++--
 4 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b63c6f047f83a..07266f4e6835b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -699,7 +699,7 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 	bool params_changed = false;
 
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
-	if (intel_dp_link_caps_update(intel_dp,
+	if (intel_dp_link_caps_update(intel_dp->link.caps,
 				      common_rates, num_common_rates,
 				      intel_dp_get_max_common_lane_count(intel_dp)))
 		params_changed = true;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index fc1061149ef2e..c5701f02fbf69 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -266,10 +266,10 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 }
 
 /* Return %true if the supported link parameters have changed. */
-bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 			       const int *rates, int num_rates, int max_lane_count)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config_entry *lc;
 	bool link_params_changed = false;
@@ -322,10 +322,10 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	return link_params_changed;
 }
 
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
+void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
+			      int idx, int *link_rate, int *lane_count)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(link_caps->dp);
 	const struct intel_dp_link_config_entry *lc;
 
 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
@@ -337,9 +337,9 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 	*lane_count = intel_dp_link_config_lane_count(lc);
 }
 
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
+int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
+			       int link_rate, int lane_count)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate_idx = intel_dp_rate_index(link_caps->rates, link_caps->num_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index fa45a46723059..9256f02fed11e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -24,8 +24,10 @@ void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
+int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
+			       int link_rate, int lane_count);
+void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
+			      int idx, int *link_rate, int *lane_count);
 
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
@@ -33,7 +35,7 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 				       const struct intel_dp_link_config *max_link_limits);
 void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
-bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 			       const int *rates, int num_rates, int max_lane_count);
 void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9d9911ebad439..0d4a0bf1dac53 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1858,9 +1858,10 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
-	i = intel_dp_link_config_index(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
+	i = intel_dp_link_config_index(intel_dp->link.caps,
+				       crtc_state->port_clock, crtc_state->lane_count);
 	for (i--; i >= 0; i--) {
-		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
+		intel_dp_link_config_get(intel_dp->link.caps, i, &link_rate, &lane_count);
 
 		if ((forced_params.rate &&
 		     forced_params.rate != link_rate) ||
-- 
2.49.1

