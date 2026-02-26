Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCzOOTEjoGkDfwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:40:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDA11A46D9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:40:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F123310E8C7;
	Thu, 26 Feb 2026 10:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GQcDiXBO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8514310E8C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Feb 2026 10:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772102447; x=1803638447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lsfgZZ/TgRbbUzDz2VvBzW+9kpq+5nNNC8/u0I25ckw=;
 b=GQcDiXBOOaVfxgyt8J7SDTrrRxAQLwRHdOLz7I/RcM/yVoh2qpdChxFz
 3FuodHrzW619xF7bA8pFU97JjzqPt+vEk9tMP0IgU4VIlkyfTsCd+A0T8
 RT+rQN3o6oOWnKwEn3RBHzCz8mE6D5D+Zrnap7qvRYTFjn/LHGKAw8xhK
 7ShkZjZhivng45luA3SJ31Kc9sHb16731r5q6BmQEXpYKw1O03s4hvhZo
 uYGsERTGFV8bYjMdIlguGVmuasCbkFamLuOgps6+dAGbZRbwV6zuw2CnG
 jQelPvlDPWSLypzlZMYgAA99lCHeN8izltPyOnW5YNsIh1445oVv7/Rqk A==;
X-CSE-ConnectionGUID: FsMD2QcOSGiFpIs1MdnGjw==
X-CSE-MsgGUID: cid8kq8fRmWhcW/I/5cfxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73263109"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73263109"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:40:47 -0800
X-CSE-ConnectionGUID: hepnG90xShKPn9fh1Q0PeA==
X-CSE-MsgGUID: 3dOAzvTNQtyda2ToJXaS7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221145723"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:40:47 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 02:40:46 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 02:40:46 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 02:40:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MDro6YkNfUYq+G0G44KZFpWrvA2HNMwFV4FzS4dzwGy35dF5Ue6pHT58JgNHxS/SmRmqFuEoSVotXZsrTlyeTRkAzAMXZCvrUYa4Ct0K3s7u9UzH+XPS5iBmetSQ1rLTlN6TK5LsMOwu9nxbrOJ22mvTy5+MIV9v75b93sirv3fgQtj6n3x7oWBBJx81G47IgovgDtNXnLrsscGQ26sqDkonuCa9W/MmdNYBzOJnkdr+Tqpip4plsk9FZ1kuw4fp3mgmp3dXzzcUJWgqEZzYkqFWk+tIL1mFxTHA5M1rDvt54W6cEnsn8K5y+tj0AeBswjjO8tO+uzzhn/0KT/QGiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fUxftZ0do+TZ4rfcMJOVSv6kuRqX+j9fhHIbXDV4fM4=;
 b=WVUQfC1/um/HVuhwB+5hD+k7mVWMssev393i1nAxPi3W7uAofCriDZ4Is3NnGM+QegWZCjeb/Tq6kVFh96IClAHwz5mVehVQ3Dv+1lA4Gsl/WJiMoL6K8QCLHYgDhX4LsQwLsbyQ8ZbhciIPZUHhLJDDqUkXYYARROg+np1+YZ97gX3lUZ4t5j5tjN9nSdjgSfcrJhavVSrTa3rNEhxUU3Yl4Cav+I/lJ72ov7Sajfv08NNiZetVDe3mMpUNa3Dw13VL9kpr2xI3M6WC+RfmvwBbuYIVLpfsnviGsHDpIhdI2dsJz/ijMqKn7/Pfy3N1thQHhYpqQMbKidZNQDiQKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 10:40:44 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9654.007; Thu, 26 Feb 2026
 10:40:44 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v7 1/2] drm: Warn before division by 0 would occur
Date: Thu, 26 Feb 2026 10:40:32 +0000
Message-ID: <20260226104033.2073002-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260226104033.2073002-1-krzysztof.karas@intel.com>
References: <20260226104033.2073002-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: WA2P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::16) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW3PR11MB4748:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e9c323d-e3db-4790-7f5e-08de75237ea3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: kWxuaRrztrUODFzcph7IfThhDKj5PAs97qI8ClNG6NkPaEtsqh80n4Vi8tfTHZ7Ycefsp0+fRt3XdwDp2C7COrdSwPYkNEKrWtTlMPE0I9SlUiWrPQhnVmyjX7PAN+cybaSRghFlTRJ7F+5KHDfqFexnB6MesOx7+nNlzBhpNZO/mP1eSyGrQ7FGkMkJW2Q4JC6AnfQaCmBkZxBCVNMXbaMJs3DvzabML0jse+r47QPL3ERmT8sQzczt9gdJvRSiLQ9tgSd7q2+pr6mrRAVkwGLcCmdtx2f2RW6jTP5VY/tyOr829AXrIZ7tKDPnhSzJG5rTSg9q47Q/M7hQz5Izm7SQZMI9z+Z8pzyGeoXj2wDFUFDQqBMd7v++KcyN33l6M2TgrlnbJrt+MjUyUfhoTjba8C6QjddBdwvmsOpt/Rxu2auJt60/2JFvewFBYSftLqpstQX2hUerc6kXJJscaMCe/U8mtYcP/KZbDQ4nIh00n109JHBJyP/qqLM57lGV8599AZIvYcK9q3B2mSTKdjz7CTimL1OSCoWDjwutKlYE+93GIM9VjIGoD/wsmZeE/G5zAycAJTLMq6hd6PGZ8OR+QBuq+hjvU6EqXZESoa1lhF8uvuAfdtHTpEMBHmDH/QgPBMr6awJrvqPDIJyycyiQ8RBaKSfN2Umg9r9HLX1Qnq9exkiq27UwqojFtkiDlXG3wtMKEi9igKCSTRnvLhzR117RGMy+8o3RUxfHAFg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3dePN4UJ3JrZbAnvL0fP0UKKQzgC7Jx/YraIuQ8uKHQpUrJW9Kui0VNVMc28?=
 =?us-ascii?Q?DuOSVtxSjdHKNJRKGuTWNR9HGxH4E9O7xlrcdvtaun3mE/8PKIxtZSKXWpZR?=
 =?us-ascii?Q?BIesVUZRlzOSvXckbCeU4uwNlKKrTlK8sQUvd5SDhs0gNR8JNZNBo9fAjUjp?=
 =?us-ascii?Q?rlZlJRENeIHMd8JRJ23XFM5mzVn8ve/K/ekPpUtuQRcVZIRTX/FvkAVCRv2c?=
 =?us-ascii?Q?ZDjypoDs/2lhlzTYtXvH/anSvImFkTMD/GQSbgQhPvxTaPzx9YyEwKpH1yGq?=
 =?us-ascii?Q?zU/n0Gmyw4zpc1fJaffckyy1Bs05E+emaImB9pIzeTmpbAKYTSZY+xiriUqf?=
 =?us-ascii?Q?st5kWQWeeUBuIr7SUIvHU6tE/b3j8trdXzRACQk9yXJyarynRQ48VUZufEOk?=
 =?us-ascii?Q?gsE+lThiS30El3QMe6QH/Fjyl9f9wRoQCt4727MkcmTQ3w+dawluD40xxkNA?=
 =?us-ascii?Q?JZpcxiM8F8yG9q8/ILnSnhlUuqg4n/9gpUTHlZlbKZGP08kA74xTdZUktgkc?=
 =?us-ascii?Q?vNKIlGHptZqg1NHr6Nx0yhyRHxOzecpddEFab48iKLmK9re00IRWxwzNg5SG?=
 =?us-ascii?Q?JegoKGJNbENhlYwL0vc1bgukEBNEeBldHMwWWQl+0zlwRL1T9q5Xf56Ix9gY?=
 =?us-ascii?Q?xn0m/yxNJ4vm7tcU1eMQXrur0lDQQUWFHdKsuLiGG9tKZ2vW565uiUNsNBl5?=
 =?us-ascii?Q?MU3ft2x3hkT3yw7YnQV6+pKb+WhlwEdznoXliipJCX610sdMcek/keBEFMsr?=
 =?us-ascii?Q?VwPHVN1wUg+MKP1iAurIiVHX+yGCDVPaKfFamJv1h14cMXVGrUrr38Vqnqzw?=
 =?us-ascii?Q?aLojK8fduIfh606hGKGq1TOWHNAs7NkG1VEI8whDGYNl8PwOgGaRi38Nokr2?=
 =?us-ascii?Q?ohL5d8uqjqYlmbBQOVmrBuPjO9ZUOBawAaNbjqUqWx5bIJQ1E/XA1N+aG7u3?=
 =?us-ascii?Q?iRpsbEiOcff5kzlKtRjyKsbMjUSNzG5RruSo2W0wHPI3LxWN5V+n67L+DQiH?=
 =?us-ascii?Q?7AYtnLrbOr8/2d1sbuEQAuaky5M+8KOpcb0pq5YWq3tiMtxe27K1pOc98OyW?=
 =?us-ascii?Q?sEtKiOe5uh0QjmFTJvYw4NaxtdKcwok9Re5lOpoflOzzip+cyRW97cIpw2uR?=
 =?us-ascii?Q?AuqKI7PvIM9lzkDPPdcrOP6ievLfIvwPjnaNi5HQXziJkdXQGgeyPMgOe29m?=
 =?us-ascii?Q?ZsejXyaVfXh/T4Ev59HdiiNkXQdYDVxNIO8NOXdcIHV30FFYXJMWO4DaUTMi?=
 =?us-ascii?Q?FTObA8pcwsG+9vQ9dKDBjIDu4DBGOEsw5h7doa8uuwPkI/car5uQMt18xxWm?=
 =?us-ascii?Q?VbMsIivNgkDJ76kJ3bUi6R2wKCPgbq78drWnsvwL3VPQ4Uwc3/6ngzE7aVpA?=
 =?us-ascii?Q?NiQznFkiEqVbnbksDAwzMbpBvjhtO1sUSnEPcxmjuflVW0MVDCqmgVsz0iQR?=
 =?us-ascii?Q?TTm9dkcKr2qFtEHYugsIg4mOK9LXNkaQ5ojDTEkJKlztQHSg3MaRLIL5sko3?=
 =?us-ascii?Q?TonGb+bJU9Mkt4kfMKiky7Ap9jBersQo+jUG3Ng9FBSLvhi4IllIGt1JsQmW?=
 =?us-ascii?Q?fpW7Br5KrKRRhIIX08IkKNBMimoo/+E2M3YpAheDdfzt+52UVJfWG+e65p+J?=
 =?us-ascii?Q?rFRtyjO6OzKrLIW9eAzfDhC+9xniDf7zat3urrvg/7/4WR78iv00P7sfZY3+?=
 =?us-ascii?Q?gf549K0p+G/XNaM8Mpj6jFOPdELx2EydfqeSoBQRw7P0CcR4bTy4Ti65QW0U?=
 =?us-ascii?Q?LNg0RT2XQPX13O7VbaKFuD8hrcDJKqY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e9c323d-e3db-4790-7f5e-08de75237ea3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 10:40:44.5266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rktlgP0JUGQ4jEeQ75oHx75BY42peS1MOqa2V4iFvch5bOXUnr0Osn8QbklPQziuwszsnnswp3c5GMYigaLMGU8q1D26RN93GHPSgqU7Bb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4748
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5FDA11A46D9
X-Rspamd-Action: no action

drm_format_info_block_width/height() may return 0 and cause
division by 0 down the line. Warn early if any of these values
are 0.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_fb_dma_helper.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
index fd71969d2fb1..2b2513188001 100644
--- a/drivers/gpu/drm/drm_fb_dma_helper.c
+++ b/drivers/gpu/drm/drm_fb_dma_helper.c
@@ -85,6 +85,9 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	u32 block_start_y;
 	u32 num_hblocks;
 
+	if (WARN_ON_ONCE(block_w == 0 || block_h == 0))
+		return 0;
+
 	obj = drm_fb_dma_get_gem_obj(fb, plane);
 	if (!obj)
 		return 0;
-- 
2.34.1

