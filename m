Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMaOL0KLsWnkDAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 16:33:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CD7266987
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 16:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8133710E929;
	Wed, 11 Mar 2026 15:33:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523C010E205;
 Wed, 11 Mar 2026 15:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773243179; x=1804779179;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=t6/shntzC70jWOcnXFC7FkVqndhNUFFvITTqOttAm0g=;
 b=PHVejFz0SbVaGiaYDHlB/+gs7UTWaRXfbLVfgAeGJMzScrwbae7iET/m
 R5FTNE4jc1Uo/1tNPjzMNQtTPcIcEQ0iQmdJqlGSgI1zz0zpdNwEgWbIV
 o2ZiTx3qRs30F2UeRe3VPlvXQi8nRvk/n7jXbqNwhmuF9jfDaGcKADh1m
 BMaCjzuXPnETHG2/NF7wFKAa82Ldn3/uF1qx00VcGZp6VHIgDkhibQbr6
 SEHZah5ZfEOQA+L8ADrQqkJaXRwLQe1bOHJk0iRRY+L08n0URFkvggDxI
 TSLSslDkPvKx7u+btFVA1vbyVc3mUs9wQHVVGY9EA1DWrZcgY99NKqqaF w==;
X-CSE-ConnectionGUID: Fa9VOv0kQMqawCeoCX0fxA==
X-CSE-MsgGUID: mRaGM7USTLKpJYspFelAcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="78208240"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="78208240"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 08:32:59 -0700
X-CSE-ConnectionGUID: YHdyPmc+SfepdAXTRPLGGQ==
X-CSE-MsgGUID: kKXPIuJNSyWjhEYT8n27jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="220676794"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 08:32:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 08:32:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 08:32:53 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 08:32:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w9AtY02u/ifj2Xql/W9Gh2L/E31yPSpJxj2TuUSymuGojUwZDQDIYmZhR4GIFzixgq8lXPMF4IFOkhdm9YvnZE5+4ynALKHs9BeIAo42drcTZuZ25FXLliDwDeJQIib6E3vMpI3K2Mr40DOWMg0DumE9YzD4Uv3L9F80BWhlnoS054qjQRc2DLKj31On9jcnhOEV03XzWPhotpao38Q+uPlQS+nqX/MmIAhONDhFXER4PwBNjvESJkXmJAmbQKbtFpZ9lKNbN/5uX77tT6pwmpzcAunNSnazdb4kRm2+g61NfC6CeyocTAQLnA9u/fv6GQawUIPOfZJn+exYycBJAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h3AAM0Fueg8pkmLeiAMP5lG7CyxG8WONepZkaUm81AU=;
 b=KPyu7N2TwGnejwW2tA8DWFvqE3ID1iamDpQcDshRg/h2lIbPYa3VIfxz1sh/WXn2dyWape3xcn4Gb3bahE7CDA4pRVSMM2IoZQfvY1/YyWT4c/CaMnJ80S1WanxT4mwmJodFGI35mAD8tO9dyk9uXnwIGEQOwRvcl+Pdq2OJ5hnEhSJwnVLyovI5ZqwXN/yoiIK3Fu7y6BImOHeAhGZd4oP4v/ZZ0Esh4ybqR+M8/ocfr6Sj3TdRQKiANndUCjyNtUVu9eEuqrjhDi8EyvmJNNbAMqrkq5J4EF3JkzKBuiGvJWMfkVa/J7Glxr37aXvO2AvTpdJGJn2cuEXbIFzmHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB5264.namprd11.prod.outlook.com (2603:10b6:5:38b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 15:32:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 15:32:25 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 1/2] drm/i915/dp_mst: Fix forced link retrain handling in MST
 HPD IRQ handler
Date: Wed, 11 Mar 2026 17:31:51 +0200
Message-ID: <20260311153152.133744-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0049.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:271::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB5264:EE_
X-MS-Office365-Filtering-Correlation-Id: e3752e66-c28b-4cce-efbb-08de7f836512
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: mrJxP0lLSO5u6yEKXU2IgZWJjAZSNz/ZEy9Nw5LHK4AZKl9fzE/ovRP1TU5IzHjKtMMGvc4Wu1qfndiH4DxdRJD0ByHbIbaZOHXcJMFHnk9n0lntxWz2pMOvc0YNKPr84rArqjg0oGE5At5i1zkoI4Ly3fboEq6plWxVoKXC0q79naCdcrU5uMiwkbVC3mly4da+y+qjHJkkC4gaZljydU3plYpGYCXnPS87xvo2ZBsWxgsFLj3MFGuFjk9SdyHkAjc7c0qFhP9yWvpmUfeYxwFuoY2BAX6Erfg9SrVoaPrrMWjSRluRc+I9cYIkepJ2VGI65OJTrNqOyAaqSAaoxhkFAUcgeGIP/D9sSWctE4xqHJRLZmRPvecbCrn7XG7DjeubSc7PmPHToqS1IBIJYAYc8VHt4+NitkdgUHFsakY7UW6/AaK0zD48FPiQVjr6F42NkN3h+9z/pWNUWrUvKsjjx03QRcudvAhm4reZR2TcGQIJtYsTiW4kX/FoOA4MvruCbzcqdngWfbrRy45+Q1cbFItoVwbUwwOgduaOKxstGanRM8Jcr+TNdGZCXUkW3saFCWWNeiUkrJVWL6DpqoaiMnWrJxOfmFmgHOwB1gIQDTA6w+6N5egnSgc3QynVqMBTlG2tx525h+6Sqrtg5+Vr9YlcaF198QSZNqnXVDFhqq/WC1BmOk1UYZMVa8vEhUPuCLGo1hLU0J6VZLHjMjtTsw41vanCo1exurFKOMA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BebKLoVTAmFz7u/9b9d4ZSiN4PSk/ok9mIp+Xy0pVQxEofBPGepoJ0i2ngAm?=
 =?us-ascii?Q?q0fB1EH2BQHZuv39sK6IsURtrYnCdLk9RGSFCQQZxV9PjzWCgqBuRFfKfGON?=
 =?us-ascii?Q?UwVd6OB4ciH5mRIpIALmnFb3yClrx4Si+haXlFT2ql8UvwEDBKM/cqsuG/Ru?=
 =?us-ascii?Q?S3Rz/NthFon4rx7CGk4Wxn53ipTKUJYGt2pFMLHYJLPZrinQ3NOxDwWve30S?=
 =?us-ascii?Q?DPhXTgijWy35DKlTIENFs+xjP+v8Ib2XEYHtIxJXxtyj5JFua/+HlqNtVa0e?=
 =?us-ascii?Q?QWQCFfcyFSiRzAKgDndQeChR0GwzNkHkgSgI4vR1lWgR3tSLlkJBtpfcGnWu?=
 =?us-ascii?Q?/hFV4z3huivAgUzWxSWReAXqhLVEpsdqAMltLZlmVAqzKFcfTwsE30f6gB/5?=
 =?us-ascii?Q?hLRGucmQ3+UQuTf+MK3HMru4AaY3aTwNQ7wQNi/cMEE3HVhRy/W9Vs54/d83?=
 =?us-ascii?Q?USu4Kmlki1W4PTvZ3xwBHpykgEx8cjzWpLQoivbwHT5xjO1o37b7YBiBDSrj?=
 =?us-ascii?Q?zgrQdGKofnwygytxueHSyHJc1lCoDlhpZPjUNIk2wwukQ5T1FwW6C6Q7470A?=
 =?us-ascii?Q?yy3JJ0k96YfaHn4klfxdBkpvgzQlIlo3MpUU1NDCIaYYbWGDFzbUQR2kO9mF?=
 =?us-ascii?Q?QYW9GKidOc7X1Q/c+Y0v2tYVvue482SRoGOCpnMPB/e+F417JcKnZkuPGbeM?=
 =?us-ascii?Q?OH5+YRk09RkWOmDrrtLY0mFDYGhA+hYaa4IAfgiPQDkRgENLDDyTQ5vPvdrq?=
 =?us-ascii?Q?3AndUnklbYFdPvYz1P5LpXazBqYv8KMzsuJ5EyQoZuVAqziQyXv4pDH27jAN?=
 =?us-ascii?Q?Q2UmYQRi4Q/Zz3esu2TRXuZgTENCdFOed7DmCGHafb3PE46SohPx1IneObNY?=
 =?us-ascii?Q?UzPbWDMwdVI/STavftctNwUW/+iyJITCeh2aKJyxkfa3i2+n7KKh/mbH2Fn3?=
 =?us-ascii?Q?me7zxsm1tNu73lH0HHxKWCIlyaNs6dXdkRIpCALFMYFBCmSJcT+HRhIWW1wS?=
 =?us-ascii?Q?UNXIjBWhMm3Z8trGFrCr7UzjQtzGM9rMrfxIOb7mEpZ4Z46ISdFCOHuLGtZ6?=
 =?us-ascii?Q?L1GHqh+JhSbIzMRN+zl+nuWeBkNwEbNPlE6wJL4rp3VBn1lwzwYQIR2fzsAs?=
 =?us-ascii?Q?79Av5mRXcOVFT35G3fkmm71aSv2JuB4VMxDYwB7EkefxAgd5TVcqwhOVOyqo?=
 =?us-ascii?Q?wV5fQ19ifrKWb/eW2RKQW+e1gNkEiXf80xjAE3tPTRO9O6KCRJp+V+NyF/Gy?=
 =?us-ascii?Q?/xQJxZAWjeULDyFPCt4HMRyhm2/OlsUvEcP1YtY5f0rLtn/YuhLmYqlDAggi?=
 =?us-ascii?Q?ddP0DOKU0octBu0voU0tvjN3AIt+dl+ZFOERn7EzsS9u3eVBOC8swJ0DOJWQ?=
 =?us-ascii?Q?JX0C44m+YeCRCofXGvwD/lqUS/dkLeKStDPkZPih5pXvmz6+LQrdjcTe+n55?=
 =?us-ascii?Q?cR7ABrB4CpsnFnwbTBSww6cWxMJNHnxZePnZWbuFuum8XEvBe0WN2uXFDkPa?=
 =?us-ascii?Q?oA6MdxaXmr53lp3DgF4KeCKpEoQrnIgYJ9HLIw4CmguMOSV2eBA+UKXIzQs9?=
 =?us-ascii?Q?vJYhS3yBEPopPX99r5xTR13aQBzhEIW4AHFh7gznOBcMQLYWVCFBZzm81vlo?=
 =?us-ascii?Q?xtq1DOzgEPdpFC6kqLV3dgrCuK98DLjdCADQDApazjxNCjgnIGtx+dJTP9Ol?=
 =?us-ascii?Q?8J/xaZ4cDocnaeUucu6LYqngBo4AlEEiFBdooYGsDgBIBcj1quJWHMn7DYoD?=
 =?us-ascii?Q?uAVhMhHM0g=3D=3D?=
X-Exchange-RoutingPolicyChecked: fB/1NfdtnCEPtMGscNDg9Sk0hF27dDYvLjY/R+pF6Atn8qoOjqkNqOGkHA7gYrKSseDMKK3jvHlVwChi5Ic3wxktB+o0tYP4Rnulpz1DJfOn+XEJEP9o15zhg5fmm9SPE+4aBT5KW1xkPFn9ynRGd1a6RXbHoZKb5kuFpa2yg0/iJN8oUtSJYKdP8XshdKebJu+7CGV7Zauek0bGpeKaQRTMb44wRAV+jQ3oI2PSMLwLMy76lgW8QrTHzZ0dWDDuHx+0019PdOgrh8xr0oM5BpXrUWPlZcCe4zN4isDicJGaVzxXuNhy7AgKIxIARy8TYNyxeyYdEck49BSoCO3NAg==
X-MS-Exchange-CrossTenant-Network-Message-Id: e3752e66-c28b-4cce-efbb-08de7f836512
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 15:32:24.9554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: khd+Jc3p3xgU/f0mv18scCoIpNMzKlqWtX74oCOpK/ahrVRHcOwZqAvlE/pqPRnKyWUdWpCX2DMDxEzB0y0LLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5264
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:?];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.587];
	DMARC_DNSFAIL(0.00)[intel.com : query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_TEMPFAIL(0.00)[intel.com:s=Intel];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 76CD7266987
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Handling of a forced link retraining debugfs request via the DP MST HPD
IRQ handler is incorrectly skipped, if the IRQ handler doesn't see any
HPD IRQs raised by the sink. Fix this by ensuring that the request is
always handled (in the Fixes: commit below by directly calling
intel_dp_check_link_state(), later by the same call moved to
intel_dp_handle_link_service_irq()).

Cc: Luca Coelho <luciano.coelho@intel.com>
Fixes: db4855d90363 ("drm/i915/dp_mst: Reuse intel_dp_check_link_state() in the HPD IRQ handler")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbb5e2f9c2414..2ae030eda73ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5575,11 +5575,13 @@ static bool
 intel_dp_check_mst_status(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	bool force_retrain = intel_dp->link.force_retrain;
 	bool reprobe_needed = false;
 
 	for (;;) {
 		u8 esi[4] = {};
 		u8 ack[4] = {};
+		bool new_irqs;
 
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
 			drm_dbg_kms(display->drm,
@@ -5595,20 +5597,28 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
-		if (mem_is_zero(ack, sizeof(ack)))
-			break;
+		new_irqs = !mem_is_zero(ack, sizeof(ack));
 
 		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
 		drm_WARN_ON(display->drm, ack[3] & ~INTEL_DP_LINK_SERVICE_IRQ_MASK_MST);
 
-		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
+		if (new_irqs && !intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
 
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
 
+		if (force_retrain) {
+			/* Defer forced retraining to the regular link status check. */
+			ack[3] |= LINK_STATUS_CHANGED;
+			force_retrain = false;
+		}
+
 		if (intel_dp_handle_link_service_irq(intel_dp, ack[3]))
 			reprobe_needed = true;
+
+		if (!new_irqs)
+			break;
 	}
 
 	return !reprobe_needed;
-- 
2.49.1

