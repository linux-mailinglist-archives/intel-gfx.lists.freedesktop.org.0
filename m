Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wP9mKbyt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC6C48523C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C1410EB9E;
	Tue, 28 Apr 2026 12:53:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WDImhT+b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C099210EB95;
 Tue, 28 Apr 2026 12:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380788; x=1808916788;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ReXNuxrCPIfnKFapG1/6/cVaUYK1/yvo12AztfNMzKw=;
 b=WDImhT+bAqxJuKJR+s/zRnNKbk3YykUjxRopmsrk+sg8uIV3nMWAMKD8
 YsjOgPqoPtoLeHytn5yM5IvMEfK7JSMFJ3zyuygTxnbyrdvVaMdd/Jjj7
 X5pgUn4xp+vMTTrwo/aCHQWL6QNgdH+1HjUw+37tsqUptuZeZgi5IQhjQ
 yP0K+rwEajfda1nUAookggxgVoYjEXHX0sDcyBy6Ig4Nf+vdczJZ3j4vF
 fjM9ijXf4TlaIQeIia4GKHY895hdG6j27mK4CeFZ2QzTEi/bhwIaiVkMS
 H8AEX7myNI9+fq83XMAlyOLLzRiX0473Tonp1ZcFroXggGlCedSXcstYO w==;
X-CSE-ConnectionGUID: fqcEZyRUQVy+ozaBcKaxeQ==
X-CSE-MsgGUID: CebiAEWXTreooFgesRVI3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203046"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203046"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:07 -0700
X-CSE-ConnectionGUID: Vl3lkDSXT5qJG+GdSThLsA==
X-CSE-MsgGUID: 06TZ9sABS5mvq4lesekn3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234243938"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:07 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:06 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:06 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.27) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NsD2w2JwnqhmbyjfSrGZL1OsjCJHzTtqnmAY5WpMF0mgWy4dj5NTi4Lj6ZX6bAjD16T5opVKWG3N8Rklp6peMaVbh1/SICb2e+NTzyyEqvOhz7k36gDhXz6g85iw/ZP/YnMNw4zjBJB+fRZM9kMkuwp7HzwS7D5N6ZAAMrSo5s6yqsD9L6nTkk0NwYBiKjPXL/36TuW+zSLlPWbtoxrs3uyBXI76BbKUUP1NfVdT621OhQClDcjU9ZzwDE3aA4Gyk+bhWSD9JFky/Oa43qEQIUkrNYN3YE/8jnDIsXg6i0dOVDdhdcLfwwy1sQJ7OgdCxZzfh5eeXUN4yi5bUsb2kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=csx7iDqU4tkvtzvxCk+Wj9qEtmUWvpMI3c3jRKUjabY=;
 b=bu+MaeNH+vLSzW9mKmZG2lJk7aj9AB5iYOqwXCV/MAbA3LH/TU3wF6ggSrMRShqDJ1aINmUqDi9pd3YEq28lz+Szs5Y0Z6Pb2hSloXtWkLuX1D4tYFjK6dxb1nVnJiUYOACeiN4dYDk1vqssbW7BgkmWlNpuWwYJrnhjXFpu/pZrME2K9FE5Q32TPpZmA8fXJD8Oy7Fh/pdoPT/s4jwzVQqzFo1LZT/0RDGZufTTAjPzXwvnME6gIYe7uDsr6Yw0lgwt6zeCtyd2ozdCBEfD7lQ+a2maRzBO084Nn2Gd6cavNewmXlLRHeGxaxvYwY/aWu+19WBpL+kzTdsfdJvcoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 014/108] drm/i915/dp_link_training: Check for pending
 autoretrain explicitly
Date: Tue, 28 Apr 2026 15:50:55 +0300
Message-ID: <20260428125233.1664668-15-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 93d8a878-eaf6-458c-38df-08dea5251623
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: MuF6USu6YPOORnJRF5WReqRhD/mIUP3025IgZZP0ab+kYDBvr7NT+YuzMno5CEc2bSIietaCRQBm6+Jwlssr2AlFMq6sfrNrgqYlkpncdr9vEpkTbAqCArlA+PQqVj5twesk+sUVOqHk8h07cxOn4nI2O0kAeppQXVPBgkUDJSwq6foFnQehnV0OhFzMmTi/ffn/CmD6LLliWshTwtO0BEROKJABBsKqSsjtmILsQeEWS1Hk63YA5tJDNKj0WPwHRlcrDlZmRrvXJg6l+E0FEdMKTAC5xt0UgakokatDTzV5AexEpXGt9Q7vpZxRxJoasJKKsM28NbYcd54KVWg1BFMKsao2iyC9whKsSzUQCCxeB1cBELDHGtur4mqnnc29MpzQJD2+Bs7vVEBWM2k6PRqH9c2gg7g5UsblmbOds+IJa0thDuuqLaaEnFIo5kN4hjvojJldc0sC+67RUD5FB+51QIyh2An8ic+cUSa2X711F8WYx3yyxfWgfPMiGv3sGVRK18/zylQgQk1KkMv77VMu2ltky8Ji8jo9Woqm8JKLD+niLiyE82RacjqlNnZvtPMNArZ+3Y8vR4642r8VMPxX6wj7EChTpmnbIvVt7sYEEhq/sH01v47UBoPCFvcneOQMZpCJMR02d4vvAlHZEkyy7KSS6Jts9XH0GfUTYkXp+XWKZNvlr85b4C0ViRAnnLttvpol6wlocXahOm3xzZhpxAQq8a1v8og7SU70UMc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zQWCpy6x/YxJ/KSY0GC1/8Fv8fDTVg7dDZhcCIge8YVYx5iWs4vPnLR4xJGS?=
 =?us-ascii?Q?okGdgJg8z6Mc5y8EVbDIJYabS2/sUAAlGUfsBbrb6Lx2eIYOc7aYhCcJ4EGp?=
 =?us-ascii?Q?8o7lZ8qrerG/agkyNnkxEUxflwFgIWC1MmlkrTYUDFRVDvmPE0qPFaY9CxIB?=
 =?us-ascii?Q?gkqi1JPGepxybvY6KnByQ1ML3MBH1BNa2Cokf5kKIxmjRv287rBeitQ3e1ub?=
 =?us-ascii?Q?rFh2zEad7o3bHkrzpQNw8ShZk4upoLryT9X9CmZzqaerx5EW17nIhHmX4zgV?=
 =?us-ascii?Q?gMpP0ejL6WAPydDgbktwQG+5aQ2XZFIY4VaeBOjhIks5NegcP17MQ335s9NO?=
 =?us-ascii?Q?eRPkUMCLNLplPGk0dOgCueUJULADoiGDW3fN5gJkFmsXKSHlFeGi8IvyBpqX?=
 =?us-ascii?Q?wqyLxgbfr5QBpPiLv9dKRrRzvLIQWOx/wcF/ykkbhV562dxTcKPutyM3PxKk?=
 =?us-ascii?Q?44uDUYorRKljXxe0u+bt30R/qqGy8ScOQ5Ubx/vknmNRHulnm1fNUPOxwC4F?=
 =?us-ascii?Q?BtoI8TxNQ8rxGnUTbD2ylBsGDkFdKrFAZ/l0sxL/S3elF173ZsWIX0gK0/L5?=
 =?us-ascii?Q?6awQ0l5HC4jylSng2JC1pUk2AkXDajpSPvgSvoUeXzSWCol4hQ8/JGH4A51K?=
 =?us-ascii?Q?wEhiZCPgy4bBOp+qEhD206N0VcTtS38Xchbvy+lrPk8+lkQqdr1P8ttJSG6v?=
 =?us-ascii?Q?VMr4msPWytywjqyJRWxFhvELgK4/ZthiVCp4SQXiCC3JqdcCPTcuUEJgBA0Z?=
 =?us-ascii?Q?gSsOgRD4PNIktGB7ofM6lpGZjE34GsiWsmeo3PeXofXK8FkU/KySRj7VrgdG?=
 =?us-ascii?Q?SE7ghYBQg16hH5OwsbV4JGmQsmXyJfqIA9ffd0WgJtoHxFB8Sp6d0iQbUC2/?=
 =?us-ascii?Q?xYGjitmgm7wD7AomEyQl2TUzvODe38Y7tFZu3AGbP2vDCIItb4Rn+Ief5eb6?=
 =?us-ascii?Q?AqVq183wzEORO2iOB3aDU1QMrNrS42sxUvqcyig1CTBMBtgJjYpN8joF9Yp7?=
 =?us-ascii?Q?DSHz/LLGvxgWlUmhgLQQQ12pzQZ0SqGm52BIoVdz0EUqBXr1ACL4IR9nsjW4?=
 =?us-ascii?Q?ngdhptIWDhu/u6NHcKLedasMpR3Be3X76OvWoQqQtLoJh34g2vkwmdnnXqjC?=
 =?us-ascii?Q?cqUIbotCEYHJh6nJo5EMqa2EEv3N2pfvIddbzbdlEyRPNKXFQTvw33xigwOZ?=
 =?us-ascii?Q?IrUgzC0jZe/UjBORrTOMSgdBLF06eBoZiaOutQ1jCDaaulqS4VA1h5nUyp0S?=
 =?us-ascii?Q?5lcOUSVEf+qDqdXhRH8CXCFrHucXV5OzXlYFpUO34gGayj+kKe8XweQCtpWS?=
 =?us-ascii?Q?nR9dYCpxKs3cUp9eWauKP01zCv4C9Ip0CFfJnYuu0zH0pcqNc/iXPV58gtCX?=
 =?us-ascii?Q?t2+Ke3oLWEMpjnrbRmZIVWALGh72Wr4Te9a2lt0nhds6JpEXMGluxzY/Zcrs?=
 =?us-ascii?Q?3tvYqhoTNZm99bG11P1pNRs1PGnhdn45ixr3bzgbjegf7L8/EvA0VQXlmTbJ?=
 =?us-ascii?Q?Ab6mdQ1OUt+rKFn/SbeqafKCnMDE2Hdw+howpaSwj8jou1cM7QStjtmHztu4?=
 =?us-ascii?Q?g4ZHQX6g9PwoyagrJzxYVEjUT1rgrZsSVF91yj8/0UA2ahRWdIiZM0amx6AM?=
 =?us-ascii?Q?t8Xyesg3jAbAfsfWzJ7baX7prFYHBYyzgWUMUIVvZeor7mGM596/9AwU4lMQ?=
 =?us-ascii?Q?xhxZfkZEascU9/rquvjJaU9/eeI8oUq6Cp14mgo8GcAkiiD1qdwZgUcVPhVz?=
 =?us-ascii?Q?1L6Am4Gt8Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: dJH45ryGiVxJp44etndPFAv+DhQBjjWadQ9ZYF8nuJ8MZVIHpTUrgRCnivEATKLaVPBrOTqu6Rk2vmkvRf9VJ4KkHBqI/EpSAfRNr7051gsEdpVGDHy42K7VNSgLDTtdTZrazWD73Tb/rsvHd9J2HAbz//avW0zkNbm3eHOyBc4lQ5i7cE0UZ07ey1N2OlQlP2kr9X+BqE7ruCR/pUDTIiSJ9TYp+B/vjnQDumIFUjGwx68r1ZMVRgeCkEtwL2H1pqtWh5X57kVKHaDDe05qV5DdqlBNVjdNnAO/Eun2NrRcC0qOvQEqjykCAVq0cfEvV1DlynPYPq7e9/mDxfSEOA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 93d8a878-eaf6-458c-38df-08dea5251623
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:03.9120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0SobzGdgCCWV34xRBqUcMRQd9//iWDIyQu9cx/UXwzXUKkf3KYxjK7lTMIHK8bh/CnHYM4OzvSBGzAiYLzpUdQ==
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
X-Rspamd-Queue-Id: 3CC6C48523C
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

Check explicitly for a pending autoretrain by matching
seq_train_failures == 1.

This makes the actual condition clear, since at the point where the
counter is checked it is also below MAX_SEQ_TRAIN_FAILURES.

This also prepares for replacing the counter with an enum in a follow-up
change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f58bce3e0a1d3..0c5b7816dfff9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1290,7 +1290,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 
 	if (!display->hotplug.ignore_long_hpd &&
 	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
-		int delay_ms = link_training->seq_train_failures ? 0 : 2000;
+		int delay_ms = link_training->seq_train_failures == 1 ? 0 : 2000;
 
 		intel_encoder_link_check_queue_work(encoder, delay_ms);
 	}
@@ -1991,7 +1991,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
 		return false;
 
-	if (link_training->seq_train_failures)
+	if (link_training->seq_train_failures == 1)
 		return true;
 
 	/* Retrain if link not ok */
-- 
2.49.1

