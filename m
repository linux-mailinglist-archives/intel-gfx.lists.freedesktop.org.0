Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF57A59A42
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 16:44:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C4E10E470;
	Mon, 10 Mar 2025 15:44:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dSCjuExD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C91110E470;
 Mon, 10 Mar 2025 15:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741621446; x=1773157446;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=TUmiwU7fVH1zU0qKl6X51pnl3KZxzn0WTGgA2yl3mqY=;
 b=dSCjuExDNetjfJeSnftHO8pYRVfDR84cHLLue21vvyesiRZlY1yvrwxc
 9rkUTVWH+ZxNC70BU8pJuWSQbJ/PS57uOFOmxI6PF5K/NwYSRQoCPklmC
 ENcITfD9r9jpwF/yY+ejwMmbUNMC4gpIyOdJVFIPHzNSyZBZlh0kLcwwa
 hAy+E5JrZJH32z4/Br40pD0mhpSRUSyu6bCMgiDx351AzNST/KHPyKGrX
 b4v5jwdtam4s7FJpQLeE1xe9OFHi004VOfs+3Lf6HdXpXbFixsUrIUScd
 NMpbW58zPG2uZ5DEOtUBqaeM27BY9+lBgTFPFcufdO9PlKFHMo/qUTpxV g==;
X-CSE-ConnectionGUID: uhMjTgP4T3WQRJqoMFuW0A==
X-CSE-MsgGUID: ZCWflhoxT3ihpTUG7LohBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="53999735"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="53999735"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 08:44:06 -0700
X-CSE-ConnectionGUID: 5mkljAwBRWCluRKRaZJrYw==
X-CSE-MsgGUID: Vt7Kmc0wQH6BVPDMiuIEJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="120520466"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 08:44:06 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 10 Mar 2025 08:44:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Mar 2025 08:44:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Mar 2025 08:44:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PK4X+zyO1bwJqky5aU2qP7slZ7MssDZ1zAdGCFH5qlNX6RkeIYeHNIJrAwJejroNytAN363mvB4SZ/V6vhECZDGmRBcmfulMvUjvVk+1d/1VjDV4E+r7CERXU4yKKgYvLXWIgBbULieor3bnBDUen+AxiBUk/yQZcINJ65SSSGLrWO2XBLIeW5mVMoKyNy+8GJE+q0WRT1Tj1+JME0wzK10IeJsSNcREZLxey0bU4Ey9ACSiebfxQ5BqnacXMQDPOOQLL/96+BdkkSDkU0+e3flyzXJS/D1ZFDz9ZXa60Sj7N+2L9LnA/8rRAEZtgNXdIPhfr6qxGs/OrqS9TlGUfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Miq1zPW5Z9l4oqwZk5q/NSiKpPbW3dPhtSu45DImXVw=;
 b=Keb09bCGcpMhHSaGlq1FySXtwQh/h7Z16X0UJqDR8Hdp1ndOApltoXKOWtHPWOPhDeW9XgZWTvgGC1idDk+OcMq88Y5Ut6YLJybmvHlrDRdgtx/qUcdPVPnxJjvLaUssiG9PtStD4PoBOIa3NQMZF0ZJanWgsBfFjdXoLPB8Vgc6SPZ7FD0m5jk3b4zuP9orysgKWUg7ABs6PC7WELD7TJE7VmZW0dHD1yz3XqZaKcRj/5/8toonUlHqZ3tZjqlkbKiowmua48H/Q4DqmZ+i760r8OZ3QNlMVUM4P2PeLPfIEryZQluoziQG0mVLisPKw+CRN8fS0JaEoHUCveVXOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB6685.namprd11.prod.outlook.com (2603:10b6:806:258::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.26; Mon, 10 Mar
 2025 15:43:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8511.025; Mon, 10 Mar 2025
 15:43:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <alpine.DEB.2.22.394.2502281138120.14041@eliteleevi.tm.intel.com>
References: <20250227-xe3lpd-power-domain-audio-playback-v1-1-5765f21da977@intel.com>
 <alpine.DEB.2.22.394.2502281138120.14041@eliteleevi.tm.intel.com>
Subject: Re: [PATCH] drm/i915/xe3lpd: Map POWER_DOMAIN_AUDIO_PLAYBACK to DC_off
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Kai
 Vehmanen" <kai.vehmanen@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Date: Mon, 10 Mar 2025 12:43:27 -0300
Message-ID: <174162140709.3769.4631804581155473882@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0348.namprd03.prod.outlook.com
 (2603:10b6:303:dc::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB6685:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ed435cc-7e2f-40a2-9d69-08dd5fea503e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dVhFczkrSUpZVHNOR3R2UGloYlpVOW1vL1hhMHBWWlR5d2hVT0hOQzErK3N1?=
 =?utf-8?B?YndGNDJKbVlqSGkwNEpxZWlBc091c21teUxoQm9ieFJUaWZ4M05VOUhWcURi?=
 =?utf-8?B?K1pxYm82YmZEWUtvcmNUTzNJRGk4bjh3TWZsRC9Fdk1kcTFWQ3c4ZWZQREdM?=
 =?utf-8?B?eStkWFQ5ZlZEazZWS3lKRFgxdGMzZFRWYWE5ek5LTEV6RnRwVXA2bXN2VVUx?=
 =?utf-8?B?ajVheHh1NDBUN2cwVkFVOE8ySkRpc1ZQeVRvZ25Gb3VOeHNVREVYQk5tU1U5?=
 =?utf-8?B?eS9oUjRaZkxkVGM3OG1OMzdkRlppVzVlWUtITHdYMURiR0Y4aWNmMzJTYXNo?=
 =?utf-8?B?M3BzcSt5SzRHQzlibDQrd0VOdWpKZUVrUDVRVUNHUWJEMGVmdytYTUZHbG9o?=
 =?utf-8?B?aG9FbGhiaWRkNTFqaXVTa05ZNFh0OUdoK3VuQ1R6OVBRc0NsREVxZEpRMVRY?=
 =?utf-8?B?dHJtWnc5TmlHNWhMcWpmUVdGeVFmdXJldFZwUGlKeWZkUGR5MjFob2k5VVNh?=
 =?utf-8?B?aEI5bTY0cXM3YXZBVllnRklhU0MxeTdQVXAvSnVDYk42OEUrM0FYeFhjc3dt?=
 =?utf-8?B?WW04NTNZbmRxUXlpeG9xbE1Lbll3UlRVYjhURVJrNHh5SjhOcnE2bHdPOW9G?=
 =?utf-8?B?V3VXbXhpeTE3R0NVL3BIaHNiWkIwRHU1KzBmUnZCaE9IWDFnMGpFSHV6aGZ1?=
 =?utf-8?B?cEJLem9vRjNWSStEWU5rUmVLcTFvNEJSdFo0QU1UT2QvdUlKYjNTbnZqV250?=
 =?utf-8?B?VnhXcDZ4MHRJRVM3T2Era1hpWXBleTAyZkpxRWVaLzhJeTkwQnc4b2ZLOEJ4?=
 =?utf-8?B?TGg4b1V3cEl0Z1V6Q1ZUTlBDaWdWekE1dm51UE1zaUl2cDlnakhmSWVCWGV3?=
 =?utf-8?B?MEdNWkViMzhLN1pLSEVqalp1TkVCOGs4K241aEVURFhCQVlCWmRvNTFPTXc0?=
 =?utf-8?B?cUdYNnBNLzl3UmVuY2JVN0FoeElVWmlEVjVHRHFtMTNnOG8wRStWT1U1MDl2?=
 =?utf-8?B?VEF5UmpGRWE0SFVIMXVqczBXby9vOSs2dFc4aHZpR1lKTkQ4dmtsZmlFZjZz?=
 =?utf-8?B?UGpzTFhqU3hoa0M0dDc0dE1HTTc3U3R2OGc2WlRlSk5Ec0czSFdKbjBFcjNt?=
 =?utf-8?B?RzdFMytRbytuS0tnZkNjdFdyL0VhQTd0elZjQ3F5VnNjQTlUVHRlRkd6Mnh0?=
 =?utf-8?B?bmtLdUgwWWtYWEhHZ21mdXBlRHdhQnJCWUVBU1RvS3Q3YjlkNlNuMEdqY1RC?=
 =?utf-8?B?bTU5WDlWa2x0YWl5WGVTUkpzRTRVa0w3R2thRTNnNGUyNWEveE55R2lza0JH?=
 =?utf-8?B?RmNiRFRHMVZqY2kwL3RBOWpDR2cxeldqekNFaGtFTXREV1kva1MrUnZtc2ZM?=
 =?utf-8?B?aTNscGtWSFQ2Q3FqQndubko2dTFQc3o1UDBMTFhxM0txQnZYV2RrWElyNU5v?=
 =?utf-8?B?aUpFYWlxYk1LWnl3ZGN4SDI4RUJKTXhtS2x5RC84ZXpEWVhYdmhobXFHQlVZ?=
 =?utf-8?B?bldIak5VUU9YM0VyS1V4bTFrZ1E1STFLSWZIQ1FCV3BTZFlST05YcHZENWhM?=
 =?utf-8?B?cDhXVlUySEtuMUVNMUlRMElIUjByMnB5TXB2THNoWUp1QXdZNVgrWnBMckZa?=
 =?utf-8?B?Ui9jV3Iva2Jhc3V3Y1lxT0hoSklCaHd1NkpGUFhwdzNYcjdjSEc0RExIajhD?=
 =?utf-8?B?NktiMGtsVDR4VUdWYTdJTzJIeEJRY21oK0s2Z2hKNm53bXJTQUpkTm9XbWt3?=
 =?utf-8?B?blY1UjZoMmEzNXNoQXRSZ01mMGZmR2JVbXI0emJLdHZYeFhRRHJ5U0g5RkJC?=
 =?utf-8?B?LzR4enlNcFlJeVIrVWd2TmUyMnVBem9BamVkOWZZNlp5c3hjS2lROEtRcjZn?=
 =?utf-8?Q?CozvUBc4bPXq4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjBxMVcwK0o2c29GWU81andDT0xwWjRpd3djaEhXRzIxZUtvMzFXMDQzbTZ5?=
 =?utf-8?B?djVKYkt5aGIxUkhQeWtRbnhVVFNKdWlFcHBXbktVd0xSKzlRTEhSM1MwaHVt?=
 =?utf-8?B?OVdGOUF5REZCd2N3RTNEek9XZUs2dFNiVHpQN1dydDcvbHdSRUNNYnJtaUVR?=
 =?utf-8?B?NzdpSFd0cWxYZFU0TEg5eTVCNWxDRlRqZkdaRHRwSytpUlJWUC91NTVCMFdz?=
 =?utf-8?B?MEt3Y0FsUmRjOWVtcHRNbTkwaFVFSHA2VFRsVWlWSTlJeUtzaFNXY1cyV24r?=
 =?utf-8?B?bndwZWFaK2JCQ25HajhTNEd1c3p0aW5kcE9wUkgyWEVFdHpxYU5NMFE1YkJj?=
 =?utf-8?B?Z29BZytPNWZ1LzMzRVY5dlBSRUlZWVlmOU9lakFicStibGIwMWUzbFlkK2U2?=
 =?utf-8?B?TG5tN1cwREFjc2VSeldwMUVjVkVIMENjYm5vQk1hWG85QjJXVTZhMGJFblNo?=
 =?utf-8?B?U2dXWlRxOG9RMXRoYlQvc1NuZzkvd3lFNzFXa0t6bS8za0U4WUo1NTVtL1R6?=
 =?utf-8?B?bEQ4L243NHZaRWEzVVNrOGx2cWQ3Vm45MnlpclJtU3lTbmxMSEZaa3dwRVo5?=
 =?utf-8?B?MWViZHdlZ3AyUGtTVmcyaWZzd3ZQanJyMkFySmFySlljMnBuSEN1WVhhRlBK?=
 =?utf-8?B?aTVXUG9IQ0R2K0NBejZSb1poSWFLZzBhcW8vZ011aDk5STVDbkpKZ2cweG1u?=
 =?utf-8?B?cHhHWlorV1NqREl3WmY1c3psNFdYNTIyMm8xMS9jUTY4VTFTdU9OeGtiek82?=
 =?utf-8?B?N09zMkZqd01JRGtobTE5OUxnT09keWVFR2pPTXZnZ2pIMjczeElCVngwOXJw?=
 =?utf-8?B?WWYwSnJMNzZuQ2RSb3FMbURRb2JNZlBVTHFPdUcySW9HSE5VZHFtbEZLUUFY?=
 =?utf-8?B?aTZNZGc4cjRkRTU4NjZ6OGRScUVJU3pkRXZydUEvSXRQNnZTRmkvclA4STM1?=
 =?utf-8?B?a3ZhNER1dW1Mb2hZaEZ2MEhzQ01RRUtHcDI5RkJyc0IzZnEwVG9BL0JHSXk3?=
 =?utf-8?B?VG02VWpuTXh4UGJGUUFYcXVPNmdYR0RzMFUzSUFBOEJhRkI3Uk5LYTBORlYy?=
 =?utf-8?B?NHJjY3Z2cEVuT09RU2FCeHlGTm03ak84RmdNQmVqTkhTZTJDV3dsQnB4YXFl?=
 =?utf-8?B?TkZZakdRcklLTDV1OFFmQVRhdzFKY2VSRUlkc0lDU2lnZW44WmZUUlJMQk1m?=
 =?utf-8?B?d09Hd1BpWDdJN25Rank2MjVEbjIwUG9iOXBJRUVteFZEYlBZYjRSSHdwd0Y4?=
 =?utf-8?B?QnRsWnMvVFFaQXkvcXhIb0lmZ01JQ21tL2pGdlpNTk4wdktxL2NrSXJ0UGJq?=
 =?utf-8?B?R0NIM3FmaTVPcE1BWGF4aUlzRmYrSjU3clhBaTIyV0RaSU5xU1JMaDhqcmZi?=
 =?utf-8?B?SjhwUU45alZ1OHBReWw1SmRGNmFyaW1TV25QL0EzREsxTjh1U05taTRaTlV5?=
 =?utf-8?B?a01GU2VWT0VEd01nWWNEc2NzbnIyNmtCR0daRmdOZEE1WnBPYitzaVluSWhp?=
 =?utf-8?B?dUVuM2RzTm1yZ1hFQ3RFNU1na1RlYXo0cFQ5d0lrTmU1K2FqcXNOMzhJaEQ3?=
 =?utf-8?B?S1RsWFdIWm10WS9NdDA1WVFQRlFJbENaV2thY09aOEhUdWdTcEg4Z2ZkL3g0?=
 =?utf-8?B?VHlOVVNHaHNuY2NpQi9RaGt3cjBnOG5KVExXNHM5bmtXNzJTN2prdWtJMU1v?=
 =?utf-8?B?dVRlbi9DellkNnFsRWNSUW5kUTNIQWVXM3I1cG9kWW1ES1lKcXprcDNtU0Nr?=
 =?utf-8?B?NG5zc0g2K3VwMjBUaGREUU1aWXBydTNiVllFdnJNT2NYeEdoOUlDRmVSV0VI?=
 =?utf-8?B?eDZWSHVxaGhjNEthSURyQjd0elNyREM5ZlFad1R0Q29sa0s1NWcrVUViNkhU?=
 =?utf-8?B?S2hnV2JpZFkxdmo4YlR5Zm0wWlVuSXpVaHFkb1hlbVhSN09zSHBLMUxzcnVa?=
 =?utf-8?B?QlB6Yy9oYlQ1MVRCWW5ocWVoWlVyeDNMQm42T0xRNUhpdEdzQ0xXT1RLVTdw?=
 =?utf-8?B?VERwVFBnaWFuYkxZSjFyWXZ6ak5DVVQxcXpHOFFuRHdPVXIyY2xGcHU0a3NL?=
 =?utf-8?B?MjMwOXIxYzlTZUl4N2JiSmZjajViajBlSytMQVlWb1IzK2tiUTN6UWVxUmVZ?=
 =?utf-8?B?am5Ga3dxaGNkQnVLbjBkWE5Dd3VOMVh3UGVYQTkzR2JsZE1UWHhoZkpEeG5W?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ed435cc-7e2f-40a2-9d69-08dd5fea503e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2025 15:43:33.2383 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h+h6lf29cML0qVnQc6+svEwEnSNXy1la55NZK2+csDX70R0othGrazzzGHdbVgw32/O7y4aMUb0UPdxTmn2ekQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6685
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

Quoting Kai Vehmanen (2025-02-28 06:40:51-03:00)
>Hi,
>
>On Thu, 27 Feb 2025, Gustavo Sousa wrote:
>
>> In Xe3_LPD, display audio has the core audio logic located in PG0 and
>> per-transcoder logic in the same power well that provides power for the
>> transcoder [1].
>[...]
>> Since intel_audio_component_get_power() uses
>> POWER_DOMAIN_AUDIO_PLAYBACK, make sure to map that power domain to
>> DC_off power well, so that we disable dynamic DC states (which includes
>> DC6) while the audio driver needs display audio power.
>[...]
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> @@ -1694,6 +1694,7 @@ I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_dc_off,
>>          XE3LPD_PW_C_POWER_DOMAINS,
>>          XE3LPD_PW_D_POWER_DOMAINS,
>>          POWER_DOMAIN_AUDIO_MMIO,
>> +        POWER_DOMAIN_AUDIO_PLAYBACK,
>>          POWER_DOMAIN_INIT);
>
>ack, this looks good and covers audio expectations for=20
>drm_audio_component.h usage:
>
>Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Pushed to drm-intel-next. Thanks for the review!

--
Gustavo Sousa
