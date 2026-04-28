Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAUNOz6u8GnrXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EADA48553D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DAA410EC7C;
	Tue, 28 Apr 2026 12:55:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K3KXMOG3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4039510EC6D;
 Tue, 28 Apr 2026 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380923; x=1808916923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=84vshwAePdhTeMN6jj3sq8iAG5Lbozc4ga291niPwKo=;
 b=K3KXMOG3omkOP+yaKw+NeTBOpvAW8wWp+Y1tXzuiy4Cy1Gdn9Djbek6n
 krlOoxG5DNqLgDh1TaBpx5PiQPLdQrqQRXovNMSYC2Jv7J5tTJ4nFOrtR
 cgM4fh32t7/rSsoppG1PYRqmIOwrT1VwESafjlGtg8ooj7n06LAC1WSFc
 2xuS2hu+hv/GEGU/rtuznG0oeubO3z9A8WeNH+ez8fp17pEDj3Fi+ezTr
 26PAWU4WBlnK4l87ryhfL0UUFai0vebXDrrOyaiHWGgL8JgaBywpKd3AV
 7SL9hechJ+zIljFDaEWb1o3B6JcFNZpzIFejRIR5PvZyeghtaHIuzoLB6 g==;
X-CSE-ConnectionGUID: JgZjVGBPTV661SLF3nKodQ==
X-CSE-MsgGUID: xD1U7P4ORXCBaIWNbItIWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203310"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203310"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:21 -0700
X-CSE-ConnectionGUID: VLHIRCtWQiiIVbL9HIfG8Q==
X-CSE-MsgGUID: 99/4xWNaQ6G60YX9R1drEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244820"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:21 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:20 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ngAVakIf+PYVIwVR8TsmzlGDwWu6IS27n3QvUUSluD74n8g3AyC36ifnmcxI7vkGGa0DNIogaLFXbm9Qn+oTcDJiMU3MsAX66I1tVKiOc011Pryttfx9YG1r3Q4VOw8IyyEvGGx60ouxQMN9gAc3Y8qETOdKZPrGNXtd5fZqI9m9mksIR54Z0FxkCpvJ+mzBP7Bwjlr4IvwKNPncojK3jcbF6EyYtUgriAyBHl7J394xEUr63KhaJNohUNTR9gljwKHCfnXx0K2nmQmAi6BT+u7ogfsvnlvbTEeKWblTArpH0ENFBfbPLlu+ODfHK/6gMdO9tpWUukwxk6c48olTlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RVerUJpBbElPQKcGuvidqMtcv0PlwSV1lZoAU5rnHIo=;
 b=H+s+zh5HokhVCHvgofBxUZ87wsAubZ0qC+amTof8MNZsE1ZRrQhMXL7vPK92Ztmtn9+JzyOKciE+AExIxRTANllUpKT/rx9MxeKowjbdqp/ssSnmc2QxIX971d9JjqeN9hs7sc8GeS5Ex1IOVo92bW76zSkPKSOw4kTyK6HOXq5nyz/gXtkI6jyBKB/kLG+BggyIW7PNTYOrnFG48pcrn+PCHumTG79LFfo3rQ8eD7AgMOVpwm+SZBYinhq3UZ1cVeGTlJpIJZb4BWkMSWUhbGv/cI8Zu8cs9p5sDM591AALBjBraJH6NCU9IhWqgTjN1XfEL0Jvg/0IfoNxbyzCew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:16 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 080/108] drm/i915/dp_link_caps: Use virtual config indexing in
 config table
Date: Tue, 28 Apr 2026 15:52:01 +0300
Message-ID: <20260428125233.1664668-81-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bd029ae-7a98-46da-7eb5-08dea5255663
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 3CRm/1su3drEiq5DbBDxYGkFxjvCWqClbgW4F1NDW4CeqZaJ0Qz0LYcwwZE5il8jDGFnpbAmqV/YL/bpckCY+5qKxABd9CWZv+ArUSt6fcI75zU2G0zq/+HPLM2rgeUuLOQpSw+NLhQPK6Meh15eAR6UMkHlGM/HDIpykFButI97kKPWSZZzlyXBUcgkXJFLWy4haP/uNPf8uXbv/OLsBNJpDCJQfMi06YqDO7jVG99dIzihIFZCHOsMuAYq9NerbEZMMRUJOeOL/g9dnQDK1m2oLgpvBay45C4SaRofJ47LB+kO/W6uUswg7ip7fVHzqktaxhnnJzHsVJikEPjVqYjwf+gX5NWqZtBUIl9ndL7MHiYWtFwqt7sH0rDrlNAJMP94uYcyn3xJApQF1SP2/Vn9UALNoOCn+UJS1TFKbS8te5Q6owe84XxV1yByYPtr3F+yJTs4VmHy15FROM/csSMp/dqhyLaP758i1COCDpUGhz/ElpTjvPjatwsnwRvHBPiZlEfImANvlCyO/T2PwX/4FGqL+dbDviVTw5nPhYzpun4C4We6ymlcJejLGpOuE7oIf/p+lQ+hcoMJVaUp6ACH4iDqySHgVtPDRQy5AM8lRCv4W2adRqDF8B4IFkZj0b/SE+D1UssTDOfQIE26j9Z4pAQCcdEfsB+WDrBLoXGCA6/1Q1XPgVrLcpjSCBnoF2haSNPU5BzYBslcWN8Ck3ucZPg11inkD58ck3I5C5k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zbTQq1KwfgLz6dELRC2MA3sZxh+aei0N48UACb8cS70Ul1WhuroDpnEzkLPQ?=
 =?us-ascii?Q?v0bRKQ0sNEpA+O3JhOiNcZGIKJwDvChnEEVLKrWf8DLQUnSrYnWwBsS7uJHv?=
 =?us-ascii?Q?yBvuV50+RydQ1+dOxiJOxrSV8ADdADbDMMeYOIMdpyZedu58nKjfOhElDAzw?=
 =?us-ascii?Q?YDhwjW8C1PcdmjknyaLj5pPbTR75y/GhdvHqYWidHVCR4BPoWtY1c6yqcH9I?=
 =?us-ascii?Q?ZDcP95sn6b/Z2uwuTOFjwkgAewjm5TbHnwJYjNoNg3IDO8ORyXYBFgp40KEg?=
 =?us-ascii?Q?OvkroBg3tcKHpCZFuq7gMTuTFWiIJfM0KR4P+DK+06nCOx7KL/zH4Bg8jXps?=
 =?us-ascii?Q?HMeb7YImSHMBBqtPsm/heU9U37+Sg/bes11SYhSb9O26VV3ech7vLLjBUBWY?=
 =?us-ascii?Q?zT4gwfScPgVWQnWAPWy7Z04dl/mZrsO+VoL5xSDxqeWzQE5TUGk+aHBlr676?=
 =?us-ascii?Q?k3YpVpZuI/ehC/dipx2AeArbSK4pD7eXQ0iE/ZbiSM/ip4IccWVYdJ1LgE8j?=
 =?us-ascii?Q?4NcgU6uey7RKzvSS9de/kztVAqlZfpRb9/ybaQbqc1SrsAdi71FjU2iCrei+?=
 =?us-ascii?Q?cI5/jsCEDzHat+Q6VmF/MJTVRP+TFBubqR/oBH8Z/UnxbwF+NQ7aiSq5Lph0?=
 =?us-ascii?Q?nBNnfgP0TZAgxl2Mzz+i0OjeHVcmfBixk8tXGTFGkXP0X0LqoOFSr6pahT4c?=
 =?us-ascii?Q?vT+FmpsiTCVIpGHB2UHQbmPKcHZ9winKOBLKwA7QW84oufwLxdEFwMYCTAk9?=
 =?us-ascii?Q?KamZK4dpncOZo7hTLkZarefTCtEDHTb+amqTRPh/n+ep+edPJuUffOMvPy3t?=
 =?us-ascii?Q?lzQI/ehI//r2XAISYXBZJzmzqfRzn/nczU7hWamHYNj55N+RDNqN0igKaMAj?=
 =?us-ascii?Q?VeszUCSPelN/SxEH/u6cZCpuVkovQimEGsQO+1y40cmpf3Edv4UK3LVSCl5X?=
 =?us-ascii?Q?RVS9HDkYH3v7VpeyhjLV4x/lzKDzyiItIvKmebPvCR4UNQvfDdbxRyKxaVy2?=
 =?us-ascii?Q?q5HmQwWhh/vUppA7wV2r/gOu9LMQaRXonPSO9O8sw8x3ImFM+jDY5kowkBcU?=
 =?us-ascii?Q?mywdrpXm3fORljFwDqHABHAY71fy6WcKtpCTKBk/1KTBvP9cfW1R00yxdgOL?=
 =?us-ascii?Q?t+mCWwSfCMtK9jh61xa70CtkIi31j+ud46JyHBIh5CbCkbvObH4WCCeCYOZM?=
 =?us-ascii?Q?AM5ZbqmxaJt0OaSkP84mBLIj200uyhGaB7XJNpXu1wGbfdraWXh1cCvw4dz3?=
 =?us-ascii?Q?Qpk4yEJsvW8XlevnZf0HkV8XRzZelUGS2aSA4tM6IuMJFii4RDqGpcBTtJzu?=
 =?us-ascii?Q?BCIkUU8F8Wv6Ab/3Ycnp0gcqKx1qkEBA9wd3nKsV7OmtFhOfiUkSqRkKKlbf?=
 =?us-ascii?Q?A0EiE6E4poJMuooL/6s2MrJvXpX8ugAKVZwo7/LCx/wU5RvGXAkY2hsHWtWV?=
 =?us-ascii?Q?Tbp8GmAvhMoHibv6m0bp8Exp5rVIY2XG1FvFzeu3TSCozIGi085WABfojrLR?=
 =?us-ascii?Q?YJA3qBvNsoddPNq9Yl7QrCgV77Y7CXSUQ0CnZMbmC3h81bCyl10LcSG/5gML?=
 =?us-ascii?Q?2I90d9werVTgDmcUYNElloZ3W4Lt9O91XCayTEDlngxtRNdMIK3KR2hGBs0n?=
 =?us-ascii?Q?+svWT31Y4PmKaovF3PwDMM6C/KkkTjOy92+5C2fdgmOIm7a1uMZGQ6mhjRi8?=
 =?us-ascii?Q?sSSYEvtW8oSHp5QldyJtIYgJba6IvCs7GFzJt2BaPFyLVRcpes4m4fJp8Rh7?=
 =?us-ascii?Q?sLvsUhdm7A=3D=3D?=
X-Exchange-RoutingPolicyChecked: adwe6Hz4PJlChaOTjmIBgom1i+yaedy6c+3sOPRoLwQN3ShUgkN9j77bwzP3H5IQ2l3F/IdmiyxQl6ZTRGY55U68uLfmuh4by8Nh2rrT5q7TTMp8WS2fBRp9GXc36E3jKohTsqRsWzET0D26gWzxXClwq6RTaaeeeeuLwIkNEaZlkCvHfkEn+5CrYhvFp/HJIjCy2aTnqr47HZOEgcvZ4x5yqmSQXXqSPBFhADcYYvQqOK6KAb8oohYUun2Hy8b+cns1XXlgzo3WIeYBZ8yYDOYGwHYW7xbSON8aEfIeZurUS3Z/bQqmnpC3eMo3EyMgJMZiTnKF8U+bEA/B6LG7rw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bd029ae-7a98-46da-7eb5-08dea5255663
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:51.7154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RBZXhBVidERebwgF2IGTln216RVHO+/uBVU4/g892zkYyMS+YpzAqzCyCSZ23xn2jLW3JThu7U6EWMRz9w+Gtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: 8EADA48553D
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

Replace explicit storage of rate index and lane count exponent in each
configuration table entry with a virtual indexing scheme. Each entry's
rate index and lane exponent are derived from its position in the table
assuming a fixed rate/lane ordering and a fixed 4 lane-count stride:

  rate_idx = idx / 4
  lane_exp = idx % 4

To support different iteration orders, store a map from this virtual
index to the config_table::configs array and sort it as needed.

This also adds a way - for free - to iterate the configurations in a
rate/lane order besides the BW order currently supported, which will
be required by follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 106 +++++++++++++++---
 1 file changed, 89 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index a6390ed024940..0d828ad9f93a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -89,18 +89,45 @@ struct intel_dp_link_caps {
 		int rates[DP_MAX_SUPPORTED_RATES];
 		int max_lane_count;
 
-		/* common rate,lane_count configs in bw order */
+		/*
+		 * Number of configurations supported for the current sink
+		 * connection.
+		 */
 		int num_configs;
+		/*
+		 * Virtual rate/lane configuration space.
+		 *
+		 * Configurations are not stored explicitly. Instead, each
+		 * configuration is identified by an index in a conceptual
+		 * table ordered by (rate_idx, lane_count) in ascending order,
+		 * with a fixed lane stride of
+		 * INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS.
+		 *
+		 * For now the above index is stored in struct
+		 * intel_dp_link_config_entry::config_idx.
+		 *
+		 * A configuration can be reconstructed from its index as:
+		 *
+		 *   rate_idx  = idx / INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS
+		 *   lane_exp  = idx % INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS
+		 *   rate      = rates[rate_idx]
+		 *   lane_count = 1 << lane_exp
+		 *
+		 * In this conceptual table, only entries within the current
+		 * sink limits are valid, i.e. those allowed by the current
+		 * number of rates and maximum lane count.
+		 */
 #define INTEL_DP_MAX_LANE_COUNT			4
-#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
-#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
+
+#define INTEL_DP_LANE_COUNT_CONFIGS(__lane_count) \
+		(ilog2(__lane_count) + 1)
+#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS \
+		INTEL_DP_LANE_COUNT_CONFIGS(INTEL_DP_MAX_LANE_COUNT)
+
 #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
 		struct intel_dp_link_config_entry {
-			/* index into rates[] */
-			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
-			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
+			u8 config_idx;
 		} configs[INTEL_DP_MAX_LINK_CONFIGS];
 	} config_table;
 
@@ -276,15 +303,25 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 	forced_params->lane_count = forced_lane_count(link_caps);
 }
 
+static int link_config_idx_to_rate_idx(int config_idx)
+{
+	return config_idx / INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS;
+}
+
+static int link_config_idx_to_lane_count_exp(int config_idx)
+{
+	return config_idx % INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS;
+}
+
 static int intel_dp_link_config_rate(const struct intel_dp_link_caps_config_table *table,
 				     const struct intel_dp_link_config_entry *lc)
 {
-	return lookup_rate(table, lc->link_rate_idx);
+	return lookup_rate(table, link_config_idx_to_rate_idx(lc->config_idx));
 }
 
 static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
 {
-	return 1 << lc->lane_count_exp;
+	return 1 << link_config_idx_to_lane_count_exp(lc->config_idx);
 }
 
 static int link_config_idx_to_rate(const struct intel_dp_link_caps_config_table *table,
@@ -303,6 +340,33 @@ static int link_config_idx_to_lane_count(const struct intel_dp_link_caps_config_
 	return intel_dp_link_config_lane_count(lc);
 }
 
+/*
+ * Remap @from_pos, referring to the (row, col) point in row-major
+ * table-a with @from_cols columns per row, to the position in table-b
+ * with @to_cols columns per row referring to the same (row, col) point.
+ */
+static int remap_table_pos(int from_pos, int from_cols, int to_cols)
+{
+	int col = from_pos % from_cols;
+
+	if (WARN_ON(col >= to_cols))
+		return -1;
+
+	return from_pos / from_cols * to_cols + col;
+}
+
+static int remap_lane_stride_pos(int from_pos, int from_max_lane_count, int to_max_lane_count)
+{
+	return remap_table_pos(from_pos,
+			       INTEL_DP_LANE_COUNT_CONFIGS(from_max_lane_count),
+			       INTEL_DP_LANE_COUNT_CONFIGS(to_max_lane_count));
+}
+
+static int rate_lane_iter_pos_to_config_idx(int iter_pos, int max_lane_count)
+{
+	return remap_lane_stride_pos(iter_pos, max_lane_count, INTEL_DP_MAX_LANE_COUNT);
+}
+
 static void
 to_intel_dp_link_config(const struct intel_dp_link_caps_config_table *table,
 			int config_idx, struct intel_dp_link_config *config)
@@ -331,7 +395,7 @@ get_table_config_by_pos(const struct intel_dp_link_caps_config_table *config_tab
 
 	switch (config_order.key) {
 	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW:
-		*config_idx = iter_pos;
+		*config_idx = config_table->configs[iter_pos].config_idx;
 
 		break;
 	default:
@@ -783,7 +847,13 @@ static bool build_config_table(struct intel_display *display,
 	struct intel_dp_link_config_entry *lc;
 	int num_common_lane_configs;
 	int i;
-	int j;
+
+	if (drm_WARN_ON(display->drm,
+			num_rates < 1 || num_rates > ARRAY_SIZE(table->rates)))
+		return false;
+
+	if (drm_WARN_ON(display->drm, max_lane_count > INTEL_DP_MAX_LANE_COUNT))
+		return false;
 
 	if (drm_WARN_ON(display->drm, !is_power_of_2(max_lane_count)))
 		return false;
@@ -806,13 +876,15 @@ static bool build_config_table(struct intel_display *display,
 	table->num_configs = num_rates * num_common_lane_configs;
 
 	lc = &table->configs[0];
-	for (i = 0; i < num_rates; i++) {
-		for (j = 0; j < num_common_lane_configs; j++) {
-			lc->lane_count_exp = j;
-			lc->link_rate_idx = i;
+	for (i = 0; i < table->num_configs; i++) {
+		int config_idx;
 
-			lc++;
-		}
+		config_idx = rate_lane_iter_pos_to_config_idx(i, max_lane_count);
+		if (config_idx < 0)
+			return false;
+
+		lc->config_idx = config_idx;
+		lc++;
 	}
 
 	sort_r(table->configs, table->num_configs,
-- 
2.49.1

