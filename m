Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDt5DjXvp2mWlwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 09:37:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A103C1FCB43
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 09:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 366AC10E971;
	Wed,  4 Mar 2026 08:37:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4GfyNBz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CDD310E971;
 Wed,  4 Mar 2026 08:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772613426; x=1804149426;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=52UToR/Wtqy5BBzYFXPx1DBvQ8s/3Yl9xu4wH2BOBh8=;
 b=b4GfyNBz6/ITev/q437ox2uMKA77qNjPxPrAGbvkPvWA0zrrMiQYjhUg
 N2bQc6LT1p2SpR9IH6RPp3P079p2tyduVEeAs3n0Qvqu2hVIkoUG6Vx8z
 sBV9j8bEC06Q/nvXU85npm7+bRHSKD3wP0vIud4aqghiumZv6icGTpXe4
 ycbJOHJzhUfvTK6aanxq/zAqZOMdqZNmPn9luHNnNHb57kouO5xU254id
 /fhdBJfyuX5DhVZ2n8xT1v1FsQtmB9V9AR8VYiskoHAWbe86xT3I6YpPX
 yXqGfEuV5L2GydDDLXaCM1Fa+kisw+S/Js3wUCdEiNBIEtcPJytmr5bJB w==;
X-CSE-ConnectionGUID: hENZrHizR8ap38131WhyEw==
X-CSE-MsgGUID: wEkO2UBBQ5a71tG3RNZp5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73736036"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73736036"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 00:37:06 -0800
X-CSE-ConnectionGUID: Eu8deSQFTwiPBIPjy/nNtw==
X-CSE-MsgGUID: HM2xDpXJTwmzh93cE1sJmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="223269253"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 00:37:06 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 00:37:05 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 00:37:05 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 00:37:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YMjdjjtlZdFguQa3odMBjaCJEjIrdP4pAYh9y2jaoDhxqz1iMysxefB/9IVkFimcitCI+po0S03mfd34+DFtXJZNRPgwhORzOHWIGlSblHWpq/oc2lk2Q0oNgiNU6MmGmGn7M3RnrD8kmrFM6Cx6CmhuBRehUPvvqGKUR04QaHG1lZ5crRqNLRjRQG9IfV5XjNHUaeCm2l5F7ublJkEBJtUto6v/bD9HVxU+APsi1aQDAraKV972M1oAZqEj/jYZTkzemQhoSPryEplv+QjLpPE1zOeE6yucdcQ12adI5IStDzL59dACgNtHQ3PD8zYoy/Qp9Hr1MFy3ur/6R/cFWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yanAGSlTnjdaD0/kI9TkyyIngMDgXqIVfAq4wcqpwP4=;
 b=C7VyzCsWLnOwdOWaQ3rZmht9mYdizCbOEIhvmlBJMruHvyQz/Yf/F3RSnRI1Yxy8DqcsT4kAIWaWstvcFQOUR3rd3ai20jcpGDTnpXkdfhU36ryyJCIdbfHYziKewUbWcl8sEsyxDTisGqP7wWci3PqDK1/F4U6BnaS4WUQVHCrecu5rKNBSFh00b0FfUbz+khu1bcOBD4fLFBYFoj3q/xVvtKADSPFhOA1Ol34Ked6ghNrM/nCCNzYiqGppSB4gfzZ1nOP0npFteoUzvxJPgZ4lTm5iIi+1j9c3WKNuPDOoewIDA3NajlXpQBpIiDbJ23JMQB+eMNyhB79z8NT73Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6755.namprd11.prod.outlook.com (2603:10b6:510:1ca::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 08:37:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 08:37:01 +0000
Message-ID: <5bb046c8-b154-4fc3-a119-e7c2a41b4c6b@intel.com>
Date: Wed, 4 Mar 2026 14:06:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] drm/i915/dsc: Add helper for writing DSC Selective
 Update ET parameters
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260303125409.503148-1-jouni.hogander@intel.com>
 <20260303125409.503148-4-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260303125409.503148-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0015.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::30) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6755:EE_
X-MS-Office365-Filtering-Correlation-Id: 76eaf8ad-d5b9-4c2d-23e3-08de79c93469
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: iyRnlNsKjk47kbd8esfoVGtipVYznKVh6xRe2sJ6Kd8D9KXe7rjrKShzimKo6Np3fglkI/Axz7rBsLDIk1DbyeGRo/MPVCb/oEH4sEcWNwIJJHdewpYXTvciqAQHCrqn0nVDix+1Whh3kHImsQ2NFhSJ6Lx2tW5TY+t60CBl8z3hhgogP4+6v8HwK3Uv/Yka9uJF+PwgfHhPhhds7F1ykdGuMoKM2XDSHcm+1K5Z1MlWA403NWeggL0IT/QP4AupRUuvBkBan2pcfeU9MUUj/RYuXcokQcwBqgSkfTx3RJ3qBI8fiqJoboTVyWfw6nAK/h6XtyiO5zxq0UDTKqRmrn7Vp3zKrRr/CLGbQfrF9VY4YBxm1unMzs/uB3haoSDMxtnDVbO1l3iCgNN676rzJWkKQOhOgeGWpKw9Ak3zRMeb/qjkSIvRyEYJlsXE8mDIdPWF8LgM6NprlvIrUeolzNyIgRuXJC36y0oFvLMKjhjrnUkZygaeNc7MqRPIU6mmeeZo5iYJUw19qEZLwUc/6Fq1SGQ4Ekg6Ls3/oAojgFzO1ODZqzNxU8oJ8Ohh7OteybSdRBdm610rfgigORXYCffMG2SjubA8g0IuhkzIcPRqhhYzU2s3ovobWK1K8y2FiI8XgYUwLWAPGkbiDJvddXu5Q5kF/JoszjoD92RzL8YLu3jCSb3p17RR/KzHjrEC7k6hSy7/wwgqS0Lahg1J5N7B9HKpGV9ez66LV+uHghM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHY3eWt4MG0vV2s3bmkzWnhhc2F4Q0Q2VFlwQTdNVmJSWjFzaTJiWi9UM1BS?=
 =?utf-8?B?N2VJUlE3RThXZ3RHb3E5S0F5YU5ZelAyVVBkSExKN1dZTll2Y3FOOUVDS20w?=
 =?utf-8?B?RFpQTGNMNThObkpPR3BxTUhHWmRKNUlHYkxlRkVYcUo1SlV5S2t6R2k4dVNR?=
 =?utf-8?B?QWVTLzRGdVdaYy8vSzdvN25zOUJ3ckVJbWhFNnkrWFliKzVXTWk3c2xGcWxz?=
 =?utf-8?B?ejZ3U3RFWGpkSGNVSERkYWM1MFNwdEtUM1NTSnhXNWtsdXhPOGozLzhncWlH?=
 =?utf-8?B?cGpPSDV1TkRYWUhIZFhtamY1Nll4b3VLNzJjZWtVL3Z2bjJQTmJuZ1dLeWpF?=
 =?utf-8?B?a0RhNHhPVGNmTHRyQTNXYUpQUjN1N1BRMyt0U0tHZkFZOXUvSEpISFNlMjBP?=
 =?utf-8?B?VnplZDgxaWFLZ0tnUGNaSEZOdXVLQkhPSmphenMreVVtZDNldXpXYis2M3dz?=
 =?utf-8?B?UmlTMmFoTmZwb09RTHVKQWxiU0xvamdnWVZSOVVObG95RUxYNW8yRXdtZDdB?=
 =?utf-8?B?ZVBkV3pPcWJrM0k1cGdYYUpYUFVUb1Q4VXZaQ0xua2U2VVQrK0Q1Nk0weldh?=
 =?utf-8?B?TGxaeml3cWI2SEs3SHZJVjZSc2pkWXgzc0ZsZkpSR21XYysvMzIwUEdrbk9L?=
 =?utf-8?B?Qk1IbFpEUVV4RnJxcW0xNC93c2dlcHNQMmRETzltM3dJamMrdGtHMXJ1VUc2?=
 =?utf-8?B?aFlCcGo2V2xxZmt0UDFIZ2xLZm9iTCtMZzh1KzJXTEliUlBIbXJaS3A5aHhj?=
 =?utf-8?B?NDJkR1dOaVlYSEZHZXQ3cDhtVjlPUGdkV3pzdE5zK0lMamlQUlVzeVA1LzJk?=
 =?utf-8?B?WEZtcnFVT3RPcDNWNjgvWXBwREJWYWR3RVduYWRGYXFUNmhvMWw4VFluTkxV?=
 =?utf-8?B?dUJjOFcvSm50TEhEV0E0b1Z4OHN5b29Pbm1QMm9lWGhvVGw1aVg5akpGTHpC?=
 =?utf-8?B?UGpLaVN2d1IyMCtNdlNhOVFCL3pPV016ME04UnBPVDUzcFBEb0cyNFVqNmlm?=
 =?utf-8?B?SHQxaWtxd24zYWtBZVd3aHIvV2VTcU0rbW1ZQjlrZXFJZUFpemprNWdlMy9i?=
 =?utf-8?B?RC9CbTVZZTR3aEpNRUFsYXhDQ292U0RwY05Bemw1WkVzL3FCZkJ6eTZHOGpn?=
 =?utf-8?B?WU52U29IeGFFaVZLRzU2Nk5Cd1owK2laVmRsU2RXY3dodWRpd0VnSWxRajAz?=
 =?utf-8?B?Ym5NbHB3YXRkd216UHJvY2tLLzNHaWRNWStockVjSitlbFdMSFFXclNJK1Zm?=
 =?utf-8?B?bGZkaHpDaFNOekk2OVpnM0ltc1MrVFdVNm9YbHVhdXB0ZHNNMTdDdnRka2pG?=
 =?utf-8?B?VmF1aC9CU2NBQWZVL0VkTEkwd2xFbzhZR2VTSjNQK1R1UWZmUVIwc2NMRHph?=
 =?utf-8?B?NE9iNTg4elUyYWdXcU0zL2hGOC90dTZrU21RMUt4bm5FWldlTURkaklIMXZm?=
 =?utf-8?B?UUtwMjRmZ3FOaEV1S3FjaHlnQ2FIeThTUmMxejRqNDFKUmxsa3ljNFVSTlk1?=
 =?utf-8?B?RUxwWXFCb0lxczJMdHJPdzJOWDEzOXB4VHNVMW5oVERyNFF3Y3phOEgxRTAr?=
 =?utf-8?B?dVkzUWVnLzlpTmlLVnlUb3RiQ0w5a3g5MHlCZXFGNExUMENyQktTd2ZpY0Jk?=
 =?utf-8?B?YldjOHZSYlZBNEJnd2pzb2FlUEl4SWZLMEZQUWVsSHNNSEhST0FLNXBrV05V?=
 =?utf-8?B?aE43ck5ROHdxVXo2ZDNMcEtRZVlYS0xMYm9mZ0Z2cU9kYWVBdEpYM1Z3Zmp5?=
 =?utf-8?B?cENkL0haSG1jenlkSk1tdWpBaDB0Smpya0JkSkRCSSs0QlFYcDI4bkx0RXFK?=
 =?utf-8?B?TzQvOVBuTk9KRzBxam9ReEtYOGllZThmOGZBVDlMVXdSMGxYQmRnRTQ5K3Bz?=
 =?utf-8?B?TjJxcytpdnV6VmQveHgrcFNqTlQzRS9CbXAzbExlYi9GamlBbE5FRnlYblYv?=
 =?utf-8?B?MUs5OWkrOHlnTkRPQU8vYi9kRlY3akdReituRUhrbmlSakhOT3ZBQUY0U1Bj?=
 =?utf-8?B?Vys4V0ZMa241OGxVTkcwQ291MlFubkluZGRVMEMxN0RKKzB6SC9VamdrWDFY?=
 =?utf-8?B?aEl2ajNqSkRrOE1NbmpwYlZBYXNzRWZ3KzdnMUtnK2RmTU9uSUxDaGo1ZzV5?=
 =?utf-8?B?eW8ydk5aYlNUb3VCMHRBUGVvZWpobmpUZmV3ZmxwcjFSK0dwdGFxWVNWUXBu?=
 =?utf-8?B?SGFNMzg2VFpBWWFHUDVpUlZ4bW5vZG5WVjY0b1JkNDdRZUZMaTVKcEVleEFL?=
 =?utf-8?B?M2psbUg5TXBIbWhsNE1UVDZxVFJBM0w1Slo4MnJOTGlRSlNZSUIvRXRYVDYx?=
 =?utf-8?B?VStlSWk1dFEyN3RtV3AreVlHS0JsUWhwVVRHSHBXNGg2aFNjbnZyYlg1ZEhS?=
 =?utf-8?Q?y3dxdnvKopAHdu8I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76eaf8ad-d5b9-4c2d-23e3-08de79c93469
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 08:37:01.0994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nAca6uNK4R/54+dA/4WX/nhgEdDSAXVTxuCelwWM7PWFFPi5/k4K0cfFZABZFc7mWSIhzSuoMGZT6nDyYYnZsOnHmjeTxXLlurqJcClLFlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6755
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
X-Rspamd-Queue-Id: A103C1FCB43
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 3/3/2026 6:24 PM, Jouni Högander wrote:
> There are slice row per frame and pic height configuration in DSC Selective
> Update Parameter Set 1 register. Add helper for configuring these.
>
> Bspec: 71709
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 22 ++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vdsc.h |  3 +++
>   2 files changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 7e53201b3cb1..ae3af3c2e41a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -820,6 +820,28 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
>   				  sizeof(dp_dsc_pps_sdp));
>   }
>   
> +void intel_dsc_su_et_parameters_configure(struct intel_dsb *dsb, struct intel_encoder *encoder,
> +					  const struct intel_crtc_state *crtc_state, int su_lines)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	enum pipe pipe = crtc->pipe;
> +	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	int slice_row_per_frame = su_lines / vdsc_cfg->slice_height;
> +	u32 val;
> +
> +	drm_WARN_ON_ONCE(display->drm, su_lines % vdsc_cfg->slice_height);
> +
> +	val = DSC_SUPS0_SU_SLICE_ROW_PER_FRAME(slice_row_per_frame);
> +	val |= DSC_SUPS0_SU_PIC_HEIGHT(su_lines);
> +
> +	intel_de_write_dsb(display, dsb, LNL_DSC0_SU_PARAMETER_SET_0(pipe), val);
> +
> +	if (vdsc_instances_per_pipe > 1)
> +		intel_de_write_dsb(display, dsb, LNL_DSC1_SU_PARAMETER_SET_0(pipe), val);

Currently 3 DSC engines per pipe is only supported on BMG, which doesn't 
have eDP, so vdsc_instances_per_pipe would never be 3 for now.

Furthermore we do not support these registers for BMG AFAICS.

However later some platform may have 3 VDSC engines and who knows may 
need the Selective Update ET configuration for DSC.

Since we do not have those registers defined, lets make this condition 
specifically check for `vdsc_instances_per_pipe == 1`

We can have perhaps have WARN_ON if vdsc_instances_per_pipe > 2, at the 
start, as we do not expect the SU ET configuration for 3rd VDSC engine yet.


Regards,

Ankit


> +}
> +
>   static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>   {
>   	return is_pipe_dsc(crtc, cpu_transcoder) ?
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index f4d5b37293cf..3372f8694054 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -14,6 +14,7 @@ enum transcoder;
>   struct intel_crtc;
>   struct intel_crtc_state;
>   struct intel_display;
> +struct intel_dsb;
>   struct intel_dsc_slice_config;
>   struct intel_encoder;
>   
> @@ -37,6 +38,8 @@ void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state);
>   void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
>   			    const struct intel_crtc_state *crtc_state);
> +void intel_dsc_su_et_parameters_configure(struct intel_dsb *dsb, struct intel_encoder *encoder,
> +					  const struct intel_crtc_state *crtc_state, int su_lines);
>   void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>   			   const struct intel_crtc_state *crtc_state);
>   int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
