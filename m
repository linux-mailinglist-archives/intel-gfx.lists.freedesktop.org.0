Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNG4LVdTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C58C61CA04
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D46B1130EA;
	Mon,  1 Jun 2026 09:39:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kK4Qv0yM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95D11130E1;
 Mon,  1 Jun 2026 09:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306771; x=1811842771;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Bl4PqLGXY0iPm42EtY/DTqn6lN7H+egj7Qxu8aEXVl8=;
 b=kK4Qv0yM72Y/Jdkc8L3mQylTe6HhrFdNq832dWBwdQ8yG8sKvzoRbdyy
 Ooj2JsCRpTLfiVibzDZN8f2vapTzFJYfgCE4oJI4sN+0uFe+XCHIivJ+h
 e9L3Gu0afdePB+nFssl2LwmB6p1hzd10AOEEccUsMTzX0gM/mB2zEiSKs
 XESizTGGAP08TqKIJUKT6EGdaizkM4wtSE2Fz7HB5rNuT4iuXk2Ym4lbR
 ByiYqmlgWdLPo8v7Uq1smWPwe+4InR51k3gZ1vDV/JSDYOW/jL5Nlw40j
 gA4TJltT/ROYDHDo0Q7xEFQr+ohqY5/F02W9zL85qL6nV30JbXVBpxNGC w==;
X-CSE-ConnectionGUID: WNWojDMrQOO+KCq/jB8JMA==
X-CSE-MsgGUID: Y9axCyNFRiatnQQKhmxGlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200604"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200604"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:31 -0700
X-CSE-ConnectionGUID: ObrOmWvEQN+04+VqiFJf6g==
X-CSE-MsgGUID: gMqYVyV0TLaCwf2yUiQTCw==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:31 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ARX5hNsJ6EUfWtMRWmmCAnVo9yzxUKOrlAdplFjUhkKV6iMTb0mVGOClM7heobNZHmOxCILPEN4l4MXI/kXz74b/TDu4ay8dkuJ1cuXwEYTBnR4pF8kRY5EvXB885QpymTcUYcz8AZcwecmgN2lqt4aCp5MESps8C97KSe9e++fxmIlZOExDKUqWTcVq1qJWbtBWw8tKW2LhYVIzqFunBcIrPZVxnbFEf6Co+B6jPhyx3VAapOuebPqu+lthgpRAJa2OPwr1Liw0gSAL4KwQh8/lesWkC8jnuvJTW4GdzNCQFLHvOl8bYMhwlFBsvZ9WBBt/QVUBvaViPKDx4gf2/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kXpsupp0ZBW/yelPmAb1DIavC9MW9aq0rQwWOkUBB3w=;
 b=Vhok5zNtFz2GRaK+RE+l+LCEVk7eRPl7YVdHCMhxIzSYPVuNItf3jIkMOOuQJREBtp1Orck8JiKhMGnr+MHuvl78QYjm5CLkB9dqgKRIqLJKPzqi/9NZfYFT5bHCmJKUXvlK885GMozsm65bN7SOoXJrXee9ol/hjmHhQ0LWjQP+2TAU5LDdC2C1Z2rEZPBzrT+jEADDE0eI4xsw4PuZzmi7NQxD3aKU6ASv8I3YhVKl73EYChY0tbYNv3uFbMQfpB1Lf2HCuxrYcSPylr3XVSJ49TLwWihI9j3TYUeMRINo239OQ+BiSEbF1zdz5ypMd7WCDR/2ygbANPxDT2vBHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:19 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 18/22] drm/i915/display: Simplify
 intel_modeset_commit_pipes_for_atomic_state()
Date: Mon, 1 Jun 2026 12:38:31 +0300
Message-ID: <20260601093836.3057345-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: 2700c50d-c72a-44ac-40ed-08debfc1a72e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: L5EE99ooUAQNYGGGYjwED2iwkwAh+JYvkcd3d5LSygQ8fpA4C9Lb97UWXl7pkXPtFv0w2IJN1ZB4b61CKBzx8401gcsraDRGrAZs3Tl3V06VYTvnFavQ/OsKTACsDLkPh2l+ACx2hyDNG9nVuwJGPfY+p8ZAQZUK/4bMhuHoZuUlfELIGob6kCLeuoMwR+V6/Tk77Glb2Jbz+JP1tOiVQW0/dCssytlSPDOARqzn4VI+0JAql33XeG23SRnybKzIrs7KWZjH5QMNx3dN3nHNL6NH6zd5py4sYxE77IlnZCgvar/V8cBo+BWTgiPJC9s4FFgJLudCCdjKMXMrddIWXG4k1wU+Sb1rynI+b9TH8TrU1uhVzQmPxKU5WE6qiP8nTcv83Yiz/cUyZyGF4kWwqPYyKVYU7wy8IttC8Bo7B/Bkircm7qJ3eWyuRePlVOSlBe5BDMwth/Pc4gO4HcmQIemrbdxj/c0YR9jhDiZK7TCOYnFAqJ0VlwlZSdiQGTird1Dr+kDBPP/HR5PXykBdFAZVEYHUg1Bud1T7PGQcyOhk+cp4RvRqs4H7bb3eXgaZMyJpcStNLTxSCxZiIAPb9XqXiXwT8rb8zVKEpgI+N/yqH0tVnL0CBXP0LnZDXqqdkqTp7ntKRWA6Zv1eZfBHy7K/Cw0F7NnCyBII3J0YvObeOdlGeqEzcvrS8hW1cL2T
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AMdLO03f4StmzzNxn72hKrbcBMIY3w4Q3q83yatwBUAVzB5NKVdbiTOIUU7I?=
 =?us-ascii?Q?ZdYqP1pIyX5Ta32vC+dl2uadurKpQKVb4aPWRARDupvL48HdHfqVAdmaBn61?=
 =?us-ascii?Q?ZwTB+SAZtrrBbb4r3I68ipUT3ZMkqvIkhsuZtaoClg2mhT7OmoFk2ocPqQWZ?=
 =?us-ascii?Q?Djsr2zec8yFMtpDt/P/B1GbCdTfF9O8c9oUs+XPWvhoJIzbI8f/qpj9MaWFY?=
 =?us-ascii?Q?Kzs3y5F5mwPknSqYtQddGHgukRNFETxQksrf0xZwp+mmY0r9EOFhfpCDtyAk?=
 =?us-ascii?Q?S3TcRRV8a3oz340h2eqcz4kYtPcsPOXdEYxrgO+CEjt/VqucisygRCro51af?=
 =?us-ascii?Q?2wCoXX2HMZZWZdBFxICTubq7LbP3jtt1vcMqKZNaMsji25E+aOoJ9x4SxnqT?=
 =?us-ascii?Q?K/zblPlREFN+gS2HURq3lGv5evRW5EHfh43gcqS+PRyjtfN7idjotl2E07tf?=
 =?us-ascii?Q?9tFGPm3Jjur8G9lOoRVr9Bufk91A0ZyIevSdRLskC/erzuJdA4UNj2eN5CLI?=
 =?us-ascii?Q?6TVliSBi7Xy5exeD5xcrkNcr0oslUF6f/YFFuyf2/jo6yPucM7UZoSTd6FIe?=
 =?us-ascii?Q?cnlyNgIKoezdVAJ3eO9iROktnAp0F3k+FdP8BcNnDgW1qeEp/OviqKzWAXab?=
 =?us-ascii?Q?ADyuNwx/fmGuxn3xEHljdQVewx0qHpJsaqIEOICUvEI+WszihoHoTwlvxkVC?=
 =?us-ascii?Q?XMKg/l6AVQpbz2q7grJkZcj/pyLY9Zv2dMOuRYu4Bu0x/b+/MTJbMSM80Tkn?=
 =?us-ascii?Q?pmCtoFNP+kjJR1yOEXL9OfHPScMUpKjAcLUXxaMuQuXiC5zvOzzs5PYOylxD?=
 =?us-ascii?Q?4ATOxgsNbyCnO5ibLj3+ofTkWE0PVKQUzhrsA03C99kaJrD0OSIHh+Lf/NeP?=
 =?us-ascii?Q?vGh3frmTcWzt8WzZngyYg4gfpAiJLsn/jTtgQ3tBTU9eiK0Lqm1lMeM6yidr?=
 =?us-ascii?Q?czJEKSnTDauHMuLU3GLU8SrZgUUOvslGFzyXeKDapkPJpMbfMkD2ccJHeH+k?=
 =?us-ascii?Q?v+S8wamE/qkNmzaA2Y0yY3Z2aQ/eR3Y4z2uiFymt3kqGyoDP6fM+xse+5xpM?=
 =?us-ascii?Q?IYaW0m1w/GLJl14Pbs5Ky6OiA0nEauOreW8aHww3OliQ+0eh7pIYbq2IB+A9?=
 =?us-ascii?Q?wI6hN6VbFdAM6UjJvMlxLdpo59d/GgIgw3/BG5XrWyuRurKIvRs3NlXm37di?=
 =?us-ascii?Q?XdVokbqDF98xl5x3oRIQRGh0AZw07TVogl1T5iv6KbN+s+VCAVEc7bB/yGm7?=
 =?us-ascii?Q?Ak8qFk9M+RApX9tES678o3T3QJaTSD4hI9urkWZX4jx4gTYzrQfa9ndhPzth?=
 =?us-ascii?Q?biqymihJnsrcH6K/+czNReCsW8Q2TjaNIdj+D8UJbpKZP4kawh1zR3nZlt9V?=
 =?us-ascii?Q?rJ3gkZyRVPiHsHhnkgBmHYqPuLwaqHNUVMrvNspgj9XT4wPkKywkao7w+/zK?=
 =?us-ascii?Q?63UxH/Uvl7YFi/UJEAZ/DoWJtGdgMVoLxT2aA8n2D2lH4Q4tNHNe5DS21WQ5?=
 =?us-ascii?Q?UPj+V1BKPmp3TbyFh71OVdiC6PnoZs0fi2DXnrB701ZLds/psSx9ARw0I9ED?=
 =?us-ascii?Q?YRGtHho1yiTxfU5m0LmXesPnI3sexUsqAr08J+kLYkAFGtik8/nTRIeFoQED?=
 =?us-ascii?Q?T9v7JHRcklDq1XZJI5VGd9Is8zixRSyU8bJHlP9FB/z0XlmnpZuKHvZPuqnU?=
 =?us-ascii?Q?Av7eyl23EQdY1xRJM1DsQr44v6nRZ4kd6dREWAG72hNRvv3BytxwtoNhAHxY?=
 =?us-ascii?Q?80JAwIo2UQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: MDnpLgNrJMZLOAoNlae12DAYVEOElWvzULUwgSJI7koom8z5y5arPZxX6+N8wcWiO9FNPFNE7Yg4/dl/dxn452udDSb+gvAfPVcP1YHOimXzuz1ViGMgGakDuDPdth6HPgz1EpEF4Z+C+errJxFqMT65WZiGPkOkZUvMpyt/NYls5m1d/Kt2JjKNFEm8TfVf1Ec/3CXnb9mfhZeHOqquBzK6RlUtccUyIxe39LyTIZr55qiUAAw5NGJe5PykXbvkWhis2jZkOEHnXuwFF4Qxaje28s5XsVugwJRMwrTjgLNXjT5eRUB4iDpZxwYlPk4LZeEKtcektYhU4wU5oHg6fw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2700c50d-c72a-44ac-40ed-08debfc1a72e
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:18.9236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Rx7Bq3nldQEwGzTT5mFruexpkXD1GnchvRRDOihN2nCT0ZZOSmPZbXxgNizSL9UpFb7woq19VK7SCQ57zyA1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6C58C61CA04
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Simplify accessing the DRM atomic state via the intel atomic state
in intel_modeset_commit_pipes_for_atomic_state(), which also allows
dropping the cached DRM state pointer. Also streamline the success/error
return flows.

v2: Rebase on upstream drm_atomic_state -> drm_atomic_commit rename.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++-------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b15c28675d288..bdf02b67c1d81 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5658,33 +5658,27 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_modeset_commit_pipes_for_atomic_state(struct intel_atomic_state *intel_state,
+int intel_modeset_commit_pipes_for_atomic_state(struct intel_atomic_state *state,
 						u8 pipe_mask,
 						struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_atomic_commit *state = &intel_state->base;
-	struct intel_display *display = to_intel_display(intel_state);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
-	int ret;
 
-	state->acquire_ctx = ctx;
-	to_intel_atomic_state(state)->internal = true;
+	state->base.acquire_ctx = ctx;
+	state->internal = true;
 
 	for_each_intel_crtc_in_pipe_mask(display, crtc, pipe_mask) {
 		struct intel_crtc_state *crtc_state =
-			intel_atomic_get_crtc_state(state, crtc);
+			intel_atomic_get_crtc_state(&state->base, crtc);
 
-		if (IS_ERR(crtc_state)) {
-			ret = PTR_ERR(crtc_state);
-			goto out;
-		}
+		if (IS_ERR(crtc_state))
+			return PTR_ERR(crtc_state);
 
 		crtc_state->uapi.connectors_changed = true;
 	}
 
-	ret = drm_atomic_commit(state);
-out:
-	return ret;
+	return drm_atomic_commit(&state->base);
 }
 
 int intel_modeset_commit_pipes(struct intel_display *display,
-- 
2.49.1

