Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AMtEqk4/GmUMwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 09:00:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5288D4E3D18
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 09:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F2910EF9A;
	Thu,  7 May 2026 07:00:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XItu7Xgy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A464E10E1B5;
 Thu,  7 May 2026 07:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778137250; x=1809673250; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Fkvt8PCqUytBE8aZneLIDq3EEZOlLAwBO8isC61PiRE=;
 b=XItu7Xgyzj6Wmoj5F/W26OgNpdoaOgk3eIi++q74oaHf4t7aFMCYiMlW
 zehTRk7nan0iR1VeQubRI9lXGsa2+0VQW00pdxlv0DuqWuqOjjWWlKp3N
 FwjnoTTKQS9UfK8ZXmQcIPWj5RkbI1wfq4flWnJwOWfJgoOQ+zXjP1S9p
 LRy6o18curasW90J6ggYFPOYZOOxN7EGao1Y6LehHW34tF13fxzFyKDiy
 AvCpjvjurPeg58Vks8MTSDMtW2AwfdgcVjIWe6cP+hPzK+6sGtzbnMvIw
 H188sdHSVvO88DMXIVLASyUi0yjTwuNBsgomKH3/TsK5k8tpBRsZDl73l Q==;
X-CSE-ConnectionGUID: kX8bJaTtQoCbMQTiSk7z7w==
X-CSE-MsgGUID: SXnD3ZuMQZqIHMl4qmkPEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="96646991"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="96646991"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 00:00:50 -0700
X-CSE-ConnectionGUID: 2FHrz0KATee0/oXyvEFYWg==
X-CSE-MsgGUID: oLq1BXUxRs6t3aru1mLeXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="274520908"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 00:00:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 00:00:49 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 00:00:49 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 00:00:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MC7S8vB+ayHZpmW9g3elfpMpQdRyykXmRb8SHLrm8gMNIhVgtfZsxxAhwh0N3ExZoJsdN11aZMyXZnQlixSjwHJUlMCQHrPNN6RYp5r1fbmYq70lydW+Gk1K939N4u/I44IaLT+TgE5nqwQAOwFYxLpxHfM/rSLJ0Sfx9RMC7byDE3b2azMkuWN8OTLnBA5PJ8SQX2A4B18xqgCkKUM3TBRbIr6ra8H8zm9tt6+laNOFbdrIWIFi5LcijBcthI1/6ZFHIcAJghGged7Yq3A/7aTkwwb0EMV8SUanvkFEYitBhtgiGWsefZZX6pZX398bPaT5HokHhPMIpBPkhRRS0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6mLXdNM/YCoOY6rjC7QLIOLQ2RIbAFExDgMA/gfsn3k=;
 b=nVo99vjVqPoOIYF9i+/kk+HrEHh7iqoUNq5UlwRNxBMZvUsJaDn+mbQE8nlfyEPURPwUr+yfjJE3PPgD+LOfvh7MCyxXGxlEI+/HTK+zk2q6z6WcHVt9I1m3hX6FkOZ+Y88pnc/B4u0FM6Rwi4z68G5USHRsu9I0oJA7yv4d5dQj6341d343JPLr4szAWgUWBI0j1z3M5qeV43Brl9yrGU+/yJLWVH0QzXzp2T/kh7LufhJops2W5Dwu5f0t6uCpnLXBXhuXC9+3eSqhFsE0XaccbDInNKvRovAWBDMN5v3b/ca44WxVnriK4tfeQzibAgjc3x6siBVyv9su6Qj2zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB6152.namprd11.prod.outlook.com (2603:10b6:8:9b::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.16; Thu, 7 May 2026 07:00:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9870.023; Thu, 7 May 2026
 07:00:16 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 1/2] drm/i915/ddi: Fix cleanup after DP connector init failure
Date: Thu, 7 May 2026 09:59:39 +0300
Message-ID: <20260507065940.2046690-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0004F08C.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::634) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB6152:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d080581-636c-4088-e253-08deac064ace
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|3023799003; 
X-Microsoft-Antispam-Message-Info: mRaIQNoTy4lkkwrboSYOWhsRitVB2719fmcWSJ0e0h9FNFFiI0XgfGVEJuQGbgv4044TeFBkywdzd89mQ7WqZFPYJDmLsKQCX70E971lQmp/4DnVwuxiKfXw57BauYvb9VUMugWYTT+plBOgx6iUFelIh4vU56t5xxFCcQ0qOBaHlBJ8UBumLLlRJgNTVy6vgjn3SAWBfuAuIIwXlW+cOR+7ZRyCDnj0/T07Kf4o0HiOiHqIpHylrX7NI8ud5IuTF0ISDTyXOiR+w6zAER/TkecCo501+EWrdHhE+wxGWB8zrJFuDjNQyNUnruptDj9podWak214LagJLJToGIumu0vlpHGc/9KkGYWunxE/VplYkrQ+WavaUgb2u9qaf8x1FU3ZrijtYXd/3x4+yR+56EavMGOI6q14bpkEEH1kfsM31n0ZwPeN8HY7vyeA1/dTlQHwSlDizOWUzlvr/YmnH4n0BpLECFDiLhm/g3zoZI64IrB1qglA2pjPzAsJRixSF4ZjnjROhIvhE6uppQ0F4Sd9eNBOY+uXIhh+CLq9SBq0FJpjq74pli/o262+JLa/Q4ZuweZKVqGSCXRtqj0Kr9QvX2qCz2OQHQEW+3mns0ZT3/lmx6/tM/mVMAdTL+ThPHMrtIpFoYIVv7gCTD0p9RVvI8CovRD/By4kKR2I05FY0Zi4ZpuNlBy3YEov1FRy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oSKH6Es4pMJ49WEWGWBGrsbJjctY0Ys3SGdhtW1dQcmfTPgGMwNm/BIf2PoV?=
 =?us-ascii?Q?UY3cV4IH2GgIz41G7hsA+ST0W1gAgm26a1iL/FOaIpz7N4BBGXmsSZb+2SEf?=
 =?us-ascii?Q?hS4YtCR9CrxCIwJ6suf5DXSwZHc6uI1Rw6hjg3QbOc2kBQqmeD4krpeYtxXN?=
 =?us-ascii?Q?aswf4kijsDD6M8hiJJSYLjBtpywO3R+ghNyVAGO9gJr+4yHOoqgiUXI3Fz85?=
 =?us-ascii?Q?+lJ6NFEaUV/NSuQfBF0pCND0J9OT/xGnTRPdXo5tR3YXLRSNRSdI/v523EjF?=
 =?us-ascii?Q?0H/8dRAhRGjLLAgmWlI5/qKsxrcyQ73QR1Y+SSO/In6M3RMo7ae8fOmJKoYg?=
 =?us-ascii?Q?N2rp3GCv0nTCKf8IO08Q7gsN/wrB4w48NI8ria4vWLd8gY8cblpuKw20qwVQ?=
 =?us-ascii?Q?uxgVav2R/+5EaX+bLVPrGV3DMWqFRXVrBMShoTZYHlTOHREq4pKhZAB9IK8z?=
 =?us-ascii?Q?+ezN0v6Aw/s5SnjpFSd0APfoFl+0PJQSlIpxJNoYPn7b0WwW5DGlol29QtDY?=
 =?us-ascii?Q?BGkhYC6pQvKxkx0RCyprlwocn67uAvuBg11sTUVOg/W5fW30seld9I+qbFlY?=
 =?us-ascii?Q?QKlTewcwUvxJEyiEdMc4ZD5/He25JzUqle16FTnWyEYAG1EbAzSV9I2EQ7w1?=
 =?us-ascii?Q?snrciVrJHDCyZ5iPWagWsFclkyOXWUn1sQann1cTnfICEi3yUhSr3saN6suI?=
 =?us-ascii?Q?LNr/q6UzW2XtNRbbfd0Iq1liRQb5raJvtNprQh6rNSpTQkU5rOKgJZaDvM/X?=
 =?us-ascii?Q?rFcm+epVDZfxGOSpSpXlOw7tjZITHmFLP9Ox8qAhcsFNfWzloHLn+GHda24q?=
 =?us-ascii?Q?ImHdHrEVXDYfmhKZ5oo610boXM3XNtYZ5ZwNdl7QidSb3nOPqbC4BXoUkmM4?=
 =?us-ascii?Q?3OHK33BEKZVyM+MNqf5yrtnJAGpQhSWfIJfN5I0/wYc94w32kwsuBE+4gvgq?=
 =?us-ascii?Q?ngnLtTInlihLLpCC3wbjAkxzbLXlXV9RIVuIHPbDNfZpHU0myTEYpRpFuSXq?=
 =?us-ascii?Q?7HxBVEzxrHoNNX9EHY629eJcus9ep3GDUmSW7V5gqzge2hRsXa8Accv9w97c?=
 =?us-ascii?Q?Yt6JotXGsnWxTZyrg2Ayu3SmnaoN7b1IzYyQS5xQz36iheXd84uiW2rmD+OE?=
 =?us-ascii?Q?XPSGL3S7KCTXOeCqsBtKb+8gB4LkUSpI75Zy9Ncjr5Ixat7PdQJs0ePtOW0g?=
 =?us-ascii?Q?qTYEqd/mlpXciW+8x5Rt0GvPlt7UkUL7O4su/pyRoxJpiXEHnRD9LdJZ/x+Q?=
 =?us-ascii?Q?3ud2W0eLZWmrCAXgqFgKE2qvDTP00WspQd3GNjhq4wNi3acHn/aG20IZ6xYv?=
 =?us-ascii?Q?UAhJPUFMP9ChwOmjRgwpjACZmHj+eegnnBJWC9qQKGl1i+vivOyh2/MZFXAj?=
 =?us-ascii?Q?EHauTjEwd2m9UxA98fsH9fM5ep0xyeZw+k50n5Cq0h/u5xeWqVIsomV+T0A2?=
 =?us-ascii?Q?9Ekmj8RUWnia9a0Wx67OD0h22LRWr8JL87p5MTY4e0PYUbxOo8jNCde6ccsc?=
 =?us-ascii?Q?OouAPPPS+19vboBrxtjF53PT0DjowoQg/atWvbhfXo+0es6tszpNZkz+eNJe?=
 =?us-ascii?Q?e26iGVZsEpjedpS/2zYzn1/vq5QwPMNns/5cL4dDU+jRacOgBGXEnLQb4nex?=
 =?us-ascii?Q?EpEgBGlp2+Kk6HsDhxEk58BLnNm4U5veEz4c/d6jdMJ7GzUi9sDC5km+Ih2R?=
 =?us-ascii?Q?8yc9RMfHJwG4vxeJM842YgP5iXnusNUudGWxZRtJ5syo6A3EHOVp63IPe4f1?=
 =?us-ascii?Q?2mcm5w6FoQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: C8sCe5PE0V3fdji9yPD5q4Oc1jWVNJRaUe1cv/PpHHgfAbZ4RAt5nYYihojt3/JYacAjnFIFHj7vH8lZXNlUw5tkCVbX1rbKpgQA08OF3twD+eKG4XWe2qbxpZKI7UPaPK7uX+iaz/vTI7awYXWstidWA8OxyCSKB1SjXSRKG7atGdJ6zsr/QIyQcxGfsCeUNi1PSymGafp2in8p7TwObIijkva33NfWxKDLw5pCRvokD4cyeTYG+3O6hEl4QmzDf24sQ2KPHbjf6ArwzA3itYgWB2OKEYmze0GlebewYZRoJcNbvwDhrXI8qSaA+iJ8m1ui0FSMYJFmw5QU5+qpVw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d080581-636c-4088-e253-08deac064ace
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 07:00:15.9846 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tBPUFaOEcKujrPuuZJRq65iNFh+XPOkdrQU2b4h/opwD5JVKiy5tuinDCANvScrsSNhrNQyl/JeM4Vli/u/KWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6152
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
X-Rspamd-Queue-Id: 5288D4E3D18
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Fix the error path during DDI encoder/connector initialization by
calling the missing TC port cleanup function.

This fixes the leaked TC port state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2681940a5cfe3..e37cc32ee83ed 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5411,7 +5411,7 @@ void intel_ddi_init(struct intel_display *display,
 	if (need_aux_ch(encoder, init_dp)) {
 		dig_port->aux_ch = intel_dp_aux_ch(encoder);
 		if (dig_port->aux_ch == AUX_CH_NONE)
-			goto err;
+			goto err_aux_ch_init;
 	}
 
 	/*
@@ -5447,7 +5447,7 @@ void intel_ddi_init(struct intel_display *display,
 		dig_port->unlock = intel_tc_port_unlock;
 
 		if (intel_tc_port_init(dig_port, is_legacy) < 0)
-			goto err;
+			goto err_aux_ch_init;
 	}
 
 	drm_WARN_ON(display->drm, port > PORT_I);
@@ -5478,7 +5478,7 @@ void intel_ddi_init(struct intel_display *display,
 
 	if (init_dp) {
 		if (intel_ddi_init_dp_connector(dig_port))
-			goto err;
+			goto err_dp_connector_init;
 
 		dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
@@ -5492,12 +5492,15 @@ void intel_ddi_init(struct intel_display *display,
 	 */
 	if (encoder->type != INTEL_OUTPUT_EDP && init_hdmi) {
 		if (intel_ddi_init_hdmi_connector(dig_port))
-			goto err;
+			goto err_dp_connector_init;
 	}
 
 	return;
 
-err:
+err_dp_connector_init:
+	if (intel_encoder_is_tc(encoder))
+		intel_tc_port_cleanup(dig_port);
+err_aux_ch_init:
 	drm_encoder_cleanup(&encoder->base);
 	kfree(dig_port);
 }
-- 
2.49.1

