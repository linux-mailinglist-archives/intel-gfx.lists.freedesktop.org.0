Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCyBLGuu8GkWXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBAC485615
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A5310ECE1;
	Tue, 28 Apr 2026 12:56:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PNRDB+BW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2EA10ECCC;
 Tue, 28 Apr 2026 12:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380968; x=1808916968;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=n0iSJWH6Im5vNX1Yr2SKojGMiX1A5kNhxUSQKehupwY=;
 b=PNRDB+BWqTol4k6GTGETOBB4ocHpFe5Z3mvj4GqOJx+3Ie1ZQnpsnY8x
 h5umH3AhLqSWmln4RGx525Q5RFjaQGwB9ZvQMUKV+Sp8pnWSxFIcBGqZc
 LU3tzPkqeOb0SoifCEacF6BRPxdalc2ZSCMoXrWMqMAZfIfYUM/bXEDYV
 7rchAryjHZ0MPW4hR/r1xIxOsz/uUEaXrwCSz5Y3D/gnd3vvL167xRa/L
 ycGHigwQ9OL2xdKjmbq4PKuj4yE2vLYehRGOxmlFJNAgrlXvze4Kg92g7
 jER+ysyeqfxZ3Y2+dV5Qh7TWoe3rwWg8AFBpRVCTEzsja3xlAxQUFFzTl A==;
X-CSE-ConnectionGUID: MyjWd2iNS3C8i2Vpnd2cbg==
X-CSE-MsgGUID: GCurHnNHT1SENFNraLT40A==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883743"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883743"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:08 -0700
X-CSE-ConnectionGUID: r4/dh0k9RXWmVIHm3vkesg==
X-CSE-MsgGUID: CiDTKbZORYCBrcWZY682rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795284"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:08 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:56:07 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OPSo2m5mLVUAtxvp2oG0ovy+f3zyw93UUG7KFCeFyrguFXalVxpbAvsruZT5vdigN7Hd5dqZe9Y5f1MbTYTcB4ZRIjJzePaiZiI8cNOCK5vzFMbOEirq0YJSZvF77JgIZDR0n061Jq/z8jzCmoGXdk0SQ2KAL90VmdGaGPgphPMDFfSG4bAUEybwj0R+My1lKYI/Tdji7k7qAoiGTB7/ld+MjJXWaJM5bAoLnXRquGZNQkiSOVDemyB/ZVoOMXgxCZepiFLlPggLne8Dv/SUEIf5pS4BzZ7ni0xvYgmnju5DEiir7zPJ8EE46ZdL1Y4K4txxkIwIBom5jYoGZ0k9pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SXV1cI1WFeylgT0N98PiSQvQ9hWdSKpRDX+F2/M0gtY=;
 b=QO+WrqJUOSGCd8RiWd4s3gj7j1NGZ3ZNmTDAR4IvKJphuvr/Kv4uvG4za+0XzJWDszVYyUXmx6FCsUbnoooAdOF4W3DhJ+z5flwQ1No6WreP0eGdTYGsSfiHZUi4EtfHQaJlUeq/YExt+S1ZOcliP5XSWrZi3mkWBgquefVMwW+zZDrxMvd673s687pkJL+Sdiyd/ljPXgCgxnhhaRxwqLZN8npiICAmZ5c29vgy6T5tgOVWlxQpBFtEMuU3zNa2yJTZMhRrm8486hHS5kFKANrRe57c4hS6IT2ZDLnEWru6h3RBHEuIJXN8qtgKGkWoia8qofKyJhSiVFE/CXDl5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:56:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:56:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 103/108] drm/xe/kunit: Build DP link display tests
Date: Tue, 28 Apr 2026 15:52:24 +0300
Message-ID: <20260428125233.1664668-104-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: 361ff9d0-5492-4c64-62cd-08dea5256cc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: eZBXny/mjVgtm5aLAX1iRKRf6Loe9rQccBh9Zl7ZZQzs4r7RIVqmoBHrNZucIANTQJk/Kv+zpiG1Yb0iqTvZ43LdfrirFvqk2JEhJyCYGnOBQrlMwm7DA2XsqhZLa8eOuoGvTHAXHt1JmXAjqabuMV3aR9zvUNNrQ5vEOl0Q9wEjWMtXxEay96ngodUhsJpmYL8RDerpSa/chZd4fseflHKJYoBDvrcegy7ffTMjjOPC9y795GkLXebwnONgaTZ7PjOGBGF9Piz3xT25r5SvFunSElYI5rnbhOfZSKPu42LH09FwYcH4b+mnMiVLTJMCRP/DrZA5cGf2HGlC87bU4A2jrdNGcbUn0+tFQXYlU8vBfmfVy4XawbUacTKydnU8+ic30na0k2+hL2Q2aga9kNfJHdr2Jti+/7l8uNGtwcRZhJZToIWaRjHZulCv+dMVxWpYquqc9aFMM+Gl759hMUJ6yeIJJ7Sw0WNulzEMf235NknoSpsCXXT16YyGRg9Mw6bBAT3HsH6JV0NkNvTW47SuiZZ6zTtTwEMPxxDdi6Y+o2zpGeqFKABefvh0ISwziQaYanxwhK+JiHFWi5A7tDTefjTSvWmHBk7smPz0XyWPWPrrwVK/kvVnKN2VBJ4QNhNZD4k5IFeyMnCyQ3OSFu2ZuPuISA057zogshOQNBe3d3WZe3WDom3oLqNRzgt6Ij4o4UzxKbN6w8FtVExEIC1TQNq5VjD0wOBvhkvqMH4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9sc0WHgHK3doY65FoMMz0un54uicUMFztdH5B0vI6pn8v+OfZ6pvQHGaFFAc?=
 =?us-ascii?Q?lsA7tYecss/w06FXGrYPm5eHBYnLLdWmMUzJVWyAeT4iEtj0UINwcEkwAWKy?=
 =?us-ascii?Q?ePYfUfebwesi81wS8kGZGE6E4ufe152pWfcB8sMYopb6t9L8/aaCMud2a3du?=
 =?us-ascii?Q?PybPqorTimnaenypVzZdTzFXlOomqfkbRCW14ALb8U1yqTuEs/KmreNl4++N?=
 =?us-ascii?Q?d/A7p/wdSTQ8bjSvFJqywAATCEWkdHptLScPJjVU511J9+ryflD8b0xXm1J7?=
 =?us-ascii?Q?tUP3GlAc5AWXUqykYK2DGcxkGeBNj5jrrT38qM8kC7D2MQSPfZoLaYakq7Ls?=
 =?us-ascii?Q?cQwgUT/cfqLJQqTMePA2Hn57opDUE16bc/K5AlXj8FQCtG3MDaOrgnYVPr3J?=
 =?us-ascii?Q?oKxRdjTtyU1JlWA71qV+Y3xTMZ+Pd02e+miBuMDFtl9YlFpDJrio6DCs7sHd?=
 =?us-ascii?Q?PKdFT9zpd5QSG+B4yVuXIxOmsmC8fa55ipUtmcGPgJFMWax+BhJl/aqR47YP?=
 =?us-ascii?Q?p27GU8sfkZRC1KiHrHFcfFaJlWXi8b7SZoHj0gLQaQzbnoARNiDnjmldclsx?=
 =?us-ascii?Q?OXjL5aAnVEhg0heDEBf2c5pPhyZjSJbWa1JtGvmM9I0+jjVBBKfQjdey1536?=
 =?us-ascii?Q?NCbC7Yz//VaE+2P8IOQ5qHklHr0cStz1pFj6sXAK8kfsuGRkefsgJLqap9eV?=
 =?us-ascii?Q?ETFcQq37g5vBWZH/IvAhIvGVwqCsD3tOPpn4M9XOIWp16SxKVHiUFbGGif9f?=
 =?us-ascii?Q?kP0LlDc7JelsAWwr5VEF8Zvigeqljju1G6P/1Z3AukaKy4jarctnBJxLqQwK?=
 =?us-ascii?Q?o1HvAhVlHEKLV4/77NuxZx64TBI69k5s4xwEAoHNqIeJZE3Z05rhM9k2iJNi?=
 =?us-ascii?Q?yi8UOIp+I+K1J6f8a/xjxbnsg7uPN1yGkQUwQjpCdf+6YX/J2V4Ntn/oloYa?=
 =?us-ascii?Q?baLyehTIs2C047UAicrjWvMcx3bk7/A9GMLkSiwWuzYSB3vvjT2LN1CcM9E+?=
 =?us-ascii?Q?Jt4NEAuj8yeovpYRFuSRKk9yNxt/OfN/LfpjniRQtQF9A63Bk2aEQwe0bmGO?=
 =?us-ascii?Q?muivu2CTFaXIQjFbtUJmvt7Y0Z80mWDRO6YYl6fpzhnx3KJoXyk0ZoPPlebq?=
 =?us-ascii?Q?/9vkqLlxlIEAIv6dSHjn1/OmBWZnNQ+ZGGBYIcmWShSzurFo/DFZmTljUNvv?=
 =?us-ascii?Q?EKUOu7UmO4P39AcKNCdgJZLhXqZFAYMrd9xTB5op9/sODI7E8Ytqd32zlnFP?=
 =?us-ascii?Q?IMOR3BM95Hetl7yFePnD0h8gh/28Fg9+uQEMlrbGcyTQ22VlxCpNFyotisuh?=
 =?us-ascii?Q?OnKifwn+4Um5amTlEgW0wUegbkAGRT7nzvBt+xVLCKVR+bpxZ16k9GP/J+VW?=
 =?us-ascii?Q?TI/ATtZtz2jquOQRYY3QFxJLccJya/29flHlKR+pJrMrVKurK1sRLIgtj1zO?=
 =?us-ascii?Q?N2wyGdFtzPZfQzr88i54rijW8ApyQ6o+j0WKzDIcdIIN406+XP/Fi9tAW3EB?=
 =?us-ascii?Q?l8ZeHzi/TLbj6J6vT8YFWbhErNq/VDE8XDxxHMS86wkr1nXKGq5alPmApMGE?=
 =?us-ascii?Q?87cLaIoJ2UM3LeY5fOVOytsy6bW65/9IFRuV85YgYJwTkZFs4ZUWfBI4xXvG?=
 =?us-ascii?Q?CUEtS/rdah8qy6P5/5QScr2FfnCPhvXxh+OCiL1gS8GXLCrWsiXJ/K0hH/wM?=
 =?us-ascii?Q?1WKGDhP9j0xCxrVEfZCg3QjnZy1vvTpQ1DIjAXBByI4EuYsK5BZwQt6lrhWv?=
 =?us-ascii?Q?uJO8EucNSw=3D=3D?=
X-Exchange-RoutingPolicyChecked: Qf/kieI+pA2qrSwt3C5RyUBnuru+y4Y/Y9/T1pNDIsdOkD0yWMPx1ut7h8BYOmb+hCenB8I4CruyMtYrxZUfXCKLkdimkO7RVqSp0Ook4deVEA5purWDShN1yua9zMxt/Rh/hM78UgwjkNQek+JFT/LycsJqTukp+AY+qW2LQ4VXlesvO1G3RUMW99AWe8h9WyQBbaqkgVe3HILyThEx4WMq93nRRTWmted9SZL14pGxVYGcic10njfeTicmmpTWMSN3oquJZp9SB2HyFPRgPMbd93/vFEkShzEbxpwAZc6gqROJWI9ihW3ST0OLxdsZpeOvkeEkZD6fW9Vt4OYUjQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 361ff9d0-5492-4c64-62cd-08dea5256cc4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:29.2225 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gV2dGcC+6btoudfbgRvJ//zdBCcjF4xJihuAMqlSJ806eopaa68mrJsGJt51zHXWvFzKDeXO2szRinJhBqWKig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: 1EBAC485615
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

Hook the shared i915 display DP link KUnit tests into the xe display
test build.

Build the shared display test source from the i915 display test directory
when xe display support is enabled.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/xe/Makefile               |  3 +++
 drivers/gpu/drm/xe/display/tests/Makefile | 11 +++++++++++
 2 files changed, 14 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/display/tests/Makefile

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 9450d487123a3..fb2bcdeca6f72 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -371,6 +371,9 @@ xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
 
 obj-$(CONFIG_DRM_XE) += xe.o
 obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
+ifeq ($(CONFIG_DRM_XE_DISPLAY),y)
+	obj-$(CONFIG_DRM_XE_KUNIT_TEST) += display/tests/
+endif
 
 # header test
 hdrtest_find_args := -not -path xe_rtp_helpers.h
diff --git a/drivers/gpu/drm/xe/display/tests/Makefile b/drivers/gpu/drm/xe/display/tests/Makefile
new file mode 100644
index 0000000000000..1a582febe17a6
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/tests/Makefile
@@ -0,0 +1,11 @@
+subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
+	-I$(srctree)/drivers/gpu/drm/i915/display/
+
+# Rule to build display code shared with i915
+$(obj)/i915-display/tests/%.o: $(srctree)/drivers/gpu/drm/i915/display/tests/%.c FORCE
+	$(call cmd,force_checksrc)
+	$(call if_changed_rule,cc_o_c)
+
+obj-$(CONFIG_DRM_XE_KUNIT_TEST) += xe_display_test.o
+xe_display_test-y = \
+		i915-display/tests/intel_dp_link_test.o
-- 
2.49.1

