Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A76B0B220D8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 10:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FFBF10E0FE;
	Tue, 12 Aug 2025 08:29:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fjnbBn14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A8510E0FE;
 Tue, 12 Aug 2025 08:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754987368; x=1786523368;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lvT8gO6OAa2sOq/S4JTSeaGa0hwf5tLMGR1yuUR0QJY=;
 b=fjnbBn14zVVKi9SedAo8a0UADAGA6ZJ+gKMMOaYuCCRt159PWk7+IzyN
 mggL9ri8zzY51pa4rwWZ0NsdRTyA2IBqJ+xlh55tSyDQngyBC8vKReavF
 Wol3TQryRLHISVYPv6N3bwUBgWAAp+PylDbB+TEYQhle2HPqmYUlFp/SY
 2pv2SbTvFKQvxvu8rSxjnbJyWb3Glr5rgmgwKSc+iPUigQSLOi/IwfH2V
 2FmrJIYxQiteiA3xTh7kF4Y0m7cx03BUHSlzYyDbkVbwdVmghTT215s5U
 ucFhnWdu5lRwub6yk+HJMbvcr+7Bmm1gi9l30yy4bODF9Lny0GzWu3Y3w w==;
X-CSE-ConnectionGUID: MpKvSdLfSBadsjh9qZpxQQ==
X-CSE-MsgGUID: gPv0iUP1T7Wk2E24Y9LReQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="67856345"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="67856345"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 01:29:28 -0700
X-CSE-ConnectionGUID: Bi2ZiaARRvO2cGYTJU88Fg==
X-CSE-MsgGUID: j5m4FOirTo6pIIE3UPW7rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165640390"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 01:29:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 01:29:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 01:29:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 01:29:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n7JzdjCIfyX8K7xQBuxAYyvmTKrIYfpipxQiuAmV3aohnDYLWHHQj3oimz28tGpM7x+w1gXdbJKBr3qTwqT6Rlan5ejrgTYrH830uR8hMaOBcmpddeBahh2a7L/s2oaQLTTMS5ZVoz9VUlnRFPw2Kq9YYrFXt+WS/ilY366cXDEd3LGUlJiuvCbTa2XjQm+7bMh5IWlTsWTHFJ9ox2i0ayHr90C90xEUtCwwca/nmXuoXrDrONL0HGL3xNgFl4GTmYfgIgMSkaOIbvjeuRAG0hq6ZZ1d5ax9Tt50RtXKh2tzvve98SFDW7hF+hOikHITVh8d3ydTSGfew3ez9tnr2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J3GZVu5Id0DjxKlhboCXrpamdP/A8g8gSJ0HD8cRjtk=;
 b=c2BoHZ2zCmY8CGDrlxoyOXXd1ilgaV8nnAc8jQ2vIQ01MeLNc5TlFhpdhvM60bDBuoFN0wixQNcsODgBK5dyKZkvQZ7H9aZBcQF04p1MYuwRQldWu92UEr7zeplgpX3NNL6T3qisT5phWqrDUJQmrG+fwdODzkmmviEDsFfv7F/fVUghCTIfLGwwui8aKiFSPULKGn02PHb2pxrK8kEZM8/7Ai0oDy+xZD0eB/t9zRbt5Rh0JzIUhL8J7QzuHuAKBgIbNROG7YnC9MkdLBm6Ae8N8KHJ7wfX2YRdkg/9jQplcpJHWCpg4A3DREBuClzf5varmRTi1FtKAsdF5dPnPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6430.namprd11.prod.outlook.com (2603:10b6:8:b6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Tue, 12 Aug
 2025 08:29:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Tue, 12 Aug 2025
 08:29:25 +0000
Message-ID: <09a9f2b6-adbb-4d3f-a5a0-3652b7cf1661@intel.com>
Date: Tue, 12 Aug 2025 13:59:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/7] drm/i915/vrr: Prepare to Use TRANS_PUSH mechanism
 for PSR frame change
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250721111406.1468064-1-jouni.hogander@intel.com>
 <20250721111406.1468064-5-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250721111406.1468064-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6430:EE_
X-MS-Office365-Filtering-Correlation-Id: 0523d5cd-2d05-48c0-a619-08ddd97a58bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OGh4UzdtRkZqQWhpZlpPZFpvVHRjYW5OVUZGdTg0dmp4T1IxYlpiOVRUYmxL?=
 =?utf-8?B?cmhlcGFhbVhQRWdpY0FWTnc3K2RucjBzNTB4SytQMUVxWUdFZHE5MnBLbCt3?=
 =?utf-8?B?NlVobndEem5STjk3U2xYeEVLdEl6ZnEwS2VTU1IyQzNvZ0cwUFNTWjM5OUdz?=
 =?utf-8?B?TGZ3NlZxTGVOMEpIdFVJZld0bEFVNmltUEd1cFRqREN4ako4djE0VVR0VnVw?=
 =?utf-8?B?SGp1NlF1U3Z0NDZwTjk2K3BvblJNdlRrS3M3bjVnQk9nRlpPTlk5blZaUmdy?=
 =?utf-8?B?T081TC84RmVzS0NxNnRRZnJQRkI4RVVIaUNNcUtibFlRc1M0R0FjM1djL1E4?=
 =?utf-8?B?RmJhYnhmbHk5SlljOGdGWS80VlJPaGp5dXlxb1hTQ3JQL09qM1FJV29MR2E5?=
 =?utf-8?B?QTl0U3BNU0o1cExCalI1ZnVrZ0I0SWZqQWdNZWpDYVhOWWUrcjN1QzlkcjBV?=
 =?utf-8?B?SEtjN2Z4Q2Q4M2tuOVo4UnE3WExaOXg3U2cwYmVRazNMZ0NOWmNTMTBzcmd3?=
 =?utf-8?B?TTltOURIdVN6akRZbklzV3lIRm5tSkR0NFhWOUxLLzhqWDBvR0FrTjlPcEFH?=
 =?utf-8?B?cm11YzVFc282UWxSRWZpajdQbDRXTzZVMTFRSlpXNzhvT2JJMldtbHZrakRQ?=
 =?utf-8?B?bXBxbDNuM2xzbmV1Q2NQcmkyK2hWT3F5SE5zNVlSbnN6ZEluSlg0bHZUejgw?=
 =?utf-8?B?NENKK0ttQzhaT1pZNDRtOXdqbStObHdRTFh0TzJjVXRlQW1QSWQwN0VaUTlx?=
 =?utf-8?B?aUFpcUpHa0YyUUt5cWZicWVYcStlWWEwZDIzT3Brckg1MkxndHhwMi8xR2Z0?=
 =?utf-8?B?ODhrVmVUcE5DN2svYzBueWtXTlhwcFRZQldUMTJraUZqcHdubzJ0SHgrS1Fz?=
 =?utf-8?B?N1Erak83RDZ1cUNRZlRJc0V0aWR4bHk2NnpMaUU2aEpkSzB5Qlpzdk5TRjB1?=
 =?utf-8?B?YUlDbW9VbUpuN3VPM2RFQ0VWWXV6TEZmc2x1TEpwalF4RS9PbVZpM0cra2lM?=
 =?utf-8?B?VXhJajVWR2pGTTdFdWJ1c2pWdGsyQkdxZGw5U3F2RzZ5YVpIaWdQTGUxU0g0?=
 =?utf-8?B?VURjbmRubHpUM296T09YVUZ5dGlrQTFTMEFCNGZ1T2dVYzZUYzZ1T3N2ME1V?=
 =?utf-8?B?MnM5SzlIZEdwaW9xT1MxYUVpV3A4MUhpb2NlL2VIc21iVzFTbTV2YU9FbkY3?=
 =?utf-8?B?UnZkblVCN0k4ZkpYR3RpdTJPeGUxVjRPMXEzemJKZGtHU3pHbEFtTFJpenlJ?=
 =?utf-8?B?SHRTZEFmRTg4bDJrdTFmemt5VEdLTk0xOHZaRm9nK1lZSXNCYjZoSmxKcDNT?=
 =?utf-8?B?anRuRzAreGcxWXIrRHRPSlJBUTd1NVNodUFUQmQ0S1pmV1d2S3Q5a1FLSE1Z?=
 =?utf-8?B?QnBvMHJabFpFWFlHN0FpcHdBVG14UEI2cU5NL1NBM0wrSGk0aUxSREdEUGdY?=
 =?utf-8?B?dE9NWEJZLzlSYUcxWXdKZEUrU0w1MDFHSDJKMDhVSGF5YzdvWjRONmdEVzFT?=
 =?utf-8?B?ZlVFaWJTU3pGNlk0NHBFWHJEaDZvQTBlMkFYMUhSS0JyMEpjWVRobHpsc01W?=
 =?utf-8?B?cUYvVjgvY3BXVm5FL21lL2I5U2QzRDNhT09ZUmZFMnJicEFJaVRGRi9CWEhV?=
 =?utf-8?B?b0tyZDYvQXk4WjN5QnQ4aWgzdlIvU2tTNVFXRTFnRExVeDZzWUxJTzZhR0VK?=
 =?utf-8?B?RjlFVGl6QVdBK1lCYVZUN21qNkxPUStuQXczLy9ySlUwTzBTYllPQ2N0UUh1?=
 =?utf-8?B?azNiSlBlRTdDMDQzSXB4QUErUDFxOVpMWE9Va0dHbXkxYTVCVEozd1QxU0tq?=
 =?utf-8?B?QXYxZ1RJbFFYbC8zakY1VmU3N1RsbmdWL0pBOEZkdGJ1MjFleStVMVJhTjc4?=
 =?utf-8?B?cys4T3cvdGRVZkkvcW5Sbnh5UDExb1hVUHNvRHhEU0dEYkpObW1hckszQklM?=
 =?utf-8?Q?XQ/Y4s+QlRw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzNmSlVTaWwvSEtJU1RCeHU1KzlUZ1pJQUVLNFlSd2hjVVN2RTFBdiswdW51?=
 =?utf-8?B?ZDdscG93amg2eVhoT0tOeFFaOUI0U1FiU0pHWVZUTnUvR0crY2piWmpLNTdn?=
 =?utf-8?B?QXU4TzZYVG03eS83MElRNFpwUnlCSVhkTHpDeC9ZVnZjL01jWnNRZjRNc2Ro?=
 =?utf-8?B?V040QXp3S2o0ejh3eXVaTUNoSncxYlc3eXFNaytaRUtOZjdPbzVuMWZtTGJ2?=
 =?utf-8?B?YnVhU2YzTW5TUEhZc1B0OStSRS9HMG5WeFRmdm1OejFTdDhPaGlrZWJUdXkw?=
 =?utf-8?B?N0V0M3ZZVCtnYWxGbG55aFdOa240ZnhJayt6bzY1ZGFnV0I4R3VjaTc0bWVl?=
 =?utf-8?B?QmYvVzFhMXZYSFc0ZkJQUVI4emVLTXAxUkJYc0t3Um5uYVJzTXkrMkVUZ1F5?=
 =?utf-8?B?cjFFNGQ0THRlZnQvT1IwYkNTTGhsNlJUa3ZXT1JMNVRUUGtXczFIVWcwWU9j?=
 =?utf-8?B?eUhuU3o5OWVBQktMK0ZNdlBOZ3pYVDJhcUFnZ09lajViQWdieTVyRnd2MHk0?=
 =?utf-8?B?SE5KRmcrd3A4S0Y2eUdzOGZVdTFJYWE5Mlo0SS9pbmFvbm1maG9ERVRoay9x?=
 =?utf-8?B?VHA4YjF5cjQrSFhvaEdwRXpoVTE0K1EwUm5DRnovYVFSNmdURjVNNEFHNHh0?=
 =?utf-8?B?UnNQdXJJUlAxK0daQU1NaDdBeExFdnQyRkVORnlkZEl3UEF3K0NWNFY1YVMr?=
 =?utf-8?B?ZHU1Q2xwR0JESkw2alcyTnpoZCszTVJvcXV6WnBNcXlSK3NUbXB2eEFWYVNK?=
 =?utf-8?B?a2ZKT1hBd2lUVlE3VCtGdzYrT0htaWVlZmd0dW55d2lCYTVQaFVzYjc1OXBP?=
 =?utf-8?B?K016YWVWNWt0bGcyenlwbEVTdVIzS3M5dHl5UnpxYm1CZjlZVGgwQXVOcy8x?=
 =?utf-8?B?YUMzVkVQUEJGV2NLWlJEL3d1K1I1Rlp6MWpueWVBWE5pcTAyY2NHRDZRRkho?=
 =?utf-8?B?WFNhcW9uanN1clF2OGoxL08zRU9YSzMzYzd6Y09DUDZLVDRtbEU2QnphQzlj?=
 =?utf-8?B?RUVEVXYvMjZMM1dSdEtBYWE5b3I5NVdMOGtCOXJ0Y0FyT0E4TktnWlVncVhq?=
 =?utf-8?B?cHcyZi9nYUpJblBkWFYyUlRHN1JDZGJpUGlGZW1pQThpMStFb2hOR1ZDODQ5?=
 =?utf-8?B?RXZsWko5dXl0VW1VUWpQcUV1c1VaYzBNbUlCSXIvcGZGd21Rb3JNc1AyWDhI?=
 =?utf-8?B?SjFwT29WQWhoczFQS1U1T3VoSGEwQ2hvR1hwZ2tVRlVoZ1JTS1RVZzMvdTdR?=
 =?utf-8?B?TXcxeDdOTTZjSk9lOFkzRDVpYkE3Tk5jSFZGQlpKYy9JaTBCRUVJcVp1cUhv?=
 =?utf-8?B?TFBWZU9iL1B4b08yd09KVklheTVaYWg1c04xYkJTb29TT2o3ZTRGdHVzeXN4?=
 =?utf-8?B?ekNqTmV0eVlXZFFxSjQ4N1Z5S3JCWTN3K20rSXRTQkREN2JnTHo5TldNaStM?=
 =?utf-8?B?WTBmWlRzdlZwTys2aWV1bUdJSkpSeFZPUld4cnIrMU5LSkNPM2s5YVVSaTVZ?=
 =?utf-8?B?NXRLNjIvb2RwWHBRMzY4UzNVeE54dHlhUWQwSjhZUTgvWmFTdjhYRGloNTBr?=
 =?utf-8?B?MjZaeVB1VjQybUx6SXcxQUFkc0R2WG1DYnVyTEt4THljajV0OEh0aDFmU28v?=
 =?utf-8?B?eHNkOWhEeXUrREJNdi9FMUtlaWZoUEFqbDhwbGdrK0h6M2lUb0VHOTgvRWlW?=
 =?utf-8?B?RUJrbk1Od1RmUnhTRDJHRE40Nkh4dnZmK0pTWTdETEM5dm9BN2N6d3J2eWJI?=
 =?utf-8?B?WE80OVUxTGpZdHRIbC9iRHFVWUFLeWljRWdZQ1ZNN1RhK1BBNjNMSWJ6eXY1?=
 =?utf-8?B?RlJ2TXk5VnROU0hvcmRUVWdyZGo0WmlZNG1LdjJFU1Q2clBaRE45VXVoQTRH?=
 =?utf-8?B?MC9PRUVKQW9GRHNpOHJiVTJ1QVJvanJwVHlsMmR5aUtGNzE2S1d1dWxQcU5U?=
 =?utf-8?B?TXVPRDNCT0s1RUVHdTk1eEEvdzJJTkVmb0o4cE1USHIxZ0Q4b3Z2YmhGdFN3?=
 =?utf-8?B?dGR1N2FaaEkybDBTd25BNFFoZjR1M2grZEdZaW04ME52ZUIyWFVNMFd2QSsr?=
 =?utf-8?B?NFpzek10WTNhdVNLLzZ6RnVMT25HNnBoc2IxZEpiU2dERDdWNmFIdEF4S2Vm?=
 =?utf-8?B?dk1JcnJ6VEUxdkdkWENmbTJnUUhHVTRRNml5cmsvUUo4T1ZFa1NEMWZjSGx1?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0523d5cd-2d05-48c0-a619-08ddd97a58bb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 08:29:25.9007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 99Szr6ik5QNQkgancDsd15dPwKP1PA3TrchM1CDOWPwQwFnLJJTE0IlHEWrkUO7KILYldfQkZAyJx5h7Ik8GLWrzqw/Z+YnSBj9FHHDmElc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6430
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


On 7/21/2025 4:44 PM, Jouni Högander wrote:
> On Lunarlake and onwards it is possible to generate PSR "frame change"
> event using TRANS_PUSH mechanism. Implement function to enable this and
> take PSR into account in intel_vrr_send_push.
>
> v5: use intel_psr_use_trans_push for intel_vrr_psr_frame_change_enable
> v4:
>    - use rmw when enabling/disabling transcoder
>    - set TRANS_PUSH_EN conditionally in intel_vrr_send_push
>    - do not call intel_vrr_send_push from intel_psr_trigger_frame_change
>    - do not enable using TRANS_PUSH mechanism for PSR "Frame Change"
> v3:
>    - use rmw when enabling/disabling
>    - keep LNL_TRANS_PUSH_PSR_PR_EN set always on LunarLake and onwards
> v2: use intel_vrr_trans_push_enabled_set_clear instead of rmw
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c |  4 ++-
>   drivers/gpu/drm/i915/display/intel_psr.c  | 11 +++++--
>   drivers/gpu/drm/i915/display/intel_vrr.c  | 39 ++++++++++++++++-------
>   drivers/gpu/drm/i915/display/intel_vrr.h  |  1 +
>   4 files changed, 40 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index a187db6df2d3..5233970b95e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -723,7 +723,9 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>   	 * which would cause the next frame to terminate already at vmin
>   	 * vblank start instead of vmax vblank start.
>   	 */
> -	if (!state->base.legacy_cursor_update)
> +	if (!state->base.legacy_cursor_update ||
> +	    (intel_psr_use_trans_push(new_crtc_state) &&
> +	     !new_crtc_state->vrr.enable))
>   		intel_vrr_send_push(NULL, new_crtc_state);


Currently with PSR, vrr.enable will not be concurrent.
Is this required for concurrent Panel Replay + VRR?


>   
>   	local_irq_enable();
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index d7c19b053fcc..172b1070c7b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1950,6 +1950,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>   		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, true);
>   
>   	intel_alpm_configure(intel_dp, crtc_state);
> +
> +	if (intel_psr_use_trans_push(crtc_state))
> +		intel_vrr_psr_frame_change_enable(crtc_state);


Not sure it it will be correct to set only this bit, when TRANS_PUSH is 
not enabled. May be we can use a flag and use that when are 
enabling/disabling TRANS_VRR_PUSH


>   }
>   
>   static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
> @@ -2336,9 +2339,11 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
>   		intel_pre_commit_crtc_state(state, crtc);
>   	struct intel_display *display = to_intel_display(crtc);
>   
> -	if (crtc_state->has_psr)
> -		intel_de_write_dsb(display, dsb,
> -				   CURSURFLIVE(display, crtc->pipe), 0);
> +	if (!crtc_state->has_psr || DISPLAY_VER(display) >= 20)

I think it would be better to use a macro HAS_PUSH_WITH_PSR_FRAME_CHANGE 
or something similar.


> +		return;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   CURSURFLIVE(display, crtc->pipe), 0);
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3eed37f271b0..9db6127abeaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -10,6 +10,7 @@
>   #include "intel_display_regs.h"
>   #include "intel_display_types.h"
>   #include "intel_dp.h"
> +#include "intel_psr.h"
>   #include "intel_vrr.h"
>   #include "intel_vrr_regs.h"
>   
> @@ -505,16 +506,23 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 trans_push;
>   
> -	if (!crtc_state->vrr.enable)
> +	if (!crtc_state->vrr.enable && !intel_psr_use_trans_push(crtc_state))
>   		return;
>   
>   	if (dsb)
>   		intel_dsb_nonpost_start(dsb);
>   
> -	intel_de_write_dsb(display, dsb,
> -			   TRANS_PUSH(display, cpu_transcoder),
> -			   TRANS_PUSH_EN | TRANS_PUSH_SEND);
> +	trans_push = TRANS_PUSH_SEND;
> +
> +	if (crtc_state->vrr.enable)
> +		trans_push |= TRANS_PUSH_EN;
> +	if (intel_psr_use_trans_push(crtc_state))
> +		trans_push |= LNL_TRANS_PUSH_PSR_PR_EN;
> +
> +	intel_de_write_dsb(display, dsb, TRANS_PUSH(display, cpu_transcoder),
> +			   trans_push);
>   
>   	if (dsb)
>   		intel_dsb_nonpost_end(dsb);
> @@ -609,9 +617,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   		       crtc_state->vrr.vmax - 1);
>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>   		       crtc_state->vrr.flipline - 1);
> -
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -		       TRANS_PUSH_EN);
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0, TRANS_PUSH_EN);
>   
>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>   		intel_vrr_set_db_point_and_transmission_line(crtc_state);
> @@ -627,6 +633,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	}
>   }
>   
> +void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_rmw(display, TRANS_VRR_CTL(display, cpu_transcoder), 0,
> +		     LNL_TRANS_PUSH_PSR_PR_EN);


I think you mean TRANS_VR_PUSH here instead of TRAN_VRR_CTL.

But as I mentioned earlier, instead of setting this bit, it would be 
better to check flag and set the bit in the existing place.


Regards,

Ankit

> +}
> +
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(old_crtc_state);
> @@ -641,7 +656,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   		intel_de_wait_for_clear(display,
>   					TRANS_VRR_STATUS(display, cpu_transcoder),
>   					VRR_STATUS_VRR_EN_LIVE, 1000);
> -		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +		intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
> +			     TRANS_PUSH_EN, 0);
>   	}
>   
>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
> @@ -664,8 +680,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   		return;
>   	}
>   
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -		       TRANS_PUSH_EN);
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
> +		     0, TRANS_PUSH_EN);
>   
>   	intel_vrr_set_db_point_and_transmission_line(crtc_state);
>   
> @@ -688,7 +704,8 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>   
>   	intel_de_wait_for_clear(display, TRANS_VRR_STATUS(display, cpu_transcoder),
>   				VRR_STATUS_VRR_EN_LIVE, 1000);
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
> +		     TRANS_PUSH_EN, 0);
>   }
>   
>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 38bf9996b883..6f815fd05c36 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -30,6 +30,7 @@ void intel_vrr_check_push_sent(struct intel_dsb *dsb,
>   			       const struct intel_crtc_state *crtc_state);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
> +void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
