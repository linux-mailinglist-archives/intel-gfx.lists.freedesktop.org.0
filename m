Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 346F38788D3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9171112C26;
	Mon, 11 Mar 2024 19:23:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Viy1ZR7a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17D7112C25
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185008; x=1741721008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=5kbhf1xbAIctSZ8eqpCnNc4Fe/rt3++0NZGwxm7kKJY=;
 b=Viy1ZR7ayBNN69Z2uWU63Bb5wyVvcT3Zbfr4ghqoW4KcUf591S0YveAx
 JksoL2nBsQKiZIbAS8/mlcEpa9oNUUvw7yl8bCrebPD9OSRyRP68R15fU
 iR97HF2yonDRhw93+S3QGS/N+dsCIoU/NxM/pn4KnENWuXtinOP19ylIF
 eDr4vtcZ/lQgtWaYr6n8ul4p71v+hvz3CY8818SvOzdJw0WV3ShOCtSq+
 Mczz1cPcTjP3ave5RB6fWf3aFle8A5Y01azxgr8dR+aQLWBHVuOaw5DlL
 HAtzAUIHM8ZLKk3p4NnNFXoOVlnDqKJukS2zjuzXyD//c0kAU7sNmjFFF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8627089"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8627089"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11344286"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:26 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i61uHw1GK64jCWfrj97vkJ4t1sY/ePv+/sRuYqm0HRTtTbJGwhM3KaTaT57DhVMnY6dBIdlvlDtfrLAlhGE5CfyG8yj2KR3Hc3Gi0sjslIHxbe83TGuMRzR+2yTm7d6gyVkAMCute847LZ48f2DPfP+yY3uoeSbLGkHce9/HAFFwB/CNESTZWvPhFLIPPUoHepQEbi3tUqVXp6y6f0GVGvH1VfhqdeFfYyCvQkh7L7wO8EL4qcs9kgGoUHch7hlK7kF/ifTUBOUX+JZ9WG15TWjsbQUjZuwI79y/DplKv4YRxFw0Hhl/CRyZ2ZInYtGBfTLFF5Tc4sul7hBt6HN02A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eEgnDhXMzqO3WTV37HUuAMsl+sCzS5xhJh1fZhnSdyo=;
 b=ZqspX2rRD1IrkpghqCT9epoPJdhQRE1I3EbUI3jQ1WxFm7Ey3diuh4uSOMzZ1P84W3uS2F0XIszGtntht84RZD7lkej8c+YKws4A79J8W5Uz3qiIMaUreHmXZ/yn+WQcjSFK0Oaqyqnm8ZTFT/8axQDMJ0oLxXL20SY4ZRBxKCr19LQvA47IfqvtWmpoUSjvbuZT2xcH3j7mWvc8bHC02JVjnU/Qzh6ycwh+H1Y1keil7iUcj04eJbgCoheEn9NIrgfC7ptyWMdMBTsOxZkQStb9iP2x3+rhX+pzEMOMpPuuSsq3lyMtVF5Pafpn7fTmLJjvNXa8O9wHw6Eb87xi5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4526.namprd11.prod.outlook.com (2603:10b6:806:96::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 19:23:21 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:21 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 05/11] drm/xe: Convert GSC HDCP from mem_access to direct
 xe_pm_runtime calls
Date: Mon, 11 Mar 2024 15:22:57 -0400
Message-ID: <20240311192303.33961-5-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0088.namprd05.prod.outlook.com
 (2603:10b6:a03:332::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4526:EE_
X-MS-Office365-Filtering-Correlation-Id: 38bf6f1a-06b9-4d51-aedd-08dc4200b6c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P54rz2LDZ43Creq4sh0LHLJRvv7heHiznv0Cx2oIiLLmyOjh4Cb2Y4kX9wrbf05qzm5XSiJFA/kwDAjQdC1M6XkJejoOnWPeAJKYcWvRO+XpLpDi8pdAxBQUNFaVIK4ZLETwGN6BzxEariryOvD0YPzYcS3gxIeJ+U/S/lJmQGf6rdn4wJOdTdQbKBHvraBY1fxotjm3Bz5LRci/Jk4VtwTZUeRf1joWggdLRpFUoKNBZWk7+oju6ohEw5cBnc9V60b28OnavSOJZ82YdxSg3AvCipJFb79Syx2xj25/OKifA16Lws0/ZFHTwPuyvNFfzaqKcobuaqHCAiSKnvvhQsvwnkWctN0TnxJMEht+C9JzsXhmBQe1AQLlFNqS02+AeUUXx4vpvHD7KWgKLIpm66QfVLxY58IqJ25IeYlSY+OtcoJkmszMYfhg3hUPl1/2HUQn1an0Q3I5GaWV9E4ID+f/Fe/fYGWY/yUM26IMm3I5mg1C3L7sHtpQaElcTmj7r4msNx/gYv86c70v8lmmtwwfPUhpunuj9dpgQDOLdhhpmaE7TVPbAaHvyfne+USjTPqq1zhee6x6VCnEWH0aHOAAb+C71imzzDY9F86FRfia+6wRDgwidJMwq1roRhjMZePYbUQ82DxJAUmfUoI8nR26I8F34/ay1zyelO7wipk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u92Ovrm62PPA2VIxWssUcJ2PXmqg75PCu6q9u1OstUoD8bgaDpZHcJQ/BUIZ?=
 =?us-ascii?Q?9yBo9bS2yQ8Y1KCN3AcI59Q4VTkePYdHaD4UolPG2R0tVlNAmEZdbUVmu8Bw?=
 =?us-ascii?Q?m6ZNZMBUsBomYAtxkFKxtnM8F1v+p6hbthV4nXh/TZpGyMTVneLK6cT4Ap8/?=
 =?us-ascii?Q?7+D41iQIM3dnx5Ltgc432hcdp1xnyogc1ntrWSMJbWwg9KrX2dt0tZeRjE7g?=
 =?us-ascii?Q?ZsZWflZugnKGykKBWLSHzIB1hEb8Ers75pBJ0GcYTUiYauGPI3X9hemKWtf6?=
 =?us-ascii?Q?ymhKNDwDiE1+8LdUKrT2kC6Dakc/yo/4Z7YS2luDJpTgsg7c4tAEeFBFI1nC?=
 =?us-ascii?Q?nrDbo7BUn2s8A5Iq37glanNoD5LAzi/Y6SHwpq3MRmi3cCrvp1YcfJnAAQ6P?=
 =?us-ascii?Q?n9JQnlUCiGpfTMW259dyFMFqrcmNO1R6Lm6j8p3nfHITl3qZPhC6PJEJmYs5?=
 =?us-ascii?Q?eIZ5Eimq0PzoTyHnEzFA3ArB7PMrfpho1XfnDjJfsWMumWWsAONEhNTs7koV?=
 =?us-ascii?Q?ya5zHobC0MXjn1UpFdyBhLcdLoTkoqMZdR8fn+SuopJL7Iq6NLJbIEbUFlR0?=
 =?us-ascii?Q?5WEgM37Qp1I/IRjPUtXmL/U33JSyZUAQcfnjBEL0qY6FNbo6HBFxhofeW/ap?=
 =?us-ascii?Q?KifTLlus6TRUM29EwuhUXGIbyj8xUZFawAeFTfhEO73vdhKCJ6IDKJn8lnff?=
 =?us-ascii?Q?dqp+FhIivN5Q1+kGz6TVgbMFkr05s792K9iGV6WF2fV6UWGD5vUWCyQC6SoH?=
 =?us-ascii?Q?SQ9cnk0MXK8w47EeK/v9rKWRNH2gx9qxZ2Q0cmYnlNxyqA98KZivjOPsIi7K?=
 =?us-ascii?Q?oFd2uvIbPq56LyWeeHYU+qTOPczfG+1LVEpsxsVWd5EIl+4TWdh2zeOq79KV?=
 =?us-ascii?Q?j+7W2f/sHK0alV/QvqWzQWC2FDG1ZYwBuC7hsi2GwOpmnCoaHSGb/bDflUTU?=
 =?us-ascii?Q?TYBOdLhaBPngSOcT1rMLao99qK4wHtuwTcCjqVLVvy8yn5wfqb3i8VpKX49K?=
 =?us-ascii?Q?9SAOSXcHNeYUMwW8qfQ6o4GOzr3oWV+qeMXB5pMmeVWeVaizIUKY2aIDm7ee?=
 =?us-ascii?Q?cFYK9qL/IkL+4FoQdkDLmdgQkt/weSyh/zHiN4ZsJnZLHfeKVXthL2if90dE?=
 =?us-ascii?Q?DuRVJ/7EYNzdAi5Vxi0gwNVy9AlBia1oWJyA1tRG6xCWPwCzbrK2iqOX5Cd+?=
 =?us-ascii?Q?KQU3xCuT8FD43Ev9VuuFEcOZ4GRCvIxHJHujd5mBQlFv24RgBA1Fxh4lRL2q?=
 =?us-ascii?Q?rLGG34CQWtfld4ZyEx/WujlZv+h5bcndJE54yOk7NFui4v5hMt95orOtJW35?=
 =?us-ascii?Q?fg5vH3Ugg+dQSzRdqSfmT9+aVFSvqr7L7beaSA6XwXcuhn2aTf3LUyUwlT13?=
 =?us-ascii?Q?tz8CYKIlQpUiBzPGlmueyZLdkiEcfTDLn6XZ8y1b5Yr0K/9w04tf9Oyo4xA0?=
 =?us-ascii?Q?g7Ps+lu0SI+q4goNEz5NfAfbQJxsJM4Lk3rg2+IMnYu5UKXyDy1GAO9jKqVe?=
 =?us-ascii?Q?F//vGNWb5XNUH2YiGxTxQhwH+jBJywilUBcmovbtVuJBIPH3ch/0yxONCEWE?=
 =?us-ascii?Q?1ulr3FZTyX3+cqY4YkAgN1H0IXbeEfKdvRsBpTRbyFyOQhFIo+509RxOJtyT?=
 =?us-ascii?Q?1w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38bf6f1a-06b9-4d51-aedd-08dc4200b6c2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:21.5671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TBJ5GhbgJu4ZTK2MFOLXBcvyU9aGiyjZLmMLWOOBumRTP7nY3NbFv3h0/HPkPXTMadc+iVnpDjz8dsrQD5vA3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4526
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

We need to convert so we can continue to kill the mem_access.

At this point we should be protected by the display wakerefs already,
so let's use the noresume variant.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 25c73602ef55..a221f0cf4bac 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -217,7 +217,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 	addr_out_off = PAGE_SIZE;
 
 	host_session_id = xe_gsc_create_host_session_id();
-	xe_device_mem_access_get(xe);
+	xe_pm_runtime_get_noresume(xe);
 	addr_in_wr_off = xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo->vmap,
 					    addr_in_wr_off, HECI_MEADDRESS_HDCP,
 					    host_session_id, msg_in_len);
@@ -249,6 +249,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 			   msg_out_len);
 
 out:
-	xe_device_mem_access_put(xe);
+	xe_pm_runtime_put(xe);
 	return ret;
 }
-- 
2.44.0

