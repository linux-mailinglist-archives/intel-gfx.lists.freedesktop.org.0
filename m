Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8015AB254DD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 22:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1424E10E7C4;
	Wed, 13 Aug 2025 20:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VJv6Gz9V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FBC710E7C4;
 Wed, 13 Aug 2025 20:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755118700; x=1786654700;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=A5oCVXV+c5FKILp0Get3TaIvWWmA7NAZe6uL8iRtAUY=;
 b=VJv6Gz9VXxO/FdRzM3FdFxR8lvQZEiLtyy2heG0k4HLldVR8INZArELN
 nKQ60u8d1ba1ZSO+0bG8ScErfDItVxLiCpbAnZ8On5AHaQAzxFrlAJJH4
 H36pyMEpnBBazuU8wfENnC9r3kHSmwqPBmHZT+w1wR4GZhdYHqC2q1JGa
 Do7Nl/vkLLuW6ceQkCpK5aPZxtOf7tam7fGNlN28sSviv/bijxe3vERE2
 eIHs0t5ONtbzb0hOejbTFB1drqUZXoDCV7PB2PLLFSwayf/KU1JYC18AN
 XzBQaEjvIoy8nfl3DbBOMwjz6ZJRnY1Aqdo8mYP2RKgnSqXIag2ag7caV Q==;
X-CSE-ConnectionGUID: x8fOj2czRkauF3/v4zPukA==
X-CSE-MsgGUID: GPmEr+c4QSuEhjcBZlLh1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57577972"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="57577972"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 13:58:20 -0700
X-CSE-ConnectionGUID: nwbvpNWxQZCCg8lbiqFpAg==
X-CSE-MsgGUID: fM5aNHxWS8eGPIuXDUFpmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="165801052"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 13:58:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 13:58:19 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 13:58:19 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.79)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 13:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hfc+dUTTgKShWZH5UwnrWPCKoGNGNsx0XD3cCurQ8/qTFxrvHgA+2AoGl2BuNZhbWYri/okE2xlFCx33ev/PNKTk19DMhg4pGhJpkA+yyqYt/aAUVUzrvEGZFdnYjicVy1YNS3QTvsFBgjvGIbHnPX5wna9U/88eY4YrZlNYluBLGK+xJjJg0WtN9uJ6z6qwAfdsna8ihl83NuG1SSKL2gmxN6qfxkijrUWY2V1sM8k3mbyb4ct0CQNQupAlNWgKiy6Q3gbG/sRMs05ysrkMQaaOy6Dy6IcIsW6bXZo3KSN9qePM9vHsq6/g2J3DwNB/36HRQ4/2pAZ7LQHYiR910w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ku08HtAkuXZttHfhNLhmY6fVKikoHNOk5R0Fd6J4j8=;
 b=jb9o6cu356C1ZuA/JUdQS+DcRojjPXn+01wNBWZK04MNE2Ww/tvLiOhsnOHPl09Iy9CMT6aV08dHMNFSzZ19/8C5sGQr+MvLucInJngcQDaOdcb/6kwm4GOUmUYEVATvjiSyPzM5R1fX/f3NCVE+/WmLGq3n+sDT5SG2erpjCB/1LBnc/WY5NcSVkOu2m6Muzt5NgoW/75UwhEoqCdbaSZit5rWb+C9m/favCdtKMHCRjoGF4Qm0wOT5YxDANgMleY7B/W2SI7VKn2ypY+m6TfZWf8qHChjaQyABOePsWwxRO+/BoyO1nVtR6Ys1ij3GDSkERttU28mORxiePW+tEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB5092.namprd11.prod.outlook.com (2603:10b6:303:6e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.16; Wed, 13 Aug
 2025 20:58:17 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Wed, 13 Aug 2025
 20:58:17 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
Subject: Re: [PATCH 00/15] drm/i915: drop __to_intel_display() transitional
 macro
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 13 Aug 2025 17:58:14 -0300
Message-ID: <175511869481.1765.3430579261602699296@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P222CA0028.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB5092:EE_
X-MS-Office365-Filtering-Correlation-Id: efcb3a63-49ec-4002-df1d-08dddaac206f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?em1IRVErVVE2VSt1WE9VaW80V0hNdGptOXpwVzlndWFZdVBkUFdTdEo5ZitY?=
 =?utf-8?B?N3J5NlVHWGM2a2ZqN0h3Y3RnM1ZabHdlc0JkSUIvTGFScjduVzdxdWNnbTY2?=
 =?utf-8?B?OGFFeUcrSUNMWEUwK0J0U2ZKTzBrb0o1MmdkVlo0Q3hOaGE3YTZzSXhpTFh1?=
 =?utf-8?B?UlFLUVNLWjFMcE8zS2tOVERBcGJhTHpNN0tpazhoajNid2ZzL0hXenU4Lzhq?=
 =?utf-8?B?NFBnTjFDc0x1N0xEMXp6bkFHNWxCTW90eURFU3ZCeFRLSjV4RGMxQ3FpVjV4?=
 =?utf-8?B?dVNQM2VnWCs1b1hjNDVhTm84MDd0eC9kSEhwRHR3YlVNQ0kwQ3JjcVFpMTRU?=
 =?utf-8?B?V2hpTllnNk9GNW5RaFhxRk90QnBPcVNaZWxnNlRzUklHVTRBcE55T1BUbGo2?=
 =?utf-8?B?ZXQvU05nRVRPcUhGTHJRME52Vjh2N200QzA0bThaWTdzQUlEVmN6MFB1SWRB?=
 =?utf-8?B?MkNRSEVYeldvb0dST1U2U1RJeURXWDVteWs0VjR4b2VFdGpnd1FuTnRNSEJC?=
 =?utf-8?B?Yk4vbUhnQWF3Q0c1b1hUbGg5aXJ2bzNCckI2eTUzTytLNDZKM0E1UFBydWd2?=
 =?utf-8?B?STVDaWtmTU1GSXBEYzhoNjBJdFhZZDNyU3lXREVuUU1rQzBCR29VUGJMVTBz?=
 =?utf-8?B?RENDRlI3MnJSditGdWdSRm5FTWdjQ3lyelA4bk16eFhRbXNmOVBRcmtOZG9i?=
 =?utf-8?B?UmRtUTZBK3VmZWdiSUx0T1NrTjdwNEZaeGk4alduMGtVOTUvR1lHMUdxTzBJ?=
 =?utf-8?B?UGVSTW1qSGJNTk4xWFNobWErNjBVMjI3QW1ISlBocElZZWpuVnBRWmVCQlVB?=
 =?utf-8?B?UUxHeGN4dDlESG11UHlYV2dCZGxES1RmcHRsalQ5NzZUWTZHVGhpWGFVVDNt?=
 =?utf-8?B?SHRoaTd0eDlSOEdGYjh3RGZNSzdML1NzY2syWEEvU0NOQnVpTG9IYXlFbTUy?=
 =?utf-8?B?RGVMeVQ2RXhzT1BkVFVsaFJGdXhEdkhLSTl0akdGa3pxaHpwdjhKMWNlK1lh?=
 =?utf-8?B?YndSMDdYR1pqTXRXN0lIUjdBNVI1bm9rbGxrWVVhcjJEb2ZnSEJyeVQvMHZD?=
 =?utf-8?B?OUp4SnNqdWs0dmZZQlNWaFlLcWFhM2d5Q0I4bDFBSW1pamFta3E0ZkNWRGcx?=
 =?utf-8?B?Y3NtNmdCQllEN1RXdWtXMUpFZXZQdGV6QjVhbDVldENwcjB4Z20xYU1JUHFt?=
 =?utf-8?B?UDVJdVVvaWI5cEV1aTdKVEVnbzdnWnVMdWZhenJPY1lENi9MMzlrblpSOWZm?=
 =?utf-8?B?YmlzVXE3Ym5xLzBhU3c5NFFQTnRvdWhKTnZCUWZDK21MdWF2MFhUajJvdkln?=
 =?utf-8?B?MXZVRjlocFdHM1IwRmttWXo1MXFrTVFrY3BvV284aDdNQ1VZOVhneUpuR1V3?=
 =?utf-8?B?eGxsTDErMW1pMHBiWkQvODFMN2R2R3V2TTNUbXgzclpNMnNjM053eldLWmE2?=
 =?utf-8?B?MDRPYStqMkEzK2RER0F3cGI2bkQwL3BZMWx0aDFIMXFIcmpnS3VDNkpNcStV?=
 =?utf-8?B?bXd0UkNOY0lIK2JmTk8vRUk2cjBHRmtiSDBHaGtEQ0pUQ0hKaEVkSGdGVmFT?=
 =?utf-8?B?NGdrVnZvWWlHcGlJQU9DR0xNbTRXMUF6R3BFK291L1hqUXJNU1ZTRUZTemhM?=
 =?utf-8?B?YUlRdUxOcEUwYyszNDJOTkErTWVURWVlamVQSndyVVd0VEZ4bmhTcmVTclMr?=
 =?utf-8?B?eFA2WlNEcmUrTmRKV2tjbkxlTUROeC8va21lNDUzSmRJZXdBclg0WGFTQS9i?=
 =?utf-8?B?My95Z1lIT2FKZUVoZk9zQzJ5RkVORzBkSGZCZ3dleThkd1pSclpQTnhVbHRM?=
 =?utf-8?B?UGp5U1RaZVRzcHlReEFJeXAxRTZjaUdCZkljUHlpWEExeVZXS284aTFHQXZa?=
 =?utf-8?B?ZVdZUWVIZnNMOVFCZUVoNGZJa1orOE5QRWZZdzQvTkYrSmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUdUUC9ubStRUHBRNDBLUmJscFllaTd2V3o3ZnVYSHZ6cVNJclFvZTRGMzEy?=
 =?utf-8?B?Z295cUZtUU5GUlE5d1IzeTJOc3pVdFQvaVVlbzhZa3BZSkxIVmNPbDhNWHpt?=
 =?utf-8?B?SEVRVmVwc3FZazY0ODg2Tjh4Z05MSHl4UmNMWXg5bDJ1eUFuUE9VR05MTWRp?=
 =?utf-8?B?c1dqNTJsV1lMZHBlZmJnblA0OUVBSjRBTFI1ajBpeDE5TzJuSnBQTXhUM1Z4?=
 =?utf-8?B?dDNaVGNySGIrdFYyZk03RXllTzRtWStVdWpTbUFENmNQQ2NUaEhmaU9NbVFa?=
 =?utf-8?B?cVVWYTNBK1h1ekY4OG5TaUdRZzl1MWJ4MTNCY2ROK2RVV0t1bXF2ZUhwUTV3?=
 =?utf-8?B?YmFkNHRQNDM3L1BkLzJNclI2Q1B1WldZekZhSFpkcTJVa01XYnd0VDBpZ3BE?=
 =?utf-8?B?aTdxcDJiTUZNVHh1b3ZFT3NQN2c4VkROZUZtR1BUMHo2Wm91WWIrU0hzc0xp?=
 =?utf-8?B?cFN4SmhIZGVlZFMvQ1Y2emoyQVk1azh0RnBoSk5FRDBwK2NGWmtLZyt0UUtV?=
 =?utf-8?B?Q3hLcm15NFJXOU0wSXJaTmlkR3FNR3lKQVNLV1JWbDBDbmV2N25ZL2lwaE1z?=
 =?utf-8?B?WFh3VnJXdmRSYzhxMitVY1VyY09RZVQ5cTVRWmgwZVRiVnJQK1VqTmV2anJF?=
 =?utf-8?B?bFhwNzY0VG1JTjhBdzVYS2ZFQnZUTndTMmN3YjFleXNYb0VKUWVOSm1kaitI?=
 =?utf-8?B?emlvOU9US1pqYyttRWk2VjBzWFFwdzVZbVZjdHB3SENZM3RqeUNqQnVKZit6?=
 =?utf-8?B?Zi9XK1ZBOFNwVnJpcDRnTEdOOW5SMFpLTEtjT2h1MG5oK3U2ME56N2lMYnFz?=
 =?utf-8?B?K09kRVVvZ1RWVVIyb0ViU1FZTm1kK0MremFFckYva0hkQVVIZmdvSkZSR0c5?=
 =?utf-8?B?RE13aHhURUNlRmtUNysxVzVtVVBWbHAwSFV2RjVxVGdMd2dyZ1ZLV1RJcE5a?=
 =?utf-8?B?djVnd1NqRU1wZzVSMThGL2VlUGlwb1l6YVAxRWV1TUZoU0VRMGxtY1BrZUtq?=
 =?utf-8?B?dXR0Q2IxTm94YlZHVmVxMS9KcXgzUGxwU2dPbHNMTEFCWFJuSUdnRHRUZ013?=
 =?utf-8?B?SkEzM0ZESEdGMkVubHN3aGJOZzllRkVqYTlCUlo5QVJjMkhOQWtoTloyV1Nz?=
 =?utf-8?B?Q0RjaGxOa09Cblg2YUlidUw5ajkwRG84clp4NGhxeHNoQUkwSEt3R1dody90?=
 =?utf-8?B?QVVLY240RTlIZG02M2daNXJZWnNoVVpXdU8wVXROdmdleEtFS2wrZlV5UkdV?=
 =?utf-8?B?RUVLSDlKVTRnbEEwenVITi9oVmFxQUt6Q1BrU04rMWhRVTIzOEVOSWJJVURt?=
 =?utf-8?B?aE1sMVVtNTRKU3JuTmNEWkFZcVg3UUZBOXpGQTJDTHVYSGVwYXFBaEozODMx?=
 =?utf-8?B?Rk1RaURWdkVTZitSRFZtbFpTR1VUazB1d0FXL1ArcWxvNUd4dmt5Z21KbHpY?=
 =?utf-8?B?QnNQd3J1WmdaeW9xblgxUmFEd3hUbkwzWklnRnQrSFhmRUpndjQ0UGtORnJl?=
 =?utf-8?B?ZmhSYnpwbnFrWWZuVmxqbU1Kb1p1TkJLUG12RGlDTHhzMDYyakVUZnlQREFs?=
 =?utf-8?B?dW1QSmk0Tm1YZTJvRkFBWldCMUNsNmZ2UTBycFg5MEQzZnlZMVpxS0NKTVM3?=
 =?utf-8?B?eXUzUkh2RloxeUpsbHkweThjLzVRMTYxUXVLK1VhckJRMi94RWxLck9DZlND?=
 =?utf-8?B?cENhc0tDazlWa2gzcHoyMDMzYmFwamRVUWRhQjdMZ25MVlMva2tVUnNuU3d1?=
 =?utf-8?B?dkNleWE1aFN5WGdtajdrSmhWQXo2eVVZNnY5c0lQakw3Q0xXbnpNbUIwNlNK?=
 =?utf-8?B?MEUweUdZRmVGemFnNTBiL1N5UWtuMnl6SzE0WjY0ZWtBUVN6Z0hUUFl6SXdS?=
 =?utf-8?B?S1lwdXRUYytuTEJtQWxrM3VWd0hlTnpoQ2FpcStiRE9KcUVkeGl1ekRrVks1?=
 =?utf-8?B?eCtZTUwxejJUT2QvQmtHdkNCYTZ6Y1pVS2hNbEFNZ1dhSHorSWhHNHlKbHpL?=
 =?utf-8?B?OWlzTGNKWWtCYjBrZ0Z5OVF6VTVsUnNnNmZvYXcvdktLV2YwNWhWZXNyNHhi?=
 =?utf-8?B?aXhIZ1poNGRGblI5aURUVmZ6SllQMHY1MG9YVzhNU3FOUFQreHl1MXZ1L3Jv?=
 =?utf-8?B?MVVrY04vZ0R6bVR1aE5rNGtDOXo4bHZIUFBRY1JHREhlTU9vZTJhMVhtcFFi?=
 =?utf-8?B?L2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: efcb3a63-49ec-4002-df1d-08dddaac206f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 20:58:17.5315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GMo0N4dtVEy4mA1nLQTeKk/YShhroTJ+8hIsJ+qlrWBaMXoU3UhpyU0olP/3ciXRAhoeOfR4N7DyJwS8eZh0Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5092
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

Quoting Jani Nikula (2025-08-06 13:55:01-03:00)
>Switch to passing struct intel_display to all the macros that use
>__to_intel_display(), and once that's done, remove __to_intel_display().
>
>We'll still need to get rid of struct intel_display usage like this
>outside of display, but explicit is better than implicit, and this
>prevents new accidental struct drm_i915_private usages from cropping up.
>
>Jani Nikula (15):
>  drm/i915/display: pass display to HAS_PCH_*() macros
>  drm/i915/fb: pass display to HAS_GMCH() and DISPLAY_VER()
>  drm/i915/clockgating: pass display to for_each_pipe()
>  drm/i915/clockgating: pass display to HAS_PCH_*() macros
>  drm/i915/clockgating: pass display to DSPCNTR and DSPSURF register
>    macros
>  drm/i915/irq: pass display to macros that expect display
>  drm/i915/dram: pass display to macros that expect display
>  drm/i915/gmch: pass display to DISPLAY_VER()
>  drm/i915/gem: pass display to HAS_DISPLAY()
>  drm/i915/switcheroo: pass display to HAS_DISPLAY()
>  drm/i915/drv: pass display to HAS_DISPLAY()
>  drm/i915/uncore: pass display to HAS_FPGA_DBG_UNCLAIMED()
>  drm/i915/gvt: convert mmio table to struct intel_display
>  drm/i915/reg: separate VLV_DSPCLK_GATE_D from DSPCLK_GATE_D

This one was a bit harder to review, but looks good as well.

The series is:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>  drm/i915/display: drop __to_intel_display() usage
>
> .../i915/display/intel_display_conversion.c   |   2 +-
> .../i915/display/intel_display_conversion.h   |  12 -
> .../drm/i915/display/intel_display_device.h   |   7 +-
> .../gpu/drm/i915/display/intel_display_irq.c  |   9 +-
> .../i915/display/intel_display_power_well.c   |   2 +-
> drivers/gpu/drm/i915/display/intel_fb_pin.c   |   4 +-
> drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
> drivers/gpu/drm/i915/display/intel_overlay.c  |   5 +-
> drivers/gpu/drm/i915/display/intel_pch.h      |   4 +-
> drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
> .../i915/gem/selftests/i915_gem_client_blt.c  |   3 +-
> drivers/gpu/drm/i915/i915_driver.c            |  14 +-
> drivers/gpu/drm/i915/i915_irq.c               |  13 +-
> drivers/gpu/drm/i915/i915_reg.h               |   3 +-
> drivers/gpu/drm/i915/i915_switcheroo.c        |   6 +-
> drivers/gpu/drm/i915/intel_clock_gating.c     |  35 ++-
> drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 266 +++++++++---------
> drivers/gpu/drm/i915/intel_uncore.c           |   3 +-
> drivers/gpu/drm/i915/selftests/intel_uncore.c |   8 +-
> drivers/gpu/drm/i915/soc/intel_dram.c         |   5 +-
> drivers/gpu/drm/i915/soc/intel_gmch.c         |   3 +-
> 21 files changed, 206 insertions(+), 204 deletions(-)
>
>--=20
>2.39.5
>
