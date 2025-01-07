Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFC9A04038
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 14:01:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4C5810E6DC;
	Tue,  7 Jan 2025 13:01:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3NopdTz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8129610E484;
 Tue,  7 Jan 2025 13:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736254866; x=1767790866;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bwA9v7QDDRifTabOflvyoNB7Pd/XntOJniQYypi7moc=;
 b=B3NopdTz4o3a79NasVeKXigAaKaArkZfsyL0ljDTedCQXRaV+l4OJ9UD
 XKI7KqcCRK6xaV0DwMBrcOaopG9JZCsFS75r8efy/A12f2krs0lJLl4Uy
 RiXrQ1idOCrSfjlndkRG0B7uJGtpgD/yRvp6FeUfmAD/TOV8VDad1dE5q
 AG1wC68lFkgZ15zSDSi33irIQHPFad5MDsZ+5BsG6rIMXIjehnVd3JY2T
 6ZJV2+m3bljA8PZNdTSVtAMlVvOAH9AYhtkKNI3Y5Gk8oksTKJqYhfS4d
 eJpLzEpqHkeIhbff8+EVfqs1HlqSpRp4APfZ9eWLHJCdYNxz/H2qFBkbx A==;
X-CSE-ConnectionGUID: JXHj7Tw4QG2lXf5SI0eG8w==
X-CSE-MsgGUID: /7+5Svs9SnGJSGhaRF+WdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="39261043"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="39261043"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 05:01:04 -0800
X-CSE-ConnectionGUID: GVMna+tQTSSogdVV5pX6bg==
X-CSE-MsgGUID: SrdqppPWRZi9udwwbroE0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="126056647"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 05:01:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 05:01:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 05:01:01 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 05:01:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z4COp1cSTYo8yAqVxZ2HoaAIwWdNCgyswM1Q7ourJd4RPcJMLtqh5IjSaPYExgBe05KAfg0D8WfrTdraK8fcxJ2VTrsGXAoptCbq7t3xVzTSp+ObPEDDTnm1kqk1qMPldn57poydbJgBzDC49gTqLBPkxdbIdpvpel46HeuFaA1CexxykkYyPKrtaUQz2uU/r9/YIwcconkcWvjxvdr2ToAcTFVKsOhFawvyi0aQX5WtHTDjHQU0nOlPLjdK+8gZmACiApr7rXIFmZJGFl4/82UxrdEd8XAnceP92uT0lwwMtjJEr818sd6p50QydcT1varZJDJ8IdFOkWUIR2tPjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JNovA/DHiKcuk/dG9POMBpflx443BtOmmLH/+0l/V+c=;
 b=CjHaWYspBXcX3MMsvdd85w5lny0yRaLK45Trw8g5rl/q2ghWImt0+HLLLWHneejNgQtLk5WhA83a3tqMOusjEX0iWhptQhRXROO2wBrnSuDlMH4unOmqZyGubm9jLlB2RWOEHA64jtUrjbLpWcyQTFQzfJg739r5KB4D9aybzzCU+0CKj71RaEQZhYaL68r/45wzoLKgQj2NZJjcd/MzDaeRGWeEQt234lmq8MOFAPctdmfb4poAaR2qQHN+il0WrglSLiaWWk2mn9XkZhJdlz4demjWLUmRVEY/DlkBGjNEenIlPek/9huN/24sJN09XMov6/uwcVijSt6x8DG0gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Tue, 7 Jan
 2025 13:00:28 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%2]) with mapi id 15.20.8314.018; Tue, 7 Jan 2025
 13:00:28 +0000
Message-ID: <097fbdba-bfc2-44cc-ac71-f3ebaf51d92b@intel.com>
Date: Tue, 7 Jan 2025 18:30:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] drm/i915/scaler: Add and compute scaling factors
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@intel.com>
References: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250106165111.1672722-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250106165111.1672722-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0007.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::12) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|CY5PR11MB6282:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b65cbd8-6d8c-455a-b6e3-08dd2f1b4242
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWJXTUs0cDVTSDNuOFNOc1dRdmdNd3RLOEI2MHJKZThjMk9CTGs1ZkdLeDBK?=
 =?utf-8?B?TkhxWUtYRVFFQ3Y2MzhvRWpFY2o1VmdIY3h0a1F3UFB6My9tU0RzNXhlVkpi?=
 =?utf-8?B?WmE3cUFQVWtYNVNndDhCejcvUGNOZEsrR2h2Q0RXVWRRMWQzQVpabGVsSkZ1?=
 =?utf-8?B?QUltOHU1S0ozNVpwdFFsSVhtR3ZoRXlhcFc5cEtGYllQd1gvYi9RTVhpMmIr?=
 =?utf-8?B?QTNpVXpFNjg0bUd4Zmptc2RpY3BuUUt6enpyaHF0dHViRWRMQnFneWhMOEQw?=
 =?utf-8?B?bThPRE9pTk1RUUFxNWxYYkZWY20yYno0M05nWDE4eVN3LzJ2THI0b2xENW9X?=
 =?utf-8?B?NitLYVVmczBBUlNycGFhOFQ2RWFmeU1LU1VGdlNISkRHYWQycTJPbzFkNE1q?=
 =?utf-8?B?M2tEQU10UHFrWEVyZVZORDJaOGlSd0VUN0ZZVmwwaU50azlCcXdFdTArWDdK?=
 =?utf-8?B?ZnRlV0FpT0grT1JlalY4NmRLdmhNR0VXcW9yb2tvbm11SStMS0haOVFrVVo1?=
 =?utf-8?B?QjlZNHpwTHRub21Hd3NJNGRoMWFjVFNQZnRFM1BZejJyMU1nZjdwRnpnTVV1?=
 =?utf-8?B?TnVGYVpQN2piREVvSE1jd0x6bTlseWNCRmVCalBmbEdPaXJnTXJHZnFQMUJM?=
 =?utf-8?B?NjBES25mQ3dTcnZBdWRhY3VmbFAvQ1lhZkJBeHZMNTVpVG50dlN3TE1EemRt?=
 =?utf-8?B?RkF3UzhCRnExdVJpelRJYXBJNCtmUGRqSHBNWVBxQnpnMGQ0aWVhNURqQVN5?=
 =?utf-8?B?RW5VcUZSSGNyRTVVbTg5MVJIekhDd2lPdTlhR3hNVlIvWUpRRFFIME5xQWxX?=
 =?utf-8?B?UjRsY1pSS0tYTWRxZEU0ZFFXbXJPN2ZXL29zR3hVNk1KdXpGYWgrSFhocllz?=
 =?utf-8?B?d3FWTnVxblJReHJrSG9SeHdUMXkwaXV4a2tEMUpRQkNOZGtIT3FuenZRTnhJ?=
 =?utf-8?B?MFhzNXJlbnpxRWxRK3h5YWlyVU04c0dXVUdJa0psYnZLVzJDdHNSRHJqTnNp?=
 =?utf-8?B?eUk3NW1XOCtFNEJDRU93T3hvYXFDalJXODIrMEFNNVdBdmpGYnc3TEVwdmZh?=
 =?utf-8?B?S2pUVUE4SWJNcEQrK1k4U0dQYUtpQXpWK00rNmZsNzc0Mkk0QlpqWHAyV2Uw?=
 =?utf-8?B?QWtVc3F4M0N5Q3gveU5nNk5JdElrMXBFWXhtUlNXQVc4MkpMMzFSM2ZnSlJX?=
 =?utf-8?B?Nk8wbFR2RHlnN2pYTzFXSTZsdllKakhGQTJuazNQcE84d0dScU9RcFZsYmlK?=
 =?utf-8?B?LzkvNUFoMlI0TjVNR3FEK21lQmFTMGFNTkdoeEdtdk12WWlEQkNMNjRrN2I4?=
 =?utf-8?B?ZHZsWDczZy9wdzhVeXQwUmxPNzBNbG5LVjRDZ2NYSmVNT2F3OVdEbVJ5bTM5?=
 =?utf-8?B?emlBUG5kMkUwTnNJclJvMFBpV003cDdLeUNNQ2ZBU0piRWh0UUgvUmhKQjY5?=
 =?utf-8?B?WXYyTlZOUEE2YWF6cFVLdFdMdHo0N3REV01VUzZ0N0tHQmVlRWxoeW1ObFk3?=
 =?utf-8?B?N294ejBCN3VxOTZla3pQNElxUlRseWszc2FSN1VyYXExOGRhakc3dGZYMmg1?=
 =?utf-8?B?cmwrUVZqRG53Z0JvMGtFRXhsZmVteE1sVFNlSW1hOGxVWXhzU0hzN2pYLzZL?=
 =?utf-8?B?NkMrbHpVbFJkS0lWWDdCc2JjWHU2SzZQeTg3NnpkMng0bUUxUFJnMGc5Q3pa?=
 =?utf-8?B?d0ptSXNCQkdGN1VoaHp5MW5SOUoxVk53TW1NMFZyK0dWUUc3ZE84OGlYNnV3?=
 =?utf-8?B?L25COUdzRHFuN2wyY1FkN29NNEh1LzdYQUhleFZoeFhzVzZpdVFKUnU4ZnY0?=
 =?utf-8?B?Yll4eU1kRlY5Nyt2RHBhTEhoQkU5cTBmTVE0YXVLa29aVzBXcFNpbXluS010?=
 =?utf-8?Q?qBkT7dF4kzWzO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXlBM2hhcnByeUp0aXhLZ0RwT0FTd1EwTnFPbUNxZFNDbWUzQlp4Ync1OWJw?=
 =?utf-8?B?NHh0M013Ymt4aWRvMTlRUXZnb01wSWZBYkY2Uld6Q01mS0VTZk9CZ1g2MXht?=
 =?utf-8?B?ZEdOV281Nll4MEpJS21RMm01cDhqeFFBL29Tc3NLYUhDbHdJQmFhWmUxZTBX?=
 =?utf-8?B?RWE0bzhVUFc3Y3U1NzF0TDVUdnpwUDh0dG1DTVNWNWFZK0RRN2NVR05vbUJF?=
 =?utf-8?B?Mmh4M25VNzBrSzhFd2tjQnJXVEg3Z0tOSktMZlU3ZU53RXROSGdNYWdKRmw3?=
 =?utf-8?B?M093eWVqWVp3RUpINGQwQlJ3U3FrdGlubGdoUHBveFRORXZtUWpqY0gzdlFY?=
 =?utf-8?B?RjhQa0pWZnRiWnZuSzdveWJEbkRsZlJtN2l6eDJNRlZ1clBwa3R5LytyVm8v?=
 =?utf-8?B?cEVMRXo2NjgxYVgzRG1FVy9BUUUrNXE3azRNSHpVVkJGdVJoUU5VYmNlOFZD?=
 =?utf-8?B?dzNmbVV4emk1b2FncHNuSHU5cjByR1djMXpPa1Era1NBcU56R2IwNnhESmZQ?=
 =?utf-8?B?aFYxbzFMUFRmTHdIT3Q5RTBRRlRlMjM3UnZMY2JoeDhvTXNFZzVXRDJlbEFB?=
 =?utf-8?B?ZWhySDJnRUFxMDExV3pLWDRKemNvWWRzd0JNYlhNT1ZENkNzRzc1aUNTaDJC?=
 =?utf-8?B?OGpBblI4MEY1Skh6V0pLS1V5V1pHT3JackZobWlER3ByZjBOMm05YzU4Z1Jq?=
 =?utf-8?B?cklWbjI4NEgwN2ZpT1E2UytEYzYyL0lUblNzYjJON0M4MUZkKzJkQmlxZjVR?=
 =?utf-8?B?TW5WYzZJczBaeGh2UUFCOEE1b2pEb2xUUEhreTB5eFVXQnJNZFZkdTducTVJ?=
 =?utf-8?B?RVQvZllINWg3WktYcWtSek9VTmpLWERPejZIVk1jdERDeGVzOVp5MEhJanVY?=
 =?utf-8?B?SlpyS1JRdy9ESld0OTlHTm0weG9vZEFudStuUTRpM1NxNTRBSExqSW9tVk81?=
 =?utf-8?B?TlJYUWx6cTBJaGlSVnN3WE0wL0tWTklzZUhnUUd6dTl1K3daWGF5QWQ4bE9P?=
 =?utf-8?B?bW9nVmRBSDBRdWxHb3hyRC9pcDI1SEdRYm9DZnFFNU5YWVJybExGTlF6UW9H?=
 =?utf-8?B?anRhYlBZdlE4UDl6WHZQd0lwclFHV2ZRZ2VuZTBhbkxEbTNDekpuMGJkTHl0?=
 =?utf-8?B?d2JrZWJiTEhiVlk4UjBvQ1lwUS94MGc2WEN4Mm1ZL29DaXA1WTQ3U3lKdXV4?=
 =?utf-8?B?NHhTelBKT09VbGo1OHRKQTNjSHhKRVZnWks4aHlXSS9uZ2pmbXZvY3J1MU52?=
 =?utf-8?B?czBoNlpjQ3pGVlZON21JVjE5VGZFZlYzNHFjR0tycUk5eUN2QjVLbEY3cSt2?=
 =?utf-8?B?Y01SQjJzNGRkTkVGS1lzSnlEY2g3Mm1GeFZvdlcyc2NObmZKSG0ydXFMbW9T?=
 =?utf-8?B?UzRSdFBTaFgyVnRPYm1iTFhRTDZrTzlwVUliNXJkOU1Bd3duZFVKL0dTNENK?=
 =?utf-8?B?OWlDWjZlNXBHOHFzTHZTdDlRUytEUTdXQ3Fkc2xCQ2EyZFpObEhnVTZMNjVQ?=
 =?utf-8?B?N3c3NU1pUXR0Z3N6SG91Q1MwRHo1MlVrem9KZlhXMFZKUU5zMGxCSHlkTGEr?=
 =?utf-8?B?cDlOajlDWlBjcjdJUG5VYXlBS2lqSGlZa1hRVDVrRkYwc3gxSXRjcE4wK0kx?=
 =?utf-8?B?UGlHNkRvci9SZnJWcjFGNHhsWGJsc0s0RFZSNUtxZ2JOSXM2NWdTSWsyaUpR?=
 =?utf-8?B?bXFKdnhzUEhDeC9FREU4azNsQ3FSL0ZON0g3OG1IKzdJZzd2M3NScXhhR1dv?=
 =?utf-8?B?eldaTTlCRFNIUnlUZkltTGJvajkzT1pFdVgzTDE0TnZVblJCanZyTmwxMG9m?=
 =?utf-8?B?MEEyaFljWUhtYXExQkJNdllxQkhyV0x1a1FpbXE3RnBPNTZHc0xicll2QWdP?=
 =?utf-8?B?SnlnelA3SGljeGxKQ21MZThmR3prTDFVaFRHd1ZYV2hiRkdvL21keXRyUmFx?=
 =?utf-8?B?MDJDekI3cEpCTXNBK0F4c04xU0Z3RVU5SWxiYTFWVitrSVN6N2RpMnJxZnhq?=
 =?utf-8?B?RmgvMi92M0szUjAyd0M3TDAzY1MvblBzbDRFODlIYzBIZHBZdTdLL09mdUFR?=
 =?utf-8?B?a0FCbUpnbnp1NkRxYXh5OC9XSWlseHJOSDBFMmlPOUhKeHNTd0RrU1Vuek1U?=
 =?utf-8?B?Um1Hd0YyVERvdTJRbWlJdEkwNlVYdmo5elVBbXFxaTZMN01mdGJZRDJoVzBP?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b65cbd8-6d8c-455a-b6e3-08dd2f1b4242
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 13:00:28.3380 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MmH4SLkhrEf0wkpaa7Tmn6Q6mHardSVPczxhVa9y6m3DOGsJi6tR33g+bk9L0D/EITVobXH+YULnMxsF2IuCqT3oK9h5WqBPa741nxHufpk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6282
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


On 1/6/2025 10:21 PM, Mitul Golani wrote:
> Add scaling factors to scaler_state for a perticular scaler user,

typo: particular

> use it later to compute scaler prefill latency. Also to extend this
> when either pipe or plane scaler is in use.

As I understand we are adding a new member to store the hscale and vscale.

Here we are storing only for plane scaler but intention is to store it 
for pipe scaler case as well.

Perhaps the commit message can be rephrased better.

Regards,

Ankit


>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
>   drivers/gpu/drm/i915/display/skl_scaler.c          | 3 +++
>   2 files changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index f230163226d1..67c49a1d0232 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -711,6 +711,8 @@ struct intel_initial_plane_config {
>   struct intel_scaler {
>   	u32 mode;
>   	bool in_use;
> +	int hscale;
> +	int vscale;
>   };
>   
>   struct intel_crtc_scaler_state {
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index ae21fce534dc..6c69545fe172 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -424,6 +424,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
>   
>   			return -EINVAL;
>   		}
> +
> +		scaler_state->scalers[*scaler_id].hscale = hscale;
> +		scaler_state->scalers[*scaler_id].vscale = vscale;
>   	}
>   
>   	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
