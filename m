Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD27L8+t8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 744C5485294
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF9910EBC2;
	Tue, 28 Apr 2026 12:53:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ibX1yq3M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E9510EBC5;
 Tue, 28 Apr 2026 12:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380812; x=1808916812;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=83MChnywzYUWNxtrNt/+Y/0S6R1XuDYCqcSsVI63c9o=;
 b=ibX1yq3MeN11npyT5A1kQ+Ts5QVDLYqNpUhwEpJ1z3iUhA+afx1TnBd4
 QlpLItqB2xHm6g+ZbVFpKUYphGS5TIANadRw+GBvxqUdvx1gp70v4M0Ky
 hMee1l52qpRp121lWCVoAYBpY2HuIy+M12mw3H7g7yu6ZGlM6N27jG90g
 ZGEC4y1UVE+0bvQFoidcWbX9jPfk3GQgPH6xjUZU7nDqAPnAFAi1+ZkJv
 ngNpU3rwTde42ovZ6UIizshZvRKdU9rpzZAbv7cWvHU9e2oDkufNI2/R3
 kk/HjnpmbhLH1cY9OB/eDvgzUYtpBt24x2hyrjK3hJFSbvosxUt+MRvp0 A==;
X-CSE-ConnectionGUID: kMmT1suuSLeBqJIBazmOzQ==
X-CSE-MsgGUID: G64QJpXKTtCdaxsojVa5DQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203095"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203095"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:32 -0700
X-CSE-ConnectionGUID: PUTSgSU1S9KsToAU7sSqXQ==
X-CSE-MsgGUID: 5GNTrvVrQtOaV/2Fwnilng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244112"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:32 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:31 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:31 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B7YyHtl6YD6aFkhMpIM65i107iEr1Fpk+HKO5/D2rf5ABPdI557nw7Z0CwkK6w2KOWykeMZvEYOUBcl1yR6mej4k2evDCrSHegAqFelwc7hTWy2kejNMpFtcaoPuNLIinOYOx9oQ+RlHjQgeFZLbrqEb5ZjLgy/Jt5HIG6QFDeAiLaxnMWr3dX25KnAe1Vpm59nLHG7qu7zQa6DgU9+oudG54+8THGCNpzn1hNmE49maGschmOS66n6TQAxMScl9U1QCMWUYW92LBLtjUr6S/KIzFPYwdTh21OwWtke4kEkD9QDDt8QKRS2LZSNSor1dyvYJBCoXv5dcBAa7x5Md/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Elj0kYa5baBdwlQRFK9KQwCjmWWb0dSXfkyZeVlYeQY=;
 b=DfvuEvOwtKeMTMRg4ZCCOjnVaIzUr+G83GqjNUtPPy+k/b51QOSuW7e2aoXn7/gszGeDid5BVaaIcugZmt+9oS1tz6EL+O0TEFnax1FA1OpQr2OfpXPjyYtmRDnNRu3arULzl1goqv316htTQdqs4JIMnlE0rSG2g8M5xT6E4Ag7SxJtz1847U9yg9wCWSv4EOpGOA8fl24xKB2I4yp0pgXK/yNFA4IJpwUPwz2wvgGGTmBJ5XtaKSVJNTLjEiuMINdkqFxo+s/DhTSE2pJzA/KTuhMyXk+LSyuADht1tjBNCOEFHItVv8tFo9dEkpzE5Ys8OnJJobcc8KrZxQN7JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:28 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:28 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 029/108] drm/i915/dp_link_caps: Introduce DP link capability
 module
Date: Tue, 28 Apr 2026 15:51:10 +0300
Message-ID: <20260428125233.1664668-30-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 70cf5044-82ab-4695-09b8-08dea52524b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: aczGlGHICCclKhHYS0Zu3tqHgb1Yo4pOEkH3zlElmGLQjyACEovPGMaisbkYotbZ7jGbwZugDYMdxfY1rVjGi0WvEhUOKDz5VjIkyaEI8ORAe+JFBTNrCDa6/94LcK/zHhDQfjHud9niJgz3kyzFqHTlDeNny2780a7AvmFBmdJ/AqRStMNnGsw/59Y1cl9NNBJzpLVcdAPLuGoE0AAFMgLyjVL1AeGJffNyWu3X4JdI7OhnC5jl1dS+QluaRN+vp9fkdPQmbsYg2xYzaC/7lbHBvcoCyOOsnWyG01hXmH28AQRVYT/UsgiDFRmwmzFZCdq+AvNwL4MR8iTGAbv7MMbaqpYHYn0661cD+8GpqFLsaMPH8JnpXHs06HLswVNpFCsfafXKBRNcFcU2hxEP9kIiNBZqXqYqks7XA/Z8Cv21zU4vflLN2D/io1jmVZjZc2KbsT8nUt7JSl4ssekrl0fhqxJyYJopsXmfqPxj7ogk4QfmvnBvRoH7dSvx8PAF/GjTB/8g1IeEbDnElDPcD+h4bHCwa9XtShbxAkOPi8eIzr1U64Uy/XBUVBxUSVkZmHXiVmqcweX9AFtfBBFCw7hKt24ZOkUH3gtzoqMUNwpgoW19VrJbc6Q7byN8C3YkStkS2gIgma4x+s5jOCvWppN5On/Ccu1KHUxRI9oBDQ6GCreUDEIP69UVHIQxXSRPT1a2A+BZTTpqp/nwSmYyn7TCqeTZP2HNRoowPy0O5Jg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzNHbC93aTBKbUhWRm5sS3JWTGZZc3p6bGJrSno3bHBmQk1Oa3JTSVVBdTZY?=
 =?utf-8?B?Um4xOEhlWEx1U3dldWZiRmcxOU5PQlc1dXVHeVlpRFIxUVp1LzZOdjYwbkpa?=
 =?utf-8?B?WHlZQ1RRNkhjak94eEp4TFNVdnpOR3d2di82T0kwN1BrRWpTdElTZWF1TkVB?=
 =?utf-8?B?NjJYK0FXOThSdkRSbmJrWFJ4cjZXcnFvQ3VXUXBFTUpHaVIycDdPQ1JyTmhG?=
 =?utf-8?B?ZmtTVWYxdk1xdnZVN2s1Z256RkxCMVhQc2Y4bGppU1EvY2NnMEVITk5wR2V5?=
 =?utf-8?B?c0U5WkdBeVRraXFvWVhCN2IycFpTVDRoUHZkbE5Oci83K1V0S2Via05pZk84?=
 =?utf-8?B?dVJUWVlkU2JBUUNNN1JlMDRuNnYwRmhoTkNiZnhVdU9SeEZDUTRNQ1loVUh4?=
 =?utf-8?B?eWxqTml0dEoxV0FrZlBCV3FWOHhsS1dTNkwyQVFwTWNnSWhiRk1LVHhobGI2?=
 =?utf-8?B?Vkp3bFp6cUZNaXpHNy9mbUhNaWcvNjBGVUdscXU3aVh2NFRudTgzVjZ2RTcz?=
 =?utf-8?B?Z2NqVVNhRzg5SVdPeEo3Mi9zejBTUlBBM2N3UXVWcEc2bmlrWFRRUElmVG1J?=
 =?utf-8?B?YkxXMUJhazhHKzZkbGUwdUpMdmx6UlNCWEdXVjh5YnNQbE55M1FQVXlRbmlP?=
 =?utf-8?B?SVFWVitNbzRVcWRmYnpmbndScmNnS1ZKNWROb3BreXZLR0UxQmloVktoaXNn?=
 =?utf-8?B?TFAyaTJ6OVdLVkg0UlphQnlBd2ZuOUV3aVNDa05KZ0Q5ZVZJYUhIek1CS2F2?=
 =?utf-8?B?K21vSXA2NkFFeFpva29QTFlpWGFkMGdlYXk0dlZBKzRpM3BVN1NkeW5EVWZI?=
 =?utf-8?B?SnltRzk1L2V3K1JoQWQyT1I4N1RINUtPYW9kQkI4ajRjeExDL3lBS2JKOUk3?=
 =?utf-8?B?eVU1NHlKa3VBS3crM3JqNjYvaFBGQzB0SWU5cEtnV1h3b2xOQXkydkFvSjNJ?=
 =?utf-8?B?M0RCeEZGUUd6cnRvWFpndWtIckgrOFN5L2pWMDZxODZqeWZJa1RBa3N4ZkNk?=
 =?utf-8?B?N3AzK2plYURpdzhzUU1PTFQ1SW5EYU5FWjgxNGg4cHkxNUdGYWhEU3RINjBC?=
 =?utf-8?B?OGR1QXpZd0poc01XVm5MT0svNWtkRTY5Mkw0MGhnRkFsRjZSYnQrRmxSOWhk?=
 =?utf-8?B?M3dlNTgyZlhsT0xKSmN0UEcwSEhFNFVtNWZMMDZ4ZDV6bFVBVTZWc0NDNDVj?=
 =?utf-8?B?VGNJNDlZcFJXdm1NMEJPK0tXYjZac1V3MkRmQUZYZnlnYmdCQW43bC96dEQr?=
 =?utf-8?B?R0VGamdrVUMvemYvd2lsV0YzRTJQclhzdzZHTkZkMHBmdTd1aWJ6cHNmMDZm?=
 =?utf-8?B?QzlVaUV5eWRuVWNKR3RqTkx0MGxHN0cyMGdtU0xONHZKcGdmWkRsd0FZRXcr?=
 =?utf-8?B?bmFKMm4xQnZNUkpaRE5iaUs2RndzZDZobE45a2loZ3h5RXE3THc1TUZRUTZ3?=
 =?utf-8?B?NE9tOWUrVEhZV2tDOUMrYUEvN3IvalpXUyttOCtqU0FTRy82YXVCVW1iVEc5?=
 =?utf-8?B?NXlwTVF2Z3lnc1YxTlZrUXVEUWZjOEordU5WRWFNTlVyT1ZyL2NxeWtBai9i?=
 =?utf-8?B?YXAwSnZCdHVoZzc0YVVMYnNMWmhFOGhUNExTeEhib3ZiRVhVbVZhRStMbUFw?=
 =?utf-8?B?ZFFINUJBWTlmMVN4UXNCbjFlQ1NrSDdZcjYybmJ0TStRRlcyQXVaUlljL3kr?=
 =?utf-8?B?UzdxQ1JRV3pQSFkxTGxlbVV1OEdtTDZ6RmlBK1QwTmZveGtVRm0yZ29Ra0Nz?=
 =?utf-8?B?Rm0yMXdqT2JXdHRrUmZXZU9pRldSSlcwUXhBTVFkNFpaeXhreTI5bHU5RGZX?=
 =?utf-8?B?MGNFczNHTHN6R1FHYjc1VDdkVEUzVGNPdVp2bk1wNlBLSVdaZXVrd1Z5SVlu?=
 =?utf-8?B?dVdWd2liYnhaT2p3Q2plbkNjTjVWRzZLUktoODVBOWxjd2dDYjdveWhDRW5B?=
 =?utf-8?B?TitaSzRLZ2xkT3AyZUFVVDFIWk53aG15b1pmSXJYWkZGUUxSajdYMU9BKy9y?=
 =?utf-8?B?SENwSCtnZmY0ZGJMSEpXNUhqc0txSzNHVlhtSENTSU1ELzE5Vm83aEUwd1da?=
 =?utf-8?B?eXpEam5SOHBDU0NSbGhZa0NrZ1c5UkQyRUo1VTBaMVM4MGhybTE4ejMwWGUy?=
 =?utf-8?B?RlJsd0prdk93WGl3WlAyWXZzaEduYXVKaTVRdCtrK3VZSlZTOUx3MVNXdmdx?=
 =?utf-8?B?bzNEbU5rYmZwSVJFOHRMOUFQbkVEeHQwdS9HR0Jld2xjZjE0STdaa3c2di9r?=
 =?utf-8?B?RjRFR0tBdkVid002R1pMUFNDZU9RRE5GdHkxTFpZdWsrWUFBTXozZGo0R2Mx?=
 =?utf-8?B?MDdHQ1pydjJpZzVpNXdXa3ZaQVRJS0ttZlRrZmNWVUZjRUZyYWZodz09?=
X-Exchange-RoutingPolicyChecked: Yggi8BD1Sh+mzB5e7F3Gmham7M66FwHf+2Pd+HYJXk9yrN5TjsDZTaqh3619b5Hvg5YkcWia8PX6hOp2SAl7DXjdV6fVXhiF9gE/tihI5t/padSGf9Xzbj8vEvonqHiwj14QEn7tJ/UK8zRocq6MIdIgIY8uSWhCX83HW4JaosFc5TSoSDwhzu79RvCFJ5BR7Fvu25VYf9fwPte/sLwF9MxoOBrl+46NCoZPayaNvy9/TB1IxJ8XvBojJ0b7sknvqKRjvYvIi/AGje4IaqcpCJVnWwQUF1RasL29tOhE9BROc6fSb13HO73Yen1pIUaWIh5Y6W6iDQciw7XaMbZjgA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 70cf5044-82ab-4695-09b8-08dea52524b9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:28.3699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mCcOsbd5Po6wI6Af15LhJQWh/cC9meL2KDGwvOKKsZ7vFMn3Pru6nReZfevyp/01uYgdvp3HtONai6NkDwazgA==
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
X-Rspamd-Queue-Id: 744C5485294
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Start isolating the DP link capability logic from the generic DP code by
adding a separate intel_dp_link_caps module and a corresponding state
object.

Allocate the state so it can remain opaque within its module.

Follow-up changes will move link capability helpers and state from
intel_dp.c and intel_dp_link_training.c to the new module and state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  9 ++++
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 47 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 12 +++++
 drivers/gpu/drm/xe/Makefile                   |  1 +
 6 files changed, 72 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index fa632f4e505c9..0c04c6d9bb13e 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -355,6 +355,7 @@ i915-y += \
 	display/intel_dp_aux.o \
 	display/intel_dp_aux_backlight.o \
 	display/intel_dp_hdcp.o \
+	display/intel_dp_link_caps.o \
 	display/intel_dp_link_training.o \
 	display/intel_dp_mst.o \
 	display/intel_dp_test.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 28a8a149157e0..d11686ce2963d 100644
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
@@ -1858,6 +1859,7 @@ struct intel_dp {
 		int force_lane_count;
 		int force_rate;
 		struct intel_dp_link_training *training;
+		struct intel_dp_link_caps *caps;
 	} link;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4f016adef93be..e63e341aa5c8d 100644
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
@@ -7357,6 +7358,13 @@ int intel_dp_link_init(struct intel_dp *intel_dp)
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
 
@@ -7368,5 +7376,6 @@ int intel_dp_link_init(struct intel_dp *intel_dp)
  */
 void intel_dp_link_cleanup(struct intel_dp *intel_dp)
 {
+	intel_dp_link_caps_cleanup(intel_dp->link.caps);
 	intel_dp_link_training_cleanup(intel_dp->link.training);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
new file mode 100644
index 0000000000000..335382d193475
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -0,0 +1,47 @@
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
+/**
+ * intel_dp_link_caps_init - allocate and initialize link caps state
+ * @intel_dp: DP encoder state
+ *
+ * Allocate and initialize the link capabilities state for @intel_dp and
+ * the connectors attached to it.
+ *
+ * Return:
+ * - Pointer to the newly allocated link capabilities state.
+ * - %NULL if allocation fails.
+ */
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
+/**
+ * intel_dp_link_caps_cleanup - free link caps state
+ * @link_caps: link capabilities state to free
+ *
+ * Free @link_caps.
+ */
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
index 95666f950a6fc..9450d487123a3 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -276,6 +276,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_dp_aux.o \
 	i915-display/intel_dp_aux_backlight.o \
 	i915-display/intel_dp_hdcp.o \
+	i915-display/intel_dp_link_caps.o \
 	i915-display/intel_dp_link_training.o \
 	i915-display/intel_dp_mst.o \
 	i915-display/intel_dp_test.o \
-- 
2.49.1

