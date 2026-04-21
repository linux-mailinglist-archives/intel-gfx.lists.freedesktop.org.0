Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOf9OJZW52nz6gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 12:51:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C43439C1F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 12:51:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C9710EC00;
	Tue, 21 Apr 2026 10:51:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OXZrJOki";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE58710EC00;
 Tue, 21 Apr 2026 10:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776768658; x=1808304658;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Mv2ySe8XGg613gp8ioq2hSNn2YowsBJbA3uuITcbsz8=;
 b=OXZrJOkiPF4/fH+MSCjf+1T4U37+4pJ2GFCPAK6DiVML23I244o3r8ia
 WTuOr57a2+TMmIRS6UqBdb8CvQVgJjf6CAU8Sowtzn6cct1oPiU8lvz5t
 wPaPrOxERZ5uKb3rFvAuu3506lTV1Tq27Hrk2JexMkywc6WkOtY5EeZql
 VGJK/tdBbmcF5Z/p8h5q2m23tYSk73U7cEzAmqg2ne5zZpnEPxqJA/eJE
 I3fB2FK8cNYQkosgRp1AwGLFDGM8iXH6GM455u/uKk04rZB5vglEK6eQV
 zfKnaraNSb4+kvMDGoSdjKQg65YvKw+2R+yz2TuKqWO3dBA/6xmVGJIy6 A==;
X-CSE-ConnectionGUID: aAw7a1kPRP6TtNh9pmZdQg==
X-CSE-MsgGUID: nJPOQGK+TNGtBPtotjOJRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="89079164"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="89079164"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 03:50:58 -0700
X-CSE-ConnectionGUID: XiuqYYeXQfqMiAXppNVPpw==
X-CSE-MsgGUID: kW3ChoRcSdmAb1nz25qknw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="231112441"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 03:50:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 03:50:57 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 21 Apr 2026 03:50:57 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.24) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 03:50:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gthy+tCUyywX5kicZox9Y76QbMnKY9eBhgPjG4Ri5OajIrjs4MJLxsWRKAa+dh4p5bQwnANJxGXnm5+vzz4YhTJ/1f09oXw5mSG6AOhhxqCeZVUHzMe8jDVR8uvy6r2y43TlQ2MmXup3ehUr1ZKtlC/bJKLNyrSW7tSPQCN5h64GEj6usOlyUic6Ku2lkAo3EKI5hoWWjBs8axmVz8CN2DUVCKPh8P4Lp25eK8Oke49Ypq7hUVXm5LkqaTITfhmoozlm7wliv83wSjHOEjwv/hOkNgFu9tYszXYbGuXkJD4ZCceYFclWhPfWRvOm4rUw/oDgzhpRdeCTKIPqtSjjPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwXVQb1PgwM6Bd1lkB5zMoBuyw+ht6DJHux+RDJKz80=;
 b=XsnxRxF3stEsX5bs/xMsXAhRf2SaEslOJwjGZIH+LZe8k/M6pr2cFEa9kjCLT6zluCvaIzWiXH/+5iVsSvmaVXed8W227/28yZpRfppBE3TXh/tIbmKFILY1pFOkSQW7sMyxAOp+6+vfLxd57ThTN6+YEoh/VCjrsF/fd528OOtP1wEmKLmJBDYHy3HkRztIQDWWeMjawto5rBeCaN7D23Tlk0Q4Q++GhpmNJq9wl4jQnn27gZ5t6d85RQw3EjJR5PsVeytIkUkVx3slA2uHfbSM/lYEfBKR7zCy489toR23NYq0DxVt2HSyrvcSTdjcGUYzQ6otBp0uxPIZ0yWeDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB9827.namprd11.prod.outlook.com (2603:10b6:806:4d8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Tue, 21 Apr
 2026 10:50:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9846.016; Tue, 21 Apr 2026
 10:50:55 +0000
Message-ID: <badcf396-5d48-41f1-b949-36aebcd840fc@intel.com>
Date: Tue, 21 Apr 2026 16:20:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Decode DSC max delta bpp from sink DPCD
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20260420112611.1481530-1-nemesa.garg@intel.com>
 <20260420112611.1481530-3-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260420112611.1481530-3-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0189.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB9827:EE_
X-MS-Office365-Filtering-Correlation-Id: ff4a0a7f-93db-430a-db3b-08de9f93dc91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: eobzbZKbw2+KuGk4+a+lDF7AVALJ86/c1wA0kFog378rmaoMWQw3O7tFL2AjhrBw5h6qzoegHQvkyohXmIkSYM+hY0KRimJ1LU5ANHabmhyJ+O+TMGO4Oo0cG3wxQFF3WqTXeMH4/wEtPItf1j/XnZFdqEY/dIAPQuNBTJ+TvZhc4kgmmUNkV5AuuDET6XOYCwbkF7UgyCR8GhIYnn3m7mpfw3au1kHeNayLlZlOQgXDmAXZ5Tr3L8cmZxPIbGLA4PX0NCRVoY8SWNxGEecdOXofwXH/TC1Ykr1HCjeYwBEX59B5xHgDk6yJSlxlbVFPxSZFnCl3fRBFqT+pejCWrsYvgc8ZHJjDrSlOMz/tTQo0goLuKvJDXufh6KO235Q67R7JJ5ss/iHpvAJBejQkSfE97xSUhlIP1qlBf2F52WkcPjSFfPgycHrv/MJnzZTIYjCemRQj2RYU5JBhaO4OCuJzQA6yAI4tn9Qx69O9TzawnlpTHHbZiDvkHVIa9EWREzIdvBbSvBDr4vUDarCyg4iPfWpu/a4uLabQEpM4PcaxAYYlKSN0Xl2pLqc/Gy+DuX9GY55Xt9mT0+w2AqwNnde1r0aTNqwl9xg9lq39/baspWESDVcuKNrAzeeNH5xw5XJyTAUuGO5/Cokl4GT7i/9Sj+/YreE+BXs9ZLxG+rfqwKumFr1kY1TpvOhIzeuTKqRoGC1Ws6amLciEMjzjTsK0PmBiBbXQC1aJVnVHtF4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFdHdWlacXdEdm9xbzhmNkYvUlRKbnNYZWNjbEZOdDRWQjI4MDhYT1ZLV215?=
 =?utf-8?B?dGdJN3VCZWo0L2wvNTBEbis4dFQzbVVRY2w5L2tGS0VaNFpuY0djQjEvUE5n?=
 =?utf-8?B?YWJnVmg2MlJMTGdRVVdzak5yOTljYzR1NnBhTVNCN1lNZWllcWp5TEVCdkxo?=
 =?utf-8?B?MVg1MzJ6VXdSaFI4cEh3Ui8wWVEwOGZvUldBZDRFdE5RcUNxUFd2ZzdqS0FI?=
 =?utf-8?B?NWNpM1lMempXZkdtb3B0ZWFIVERhOHcwS1RHYU5xbkIyL1ErMVdoZ1BvSVM0?=
 =?utf-8?B?b2o0MTlpS0prTGtqMk9SRXQ0NTB1cTZUOEZPTlhmWmgzcEZSUGE5ejBGTFlP?=
 =?utf-8?B?T3N6QVZBdm9SVGNXTlh1M1QxcDh1QkcrNUw0QUZoTStYRTE1eER6TU5lM3pY?=
 =?utf-8?B?c1dGSVFVdnQraGJpZ1NrR2NWdDAyQ2dnMXpXU0xNbkh3dnJ1K1NDS2h6TlR2?=
 =?utf-8?B?RWEwaklGVHYyNVMrZ2haVGU5TjRSUFdreWlPZVZDT2pQb3RCL2hpcTBKMEd2?=
 =?utf-8?B?ZFlXcyt1SU1GN2hrL1l3ZWRxdXJhTmJvcVB1eG1FZTIxQlI4bHhPMEtXQnl2?=
 =?utf-8?B?SXpkbEt3MWhOVUNoVkNiZjVMTmNnakFTSGJNSTMydEJCTTVPS3R6QXZVNGNz?=
 =?utf-8?B?QmZDVmYxaXF5QkYzaVNuY1lRZlN0YTkybTRYT3M2REw5RDdZWHJXTXFNaHNn?=
 =?utf-8?B?UmNkRDA1Q2ZpRll3OE5xeXk0UW1WQWhnUGlKOEpRSHFIM3VqZ2J3N3FUWlBy?=
 =?utf-8?B?NE9VQ0xsMm5YaXdwaDY3S1p6WWlYRkxJY1d1QnROSklzM1NuZkU2SVF1bW55?=
 =?utf-8?B?NU5PMTgrckFZVnRPbXRvVlhyQVFwVDJSRDNVbmVsMW9oSXNDTThEU1hKOHBH?=
 =?utf-8?B?alBDQjMwZzgyZmZrM0dQUDRicWtJUDM1N2MxL2FXaTFLblFUZ0JOT1BOYXN0?=
 =?utf-8?B?TFVEUGQyRytSaHhwcVl1VDcrWEg4WVZVUk54Nnp3SnlWMENReEVFSjZ3bjR2?=
 =?utf-8?B?QU43VXJ1djNCUDBtbytzb3dwek5wVTBqUmpkZnpaVHF0aFVieVBrbXJySHJo?=
 =?utf-8?B?RHY4dmMxby9XWC9CcFBGZmlsVDZxYkZLR0MycFBxQ1JjMndzNW4xdS9yd2Jr?=
 =?utf-8?B?MEZxclp0akMrcEpZVS9yRVQ4RTVCVzZaV0hjdkJhK1AxSm5raHZmU3pJeFN3?=
 =?utf-8?B?ZW1KNVNWVTVwMldYS1R2d0VXQVZ4SXNYV3hKVGNHMWhSZTZSKzZJbDd0OHky?=
 =?utf-8?B?NWVXOXJTSUdpR0dvaXkrbW1PV2IvSjA0M3VJcC9JRlRCTmNPTmRUTkJnYndC?=
 =?utf-8?B?enZzU1VUMUVRVHM5N01YY3FWVDM3WWRXVmxpY1A3Q0ZZSjArODl1TE9CTFhr?=
 =?utf-8?B?bzBHbVRSaEU2eGVuNkRrMS92NVNZWml5YjRnMm1sMWQ3TXVtc1BNNjBjT2pm?=
 =?utf-8?B?UXc3SFNrRFBRR0d2NkUwbUF2cS9FRnQrNHJGcDBycGNzTXJUMkRPMTk3MllE?=
 =?utf-8?B?cndLNXlWZkg4WkE2T1htbzRMbHA0amsrS1gwRGlpSVhrU2Q0WWtVM1hhcFc4?=
 =?utf-8?B?alo2TGFHc1l1cTdsYTZFaS9qa1h0RFJFWWVYd2pJblFnK2FYSU9jTEhlRnps?=
 =?utf-8?B?UTk5VnUxcitUdjZlQ2Fva3d3ZWpDUnhiQVJDL2ZGTkVESnZPeG1RNnE1NGlB?=
 =?utf-8?B?WUF5b3BxZ0JscTIwUk1mZDMza2pReHNaeEQxZUZYaXVGanozdzNpZzc5QjZy?=
 =?utf-8?B?L0lsM2FOSWtCZWpyWGZlamluTjVlaW5BRk1VSGZMY3RhMUlNMVNON2dic2s2?=
 =?utf-8?B?eE00MFVnUW5ha3IzSll4OFMvMFhqamc3WTM0MWhDSmxlNUtXU29oZmJMVVBo?=
 =?utf-8?B?SnBEbkNnWEo5ZndiR3hVY3NYM0pZajVjaXg5Ny90U0JRRE5rbm0wVXB1QXJR?=
 =?utf-8?B?c0dheDNwcU5GZTBnYXFaaDVINHZHTldkNUFlRmZybnM2YTVoMEpBbk9GNTJ2?=
 =?utf-8?B?UEpsUnd1M3FCUTRlMXE1Q3hzQWxGQ0dZRnVOY3BrbDVwZURvN1NjMVpQVW91?=
 =?utf-8?B?ZXM4UzBGY3g0TzJFd3BXOGxCM0RDM0EyMk1LMDVIMVZCRFNEVEVVMjFjazlS?=
 =?utf-8?B?Ti9IaktYKy9SbUkzWmR0K044SWcyL1AwOTRtTHZDbWs0a2VyNVVaNHJFb252?=
 =?utf-8?B?U0lOUkM1akg3ZEhIRG8wTEx2eDBxQlF1UHpwcERPSk5IQ3VOVjNQa1NuaFJF?=
 =?utf-8?B?MnJNZ05vOWNINVJvcnY2dEoxYVJaNUcza3pYTVhBUXVkSVFTeGVjNG9EQTV6?=
 =?utf-8?B?UERWcFd1MEp0cHNJL3NZdUR2bkZCUGFzUTNSOWJzdlRhYTFVZnFneHg1eTNT?=
 =?utf-8?Q?B5LtOrQ9+1M5Mxn8=3D?=
X-Exchange-RoutingPolicyChecked: vVU8cpML3GcZWy92FAnaWwm7hURTsrcpx4bnUWdJNMSu4axqpFyfUXz3Lf2iJjszFnynJVB1CGiMVS5z03ZvZPBEjKmWgfI0h4dMltKMb/MtJbyKc0APSkHSra0oJv0u26L+Gf8vLkAZmSdnbWlO9sg5eYwYWcS48nOX8OfE5URDAUIc3B5hEEZ6U+fBN6bCaZAHabPd8D6iXR93nO2+G7vm7WGErTSe3LroJHop/Va5KXJaKS2/uvSD3vZFam25kKfZ3ow6O0iFDVfc4PIf2/HHLz4B5qtJxe92eR31oot7slIFrZboBirI6ftGnLn9+70DJMX9SIlYqp1mfQUSaQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: ff4a0a7f-93db-430a-db3b-08de9f93dc91
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 10:50:55.7523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NcuNArbEK3hV27HaxardDFwaN68RbWcACrei6xLVgMWc/TKpan66UcmWLYaBcogfTqrnAKcNaNJCMBPXGcM4+w154XVisoW5JEu0qUCgOMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9827
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 30C43439C1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/20/2026 4:56 PM, Nemesa Garg wrote:
> Add intel_dp_dsc_max_delta_bppx16() to parse sink DSC max
> delta bpp from DPCD when DP_DSC_MAX_BPP_DELTA_AVAILABILITY
> is set. The helper decodes RGB/YCbCr444 delta range and
> YCbCr420 delta range from DP_DSC_MAX_BPP_DELTA.


Looking from the spec, i think we need to check this support first, so 
overall to get the maximum compressed bpp supported for an output format:

Step 1: check if format specific range is given, if given use that for 
getting the max compressed bpp based on the output format. (DPCD 0x6E-6F)

Step 2: if above is not present, check for the maximum compressed bpp 
supported by sink and use that. (DPCD 0x67-68)

Step 3: if both of the above are not there, then go with the mandatory 
supported range given in the Table 2-157.


>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 40 +++++++++++++++++++++++++
>   1 file changed, 40 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 35b8fb5740aa..7cc760aedd59 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2169,6 +2169,41 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
>   	return -EINVAL;
>   }
>   
> +static u16 intel_dp_dsc_max_delta_bppx16(const struct intel_connector *connector,
> +					 enum intel_output_format output_format)
> +{
> +	const u8 *dsc_dpcd = connector->dp.dsc_dpcd;
> +
> +	if (dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SUPPORT] &
> +	    DP_DSC_MAX_BPP_DELTA_AVAILABILITY) {


I think we can return early from here.


> +		int max_bpp_delta = 0;

Perhaps just use max_bpp.


> +
> +		switch (output_format) {
> +		case INTEL_OUTPUT_FORMAT_RGB:
> +		case INTEL_OUTPUT_FORMAT_YCBCR444:
> +			max_bpp_delta = dsc_dpcd[DP_DSC_MAX_BPP_DELTA - DP_DSC_SUPPORT] &

This can be kept in a variable to avoid computing samething again:

u8 max_bpp_delta_v1 = dsc_dpcd[DP_DSC_MAX_BPP_DELTA  - DP_DSC_SUPPORT];


> +				DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK;
> +			if (max_bpp_delta >= 1 && max_bpp_delta <= 21)
> +				max_bpp_delta =  max_bpp_delta + MIN_DSC_BPP_DELTA_444 - 1;
> +			break;
> +		case INTEL_OUTPUT_FORMAT_YCBCR420:
> +			max_bpp_delta = (dsc_dpcd[DP_DSC_MAX_BPP_DELTA - DP_DSC_SUPPORT] &
> +					DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK) >>
> +					BPP_DELTA_SHIFT_420;
> +			if (max_bpp_delta >= 1 && max_bpp_delta <= 7)
> +				max_bpp_delta = max_bpp_delta + MIN_DSC_BPP_DELTA_420 - 1;
> +			break;
> +		default:
> +			MISSING_CASE(output_format);
> +			return 0;
> +		}
> +
> +		return max_bpp_delta << 4;
> +	}
> +
> +	return 0;
> +}
> +
>   static
>   u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
>   					    enum intel_output_format output_format,
> @@ -2176,6 +2211,11 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
>   {
>   	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
>   
> +	if (max_bppx16)
> +		return max_bppx16;
> +
> +	max_bppx16 = intel_dp_dsc_max_delta_bppx16(connector, output_format);


As mentioned, read this first, then fallback to the 
drm_edp_dsc_sink_output_bpp() and at last fall back to the table.

Also need to update the comment below.


Regards,

Ankit

> +
>   	if (max_bppx16)
>   		return max_bppx16;
>   	/*
