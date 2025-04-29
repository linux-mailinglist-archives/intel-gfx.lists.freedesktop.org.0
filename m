Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4431BAA0AB5
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 13:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B222E10E276;
	Tue, 29 Apr 2025 11:51:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bj+whpa6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A68610E276
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Apr 2025 11:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745927497; x=1777463497;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NaEYrt+A+PwevZg/OTx6uN5iuke6oqQwzcaLGjVFzRw=;
 b=Bj+whpa6kKlZ8I4hTWpDpO6ozjPq4UX9sDGqe7B9QhjNw60ul7suaUD2
 59HiTY8N0F5lrKLJF1NFtRUoqzWdMFSsYgYukrBLIJ8m8jOljoltQ+0bS
 MaxHPMRJiKlo+9C3hwOVUypcfVI0TaGf7u6ATCIyiauBsE2JPTkfFhbNh
 Q/lyR1t4g7/8Z6TmFMgfzdUzq7g3l4rzKht593kSXxxa9JHe2tsv5OzcA
 VXtoT8MiJQE+Z4ewvSzLiHFpt9OzUlE4rgzIxVP1X3G1cFQSwB9uvOTak
 s0xZN7yWrGp7YocYKp1bKagmkeWtxixis9IzthZbq2pKeHRspkEwIbExB A==;
X-CSE-ConnectionGUID: ahEbRz30Td2Yb+JjCT0H4g==
X-CSE-MsgGUID: kHnBFwoAThqJ9gudL/c9Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="72919954"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="72919954"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:51:36 -0700
X-CSE-ConnectionGUID: qERja2+gSYWDQB5X03XHAQ==
X-CSE-MsgGUID: nrYtrZfeTZWixInAfpHxsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="164892206"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:51:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 04:51:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 04:51:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 04:51:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OYRrUhoLllLCSaBpa4AdcY3yoaUNaVupMpLKuzH1tmuM6jehXOne2puCiQ+PbzjAW4En2cVlNSYKSAMAHJaAoDoBOayHyO+l70bOJvR0e1xAJ9WRUv72URSdSG/dz3V0v+ZhepvnswaHlQI5yGZKGcrZvAGFnevbjSQ74JB/WISN/B8FhVorAJZD1iYYzLSwk+mrkwR2xIDv4yjgoesf8gkr7SJrq05g1OacqgUjUp5LdQXxXFi4f6ldIovHiLomJ/v1hzYbRlHaRUHZ/PQdxVRiqvinLyOPXKqn9Vz/dZGv6nRZHgV8OJJvkOsdJjy7TeMrYAzp/GhCAx7A5vApCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGHMT2eeF/1udCMc/clJl24kT7RlIeArX0/aD4hVw0U=;
 b=Lglpjvt2MgG9kK0qeCezD6VzzA6S0FBoEn6Wpx4bMNl/ohnyudrhnVU3xOJtwSSgJ2/AJ9jzRVXXb5ykDYkt9HstkKHIf42lEKNj6vrCygU5WspxC3jip2sTTRunMxNBMwsNb7yKA0iaSm8bap6uEwwdtJeIsM0q/cQ3Gzgx2tILaMWeb9KggjaAfvSNCknkOmGDx1X4WwtfFduTVlHvFvsKvGfY2VJ3oJQdVORuPSAldBMOf1sBHjlTqArpAJm4DSEY4ukj4P+zIrrIz2LnjyZQ49i6jAIhS5hQY2l8bCvy4O6zM8F/osUFInIbehYjPhyAtQo0rEtCgJoxbllSrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW3PR11MB4603.namprd11.prod.outlook.com (2603:10b6:303:5e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Tue, 29 Apr
 2025 11:51:17 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8699.012; Tue, 29 Apr 2025
 11:51:17 +0000
Date: Tue, 29 Apr 2025 11:51:09 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shyti, Andi" <andi.shyti@intel.com>, "chris.p.wilson@linux.intel.com"
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Message-ID: <qqfjvvu44wikoohewpgpbselarv3t4vazur2sjvznbq4m7halz@r3ezlz7vhezc>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250416103640.212269-1-nitin.r.gote@intel.com>
 <y2bztat2u5oqbrkottn7fsup2scya2hpxft6olazvj2yu7vlks@c3m5ji2zoacd>
 <SJ0PR11MB586797751A19E64E52CABECAD0802@SJ0PR11MB5867.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ0PR11MB586797751A19E64E52CABECAD0802@SJ0PR11MB5867.namprd11.prod.outlook.com>
X-ClientProxiedBy: DU2PR04CA0028.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::33) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW3PR11MB4603:EE_
X-MS-Office365-Filtering-Correlation-Id: c7cb4847-21e6-4534-a6cd-08dd871426af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXlleU9HZ3huSnd4S2dtZDZacHZyQzRab2g4RXlzWXFXNGZGNCtEN3drY0dZ?=
 =?utf-8?B?bCtscXcxdzNPY3dqaHZWYW5Dbmtrc054alJ1OVZNM2hPdHBzTk5UVVFXSlZn?=
 =?utf-8?B?TUVSc1dTVEFraU5oekNoUzEreHRqa2lTMTdvTkJBMXNYWmowd2dzN1NxTEJF?=
 =?utf-8?B?dTBpNWdLR05IOGIvazMvYjBMK21mZ2cwKzY5akZvenBpWVFWckVONkd0SWtv?=
 =?utf-8?B?Y3FLQStESDBCNmxQaDJKeHNFak1FSDlOb00wNkZjSDNUSFZTMkMzekFDaklH?=
 =?utf-8?B?UzhtdnJKY1FmWGtzbmdQeEhOcmFUc1hwYjhSdndiZkFmRVlXYm0wMENqdFl5?=
 =?utf-8?B?MHRxdG12TUw1Rzd3YXpJU29kRXlqSk56bFlkcGpDWlVpR2JZdTh2WTN1THlE?=
 =?utf-8?B?NitXTG15aE0vcXA5U3JYaEhQV0RMZHVXRlZHQkRYNXFHZDVDMkdTcVluMU9m?=
 =?utf-8?B?dnc5S3NIeDR3YU40MFUwc241VUEwWHhpTnlCelBMQitvcTlLTTZuRjhuRHd1?=
 =?utf-8?B?TFo0TzlCWlFwZ3IvUzZmUmY4UmVHRUU1K0tTM3JKYXlkbnZTUFcyUDlOOEpt?=
 =?utf-8?B?UXl6ejR3V0t2QWdVcStpa3hEQ2t0bXhlVzdRQURROEtEdTl1aXJPNG9qazBU?=
 =?utf-8?B?UDBzYjRtVmkrZmU4MHFZMkdIOCtHYzF2UjcxU0FmT2JWWjBXMUtrZS81b1lz?=
 =?utf-8?B?QXc3SGx3NldVbnZsUmdSbXNMSnMxeEJ4R240anlMdUNYMkM5elZuUTBiYWcx?=
 =?utf-8?B?MzVwYVAza2tMdm5PalBTWGpwb21WRU05UTNSWnRrSlJyOEd2YVZHWWFrZVl0?=
 =?utf-8?B?OXJiRXp6eHpYUVN6S082V1ZYM3BzaTNIbXV3bEZCQm5SVm5VU3FFVXRvejZO?=
 =?utf-8?B?Yzg0aEJDNDJ0bm5VT04xRUdyY1V3OG5Tdll3VzQ0NTRpK1JzUkdDNDhvNmNN?=
 =?utf-8?B?c2ZmaU8xcHhQdTZqM3dJQ000YkgyZUlkWlk1YlpJbDMxUHl1V0M1c1BsZHpG?=
 =?utf-8?B?UG04dVM4RG1ISExpL0phUW12QXdMWDhQQTNCMmpkSDd1cGErSGY2VVJ6OVhJ?=
 =?utf-8?B?K1pPaGpQVk9QL0QxWVZka0x4bTRnTGlTTTRmTEVibmI3WGlqNG44NXEwUGd5?=
 =?utf-8?B?bWE3d08wR3ZqcS9GOTFadGdNWTg2c05HWHUzUll5WituVXR6aDBiaFk0WjUz?=
 =?utf-8?B?dnZiclJ4c0NnN1hETmtzUmgxT1ErNkZOSGpVSk5Wd2NQTFA2SDJ3Mi82V3Av?=
 =?utf-8?B?QVpaNW1xdndBUEJ0QlpUOHVVcGZVcTJkWmM5eUVGUHZWMnNNNURrcmorSDIx?=
 =?utf-8?B?aGV1OGxjMGhCSGVaYXlpVWlWUzZBcGJUOTNuUjBZS3NsNGU3ZmkxcFJEeVIx?=
 =?utf-8?B?U3BHajJScyt2clpKTmdHbmN6YWEwN3BLNEtMdjAwcXFwcDVYdGRBbnVaelRU?=
 =?utf-8?B?WEJKUDYzcEcvV2xuWFlYSjVUZ1hVN3BwRVV4clU1bm9LY2JKOFcrWmJ6dVIx?=
 =?utf-8?B?cEh0TkFpMnZaZTNtbUtwbkV1TDB4UjYybWJTQXA0dlh1ZXM1WkFJTzhaOUh6?=
 =?utf-8?B?UzhCdDVLNW9qbGZvNzVoa3lwMkxUckh0SXNpWnBwakY1NHNIK0RUVXRyNkt3?=
 =?utf-8?B?YTExSERqVGxKS2NGOGRvdWEzSTN6SXFvMTZiSk5zVUEyVXZBWnBTWGJTaXZv?=
 =?utf-8?B?YXJZUXE0NUlzT0syWkRHRnQrTGhHb3FIY1laQlZkYUdNTWJsQkFlTHl2QSsw?=
 =?utf-8?B?aEF0MU4xeHh4TzVUU3Vhby9kN1VPaWhWblp6dXY1eEN6Y2t3elNhcFY5UGFL?=
 =?utf-8?B?WW05RXcxU3puUXlUUGMrSkVOcnkzSFQwRU40U2NqUFJhUnpqUGE1V1dLR1FH?=
 =?utf-8?B?azhDbFRpSmcvMnI3Qkt3bjlwKzhLT1FwaG9lUktGaDFaWEpmQjVJT2V6Zm9K?=
 =?utf-8?Q?s+ehFLFUjqg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3R4NmpCNWJHSVJ5d1I1dnJIdzFrSThXYjlQcjBRMkxPdW9pbWgvQXpWOHRY?=
 =?utf-8?B?NkdRYWJDMUFNTWRGamFkMTk2VlVZYXA5UXREVDBBUEVzdzBBS01KOVl2d0hD?=
 =?utf-8?B?cXNxa3BmaExqUVhZbnBpMTNTZHdIZGJlSE9ncWhDdXR4anNIVjRqaE5uenQw?=
 =?utf-8?B?dnNBYkt6Z1M4ckFUdkRKYm5WVjFTeU5WVi91QTdCOXkwZzNVOWNiN3pMbkx6?=
 =?utf-8?B?TlM1QnFEOTd5NGYyZlZUSmZ1U3cveGRoNUtaUjJTMU1NRnRKVVN1Nkxoei9C?=
 =?utf-8?B?dFVNY2RtZ2t4Z0FaWTlHMkpXMzJ3NFpmRVk2VllXOS84dTR0Q2YvUjkwZmta?=
 =?utf-8?B?ak5icDQ0M1dzbWlKZG1XaFgwTGZEUTBzcWNTQ0VWZGlyK1JzU0tqUlNNQ0Ex?=
 =?utf-8?B?bkhvdU1MNGRXTXFUSGxQQjY2Y2FuM2IwMGNLbUt0YnFGUWM5U2FwZDlwVVdL?=
 =?utf-8?B?SEpleDY5aWZUQldaSEt3Ym45UUo5ZmR3ODJCNVFZYkR6SUVuUFdHZWxFL1dV?=
 =?utf-8?B?bU92UVJkeEpWZ1ZzNVUzanVjOHJWVEc1Wmh6eHh1aG1WNVRDUEZRRnBJUnlM?=
 =?utf-8?B?bWg4MXNBcm11REJFUnF0K1JxeDZib2ZpcGFEb0Q1WGU5bHdOaFVBbC9ZT1VE?=
 =?utf-8?B?ZTdmWWo0aGFRVnE1VUhHSVJUNUJFSHovVzQ2bFFWTnkvVHJhRG1yN1dVUGpr?=
 =?utf-8?B?WFl6cWdjZEk1R1pYdERLTVZpMmF5YjIxdUQ4NVdBN0ttRWdrbjJRWWlqMEdw?=
 =?utf-8?B?V2tydmhTQTlLOU14d3EvRkYvL1pybXRtcU80MmVVNTlJTTJpTjNTbHdVZ1ky?=
 =?utf-8?B?TUI0Y1ZEdHV4VENUeHdZRERtL2lRSURvaFNXcG8zK24zNDJtSTQrcisrdkl2?=
 =?utf-8?B?dnUvRUNNNGM2VGNhamVLM0g1Q1crUVlZT2MvS0ZWdnp3SFhSYnpxWWZoanRC?=
 =?utf-8?B?MXMva0M5Ym13TjRlZE5aMDh0N1R3UnlqTzJsQWFLemlSVklHMHdpNFhBbEo0?=
 =?utf-8?B?RHlUNnpVc01VWVZvTXFLMVB1ckhUMXY3NWxiVFFlWnZPTnhuODU3ZHV5eTRu?=
 =?utf-8?B?S2l4bDFOczhkUEtKNmMyOVE2M3Q5akdPR0pMc1pSNkZFcGdLMkRUZ3lXbWJS?=
 =?utf-8?B?VUlQK3N6Tkpha2U0QXVaaVl5QW4yR1JtZWw1QUtJOXJjTEMyMXhRMUVMRDZq?=
 =?utf-8?B?K1ZWQ0FtRGlmYXM5MWZVNUhmTFgzeGlWVjRGNGZIS2haQUtoNXV0SXNmTTFD?=
 =?utf-8?B?Wjk5VVJDbnpOWkxUNlVqOHUyaVBaUjBDWHUyQXJlTFBSTGh3RDZaL2JkOVFm?=
 =?utf-8?B?RlFCenJHNUc4d3licE5IR09YR3JJNTlFTmtnWEhNeG1WamgvUnk2Tm9lbFlX?=
 =?utf-8?B?RmJuUzRwbzlXSmFYNkJ3UVNWd0l4MHE4dHhzMjAxb1hVTktyTXFRYkRIbHF3?=
 =?utf-8?B?UllJUDI4Zjl4NXd0UzZGQW1uYTZoMmNoWW9Da3NHcXVyUWNVdHRmeW1GbkVQ?=
 =?utf-8?B?OU0vYlgwZjJtZ2tmVmdudlNlMnZJVCt6MXcxUGp6TEkvVWUySyt2M3NHWHdt?=
 =?utf-8?B?NUYrS2dFNEJJUnROZEE3TmY1WnFjSXZxQURidnJJbVVRaW1lblVSYjNnaWxW?=
 =?utf-8?B?UkV0cFFWYmVOVU9NQU92WXVCRTdmWFdLbnFPWkFBTTRtd2hCRFRKWHpENTd0?=
 =?utf-8?B?RVl3bkV4blRWaG1SSDZ2OFM5dFdWN0tuV2RpcjJzMVJlU001Y1VCeG5PMmNx?=
 =?utf-8?B?ZlhUenVLSGFXbEZ6QWRzRk9lL2o4L0NBYUFyWk1JRENlM2syUlJCMGc1cUdl?=
 =?utf-8?B?eENEUUJtcGdzSXlwMnpMMDVuckxURVAvRnRqTHZZMEJuNmx0S1hBOFVhcEVE?=
 =?utf-8?B?Q3ROMkxlRHVLQWdVTjl3TGR3YWZGZG5qL3NWZHdQS1FWbW45RU4rUkR2TmFD?=
 =?utf-8?B?OENIdjh4eE5WZzJpS0IrdDFscWFydmxuSk8weFpNZUhKSW1DQys5NGtTdnVn?=
 =?utf-8?B?ZVpmSFJLeG5KMXVLQWZPZVM3VzBBVzlpWTE2L2pUV2dRUkZUVy8wODJmOHB0?=
 =?utf-8?B?aWhKK1pvMjd4NUZET2VtQXJucG90T3hYSXdpTUkzVGlibUhrbEZvRitDTFQw?=
 =?utf-8?B?aG9SSzRHTWZaWEdJb2NNUnJTS090a3Fqdy9hQ2cxK2hWRWp6VDU3RjdFTnZG?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c7cb4847-21e6-4534-a6cd-08dd871426af
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 11:51:17.6274 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NztG/DOG3xC/WEYfNxOg9WK5lnuCdgDgWNx20flWBfIxXF4fxVCaXJvvReCGgL9lEvGjB0unjZqoesvFGRpQK453LhhniUhTtzIfF3uTUxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4603
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

Hi Nitin,

[...]

> > > +		if (wait_for_atomic((!stop_ring(engine) == 0), 20)) {
> > >  			drm_err(&engine->i915->drm,
> > >  				"failed to set %s head to zero "
> > >  				"ctl %08x head %08x tail %08x start %08x\n",
> > 
> > I am wondering if xcs_resume() calling stop_ring() too would benefit from having
> > this timeout on hand as well. That would require moving
> > wait_for_atomic((!stop_ring(engine) == 0), 20) along with your comment to a
> > separate wrapper function.
> > What do you think?
> 
> In xcs_resume(), there is no need for a timeout for stop_ring(), as we have not encountered any issues/errors in xcs_resume().
> So, I think, currently there is no need for a separate wrapper function.
In that case, I do not have any more concerns:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Best Regards,
Krzysztof
