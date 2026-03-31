Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLHFCa50y2ksIAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:15:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F6D364ED5
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045EA10E211;
	Tue, 31 Mar 2026 07:15:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NdyAGou0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E8C910E872;
 Tue, 31 Mar 2026 07:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941354; x=1806477354;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MXiPmh82QsqZq8pKJ33fgtCt1chFpZUNpha7YfNunOk=;
 b=NdyAGou0qeR9zzE7myxDlRx9QwfvlkScfuayybIG78RwN7SGsA5hsQR9
 wl+Pbdnxn50Gh2wJrCwVipzy9yGjuL1SeBhpYMe1xIpn4rgjFOHpj05lG
 b2DElW+9vFA9MJCoZkYAAlozKWwn9mlaMd33eRBLRnYIULq4OdLHnseNb
 iaumR3zWGFS+S6UE0Zi37/bSGXzme3YapoRPkDtPrMDb9+MM55HNqARyt
 8dbZZr2utaTsEHs8FWOo/LO6PE0iQ1Pjkmzeyi14rJEqh0/YA3U6+gKch
 o+lT8srmP+/23chhJToRmjlWQmYVRid+ECohiTlLjvFU8sY9r1jiyW2Uy Q==;
X-CSE-ConnectionGUID: ialwgmL7Rbe0FOwQh7mzqw==
X-CSE-MsgGUID: Uhh9zqDzTHShUEWbLlT6OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="86638506"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="86638506"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:15:54 -0700
X-CSE-ConnectionGUID: qDHU54AXQBeHbNUhcooUvg==
X-CSE-MsgGUID: Gka30NZPRdevLwQui9lXvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="231213274"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:15:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:15:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:15:53 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:15:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D3ICyPkBQO9Okzk4v88MvOi0CeVrJv7hcMRXgyHjrJC3M+/TVIvKX6npbooNVRD4hkSY0rIL79Jupcs08kVb6wQ0/zAU83IANw0WVz3ZCv+Ch7LicoxmV0XqaecHokHrZGGsH5i6sZ6KJUJ8Udesrb/FYPLDgnvzQDoJXT2mU8GmEVvOr8UK6LGPLZ92jKbXQSTxK/VAAbqe6nS9srKz0wZcPKzL0yDRCeEewGcjWUzrAJYiAwqrIU3IwMnaq96sverp/kt3izKTQ7Newc9s4w00qra5LJGl2LwwObUxdLW1KQAfDswbTbj2sG4MEV3hpt+Cd582QJoemMGeqzNb3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xof2NCi8x+Rpn0y1N9Cqeo7pImBBXcbGXX2GP1zx+3M=;
 b=CE7jpSLM3mL4XXqMpx911vyTTwunDgBfCJgHUAi0gitIfdO60ihnaoqc+rsZot/PqqrQ4A06fqiD5FcP9CEeYhdFll8XGNqeai8v6K9EgWWInTq2qZ8OAZjdhXD+JkQhhtPrgo4LiW+wqZN0j4CTPAE+eQP9dtpRSOQuFgyn+JmAOhLXoLdXPqrN6IiKAGwqPxpcGqFcKWLyp38lpVQfcC70/GOasBerCi/jEZCHn+iujOOZKrfqTB/O2z4LNnKcPWGZOZWlMTzt5+Y4d7Ndn8+6vDq+xO04xgvl2Ps0keV2zDGoUDPGTWEp2Yh5LjV+Qz7dbtDpzyKZT8N1tcNozg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Tue, 31 Mar 2026 07:15:45 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%6]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 07:15:45 +0000
Message-ID: <eeddc80b-c4c5-4684-a044-dea3fa38ae4d@intel.com>
Date: Tue, 31 Mar 2026 12:45:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/26] drm/i915/writeback: Define encoder->get_hw_state
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-9-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-9-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0255.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f1::8) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW5PR11MB5931:EE_
X-MS-Office365-Filtering-Correlation-Id: cf7ba730-e76d-4c12-cee5-08de8ef55356
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: WLcs9CJSS3CvItR80xI7YaH4ZjSvtw8Yw35e6IiO68gCUiCT0R+bAA/wIu13FRADcwXYS0IAftLaAqFgHYxnw2qo+KlxWJFxAsg8jaey0ayTa/6ao6VC/PcXRDTFNm4j2/tanEVFJpl6ppq4gloMmufAxmZX8qPjV6JJAKZfRajYuBJ6mLjr1V+kXH2GFOYM7gEHNbPimjcjT0sPbtUONK5ALeXCVFEt1nKxyBGaJGQ7PTYueqHBLfQGH1Dh/WlUvPIAxdj3bg3lFSrXy9oOPlfx7wCWoTHV6Na9ybBs8HYijFSo3K+oG6lU2u5pLAdbgEPb44QcTU2KpsIVTa+ZR6kF5ri3eeSUBUYU+gYenPmhIiOhssin28Y+v77q2RMxPHQq8XaC2KAWTpLE5DQ/aCjWRam5HWNhuDi2fQ384td1+4XuLaeT+7uwu1/zNut/UUWDoY2KXp6ysGY21VLSnoZBh70rZh5SjTOlpgsPlUYikrMZbvmcPvUdQfXyGHzu+f26+W3os60ixftDvapCMSb6ElB8Zy1VQEOFcBx+9+KHkMyRXVQ6waor3vqJ1VCkieiD8FXEFNpuwdaZH/jrPWulhXQ2k9rbE2nVlrW3pFNdebiqdSgjfeilf5gAFtcPlNiOefHkv6/TK/2k1SaQYen20H9I0i+RmhgKpv8DupFrbK35coB1YCOIlbLNyoUQafCEbYNVRhHaVvVvKCa+WJq2gBoKvvpb9lZx1NCGyrQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZW5yTEFRUTlEbndYTVVCdFRpb0NJclozdzg3Szg4VFVtQ2djNG95MUVUZjlZ?=
 =?utf-8?B?QlgycU94ZWlCeEZmUzVuUVlJY1JyaXU2STIwRVlCNHZWanoxY3VHU0lEZlo5?=
 =?utf-8?B?Z3ZnVWlPeEFlVDVBaW1HSXc5WHdjTDVScmd5QUR2ZklYU0NLeHo4bmIyVjhS?=
 =?utf-8?B?Smt5K3hqWkZJbHFBandiSXB3Y3M2aVlFVWZLVmI3dHU2elF1MG9UTUtJN2Qv?=
 =?utf-8?B?WGY5WG5EeTZTV0RtMnIvYjg5TENvSHAwOVFRQ0xrUG91S2hJcHk4a2w4ZnBO?=
 =?utf-8?B?ZEgreDZWalBkajE1aDVyTDNIWnBGM3RMWVlpalU2UWx5aTVRZzBEcjFDNzlB?=
 =?utf-8?B?Q3dtUU9TZUV0WGdseXJ4RDR5OXVCd1hiM2JiQnduQi9NMTlDZmppaWs2Qmxq?=
 =?utf-8?B?Q2pxMW5pd3h2UGJBQlRGK01pK1lFaFJEaVk3d3VZZXZYT0dvbXpvR1REUU83?=
 =?utf-8?B?UEh4VHFTdnJCQ3J3TEk1VXZyRnNvWEZMS1RjbFp0Q2EzbkpTQzB2d3l3N3Fs?=
 =?utf-8?B?QnU2b3JscjRkSE9XV2JrN0RKL1paOTdzR1ZVVmxTbVJFVVFkb3RTN3RobXFK?=
 =?utf-8?B?djVDQ21JS1JGbEhMdEppbEhUUzVEYjBDUFBQTElqMHlKNDRHdGszR1U0UHNW?=
 =?utf-8?B?SFFFbjBMTGdNb3VTYjBNSm1PeFFzSlI3MkxYZHlOcUNjWnNvcmVISEJFc1JQ?=
 =?utf-8?B?RzF4V0FkSWZ0Mkg3SkJOaEVpYTdrcE5oYUQzN1dZY0E0ZTJDQXVRVElPUmxO?=
 =?utf-8?B?K2NMZnd6OHRQcTVaak1NQmRVaWFWYkpOY2tkTFIyS2F2Snd2YW5qcFNYSWxQ?=
 =?utf-8?B?TCtGWTJOOGpYUjJudzhIR1dibVlVby9zZlpraGl1NjRZRVlFTUhOWkpwNmFx?=
 =?utf-8?B?WENPMTNrNTNRMlV6Y1J3eGdnN2phcVJIbmdSRmVXOWgxcUFBSGRPc1hBejk3?=
 =?utf-8?B?UDJKN21Ob0diZmNjWW5HZ1lGb0VUTWVzdmNPMERzOGcwZW5sdVEzQm1DcUFQ?=
 =?utf-8?B?RElDVGIwenJrclhWU2dUenRrazhWdnJ3c2k2M2ljK2JOTjZpQ0IxblFDenhp?=
 =?utf-8?B?aG1PMytBOXFDOHlVc3dSTG1HbHdVOGdOZldDWkVoTEVQKzZxYzMwVE1SZFJm?=
 =?utf-8?B?SGR5MW4xSjJQOW0xRGtSajFlSnE0V29KekRURUMxMFdlN1VrM3k5SmlZQzRG?=
 =?utf-8?B?NitmM3lIeVk2U1FQL1lWQU0yZkdzVU9ZVWJPK2Y3Z2RrUkJVUjBsTno0SW91?=
 =?utf-8?B?UXVQbmFad3p4Wm43RDhCTEVnTFFyN3VQY2p1Z3ZLS0Q3bTVRSkNFSUk2NDNu?=
 =?utf-8?B?em1hMk0rQUVGNU1MMW9lWWNZNmVVblJ0OXMvWExHaWhWeCtaMC9MUnc0ZWVW?=
 =?utf-8?B?czZ5TVFwRDNiejdoOUVkazVmZDhKY0l1cmtUK3lSZjlwdUFoQXR3K2ZQVFpL?=
 =?utf-8?B?Tk82YkFhU0c5TEVZKy9FZzdod0RYWFI0VVBQYVVqQ1FtQVJ2Z2NkRStsRmw4?=
 =?utf-8?B?bUxvcGdUbVZJeGlMMStpYllhcnZlS0pBYmx2Y00xNVlHUWFKbitpQXkzWVR2?=
 =?utf-8?B?NlhIeHZYNXdTaExCa283ZjFzeU4xUGRFTzNMLzUwVWthay9YZnlQUFpHbHdK?=
 =?utf-8?B?WnRRc2V1ZjNCdSs0b1dxRGNzeGllTGh0WlVTa1ZtOEs0VTlTa3lmWE1ESUlE?=
 =?utf-8?B?enRHcWlkME50eEI4R2N4TXZYS0JjS1Mzd3c4ejVjSGg4Z05SUmtIUHU0S1Vt?=
 =?utf-8?B?L3hxS3NZbmNsTHNVZ2RVaUpDNW1NVEc0V2R4ckVqcjJyYlRpeTZEMU93c3Ay?=
 =?utf-8?B?VmRrV0hhc0VxdWd3L1NTdTczYkttb1BucVR4Y3JLUjlvKzFSbHVSMmZrcHJy?=
 =?utf-8?B?L1krUVFDM1l5bERqK1lCbW85aWFsWm1EOFNCK2IyVEFKaVlqTGFQUm84eXo0?=
 =?utf-8?B?QSsxa3R6ZlpjOHJ5TzlxT2I4LzQ0bGNINmplVDlxclMwR0JRaTdDeHJaVDZ0?=
 =?utf-8?B?ZW9pVjZJSko4cU5vYlJxZ0JkeXg2RDQ2RFRvN3ZiQURzT1A4ZUtjNzVOeDlK?=
 =?utf-8?B?SlBOQjFpRDc0QXN3RzkyNnA4eWV4eVEzeU9Xb1R3UmJ1K0tuUTRFTlRJZElS?=
 =?utf-8?B?a2VycUEyYUV2VncwM1ZJWXRlVFBGSEJiaDBpRmlzQjVIQVJGbUNSTkF4T01s?=
 =?utf-8?B?YUo0QjhRQTdYT0FQNEhZTStFbFhSM0dNNk5RUXFLVG1iNCt4VDJXeFJhRzhy?=
 =?utf-8?B?VjFWZ2RGeGUrbUlmL2VlM3ZiVFBVQkJ6eUw0blZMMHptejVMVzRRaTFva0t5?=
 =?utf-8?B?UFpSZEVCd0M2VWR5RVRhMS9ocnZqdGNMZGtrQklQdHg3Ky9OQXdUbTltcllz?=
 =?utf-8?Q?EMDr5NmTimgLvoiWD3Zz1RewK1Sbv1WQUTnnI?=
X-Exchange-RoutingPolicyChecked: wrVBazQZQ8tk6hHxNnPJZGWgDiC1HkXUQJBWoE/YX5aPBn/MCD9n71IlHQDmUltYuHR+VhiwaRTvSCx/sME70qcvigAxKphr6fQrPFAAc+SkK4+2hTCu0c6/0EcFZo0F6lPtQuSXVGRBg6HmxQkxU63/XHZdE4WNAlkAlTVn22+zZHgHSYQ7w90lbhM5Y2wSCTgkNQMHU4JIdqd6Zp320UV2uTDhtUGNwK14rC84xsosOHPVtzV3rEPnD0mkhWEdArafoHOZjb5sNBNXKWNE6thG2hqDETmdwFGo4bEeohU11QD5RxkL9bqor+gq2RXxUfKGu64HwLi0RsDKvUL1Qg==
X-MS-Exchange-CrossTenant-Network-Message-Id: cf7ba730-e76d-4c12-cee5-08de8ef55356
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:15:45.3481 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pVUMbA96I84YoXlSFzdr0VswVN1Hk9FSqGrrhEqWVYMFIRYAa3px+7E4RF8AQ0DHbAo4NpgYbb1xT/aTm1TLT0lin8iPzrcfdIvUUFOe7ac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 98F6D364ED5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Define the get_hw_state function for encoder which
> get's the encoder state, pipe config.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_writeback.c    | 49 +++++++++++++++++++
>   .../drm/i915/display/intel_writeback_reg.h    |  3 ++
>   2 files changed, 52 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 765f62fa38f8..64769609aefe 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -17,7 +17,9 @@
>   #include "intel_de.h"
>   #include "intel_display_driver.h"
>   #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>   #include "intel_writeback.h"
> +#include "intel_writeback_reg.h"
>   
>   struct intel_writeback_connector {
>   	struct intel_connector connector;
> @@ -98,6 +100,52 @@ static const struct drm_connector_helper_funcs conn_helper_funcs = {
>   	.mode_valid = intel_writeback_mode_valid,
>   };
>   
> +static bool
> +intel_writeback_get_hw_state(struct intel_encoder *encoder,
> +			     enum pipe *pipe)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	u8 pipe_mask = 0;
> +	u32 tmp;
> +
> +	/* TODO need to be done for both the wd transcoder */
> +	tmp = intel_de_read(display,
> +			    TRANSCONF_WD(TRANSCODER_WD_0));

intel_ddi_get_hw_state() seem to acquire a wakeref before accessing it's 
corresponding registers, do we need something similar here?

> +	if (!(tmp & WD_TRANS_ENABLE))
> +		return false;
> +
> +	tmp = intel_de_read(display,
> +			    WD_TRANS_FUNC_CTL(TRANSCODER_WD_0));
> +
> +	if (!(tmp & TRANS_WD_FUNC_ENABLE))
> +		return false;
> +
> +	switch (tmp & WD_INPUT_SELECT_MASK) {
> +	case WD_INPUT_PIPE_A:
> +		pipe_mask |= BIT(PIPE_A);
> +		break;
> +	case WD_INPUT_PIPE_B:
> +		pipe_mask |= BIT(PIPE_B);
> +		break;
> +	case WD_INPUT_PIPE_C:
> +		pipe_mask |= BIT(PIPE_C);
> +		break;
> +	case WD_INPUT_PIPE_D:
> +		pipe_mask |= BIT(PIPE_D);
> +		break;
> +	default:
> +		MISSING_CASE(tmp & WD_INPUT_SELECT_MASK);
> +		fallthrough;
> +	}
> +
> +	if (pipe_mask == 0)
> +		return false;
> +
> +	*pipe = ffs(pipe_mask) - 1;

As I understand, a WD transcoder can only be associated with a single 
pipe, assigning the pipe directly in the above switch case should do.

> +
> +	return true;
> +}
> +
>   int intel_writeback_init(struct intel_display *display)
>   {
>   	struct intel_encoder *encoder;
> @@ -122,6 +170,7 @@ int intel_writeback_init(struct intel_display *display)
>   	encoder->type = INTEL_OUTPUT_WRITEBACK;
>   	encoder->pipe_mask = ~0;
>   	encoder->cloneable = 0;
> +	encoder->get_hw_state = intel_writeback_get_hw_state;
>   
>   	connector = &writeback_conn->connector;
>   	ret = intel_writeback_connector_alloc(connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> index ffe302ef3dd9..5e7c6c99d191 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> @@ -19,6 +19,9 @@
>   /* Gen12 WD */
>   #define _MMIO_WD(tc, wd0, wd1)	_MMIO_TRANS((tc) - TRANSCODER_WD_0, wd0, wd1)
>   
> +#define TRANSCONF_WD(tc)	_MMIO_WD(tc,\
> +				PIPE_WD0_OFFSET,\
> +				PIPE_WD1_OFFSET)
>   #define WD_TRANS_ENABLE		REG_BIT(31)
>   #define WD_TRANS_STATE		REG_BIT(30)
>   

