Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CE1B1DFA4
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EBEC10E023;
	Thu,  7 Aug 2025 23:01:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G7WpmEyx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CBE710E023
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607716; x=1786143716;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=vP+64G7QPacGi9xVghNn/VkVXPIkRN19wd4VV32kUYk=;
 b=G7WpmEyxW6CWt4a8Vv37Fu9rwQRANgpcdqyMEMilCBmBer82gotcwolP
 qMnQpIDPdk0hVUO8+6+SVLULY4jX5dYZAJ1EMuGwqhyRMEzsJjDeaSAkB
 CUNedRuQA2FZyTwNsMSU6meMF5dGzqBxseFaqadmddsRBXCpSgube+Suk
 PEv+MrnfnGzaSHXJp0Ko5zFjpS6PDNLHf51S8fkXGn7zR6aheeDchJAod
 KBpaUU/+M3Bgm0rcjUAwIZKZopaMp0S/g1JBZilLVzFz3w4jjOKhdHmhD
 +8jFXrdptQ4FRK7TmhqH1D1L/Tb75jd/kzmAGA2Q6ykLJFzLaRWacAmOb A==;
X-CSE-ConnectionGUID: OGkCMbWFSHWwbw9omBOHrg==
X-CSE-MsgGUID: bhn4nqZpRm2c2gPIUS3rBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="79510211"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="79510211"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:01:56 -0700
X-CSE-ConnectionGUID: 0M9bsN+DTY6ffgcqhQPgMA==
X-CSE-MsgGUID: rcrkdRHyQ6+IpJTb3uUCTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="164406532"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:01:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:01:55 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:01:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 16:01:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nmtx+dEr1U9tWaJN3f2JpTSe7xUI097qDV+mq1gkLxDMX7lypTFomkd6T82FB85L7QmOGVjjRAWyZ3JkECzBg8Vd66IDYIgTMJqLYNjOmyMtD7W7uj+1X4p01eBnEQySLXvfJLiYGSLQie5hFzBr+WJDoTkYKw1By8Fh/Qe9+Cz/DnwpQvcwXehoFjsdA/dzHS5OVRYfSFk3q/qglqRN6+oEeFHdVmrZMwznEXlUqMYzMzck8YAF0kT4DZSAAw2WUqvymo8X3SN9jwovE067TA9wDrMNJJD/wBRLfXgDhrnpn9x54OBnW0I/xgM0QpAAQmmnD3Fp2HMx28G9gKYpOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CDJ4XYKCL2J4FMjtsn4pLA2nLS325I4nuSGtlXHRUJs=;
 b=WFacGhcT0g/F3t6PxO1Y7LlI9i08YjcHBbTGczC7XFa57doPVHqqWfe6pwmltZzth0K231HL8M0q+ncSkyd5w9zG6tvyzmzikd7kzgM3PcYl0Chwe2M5NfWWphTdkx/5/IJ2LqWTfGUTYwE5idxY0GM+9pyxTd6tgAicaYHPuY6CFOZ0MEvOs6Vj5MjIVom98G5XpzLlG0pm2sq4LKcoeCJ6/uWl1wrjRvsGLQJQI6WAd9+zU72nBpm1g4/amLkAt+Ll8r1fsyM28gmvmb+eIJUPnt9Mo4cJKBloOsu2S0xS8bZrfREmKl1yckIygS1Kt2qr5Jvju29ok92RSa31iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DS7PR11MB6221.namprd11.prod.outlook.com (2603:10b6:8:9a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 23:01:51 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:01:51 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 0/9] For CI only
Date: Thu, 7 Aug 2025 19:01:44 -0400
Message-ID: <20250807230146.128362-11-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::19) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DS7PR11MB6221:EE_
X-MS-Office365-Filtering-Correlation-Id: bc4569d9-a8d9-4f08-c7c5-08ddd60664ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V2pneW1tMnhvV0s5aExqeXRlZjdGc1YxRGR6M204SC8rVmJBMUhieERxRjdw?=
 =?utf-8?B?Z3JtUTJrQXNtQnYvRDh3MVlyUjJsTWpDVUJDYk4vc2w1by9DZXViRDFYOVNK?=
 =?utf-8?B?Ni8wTlloVzZaeGhtYTQ5WHVtN3kvZ05zdXZmdG56RnFYWERDaXVwbnkzc0xO?=
 =?utf-8?B?REdrMHRTMUtRMFFuT0VPVGUzY0t4N0xwVGRackgxMWg1a3d5VlZDdDNPQmZT?=
 =?utf-8?B?b1c3Q2RHNmFNSG1zQXowcVAxbFdGcWRlYkkyaDhjZStaVzI2cytGdUNPVFA0?=
 =?utf-8?B?b1RzelZJUXVmeW4rZmo5bGpDcU1xQ3FrTG01UXRFcEljWEM1TEdCekRTTU9r?=
 =?utf-8?B?eFpjQ3Y1dG1PTEhMR1NXQm5ubjdsNTVBTDRLY096Y3hENGkxOGxCMDkzZVNU?=
 =?utf-8?B?T1J5YUhSNStYNEp2S3BPc3lHb2hOMVZpQmQrNHlSUkxsMmlnbkh5aWlBNlpy?=
 =?utf-8?B?NHhqRHMzb0ZCTWI4aml2enhRM3lmalRtN3Z3cVZlNmFnU0dxYldhRmxLcklq?=
 =?utf-8?B?M2d4NUYrRmdhZHhOSTU2ejlNdHZTKzdYbHNtYTdMQlRxV2xpOE5qa2FmZG9K?=
 =?utf-8?B?ZS9NT25QNjJyNkhoNWYrakhXWnBYMVY4VWcxRnVtU0xnM1BSYmR0OFNmbjZJ?=
 =?utf-8?B?WmUxVWVBdTZqVUI2MjQvcG0yN2ppMFIyK2wyUEN4WFZzODQwcmpqWHErUDgx?=
 =?utf-8?B?M2Z2Skd0dUpHUlZlemZ0bXVMclpsb0VyMjUrdEFGTSsxbThxZHRMUHlDQW5i?=
 =?utf-8?B?TGFsZW5WQVU1TTVsUjdwcVpZTXg0eWQ5N0tsWlk3WmtnK2xtUXZaZjM3T0pp?=
 =?utf-8?B?SmVkVlpabHZ4U3BOc0xkMzE1aXFZQjd3b3hIY01hdWRvaHA2M29oT2luZ3pF?=
 =?utf-8?B?MEZoZEpGbEIxdGNSZWl0aTZCRUpvdE5CZko5RzRDamRPUVByMEYxVXJvMTdz?=
 =?utf-8?B?M3hIRCtBakVLck9sU1lkUjB0clR6V2hjczZhQjNwSm9rNWttVENITWJEZXZq?=
 =?utf-8?B?c1BIUmloUG45cXJYVUl4MnJQODF4K2padkZUK3h0SldZM3hOd0hNZ3BBdjBJ?=
 =?utf-8?B?cVo1VW9STzJqbzhiVXhsbkVnZ3NmMU85T01zM3M0RzVqN0JqcnRzZ0VyUVVP?=
 =?utf-8?B?ZlFVb2xJTDFxUW5hK3IwaTBUeVRRenVGSitNdVlhRTgxQnlsdVRmVU5KMTdJ?=
 =?utf-8?B?UTFZZlRLUGFCclBnRC9oUnVOQ1k4dCtMVVpPcmY1ejI3UForeUMrKytKKzFD?=
 =?utf-8?B?TEZYbzk0VVhiUkNYTzN3SUhwQXMwQkltcG8wQVg0VWRzUWtBcVYvcmg5UVBR?=
 =?utf-8?B?blVzcXA3S0dVblhPckVVTTMyUnpOclc0RTJLRFpuMFdsVEZML0pJOERaVURq?=
 =?utf-8?B?SHpoRTZtUEYxR25FN01HaytZSDVMREhYb0FjZ3Q1VmJiaDdON1NaeTJkSEpj?=
 =?utf-8?B?V0ltaEp6bmo3c3l1UG9Iem1wQ29kcWJsaUJac25GeU1DelZlOEdVRnMyRGVj?=
 =?utf-8?B?MU1TUnFYTjNTOFZpT0NXRC8rN1pDM0NodTQ2R1RldTNCQlpnM0NFeUM5aXFt?=
 =?utf-8?B?RWNsTGUwRitJNUoybXNaaEJlWXZXeUJFVVhWREdRRFZjKzVpRHdkQzJtb25Z?=
 =?utf-8?B?VDM4djFYUklSSjFyMUdmMVkzUXBiNFFIMmRyRDdSbHBYcDVqd1lyd09xYktL?=
 =?utf-8?B?M3pqdi9HYTgzcVdlVjlGUU5la3RWT0dBS01lU200NTA1bFJzUDJtd1RkcGdr?=
 =?utf-8?B?TXBlalM5bDI2N3JPT1BsM0VFWnhOWndmdWd6ZVBRNmN1dVoxQ0lWbS9lQzNS?=
 =?utf-8?B?Y01pMGY1VkVBNTFlUUgySUpwT1VBV0RzUXlDS081eUhwVHQ1UEU5TXVNZEtE?=
 =?utf-8?B?dnRmaGlPT0s5TytLTFcyZzRHZ1g5Qm5BYWhpK0lsMDF0ekQydStBTnhHNzFY?=
 =?utf-8?Q?kOgg/eB69G8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dytaeEsxcTBXSXF0b3BMQ0tRMk9nWlgyUElKTm1iOVJjYllXOWN3dnFRbFlk?=
 =?utf-8?B?RWhkZDc4OHlWUlFVUmlnRG5RRytHejVkVEtlY2FPOHJlcDF0aVNxYnBITjgy?=
 =?utf-8?B?YUFRYzJhdDdmcE9JdlorNXFTREQxa2xYMXdsWE5BWDl4Q0R4ampMNTQwRjIz?=
 =?utf-8?B?b3pYUm1XSE5XbEpxVzduK3huVG1MRmpjTXRDZDR1UVd5NDN3ZmRzTDdlcDV1?=
 =?utf-8?B?dGt3YnNmZlhNQ0pidDNFUENWT3JyRXV0K3kyK2R5SHIzRldQVFJ2K04rcnNp?=
 =?utf-8?B?eFAxakxtWnZZZnd4MlR2TEJjTkZwMkJWa0Z1UkdxbklpN2hkMnZVTjlGa2dv?=
 =?utf-8?B?OG10VVZCUmFNNWtyOXpnUmFUZGpHaXhDdmtETWs0NVBmdEpkZ2ZZOWhRRmlt?=
 =?utf-8?B?bXZobVBSbUZQYjZOcldsek5sbitDRWYvQXQvMFY1Z3lxaVIwUEpTRXVLekdi?=
 =?utf-8?B?VDZ5dDQxS0pLdEpuZ1hsa1RmR05tTEphb2NWdmRzOG04OVdTc3BrTXdVQnNu?=
 =?utf-8?B?bkxFb1RyRkxrQnVUQm1tUXI0MEhyZTV5U3NkdUtsbDAwZ082RXB1bmtnNU85?=
 =?utf-8?B?bi82Wjk2SFRRK2dZblJydUdEMSs3Q2RrOXp2NHBzSGRsRkNiQzUxUmthS3VP?=
 =?utf-8?B?MDhtNHh6ZVRrSkhnWXhqaHVuSE9aejlZNG9GdUZUWmZRc05lWFA1REJOMURZ?=
 =?utf-8?B?MUlwSHY3OHUyQVprTkNJRWpCVHp4a1ArUjZKQU52STFWcDVZUHE3MlMwVE9C?=
 =?utf-8?B?Rm80NVFxVW1pcERrUlJ5TFR1OW83bE5lcFY1TlRGU3BFalo5bDA5YlVCTzlI?=
 =?utf-8?B?MEdFQ01jL0RqZW14R2VGMUJOYVpOVjBRNFVlbnhaTk9PcmhOc1N3bktnNks5?=
 =?utf-8?B?OUYrYW8wTVF6ZlRZaGFNU21mam44ZVJ2VjFiTlpVbnJIN1ArRlVNVHg2N1hv?=
 =?utf-8?B?RHNDUkpOWElVc3dQeTd4SkJjM29PYzQveHpkeTVYSlQvaGZ2NkJrZldLUXdw?=
 =?utf-8?B?ZUpNOGVVdStJSDkybzJ3QnpFeGp2NWl5eDBCMTRkNGk1WTZOUms5VnhXamZ4?=
 =?utf-8?B?WnlNTTVvaUZuNWdqOVpncEx3Vzlib0FNYzBEV3Q1d2QxRTMxZlhMaUs0TW4y?=
 =?utf-8?B?dHV2YVYxME9vYlpvT0FNWkhsWHZHc1IydjVLVVBTNUtaNEd6R0ZlZHlmWUZC?=
 =?utf-8?B?TEF2VW82YVFzNEc1b3NNcUluZTNlY20zSkJRd3Z2aGZyaXRyVEM5dFR3T1FW?=
 =?utf-8?B?OHhLTFVVL0pVZ2RVby9rOXQrWVpzY0FrbUdFcVhObUcvcFdzT1laZ0U4bXFI?=
 =?utf-8?B?RFhsUHRubXlzZEVWU0JYWkVaQVBuZWFQaFBoZkxBTCtjM3hWZnJqbzV4RHJ2?=
 =?utf-8?B?VmRZYlVpZld5cUxiZ3o0b0hEM3lkQmpXcGh0NmY4SEFjVGpNalZwRXJscWpM?=
 =?utf-8?B?RElBNHBMRE1abHZNQWRLbjNlOG5raU1uTVpwS2lYMWFLVVYrZHpINzJQZmNE?=
 =?utf-8?B?WTl0Zmg3cGhzakIrT2krN3A2Y1EydTQwRDdFZ1lLcndYKzFKbXQrQkI4aWdZ?=
 =?utf-8?B?cmdGM3ZybmROUDdHdUpzOTZwaDB2OHZNZk1KbkplT0Z5MTdsRmU4T1pWUmZL?=
 =?utf-8?B?dy9kNjNzSTA3Tk1STjhMRUNHYnZrakdnMlNiZzRIOWZGMTJiaXVVRktodDl1?=
 =?utf-8?B?b0VtRXFjWEpGYlhmWkxTVVI4WUg2Q1BzeTVibXFLY09rUTgzdEdhNGNGbWJ3?=
 =?utf-8?B?NHNSWjc5ejg5K3RmaENIY09SeDNjY3JVYWlDMEkwdS9RSFNXZFljb2ZJbEtG?=
 =?utf-8?B?N1cxK3pvZ3BGei9hM0g3TmIwOEVzNjRzTVpuWU43T20rY3NSN3l4TnRKUU1y?=
 =?utf-8?B?djNTc283ODJpM0hMUFJHYWJCZWNROXhFYTNOTVlYVWtOMWVUSEZRNzRIL0lP?=
 =?utf-8?B?WnRFd1ZQUi82eU9UUUp1aVV1Y2VEdkFsVXFyb2JKWko2YTZlNVpvSDF5bjMr?=
 =?utf-8?B?VEZ3WExPdnNhWmZ4bFgyVk82NmxKcEh3NU5kZFo1V3NQNjBQWlI4MyswdzRD?=
 =?utf-8?B?R3YrMWw5QVE2QXRTUzF6TDdWM3V6TG9BL1F5ZUt6aE5FRU92U1dVVC9hU2Ju?=
 =?utf-8?Q?+Q3bxya7wATiSIJQN8/HuNyv0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc4569d9-a8d9-4f08-c7c5-08ddd60664ec
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:01:51.0638 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PY82PHsZefGGYmufVgpuwdy5cnnafGEje92UATt300wX6VJ7fM+WYhWgtN/PGWBP0e/HXqATx5K4COkPTcE1cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6221
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

Please keep the review of this series in the original
https://lore.kernel.org/intel-gfx/20250807170212.285385-1-luiz.mello@estudante.ufscar.br

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Luiz Otavio Mello (9):
  drm/i915: Move struct_mutex to drm_i915_private
  drm/i915: Remove struct_mutex in i915_irq.c
  drm/i915: Change mutex initialization in intel_guc_log
  drm/i915: Replace struct_mutex in intel_guc_log.c
  drm/i915/gem: Clean-up outdated struct_mutex comments
  drm/i915/display: Remove outdated struct_mutex comments
  drm/i915: Clean-up outdated struct_mutex comments
  drm/i915: Remove unused struct_mutex from drm_i915_private
  drm/i915: Remove todo and comments about struct_mutex

 Documentation/gpu/i915.rst                    |  7 ------
 Documentation/gpu/todo.rst                    | 25 -------------------
 drivers/gpu/drm/drm_drv.c                     |  2 --
 drivers/gpu/drm/i915/display/intel_fbc.c      |  6 +----
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  4 +--
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  4 +--
 drivers/gpu/drm/i915/gem/i915_gem_wait.c      |  8 +++---
 drivers/gpu/drm/i915/gt/intel_reset_types.h   |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 12 ++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  8 ++++++
 drivers/gpu/drm/i915/i915_drv.h               |  6 +++--
 drivers/gpu/drm/i915/i915_gem.c               |  3 +--
 drivers/gpu/drm/i915/i915_irq.c               |  6 -----
 include/drm/drm_device.h                      | 10 --------
 15 files changed, 33 insertions(+), 72 deletions(-)

-- 
2.50.1

