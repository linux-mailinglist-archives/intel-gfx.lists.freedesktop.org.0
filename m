Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CMSCqtY72n5AQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:38:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 897B4472983
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE06810E08C;
	Mon, 27 Apr 2026 12:38:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XwU2sEW0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3706910E08C
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 12:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777293479; x=1808829479;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=Qa+RR+B8NGB4ZnOT9En9vzxSBgXUIBUedCdbrcZoT8Q=;
 b=XwU2sEW0recow7kUeWoPrY7zPdbu4ipkdlCBHX11jmgGaS5fc+me3WOV
 PmxijqdhDJlMiwexR07z0MzgqgcJ+19U2rt8XJUXRjNm9bhLUMJc/LktM
 sUIOI7VpIIwCeGtB8dHAovlcEaBLfY1/0CI7w3rAGHhgEXqEyj/fLvyle
 3I+MHOTAOyJgYSYLgPdeVXqR+cIssKeQ+I94ZJdLDSNylBlqwOkwl8TUn
 5aOQkKMPPydc7/gnGTR0GeAOel73+2/Xb/ymY1tFmuL6cGOpwh9JfVQws
 nWvLyk4ivLylhunCMymtSysJJOrN5UjvaeodfQ9SLs+c5y4iJgMRzp10o A==;
X-CSE-ConnectionGUID: wTCsEnfRSJGkb46uwJu0EQ==
X-CSE-MsgGUID: 3gsQut7ERv+YcwPcwl7FVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="78367707"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="78367707"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:37:59 -0700
X-CSE-ConnectionGUID: BNRseZ8FRGacUb/GBBU4ag==
X-CSE-MsgGUID: AU6vUCtoQ9GCzVjUwrpMPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="232748988"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:37:58 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 05:37:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 05:37:58 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.16) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 05:37:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FQZ46/ozctzF3aHhj2QXYMEbmYRajvqXN9mQYC3RBVCKI7WUtdPzyJcdPEqFF8xvtUFen1VBwWzbL/mFJUwrI5ha8X5/dLF5Q7uq/RwgiQj8JTii95ZK94ogUx0RjzvU73a7dZ824XFSAa/8qZ//Yq3vYSx5ZY6dGu6D9a2tdAuOh6UWbiK6/+QxlwCrlGszH2NPQmR4w7kwFJwDYly/1Wn621vN7mFTajo74MIIr6LjI8dgBV7VDdHsNZ9c9M6dDgDWGJEt4SZEcGYc7phln95mqYwX3wZI3LyArBsC5IvDaLPzG9d9S+Oye/hmsaujbjPNBFem+x5gxl7Kb/cNRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qa+RR+B8NGB4ZnOT9En9vzxSBgXUIBUedCdbrcZoT8Q=;
 b=M51efLAvVrxSzbNVMvOvTONXKf0jKESFr63aRMKG/rf38AeDR+3VJkOKqKbp55f0JdPexCj0lThW0OgM3+YJLPUtn8BSmNL86b1weMrJ/vjdN7J6L10nKtVdFcPgOTXndYzKFxDOONF5nhPZB3hNmHA+OIzwiRs2Y93h1kEfXIBS8cubhX43B9kQ1v17z3HsvGfe+4k+tMt/RJij23gLivUYS37j0Qu4Zoh4WTMLeTc/UGaGiqogyZ4bwVYiyM20oC1VLObETXIvIyogF7Fkyw7TLF/wqetnjklRUKQzAzW4mnltsRrBAMJSW6iVKX7lzaoHGWIDdnnk11xactQQyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MN2PR11MB4710.namprd11.prod.outlook.com (2603:10b6:208:262::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Mon, 27 Apr
 2026 12:37:54 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.025; Mon, 27 Apr 2026
 12:37:54 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 27 Apr 2026 14:37:55 +0200
Message-ID: <DI3XYF0I8YPD.336A8XEBGNCDT@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>
Subject: Re: [PATCH] drm/i915: replace fetch_and_zero() with kernel xchg()
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <75ba7e77fe28617f027ae49a620df8b580cd1000.1777291964.git.sebastian.brzezinka@intel.com>
 <7d18b591154516efd9be14c643bd576678b616bc@intel.com>
In-Reply-To: <7d18b591154516efd9be14c643bd576678b616bc@intel.com>
X-ClientProxiedBy: DU2PR04CA0163.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::18) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MN2PR11MB4710:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c873a63-7fe1-499b-f320-08dea459cd77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: bPGcBzNPcyu8ND9EkmMLCdinDsHmDO9bKBBVBwT8vtFtjaNlc8MgLBiSGD5Xnwy9Xtf3fXTNSrpKqywenF7kt1vngYxPFGkXqsnYClVQEiRj9jWzBu5f6k1hRLPlDBIYPnpM9KMn6NfB4j5HSMncId2Ov8kLNd1dvPGALbdWCQKA50Cn8yYzOHbdINdDXUv6LIbUpFvbjRD1PAfKvpT/UF/AB0bToU4F+hdUmY5NDc5n61QaCyafrLUIg87WjrLyowypSaEMZDAsTgIuum5SauBDEFge71l99azXelmINaK91FaQLKbc5UHuQrsjTwyH6j8O+WpIpoesZv675N7s6o7WMIHWAqF9Mwgi0Bv3NVq1Kp54eobF6xr/bBWeDO1sgyn9w1r+ufgKrfqlarbcUwAqGR1s+Nzbk4gDPR8dsNTVgMHwHB9Y0mDw6+PGBec3pub3k+igQ9kdI5l1wSKgxvXQTfYzpKzWIsjSWAhQvnhVuRxGkN0nsN+Pon7A35fNItsFfOvuHxh+V+r03c+dcNuLVb21P1U1HkQb9pJjSudgkG4ldZUSRwC+Mq/yJGpcPvhFq+eVaRngiDZbtvMvfoHvAtAxNaRb8TIJB07dRvvJcRjjhCN4jfNbqY3nvZvme5a9PG7DMN7reGKDS3LX3JFo6F6Am87Ti7+mzbJHBpevn3/VbzUhmyPOxDYJNhthZFXm4HRuqaZS/iniZ/0W52e6xn/htEXFaz5FLEbHiBFW57c3F4coUq+vPbkp4Ms9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVJuUVdTR1p4QmZ4aTJ1TjNPVXp6cm5jcjJ0eWVWTTJheUI2dWF1N0FvOHh2?=
 =?utf-8?B?dWFiRHN2NHhPakc0SjMybzFxeW9WQmRiZlg1eDg0Z0gxeENGcGJiblRTZUh0?=
 =?utf-8?B?MjhLc0NlM2tDdU5HdkZKOGFsRjhTUW5kWjVOSWN5TEhaYkNsZndpejh2VEVG?=
 =?utf-8?B?QWZxK3RkT202VjhQVWFjQU1zODFCUWdlQWFkeGhja1BOVlpOVWVmTEFwSkRN?=
 =?utf-8?B?ek1rKzZzYjI2alJTcUhHdTduT1V5YTlKd3k3SldIckloV3lXKzBPRnBnNE0y?=
 =?utf-8?B?RXNyVGZhdTE2cHVmNUJCVmFxa2kwbCtMUEJkWU82TVdkbXl3Uy9nZmpvSjNN?=
 =?utf-8?B?L1krN1htajVmQ3g1OEZxcFc4KzlXZU4ramx5UUJaSFg1alN4R01RdkZkMUJq?=
 =?utf-8?B?TzJlZEppSHlxcUxmRy96YzdQN3Yzc1cwdVN0M0FZSUVQbnVKUU5EdXJYS0Vt?=
 =?utf-8?B?UFU0YUFGZ2I4UHFqVDBuaWpvTUdpc2NMNnRUblZYN3BURGg2dDRnMjlZSWFy?=
 =?utf-8?B?bVgvY1l5YUt6RVRmTlZsZFhocFROWDFpOFFLNi9pN21jMjFOelh1YXppUmIw?=
 =?utf-8?B?TGlDSEpMVTlMeFJjdzRpTmZPVk5ENG9YcVZwS216bnBtM3p0SFNnVlpQc1NL?=
 =?utf-8?B?ZTJ4WmUzck5TWjY0Sk1KRkRVUGdIbDdlTWMwK1VhWDlsZlh4QTJqQzZOQis4?=
 =?utf-8?B?U2FiTHppSlh1SGptL2hqMlhOWk1vWUQ0RnkweElVM3YyS0JzOGJEZ1VwTUxm?=
 =?utf-8?B?RjJqT2ZydUFuSDRaV3lCTWpYbHh3WUVncngwOWRzT2dFZTlSMWZUQkI4U3dU?=
 =?utf-8?B?dkFxV0hTY3hpakM5MldWK2pzVmRqTDc2dStiNXA0T1BKQnRZbFhzdmFqK2Zm?=
 =?utf-8?B?VTg1SWNlZGl4YXhwWi9rL1M4c1M2VkpyUGZSdVNOL2kwamdjT3U3UnVLc0o2?=
 =?utf-8?B?dmlodE9vUXFRblgrYlUrcFVJeENYMWxuM0U5VDlVSVVoV3dsMXZCZEswTDdO?=
 =?utf-8?B?RVc4T0FDaW40WFI2UmUzRGg4cmVPdHZDSFBubUE2UjIrN1lLaFB6WVVnWnZm?=
 =?utf-8?B?dG90T3Baa2MzVGNRQ1k3SW5EMXg4aHUwVmRVcUVpbTQzbGZjVms5ZGU3clZB?=
 =?utf-8?B?bkl5ajNRNndRY0ZsdjhNRnMvejZMakVWWkFTaWlEcXR0WkFKMmdDN05razlm?=
 =?utf-8?B?RFgrZjVncktBVHhKejdITU1uV2FjQlBjNEJGajhKVGc5NDFYWHUyNXdKNDhk?=
 =?utf-8?B?c3RsUHJpUm9yTzA0SGo0aTBpZVNZTzBiYTQyZEtaSk9NTlJvdCt1YU9lbXll?=
 =?utf-8?B?cG5ZNm81ODZTSTBDK1pkVkFVTU5hQ0hJTUFzdlBwbmhvR1ByL1J6Y3VGM3gx?=
 =?utf-8?B?ZW1vcHlydnE4aURib1hEamlBaW54ZUxDQ2Z1NFV3L2Y3ejU2enpVYU14cGVz?=
 =?utf-8?B?U2NmV2UwS3FTMjBQSVFlQzVqWDkzSGYxZUhvYVFsZERoNjhLbENOQk1qaVho?=
 =?utf-8?B?UmQ3MG5sakI1LzlQeFNzaU0ycHN5K1hlZ2FXajdRTEJqdFg0QzVreUg3TmhG?=
 =?utf-8?B?b1Bsc0Racm1kT3pWMHp1REJPOWhxQ0NzVnY0ZWtMQXZXSGlPOWxFeUYwNDIr?=
 =?utf-8?B?ZkhyYnNJc25GWGFxZDlwYlZRTjRkVlRtZ3pkak9iRGVlNXBRK3I1TXhVV1JX?=
 =?utf-8?B?SWlnWVYzYm5tS1dqS3g4SWlzdlFuZWVyK0NJSUw4QzRhTlZ2MTRIZ0xObDkr?=
 =?utf-8?B?cFBYeEIydVphY0g5OEpZTnc2OUp3b2JibHgvdG9mTTc1cng4aDR4c3BkTDN4?=
 =?utf-8?B?WmEzWnZ6WDFYWHNpT1lzMUU0enFMdUdBdHFEU2MyUVE4RkRPbWs5TC9jVnVY?=
 =?utf-8?B?eXdpd2ZUWUJ2UEdrZGJpRHRCQkUrd2ZwTnE3Slp0cXVNRjJ6RWtPdWpHb2VC?=
 =?utf-8?B?VStCbTQwYXZ2VmdrSzlRb2wvS3RSSnBKUXEvb1pnTU4xS3F5VjFuMWRTYlJp?=
 =?utf-8?B?T1ZYVnZ3WXdKc1Vxd0VLK2h6Q2ZrQit1b05EaW1yVUlsRmpSbUJmMktsUHQ1?=
 =?utf-8?B?aGliNFcvRmErYkZUVlkyR25sbFFoVFRHOUNzRldVSDJOaU1Qdjd4Tk5ndVZv?=
 =?utf-8?B?cTRkbUZtc0VLQ1NhYWpveXRENzFNMnJ4UzY3WWFFQzdGc3Qza1FQNmZiRlZy?=
 =?utf-8?B?eTVaREtnR2NGRnNlOGM2UldiMG5QenhiZVRIV0htMTVVL2o4ZkcwZGJRa2NW?=
 =?utf-8?B?U0puS2gwc3UxbjhiRmI4VlJ3Yzg4MDN4YkNlSW5GZHc5dFppUlJVRFd2RUx3?=
 =?utf-8?B?YnVlYmhFSEdRdk04aXhlN2k2Z2VyN0IzRi9ZSU02UTQwY2gvTytUclZ2d2Nw?=
 =?utf-8?Q?DWBv/WzabWT3lVKw=3D?=
X-Exchange-RoutingPolicyChecked: WvzoOHxNDRFQmXKaZn4GeEb4zDu+qKthtJR11pHMKTFKts7ZkpmXWndBHdY32SzbBkLs0Lzmyo8iNjA5S+DuLZZe9LWoV24/UgoTI1af3Px8d7/kNFfQmyrvVOVJCO6Ma/nNZvmTPUzC4T+ZWqbujFMxm9/cs201pTxVswAiljQcL3FTgq8FoS1SRxdOTJqcF402xYA8AuebzmjyTUN+Eh33gTG1vFiBGVO68Nay32GG5ensvu2xOyhiK2NCstqQVBqTLuGopUnrkF0laJae/mba6HEC74EDxLFEFP1Clbm+6xcsqe6w8PrjbnsHsR4AVsljqW6TtYJnuO+xoKxsgQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c873a63-7fe1-499b-f320-08dea459cd77
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 12:37:54.1094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bMPfr+rPCXONqJDgyDAk9yG5ykvTGtA+YFhBNO9I1duSHfR5MKHf0l2hxEOI+IGK9np2mlVTiZdyujcCORDNY8qBocBe7a+DoFlwV+7807I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4710
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
X-Rspamd-Queue-Id: 897B4472983
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,m:jani.nikula@linux.intel.com,m:sebastian.brzezinka@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi Jani,

On Mon Apr 27, 2026 at 2:26 PM CEST, Jani Nikula wrote:
> On Mon, 27 Apr 2026, Sebastian Brzezinka <sebastian.brzezinka@intel.com> =
wrote:
>> The i915 local fetch_and_zero() macro is a non-atomic
>> fetch-and-zero operation defined in i915_utils.h and duplicated in
>> display/intel_display_utils.h. Its functionality is equivalent to the
>> kernel-provided xchg().
>
> While I dislike having the local fetch_and_zero() macro around, the
> usage does not need to be atomic, and there's no need to switch to the
> atomic xchg() at all.
>
> Using atomic xchg() gives the wrong impression to the reader that the
> atomicity matters when it doesn't.
>
> So that's a no for this patch.
>
> There's been a few attempts at fixing this in the past, one I found was
> [1].
>
> [1] https://lore.kernel.org/r/20221209154843.4162814-1-andrzej.hajda@inte=
l.com
Thank you for the clarification. It=E2=80=99s good to know.

>> Replace fetch_and_zero() with the kernel provided xchg(), and
>> remove the now unused macro definitions from both i915_utils.h and
>> display/intel_display_utils.h.
>>
>> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
>
> Where did this happen? Was there a v1? Is this v2?
This patch was initially sent to trybot and received Review-by: Krzysztof
there. So I=E2=80=99ve copied it here.


--=20
Best regards,
Sebastian

