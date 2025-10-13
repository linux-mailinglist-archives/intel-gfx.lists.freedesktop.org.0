Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E580FBD2F6E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 14:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E68710E30D;
	Mon, 13 Oct 2025 12:29:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HSOw64J6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07AA910E04F;
 Mon, 13 Oct 2025 12:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760358578; x=1791894578;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/APFmbdwZVfV+UjvLuZ3+VWbwJDruZiLGAgnnAH2Bqg=;
 b=HSOw64J6uhesiuOX6rZZbCF9N5oP+Oyx6YGcSDrJ4ErK6B3tH68a5cII
 jijE02Ht4EKOa06wrQgiLyyrTmxgODk/PTcrbhDX1WBWv6gMe8+Qv6k/q
 +kcGXFSaSF2LeypV1oN6cI5vVkxjYJQT3A5EOFZXtfBX3khf1TF3nc0Jl
 FbEa+PX9TSmX1KcGT7nfHA0Ah+wBwBhZSeBYpeMEv0DEpmpJbGzTejwhO
 /TuK1TrdUqaoJfrR3xK/tY9S13CGniNNEi59I85XGXS1Y9xXqpTuGyU2G
 WgoX8UioIcwGPSksiOGEoYcVSOINsjjQbHeVt0Vz7WFzV8LdcBlIfZ2HP A==;
X-CSE-ConnectionGUID: GEDi3KCQQ5ysQWP6UpfZYQ==
X-CSE-MsgGUID: b6XfMnpDQqORLu1gnsmvjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="72754022"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="72754022"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:29:38 -0700
X-CSE-ConnectionGUID: vn9A3uRtRgeyTJNPKjgPdg==
X-CSE-MsgGUID: b4NhDRFCR2O4GopQW0dOyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="180831640"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:29:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 05:29:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 05:29:37 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 05:29:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hKVwMf371icKHvkTOvDsI9TNWlyBMdR0qS9QoWhz2vAF38lOAhqQtjSNuPhp1kSrSJM9CkThSkN+wLyutPVcKlzkWrsmmxDwdgkd5Sq5z793EbMaxOatgGqoxb+3YJiJ2mDn2SlUC71OKO0tPpsubVdTRN1IoO6cY7zWuKxdxam21NMcHgaqWaycXd2mhpnc2CXmIDG5sPT9Bjroi6P/nSJWT/bItuEv10QFV2av/qkgiQTxlvz1G7mtT+TQxRTQZgHtElKKDZwAe9vvXcsIBmixnns+l7Fx2sP8tIpt28DpYucwrCtFz/ghbLNNXOyorcpMZZm50azgEOrSomgimQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FwG3Bch7MRjTTEgIL2Egex/3/tgI/XesmPiaJCx/hzM=;
 b=qH4GwOL2Q8HwFAfnjOI9RRWyItOm3Ai6XEItT3NA7VCf/5wNbUpENj+qQNyJicdrsfc9pf98Tgq061fTtu8ajKRjWshggewpltXji9AOT2c/4rEHbF/9Pvb761ALka0dPPyQixiXrzjfyNMnKEOKbSEhg5SnyHNuoN4n9r9AUxWvEiGIhKCyNIXf+JQSi0s2UCbk0K6WCt9SIfQ4G84BQ7RpDx1B5+nUZRo6fPaPfXvdNVKQaARB2Yi5fhpeRyND8W01Ah8uoj+wHzCKSpjJfg2CJZSuPyGsKqFBBGvbx4D+W4nqYsj97YB8KrUYDo2uqKKPbMBLYZzTZ5c1eFBFSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPF1AF044E07.namprd11.prod.outlook.com (2603:10b6:518:1::d0c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Mon, 13 Oct
 2025 12:29:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 12:29:34 +0000
Message-ID: <ad9c4d4c-527c-4876-b25c-ea56049d2baf@intel.com>
Date: Mon, 13 Oct 2025 17:59:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] drm/i915/display: Check if final vblank is sufficient
 for PSR features
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-6-ankit.k.nautiyal@intel.com>
 <9178808c08ec3e7dd1e7bc7cd36d8b4f977a2711.camel@intel.com>
 <fd862250-06ea-4026-94e5-64af7684d925@intel.com>
 <d7031ee74d4e215caee725edb8baef813f0ea36b.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <d7031ee74d4e215caee725edb8baef813f0ea36b.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0084.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPF1AF044E07:EE_
X-MS-Office365-Filtering-Correlation-Id: d903c1e3-2096-424f-241e-08de0a542ac0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXdRQUFFMTVFRkpjWFljOFMweXZuWFJHUmpuVUEzcDNwQXlDNVZ1U0k1K1NZ?=
 =?utf-8?B?MTlRaVlhL1JTOUxSMHlucnBhVlpObDVra0hFa0xFZFhoMmo1N01udnlvRVcw?=
 =?utf-8?B?ODBzOWZSVWpiMkFiZ1Vzd3piY0FYbFZKaWN1UVJsbnpib0NyL2I4MzZoWlJB?=
 =?utf-8?B?WENXTnNpcUI0ZTVyUWVibDA3UmJudER5cnl4RW9RaVFKdzZ3czRBUVA0V0lz?=
 =?utf-8?B?bWc1KytjUDFCbXlIdWNkd1lzbFEyTjlCaFhXbUZmbkpGRXBWdDMwZHM2RVFi?=
 =?utf-8?B?V3RLcERvSVZSQTc4aDkxQkxHTnpOdWxjYmgwVFI2LzJZdUc0SzN5RldJQzdr?=
 =?utf-8?B?MUNzNUttOU9LYXBxaWJGVytTUmVTY0o5YjJOZ3JMWGwxdWJ2UnlPMDI3bDhR?=
 =?utf-8?B?U0dORjlNKzRTSWUzVlRJbGU2UXBEeGdKNDg0ekJxK09tencwd05rWXNtUlp6?=
 =?utf-8?B?UHlIUU5KbzBEdmZVNlR6ajRaR2U5VUU4aC9WOUt4ZEd0YkVHTDc4ZWhFVEs1?=
 =?utf-8?B?ZjFMci94OW1zbmtONm1nRlVISHVxdnlRLzdEaDBrbmE0bkNIMG1kUTRRR284?=
 =?utf-8?B?aEZwOFBMZzQxN2RoazFrc1VXa0VleSswak80TWtkcldORDZSOHFCaCs4SDNm?=
 =?utf-8?B?bTk3TXVlRVQ3QXBPZUh1SEZiaDVlVlAyc0tGWmZ4MFF4TVRtTjZxVUFUc3Zn?=
 =?utf-8?B?aWMvSXZ4NmovdkRUaGhvbVdEM2o1R0hDTzBNTUs1aEdua3krT0FOK29NVmYv?=
 =?utf-8?B?cjZXU1ZOd3pnK01CSG5kb3JSMC9lSVdlZytYVWNYMmk2OFV6NVc0NWFtNUVz?=
 =?utf-8?B?eml4NFQ4eldtbURYR0Uwdm5KMjlLdWc2b25DQmlNQnlpak1zUTI5NEJXNU10?=
 =?utf-8?B?Q29hRTgzNVNaVzdoYzc4Y2gwanpsa2c2d3RTWU90bytOR3ZwRGFtYjQ4V2tp?=
 =?utf-8?B?TmpBSC9XLzYwTlU4RlRMRmp6b2FGai9OUkJsaE9zMmtSNHdLenh5YU9VQ09Z?=
 =?utf-8?B?eVROcXdnZ1hZZ3AvajlrTXVveHVxR24wcjFiOVpPTHZmVS9Pd0RUVnVZUFZv?=
 =?utf-8?B?cnZWc3dzSXRUaTBtZ0RIMW51eFNZZkplQlhoaS9DQktOeEZITW1sZitHdVNE?=
 =?utf-8?B?QStsK0hmSmErUTBKNFZqK0ZSeGJIeXFhVDZZcE0wTWJIYjl3Q2N1U0JkQ2Iw?=
 =?utf-8?B?QXl6NE1UbVFGRDZVdDNZYjdHSGVaOXZQQ0hLdmx2S0d3WnEvTHNlQ3RhUnN4?=
 =?utf-8?B?TkZ0dHF5a29SZm5LSi9pMFVnWEkrRTg5alJCeUVwZkc4WVFCeHovc29MdzBj?=
 =?utf-8?B?TmRSOGxFTkhyV2kvN2lvbFJweDl5a1pjRUV4SDIwK3pyS1BNZUpJb2hkWHhT?=
 =?utf-8?B?SDBXZ0hBelpvRk9wY0kyc2Vpc2xib2grMTRKYXVreE1JWVVHTzFQWElZb2xm?=
 =?utf-8?B?d25EemxDYTZMN3p1Rlg2QU1kK0VlV2g5Nkx1ekMyZjEyOWtxcFh1d2MrWDho?=
 =?utf-8?B?WXN2cGMrclRUa0NsZmpwOFFvNEl2QnVjbDF1cENCWUYrWlJTMGZIUUt5SERB?=
 =?utf-8?B?TVhvNDBVTXRPMVMzTThnY0lmcEYzbG5hcFd2RDZBbDMrb1l6MHVDZUNqazZo?=
 =?utf-8?B?TlE1SGFZOXc5alBPOGM0Q3Uya0hGNlRrYnJwOWZESS9kc1lhbzVYL1pDTHJQ?=
 =?utf-8?B?aERESjBWdXpKd21OYXZQV1QxZi9VYU9zS0Nrc0cvc1d0RHpOREF6MUkxd0dx?=
 =?utf-8?B?WnllWUVEdktRY3BMaW9WVi90M0VxU1JrTGFodS9DWU83N0UvVjMwdmFrQTky?=
 =?utf-8?B?Sk1aSDE2K2VsMzhoRkRjdWxxclBrTVNNNE42YXlRdWdtMXpzZlZSRjRlczlQ?=
 =?utf-8?B?b0E1MXNzY1lEVGswSW1VcHRqdTdjMTVQQXA0UkFpVXBYZ3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0NhaHozblpVZi9udHJnWFlROHVVVDFHOXVCQ1RwbVFOQWFubXd5cUt4aW5D?=
 =?utf-8?B?Y3B0TUVnanhYRzVnZlZCMFE1SFFxZHVZY0VENndGTlFXcW9mRUtZL01PbnFF?=
 =?utf-8?B?cXZOb1czTDZ6TTQ1eDFlUWJHbDJIcmNIZ3Qrby9raldRWmRqdk9YRXpBTE5X?=
 =?utf-8?B?bS9GRHBkNVBGRjVBWTBwNkRRSWFJQjcrNGdxQzdPYXVFZkwzdGxSSzJoT3dH?=
 =?utf-8?B?VW0zdndrRVhTSW4wVEZaMFdyNUZ3a3loK1g5VzE5UDA0ZTI1K1dWNEdYZGN5?=
 =?utf-8?B?M2JFcXpYWDdQeWg1SDFLVVdvZ0xoMzM4MU5EaWNiU2hZTGRXYjB2WFAyOVUw?=
 =?utf-8?B?aFNSWDZsUHVJa0hiSDZJcGtsYm1GU25vdjFybnRnanR5TVdvelk0MkZMNDdk?=
 =?utf-8?B?S1A0Sk05Z0I5UnpQMWJnYktrVHppVzlWdGFlM0RnbDZSL3d1d3hoR2orUEli?=
 =?utf-8?B?aTM0TENoMVpHN0hFZXNINE1kLzVKUURURENaeVVHTEZGWmlmblpiMzROODE4?=
 =?utf-8?B?NGFWK204ejhoaUZoUzNuN2YyK0JZYVFPTmgrMy83ZmlISWUxVzhZSkNIOWhV?=
 =?utf-8?B?QmN2UnFEREhqVW5rTGxLa29VQ0E3RjhJd0JTNDV1VGdOMWV1SDBsTmUzNThy?=
 =?utf-8?B?aG9qNjJVaEptdzVKckZBd3FMbXMxYk1Sa1Y0d2ZUWDJEOFlTZ25mK29pSXhj?=
 =?utf-8?B?b0lXMFAxM1R2SmRXY2lGYk1VdGo2NFB1b3ZTMjVsZHV1NUU1b3RYVmVIWHh5?=
 =?utf-8?B?UXNpWXhvUC92eWJBSUl0UzE1dyt6cGJEYnNzYnpLRTV4c0h1c1dBSjlWc29n?=
 =?utf-8?B?MFU1cVZaTExFUnF1aG56cnRBQmdaODRFVzU1MU1OSFlGb1hyc2ZpN3F1S05R?=
 =?utf-8?B?N1N3ZkFGTFBzZU1sNVlOZXNnNHQrb1dOeFlVL1lON1FaTXdyaW5udXZBbVFP?=
 =?utf-8?B?U2I4dkZ6bUtqODdvUjhyUnJiQUQyVzMwUTV6U2hVUHc4UXdIWnA5THFpR25n?=
 =?utf-8?B?K3B0ZUdSUzczRnJ4Q3hRNWdoWitoU1IybTZ1L3pXRjZxYU1oaEI5SXI0Mmln?=
 =?utf-8?B?WDdWVVVVU0RPQzRZZzFmYjVrQjNYWHpmTSttTlN1YXNGSjM0L1Byb3VyR1pN?=
 =?utf-8?B?NXFDUjdYMlhQNmlkTXB4WFN4M21HK3hQalYybDBmdGZ6WWJNdzdIeW42ZUhB?=
 =?utf-8?B?WUN1bGhDa2wrMk9JL25xTHgzZW1nbFRoRnR5MmFteGNTZVFaNDVzZFVrdnVV?=
 =?utf-8?B?NFhyV01VTXVXMlNydmR4U2RoQXFzMXdjT1c0MUNmZGZOK1BLYmFKVjZKU1Mz?=
 =?utf-8?B?MFk2RzV4bDR6MmJZUjZHakQySWhROUxDWkNNNjdleWsrUUMzZDQraU4xb1R4?=
 =?utf-8?B?aWlMUFlwcGxnbnFvU0hmRjhRUXpVc3M2SEpXalRlVXFQQWpEMFgreDZLUmR5?=
 =?utf-8?B?dHN4QVRNR01Ndm1zcDNLdGV4SG0rRTBybUYzd0NIWi9EYWc4aW1XblowczQy?=
 =?utf-8?B?WWZ4bDRvL0xNMXl5Yzc4djVsSitscVAxckMvSy9ZeE1Dd21nVkZZSmlxNmRv?=
 =?utf-8?B?U1htWktxZzMwQWZrc3pRMkUrRnhzRFREYll6aUROOUVsZlArRloreVZuNzBK?=
 =?utf-8?B?NHU5WFptQ29kdkxITUpVRUh0YTFNYllIM2duQnpqZVNjdnQ5VTRSeW0yM2U0?=
 =?utf-8?B?OE40aWtncVpMK0tOcG10Rzg0Zk8vQ1REK1hINElzdFJ0ZVZIaFMvSXo2NndL?=
 =?utf-8?B?ZG9Sd1NBUVdaWnR0ZVlOZ214SG5iUEVzOWZaUnNxeGN3dlZLMUJyM2VUK0U2?=
 =?utf-8?B?UXpUS2NKRXhzMHdSSjAvODdzODRMeFU4cnJhS3k4Yms3WHZIeks1Y0R0KzFa?=
 =?utf-8?B?Y3Q1eDhQbmZsWmtvUGs1SkV6U3MxMEx6ZUZlMzlmeFNRVzQxVnZzSHFuYUdO?=
 =?utf-8?B?VWpoMDVoNENCSXZzTVlWNzFuYmF2L094cHRPRGp0cHVHNloyQm8vbG9FRXJV?=
 =?utf-8?B?T0ZkdWVVaUVUSzkvdlFkclVhMC96NVhmMVU2Y25jQllkU1pNTVdBeS85cTZr?=
 =?utf-8?B?MVBBSXVnKys0dzZVSjBDaFh6Z0oyQUxvcWZUNTM5N3dFRnJSaTZzaHBYZGQ2?=
 =?utf-8?B?WDdtY1ljQ2FVV1l6azRLWVFpamJQa2VUemgxM3ZvQk8ySTBqK2NsRVlkWEhF?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d903c1e3-2096-424f-241e-08de0a542ac0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2025 12:29:34.8033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r6Cgj31j4dWvmFm5veoqm4+SCcbVqMxyc1ldIphYWbEjNh6yYetizh/VHqBLXYSyvK1Xw4X5eP8IezVbZ/uc3m7AVLqVf9rAoaFjuOX5pJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1AF044E07
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


On 10/13/2025 4:27 PM, Hogander, Jouni wrote:
> On Fri, 2025-10-10 at 19:12 +0530, Nautiyal, Ankit K wrote:
>> On 10/10/2025 12:23 PM, Hogander, Jouni wrote:
>>> On Thu, 2025-10-09 at 14:30 +0530, Ankit Nautiyal wrote:
>>>> Currently, wake line latency checks rely on the vblank length,
>>>> which does not account for either the extra vblank delay for
>>>> icl/tgl
>>>> or for
>>>> the optimized guardband which will come into picture later at
>>>> some
>>>> point.
>>>>
>>>> Introduce intel_dp_compute_config_late() to handle late-stage
>>>> configuration checks for DP/eDP features. For now, it validates
>>>> whether the
>>>> final vblank (with extra vblank delay) or guardband is sufficient
>>>> to
>>>> support wake line latencies required by Panel Replay and PSR2
>>>> selective
>>>> update.
>>>>
>>>> Check if vblank is sufficient for PSR features, and disable them
>>>> if
>>>> their
>>>> wake requirements cannot be accomodated.
>>> Now as we are adding this: Can't we just drop checks made earlier
>>> and
>>> rely on psr_compute_config_late checking the vblank?
>>
>> You're right to raise this question. The key point is that there are
>> dependencies between the PSR configuration, the VRR guardband, and
>> SCL
>> that influence the sequence of checks.
>>
>> Here’s how the flow works:
>>
>>
>> 1. psr_compute_config()
>> This is called first to determine if PSR is possible.
>> At this stage:
>>
>> -> We check if the vblank is long enough to accommodate wake lines.
>> -> However, we don’t yet know the actual guardband or whether SCL
>> lines
>> need to be accounted for.
>> -> So, we can only establish whether the vblank length is sufficient
>> in
>> a general sense.
>> -> On platforms like ICL/TGL (with extra vblank delay) or with
>> optimized
>> guardband, the actual lines may be fewer than the full vblank length.
> Please add a comment into psr_compute_config that it is roughly
> checking if PSR is possible with current understanding of vblank
> length. It will be checked later in psr_compute_config_late against
> optimized vblank length.

Makes sense. Will add the appropriate comment.


>>
>> 2. compute_scl()
>>
>> -> This computes the SCL.
>> -> If PSR was not enabled earlier, SCL will be 0 at this point.
>> -> The vblank_start is adjusted to accommodate the SCL lines.
>>
>>
>> 3. vrr_compute_guardband()
>>
>> -> This sets the guardband.
>> -> With optimized guardband, we consider max PSR requirements and
>> other
>> prefill latencies.
>> -> On platforms where VRR TG is always active, the guardband cannot
>> be
>> changed dynamically and any change in guardband triggers a full
>> modeset.
>> -> So, the goal is to set a guardband during modeset that works
>> across
>> most scenarios.
>>
>>
>> 4. psr_compute_config_late()
>>
>> -> This is where we re-check if the guardband is sufficient for PSR
>> wake
>> time latencies.
>> -> If not, we disable PSR features that can’t be supported with the
>> current timing.
> Add comment into psr_compute_config_late about SCL being left untouched
> and containing intel_psr_set_context_latency if PSR was possible after
> intel_psr_compute_config.

Hmm sure can add rationale for not re-setting SCL.

Thanks & Regards,

Ankit

>
>>
>> As mentioned in the earlier comment, more details are available in
>> the
>> following references:
>> [1] https://lore.kernel.org/all/aOVOJp2zeN1eCp7O@intel.com/
>> [2]
>> https://patchwork.freedesktop.org/patch/678520/?series=151245&rev=13
>>
>> So to answer your question: We can't entirely drop the early checks
>> in
>> psr_compute_config(), as it helps to filter PSR early based on vblank
>> length, and also helps to get the SCL adjustments. By the time we
>> reach
>> psr_compute_config_late() we have more accurate picture to take a
>> call
>> to disable specific PSR features.
>>
>>
>> That said, do you see any issues if we disable these later?
>> Also, are there other parts or logic that depend on
>> crtc_state->has_panel_replay and crtc_state->has_sel_update that you
>> think could be moved to psr_compute_config_late()?
> I don't see other need for psr_compute_config_late ATM.
>
> BR,
>
> Jouni Högander
>> Regards,
>>
>> Ankit
>>
>>> BR,
>>>
>>> Jouni Högander
>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> Cc: Animesh Manna <animesh.manna@intel.com>
>>>> Cc: Jouni Högander <jouni.hogander@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_ddi.c |  3 ++
>>>>    drivers/gpu/drm/i915/display/intel_dp.c  |  9 +++++
>>>>    drivers/gpu/drm/i915/display/intel_dp.h  |  3 ++
>>>>    drivers/gpu/drm/i915/display/intel_psr.c | 51
>>>> ++++++++++++++++++++--
>>>> --
>>>>    drivers/gpu/drm/i915/display/intel_psr.h |  2 +
>>>>    5 files changed, 60 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> index c09aa759f4d4..94c593bbedf4 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> @@ -4560,6 +4560,9 @@ static int
>>>> intel_ddi_compute_config_late(struct
>>>> intel_encoder *encoder,
>>>>    	struct drm_connector *connector = conn_state->connector;
>>>>    	u8 port_sync_transcoders = 0;
>>>>    
>>>> +	if (intel_crtc_has_dp_encoder(crtc_state))
>>>> +		intel_dp_compute_config_late(encoder,
>>>> crtc_state,
>>>> conn_state);
>>>> +
>>>>    	drm_dbg_kms(display->drm, "[ENCODER:%d:%s]
>>>> [CRTC:%d:%s]\n",
>>>>    		    encoder->base.base.id, encoder->base.name,
>>>>    		    crtc_state->uapi.crtc->base.id, crtc_state-
>>>>> uapi.crtc->name);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index a723e846321f..e481ff4c4959 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -6979,3 +6979,12 @@ void intel_dp_mst_resume(struct
>>>> intel_display
>>>> *display)
>>>>    		}
>>>>    	}
>>>>    }
>>>> +
>>>> +void intel_dp_compute_config_late(struct intel_encoder *encoder,
>>>> +				  struct intel_crtc_state
>>>> *crtc_state,
>>>> +				  struct drm_connector_state
>>>> *conn_state)
>>>> +{
>>>> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>>> +
>>>> +	intel_psr_compute_config_late(intel_dp, crtc_state);
>>>> +}
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
>>>> b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> index b379443e0211..0d9573ca44cb 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> @@ -218,5 +218,8 @@ int intel_dp_compute_min_hblank(struct
>>>> intel_crtc_state *crtc_state,
>>>>    int intel_dp_dsc_bpp_step_x16(const struct intel_connector
>>>> *connector);
>>>>    void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool
>>>> force_on_external);
>>>>    bool intel_dp_in_hdr_mode(const struct drm_connector_state
>>>> *conn_state);
>>>> +void intel_dp_compute_config_late(struct intel_encoder *encoder,
>>>> +				  struct intel_crtc_state
>>>> *crtc_state,
>>>> +				  struct drm_connector_state
>>>> *conn_state);
>>>>    
>>>>    #endif /* __INTEL_DP_H__ */
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>>>> b/drivers/gpu/drm/i915/display/intel_psr.c
>>>> index 212bd244beed..dcab4127b399 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>> @@ -1405,6 +1405,20 @@ int
>>>> _intel_psr_min_set_context_latency(const
>>>> struct intel_crtc_state *crtc_state
>>>>    		return 1;
>>>>    }
>>>>    
>>>> +static bool _wake_lines_fit_into_vblank(const struct
>>>> intel_crtc_state *crtc_state,
>>>> +					int vblank,
>>>> +					int wake_lines)
>>>> +{
>>>> +	if (crtc_state->req_psr2_sdp_prior_scanline)
>>>> +		vblank -= 1;
>>>> +
>>>> +	/* Vblank >= PSR2_CTL Block Count Number maximum line
>>>> count
>>>> */
>>>> +	if (vblank < wake_lines)
>>>> +		return false;
>>>> +
>>>> +	return true;
>>>> +}
>>>> +
>>>>    static bool wake_lines_fit_into_vblank(struct intel_dp
>>>> *intel_dp,
>>>>    				       const struct
>>>> intel_crtc_state
>>>> *crtc_state,
>>>>    				       bool aux_less,
>>>> @@ -1428,14 +1442,7 @@ static bool
>>>> wake_lines_fit_into_vblank(struct
>>>> intel_dp *intel_dp,
>>>>    					       crtc_state-
>>>>> alpm_state.fast_wake_lines) :
>>>>    			crtc_state->alpm_state.io_wake_lines;
>>>>    
>>>> -	if (crtc_state->req_psr2_sdp_prior_scanline)
>>>> -		vblank -= 1;
>>>> -
>>>> -	/* Vblank >= PSR2_CTL Block Count Number maximum line
>>>> count
>>>> */
>>>> -	if (vblank < wake_lines)
>>>> -		return false;
>>>> -
>>>> -	return true;
>>>> +	return _wake_lines_fit_into_vblank(crtc_state, vblank,
>>>> wake_lines);
>>>>    }
>>>>    
>>>>    static bool alpm_config_valid(struct intel_dp *intel_dp,
>>>> @@ -4346,3 +4353,31 @@ bool intel_psr_needs_alpm_aux_less(struct
>>>> intel_dp *intel_dp,
>>>>    {
>>>>    	return intel_dp_is_edp(intel_dp) && crtc_state-
>>>>> has_panel_replay;
>>>>    }
>>>> +
>>>> +void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>>>> +				   struct intel_crtc_state
>>>> *crtc_state)
>>>> +{
>>>> +	struct intel_display *display =
>>>> to_intel_display(intel_dp);
>>>> +	int vblank = intel_crtc_vblank_length(crtc_state);
>>>> +	int aux_less_wake_lines = crtc_state-
>>>>> alpm_state.aux_less_wake_lines;
>>>> +	int wake_lines = DISPLAY_VER(display) < 20 ?
>>>> +			 psr2_block_count_lines(crtc_state-
>>>>> alpm_state.io_wake_lines,
>>>> +						crtc_state-
>>>>> alpm_state.fast_wake_lines) :
>>>> +			 crtc_state->alpm_state.io_wake_lines;
>>>> +
>>>> +	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state)
>>>> &&
>>>> +	    !_wake_lines_fit_into_vblank(crtc_state, vblank,
>>>> aux_less_wake_lines)) {
>>>> +		drm_dbg_kms(display->drm,
>>>> +			    "Disabling Panel replay: vblank
>>>> insufficient for wakelines = %d\n",
>>>> +			    aux_less_wake_lines);
>>>> +		crtc_state->has_panel_replay = false;
>>>> +	}
>>>> +
>>>> +	if (crtc_state->has_sel_update &&
>>>> +	    !_wake_lines_fit_into_vblank(crtc_state, vblank,
>>>> wake_lines)) {
>>>> +		drm_dbg_kms(display->drm,
>>>> +			    "Disabling Selective Update: vblank
>>>> insufficient for wakelines = %d\n",
>>>> +			    wake_lines);
>>>> +		crtc_state->has_sel_update = false;
>>>> +	}
>>>> +}
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
>>>> b/drivers/gpu/drm/i915/display/intel_psr.h
>>>> index 9147996d6c9e..b17ce312dc37 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>>>> @@ -83,5 +83,7 @@ void intel_psr_debugfs_register(struct
>>>> intel_display *display);
>>>>    bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const
>>>> struct
>>>> intel_crtc_state *crtc_state);
>>>>    bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>>>>    				   const struct intel_crtc_state
>>>> *crtc_state);
>>>> +void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>>>> +				   struct intel_crtc_state
>>>> *crtc_state);
>>>>    
>>>>    #endif /* __INTEL_PSR_H__ */
