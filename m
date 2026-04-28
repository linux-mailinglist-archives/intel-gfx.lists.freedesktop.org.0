Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIhODxuu8GkUXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB60F485499
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2657B10EC5A;
	Tue, 28 Apr 2026 12:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mW5S/d2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E371B10EC28;
 Tue, 28 Apr 2026 12:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380882; x=1808916882;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=51tWeDvnhWY1R6OiEcpVDBji7cc40lKfVRqHBXrB3lU=;
 b=mW5S/d2GqSEwTnWadLDP29tO0NBrGhbQKL2hSYYMb80sxSJeAO+FnKxf
 QVenx6h4jI/0TFRZqUxVr2oOhtUu4g/F9OIXb6J2fnSoCfVxZMQ0s7CpN
 GeeIDgljQy5lnRa11XYGkpYDxNzzqmeNwTdukjBkubo0i/yX+0xu4LkoO
 igduonWzRfxEKeV/+pVwHJ4hK24ze7Vb8sd4+jzzpreG5Vuck6bmXhQ6I
 2lLeKfrmR+7QIU7q2rEtmWo+FvGvCsnyosIBLw7BzHQdrasUid+I8O3Al
 cNHhM7hPJG+gxeHzZMJ8nkgN7gp/hi7UyNIeJITl5s70NByku9GK1tBAx w==;
X-CSE-ConnectionGUID: UUh+NdvJQwCHuEMeNPqMZw==
X-CSE-MsgGUID: jrL26YJnS4WHlN+r7Hgg9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203218"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203218"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:41 -0700
X-CSE-ConnectionGUID: 2Wz78quySd6SZrDmAxk0IQ==
X-CSE-MsgGUID: RFRLueG7TS2HxTXIQQjUkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244486"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:42 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:41 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TZAq8mFCI2V5upV11XNmZci+jYOeCp2uzjQ3Bt0XE8lGX0oweBvjzGHSpDfHUOa+2AVmWcP69sD/RxPbMMEmGCD+itfTn6gugpL60HYjDva3xcDJSL/P7eKpAWdO+p8Skx3rnwSrddhqwB5JDQ3HpVhN50RkpgAy5cH6LEFxHu8Mj7UklHuKT+Sg7qmn7N6RknuxkBL0gLggou2iL5iqZpeP3W4VQGQXyscOT8Wwn8CbhLvKaxwa3wIpNHVgp5/BnWMFMZlcOkmam5Nh3F3HKOdw6+H63kKRvR3aSIkbJITypcwHAAUrgKwFbHGlT7yU8EwI92vGyyB+Vw8k5sgTRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ePwOmOLox/5Lscfn2FkqLovUD8WuPA4BwV7GSA1gTY=;
 b=KuZOLIKmN+8KmZuV3LVgagtD2udflbsEypKB5czEG5lQx+gYjdhgy6SZJQPX7x52u+D5Um0n1jYRJ+FBSmmu1Fj+1nj1q2y1euSs/K1bG6Pn7jjOGUK80D+FjG3vrVZ7P+0HqP9lfif2tEBAuUyIGTcTyFSwib+xLYjinH0V+6FW33Bztlpu6qYXGXAt25xOxDZmtpG6SkVxyKanXJ6cpK1ytT9Jdyh/MiPec3eiI1N+Jr4DxRYKnP6Q0mfyHXTCBqmd2wBtxTPQXWZgNzN2F0jXUgaOreOOS9RM+66a/W0UemU2WU/mlFUXo8uvJD2Z9uyajipojnRTz+whUEbTFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:30 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 060/108] drm/i915/dp_link_caps: Set forced link params before
 resetting link params
Date: Tue, 28 Apr 2026 15:51:41 +0300
Message-ID: <20260428125233.1664668-61-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: c6791728-25b7-4b95-d8b6-08dea52542b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: P8JgddO2MvTSSBSuy5AiiOrE/2SF8q4CRm9GB4Mva1N9zgadlFHgWG+1WuRy0fcrv6aFAjDEllUNOsU7gsqm/lyh4+U6M0VWU0fFGSUCpGnbs6RHpaSicdeeb78Kqru7XmvHpjS8VaX2W4/n9NWxlFC1+4uzIf9CM4tUaBj6o4pFLoHQwvIBoRk/eUEM0VpG69EyCUrWq4KRpVqSH4WMbozxvGRg/hP4d909t3VkFzlYKobjQ1Elg9ojbXpzN2LZWZQ2bmRYfTzDLr9mPXWKIAJqJy/rIxRXgzLS2UWAKYC1gY1Z4Oz9AfKL5jE1UOnJMuCnIrV+mu7fUkPrBBtWH3GA1+MvvtW5PIOntaQ652a5LB0BmIUY4+fZkETLVN9jJx4oJtY3xRiPJh7Qtr1QpH5hfGrJ931dcCPzYUwEqV1zzuhVZP18d1880uYewGSas2hCogi6GrG4kFjDcSx/xCnL/Qetyf01uhIbNvykKVzhQEQ1VEX6JO4yX1r8bxEXrt4NfE3LQKmtSXyxb5zJx9vvbHrzO+7AZtnMxiw6vHpA7nmoG2WUBL2W+honNFyaPy2/lOBPYDdFRFC4i595ZbgmDmzumL23pQ+fxdrIaJEysTlEBXuIpwhQRXURkrEuTDSvX1DXFi8h+4d931qJO/2zbQes0C74F3mAGuJ2kiwlCTbM1rzSkaEgud06RlZXXS4EdygPskvFuJL5VIbm0FuJGXkFXdvMhJX5RHeAHo0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tqKNE6lGOMBG5Hv78SRd4gqdy87Apzz0ZhYv1EaWwNwp5gLqN+M+TkjLcul+?=
 =?us-ascii?Q?hKkoJ5kkqHSPk5e+dKVxUilWD7q6ENbIpdsSw4XcDDFrTQ2eq7112mlw30QM?=
 =?us-ascii?Q?1zsVL6Zvo5oCKzL7O9XFrO4FXJdz6h90hkwfdeZk+i7SuhdBlcvDqceGqCiX?=
 =?us-ascii?Q?m5EAC0ekVZJ0aigmgYpx+0Tk+D0ETFejcBvotHJ/kwftS36aB1ONjeGrZc9j?=
 =?us-ascii?Q?UEKvZFQ1PKoWP7hOuHG68Ch3JZNMcpd44awQGz2yDUnuMG6+kq/B//5OxYUA?=
 =?us-ascii?Q?atWP6o5u0EYB1nZPIeWDSkFFkmrGBN46aVbG4uMeLfjoovZqE9S+m6evFyO/?=
 =?us-ascii?Q?3hSo/Jt1MayjssIZVELg5r6UCF09bn2xUN2yoYvVqrktV3ezL9Oi3A81PRE6?=
 =?us-ascii?Q?N3C/VKISRfjom2pZj5/PHy9Hlnp9uuirrAqDwom5FRcSQuhMl2wnP8s/AuHx?=
 =?us-ascii?Q?kpunnlZzrKKL2+e6uMxQnmZS18E/LWsobDoZvGY8P0yljw+1BTaFm2a4VjsT?=
 =?us-ascii?Q?Rs669biB1l91KP8vkcInaonN+KXMuY2noicR0KS/IMqVgGInWAbzCAmh46/L?=
 =?us-ascii?Q?AQcwtZBDVIb/1gGkqehmVbZo4b7oFyjPsol7BAUI1sNrPEPEpu4duBpEhI92?=
 =?us-ascii?Q?VGssrlcOWREiskAcKYhTT6aWOgEdnRSvT9LEojMALdtjMHEm/19eXy249Nxn?=
 =?us-ascii?Q?kH2KfHrGkHLdVVL/w+oZhxnK03vUwMdXL905gv+P6tViJyB1Tfdps/x2QwCP?=
 =?us-ascii?Q?QAdnOaSv8htDtvsKhlHsXtinXt/71vGv0Qr5TLspWFVwGL3uFPJUoYknt5qv?=
 =?us-ascii?Q?YP0qtxdXMiMuO/9DMQlZjPRvxVn/2K+Odn5L+yfazEv+kaaZgcTG4gNugEa7?=
 =?us-ascii?Q?cxb3mP/7+bSyOhUFSRCZJoNG0UEMFf5p7xpeHisBkX2jkZ2LMVMmSFOfB401?=
 =?us-ascii?Q?bhqrxZltuY25dHEu+T1xGu+RCoxqDyQZjLp5zsazg6+uPQu3rJObcJ9oFLhb?=
 =?us-ascii?Q?i05G/s9QvSsO57WnnbBg+V8MMKix66sOJq/YkvdqKSiXCgxq0YUs51sJnyJT?=
 =?us-ascii?Q?YBxM2/HKPzQXRTx5V3Da36wisczs0o4oel7+S4jyKBNaYm9ET2vX1y/14BxK?=
 =?us-ascii?Q?veYZ/0EKzMBEt160kkQR2Z86BR8quLjvnRAwSeLTJAis8pFZD1z2oO8TFUN5?=
 =?us-ascii?Q?tMz7ui7xTASyB4ZKJ+ypljjZ986/l1pcJhBA9Vqn58ePOoVCLEh+kiR/Xxh+?=
 =?us-ascii?Q?aRm2aSLX+0rBhVRiS1szNqUs3lK0/O2K9xLQijGEkIrlqNoTmAYt26RhNAED?=
 =?us-ascii?Q?E7BIK4Fy3DaCy+PXMP8TCMXqtz8oCIVOQuAavfBdK1DlU+RFp/eJtiqJKxBn?=
 =?us-ascii?Q?ClHdnxBQdiWXeP+nJhji53vy1w8qiiGDmCqn2fND3ARRy3u28IgKGvsSgTw/?=
 =?us-ascii?Q?PZVP09S4RpUrO141Eaqvj666RF+y0T89vRmNUhQi7zKvRVsWCj5DuiEFPMxG?=
 =?us-ascii?Q?UAc53lfncKe9E406aGtXLrW6Zk10ihPhdbLIdfSthCcPfMbmED9eIc7bcYIW?=
 =?us-ascii?Q?k0gSO4cyi5cTgxalbwcWLu6+gZdv3wOgYoerfjR38oTFjJMwdfEO0xx0al1M?=
 =?us-ascii?Q?PDFcy96FIHef7BixdTWJvCM4ZOzjlyryTbgUCRrB7RweSalH9T3kTFzGEX5y?=
 =?us-ascii?Q?KHMLTgBlJbSKCwtjD8dPIWpdVGG9rMN+Ze/r0r+LKGo3Anl0KpqxRf2H1lM8?=
 =?us-ascii?Q?idJ9d1XMNA=3D=3D?=
X-Exchange-RoutingPolicyChecked: qZvd66wBAu6eDIGU/GXUfTU+jtaiCxbNvARDbBQiPLzvw1SKm5b8jwphkY4vuvGMmqaHJLh4+e3e3X35p1oPR10gTKQSDOYuTJc9O0DPlgYUlBbX5lQ4APhYZERqVNSBP1q3Aj2+fpWRYRszFNz0PUqzEQ5Z35t7QauY4G+k6FUSic74BNgFnc7UwlLCVGrthrpVAKa+h2LmkSFDOc+f9VFn/Q2vVIf1dYw/XBn6UvK4VuxcviKr3yT/vz9NhYsKry7PvxrVj/ts9qS3NaiZ3yifU+LEeQ+R3YPgsQmM8xRlvgTgdwlMulkcv2T/VSCoqnVbaBwSmQ9PYkY5Jm0ZGw==
X-MS-Exchange-CrossTenant-Network-Message-Id: c6791728-25b7-4b95-d8b6-08dea52542b0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:18.7365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C65Q9Lnbc5pa8eVOIPr+MqiPm4BxnpHjQeviaaB7RybNADrZkORHqckXVr0YiHvbpuog62IuLpGHBxSCwaWSIA==
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
X-Rspamd-Queue-Id: DB60F485499
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

Set the debugfs forced link parameters before calling
intel_dp_reset_link_params(), so the reset can take them into account.

A follow-up change will update the maximum link parameters as part of
the reset, where the forced parameters also influence the result.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 5d6d5441b54a4..4905d68b13269 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -658,8 +658,8 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 
 	intel_dp_flush_connector_commits(connector);
 
-	intel_dp_reset_link_params(intel_dp);
 	link_caps->forced_params.rate = rate;
+	intel_dp_reset_link_params(intel_dp);
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -766,8 +766,8 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 
 	intel_dp_flush_connector_commits(connector);
 
-	intel_dp_reset_link_params(intel_dp);
 	link_caps->forced_params.lane_count = lane_count;
+	intel_dp_reset_link_params(intel_dp);
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
-- 
2.49.1

