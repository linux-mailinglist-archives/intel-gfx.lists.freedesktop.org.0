Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMTzI0Su8GkRXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D67D485583
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F9410EC8A;
	Tue, 28 Apr 2026 12:55:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CASIFJwi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1D310EC81;
 Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380925; x=1808916925;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=HtBTWOKL0MW+AZBd3PHdHWfaFXHnlbInuz6uJb5xBvY=;
 b=CASIFJwiWO2y/k4c1B3G9XUEazH+WzdtnywC4TAZ4DM+1QCnUKdhh//M
 ulAPatAHIH2fQDDLswzZwUFvRgiKIOiUVf+IArujDXc7joVoCElTaKvhe
 zj25htbP/spZIAuUF3Jnv4PlMMo/B3XyFWf9+9zEWYoVudp0LsxpnjK1e
 MrDmwJKylrrBi2lhXjWAIWetBSDhtBJXkJKiEmR7I6HmskakAy/GOqFnQ
 dMNeSa1BIKKFM1p6W8oSkYVahwbIZ7uyZFtDmcLPifZr6w29y/0Y1M1WO
 VZM/UP8xbF8xoWXvUTKuTwnn2OUWV/a1l79kl3NgBDC12MdmfAGFH3zRg A==;
X-CSE-ConnectionGUID: dOlrEMYeTc6DXbCXR0fieg==
X-CSE-MsgGUID: oHFFdt6ARG2whqKt4gnyYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318774"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318774"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:25 -0700
X-CSE-ConnectionGUID: AmJfYR9HQlOsH+2j/tea1Q==
X-CSE-MsgGUID: QieMc3mXRv2AV89Vf7qwYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818233"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:24 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:24 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.47)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ig+kNDnihLfxdYPDSo6M0kB6qxXqBXaM1FzIZOBYAuB5VrGdbd9/Jodmar0jLifpm/vexi2UN/4qRKx2JxL+3nOwaBFN7oq4co82t2johdqqAy9wsZUx2fXEmk2EoApjP11jN6ch4SWVUfrYP2DD48OzXwKLKBeOgMLLsmR0OUUWyifQKFqhbzSbepWHezkCU2KURZTsUNAxMW9F/IUAtG3JJ2LoIyVC5y1G4+TcuZWgiyVc/s5vgdrL9hbB1bIHlqr1akZXmSARrHxgBu4oo3waMNQTBTHkgGOToWU3syGyVA9dX/KrlyhcFRsPaBf9rcnnZ8G/euXF6rr5NlXaag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZpK9Jv4WT+bDtmHWhB3n87sh5CgPA4+u6TlYkSImhg=;
 b=ejK59ayaQSCNeWwXuwh7h9IpDGacgqRvNocoDOjbuc4wzwbyoR33M3zOFM37zy+w6/gnMaqNipFhHRd/UGcFHIQ1+7B7AA+IJDu6piS4trk0wbHdgS6hnbpgM+S2iOkETeFP6QQX3PVWYwv3sk1WRrTlu8sEOJR2yJHmjwCSjPAt6uizHTwtK5vX7QwvKIQ0L2BT1Od9eqVd+536ijy0puXrYCm8TSTOPjk9auc8Skqbo9h4xJmztgD61Nvw/o95ehabeVXUM6u4xqbfaXcfVg5IsQ+FbuR+rbJiW9LJyvR95jc43bn6PKoF3pTt63VHT80E3pXdYXqn4OX9yhXKTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 085/108] drm/i915/dp_link_caps: Add mask for disabled link
 configurations
Date: Tue, 28 Apr 2026 15:52:06 +0300
Message-ID: <20260428125233.1664668-86-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 66fea279-67a0-4681-f230-08dea5255b2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: M9oo/+o3FTPlUNnKb63UuMMG2dkWt8emjOaNzAZyxrKLz3Lf7vXeo+G/5lXUDwaK0iU54tjgXYMDGEurUJPfh+EwALzkWTP2dBaRWzKwaSBYJlzQHOTcmvUorKMgqler+CbH8Wj3Jy/Hmk9wzBQqMFDp5MxSnPRosu/CObfk5AMZb9gdXPsn6IuaPj7kAwNRdMoo+3RzTg0k4BCtHQpg11GXakuUvwu8BSyeQFQxeuXtTq7yf/BAQxl0WJJ2D0vq9+3+qLNXQIqi552nckCDXKYdUVyWVbed7JPfJBwiyMdKZ135JwTzk0WPkHbJWkJg/4AlUNe1i2pE0KaEet7hapsdMdjT0+dJEjeNrtvbSyPPAqkZQro7HD9UZ4hdVMwAgdR+6mK/jgaOGTd/lFHCoOv82AUdxc8MfMHk22RQUyHIQBUjjtDMnd7j4pjLnDykCcRos6NgM0wdTDWVCXmjGD1p52kTKr6ZOhZkQg4rxPiSjWHAyM/3nAVpYgktH4ESiG/aPAmxrONRB9uOrLUjvhagGUxgm1/tIGbS/8WxLkblOQBWF4UoFLTlzemV1hwqi2zga3deTyftB8ocBCRzB66gtBroAaOZEKdCgoM5CbPZDoqDMz/6GiNX/FsYWX1W0FUwnIloucZnUa3LwCB4RYxG5lzQm0oi6QU5exL2QastLBzOIoivWvsoAlF4xv7IvA6BZhP2R2aR4VCGnPKCaiur8pmzixujy4+rL0Vwb3I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RzcqDMAD5fClMW4a+X/bUiTZiijir++vK3MOQNJTbsskdv5K3HBdrjV0I5yl?=
 =?us-ascii?Q?1dQnpEVm7ok5CrwbOs1mOTWe4Y1rcjabOQN9qIyC7R83srU/iAPD71k5KOAm?=
 =?us-ascii?Q?z3T33afprlzY7nPxkf2pHmYHf7KvBfQpqX4WbrZqvYSvzLje4ZbS7T7idsEn?=
 =?us-ascii?Q?OQm5X9ShTVM0fZCMghspCLGMcfr2eNGmK6ejMGwcPpByGjqHfT1JLCIb6Eep?=
 =?us-ascii?Q?I3zq3XO4FkIub4x+s8SCt8dxAsd6NbfTqPTOnawhq7CBffJxMB2pWe1u4aMa?=
 =?us-ascii?Q?hj5pvJ3lODkZ3WR7pZT7rz7Kv/vd6ARAxdwQpJMkLCkX23a9y/UQ7keyCYoJ?=
 =?us-ascii?Q?WjZ21HKyviobvXEGnDofe5gLJN/B3c6WCKEom+Cv3wIbrMAO1eduM6UhIlL8?=
 =?us-ascii?Q?C700q6jDVSRvwTOcdlrCpIms11X8Us3UnXXIYwJ4QJBKnSg8eM7+i1LGUi6y?=
 =?us-ascii?Q?WLnAyftYKcyo5vzxoiLG68xskBob8CKnEJPlLHdJrcnd7YxpwTs0NKmA/Lc+?=
 =?us-ascii?Q?CWDXua+hAJ+ncB+NcR2XvzQODIbUpO3wevDNnFkSXKaU1cgFNU2F+hia1XHX?=
 =?us-ascii?Q?KjWuxZ+63x2216WHCnQpwswr1nwzLN9FHItFxsRoYXxqasR67waPAWTdd5Ej?=
 =?us-ascii?Q?UgDbsc1EN03uDBkEtqK//chrapwXIe4YWGCjoyYIstN74+tmRYqDeaOJ1Uwu?=
 =?us-ascii?Q?wTrKLAugw4WYY+GguHq9chMwu7Cthd19+VfXoj1ulADeP+aTvbodWCBoJX0+?=
 =?us-ascii?Q?5MCTnJbXHRlkDse19d3j4ShoOsGav2YqhCWZkahgj8PYVRdSBvHsRVG52qW2?=
 =?us-ascii?Q?jamjv7V8+el2oC4OvEGeUF6I2StxJ/2mk+mGNpT/be1ytOCo4hX8t+9VYkCP?=
 =?us-ascii?Q?siNbf687nsPWxrwGs1iq5bz8DfxRpT1D/IIkVShtQ5kq479mFh98IzGf54jh?=
 =?us-ascii?Q?yAVSW1mf8n0/TXhfwsOsO049V1O59ew9Zt3g7VxNVhkLeK/dI4o5G/G1T9J2?=
 =?us-ascii?Q?e9hTc4FbdQ0CRQ6SuvLGNFaNpMIGHdRQAB/66ljtf67KYd4IOtp72Wi+aoj9?=
 =?us-ascii?Q?YJzts4ONqRM202BBVtUHgBlNmiQbPeZzvKllXrTD5F/LABDyZr49+z7D5V8f?=
 =?us-ascii?Q?XFBpPTVWLw6dl4jz5gYeYn41yi9DTxMNVuzzTHty+Wj2pFnWZbchM/KaT7iL?=
 =?us-ascii?Q?LILuD7Py1yr4N05ALCh0X8b88SxTsXWWeDX4rDWMG/vG4paawvCRsAVNTglF?=
 =?us-ascii?Q?i158h3l0LAXy7i+CY8agWZw8WHHLCIWANzzII4hHf0Kxht6fO/IW/O4NUj3F?=
 =?us-ascii?Q?f+Jmt5PN8f4zn09z6FbnhqehGRVcxRUfxBQDbvsZYdZ6PmI+6uelDudK5iEb?=
 =?us-ascii?Q?QA+ZR0Eq/spJKdNTxEINTxOcgcdMRfagZ1JvrrIsfjlDvcl8ATVW86w2U8s/?=
 =?us-ascii?Q?IwHaB0CJhzLqlVkmBHc6tQr8ESZkYVpR4PnZCavJue4n3XAk+KeIKsnVq3/t?=
 =?us-ascii?Q?FInONacET0oKf4kH+T1r+tW9SzjIdMK9hz/0Lhj5MK6JivKDNi/zHIP27JC3?=
 =?us-ascii?Q?q+Hdnclv0osbkh56NIyObEi5BheCZWr4ETRCfxm/EOcQkaVNCUaDh5LXokER?=
 =?us-ascii?Q?aI4J1wrpiJsS+QURddFgx1CcLhZhqtITv9zCU33Vi5HPrgYLlT3hQ1wFTM+9?=
 =?us-ascii?Q?sHq/ZC7XAFZaE7Ke/Wco2pn8DnANr3UYswoa3xng87A/TeB8xmUGpYa1ZEJi?=
 =?us-ascii?Q?Sy6OZMQBjg=3D=3D?=
X-Exchange-RoutingPolicyChecked: Gc9TlL5r4K9Lx2eMgioYWw5vJiSKbcP3Q6koaI942WzpsKvKMNvj7bfsuDsMNBVSjiGtgEx3omzlVmoVPtHSSzv3rm53pOC3b8iVtukg7rYlLhx+woJnAF3FhBw+n0sejvZvoqnxZMXmnT5rwas4uJRokYulxrSlJNukRyJj6Zzgw9RMCQSlEZBYFNYZt5ZktyClVSK9pmlyPq0zTkcNry4E2E+22PBk2Qe6pLSVrxzdp4YxcWM7ilAYyQLTmyQEo3J27/BOmm0apiiFFu2lsu4XYpcSUFrJjlmIQWteqG4LTMrMZYU61/RlLG96WkNdGUQpcXPBgo7HDSJmeUUrww==
X-MS-Exchange-CrossTenant-Network-Message-Id: 66fea279-67a0-4681-f230-08dea5255b2d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:59.7188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bUzCJ4oQM9KC1pM1lGwyysj5bxyGqcWsqyW8yPjhdJyoUXQbtObC4/EmhTitldExo9egDTscTkmxJF293gaY4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: 2D67D485583
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add a disabled configuration mask to the link capability state.

This allows fallback code to disable only the configuration that failed
link training, instead of constraining later modesets via maximum link
rate or lane count. The code only needs to exclude the failed
configuration from the allowed set; all other supported configurations
remain available.

Use the mask when computing the allowed configuration set and when
validating maximum link limits, so disabled configurations are filtered
consistently.

Follow-up changes will preserve the mask across merge updates, clear it
on reset updates, and switch the fallback code to disable individual
configurations through this mask.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 45 ++++++++++++++++---
 1 file changed, 40 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 9c0ad5cf87259..7a4a8ec8fdf40 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -131,8 +131,41 @@ struct intel_dp_link_caps {
 		 * described above.
 		 */
 		u8 bw_order_map[INTEL_DP_MAX_LINK_CONFIGS];
+
+		/*
+		 * Mask of configurations disabled for the current sink
+		 * connection.
+		 *
+		 * Each bit corresponds to a configuration index in the
+		 * virtual configuration space. The same index space is used
+		 * by bw_order_map[] and all configuration masks, including
+		 * the allowed-configuration mask.
+		 *
+		 * Users disable configurations by setting bits in this mask.
+		 * Bits are cleared only internally in the following cases:
+		 * - sink disconnect
+		 * - forcing a link rate or lane count
+		 * - recovery from invalid cases after a sink capability
+		 *   change or internal inconsistencies that would otherwise
+		 *   leave no allowed configuration
+		 * - after intel_dp_link_caps_update(UPDATE_RESET) or
+		 *   intel_dp_link_caps_reset() is called
+		 *
+		 * In all these cases, all configurations are re-enabled.
+		 */
+		u32 disabled_config_mask;
 	} config_table;
 
+	/*
+	 * Allowed configurations are the supported configurations defined by
+	 * config_table.rates and config_table.max_lane_count, constrained by
+	 * config_table.disabled_config_mask and the forced_params and
+	 * max_limits values below.
+	 *
+	 * See intel_dp_link_caps_allowed_config_mask() for the mask of these
+	 * configurations.
+	 */
+
 	/*
 	 * Forced parameters requested via debugfs. Remains set across sink
 	 * disconnects.
@@ -160,15 +193,15 @@ struct intel_dp_link_caps {
 	 * max_limits.lane_count) tuple itself may not be an allowed
 	 * configuration.
 	 *
-	 * TODO: List the events that reset max_limits, after the
-	 * introduction of disabled_config_mask.
-	 *
 	 * TODO: Make max_limits reflect the maximum of the allowed
 	 * configurations at all times and stop making it settable via the
 	 * API, removing it as a constraint on the allowed configurations.
 	 */
 	struct intel_dp_link_config max_limits;
 };
+/* Assert that config masks have enough bits. */
+static_assert(BITS_PER_TYPE(u32) >=
+	      ARRAY_SIZE(((struct intel_dp_link_caps *)NULL)->config_table.bw_order_map));
 
 static enum intel_dp_link_caps_config_order_key
 order_key_for_connector(struct intel_connector *connector)
@@ -511,7 +544,8 @@ static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
 u32 intel_dp_link_caps_get_allowed_config_mask(struct intel_dp_link_caps *link_caps)
 {
 	struct intel_dp_link_config forced_params;
-	u32 disabled_mask = 0;	/* get the mask from link_caps. */
+	u32 disabled_mask =
+		link_caps->config_table.disabled_config_mask;
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
@@ -777,7 +811,8 @@ static bool max_link_limits_valid(struct intel_dp_link_caps *link_caps,
 				  const struct intel_dp_link_config *max_link_limits)
 {
 	struct intel_dp_link_config forced_params;
-	u32 disabled_mask = 0;	/* get the mask from link_caps. */
+	u32 disabled_mask =
+		link_caps->config_table.disabled_config_mask;
 	u32 allowed_mask;
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
-- 
2.49.1

