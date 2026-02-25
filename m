Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMPmKEYjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4569319A9EC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A1910E7B7;
	Wed, 25 Feb 2026 16:28:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IsYHAtev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 655CF10E7C1;
 Wed, 25 Feb 2026 16:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036926; x=1803572926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=js7mrCfC6HMmCgzEcirVLMiF5MDur97vQw2bfwHxoNY=;
 b=IsYHAtevgzT8BU6SgeLerQfJR45u7ieMJHjXWWsMPaWKOE1a9oJGcm2C
 1w4/U0apVSBxhYoXuGeq6ESCZ/BSJgbcXSFWK1WYTw/Qtb79X4q6uI/va
 f7zn13gPaZzeYW60b3HKqjgL3K7FPNxuQ5btzLUuMEt5Sr1Y0AthRzIIG
 dqRuXCZJXRJTCXGran6Uz6l0TcTnOO3mH0uPA7tCcwCkjZwsESUR1Vgas
 ziqUM92/JMszwdIEVZERw6BtOmd5X3o0yWCWZ+zrkdizGMHKpfgLy/HOo
 uBcGIYQFtC/QKCljwSB02O+EDnPEcHXV+u7U3SvhdXv9fXvnoCZRAQ41i Q==;
X-CSE-ConnectionGUID: BdBcVzPlRmuPF7apFZnpaQ==
X-CSE-MsgGUID: /JZMVHf1TF6vSsqT/1xULA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955376"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955376"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:46 -0800
X-CSE-ConnectionGUID: sL6AVCp4T7CBkf2jsOr2XA==
X-CSE-MsgGUID: 7Yjtqht6SE+BZ125QKGq6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783669"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:46 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:45 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nrHqKjTBH7qZqkVjBL0mTuiJXrG6UXG2ElyGy6sZ+JTy71/OohFylrcnrpjppRAgtpow1tkgo9M0U9nYrsF9jZRouIpdsTvzzISo94om8CslwbzIWe+gmjUHBnvW0W3N6h4opCJCeAmhTxpgUDuJtC02IwejjRff3Yg0LHTfkkzVMVJzMWPjVnkx4HkoPL1IZ2CiwxfkxPcrMcyd2htjneeR3SO+3OdfJGBdIK15hnJ1MeLsb8IzI/VgwAwBNolYWHLPF0BL9PVB1VmZSBSMII1nryG4CJFhg1j+DyUN7zNrL3+X+wnX18aY36MoOAWKMQ4TAq8lND0fakm3TkLyQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PtsYOZqZwMZR/cVsH3HhJFP8JtWmwl5XvhxN5r7/fSM=;
 b=fcWCKo7zzkDukWKMzFakv5cemZPGSmlA6rJfkFSKUJavoZsIzi0Rd2beDaivHovKBLnWqw+cOusg8lOaKxkLeLkDkELq7OEjWvEfGiOFSi4H/5ZeSKl0qFxqXMO7Ur23DJSbTFMSVrZI/NXgd6jMyxHyFdMiFlz7DzcOCmJRPs/bMokmEr3pKFAP8qP5DAPLFRN0dumTAWPWqaCCbTRRyv1gSnfqaB68kaN9GqHxUrv+D+2j1cEflZoHmU6h3DYar4RwnJCFmUiktMZFgJJRfEzE0U1epZih67xyuxlpjB7aIWcXCI+yiRh0WoIOmlwA//9PjjYsZRW5MACcKKbRhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:43 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 06/20] drm/i915/dp: Handle the
 DOWNSTREAM_PORT_STATUS_CHANGED event
Date: Wed, 25 Feb 2026 18:27:37 +0200
Message-ID: <20260225162751.1255913-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225162751.1255913-1-imre.deak@intel.com>
References: <20260225162751.1255913-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF0001DC1A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::26a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f620878-707a-4de1-9079-08de748af0dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: e3y5AY1/XfAnI2lEv7bBv2rTOuBAuaCEtV+IvyqNm3TJGG/iFXlcErzvd9YD8BrlA7WU16SV8tHzskTsQhYtqyzqn6q3x0FLfm9uf3DXOJJLZxw99n/NVsPVDDTdOe/DioOHxGU33k1z6ZOwXjTP+lxm4Hd9r5DV8z4HZCYNSPs0V6QizYS4YwEitnVjYdPLnVcTbKyRNsTSj+qo9GGfxxdBaRcF7u8sELgn3ApimyCzkMDigcAdLFMs2GWl4j7/Z3UV1L9NpkumHCaRPpMA/ZdmxwztRKLaAcdIRcMYdRrxE5tHTMC6sfkRbYDN+cL3TQJQG9NrmXDoKFH6U1PmYG5V/jBcnxTEiU4ZdM4QSXnHa9hd3HipxbYy2Yt6WEQetvUn8IWStrC4kFObZsQQpGXTVtdZ3x/0SCf0C3HeGMMJc4kYTyGKryFcXsc5w/7lGetnvFwrBd/RlRYPhsm8yJsUQzXASwuRg3RR/xJLZGW7rdajb/Bc1TF7celnTTso4meNg6Y2MRN/NAHWkJEaRxKPfdxpK8dZ6h/cXqL3YDX9m/q/6TzUKhpMy9AFE3q6ORzWUxST/2Ei4IxSMwIi/oBBURll5ZsujKEhjspnyXooEuoRE+ZzYK5bkkJGMCqH8Ax1lGPZ0GvIPoLMeK9EVildq27WITBwqZZqXcPPwyS3JOicnGqSCWf64WlocoBj0hfJ/12dwa19qvUKyv7iJbW2Pu5E0Y23h5xCK81K58s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uniYPRVLpEG2LfnJLK4/kbXriT2IsEWcJywn//7uSSinp0LowxDzqkdFQ8sz?=
 =?us-ascii?Q?UZVk08dm9/N3DkrEw29Jp0RjWrTh7UI8C4XZtA2KQ8/ySi3UO7BMTVDdAY8P?=
 =?us-ascii?Q?Vb+ihPZxnLYoQlMVDiNgAdA3+lO5jdj5yvsKd/cOfcEGxITKbG96AexjLpaf?=
 =?us-ascii?Q?irocknJwH1lsPXlh7PUrVsPa9AqYUpVoMQqPVRU+XvNU0MwMSMOCzW4NcJbY?=
 =?us-ascii?Q?lkqQy6yhZYA8taErfpDXDQbc18hq/lRhTzAR7SO1FFdlbD1UtesaK0jNB7C3?=
 =?us-ascii?Q?ZKOSeyi7Au4ja/fcUqjnEwmJsi8d88BLjnxJdOcZJqfGWJ0TUDVLz7S0Ew6H?=
 =?us-ascii?Q?eBxgUDyFwf5AvpDuXplDg+1/y7FRQy6KGaJ6yrRq7ZoWbx8ZMb1NwJZbn09M?=
 =?us-ascii?Q?W2QeOgzX/90hN6zfVH58tPaTyeNiyc+/mWpXnOZc5jeOBPCnobrefk4cDPkM?=
 =?us-ascii?Q?rAn+t2saNLMcpg+ubFrKwfWKbMxrnpP/0j9F47/A5DBkpMxUqYV8RXkWFwUr?=
 =?us-ascii?Q?4nAdlinsN7bT9h2xEVTDZVDrlyD2MNR5olpcwZhNgBV65/wWfnbcZ1F6d+Z6?=
 =?us-ascii?Q?WKeAGabhEyLFSqdcnwhVzqcHEmSEw06FUuvLSdUAjcRyhUOAclr3TCIHbQUS?=
 =?us-ascii?Q?DRO9ZXU3hwKi4g1bW3EsoPDD0eRv8SkcaNJ1sprtttnY+0O+BTzzEOGNDZ8e?=
 =?us-ascii?Q?0hAUpWzb/hpl2vnrITML/zCQyFqwFRvbfY8wd3lA6lRO/Fq4bmh3A9x++1me?=
 =?us-ascii?Q?9nVRZCiYq1YrgVdWqMjkJ/OT22bCYLtj8BY0TTPFhc9n1etFx15u2tzpGcPy?=
 =?us-ascii?Q?5tSgs1Bo3HFDkvME8eTcViLPwcYI2SeGFXmw0T9vPR0Xu1SgfH+A86YD3WsW?=
 =?us-ascii?Q?wTWxBVxhiwf0sTQCeIkIrugij6fgctpZtcXjTbAMAC2z9vJkc7dNRmJicCxs?=
 =?us-ascii?Q?IWP4VbwZojA8U556BupwBUoPbOOCA11tHp/iwXwFJcyTyMbpGs4pp4IWDQCb?=
 =?us-ascii?Q?MLBncHfk9h+Wvl4d0xLL8PRzLRtZZ0Lavyvba9xaKz8q5oBxsy0pGVIOTUzU?=
 =?us-ascii?Q?Gg6pLN+NkyJqH3DBzU5Nd/danzQlUnX9/anT8DQl8ARRzY2YhkblJDf1fyjp?=
 =?us-ascii?Q?XqtPI+2mbAdhRo49RQaYds5959zdOa0FIENbRhTbBAk2uJPPu4Ilk8LwSyma?=
 =?us-ascii?Q?uUXwaGF3aBFhLBnyinSUjcAWPcl3ip5OUd4Da7ib1l84Xd29PY4x2YAtaxzM?=
 =?us-ascii?Q?TFIpcyLq/fmZoMZ6+ACVfMNuonPbcjkoCJSHIR3JfyIJvZw512PjyzHBKeht?=
 =?us-ascii?Q?0MfYY1jUNHA0Gn9hiKGiemWh6AOZvxPZk7x7NstxWoHUaP3HOoHDSswTSqpw?=
 =?us-ascii?Q?PqY3/p4Gm3Mb+Be2fhfkOtnagSKhVNK0kv9uGIk+GqNt0bzIm2vFxnMTzWYI?=
 =?us-ascii?Q?iL6ldqrEfw/wikqiKa4u5veOnl401LCB6HIjJsJFeciDx2hTAUkAVvfnJ4ir?=
 =?us-ascii?Q?U7TWglp14I7zY9Q4f9izM31Dvvg5SdbnfubKiGPMaEi0E/eW+A+QXu+RYhQ5?=
 =?us-ascii?Q?REnl5JZ1+J3LtMXtRBhsSxc4S1QqUL2m7I/6dB0jergb9HzgytRrNTc04Clt?=
 =?us-ascii?Q?gdiY//0QoUIGfbfw1+E+knS66TrnHxvIXUV0laaohrZw58+eflm868rYNwrq?=
 =?us-ascii?Q?Dw14TmRU0Ptf/nMkgRTryYD7PGsNdZlkEPyRXbH8M70dbn3bjw1fdiLgJdY/?=
 =?us-ascii?Q?/LZ/kN9RaQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f620878-707a-4de1-9079-08de748af0dd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:43.0287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xayAj82fiSWcGJC7Y/7qFKeC+8Hevkcl38XIj4loUNT4j2W5ct+TbmSZ77+nYeZ5eFV2IrmzVHyv9Iz4LAOUuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4569319A9EC
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

Handle the DOWNSTREAM_PORT_STATUS_CHANGED event a branch device can use
to indicate the state change of a DFP connector on the branch device.
The event is signaled in the DP_LANE_ALIGN_STATUS_UPDATED DPCD register
setting a clear-on-read flag and triggering an HPD IRQ. Accordingly keep
a cached version of the flag, updating it whenever
DP_LANE_ALIGN_STATUS_UPDATED is read. Schedule a full connector
detection from the HPD IRQ handler if the cached flag is set and clear
the cached flag at the start of detection.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c          | 16 +++++++++++++++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e8e4af03a6a6c..126682ecabec9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1796,6 +1796,7 @@ struct intel_dp {
 	int link_rate;
 	u8 lane_count;
 	u8 sink_count;
+	bool downstream_port_changed;
 	bool needs_modeset_retry;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f38913834644d..25e14bc0f5b9e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5543,7 +5543,14 @@ intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STAT
 		ret = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
 						       link_status) == 0;
 
-	return ret;
+	if (!ret)
+		return false;
+
+	if (link_status[DP_LANE_ALIGN_STATUS_UPDATED - DP_LANE0_1_STATUS] &
+	    DP_DOWNSTREAM_PORT_STATUS_CHANGED)
+		WRITE_ONCE(intel_dp->downstream_port_changed, true);
+
+	return true;
 }
 
 static bool
@@ -5863,6 +5870,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_dp_check_link_state(intel_dp);
 
+	if (READ_ONCE(intel_dp->downstream_port_changed)) {
+		WRITE_ONCE(intel_dp->downstream_port_changed, false);
+		reprobe_needed = true;
+	}
+
 	intel_psr_short_pulse(intel_dp);
 
 	if (intel_alpm_get_error(intel_dp)) {
@@ -5888,6 +5900,8 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	if (drm_WARN_ON(display->drm, intel_dp_is_edp(intel_dp)))
 		return connector_status_connected;
 
+	WRITE_ONCE(intel_dp->downstream_port_changed, false);
+
 	intel_lspcon_resume(dig_port);
 
 	if (!intel_dp_get_dpcd(intel_dp))
-- 
2.49.1

