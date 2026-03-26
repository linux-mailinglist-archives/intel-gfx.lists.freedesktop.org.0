Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJp5OrcgxWmC7AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:04:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C90F334E3A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:04:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D5410E9A6;
	Thu, 26 Mar 2026 12:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AAQTLWIV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6274510E9A0;
 Thu, 26 Mar 2026 12:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774526644; x=1806062644;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=yjzdLcfSQfPhJi68q8Z8KWObVdxHfDbGrAJc43VNkKw=;
 b=AAQTLWIV3YSG/2QWRSqi61xurhUVN5ybvf/FWxQyVuDxIwHGSNI4dKQl
 afgMcGBo9ScjMvmTq2Ckqv5GpnHLE6Dpc2HR3Yb+P3Vch5AB/cirm7O6X
 s/PwCxIms7EH5LDTS8O4WLsaoYLi9K8OJ5TpXMDFV0QfJDv7s0xw3T6wh
 aULsM0rS5N5OzZMIUxYqFA2qRYkPuutyO9HsHPW6S0YWvLkJedxkI54FO
 89sxksAjikz/z/FPVwM+jMTASnc6CpPn1CEhOoDP9nHoADx6T1ytNs0/z
 v5mgOVE431GkciOEiT5PxioB/ODiVtLSS5HMm4sQD+pMRTL5BK9r3j+BF Q==;
X-CSE-ConnectionGUID: 8v5MjEG5RrSjNmiNWr1t0g==
X-CSE-MsgGUID: b8mIhZQoSxieoPWs2U0j0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="98200674"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="98200674"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 05:04:03 -0700
X-CSE-ConnectionGUID: Rmq8JDtZRW+RfvvKLZ/3CA==
X-CSE-MsgGUID: tIFPNpVzQVyfan1YeMVyDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="229756208"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 05:04:03 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 05:04:03 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 05:04:03 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 05:04:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j36wcgKdyjCpf1/bQFHLhg+c3EXDZeUpUWGLRMGK0VUARibo1IPYNhlhWvFYzWvDPV09ElNLoqghShQxEN/WC/1dnnAUXPVAUvGdJ2I00x0A6kfLVCLiXknhi2ac9pG7R4C9YZvvWJauk9lYekBQck+CDicwqjPWRyH0MsKpHaTfYpWeaFPOyAEHsNXmHRJSoyZyTSEvFwuK3AvxnwljH/oE5XwBFs1v5G0xt4Mwk8r9N5sbXI4sTPRNWYcRCz4YhzL4iR7eGJnwse4McBFh14PB9ZL+N3G3t08hX0j+D7kTjEu9ypMB/B+KE/nV42qNKuzAmtOXE0jEZCc6kkSG2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9r3ES1W3GezAjSQdMC7vqx8OssnYnFJI2PiKc2w/ys8=;
 b=Nl2UJp3PbnXy7lk5rHyHOhFvx3FbcMbBznCV5RS3gjv82Mwpr1yZHLev0CDrtQmU/GBuZR9L9+PzYNiYmRGj+kML/0DZ7p1MYgPfLH7tC7WdznAe03NAZAlZeE5DSysAte1iFIOlIVMfGCh88nYn+DKKR66BQWJAV8braBB/8nPmREvSLoAFFKL1vhdwQKzpheMMD2CNwscgA/lmJoVPBuwYnJ2jgOzhPEGbnURxS9lWLmbqj0T+z21XvrBhKNh+irBcBhotSa2Hw3eaPBPv4SIEV04UAZoJeZPx4fK7Ayn6Bqkvwra4ABCBsD3D1jQbYFFdI6Ls11rdM1WSLeicug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ0PR11MB4957.namprd11.prod.outlook.com (2603:10b6:a03:2df::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Thu, 26 Mar
 2026 12:04:00 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9769.004; Thu, 26 Mar 2026
 12:04:00 +0000
Date: Thu, 26 Mar 2026 08:03:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-fixes
Message-ID: <acUgq2q2DrCUzFql@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR13CA0022.namprd13.prod.outlook.com
 (2603:10b6:a03:180::35) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ0PR11MB4957:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cd049a7-5f51-466e-1893-08de8b2fc403
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: IyDse51KkPVpDaT3dsu+fGLetWW9Nj03P8wfTf0QcjZ/lbj0ozvJVryZsLb6xV+kLvAf7LhRu3B7sXIf8OI6KHRQAI6Cq6oHXJp73/wsH/u/L7c6FpSh9rypph8vpO3+ezRK6I1QN4EF851cDGdOZ7Slr1B1uGRYDM+hDHE95KW19YuW5s3/i/f72svgR8oAxruafOeK8PH32FQmfSWQe5J03aZG6rSvarM5oY/yjOxmkptT5sQTYE3R1GZuMVPFAXrkI/KMktg7bXcScy9EQmY6gAD4kdkJDlJ0ONNbgyI3WJs/InyYmenQ+uvEld5c8wFujGSUVSrhoSXxCojiBAs6ceVsvxcnY17jFlOOy8wEs2HxO0NH5Knos/skowLd5enmOkgl/7cfKck2C0gcBLzu6uwnrvGIzfd98U8rSLE0maeLC5XdeB1ABeDHRVkhBBaCSfcVck10SuAfX2tv+LGZ2M9wjTFjhVV8IbAYs+AgokktN8NQvcIAKpe8KPsHv6B6pPQwX1RfNw1EPOz4O3Du8mkA5D8uNKiMJEVBuLt4Tg5eJ/Wto/C6uJ55gNSdURuDcsiVfHnxNpaTinDsbWgkqBU/p4YzJhOUaTLSXolYRQwFalH320xKRVruayg2BPnYQNP1+00na1zDnVU5hgtt0V2ZQp81/dtzrZlAuW8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmtOYlFscmRZN2tNZ3UwaUVUQmJzbndjeXhUdkpORTZhM3V3MnZHY1FkMmow?=
 =?utf-8?B?cnZrek00NlkrWlNONnpaWGZOSk51b2Q4cXUzNFZ3QjB0ZUp0SDZhbEJ6disz?=
 =?utf-8?B?TkJqdFZtMVF1ZXc3YnlxU3J5bGlZMmI0V09MUlAzMUpyQnhac01NTFpwbDVH?=
 =?utf-8?B?c3pDRVlJQ0hRd01QQjRtTVl3QmQ0UHhoWUZWSWpWdVh4OW9CbVFYOG9oRW42?=
 =?utf-8?B?aEZ1bVhjcmZCS1ViWFVpTjM5N09rVUlvQ0xQTUVuUjVESTVTT0plWnpuVzZx?=
 =?utf-8?B?dkRrci9keFN1K0h0djlFVHQ4QWVicENmd1RWOEdqTkd3ZW9rMGwrOHBOQnNF?=
 =?utf-8?B?Qk82Mlc3dXhqSjltNUh6QVFiUDRXVFFUU24wbU9UVHBCMklOUjRXYk9CY1Bk?=
 =?utf-8?B?OFRYR1daL0VoYUZXQ3VQOFNjZUdLVnlxVGxycS9EYzRjYm9PWGtJY3FYM2pM?=
 =?utf-8?B?U1c0NDBBWnYwUW5nU2JrbnB5VGVpdVEwZ1k0eUdKNkRxSVh1bTZDSG1qODZN?=
 =?utf-8?B?KzI2aVY4UjgxQ2hEdDJJRTFDUVJVTHNBelNSeEd4b05YaDkwYWJscnlHVnBr?=
 =?utf-8?B?eHhSaWM1TFRkRXBESjJ2TUdRUmp4R0VML080Y0NkSzZZdERvWnJCWE83SjVm?=
 =?utf-8?B?Z3VYamVsOUh0dmFzQmFjL1g3M2FEZFprRjNhbStPR09SZXlhTHRRSWRERUgr?=
 =?utf-8?B?emE4UmRNK3prY3QrWTFpMTVpU3ZJM08yOHhLa2pwTUI4eWVUN1ZmSW1jZElm?=
 =?utf-8?B?ZjRsd3F3ZmVGcCszaFFUTUE5anptUHkxRWZJbWFPM3FGbDR0NHpwRG16bGo2?=
 =?utf-8?B?YmVRNHc5QkNHV0VCeFlBOGUvaFNwL05aT1JZaEVYYlhsZGh5R3hiK3haQVNx?=
 =?utf-8?B?bUlVQ291YVRrTDJGTjF4MnVVYjhaWDVLZDJkektpU0lDaHBKSkdSd01laWRx?=
 =?utf-8?B?K2NPY2NOR0ZJTSt1MG9tbFZZR2pjby9lekdHTlJFT1d1VjZHZG8xTysvWHN1?=
 =?utf-8?B?ZmhEcldIRGlBSDczOHpCWU1MRUluK3RoWUVQSjYxbVNqdmRjS2k4OU5Vd21W?=
 =?utf-8?B?ODNIQjFJUEIrd1p6cVYyaURZQkRGVVJiWGwrUmRSZDZkSDM2UXJoOXFsOEMy?=
 =?utf-8?B?bVd2WFZISElQaGFkcFQ5RnZYZ2lzNzN6ek03N1VLaVBxMFdubTdIYlRUVXIr?=
 =?utf-8?B?Y045R2lpenhoSUhJL3JqMU0vdDlTVFcybDB1OTh3dGFDaHBjRmVxQ0M0WGZo?=
 =?utf-8?B?ZnU2Rm9heXZmUlZ1V2t6eDlTZ0lxNjVmU0xTT1pjUG14dW1FQUpONC9BZXgr?=
 =?utf-8?B?TWJQaGtIN001NUdxZzRPNmVCN05FTHZjN3JUUW1JdTNSY0cyZjRKcEF4ek9i?=
 =?utf-8?B?dXE1K3BOMDVTaS9MM2pQQURRYjZuYjlnNjJzVHdXUmxxNkJpNEtKZ2NaamFz?=
 =?utf-8?B?WUZQTy94SmZMdVB1T3lDV0YxZE13WU0wdjdlcS9tZkVZWGJQZmtlSWNoWWRT?=
 =?utf-8?B?eUdhRzQ5RTZGeDhYYldwYVdtVVpRZ05WWTNSVnlQM200VG91MmZkYW5mbnNK?=
 =?utf-8?B?Q2FCYnBHUkprcW5PWldJeXZqeEY1eHc3c01ub1lkYlA0NzNGU09nVktabC9O?=
 =?utf-8?B?ekdFMStpb29wOCtmdTlqb25Ma3Q3UW9WUXAxYmhaNElBY1BxSkpqamEzam1Q?=
 =?utf-8?B?dW1aeS91c05RSFBlOS9uWU8xZHpRd3ZqbVNnZzFwUG9uZmIySHRyQUFqQzBw?=
 =?utf-8?B?TmNOcWcxMzhaSXBXYmlCSDZvRWhKd0hTaEtpSm8rdVZNbElRS1R3Q0t2N3h5?=
 =?utf-8?B?SmVkQVc0bWI2aVZmRnJKTFU2N1FBL3RnTkZmWTNHbWYyNXNLSUU5RmttcHhH?=
 =?utf-8?B?QXlUZW5KVzBJdlBGemdDR1F6NUJVam5yRU8reGg3eS9JYXlVUGE5L0dyeE1j?=
 =?utf-8?B?MzZyVTR5YnBvYTBoRHNnamNkV2lRMTNMZlN0SkljVGNVUU9mQTRHQzVLMGVP?=
 =?utf-8?B?TElRUzZHTis1T2RSR1pGM3FQQ2twMUNiaU5HeVcvZCt5enhHSFRhN2FaR3dr?=
 =?utf-8?B?QnM0UnFYRlBETWsvaE5VRTlPekFTeE1xVHB0Umpha0cxWnJYQk1QMml6YVRX?=
 =?utf-8?B?QWpNcWJzZENVL1htNHVMZmJkRHFDcHdoclNJTXdyMW9oa3pZalNhNUJLZ2xi?=
 =?utf-8?B?MHhIUnhidUdYaDVKb3lpY3RuZ29FNlNEZjUzcDV0MjNkTm83TEp0QWovb3FR?=
 =?utf-8?B?R2crVEVpQWtxMHJVMW1JcldEREp0dld4ckNoZHJhM2taVHFFMUNQb1l5MExT?=
 =?utf-8?B?QmloM0hsTmE0TWluem50L3FucUc4azBIWmZJUDA0ckNRRlF2WnVLUT09?=
X-Exchange-RoutingPolicyChecked: Qc3V+3U2Jbh2xToqvxQCVqe11st/a2We0VAdgMk4UCdGtB2e3THIGoYrlayU1agFzTG6J2xZ2kwvgSRtMPyg8AIY6m8UzgG6il7p5opUmS1JHTwjBM/ppMjmU8HNC9+4eDoosFAJOFddYli3CmBOIQbMjaD+9AE8gBS1RxodDYshVXyMuZi8DaXi3tGmicuhuI6/L74/4fOpJC/nf2AStkcZxaYyuy7NLabRrIjMwntj9C3XdomRqK6lp4TeeI1eojsHGlHymFJhZf7Q/ZW4tA8hNoTR154rNOZtFsBpU+xuyqpZ1X55ceRa+BvmLRsDql+QATWSQsY4VJbaTfcOuA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cd049a7-5f51-466e-1893-08de8b2fc403
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 12:04:00.4249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ToRplRNw7toOSbXKDXt2kf8dRsW2Sx8sr0HGFUBUcmQK7QAZHX6d/xLXNGRxbvIOFX1McJAOkORuHLJvAJjYtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4957
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5C90F334E3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave and Sima,

Here goes or xe fixes for this round.

Thanks,
Rodrigo.

drm-xe-fixes-2026-03-26:
- Fix UAF in SRIOV migration restore (Winiarski)
- Updates to HW W/a (Roper)
- VMBind remap fix (Auld)
The following changes since commit c369299895a591d96745d6492d4888259b004a9e:

  Linux 7.0-rc5 (2026-03-22 14:42:17 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-03-26

for you to fetch changes up to bfe9e314d7574d1c5c851972e7aee342733819d2:

  drm/xe: always keep track of remap prev/next (2026-03-25 08:05:33 -0400)

----------------------------------------------------------------
- Fix UAF in SRIOV migration restore (Winiarski)
- Updates to HW W/a (Roper)
- VMBind remap fix (Auld)

----------------------------------------------------------------
Matt Roper (1):
      drm/xe: Implement recent spec updates to Wa_16025250150

Matthew Auld (1):
      drm/xe: always keep track of remap prev/next

Michał Winiarski (1):
      drm/xe/pf: Fix use-after-free in migration restore

 drivers/gpu/drm/xe/regs/xe_gt_regs.h |  1 +
 drivers/gpu/drm/xe/xe_pt.c           | 12 ++++++------
 drivers/gpu/drm/xe/xe_sriov_packet.c |  2 ++
 drivers/gpu/drm/xe/xe_vm.c           | 22 ++++++++++++++++++----
 drivers/gpu/drm/xe/xe_vm_types.h     |  4 ++++
 drivers/gpu/drm/xe/xe_wa.c           |  3 ++-
 6 files changed, 33 insertions(+), 11 deletions(-)
