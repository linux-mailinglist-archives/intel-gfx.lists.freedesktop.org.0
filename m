Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICPlHRyu8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA9A4854CF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D611310EC4E;
	Tue, 28 Apr 2026 12:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h28Jahub";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00E710EC36;
 Tue, 28 Apr 2026 12:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380885; x=1808916885;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=eeVp/PyJ9OflRyDv6qV6HG2lAdhXdsf3YoK85ZnXuN4=;
 b=h28JahubsCUWjpLiu1WOHIJGWnKreuyya0JxEC/ETuazgXLypF+OPcj2
 4NV5ZhC19jIuJx1ol1Psv7ZWzQ4WRs5PdHy80igCU32RhJpz0D79dORpS
 rKLsHGZc3THfLqS0qOLs3TZZIzp9CSXgHcNFtPxk/iEV8Coms+OvQJbFF
 zSFLVJjxY4nPUuVSrBqFfrVpXILg5zGOKFtXCUf8SsijkR6VPtgz3yx39
 JNmBsMd31ZMibPjhEiGWNF7hJAF2YfaYyPDAMFTOCwMt/Euexc1TkROZ3
 uBcaNAN41PPN4VkeMzHoHwuw22I/dqa34kn2sjHe1XT2yI92MBj8FH7yv g==;
X-CSE-ConnectionGUID: K+onQOOTRN+YQIZqWRJ3jA==
X-CSE-MsgGUID: 037CDtP2TTetZKCsQnx49g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398729"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398729"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:44 -0700
X-CSE-ConnectionGUID: skZqUs8cQR6oDvNzgLg4pw==
X-CSE-MsgGUID: FZ5DgLT/RyWCTcKAdJJhzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911490"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:44 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:43 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iCvm7wELCCG9UtTHhdcCxqj1JwMApqIUToK7PHREgpu8Cqp8GviCF3rrT2HwQYQ6Bz4nYsdhUE+Gmfam/qIvNGg21hJ6Fg2kwWebl+9q+CIV2ZPIKEZgT3UrMWj3HN0PI/V/noRGXxn9iy4qTaTozbX63rxXBqWl6z5rS94s5FHLlwPJHPRcqOV+F2/x0PjUBLty3zJttn8SxI2dBYGPuUUsxnYZWZZKV7yQ0v9H5WsP63+MOsrucZiMAV8DB9gQvwV18X86rShZnWbhwBMT4wEXCum6oWw1/U7MNiDy7mh55SUC+yNtWky/973iKxB5EgR6pID7x+0u+8jZPBPpsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5uzsDiiPnn0xC9CNe28NRH/21C9BDlI9M4fhEQZ+fvw=;
 b=FbTAgY7i6Jqz5Hvfj/S6yFXUEqQQhd5xN814tFCfvYRIABbeoXPrVuH20PMcoRQPg1gD8AlGk2QCN+4yYT77unVJIMqwDipCpcN/aIVtIs7Tte898C36r8ufx9IyMC2+GlWGM+DeoyN9uemLZu/ztX5pLWseZ/wmNdA3AM8NzyJ2X2cd8z+72777WIuP3Qy/5MSPcOlAcjItUMHsva239XZnMx4JUWyHew4fB+6ok/69y+YUk9ZOfmByHaSi96RuUyaZ8LeJjORw9zMwojEky3BE0qsy4InsB/iDuHM6pwrSvlsBztSywBhEsX0946Sai1teVDrxxDgBNvjQetAw3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:30 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 059/108] drm/i915/dp_link_caps: Add missing documentation to
 exported functions
Date: Tue, 28 Apr 2026 15:51:40 +0300
Message-ID: <20260428125233.1664668-60-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: ba2f6795-0d0e-4137-4561-08dea52541be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|11006099003;
X-Microsoft-Antispam-Message-Info: vS3vLIKVh8BbZMqq9uMDfspExhSp9MwCUZy+NwSzlkwiGSwEaMGnVC2o2twqKHeOQYCyvUCNVajWbCLAgW6qjDColFAHjzZLNdR9f3w8hgrCqS8Yrgwe2T7Omn5FkUKKEbToLxJ5+yf8/nN05RbwuAarqJkEsEwti7in+8BEdufQteTRIqf0utlOvfFP09t04NnDQo9GF7oW8mvuakNi0AialuQ8ylmzRrhIpfrv/2atSX+efkPGNvTTCP/2eBulcRTOohoRwjIhqrWHCs+WH/OI3z+OPzsqf+Z9xszXUmeSHs+rV6O4yGFYmc5f2Vjgkstp7qb8sXyuV7CWLzTy/UuEIVZchGbddgnyZGKSd+QeH1ViJ4o0sJ+ApUz2gmtoVtbTAaXmohQu0lxiCTWkUxC/RPHgiKu1pRhj7VpPa0KX/ouJEo/WqbQzZQReOdEDZgGZKtdRdQNheDH4NfVNHD4gc8Ip/UPLdMNHodAsieFmFvmHKTo/gK7pJRBYAZ9S0g8uU5CitKCffvjfZuHZSGnAVzi2Hd77sTiG1bmEKC4Krd6Uuj7J0eIrVT+f+MPFDTNKut5KAp+oX0VI7OaMHLMT/k+NStP7KEMFHdoabKuFY3GqxtIMP96QDuntVZk/5uwbiyxY8C0g+zFjF9Fs2PHbCScydWWxHFhLzhOuomWri51GFL9nArv8qgFdKYYCyJHlSMiEbT7d/4RBqXuLWXGHW8ePn7NP0MVOq6umX9I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(11006099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fYdHlWc/MhR/cI5QMNIxmJAb74vRmFp9+NGq66ie83OAKOL/2woSOH6wShgs?=
 =?us-ascii?Q?OWsSNnKcvLtWViEpd29s5clxIQh+awcBB9H8kVa6ypmjCt7uWmLKI5tlmEqG?=
 =?us-ascii?Q?3r6+s3paC7gqksAO/aWrQy9mUiYxDxotVBorpV0AWMl0GN4pBL9X0Vf0YyJz?=
 =?us-ascii?Q?yEl7c7lsrCEHwH3JyN/sbXFfeMRl7NfZ4z0Hcl4p6CKEspE1UXjikV/vm036?=
 =?us-ascii?Q?2NHd1v2iXzm7+9bMP27pNuCEWMPJesFqU3CeMdeyeRc6DSu6ay00mZrYf7WR?=
 =?us-ascii?Q?NAxItqLJmocrQU57IiTL2zkTZTwn5goC7jYsjYMrzoB0ZWU3G5dsOT26ZieT?=
 =?us-ascii?Q?FwhUogSXZ7tjSQKAWymOXdu8CBX+4rDhz7GVcrwpR1ysGcQPwisUJpyqfQr3?=
 =?us-ascii?Q?A8/aXzBm8uoQay1FBf15MpEwyaNqVxNfVzNl+kxv56Krjw9w23//orKhYkZx?=
 =?us-ascii?Q?LX+Ny2YFP4rxDwevf9CFpZBK+hgrFhZxwPmh4nlZMdD7P/+b2zrIA1DhP7h9?=
 =?us-ascii?Q?DBLXAVm+slH+DjjhZXewuZcfCnnZGosvpJKY6+4yhzim1w03Rm4+t3bszK+N?=
 =?us-ascii?Q?f8DQtD5tcy+uAWLkFTnCEadL5tpGsW3ZjIzV3U+8Uc+1w4c+6lcWPXS4tHYP?=
 =?us-ascii?Q?MCwRkMoTuKVOuxRfU7zYOT65hfAF4aEe2fahAD5d9rpRMGzzwksxWqZ4T74d?=
 =?us-ascii?Q?PuB1ph+dyzTGahgmhsqXEVPsqPOb0x/nftDmbVYPhaVpACpKtv3kJysVFvCT?=
 =?us-ascii?Q?n/8bOrb/MiUsWqAY+Ty4QI8x+ZClF4b8XmBXSlhshpQ0ZtZuHWo/3ryqMHuM?=
 =?us-ascii?Q?8ajtZPgx3BnNnIc3AC/sHul+FyQPk37dMJmf3025H2xAsYkicfrESuB5iAl5?=
 =?us-ascii?Q?L7fU58vr8V4dARhZ3v1RDTqRsSozEp4ft77ZeE2+oUr5NVqt4BI6iN4UYlW3?=
 =?us-ascii?Q?9aQ6s6DPLnwEY2nmLAk2JnRW/Lp/s5qLcHAhd8Jc/UmMQWROpOH062K5UhSh?=
 =?us-ascii?Q?Hsb2QiCQX8IN5a3BbKrGLjH5SXauTyJuTO1szvP+gsMZsE0pqU01LOpl90dd?=
 =?us-ascii?Q?7vQXFTy+600PdbSMKwgmduAupTAANqU/k7arkgp6D9W2dOWRrgH/ec97eSJY?=
 =?us-ascii?Q?MRSVdaves2Uocbjw8mXT+H9hjuUF3iJdI2t+gu+qdlIY/yMUwtnudB7dp9mz?=
 =?us-ascii?Q?/Obr0GjoqbX+o2xC/J3FDUS9JDs7Jx6AhvNzRJ+Us/+/7F9w/J2LIDCyI6JY?=
 =?us-ascii?Q?h36ySjg1gBPNdHOppKuloD+Tke20bnjEpcUE0G1O7JVHsB1AgxOPYU3fU4Yj?=
 =?us-ascii?Q?Dkt/ZbLshCMOBCldGnuHGXltuTlFPa9saX6/I1WJiGB4KSG0X5UnVvk14dBv?=
 =?us-ascii?Q?flQXxzLImum2lnNjeGC9KvkFveWZaoaA5qMsM/TTOGJZmiYvtdh2CjKHDKuX?=
 =?us-ascii?Q?LQdfuCmLcOCIpaDMu5OHsSG2S8NDt7dJBXfWv/wUuMYLEaUI/m4aIG3Cz7QP?=
 =?us-ascii?Q?2FO1D42nwuV8G7yEvbgLLjRqRFhXSRB7HXlPiLKV/c9+DPziJZm/aoRIQXIm?=
 =?us-ascii?Q?EViNIAgumbfaaASA/VRWf1gfE9SMLPHQx8BznX1DWyGFCpuoJSzwiNg4P+CX?=
 =?us-ascii?Q?vaqn2dyHxxqQpytO64pXTIa/Yd1Ll/Kan5fv9AE8KM0GdvukNJ2bXsMNnxbF?=
 =?us-ascii?Q?7QkXwp7W3thMqZFoi5F/UCT3UQyHeFSdlfCRa3OPz97IxUZoNJvx4w3Bno9L?=
 =?us-ascii?Q?vb78P5D6MQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: D2/LMiZQGGQNbepmoHCf3Zbs/1vuww/N3lrxU09UxXmV9czmDSn0N906QkEV+5rfyFLNMLA6gyAwv7VijoMpOEvy4WGVPk1/3WfYdZuhZojUNPaF5376nlHCNCreLVLWSPJd7YGmcelHtmPmclwHsJM+ihxchfkUPKkE6Rjy/jrKRZtdN6dWW15uIqyyXG9uKN+0ZytRx7n2iGzbPvcaNC2YmteMoInCv/0Qtp/P7fCM+bNZ/5BE/Lun1Nd9t5fjiuQadp4GKvTF+qBRu6Yi/kTZrxJy/SL82S8NyIwhPGDq9t7HPmwUgMAXte2f+1OWjaLDFhtU/DOrryWyXjKd4Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: ba2f6795-0d0e-4137-4561-08dea52541be
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:17.0556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oBKfPKlmnMySBf1+67zCUZ7gvtB+SQzPXkUyBO7XKUmvnlAlzpIaGQsoGJPkGIWXqH0QdaSOOpCIuBsFLrEXzg==
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
X-Rspamd-Queue-Id: EEA9A4854CF
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

Add missing documentation to common rate helpers and the config updater.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 50 ++++++++++++++++++-
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 529cb702c99eb..5d6d5441b54a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -85,6 +85,18 @@ static int intel_dp_link_caps_common_len_rate_limit(struct intel_dp_link_caps *l
 				       link_caps->num_rates, max_rate);
 }
 
+/**
+ * intel_dp_link_caps_common_rate - get common link rate at a given index
+ * @link_caps: link capabilities state
+ * @index: index into the common rate list
+ *
+ * Return the link rate identified by @idx currently supported by @link_caps,
+ * common to both the source and the sink.
+ *
+ * Return:
+ * - Common link rate at @idx.
+ * - 162000 if @idx is out of range.
+ */
 int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int index)
 {
 	struct intel_dp *intel_dp = link_caps->dp;
@@ -120,7 +132,14 @@ int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int
 				   rate);
 }
 
-/* Theoretical max between source and sink */
+/**
+ * intel_dp_link_caps_max_common_rate - get the maximum common link rate
+ * @link_caps: link capabilities state
+ *
+ * Return:
+ * Maximum link rate currently supported by @link_caps, common to both the
+ * source and the sink.
+ */
 int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps)
 {
 	return intel_dp_link_caps_common_rate(link_caps, link_caps->num_rates - 1);
@@ -389,7 +408,34 @@ static bool current_common_caps_match(struct intel_dp_link_caps *link_caps,
 	return true;
 }
 
-/* Return %true if the supported link parameters have changed. */
+/**
+ * intel_dp_link_caps_update - rebuild the supported link configuration state
+ * @link_caps: link capabilities state
+ * @rates: supported common link rates
+ * @num_rates: number of entries in @rates
+ * @max_lane_count: supported maximum lane count
+ *
+ * Rebuild the supported link configuration state from @rates and
+ * @max_lane_count.
+ *
+ * Configuration indices are not stable across calls to this function, so
+ * callers should not cache such indices and masks built from them across
+ * updates via this function.
+ *
+ * This function is called regularly, at least after a sink is connected,
+ * but it may also be called later whenever the sink capabilities may have
+ * changed, for example in response to HPD IRQ / RX_CAP_CHANGED signaling.
+ *
+ * In the Intel driver this function is currently called whenever the
+ * connector detect handler runs, after reading the sink capabilities. This
+ * may change if those capabilities are cached until the sink is
+ * disconnected, or until RX_CAP_CHANGED is signaled. In any case, this
+ * function should be called whenever the sink capabilities were read out
+ * and may have changed.
+ *
+ * Returns:
+ * - %true if the supported link parameters have changed, %false otherwise.
+ */
 bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 			       const int *rates, int num_rates, int max_lane_count)
 {
-- 
2.49.1

