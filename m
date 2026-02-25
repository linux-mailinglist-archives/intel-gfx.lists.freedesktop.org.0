Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GC5WE6QHn2neYgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:31:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 907ED198C36
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:30:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5DB10E780;
	Wed, 25 Feb 2026 14:30:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIxVuZRB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8075210E769;
 Wed, 25 Feb 2026 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772029853; x=1803565853;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vk8I7QwjPpnq5PJTYbovhw8CFh60K6JgQr2nhtkq6y8=;
 b=IIxVuZRBk5/A/h6z/XoIRYsBKzMiSuv2EpyzQzUT1qdDd08/JUeBvBmj
 IRlachNYmwyHswolrxIVFFf5fhSlOPHq0JYcuoowMHLYyoD2G/QrNMvGV
 mkbvMmE2kJl0e1MftfAaTZ5Q4O4WphxvIbmYyyXtsJhlypTEDZDIoig9P
 6lmSIW1/I4SioQXpvhNZK2dblTboEAj+2pyUG8so2XSnb9AseyAgUStbY
 htixg+nPwQCGmjEzMjgltVtNyTVBLWAXW8ZVA607/KwlHqOxV3d6B1iRk
 lGDouCxRh9Zl+XDULaamCakxTitFQY7+aDK+jpYzc7ti5KTO7Mn2unhmm Q==;
X-CSE-ConnectionGUID: NcjdbUwQQaOB+5D4p4tRyg==
X-CSE-MsgGUID: aaHHMqKuR5ywdB/oTvmaIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73138251"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73138251"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:30:40 -0800
X-CSE-ConnectionGUID: A2nUlSYORcS3WRY/M6gAFQ==
X-CSE-MsgGUID: QXkKMnacQTW3WuqG1L494Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="215350313"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:30:41 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 06:30:40 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 06:30:40 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.15) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 06:30:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wNe/C0FQwxqLuZGx7wBAFniS0dDOAUVs8N/0sX1E3Eubv2PmSWDi2iTgqLSg9lUz8RAI5EDZ2yacXYSGLOx2a2NzfaqGwdACjSdG/vDp/7iF1WbD5KDRrMUvmEgGPatJc5G/DxwOuD2un/M0KRUFhmhyXL3BZawU2KG74p05pRD0C+I23BZ1x+GbtvORxgN385hpAkjYC/8T2igJZ8RRwb7+xZJHpoXx8lly7rdcYHGUV8s+WefC+BcZ5aXyushY2MXKc90a/QVDyw74cKIhYaUelWeYQgXItg2kZl+EaR9CxHl3AUa11VgTymC/TtFfnGfVZTU7Y4+N56eCA96JlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OltMc3g8U5oyibPkig7KUL2drdcm59sL3+8ulEdg79c=;
 b=eDizHidTSrc/y68Igbr+2ibpxW6aRHxZ30TsGq2F+Y7RkwTfWntWpzDzQ8/01785B1OQbzIn7uIXMwfh70m9ApWnU9ea29Q8rHaU6bmXtHWir8dG5/Ks3rhypfOIGf8jezohg/bdL4rCYVbGvx/iIDrhFUEQbIqLRqLQCIXwTUqmjRM6J3B2/qbEcHCf4PFiwfc2o90tVsZ2UlWY/ICTmB2Yj7cw1vaUY1JAuWGoiPhWFsuQEOZUa1HbXOJxYKpGYdmsq53uROlMf7B1VDBnB4outyMhmQb3GCiK1P1LMgYxKw/CE6SqrWhNm/feQSXu4EUwN4ifm7XIG3RR90PTzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BY1PR11MB7982.namprd11.prod.outlook.com (2603:10b6:a03:530::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 14:30:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 14:30:37 +0000
Message-ID: <12410d9c-b7f7-4a7a-83fe-626eaa68ae10@intel.com>
Date: Wed, 25 Feb 2026 20:00:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/i915/psr: DSC configuration for Early Transport
To: Jani Nikula <jani.nikula@linux.intel.com>, =?UTF-8?Q?Jouni_H=C3=B6gander?=
 <jouni.hogander@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
 <20260219130743.1232188-5-jouni.hogander@intel.com>
 <528b9b9c-920d-4146-a4f7-97db356e7f28@intel.com>
 <62858fcc175b123862a5071265a65210428e3bc5@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <62858fcc175b123862a5071265a65210428e3bc5@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0111.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BY1PR11MB7982:EE_
X-MS-Office365-Filtering-Correlation-Id: c47dce19-6ca9-4711-2047-08de747a713b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 7JgFfBtohad35To00fSmC/yCPZ65t1n3IBALElOL3Hq+FQg4xR+xtkiKlEAs6yx1mqhP2PsfjT/wq5j+ByV0VPvc8xHpOHl5FUB3RrGN9Iz8GMh3EmEhtdJG8Anrn8HB1GvEmeQQ07i9U5Tq+VxmAoW8UcXUa/p1cBl0AQUl1/ZBZU+yeHoByjvOf3FQ5vJHSVa9dnoj4Cz8Ho6i1q8wVh2skfHO0Wmc3+tuaSl6Onm4o3YmAUNNYBJ2oUtsWLydsnTeFdP6dIrUehdMITChhDVXpLeHT8UvKoEnjnPgk3J/NgjIRqZ61zvebKteYVtDDLDlla1EXHAHHpcvNE2e+bmhCtp95GkTKCQdr5Jl/98CbiWFu7X93Ck9Atit+TsD6zQeM9XXE7mwQ0wYxLGLJGbdD4w7BVjrLz4evQ8IlDW0M++d3bNsDXYd1U5C00CU2l8HQY+mknrOUjfAUwEAJjfQ3gvwaDNSLFnAxlXaqRlOGddUOMVolLlXFbZrMDJJcjjKPUVgioQ0y+50tuIrnPmKBHGBBNaYHUNm5uLWF4EzmN8Y4Z3d6P4GtIziXk2wd1L5aKVksgnt/KpE4XMdyboxYzso+mZTCDiKG2r1+WQouKucah928J3Ft2QE6TIOFdqffQ0/dRGw6iFT440Bcq/EVoUrybVWnklUmTItSR9j1fBaJbLWX4RpEmdfn5aZtuVWPqTzEIggGLBCf20gFLk+VKkRIJFirmvn111nOm0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFE1YnZQclMwTDhXZ2xMUHpBVENEY1g1NEFQQXUrdW1aVy84NDhDSGdiZ2dC?=
 =?utf-8?B?K3FmYTh3SVlDUXkwcCsrSUtSWmxBeHhxRk01UVlZTkpORXNBYlJVR0xlQ3By?=
 =?utf-8?B?YjJDcUxSSFJVTzBZZGxkbFdWZk9ldDQwbkljTnFFQlJackhpTkhENWF4TEM3?=
 =?utf-8?B?Sm9oMTIxSHZyN0pjVnBPTVNoc1ZNMUVaMDlJMEJuQUVBNkQzZUJ4TldCUUpK?=
 =?utf-8?B?NDh5TmtMQmNXYzhtVjI2WVZYZG1iSEdOU1ZxV09uZDg1NVpsQ253bzUwQ2Zx?=
 =?utf-8?B?UjY1b2JHSHpBRlVlQTZKbVFndVAwWmpVMnplWXA5NDNZOEZleWkyNTBwQm53?=
 =?utf-8?B?S0ZHdjZjSlhqbFhzRjY4NUdhY1M3Z0xvZTdBamllRytWUjh2S25MLzU0cEJZ?=
 =?utf-8?B?SW14Vlo4TDFPa1FtWVJtRGlWQk4vUmFRSHFYcWp3eGJBTC9BOG5JK3Z4UGlk?=
 =?utf-8?B?VVM5NCtLME1JRVZ3Mkw5Tlk3Tk1wQjVFdkFDcklsWDJpVEhET2JjbHZPNG8w?=
 =?utf-8?B?cXFOQXhsaVJJaFA1eUtrTk9keFowWFZSSWVqUUtJK3EwYTZ2THNvb2JpVmNk?=
 =?utf-8?B?YUFSYUlCa0dHVzhmWGMrUFFzWTBYcVpxMEJNcTliRmxvTnZvUjJGTjNFdVF2?=
 =?utf-8?B?Ymh5Z2wyN3hIZnFuVG9sVmYyMGQ4a1YvZXdXWUVvY2owWlRxUVBTOHBXT0Rx?=
 =?utf-8?B?RFJuUUZxR2VjT29PNTZINXBlWnZnUDZOMWJUMHhJVXNjbkRucCtjQVpaRFYx?=
 =?utf-8?B?clRQYjdYUEhoQWp2QTRuS09UMEtIbnZKNHZxZ3d1WXVQSEtnVjdJYlM1YmtQ?=
 =?utf-8?B?K00veUgvWUppTmhQLzNhSXkycEZlbWVwaFg4aGVJelBZZlg5d1pUanBkOGd0?=
 =?utf-8?B?OVVMTlZuaGNxekhOQnpPWjhidmplcXFQdllSQzJicGoyU1NkcmdvK3ViTzdF?=
 =?utf-8?B?YSt1UnRKaFgxS0VhNFVZUFY3MThTV1hCdkE0SDNqeXp5L0x1MzQyLzg5bW84?=
 =?utf-8?B?RXNxYXlGOTV6WXh6eFRzQ21NVVgwVmFweFpyU1dzRlM5QXJKT0dsSUNTTnpq?=
 =?utf-8?B?VHNkUlRuQzJFZmZtd1hmSFN0NDhJNmZSRXlCQVZ5dHlVL1hWUTFnTkZtWldN?=
 =?utf-8?B?K2o5Z21VVGs3TXk4N0UwcFFiV3lXdzNMQU1KNWlvQ0Q0dS96NFk5dzBIbVpP?=
 =?utf-8?B?SlhLQUNod3lpSUdKUEFoSy8xdEV5akNnc2h0aVlPNW16MEV0NkFKTml6NENB?=
 =?utf-8?B?dlVNWlNTVnJqTGI2dzNpcmVDaFBlNXRmZDBIbkx0NFgvMW5Fckdad1pHMGd5?=
 =?utf-8?B?dytuU1hWelFHU3gxQmxSSWxnOCt5QUlkU2svUlBTZmo2SzY0QVVzR3AvNk9S?=
 =?utf-8?B?b1ZDbENtYjlkblFqSWdieVlNUExEMlROYit2aS92ejlTUG5LdWkyRkt2cGk4?=
 =?utf-8?B?dnovYUFtMjZyMkh4SENRb0pkTmRQeEZlL3FDc2ZHdU4yb3ptOFlCVGhVMlE5?=
 =?utf-8?B?ME5aSjI1NkpXRnp6bTZBNjRGSnBWMTdWZ0E4M3dzVVh3WDBrSG9uSWpXcnVv?=
 =?utf-8?B?VXlURGkyTzJSTitPYUpHakxxWUtCb2dFODUxZFFHbXBVdk8rNE9Ib3V6ekdB?=
 =?utf-8?B?UVNObFFTV0ZJYVI5TXpjd3lzMndKN2paa2o0c2pldFBHSXlKaEZNVGxlQXNV?=
 =?utf-8?B?UjJJQkNEUlZ1SDgrVGp3OXQ3RTI5RjdCeWNJcVRTNGxPc1dYTjBJaGVNS1hn?=
 =?utf-8?B?SDBFWWdkb0VkNVNnMEZCTFYxc0V4Uis1Qjc2Sm40UnhnWnUrOFNzVXhHRzE0?=
 =?utf-8?B?NVZKYzJ0T2R2Zk1zTWY1ZEZQMHIvK3IweTdXcFRjOTlrY2psVUI3QkpVN0NM?=
 =?utf-8?B?V2NQRUllQ3I4UjVkaVMzVWZqdjFFNjdPMHlhM1h6UWhObG9tWTNPb2VEMjNB?=
 =?utf-8?B?aVM3eFNIMjRtTDQrVjBkY0R5RG9LQWs5THUrOGxQcmVoOUFYSis0b08xMnFl?=
 =?utf-8?B?dUNFWGFnR1Z5VXI5dElIajNmWDhYV3BEQUNmZzlNQ1REdnFCaFNMQUcwMlRv?=
 =?utf-8?B?UFNxL2J4a0dIYmhmQTc5enliWEdIb2tjQVNBSnZMTFdJS2xYS0dVcVl2b1Ni?=
 =?utf-8?B?VURaT1BFenZua0N0WXNDY2RWd0pOekNTMC9TajF6NW9RdTVOK1VlaTFlQjhL?=
 =?utf-8?B?KzZzQTE5WkR0TnQrTXZMejRkdndHQ0libVFOdWVWZmFzSUp5OG1QVmZ6dGZ5?=
 =?utf-8?B?VFU1b1RxQnptUW5pU2VOSU95L2g3RDY5V2FURHZrVC9TaHIveXV3YWVhb3Na?=
 =?utf-8?B?N2pYZHZ0dnk1TXNWTzBWNS9rMkRDQnBHTmFveTFiRUlnVnhLRnFEWFhoZ05m?=
 =?utf-8?Q?dWaqR4ArNuUTRyWo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c47dce19-6ca9-4711-2047-08de747a713b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 14:30:37.1002 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +GS0/9y605mQCcctDxvfO0FpkQl/SHb1Gz/45KOH5/p/dQfGg0nsFhGzhaIOfNC0x/cXEHDqxMdqxmLFc51cpwwFc2TsFQLi7gvFTFakYgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7982
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 907ED198C36
X-Rspamd-Action: no action


On 2/25/2026 6:59 PM, Jani Nikula wrote:
> On Wed, 25 Feb 2026, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 2/19/2026 6:37 PM, Jouni Högander wrote:
>>> There is Selective Update slice row per frame and picture height
>>> configurations needed on DSC when using Selective Update Early
>>> Transport. Calculate and configure these when using Early Transport.
>>>
>>> Bspec: 68927
>>> Fixes: 467e4e061c44 ("drm/i915/psr: Enable psr2 early transport as possible")
>>> Cc: <stable@vger.kernel.org> # v6.9+
>>
>> This patch needs the other patch where registers are defined. I am not
>> sure if stable will only pick this patch or will try to find out the
>> dependency patch.
>>
>> We need to check if there is a way to tell the dependency patch/commit
>> to stable, so that both patches are applied together.
>>
>> If we want this change to get ported to older kernels, we might need to
>> squash the register definition patch with this patch.
> Nope. Neither we nor stable want dependencies squashed. They'll happily
> pick up extra dependency commits if needed, though.
>
> Someone(tm) just needs to let them know about the dependencies when they
> send the mail about (the presumably failed) backport attempt.

Got it :) thanks Jani.

Regards,

Ankit

>
> BR,
> Jani.
>
>
>>
>>> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>>> ---
>>>    .../drm/i915/display/intel_display_types.h    |  1 +
>>>    drivers/gpu/drm/i915/display/intel_psr.c      | 24 +++++++++++++++++++
>>>    2 files changed, 25 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index e8e4af03a6a6..8903804c04b1 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -1381,6 +1381,7 @@ struct intel_crtc_state {
>>>    	u32 psr2_man_track_ctl;
>>>    
>>>    	u32 pipe_srcsz_early_tpt;
>>> +	u32 dsc_su_parameter_set_0_calc;
>> I think let's just have a bool parameter something like
>> psr_su_update_dsc_pps.
>>
>> We can set this bool variable during intel_psr2_sel_fetch_update()
>>
>>
>>>    
>>>    	struct drm_rect psr2_su_area;
>>>    
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>> index 331645a2c9f6..0a2948ec308d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -2618,6 +2618,11 @@ void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
>>>    
>>>    	intel_de_write_dsb(display, dsb, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
>>>    			   crtc_state->pipe_srcsz_early_tpt);
>>> +	intel_de_write_dsb(display, dsb, DSC_SU_PARAMETER_SET_0_DSC0(crtc->pipe),
>>> +			   crtc_state->dsc_su_parameter_set_0_calc);
>>> +	if (intel_dsc_get_vdsc_per_pipe(crtc_state) > 1)
>>> +		intel_de_write_dsb(display, dsb, DSC_SU_PARAMETER_SET_0_DSC1(crtc->pipe),
>>> +				   crtc_state->dsc_su_parameter_set_0_calc);
>>>    }
>>>    
>>>    static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>>> @@ -2668,6 +2673,23 @@ static u32 psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
>>>    	return PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1);
>>>    }
>>>    
>>> +static u32 psr2_dsc_su_parameter_set_0_calc(struct intel_crtc_state *crtc_state,
>>> +					    bool full_update)
>>> +{
>>> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>>> +	int slice_row_per_frame, pic_height;
>>> +
>>> +	if (!crtc_state->enable_psr2_su_region_et || full_update ||
>>> +	    !crtc_state->dsc.compression_enable)
>>> +		return 0;
>>> +
>> Although we are making sure that height of the psr2_su_area is a
>> multiple of the slice_height, perhaps it would be good to have a
>> drm_WARN here to flag any misconfiguration i.e. if height is not a
>> multiple of slice_height.
>>
>>
>>> +	slice_row_per_frame = drm_rect_height(&crtc_state->psr2_su_area) / vdsc_cfg->slice_height;
>>> +	pic_height = slice_row_per_frame * vdsc_cfg->slice_height;
>>> +
>>> +	return DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME(slice_row_per_frame) |
>>> +		DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT(pic_height);
>>> +}
>> Since this writes a DSC register belonging to PPS Set 0, this function
>> should be moved to intel_vdsc.c.
>>
>> Also, based on the boolean flag (psr_su_update_dsc_pps) discussed above,
>> this function should simply retrieve the required fields from crtc_state
>> and program the register.
>>
>> Such a helper function should then be called from
>> intel_psr2_program_trans_man_trk_ctl() in place of the direct
>> intel_reg_write() call.
>>
>> IMO, all register reads/writes, along with the wrappers/helpers around
>> them, should live in the file corresponding to the block that owns those
>> registers, based on context.
>>
>>
>> Regards,
>>
>> Ankit
>>
>>> +
>>>    static void clip_area_update(struct drm_rect *overlap_damage_area,
>>>    			     struct drm_rect *damage_area,
>>>    			     struct drm_rect *pipe_src)
>>> @@ -3026,6 +3048,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    	psr2_man_trk_ctl_calc(crtc_state, full_update);
>>>    	crtc_state->pipe_srcsz_early_tpt =
>>>    		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
>>> +	crtc_state->dsc_su_parameter_set_0_calc = psr2_dsc_su_parameter_set_0_calc(crtc_state,
>>> +										   full_update);
>>>    	return 0;
>>>    }
>>>    
