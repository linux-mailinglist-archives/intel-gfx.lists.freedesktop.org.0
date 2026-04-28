Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPWAGsqt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CD1485271
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4392610EBAD;
	Tue, 28 Apr 2026 12:53:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cU2uDF5V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D72B210EBA3;
 Tue, 28 Apr 2026 12:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380803; x=1808916803;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=9ONDPXMC8DzuZGjGJLPOSaSD80bObsNPdEojhQebuks=;
 b=cU2uDF5V5yTgrzEaLZc1Xz76QgN4bNTeaes+QJaaBcs7GHcTd03h4Sxj
 tcJrGnYo/cWpbDHwfaV5UGU5Pjkw3mM7LTfkAcYeYds6kXzHM+AFA+uj9
 lUl1IrnZyW2+qLEkrVg6RTUDMvqykReZM6f/iwCtHfDAqv4DvhhdgzNHY
 wZQwZLqyIf8HYQW7THQV5fHCrtmBBvpeLdaeXAuh4+scerA2QCpRuPEqg
 MlahsusZOe40s6M6eVBn+eKzDSeV6OcKTDEGhqj+VQ9PSeXrOuNIakxMB
 +PnMK2GFnI+VO3wytKheGNj96w0Ci6Ixr8+KJ8bx6O2U+RVoiJu1QDkMn A==;
X-CSE-ConnectionGUID: m5T5R6LMRHWIuDHRkWbk0A==
X-CSE-MsgGUID: J3SqqhkMSsC/IrsqO7qEQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398607"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398607"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:23 -0700
X-CSE-ConnectionGUID: 0rIHs6sPQlqo5sSo4JWHng==
X-CSE-MsgGUID: TpjKvhZjT4+eoEEEwt2bPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911333"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:22 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:22 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:22 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aFbJ/MUxiv8wFcplns6kwlTiAAcOfRflzGajT6Tu0PkZaV4mB01da2HbTxDeO/7pNGj8SPFL0AohWBgUawHx5XBVa47IqQEyKaiCVxxzGGxDlZysUXKXyTa1lXF7nvopRMn+ET0XauHmo99LTTXtVYDFGTtHoTzp9rIvOAnaW7+G79v9ti8K45SHciOuyLbDEOuQXArCN2u3Iy78esENB5jXOzyWdUei8txH2XCBqObeG5G0XdpPGW4jigDbDRO3yzCFFCrz3bqGSd5ExqGMvLsViA9TLToqMQ2dp+5uCOFWSxIrXaxyVHsLSFgKz7qL/xUWgF2daepSpUPDmfHi8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1pU5iTdRTy8+5X4eMgSXuG2hJZFXmuJxKgkw6RH2mrY=;
 b=Tompt27EEZXDWrKd5uE/ekiGDHCBIie2a8TKHJR2B76tG0h4PiNZpLdnNXidob4a0DgwwIk/w6QxwT9HmSUOZTbWiRpV0Zlj0AHLzlJR6DESqOzjOA5W5k7pkQi9vqwNExuH7RC9ti5jJyr74MAvPm3PedQP4YveLoa8ek9qHPdBjH+c+j3iRmpNy6BPld+r57f+rDkgQKaJYdzuH7cOIVo++2m1OoCo/Sq3hn/CYpcjbRUf4o4ktSDkv2dy0MXHRaPrmHgSPaKS57ePeu/JNyArg/U5xZGMsE+C9cJ2W//OCculAOR6NeusRAt196Ru2MFZRmYOs7is/Y6ULcE9QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:15 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:15 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 021/108] drm/i915/display: Factor out a helper to modeset a
 pipe with atomic state
Date: Tue, 28 Apr 2026 15:51:02 +0300
Message-ID: <20260428125233.1664668-22-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 75e5d1ae-f3ee-4f0e-dd37-08dea5251cf5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 9EdOdHkt6CXuihRAQGq6CzjmI10q8q8rrq4k0BqN1K7EWCv9QZIQ32ZZXWInk6EImE5SF0kW1dsG0juJkVJ4YM6iZskY9RVPGs4B7XHmzQNG+QH7qS4KLcVYu+sO9qSXpNqiN+ayIWEzSuOJOfN9C9ysYW4a5C/fNytgWZFP71W/AS2ybI4TsW7GYPKvCU4LMPrxSedtIDZtGE6JfOMQsLFNpLHCbnfsp8OfqYcL3s9uhrmmOVq77zVZChaXEtj22oPubTZZiXmlumAT/c3eBVOC1LyBtloXaD0mdC7j+3isf4xTwR4OgpYYo45slqDXi8kQOanHV1fL1ppiPTvpMlaR0W7R3aA473nQAZqE3ks2hSffr7TfSrp5qVXL8qcHDQjwciqEOiEA8soIyMaHRokfiMW+enUa06EExYERVZyEiKNv+nuXmIMe2mzBOg9vXrEBKWgFZ2KjOgJSUYEoDoteUaPChr7x2xAHRTgFoNn4iaNqyECNPC9eOBMoF9RV8JFU4selq/So50gjMT9NTkPwDs/b6g35Xy9X7UAzrygK6gb3MVAzxXRCLOu5nfCeXGRfsFbIz6CQPWJq9pUjCMVOEd7JdFMK77wYj73mLa/5P2/WEPEaXlQBBQnakErW02iypwMCI4TDSq7zy60QWEBa4bQI0/7ygdWNUQ6u4MvNcBaqm8S+cumfDxos1MIuF6YLMeuesWf+dFnqHVzVtHjkmMZehxPYqY66RP3ZOK4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IzZLZSQQMtYNykmpSgc8sy5Y+AsrqU2FdIrKT5CxGM6UTr3hK8l7S1cmb7WJ?=
 =?us-ascii?Q?e0s51JUvAs03ShyhaZmRGzgaD7TH7RKVLIWfndpzXt5K5phKSQgc7XRsCt4e?=
 =?us-ascii?Q?woU2KIOrWl3VCzXFDzsY+Chrld/TB7aZUKj/zcfISN0N93uM7CHQorCOiYN+?=
 =?us-ascii?Q?KRMJasF3SuBP7TnzvUpxmralIYWr0aSVXBaHAJV0uS1qESfDmuF6rN7ytsqy?=
 =?us-ascii?Q?iY688e7sx8cC8WeDAPvFymUY4+It8fITx31JoI4qmtk7gJ4cZsG3Ppi6Q29s?=
 =?us-ascii?Q?t4inDpAqcf8g/l2jHyJEPomiCEpipM95J5lKoDrDQgdgmxrTXyHnUmG/TRxZ?=
 =?us-ascii?Q?Twh4qKVoFoOLWGdWzFQVju1eAFv4e6B+6yNNqINDQMs7O9tTBOH31TJe+b9u?=
 =?us-ascii?Q?HIhS1ZYgwBuV6M3SWqgLoRS5LSf/6nEkiZjX1xEnZ5h9p2j1YbY3wM6WizBS?=
 =?us-ascii?Q?6hvrVfAEHzUGyAdUFOVuBfQ+3xN0P7LcIvMMdTmMPg5OExUXr/kZytI9ibrF?=
 =?us-ascii?Q?ieFXgYG7qv0s73ZYMWy8io+ylaY3TE2grhNh+s9iTGKqxTDikP48/tLX2hj8?=
 =?us-ascii?Q?XC8mGniquhaVcaxE6c5FYTVAvwzNhAzr1d4r64HsuwstjDY/UBsrunrjrLwF?=
 =?us-ascii?Q?EyPhvqPuSkdYgddFkJtaA6hXCax9lA7RRR3JZKrpShDuxZCGYZQqoEfd6nHu?=
 =?us-ascii?Q?L+X5YhdQq6LIJaMAYbncRtms2vm2qwWR31touNC+vYrRQCGHj1hcET0OJ0+0?=
 =?us-ascii?Q?Yo+9AhTc7So1ynxqUNQilJ57EQpDqI/uos29N7/05py8CwVXWAjklEbqOrgi?=
 =?us-ascii?Q?eWXnH4AfNUA3OmbWhLaAw3Pc+wK+stQtELnic6Qs/e4G13Z6df3Ka+nE9B1Z?=
 =?us-ascii?Q?8hh30jnFGOyUsRGnK5Kku8rreOvyrJSyj9BdpbGnksFdnPxioscUozzNNDaz?=
 =?us-ascii?Q?ChMML+7IyqSAoxqPhKGfyYMZ1Q3OCeW6jC41EPN9gluVahh1TJ9wnuVdoa+G?=
 =?us-ascii?Q?Yg6VDly9r1p/hQYbijN7/Iw3rhNBFogYoUqaXpfZ4Iq//V9btxxZkBg44Ytb?=
 =?us-ascii?Q?Ms3wL1ga17B6Hp6h8tqhHShkw7BQmQngCJHu6TA3r/ZPYbFgjjch1yeEYuE1?=
 =?us-ascii?Q?NSR/xYoRCfARq3wK9RCYw9vMXgRBMTRO5Fb38AQq+jxFeQdMX2CfkxzNY13Y?=
 =?us-ascii?Q?kZiWJFJ2WWzkzU3yq4bQvtJ9a4RxGAtZr75rz21vYII9YBikaWCON19Qxygv?=
 =?us-ascii?Q?93XXZNZxAiS9zK40gq9pG0JGYNu/2hHpxlT9ERBX6K2qixZm5EXw2yrEVq8Z?=
 =?us-ascii?Q?yz4qunHeTAyff6Ra2uLsmkPzeNSvSARhtZLhF1YoO1H8pluFxhFLGWFe05wA?=
 =?us-ascii?Q?0MUh8d5cLD8pgZQTCV9bArQVYH9f4mP8JGKO5pyhQHCrmSlLWc32R9lyX9AZ?=
 =?us-ascii?Q?RY9kEv3+klgc3iwLtWC2/vAZzJm2luY4wMi0JcqDVyO8TLqWILK/CsstKC86?=
 =?us-ascii?Q?LxbucvdSwf+uPR0TjjprIL+mnPBlf7POSMELDuwgE7gtlR9weB3G0mTYQVSz?=
 =?us-ascii?Q?88lu4RQW7Po4mKDjkO69n9Syb+oQqtWLaVM4uOpDD6g+06y3FG8XddsVj+ju?=
 =?us-ascii?Q?AT8gcR2HVlAaMECPp6CSESSX2/jDbkg0kXZFE3ViMpKT0vqfUKZHjlG3veir?=
 =?us-ascii?Q?MnBeDbGUbtPPZJXyGOvpb1xuq6b33wtTQx4ERW+CdEC2pF9A1tgpM3/Uv/oy?=
 =?us-ascii?Q?hpV/Kyjx1w=3D=3D?=
X-Exchange-RoutingPolicyChecked: VUuI+S86whiqEH1xaMNRlTUgxmXc5pXow+urR7OBaz9rH3geypeY8eq4xKjUhfAPiu6GRLyNen83aW2mmoyPssTm5ufTaXZlwT5T9YJjmOr2mn2+AvsCO1Yj9DHhMgneK9v/bQmWriaE+LVCs7ehGj+jX+etg2HMaJb9sbxB/R4pJds4XW7oC1yMlw2GPuQ4c4byBzsN1bPuuTvNGe0Mf8TfVfv8KB/JoxMBTB27O+NCe3BUGB5QyJx25BtGlAGZcK3W2WQ2Rz1Gz02NRfifsKcTapu3jHBjbp4g7sD9Wc+kLcfSTYR6n44jJitUlXSq7auufEPv9v3+VqpyrWQL4Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 75e5d1ae-f3ee-4f0e-dd37-08dea5251cf5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:15.3530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9mmW/MahmcRECxF8PQaiwVkOp7i0JrFjCbMIM8/qkGWvSH7P6qMS8DDIKp8zzm4kPH84gcgOTJgdYVKcpHjcJw==
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
X-Rspamd-Queue-Id: 18CD1485271
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

Factor out a helper modesetting a pipe that accepts an existing atomic
state. This prepares for a follow-up change that needs to allocate its
own atomic state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 30 ++++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 2 files changed, 25 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 674a4ece6d0f9..560b057ec163d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5629,18 +5629,15 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_modeset_commit_pipes(struct intel_display *display,
-			       u8 pipe_mask,
-			       struct drm_modeset_acquire_ctx *ctx)
+int intel_modeset_commit_pipes_for_atomic_state(struct intel_atomic_state *intel_state,
+						u8 pipe_mask,
+						struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_atomic_state *state;
+	struct drm_atomic_state *state = &intel_state->base;
+	struct intel_display *display = to_intel_display(intel_state);
 	struct intel_crtc *crtc;
 	int ret;
 
-	state = drm_atomic_state_alloc(display->drm);
-	if (!state)
-		return -ENOMEM;
-
 	state->acquire_ctx = ctx;
 	to_intel_atomic_state(state)->internal = true;
 
@@ -5658,6 +5655,23 @@ int intel_modeset_commit_pipes(struct intel_display *display,
 
 	ret = drm_atomic_commit(state);
 out:
+	return ret;
+}
+
+int intel_modeset_commit_pipes(struct intel_display *display,
+			       u8 pipe_mask,
+			       struct drm_modeset_acquire_ctx *ctx)
+{
+	struct drm_atomic_state *state;
+	int ret;
+
+	state = drm_atomic_state_alloc(display->drm);
+	if (!state)
+		return -ENOMEM;
+
+	ret = intel_modeset_commit_pipes_for_atomic_state(to_intel_atomic_state(state),
+							  pipe_mask, ctx);
+
 	drm_atomic_state_put(state);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 1e76a455d7c43..79e42bfd15e70 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -478,6 +478,9 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 pipe_mask);
 int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 				 const char *reason);
+int intel_modeset_commit_pipes_for_atomic_state(struct intel_atomic_state *state,
+						u8 pipe_mask,
+						struct drm_modeset_acquire_ctx *ctx);
 int intel_modeset_commit_pipes(struct intel_display *display,
 			       u8 pipe_mask,
 			       struct drm_modeset_acquire_ctx *ctx);
-- 
2.49.1

