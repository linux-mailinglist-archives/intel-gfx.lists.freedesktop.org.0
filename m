Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id p5xrAxqu8GkeXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDBD48542E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83E210EC3A;
	Tue, 28 Apr 2026 12:54:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKNB7Y+7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3225F10EC14;
 Tue, 28 Apr 2026 12:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380883; x=1808916883;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=gfdcVL+CUNXbxhO1aT/qRzLT974fUKHtohm2GYfTWMw=;
 b=iKNB7Y+7r5vkpn65m+wj2UAwLhB6AwC25rAuI5VLK/2eiKZG+TuuuCQw
 DkoPOribDfsajD7O6ouJ9Imsb1ewGHgUwB/J/vzAyQIyelPlF+w37Pj6m
 BT7+eaZOtkwdYby5aikM3AWyd6otHw947gwZhAO1GfmJ2C7Z5p+t0vFRV
 VtvIzk359Koiwaotb5+T8uAdNDlgkSMYdy8lhAoRzYniJuhhHEECo8bKa
 +6+TwdmmeNnwUAroV6LHr2qfHpbKGx5imrtn6FdIlLCTZtMKOw9R5bIzJ
 MKxe1pDM1bQ6ToeruQFtgw15OHp+HR6cuWMnWWpMsWW8RPk7xkGj8XPLn w==;
X-CSE-ConnectionGUID: 0dC3v8zDRmWeFlA/EhZfeA==
X-CSE-MsgGUID: JEcSrBitRmCcEtWV9ItUJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893802"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893802"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:42 -0700
X-CSE-ConnectionGUID: kHyZN+kNSyiWLjVmhQNpiA==
X-CSE-MsgGUID: F4BWPDLwSjW39tr9f04qMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083552"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:41 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SFcGO/Y5wgDGD+ULfeO/pFltyG0iEC20jqld8spfKvklJGweS8I+KyDAlG6zwOgSzB9qrCcEffuduc81jJpmwA/r6x78AgZHdW19+dg25ePFIIsrDfjwNbSBfU8Qh0JCorJCoNfv+Fuxe0YWN3hTUsJea4zjWupjx/+OhhWU6IpPzZOgXhLv8gk+zxppMRihGv5lS1Gtm8fUpgsybXCsi0OjllIFZMK0cl48wQQaelpVij0vc3MLMxhVpv3L2UxcG6X+PLfSk9hmDIOmKHqwnr5eSr/B855CdYk7EzZotShzKdMfWbOLAVNmv+1QDM2EqrcivWOr/9rZ6fy9/H6qWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJoslJZ/qkLNGc+rH4YNcgdNhHHrzOrtZVo2U5Uv9lI=;
 b=XR8auVak6xifod6YIfoOHR5SiwaMjwoo9Vf/Cz3gJayev1d0PZA4e3YrEFxdEF4yxVGkqWM8mFpzdrdEL/RIFlzdfop9y8Tpg8myO5q1oBXepLxhaxYSV2nHr/PnJk57d6zuL16YmKPizR2QlTxn9ZSYfOLn9b86rMu38+O4k7yoT3E+o7bZL7i67EaHPvEGu+rxrz4dmFYmbmiXbYhKCB5GQEYS1cf484anromOdJhhk9weYhWyQjWaghZmwvxcvlk+wJpzvUV8yzx1RHn46mxd5mCyNSvwyzV0CV6LNmWjf6pcvzJBCPVQ3J5m+7vfn28FsAiJye6fNHalU5Mgsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:31 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 061/108] drm/i915/dp_link_caps: Adjust max_limits during link
 config update
Date: Tue, 28 Apr 2026 15:51:42 +0300
Message-ID: <20260428125233.1664668-62-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 54753fce-e9cb-482c-9245-08dea52543b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ntQET75YLWCgioml1vnrNN6wfi7LWnYjIVJ2U2213PK4L9ujaxNQiOIxi/mkljM26qkpo8YZ4C3668fSIXtWfZQqNpAddOygJVQ0S+3CQjWnt9lH1duQhdWyH293a4IVES4KaAjfRvVL1/lvqTbOanhbF0K9NvTbdznYr8KnQUBTqFXQ0LTmAwrEGa8j6W979s6LJu9l1/PdvoJgV8jJkDBEhqX5Tcv3bS/y+AJpq/VYpOLMxwKkwJ2alm4SsWE4Zn5dKTWwQwQ4nc5da3ErL+zi22ENeeUmL+i7WV6rn2BenGUxLHGWFOdMHHY4Sf4+5ydJo1cd7icTP9qOa4zuljzh5MEpvOQmyPESQjdByM+kBmqWTzZQV8HLUjEO5Q8YeLsUrQhaBPVKokAqGVKdPiO02+3pGpL36fYnhZj/VaZIhhELbYHvYVsgiZw/O2aXrLQwFSOlHZrQ/eKB3KwzuXQd4UoG1afu48GbfTxPypBTbcJ6u1xq4I6wqvcHLsH2IFIC0IBOQ7SEtHcvHAm7MegCXa38pIB2S0OINKHPQ9bd5Ghd4AcSnO8tAa1QxIZJjLxZmVFhw7d/lTCOQBLcu4BpU48c+vO7cv3yX1ObM7cZTzWB6uQeDDaW+5r8OJgeum7u19LM+VK+1ih9X71V0eXKwPxUyV/zDXgBDfDQ863c3RA/xtYQ5X/LF9pocBvGTcd5lZ6c5qTIGoWvpB5B1EmljgV8gsHD+v4d//TJRGE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bccWzv4QrcqYKIWXeek4yJSXMBSutPHdpiygQqfGMLW+5Ocgt2tVlvxbDiK/?=
 =?us-ascii?Q?PkQTdjb4BDf8tJBkU+8FJTLp707ETgCy6QpG+rkIt2Xrq+GSUErGctPapgCH?=
 =?us-ascii?Q?/kAxn1/PO2FzvlnljWQNDDVR/nyWS/qZUUhUnEE4Utbo/uom98Gj8Sa3cNao?=
 =?us-ascii?Q?pbsCVMCQobzlUBe4RkR+m2SwwdPEXA45GQ3WNzZ4SRYBAcPqsSS96Gy1NB+Y?=
 =?us-ascii?Q?0j3cacsaCrgU3ojNYzjZGU4UC8+kH0jDc2D94/hj4QASlfh2NEZ31jdT7u4e?=
 =?us-ascii?Q?dNDflo6dtOKafpUVntvmRDd1EBFnu4NW2dFJpTuXQ3GJUlwANJ27n84F0aND?=
 =?us-ascii?Q?nOfWEsVRL9tcSXYraUsK1Hr/vrGB3oDBf+XY0dhmLfEV0C/d2gYzohBh+rB8?=
 =?us-ascii?Q?cHJF6BOKo0T1XfT3xgFlincVSW7jaZpmPp8uHPjebUXt6KwvLXChhlABbiEn?=
 =?us-ascii?Q?H6ayN32Eh9brsXQarTssI3Thec7Fky6qCSzktUt5RNK6tazKlfrZE0VVvUUc?=
 =?us-ascii?Q?cRx/F+PCoezD1ayuOZa3d/eNxhJ/coHMrNIbSNe8esmEejGqWKaG1pd7er4L?=
 =?us-ascii?Q?A5BqkQAP1wcqBe+2WUwpo+oRNYtwIPFyE0BwnRUarilo5CU4Q55pN6EJkx58?=
 =?us-ascii?Q?b/R2EGmgSR2hrXleDsA9EtmpGiyvdVmNc4ddC4HQs2EcO0I0BYEyWH/GUAF7?=
 =?us-ascii?Q?009QJIX6cEsh69NtSdWwm/JlcaWZ/dlj8PoZv54mUP6CAl/3U4Tdh6uV/2Dj?=
 =?us-ascii?Q?IBbdL/DtHhrR1gITmGAszZCOahMwYmdrFdghZISQSvqf4hTv/DgSiZBzaEc7?=
 =?us-ascii?Q?fYgD/5uMgPVCphytAQgeUKd6OGiA4a6oFpaUwPlq/4bozzaq2j/UiE2WAd9r?=
 =?us-ascii?Q?Hc/zK4YE3Ebt+dnjaj8w1YU65cuLHch4KGMxWPLl7NQmqaE4sOhyw7FQTe43?=
 =?us-ascii?Q?IA8sNLUatAobQR8BY7cyXSf6RSGzibpUaRdabrO41svp2zTSx0tlhXjImlON?=
 =?us-ascii?Q?ZVfxyrPU1k2Djx0r4SFqniiotkwmoUeDG9PLu1cYgtLRpteHWaSyArfIrXlp?=
 =?us-ascii?Q?7fe1kbFfPf5ul+E9ceG7W2To3tzC5uOhSkT92et1o2D+leWPuz5KALEEp8wf?=
 =?us-ascii?Q?8z2venvN9LwB55fnsdRg0Umk2FKKK3MgO0GnW43BNK5qohj2TASBRqUGYA+c?=
 =?us-ascii?Q?RL9xvHujOSHmXFC8V02uR5LVgDj151ey6SHDZZChdk2lpgpBwuLyqqj298V3?=
 =?us-ascii?Q?MEEQYONcv47p89BLJPruCvPZxjxESWE8i9dgIe1g3CVuEac8J8d4NvX5h9f0?=
 =?us-ascii?Q?yNU2M6oGmC3rIVhOJD4h2OV9JWkzaIwNGjjPpUYdedzH6fbnM/ICpIy5qq2s?=
 =?us-ascii?Q?sbjEkgIgOS78rXDHSX356XSJgcncN865aA5oVEKdLZAGMkyqTJRDLJeQSq2r?=
 =?us-ascii?Q?Lk4XDZp3nSbXjLuKLAplgGTMcryemixTVu8/HrsRMh9rF9yKpyOX6F4YZ7L3?=
 =?us-ascii?Q?7+0nKqA+F4oApcpxKVos/HGgqcfDU2JpNikU5AlxdddUV24WvPaofNjI72ld?=
 =?us-ascii?Q?8G7JN0PXYJi7aCzo5EaOooGyzH3HcqtBZaasXKpNSOOHuqRf3amg5ddDGPjh?=
 =?us-ascii?Q?VSrQeFLqb26OSGm6+MLVdnf/rsP4sZQNIzuiu7clGIO31X8W7XDgoq6CvL3c?=
 =?us-ascii?Q?UOrUn+Q6nbGe5Gmq//PHw/ZIKW3AWQxUn+5CthN3BPc8XlQ9fTV0Kdv+fQ/Y?=
 =?us-ascii?Q?5/X2FsAzdw=3D=3D?=
X-Exchange-RoutingPolicyChecked: UsjWTXPnJ6LqAJwe1FnbeFtG51/06Ktr7czGVtpP+tvc6obNNE85QEOUNfdPRrdcYxG9wvzpdudxiWGMe6NaE54/Gu26fg5jG7uad1gQibVSxHA6hTQjROij64Qejrt3Elrib56PK0VJ2IxTaugcuQKegdA2f1DbFUvtcTyLZnwizFRIIcj999gZZ2nN+F8OXwUa/F/7VFINbrrD4HFsJxvEFuXxRoVWc7LFQ87nrnoqN2Gn7bqVkwJe0JZtX3QIP5WmB7bsaya8dd0CGRLbKQj8l3UGQ4J8xzD64BTlKBcb+dNmcT4gWb2t4FrGPWP3E7eD1q0wk2aKYQ7IFvjClQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 54753fce-e9cb-482c-9245-08dea52543b5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:20.3811 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NbZ6JYEZLEV/zZVg1K9tnWU76FoSiWrwp/Na6rRmwlI5hAhwc0hW+yp6H+83INBntanCbl7MxZqZXyVUMxxkUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 3EDBD48542E
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

Adjust the cached max_limits to match the currently allowed
configurations when updating link parameters to new sink capabilities.

The adjustment takes disabled configurations, active forced parameters
and the currently set max limits into account. Disabled configurations
are not supported yet, so that part has no effect for now.

As a safeguard, this restores a state with at least one link
configuration enabled if needed.

Various sites query max_limits, including modeset state computation,
connector probing, MST link probing, TBT bandwidth calculation, and link
status checks. This change provides a way for all queries to see the
effective max_limits consistently - taken this into use at those places
in follow-up changes. For unserialized contexts (link status check),
this is enabled by caching the precomputed value.

A follow-up change will perform the same adjustment during setting and
resetting max_limits.

Also export the allowed config mask helper used here for validation,
used by follow-up changes to iterate allowed configurations.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 132 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_dp_link_caps.h |   1 +
 2 files changed, 125 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 4905d68b13269..112d343c6d9d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -263,6 +263,31 @@ static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
 	return allowed_mask;
 }
 
+/**
+ * intel_dp_link_caps_get_allowed_config_mask - get the currently allowed config mask
+ * @link_caps: link capabilities state
+ *
+ * Return:
+ * Mask of link configuration indices allowed after applying the current
+ * maximum link limits, and further narrowing them by any forced link
+ * parameters. The caller may further filter the returned mask before passing
+ * it to the for_each_dp_link_config() iterators.
+ *
+ * See also:
+ * - intel_dp_link_caps_set_max_limits()
+ * - intel_dp_link_caps_get_forced_params()
+ */
+u32 intel_dp_link_caps_get_allowed_config_mask(struct intel_dp_link_caps *link_caps)
+{
+	struct intel_dp_link_config forced_params;
+	u32 disabled_mask = 0;	/* get the mask from link_caps. */
+
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
+	return calc_allowed_config_mask(link_caps, disabled_mask,
+					&link_caps->max_limits, &forced_params);
+}
+
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 					  const struct intel_dp_link_config *max_link_limits)
 {
@@ -279,6 +304,99 @@ static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps
 	set_max_link_limits_no_update(link_caps, &max_link_limits);
 }
 
+static void reset_all_restrictions_no_update(struct intel_dp_link_caps *link_caps)
+{
+	reset_max_link_limits_no_update(link_caps);
+	link_caps->forced_params = INTEL_DP_LINK_CONFIG_NULL;
+}
+
+/*
+ * Compute the maximum link limits from the allowed configurations.
+ *
+ * The result reflects the maximum rate and lane count among the
+ * configurations currently allowed by link_caps, i.e. constrained by
+ * the currently stored max_limits, forced parameters. Since the
+ * allowed set depends on max_limits, the result can only be less
+ * than or equal to the current max_limits.
+ */
+static void compute_max_link_limits(struct intel_dp_link_caps *link_caps,
+				    struct intel_dp_link_config *max_link_limits)
+{
+	u32 allowed_mask = intel_dp_link_caps_get_allowed_config_mask(link_caps);
+	struct intel_dp_link_config max_config = {};
+	struct intel_dp_link_config link_config;
+	int config_idx;
+
+	for (config_idx = 0; config_idx < link_caps->num_configs; config_idx++) {
+		const struct intel_dp_link_config_entry *lc = &link_caps->configs[config_idx];
+
+		if (!(BIT(config_idx) & allowed_mask))
+			continue;
+
+		to_intel_dp_link_config(link_caps, lc, &link_config);
+
+		max_config.rate = max(max_config.rate,
+				      link_config.rate);
+		max_config.lane_count = max(max_config.lane_count,
+					    link_config.lane_count);
+	}
+
+	*max_link_limits = max_config;
+}
+
+/**
+ * update_max_link_limits - update max_limits to match the allowed configs
+ * @link_caps: link capabilities state
+ *
+ * Adjust the stored max_limits to the actual parameter bounds of the
+ * currently allowed configurations.
+ *
+ * The allowed configurations are already constrained by the stored
+ * max_limits and forced parameters. The recomputed max_limits is
+ * derived from that same set, so it can only be less than or equal to
+ * the stored max_limits.
+ *
+ * A %false return indicates an internal error (either the stored
+ * max_limits was below all allowed configurations, or
+ * compute_max_link_limits() returned a larger value). The caller must
+ * recover by removing all restrictions.
+ *
+ * Return:
+ * - %true  if max_limits was updated successfully.
+ * - %false if an internal error was detected.
+ */
+static bool update_max_link_limits(struct intel_dp_link_caps *link_caps)
+{
+	struct intel_display *display = to_intel_display(link_caps->dp);
+	struct intel_dp_link_config new_limits;
+
+	compute_max_link_limits(link_caps, &new_limits);
+
+	if (drm_WARN_ON(display->drm,
+			new_limits.rate == 0 ||
+			new_limits.lane_count == 0 ||
+			new_limits.rate > link_caps->max_limits.rate ||
+			new_limits.lane_count > link_caps->max_limits.lane_count))
+		return false;
+
+	link_caps->max_limits = new_limits;
+
+	return true;
+}
+
+static bool update_max_link_info(struct intel_dp_link_caps *link_caps)
+{
+	struct intel_display *display = to_intel_display(link_caps->dp);
+	bool limit_update_ok;
+
+	limit_update_ok = update_max_link_limits(link_caps);
+
+	if (drm_WARN_ON(display->drm, !limit_update_ok))
+		reset_all_restrictions_no_update(link_caps);
+
+	return limit_update_ok;
+}
+
 /**
  * intel_dp_link_caps_get_max_limits - get the current maximum link limits
  * @link_caps: link capabilities state
@@ -449,7 +567,6 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	int num_common_lane_configs;
 	int old_max_lane_count;
 	int num_old_rates;
-	int len;
 	int i;
 	int j;
 
@@ -494,17 +611,16 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 				       old_max_lane_count))
 		link_params_changed = true;
 
-	/* TODO: Update these as part of the rest of max param updates. */
-	len = intel_dp_link_caps_common_len_rate_limit(link_caps, link_caps->max_limits.rate);
-	if (len > 0)
-		link_caps->max_limits.rate = intel_dp_link_caps_common_rate(link_caps, len - 1);
+	/*
+	 * A failure could be only due to a bug, the update function handles
+	 * that case by removing all restriction and resetting the max limit
+	 * to the sink's maximum bounds.
+	 */
+	update_max_link_info(link_caps);
 
 	if (link_caps->max_limits.rate != old_max_limits.rate)
 		link_params_changed = true;
 
-	link_caps->max_limits.lane_count = min(link_caps->max_limits.lane_count,
-					       max_lane_count);
-
 	if (link_caps->max_limits.lane_count != old_max_limits.lane_count)
 		link_params_changed = true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 2afc47c6b7e68..110c1d1e604dd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -21,6 +21,7 @@ int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_cap
 
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
+u32 intel_dp_link_caps_get_allowed_config_mask(struct intel_dp_link_caps *link_caps);
 
 int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
 			       int link_rate, int lane_count);
-- 
2.49.1

