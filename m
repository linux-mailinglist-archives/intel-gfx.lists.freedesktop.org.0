Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RxU8MpqtMWoypAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F46695184
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EZtKQWU+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605E910ED3D;
	Tue, 16 Jun 2026 20:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFC310ED2E;
 Tue, 16 Jun 2026 20:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640595; x=1813176595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=3ffbKMKYN4Q6Tm1g8Pc2oia/XwWNTXZ5Y2C3KseOBXI=;
 b=EZtKQWU+LokBA7EanzFxqiSvAkti5+bnSMA4S/wltp3V5KhPkFmcwp7L
 6cZuyVivbs/sYLipiiBkiNo9bjtLlygO0CsVVPxt+Xn0i12RN2PzwFxK8
 /b4R3QEtkBRqGfEISHsEwSDkkEzQXVNoVu3tLeHKY9i2xDvWN8HSQ13+p
 oMlaowMnPMZcBKCJ8FNnuKn+Sx5wqV51kQgJfRiouU+nJPSTU9fk/2cGy
 4mMni8ha9QzrpFRDE0hdrsbt77chIJS0q/D3jq9/EyvgmkOh/kKuyKnq1
 HUiLyiaKZdeAZrBdCWNtrx0fgtwmGg3xhFPTxGjJoOAgAA38lvYe8sUwz g==;
X-CSE-ConnectionGUID: kfn2Pja3QCqzUcZs08luJw==
X-CSE-MsgGUID: a8k4CTHUT/OPe3y58srSgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255878"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255878"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:54 -0700
X-CSE-ConnectionGUID: 9JuamdksRlOBfO8ft8Wsrg==
X-CSE-MsgGUID: TgW4dMuwTuahCvFzDqvWvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579838"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:51 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nkmYw3vQ+FaAqy9kV2uvJ6Mg/Y7cBxAOWO2M4a0Eq+nVViFCCMZ7u3099lxGIOJzyHy3eZa62OKOI45q2lNcG7Viem9oyXWtTxQFvbT+39c417WaIuq5rNhc/knfSXVzLXd2Z4xtPKA1bmhZHJli5h3vx1YR0HMeDCFOYv3cyBI+Ne1Z26myxtkVeT/z4rNuRYXnmGlvHTpqKYVpGWnEIr5fNH0ggcF2I90KTkA7w59NNxSHtt3AExY05aGlvbYY94pjyyQadnirjItj/n+k9R/Nn/gKyTsd6HVP8TosUkQ0dA3PVfLlaNDSki5kDQv2cLYyAZzqXEwMq6PmScRCbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UcVywX0dHRIYHu4mttxphag7lTUKfAWFAYIVAZb8014=;
 b=LHtbqdSKv2WpPXud3awAX9zLpsn14/QGzryhb/DtTlTctrcr/6ab/P3DMajKZCyO6Ls0gdeJloXI2v+9lvGccl1PGIy/jR2L9GdL0UBkJsNSJ6LtB2du4w3brDKOCz6NE4sTOLcmZQ60POCpR7FAt57oGqM34vY03NebAEH6beesJ5g4JCHlGxVYJeZg1+jtz0AzqTmoI3E/Of+3jFKl8VdwWb+JGa0oEIKZTAaF+O5Z4onhCvnQqj+R/NnJe4HOu7mm5N9oBnyqYn2hvufRq5mOAszcWOeAyf0tPJNE3LvQdMefruuoVSixwPHsQqiK9fzYxRdPwZQjiMHHaemUSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:38 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:38 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 15/28] drm/i915/dp_link_caps: Add helper to print all
 supported link rates
Date: Tue, 16 Jun 2026 23:08:35 +0300
Message-ID: <20260616200849.3534628-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: ca50aa9c-b5f3-4252-73ff-08decbe3314d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: +EfrPEuUxuG7ouaTwVe9ldhBxyPcE7v5e25blJls39bA21Kd8MY40llT5/FbbNKbzjpLKwzPRhZ8EQwvs4Oj2feC3PlwpgAeT3F+pG/Hx6CS3/4ip0lC15zBAz34W7XrdQfebivCPyVXRvWcCYrEdbxY42xRK7AvnBxr8794zyC6Fo2yzysb5ldCoBTHRm7WZVf2nx8mqeIQBquwC75lg1R4I3d/zmArXR8W69JnWL5Fp1xOKQGGxV0LtThWEGrMqdr53A4ocTGqCqeEQyquhEc3CPQqgtWMBawnp4c/XSZB4Vg9YN1lo2kPSaQ3W6lz4+DgCZJeYfu0ZA3Fo3uj6D88ULgV8+MA63kJ+Xx6jJtO+DfiQHlJF5P+wHpiUgpvU00w58ksO56UZWizXhEtNrT8XoSeVxhy3t++rCKrhw0rxehlwB+6luGm1HTUaFEztlUYS6gLq7OP/4+S+u6ParQ9dVKo9798CNOolQZ4D72y4Fmc2cexem6S3WE4ZVH8sRBGWfvcAhy2TM0DaVLMNHYS3wbwJQb51xqdW8RNpBvwINb0av3JJY9H691p+c1ePcbhoX+RT359VR5M5MdnIY6s9+6p8fi2P68yaoytAzyEiM9DiuK8xnUJebk3CnKIXE4YuapIrrvMhT8yeCYZim+9jRLFsHeikrT6yCHf1qjx6zEm1VkMAd5OR1+Ndn+H
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZPJQPUyt0qobm7nKkZgfY1URQicVD/o9aATiRrGtKeGjkgln34W4NQ+FT6oi?=
 =?us-ascii?Q?TQbB2/dDE21oo13n5hvHqKpdUhN/4qtcZZzmDwL3rULR+PneJzAF9W7lnKDp?=
 =?us-ascii?Q?NIctmulMrDCB7v+tKIxtrvMEHAj3y3GLfq3+VjHgJqe+8S+Gz07xd+GlDJQV?=
 =?us-ascii?Q?21iWb84DITuQyOGgxqQvV7fYlfXO8zMsRH5808ATKRXYEQB+oS2QoFluTtgs?=
 =?us-ascii?Q?ZIFpFriGxWBwJlzdPmbwNEUxC35rBOuhcTBRvDGSGjDrfPvf9c8HVvtxyt5T?=
 =?us-ascii?Q?aUsW4XqEsgEdlTvGh+8RwmDePG6DXoFufjjMsv4BGvdTleXl4TtoO4dbO9Xx?=
 =?us-ascii?Q?+v/qYV+urPCHwL0R5dKcRIFSRpblY01iMLgpKrDibn9zy+sfaLBbeDWrelE8?=
 =?us-ascii?Q?v8VD8++dKK9EDQPY6STgqDhG+FldjGj9Dc+JbteLxycImsAdT3KN2u1yz+EH?=
 =?us-ascii?Q?kRE+j5nNcGmGDkUtVbhEVGcyU/n+OZaZsdrgjT4sLmdhDAP70DNqmQ1kqVlz?=
 =?us-ascii?Q?xIc/9p4xiVT4bO+zPxJhxPfVocj2G5lhkmxd/SD8M37Mrw7oc28ni4GciI0O?=
 =?us-ascii?Q?WWZiD/uzxnwlsIWEbM/VwrPbSU0tY2KvfAuipqBudzxvPnjdInh4pDxBfhdm?=
 =?us-ascii?Q?ENc5D8CvSW8rAz1ud7tb5RvmcJy0IGYwrHcR0TCr5VLBXaqfuIizghyb5Vzw?=
 =?us-ascii?Q?luulujfXontHDz5Ha/wmhEicMnUIttiQM0Bl/JOzcTe4QXOm7gdIqsg904E9?=
 =?us-ascii?Q?R4EFDglHkpcfQSRAJkwBl11IOyqIdXWz8RHVRblKPLFHE1FA63656teh0b/n?=
 =?us-ascii?Q?EMUmj44CxTBUKYFwzm5CrLjlxKuKp5BmcDa+RWIXy3K04WqQDTtwTQBdvBqH?=
 =?us-ascii?Q?52PHiJAC4JWh9Xm16Lm4B0nwi84h0SrokO+ATb0DTT+3obt97aw9OYnnUciw?=
 =?us-ascii?Q?vndPhB8L2fT40sphyVSr20pYWUR3nd+H2W9DJBS4kINUrhDBTdcwJgVQ26Cb?=
 =?us-ascii?Q?uW+WB6PKks1YfL9+T86z0hrxfbBMbelEIDdr8s87HlI6R8+MiNwF53mfudpZ?=
 =?us-ascii?Q?Ckm0lsX6lbJ3HZZT4oA2chzR9ll8rYUdVLkeA1I1a8207sZN/5RjXOHHOCAq?=
 =?us-ascii?Q?wfgutrzd0WIf9U6yYw0a864H3bI+GslaxEpx2S+F0vi0jdFEilZOGVdjo45l?=
 =?us-ascii?Q?wRtfM/vlEQHt3yYhjt2RX/n+6c7s0z/0RjwYKGkg/J42GGzEMpwmgHYeMxnG?=
 =?us-ascii?Q?uEW/Y7VVCI3vykWlni2hjHGxpDmXcl9tU6ndytpo59xn70NIK4mVPiBFARzg?=
 =?us-ascii?Q?kdhITLjhcZZp1r8CTCsSZC4fJIG2iTQTHMG586sRKw8DjS2looBTFP3Z7SuM?=
 =?us-ascii?Q?rndMs6B/g4dkImZpZ6ocXtoFO+PGBwq/4m+FqJg82BWafYXtreKILrCJZHfj?=
 =?us-ascii?Q?rOTCXm/K4qvL/W8wdD4dG0LLZRMln80XBTU3VWAOTf67n5Op8i3AQ49a1VDZ?=
 =?us-ascii?Q?Ei70CgVDmuK4TNUU3lI5l+oGfDlESHjSA5eAzg3cUc/NooIUyagQRPM9VAx3?=
 =?us-ascii?Q?7xZrgbEcvT8R/nUn0iQvo9IvXqUjS0x+CTZb4y7YEr1owBTCFGkhRNedSABK?=
 =?us-ascii?Q?BYGREkJcKE1sCFeIcOrMvk88kPrvTtexK9vW2k/UU5f66oHwcs0wi8rJ1+Od?=
 =?us-ascii?Q?rE9ZueXbYi6GYRXYfVAVE5bUzuoIqbbYWC4boUxmQy2oPYr1mEA9ecihKjhK?=
 =?us-ascii?Q?n+OAvwNLBA=3D=3D?=
X-Exchange-RoutingPolicyChecked: CackoWoVuTa39QE7xYuoMP5KAa2nfGEivRVO9WGTR5a7UjP288WBv5/MxOp3wRT2v+5J5w2+hspjAxjf8OzAwu5D0VHx83/j4T2VCyRsNgQ1qFvkIdFmkddh5SS8mWu7oZOdQHPb0OmjJknsiWMnsVzBcBj38Edz37+cs9pFZFZ0C/BRBX/dfJ9V3nq34bKQk3LVrHCaOHddHwzsSLUUB7wzkWrpxikxmoEaK/Vt81WTzs+TYM58HG3i+N+SUBfPg+uLyGW7PcAnovR4J92DO7mp9G2mU1JRNkQELyDCA/sXUVdX7qjPB3KqqP6J3IbzGT9NzGkodkL7O4bU9ENpTw==
X-MS-Exchange-CrossTenant-Network-Message-Id: ca50aa9c-b5f3-4252-73ff-08decbe3314d
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:38.0406 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: op/WBJPw4lEVdxATeQbzC7KfBWGmAmbhYp5dRacRE0hYrlzy0vW2BHE6H62bXw4ccxgnJjfhL7013KKod51kWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 77F46695184

Add intel_dp_link_caps_print_rates() to print all the supported link
rates tracked by the link_caps module. This prepares for tracking
these capabilities internally within the link caps module.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           |  4 +---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h |  2 ++
 3 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d2b9b6fce2b32..f9c3d3561c417 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1543,9 +1543,7 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 	seq_buf_print_array(&s, intel_dp->sink_rates, intel_dp->num_sink_rates);
 	drm_dbg_kms(display->drm, "sink rates: %s\n", seq_buf_str(&s));
 
-	seq_buf_clear(&s);
-	seq_buf_print_array(&s, intel_dp->common_rates, intel_dp->num_common_rates);
-	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
+	intel_dp_link_caps_print_common_rates(intel_dp->link.caps);
 }
 
 int
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 679d59cc256c9..13f9bfd5d7bad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -6,6 +6,7 @@
 #include <linux/bitops.h>
 #include <linux/debugfs.h>
 #include <linux/log2.h>
+#include <linux/seq_buf.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
 #include <linux/string.h>
@@ -66,6 +67,19 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
 }
 
+void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+	struct intel_display *display = to_intel_display(intel_dp);
+	DECLARE_SEQ_BUF(s, 128);
+	int i;
+
+	for (i = 0; i < intel_dp->num_common_rates; i++)
+		seq_buf_printf(&s, "%s%d", i ? ", " : "", intel_dp->common_rates[i]);
+
+	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
+}
+
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 09e580bc5c9b3..7333df6b82f97 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -16,6 +16,8 @@ int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 
+void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps);
+
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
-- 
2.49.1

