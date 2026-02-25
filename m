Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJz7B3wnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A835319AE96
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E04D310E7B3;
	Wed, 25 Feb 2026 16:46:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fnKnfqUF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4156410E7B3;
 Wed, 25 Feb 2026 16:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038009; x=1803574009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=2TowicA2hflE+4pM9JaiiQO+6OyvLwqd5dFoucgt3Vg=;
 b=fnKnfqUFJHt3MaLHLfZ/3oR26VqSLU09QdkNhl9ZufYW2okTPVhdbeZ4
 YC2w0n4rTfVM7S82arIFH/dqd6VfCG4BbuZDCG2R3KaWMb9w37pbGd0Lf
 khbdOGw93QmAZPvPUwhqZjpyehIJAYObQWAcMWPSAQB/pwnX5rGU7j+1E
 fnB71QmF9nXPE6nM3nUutmU/1Bb2kMJ0GgCmxjnGqH5cKUIuJORb/51qz
 k1XTgMHpgBiW79GD1d3HY44FTpUTMXvA2CSQX4kGL0R9o5zg+UZe06Prn
 3Vf9XL87C/bTwMFW2h+J7+oFaenew92pyV/amqfh2mybLm/Ht3VIHyhrq Q==;
X-CSE-ConnectionGUID: YPAMZOQ4ScW6NZ6Ke3QN0g==
X-CSE-MsgGUID: hNp4XqkaSGqT+9RqaYUG2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90495843"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90495843"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:49 -0800
X-CSE-ConnectionGUID: J0edJ73vR2S2icFibMRplw==
X-CSE-MsgGUID: QbY5pSpKQ+6NBnlFc6ai0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220424240"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:48 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.10) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hQndudXMOZlaqbz5SWXDGNkHQjH+N5VYF+qC5qRrCRu8rrj5aMrUEBkEdT9JAUFjoyRd6/dqS1NtNQrQphQ2wgiso3pE8l7scDWrJQJmmjJ6Rj3GiM+U17QCctI3x1JRLY0j0XT+LcH8N4uHnDWq17aoCJuG7h9alaoT5Du5GgsxTC0DNb2yioOzzcOdDfAvCRHjoz9ScVhzIdGuAtAqpIAgU3fVu42iGmhJAm/v2sw9AiOTyREs2NBmHXG32apPbJlS/aUAqqFHrMyhY53CWu51ZWFJuAFC9p36NuWZP6O0RX5Jrp5NBcO8CepDNSh9TGiHNKNxK96m7HSCy3gwcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IUDHJxMd68pg4YzGeM4mnklG/fnL0lEkZRES92gWNIc=;
 b=GdCN99hLm3nnxfglkkZ6c61V8sVF/No9Q5wynkchjE+fXdz+YneQFTWsz36UIYHOI/K0yzvy1dXjriSzCIi9WeRmvOxdnZKzsFXopUiJD5n9DtDibHRqsQE2YSh3whBkMzgiv9L/boTb6CJswpmyVGOQPOaI8dQLQs7i4YyHGViwkjMPb9BLH/EgLOaRv4rm0+AsYVHxaK+t0dgDT1qL9/q/dVsjeE/CFc24JOHVu2vym6s4IkRRXV/JkEQ2Lq9mzq0BhQkKfRSLLdoba9XSDtX5M74QCytn1qP3LND/0ndH5ne45m4ISH3DvcAQJ4XRANBu4Z+F34bFa9PDtBNDbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:46 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:46 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 07/20] drm/i915/dp: Don't clobber the encoder state in the
 HPD IRQ handler
Date: Wed, 25 Feb 2026 18:46:05 +0200
Message-ID: <20260225164618.1261368-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV1PR11MB8790:EE_
X-MS-Office365-Filtering-Correlation-Id: 7647d492-4f8c-4542-61fe-08de748d7667
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: g5w84rV+ZltttYKjMSB53Vt80apDjW7XNRkBEcyIyi9b5AEpGdEIiVvybevryMoNrBJFaIYoHuFNFhbN/jxR7Fc0qSguI6zC11Q7NnCKly7+JuMj9s7dCr/EoIu2t4IOz9t3xDUOrKtYy02VgdaYWXnH7QEHI7ryUSKYe1anBWFpRzTjxwrEEAMC0c+5YcsGYxGnUPgFPCaBj3iS316bxbzI2DBIEvAMwjXSXbf8qd3KUVJzEvy3gegVk8Tqp9EKk+K25iVmlCNu77N1nzfKALBF818T+c9SZYhiRSfVaMcb6DfFmD0QCmuIcaqsWKDJ/5FyLxyHmRBnY7rzPX3zrMP3U0WuR+oXUsakxvsLMFLzuPtFFqqTuS1lsAx3Cpm3e5/24jBtS7pEnzbRXO2v6NTPkVlEn/VGO4KqbwoJn0DaHR4VnKOi8cBiN12o0EwgrsepVUkUq6ZUJoODxSuFME+hOCzU1ztVzElXKpu3essf7EoauFHbLPeJAOR/ir6iHopnsPOE0ta6X2rQrDXv6QtwsdiIaGanr96ggNzga5yxfeT8u3x09K5gknLWjNcRkxIXEqErIUT28hYHg3PuCdpb4ROQpImDCvJzef9aqNrCHO8B6srMEfgKyx/FGd8y6pdAGRNDz7rU65hhI8iTfaBzgahhhDrkdDo4ixVStz90hP9LwkJRinDN2qwEmk838zkn+/fPP0DzrjO2M2JqTpFvF33PvI2inr1BfBC4voc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wpSUXTjvpzl9ZR4W/aRQEiJHwgAoxqMwf3z/CgcSvPUGRGuVAHxpSCUUhC0V?=
 =?us-ascii?Q?Y3jzSX4EPvC3pF0KvC5TO/+cGJ31IhRa3N588RoRsBDDqRMXaTo2J59Vz+cN?=
 =?us-ascii?Q?kYzPEvmswdWDiq6rSjVZgUEqR97XyL1+laLKUC41M04mcDc9WxqPZgfrdvO6?=
 =?us-ascii?Q?A4IsqseELhAjAUzJm0ueJfnXmRL+y1n8IUDC473rl155IKmkU9SYlKNOeahM?=
 =?us-ascii?Q?5nP1SscSeJNQvWzSrrxvX3XWIsc2oMYoG47r1zJcpDRZ8L6sW9jVKHILehE/?=
 =?us-ascii?Q?LVl1RW2qeqe5a3YGqVRbyc1ovvu4CFCZ2fvCo8VuCVgcGb5ocbdm3k42mdMZ?=
 =?us-ascii?Q?TcferDBhDWjwJ5miKzBn1fInQau3deUt86BCxx7wTwdyEdlsCvIghJbslt+M?=
 =?us-ascii?Q?8rXiQC+8Zz2INphbLZ5LF42WcDi+/G34rG3tgxV3xQWcD8+9OUJxe+LK4D7W?=
 =?us-ascii?Q?/Jf9EMfl8sPipnPea/X2mPmcFLuqu6eaBPfPxaqqTEjgfvNp2700NOak73nJ?=
 =?us-ascii?Q?+8kWknQoveckprV3sXylxFDVuXiOCzX3I/KIKjgQpVmFN1EjmoR99uorUBvT?=
 =?us-ascii?Q?6nWtXQfjuOSg6no/PW9BhrgSgxPopYe/u+aLCmewoFmPAND/blYB5SHCnuOq?=
 =?us-ascii?Q?GU77xh+sBPcNNDU04I7XrR4LFDuUAOd6Z1PKkZBsooXSTqEgk5Y0tbQVYMEB?=
 =?us-ascii?Q?eXGC4VYuc+vE6WOwKppApdy+pU1Ci7f2n8xk6PhwAzbxae4Cm36Tos/NJtjc?=
 =?us-ascii?Q?DIlqKtMNcAyrtSg2M9XM4TNRuT+po/5TCFwK0KLDj+zvhaLQmthrRFG4+0iP?=
 =?us-ascii?Q?zPPA+CUb/VdzyLmWw+7io964F8HV/7N4QOU8YZXrJvtdEGM5Z6EPSots5tkX?=
 =?us-ascii?Q?FaE0y5HcwGrEOuo0ep7dxGC1mP5FhHclUFkXMpeWHTVo/H2Cd9C72zGTae6Q?=
 =?us-ascii?Q?Lz4h65VJ/dwzhJrThavB06FuucT03OszAQybS903HlU25abebN05Mo+mfKd/?=
 =?us-ascii?Q?BNbVE0jv0NXcnZiZcS9ZmAyrB9Cy4SkWSROqrMS7pScP9w/i8ubeuUbIaopJ?=
 =?us-ascii?Q?5+DpOA9vHvvQ27qV0T5IQCMn1InM+wZqA7JRcIztgs0c2odCzaUtMqk7VpZH?=
 =?us-ascii?Q?xHypX0YGv0ocxiFlZsrGUbhVTvVLjzc9aNcxmavpRMTTItWiEtoQnpAAclm3?=
 =?us-ascii?Q?4ajYuzg3MNGGu7w0AjkbVYwaj1O01/hzLVpXcUDBhRFDfTfBfIwKiElLpBNo?=
 =?us-ascii?Q?g/f3yxV5rz8X9d0ho5G/0M3yJ6P1X/W+Ncmx0uH9BSEuLEm5dVQJ/S55HIH8?=
 =?us-ascii?Q?XG2Iwi0IVgUDtuOPeziYBY8NcxkJC5QjIWk92UyUVVD0dTKKOUpTQH5cNpQY?=
 =?us-ascii?Q?Ln08KGcKs63BrTz4cVcDoIJZCncpGq/rkIHG68muY0bBEjuFnO2APMiBg+6n?=
 =?us-ascii?Q?kw97l08fkV4tEI9Q0/uU30sC7aJ16lv6e/7AnZtMnYlwt4Rm7sKFjQfBaLPm?=
 =?us-ascii?Q?exjc6VRwTonuVyQeuAfW91Sx8Or9e5Tugq3EyeRpALUHTla39QR1psjYQ+PE?=
 =?us-ascii?Q?Nv8stQYaCfESf0PHvg6CiPuNWlinr55Jylqr4oZv350K0fJMyElmStnjzyH+?=
 =?us-ascii?Q?QvQsW0UHR2W2uAYR7fDWD1IE2zutlaDHi0K++rL+XBrGm+IPp04e9Vo6wVlD?=
 =?us-ascii?Q?+2zzpoJsx38wtzKX/sHrfJ+xs1hLCzOCh972ITt9kNyr0SNCz5Q/Xry78Bkm?=
 =?us-ascii?Q?l+B/ejT9vw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7647d492-4f8c-4542-61fe-08de748d7667
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:46.0500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HU9wHnuvRa8D2sRy/YV0cznoS4RpgQhqthzlLqQfoeMQNktFTn+qdAol/texLYocw+LiR4AUpzg2Nwdf33THPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8790
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A835319AE96
X-Rspamd-Action: no action

The intel_dp_get_dpcd() function called from an HPD IRQ handler reads
out the DPRX capabilities from the sink and updates these in the
intel_dp encoder state. Since the IRQ handler can run in parallel with
the encoder/connector detection (intel_dp_detect()) which also calls
intel_dp_get_dpcd(), the encoder state can get corrupted, since the two
updates happen in a racy way.

Fix the above by checking only for any change in the sink count value in
the HPD IRQ handler, without updating the encoder state.

Note that any state change in the sink requiring an update of the
encoder state is handled via the sink's SINK_COUNT change,
RX_CAPS_CHANGED, DOWNSTREAM_PORT_STATUS_CHANGED signaling, which all
should result in a full connector detection.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f7f02ce5d1a77..acef106b041ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5843,9 +5843,7 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
-	u8 old_sink_count = intel_dp->sink_count;
 	bool reprobe_needed = false;
-	bool ret;
 
 	intel_dp_test_reset(intel_dp);
 
@@ -5855,12 +5853,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	 * the value that was stored earlier or dpcd read failed
 	 * we need to do full detection
 	 */
-	ret = intel_dp_get_dpcd(intel_dp);
-
-	if ((old_sink_count != intel_dp->sink_count) || !ret) {
+	if (intel_dp_has_sink_count(intel_dp) &&
+	    drm_dp_read_sink_count(&intel_dp->aux) != intel_dp->sink_count)
 		/* No need to proceed if we are going to do full detect */
 		return false;
-	}
 
 	intel_dp_check_device_service_irq(intel_dp);
 	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
-- 
2.49.1

