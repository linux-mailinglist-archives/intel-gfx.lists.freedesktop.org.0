Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACC5A8mt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B97648525F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A2710EBB0;
	Tue, 28 Apr 2026 12:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PfwKVQDm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2D910EBA3;
 Tue, 28 Apr 2026 12:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380804; x=1808916804;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=S4m3iQmQlAqcx+OmetNoswI6RoW1BT3LY7Pi7k/Lr6k=;
 b=PfwKVQDmcFgWf0N6UYL3B/1KMGWDmRENjzsQEZwH/rxjih2/ApLfnUvF
 EZ8pyiLkjUSESbMxNsx9GENTtzI3G6NxyhaUVxkyKEM4Jg6BMAWA0AorP
 WzrItWGAkqvzSmISzepEFm37rYe2fPqE64S2M6sZBeuBsf7DrtIYPDfFG
 j3IJE7OAkmqOcx5KoNXHuDsyPwKRkuY/FMGFlEafyscD335FHDn2YNZJR
 9y6ZUV0F80TzVEtXnkFmyPHC7omqyCML6EOzU8J+bvfg/RY2swJp9UUUm
 1rjOl+3BLBnz97Ip9aZf2Yj+4C46yWszZ9DrPtaVDEOdCqb6O79SuVmVj g==;
X-CSE-ConnectionGUID: TmplXypLSRK8EK77BzERoQ==
X-CSE-MsgGUID: rvuyNAS6T+Wv236WcrKjfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398610"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398610"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:23 -0700
X-CSE-ConnectionGUID: 85PNYg1sRvWhQetz9a+M2A==
X-CSE-MsgGUID: VRQ1jh1yR1ikZVLnzg39tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911337"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:23 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:22 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:22 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nwfx9lWs65tBKrIOV/CasFfOAAR1+auShblL2/5Fyzp/Nbf5NmvfS4JAAujYeA1I43NEsuigckf1Wx4HHrRDb16WOF3yptCYKub1wbNfC1hcqPKItiMD19MkqQhUXaVEWzez5141xl0wNp9kc4wErF7nNgrY9l9fjFDZT05PoKD3VdPg+0vC0Zyat6lpMFIhN9sJyrHiYPMdezF7eCPmcaKPl+hVKw36+HlvOUn29Dhw20YXzJ1EiMteKSTU548N7+cXJtKO1sF9GHEAXLlkgu9HEIQqnRErP5v5eSn//f/aumRIkzdrzKigFnKAkJv5aeGXo+P/dRL9vFoQGPtoHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yL8ArHfW8EUJRHTGyw2smNdlZL+LawUEN2VyD/Fm5RA=;
 b=Bzzx+Uyroe92/bytMFta9KbIvtQamafIVwqHjcjG1f7MhJA5uuzvu3uK0bGP2OINmAZdOo4F70Xp0dRlOtcF/+Y6CRrOkvtK5efIX0DmAbG605VNO5mcIutHvkWlxsJrIrS0Lk+IY6PJxUGGGBSSSUAc7P3ROhEsKY8YQX1SPUAhq99Jj/YwqZh/trO8RmHIbW7EbnJeeNH92wmcrlPNLVfuH9+dmrdW+GOyagauseUjSg+ay3jW3vurmRqcPdxbuw2ig2QwK8gqC6GqqN8jAZ8tamwe0aEGqVptX8fCvpnF0mjEhqxY/Lslws/2guHVy4B5JAs1CPRN/OzGow/b4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 023/108] drm/i915/dp_link_training: Allocate atomic state for
 autoretrain modeset
Date: Tue, 28 Apr 2026 15:51:04 +0300
Message-ID: <20260428125233.1664668-24-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: dcb135c2-2d9e-4e05-7f74-08dea5251ede
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: ypQOeBRgU9UeEbCp0/XIdjrVEK4Gx0TZGRcce9QCUS6pAT5Oh6dBIqyhLXGGnqmrQqKAT9l2ERHpCFh8O5OkbF0mn5fAbiFVwK0SvINdvnTyWPyJV1krGbMoUGHKln+fTsM4Slm9aIN/fOdYH00wSHls5GtBV0cwyqO6XzSIpPUDTE0oyqNp/wePRRByPiuHbAnvib/vSPyy1Z6jtKF4LlSeRQtvvJeGgJJwgnbFswQ7I3ifJmVQXWYFGYtwcji7zFoP7p2Jr1nAbWPG95aN/9gImbou0Xu0Xqgml7WoosngPBeevztb7cOI+i7RSNq0JMc7tvGHUikP4kAe+5Pws6FCc0Nvmc58hRMkfgGUhOPApW05BmXBNDpkfqb8CXkRuUH4/e/ZPvRFFyQqT3v2frN5ISs+93v6I7rP9Sn/zTI5MX7/U5+iDjJRsgInHLS7nLlDGLeAZX6iGEamDToN+Ksk1k/IZqfUvefAysPu34DBZRjK7EUY9oxq6Gysx5FOclXROLmRUZVosOdmqmM5R6a+9rcD3vYHOITEUG13ymjDg5bpoBZ3/HqlGbJ3mQJw/cMIscOOqTK5pmJbgo+lNMmR/mGeHLsMmncxuu/1EW8gE04dS283/J6taNOsYehf/u4cPUiyQAYcx9cTJOVXs5rcbopxC26CDoJGIrgyJ2nCbKLKEytOljAmuUQYvw79Ab4FmGmqQ88XONFj5/qIdp5qxoSQHiZQ3Imm7lwHicw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D5yehtiF8EVWhTTAFzKA/tBc7hHEj0c+0Q1bYfbS8mOaU5cHReJn4JuWnccI?=
 =?us-ascii?Q?M0HKqEpCWHHHrcWnPkdfhS6PpT3ty8sWHf99/b84S8iUjEtTgWT8aQXIeuOJ?=
 =?us-ascii?Q?WG+kizcjMeCoSm22s3hZUybcXnu+R4XfKkotFc+QiMZXhY6X6JQBIXVaT7EC?=
 =?us-ascii?Q?461oy2dPepGRXGrmqFq/RQRib+PqUQddo5D2lh9FPhx1rWpzLItcergAjVpH?=
 =?us-ascii?Q?2Rvi6LlTMUrwE4yxKErFd4UMWOPjyZQ8PCW02GDO8tDhI3vue3z+mYGmyj4t?=
 =?us-ascii?Q?Y3RGD4K4o9OPTwwW6isqSA9IczabWd7QG2gb70lgMHjzhPu2z6cGfe9Jo+4o?=
 =?us-ascii?Q?ju3nWQPigredDu2ynl8WHdoM2bPBfP8DLNSQZwFm4FOuu3rZvtexYYVKveJI?=
 =?us-ascii?Q?lZKHK65bU78gi6Gxuw+zVkW/ExvXB1YNPelAgxXDkBTqkdA+d27dlL4l9snl?=
 =?us-ascii?Q?1/6BIHom9hba/VFpsaPI+4+lUCaJTgh0/CG72tmXzc6E2Uy7vXZtbx9rK4nE?=
 =?us-ascii?Q?W88VikiW2aZxwtpfJgidXjUwTfkF0fUJx5wHkSCXef1aMQpQCroTKUAr5ZQS?=
 =?us-ascii?Q?lN+H68B52QIS0c+A/QzFp9YMrRfaFk7CW+MCADEl6YMDZ0lu0Wd4P29oTel3?=
 =?us-ascii?Q?0G6x5703wAHzpCSx538J2SWDSaxEOA8vGID8mhHXOtFnHY8bObyVTWQTWvY6?=
 =?us-ascii?Q?pH/aFJwmt+empUZwI2xhIsvTwY25/eFE/brwgS4fwPfEQ+pgtlBavXyGorYb?=
 =?us-ascii?Q?kwYQlmXrv0G3MFzvWvgg3XDiWO+Z5iCuEj/CcYLEwwNIxM7jejzWWjNAlzvF?=
 =?us-ascii?Q?CEbMaO2wnHvJsfQhofJCvo0x+K9cTko+qg+ecBKMpiA//pSrxie5hfkenFP8?=
 =?us-ascii?Q?3QhZfvb4ZIDc+76xtV2Fh+2c8UMSo1RK3WR5kYfgxGx+LqnqaANOg6enYQjL?=
 =?us-ascii?Q?7SubToS1nz9qBuWH93EhMHgAxb4sT+pGecMSS4NnO+7O4vSNkXSCAY4vUpPx?=
 =?us-ascii?Q?svPwxT2KBNqAiEqUyFfn2ZPBsmwH8EYw4nR3sSCnbcMwW0THcV3p2DbWgI3L?=
 =?us-ascii?Q?9iyX2CTPz+PcsqPfL92GPZcEOQU8efK/Fh5+Td2h93u6trsDAkLozv98X/8I?=
 =?us-ascii?Q?W9SaZPz4VePGIF2wDz9YCSuFFsmNvPpUTMIZUvJr2XWxlwptgoH2KM16JGS6?=
 =?us-ascii?Q?+IvqlVXUHWIUudVQjmX/pBV0HeynU+lVD8OYDBw2s/OcpJ18SSe7yHJpbfRb?=
 =?us-ascii?Q?x+pA+BtCymocEAHiCiyo47ISkU8jjAKYcDHAlclnL8CcZL1yEpIJf5XfpXpY?=
 =?us-ascii?Q?CBBepCtg9ECqW7zgeu1V8xlLDmuFzuDrBNurA8vpbsSxJG4fJBEOwaWrJVoX?=
 =?us-ascii?Q?pRmVP6sQQwncOZ0nb3+4lQtLfaWKUsqjU0r2yg389n3xvoXg7oxeesOmgRVH?=
 =?us-ascii?Q?tn6VOk80yiWW2gFYmfNqJiVe+QyigNP7Nujv1QTI0FHRQPyt0lPPmtF+JGfQ?=
 =?us-ascii?Q?4aH6uIY3xWOt/gI249HiFy6Fs5qbupvanyUt+xOq671LQOLWbnZ8866yJzSo?=
 =?us-ascii?Q?b3yX64nznKFi4q9TCosGm7Mj/m4DUdlqobOtiO9PlEfZ0b+OL4kALxu6bLsp?=
 =?us-ascii?Q?tB3qhJmlvynlwK0eN9eQ2HjxuUg/BAFohESaj7+3aIIDYvoGb4i1qssUM4FZ?=
 =?us-ascii?Q?LuUhJKNHjS5agJBwOO36MzB04nmF6hHOdap2phf4RzmSQKRxL0piEQY10iCn?=
 =?us-ascii?Q?6+XfIyfF/Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: czIxNcC8UofzYW++XnrEGeSVq0OzRaTDyKSSECwmEu18UmiMB20v/8bY/nOuapBHC0cybpxJ4AZ4c8AXMtnZyg6kgob2JZhYixB9stuA3qZZWk0uVacIJi3wNNCNdnlago+2owuN4Qqveg4sZiuSDwrpeIKdO/23PJjVr1fyWnjmG1Nj6haPV2w6thkW05FZeiHSLfsbJsiVX4kq4wBFwawCfl6gxyDmPhm3YOU7wzJZEh9iuw7P+ilXmXqxiUSHMfmA8rHXXDpVrqVIcNBljBkWrlQEbdg2ASjv4BhrMjZpPwvGyBdbG1ghUfDQX+kMKbBt6tpwWGpvVmzRnCvvsw==
X-MS-Exchange-CrossTenant-Network-Message-Id: dcb135c2-2d9e-4e05-7f74-08dea5251ede
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:18.5355 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 58XOeQrnAXfEPdPkcaGfwxCM1UFWvflBXdKD/eUTpm0RWUzvfiMiSoNJxsbwDj8/rYAjUYiVJIQnKRmtfhuTyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
X-Rspamd-Queue-Id: 7B97648525F
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

Allocate a local atomic state for the autoretrain modeset. This
prepares for a follow-up change that needs to access the state after
the modeset for sending userspace notifications.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index cbabf01d4b670..b446a3523b94c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -27,6 +27,7 @@
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_print.h>
 
+#include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_jiffies.h"
 #include "intel_display_types.h"
@@ -2157,6 +2158,8 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_dp_link_training *link_training =
 		intel_dp->link.training;
+	struct intel_atomic_state *state;
+	struct drm_atomic_state *_state;
 	u8 pipe_mask;
 	int ret;
 
@@ -2186,9 +2189,15 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 		    encoder->base.base.id, encoder->base.name,
 		    str_yes_no(intel_dp_link_training_get_force_retrain(link_training)));
 
-	ret = intel_modeset_commit_pipes(display, pipe_mask, ctx);
+	_state = drm_atomic_state_alloc(display->drm);
+	if (!_state)
+		return -ENOMEM;
+
+	state = to_intel_atomic_state(_state);
+
+	ret = intel_modeset_commit_pipes_for_atomic_state(state, pipe_mask, ctx);
 	if (ret == -EDEADLK)
-		return ret;
+		goto out;
 
 	intel_dp_link_training_set_force_retrain(link_training, false);
 
@@ -2197,6 +2206,8 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
 			    encoder->base.base.id, encoder->base.name,
 			    ERR_PTR(ret));
+out:
+	drm_atomic_state_put(&state->base);
 
 	return ret;
 }
-- 
2.49.1

