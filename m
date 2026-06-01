Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBVMJENTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4556561C96C
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4AE61130BB;
	Mon,  1 Jun 2026 09:39:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KcUnwLc2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DDE21130B6;
 Mon,  1 Jun 2026 09:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306752; x=1811842752;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=vQHlShcGTDjT4CgJmuX1EvCHUEbls1uaA/QLob/EcHc=;
 b=KcUnwLc2oy8kftDvs/HFgX3QgyOpJSRWbLszArrzkDGOMd2nQqWvSYOz
 mTImQoqAR39JgZw2K+V3CcmTJ4fZD7gdiCWEZmIbcMkX0OgA8OLrqp5xC
 GKhkygkvjAJsqXzpm9P2319BSVreVrXq4r14TxD83iQHRA2EC+bEVcAIU
 8WRaoHXG9KXCdZWVp3NcWYfIjbZmN2Dn4WTAe5Oeozem1wT7rJLcdcMHX
 Kx91GZZaIYXNuVQanYSN/rpbNrU1wyN19M1Y3dZloL6ybCKj1I+SI2Cqv
 DGNQxlSlma4IWkbCJijmOlMaZP5sR6InyzIPr97bG/G7S7yTIEm27jW+/ A==;
X-CSE-ConnectionGUID: 3uojifP0S7m5eDm6sWeVrQ==
X-CSE-MsgGUID: SN5sjrWFT2u6MqTAKo+yFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094035"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094035"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:12 -0700
X-CSE-ConnectionGUID: t8sF3EVLSJ2CVlXTHS0U1w==
X-CSE-MsgGUID: rR2kASEZT3OcaVANs0UoEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160561"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:11 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ts94QT1oZ6qDyY7p7UJ5oQUu6bDsfuLcDWCOrmTTpb+AFv64oOlHF100FUIrbzdWuob2TNja/7LKbx5IW7ZO3nR26jE/gSuXs7X7OLydEMue986D8jj5SUk7U2Bh76hNz93bKFsN2Hsg6Q4AtJwzgropO+J/UUe3z+0bGDtj3wWbrYa+C2cV6hbMiBdhImyCleidSPdacQ2UxZwDebUBknHPMmjcUNw49I/DHnB0bmq0qoeLqGeu+XpAVhX/jkTTb1QAO46b+2fDGP696pwW+pXaqPwEqanrew6toVtW+iSfSekXI6nKthukl9lWeYfoqD4yH98rl3j6p6B3thT4PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M0rqWPYUnwPeRKuD5reQa1fvbwhAh2hUmZ7BwgAnoqY=;
 b=CjkL2kZq4axL5yt2wSHREo8OBa9+YVi6Nvg/9oKSOG/AQhuOG6BflQ1TgDUPhGCX2GcucyxAY5pO68yGUciG+wJZGEgMzgAu8Tmn4U++KCB4w9F99Kd+9NIBZZeBIXWrYBsvnCln9xL/zHRP1O3uw0IHlYC93ueMr8aBfbscVFeo3exCcpDcdJ6BEO2SyV7pHutMQ06JqkEEDt2iU9LujQh4CSCxQZoYpGUzNLJ+zYsw2vKc4YEYsj9RTlrAZhVgcZJ5uVoDDbFe/VcnyyEA/6Uo06up4ZTc/2VTd1yl2icgnoOzjlT/Wd0Pg+MXj6JFDNYePgYmIXiQ2ctTDqLe+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW4PR11MB5891.namprd11.prod.outlook.com (2603:10b6:303:169::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 09:38:59 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:38:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 03/22] drm/i915/dp_link_training: Flush commits in debugfs
 entries
Date: Mon, 1 Jun 2026 12:38:16 +0300
Message-ID: <20260601093836.3057345-4-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW4PR11MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: 07efa575-6d7b-4906-b315-08debfc19af6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: wow7qGh8sMghImC6tCYOxBDWGTTo6U5sZSMcHXpOedQoTIksCTDp+V24xKJIy8Av+wXMecJuQP4ZzDfHWHNJWWXd34b8ab+oOTFts9bSrwExAHyhdtvDOocpfuLSKyl1qEZIs9JW3wDJQfCp1d6QrI7kapMJDtH1TYv2EH60415d8W5Q0xuy7eTnOy6oQ6inWT0wF0b4+s/oIO3eoZP3V7/AxCm7DICFvjCUO19yXuTJO6T96CMG4Kn8xGKRbqw0ermu06IRRm0x4aQKIpNrYE356ZdKqeeePAKFXQp1qJ9oUjZrlayBc5kyNl4ODeyW2xzbcXhYfCJvgDlsjFmzX8tieBYmerhObkVM2QjKwLbKLvBqaWVUnncmJk+ookMJaAJUXP7qza2MfG4RK6se9AGduTeAlUZcLi18Vree1pUiachYffdNHiQaSON3rfDMAcz6+ca3gNL31WXqnj/4QoTVTZtEHZN4SLr/gRIXGimOkaRRWVA+3dl8XfGJLjIJ3WTgct4oJ6NFu2TKA7xLsb0Z2G3JYHHkt3wN5hwqs9hwIkhUmQndIfeLHI69hqNeyUii4owsUOsUvKIWlVtEVYOYWx6MWmpgwOGqDxfrAHQqqhkNedncyyF44VHyCnsJIFw7CIMRSTj+VINKT3N8WSawT40YyLl431SS6c5ev3fin1ltUZ6ikKWah8lR3yVA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UBJ0kTi1VDI4QzfoLfn/QDxEsDUNDCNCqGaM320qGdrV/dRQCRaiQglc2+G3?=
 =?us-ascii?Q?B3es0UYP+oURq9D0NFqGZ7flzgF9pH+NJi9+cvMjjdkavkGmGd89Hx7/0nx2?=
 =?us-ascii?Q?bKErmi+/hHoQz4/Y3nq8kvoEuBbfCfM/cLl/QxnOjOUMCBKBaj5vQJngv87C?=
 =?us-ascii?Q?o1Kp9B8tR/jX34HqvOc67XxYvfUkor3DR9svt/2eP1SHbgxV3kacA8WDwNuD?=
 =?us-ascii?Q?vw+1v4hC4ZjwsIwsU6RoKy2aQYKDLA9796zPQlI9X1XhX2/IN+sQ6QrOpUYL?=
 =?us-ascii?Q?DKtQSH1quhSSV1qmT1pbSenRUbSeRmVRcXWe7HcYMcaUiar46Zm7/pho4pM8?=
 =?us-ascii?Q?OyFtjdsbd9rELyXO+XVV9qF8kjEmbVQW9UKcSFrfT0fu03G7LMp2xzmqwRVQ?=
 =?us-ascii?Q?U5Ect/JxaPqTs8sxODnSQh44Z8QcjkrgC68mNh/EggRQm6jfhIGFhXBl+8ac?=
 =?us-ascii?Q?KTG0MauBL9hyXhNbNElbN0Bu35PAf7ZnXq/iE1Q/NKV74ygMb/qy5iuaLrdQ?=
 =?us-ascii?Q?ykQ8HICfjeMRQ8Z4wCGC4mdux5oSZLNmQXRpUTSlqCK+hz+o9yhR/AhBvWWU?=
 =?us-ascii?Q?HMZW7bLqgeJ6IKJp0yDFEzLsGZ8OW/QK6IQjn3w48pTNa8w5P94v4lRWVbw8?=
 =?us-ascii?Q?wcoQd2/JfbUjXY+cgwKZRUZxIXl/qW2lS4mWIYrdf4Dut0vvSaDAT5M99/tl?=
 =?us-ascii?Q?MGzcabvIApEN8GNNnhtKv4BXIS4FxZ+ZmqbPTBjBlexqL0htXA9Q1iF+/+HG?=
 =?us-ascii?Q?Hw6xQ777AM3pYaTNiRjI9tlcFYGs7aUMq2jOH5b1mLNRH8dhwoGtNEh1i0Nw?=
 =?us-ascii?Q?BBOwu4bjDz2Maue3ZmmNvWD/uO7HdFrEPQIG9JgQYTMq1OIEQuUovMLq5keu?=
 =?us-ascii?Q?ec88Ar2DNCscd9ZtWu8ZuWlZXHL+Jl5EoHHwnp6izb8eKk8mRibT9fsZbqk+?=
 =?us-ascii?Q?JyiC5iBjtB7LaoiNGfOCTdMJ7GIM0qVP0LMjluRCQWQQC5t4+z+EIPMDcChV?=
 =?us-ascii?Q?5QbAgl5G2Kmgo5+aD25CnZvX6UCvAZklIU8Jc0ds5O2c65uf2MfYKacve5JC?=
 =?us-ascii?Q?IaDkGMPENFatFZ26EmXAiEJUgt9Vn74Be0ZA38bJ+vlrb8oZGQaSNEhwW+RM?=
 =?us-ascii?Q?mzVidtvLxuXQ6xyXPGpj6+pRgE0YPhvshu7gUGsbd9ZebB1EjG0Z2efuQprO?=
 =?us-ascii?Q?CvY30wJNdCObhkcDroI3en77cshTKio5c9XuYPJv6Tp+v5xtwqAcNP4CSb36?=
 =?us-ascii?Q?uxi8C9XlGsxBB15ySX9bcqa/rDJf2ulNcx+p3KXc+rdxkjcQT8aMWLlXbgbP?=
 =?us-ascii?Q?If8an9OLTtjYcw88uqy18KAINoLVTxFtbXUvSF/fS4TumT27FikzxJ86oMcE?=
 =?us-ascii?Q?cvO2z4MT9B1eOqfMCIU6F7CK7O3nyyLc0B2msnmGTDn6yIW4M4+SXuejCE4K?=
 =?us-ascii?Q?LG75BXqNy4WDDO9PlRmV3iPoegQZPpRiKwhJ/Rzmoot5gIyy8zeK27APwyPN?=
 =?us-ascii?Q?YDyfF2vY9e3qxESR8Lih2sNGZRz1bZ6f7o2nRG26LigvYGu5H4fl1y/UXW6n?=
 =?us-ascii?Q?WTslm0jb74L98j+O5s/ss8FDIxRncp9jAtE4L6xtD2fXaQFSxlj5ArhWNcsN?=
 =?us-ascii?Q?eG3egXFFi3X95pc2neRP4XU8mUQDDzHZU3b2oHINL9yDjXWnn3uz5dNtF9Wa?=
 =?us-ascii?Q?5+EE0O4j82e9DVQEm8qzYJ5PsoJd/ZFj8PFmAjLPuukEJYsDSWzaC7qjXiQu?=
 =?us-ascii?Q?LmfM7jP1Qw=3D=3D?=
X-Exchange-RoutingPolicyChecked: IYPur1SXVqhLPCoSOLWBglbo2KOHmbSkFRHNtt4KbGE7xscwWy4kJogOkvL0vURlb/zTV7Vknt4e1A0b1fWljm1KOAKmZ58HTA8ohbW0joIemI999Py+eb0CgC/qtsuP/n7RAcZbFQNPuQR+n1DaHWGqJqtPbtU3Ockvl3u+cdD6vsmUnpWk7YgrlL63HDuNJ2FwPCzZmjcr5Rx2VN9oO4bRld0Q+hYHkVmi1oIoAbTICya5AZ/w3ZcViQE8xLhfYyUAVTmnL5P8Cnx5DRJCgpYO14F9N2NpV8apoC2FtzKb8bvY/sGCIweazTthzoOI/BDvTrkjdPOF/vUD3ALQgA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 07efa575-6d7b-4906-b315-08debfc19af6
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:38:58.5101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a2ToCLjD4Jzes3xktoH7JuSRflPWNoDf12Bp8JCGPZeUu+cn/fWWesDopFTCB4Cqszt6BoNgB4IZh3jlHQwErg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5891
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
X-Rspamd-Queue-Id: 4556561C96C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Flush pending connector commits before accessing the link training state
from debugfs. Access to connector state - like the link training state -
that may be updated from an asynchronous commit tail must hold the
connection mutex and wait for the tail to complete. The commit tail
cannot hold the connection mutex, so all other accessors must wait for
it explicitly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index eb75819a85c05..eea75a744b5ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1882,8 +1882,11 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	if (intel_dp->link.active)
 		current_rate = intel_dp->link_rate;
+
 	force_rate = intel_dp->link.force_rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -1955,6 +1958,8 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	intel_dp_reset_link_params(intel_dp);
 	intel_dp->link.force_rate = rate;
 
@@ -1980,6 +1985,8 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	if (intel_dp->link.active)
 		current_lane_count = intel_dp->lane_count;
 	force_lane_count = intel_dp->link.force_lane_count;
@@ -2057,6 +2064,8 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	intel_dp_reset_link_params(intel_dp);
 	intel_dp->link.force_lane_count = lane_count;
 
@@ -2079,6 +2088,8 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	*val = intel_dp->link.max_rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2098,6 +2109,8 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	*val = intel_dp->link.max_lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2117,6 +2130,8 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	*val = intel_dp->link.force_train_failure;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2138,6 +2153,8 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	intel_dp->link.force_train_failure = val;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2159,6 +2176,8 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	*val = intel_dp->link.force_retrain;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2177,6 +2196,8 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	intel_dp->link.force_retrain = val;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2200,6 +2221,8 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-- 
2.49.1

