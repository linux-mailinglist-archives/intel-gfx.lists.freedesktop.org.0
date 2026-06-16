Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xiWQJXitMWoXpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 404F5695130
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=E71lakS5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF45110EB45;
	Tue, 16 Jun 2026 20:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8767C10EB37;
 Tue, 16 Jun 2026 20:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640566; x=1813176566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=XhL3F8+RsZCHhuAnMsV/UayIQp6iomDXIBOL0B0tlEQ=;
 b=E71lakS542VWte635YCt4OLVoAqkIDyf2VPaG33+xvrTzJHOREsYF4VO
 7nnOMD2fZLt+afm15rRPSjp489yRD1D+MfnSAGsRh9b/dmdihYNDrkJoE
 3x3N7Usg2tMfqux5GIC1Tan+llUByfinkGJnAhTnkvzMtP8DoanZC3BBU
 49V4Wgrt9JEncj+RviVdPTttfiU/q2Be+TgeKYGgnynOztyNa5SEeXc81
 s2LqIzt93TGKneuBKZ0Kp28DgiOqwun0YXosb7r+N+vStXpwRzB/n4FBJ
 QgsULvPqjHwGRNQEjXejRsBEcT55mdK88+RYo5hltwtCrUwWWWzX9LBNn g==;
X-CSE-ConnectionGUID: ELjDIs0NTL+dCAeNTgYpQg==
X-CSE-MsgGUID: 3PyXCBHNTyyPbExolFMezw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81427264"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81427264"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:25 -0700
X-CSE-ConnectionGUID: kIuw9J4dSZyX6jSDnFR9zA==
X-CSE-MsgGUID: yF0Jf8XrSb+cOrHiNW1Lbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="251786197"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:24 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hi6G2EMcGZ8wszOOGbKwgXEIoi+7j05c+GmsCTcefV1Ev1WeWhUn6S0YLf7NrXn5A4RK10udJ7j0+hD4MpdxYp58JC9cVsAQDXYAk8zlkcVgJe8T9mGCItpRItOwOBlHmbZTTq/W+DfsTmxrzuceAI+ysEidMMPU0T25+i84gR/exeYVbgMqz1qB9c9CjgSQ1mj/s8xkFj/zjX2a6g8fvTLRFp/yZz0LbYabWTkX1RmwMJN5qIYYl22d/zBsqcsQqhEire/3pdrSg92anfYFcJRPIRBFsO/22V9pEV6aoQ77y7+P/kqFGemm3ryxeOh/kbMU/GelUiP4OO9msKN3yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wqu1qYqNhF+Ph8RkRWMwLQ0lPBlbP4TDAKzbELwA51o=;
 b=lIadq5HVsUmIvHa5apIcE76kXeq7dQLNBG99lJ4rDl/bmq8z2J67PfvQaIXjD1+5kI9Cb6AxWFnPGO4YMfcC62wouvcCdhEytnTLW1p8BjPGD1LvP1gBQSUV3I0RNvIUF0JqQ2ls6fDzXe5kt2b9iSxmN3izn9xwo8/H5RRZkhYBjo8ZlgxW9GzOK/+wlBlLoVxlmsJHr3VHMDu9Bu1bUgxSyX99mSujRqxPM0KtAFVdindsLY9Rcypa+E8ZTzUDXR+ay+LZS5dV2tBZySJQ9ahGvLvuwckyb2/m1bheazRDgX3ddZ23czNPVZI2jfZZB2y2dNxuXFMuzvXuCNfRLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:22 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/28] drm/i915/dp_link_caps: Introduce DP link capability
 module
Date: Tue, 16 Jun 2026 23:08:23 +0300
Message-ID: <20260616200849.3534628-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: cfad1c0f-a9da-4d28-da45-08decbe32782
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 2S4aE9gtlqgo2sObn1ZZyUI/O+Lizpv+u5+0keV88KsQpMjS3wNsOlE1mQaK3eWLc/7etDq593XU3GU0jO9afg5S3Jp+8RZRwe8PfH5b8TNkGgijySwi4YpzguQk8HURWimFV62Sn7Y4U3XJmaryB8Duq/asy39veTTt37p+Akj8tzXepT62CTRISFFjNZwnIKPA8+ZN1Zg10fY5+GJJbBWIcTckxOOBbDN/5kBjMkIL21VLXBfXLRihnZIyFGLdjktj5LZfBKIqFMnGf9OR7gLlovGNCnO3Ygkt0wOhN/tQ1GwsIojTzx30KVpiHoeTjbRTT07ictWtwv+r0FJku7U2NyYpM1KaVn0OX1v5uAp/CdogrHvggg+whxOcmEHN5uVYQeE9jOUDq08Yq/0gCBpOUD9Wwu3pUDDtoS7ACa4rokEBBYZxXUth1PI3jsMSQf7mboRX/WEzeVp5Do2nY8KddodVQsKoF1hEzJ+JjVNB9FjyNFUwmDwi1Pqh607hgdSIYND36jcjvL7AygdqcitH+UlSHRchleM7D2oTpuz40DbfBzALWkxXGoCpu7hGRktFoXSUiyZU+SoVPhjUx13rLTtU528gciQIEtIUQ6JNtd1SJK9brj2EAbfRWFtRM9cYxRhM2OYKUkeDz6DEWynphQ1nECe5Q9bVDdnStT9bO/4L52J0sJECdiC1tVkC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUx0NEpLcml5dGFmVlRTbUJrNEN5S1NMcGYzZmlZN1BLbHY5bGJLRFNlRFJi?=
 =?utf-8?B?NTVMU01JL2wxU1ZJLzJyaGNLK2htcjJlZHo4UktKQ01VU3NtVFZZVUtpc0RQ?=
 =?utf-8?B?UlJORlEyN2luWTBSZGpud2FPOElmWDd0Z2pjS2xRcVluYmRQbW4wQmJnb3VK?=
 =?utf-8?B?ZmFQdDlOdXV1Zi84RzY0RU5pUStkREE5a3lHeVN6ZVg3dFMvU0VrYVdvSFIy?=
 =?utf-8?B?bjZxV1NIYUZJbWJuenhFQWNuK1FPODZ3YzIzakRla1NXbGcyNk1NcnJuRmZp?=
 =?utf-8?B?cFVjUXd3emUwS0ErZEpMalFrWnM0S2xsaU1zdWpHYkhQUVBuMEprajdjWHhN?=
 =?utf-8?B?Vkg5QmUrbFFUZldsNHo5dlMwdXhRK3lOR1U2S040dUhYeU9XMDd2Z2tQTDVJ?=
 =?utf-8?B?cDFXVXoxMFJXVzVjalgyNGplemFwNmpHVHpQR0grc1dFUStRdm9qM0Y1bzRr?=
 =?utf-8?B?MVRGR2lJOEdJUWFQYmhxbEwybHptU1oydkhyL2NzV3RsQ3o2NHpmWEMvS29w?=
 =?utf-8?B?QTRDaDZKS3Rpc09yZy81NVFoWURtcnlBeXhMT2N5Vk0rQnJOb3BpUlc3Y3li?=
 =?utf-8?B?dWx4RUo1SFpaVDJIc2ptWDBaQ0pxYlYwQWFRNS9PZ3IzUnh6RFYxd0psNnZM?=
 =?utf-8?B?ZnVzYlYydGxYenBnR0cybU4rK01CVi93Tmp2SS8zL2oxMG92Q3ZpNDVRNzBJ?=
 =?utf-8?B?Wlp3MHFhUnVQdTd0SHpjVDBiNytuUTRmdVI4S09Vb3FHcGJpbDNwUURWTEFW?=
 =?utf-8?B?Nzl1bmY5NHFTTWFHRXhKZWwrbnRuZWRUOUJidTNSYlFxYVdIRi9NbEhDLy9t?=
 =?utf-8?B?VDdzbFRTWEJQdVdndnBKWENMa0ZTd0RrSEgzK3U5MjFKWThLcXk4VkV1M21R?=
 =?utf-8?B?bktjamdkd1lzL09iWFB0MUZjMWIyQ3d1RHM2N0pJaUtQVDNMNjBkeDN6eHRh?=
 =?utf-8?B?cmhLRUs2NjBEeVRCMERkTnpKdUVaU2tBZGpNSnZ0NGxubGFZZXZQWG9hZ0xi?=
 =?utf-8?B?US81UUw0TmFFQjBTYVRMY3YzV0hkOEltMHY5a2Y4S3pmNWoxVXNPeis3ZGkw?=
 =?utf-8?B?dzFWSys1b2RGODRhMWlIWkg4VHExZXNTS0Z2RVVjYnIvMmdrN1h2QnFXQ3d5?=
 =?utf-8?B?M2dnRGUrdmhhZHdQWW0rVUxwUmV6RmlhcUtZMUFGZXB4Yi8va3UwT0ptZy92?=
 =?utf-8?B?ekFWM2N3emNmbDk0bkpkVjVIL3pqRHlkZ1BFL0VlL3B1aThrNSt2clowVVdJ?=
 =?utf-8?B?N082TS9WLytOWmNLWU1FU3JhcG1IODZPdkZBZG02dW03b2R4STdTZ1JKak5D?=
 =?utf-8?B?UjBMVG1xalN1RjNOc3lpTmxILzZaa0wwV2x3QzhxUHhEYzcrV3FnaTRnZzhm?=
 =?utf-8?B?aVNja1BrQjY4N3RydTZUbFZoeHFSYnNpbWQweXFHY2NFeHVzZnJJbTRWSHBk?=
 =?utf-8?B?Z0QyNFZuZWMvRjd6czJCalR6SS9oWFIxa01YSUdteWd6ZUtCSUZMdkpBY1ZP?=
 =?utf-8?B?MXB4TmpZODFQVG9JN0pxdHg3cHB5T0RDcnRFZVBFZ0hxZE5uUWN3Ynd5ckxV?=
 =?utf-8?B?cmFtRk8rSThzWWViSGVDTGdvZytFeG9UazIvMzRVL1BwRkFXdmZCWEhvUldv?=
 =?utf-8?B?YXVoMTdUSXBHV3hGZmN4cVR1SkhrSVpsbkxkWWM5VG5weS9xNWJXM21ONnhs?=
 =?utf-8?B?c3V1ZFYrb2N3M0VGa3lJR1FlMU4wWFk5ZW5hT3ROQ0VVTG11WnZTVlZsemNS?=
 =?utf-8?B?Q0VndlR0b1NxbHZ4bkRHM3BlL0lxWjg4TU91S3JoQUtUeVdRdE8rTjZOSEZS?=
 =?utf-8?B?cjFEMjRoMklwSE9neFhwMHRDbWV2aE14MnZ4Q1kwNnNrRDVmT2d6OFRFZmZE?=
 =?utf-8?B?SlNYNUNwWGJvSGJjT0tyeXVIQU1ObE0yYkZFTFdWQmxrd0FOL3MrWll3Y2h0?=
 =?utf-8?B?djkwTVNEVFRLam1jRnlrMW11Tjk5OW8yazJ4cDFSb1ZjZVllT21vMHpWMktY?=
 =?utf-8?B?amRCRm5zYjVWQ010aGtJVWdEVG5FNXkwb2RVQWUzWmVTbHI0N1NtOFJYTTFF?=
 =?utf-8?B?T3hHVFBFdjkycGtTdzVmanBJcDB0VXdHKzhIbE5OSXc5d3JRWEFvak8vVlI5?=
 =?utf-8?B?WWdWVUQySFM4UWVuZ2hoeEQyVHgvWGoyUE9RM05HU3dpU0VQS0p2a2NZNDJ1?=
 =?utf-8?B?bTdVeVhtQk04V3hKTDVqcEtOeC9ONk1VYUR6bVM1ZG9QR2ZFWHp0MnA1ZmFD?=
 =?utf-8?B?VDU4Y2pqVDZScEVnS0pHb0lGbjUzd3cvZG4zQ1BDdlVVS0VZK0dZdHBkdmdp?=
 =?utf-8?B?Y0xRdUhKUTIrYlNxR0ljSFFEbmwrYXlZYldUajFUaTVzS29laGcxdz09?=
X-Exchange-RoutingPolicyChecked: YH7vwpS2AeKRs/YNTodByywvx2yANHrJuCQb9HqGLkQCKxCwwod9kyPa7dnXwueOH7G0dpgujncAQI/UqFaKCCXVhhh2JUJOG8Ixi7HUG650QZnpdVGFkA1jFOvVvrCknJjJyyo4ybMHG83yVu1NX0xUbBDrL7vZglw9bwIB+Z4PN0MRHwtyBeDyT5bOhiNMt3OA2MwH4cRz+yCxOMi2SEBtxsLH9buz4NTlJwBfOEMHqak7XMPoFmqvxSl630jZBIIDzZSiKG0jqGASrqUTE+WgwpuP7MHJs6oLmVwcibAnjQi5LyH9PmqEz4jb6ikczzc38NxYAj2nT1evxNMm7g==
X-MS-Exchange-CrossTenant-Network-Message-Id: cfad1c0f-a9da-4d28-da45-08decbe32782
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:21.6649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n6qanpiMbnfe2/BJUVZ9uaPSPQvMFeLzggmm7E9PAjaJ7vikYyuDQviJ/gMktb0s4prpQYgTgyHjQj9frvqMgg==
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 404F5695130

Start isolating the DP link capability logic from the generic DP code by
adding a separate intel_dp_link_caps module and a corresponding state
object.

Allocate the state so it can remain opaque within its module.

Follow-up changes will move link capability helpers and state from
intel_dp.c and intel_dp_link_training.c to the new module and state.

v2: Remove unnecessary function documentation. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  9 ++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 30 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 12 ++++++++
 drivers/gpu/drm/xe/Makefile                   |  1 +
 6 files changed, 55 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 07802a7f4ce50..81e16f377641b 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -356,6 +356,7 @@ i915-y += \
 	display/intel_dp_aux.o \
 	display/intel_dp_aux_backlight.o \
 	display/intel_dp_hdcp.o \
+	display/intel_dp_link_caps.o \
 	display/intel_dp_link_training.o \
 	display/intel_dp_mst.o \
 	display/intel_dp_test.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c092c81ed2eb6..10933ccdeb31e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -58,6 +58,7 @@ struct cec_notifier;
 struct drm_printer;
 struct intel_connector;
 struct intel_ddi_buf_trans;
+struct intel_dp_link_caps;
 struct intel_dp_link_training;
 struct intel_fbc;
 struct intel_global_objs_state;
@@ -1867,6 +1868,7 @@ struct intel_dp {
 		int force_lane_count;
 		int force_rate;
 		struct intel_dp_link_training *training;
+		struct intel_dp_link_caps *caps;
 	} link;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 00eb3f5103383..fa095c4db7fe6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -71,6 +71,7 @@
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_dp_hdcp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
@@ -7458,10 +7459,18 @@ int intel_dp_link_init(struct intel_dp *intel_dp)
 	if (!intel_dp->link.training)
 		return -ENOMEM;
 
+	intel_dp->link.caps = intel_dp_link_caps_init(intel_dp);
+	if (!intel_dp->link.caps) {
+		intel_dp_link_training_cleanup(intel_dp->link.training);
+
+		return -ENOMEM;
+	}
+
 	return 0;
 }
 
 void intel_dp_link_cleanup(struct intel_dp *intel_dp)
 {
+	intel_dp_link_caps_cleanup(intel_dp->link.caps);
 	intel_dp_link_training_cleanup(intel_dp->link.training);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
new file mode 100644
index 0000000000000..63989d97effd7
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#include <linux/slab.h>
+
+#include "intel_dp_link_caps.h"
+
+struct intel_dp_link_caps {
+	struct intel_dp *dp;
+};
+
+struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
+{
+	struct intel_dp_link_caps *link_caps;
+
+	link_caps = kzalloc_obj(*link_caps);
+	if (!link_caps)
+		return NULL;
+
+	link_caps->dp = intel_dp;
+
+	return link_caps;
+}
+
+void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps)
+{
+	kfree(link_caps);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
new file mode 100644
index 0000000000000..050b279463d6e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __INTEL_DP_LINK_CAPS_H__
+#define __INTEL_DP_LINK_CAPS_H__
+
+struct intel_dp;
+
+struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
+void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
+
+#endif /* __INTEL_DP_LINK_CAPS_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 8e7b146880f46..e5a04253e73bf 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -278,6 +278,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_dp_aux.o \
 	i915-display/intel_dp_aux_backlight.o \
 	i915-display/intel_dp_hdcp.o \
+	i915-display/intel_dp_link_caps.o \
 	i915-display/intel_dp_link_training.o \
 	i915-display/intel_dp_mst.o \
 	i915-display/intel_dp_test.o \
-- 
2.49.1

