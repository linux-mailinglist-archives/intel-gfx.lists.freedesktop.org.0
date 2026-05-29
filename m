Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C3rBkz/GWpO0ggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 23:04:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7160D608C5F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 23:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323B0112518;
	Fri, 29 May 2026 21:04:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G6Upe5I6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB0D112517;
 Fri, 29 May 2026 21:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780088646; x=1811624646;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=dPXgcJjbzn8PCrTXFvkjCXi6o1iELt4hk970ThtUsgs=;
 b=G6Upe5I6fn55+6BaDRZSPZ9V5TeS16On+ndD7fAZ/zq86rdHb0dPEz4z
 jaIT9JufMLWQL0wH7boafJNtgsVHT8aEnxc5+JBShH5dHlsi7L8KSaDMb
 sJUNWxO64+qWFjXHayBI2QhsfgCLIt/Spf/ucDSW1QY45GK93OH/znbeA
 MNIwwsSD4bThsHcssdipHEnQk5AfvSWU+P+V41m2z7sfv5BICNFs6LpMX
 uyxvPbn4bPHZD3iBpMU4UQnbGtcqBXSDZC0nAr3z+3KBr91F/WpDRBmTA
 nch76tQFVAm8W76csCeLqwDxOD2B4cHMrFjn+u02hFgJY2KwyUm1QK0cD g==;
X-CSE-ConnectionGUID: 0qKNAvc0SYqcOl/pmoJSeA==
X-CSE-MsgGUID: N5NjjsmiSDe3XMzzwYI84A==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="81061210"
X-IronPort-AV: E=Sophos;i="6.24,176,1774335600"; d="scan'208";a="81061210"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 14:04:05 -0700
X-CSE-ConnectionGUID: 1AtxbH9zTbC7SWGaOGpghA==
X-CSE-MsgGUID: NrweXdZdTOS2KhFowbTGDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,176,1774335600"; d="scan'208";a="242820726"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 14:04:05 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 14:04:04 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 14:04:04 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 14:04:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BDLnwBYyuRnXR7s++WHRNnV0P2EDvtRhrLW4Ckf3dcFTs73KYNg9Q0WRMjnph3xHRz1o5lMRZ9Wp/R8O0L5CaS3jH341vWlqXUDZHXq+JqcG5hd6Z2MFnNbY1Pcdc4sXz3+363j/EiKQrrBjKIP+4V0MWHPOLdsJ9CA1bK6xtcRRVGMhIt5vwbchCtJgTNL30lb9EsMEpNzIinunagTA8tUsuzHCKDcPoXwaImbkuJWSuuhzUzPPTgsjgT8QR8+27sGY5jb2onPOBzoNxXJlg1KGCOLbq5OQqFJo2pAVCQnEHd8xPjmFqDDJV7KYWzHojEL6RxRUaIGQs0LmBzIhpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0a6KLLpA33J0LLdE976BVA+BDV4NeNQi3wyl1nyIxUg=;
 b=QcBJn4AOi0sp3m7x3OHWhyeaSsyOZ7b3f/heyQox1oZERgXKleUmJVAg7MKJaorGJyJy18NA/d5/aYLPL7EQ8KSIt3AZOOWwsjZWKRaVt3eVU2XVLXprOwe+rY/W2FbLvmQ4cCEClUD+fWtbrH9IlpfAEfvWLUxT/thmSToQ8kD6HQBMMtOV/fpasfWm39QVcBQ7h3R4AW9UsPqvoeOymf5i67gxmKAvcldlQCkoYJN5tmP8arCkBBdv4aEcNNUzC8+emStrSajjJgbCH0ryp+jNawDjZZiLrf+O95Ti36dAxg0R2atzXgVHBxKNb4ZFX1GosYxbiIiaQIErQVWT9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Fri, 29 May
 2026 21:04:00 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 21:04:00 +0000
Date: Fri, 29 May 2026 17:03:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH] drm/xe/ggtt: use full-range drm_mm with reserved nodes
 on PF
Message-ID: <ahn_O3ZSTE2Th-tz@intel.com>
References: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
 <c5b06289-f353-47eb-a918-102288fac7e9@intel.com>
 <ahjBn2vYp5dppkYp@intel.com> <ahlvesSbbOdk47m3@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ahlvesSbbOdk47m3@intel.com>
X-ClientProxiedBy: SJ0P220CA0023.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::21) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|PH0PR11MB5160:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f6603b9-8de1-4f83-6d3f-08debdc5ce81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099006|4143699003|5023799004|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: Pie/hcFfFedWv3gdVO6kGDIcYYMWqA7qw7s+F3qymVUgxQ16d8Mz8bgRfcl1aS/RDKhmga0v/lXIcLSRBRiwj1lxmcmZ5BkFlvdZnhg4E+SE/yOgzUU33kbrfzegrHdzcyp4r6N28YBsCU7wV6s0qTIY7cR9J0V7xXxw8wfdgHVdGTg4jThhwP3QpQqUq4SWMQUB39Eyxg3ZewcPZU8TnQ/3HnuWOPv2uREwP6dw4EvAGEUml6qe/UzIXLk4oxFTzeBTg7qXaotY26/jgR4eAokYFHzL8F23mgjEYayW9gELAS9e6H90APUBVeTRiTc8WLPCjf+4BzMxN8btx9+ToDGurjh2/Feb6XThMyZqYdPAxkoCO633DlMh7e9Y7kWTwifP3dxcCZvNOV3tL9XFnmmlauFeygfiTi4BAOg/iI6mD+W7R4erJnheS/u0ITJ41KV9EBCqqnphFe7mX//YhhAKGbxlZ6MwHG+XIAr8rLera2+W53N32m/S2GLe+pC48hx/dDwomYvPo0CSuX5xpEt2m6wXHe5lWm1781wZAZbwC+Huahcteu1RXnakhYZC78hkt1VTocZ6WdUDoQd4SajLYBDK8zYc7v+2rvyqb/ImtfMK2jYOqS4qyGuvrG5y0NezWYnt61XJ8T969izs6/SV8UjSG+jWp2EsBhm1l1cLgqxaZDqbog8cLQ1/9hh+GO8JYU+9dukIV1s3LKx2yA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099006)(4143699003)(5023799004)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGNnVWRTbFZFN3pLckdzWE0yZjlRQUZUd3hVZHlyZlBxS0YxaE85dnVPSXpI?=
 =?utf-8?B?WXNXYUZBR085TXVzcVYzcllhYmFUVHo0NDE0Sjg0NnNwcnFKNTJNcUNHOC90?=
 =?utf-8?B?OWU5TjlEc3ZoMzFhRHBRY0JoSy80WSt5QW1Wd2FENndiWG4wU1F4YkQ5YnVz?=
 =?utf-8?B?QitTWVUzZVc5TkxhYW02NGFOQjV4cXJZWXNIRGZRTEVmZjVheG5hZmJIYy94?=
 =?utf-8?B?TjA5aDZ6TlBPcFlQYUhvRjRMK0g5aTAvSW5uQlNCOFB1K1QrNGlKTTJiOHB3?=
 =?utf-8?B?Q3pxTERDZ1dFL3piVDVnSzE3cGlMcEVwMC9nNG1hUzR3dlVBZHhnYXNsMTdJ?=
 =?utf-8?B?c1dBeksyR0VwVkJWWnlIN1VXUlg3SG1BMFo2dmpldjlEWHBkVkEwNmx6UGkr?=
 =?utf-8?B?cjhYeWNhSjVuNU9xSU5aR05IR2lCL2E3eS91K0tSTGR0eitrRnVUR2hSMEdD?=
 =?utf-8?B?WXBQN2hHSjI3Kys3aFVFbDFYa0hrUTA0aHRCaGFiWDRXUWxRNno2dzAwWFRL?=
 =?utf-8?B?VFd5clZKVStSYmN1cGwvRm1vZGZzNzZsR0cxMk5aclNERmw2QWpOaVdpY3R0?=
 =?utf-8?B?QmlUbHJka2xyQStscGlJWTVqWUlzY25LVkVYOTBtbHVsaHhGalZHN0lwZGtZ?=
 =?utf-8?B?Z1Bub2tnRXRYMzhlNUpEeHpNNUxjUGt5U0Q5ZXZ3VzhNVlV2bXhPWmp2UUVB?=
 =?utf-8?B?cHdWb2JkYmcxbnNYSWdpR0NLRldvOWRmMVZCVWdwcXlQRXpaUHBDR3RWczJE?=
 =?utf-8?B?MUJhdHQ4UTM3c0pyQ0tQNkE5b2lZSkxheXlJN0xYbFRocFBmNDlrU1c3ZTJo?=
 =?utf-8?B?bnNwWTlCdERhUTVjaUg5QVdZL3BJUWJTN01oZVJUY3VOSUVFTVpUOWIvVkl5?=
 =?utf-8?B?ckpaSlBETFRydTUzOGpmZzFPajZXazVoS2NMSWN4M1lPVm02TmVpRFc1SE9D?=
 =?utf-8?B?cjM2djlzdTRZSGp1SDRpMzJ6UnJsTDk2SUVLWWx4cXFZSmhhc1B2TjVkR0dM?=
 =?utf-8?B?RmtaN2NDUUtlbUFUSCtNSXhxMVBuS3V0SHRXRm8rNjBSMzRPSGRTaUdOUjN2?=
 =?utf-8?B?d3lGMEZQSUMxNURKUEZacjlheGtqdFh3dXQvd29LaWY3NC9TOXY1UC9HZFpU?=
 =?utf-8?B?c05Sd25udm5RMzlOOU5ESUt1eHpHMTd2S0xDdzhOenM5QVo5dU1XTTFSTVZD?=
 =?utf-8?B?QkpyS2xLc1lTM0V3ZDFNcmd1MnlLRXhzL0JYT3IrcGtxd2Y2QXBGNUtHN2cv?=
 =?utf-8?B?Y1c3anNFd1pLbll2czJPWUh3aldSNS9QaS9UTDVrK3pXMm5LUnFGN1hla2hs?=
 =?utf-8?B?Z3hoeVo0cmRJWTYwd3M4b0xrU1Vib1FIb0hxSnZvQmdENmZpSFJHZDZmdUc0?=
 =?utf-8?B?bDhIbC9jL1J2QmU0UkdlSFNLNnpycERWTTZiQjg5L29QRmxSenhEWVVjcktZ?=
 =?utf-8?B?Q2I1bEpoS0xxWElDNnRlOXJzb3RZR1N4YU43MEdYdnMxWEJldjZkdjBwVXNE?=
 =?utf-8?B?V2tqYnM5WmpWbG5SUmUxTjg0ZFdnVkFPSHlFOWR6c0pCNjgxUHhyMmNOQVpq?=
 =?utf-8?B?ZDkzK3NocENUdEduTTVwZldEZlhSL3JmVWJUeWQ3U1NDYWtORDRmdXlmYzN4?=
 =?utf-8?B?MGc4U0pLS3JyWEk3dUZrL3FZVHRNRDYrYkdEZDI2ZkhVaEROTThVTDlwUk1z?=
 =?utf-8?B?MmlWWjFEUDVUUDFMMlNNeSthWUdxU0ErMldDd2hPMU9XY09sZTdLYTNscVpr?=
 =?utf-8?B?ZXBRMDh2c3ZUYmpteklKUEVrT1RaYkN3dWdIcmgzclFZN3hHMExRalNKbEgy?=
 =?utf-8?B?NXFDVEpjMEM4MHFJckNSZnMrSUtNbDZRYUxuS2pSWG1XZTdqbDBEN0QzckFX?=
 =?utf-8?B?c0hyUWxRQmNvZ05iQXZnZG92VmNJRkdydk5QNzVqbU80cG90dXZ0OS90WTdw?=
 =?utf-8?B?anB2QkR2blRjMkdoa3R4QXBNd3pDZzBFMUxnUFJwZm55UXhqWmFuYjNOK2RV?=
 =?utf-8?B?NFF6eEErU1lnRGRKdjRHcngyTWZhYXZJUlMyWmU4U0FrSDNlMFVvdUZPMCtp?=
 =?utf-8?B?RjBnbEhBeS9taTNSYWhRNmFPVll5Z3ExMGF0OVZnMW5sVlN3RHNieTcrTVFW?=
 =?utf-8?B?NmNIOU1hbEtSWmRGT1hZZ3ROMERqR1htT3FXY1RLeFdTTWF2KzBWYTA4YmtV?=
 =?utf-8?B?MjZsUSt2TWxhNWFWSFdJNnRUVnBYamtHQU1zZHFyV1llbTZyM0NDby90REp4?=
 =?utf-8?B?WU1KY2dBQlRmWWtYZzJjaENpeEQzVzJKemRIRGhObFgwb1ZQZFJmT2FtNXl1?=
 =?utf-8?B?TysrOFFUa1orS0JYZWZtaGk0V0lLb3BVY2d0UWlWWUV4Yk5mY0krZz09?=
X-Exchange-RoutingPolicyChecked: K7bqwJin8rZzoWv4/rwtkHnxA+eJhTYdpdFVTvuvUlSG37SXS8MOqj/S2HBDukGtQpRAXWGN3N/ra2/SeweWgp5DaZURu4qmx3Glc4OP8ktoLk9Ogi3KLSPegILpswyLkUaD4NqTv5Y3+5VvhSQSRIasc2MBKxgSkLa3hM9/yWcqH8YvdwBFMxVdgk0f8gg7DwSzc+Is8c5Ww0LbTLGUlU669I7jWpG/PXzAdrNBMlRaYzPgFh/7HxML/QzJ7wH/fXv+HTJAFfyC/GvSFNT8XemnzxGk0xtkV5qf7ED8O/aYrPQMGk2vr8JjLkpR/95HzdseD0ZuX4bhTvp+gq/LRQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f6603b9-8de1-4f83-6d3f-08debdc5ce81
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 21:04:00.7300 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: USH2NRemw3MmZv/EECI1LP1tNUP+u1vTXtqkpd2Hz7VYiPW0MpXg33OomRvHI9iHFCNsDG7GiT5GwkuyedIjgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7160D608C5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 01:50:34PM +0300, Ville Syrjälä wrote:
> On Thu, May 28, 2026 at 06:28:47PM -0400, Rodrigo Vivi wrote:
> > On Fri, May 29, 2026 at 12:11:22AM +0200, Michal Wajdeczko wrote:
> > > 
> > > 
> > > On 5/27/2026 4:45 PM, Rodrigo Vivi wrote:
> > > > The PF GGTT allocator was initialised over a relative [0, usable_size)
> > > > range, with ggtt->start added on every address conversion to get the
> > > > actual hardware address.  Two consequences of that model were considered
> > > > "horrible hacks":
> > > > 
> > > >   - ggtt->start (the WOPCM offset) had to be carried around and added
> > > >     to every drm_mm result.
> > > 
> > > hmm, but this an internal detail of the xe_ggtt implementation, so why
> > > would someone else complain about it?
> > > 
> > > >   - The GUC_GGTT_TOP ceiling silently truncated the GGTT range instead
> > > 
> > > hmm, for the record, this GGTT cap on the top was added back in 2023
> > > 
> > > commit ab10e976fbda8349163ceee2ce99b2bfc97031b8
> > > Author: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > Date:   Wed Jun 14 10:47:54 2023 -0700
> > > 
> > >     drm/xe: limit GGTT size to GUC_GGTT_TOP
> > > 
> > > +        * The GuC address space is limited on both ends of the GGTT, because
> > > +        * the GuC shim HW redirects accesses to those addresses to other HW
> > > +        * areas instead of going through the GGTT. On the bottom end, the GuC
> > > +        * can't access offsets below the WOPCM size, while on the top side the
> > > +        * limit is fixed at GUC_GGTT_TOP. To keep things simple, instead of
> > > +        * checking each object to see if they are accessed by GuC or not, we
> > > +        * just exclude those areas from the allocator. Additionally, to
> > > +        * simplify the driver load, we use the maximum WOPCM size in this logic
> > > 
> > > >     of being made explicit, leaving PTEs in [GUC_GGTT_TOP, total_size)
> > > >     untouched during the initial clear.
> > > 
> > > and that likely will not be changed by this patch as after allocating 'two
> > > permanent zones', the drm_mm_for_each_hole will not iterate over them
> > 
> > right...
> > 
> > > 
> > > > 
> > > > Fix this for the PF case by initialising drm_mm over the full hardware
> > > > GGTT range [0, total_size) and permanently reserving the two forbidden
> > > > zones:
> > > > 
> > > >   - [0, wopcm)           — inaccessible below WOPCM
> > > >   - [GUC_GGTT_TOP, total_size) — inaccessible above GUC_GGTT_TOP
> > > 
> > > that looks odds: why pretend to claim manageability of full [0, 4GB)
> > > of the GGTT and then immediately permanently reserve two end zones to
> > > end up with real [wopcm, GUC_TOP) which is what we already have?
> > 
> > yes...
> > 
> > > 
> > > > 
> > > > A new mm_offset field (zero for PF) carries the base offset used in
> > > > address conversions, unifying the existing VF relative model (where
> > > > mm_offset == vf_base) with the new PF absolute model.
> > > 
> > > but public xe_ggtt API already uses absolute addressing in PF and VF
> > 
> > I know...
> > 
> > > 
> > > >  The public
> > > > xe_ggtt_start() / xe_ggtt_size() API continues to return the usable
> > > > [wopcm, GUC_GGTT_TOP) boundaries, so callers such as the SR-IOV PF
> > > > config code are unaffected.
> > > > 
> > > > xe_ggtt_shift_nodes() now updates both ggtt->start and ggtt->mm_offset
> > > > so the VF recovery path remains a single O(1) WRITE_ONCE pair.
> > > 
> > > maybe it's just me - but I can't figure out the real rationale for this
> > > patch - what did I miss?
> > 
> > This series:
> > https://lore.kernel.org/intel-xe/20260511214122.8468-1-ville.syrjala@linux.intel.com/
> > 
> > And more specifically the discussion in this patch:
> > https://lore.kernel.org/intel-xe/20260511214122.8468-13-ville.syrjala@linux.intel.com/
> > 
> > > 
> > > > 
> > > > Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Assisted-by: GitHub-Copilot:claude-sonnet-4.6
> > > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/xe/xe_ggtt.c | 123 ++++++++++++++++++++++++++++-------
> > > >  1 file changed, 101 insertions(+), 22 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> > > > index a351c578b170..00a6cd2b8a51 100644
> > > > --- a/drivers/gpu/drm/xe/xe_ggtt.c
> > > > +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> > > > @@ -137,6 +137,17 @@ struct xe_ggtt {
> > > >  	const struct xe_ggtt_pt_ops *pt_ops;
> > > >  	/** @mm: The memory manager used to manage individual GGTT allocations */
> > > >  	struct drm_mm mm;
> > > > +	/**
> > > > +	 * @mm_offset: base offset added to drm_mm node addresses to obtain hardware
> > > > +	 * GGTT addresses. For PF this is 0 (drm_mm uses absolute hardware addresses).
> > > > +	 * For VF this equals @start (drm_mm uses relative addresses from VF base).
> > > > +	 * Updated atomically by xe_ggtt_shift_nodes() during VF recovery.
> > > > +	 */
> > > > +	u64 mm_offset;
> > > > +	/** @reserved_bottom: permanently reserved [0, WOPCM) drm_mm node for PF */
> > > > +	struct drm_mm_node reserved_bottom;
> > > > +	/** @reserved_top: permanently reserved [GUC_GGTT_TOP, total) drm_mm node for PF */
> > > > +	struct drm_mm_node reserved_top;
> > > 
> > > maybe all we need is to separate concepts of:
> > > 
> > > * raw GGTT - fixed range [0, 4GB)
> > > 
> > > from
> > > 
> > > * allocable GGTT - configurable sub-range [start, end)
> > >   * [wopcm, GUC_TOP) on PF
> > >   * [base, base+size) on VF
> > > 
> > > and then we can continue to use drm_mm.init(0, end-start) to manage
> > > that [start, end) range in a common way on both PF and VF?
> > 
> > we need to be able to use a ggtt buffer that comes out of this range,
> > so I'm afraid it doesn't solve all the cases.
> 
> Basically what the display needs is:
> 1. specify where in ggtt the buffer was originally placed by the GOP,
>    this may be partially or fully inside these GuC reserved ranges
> 2. bind the buffer to some acceptable location (assuming the original
>    location wasn't acceptable) without overwriting the PTEs for the
>    original location
> 
> I suppose this could be achieved even with this "mm doesn't cover the
> ends" hack, but step 1 there becomes a bit dodgy because we can't
> insert the mm node if it's fully outside the mm. I suppose it could 
> still work if you hide it in a function that only validates the real
> ggtt offsets, but then ignores the fact that the node can't be
> inserted due to being fully inside those reserved ranges. And then
> whatever cleans up that original mm node must also ignore the fact
> that the node maybe wasn't even allocated. And also
> xe_ggtt_initial_clear() will need special code to clear the
> reserved ranges.

right, so basically we could keep the xe_ggtt as is and provide
2 hooks:

1. one to reserve the portion of the BIOS FB that goes
inside our managed ggtt area
2. a special clear for this area

And in between you do the rebind with existing infrastructure
to an empty region?! Is this what you are thinking now?

> 
> My original idea was that we'd just include the reserved regions
> in the mm, and then the display could just keep the buffer at its
> original location, and later the guc code can reserve what is
> left over. So we could skip step 2 above completely. But after
> a second thought we probably don't want to skip that step because
> we might free the display bo later, at which point we might free
> up some of the reserved ranges. So I guess we'd still want to keep
> step 2. But I think it'd still result in less special cases in the
> code. We'd just need the guc code to reserve what it needs, after
> the display code has rebound the bo to an acceptable location.
> 
> So we'd end up with:
> 1. insert node for the bo's original ggtt location
> 2. rebind the display bo to an acceptable ggtt location
> 3. undo step 1
> 4. xe_ggtt_initial_clear() (now also clears the reserved ranges
>    without any special code)
> 5. guc steals the reserved ranges explicitly
> 
> So only two special cases left really, and all the rest
> of the code is blissfully unaware of any of it.
> 
> Hmm, although hibernation might still be a slight issue for
> xe_ggtt_initial_clear(). As in how would the reserved regions
> get cleared during resume from hibernation? I have no idea 
> how the current xe ggtt code handles resume at all...

The resume should only restore the pinned bo's one by one, nothing
special. So I guess if we keep the original code we are okay,
but if we start to managing the full range with the reserved areas
we might have some difficulties here on the way...

> 
> -- 
> Ville Syrjälä
> Intel
