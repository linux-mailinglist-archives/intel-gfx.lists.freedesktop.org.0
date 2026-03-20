Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KFuDHITvWnG6QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 10:29:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E30B2D8048
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 10:29:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE9F10EAB7;
	Fri, 20 Mar 2026 09:29:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uq4ZNRgC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B94C10EAB6;
 Fri, 20 Mar 2026 09:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773998959; x=1805534959;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=OWElZBMtd5lk5WUEiUuCS34ic838hIF2q5pIPlwBTDw=;
 b=Uq4ZNRgCMZBrhD4AfYJaRgniKeScJjitcOLVLfKRnIS0BBOKOytE2yRO
 4PkrkVgxXd2So9dvHj2N4LdSHB9n7ipw8D2TwkBrjqi7E8h15BWodeucb
 RI5g4Co22GUo1RmJQMFGCPfBfynmua4rifvINV2EbCHiO7terotFSa6uI
 pOqC5kn5TTaFYGQHGSrRwW742mUIX7BLpG3VQnGW8mfVZOxNHuM6CYk0N
 6CItjuh2ZhAqOYHFwYV5rrDNqiOXletcvXTkE/oK/zyzX9ehdkAF2ZtEN
 F4RjCN/BxePSxIEfIx9bQIYHuZ0pv/xCo9OPpCjZPT1ltjhZUqNljdBPf Q==;
X-CSE-ConnectionGUID: jZ8eSF7PTFKxD2IGcfUfbg==
X-CSE-MsgGUID: NBahvAORQaGDw8AMnLcxEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="74989361"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="74989361"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 02:29:19 -0700
X-CSE-ConnectionGUID: yGe17K07Sx6ScRf+mN7ATQ==
X-CSE-MsgGUID: 105IGbhAQR6U17b4irLodg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="222326869"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 02:29:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 02:29:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 02:29:18 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.66) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 02:29:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GrbpmauRdvL9f1TJ/kHDU5R7Z8aGPbQh4VLVVIsiEhU2pR3iF61A2oZgSN1Rbdi6V7MjV55tkLX3VfOA7cnB2j70jUfHkZpbzAIxRsd1VjkboMOcys6AHa2qh3R9Z1IShdmrd/hS/as3hBvaTZwufebVAbzXvOPHwHyoFpNTI+ktrNj6XnslDPKE+OUskdEJhGB0kUDQtDjwmZKYs68pgZ6U3twN7XuI09I2Q+SOEwG2g63vP79Ij4AHX9jebT1VIeXSa9ZxHm55dqh8Q/mMMVSlMRv6yPMfPNhcOSlssmG72mXTXzEt1uV83RzLvjgS0twUukZNpEo5csc0y8JOzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PQ6BDOcQKI91GIS1oewhFKScFspuMrgEhImL9IwRaeU=;
 b=Rx3gmxrHpDXRdL9K9AsF//TnuuAg2xrpUbL+oh/PNQxLtiBrC0IlvENH3I2UVZh3Sd5SbMfVUQ3ZluTR33dXRBLufQV6CU3o1mVt4D8pjWeKz+HRY/uonv5X8ilCUaMWLcaoiV/xlskHgb8JREbtIR00+NAUKiZkjzl7sQkGA4orwc+O3wRXCItdt0bTZvf9feUgxuVi21GVlyDpVbTxY2x/YHHwiTJgeuFbmfgbI46nu5T/aqZnBgTDOqokQi+7EYNaMPmsHSv311mQvL+K9QPKnn4PbeAlmAQzDaQKJzZc9tDkjVnkrAL8wn5S/vnHZPm1b58lpI1UTL8AGfqWKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH0PR11MB5235.namprd11.prod.outlook.com (2603:10b6:610:e2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.12; Fri, 20 Mar
 2026 09:29:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9723.010; Fri, 20 Mar 2026
 09:29:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Uma Shankar <uma.shankar@intel.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=
 <ville.syrjala@linux.intel.com>, <stable@vger.kernel.org>
Subject: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing stream
 BW in atomic state
Date: Fri, 20 Mar 2026 11:29:00 +0200
Message-ID: <20260320092900.13210-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GV2PEPF0001A334.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::699) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH0PR11MB5235:EE_
X-MS-Office365-Filtering-Correlation-Id: ae802f64-a942-4a2c-fd15-08de866322ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: wdyP/xuVpkVJcDndlDKy0SUcRIZvrWNH6X70ZyAuFYNH0uqqKpMnyGh1z1WSmct7TKIUSWbd1A6i/WitJ+jnknJeKWO82T7tUUKdvczI8FQ6FvE1OhfN6ObaNBsqy2wIIGMJYdronfN1UmCZDNhTLsqQ8YGo5qBkTbFDMw0rgsWARDUW/sZRp2OvNc3gq2Lz4BjXL0xV74cP+wibl07qYiYD7Ak4h/jeFGTGLqD0cyMRoTycH3WTV/tVc+DdgbX5Sm193AaEIAsA1JhwanCzCbRZP7bv0YQlJ14vWjHDAW+duoX+yE3rkkbAWeg0l/glfc2zXOS4xAd8/0DtJRCpJ7o66izEyLfdb3AqMtI4xV6rmYbzOEIsrOjxaXLUtu1uYmLnkqizdAedjY/bntCBJ/jn+Fb20WcvGh2w0/krucfuIi24nU5rttMqnlghUk7vElMojXLEm9AdWbDvAoRwgFp33IDcS/+Bm/jqzV9WsHRDCxKSjozKlU9R0sNfdv084rXY6Nnc+C5ZhxD2j0nmdWTgHczVH79ZqOCtluiFbgX8hs4Cl+Vy9+YFAvEUHgXcaz2IOu3ZORDpT4KhrU4ytPvXhKTxbPnYJ4pn8pDbuvN+85nsfaAebmRIoSauxO4YUVyuyNZ+2rmmD5l1ec3UyzwSOPzfhjvqpnIvLB4K90Q52XtmbAJpb2qeybixR0JX7r6lj22xAnSCrb8Wk9BiJh8XABXN9875BkgVAfgwNs8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUZpVzFnTFlVeDhCVWpqREpwemdoaGJjb01ncGxISGFBTVhsSEpBMVQveFJ1?=
 =?utf-8?B?NHpXUkFPeHI0NkdsYThqNXVwUTRSNkFqTnV2aEhCL0lubmRqL1cxQlVObEdk?=
 =?utf-8?B?SmVNYzhZL1FhMFlqUFVReVRJQlJMK3JVeHBSZGVBZXJmTkNvcy83ZHRWV2hL?=
 =?utf-8?B?NktSRVRHaUd3ajZwQUhUVXN4UWcrVTJwQWJEMHZlZTlJUURsNit3V3pJbnV4?=
 =?utf-8?B?NWRnaHd5QTJ1bXNjMTM0QmxzeHg0dGJmNjVINEYyQjZPajZLUUxMM3dRckk5?=
 =?utf-8?B?YUt6RERROFh5UEJFUDRsSGxna21Tb1d3Mk9RZEV4RDlkeHQ2VWI2dG5qZE1C?=
 =?utf-8?B?SVlKeW85R3Q5dUR1UzdVbXdLdWk5VmFDN1BUMTE0NzB4MStHZ1MzdVNKNmlR?=
 =?utf-8?B?dW1ncTd3emM3NXk5M2k2LzNBRVUrZm5GcG5ma2N3YVVJcm40M05QQVRrWWF1?=
 =?utf-8?B?MUdiME4wYVI4cEhWKzFoUFBhNk5jWWpranlhaUplRzlJNW1ZbkplZHhCM01I?=
 =?utf-8?B?Z202UFJGaTJCUGZ0UnVDV2JiaVFOUG10OXFpall6bTNFTk9RbWE1NFZiUTFo?=
 =?utf-8?B?RHBsWjArVVI0cThuWWJacHVFSWdvU0ZOMlF4ZFVNcDAwdGtCVWhTZzNYVTR0?=
 =?utf-8?B?WXc4SVA1N2ZOdEQwWXhFcGJhTXN1M2ZBMnFXZ3h2aXNtVkVmZ2hnNkhqV3dC?=
 =?utf-8?B?N1V6MTQwZ2cyS1ZtZUhzbXFOeEtpRU5BNGZ6S3FTaEZzN2xFMG5BZnkrTmZz?=
 =?utf-8?B?SGpwVzNMNlc4Wk4xbUphd29EUVNxbS9wV29WZkdSWHp2dDQ4R0dZdEJyRXBW?=
 =?utf-8?B?OW9kbmhucURaL25hdzR3RHgwS2g3ZEpMQ2dqWlgzU20xNllBZDBLZDRqUERo?=
 =?utf-8?B?bHIrNnFZRmRaY0VNc0xEbTNCQ1JpMk5jYlo4VDR6RnRCRzVEbWpiRTlETE00?=
 =?utf-8?B?S2J1b3ZYVXBMZ205VE0xWGVlMkxkVGZPdVNMRXhoTmRnMlc1TmVCREdLa3Ri?=
 =?utf-8?B?WW9sMEo3VU9FaXc5d04xNm1wYS9pc0ZBYUJXeWF4aStjS2M2RkpOQkQ5eXBY?=
 =?utf-8?B?cXB3djJjVlFvcmQraFp2Y25TMmV6d21qaFJUaWkxTm5jZjVXM3NmWldHdktO?=
 =?utf-8?B?cDcwRXZWUG10SVJDaTJ5Z0J3eUxWeldYbi9pYUl5VlpLTlpiQXJPZStJdEYr?=
 =?utf-8?B?T1Rua292VmxzR0hWZmNHVG1ydy9RekV6RFlRaGNtNU9QL1M2RFN6RHRFa2tv?=
 =?utf-8?B?RXVvVlZINTQ3WHR5eWJJUXdhZml6Ny84TVNvS0pyaHJoZDV3ZGNUOW1VUGVv?=
 =?utf-8?B?bVlUdGpudkt1Y20xZ2RPUHRGK3NwNlJXdWxyWGtkc3pRZElrR0xweFhwSUZU?=
 =?utf-8?B?YUMxeWRQOWdKNUwrbzVsMk1pYjlzWEhKcEpkeVJvaGh5L01NU2J1QkNuU2Rk?=
 =?utf-8?B?L2NwU3ZobDZUWXJZeHQ4Z3ZEZURadFRjeDhTUm5YVG5zc3htN1ZORGljbE5I?=
 =?utf-8?B?MWtFQWJaL1hjdUtxQ01zZE9kVjkrcEEyNnBFQUtCb3I2bHlocnR0c2t4MU8y?=
 =?utf-8?B?bnl0TE42eHI2SEd5YWJsL3MyL2JUTEl2NHlkcVcvKzcrZFFicXZLUWFVejVF?=
 =?utf-8?B?RlhiclFRRmtNd0JBV0xXdGNyYzVvb1RQczN2bGVFbnRTbzU0RUd5RU91Y3Zw?=
 =?utf-8?B?NlhzbjZZaXRSakYzTmJtQVdQdlp0cjl6RVh0V2pzK1VuVlVFWFpaY0pnb0tF?=
 =?utf-8?B?b3k5NW1xbW5TUEE1eDVwT2lVYWdUaFIwM2Rhd01sQlJFNHFhaVdtK3lMWEI2?=
 =?utf-8?B?bjBVTU96M0x1aStjY3NIVkZ3eVdWc2dwUURvZEwxZ0gyM0FsdDdrRG1UWW44?=
 =?utf-8?B?TDQ5MjNxMnFqZ2dQbXFaTzlTYnBLbXFsUDM3MGh5WUI3SVduMUZIOXFZa1F5?=
 =?utf-8?B?NmNlNmVUS1loWGVHanNoSlIzNnBFUnVuL3pqenM2TWpYMWZ3NzNKSWpMQmw1?=
 =?utf-8?B?TzcxYU5ZN1JxVXpsOTk0MkpLN1l3anhId2NlUDdveDVPUjJOcnFYVzM1OE9F?=
 =?utf-8?B?SklxN25uU0pTMnlVYWV4bkNZMmRVRXJsL0N2b29wRUhFdStBTk5ZdHhQanpT?=
 =?utf-8?B?OTg4SmZjWitDdTM4YkNzRHJyQW9scE9hY0o4WmllWnNibkM0S3ovcTh4ZkZy?=
 =?utf-8?B?eE9hOERaYXVZcWZYRlhyZy9TbStEeFZvdjNLOXNnQit1T2ozYnVVUWlUSVc4?=
 =?utf-8?B?MlYxQzVjcll3OHU5NTA3MmtSYWVTRVJwdWJ5em9TS2ZzZHpTNDMwTHFGRWkz?=
 =?utf-8?B?enFVUmtkamFQdDkvWko2SXc2REFSNDZyN1dNNnZFaWY2cEQ3Q1FnUT09?=
X-Exchange-RoutingPolicyChecked: JmOhLkbFNyu3ESPGq3hVHKZ5eQ2u9vU9NPuHHZzuyj/ZPHoXANpZj4HSChvE2xpAVKSwMvO408Q28UmGWQZSsg5qkJ3g0nzIq0wWIO7mgt85TTBkZrE050GpEEXEauWQ+GqA2sUdhgsA6Aa14sq4+AeDLN8/v2t0osuERvVHlAQfP5uSk8b7le2Q+DZDYYmAhTc5t/tdt8UtvND+BBxbP0EJYCLRmb6st/EoBpVwvlaAMJ25wadD/dUmOVIxdVdcrlVRjuGocZqzBrNlLrcCyceMXL9nCCmTcENumDlvrpMHfE3ZcbDTKlXwq5ZylZPJ1kXZuuOnolvSb2VFsV1xvQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: ae802f64-a942-4a2c-fd15-08de866322ae
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 09:29:08.0384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2G2Yg8uKCeTX0N03rcTTAxMRqAsRXAk3LGHml1HYqchniPGSxhEftkPcqFMr98oIqvMTTcNS33Ot/EkmGLQbkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5235
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8E30B2D8048
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Clearing the DP tunnel stream BW in the atomic state involves getting
the tunnel group state, which can fail. Handle the error accordingly.

This fixes at least one issue where drm_dp_tunnel_atomic_set_stream_bw()
failed to get the tunnel group state returning -EDEADLK, which wasn't
handled. This lead to the ctx->contended warn later in modeset_lock()
while taking a WW mutex for another object in the same atomic state, and
thus within the same already contended WW context.

Moving intel_crtc_state_alloc() later would avoid freeing saved_state on
the error path; this stable patch leaves that simplification for a
follow-up.

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: <stable@vger.kernel.org> # v6.9+
Fixes: a4efae87ecb2 ("drm/i915/dp: Compute DP tunnel BW during encoder state computation")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +++++++-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 20 +++++++++++++------
 .../gpu/drm/i915/display/intel_dp_tunnel.h    | 11 ++++++----
 3 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ee501009a251f..882db77c0bbcd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4640,6 +4640,7 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc_state *saved_state;
+	int err;
 
 	saved_state = intel_crtc_state_alloc(crtc);
 	if (!saved_state)
@@ -4648,7 +4649,12 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 	/* free the old crtc_state->hw members */
 	intel_crtc_free_hw_state(crtc_state);
 
-	intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
+	err = intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
+	if (err) {
+		kfree(saved_state);
+
+		return err;
+	}
 
 	/* FIXME: before the switch to atomic started, a new pipe_config was
 	 * kzalloc'd. Code that depends on any field being zero should be
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 1fd1ac8d556d8..7363c98172971 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -659,19 +659,27 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
  *
  * Clear any DP tunnel stream BW requirement set by
  * intel_dp_tunnel_atomic_compute_stream_bw().
+ *
+ * Returns 0 in case of success, a negative error code otherwise.
  */
-void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
-					    struct intel_crtc_state *crtc_state)
+int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
+					   struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int err;
 
 	if (!crtc_state->dp_tunnel_ref.tunnel)
-		return;
+		return 0;
+
+	err = drm_dp_tunnel_atomic_set_stream_bw(&state->base,
+						 crtc_state->dp_tunnel_ref.tunnel,
+						 crtc->pipe, 0);
+	if (err)
+		return err;
 
-	drm_dp_tunnel_atomic_set_stream_bw(&state->base,
-					   crtc_state->dp_tunnel_ref.tunnel,
-					   crtc->pipe, 0);
 	drm_dp_tunnel_ref_put(&crtc_state->dp_tunnel_ref);
+
+	return 0;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
index 7f0f720e8dcad..10ab9eebcef69 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
@@ -40,8 +40,8 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
 					     struct intel_dp *intel_dp,
 					     const struct intel_connector *connector,
 					     struct intel_crtc_state *crtc_state);
-void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
-					    struct intel_crtc_state *crtc_state);
+int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
+					   struct intel_crtc_state *crtc_state);
 
 int intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state *state,
 					      struct intel_crtc *crtc);
@@ -88,9 +88,12 @@ intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
 	return 0;
 }
 
-static inline void
+static inline int
 intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
-				       struct intel_crtc_state *crtc_state) {}
+				       struct intel_crtc_state *crtc_state)
+{
+	return 0;
+}
 
 static inline int
 intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state *state,
-- 
2.49.1

